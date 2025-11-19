uint64_t _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject(uint64_t a1, void *a2, uint64_t *a3)
{
  memset(v21, 0, sizeof(v21));
  if (!a2)
  {
    _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_4(&v22);
    return v22;
  }

  if (!a3)
  {
    _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_3(&v22);
    return v22;
  }

  if (MEMORY[0x19A8DA4F0](a2) != MEMORY[0x1E69E9E70])
  {
    _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_1(&v22, v6, v7, v8, v9, v10, v11, v12);
    return v22;
  }

  if (xpc_data_get_bytes(a2, v21, 0, 0x2CuLL) != 44)
  {
    _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject_cold_2(&v22, v13, v14, v15, v16, v17, v18, v19);
    return v22;
  }

  return FigEndpointStreamAudioFormatDescriptionCreate(a1, v21, *&v21[40], a3);
}

uint64_t FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray(const __CFAllocator *a1, xpc_object_t xdict, char *key, __CFArray **a4)
{
  value = 0;
  if (!xdict)
  {
    FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_5(&v31);
    return v31;
  }

  if (!key)
  {
    FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_4(&v31);
    return v31;
  }

  if (!a4)
  {
    FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_3(&v31);
    return v31;
  }

  v6 = xpc_dictionary_get_value(xdict, key);
  if (!v6)
  {
    v28 = 0;
    *a4 = 0;
    return v28;
  }

  v7 = v6;
  if (MEMORY[0x19A8DA4F0]() != MEMORY[0x1E69E9E50])
  {
    FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_1(&v31, v8, v9, v10, v11, v12, v13, v14);
    return v31;
  }

  count = xpc_array_get_count(v7);
  Mutable = CFArrayCreateMutable(a1, count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray_cold_2(&v31, v17, v18, v19, v20, v21, v22, v23);
    return v31;
  }

  v24 = Mutable;
  if (count)
  {
    v25 = 0;
    while (1)
    {
      v26 = xpc_array_get_value(v7, v25);
      v27 = _FigEndpointStreamAudioFormatDescriptionCreateWithXPCObject(a1, v26, &value);
      if (v27)
      {
        break;
      }

      CFArrayAppendValue(v24, value);
      CFRelease(value);
      if (count == ++v25)
      {
        goto LABEL_11;
      }
    }

    v28 = v27;
    CFRelease(v24);
  }

  else
  {
LABEL_11:
    v28 = 0;
    *a4 = v24;
  }

  return v28;
}

uint64_t FigBufferedAirPlayClientRoutingRegistryGetSharedInstance()
{
  if (FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_sCreateOnce != -1)
  {
    FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_cold_1();
  }

  return FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_sFigBufferedAirPlayClientRoutingRegistry;
}

void __FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_block_invoke()
{
  v31 = *MEMORY[0x1E69E9840];
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigBufferedAirPlayClientRoutingRegistryTrace[1], @"routingRegistry_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v0, 0, gFigBufferedAirPlayClientRoutingRegistryTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CD28, @"routingRegistry_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CD20);
  if (dword_1EAF1CD28 == 256)
  {
    dword_1EAF1CD28 = 0;
  }

  if (FigBufferedAirPlayClientRoutingRegistryGetTypeID_once != -1)
  {
    __FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_block_invoke_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v2 = Instance;
    Instance[2] = 0;
    Instance[3] = 0;
    Instance[4] = 0;
    v3 = dispatch_queue_create("com.apple.airplay.FigBufferedAirPlayClientRoutingRegistry.notification", 0);
    v2[2] = v3;
    if (v3)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v2[3] = Mutable;
      if (Mutable)
      {
        v12 = FigSimpleMutexCreate();
        v2[4] = v12;
        if (v12)
        {
          if (FigBufferedAirPlayClientRoutingRegistryCreate_onceToken != -1)
          {
            __FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_block_invoke_cold_2();
          }

          if (dword_1EAF1CD28)
          {
            v25 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD20, 1, &v25, &type);
            v14 = v25;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v16 = v14;
            }

            else
            {
              v16 = v14 & 0xFFFFFFFE;
            }

            if (v16)
            {
              v26 = 136315138;
              v27 = "FigBufferedAirPlayClientRoutingRegistryCreate";
              v17 = _os_log_send_and_compose_impl();
              LOBYTE(v14) = v25;
            }

            else
            {
              v17 = 0;
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD20, 1u, 1, v17, v17 != v30, v14, 0, v15);
          }

          FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_sFigBufferedAirPlayClientRoutingRegistry = v2;
          return;
        }
      }

      v18 = -17721;
    }

    else
    {
      __FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_block_invoke_cold_3(v30, v4, v5, v6, v7, v8, v9, v10);
      v18 = v30[0];
    }

    CFRelease(v2);
  }

  else
  {
    v18 = -17721;
  }

  if (v18 && dword_1EAF1CD28)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD20, 1, &v25, &type);
    v20 = v25;
    if (os_log_type_enabled(v19, type))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v26 = 136315394;
      v27 = "FigBufferedAirPlayClientRoutingRegistryGetSharedInstance_block_invoke";
      v28 = 1024;
      v29 = v18;
      v23 = _os_log_send_and_compose_impl();
      LOBYTE(v20) = v25;
    }

    else
    {
      v23 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD20, 1u, 1, v23, v23 != v30, v20, 0, v21);
  }
}

uint64_t FigBufferedAirPlayClientRoutingRegistryClearAllClientsWithRemoteID(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  FigSimpleMutexLock(*(a1 + 32));
  v4 = *(a1 + 24);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __FigBufferedAirPlayClientRoutingRegistryClearAllClientsWithRemoteID_block_invoke;
  context[3] = &unk_1E749E808;
  context[4] = &v8;
  context[5] = a2;
  context[6] = a1;
  FigCFDictionaryApplyBlock(v4, context);
  FigSimpleMutexUnlock(*(a1 + 32));
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __FigBufferedAirPlayClientRoutingRegistryClearAllClientsWithRemoteID_block_invoke(void *a1, const void *a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  v7 = Mutable;
  if (a3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __FigBufferedAirPlayClientRoutingRegistryClearAllClientsWithRemoteID_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_6;
    v8[4] = a1[5];
    v8[5] = Mutable;
    FigCFDictionaryApplyBlock(a3, v8);
    CFDictionarySetValue(*(a1[6] + 24), a2, v7);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -17721;
    if (!Mutable)
    {
      return;
    }
  }

  CFRelease(v7);
}

void __FigBufferedAirPlayClientRoutingRegistryClearAllClientsWithRemoteID_block_invoke_2(uint64_t a1, const void *a2, const void *a3)
{
  if (*(a1 + 32) != a3)
  {
    CFDictionarySetValue(*(a1 + 40), a2, a3);
  }
}

void __FigBufferedAirPlayClientRoutingRegistryCreate_block_invoke()
{
  v50 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/System/Library/PrivateFrameworks/MediaExperience.framework/MediaExperience", 4);
  mediaexperience = v0;
  if (v0)
  {
    _MergedGlobals_11 = dlsym(v0, "kFigRoutingContextProperty_ContextUUID");
    if (_MergedGlobals_11)
    {
      if (FigServer_IsAirplayd())
      {
        qword_1ED4CC4B8 = dlsym(mediaexperience, "FigRoutingContextRemoteCopySystemAudioContext");
        if (qword_1ED4CC4B8)
        {
          qword_1ED4CC4C0 = dlsym(mediaexperience, "FigRoutingContextRemoteCopySystemMusicContext");
          if (!qword_1ED4CC4C0)
          {
            __FigBufferedAirPlayClientRoutingRegistryCreate_block_invoke_cold_1(0, v15, v16, v17, v18, v19, v20, v21);
          }
        }

        else
        {
          __FigBufferedAirPlayClientRoutingRegistryCreate_block_invoke_cold_2(0, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      else
      {
        qword_1ED4CC4C8 = dlsym(mediaexperience, "FigRoutingContextCopySystemAudioContext");
        if (qword_1ED4CC4C8)
        {
          qword_1ED4CC4D0 = dlsym(mediaexperience, "FigRoutingContextCopySystemMusicContext");
          if (!qword_1ED4CC4D0)
          {
            __FigBufferedAirPlayClientRoutingRegistryCreate_block_invoke_cold_3(0, v35, v36, v37, v38, v39, v40, v41);
          }
        }

        else
        {
          __FigBufferedAirPlayClientRoutingRegistryCreate_block_invoke_cold_4(0, v28, v29, v30, v31, v32, v33, v34);
        }
      }
    }

    else
    {
      __FigBufferedAirPlayClientRoutingRegistryCreate_block_invoke_cold_5(0, v1, v2, v3, v4, v5, v6, v7);
    }
  }

  else
  {
    v43[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD20, 0, v43, &type);
    v23 = v43[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = dlerror();
      v43[1] = 136315650;
      v44 = "LoadMediaExperienceFramework";
      v45 = 2082;
      v46 = "/System/Library/PrivateFrameworks/MediaExperience.framework/MediaExperience";
      v47 = 2082;
      v48 = v26;
      v27 = _os_log_send_and_compose_impl();
      LOBYTE(v23) = v43[0];
    }

    else
    {
      v27 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD20, 0, 1, v27, v27 != &v49, v23, 0, v24);
  }
}

void FigBufferedAirPlayClientRoutingRegistry_Finalize(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  FigSimpleMutexDestroy(*(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  if (dword_1EAF1CD28)
  {
    v10[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD20, 1, v10, &type);
    v5 = v10[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v10[1] = 136315138;
      v11 = "FigBufferedAirPlayClientRoutingRegistry_Finalize";
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v5) = v10[0];
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD20, 1u, 1, v8, v8 != &v12, v5, 0, v6);
  }
}

uint64_t __FigBufferedAirPlayClientRoutingRegistryGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigBufferedAirPlayClientRoutingRegistryGetTypeID_typeID = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{
  a15 = 0;
  a14 = 0;
  v17 = *(v15 + 3360);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v17, 1, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{
  a15 = 0;
  a14 = 0;
  v17 = *(v15 + 3360);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v17, 1, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_9_1(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL OUTLINED_FUNCTION_12(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_13(uint64_t *a1, unsigned __int16 a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose(a1, a2, a3, a4, a5, v8, 0, a8);
}

OSStatus CMAudioDeviceClockCreate(CFAllocatorRef allocator, CFStringRef deviceUID, CMClockRef *clockOut)
{
  v4 = deviceUID;
  v35 = *MEMORY[0x1E69E9840];
  if (FigCFEqual(deviceUID, @"AQDefaultDevice"))
  {
    v4 = @"VirtualAudioDevice_Default";
  }

  v6 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFADCTrace[1], @"fadc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v6, 0, gFADCTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CD48, @"fadc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CD40);
  if (v4)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    *&inAddress.mSelector = *"tuOdbolg";
    inAddress.mElement = 0;
    ioDataSize = 4;
    outData = 0;
    AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, &outData);
    v9 = outData;
    AudioDeviceTypeString = fadcGetAudioDeviceTypeString(outData);
    v8 = fadcCopyAudioDeviceUID(v9);
    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ route, %@", AudioDeviceTypeString, v8);
  }

  if (fadcShouldCreateRemoteClock())
  {
    if (dword_1EAF1CD48)
    {
      ioDataSize = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD40, 1, &ioDataSize, &type);
      v12 = ioDataSize;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = getpid();
        outData = 136315650;
        v29 = "CMAudioDeviceClockCreate";
        v30 = 1024;
        v31 = v15;
        v32 = 2114;
        v33 = v7;
        v16 = _os_log_send_and_compose_impl();
        LOBYTE(v12) = ioDataSize;
      }

      else
      {
        v16 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD40, 1u, 2, v16, v16 != &inAddress, v12, 0, v13);
    }

    Common = FigAudioDeviceClock_RemoteCreateCommon(allocator, v4, 0, clockOut);
  }

  else
  {
    if (dword_1EAF1CD48)
    {
      ioDataSize = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD40, 1, &ioDataSize, &type);
      v18 = ioDataSize;
      if (os_log_type_enabled(v17, type))
      {
        v20 = v18;
      }

      else
      {
        v20 = v18 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = getpid();
        outData = 136315650;
        v29 = "CMAudioDeviceClockCreate";
        v30 = 1024;
        v31 = v21;
        v32 = 2114;
        v33 = v7;
        v22 = _os_log_send_and_compose_impl();
        LOBYTE(v18) = ioDataSize;
      }

      else
      {
        v22 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD40, 1u, 2, v22, v22 != &inAddress, v18, 0, v19);
    }

    Common = figAudioDeviceClockCreateCommon(allocator, v4, 0, clockOut);
  }

  v24 = Common;
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v24;
}

__CFString *fadcGetAudioDeviceTypeString(AudioObjectID a1)
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"nartbolg";
  ioDataSize = 4;
  outData = 0;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    if (outData <= 1685090931)
    {
      if (outData <= 1651274861)
      {
        switch(outData)
        {
          case 825440564:
            return @"FireWire";
          case 1634300528:
            return @"AirPlay";
          case 1651271009:
            return @"BluetoothLE";
        }
      }

      else if (outData > 1667463011)
      {
        if (outData == 1667463012)
        {
          return @"ContinuityCaptureWired";
        }

        if (outData == 1667463020)
        {
          return @"ContinuityCaptureWireless";
        }
      }

      else
      {
        if (outData == 1651274862)
        {
          return @"BuiltIn";
        }

        if (outData == 1651275109)
        {
          return @"Bluetooth";
        }
      }
    }

    else if (outData > 1885563167)
    {
      if (outData > 1970496031)
      {
        if (outData == 1970496032)
        {
          return @"USB";
        }

        if (outData == 1986622068)
        {
          return @"Virtual";
        }
      }

      else
      {
        if (outData == 1885563168)
        {
          return @"PCI";
        }

        if (outData == 1953002862)
        {
          return @"Thunderbolt";
        }
      }
    }

    else if (outData > 1735554415)
    {
      if (outData == 1735554416)
      {
        return @"Aggregate";
      }

      if (outData == 1751412073)
      {
        return @"HDMI";
      }
    }

    else
    {
      if (outData == 1685090932)
      {
        return @"DisplayPort";
      }

      if (outData == 1700886114)
      {
        return @"AVB";
      }
    }
  }

  return @"Unknown";
}

CFTypeRef fadcCopyAudioDeviceUID(AudioObjectID a1)
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *" diubolg";
  ioDataSize = 8;
  cf = 0;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &cf);
  result = cf;
  if (PropertyData)
  {
    if (cf)
    {
      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

OSStatus CMAudioDeviceClockCreateFromAudioDeviceID(CFAllocatorRef allocator, AudioDeviceID deviceID, CMClockRef *clockOut)
{
  v5 = *&deviceID;
  v38 = *MEMORY[0x1E69E9840];
  v7 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFADCTrace[1], @"fadc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v7, 0, gFADCTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CD48, @"fadc_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CD40);
  if (v5)
  {
    v10 = fadcCopyAudioDeviceUID(v5);
    if (fadcShouldCreateRemoteClock())
    {
      if (dword_1EAF1CD48)
      {
        v28 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD40, 1, &v28, &type);
        v12 = v28;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v12 = getpid();
          AudioDeviceTypeString = fadcGetAudioDeviceTypeString(v5);
          v29 = 136315906;
          v30 = "CMAudioDeviceClockCreateFromAudioDeviceID";
          v31 = 1024;
          v32 = v12;
          v33 = 2114;
          v34 = AudioDeviceTypeString;
          v35 = 2114;
          v36 = v10;
          v16 = _os_log_send_and_compose_impl();
          LOBYTE(v12) = v28;
        }

        else
        {
          v16 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD40, 1u, 2, v16, v16 != v37, v12, 0, v13);
      }

      Common = FigAudioDeviceClock_RemoteCreateCommon(allocator, 0, v5, clockOut);
    }

    else
    {
      if (dword_1EAF1CD48)
      {
        v28 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD40, 1, &v28, &type);
        v20 = v28;
        if (os_log_type_enabled(v19, type))
        {
          v22 = v20;
        }

        else
        {
          v22 = v20 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v20 = getpid();
          v23 = fadcGetAudioDeviceTypeString(v5);
          v29 = 136315906;
          v30 = "CMAudioDeviceClockCreateFromAudioDeviceID";
          v31 = 1024;
          v32 = v20;
          v33 = 2114;
          v34 = v23;
          v35 = 2114;
          v36 = v10;
          v24 = _os_log_send_and_compose_impl();
          LOBYTE(v20) = v28;
        }

        else
        {
          v24 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD40, 1u, 2, v24, v24 != v37, v20, 0, v21);
      }

      Common = figAudioDeviceClockCreateCommon(allocator, 0, v5, clockOut);
    }

    v26 = Common;
    if (v10)
    {
      CFRelease(v10);
    }

    return v26;
  }

  else
  {
    v17 = qword_1EAF1CD40;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE36uLL, "<<<< FADC >>>>", 0x331, v3, v8, v9);
  }
}

OSStatus CMAudioDeviceClockSetAudioDeviceUID(CMClockRef clock, CFStringRef deviceUID)
{
  v3 = deviceUID;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (FigCFEqual(deviceUID, @"AQDefaultDevice"))
  {
    v3 = @"VirtualAudioDevice_Default";
  }

  if (!clock)
  {
    v13 = qword_1EAF1CD40;
    v14 = v2;
    v15 = 4294954551;
    v16 = 1879;
LABEL_9:
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<<< FADC >>>>", v16, v14, v5, v6);
    goto LABEL_10;
  }

  if (!FigDerivedClockVerifyCallbacksMatch(clock, &gFigAudioDeviceClockCallbacks))
  {
    v13 = qword_1EAF1CD40;
    v14 = v2;
    v15 = 4294954550;
    v16 = 1881;
    goto LABEL_9;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __CMAudioDeviceClockSetAudioDeviceUID_block_invoke;
  v18[3] = &unk_1E749E870;
  v18[4] = &v19;
  v18[5] = clock;
  v18[6] = v3;
  v11 = writeProtectedStorageSync(clock, v18, v7, v8, v9, v10, v5, v6);
  v12 = *(v20 + 6);
  if (!v12)
  {
    *(v20 + 6) = v11;
LABEL_10:
    v12 = v11;
  }

  _Block_object_dispose(&v19, 8);
  return v12;
}

size_t writeProtectedStorageSync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
    FigAtomicIncrement32((DerivedStorage + 120));
    v11 = *(DerivedStorage + 128);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __writeProtectedStorageSync_block_invoke;
    v14[3] = &unk_1E749EA58;
    v14[4] = a2;
    v14[5] = DerivedStorage;
    dispatch_sync(v11, v14);
    FigAtomicDecrement32((DerivedStorage + 120));
    return 0;
  }

  else
  {
    v13 = qword_1EAF1CD40;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE37uLL, "<<<< FADC >>>>", 0x1DE, v8, a7, a8);
  }
}

uint64_t __CMAudioDeviceClockSetAudioDeviceUID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = fadcSetAudioDeviceUID(*(a1 + 40), *(a1 + 48), a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

OSStatus CMAudioDeviceClockSetAudioDeviceID(CMClockRef clock, AudioDeviceID deviceID)
{
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x2000000000;
  v22 = 0;
  if (!clock)
  {
    v13 = qword_1EAF1CD40;
    v14 = v4;
    v15 = 4294954551;
    v16 = 1902;
LABEL_8:
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<<< FADC >>>>", v16, v14, v2, v3);
    goto LABEL_9;
  }

  if (!FigDerivedClockVerifyCallbacksMatch(clock, &gFigAudioDeviceClockCallbacks))
  {
    v13 = qword_1EAF1CD40;
    v14 = v4;
    v15 = 4294954550;
    v16 = 1904;
    goto LABEL_8;
  }

  if (!deviceID)
  {
    CMAudioDeviceClockSetAudioDeviceID_cold_1(v21, &v23, v7, v8, v9, v10, v2, v3);
    v12 = v23;
    goto LABEL_10;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __CMAudioDeviceClockSetAudioDeviceID_block_invoke;
  v18[3] = &unk_1E749E898;
  v18[4] = &v20;
  v18[5] = clock;
  v19 = deviceID;
  v11 = writeProtectedStorageSync(clock, v18, v7, v8, v9, v10, v2, v3);
  v12 = *(v21[0] + 24);
  if (!v12)
  {
    *(v21[0] + 24) = v11;
LABEL_9:
    v12 = v11;
  }

LABEL_10:
  _Block_object_dispose(&v20, 8);
  return v12;
}

uint64_t __CMAudioDeviceClockSetAudioDeviceID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = fadcSetAudioDeviceID(*(a1 + 40), *(a1 + 48), a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t fadcSetAudioDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a2)
  {
    v18 = DerivedStorage;
    v19 = *(DerivedStorage + 80);
    if (v19)
    {
      CFRelease(v19);
      *(v18 + 80) = 0;
    }

    if (in_audio_mx_server_process())
    {

      return switchToNewDeviceID(a1, a2, v20, v21, v22, v23, v24, v25);
    }

    else
    {
      result = 0;
      *v18 = 0;
      *(v18 + 72) = 1;
    }
  }

  else
  {
    fadcSetAudioDeviceID_cold_1(&v27, v11, v12, v13, v14, v15, v16, v17);
    return v27;
  }

  return result;
}

OSStatus CMAudioDeviceClockGetAudioDevice(CMClockRef clock, CFStringRef *deviceUIDOut, AudioDeviceID *deviceIDOut, Boolean *trackingDefaultDeviceOut)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(clock, deviceUIDOut, deviceIDOut, trackingDefaultDeviceOut, v4, v5, v6, v7);
  if (clock)
  {
    v16 = DerivedStorage;
    if (FigDerivedClockVerifyCallbacksMatch(clock, gFigAudioDeviceClockCallbacks))
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = __CMAudioDeviceClockGetAudioDevice_block_invoke;
      v26[3] = &__block_descriptor_tmp_13_0;
      v26[4] = deviceUIDOut;
      v26[5] = v16;
      v26[6] = deviceIDOut;
      v26[7] = trackingDefaultDeviceOut;
      return readProtectedStorageSync(clock, v26, v17, v18, v19, v20, v14, v15);
    }

    v22 = qword_1EAF1CD40;
    v23 = v8;
    v24 = 4294954550;
    v25 = 1933;
  }

  else
  {
    v22 = qword_1EAF1CD40;
    v23 = v8;
    v24 = 4294954551;
    v25 = 1931;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v24, "<<<< FADC >>>>", v25, v23, v14, v15);
}

size_t readProtectedStorageSync(uint64_t a1, void (**a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
    v11 = DerivedStorage;
    if (*(DerivedStorage + 120))
    {
      dispatch_sync(*(DerivedStorage + 128), a2);
    }

    else
    {
      FigReadWriteLockLockForRead(*(DerivedStorage + 136));
      a2[2](a2);
      FigReadWriteLockUnlockForRead(*(v11 + 136));
    }

    return 0;
  }

  else
  {
    v12 = qword_1EAF1CD40;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE37uLL, "<<<< FADC >>>>", 0x1C7, v8, a7, a8);
  }
}

void *__CMAudioDeviceClockGetAudioDevice_block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    *v1 = *(result[5] + 80);
  }

  v2 = result[6];
  if (v2)
  {
    *v2 = *(result[5] + 88);
  }

  v3 = result[7];
  if (v3)
  {
    *v3 = *(result[5] + 72);
  }

  return result;
}

size_t FigAudioDeviceClockSetIgnoresBluetoothPresentationTimeSupport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v9 = a2;
    DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
    if (FigDerivedClockVerifyCallbacksMatch(a1, &gFigAudioDeviceClockCallbacks))
    {
      *(DerivedStorage + 1) = v9;
      return 0;
    }

    v13 = qword_1EAF1CD40;
    v14 = v8;
    v15 = 4294954550;
    v16 = 1958;
  }

  else
  {
    v13 = qword_1EAF1CD40;
    v14 = v8;
    v15 = 4294954551;
    v16 = 1952;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<<< FADC >>>>", v16, v14, a7, a8);
}

uint64_t FigPreferAudioSessionClock()
{
  v0 = FigPreferAudioSessionOverCMSession();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigPreferAudioSessionClock_block_invoke;
  block[3] = &__block_descriptor_tmp_14_0;
  v3 = v0;
  if (FigPreferAudioSessionClock_onceToken != -1)
  {
    dispatch_once(&FigPreferAudioSessionClock_onceToken, block);
  }

  return v0;
}

BOOL __FigPreferAudioSessionClock_block_invoke(_BOOL8 result)
{
  if (!*(result + 32))
  {
    result = FigServer_IsServerProcess();
    if (result)
    {

      return FigServer_IsMediaserverd();
    }
  }

  return result;
}

size_t __figAudioDeviceClockCreateCommon_block_invoke(uint64_t a1)
{
  result = FigCFWeakReferenceTableCreate(*MEMORY[0x1E695E480], 0, &gFigAudioDeviceClockRegistry);
  *(*(*(a1 + 32) + 8) + 24) = result;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    v7 = qword_1EAF1CD40;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v6, "<<<< FADC >>>>", 0x23F, v1, v4, v5);
  }

  return result;
}

uint64_t __figAudioDeviceClockCreateCommon_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  if (v9)
  {
    result = fadcSetAudioDeviceID(v10, v9, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    result = fadcSetAudioDeviceUID(v10, *(a1 + 48), a3, a4, a5, a6, a7, a8);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFStringRef fadcCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  v11 = "true";
  if (!*(DerivedStorage + 72))
  {
    v11 = "false";
  }

  return CFStringCreateWithFormat(v10, 0, @"AudioDeviceClock(deviceUID='%@', deviceID=%d, trackDefaultDevice=%s)", *(DerivedStorage + 80), *(DerivedStorage + 88), v11);
}

uint64_t fadcMightDrift(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 1;
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = FigDerivedClockGetDerivedStorage(a2, v10, v11, v12, v13, v14, v15, v16);
  v18 = *(DerivedStorage + 128);
  v19 = *(v17 + 128);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = __fadcMightDrift_block_invoke;
  v25[3] = &unk_1E749E9B8;
  v25[5] = DerivedStorage;
  v25[6] = v17;
  v25[4] = &v26;
  if (v19 >= v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  if (v19 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = __fadcMightDrift_block_invoke_2;
  v24[3] = &unk_1E749E9E0;
  v24[5] = v21;
  v24[6] = v20;
  v24[4] = v25;
  dispatch_sync(v21, v24);
  v22 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  return v22;
}

dispatch_queue_t fadcInitDeferredRemoveQueue(dispatch_queue_t *a1)
{
  result = dispatch_queue_create("com.apple.coremedia.fadcdeferredremovepropertylistener", 0);
  *a1 = result;
  return result;
}

uint64_t __fadcDeferRemovePropertyListeners_block_invoke(uint64_t a1)
{
  *&v3.mSelector = 0x2A2A2A2A676F696ELL;
  v3.mElement = 0;
  AudioObjectRemovePropertyListener(*(a1 + 40), &v3, coreAudioObjectPropertyListener, *(a1 + 32));
  *&v3.mSelector = 0x2A2A2A2A6F766572;
  v3.mElement = 0;
  AudioObjectRemovePropertyListener(*(a1 + 40), &v3, coreAudioObjectPropertyListener, *(a1 + 32));
  *&v3.mSelector = 0x2A2A2A2A6E737274;
  v3.mElement = 0;
  result = AudioObjectRemovePropertyListener(*(a1 + 40), &v3, coreAudioObjectPropertyListener, *(a1 + 32));
  if (*(a1 + 44))
  {
    *&v3.mSelector = 0x2A2A2A2A644F7574;
    v3.mElement = 0;
    return AudioObjectRemovePropertyListener(1u, &v3, coreAudioObjectPropertyListener, *(a1 + 32));
  }

  return result;
}

size_t __coreAudioObjectPropertyListener_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = *(a1 + 32);
  DerivedStorage = FigDerivedClockGetDerivedStorage(v8, a2, a3, a4, a5, a6, a7, a8);
  result = FigAtomicBitAnd32Orig(0, (DerivedStorage + 56));
  v17 = result;
  *&v18.mSelector = 0x676C6F6200000000;
  v18.mElement = 0;
  if ((result & 2) != 0)
  {
    v18.mSelector = 1870030194;
    result = propertyListenerDispatch(v8, &v18, v11, v12, v13, v14, v15, v16);
    if ((v17 & 4) == 0)
    {
LABEL_3:
      if ((v17 & 8) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((result & 4) == 0)
  {
    goto LABEL_3;
  }

  v18.mSelector = 1735354734;
  result = propertyListenerDispatch(v8, &v18, v11, v12, v13, v14, v15, v16);
  if ((v17 & 8) == 0)
  {
    return result;
  }

LABEL_4:
  v18.mSelector = 1853059700;
  return propertyListenerDispatch(v8, &v18, v11, v12, v13, v14, v15, v16);
}

void __writeProtectedStorageAsync_block_invoke(void *a1)
{
  FigReadWriteLockLockForWrite(*(a1[5] + 136));
  (*(a1[4] + 16))();
  FigReadWriteLockUnlockForWrite(*(a1[5] + 136));
  FigAtomicDecrement32((a1[5] + 120));
  v2 = a1[6];
  if (v2)
  {

    CFRelease(v2);
  }
}

void *__fadcMightDrift_block_invoke(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (*(v1 + 88) == *(v2 + 88))
  {
    v3 = *(v1 + 72);
    v4 = *(result[4] + 8);
    if (v3 == *(v2 + 72))
    {
      *(v4 + 24) = 0;
      return result;
    }
  }

  else
  {
    v4 = *(result[4] + 8);
  }

  *(v4 + 24) = 1;
  return result;
}

void __fadcMightDrift_block_invoke_2(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (a1[5] == v2)
  {
    v3[2](a1[4]);
  }

  else
  {
    dispatch_sync(v2, v3);
  }
}

size_t __fadcGetRate_block_invoke(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (**(result + 40))
  {
    v8 = result;
    result = fadc_getDeviceRateAndSampleTimeAndHostTime(*(result + 48), (*(*(result + 32) + 8) + 24), 0, 0, a5, a6, a7, a8);
    if (result)
    {
      *(*(*(v8 + 32) + 8) + 24) = 0x3FF0000000000000;
    }
  }

  return result;
}

uint64_t fadcGetAnchorTimeInternal(void (*a1)(void), void (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __fadcGetAnchorTimeInternal_block_invoke;
  v22[3] = &unk_1E749EA30;
  v23 = v8;
  v22[4] = &v28;
  v22[5] = &v24;
  v22[6] = DerivedStorage;
  v22[7] = a1;
  v22[8] = a2;
  v22[9] = a3;
  if (v8)
  {
    ProtectedStorageSync = writeProtectedStorageSync(a1, v22, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    ProtectedStorageSync = readProtectedStorageSync(a1, v22, v13, v14, v15, v16, v17, v18);
  }

  AnchorTimeInternal = *(v29 + 6);
  if (!AnchorTimeInternal)
  {
    *(v29 + 6) = ProtectedStorageSync;
    AnchorTimeInternal = ProtectedStorageSync;
  }

  if (*(v25 + 24))
  {
    AnchorTimeInternal = fadcGetAnchorTimeInternal(a1, a2, a3, 1);
    *(v29 + 6) = AnchorTimeInternal;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  return AnchorTimeInternal;
}

__n128 __fadcGetAnchorTimeInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v66 = *MEMORY[0x1E69E9840];
  value = 0;
  flags = 0;
  timescale = 0;
  epoch = 0;
  result.n128_u64[0] = kCMTimeInvalid.value;
  memset(&v40, 0, sizeof(v40));
  v38 = 0.0;
  v39 = 0.0;
  hostTime = 0;
  v13 = *(a1 + 48);
  if (!*v13)
  {
    v33 = *(*(a1 + 32) + 8);
    v34 = -17970;
    goto LABEL_29;
  }

  if (!*(v13 + 104) && !*(a1 + 80))
  {
    goto LABEL_4;
  }

  *(*(*(a1 + 32) + 8) + 24) = fadc_getDeviceRateAndSampleTimeAndHostTime(*(a1 + 56), &v39, &v38, &hostTime, a5, a6, a7, a8);
  v18 = *(*(*(a1 + 32) + 8) + 24);
  if (!v18)
  {
    v19 = *(a1 + 48);
    v20 = *(v19 + 104);
    result.n128_f64[0] = v38;
    if (v20)
    {
      v21 = v38 - *(v19 + 96) + -(v39 * *(v19 + 48)) * (hostTime - v20);
      if (v21 < *(v19 + 32) || v21 > *(v19 + 40))
      {
        if (!*(a1 + 80))
        {
          goto LABEL_4;
        }

        v36 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD40, 0, &v36, &type);
        v23 = v36;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v25 = v23;
        }

        else
        {
          v25 = v23 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = *(a1 + 48);
          v27 = *(v26 + 96);
          v28 = *(v26 + 48);
          v29 = *(v26 + 104);
          v31 = *(v26 + 32);
          v30 = *(v26 + 40);
          v41 = 136317698;
          v42 = "fadcGetAnchorTimeInternal_block_invoke";
          v43 = 2048;
          v44 = v38;
          v45 = 2048;
          v46 = v27;
          v47 = 2048;
          v48 = v38 - v27;
          v49 = 2048;
          v50 = v39;
          v51 = 2048;
          v52 = v28;
          v53 = 2048;
          v54 = hostTime;
          v55 = 2048;
          v56 = v29;
          v57 = 2048;
          v58 = v39 * v28 * (hostTime - v29);
          v59 = 2048;
          v60 = v31;
          v61 = 2048;
          v62 = v30;
          v32 = _os_log_send_and_compose_impl();
          LOBYTE(v23) = v36;
        }

        else
        {
          v32 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD40, 0, 2, v32, v32 != &v63, v23, 0, v24);
        v33 = *(*(a1 + 32) + 8);
        v34 = -17971;
LABEL_29:
        *(v33 + 24) = v34;
        goto LABEL_5;
      }
    }

    else
    {
      *(v19 + 96) = v38;
      *(v19 + 104) = hostTime;
    }

    CMTimeMake(&v63, result.n128_f64[0], *(v19 + 8));
    value = v63.value;
    flags = v63.flags;
    timescale = v63.timescale;
    epoch = v63.epoch;
    CMClockMakeHostTimeFromSystemUnits(&v40, hostTime);
    goto LABEL_5;
  }

  if (*(a1 + 80))
  {
    *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD40, v18, "<<<< FADC >>>>", 0x3E3, v8, v16, v17);
    goto LABEL_5;
  }

LABEL_4:
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_5:
  if (*(a1 + 80) && (flags & 1) == 0)
  {
    *(*(a1 + 48) + 104) = 0;
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    *v14 = value;
    *(v14 + 8) = timescale;
    *(v14 + 12) = flags;
    *(v14 + 16) = epoch;
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    result = *&v40.value;
    v15[1].n128_u64[0] = v40.epoch;
    *v15 = result;
  }

  return result;
}

uint64_t __writeProtectedStorageSync_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForWrite(*(*(a1 + 40) + 136));
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 136);

  return FigReadWriteLockUnlockForWrite(v2);
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t result)
{
  *v1 = result;
  *(*v2 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_6(int a1, const AudioObjectPropertyAddress *a2, int a3, int a4, UInt32 *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char outData)
{

  return AudioObjectGetPropertyData(1u, a2, 0, 0, a5, &outData);
}

void CMClockInvalidate(CMClockRef clock)
{
  if (clock)
  {
    v5 = *(clock + 2);
    if (v5)
    {
      FigReentrantMutexLock(*(clock + 2));
    }

    if (*(clock + 41))
    {
      v6 = *(*(clock + 3) + 24);
      if (v6)
      {
        v6(clock);
      }

      *(clock + 41) = 0;
      FigMemoryBarrier();
      v7 = *(clock + 4);
      if (v7)
      {
        CFRelease(v7);
      }

      *(clock + 3) = 0;
      *(clock + 4) = 0;
    }

    if (v5)
    {
      v8 = *(clock + 2);

      FigReentrantMutexUnlock(v8);
    }
  }

  else
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE37uLL, "(Fig)", 0x18E, v3, v1, v2);
  }
}

Boolean CMClockMightDrift(CMClockRef clock, CMClockRef otherClock)
{
  if (clock == otherClock)
  {
    return 0;
  }

  v2 = *(clock + 3);
  if (v2 == *(otherClock + 3))
  {
    return (*(v2 + 32))();
  }

  else
  {
    return 1;
  }
}

BOOL FigDerivedClockVerifyCallbacksMatch(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    return *(result + 24) == a2;
  }

  return result;
}

__CFString *fcCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"FigClock");
  FigReentrantMutexLock(*(a1 + 16));
  if (*(a1 + 41))
  {
    v7 = *(*(a1 + 24) + 16);
    if (v7)
    {
      v8 = v7(a1);
    }

    else
    {
      v8 = 0;
    }

    memset(&clockTimeOut, 0, sizeof(clockTimeOut));
    CMClockGetAnchorTime(a1, &clockTimeOut, 0);
    v15 = clockTimeOut;
    v9 = CFGetAllocator(a1);
    clockTimeOut = v15;
    v10 = CMTimeCopyDescription(v9, &clockTimeOut);
    clockTimeOut = v15;
    Seconds = CMTimeGetSeconds(&clockTimeOut);
    if (v8)
    {
      CFStringAppendFormat(Mutable, 0, @"[%@]: ", v8);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @": ");
    }

    v12 = CFGetRetainCount(a1);
    v13 = CFGetAllocator(a1);
    CFStringAppendFormat(Mutable, 0, @"%p retainCount: %d allocator: %p current time: %@ = %f seconds", a1, v12, v13, v10, *&Seconds);
    FigReentrantMutexUnlock(*(a1 + 16));
    if (v10)
    {
      CFRelease(v10);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"(INVALID): ");
    v4 = CFGetRetainCount(a1);
    v5 = CFGetAllocator(a1);
    CFStringAppendFormat(Mutable, 0, @"%p retainCount: %d allocator: %p", a1, v4, v5);
    FigReentrantMutexUnlock(*(a1 + 16));
  }

  return Mutable;
}

__n128 OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  *(v12 - 192) = a11;
  *(v12 - 176) = v11;
  return result;
}

uint64_t CMClockConvertHostTimeToSystemUnits(CMTime *hostTime)
{
  memset(&v3, 0, sizeof(v3));
  v2 = *hostTime;
  CMTimeConvertScale(&v3, &v2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  result = 0;
  if ((v3.flags & 0x1D) == 1)
  {
    return FigNanosecondsToHostTime(v3.value);
  }

  return result;
}

CMTime *__cdecl CMClockMakeHostTimeFromSystemUnits(CMTime *__return_ptr retstr, uint64_t hostTime)
{
  v3 = FigHostTimeToNanoseconds(hostTime);

  return CMTimeMake(retstr, v3, 1000000000);
}

CFStringRef fhtcCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithCString(v1, "HostTimeClock", 0);
}

uint64_t fhtcGetAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  memset(&v7, 0, sizeof(v7));
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  CMTimeMake(&v7, UpTimeNanoseconds, 1000000000);
  if (a2)
  {
    *a2 = v7;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return 0;
}

size_t FigStartForwardingMediaServicesProcessDeathNotification(void *a1, unint64_t a2)
{
  v4 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigMediaServicesProcessDeathMonitoringTrace[1], @"processdeathmonitoring_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v4, 0, gFigMediaServicesProcessDeathMonitoringTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC280, @"processdeathmonitoring_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1ED4CC278);
  if (a1)
  {
    if (a2)
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterAddWeakListener(DefaultLocalCenter, a1, figDependencyDeathRepostNotificationCallback, @"MediaServicesProcessDeath", a2, 0, 0);
    }

    else
    {
      FigStartForwardingMediaServicesProcessDeathNotification_cold_1(&v14, v5, v6, v7, v8, v9, v10, v11);
      return v14;
    }
  }

  else
  {
    FigStartForwardingMediaServicesProcessDeathNotification_cold_2(&v15, v5, v6, v7, v8, v9, v10, v11);
    return v15;
  }
}

uint64_t FigStopForwardingMediaServicesProcessDeathNotification(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, figDependencyDeathRepostNotificationCallback, @"MediaServicesProcessDeath", a2);
    }

    else
    {
      FigStopForwardingMediaServicesProcessDeathNotification_cold_1(&v12, 0, a3, a4, a5, a6, a7, a8);
      return v12;
    }
  }

  else
  {
    FigStopForwardingMediaServicesProcessDeathNotification_cold_2(&v13, a2, a3, a4, a5, a6, a7, a8);
    return v13;
  }
}

size_t FigStartMonitoringMediaServicesProcessDeathWithCallback(void *a1, void (__cdecl *a2)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  v4 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigMediaServicesProcessDeathMonitoringTrace[1], @"processdeathmonitoring_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v4, 0, gFigMediaServicesProcessDeathMonitoringTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC280, @"processdeathmonitoring_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1ED4CC278);
  if (a1)
  {
    if (a2)
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterAddWeakListener(DefaultLocalCenter, a1, a2, @"MediaServicesProcessDeath", a1, 0, 0);
    }

    else
    {
      FigStartMonitoringMediaServicesProcessDeathWithCallback_cold_1(&v14, v5, v6, v7, v8, v9, v10, v11);
      return v14;
    }
  }

  else
  {
    FigStartMonitoringMediaServicesProcessDeathWithCallback_cold_2(&v15, v5, v6, v7, v8, v9, v10, v11);
    return v15;
  }
}

void figObjectDependencyDeathDefaultCallback(int a1, uint64_t a2, int a3, void *a4, int a5, int a6, int a7, int a8)
{
  v43[16] = *MEMORY[0x1E69E9840];
  FigCFDictionaryGetInt64IfPresent(a5, @"ServerCapabilities", &v37, a4, a5, a6, a7, a8, v30, v32, v34, v36, 0, v38, *v39, *&v39[8], *&v39[16], v40);
  if (v12)
  {
    if ((v37 & 1) == 0)
    {
      FigCFDictionaryGetInt32IfPresent(a5, @"PID", &v38 + 4, v15, v16, v17, v18, v19, v31, v33, v35, v36, v37, v38, *v39, *&v39[8], *&v39[16], v40);
      if (!v22)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC278, 0xFFFFCE14uLL, "<<<< FigMediaServicesProcessDeathMonitoring >>>>", 0x98, v8, v20, v21);
      }

      if (dword_1ED4CC280)
      {
        HIDWORD(v36) = 0;
        BYTE3(v36) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC278, 1, &v36 + 1, &v36 + 3);
        v24 = HIDWORD(v36);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v36)))
        {
          v26 = v24;
        }

        else
        {
          v26 = v24 & 0xFFFFFFFE;
        }

        if (v26)
        {
          *v39 = 136315906;
          *&v39[4] = "figObjectDependencyDeathDefaultCallback";
          *&v39[12] = 2048;
          *&v39[14] = a2;
          *&v39[22] = 2048;
          v40 = a4;
          v41 = 1024;
          v42 = HIDWORD(v38);
          v27 = _os_log_send_and_compose_impl();
          LOBYTE(v24) = BYTE4(v36);
        }

        else
        {
          v27 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC278, 1u, 1, v27, v27 != v43, v24, 0, v25);
      }

      v28 = HIDWORD(v38);
      *v39 = 0;
      *&v39[8] = v39;
      *&v39[16] = 0x2020000000;
      v29 = getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_ptr;
      v40 = getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_ptr;
      if (!getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_ptr)
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_block_invoke;
        v43[3] = &unk_1E749E610;
        v43[4] = v39;
        __getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_block_invoke(v43);
        v29 = *(*&v39[8] + 24);
      }

      _Block_object_dispose(v39, 8);
      if (!v29)
      {
        figObjectDependencyDeathDefaultCallback_cold_1();
      }

      v29(v28);
    }
  }

  else
  {
    figObjectDependencyDeathDefaultCallback_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

void sub_196FDA204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigStopMonitoringMediaServicesProcessDeathWithCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, a2, @"MediaServicesProcessDeath", a1);
    }

    else
    {
      FigStopMonitoringMediaServicesProcessDeathWithCallback_cold_1(&v12, 0, a3, a4, a5, a6, a7, a8);
      return v12;
    }
  }

  else
  {
    FigStopMonitoringMediaServicesProcessDeathWithCallback_cold_2(&v13, a2, a3, a4, a5, a6, a7, a8);
    return v13;
  }
}

void *__getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaToolboxLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaToolboxLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E749EA78;
    v6 = 0;
    MediaToolboxLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MediaToolboxLibraryCore_frameworkLibrary;
  if (!MediaToolboxLibraryCore_frameworkLibrary)
  {
    __getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "FigAudioSessionTriggerAVAudioSessionReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigAudioSessionTriggerAVAudioSessionResetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaToolboxLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaToolboxLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t FigCFPropertyListWriteToURL(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([a1 writeToURL:a2 atomically:1])
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294955087;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t FigCreateCFPropertyListFromURLContents(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:a1 error:&v8];
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *a2 = v5;
  if (v8)
  {
    v6 = [v8 code];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t FigEndpointStreamResume(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable(a1) + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2, 0, 0);
}

uint64_t FigEndpointStreamSuspend(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2, 0, 0);
}

uint64_t FigEndpointStreamResumeSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = endpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamResumeSync_cold_1(0, v7, v8, v9, v10, v11, v12, v13);
    return valuePtr;
  }

  v14 = SyncContext;
  v15 = SyncContext[1];
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *v14;
  dispatch_retain(*v14);
  v18 = *(*(CMBaseObjectGetVTable(a1) + 16) + 16);
  if (!v18)
  {
    valuePtr = -12782;
    goto LABEL_15;
  }

  valuePtr = v18(a1, a2, endpointStreamUtil_completionCallback, v14);
  if (valuePtr)
  {
    goto LABEL_15;
  }

  if (!dispatch_semaphore_wait(v17, v5))
  {
    if (CFArrayGetCount(v16) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      CFRelease(v16);
      goto LABEL_17;
    }

LABEL_15:
    if (!v16)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  valuePtr = -16764;
  if (v16)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v17)
  {
    dispatch_release(v17);
  }

  return valuePtr;
}

void *endpointStreamUtil_createSyncContext()
{
  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v5)
  {
    v8 = 80;
LABEL_7:
    endpointStreamUtil_createSyncContext_cold_1(v5, v8, &v9, v0, v1, v2, v3, v4);
    return v9;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5[1] = Mutable;
  if (!Mutable)
  {
    v8 = 83;
    goto LABEL_7;
  }

  *v5 = dispatch_semaphore_create(0);
  return v5;
}

void endpointStreamUtil_completionCallback(uint64_t a1, int a2, uint64_t a3)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(*(a3 + 8), v4);
  dispatch_semaphore_signal(*a3);
  if (*a3)
  {
    dispatch_release(*a3);
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a3);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t FigEndpointStreamSuspendSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = endpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamSuspendSync_cold_1(0, v7, v8, v9, v10, v11, v12, v13);
    return valuePtr;
  }

  v14 = SyncContext;
  v15 = SyncContext[1];
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *v14;
  dispatch_retain(*v14);
  v18 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
  if (!v18)
  {
    valuePtr = -12782;
    goto LABEL_15;
  }

  valuePtr = v18(a1, a2, endpointStreamUtil_completionCallback, v14);
  if (valuePtr)
  {
    goto LABEL_15;
  }

  if (!dispatch_semaphore_wait(v17, v5))
  {
    if (CFArrayGetCount(v16) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      CFRelease(v16);
      goto LABEL_17;
    }

LABEL_15:
    if (!v16)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  valuePtr = -16764;
  if (v16)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v17)
  {
    dispatch_release(v17);
  }

  return valuePtr;
}

size_t FigControlCommandsStartServer()
{
  v1 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigControlCommandsXPCServerTrace[1], @"controlcommandsserver_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v1, 0, gFigControlCommandsXPCServerTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CD68, @"controlcommandsserver_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CD60);
  v8[0] = 1;
  v8[1] = HandleControlCommandsServerRemoteMessage;
  v8[2] = HandleControlCommandsServerRemoteMessageNoReply;
  memset(&v8[3], 0, 24);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue(Mutable, @"xpcServerOption_OptOutOfPurge", *MEMORY[0x1E695E4D0]);
  if (FigServer_IsMediaparserd())
  {
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD60, 0xFFFFC0E9uLL, "<< FigControlCommandsXPCServer >>", 0xF9, v0, v3, v4);
    if (Mutable)
    {
LABEL_3:
      CFRelease(Mutable);
    }
  }

  else
  {
    if (FigServer_IsMediaplaybackd())
    {
      v7 = "com.apple.coremedia.mediaplaybackd.controlcommands.xpc";
    }

    else
    {
      v7 = "com.apple.coremedia.logging.xpc";
    }

    v5 = FigXPCServerStart(v7, v8, 0, &gControlCommandsServer);
    FigInstallSysdiagnoseBlock(@"CoreMediaPreferences", &__block_literal_global_11);
    if (Mutable)
    {
      goto LABEL_3;
    }
  }

  return v5;
}

void __FigControlCommandsStartServer_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CD68)
  {
    v6[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD60, 1, v6, &type);
    v1 = v6[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v3 = v1;
    }

    else
    {
      v3 = v1 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v6[1] = 136315138;
      v7 = "DumpCoreMediaPreferences";
      v4 = _os_log_send_and_compose_impl();
      LOBYTE(v1) = v6[0];
    }

    else
    {
      v4 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD60, 1u, 1, v4, v4 != &v8, v1, 0, v2);
  }

  DumpPreferencesToLog(@"com.apple.coremedia");
  DumpPreferencesToLog(@"com.apple.coremedia.bag");
  DumpPreferencesToLog(@"com.apple.avfoundation");
}

void __HandleLoggingPurgeObjectsAndGenerateReportForPID_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t xarray, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 40);
  if (xarray)
  {
    count = xpc_array_get_count(xarray);
  }

  else
  {
    count = 0;
  }

  CFStringAppendFormat(v9, 0, @"|%-80s|%-20ld|%-64lld|%-32d|\n", a2, count, a4, a5);
  if (a5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t AirPlayLoopbackDispose()
{
  result = FigAtomicDecrement32(gEnableBufferedAirplayEnvClientCount);
  if (!result)
  {

    return unsetenv("ENABLE_BUFFERED_LOCAL_PLAYBACK");
  }

  return result;
}

void DumpPreferencesToLog(const __CFString *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  v4 = CFPreferencesCopyKeyList(a1, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (dword_1EAF1CD68)
    {
      v26 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD60, 1, &v26, &type);
      v8 = v26;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v10 = v8;
      }

      else
      {
        v10 = v8 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v27 = 136315650;
        v28 = "DumpPreferencesToLog";
        v29 = 2114;
        v30 = a1;
        v31 = 2050;
        v32 = Count;
        v11 = _os_log_send_and_compose_impl();
        LOBYTE(v8) = v26;
      }

      else
      {
        v11 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD60, 1u, 1, v11, v11 != v35, v8, 0, v9);
    }

    if (Count >= 1)
    {
      v12 = 0;
      v24 = v5;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v12);
        v14 = CFPreferencesCopyValue(ValueAtIndex, a1, v2, v3);
        if (ValueAtIndex)
        {
          v15 = v14;
          if (v14)
          {
            if (dword_1EAF1CD68)
            {
              v16 = Count;
              v17 = v3;
              v18 = v2;
              v26 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CD60, 1, &v26, &type);
              v20 = v26;
              if (os_log_type_enabled(v19, type))
              {
                v22 = v20;
              }

              else
              {
                v22 = v20 & 0xFFFFFFFE;
              }

              if (v22)
              {
                v27 = 136315906;
                v28 = "DumpPreferencesToLog";
                v29 = 2114;
                v30 = a1;
                v31 = 2114;
                v32 = ValueAtIndex;
                v33 = 2114;
                v34 = v15;
                v23 = _os_log_send_and_compose_impl();
                LOBYTE(v20) = v26;
              }

              else
              {
                v23 = 0;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CD60, 1u, 1, v23, v23 != v35, v20, 0, v21);
              v2 = v18;
              v3 = v17;
              Count = v16;
              v5 = v24;
            }

            CFRelease(v15);
          }
        }

        ++v12;
      }

      while (Count != v12);
    }

    CFRelease(v5);
  }
}

Float64 CMSyncGetRelativeRate(CMClockOrTimebaseRef ofClockOrTimebase, CMClockOrTimebaseRef relativeToClockOrTimebase)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  PivotTransform = figSyncGetPivotTransform(relativeToClockOrTimebase, ofClockOrTimebase, &v4);
  result = *(&v5 + 1);
  if (PivotTransform)
  {
    return NAN;
  }

  return result;
}

OSStatus CMSyncGetRelativeRateAndAnchorTime(CMClockOrTimebaseRef ofClockOrTimebase, CMClockOrTimebaseRef relativeToClockOrTimebase, Float64 *outRelativeRate, CMTime *outOfClockOrTimebaseAnchorTime, CMTime *outRelativeToClockOrTimebaseAnchorTime)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  result = figSyncGetPivotTransform(relativeToClockOrTimebase, ofClockOrTimebase, &v9);
  if (!result)
  {
    if (outRelativeRate)
    {
      *outRelativeRate = *(&v10 + 1);
    }

    if (outOfClockOrTimebaseAnchorTime)
    {
      *&outOfClockOrTimebaseAnchorTime->value = v11;
      outOfClockOrTimebaseAnchorTime->epoch = v12;
    }

    if (outRelativeToClockOrTimebaseAnchorTime)
    {
      *&outRelativeToClockOrTimebaseAnchorTime->value = v9;
      outRelativeToClockOrTimebaseAnchorTime->epoch = v10;
    }
  }

  return result;
}

CMTime *__cdecl CMSyncConvertTime(CMTime *__return_ptr retstr, CMTime *time, CMClockOrTimebaseRef fromClockOrTimebase, CMClockOrTimebaseRef toClockOrTimebase)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (fromClockOrTimebase && toClockOrTimebase)
  {
    if ((time->flags & 0x1D) == 1)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      result = figSyncGetPivotTransform(fromClockOrTimebase, toClockOrTimebase, v14);
      if (!result)
      {
        v13 = *time;
        return FigSyncApplyTransform(&v13, v14, retstr);
      }

      return result;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v4;
    v12 = 579;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v4;
    v12 = 574;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE30uLL, "<<<< FigSync >>>>", v12, v11, v9, v10);
}

Boolean CMSyncMightDrift(CMClockOrTimebaseRef clockOrTimebase1, CMClockOrTimebaseRef clockOrTimebase2)
{
  if (clockOrTimebase1 && clockOrTimebase2)
  {
    v4 = figSyncCopyUltimateMasterClockAndHeight(clockOrTimebase1, 0);
    v5 = figSyncCopyUltimateMasterClockAndHeight(clockOrTimebase2, 0);
    v6 = CMClockMightDrift(v4, v5);
    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE30uLL, "<<<< FigSync >>>>", 0x25E, v2, v8, v9);
    return 1;
  }

  return v6;
}

CMTime *__cdecl CMSyncGetTime(CMTime *__return_ptr retstr, CMClockOrTimebaseRef clockOrTimebase)
{
  if (clockOrTimebase)
  {
    v5 = CFGetTypeID(clockOrTimebase);
    if (v5 == CMClockGetTypeID())
    {

      return CMClockGetTime(retstr, clockOrTimebase);
    }

    else
    {

      return CMTimebaseGetTime(retstr, clockOrTimebase);
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE30uLL, "<<<< FigSync >>>>", 0x271, v2, v8, v9);
    *&retstr->value = *&kCMTimeInvalid.value;
    retstr->epoch = 0;
  }

  return result;
}

uint64_t figSyncCopyUltimateMasterClockAndHeight(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CMClockGetTypeID())
  {
    if (a2)
    {
      *a2 = 0;
    }

    CFRetain(a1);
    return a1;
  }

  else
  {

    return FigTimebaseCopyUltimateMasterClockAndHeight(a1, a2);
  }
}

CMTimebaseRef figTimebaseCopyTargetOfSourceTimebase(OpaqueCMTimebase *a1)
{
  result = CMTimebaseCopySourceTimebase(a1);
  if (result)
  {
    v2 = result;
    v3 = FigTimebaseCopyTargetTimebase(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void *FigTimebaseCopyTargetTimebase(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  CFRetain(a1);
  for (i = 0; ; i = v3)
  {
    v3 = v1;
    if (i)
    {
      CFRelease(i);
    }

    FigReentrantMutexLock(v1[14]);
    v1 = v1[3];
    if (!v1)
    {
      break;
    }

    CFRetain(v3[3]);
    FigReentrantMutexUnlock(v3[14]);
  }

  FigReentrantMutexUnlock(v3[14]);
  return v3;
}

size_t CMTimebaseCreateLoopingTimebase(uint64_t a1, __int128 *a2, const void *a3, void *a4)
{
  v28 = 0;
  if (!a3 || !a4)
  {
    v9 = 4294954548;
    if (!a4)
    {
      return v9;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_7;
  }

  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = *(a2 + 9);
    if ((v7 & 1) != 0 && !*(a2 + 5))
    {
      v8 = 0;
      v9 = 4294954547;
      if (((v7 | v6) & 0x10) != 0 || (*(a2 + 3) & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

      *&time1.start.value = *(a2 + 24);
      time1.start.epoch = *(a2 + 5);
      *&time2.value = *&kCMTimeZero.value;
      time2.epoch = 0;
      if (CMTimeCompare(&time1.start, &time2))
      {
        v9 = figTimebaseCreate(a1, 0, &v28);
        v8 = v28;
        if (!v9)
        {
          *(v28 + 16) = 1;
          v13 = *a2;
          v14 = a2[2];
          v8[4] = a2[1];
          v8[5] = v14;
          v8[3] = v13;
          v15 = CFRetain(a3);
          v16 = v28;
          *(v28 + 136) = v15;
          UltimateMasterClock = figTimebaseFindUltimateMasterClock(v16, v16 + 19);
          if (UltimateMasterClock)
          {
            UltimateMasterClock = CFRetain(UltimateMasterClock);
          }

          v18 = v28;
          *(v28 + 144) = UltimateMasterClock;
          v18[10] = *&kCMTimeZero.value;
          *(v18 + 22) = 0;
          *(v18 + 23) = 0x3FF0000000000000;
          v18[12] = *&kCMTimeZero.value;
          *(v18 + 26) = 0;
          *(v18 + 216) = 0;
          v19 = dispatch_queue_create("com.apple.timebase.loop", 0);
          *(v28 + 96) = v19;
          v20 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v19);
          v21 = v28;
          *(v28 + 104) = v20;
          v22 = FigCFWeakReferenceHolderCreateWithReferencedObject(v21);
          dispatch_set_context(*(v28 + 104), v22);
          dispatch_source_set_event_handler_f(*(v28 + 104), figTimebaseLoopEndTimerCallback);
          dispatch_source_set_cancel_handler_f(*(v28 + 104), figTimebaseLoopEndTimerCancelCallback);
          dispatch_resume(*(v28 + 104));
          v9 = CMTimebaseAddTimerDispatchSource(v28, *(v28 + 104));
          v8 = v28;
          if (!v9)
          {
            v9 = figTimebaseSwitchListenersToNewMaster(v28, 0, a3);
            v8 = v28;
            if (!v9)
            {
              v23 = *(v28 + 104);
              v24 = a2[1];
              *&time1.start.value = *a2;
              *&time1.start.epoch = v24;
              *&time1.duration.timescale = a2[2];
              v25 = v28;
              CMTimeRangeGetEnd(&time2, &time1);
              v9 = CMTimebaseSetTimerDispatchSourceNextFireTime(v25, v23, &time2, 0);
              v8 = v28;
            }
          }
        }

        if (!v9 || !v8)
        {
          goto LABEL_7;
        }

        CFRelease(v8);
      }

      goto LABEL_16;
    }
  }

  v8 = 0;
  v9 = 4294954547;
LABEL_7:
  *a4 = v8;
  return v9;
}

void figTimebaseLoopEndTimerCallback(id *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(v1, 1, 0, &v3);
    v3 = *(v2 + 8);
    figTimebaseSetAnchorTimeMaybeNowMaybeNotifying();

    CFRelease(v2);
  }
}

void figTimebaseLoopEndTimerCancelCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t figTimebaseIsDescendantOfTimebase(void *cf, void *a2)
{
  if (cf == a2)
  {
    return 1;
  }

  v2 = cf;
  if (!cf)
  {
    return 0;
  }

  CFRetain(cf);
  while (1)
  {
    FigReentrantMutexLock(v2[14]);
    v4 = v2[3];
    if (!v4)
    {
      v4 = v2[17];
      if (!v4)
      {
        break;
      }
    }

    CFRetain(v4);
    FigReentrantMutexUnlock(v2[14]);
    if (v4 == a2)
    {
      CFRelease(v4);
      v5 = 1;
      goto LABEL_12;
    }

    CFRetain(v4);
    CFRelease(v2);
    CFRelease(v4);
    v2 = v4;
  }

  FigReentrantMutexUnlock(v2[14]);
  v5 = 0;
LABEL_12:
  CFRelease(v2);
  return v5;
}

size_t figTimebasePostNotification(void *a1, const void *a2, const void *a3)
{
  v6 = a1[15];
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  if (v6)
  {

    return FigDispatchAsyncPostNotification(v6, DefaultLocalCenter, a2, a1, a3, 0, v8, v9);
  }

  else
  {

    return CMNotificationCenterPostNotification(DefaultLocalCenter, a2, a1, a3);
  }
}

void rescheduleValidAndRemoveCancelledTimerSources(CFDictionaryRef *a1, CMTime *a2, int a3)
{
  Count = CFDictionaryGetCount(a1[38]);
  if (Count)
  {
    v7 = Count;
    v8 = CFGetAllocator(a1);
    v9 = MEMORY[0x19A8D7200](v8, 8 * v7, 0x2004093837F09, 0);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetAllocator(a1);
      v12 = MEMORY[0x19A8D7200](v11, 8 * v7, 0x6004044C4A2DFLL, 0);
      if (v12)
      {
        v13 = v12;
        CFDictionaryGetKeysAndValues(a1[38], v10, v12);
        if (v7 >= 1)
        {
          v14 = *MEMORY[0x1E695E4C0];
          v15 = v10;
          v16 = v13;
          do
          {
            v17 = *v15;
            if (dispatch_source_testcancel(*v15))
            {
              CFDictionaryRemoveValue(a1[38], v17);
              CFDictionaryRemoveValue(a1[39], *v15);
            }

            else if (v14 != *v16)
            {
              v23 = *CFDataGetBytePtr(*v16);
              Value = CFDictionaryGetValue(a1[39], *v15);
              v19 = *v15;
              v22 = *a2;
              rescheduleTimerSource(v19, &v23, a1, &v22, a3, Value);
            }

            ++v16;
            ++v15;
            --v7;
          }

          while (v7);
        }

        v20 = CFGetAllocator(a1);
        CFAllocatorDeallocate(v20, v10);
      }

      else
      {
        v13 = v10;
      }

      v21 = CFGetAllocator(a1);

      CFAllocatorDeallocate(v21, v13);
    }
  }
}

OSStatus CMTimebaseCreateWithSourceClock(CFAllocatorRef allocator, CMClockRef sourceClock, CMTimebaseRef *timebaseOut)
{
  cf = 0;
  if (sourceClock && timebaseOut)
  {
    v8 = figTimebaseCreate(allocator, 0, &cf);
    if (!v8)
    {
      *(cf + 4) = 0;
      v10 = CFRetain(sourceClock);
      *(cf + 16) = v10;
      v11 = CFRetain(sourceClock);
      v9 = cf;
      *(cf + 18) = v11;
      v9[19] = 1;
      v9[22] = 0;
      v9[23] = 0;
      v9[26] = 0;
      *(v9 + 10) = *&kCMTimeZero.value;
      *(v9 + 12) = *&kCMTimeZero.value;
      *(v9 + 216) = 0;
      goto LABEL_10;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE34uLL, "<<< timebase >>>", 0x528, v5, v3, v4);
  }

  if (timebaseOut)
  {
    v9 = 0;
LABEL_10:
    *timebaseOut = v9;
  }

  return v8;
}

OSStatus CMTimebaseCreateWithSourceTimebase(CFAllocatorRef allocator, CMTimebaseRef sourceTimebase, CMTimebaseRef *timebaseOut)
{
  cf = 0;
  if (sourceTimebase && timebaseOut)
  {
    v8 = figTimebaseCreate(allocator, 0, &cf);
    v9 = cf;
    if (v8)
    {
      goto LABEL_10;
    }

    *(cf + 4) = 0;
    v10 = CFRetain(sourceTimebase);
    v11 = cf;
    *(cf + 17) = v10;
    UltimateMasterClock = figTimebaseFindUltimateMasterClock(v11, v11 + 19);
    if (UltimateMasterClock)
    {
      UltimateMasterClock = CFRetain(UltimateMasterClock);
    }

    v13 = cf;
    *(cf + 18) = UltimateMasterClock;
    v13[10] = *&kCMTimeZero.value;
    *(v13 + 22) = 0;
    *(v13 + 23) = 0;
    v13[12] = *&kCMTimeZero.value;
    *(v13 + 26) = 0;
    *(v13 + 216) = 0;
    v14 = figTimebaseSwitchListenersToNewMaster(v13, 0, sourceTimebase);
  }

  else
  {
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE34uLL, "<<< timebase >>>", 0x84E, v5, v3, v4);
  }

  v8 = v14;
  if (!v14)
  {
    goto LABEL_13;
  }

  v9 = cf;
LABEL_10:
  if (v9)
  {
    CFRelease(v9);
  }

  cf = 0;
LABEL_13:
  if (timebaseOut)
  {
    *timebaseOut = cf;
  }

  return v8;
}

size_t figTimebaseVerifyReadWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a1 + 16) != 2)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v9(a1, *(a1 + 40));
  }

  v10 = qword_1ED4CC298;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE2BuLL, "<<< timebase >>>", 0x287, v8, a7, a8);
}

OSStatus CMTimebaseSetRateAndAnchorTime(CMTimebaseRef timebase, Float64 rate, CMTime *timebaseTime, CMTime *immediateSourceTime)
{
  v10 = *timebaseTime;
  v9 = *immediateSourceTime;
  return CMTimebaseSetRateAndAnchorTimeWithFlags(timebase, &v10, &v9, 0, v4, v5, v6, v7, rate);
}

CMClockRef CMTimebaseGetMasterClock(CMTimebaseRef timebase)
{
  v1 = CMTimebaseCopySourceClock(timebase);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CMClockOrTimebaseRef CMTimebaseGetMaster(CMTimebaseRef timebase)
{
  v1 = CMTimebaseCopySource(timebase);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CMClockRef CMTimebaseGetUltimateMasterClock(CMTimebaseRef timebase)
{
  v1 = FigTimebaseCopyUltimateMasterClockAndHeight(timebase, 0);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

BOOL cfDataFigTimeEqual(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v4 = CFDataGetBytePtr(a2);
  v5 = *BytePtr;
  time1.epoch = *(BytePtr + 2);
  *&time1.value = v5;
  v6 = *v4;
  v8.epoch = *(v4 + 2);
  *&v8.value = v6;
  return CMTimeCompare(&time1, &v8) == 0;
}

CFStringRef cfDataFigTimeCopyDescription(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v3 = CFGetAllocator(a1);
  v4 = *BytePtr;
  v6.epoch = *(BytePtr + 2);
  *&v6.value = v4;
  return CMTimeCopyDescription(v3, &v6);
}

void rescheduleTimerSource(NSObject *a1, CMTime *a2, OpaqueCMTimebase *a3, CMTime *a4, int a5, char a6)
{
  memset(&v27, 0, sizeof(v27));
  memset(&v26, 0, sizeof(v26));
  if (!dispatch_source_testcancel(a1))
  {
    if ((a2->flags & 0x1D) != 1)
    {
      goto LABEL_4;
    }

    if (a2->timescale < 1)
    {
      goto LABEL_4;
    }

    EffectiveRate = CMTimebaseGetEffectiveRate(a3);
    if (EffectiveRate == 0.0)
    {
      goto LABEL_4;
    }

    v14 = EffectiveRate;
    timescale = a2->timescale;
    if (timescale <= 1023)
    {
      do
      {
        value = a2->value;
        if ((a2->value + 0x3FFFFFFFFFFFFFFFLL) > 0x7FFFFFFFFFFFFFFDLL)
        {
          break;
        }

        memset(&time, 0, sizeof(time));
        CMTimeMake(&time, 2 * value, 2 * timescale);
        *a2 = time;
        timescale = a2->timescale;
      }

      while (timescale < 1024);
    }

    HostTimeClock = CMClockGetHostTimeClock();
    time = *a2;
    CMSyncConvertTime(&v27, &time, a3, HostTimeClock);
    memset(&time, 0, sizeof(time));
    v18 = CMClockGetHostTimeClock();
    CMClockGetTime(&time, v18);
    v19 = 0;
    if (v14 <= 0.0 || (time1 = *a2, v23 = *a4, (CMTimeCompare(&time1, &v23) & 0x80000000) == 0))
    {
      if (v14 >= 0.0 || (time1 = *a2, v23 = *a4, CMTimeCompare(&time1, &v23) < 1))
      {
        v19 = 1;
      }
    }

    time1 = v27;
    v23 = time;
    CMTimeSubtract(&v26, &time1, &v23);
    v23 = v26;
    CMTimeConvertScale(&time1, &v23, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v20 = time1.value;
    if ((~time1.flags & 9) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    if ((~time1.flags & 5) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 8073216000000000000;
    }

    if ((time1.flags & 0x1D) != 1)
    {
      v20 = v22;
    }

    if (v19)
    {
      goto LABEL_30;
    }

    if (a6)
    {
LABEL_29:
      v20 = 0;
LABEL_30:
      v12 = dispatch_time(0, v20 & ~(v20 >> 63));
      goto LABEL_5;
    }

    if (!a5)
    {
LABEL_4:
      v12 = -1;
LABEL_5:
      dispatch_source_set_timer(a1, v12, 0x7009D32DA3000000uLL, 0);
      return;
    }

    if (a5 != 1)
    {
      goto LABEL_29;
    }
  }
}

uint64_t CMTimebaseGetTimeClampedAboveAnchorTime@<X0>(OpaqueCMTimebase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, CMBlockBufferFlags a5@<W6>, CMBlockBufferRef *a6@<X7>, CMTime *a7@<X8>)
{
  *&a7->value = *&kCMTimeInvalid.value;
  a7->epoch = 0;
  return CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime(a1, a7, 0, a2, a3, a4, a5, a6);
}

uint64_t CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime(OpaqueCMTimebase *a1, CMTime *a2, CMTime *a3, char *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  v14 = 0;
  if (!a1)
  {
    CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime_cold_2(&v17, a2, a3, a4, a5, a6, a7, a8);
    v12 = 0;
    result = v17;
    if (!a4)
    {
      return result;
    }

    goto LABEL_8;
  }

  FigReentrantMutexLock(*(a1 + 14));
  figTimebaseGetAnchorTimebaseTimeIfClamped(a1, &v15, &v14, &v16);
  v12 = v14;
  if (v14)
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime_cold_1(&v16, a1, &v15);
  if (a2)
  {
LABEL_4:
    *a2 = v16;
  }

LABEL_5:
  if (a3)
  {
    *a3 = v15;
  }

  FigReentrantMutexUnlock(*(a1 + 14));
  result = 0;
  if (a4)
  {
LABEL_8:
    *a4 = v12;
  }

  return result;
}

void figTimebaseTimeJumpedNotificationCallback(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  memset(&v21, 0, sizeof(v21));
  v10 = FigCFEqual(cf1, @"CMTimebaseTimeJumped");
  if (a2)
  {
    v13 = v10;
    FigReentrantMutexLock(*(a2 + 112));
    if (*(a2 + 136) != a4)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE33uLL, "<<< timebase >>>", 0x6F5, v5, v14, v15);
LABEL_8:
      v17 = *(a2 + 112);

      FigReentrantMutexUnlock(v17);
      return;
    }

    figTimebaseGetTimeFromNotificationPayloadOrMasterTimebase(a5, a2, &v21);
    if (*(a2 + 184) == 0.0)
    {
      goto LABEL_8;
    }

    if (*(a2 + 280))
    {
      v20 = v21;
      rescheduleValidAndRemoveInvalidTimers(a2, &v20, v13 == 0);
    }

    if (*(a2 + 304))
    {
      v20 = v21;
      rescheduleValidAndRemoveCancelledTimerSources(a2, &v20, v13 == 0);
    }

    FigReentrantMutexUnlock(*(a2 + 112));
    v18 = CFGetAllocator(a2);
    v20 = v21;
    v19 = figTimebaseCreatePayloadForNotificationAtTime(v18, &v20);
    figTimebasePostNotification(a2, cf1, v19);
    if (v19)
    {

      CFRelease(v19);
    }
  }

  else
  {
    v16 = qword_1ED4CC298;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCE34uLL, "<<< timebase >>>", 0x6EC, v5, v11, v12);
  }
}

void figTimebaseMasterDidChangeNotificationCallback(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  memset(&v21, 0, sizeof(v21));
  if (a2)
  {
    FigReentrantMutexLock(a2[14]);
    if (a2[17] == a4)
    {
      figTimebaseGetTimeFromNotificationPayloadOrMasterTimebase(a5, a2, &v21);
      v16 = a2[18];
      if (v16)
      {
        CFRelease(v16);
      }

      UltimateMasterClock = figTimebaseFindUltimateMasterClock(a2, a2 + 19);
      if (UltimateMasterClock)
      {
        UltimateMasterClock = CFRetain(UltimateMasterClock);
      }

      a2[18] = UltimateMasterClock;
      v18 = CFGetAllocator(a2);
      v20 = v21;
      v19 = figTimebaseCreatePayloadForNotificationAtTime(v18, &v20);
      FigReentrantMutexUnlock(a2[14]);
      figTimebasePostNotification(a2, @"CMTimebaseMasterDidChange", v19);
      if (v19)
      {

        CFRelease(v19);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE33uLL, "<<< timebase >>>", 0x7B1, v8, v12, v13);
      v14 = a2[14];

      FigReentrantMutexUnlock(v14);
    }
  }

  else
  {
    v15 = qword_1ED4CC298;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE34uLL, "<<< timebase >>>", 0x7A8, v8, a7, a8);
  }
}

void figTimebaseMasterWillChangeNotificationCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  memset(&v19, 0, sizeof(v19));
  if (a2)
  {
    FigReentrantMutexLock(a2[14]);
    if (a2[17] == a4)
    {
      figTimebaseGetTimeFromNotificationPayloadOrMasterTimebase(a5, a2, &v19);
      FigReentrantMutexUnlock(a2[14]);
      v16 = CFGetAllocator(a2);
      v18 = v19;
      v17 = figTimebaseCreatePayloadForNotificationAtTime(v16, &v18);
      figTimebasePostNotification(a2, @"CMTimebaseMasterWillChange", v17);
      if (v17)
      {

        CFRelease(v17);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE33uLL, "<<< timebase >>>", 0x784, v8, v12, v13);
      v14 = a2[14];

      FigReentrantMutexUnlock(v14);
    }
  }

  else
  {
    v15 = qword_1ED4CC298;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE34uLL, "<<< timebase >>>", 0x77B, v8, a7, a8);
  }
}

void figTimebaseGetTimeFromNotificationPayloadOrMasterTimebase(CFTypeRef cf@<X1>, uint64_t a2@<X0>, CMTime *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  flags = 0;
  timescale = 0;
  epoch = 0;
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, @"CMTimebaseEventTime");
      CMTimeMakeFromDictionary(&v10, Value);
      v11 = v10.value;
      flags = v10.flags;
      timescale = v10.timescale;
      epoch = v10.epoch;
    }
  }

  if ((flags & 1) == 0)
  {
    figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(*(a2 + 136), 1, 0, &v10);
    v11 = v10.value;
    flags = v10.flags;
    timescale = v10.timescale;
    epoch = v10.epoch;
  }

  v10.value = v11;
  v10.timescale = timescale;
  v10.flags = flags;
  v10.epoch = epoch;
  figTimebaseGetTimeAtMasterTime(a2, a3);
}

void figTimebaseGetTimeAtMasterTime(void *a1@<X0>, CMTime *a2@<X8>)
{
  *&a2->value = *&kCMTimeInvalid.value;
  a2->epoch = 0;
  if (a1)
  {
    figTimebaseGetTimeAtMasterTime_cold_1(a1, a2);
  }

  else
  {
    a2->flags &= ~2u;
  }
}

__n128 OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, uint64_t a18)
{
  result = a17;
  *(v18 - 256) = a17;
  *(v18 - 240) = a18;
  return result;
}

__n128 OUTLINED_FUNCTION_5_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __n128 a24, uint64_t a25)
{
  result = a24;
  *(v25 - 128) = a24;
  *(v25 - 112) = a25;
  return result;
}

__n128 OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, unint64_t a14)
{
  result = a13;
  v14[10] = a13;
  v14[11].n128_u64[0] = a14;
  return result;
}

void OUTLINED_FUNCTION_10_1(CMTime *a1@<X8>)
{

  figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(v1, 1, 0, a1);
}

__n128 OUTLINED_FUNCTION_11_0()
{
  result = *v0;
  *(v1 - 256) = *v0;
  *(v1 - 240) = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, CMTime *time1, __int128 time1_8, __int128 a14, uint64_t a15)
{
  *&time1 = a14;
  *(&time1_8 + 1) = a15;
  a9 = *(v15 - 88);
  a10 = *(v15 - 72);

  return CMTimeCompare(&time1, &a9);
}

void OUTLINED_FUNCTION_17(void *a1@<X0>, CMTime *a2@<X8>)
{

  figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(a1, 1, 0, a2);
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1)
{
  v2 = *(a1 + 112);

  return FigReentrantMutexLock(v2);
}

size_t OUTLINED_FUNCTION_20(uint64_t a1, const void *a2)
{

  return figTimebasePostNotification(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v45 = *(v43 + 664);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v45, 1, &a43, &a39);
}

CMTime *__cdecl CMTimeMake(CMTime *__return_ptr retstr, CMTime *value, int32_t timescale)
{
  retstr->value = value;
  retstr->timescale = timescale;
  retstr->flags = 1;
  retstr->epoch = 0;
  if (timescale <= 0)
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return value;
}

CMTime *__cdecl CMTimeMakeWithEpoch(CMTime *__return_ptr retstr, CMTime *value, int32_t timescale, int64_t epoch)
{
  retstr->value = value;
  retstr->timescale = timescale;
  retstr->flags = 1;
  retstr->epoch = epoch;
  if (timescale <= 0)
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return value;
}

CMTime *__cdecl CMTimeMakeWithSeconds(CMTime *__return_ptr retstr, Float64 seconds, int32_t preferredTimescale)
{
  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  if (preferredTimescale < 1)
  {
    goto LABEL_31;
  }

  retstr->timescale = preferredTimescale;
  retstr->flags = 1;
  if (seconds == 0.0)
  {
    goto LABEL_31;
  }

  v3 = -(preferredTimescale * seconds);
  if (seconds >= 0.0)
  {
    v3 = preferredTimescale * seconds;
  }

  if (v3 <= 9.22337204e18)
  {
    retstr->timescale = preferredTimescale;
    v6 = preferredTimescale;
  }

  else
  {
    v4 = preferredTimescale >> 1;
    v5 = preferredTimescale == 1;
    if (preferredTimescale != 1)
    {
      while (1)
      {
        v3 = -(v4 * seconds);
        if (seconds >= 0.0)
        {
          v3 = v4 * seconds;
        }

        if (v3 <= 9.22337204e18)
        {
          break;
        }

        v6 = v4 >> 1;
        v7 = v4 >= 2;
        v5 = v4 < 2;
        v4 >>= 1;
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }

    v6 = v4;
LABEL_14:
    retstr->timescale = v6;
    if (v5)
    {
      retstr->epoch = 0;
      if (seconds >= 0.0)
      {
        v8 = &kCMTimePositiveInfinity;
      }

      else
      {
        v8 = &kCMTimeNegativeInfinity;
      }

      *&retstr->value = *&v8->value;
      goto LABEL_31;
    }
  }

  v9 = v3;
  if (v3 == 9.22337204e18)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (seconds < 0.0)
  {
    v9 = -v9;
  }

  retstr->value = v9;
  v10 = v9 / v6 - seconds;
  if (v10 != 0.0)
  {
    retstr->flags = 3;
    if (preferredTimescale <= 100)
    {
      v11 = fabs(v10);
      if (v11 > 0.01 && v11 < 1.0 && CMTimeMakeWithSeconds_onlyThisManyTimes >= 1)
      {
        --CMTimeMakeWithSeconds_onlyThisManyTimes;
        *&preferredTimescale = CFLog();
      }
    }
  }

LABEL_31:
  LODWORD(result) = preferredTimescale;
  return result;
}

Float64 CMTimeGetSeconds(CMTime *time)
{
  flags = time->flags;
  if ((flags & 0x11) != 1)
  {
    return NAN;
  }

  if ((flags & 4) != 0)
  {
    return INFINITY;
  }

  if ((flags & 8) == 0)
  {
    return time->value / time->timescale;
  }

  return -INFINITY;
}

CMTime *__cdecl CMTimeConvertScale(CMTime *__return_ptr retstr, CMTime *time, int32_t newTimescale, CMTimeRoundingMethod method)
{
  v4 = time;
  v14 = 0;
  if ((time->flags & 0x1D) != 1)
  {
    goto LABEL_4;
  }

  if (newTimescale <= 0)
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
    return time;
  }

  timescale = time->timescale;
  if (timescale == newTimescale)
  {
LABEL_4:
    *retstr = *time;
    return time;
  }

  time = FigInt64MulDiv(time->value, newTimescale, time->timescale, &v14);
  if (time == 0x7FFFFFFFFFFFFFFFLL)
  {
    retstr->epoch = 0;
    v9 = &kCMTimePositiveInfinity;
    goto LABEL_10;
  }

  if (time == 0x8000000000000000)
  {
    retstr->epoch = 0;
    v9 = &kCMTimeNegativeInfinity;
LABEL_10:
    *&retstr->value = *&v9->value;
    return time;
  }

  epoch = v4->epoch;
  retstr->value = time;
  retstr->epoch = epoch;
  LODWORD(epoch) = v4->flags & 2 | 1;
  retstr->timescale = newTimescale;
  retstr->flags = epoch;
  v11 = v14;
  if (!v14)
  {
    return time;
  }

  retstr->flags = 3;
  if (method <= kCMTimeRoundingMethod_RoundAwayFromZero)
  {
    if (method == kCMTimeRoundingMethod_RoundHalfAwayFromZero)
    {
      if (v11 >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = -v11;
      }

      if ((2 * v13) < timescale)
      {
        return time;
      }
    }

    else if (method != kCMTimeRoundingMethod_RoundAwayFromZero)
    {
      return time;
    }

LABEL_32:
    if (v11 < 0)
    {
LABEL_34:
      v12 = &time[-1].epoch + 7;
      goto LABEL_35;
    }

LABEL_33:
    v12 = &time->value + 1;
    goto LABEL_35;
  }

  if (method == kCMTimeRoundingMethod_QuickTime)
  {
    if (timescale >= newTimescale)
    {
      if (time || (v4->value & 0x8000000000000000) == 0)
      {
        return time;
      }

      v12 = -1;
LABEL_35:
      retstr->value = v12;
      return time;
    }

    goto LABEL_32;
  }

  if (method == kCMTimeRoundingMethod_RoundTowardPositiveInfinity)
  {
    if (v11 < 0)
    {
      return time;
    }

    goto LABEL_33;
  }

  if (method == kCMTimeRoundingMethod_RoundTowardNegativeInfinity && v11 < 0)
  {
    goto LABEL_34;
  }

  return time;
}

CMTime *__cdecl CMTimeAdd(CMTime *__return_ptr retstr, CMTime *lhs, CMTime *rhs)
{
  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  flags = lhs->flags;
  if ((flags & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = rhs->flags;
  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((flags & 4) != 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  if ((flags & 8) != 0)
  {
    if ((v6 & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_58:
    retstr->epoch = 0;
    v24 = &kCMTimeNegativeInfinity;
    goto LABEL_59;
  }

  if ((v6 & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((v6 & 8) != 0)
  {
    goto LABEL_58;
  }

  v7 = v6 | flags;
  if ((v7 & 0x10) != 0)
  {
    retstr->epoch = 0;
    v24 = &kCMTimeIndefinite;
    goto LABEL_59;
  }

  v8 = lhs;
  epoch = lhs->epoch;
  v10 = rhs->epoch;
  if (epoch)
  {
    if (!v10 || epoch == v10)
    {
      if (epoch == v10)
      {
        v10 = 0;
      }

      else
      {
        v10 = lhs->epoch;
      }

      goto LABEL_16;
    }

LABEL_3:
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
    return lhs;
  }

LABEL_16:
  if (!lhs->value)
  {
    retstr->value = rhs->value;
    timescale = rhs->timescale;
    goto LABEL_63;
  }

  if (!rhs->value)
  {
    retstr->value = lhs->value;
    timescale = lhs->timescale;
LABEL_63:
    retstr->epoch = v10;
    v26 = v7 & 3;
    retstr->timescale = timescale;
LABEL_64:
    retstr->flags = v26;
    return lhs;
  }

  v11 = lhs->timescale;
  v12 = rhs->timescale;
  v13 = v11;
  if (v11 != v12)
  {
    v14 = v12;
    v15 = 1;
    if (v11 != -1 && v12 != -1)
    {
      v15 = lhs->timescale;
      if (v12)
      {
        v16 = lhs->timescale;
        do
        {
          v15 = v12;
          v12 = v16 % v12;
          v16 = v15;
        }

        while (v12);
      }
    }

    if (v14 / v15 * v11 <= 0x7FFFFFFF)
    {
      v13 = v14 / v15 * v11;
    }

    else
    {
      v13 = 1000000000;
    }
  }

  while (1)
  {
    if (v13 == v11)
    {
      value = v8->value;
      v18 = v8->flags;
    }

    else
    {
      v27 = *v8;
      lhs = CMTimeConvertScale(&v28, &v27, v13, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v18 = v28.flags;
      if ((v28.flags & 1) == 0)
      {
        goto LABEL_3;
      }

      value = v28.value;
      if ((v28.flags & 4) != 0)
      {
        if (v13 >= 2)
        {
          goto LABEL_54;
        }
      }

      else if (v13 >= 2 && (v28.flags & 8) != 0)
      {
        goto LABEL_54;
      }
    }

    if (v13 == rhs->timescale)
    {
      v19 = rhs->value;
      v20 = rhs->flags;
    }

    else
    {
      v27 = *rhs;
      lhs = CMTimeConvertScale(&v28, &v27, v13, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v20 = v28.flags;
      if ((v28.flags & 1) == 0)
      {
        goto LABEL_3;
      }

      v19 = v28.value;
      if ((v28.flags & 4) != 0)
      {
        if (v13 > 1)
        {
          goto LABEL_54;
        }
      }

      else if (v13 >= 2 && (v28.flags & 8) != 0)
      {
        goto LABEL_54;
      }
    }

    if ((~v18 & 5) == 0)
    {
      if ((~v20 & 9) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_56;
    }

    v21 = v20 & 5;
    if ((~v18 & 9) == 0)
    {
      if (v21 == 5)
      {
        goto LABEL_3;
      }

      goto LABEL_58;
    }

    if (v21 == 5)
    {
      goto LABEL_56;
    }

    if ((~v20 & 9) == 0)
    {
      goto LABEL_58;
    }

    if ((v18 & 0x1D) != 1 || (v20 & 0x1D) != 1)
    {
      goto LABEL_3;
    }

    v22 = __OFADD__(value, v19);
    v23 = &value[v19];
    if (!v22)
    {
      retstr->value = v23;
      retstr->epoch = v10;
      v26 = (v20 | v18) & 3;
      retstr->timescale = v13;
      goto LABEL_64;
    }

    if (v13 <= 1)
    {
      break;
    }

LABEL_54:
    v13 = v13 >> 1;
    v11 = v8->timescale;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_56:
  retstr->epoch = 0;
  v24 = &kCMTimePositiveInfinity;
LABEL_59:
  *&retstr->value = *&v24->value;
  return lhs;
}

CMTime *__cdecl CMTimeSubtract(CMTime *__return_ptr retstr, CMTime *lhs, CMTime *rhs)
{
  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  flags = lhs->flags;
  if ((flags & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = rhs->flags;
  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((flags & 4) != 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_3;
  }

  if ((flags & 8) != 0)
  {
    if ((v6 & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    retstr->epoch = 0;
    v12 = &kCMTimeNegativeInfinity;
    goto LABEL_24;
  }

  if ((v6 & 4) != 0)
  {
    goto LABEL_23;
  }

  if ((v6 & 8) != 0)
  {
    goto LABEL_21;
  }

  v7 = v6 | flags;
  if ((v7 & 0x10) != 0)
  {
    retstr->epoch = 0;
    v12 = &kCMTimeIndefinite;
    goto LABEL_24;
  }

  v8 = lhs;
  epoch = lhs->epoch;
  v10 = rhs->epoch;
  if (!epoch)
  {
    goto LABEL_16;
  }

  if (v10 && epoch != v10)
  {
LABEL_3:
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
    return lhs;
  }

  if (epoch == v10)
  {
    v10 = 0;
  }

  else
  {
    v10 = lhs->epoch;
  }

LABEL_16:
  if (!rhs->value)
  {
    retstr->value = lhs->value;
    timescale = lhs->timescale;
    retstr->epoch = v10;
    v11 = v7 & 3;
    retstr->timescale = timescale;
    goto LABEL_27;
  }

  if (rhs->value != 0x8000000000000000 && !lhs->value)
  {
    *&retstr->value = *&rhs->value;
    retstr->value = -retstr->value;
    retstr->epoch = v10;
    v11 = v7 & 3;
LABEL_27:
    retstr->flags = v11;
    return lhs;
  }

  v14 = lhs->timescale;
  v15 = rhs->timescale;
  v16 = v14;
  if (v14 != v15)
  {
    v17 = v15;
    v18 = 1;
    if (v14 != -1 && v15 != -1)
    {
      v18 = lhs->timescale;
      if (v15)
      {
        v19 = lhs->timescale;
        do
        {
          v18 = v15;
          v15 = v19 % v15;
          v19 = v18;
        }

        while (v15);
      }
    }

    if (v17 / v18 * v14 <= 0x7FFFFFFF)
    {
      v16 = v17 / v18 * v14;
    }

    else
    {
      v16 = 1000000000;
    }
  }

  while (1)
  {
    if (v16 == v14)
    {
      value = v8->value;
      v21 = v8->flags;
    }

    else
    {
      v26 = *v8;
      lhs = CMTimeConvertScale(&v27, &v26, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v21 = v27.flags;
      if ((v27.flags & 1) == 0)
      {
        goto LABEL_3;
      }

      value = v27.value;
      if ((v27.flags & 4) != 0)
      {
        if (v16 >= 2)
        {
          goto LABEL_64;
        }
      }

      else if (v16 >= 2 && (v27.flags & 8) != 0)
      {
        goto LABEL_64;
      }
    }

    if (v16 == rhs->timescale)
    {
      v22 = rhs->value;
      v23 = rhs->flags;
    }

    else
    {
      v26 = *rhs;
      lhs = CMTimeConvertScale(&v27, &v26, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v23 = v27.flags;
      if ((v27.flags & 1) == 0)
      {
        goto LABEL_3;
      }

      v22 = v27.value;
      if ((v27.flags & 4) != 0)
      {
        if (v16 > 1)
        {
          goto LABEL_64;
        }
      }

      else if (v16 >= 2 && (v27.flags & 8) != 0)
      {
        goto LABEL_64;
      }
    }

    if ((~v21 & 5) == 0)
    {
      if ((~v23 & 5) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    if ((~v21 & 9) == 0)
    {
      if ((~v23 & 9) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_23;
    }

    if ((~v23 & 5) == 0)
    {
      goto LABEL_23;
    }

    if ((~v23 & 9) == 0)
    {
      goto LABEL_21;
    }

    if ((v21 & 0x1D) != 1 || (v23 & 0x1D) != 1)
    {
      goto LABEL_3;
    }

    v24 = __OFSUB__(value, v22);
    v25 = &value[-v22];
    if (!v24)
    {
      retstr->value = v25;
      retstr->epoch = v10;
      v11 = (v23 | v21) & 3;
      retstr->timescale = v16;
      goto LABEL_27;
    }

    if (v16 <= 1)
    {
      break;
    }

LABEL_64:
    v16 = v16 >> 1;
    v14 = v8->timescale;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  retstr->epoch = 0;
  v12 = &kCMTimePositiveInfinity;
LABEL_24:
  *&retstr->value = *&v12->value;
  return lhs;
}

CMTime *__cdecl CMTimeMultiply(CMTime *__return_ptr retstr, CMTime *time, int32_t multiplier)
{
  flags = time->flags;
  if ((flags & 1) == 0)
  {
LABEL_2:
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
    return time;
  }

  if ((flags & 0x10) == 0)
  {
    if ((flags & 4) != 0)
    {
LABEL_17:
      if (multiplier < 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((flags & 8) == 0)
      {
        v6 = time;
        epoch = time->epoch;
        timescale = time->timescale;
        v9 = timescale;
        while (1)
        {
          if (v9 == timescale)
          {
            value = v6->value;
            v11 = v6->flags;
          }

          else
          {
            v13 = *v6;
            time = CMTimeConvertScale(&v14, &v13, v9, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            LOBYTE(v11) = v14.flags;
            if ((v14.flags & 1) == 0)
            {
              goto LABEL_2;
            }

            if ((v14.flags & 4) != 0)
            {
              goto LABEL_17;
            }

            if ((v14.flags & 8) != 0)
            {
              goto LABEL_19;
            }

            value = v14.value;
          }

          time = FigInt64MulDiv(value, multiplier, 1, 0);
          if (&time[0xFAAAAAAAAAAAAAABLL] - 7 > 1)
          {
            retstr->value = time;
            retstr->epoch = epoch;
            retstr->timescale = v9;
            retstr->flags = v11 & 2 | 1;
            return time;
          }

          if (v9 < 2)
          {
            break;
          }

          v9 = v9 >> 1;
          timescale = v6->timescale;
        }

        if ((time & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

LABEL_19:
      if ((multiplier & 0x80000000) == 0)
      {
LABEL_20:
        retstr->epoch = 0;
        v12 = &kCMTimeNegativeInfinity;
        goto LABEL_21;
      }
    }

LABEL_18:
    retstr->epoch = 0;
    v12 = &kCMTimePositiveInfinity;
    goto LABEL_21;
  }

  retstr->epoch = 0;
  v12 = &kCMTimeIndefinite;
LABEL_21:
  *&retstr->value = *&v12->value;
  return time;
}

CMTime *__cdecl CMTimeMultiplyByFloat64(CMTime *__return_ptr retstr, CMTime *time, Float64 multiplier)
{
  retstr->value = 0;
  flags = time->flags;
  if ((flags & 1) == 0)
  {
    goto LABEL_2;
  }

  if ((flags & 0x10) != 0)
  {
    retstr->epoch = 0;
    v8 = &kCMTimeIndefinite;
    goto LABEL_43;
  }

  if ((flags & 4) != 0)
  {
LABEL_39:
    if (multiplier >= 0.0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if ((flags & 8) != 0)
  {
LABEL_41:
    if (multiplier < 0.0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v6 = time;
  if (fabs(multiplier) == INFINITY)
  {
    time1 = *time;
    time = CMTimeCompare(&time1, &kCMTimeZero);
    if (!time)
    {
LABEL_2:
      retstr->value = 0;
      *&retstr->timescale = 0;
      retstr->epoch = 0;
      return time;
    }

    if (multiplier > 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }

    if (((time ^ v7) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_40:
    retstr->epoch = 0;
    v8 = &kCMTimeNegativeInfinity;
    goto LABEL_43;
  }

  epoch = time->epoch;
  timescale = time->timescale;
  v11 = ceil(multiplier);
  if (timescale <= 1000000000)
  {
    v12 = 1000000000;
  }

  else
  {
    v12 = time->timescale;
  }

  if (v11 != multiplier || multiplier < -9.22337204e18 || multiplier > 9.22337204e18)
  {
    v15 = v12;
  }

  else
  {
    v15 = time->timescale;
  }

  while (1)
  {
    if (v15 == timescale)
    {
      value = v6->value;
      v17 = v6->flags;
    }

    else
    {
      v21 = *v6;
      time = CMTimeConvertScale(&time1, &v21, v15, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      LOBYTE(v17) = time1.flags;
      if ((time1.flags & 1) == 0)
      {
        goto LABEL_2;
      }

      if ((time1.flags & 4) != 0)
      {
        if (v15 < 2)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if ((time1.flags & 8) != 0)
      {
        if (v15 <= 1)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      value = time1.value;
    }

    v18 = value * multiplier;
    if (fabs(v18) <= 9.22337204e18)
    {
      if (v18 >= 9.22337204e18)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v18 <= -9.22337204e18)
      {
        v20 = 0x8000000000000000;
      }

      else
      {
        if (v18 >= 0.0)
        {
          v19 = 0.5;
        }

        else
        {
          v19 = -0.5;
        }

        v20 = (v18 + v19);
      }

      retstr->value = v20;
      retstr->epoch = epoch;
      retstr->timescale = v15;
      retstr->flags = v17 & 2 | 1;
      if ((v17 & 2) == 0 && ((v20 - 0x8000000000001) <= 0xFFEFFFFFFFFFFFFELL || v15 <= 999999999 && v18 != v20))
      {
        retstr->flags = 3;
      }

      return time;
    }

    if (v15 <= 1)
    {
      break;
    }

LABEL_38:
    v15 = v15 >> 1;
    timescale = v6->timescale;
  }

  if (v18 < 0.0)
  {
    goto LABEL_40;
  }

LABEL_42:
  retstr->epoch = 0;
  v8 = &kCMTimePositiveInfinity;
LABEL_43:
  *&retstr->value = *&v8->value;
  return time;
}

int32_t CMTimeCompare(CMTime *time1, CMTime *time2)
{
  flags = time1->flags;
  v4 = time2->flags;
  result = v4 & 1;
  if (flags)
  {
    if ((v4 & 1) == 0)
    {
      return -1;
    }

    if ((flags & 4) != 0)
    {
      return ((v4 >> 2) & 1) == 0;
    }

    else
    {
      if ((v4 & 4) != 0)
      {
        return -1;
      }

      if ((flags & 0x10) != 0)
      {
        return ((v4 >> 4) & 1) == 0;
      }

      else
      {
        if ((v4 & 0x10) != 0)
        {
          return -1;
        }

        if ((flags & 8) != 0)
        {
          return ((v4 >> 3) & 1) - 1;
        }

        else
        {
          if ((v4 & 8) != 0)
          {
            return 1;
          }

          epoch = time1->epoch;
          v7 = time2->epoch;
          if (epoch > v7)
          {
            return 1;
          }

          else
          {
            if (epoch < v7)
            {
              return -1;
            }

            timescale = time1->timescale;
            value = time1->value;
            v10 = time2->value;
            if (timescale == time2->timescale)
            {
              if (value >= v10)
              {
                v11 = 0;
              }

              else
              {
                v11 = -1;
              }

              if (value > v10)
              {
                return 1;
              }

              else
              {
                return v11;
              }
            }

            else
            {
              return multiplyAndCompare96(value, time2->timescale, v10, timescale);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMTimeDivide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 12);
  if ((v4 & 1) == 0)
  {
    goto LABEL_48;
  }

  v6 = *(a2 + 12);
  if ((v6 & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((*(a1 + 12) & 0x1D) != 1 || (*(a2 + 12) & 0x1D) != 1)
  {
    goto LABEL_48;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (v10 && v9 != v10)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v9 = *(a2 + 16);
  }

  if (!*a2)
  {
    goto LABEL_48;
  }

  if (!*a1)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }

    v22 = 0;
    v13 = *(a1 + 8);
    v23 = v6 | v4;
    goto LABEL_54;
  }

  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = v11;
  if (v11 != v12)
  {
    v14 = v12;
    v15 = 1;
    if (v11 != -1 && v12 != -1)
    {
      v15 = *(a1 + 8);
      if (v12)
      {
        v16 = *(a1 + 8);
        do
        {
          v15 = v12;
          v12 = v16 % v12;
          v16 = v15;
        }

        while (v12);
      }
    }

    if (v14 / v15 * v11 <= 0x7FFFFFFF)
    {
      v13 = v14 / v15 * v11;
    }

    else
    {
      v13 = 1000000000;
    }
  }

  while (1)
  {
    if (v13 == v11)
    {
      value = *a1;
      v18 = *(a1 + 12);
    }

    else
    {
      v26 = *a1;
      CMTimeConvertScale(&v27, &v26, v13, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      LOBYTE(v18) = v27.flags;
      if ((v27.flags & 1) == 0)
      {
        goto LABEL_48;
      }

      value = v27.value;
      if ((v27.flags & 4) != 0)
      {
        if (v13 >= 2)
        {
          goto LABEL_40;
        }
      }

      else if (v13 >= 2 && (v27.flags & 8) != 0)
      {
        goto LABEL_40;
      }
    }

    if (v13 == *(a2 + 8))
    {
      break;
    }

    v26 = *a2;
    CMTimeConvertScale(&v27, &v26, v13, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    LOBYTE(v19) = v27.flags;
    if ((v27.flags & 1) == 0)
    {
      goto LABEL_48;
    }

    v20 = v27.value;
    if ((v27.flags & 4) != 0)
    {
      if (v13 <= 1)
      {
        goto LABEL_44;
      }
    }

    else if (v13 < 2 || (v27.flags & 8) == 0)
    {
      goto LABEL_44;
    }

LABEL_40:
    v13 = v13 >> 1;
    v11 = *(a1 + 8);
  }

  v20 = *a2;
  v19 = *(a2 + 12);
LABEL_44:
  if ((v18 & 0x1D) != 1 || (v19 & 0x1D) != 1)
  {
LABEL_48:
    result = 0;
    if (a3)
    {
      v25 = 0;
      v13 = 0;
      v9 = 0;
      v22 = 0;
      goto LABEL_50;
    }

    return result;
  }

  result = value / v20;
  if (!a3)
  {
    return result;
  }

  v22 = value % v20;
  v23 = v19 | v18;
LABEL_54:
  v25 = v23 & 3;
LABEL_50:
  *a3 = v22;
  *(a3 + 8) = v13;
  *(a3 + 12) = v25;
  *(a3 + 16) = v9;
  return result;
}

uint64_t CMTimeRemainder@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a1;
  v7 = *(a1 + 2);
  v4 = *a2;
  v5 = *(a2 + 2);
  return CMTimeDivide(&v6, &v4, a3);
}

CMTime *__cdecl CMTimeMultiplyByRatio(CMTime *__return_ptr retstr, CMTime *time, int32_t multiplier, int32_t divisor)
{
  v40 = 0;
  if (divisor >= 0)
  {
    v5 = (multiplier >> 31) | 1;
  }

  else
  {
    v5 = -((multiplier >> 31) | 1);
  }

  flags = time->flags;
  if ((flags & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((flags & 0x10) != 0)
  {
    retstr->epoch = 0;
    v35 = &kCMTimeIndefinite;
    goto LABEL_85;
  }

  LODWORD(v7) = divisor;
  LODWORD(v8) = multiplier;
  v9 = time;
  if (!divisor)
  {
    time1 = *time;
    time = CMTimeCompare(&time1, &kCMTimeZero);
    if (!v8 || !time)
    {
      goto LABEL_5;
    }

    time1 = *v9;
    time = CMTimeCompare(&time1, &kCMTimeZero);
    if (time >= 1)
    {
      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_84;
      }

      goto LABEL_81;
    }

    time1 = *v9;
    time = CMTimeCompare(&time1, &kCMTimeZero);
    if ((time & 0x80000000) != 0)
    {
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_81;
    }
  }

  if ((flags & 4) != 0)
  {
    if (v8)
    {
LABEL_80:
      if (v5 < 0)
      {
        goto LABEL_84;
      }

LABEL_81:
      retstr->epoch = 0;
      v35 = &kCMTimePositiveInfinity;
      goto LABEL_85;
    }

LABEL_5:
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
    return time;
  }

  if ((flags & 8) != 0)
  {
    if (v8)
    {
LABEL_83:
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_81;
    }

    goto LABEL_5;
  }

  if (v8 && v7 && v8 != -1 && v7 != -1)
  {
    v10 = v7;
    v11 = v8;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    if (v11 < 0)
    {
      v11 = -v11;
    }

    if (v11 != 1)
    {
      v7 = v7 / v11;
      v8 = v8 / v11;
    }
  }

  epoch = v9->epoch;
  v13 = 1;
  time = FigInt64MulDiv(v9->value, v8, 1, 0);
  timescale = v9->timescale;
  v15 = timescale;
  v16 = v7;
  if (time)
  {
    v17 = v7;
  }

  else
  {
    v17 = 1;
  }

  if (&time[0xFAAAAAAAAAAAAAABLL] - 7 >= 2)
  {
    v18 = v17 * timescale;
    if ((v18 - 0x80000000) > 0xFFFFFFFF00000000)
    {
LABEL_63:
      LOBYTE(v31) = 0;
LABEL_64:
      if (v18 >= 0)
      {
        v32 = time;
      }

      else
      {
        v32 = -time;
      }

      if (v18 >= 0)
      {
        LODWORD(v33) = v18;
      }

      else
      {
        v33 = -v18;
      }

      retstr->value = v32;
      retstr->epoch = epoch;
      retstr->timescale = v33;
      retstr->flags = 1;
      if (v13)
      {
        if (v31)
        {
          v34 = v31 & 3;
        }

        else
        {
          v34 = v9->flags & 2 | 1;
        }
      }

      else
      {
        v34 = 3;
      }

      retstr->flags = v34;
      return time;
    }
  }

  while (1)
  {
    value = v9->value;
    if (v7 == -1 || value == -1)
    {
      break;
    }

    v20 = v9->value;
    if (v7)
    {
      v21 = v16;
      v22 = v9->value;
      do
      {
        v20 = v21;
        v21 = v22 % v21;
        v22 = v20;
      }

      while (v21);
    }

    if (v20 < 0)
    {
      v20 = -v20;
    }

    if (v20 == 1)
    {
      break;
    }

    value /= v20;
    v9->value = value;
    v7 = v16 / v20;
LABEL_58:
    v13 = 1;
    time = FigInt64MulDiv(value, v8, 1, 0);
    timescale = v9->timescale;
    v15 = timescale;
    v16 = v7;
    if (time)
    {
      v30 = v7;
    }

    else
    {
      v30 = 1;
    }

    if (&time[0xFAAAAAAAAAAAAAABLL] - 7 >= 2)
    {
      v18 = v30 * timescale;
      if ((v18 - 0x80000000) >= 0xFFFFFFFF00000001)
      {
        goto LABEL_63;
      }
    }
  }

  if (v8 != -1 && timescale != -1)
  {
    if (timescale)
    {
      v23 = v15;
      v24 = v8;
      do
      {
        v25 = v23;
        v23 = v24 % v23;
        v24 = v25;
      }

      while (v23);
    }

    else
    {
      v25 = v8;
    }

    if (v25 < 0)
    {
      v25 = -v25;
    }

    if (v25 != 1)
    {
      v9->timescale = v15 / v25;
      v8 = v8 / v25;
      goto LABEL_58;
    }
  }

  if (value != -1 && timescale != -1)
  {
    if (timescale)
    {
      v27 = v15;
      v28 = v9->value;
      do
      {
        v29 = v27;
        v27 = v28 % v27;
        v28 = v29;
      }

      while (v27);
    }

    else
    {
      v29 = v9->value;
    }

    if (v29 < 0)
    {
      v29 = -v29;
    }

    if (v29 != 1)
    {
      value /= v29;
      v9->value = value;
      v9->timescale = v15 / v29;
      goto LABEL_58;
    }
  }

  v18 = 1000000000;
  while (1)
  {
    if (v18 == timescale)
    {
      time = v9->value;
      v31 = v9->flags;
    }

    else
    {
      timea = *v9;
      time = CMTimeConvertScale(&time1, &timea, v18, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      LOBYTE(v31) = time1.flags;
      if ((time1.flags & 1) == 0)
      {
        goto LABEL_5;
      }

      time = time1.value;
      if ((time1.flags & 0xC) != 0)
      {
        if (v18 >= 2)
        {
          goto LABEL_100;
        }

        if ((time1.flags & 4) != 0)
        {
          goto LABEL_80;
        }

        if ((time1.flags & 8) != 0)
        {
          goto LABEL_83;
        }
      }
    }

    time = FigInt64MulDiv(time, v8, v7, &v40);
    if (&time[0xFAAAAAAAAAAAAAABLL] - 7 > 1)
    {
      v13 = v40 == 0;
      if (v16 >= 0)
      {
        v36 = v16;
      }

      else
      {
        v36 = -v16;
      }

      time = (time + 2 * v40 / v36);
      goto LABEL_64;
    }

    if (v18 <= 1)
    {
      break;
    }

LABEL_100:
    v18 = v18 >> 1;
    timescale = v9->timescale;
  }

  if ((time & 0x8000000000000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_84:
  retstr->epoch = 0;
  v35 = &kCMTimeNegativeInfinity;
LABEL_85:
  *&retstr->value = *&v35->value;
  return time;
}

CMTime *CMTimeMultiplyTimeByTimeRatio@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((result->flags & 0x1D) != 1 || (*(a2 + 12) & 0x1D) != 1 || (a3->flags & 0x1D) != 1 || (v7 = result, time1 = *a3, result = CMTimeCompare(&time1, &kCMTimeZero), !result))
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v8 = *a2;
  if (*a2 == *a2)
  {
    value = a3->value;
  }

  else
  {
    v24 = *(a2 + 8);
    if (v24)
    {
      v25 = *(a2 + 8);
      v26 = *a2;
      do
      {
        v27 = v26;
        v26 = v25;
        v25 = v27 % v25;
      }

      while (v25);
      if (v26 >= 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = -v26;
      }

      v29 = *a2;
      if (v28 != 1)
      {
        v29 = v8 / v28;
        *a2 = v8 / v28;
        *(a2 + 8) = v24 / v28;
      }
    }

    else
    {
      v29 = *a2;
    }

    value = a3->value;
    if (v29 && value)
    {
      v34 = a3->value;
      v35 = v29;
      do
      {
        v36 = v35;
        v35 = v34;
        v34 = v36 % v34;
      }

      while (v34);
      if (v35 < 0)
      {
        v35 = -v35;
      }

      if (v35 != 1)
      {
        *a2 = v29 / v35;
        value = a3->value / v35;
        a3->value = value;
      }
    }
  }

  if (value != value)
  {
    v10 = v8 + 0x80000000;
    timescale = a3->timescale;
    if (timescale)
    {
      v12 = a3->timescale;
      v13 = value;
      do
      {
        v14 = v13;
        v13 = v12;
        v12 = v14 % v12;
      }

      while (v12);
      if (v13 < 0)
      {
        v13 = -v13;
      }

      if (v13 != 1)
      {
        value /= v13;
        a3->value = value;
        a3->timescale = timescale / v13;
      }
    }

    if (!HIDWORD(v10) && *a2 && value)
    {
      v15 = value;
      v16 = *a2;
      do
      {
        v17 = v16;
        v16 = v15;
        v15 = v17 % v15;
      }

      while (v15);
      if (v16 < 0)
      {
        v16 = -v16;
      }

      if (v16 != 1)
      {
        *a2 /= v16;
        value = a3->value / v16;
        a3->value = value;
      }
    }
  }

  v18 = *a2;
  if (*a2 != *a2 || (value + 0x80000000) >> 32)
  {
LABEL_38:
    v30 = *(a2 + 12);
    flags = a3->flags;
    if ((v30 & 0x11) == 1)
    {
      if ((v30 & 4) != 0)
      {
        v33 = 0x7FF0000000000000;
      }

      else
      {
        if ((v30 & 8) == 0)
        {
          v32 = v18 / *(a2 + 8);
          goto LABEL_55;
        }

        v33 = 0xFFF0000000000000;
      }
    }

    else
    {
      v33 = 0x7FF8000000000000;
    }

    v32 = *&v33;
LABEL_55:
    if ((a3->flags & 0x11) == 1)
    {
      if ((flags & 4) != 0)
      {
        v38 = 0x7FF0000000000000;
      }

      else
      {
        if ((flags & 8) == 0)
        {
          v37 = value / a3->timescale;
          goto LABEL_63;
        }

        v38 = 0xFFF0000000000000;
      }
    }

    else
    {
      v38 = 0x7FF8000000000000;
    }

    v37 = *&v38;
LABEL_63:
    v40 = *v7;
    v39 = v32 / v37;
    result = CMTimeMultiplyByFloat64(&time1, &v40, v32 / v37);
    v42 = time1.value;
    v22 = time1.flags;
    v43 = time1.timescale;
    epoch = time1.epoch;
    if (v39 != v39)
    {
      v22 = time1.flags | 2;
    }

    goto LABEL_65;
  }

  v19 = *(a2 + 8);
  v40 = *v7;
  CMTimeMultiplyByRatio(&time1, &v40, v18, v19);
  v43 = time1.timescale;
  v42 = time1.value;
  v20 = a3->timescale;
  v21 = a3->value;
  v40 = time1;
  result = CMTimeMultiplyByRatio(&time1, &v40, v20, v21);
  v42 = time1.value;
  v22 = time1.flags;
  v43 = time1.timescale;
  if ((time1.flags & 2) != 0)
  {
    v18 = *a2;
    value = a3->value;
    goto LABEL_38;
  }

  epoch = time1.epoch;
LABEL_65:
  *a4 = v42;
  *(a4 + 8) = v43;
  *(a4 + 12) = v22;
  *(a4 + 16) = epoch;
  return result;
}

uint64_t multiplyAndCompare96(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if ((a3 ^ a1) < 0)
  {
    v18 = a1 < 0;
    v17 = 1;
  }

  else
  {
    if (a1 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = -a1;
    }

    if (a3 >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = -a3;
    }

    v6 = HIDWORD(v4);
    v7 = v4 * a2;
    v8 = HIDWORD(v7) + v6 * a2;
    v9 = HIDWORD(v5);
    v10 = v5 * a4;
    v11 = HIDWORD(v10) + v9 * a4;
    v12 = v8 >= v11;
    v13 = v8 == v11;
    if (v8 >= v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    if (!v13 && v12)
    {
      v14 = 1;
    }

    v15 = v7 >= v10;
    v16 = v7 == v10;
    if (v7 >= v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    if (!v16 && v15)
    {
      v17 = 1;
    }

    if (v14)
    {
      v17 = v14;
    }

    if (v17)
    {
      v18 = a1 < 0;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v18)
  {
    return -v17;
  }

  else
  {
    return v17;
  }
}

CMTime *__cdecl CMTimeMinimum(CMTime *__return_ptr retstr, CMTime *time1, CMTime *time2)
{
  time1a = *time1;
  v8 = *time2;
  result = CMTimeCompare(&time1a, &v8);
  if (result >= 0)
  {
    v7 = time2;
  }

  else
  {
    v7 = time1;
  }

  *&retstr->value = *&v7->value;
  retstr->epoch = v7->epoch;
  return result;
}

CMTime *__cdecl CMTimeMaximum(CMTime *__return_ptr retstr, CMTime *time1, CMTime *time2)
{
  time1a = *time1;
  v8 = *time2;
  result = CMTimeCompare(&time1a, &v8);
  if (result >= 0)
  {
    v7 = time1;
  }

  else
  {
    v7 = time2;
  }

  *&retstr->value = *&v7->value;
  retstr->epoch = v7->epoch;
  return result;
}

CMTime *__cdecl CMTimeAbsoluteValue(CMTime *__return_ptr retstr, CMTime *time)
{
  if ((~time->flags & 9) != 0)
  {
    if (time->value < 0)
    {
      time->value = -time->value;
    }
  }

  else
  {
    time->epoch = 0;
    *&time->value = *&kCMTimePositiveInfinity.value;
  }

  *retstr = *time;
  return time;
}

CFDictionaryRef CMTimeCopyAsDictionary(CMTime *time, CFAllocatorRef allocator)
{
  v12 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E749EB58;
  v11 = *off_1E749EB68;
  v4 = *MEMORY[0x1E695E480];
  v9[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, time);
  v9[1] = CFNumberCreate(v4, kCFNumberSInt32Type, &time->timescale);
  v9[2] = CFNumberCreate(v4, kCFNumberSInt64Type, &time->epoch);
  v9[3] = CFNumberCreate(v4, kCFNumberSInt32Type, &time->flags);
  v5 = CFDictionaryCreate(allocator, keys, v9, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 4; ++i)
  {
    v7 = v9[i];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v5;
}

CMTime *__cdecl CMTimeMakeFromDictionary(CMTime *__return_ptr retstr, CMTime *dictionaryRepresentation)
{
  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  if (!dictionaryRepresentation || (v3 = dictionaryRepresentation, TypeID = CFDictionaryGetTypeID(), dictionaryRepresentation = CFGetTypeID(v3), TypeID != dictionaryRepresentation) || (Value = CFDictionaryGetValue(v3, @"value"), v6 = CFDictionaryGetValue(v3, @"timescale"), v7 = CFDictionaryGetValue(v3, @"epoch"), dictionaryRepresentation = CFDictionaryGetValue(v3, @"flags"), !Value) || (v8 = dictionaryRepresentation, v9 = CFGetTypeID(Value), dictionaryRepresentation = CFNumberGetTypeID(), v9 != dictionaryRepresentation) || !v6 || (v10 = CFGetTypeID(v6), dictionaryRepresentation = CFNumberGetTypeID(), v10 != dictionaryRepresentation) || !v7 || (v11 = CFGetTypeID(v7), dictionaryRepresentation = CFNumberGetTypeID(), v11 != dictionaryRepresentation) || !v8 || (v12 = CFGetTypeID(v8), dictionaryRepresentation = CFNumberGetTypeID(), v12 != dictionaryRepresentation) || (dictionaryRepresentation = CFNumberGetValue(Value, kCFNumberSInt64Type, retstr), !dictionaryRepresentation) || (dictionaryRepresentation = CFNumberGetValue(v6, kCFNumberSInt32Type, &retstr->timescale), !dictionaryRepresentation) || (dictionaryRepresentation = CFNumberGetValue(v7, kCFNumberSInt64Type, &retstr->epoch), !dictionaryRepresentation) || (dictionaryRepresentation = CFNumberGetValue(v8, kCFNumberSInt32Type, &retstr->flags), !dictionaryRepresentation))
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return dictionaryRepresentation;
}

CFDictionaryRef CMTimeCopyAsCVBufferTimeDictionary(_DWORD *valuePtr, const __CFAllocator *a2)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if ((valuePtr[3] & 0x1D) != 1)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E6965C80];
  keys[0] = *MEMORY[0x1E6965C88];
  keys[1] = v4;
  v5 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  v12 = CFNumberCreate(v5, kCFNumberSInt32Type, valuePtr + 2);
  p_values = &values;
  v7 = CFDictionaryCreate(a2, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = 1;
  do
  {
    v9 = v8;
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    v8 = 0;
    p_values = &v12;
  }

  while ((v9 & 1) != 0);
  return v7;
}

CFTypeID CMTimeMakeFromCVBufferTimeDictionary@<X0>(CFTypeID result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (result && (v3 = result, TypeID = CFDictionaryGetTypeID(), result = CFGetTypeID(v3), TypeID == result) && ((Value = CFDictionaryGetValue(v3, *MEMORY[0x1E6965C88]), result = CFDictionaryGetValue(v3, *MEMORY[0x1E6965C80]), Value) ? (v6 = result == 0) : (v6 = 1), !v6 && (v7 = result, result = CFNumberGetValue(Value, kCFNumberSInt64Type, a2), result) && (result = CFNumberGetValue(v7, kCFNumberSInt32Type, a2 + 1), result)))
  {
    *(a2 + 3) = 1;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  a2[2] = 0;
  return result;
}

CFStringRef CMTimeCopyDescription(CFAllocatorRef allocator, CMTime *time)
{
  Mutable = CFStringCreateMutable(allocator, 0);
  v4 = Mutable;
  if (Mutable)
  {
    flags = time->flags;
    if (flags)
    {
      if ((flags & 0x10) != 0)
      {
        CFStringAppendFormat(Mutable, 0, @"{INDEFINITE}");
      }

      else if ((flags & 4) != 0)
      {
        CFStringAppendFormat(Mutable, 0, @"{+INFINITY}");
      }

      else if ((flags & 8) != 0)
      {
        CFStringAppendFormat(Mutable, 0, @"{-INFINITY}");
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"{%lld/%d = %1.3f", time->value, time->timescale, time->value / time->timescale);
        if (time->epoch)
        {
          CFStringAppendFormat(v4, 0, @", epoch=%lld", time->epoch);
        }

        v6 = time->flags;
        if ((time->flags & 0x1F) == 3)
        {
          CFStringAppendFormat(v4, 0, @", rounded");
          v6 = time->flags;
        }

        if (v6 >= 4)
        {
          CFStringAppendFormat(v4, 0, @", flags=0x%08x", v6);
        }

        CFStringAppendFormat(v4, 0, @"}");
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"{INVALID}");
    }
  }

  return v4;
}

void CMTimeShow(CMTime *time)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695E480];
  *timea = *time;
  v2 = CMTimeCopyDescription(v1, timea);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(timea, 0, sizeof(timea));
  if (v2)
  {
    v3 = v2;
    if (CFStringGetCString(v2, timea, 512, 0))
    {
      fprintf(*MEMORY[0x1E69E9848], "%s\n", timea);
    }

    CFRelease(v3);
  }
}

size_t RegisterFigPerformanceMonitorBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigPerformanceMonitorClassDesc, ClassID, 1, &_MergedGlobals_13, v1, v2, v3, v4);
}

uint64_t FigPerformanceMonitorUpdateOSTransactionData(const void *a1, const char *a2, const char *a3, int a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v30 = 0;
  memset(buffer, 0, sizeof(buffer));
  v8 = getpid();
  if (proc_name(v8, buffer, 0x21u) >= 1)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x8000100u);
    if (v10)
    {
      v11 = FigRemote_ShouldConnectToMediaplaybackd() ? @"mediaplaybackd" : @"mediaserverd";
      v12 = !FigCFEqual(v10, v11) || FigGetCFPreferenceBooleanWithDefault(@"DisableFigPerfMonitor", @"com.apple.coremedia", 0) || FigDebugIsInternalBuild() == 0;
      CFRelease(v10);
      if (!v12)
      {
        if (FigPerformanceMonitorGetGlobal_onceToken != -1)
        {
          FigPerformanceMonitorUpdateOSTransactionData_cold_1();
        }

        if (qword_1ED4CC518)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage(qword_1ED4CC518);
          if (a1)
          {
            v14 = CFRetain(a1);
          }

          else
          {
            v14 = 0;
          }

          v22[3] = v14;
          if (a2)
          {
            a2 = CFStringCreateWithCString(v9, a2, 0x8000100u);
          }

          if (a3)
          {
            v15 = CFStringCreateWithCString(v9, a3, 0x8000100u);
          }

          else
          {
            v15 = 0;
          }

          v16 = *(DerivedStorage + 8);
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __FigPerformanceMonitorUpdateOSTransactionData_block_invoke;
          v19[3] = &unk_1E749EB80;
          v19[4] = &v25;
          v19[5] = &v21;
          v19[6] = DerivedStorage;
          v19[7] = a2;
          v19[8] = v15;
          v20 = a4;
          dispatch_async(v16, v19);
        }

        else
        {
          *(v26 + 6) = -19070;
        }
      }
    }
  }

  v17 = *(v26 + 6);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v17;
}

void __FigPerformanceMonitorUpdateOSTransactionData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v37 = 0uLL;
  v36 = 0;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    __FigPerformanceMonitorUpdateOSTransactionData_block_invoke_cold_1(&v38, v9, v10, v11, v12, v13, v14, v15);
    v18 = 0;
    v20 = 0;
    v32 = v38;
    goto LABEL_20;
  }

  v16 = Mutable;
  if (v6 >= 1)
  {
    FigApplicationStateMonitorGetHostPIDIfAvailable(v6, &v36, v10, v11, v12, v13, v14, v15);
    if (v36 >= 1)
    {
      FigServer_CopyProcessName(v36, &v37);
    }
  }

  FigServer_CopyProcessName(v6, &v37 + 1);
  if (*(&v37 + 1) && v37)
  {
    Copy = CFStringCreateWithFormat(v7, 0, @"%@->%@ ", v37);
  }

  else
  {
    if (v37 == 0)
    {
      v18 = 0;
LABEL_16:
      FigCFDictionarySetValue(v16, @"name", v5);
      v20 = 0;
      goto LABEL_17;
    }

    if (*(&v37 + 1))
    {
      Copy = CFStringCreateCopy(v7, *(&v37 + 1));
    }

    else
    {
      Copy = CFStringCreateWithFormat(v7, 0, @"%@-><UNKNOWN>", v37);
    }
  }

  v18 = Copy;
  if (!Copy)
  {
    goto LABEL_16;
  }

  v19 = CFStringCreateWithFormat(v7, 0, @"%@_%@", v5, Copy);
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v19;
  FigCFDictionarySetValue(v16, @"name", v19);
LABEL_17:
  FigCFDictionarySetValue(v16, @"weakRef", v3);
  FigCFDictionarySetValue(v16, @"reason", v4);
  FigCFDictionarySetInt32(v16, @"pid", v6, v21, v22, v23, v24, v25);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  FigCFDictionarySetInt64(v16, @"creationTime", UpTimeNanoseconds, v27, v28, v29, v30, v31);
  CFArrayAppendValue(*(v2 + 64), v16);
  CFRelease(v16);
  if (*(&v37 + 1))
  {
    CFRelease(*(&v37 + 1));
  }

  v32 = 0;
LABEL_20:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  *(*(*(a1 + 32) + 8) + 24) = v32;
  v33 = *(*(*(a1 + 40) + 8) + 24);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(a1 + 56);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(a1 + 64);
  if (v35)
  {
    CFRelease(v35);
  }
}

void __fpm_performanceMonitorCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpm_performanceMonitorCreate_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __fpm_performanceMonitorCreate_block_invoke_2(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 32);
  *(v3 + 648) = UpTimeNanoseconds;
  result = [*(v3 + 584) screenOn];
  *(*(a1 + 32) + 640) = result;
  return result;
}

void __fpm_performanceMonitorCreate_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpm_performanceMonitorCreate_block_invoke_4;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __fpm_performanceMonitorCreate_block_invoke_4(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 32);
  *(v3 + 648) = UpTimeNanoseconds;
  result = [*(v3 + 584) screenOn];
  *(*(a1 + 32) + 640) = result;
  return result;
}

void fpm_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = *DerivedStorage;
  if (*DerivedStorage)
  {
    dispatch_source_cancel(v2);
    v2 = *DerivedStorage;
  }

  dispatch_release(v2);
  v3 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v3);
  v4 = *(DerivedStorage + 664);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 632);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 8) = 0;
  }

  v8 = *(DerivedStorage + 672);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 672) = 0;
  }
}

size_t fpm_setProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a1)
  {
    v9 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpm_setProperty_block_invoke;
    block[3] = &unk_1E749E610;
    block[4] = &v13;
    dispatch_sync(v9, block);
    v10 = *(v14 + 6);
  }

  else
  {
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB581uLL, "< FigPerformanceMonitor >", 0x30A, v8, a7, a8);
    *(v14 + 6) = v10;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_196FDF9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

size_t __fpm_setProperty_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB580uLL, "< FigPerformanceMonitor >", 0x30E, v8, a7, a8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void fpm_timerCallback(id *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage(v1);
    *(DerivedStorage + 592) += 30;
    v5 = (DerivedStorage + 64);
    v4 = *(DerivedStorage + 64);
    if (!v4 || !CFArrayGetCount(v4))
    {
      *(DerivedStorage + 600) += 30;
    }

    if (*(DerivedStorage + 640))
    {
      *(DerivedStorage + 608) = (FigGetUpTimeNanoseconds() - *(DerivedStorage + 648)) / 0x3B9ACA00;
    }

    v230 = 0;
    Count = CFArrayGetCount(*v5);
    if (Count >= 1)
    {
      fpm_timerCallback_cold_1(DerivedStorage, &v230, Count, v5);
    }

    if (proc_pid_rusage(*(DerivedStorage + 16), 6, (DerivedStorage + 72)) == 1 || __ROR8__(0xFEDCBA987654321 * *(DerivedStorage + 592) + 0x91A2B3C4D5E6F0, 4) > 0x123456789ABCDEuLL)
    {
      goto LABEL_60;
    }

    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fpm_timerCallback_cold_4(&v230, v9, v10, v11, v12, v13, v14, v15);
      v170 = 0;
      if (v230)
      {
        goto LABEL_58;
      }

      goto LABEL_37;
    }

    v16 = Mutable;
    v17 = CFStringCreateWithCString(v7, (DerivedStorage + 20), 0x8000100u);
    FigCFDictionarySetValue(v16, @"PidName", v17);
    FigCFDictionarySetInt64(v16, @"IdleTime", *(DerivedStorage + 600), v18, v19, v20, v21, v22);
    FigCFDictionarySetInt64(v16, @"UpTime", *(DerivedStorage + 592), v23, v24, v25, v26, v27);
    FigCFDictionarySetInt64(v16, @"ScreenOnTime", *(DerivedStorage + 608), v28, v29, v30, v31, v32);
    FigCFDictionarySetInt64(v16, @"RUFootprint", *(DerivedStorage + 144), v33, v34, v35, v36, v37);
    FigCFDictionarySetInt64(v16, @"RUBilledEnergy", *(DerivedStorage + 336), v38, v39, v40, v41, v42);
    FigCFDictionarySetInt64(v16, @"RUServicedEnergy", *(DerivedStorage + 344), v43, v44, v45, v46, v47);
    FigCFDictionarySetInt64(v16, @"RUCycles", *(DerivedStorage + 328), v48, v49, v50, v51, v52);
    FigCFDictionarySetInt64(v16, @"RUInstructions", *(DerivedStorage + 320), v53, v54, v55, v56, v57);
    FigCFDictionarySetInt64(v16, @"RUMaxFootprint", *(DerivedStorage + 312), v58, v59, v60, v61, v62);
    FigCFDictionarySetInt64(v16, @"RUWiredSize", *(DerivedStorage + 128), v63, v64, v65, v66, v67);
    FigCFDictionarySetInt64(v16, @"RUBytesRead", *(DerivedStorage + 216), v68, v69, v70, v71, v72);
    FigCFDictionarySetInt64(v16, @"RUBytesWrite", *(DerivedStorage + 224), v73, v74, v75, v76, v77);
    FigCFDictionarySetInt64(v16, @"LongestTransactionTime", *(DerivedStorage + 624), v78, v79, v80, v81, v82);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    FigCFDictionarySetInt64(v16, @"TimeSinceScreenUpdate", (UpTimeNanoseconds - *(DerivedStorage + 648)) / 0x3B9ACA00, v84, v85, v86, v87, v88);
    FigCFDictionarySetValue(v16, @"LongestTransactionName", *(DerivedStorage + 632));
    FigCFDictionarySetInt(v16, @"IsScreenOn", *(DerivedStorage + 640), v89, v90, v91, v92, v93);
    FigCFDictionarySetValue(v16, @"PerfMonSID", *(DerivedStorage + 664));
    v99 = *(DerivedStorage + 64);
    if (v99)
    {
      v100 = CFArrayGetCount(v99);
    }

    else
    {
      v100 = 0;
    }

    FigCFDictionarySetInt64(v16, @"TransactionCount", v100, v94, v95, v96, v97, v98);
    FigCFDictionarySetInt64(v16, @"LastHourRUBytesWrite", *(DerivedStorage + 224) - *(DerivedStorage + 576), v101, v102, v103, v104, v105);
    FigCFDictionarySetInt64(v16, @"LastHourRUBytesRead", *(DerivedStorage + 216) - *(DerivedStorage + 568), v106, v107, v108, v109, v110);
    FigCFDictionarySetInt64(v16, @"LastHourRUBilledEnergy", *(DerivedStorage + 336) - *(DerivedStorage + 544), v111, v112, v113, v114, v115);
    FigCFDictionarySetInt64(v16, @"LastHourRUServicedEnergy", *(DerivedStorage + 344) - *(DerivedStorage + 536), v116, v117, v118, v119, v120);
    FigCFDictionarySetInt64(v16, @"LastHourRUCycles", *(DerivedStorage + 328) - *(DerivedStorage + 552), v121, v122, v123, v124, v125);
    FigCFDictionarySetInt64(v16, @"LastHourRUInstructions", *(DerivedStorage + 320) - *(DerivedStorage + 560), v126, v127, v128, v129, v130);
    v138 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v138)
    {
      v146 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v146)
      {
        cf = v17;
        v222 = v7;
        v223 = v2;
        for (i = 0; ; ++i)
        {
          v148 = *v5;
          if (*v5)
          {
            v148 = CFArrayGetCount(v148);
          }

          if (i >= v148)
          {
            break;
          }

          v230 = 0;
          v224 = 0;
          v225 = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(*v5, i);
          v150 = ValueAtIndex;
          Value = FigCFDictionaryGetValue(ValueAtIndex);
          if (CFDictionaryContainsKey(v138, Value))
          {
            FigCFDictionaryGetInt64IfPresent(v138, Value, &v224, v152, v153, v154, v155, v156, v220, cf, v222, v223, v224, v225, v226, v227, v228, v229);
            v157 = ++v224;
          }

          else
          {
            v157 = 1;
          }

          FigCFDictionarySetInt64(v138, Value, v157, v152, v153, v154, v155, v156);
          FigCFDictionaryGetInt64IfPresent(v150, @"creationTime", &v230, v158, v159, v160, v161, v162, v220, cf, v222, v223, v224, v225, v226, v227, v228, v229);
          v163 = (FigGetUpTimeNanoseconds() - v230) / 0x3B9ACA00;
          if (CFDictionaryContainsKey(v146, Value))
          {
            FigCFDictionaryGetInt64IfPresent(v146, Value, &v225, v164, v165, v166, v167, v168, v220, cf, v222, v223, v224, v225, v226, v227, v228, v229);
            if (v163 <= v225)
            {
              continue;
            }
          }

          FigCFDictionarySetInt64(v146, Value, v163, v164, v165, v166, v167, v168);
        }

        FigCFDictionarySetValue(v16, @"TransactionNameDict", v138);
        FigCFDictionarySetValue(v16, @"TransactionTimeDict", v146);
        v169 = 0;
        v170 = v16;
        v16 = 0;
        v7 = v222;
        v2 = v223;
        v17 = cf;
        if (cf)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      fpm_timerCallback_cold_2(&v230, v139, v140, v141, v142, v143, v144, v145);
      v170 = 0;
    }

    else
    {
      fpm_timerCallback_cold_3(&v230, v131, v132, v133, v134, v135, v136, v137);
      v170 = 0;
      v146 = 0;
    }

    v169 = v230;
    if (v17)
    {
LABEL_29:
      CFRelease(v17);
    }

LABEL_30:
    if (v16)
    {
      CFRelease(v16);
    }

    if (v138)
    {
      CFRelease(v138);
    }

    if (v146)
    {
      CFRelease(v146);
    }

    if (v169)
    {
      goto LABEL_58;
    }

LABEL_37:
    v171 = vextq_s8(*(DerivedStorage + 320), *(DerivedStorage + 320), 8uLL);
    *(DerivedStorage + 536) = vextq_s8(*(DerivedStorage + 336), *(DerivedStorage + 336), 8uLL);
    *(DerivedStorage + 552) = v171;
    *(DerivedStorage + 568) = *(DerivedStorage + 216);
    v224 = 0;
    v172 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v172)
    {
      v180 = v172;
      v225 = 0;
      v226 = &v225;
      v227 = 0x2020000000;
      v181 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
      v228 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
      if (!getkRTCReportingUserInfoClientNameSymbolLoc_ptr)
      {
        v230 = MEMORY[0x1E69E9820];
        v231 = 3221225472;
        v232 = __getkRTCReportingUserInfoClientNameSymbolLoc_block_invoke;
        v233 = &unk_1E749E610;
        v234 = &v225;
        v182 = RTCReportingLibrary();
        v183 = dlsym(v182, "kRTCReportingUserInfoClientName");
        *(*(v234 + 1) + 24) = v183;
        getkRTCReportingUserInfoClientNameSymbolLoc_ptr = *(*(v234 + 1) + 24);
        v181 = *(v226 + 24);
      }

      _Block_object_dispose(&v225, 8);
      if (!v181)
      {
        fpm_timerCallback_cold_9();
      }

      FigCFDictionarySetValue(v180, *v181, @"CoreMediaPerf");
      v184 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v184)
      {
        v191 = v184;
        v225 = 0;
        v226 = &v225;
        v227 = 0x2020000000;
        v192 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
        v228 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
        if (!getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr)
        {
          v230 = MEMORY[0x1E69E9820];
          v231 = 3221225472;
          v232 = __getkRTCReportingSessionInfoClientTypeSymbolLoc_block_invoke;
          v233 = &unk_1E749E610;
          v234 = &v225;
          v193 = RTCReportingLibrary();
          v194 = dlsym(v193, "kRTCReportingSessionInfoClientType");
          *(*(v234 + 1) + 24) = v194;
          getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = *(*(v234 + 1) + 24);
          v192 = *(v226 + 24);
        }

        _Block_object_dispose(&v225, 8);
        if (!v192)
        {
          fpm_timerCallback_cold_7();
        }

        FigCFDictionarySetInt(v191, *v192, 53, v195, v196, v197, v198, v199);
        v225 = 0;
        v226 = &v225;
        v227 = 0x2020000000;
        v200 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
        v228 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
        if (!getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr)
        {
          v230 = MEMORY[0x1E69E9820];
          v231 = 3221225472;
          v232 = __getkRTCReportingSessionInfoSessionIDSymbolLoc_block_invoke;
          v233 = &unk_1E749E610;
          v234 = &v225;
          v201 = RTCReportingLibrary();
          v202 = dlsym(v201, "kRTCReportingSessionInfoSessionID");
          *(*(v234 + 1) + 24) = v202;
          getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = *(*(v234 + 1) + 24);
          v200 = *(v226 + 24);
        }

        _Block_object_dispose(&v225, 8);
        if (!v200)
        {
          fpm_timerCallback_cold_6();
        }

        FigCFDictionarySetInt(v191, *v200, *(DerivedStorage + 56), v203, v204, v205, v206, v207);
        v225 = 0;
        v226 = &v225;
        v227 = 0x2020000000;
        v208 = getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr;
        v228 = getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr;
        if (!getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr)
        {
          v230 = MEMORY[0x1E69E9820];
          v231 = 3221225472;
          v232 = __getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_block_invoke;
          v233 = &unk_1E749E610;
          v234 = &v225;
          v209 = RTCReportingLibrary();
          v210 = dlsym(v209, "kRTCReportingSessionInfoContainsRealtimeEvents");
          *(*(v234 + 1) + 24) = v210;
          getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr = *(*(v234 + 1) + 24);
          v208 = *(v226 + 24);
        }

        _Block_object_dispose(&v225, 8);
        if (!v208)
        {
          fpm_timerCallback_cold_5();
        }

        FigCFDictionarySetInt(v191, *v208, 0, v211, v212, v213, v214, v215);
        v216 = objc_autoreleasePoolPush();
        v230 = 0;
        v231 = &v230;
        v232 = 0x3052000000;
        v233 = __Block_byref_object_copy__1;
        v217 = getRTCReportingClass_softClass;
        v234 = __Block_byref_object_dispose__1;
        v235 = getRTCReportingClass_softClass;
        if (!getRTCReportingClass_softClass)
        {
          v225 = MEMORY[0x1E69E9820];
          v226 = 3221225472;
          v227 = __getRTCReportingClass_block_invoke;
          v228 = &unk_1E749E610;
          v229 = &v230;
          __getRTCReportingClass_block_invoke(&v225);
          v217 = *(v231 + 40);
        }

        _Block_object_dispose(&v230, 8);
        v218 = [v217 sendOneMessageWithSessionInfo:v191 userInfo:v180 category:901 type:0 payload:v170 error:&v224];
        v219 = 0;
        if ((v218 & 1) == 0)
        {
          v219 = [v224 code];
        }

        objc_autoreleasePoolPop(v216);
        CFRelease(v180);
        CFRelease(v191);
        if (v219)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      fpm_timerCallback_cold_8(v180, &v230, v185, v186, v187, v188, v189, v190);
    }

    else
    {
      fpm_timerCallback_cold_10(&v230, v173, v174, v175, v176, v177, v178, v179);
    }

    if (!v230)
    {
LABEL_56:
      if (!fpm_reportingDataForInternalUsingCoreAnalytics(DerivedStorage))
      {
        *(DerivedStorage + 656) = FigGetUpTimeNanoseconds();
      }
    }

LABEL_58:
    if (v170)
    {
      CFRelease(v170);
    }

LABEL_60:
    CFRelease(v2);
  }
}

void sub_196FE04F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpm_timerCancellationCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fpm_reportingDataForInternalUsingCoreAnalytics(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%s.internal", a1 + 20];
  if (AnalyticsSendEventLazy())
  {
    v10 = 0;
  }

  else
  {
    fpm_reportingDataForInternalUsingCoreAnalytics_cold_1(&v12, v3, v4, v5, v6, v7, v8, v9);
    v10 = v12;
  }

  objc_autoreleasePoolPop(v2);
  return v10;
}

void *__getkRTCReportingUserInfoClientNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingUserInfoClientName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingUserInfoClientNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RTCReportingLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __RTCReportingLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E749EBA0;
    v4 = 0;
    RTCReportingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = RTCReportingLibraryCore_frameworkLibrary;
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    RTCReportingLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __RTCReportingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RTCReportingLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkRTCReportingSessionInfoClientTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoSessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoSessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoContainsRealtimeEvents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRTCReportingClass_block_invoke(uint64_t a1)
{
  RTCReportingLibrary();
  result = objc_getClass("RTCReporting");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getRTCReportingClass_block_invoke_cold_1();
  }

  getRTCReportingClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t FigObjectRecordMethodCallsForObject(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return [FigObjectMethodCallsStorage recordForObject:result withMethodEnum:a2];
  }

  return result;
}

uint64_t FigSurfaceObjectMethodCallsBeforeCrash(uint64_t result)
{
  if (result)
  {
    return [FigObjectMethodCallsStorage surfaceMethodCallsBeforeCrashForObject:result];
  }

  return result;
}

uint64_t FigMetricEventTimelineStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigMetricEventTimelineStartServer_block_invoke;
  block[3] = &unk_1E749ECB8;
  block[4] = &v3;
  if (FigMetricEventTimelineStartServer_sFigMetricEventTimelineServerSetupOnce != -1)
  {
    dispatch_once(&FigMetricEventTimelineStartServer_sFigMetricEventTimelineServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigMetricEventTimelineStartServer_block_invoke(uint64_t a1)
{
  v9[0] = 1;
  v9[1] = metserver_replyingMessageHandler;
  v9[2] = metserver_noReplyMessageHandler;
  memset(&v9[3], 0, 24);
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  Mutable = CFDictionaryCreateMutable(AllocatorForPermanentAllocations, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    __FigMetricEventTimelineStartServer_block_invoke_cold_1(Mutable, v9, a1 + 32, v4, v5, v6, v7, v8);
  }

  else
  {
    __FigMetricEventTimelineStartServer_block_invoke_cold_2(a1 + 32);
  }
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigMetricEventTimelineGetIDByAssociatingWithClientConnection(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_3(&v12);
    return v12;
  }

  if (!a2)
  {
    FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_2(&v12);
    return v12;
  }

  if (!a3)
  {
    FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_1(&v12);
    return v12;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v7 = metserver_createCompanion(AllocatorForMedia, &cf);
  v8 = cf;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = FigXPCServerAssociateCopiedObjectWithNeighborProcess(gFigMetricEventTimelineServer, a2, a1, cf, FigCFRelease, 0, a3);
    v8 = cf;
    if (!v9)
    {
      *(cf + 3) = *a3;
      return v9;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

uint64_t metserver_createCompanion(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7 = xmmword_1E749ECD8;
    if (metricEventTimelineServerCompanion_getTypeID_once != -1)
    {
      dispatch_once_f(&metricEventTimelineServerCompanion_getTypeID_once, &v7, metserver_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      v5 = dispatch_queue_create("com.apple.coremedia.figmetriceventtimelineserver.callback", 0);
      v4[4] = v5;
      if (v5)
      {
        result = 0;
        *a2 = v4;
        return result;
      }

      metserver_createCompanion_cold_1(v4, &v7);
    }

    else
    {
      metserver_createCompanion_cold_2(&v7);
    }
  }

  else
  {
    metserver_createCompanion_cold_3(&v7);
  }

  return v7;
}

void metricEventTimelineServerCompanion_finalize(uint64_t a1)
{
  FigXPCRelease(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t metserver_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

size_t OUTLINED_FUNCTION_1_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef a12)
{

  return metserver_copyEventTimelineAndCompanion(v12, v13, &a12, &a11);
}

uint64_t fontFamilyList_registerFigCaptionFontFamilyNameListIDType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionFontFamilyNameListID = result;
  return result;
}

uint64_t FigCaptionFontFamilyNameListCreateMutable(const __CFAllocator *a1, uint64_t *a2)
{
  if (a2)
  {
    FigThreadRunOnce(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce, fontFamilyList_registerFigCaptionFontFamilyNameListIDType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      result = 0;
      *(v5 + 16) = Mutable;
      *a2 = v5;
    }

    else
    {
      FigCaptionFontFamilyNameListCreateMutable_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigCaptionFontFamilyNameListCreateMutable_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t FigCaptionFontFamilyNameListCreateMutableCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    FigThreadRunOnce(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce, fontFamilyList_registerFigCaptionFontFamilyNameListIDType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      MutableCopy = CFArrayCreateMutableCopy(a1, 0, *(a2 + 16));
      v7[2] = MutableCopy;
      if (MutableCopy)
      {
        result = 0;
        *a3 = v7;
      }

      else
      {
        FigCaptionFontFamilyNameListCreateMutableCopy_cold_1(v7, &v10);
        return v10;
      }
    }

    else
    {
      FigCaptionFontFamilyNameListCreateMutableCopy_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCaptionFontFamilyNameListCreateMutableCopy_cold_3(&v12);
    return v12;
  }

  return result;
}

CFIndex FigCaptionFontFamilyNameListGetCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t FigCaptionFontFamilyNameListAppend(uint64_t a1, unsigned int a2, const void *a3)
{
  if (a1)
  {
    if (a2 >= 2)
    {
      FigCaptionFontFamilyNameListAppend_cold_2(&v14);
      return v14;
    }

    else if (a3)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32(Mutable, @"kind", a2, v7, v8, v9, v10, v11);
      CFDictionaryAddValue(Mutable, @"familyname", a3);
      CFArrayAppendValue(*(a1 + 16), Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    else
    {
      FigCaptionFontFamilyNameListAppend_cold_1(&v13);
      return v13;
    }
  }

  else
  {
    FigCaptionFontFamilyNameListAppend_cold_3(&v15);
    return v15;
  }
}

void fontFamilyList_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *fontFamilyList_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (a1)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigCaptionFontFamilyNameList %p> familyNames:%@", a1, a1[2]);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"<FigCaptionFontFamilyNameList %p>", 0);
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_1_11(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, fontFamilyList_registerFigCaptionFontFamilyNameListIDType);
}

uint64_t cryptorRemote_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    v4 = DerivedStorage;
    if (*DerivedStorage)
    {
      cryptorRemote_GetObjectID_cold_1(&v6);
      return v6;
    }

    else if (DerivedStorage[1])
    {
      cryptorRemote_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  else
  {
    cryptorRemote_GetObjectID_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t cryptorRemote_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  *(result + 1) = 1;
  return result;
}

__CFString *cryptorRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCPECryptor_Remote %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t cryptorRemote_ensureStateUpdatedFromServer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  xdict = 0;
  v8 = 0;
  if (*DerivedStorage)
  {
    cryptorRemote_ensureStateUpdatedFromServer_cold_1(&v9);
LABEL_12:
    v5 = 0;
    v3 = v9;
    goto LABEL_9;
  }

  v2 = DerivedStorage;
  if (*(DerivedStorage + 1))
  {
    cryptorRemote_ensureStateUpdatedFromServer_cold_2(&v9);
    goto LABEL_12;
  }

  FigSimpleMutexLock(*(DerivedStorage + 48));
  if (*(v2 + 16))
  {
    v3 = 0;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage(0x6E736D74u, *(v2 + 8), &v8);
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessageCreatingReply(_MergedGlobals_14, v8, &xdict);
      if (!v3)
      {
        *(v2 + 24) = xpc_dictionary_get_uint64(xdict, "NativeSession");
        *(v2 + 32) = xpc_dictionary_get_uint64(xdict, "ExternalProtectionMethods");
        *(v2 + 36) = xpc_dictionary_get_uint64(xdict, "CryptorType");
        *(v2 + 16) = 1;
      }
    }
  }

  FigSimpleMutexUnlock(*(v2 + 48));
  v5 = v8;
LABEL_9:
  FigXPCRelease(v5);
  FigXPCRelease(xdict);
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = 0;

  return cryptorRemote_GetObjectID(a1, &a12);
}

void ensureMetricEventTrace()
{
  if (ensureMetricEventTrace_ensureMetricEventTraceOnce != -1)
  {
    ensureMetricEventTrace_cold_1();
  }
}

uint64_t FigMetricEventGetClassID()
{
  if (sRegisterFigMetricEventClassIDOnce != -1)
  {
    FigMetricEventGetClassID_cold_1();
  }

  return sFigMetricEventClassID;
}

size_t RegisterFigMetricEventType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigMetricEventClassDesc, ClassID, 1, &sFigMetricEventClassID, v1, v2, v3, v4);
}

uint64_t FigMetricEventGetTypeID()
{
  if (sRegisterFigMetricEventClassIDOnce != -1)
  {
    FigMetricEventGetClassID_cold_1();
  }

  v1 = sFigMetricEventClassID;

  return CMBaseClassGetCFTypeID(v1);
}

size_t FigMetricMockEventForTestCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (ensureMetricEventTrace_ensureMetricEventTraceOnce != -1)
  {
    ensureMetricEventTrace_cold_1();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    FigMetricMockEventForTestCreate_cold_3(&v14, a2, a3, a4, a5, a6, a7, a8);
    return v14;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (sRegisterFigMetricEventClassIDOnce != -1)
  {
    FigMetricEventGetClassID_cold_1();
  }

  v11 = CMDerivedObjectCreate(a1, &kFigMetricEventClass_VTable, sFigMetricEventClassID, &cf, a5, a6, a7, a8);
  if (v11)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *CMBaseObjectGetDerivedStorage(cf) = a2;
    *a3 = cf;
  }

  return v11;
}

void __ensureGlobalDeserializeRegister_block_invoke()
{
  _MergedGlobals_15 = 0;
  os_unfair_lock_lock(&_MergedGlobals_15);
  AllocatorForMedia = FigGetAllocatorForMedia();
  qword_1ED4CC538 = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (qword_1ED4CC538)
  {

    os_unfair_lock_unlock(&_MergedGlobals_15);
  }

  else
  {
    __ensureGlobalDeserializeRegister_block_invoke_cold_1(0, v1, v2, v3, v4, v5, v6, v7);
  }
}

uint64_t metutil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t FigCompositeByteStreamEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = CMBaseObjectGetDerivedStorage(a2);
  if (*DerivedStorage == *v4)
  {
    if (*DerivedStorage < 1)
    {
      return 1;
    }

    v5 = v4;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = DerivedStorage[1];
      v9 = v5[1];
      if (*(v8 + v6 + 8) != *(v9 + v6 + 8) || *(v8 + v6 + 24) != *(v9 + v6 + 24))
      {
        break;
      }

      result = CFEqual(*(v8 + v6), *(v9 + v6));
      if (!result)
      {
        return result;
      }

      ++v7;
      v6 += 32;
      if (v7 >= *DerivedStorage)
      {
        return 1;
      }
    }
  }

  return 0;
}

void FigCompositeByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      CFRelease(*(DerivedStorage[1] + v2));
      ++v3;
      v2 += 32;
    }

    while (v3 < *DerivedStorage);
  }

  v4 = DerivedStorage[1];

  free(v4);
}

size_t FigCompositeByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_EntireLength") || CFEqual(a2, @"FBS_AvailableLength"))
  {
    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (DerivedStorage + 24));
    result = 0;
    *a4 = v9;
  }

  else if (CFEqual(a2, @"FBS_URL") || CFEqual(a2, @"FBS_FileType"))
  {
    CMBaseObject = CMByteStreamGetCMBaseObject(**(DerivedStorage + 8));
    v12 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (v12)
    {

      return v12(CMBaseObject, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else if (CFEqual(a2, @"FBS_MIMEType"))
  {
    v15 = **(DerivedStorage + 8);

    return CMByteStreamCopyProperty(v15, a2, a3, a4);
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE10uLL, "(Fig)", 0x151, v4, v13, v14);
  }

  return result;
}

uint64_t FigCompositeByteStreamSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = 0;
  v7 = -1;
  while (++v7 < *DerivedStorage)
  {
    CMBaseObject = CMByteStreamGetCMBaseObject(*(DerivedStorage[1] + v6));
    v9 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
    if (!v9)
    {
      return 4294954514;
    }

    v6 += 32;
    result = v9(CMBaseObject, a2, a3);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t CMByteStreamCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t FigCompositeByteStreamRead(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage < 1)
  {
    return 4294954423;
  }

  v9 = DerivedStorage;
  v10 = 0;
  v11 = DerivedStorage[1];
  v12 = 1;
  while (1)
  {
    v13 = *(v11 + 16);
    if (v13 <= a3 && *(v11 + 24) + v13 > a3)
    {
      break;
    }

    v10 -= 32;
    --v12;
    v11 += 32;
    if (*DerivedStorage + v12 == 1)
    {
      return 4294954423;
    }
  }

  v29 = a5;
  v15 = 0;
  if (a2)
  {
    v16 = -v10;
    v17 = -v12;
    do
    {
      if (++v17 >= *v9)
      {
        break;
      }

      v18 = a2 - v15;
      v31 = a2 - v15;
      v19 = (v9[1] + v16);
      v20 = v19[2];
      v21 = __OFSUB__(a3, v20);
      v22 = a3 - v20;
      if ((v22 < 0) ^ v21 | (v22 == 0))
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      v24 = v19[3] - v23;
      if (v18 > v24)
      {
        v31 = v19[3] - v23;
        v18 = v24;
      }

      v26 = *v19;
      v25 = v19[1];
      v27 = *(*(CMBaseObjectGetVTable(*v19) + 16) + 8);
      if (!v27)
      {
        return 4294954514;
      }

      result = v27(v26, v18, v25 + v23, a4 + v15, &v31);
      if (result)
      {
        return result;
      }

      v16 += 32;
      v15 += v31;
    }

    while (v15 < a2);
  }

  if (v15)
  {
    v28 = 1;
  }

  else
  {
    v28 = a2 == 0;
  }

  if (v28)
  {
    result = 0;
  }

  else
  {
    result = 4294954423;
  }

  v9[2] = v15 + a3;
  if (v29)
  {
    *v29 = v15;
  }

  return result;
}

uint64_t FigCompositeByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a3)
  {
    v13 = DerivedStorage;
    v14 = *DerivedStorage;
    if (*DerivedStorage < 1)
    {
      return 4294954423;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = DerivedStorage[1];
      while (1)
      {
        v18 = *(v17 + v15 + 16);
        if (v18 <= a2 && *(v17 + v15 + 24) + v18 > a2)
        {
          break;
        }

        ++v16;
        v15 += 32;
        if (v14 == v16)
        {
          return 4294954423;
        }
      }

      if (v16 >= v14)
      {
        v20 = 0;
LABEL_20:
        result = 0;
        *a3 = v20;
      }

      else
      {
        v20 = 0;
        while (1)
        {
          v28 = 0;
          v21 = (v17 + v15);
          v22 = v21[2];
          v23 = __OFSUB__(a2, v22);
          v24 = a2 - v22;
          v25 = ((v24 < 0) ^ v23) | (v24 == 0) ? 0 : v24;
          v26 = *v21;
          v27 = *(*(CMBaseObjectGetVTable(*v21) + 16) + 24);
          if (!v27)
          {
            return 4294954514;
          }

          result = v27(v26, v25, &v28);
          if (result)
          {
            return result;
          }

          v20 += v28;
          v17 = v13[1];
          if (v28 + v25 >= *(v17 + v15 + 24) + *(v17 + v15 + 8))
          {
            ++v16;
            v15 += 32;
            if (v16 < *v13)
            {
              continue;
            }
          }

          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    FigCompositeByteStreamGetAvailableLengthAtOffset_cold_1(&v29, v6, v7, v8, v9, v10, v11, v12);
    return v29;
  }

  return result;
}

uint64_t FigCompositeByteStreamReadAndCreateBlockBuffer(uint64_t a1, uint64_t appended, uint64_t a3, OpaqueCMBlockBuffer **a4, unint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  targetBBuf = 0;
  if (*DerivedStorage < 1)
  {
    return 4294954423;
  }

  v10 = DerivedStorage;
  v11 = 0;
  v12 = DerivedStorage[1];
  v13 = 1;
  while (1)
  {
    v14 = *(v12 + 16);
    if (v14 <= a3 && *(v12 + 24) + v14 > a3)
    {
      break;
    }

    v11 -= 32;
    --v13;
    v12 += 32;
    if (*DerivedStorage + v13 == 1)
    {
      return 4294954423;
    }
  }

  if (appended)
  {
    v31 = a4;
    v32 = a5;
    v16 = 0;
    v17 = 0;
    v18 = -v11;
    v19 = -v13;
    v33 = appended;
    while (1)
    {
      if (++v19 >= *v10)
      {
        appended = 4294954423;
LABEL_30:
        a4 = v31;
        a5 = v32;
        goto LABEL_31;
      }

      v20 = appended - v17;
      v34 = v20;
      v21 = (v10[1] + v18);
      v22 = v21[2];
      v23 = __OFSUB__(a3, v22);
      v24 = a3 - v22;
      if ((v24 < 0) ^ v23 | (v24 == 0))
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      v26 = v21[3] - v25;
      if (v20 > v26)
      {
        v34 = v21[3] - v25;
        v20 = v26;
      }

      targetBBuf = 0;
      v28 = *v21;
      v27 = v21[1];
      v29 = *(*(CMBaseObjectGetVTable(*v21) + 16) + 32);
      if (!v29)
      {
        appended = 4294954514;
        if (!v16)
        {
          return appended;
        }

        goto LABEL_28;
      }

      v30 = v29(v28, v20, v27 + v25, &targetBBuf, &v34);
      if (v30)
      {
        break;
      }

      if (v16)
      {
        appended = CMBlockBufferAppendBufferReference(v16, targetBBuf, 0, 0, 0);
        if (targetBBuf)
        {
          CFRelease(targetBBuf);
        }

        if (appended)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v16 = targetBBuf;
      }

      v18 += 32;
      appended = v33;
      v17 += v34;
      if (v17 >= v33)
      {
        appended = 0;
        goto LABEL_30;
      }
    }

    appended = v30;
    if (v16)
    {
LABEL_28:
      CFRelease(v16);
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
LABEL_31:
    v10[2] = v17 + a3;
    *a4 = v16;
    if (a5)
    {
      *a5 = v17;
    }
  }

  return appended;
}

size_t CMByteStreamCreateWritableForBlockBuffer(const __CFAllocator *a1, void *a2, int a3, CFAllocatorRef Default, __int128 *a5, CFTypeRef *a6)
{
  cf = 0;
  if (!a2)
  {
    v22 = 579;
LABEL_16:
    CMByteStreamCreateWritableForBlockBuffer_cold_1(v22, &v25);
    v20 = v25;
    goto LABEL_17;
  }

  if (a3)
  {
    v22 = 584;
    goto LABEL_16;
  }

  ClassID = CMByteStreamGetClassID();
  Empty = CMDerivedObjectCreate(a1, &kFigBBufByteStreamVTable, ClassID, &cf, v12, v13, v14, v15);
  if (!Empty)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    v18 = DerivedStorage;
    if (a5)
    {
      v19 = *a5;
      *(DerivedStorage + 76) = *(a5 + 12);
      *(DerivedStorage + 64) = v19;
      *(DerivedStorage + 92) = 1;
      *(DerivedStorage + 56) = 0;
    }

    else
    {
      if (!Default)
      {
        Default = CFAllocatorGetDefault();
      }

      *(v18 + 56) = Default;
      CFRetain(Default);
    }

    Empty = CMBlockBufferCreateEmpty(a1, 0x53u, 0, (v18 + 40));
    if (!Empty)
    {
      if (!CMBlockBufferGetDataLength(a2) || (Empty = CMBlockBufferAssureBlockMemory(a2), !Empty))
      {
        v20 = 0;
        *v18 = CFRetain(a2);
        *a6 = cf;
        return v20;
      }
    }
  }

  v20 = Empty;
LABEL_17:
  if (v20)
  {
    v23 = cf == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t FigBBufByteStreamEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = *CMBaseObjectGetDerivedStorage(a2);
  v5 = *DerivedStorage;

  return CFEqual(v5, v4);
}

void FigBBufByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {

    CFRelease(v7);
  }
}

size_t FigBBufByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_EntireLength") || CFEqual(a2, @"FBS_AvailableLength"))
  {
    v8 = *MEMORY[0x1E695E480];
    DataLength = CMBlockBufferGetDataLength(*DerivedStorage);
    SInt64 = FigCFNumberCreateSInt64(v8, DataLength);
LABEL_4:
    v11 = SInt64;
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, @"FBS_EntireLengthAvailableOnDemand"))
  {
    goto LABEL_6;
  }

  if (CFEqual(a2, @"FBS_URL"))
  {
    v14 = *(DerivedStorage + 8);
    if (v14)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_FileType"))
  {
    v14 = *(DerivedStorage + 32);
    if (v14)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_MIMEType"))
  {
    v14 = *(DerivedStorage + 16);
    if (v14)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"FBS_UTI"))
  {
    v14 = *(DerivedStorage + 24);
    if (v14)
    {
      goto LABEL_8;
    }

    return 4294954512;
  }

  if (CFEqual(a2, @"DoesReadAhead") || CFEqual(a2, @"FBS_ReadSupported"))
  {
LABEL_6:
    v13 = MEMORY[0x1E695E4D0];
LABEL_7:
    v14 = *v13;
LABEL_8:
    SInt64 = CFRetain(v14);
    goto LABEL_4;
  }

  if (CFEqual(a2, @"FBS_WriteSupported"))
  {
    v13 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 40))
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_7;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE10uLL, "(Fig)", 0x186, v4, v15, v16);
}

size_t FigBBufByteStreamSetProperty(const void *a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"FBS_URL"))
  {
    if (!a3 || (v8 = CFGetTypeID(a3), v8 == CFURLGetTypeID()))
    {
      v9 = DerivedStorage[1];
      if (v9)
      {
        CFRelease(v9);
      }

      DerivedStorage[1] = a3;
      if (!a3)
      {
        return 0;
      }

      goto LABEL_7;
    }

    FigBBufByteStreamSetProperty_cold_1(&v23);
    return v23;
  }

  if (CFEqual(a2, @"FBS_FileType"))
  {
    if (!a3 || (v11 = CFGetTypeID(a3), v11 == CFNumberGetTypeID()))
    {
      v12 = DerivedStorage[4];
      if (v12)
      {
        CFRelease(v12);
      }

      DerivedStorage[4] = a3;
      if (!a3)
      {
        return 0;
      }

LABEL_7:
      CFRetain(a3);
      return 0;
    }

    FigBBufByteStreamSetProperty_cold_2(&v23);
    return v23;
  }

  if (CFEqual(a2, @"FBS_MIMEType"))
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 == CFStringGetTypeID()))
    {
      v14 = DerivedStorage[2];
      if (v14)
      {
        CFRelease(v14);
      }

      if (a3)
      {
        v15 = CFGetAllocator(a1);
        Copy = CFStringCreateCopy(v15, a3);
        result = 0;
        DerivedStorage[2] = Copy;
      }

      else
      {
        result = 0;
        DerivedStorage[2] = 0;
      }

      return result;
    }

    FigBBufByteStreamSetProperty_cold_3(&v23);
    return v23;
  }

  if (CFEqual(a2, @"FBS_UTI"))
  {
    if (a3)
    {
      v19 = CFGetTypeID(a3);
      if (v19 != CFStringGetTypeID())
      {
        FigBBufByteStreamSetProperty_cold_4(&v23);
        return v23;
      }
    }

    v20 = DerivedStorage[3];
    if (v20)
    {
      CFRelease(v20);
    }

    if (a3)
    {
      v21 = CFGetAllocator(a1);
      v22 = CFStringCreateCopy(v21, a3);
      result = 0;
      DerivedStorage[3] = v22;
    }

    else
    {
      result = 0;
      DerivedStorage[3] = 0;
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE10uLL, "(Fig)", 0x1B7, v3, v17, v18);
  }

  return result;
}

uint64_t FigBBufByteStreamRead(uint64_t a1, size_t a2, size_t a3, void *a4, size_t *a5)
{
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  if ((a3 & 0x8000000000000000) != 0)
  {
    FigBBufByteStreamRead_cold_1(&v16);
    v13 = 0;
    result = v16;
    if (!a5)
    {
      return result;
    }

    goto LABEL_16;
  }

  v11 = DerivedStorage;
  DataLength = CMBlockBufferGetDataLength(*DerivedStorage);
  if (DataLength - a3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = DataLength - a3;
  }

  if (DataLength <= a3 || v13 == 0)
  {
    v13 = 0;
    if (a2)
    {
      result = 4294954423;
    }

    else
    {
      result = 0;
    }

    if (a5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = CMBlockBufferCopyDataBytes(*v11, a3, v13, a4);
    if (a5)
    {
LABEL_16:
      *a5 = v13;
    }
  }

  return result;
}

size_t FigBBufByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, void *a3)
{
  totalLengthOut = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  if (a3)
  {
    if (a2 < 0 || CMBlockBufferGetDataPointer(*DerivedStorage, a2, 0, &totalLengthOut, 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = totalLengthOut - a2;
    }

    *a3 = v10;
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCDB8uLL, "(Fig)", 0x1C5, v3, v8, v9);
  }
}

uint64_t FigBBufByteStreamReadAndCreateBlockBuffer(const void *a1, size_t a2, size_t a3, void *a4, size_t *a5)
{
  CMBaseObject = CMByteStreamGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(CMBaseObject);
  v18 = 0;
  if ((a3 & 0x8000000000000000) != 0)
  {
    FigBBufByteStreamReadAndCreateBlockBuffer_cold_1(&v19);
    v14 = 0;
    result = v19;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v12 = DerivedStorage;
  DataLength = CMBlockBufferGetDataLength(*DerivedStorage);
  if (DataLength - a3 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = DataLength - a3;
  }

  if (DataLength <= a3 || v14 == 0)
  {
    v14 = 0;
    if (a2)
    {
      result = 4294954423;
    }

    else
    {
      result = 0;
    }

    if (a5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = CFGetAllocator(a1);
    result = CMBlockBufferCreateWithBufferReference(v16, *v12, a3, v14, 0, &v18);
    if (a5)
    {
LABEL_16:
      *a5 = v14;
    }
  }

LABEL_17:
  *a4 = v18;
  return result;
}

uint64_t ConsumeSomeBacking(uint64_t a1, size_t dataLength)
{
  result = CMBlockBufferAppendBufferReference(*a1, *(a1 + 40), *(a1 + 48), dataLength, 4u);
  *(a1 + 48) += dataLength;
  v5 = *(a1 + 104) - dataLength;
  *(a1 + 104) = v5;
  if (v5)
  {
    v5 = *(a1 + 96) + dataLength;
  }

  *(a1 + 96) = v5;
  return result;
}

uint64_t RegisterFigCaptionDynamicStyleType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionDynamicStyleID = result;
  return result;
}

uint64_t FigCaptionDynamicStyleCreateMutable(const __CFAllocator *a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigCaptionDynamicStyleCreateMutable_cold_4(&v26);
    return v26;
  }

  if (!a3)
  {
    FigCaptionDynamicStyleCreateMutable_cold_3(&v25);
    return v25;
  }

  FigThreadRunOnce(&sRegisterFigCaptionDynamicStyleTypeOnce, RegisterFigCaptionDynamicStyleType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigCaptionDynamicStyleCreateMutable_cold_2(0, v7, v8, v9, v10, v11, v12, v13);
    return 0;
  }

  v14 = Instance;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14[2] = Mutable;
  if (!Mutable)
  {
    FigCaptionDynamicStyleCreateMutable_cold_1(0, v16, v17, v18, v19, v20, v21, v22);
    v23 = 0;
    goto LABEL_12;
  }

  v23 = FigCaptionDynamicStyleAddKeyFrameValue(v14, a2, 0.0);
  if (v23)
  {
LABEL_12:
    CFRelease(v14);
    return v23;
  }

  *a3 = v14;
  return v23;
}

uint64_t FigCaptionDynamicStyleAddKeyFrameValue(uint64_t a1, const void *a2, double a3)
{
  v16 = a3;
  if (!a1)
  {
    FigCaptionDynamicStyleAddKeyFrameValue_cold_4(&v17);
    return v17;
  }

  if (a3 < 0.0)
  {
    FigCaptionDynamicStyleAddKeyFrameValue_cold_3(&v17);
    return v17;
  }

  if (!a2)
  {
    FigCaptionDynamicStyleAddKeyFrameValue_cold_2(&v17);
    return v17;
  }

  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v16);
  if (!v5)
  {
    FigCaptionDynamicStyleAddKeyFrameValue_cold_1(&v17, v6, v7, v8, v9, v10, v11, v12);
    return v17;
  }

  v13 = v5;
  CFDictionarySetValue(*(a1 + 16), v5, a2);
  v14 = *(a1 + 24);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 24) = 0;
  }

  CFRelease(v13);
  return 0;
}

uint64_t FigCaptionDynamicStyleCreate(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    v4 = FigCaptionDynamicStyleCreateMutable(a1, a2, &cf);
    if (v4)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a3 = cf;
    }
  }

  else
  {
    FigCaptionDynamicStyleCreate_cold_1(&v7);
    return v7;
  }

  return v4;
}

void fcds_initializeSortedKeyFrameValues(uint64_t a1)
{
  Count = CFDictionaryGetCount(*(a1 + 16));
  v8 = *byte_1F0B72108;
  v3 = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, &v8);
  CFDictionaryApplyFunction(*(a1 + 16), fcds_appendRelativeTimeAndValueToArray, v3);
  v9.location = 0;
  v9.length = Count;
  CFArraySortValues(v3, v9, fcds_compareRelativeTime, 0);
  if (CFArrayGetCount(v3) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
      if (v4 && FigCFEqual(v4[1], ValueAtIndex[1]))
      {
        CFArrayRemoveValueAtIndex(v3, v5);
      }

      else
      {
        ++v5;
        v4 = ValueAtIndex;
      }
    }

    while (v5 < CFArrayGetCount(v3));
  }

  v7 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t fcds_compareRelativeTime(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  else
  {
    return *a1 > *a2;
  }
}

CFDictionaryRef *FigCaptionDynamicStyleGetInitialValue(CFDictionaryRef *a1)
{
  Value = a1;
  valuePtr = 0;
  if (a1)
  {
    v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    Value = CFDictionaryGetValue(Value[2], v2);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return Value;
}

uint64_t fcds_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void fcds_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void fcds_appendRelativeTimeAndValueToArray(const __CFNumber *a1, uint64_t a2, __CFArray *a3)
{
  v6 = MEMORY[0x19A8D7200](*MEMORY[0x1E695E480], 16, 0x10C004003E0BC0ALL, 0);
  CFNumberGetValue(a1, kCFNumberDoubleType, v6);
  v6[1] = a2;

  CFArrayAppendValue(a3, v6);
}

uint64_t OUTLINED_FUNCTION_0_23(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, RegisterFigCaptionDynamicStyleType);
}

size_t FigEndpointXPCDemuxCreate(const void *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (endpointXPCDemux_initializeLogging_initLoggingOnce == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    FigEndpointXPCDemuxCreate_cold_3(&v17);
    return v17;
  }

  FigEndpointXPCDemuxCreate_cold_1();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a2)
  {
    FigEndpointXPCDemuxCreate_cold_2(&v17);
    return v17;
  }

  v6 = *MEMORY[0x1E695E480];
  ClassID = FigEndpointExtendedGetClassID();
  v12 = CMDerivedObjectCreate(v6, &kFigEndpointXPCDemuxVTable, ClassID, &cf, v8, v9, v10, v11);
  if (v12)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    *DerivedStorage = CFRetain(a1);
    DerivedStorage[1] = CFRetain(a2);
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener(DefaultLocalCenter, cf, endpointXPCDemux_handleCentralNotification, 0, *DerivedStorage, 0, 0);
    v12 = 0;
    *a3 = cf;
  }

  return v12;
}

uint64_t FigEndpointXPCDemux_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = *DerivedStorage;
  if (!*DerivedStorage)
  {
    return 4294954516;
  }

  v3 = *(*(CMBaseObjectGetVTable(*DerivedStorage) + 8) + 24);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v2);
}

void FigEndpointXPCDemux_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener(DefaultLocalCenter, a1, endpointXPCDemux_handleCentralNotification, 0, *DerivedStorage);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t FigEndpointXPCDemux_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"iOSEntityIsDoingTurnByTurn") || CFEqual(a2, @"CarEntityIsDoingTurnByTurn") || CFEqual(a2, @"CarEntityIsDoingVoiceRecognition") || CFEqual(a2, @"CarEntityOwnsScreen") || CFEqual(a2, @"CarEntityOwnsMainAudio") || CFEqual(a2, @"CarPlaySubEndpoint") || CFEqual(a2, @"IsAnyAirPlayCapableVideoSessionActive"))
  {
    CMBaseObject = FigEndpointGetCMBaseObject(*DerivedStorage);
    v9 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (v9)
    {

      return v9(CMBaseObject, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    v11 = DerivedStorage[1];

    return FigEndpointCopyProperty(v11, a2, a3, a4);
  }
}

uint64_t FigEndpointXPCDemux_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"iOSEntityIsDoingTurnByTurn"))
  {
    v6 = *DerivedStorage;
  }

  else
  {
    v6 = DerivedStorage[1];
  }

  CMBaseObject = FigEndpointGetCMBaseObject(v6);
  v8 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3);
}

uint64_t FigEndpointCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t FigEndpointXPCDemux_ActivateForFeaturesWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *CMBaseObjectGetDerivedStorage(a1);
  v10 = *(*(CMBaseObjectGetVTable(v9) + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t FigEndpointXPCDemux_DeactivateWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage(a1);
  v8 = *(*(CMBaseObjectGetVTable(v7) + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t FigEndpointXPCDemux_Dissociate(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage(a1);
  v2 = *(*(CMBaseObjectGetVTable(v1) + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t FigEndpointXPCDemux_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
  v4 = *(*(CMBaseObjectGetVTable(v3) + 16) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t FigEndpointXPCDemux_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage(a1);
  v4 = *(*(CMBaseObjectGetVTable(v3) + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t FigEndpointXPCDemux_UpdateFeaturesWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
  v10 = *(*(CMBaseObjectGetVTable(v9) + 16) + 80);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t FigEndpointXPCDemux_RequestCarUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_TakeScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_DisableBluetoothConnectivityToDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 40);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_DuckAudio(uint64_t a1, uint64_t a2)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v4 = *CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (!v4 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v4, ClassID)))
  {
    v4 = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable(v4) + 24) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v4, a2);
}

uint64_t FigEndpointXPCDemux_SetHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_CopyHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v8 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v8 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v8, ClassID)))
  {
    v8 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable(v8) + 24) + 64);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v8, a2, a3, a4);
}

uint64_t FigEndpointXPCDemux_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v10 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v10 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v10, ClassID)))
  {
    v10 = 0;
  }

  v12 = *(*(CMBaseObjectGetVTable(v10) + 24) + 72);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(v10, a2, a3, a4, a5);
}

uint64_t FigEndpointXPCDemux_CreateRemoteControlSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 80);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 88);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v10 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v10 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v10, ClassID)))
  {
    v10 = 0;
  }

  v12 = *(*(CMBaseObjectGetVTable(v10) + 24) + 96);
  if (!v12)
  {
    return 4294954514;
  }

  return v12(v10, a2, a3, a4, a5);
}

uint64_t FigEndpointXPCDemux_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v4 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v4 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v4, ClassID)))
  {
    v4 = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable(v4) + 24) + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v4, a2);
}

uint64_t FigEndpointXPCDemux_RequestScreenViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 112);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_CopyCurrentScreenViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *(CMBaseObjectGetDerivedStorage(FigEndpoint) + 8);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 120);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigEndpointXPCDemux_AcquireAndCopyResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v8 = *CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (!v8 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v8, ClassID)))
  {
    v8 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable(v8) + 24) + 128);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v8, a2, a3, a4);
}

uint64_t FigEndpointXPCDemux_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v6 = *CMBaseObjectGetDerivedStorage(FigEndpoint);
  if (!v6 || (ClassID = FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass(v6, ClassID)))
  {
    v6 = 0;
  }

  v8 = *(*(CMBaseObjectGetVTable(v6) + 24) + 136);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v6, a2, a3);
}

uint64_t FigSecCopyOutmostBundleSignedWithSameCertificateAsCodeOfMainBundle(void *a1)
{
  if (sEstablishOutmostContainerURLOfMainBundleOnce != -1)
  {
    FigSecCopyOutmostBundleSignedWithSameCertificateAsCodeOfMainBundle_cold_1();
  }

  v2 = qword_1ED4CC560;
  if (qword_1ED4CC560)
  {
    v2 = CFRetain(qword_1ED4CC560);
  }

  *a1 = v2;
  return _MergedGlobals_16;
}

BOOL FigIsSecTaskGPUExtensionOfBrowserEngine(SecTaskRef task)
{
  if (sLoadBrowserFrameworkOnce != -1)
  {
    FigIsSecTaskGPUExtensionOfBrowserEngine_cold_1();
  }

  v2 = 0;
  if (task)
  {
    if (s_SEBrowserEngineEntitlementGPU)
    {
      v3 = SecTaskCopyValueForEntitlement(task, s_SEBrowserEngineEntitlementGPU, 0);
      v2 = v3 == *MEMORY[0x1E695E4D0];
      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  return v2;
}

uint64_t *__loadBrowserEngineFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/BrowserEngineCore.framework/BrowserEngineCore", 4);
  if (result)
  {
    result = dlsym(result, "_BEBrowserEngineEntitlementRendering");
    s_SEBrowserEngineEntitlementGPU = *result;
  }

  return result;
}

uint64_t CMByteStreamBaseGetTypeID()
{
  FigThreadRunOnce(&CMByteStreamGetClassID_sRegisterFigByteStreamBaseTypeOnce, RegisterFigByteStreamBaseType);
  v0 = sFigByteStreamClassID;

  return CMBaseClassGetCFTypeID(v0);
}

uint64_t CMCreateContiguousBlockBufferFromStream(uint64_t a1, const __CFAllocator *a2, size_t a3, uint64_t a4, CMBlockBufferRef *a5, size_t *a6)
{
  dataLength = 0;
  blockBufferOut = 0;
  if (!a3)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v12 = MEMORY[0x19A8D7200](a2, a3, 599474358, 0);
  if (v12)
  {
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
    if (v14)
    {
      v15 = v14(a1, a3, a4, v13, &dataLength);
      if (!v15)
      {
        if (dataLength)
        {
          v16 = CMBlockBufferCreateWithMemoryBlock(a2, v13, a3, a2, 0, 0, dataLength, 0, &blockBufferOut);
          if (!v16)
          {
            goto LABEL_12;
          }

          goto LABEL_9;
        }

        CFAllocatorDeallocate(a2, v13);
        goto LABEL_11;
      }

      v16 = v15;
    }

    else
    {
      v16 = 4294954514;
    }

LABEL_9:
    CFAllocatorDeallocate(a2, v13);
    goto LABEL_12;
  }

  CMCreateContiguousBlockBufferFromStream_cold_1(&v20);
  v16 = v20;
LABEL_12:
  *a5 = blockBufferOut;
  if (a6)
  {
    *a6 = dataLength;
  }

  return v16;
}

_OWORD *FigByteStreamStatsSetupWorker(_OWORD *result)
{
  if (result)
  {
    v1 = result;
    result[2] = 0u;
    result[3] = 0u;
    *result = 0u;
    result[1] = 0u;
    result = FigSimpleMutexCreate();
    *v1 = result;
  }

  return result;
}

double FigByteStreamStatsTeardownWorker(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      FigSimpleMutexDestroy(v2);
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

os_unfair_lock_s *FigByteStreamStatsLogOneRead(os_unfair_lock_s *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (result)
  {
    v7 = result;
    result = *&result->_os_unfair_lock_opaque;
    v8 = result && a4 == 0;
    if (v8 && a6 != 0)
    {
      v10 = a3 - a2;
      v11 = ((a3 - a2) * 0x20C49BA5E353F7CFLL) >> 64;
      FigSimpleMutexLock(result);
      ++v7[2]._os_unfair_lock_opaque;
      *&v7[4]._os_unfair_lock_opaque += a6;
      os_unfair_lock_opaque = v7[6]._os_unfair_lock_opaque;
      if (!os_unfair_lock_opaque || os_unfair_lock_opaque > a6)
      {
        v7[6]._os_unfair_lock_opaque = a6;
      }

      v13 = (v11 >> 7) + (v11 >> 63);
      if (v7[7]._os_unfair_lock_opaque < a6)
      {
        v7[7]._os_unfair_lock_opaque = a6;
      }

      v14 = *&v7[10]._os_unfair_lock_opaque;
      *&v7[8]._os_unfair_lock_opaque += v13;
      if (v13 < v14 || v14 == 0)
      {
        *&v7[10]._os_unfair_lock_opaque = v13;
      }

      if (v13 > *&v7[12]._os_unfair_lock_opaque)
      {
        *&v7[12]._os_unfair_lock_opaque = v13;
      }

      if (v10 < 1000000000)
      {
        if (v10 >= 500000000)
        {
          ++v7[15]._os_unfair_lock_opaque;
        }
      }

      else
      {
        ++v7[14]._os_unfair_lock_opaque;
      }

      v16 = *&v7->_os_unfair_lock_opaque;

      return FigSimpleMutexUnlock(v16);
    }
  }

  return result;
}

uint64_t FigByteStreamCopySHA1Digest(uint64_t a1, CFDataRef *a2)
{
  number[3] = *MEMORY[0x1E69E9840];
  v19 = 0;
  valuePtr = 0;
  v18 = 0;
  if (!a2)
  {
    FigByteStreamCopySHA1Digest_cold_2(number);
    v8 = 0;
    v4 = 0;
LABEL_33:
    v6 = number[0];
    goto LABEL_24;
  }

  *a2 = 0;
  v4 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (!v4)
  {
    FigByteStreamCopySHA1Digest_cold_1(number);
    v8 = 0;
    goto LABEL_33;
  }

  number[0] = 0;
  v5 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
  if (!v5)
  {
    v8 = 0;
LABEL_23:
    v6 = -12782;
    goto LABEL_24;
  }

  v6 = v5(a1, @"FBS_EntireLength", 0, number);
  v7 = number[0];
  if (!v6)
  {
    CFNumberGetValue(number[0], kCFNumberSInt64Type, &valuePtr);
    v7 = number[0];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = FigDigestSHA1Create();
    FigThreadRegisterAbortAction(figByteStreamDigestAbortAction, &v19, &v18);
    v9 = v19 == 0;
    v10 = valuePtr;
    v11 = valuePtr > 0;
    if (!v19 && valuePtr >= 1)
    {
      v12 = 0;
      do
      {
        number[0] = 0;
        v13 = (v10 - v12) >= 0x10000 ? 0x10000 : v10 - v12;
        v14 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = v14(a1, v13, v12, v4, number);
        if (v15)
        {
          v6 = v15;
          goto LABEL_24;
        }

        FigDigestSHA1AppendData(v8, v4, number[0]);
        v12 += number[0];
        v9 = v19 == 0;
        v10 = valuePtr;
        v11 = v12 < valuePtr;
      }

      while (!v19 && v12 < valuePtr);
    }

    v6 = 0;
    if (v9 && !v11)
    {
      FigDigestSHA1GetDigest(v8, number);
      v6 = 0;
      *a2 = CFDataCreate(*MEMORY[0x1E695E480], number, 20);
    }
  }

LABEL_24:
  if (v18)
  {
    FigThreadUnregisterAbortAction(v18);
  }

  if (v8)
  {
    FigDigestSHA1Destroy(v8);
  }

  free(v4);
  if (v19)
  {
    return 4294954425;
  }

  else
  {
    return v6;
  }
}

CFNumberRef OUTLINED_FUNCTION_0_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, uint64_t a10)
{
  a10 = *&a9;

  return CFNumberCreate(v10, kCFNumberDoubleType, &a10);
}

uint64_t frb_FigRingBufferOutOfBounds(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = a1 <= a3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (a4)
  {
    v6 = a2 > a4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void *FigRingBufferCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)())
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = kFigTypeCFRingBufferCallBacks;
  }

  if (v6[2])
  {
    v7 = v6[2];
  }

  else
  {
    v7 = 0;
  }

  Mutable = CFArrayCreateMutable(a1, 0, v7);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040C52B20C0uLL);
    if (v10)
    {
      *v10 = CFRetain(v9);
      v10[1] = v6;
      v10[2] = 0;
      v10[3] = a3;
      v10[4] = 0;
      v10[5] = a2;
      v10[6] = 0;
      v10[7] = 0;
    }

    CFRelease(v9);
  }

  else
  {
    FigRingBufferCreate_cold_1();
    return 0;
  }

  return v10;
}