size_t FigH264Bridge_GetSPS_VUI_NCLC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_41(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_11();
  v11 = RemoveEmulation3Byte(BytePtr, v9, v10);
  if (v11)
  {
    return v11;
  }

  v12 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    LODWORD(v9) = CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_52();
  if (v13)
  {
    v14 = *BytePtr;
  }

  else if (v9)
  {
    OUTLINED_FUNCTION_23_6();
    __memcpy_chk();
    v14 = v18;
  }

  else
  {
    v14 = 0;
  }

  v15 = OUTLINED_FUNCTION_21_7(v14, theData);
  if (v12)
  {
    CFRelease(v12);
  }

  if (!v15)
  {
    v15 = 4294954584;
    if (v19)
    {
      if (v20)
      {
        v15 = 0;
        *v7 = v21;
        *v6 = v22;
        *v5 = v23;
      }
    }
  }

  return v15;
}

size_t FigH264Bridge_GetSPS_VUI_AspectRatio(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_29_2(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_11();
  v10 = RemoveEmulation3Byte(BytePtr, v8, v9);
  if (v10)
  {
    return v10;
  }

  v11 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    LODWORD(v8) = CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_34_1();
  if (v12)
  {
    v13 = *BytePtr;
  }

  else if (v8)
  {
    OUTLINED_FUNCTION_23_6();
    __memcpy_chk();
    v13 = v19;
  }

  else
  {
    v13 = 0;
  }

  v14 = OUTLINED_FUNCTION_21_7(v13, theData);
  if (v11)
  {
    CFRelease(v11);
  }

  if (!v14)
  {
    v14 = 4294954584;
    if (v20)
    {
      if (v21)
      {
        if (v22 == 255)
        {
          *v6 = v23;
          v15 = v24;
        }

        else
        {
          if (v22 - 1 > 0xF)
          {
            return 0;
          }

          v16 = &kH264SampleAspectRatioIndicators + 2 * v22;
          *v6 = *v16;
          v15 = v16[1];
        }

        v14 = 0;
        *v5 = v15;
      }
    }
  }

  return v14;
}

size_t FigCFCreateExtendedDictionary(const __CFAllocator *a1, CFDictionaryRef theDict, const void *a3, const void *a4, uint64_t a5, CFDictionaryRef *a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a6)
  {
    v15 = qword_1EAF1CE20;
    v16 = v8;
    v17 = 4294954306;
    v18 = 2707;
    goto LABEL_21;
  }

  if (!a3 && a5 >= 1)
  {
    v15 = qword_1EAF1CE20;
    v16 = v8;
    v17 = 4294954306;
    v18 = 2709;
    goto LABEL_21;
  }

  if (!a4 && a5 >= 1)
  {
    v15 = qword_1EAF1CE20;
    v16 = v8;
    v17 = 4294954306;
    v18 = 2711;
    goto LABEL_21;
  }

  *a6 = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
  }

  else
  {
    Count = 0;
  }

  v20 = Count + a5;
  if ((Count + a5 - 0x2000000000000000) < 0xE000000000000001)
  {
    v22 = 0;
  }

  else
  {
    numValues = Count + a5;
    v21 = 8 * v20;
    v22 = malloc_type_malloc(8 * v20, 0x1BA7A198uLL);
    if (v22)
    {
      v23 = malloc_type_malloc(v21, 0x6E406C51uLL);
      if (v23)
      {
        if (theDict)
        {
          CFDictionaryGetKeysAndValues(theDict, v22, v23);
        }

        v24 = 8 * a5;
        memcpy(&v22[Count], a3, v24);
        memcpy(&v23[Count], a4, v24);
        *a6 = CFDictionaryCreate(a1, v22, v23, numValues, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      goto LABEL_18;
    }
  }

  v23 = 0;
LABEL_18:
  free(v22);
  free(v23);
  if (*a6)
  {
    return 0;
  }

  v15 = qword_1EAF1CE20;
  v16 = v8;
  v17 = 4294954305;
  v18 = 2739;
LABEL_21:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v17, "<<< FigCFUtilities >>>", v18, v16, a7, a8);
}

size_t FigVideoFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = 0;
  v13 = figVideoFormatDescriptionFinalize;
  v12 = figVideoFormatDescriptionCopyDebugDesc;
  v10 = 12;
  v11 = figVideoFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x76696465u, &v9, a3, a4, a5, a6, a7, a8);
}

uint64_t FigSignalErrorAt(uint64_t a1, const char *a2, const char *a3, const char *a4, char *a5, char *a6, uint64_t a7)
{
  FigAtomicIncrement32(&gErrorCount);
  figRecordLastSignaledErrorInfoAndGetRepetitionCount(a1, a2, a3, a4, a5, a6, a7);
  return a1;
}

uint64_t FigFileWrapDarwinFileDesc(int a1, void *a2)
{
  v4 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v12 = v4;
    result = 0;
    *v12 = a1;
    *a2 = v12;
  }

  else
  {
    FigFileWrapDarwinFileDesc_cold_1(&v14, v5, v6, v7, v8, v9, v10, v11);
    return v14;
  }

  return result;
}

size_t FigCFCreateCombinedDictionary(const __CFAllocator *a1, CFDictionaryRef *a2, uint64_t a3, CFDictionaryRef *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a4)
  {
    v13 = qword_1EAF1CE20;
    v14 = v8;
    v15 = 4294954306;
    v16 = 2216;
    goto LABEL_23;
  }

  v10 = a3;
  v11 = a2;
  if (!a2 && a3 >= 1)
  {
    v13 = qword_1EAF1CE20;
    v14 = v8;
    v15 = 4294954306;
    v16 = 2218;
    goto LABEL_23;
  }

  *a4 = 0;
  if (a3 < 1)
  {
    goto LABEL_16;
  }

  v17 = 0;
  v18 = a2;
  v19 = a3;
  do
  {
    v20 = *v18++;
    v17 += CFDictionaryGetCount(v20);
    --v19;
  }

  while (v19);
  if ((v17 - 0x2000000000000000) < 0xE000000000000001)
  {
LABEL_16:
    v22 = 0;
  }

  else
  {
    v21 = 8 * v17;
    v22 = malloc_type_malloc(8 * v17, 0xA0CC8AA0uLL);
    if (v22)
    {
      v23 = malloc_type_malloc(v21, 0xC58A2C5EuLL);
      if (v23)
      {
        if (v10 < 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = 0;
          do
          {
            Count = CFDictionaryGetCount(*v11);
            v26 = *v11++;
            CFDictionaryGetKeysAndValues(v26, &v22[v24], &v23[v24]);
            v24 += Count;
            --v10;
          }

          while (v10);
        }

        *a4 = CFDictionaryCreate(a1, v22, v23, v24, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      goto LABEL_20;
    }
  }

  v23 = 0;
LABEL_20:
  free(v22);
  free(v23);
  if (*a4)
  {
    return 0;
  }

  v13 = qword_1EAF1CE20;
  v14 = v8;
  v15 = 4294954305;
  v16 = 2246;
LABEL_23:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<< FigCFUtilities >>>", v16, v14, a7, a8);
}

size_t FigScheduledIOCreateForReadingByteStream(uint64_t a1, const void *a2, int a3, CFTypeRef *a4)
{
  cf = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject(a2);
  v9 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(CMBaseObject, @"FBS_ScheduledIO", a1, a4);
  if (result == -12784)
  {
    result = FigScheduledIOFRSCreateForByteStream(a1, a2, a3, &cf, v11, v12, v13, v14);
    if (result)
    {
      v15 = result;
      if (cf)
      {
        CFRelease(cf);
      }

      return v15;
    }

    else
    {
      *a4 = cf;
    }
  }

  return result;
}

size_t RegisterFigScheduledIOBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigScheduledIOClassDesc, ClassID, 1, &sFigScheduledIOClassID, v1, v2, v3, v4);
}

uint64_t bufQDataBecameReady(uint64_t a1, void *a2)
{
  FigReentrantMutexLock(a2[2]);
  v3 = a2[20];
  if (v3)
  {
    CFSetApplyFunction(v3, evaluateAndMaybeFireTrigger, a2);
  }

  v4 = a2[2];

  return FigReentrantMutexUnlock(v4);
}

uint64_t PeekBits(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v4 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 36) & 7 | (8 * (v3 - (*(a1 + 40) + v4) + (*(a1 + 36) >> 3)));
  }

  if (v5 < a2)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  result = GetBits(a1, a2);
  *(a1 + 16) = v4;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  return result;
}

uint64_t GetBits(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 36);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    v6 = 0;
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      v5 = 0xFFFFFFFF >> -v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 32) & v5;
    *(a1 + 16) += 4;
    CopyNextWord(a1);
    v3 = *(a1 + 36);
    a2 = v4;
  }

  v7 = v3 - a2;
  if (v3 < a2)
  {
    GetBits_cold_1();
    return 0;
  }

  else
  {
    if (v7 == 32)
    {
      v8 = 0;
    }

    else
    {
      v9 = -1 << -a2;
      if (!a2)
      {
        v9 = 0;
      }

      v10 = v9 >> -v3;
      if (v3)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v8 = (*(a1 + 32) & v11) >> v7;
    }

    v12 = v6 << v4;
    if (v4 == 32)
    {
      v12 = 0;
    }

    result = v8 | v12;
    *(a1 + 36) = v7;
  }

  return result;
}

uint64_t FigHALAudioBrokeredPluginCreateDeviceBroker(const void *a1, void *a2)
{
  brokeredPlugin_CreateDeviceBroker(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    v5 = *(DerivedStorage + 24);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
  }

  return 0;
}

size_t brokeredPlugin_CreateBrokeredPluginObjectInternal(const __CFAllocator *a1, const void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  cf = 0;
  ClassID = FigHALAudioPluginGetClassID();
  v19 = CMDerivedObjectCreate(a1, &kFigHALAudioBrokeredPluginVTable, ClassID, &cf, v15, v16, v17, v18);
  if (v19)
  {
    v22 = v19;
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  DerivedStorage[1] = a3;
  DerivedStorage[2] = CFRetain(a2);
  DerivedStorage[6] = a5;
  DerivedStorage[7] = a6;
  DerivedStorage[5] = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v21 = dispatch_queue_create("FigHALBrokeredPluginDeviceManagementQueue", 0);
  DerivedStorage[4] = v21;
  DerivedStorage[8] = a4;
  if (!DerivedStorage[5])
  {
    v24 = 630;
LABEL_10:
    brokeredPlugin_CreateBrokeredPluginObjectInternal_cold_1(v24, &v26);
    v22 = v26;
    goto LABEL_11;
  }

  if (!v21)
  {
    v24 = 631;
    goto LABEL_10;
  }

  v22 = FigHALAudioObjectMapperAddPluginObjectMapping(a3, cf);
  if (!v22)
  {
    *a7 = cf;
    return v22;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

void *basicBroker_Finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  *result = 0;
  return result;
}

void brokeredPlugin_DeviceUnpluggedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  v7 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __brokeredPlugin_DeviceUnpluggedNotificationCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = a2;
  block[5] = a4;
  block[6] = DerivedStorage;
  dispatch_sync(v7, block);
  FigHALAudioPropertySendChanges(*DerivedStorage, 1, 2, "#vedbolg");
}

void brokeredPlugin_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[2] = 0;
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[9] = 0;
  }
}

CFStringRef brokeredPlugin_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __brokeredPlugin_CopyDebugDescription_block_invoke;
  block[3] = &unk_1E749C970;
  block[4] = &v6;
  block[5] = DerivedStorage;
  dispatch_sync(v2, block);
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigHALBrokeredPlugin: brokerType: %@ %ld devices", *(DerivedStorage + 16), v7[3]);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t brokeredPlugin_HasProperty(uint64_t a1, int *a2)
{
  v2 = *a2;
  result = 1;
  if (*a2 <= 1819107690)
  {
    v4 = v2 == 1668047219;
    v5 = 1684370979;
  }

  else
  {
    v4 = v2 == 1819107691 || v2 == 1870098020;
    v5 = 1969841252;
  }

  if (!v4 && v2 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t brokeredPlugin_GetPropertyDataSize(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v4 == 1668047219)
    {
      return 4;
    }

    if (v4 != 1684370979)
    {
      return 0;
    }

LABEL_9:
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v6 = *(DerivedStorage + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __brokeredPlugin_GetPropertyDataSize_block_invoke;
    v8[3] = &unk_1E749C998;
    v8[4] = &v9;
    v8[5] = DerivedStorage;
    dispatch_sync(v6, v8);
    v5 = (4 * *(v10 + 6));
    _Block_object_dispose(&v9, 8);
    return v5;
  }

  switch(v4)
  {
    case 1819107691:
      return 8;
    case 1870098020:
      goto LABEL_9;
    case 1969841252:
      return 4;
    default:
      return 0;
  }
}

uint64_t brokeredPlugin_GetPropertyData(uint64_t a1, int *a2, int a3, uint64_t a4, unsigned int a5, _DWORD *a6, _DWORD *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v14 = 0;
  v15 = *a2;
  if (*a2 <= 1819107690)
  {
    if (v15 != 1668047219)
    {
      if (v15 != 1684370979)
      {
        return v14;
      }

LABEL_11:
      v22 = 0;
      v23 = &v22;
      v24 = 0x2000000000;
      v25 = 0;
      v17 = *(DerivedStorage + 32);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = __brokeredPlugin_GetPropertyData_block_invoke;
      v20[3] = &unk_1E749C9C0;
      v21 = a5;
      v20[4] = &v22;
      v20[5] = DerivedStorage;
      v20[6] = a7;
      dispatch_sync(v17, v20);
      *a6 = 4 * *(v23 + 6);
      _Block_object_dispose(&v22, 8);
      return 0;
    }

    *a6 = 4;
    if (a5 >= 4)
    {
      v14 = 0;
      *a7 = 1634757735;
      return v14;
    }

    return 561211770;
  }

  switch(v15)
  {
    case 1819107691:
      *a6 = 8;
      if (a5 >= 8)
      {
        v14 = 0;
        *a7 = @"Apple Inc.";
        return v14;
      }

      return 561211770;
    case 1870098020:
      goto LABEL_11;
    case 1969841252:
      if (a5 <= 3)
      {
        brokeredPlugin_GetPropertyData_cold_3(&v22);
      }

      else if (a3 == 8)
      {
        if (a4)
        {
          v16 = *(DerivedStorage + 32);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __brokeredPlugin_GetPropertyData_block_invoke_2;
          block[3] = &__block_descriptor_tmp_18;
          block[4] = DerivedStorage;
          block[5] = a4;
          block[6] = a7;
          dispatch_sync(v16, block);
          v14 = 0;
          *a6 = 4;
          return v14;
        }

        brokeredPlugin_GetPropertyData_cold_2(&v22);
      }

      else
      {
        brokeredPlugin_GetPropertyData_cold_1(&v22);
      }

      return v22;
  }

  return v14;
}

void FigKTraceInit()
{
  if (initializeOnceToken != -1)
  {
    FigKTraceInit_cold_1();
  }
}

uint64_t fig_ktrace_initialize()
{
  gGMFigKTraceEnabled = FigGetCFPreferenceNumberWithDefault(@"gm_ktrace", @"com.apple.coremedia", 1);
  result = FigGetCFPreferenceNumberWithDefault(@"gm_signpost", @"com.apple.coremedia", 1);
  gFigUseSignposts = result;
  return result;
}

const char *fig_gm_ktrace_wrapper(uint64_t a1, int a2, const char *a3, const char *a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, const char *a9)
{
  if (a3 != 3)
  {
    result = fig_trace_point_arg_to_ktrace_arg(a3, &a9);
    if (a4 != 3)
    {
      result = fig_trace_point_arg_to_ktrace_arg(a4, &a9);
      if (a5 != 3)
      {
        result = fig_trace_point_arg_to_ktrace_arg(a5, &a9);
        if (a6 != 3)
        {
          result = fig_trace_point_arg_to_ktrace_arg(a6, &a9);
        }
      }
    }
  }

  if (a2 == 2)
  {
    if (gGMFigKTraceEnabled != 1)
    {
      return result;
    }

    return kdebug_trace();
  }

  if (a2 == 1)
  {
    if (gGMFigKTraceEnabled != 1)
    {
      return result;
    }

    return kdebug_trace();
  }

  if (!a2 && gGMFigKTraceEnabled == 1)
  {
    return kdebug_trace();
  }

  return result;
}

const char *fig_trace_point_arg_to_ktrace_arg(const char *result, const char **a2)
{
  if (result == 2)
  {
    strncpy(__dst, *a2, 8uLL);
    return *__dst;
  }

  else if (result <= 1)
  {
    return *a2;
  }

  return result;
}

uint64_t FigEndpointManagerRemoteCreateWithType(const void *a1, CFTypeRef *a2)
{
  v23 = 0;
  cf = 0;
  v2 = 4294950586;
  v22 = 0;
  if (a1 && a2)
  {
    if (remoteXPCFigEndpointManager_initializeLogging_initLoggingOnce != -1)
    {
      FigEndpointManagerRemoteCreateWithType_cold_1();
    }

    v5 = *MEMORY[0x1E695E480];
    ClassID = FigEndpointManagerGetClassID();
    v11 = CMDerivedObjectCreate(v5, &kFigEndpointManagerRemoteXPC_EndpointVTable, ClassID, &cf, v7, v8, v9, v10);
    if (v11)
    {
LABEL_18:
      v2 = v11;
      goto LABEL_23;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    v13 = dispatch_queue_create("com.apple.coremedia.remoteendpointmgr.state", 0);
    DerivedStorage[2] = v13;
    if (v13)
    {
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      DerivedStorage[3] = Mutable;
      if (Mutable)
      {
        v15 = dispatch_queue_create("com.apple.coremedia.remoteendpointmgr.notification", 0);
        DerivedStorage[9] = v15;
        if (v15)
        {
          v11 = FigEndpointRPCCacheCreate(DerivedStorage + 4, 1);
          if (!v11)
          {
            v11 = FigEndpointRPCCacheCreate(DerivedStorage + 5, 1);
            if (!v11)
            {
              v11 = remoteXPCEndpointManager_ResetCachedAvailableEndpoints(DerivedStorage);
              if (!v11)
              {
                v16 = *MEMORY[0x1E695E4C0];
                v17 = DerivedStorage[2];
                block = MEMORY[0x1E69E9820];
                v26 = 0x40000000;
                v27 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
                v28 = &__block_descriptor_tmp_26;
                v29 = v16;
                v30 = DerivedStorage;
                v31 = @"EndpointPresent";
                dispatch_sync(v17, &block);
                DerivedStorage[6] = 0;
                *DerivedStorage = CFRetain(a1);
                IsAppleTV = CelestialIsAppleTV();
                if (!FigEndpointManagerGetSupportedFeatures(a1, IsAppleTV, &v23))
                {
                  remoteXPCEndpointManager_SetCachedPropertyInt64(DerivedStorage, @"SupportedFeatures", v23);
                }

                if (!FigEndpointManagerGetSupportedDiscoveryFeatures(a1, &v22))
                {
                  remoteXPCEndpointManager_SetCachedPropertyInt64(DerivedStorage, @"SupportedDiscoveryFeatures", v22);
                }

                v19 = DerivedStorage[2];
                block = MEMORY[0x1E69E9820];
                v26 = 0x40000000;
                v27 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
                v28 = &__block_descriptor_tmp_26;
                v29 = v16;
                v30 = DerivedStorage;
                v31 = @"EndpointPresent";
                dispatch_sync(v19, &block);
                v2 = 0;
                *a2 = cf;
                return v2;
              }
            }
          }

          goto LABEL_18;
        }

        v21 = 882;
      }

      else
      {
        v21 = 879;
      }
    }

    else
    {
      v21 = 876;
    }

    FigEndpointManagerRemoteCreateWithType_cold_2(v21, &block);
    v2 = block;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t remoteXPCEndpointManager_ResetCachedAvailableEndpoints(uint64_t a1)
{
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 16);
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
    v10 = &__block_descriptor_tmp_26;
    v11 = v3;
    v12 = a1;
    v13 = @"AvailableEndpoints";
    dispatch_sync(v4, &block);
    v5 = *(a1 + 16);
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
    v10 = &__block_descriptor_tmp_26;
    v11 = v3;
    v12 = a1;
    v13 = @"AvailableEndpointsExtended";
    dispatch_sync(v5, &block);
    CFRelease(v3);
    return 0;
  }

  else
  {
    remoteXPCEndpointManager_ResetCachedAvailableEndpoints_cold_1(&block);
    return block;
  }
}

void remoteXPCEndpointManager_SetCachedProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = a3;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v3, block);
}

void remoteXPCEndpointManager_SetCachedPropertyInt64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SInt64 = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], a3);
  v6 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = SInt64;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v6, block);
  if (SInt64)
  {
    CFRelease(SInt64);
  }
}

uint64_t FigEndpointManagerRemoteCopyAirPlayManager(CFTypeRef *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (FigEndpointManagerRemoteCopyAirPlayManager_sCreateOnce != -1)
    {
      FigEndpointManagerRemoteCopyAirPlayManager_cold_1();
    }

    v2 = FigEndpointManagerRemoteCopyAirPlayManager_sCreationResult;
    if (!FigEndpointManagerRemoteCopyAirPlayManager_sCreationResult)
    {
      *a1 = CFRetain(FigEndpointManagerRemoteCopyAirPlayManager_sAirPlayManager);
      return v2;
    }
  }

  else
  {
    if (FigEndpointManagerRemoteCopyAirPlayManager_cold_2(v14))
    {
      return 0;
    }

    v2 = v14[0];
  }

  v10[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v10, &type);
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
    v10[1] = 136315394;
    v11 = "FigEndpointManagerRemoteCopyAirPlayManager";
    v12 = 1024;
    v13 = v2;
    v8 = _os_log_send_and_compose_impl();
    LOBYTE(v5) = v10[0];
  }

  else
  {
    v8 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v8, v8 != v14, v5, 0, v6);
  return v2;
}

void __FigEndpointManagerRemoteCopyAirPlayManager_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  FigEndpointManagerRemoteCopyAirPlayManager_sCreationResult = FigEndpointManagerRemoteCreateWithType(@"AirPlay", &FigEndpointManagerRemoteCopyAirPlayManager_sAirPlayManager);
  v6[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v6, &type);
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
    v6[1] = 136315394;
    v7 = "FigEndpointManagerRemoteCopyAirPlayManager_block_invoke";
    v8 = 1024;
    v9 = FigEndpointManagerRemoteCopyAirPlayManager_sCreationResult;
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v6[0];
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != &v10, v1, 0, v2);
}

uint64_t FigEndpointManagerRemoteCopyCarPlayManager(CFTypeRef *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (FigEndpointManagerRemoteCopyCarPlayManager_sCreateOnce != -1)
    {
      FigEndpointManagerRemoteCopyCarPlayManager_cold_1();
    }

    v2 = FigEndpointManagerRemoteCopyCarPlayManager_sCreationResult;
    if (!FigEndpointManagerRemoteCopyCarPlayManager_sCreationResult)
    {
      *a1 = CFRetain(FigEndpointManagerRemoteCopyCarPlayManager_sCarPlayManager);
      return v2;
    }
  }

  else
  {
    v2 = 4294950586;
  }

  v10[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v10, &type);
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
    v10[1] = 136315394;
    v11 = "FigEndpointManagerRemoteCopyCarPlayManager";
    v12 = 1024;
    v13 = v2;
    v8 = _os_log_send_and_compose_impl();
    LOBYTE(v5) = v10[0];
  }

  else
  {
    v8 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v8, v8 != &v14, v5, 0, v6);
  return v2;
}

void __FigEndpointManagerRemoteCopyCarPlayManager_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  FigEndpointManagerRemoteCopyCarPlayManager_sCreationResult = FigEndpointManagerRemoteCreateWithType(@"CarPlay", &FigEndpointManagerRemoteCopyCarPlayManager_sCarPlayManager);
  v6[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v6, &type);
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
    v6[1] = 136315394;
    v7 = "FigEndpointManagerRemoteCopyCarPlayManager_block_invoke";
    v8 = 1024;
    v9 = FigEndpointManagerRemoteCopyCarPlayManager_sCreationResult;
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v6[0];
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != &v10, v1, 0, v2);
}

uint64_t FigEndpointManagerRemoteCopyNeroManager(CFTypeRef *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (FigEndpointManagerRemoteCopyNeroManager_sCreateOnce != -1)
    {
      FigEndpointManagerRemoteCopyNeroManager_cold_1();
    }

    v2 = FigEndpointManagerRemoteCopyNeroManager_sCreationResult;
    if (!FigEndpointManagerRemoteCopyNeroManager_sCreationResult)
    {
      *a1 = CFRetain(FigEndpointManagerRemoteCopyNeroManager_sNeroManager);
      return v2;
    }
  }

  else
  {
    v2 = 4294950586;
  }

  v10[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v10, &type);
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
    v10[1] = 136315394;
    v11 = "FigEndpointManagerRemoteCopyNeroManager";
    v12 = 1024;
    v13 = v2;
    v8 = _os_log_send_and_compose_impl();
    LOBYTE(v5) = v10[0];
  }

  else
  {
    v8 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v8, v8 != &v14, v5, 0, v6);
  return v2;
}

void *__FigEndpointManagerRemoteCopyNeroManager_block_invoke()
{
  v13[16] = *MEMORY[0x1E69E9840];
  FigEndpointManagerRemoteCopyNeroManager_sCreationResult = FigEndpointManagerRemoteCreateWithType(@"Nero/Stevenote", &FigEndpointManagerRemoteCopyNeroManager_sNeroManager);
  v9[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v9, &type);
  v1 = v9[0];
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
    v9[1] = 136315394;
    v10 = "FigEndpointManagerRemoteCopyNeroManager_block_invoke";
    v11 = 1024;
    v12 = FigEndpointManagerRemoteCopyNeroManager_sCreationResult;
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v9[0];
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != v13, v1, 0, v2);
  v5 = FigEndpointManagerRemoteCopyNeroManager_sNeroManager;
  DerivedStorage = CMBaseObjectGetDerivedStorage(FigEndpointManagerRemoteCopyNeroManager_sNeroManager);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __remoteXPCEndpointManager_startListeningForValeriaConnections_block_invoke;
  v13[3] = &__block_descriptor_tmp_30;
  v13[4] = v5;
  result = NeroValeriaListenerCreate(v13);
  *(DerivedStorage + 8) = result;
  return result;
}

uint64_t FigEndpointManagerRemoteCopySidePlayManager(CFTypeRef *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (FigEndpointManagerRemoteCopySidePlayManager_sCreateOnce != -1)
    {
      FigEndpointManagerRemoteCopySidePlayManager_cold_1();
    }

    v2 = FigEndpointManagerRemoteCopySidePlayManager_sCreationResult;
    if (!FigEndpointManagerRemoteCopySidePlayManager_sCreationResult)
    {
      *a1 = CFRetain(FigEndpointManagerRemoteCopySidePlayManager_sSidePlayManager);
      return v2;
    }
  }

  else
  {
    v2 = 4294950586;
  }

  v10[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v10, &type);
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
    v10[1] = 136315394;
    v11 = "FigEndpointManagerRemoteCopySidePlayManager";
    v12 = 1024;
    v13 = v2;
    v8 = _os_log_send_and_compose_impl();
    LOBYTE(v5) = v10[0];
  }

  else
  {
    v8 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v8, v8 != &v14, v5, 0, v6);
  return v2;
}

void __FigEndpointManagerRemoteCopySidePlayManager_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  FigEndpointManagerRemoteCopySidePlayManager_sCreationResult = FigEndpointManagerRemoteCreateWithType(@"SidePlay", &FigEndpointManagerRemoteCopySidePlayManager_sSidePlayManager);
  v6[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v6, &type);
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
    v6[1] = 136315394;
    v7 = "FigEndpointManagerRemoteCopySidePlayManager_block_invoke";
    v8 = 1024;
    v9 = FigEndpointManagerRemoteCopySidePlayManager_sCreationResult;
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v6[0];
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != &v10, v1, 0, v2);
}

uint64_t remoteXPCEndpointManager_getSharedXPCClient(uint64_t *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&remoteXPCEndpointManager_getSharedXPCClient_lock);
  v3 = remoteXPCEndpointManager_getSharedXPCClient_sSharedClient;
  if (remoteXPCEndpointManager_getSharedXPCClient_err)
  {
    v4 = 1;
  }

  else
  {
    v4 = remoteXPCEndpointManager_getSharedXPCClient_sSharedClient == 0;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"EndpointManager_ServerConnectionDied");
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_PrivilegedConnection", *MEMORY[0x1E695E4D0]);
  v21 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v21, &type);
  v7 = v21;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type) ? v7 : v7 & 0xFFFFFFFE)
  {
    v22 = 136315138;
    v23 = "remoteXPCEndpointManager_getSharedXPCClient";
    v10 = _os_log_send_and_compose_impl();
    LOBYTE(v7) = v21;
  }

  else
  {
    v10 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v10, v10 != v26, v7, 0, v8);
  remoteXPCEndpointManager_getSharedXPCClient_err = FigXPCRemoteClientCreate("com.apple.coremedia.endpointmanager.xpc", remoteXPCEndpointManager_getSharedXPCClient_clientCallbacks, Mutable, &remoteXPCEndpointManager_getSharedXPCClient_sSharedClient);
  v21 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v21, &type);
  v12 = v21;
  if (os_log_type_enabled(v11, type) ? v12 : v12 & 0xFFFFFFFE)
  {
    v22 = 136315394;
    v23 = "remoteXPCEndpointManager_getSharedXPCClient";
    v24 = 1024;
    v25 = remoteXPCEndpointManager_getSharedXPCClient_err;
    v15 = _os_log_send_and_compose_impl();
    LOBYTE(v12) = v21;
  }

  else
  {
    v15 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v15, v15 != v26, v12, 0, v13);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v3 = remoteXPCEndpointManager_getSharedXPCClient_sSharedClient;
  if (!remoteXPCEndpointManager_getSharedXPCClient_sSharedClient)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, remoteXPCEndpointManager_getSharedXPCClient_err, "<< FigEndpointManagerXPCRemote >>", 0x187, v1, v18, v19);
  }

  else
  {
LABEL_21:
    *a1 = v3;
  }

  os_unfair_lock_unlock(&remoteXPCEndpointManager_getSharedXPCClient_lock);
  return remoteXPCEndpointManager_getSharedXPCClient_err;
}

void remoteXPCEndpointManager_EmptyCaches(void *a1)
{
  FigEndpointRPCCacheRemoveAllEndpoints(a1[4]);
  FigEndpointRPCCacheRemoveAllEndpoints(a1[5]);
  v2 = a1[3];

  CFDictionaryRemoveAllValues(v2);
}

uint64_t remoteXPCEndpointManagerClient_NotificationFilter(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (CFEqual(a2, @"EndpointManager_AvailableEndpointsChanged"))
  {
    v4 = *(DerivedStorage + 16);
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
    v11 = &__block_descriptor_tmp_26;
    v12 = 0;
    v13 = DerivedStorage;
    v14 = @"AvailableEndpoints";
    dispatch_sync(v4, &block);
    v5 = @"AvailableEndpointsExtended";
    v6 = *(DerivedStorage + 16);
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
    v11 = &__block_descriptor_tmp_26;
LABEL_5:
    v12 = 0;
    v13 = DerivedStorage;
    v14 = v5;
    dispatch_sync(v6, &block);
    return 0;
  }

  if (CFEqual(a2, @"EndpointManager_EndpointPresentChanged"))
  {
    v5 = @"EndpointPresent";
    v6 = *(DerivedStorage + 16);
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = __remoteXPCEndpointManager_SetCachedProperty_block_invoke;
    v11 = &__block_descriptor_tmp_26;
    goto LABEL_5;
  }

  return 0;
}

void __remoteXPCEndpointManager_startListeningForValeriaConnections_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  CMBaseObject = FigEndpointManagerGetCMBaseObject(*(a1 + 32));
  v2 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
  if (v2)
  {
    v3 = v2(CMBaseObject, @"ValeriaConnected", *MEMORY[0x1E695E4D0]);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = -12782;
  }

  v10[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v10, &type);
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
    v10[1] = 136315394;
    v11 = "remoteXPCEndpointManager_startListeningForValeriaConnections_block_invoke";
    v12 = 1024;
    v13 = v3;
    v8 = _os_log_send_and_compose_impl();
    LOBYTE(v5) = v10[0];
  }

  else
  {
    v8 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v8, v8 != &v14, v5, 0, v6);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{
  a15 = 0;
  a14 = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &a15, &a14);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_6(int a1)
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

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, char a19, int a20)
{
  a20 = 0;
  a19 = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &a20, &a19);
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigWatchdogMonitorDispatchQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (_MergedGlobals_2)
    {
      wd_endpoint_add_queue();
      return 0;
    }

    else
    {
      FigWatchdogMonitorDispatchQueue_cold_1(&v9, a2, a3, a4, a5, a6, a7, a8);
      return v9;
    }
  }

  else
  {
    FigWatchdogMonitorDispatchQueue_cold_2(&v10);
    return v10;
  }
}

uint64_t FigWatchdogBeginVitalWork(const char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      if (_MergedGlobals_2)
      {
        FigSimpleMutexLock(qword_1ED4CC398);
        v10 = sNextVitalWorkID++;
        v11 = *MEMORY[0x1E695E480];
        SInt64 = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], v10);
        v13 = CFStringCreateWithCString(v11, a1, 0x8000100u);
        CFDictionarySetValue(qword_1ED4CC3A0, SInt64, v13);
        ++sVitalWorkSectionsInProgress;
        FigSimpleMutexUnlock(qword_1ED4CC398);
        *a2 = v10;
        if (SInt64)
        {
          CFRelease(SInt64);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        return 0;
      }

      else
      {
        FigWatchdogBeginVitalWork_cold_1(&v15, a2, a3, a4, a5, a6, a7, a8);
        return v15;
      }
    }

    else
    {
      FigWatchdogBeginVitalWork_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    FigWatchdogBeginVitalWork_cold_3(&v17);
    return v17;
  }
}

uint64_t FigWatchdogCompleteVitalWork(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1 <= 0)
  {
    FigWatchdogCompleteVitalWork_cold_2(&v12);
    return v12;
  }

  else if (_MergedGlobals_2)
  {
    FigSimpleMutexLock(qword_1ED4CC398);
    SInt64 = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], a1);
    CFDictionaryRemoveValue(qword_1ED4CC3A0, SInt64);
    --sVitalWorkSectionsInProgress;
    FigSimpleMutexUnlock(qword_1ED4CC398);
    if (SInt64)
    {
      CFRelease(SInt64);
    }

    return 0;
  }

  else
  {
    FigWatchdogCompleteVitalWork_cold_1(&v11, a2, a3, a4, a5, a6, a7, a8);
    return v11;
  }
}

BOOL __FigWatchdogStart_block_invoke(uint64_t a1, char **a2, void *a3)
{
  v3 = sVitalWorkSectionsInProgress;
  if (sVitalWorkSectionsInProgress)
  {
    v9 = 0;
    FigSimpleMutexLock(qword_1ED4CC398);
    v6 = FigCFCopyCompactDescription(qword_1ED4CC3A0);
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(v6, 0x8000100u, &v9);
    asprintf(a2, "%d vital tasks are still running: %s", sVitalWorkSectionsInProgress, CStringPtrAndBufferToFree);
    FigSimpleMutexUnlock(qword_1ED4CC398);
    *a3 = -17932;
    if (v6)
    {
      CFRelease(v6);
    }

    free(v9);
  }

  return v3 == 0;
}

CFStringRef FigBaseObjectCopyDebugDescription(void *a1)
{
  v2 = a1[3];
  v3 = *(*(v2 + 8) + 40);
  if (!v3)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = a1 + 4;
LABEL_6:
    v7 = v2;
    goto LABEL_7;
  }

  result = v3(a1);
  if (result)
  {
    return result;
  }

  v2 = a1[3];
  v5 = *MEMORY[0x1E695E480];
  v6 = a1 + 4;
  if (v2)
  {
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v8 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v5, 0, @"<CMBaseObject: instance<%p> storage<%p> class<%p> allocator<%p>>", a1, v6, v7, v8);
}

uint64_t FigBaseProtocolRegisterProtocol(__int128 *a1, uint64_t a2, void *a3)
{
  if (a1 && a3)
  {
    MallocZoneForPermanentAllocations = FigGetMallocZoneForPermanentAllocations();
    v6 = malloc_type_zone_calloc(MallocZoneForPermanentAllocations, 1uLL, 0x28uLL, 0x1070040C4A17F08uLL);
    if (v6)
    {
      v14 = v6;
      result = 0;
      *v14 = 0;
      v16 = *a1;
      *(v14 + 24) = a1[1];
      *(v14 + 8) = v16;
      *a3 = v14;
    }

    else
    {
      FigBaseProtocolRegisterProtocol_cold_1(&v17, v7, v8, v9, v10, v11, v12, v13);
      return v17;
    }
  }

  else
  {
    FigBaseProtocolRegisterProtocol_cold_2(&v18);
    return v18;
  }

  return result;
}

size_t CMDerivedObjectCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a2 || !a4)
  {
    CMDerivedObjectCreate_cold_5(&v29);
    return v29;
  }

  v11 = **(a2 + 8);
  if (!v11)
  {
    CMDerivedObjectCreate_cold_4(&v29, a2, a3, a4, a5, a6, a7, a8);
    return v29;
  }

  if (v11 >= 6)
  {
    CMDerivedObjectCreate_cold_3(&v29, a2, a3, a4, a5, a6, a7, a8);
    return v29;
  }

  if (*a2)
  {
    CMDerivedObjectCreate_cold_1(&v29);
    return v29;
  }

  if (a3)
  {
    v13 = a3;
    while (!v13[14])
    {
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v23 = Instance;
      Instance[2] = a3;
      Instance[3] = a2;
      bzero(Instance + 4, *(*(a2 + 8) + 8));
      v24 = *(a2 + 8);
      if (*v24 >= 2uLL && (v25 = v24[8]) != 0 && v25 == FigBaseObjectStandardNotificationBarrier && (DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter(), v27 = CMNotificationCenterRegisterForBarrierSupport(DefaultLocalCenter, v23), v27))
      {
        v28 = v27;
        CFRelease(v23);
      }

      else
      {
        v28 = 0;
        *a4 = v23;
      }

      return v28;
    }

    CMDerivedObjectCreate_cold_2(&v29, v16, v17, v18, v19, v20, v21, v22);
    return v29;
  }

LABEL_10:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x11B, v8, a7, a8);
}

size_t FigBaseObjectStandardNotificationBarrier(uint64_t a1)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterBarrier(DefaultLocalCenter, a1);
}

uint64_t CMBaseObjectGetVTable(uint64_t result)
{
  if (result)
  {
    if (*(result + 24))
    {
      return *(result + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMBaseObjectGetProtocolVTable(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  if (*v6 < 3uLL)
  {
    return 0;
  }

  v7 = v6[9];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(v7 + 4);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(*(v8 + 8) + v10);
    if (v12)
    {
      break;
    }

LABEL_11:
    result = 0;
    ++v11;
    v10 += 16;
    if (v11 >= v9)
    {
      return result;
    }
  }

  if (v12(0) != a2)
  {
    v9 = *(v8 + 4);
    goto LABEL_11;
  }

  if (*(*(v8 + 8) + v10 + 8))
  {
    return *(*(v8 + 8) + v10 + 8);
  }

  return 0;
}

uint64_t CMBaseObjectGetDerivedStorage(uint64_t a1)
{
  if (a1)
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t CMBaseClassGetCFTypeID(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    v1 = a1[14];
    if (v1)
    {
      break;
    }

    a1 = *a1;
    if (!a1)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t CMBaseObjectIsMemberOfClass(char *cf, void *a2)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v4 = a2;
  while (1)
  {
    v5 = v4[14];
    if (v5)
    {
      break;
    }

    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == CFGetTypeID(cf))
  {
LABEL_7:
    v6 = cf + 16;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

__CFString *CMBaseProtocolCopyDebugDescription(const void *a1, uint64_t a2)
{
  ProtocolVTable = CMBaseObjectGetProtocolVTable(a1, a2);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CMBaseProtocol on CMBaseObject: protocol<%p> instance<%p> allocator<%p>>{", a2, a1, v6);
  if (ProtocolVTable && (v7 = *(ProtocolVTable + 8)) != 0 && (v8 = *(v7 + 8)) != 0 && (v9 = v8(a1)) != 0)
  {
    v10 = v9;
    CFStringAppendFormat(Mutable, 0, @"\n%@\n", v9);
    CFRelease(v10);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"UNIMPLEMENTED");
  }

  CFStringAppend(Mutable, @"}");
  return Mutable;
}

uint64_t FigBaseClassGetCFTypeID(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    v1 = a1[14];
    if (v1)
    {
      break;
    }

    a1 = *a1;
    if (!a1)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t _FigEnsureReadyToCollectIncrementalCoverageData(uint64_t a1)
{
  if (!a1)
  {
    _FigEnsureReadyToCollectIncrementalCoverageData_cold_3(&result);
    return LODWORD(result.location);
  }

  (*(a1 + 8))();
  theString = 0;
  v9 = xmmword_1971651C0;
  result = xmmword_1971651C0;
  v2 = FigCopyCoverageFilePathPattern(&theString);
  v3 = theString;
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    if (theString)
    {
      if (CFStringFind(theString, @"%m", 4uLL).location != -1 || CFStringFind(v3, @"%c", 4uLL).location != -1)
      {
        MutableCopy = 0;
        goto LABEL_7;
      }
    }

    else
    {
      _FigEnsureReadyToCollectIncrementalCoverageData_cold_1();
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
    v13.length = CFStringGetLength(MutableCopy);
    v13.location = 0;
    if (CFStringFindWithOptions(MutableCopy, @"/", v13, 4uLL, &result))
    {
      Length = CFStringGetLength(MutableCopy);
      v14.location = result.location;
      v14.length = Length - result.location;
      result.length = Length - result.location;
      if (CFStringFindWithOptions(MutableCopy, @".", v14, 4uLL, &v9))
      {
        v8 = v9;
      }

      else
      {
        v8 = CFStringGetLength(MutableCopy);
      }

      CFStringInsert(MutableCopy, v8, @"-%m");
      theString = MutableCopy;
      if (MutableCopy)
      {
        CFRetain(MutableCopy);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      v3 = MutableCopy;
LABEL_7:
      v5 = _FigSetCoverageFilePathPattern(a1, v3);
      if (!MutableCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    _FigEnsureReadyToCollectIncrementalCoverageData_cold_2(&v12);
    v5 = v12;
    if (MutableCopy)
    {
LABEL_8:
      CFRelease(MutableCopy);
      v3 = theString;
    }
  }

LABEL_9:
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t _FigSetCoverageFilePathPattern(uint64_t a1, CFStringRef theString)
{
  v2 = a1;
  v11 = 0;
  if (!a1)
  {
    _FigSetCoverageFilePathPattern_cold_5(&v12);
LABEL_21:
    v9 = v12;
    goto LABEL_15;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    _FigSetCoverageFilePathPattern_cold_4(&v12);
LABEL_19:
    v2 = 0;
    goto LABEL_21;
  }

  if (!*(a1 + 24))
  {
    _FigSetCoverageFilePathPattern_cold_3(&v12);
    goto LABEL_19;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(theString, 0x8000100u, &v11);
  v6 = v3(CStringPtrAndBufferToFree);
  v2 = v2[3](v6);
  if (!v2)
  {
    _FigSetCoverageFilePathPattern_cold_2(&v12);
    goto LABEL_21;
  }

  if (qword_1ED4CC3B8 != -1)
  {
    _FigSetCoverageFilePathPattern_cold_1();
  }

  FigSimpleMutexLock(qword_1ED4CC3B0);
  v7 = _MergedGlobals_3;
  _MergedGlobals_3 = theString;
  if (theString)
  {
    CFRetain(theString);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (theString)
  {
    v8 = CFStringFind(theString, @"%c", 4uLL).location != -1;
  }

  else
  {
    v8 = 0;
  }

  getCodeCoverageGlobals_sFigCodeCoverageGlobals_1 = v8;
  FigSimpleMutexUnlock(qword_1ED4CC3B0);
  v9 = 0;
LABEL_15:
  free(v2);
  free(v11);
  return v9;
}

uint64_t FigCodeCoverageCollectionIsUsingContinousMode()
{
  if (qword_1ED4CC3B8 != -1)
  {
    FigCodeCoverageCollectionIsUsingContinousMode_cold_1();
  }

  FigSimpleMutexLock(qword_1ED4CC3B0);
  v0 = getCodeCoverageGlobals_sFigCodeCoverageGlobals_1;
  FigSimpleMutexUnlock(qword_1ED4CC3B0);
  return v0;
}

uint64_t __getCodeCoverageGlobals_block_invoke()
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  _MergedGlobals_3 = 0;
  qword_1ED4CC3B0 = result;
  getCodeCoverageGlobals_sFigCodeCoverageGlobals_1 = 0;
  return result;
}

void FigCVBufferSetAttachment(CVBufferRef buffer, CFStringRef key, CFTypeRef value, CVAttachmentMode attachmentMode)
{
  if (value)
  {
    CVBufferSetAttachment(buffer, key, value, attachmentMode);
  }

  else
  {
    CVBufferRemoveAttachment(buffer, key);
  }
}

uint64_t FigEndpointManagerCopyEndpointForID(const void *a1, uint64_t a2, CFTypeRef cf, CFTypeRef *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFStringGetTypeID()))
  {

    return managerUtil_copyEndpointMatchingPropertyValue(a1, a2, @"ID", cf, a4);
  }

  else
  {
    FigEndpointManagerCopyEndpointForID_cold_1(&v10);
    return v10;
  }
}

uint64_t FigEndpointManagerCopyEndpointForName(const void *a1, uint64_t a2, CFTypeRef cf, CFTypeRef *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFStringGetTypeID()))
  {

    return managerUtil_copyEndpointMatchingPropertyValue(a1, a2, @"Name", cf, a4);
  }

  else
  {
    FigEndpointManagerCopyEndpointForName_cold_1(&v10);
    return v10;
  }
}

__CFArray *FigEndpointManagerCopyMatchingEndpoints(uint64_t a1, unsigned int (*a2)(const void *, uint64_t), uint64_t a3)
{
  theArray = 0;
  v5 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, @"AvailableEndpoints", v5, &theArray);
  }

  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v13 = ValueAtIndex;
        if (!a2 || a2(ValueAtIndex, a3))
        {
          CFArrayAppendValue(Mutable, v13);
        }
      }
    }
  }

  if (Mutable && !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return Mutable;
}

uint64_t FigEndpointUtility_CopyMatchingEndpointEntities(const __CFArray *a1, unsigned int (*a2)(const void *, uint64_t), uint64_t a3, unsigned int (*a4)(const void *, uint64_t), uint64_t a5, unsigned int (*a6)(const void *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, __CFArray **a9, __CFArray **a10, void *a11)
{
  v12 = a10;
  v11 = a11;
  v13 = a9;
  v48 = 0;
  if (!a1 || (!a9 ? (v14 = a10 == 0) : (v14 = 0), v14 ? (v15 = a11 == 0) : (v15 = 0), v15))
  {
    v24 = 0;
    v25 = 0;
    Mutable = 0;
    v48 = -16720;
    if (!a9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  Count = CFArrayGetCount(a1);
  v23 = MEMORY[0x1E695E480];
  v44 = Count;
  if (a9)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    if (a10)
    {
      goto LABEL_11;
    }

LABEL_21:
    v43 = 0;
    if (a11)
    {
      goto LABEL_12;
    }

LABEL_22:
    v24 = 0;
    goto LABEL_23;
  }

  Mutable = 0;
  if (!a10)
  {
    goto LABEL_21;
  }

LABEL_11:
  v43 = CFArrayCreateMutable(*v23, 0, MEMORY[0x1E695E9C0]);
  if (!a11)
  {
    goto LABEL_22;
  }

LABEL_12:
  v24 = CFArrayCreateMutable(*v23, 0, MEMORY[0x1E695E9C0]);
LABEL_23:
  v13 = a9;
  if (v44 < 1)
  {
    goto LABEL_42;
  }

  v27 = 0;
  v28 = 0;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  do
  {
    if (!a2 || (v29 = CFArrayGetValueAtIndex(a1, v27), a2(v29, a3)))
    {
      if (v43 | v24)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v27);
        v31 = FigEndpointManagerCopyMatchingEndpoints(ValueAtIndex, a4, a5);
        if (!v31)
        {
          goto LABEL_40;
        }

        v32 = v31;
        v33 = CFArrayGetCount(v31);
        if (v33 >= 1)
        {
          v34 = v33;
          for (i = 0; i != v34; ++i)
          {
            v36 = CFArrayGetValueAtIndex(v32, i);
            if (v24)
            {
              v37 = FigEndpointUtility_CopyMatchingStreamsFromEndpoint(v36, a6, a7, a8);
              if (v37)
              {
                v38 = v37;
                v49.length = CFArrayGetCount(v37);
                v49.location = 0;
                CFArrayAppendArray(v24, v38, v49);
                CFRelease(v38);
              }
            }
          }
        }

        if (v43)
        {
          v50.length = CFArrayGetCount(v32);
          v50.location = 0;
          CFArrayAppendArray(v43, v32, v50);
        }

        CFRelease(v32);
        a4 = v41;
        a5 = v42;
        a3 = v40;
      }

      if (Mutable)
      {
        v39 = CFArrayGetValueAtIndex(a1, v27);
        CFArrayAppendValue(Mutable, v39);
      }
    }

LABEL_40:
    v27 = ++v28;
  }

  while (v44 > v28);
  v12 = a10;
  v11 = a11;
  v13 = a9;
LABEL_42:
  v25 = v43;
  if (v13)
  {
LABEL_14:
    *v13 = Mutable;
  }

LABEL_15:
  if (v12)
  {
    *v12 = v25;
  }

  if (v11)
  {
    *v11 = v24;
  }

  return v48;
}

uint64_t FigEndpointUtility_EndpointManagerPredicate_IsEndpointManagerOfType(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, @"Name", *MEMORY[0x1E695E480], &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = FigCFEqual(v5, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void CMSetAttachment(CMAttachmentBearerRef target, CFStringRef key, CFTypeRef value, CMAttachmentMode attachmentMode)
{
  v7 = *&attachmentMode;
  if (target)
  {
    v11 = CFGetTypeID(target);
    AttachmentBearerCallbacksWithTypeID = FigRuntimeGetAttachmentBearerCallbacksWithTypeID(v11);
    if (key)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = v6;
    v14 = 221;
    goto LABEL_7;
  }

  AttachmentBearerCallbacksWithTypeID = 0;
  if (!key)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 >= 2)
  {
    v13 = v6;
    v14 = 226;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", v14, v13, v4, v5);
    return;
  }

  if (AttachmentBearerCallbacksWithTypeID)
  {
    v15 = *(AttachmentBearerCallbacksWithTypeID + 1);

    v15(target, key, value, v7);
  }
}

CFTypeRef CMGetAttachment(CMAttachmentBearerRef target, CFStringRef key, CMAttachmentMode *attachmentModeOut)
{
  if (!target)
  {
    if (key)
    {
      return 0;
    }

LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 0xF0, v5, v3, v4);
    return 0;
  }

  v9 = CFGetTypeID(target);
  AttachmentBearerCallbacksWithTypeID = FigRuntimeGetAttachmentBearerCallbacksWithTypeID(v9);
  if (!key)
  {
    goto LABEL_8;
  }

  if (!AttachmentBearerCallbacksWithTypeID)
  {
    return 0;
  }

  v11 = *(AttachmentBearerCallbacksWithTypeID + 2);

  return v11(target, key, attachmentModeOut);
}

void CMRemoveAttachment(CMAttachmentBearerRef target, CFStringRef key)
{
  if (target)
  {
    v7 = CFGetTypeID(target);
    AttachmentBearerCallbacksWithTypeID = FigRuntimeGetAttachmentBearerCallbacksWithTypeID(v7);
    if (key)
    {
      if (AttachmentBearerCallbacksWithTypeID)
      {
        v9 = *(AttachmentBearerCallbacksWithTypeID + 3);

        v9(target, key);
      }

      return;
    }
  }

  else if (key)
  {
    return;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 0x100, v4, v2, v3);
}

void CMRemoveAllAttachments(CMAttachmentBearerRef target)
{
  if (target)
  {
    v2 = CFGetTypeID(target);
    AttachmentBearerCallbacksWithTypeID = FigRuntimeGetAttachmentBearerCallbacksWithTypeID(v2);
    if (AttachmentBearerCallbacksWithTypeID)
    {
      v4 = *(AttachmentBearerCallbacksWithTypeID + 4);

      v4(target);
    }
  }
}

CFDictionaryRef CMCopyDictionaryOfAttachments(CFAllocatorRef allocator, CMAttachmentBearerRef target, CMAttachmentMode attachmentMode)
{
  v6 = *&attachmentMode;
  if (!target)
  {
    if (attachmentMode < 2)
    {
      return 0;
    }

LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 0x117, v5, v3, v4);
    return 0;
  }

  v9 = CFGetTypeID(target);
  AttachmentBearerCallbacksWithTypeID = FigRuntimeGetAttachmentBearerCallbacksWithTypeID(v9);
  if (v6 > 1)
  {
    goto LABEL_8;
  }

  if (!AttachmentBearerCallbacksWithTypeID)
  {
    return 0;
  }

  v11 = *(AttachmentBearerCallbacksWithTypeID + 5);

  return v11(allocator, target, v6);
}

void CMSetAttachments(CMAttachmentBearerRef target, CFDictionaryRef theAttachments, CMAttachmentMode attachmentMode)
{
  if (target)
  {
    v6 = CFGetTypeID(target);
    AttachmentBearerCallbacksWithTypeID = FigRuntimeGetAttachmentBearerCallbacksWithTypeID(v6);
    if (AttachmentBearerCallbacksWithTypeID)
    {
      context[1] = AttachmentBearerCallbacksWithTypeID;
      context[0] = target;
      context[2] = attachmentMode;
      CFDictionaryApplyFunction(theAttachments, figSetOneAttachment, context);
    }
  }
}

void CMPropagateAttachments(CMAttachmentBearerRef source, CMAttachmentBearerRef destination)
{
  v3 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], source, 1u);
  if (v3)
  {
    v4 = v3;
    CMSetAttachments(destination, v3, 1u);

    CFRelease(v4);
  }
}

CFMutableDictionaryRef figAttachmentsMakeAttachmentBearerRegistrationDictionary()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  sFigAttachmentBearerCallbacksPerTypeID = result;
  if (!result)
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, "(Fig)", 0x6D, v0, v2, v3);
  }

  return result;
}

void figAttachmentsRegisterInternalBearers()
{
  FigThreadRunOnce(&sFigAttachmentsEnsureAttachmentBearerRegistrationDictionaryOnce, figAttachmentsMakeAttachmentBearerRegistrationDictionary);
  FigAttachmentsRegisterBlockBuffer();
  FigAttachmentsRegisterSampleBuffer();

  FigAttachmentsRegisterCVBuffer();
}

void FigAttachmentsRegisterBlockBuffer()
{
  FigThreadRunOnce(&sRegisterFigBlockBufferTypeOnce, RegisterFigBlockBufferType);
  v0 = sFigBlockBufferID;

  FigRuntimeRegisterAttachmentBearerWithTypeID(sFigBlockBufferAttachmentBearerCallbacks, v0);
}

OSStatus CMBlockBufferCreateEmpty(CFAllocatorRef structureAllocator, uint32_t subBlockCapacity, CMBlockBufferFlags flags, CMBlockBufferRef *blockBufferOut)
{
  if (blockBufferOut)
  {
    if (subBlockCapacity + 1 > 2)
    {
      v8 = subBlockCapacity + 1;
    }

    else
    {
      v8 = 2;
    }

    FigThreadRunOnce(&sRegisterFigBlockBufferTypeOnce, RegisterFigBlockBufferType);
    Instance = _CFRuntimeCreateInstance();
    v12 = Instance;
    if (Instance)
    {
      *(Instance + 36) = v8;
      bzero((Instance + 48), 48 * v8);
      result = 0;
    }

    else
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE64uLL, "(Fig)", 0x44B, v6, v10, v11);
    }

    *blockBufferOut = v12;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", 0x450, v6, v4, v5);
  }

  return result;
}

OSStatus CMBlockBufferAppendMemoryBlock(CMBlockBufferRef theBuffer, void *memoryBlock, size_t blockLength, CFAllocatorRef blockAllocator, const CMBlockBufferCustomBlockSource *customBlockSource, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags)
{
  if (!theBuffer)
  {
    v12 = v8;
    v13 = 4294954591;
    v14 = 1119;
    goto LABEL_10;
  }

  if (!blockLength || !dataLength)
  {
    v12 = v8;
    v13 = 4294954592;
    v14 = 1121;
    goto LABEL_10;
  }

  if (offsetToData >= blockLength)
  {
    v12 = v8;
    v13 = 4294954593;
    v14 = 1123;
    goto LABEL_10;
  }

  if (dataLength + offsetToData > blockLength)
  {
    v12 = v8;
    v13 = 4294954592;
    v14 = 1125;
LABEL_10:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v13, "(Fig)", v14, v12);
  }

  if (__CFADD__(*(theBuffer + 5), blockLength))
  {
    v12 = v8;
    v13 = 4294954592;
    v14 = 1129;
    goto LABEL_10;
  }

  v17 = flags;
  Default = blockAllocator;
  v20 = memoryBlock;
  if (customBlockSource)
  {
    if (customBlockSource->version)
    {
      v12 = v8;
      v13 = 4294954594;
      v14 = 1142;
      goto LABEL_10;
    }

    if (memoryBlock)
    {
      if (!customBlockSource->FreeBlock)
      {
        v12 = v8;
        v13 = 4294954594;
        v14 = 1146;
        goto LABEL_10;
      }
    }

    else if (!customBlockSource->AllocateBlock)
    {
      v12 = v8;
      v13 = 4294954594;
      v14 = 1144;
      goto LABEL_10;
    }

    v22 = CFGetAllocator(theBuffer);
    v23 = MEMORY[0x19A8D7200](v22, 28, 0x1080040FF9416B0, 0);
    if (!v23)
    {
      v12 = v8;
      v13 = 4294954596;
      v14 = 1153;
      goto LABEL_10;
    }

    v21 = v23;
    v24 = *&customBlockSource->version;
    *(v23 + 12) = *&customBlockSource->FreeBlock;
    *v23 = v24;
  }

  else if (blockAllocator)
  {
    v21 = 0;
    if (!memoryBlock && *MEMORY[0x1E695E498] == blockAllocator)
    {
      v12 = v8;
      v13 = 4294954595;
      v14 = 1138;
      goto LABEL_10;
    }
  }

  else
  {
    Default = CFAllocatorGetDefault();
    v21 = 0;
  }

  if (v20)
  {
    goto LABEL_33;
  }

  if ((v17 & 1) == 0)
  {
    v20 = 0;
LABEL_33:
    v25 = 0;
    v26 = 0;
    goto LABEL_34;
  }

  if (v21)
  {
    v33 = (*(v21 + 4))(*(v21 + 20), blockLength);
    if (!v33)
    {
      v35 = CFGetAllocator(theBuffer);
      CFAllocatorDeallocate(v35, v21);
      v12 = v8;
      v13 = 4294954595;
      v14 = 1172;
      goto LABEL_10;
    }

    v20 = v33;
    v25 = 0;
    v26 = v33;
  }

  else
  {
    v34 = MEMORY[0x19A8D7200](Default, blockLength, 2809664540, 0);
    if (!v34)
    {
      v12 = v8;
      v13 = 4294954595;
      v14 = 1164;
      goto LABEL_10;
    }

    v20 = v34;
    v26 = 0;
    v25 = v34;
  }

LABEL_34:
  v36 = 0;
  v27 = NewBufferSubBlock(theBuffer, dataLength, &v36);
  if (v27)
  {
    v28 = v27;
    if (v25)
    {
      CFAllocatorDeallocate(Default, v25);
    }

    else if (v26)
    {
      (customBlockSource->FreeBlock)(customBlockSource->refCon, v26, blockLength);
    }

    if (v21)
    {
      v32 = CFGetAllocator(theBuffer);
      CFAllocatorDeallocate(v32, v21);
    }
  }

  else
  {
    v29 = v36;
    *(v36 + 8) = offsetToData;
    *(v29 + 24) = v20;
    *(v29 + 32) = blockLength;
    if (v21)
    {
      v28 = 0;
      *(v29 + 40) = v21;
      v30 = v20 == 0;
      v31 = 4;
    }

    else
    {
      *(v29 + 40) = Default;
      CFRetain(Default);
      v28 = 0;
      v30 = v20 == 0;
      v31 = 2;
    }

    if (!v30)
    {
      ++v31;
    }

    *v29 = v31;
  }

  return v28;
}

size_t CMBlockBufferGetDataLength(size_t theBuffer)
{
  if (theBuffer)
  {
    return *(theBuffer + 40);
  }

  return theBuffer;
}

OSStatus CMBlockBufferCreateWithMemoryBlock(CFAllocatorRef structureAllocator, void *memoryBlock, size_t blockLength, CFAllocatorRef blockAllocator, const CMBlockBufferCustomBlockSource *customBlockSource, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *blockBufferOut)
{
  if (blockBufferOut)
  {
    theBuffer = 0;
    appended = CMBlockBufferCreateEmpty(structureAllocator, 0, blockLength, &theBuffer);
    v18 = theBuffer;
    if (!appended)
    {
      appended = CMBlockBufferAppendMemoryBlock(theBuffer, memoryBlock, blockLength, blockAllocator, customBlockSource, offsetToData, dataLength, flags);
      v18 = theBuffer;
      if (appended)
      {
        CFRelease(theBuffer);
        v18 = 0;
      }
    }

    *blockBufferOut = v18;
    return appended;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", 0x4D5, v9, dataLength, *&flags);
  }
}

OSStatus CMBlockBufferAppendBufferReference(CMBlockBufferRef theBuffer, CMBlockBufferRef targetBBuf, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags)
{
  if (!theBuffer || !targetBBuf)
  {
    v9 = v7;
    v10 = 4294954591;
    v11 = 1349;
    goto LABEL_21;
  }

  v8 = *(targetBBuf + 5);
  if (!v8)
  {
    if ((flags & 8) == 0)
    {
      v9 = v7;
      v10 = 4294954590;
      v11 = 1367;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v8 <= offsetToData)
  {
    v9 = v7;
    v10 = 4294954593;
    v11 = 1358;
    goto LABEL_21;
  }

  if (dataLength + offsetToData > v8)
  {
    v9 = v7;
    v10 = 4294954592;
    v11 = 1360;
LABEL_21:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v10, "(Fig)", v11, v9, v5, v6);
  }

  if (!dataLength)
  {
    dataLength = v8 - offsetToData;
LABEL_13:
    if (!dataLength)
    {
      v9 = v7;
      v10 = 4294954592;
      v11 = 1406;
      goto LABEL_21;
    }
  }

  v13 = 0;
  if (__CFADD__(*(theBuffer + 5), dataLength))
  {
    v9 = v7;
    v10 = 4294954592;
    v11 = 1376;
    goto LABEL_21;
  }

  v14[1] = theBuffer;
  v14[2] = dataLength;
  v14[0] = targetBBuf;
  if (v8 < dataLength + offsetToData)
  {
    if ((flags & 8) != 0)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if ((flags & 4) == 0)
  {
    FindDataReference(v14, targetBBuf, offsetToData, dataLength, &v13);
    return 0;
  }

LABEL_27:

  return AppendBufferReferenceSubBlock(theBuffer, targetBBuf, offsetToData, dataLength);
}

OSStatus CMBlockBufferCreateWithBufferReference(CFAllocatorRef structureAllocator, CMBlockBufferRef bufferReference, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *blockBufferOut)
{
  if (blockBufferOut)
  {
    blockBufferOuta = 0;
    appended = CMBlockBufferCreateEmpty(structureAllocator, 0, offsetToData, &blockBufferOuta);
    v15 = blockBufferOuta;
    if (!appended)
    {
      appended = CMBlockBufferAppendBufferReference(blockBufferOuta, bufferReference, offsetToData, dataLength, flags);
      v15 = blockBufferOuta;
      if (appended)
      {
        CFRelease(blockBufferOuta);
        v15 = 0;
      }
    }

    *blockBufferOut = v15;
    return appended;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", 0x599, v8, v6, v7);
  }
}

OSStatus CMBlockBufferGetDataPointer(CMBlockBufferRef theBuffer, size_t offset, size_t *lengthAtOffsetOut, size_t *totalLengthOut, char **dataPointerOut)
{
  v22 = 0;
  lengthAtOffsetOuta = 0;
  if (theBuffer)
  {
    v12 = *(theBuffer + 8);
    if (v12 < 1)
    {
LABEL_6:
      result = 0;
      goto LABEL_7;
    }

    v14 = 0;
    v15 = (theBuffer + 72);
    while (1)
    {
      v16 = *(v15 - 1) + v14;
      if (v16 > offset)
      {
        break;
      }

      v15 += 6;
      v14 = v16;
      if (!--v12)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    v20 = *(v15 - 6);
    if (v20 <= 2)
    {
      if (v20 == 1)
      {
        result = CMBlockBufferGetDataPointer(*v15, *(v15 - 2) + offset - v14, &lengthAtOffsetOuta, 0, &v22);
        if (!result)
        {
          v21 = *(v15 - 1) + v14 - offset;
          if (lengthAtOffsetOuta < v21)
          {
            v21 = lengthAtOffsetOuta;
          }

          lengthAtOffsetOuta = v21;
        }

        goto LABEL_7;
      }

      if (v20 != 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v20 == 5)
      {
LABEL_26:
        result = 0;
        lengthAtOffsetOuta = v16 - offset;
        v22 = *(v15 - 2) + *v15 + offset - v14;
        goto LABEL_7;
      }

      if (v20 != 4)
      {
        if (v20 == 3)
        {
          goto LABEL_26;
        }

LABEL_7:
        v18 = v22;
        if (v22)
        {
          v19 = 0;
        }

        else
        {
          v19 = result == 0;
        }

        if (v19)
        {
          result = -12703;
        }

        if (lengthAtOffsetOut)
        {
          *lengthAtOffsetOut = lengthAtOffsetOuta;
        }

        if (totalLengthOut)
        {
          *totalLengthOut = *(theBuffer + 5);
        }

        if (dataPointerOut)
        {
          *dataPointerOut = v18;
        }

        return result;
      }
    }

    result = -12707;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", 0x5C7, v7, v5, v6);
}

size_t FigBlockBufferGetDataPointerAndOrigin(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4, unint64_t *a5, void *a6, unint64_t *a7, CMBlockBufferRef *a8)
{
  v25 = 0;
  v26 = 0;
  if (a1)
  {
    if (a6)
    {
      if (a7)
      {
        v13 = *(a1 + 32);
        if (v13 < 1)
        {
LABEL_8:
          LODWORD(result) = 0;
          goto LABEL_9;
        }

        v15 = 0;
        v16 = (a1 + 72);
        while (1)
        {
          v17 = *(v16 - 1) + v15;
          if (v17 > a2)
          {
            break;
          }

          v16 += 6;
          v15 = v17;
          if (!--v13)
          {
            goto LABEL_8;
          }
        }

        LODWORD(result) = 0;
        v23 = *(v16 - 6);
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            LODWORD(result) = FigBlockBufferGetDataPointerAndOrigin(*v16, a2 - v15 + *(v16 - 2), &v26, 0, &v25);
            if (!result)
            {
              v24 = v15 - a2 + *(v16 - 1);
              if (v26 < v24)
              {
                v24 = v26;
              }

              v26 = v24;
            }

            goto LABEL_9;
          }

          if (v23 != 2)
          {
            goto LABEL_9;
          }
        }

        else
        {
          if (v23 == 5)
          {
LABEL_32:
            LODWORD(result) = 0;
            *a6 = a1;
            *a7 = a2;
            v26 = v17 - a2;
            v25 = *v16 + *(v16 - 2) + a2 - v15;
            goto LABEL_9;
          }

          if (v23 != 4)
          {
            if (v23 == 3)
            {
              goto LABEL_32;
            }

LABEL_9:
            v19 = v25;
            if (v25)
            {
              v20 = 0;
            }

            else
            {
              v20 = result == 0;
            }

            if (v20)
            {
              result = 4294954593;
            }

            else
            {
              result = result;
            }

            if (a3)
            {
              *a3 = v26;
            }

            if (a4)
            {
              *a4 = *(a1 + 40);
            }

            if (a5)
            {
              *a5 = v19;
            }

            return result;
          }
        }

        LODWORD(result) = -12707;
        goto LABEL_9;
      }

      v21 = v8;
      v22 = 1567;
    }

    else
    {
      v21 = v8;
      v22 = 1565;
    }
  }

  else
  {
    v21 = v8;
    v22 = 1563;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", v22, v21, a7, a8);
}

OSStatus CMBlockBufferCopyDataBytes(CMBlockBufferRef theSourceBuffer, size_t offsetToData, size_t dataLength, void *destination)
{
  if (!theSourceBuffer || (v7 = destination) == 0)
  {
    v12 = v6;
    v13 = 4294954591;
    v14 = 1724;
    goto LABEL_12;
  }

  v8 = dataLength;
  if (!dataLength)
  {
    v12 = v6;
    v13 = 4294954592;
    v14 = 1726;
    goto LABEL_12;
  }

  v10 = *(theSourceBuffer + 5);
  if (!v10)
  {
    v12 = v6;
    v13 = 4294954590;
    v14 = 1740;
    goto LABEL_12;
  }

  v11 = offsetToData;
  if (v10 <= offsetToData)
  {
    v12 = v6;
    v13 = 4294954593;
    v14 = 1734;
    goto LABEL_12;
  }

  if (dataLength + offsetToData > v10)
  {
    v12 = v6;
    v13 = 4294954592;
    v14 = 1736;
LABEL_12:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v13, "(Fig)", v14, v12, v4, v5);
  }

  if (dataLength + offsetToData < offsetToData)
  {
    v12 = v6;
    v13 = 4294954592;
    v14 = 1738;
    goto LABEL_12;
  }

  v17 = 0;
  lengthAtOffsetOut = 0;
  while (1)
  {
    result = CMBlockBufferGetDataPointer(theSourceBuffer, v11, &lengthAtOffsetOut, 0, &v17);
    if (result)
    {
      break;
    }

    if (v8 >= lengthAtOffsetOut)
    {
      v16 = lengthAtOffsetOut;
    }

    else
    {
      v16 = v8;
    }

    memcpy(v7, v17, v16);
    v11 += v16;
    v7 += v16;
    v8 -= v16;
    if (!v8)
    {
      return 0;
    }
  }

  return result;
}

OSStatus CMBlockBufferReplaceDataBytes(const void *sourceBytes, CMBlockBufferRef destinationBuffer, size_t offsetIntoDestination, size_t dataLength)
{
  if (!sourceBytes || !destinationBuffer)
  {
    v11 = v6;
    v12 = 4294954591;
    v13 = 1782;
    goto LABEL_12;
  }

  v8 = dataLength;
  if (!dataLength)
  {
    v11 = v6;
    v12 = 4294954592;
    v13 = 1784;
    goto LABEL_12;
  }

  v9 = *(destinationBuffer + 5);
  if (!v9)
  {
    v11 = v6;
    v12 = 4294954590;
    v13 = 1796;
    goto LABEL_12;
  }

  v10 = offsetIntoDestination;
  if (v9 <= offsetIntoDestination)
  {
    v11 = v6;
    v12 = 4294954593;
    v13 = 1792;
    goto LABEL_12;
  }

  if (dataLength + offsetIntoDestination > v9)
  {
    v11 = v6;
    v12 = 4294954592;
    v13 = 1794;
LABEL_12:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v12, "(Fig)", v13, v11, v4, v5);
  }

  v15 = sourceBytes;
  v17 = 0;
  lengthAtOffsetOut = 0;
  while (1)
  {
    result = CMBlockBufferGetDataPointer(destinationBuffer, v10, &lengthAtOffsetOut, 0, &v17);
    if (result == -12707)
    {
      result = CMBlockBufferAssureBlockMemory(destinationBuffer);
      if (result)
      {
        return result;
      }

      result = CMBlockBufferGetDataPointer(destinationBuffer, v10, &lengthAtOffsetOut, 0, &v17);
    }

    if (result)
    {
      break;
    }

    if (v8 >= lengthAtOffsetOut)
    {
      v16 = lengthAtOffsetOut;
    }

    else
    {
      v16 = v8;
    }

    memcpy(v17, v15, v16);
    v10 += v16;
    v15 += v16;
    v8 -= v16;
    if (!v8)
    {
      return 0;
    }
  }

  return result;
}

OSStatus CMBlockBufferAssureBlockMemory(CMBlockBufferRef theBuffer)
{
  if (!theBuffer)
  {
    v18 = v3;
    v19 = 4294954591;
    v20 = 1959;
LABEL_24:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v19, "(Fig)", v20, v18, v1, v2);
  }

  v5 = *(theBuffer + 8);
  if (!v5)
  {
    v18 = v3;
    v19 = 4294954590;
    v20 = 2017;
    goto LABEL_24;
  }

  if (v5 >= 1)
  {
    v6 = (theBuffer + 88);
    v7 = 1;
    while (1)
    {
      v8 = *(v6 - 10);
      switch(v8)
      {
        case 4:
          v13 = (*(*v6 + 4))(*(*v6 + 20), *(v6 - 1));
          *(v6 - 2) = v13;
          if (!v13)
          {
            v14 = v3;
            v15 = 2004;
            goto LABEL_16;
          }

          result = 0;
          *(v6 - 10) = 5;
          break;
        case 2:
          v10 = MEMORY[0x19A8D7200](*v6, *(v6 - 1), 4193430791, 0);
          *(v6 - 2) = v10;
          if (!v10)
          {
            v14 = v3;
            v15 = 1986;
LABEL_16:
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE63uLL, "(Fig)", v15, v14, v11, v12);
            break;
          }

          result = 0;
          *(v6 - 10) = 3;
          break;
        case 1:
          result = CMBlockBufferAssureBlockMemory(*(v6 - 2));
          break;
        default:
          result = 0;
          break;
      }

      v6 += 6;
      if (v7++ >= *(theBuffer + 8) || result != 0)
      {
        return result;
      }
    }
  }

  return 0;
}

OSStatus CMBlockBufferFillDataBytes(char fillByte, CMBlockBufferRef destinationBuffer, size_t offsetIntoDestination, size_t dataLength)
{
  if (!destinationBuffer)
  {
    v10 = v6;
    v11 = 4294954591;
    v12 = 1842;
    goto LABEL_11;
  }

  if ((dataLength & 0x8000000000000000) != 0)
  {
    v10 = v6;
    v11 = 4294954592;
    v12 = 1844;
    goto LABEL_11;
  }

  v8 = *(destinationBuffer + 5);
  if (!v8)
  {
    v10 = v6;
    v11 = 4294954590;
    v12 = 1856;
    goto LABEL_11;
  }

  v9 = offsetIntoDestination;
  if (v8 <= offsetIntoDestination)
  {
    v10 = v6;
    v11 = 4294954593;
    v12 = 1852;
    goto LABEL_11;
  }

  if (dataLength + offsetIntoDestination > v8)
  {
    v10 = v6;
    v11 = 4294954592;
    v12 = 1854;
LABEL_11:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v11, "(Fig)", v12, v10, v4, v5);
  }

  v14 = fillByte;
  v17 = 0;
  lengthAtOffsetOut = 0;
  if (dataLength)
  {
    v15 = dataLength;
  }

  else
  {
    v15 = v8 - offsetIntoDestination;
  }

  while (1)
  {
    result = CMBlockBufferGetDataPointer(destinationBuffer, v9, &lengthAtOffsetOut, 0, &v17);
    if (result == -12707)
    {
      result = CMBlockBufferAssureBlockMemory(destinationBuffer);
      if (result)
      {
        return result;
      }

      result = CMBlockBufferGetDataPointer(destinationBuffer, v9, &lengthAtOffsetOut, 0, &v17);
    }

    if (result)
    {
      break;
    }

    if (v15 >= lengthAtOffsetOut)
    {
      v16 = lengthAtOffsetOut;
    }

    else
    {
      v16 = v15;
    }

    memset(v17, v14, v16);
    v9 += v16;
    v15 -= v16;
    if (!v15)
    {
      return 0;
    }
  }

  return result;
}

OSStatus CMBlockBufferAccessDataBytes(CMBlockBufferRef theBuffer, size_t offset, size_t length, void *temporaryBlock, char **returnedPointerOut)
{
  if (theBuffer && temporaryBlock && returnedPointerOut)
  {
    if (length)
    {
      v24 = 0;
      lengthAtOffsetOut = 0;
      result = CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, &v24);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = v24;
        v18 = lengthAtOffsetOut;
        v19 = length - lengthAtOffsetOut;
        if (length <= lengthAtOffsetOut)
        {
          result = 0;
        }

        else
        {
          memcpy(temporaryBlock, v24, lengthAtOffsetOut);
          v20 = v18 + offset;
          v21 = temporaryBlock + v18;
          do
          {
            DataPointer = CMBlockBufferGetDataPointer(theBuffer, v20, &lengthAtOffsetOut, 0, &v24);
            if (DataPointer)
            {
              break;
            }

            v23 = v19 >= lengthAtOffsetOut ? lengthAtOffsetOut : v19;
            memcpy(v21, v24, v23);
            v20 += v23;
            v21 += v23;
            v19 -= v23;
          }

          while (v19);
          if (v19)
          {
            result = -12704;
          }

          else
          {
            result = DataPointer;
          }

          if (v19)
          {
            v14 = 0;
          }

          else
          {
            v14 = temporaryBlock;
          }
        }
      }

      *returnedPointerOut = v14;
      return result;
    }

    v15 = v7;
    v16 = 4294954592;
    v17 = 1903;
  }

  else
  {
    v15 = v7;
    v16 = 4294954591;
    v17 = 1901;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v16, "(Fig)", v17, v15, v5, v6);
}

OSStatus CMBlockBufferCreateContiguous(CFAllocatorRef structureAllocator, CMBlockBufferRef sourceBuffer, CFAllocatorRef blockAllocator, const CMBlockBufferCustomBlockSource *customBlockSource, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *blockBufferOut)
{
  if (!sourceBuffer || !blockBufferOut)
  {
    v13 = v8;
    v14 = 4294954591;
    v15 = 2054;
    goto LABEL_10;
  }

  if (!*(sourceBuffer + 8))
  {
    v13 = v8;
    v14 = 4294954590;
    v15 = 2056;
    goto LABEL_10;
  }

  v12 = *(sourceBuffer + 5);
  if (v12 <= offsetToData)
  {
    v13 = v8;
    v14 = 4294954593;
    v15 = 2063;
    goto LABEL_10;
  }

  if (dataLength + offsetToData > v12)
  {
    v13 = v8;
    v14 = 4294954592;
    v15 = 2065;
LABEL_10:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v14, "(Fig)", v15, v13, flags, blockBufferOut);
  }

  theBuffer = 0;
  if (dataLength)
  {
    v21 = dataLength;
  }

  else
  {
    v21 = v12 - offsetToData;
  }

  if ((flags & 2) == 0)
  {
    lengthAtOffsetOut = 0;
    if (!CMBlockBufferGetDataPointer(sourceBuffer, offsetToData, &lengthAtOffsetOut, 0, 0) && lengthAtOffsetOut >= v21)
    {
      return CMBlockBufferCreateWithBufferReference(structureAllocator, sourceBuffer, offsetToData, v21, flags, blockBufferOut);
    }
  }

  v22 = CMBlockBufferCreateWithMemoryBlock(structureAllocator, 0, v21, blockAllocator, customBlockSource, 0, v21, flags | 1, &theBuffer);
  v23 = theBuffer;
  if (!v22)
  {
    lengthAtOffsetOut = 0;
    CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &lengthAtOffsetOut);
    v22 = CMBlockBufferCopyDataBytes(sourceBuffer, offsetToData, v21, lengthAtOffsetOut);
    v23 = theBuffer;
    if (v22)
    {
      CFRelease(theBuffer);
      v23 = 0;
    }
  }

  *blockBufferOut = v23;
  return v22;
}

Boolean CMBlockBufferIsRangeContiguous(CMBlockBufferRef theBuffer, size_t offset, size_t length)
{
  if (!theBuffer)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5FuLL, "(Fig)", 0x847, v5, v3, v4);
    return 0;
  }

  v7 = *(theBuffer + 5);
  v8 = v7 - offset;
  if (v7 <= offset || length + offset > v7)
  {
    return 0;
  }

  lengthAtOffsetOut = 0;
  if (CMBlockBufferGetDataPointer(theBuffer, offset, &lengthAtOffsetOut, 0, 0))
  {
    return 0;
  }

  if (length)
  {
    v10 = length;
  }

  else
  {
    v10 = v8;
  }

  return lengthAtOffsetOut >= v10;
}

CMBlockBufferRef FigBlockBufferCloneForSwiftOverlay(size_t *bufferReference, uint64_t a2, CMBlockBufferFlags a3)
{
  blockBufferOut = 0;
  if (bufferReference && *(bufferReference + 8))
  {
    CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], bufferReference, 0, bufferReference[5], 0, &blockBufferOut);
  }

  else
  {
    CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, a3, &blockBufferOut);
  }

  return blockBufferOut;
}

uint64_t FigBlockBufferImpliedIndicesForSwiftOverlay(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return *(a1 + 56);
  }

  if (*(a1 + 32) == 1 && *(a1 + 48) == 1)
  {
    return FigBlockBufferImpliedIndicesForSwiftOverlay(*(a1 + 72)) + *(a1 + 56);
  }

  return 0;
}

uint64_t FigBlockBufferEnumerateBlocksForSwiftOverlay(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    v21 = 2239;
LABEL_26:
    FigBlockBufferEnumerateBlocksForSwiftOverlay_cold_1(v21, &v22, a3, a4, a5, a6, a7, a8);
    return v22;
  }

  if (!a4)
  {
    v21 = 2240;
    goto LABEL_26;
  }

  if (*(a1 + 32) >= 1)
  {
    v11 = 0;
    result = 0;
    v13 = 0;
    v14 = a3 + a2;
    for (i = (a1 + 72); ; i += 6)
    {
      if (v13 >= v14 || result)
      {
        return result;
      }

      v16 = *(i - 1);
      v17 = v16 + v13;
      if (v16 + v13 <= a2)
      {
        result = 0;
      }

      else
      {
        result = 0;
        v18 = a2 >= v13;
        v19 = a2 - v13;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = *(i - 6);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
            result = FigBlockBufferEnumerateBlocksForSwiftOverlay(*i, *(i - 2) + v19, v16 - v19, a4);
            goto LABEL_19;
          }

          if (v20 == 2)
          {
LABEL_18:
            result = (*(a4 + 16))(a4, 0, v16 - v19);
          }
        }

        else
        {
          switch(v20)
          {
            case 5:
              goto LABEL_14;
            case 4:
              goto LABEL_18;
            case 3:
LABEL_14:
              result = (*(a4 + 16))(a4, *i + *(i - 2) + v19, v16 - v19);
              break;
          }
        }
      }

LABEL_19:
      ++v11;
      v13 = v17;
      if (v11 >= *(a1 + 32))
      {
        return result;
      }
    }
  }

  return 0;
}

BOOL __FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay_block_invoke_2(uint64_t a1, NSObject *a2, int a3, void *memoryBlock, size_t blockLength)
{
  customBlockSource.version = 0;
  customBlockSource.AllocateBlock = 0;
  customBlockSource.FreeBlock = sBufFreeDispatchDataRegionBlock;
  customBlockSource.refCon = a2;
  *(*(*(a1 + 32) + 8) + 24) = CMBlockBufferAppendMemoryBlock(**(a1 + 40), memoryBlock, blockLength, 0, &customBlockSource, 0, blockLength, 0);
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    dispatch_retain(a2);
  }

  return v7 == 0;
}

__CFString *BBufCopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  AppendBBufDescription(Mutable, a1, 0, 0);
  return Mutable;
}

void AppendBBufDescription(__CFString *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (4 * a3);
  if (!a4)
  {
    v9 = *(a2 + 40);
    v10 = CFGetRetainCount(a2);
    v11 = CFGetAllocator(a2);
    CFStringAppendFormat(a1, 0, @"%*sCMBlockBuffer %p totalDataLength: %ld retainCount: %ld allocator: %p subBlockCapacity: %d\n", v8, "", a2, v9, v10, v11, *(a2 + 36));
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = *(a2 + 16 + 8 * v12);
      if (v15)
      {
        context = a1;
        v31 = a3;
        v32 = v12;
        CFDictionaryApplyFunction(v15, DescribeBBufAnnotation, &context);
      }

      v13 = 0;
      v12 = 1;
    }

    while ((v14 & 1) != 0);
  }

  if (*(a2 + 32) >= 1)
  {
    v16 = 0;
    for (i = (a2 + 88); ; i += 6)
    {
      v18 = (*(a2 + 36) - 1);
      if (v16 == v18)
      {
        break;
      }

      CFStringAppendFormat(a1, 0, @"%*s [%d] ", v8, "", v16 + (v18 * a4));
      CFStringAppendFormat(a1, 0, @"%ld bytes @ offset %ld ", *(i - 3), *(i - 4));
      v23 = *(i - 10);
      if (v23 > 2)
      {
        switch(v23)
        {
          case 3:
            CFStringAppendFormat(a1, 0, @"Memory Block %p, %ld bytes (allocator %p)\n", *(i - 2), *(i - 1), *i, v27, v28, v29);
            break;
          case 4:
            CFStringAppendFormat(a1, 0, @"Memory UNALLOCATED, %ld bytes (custom V=%d A=%p F=%p R=%p)\n", *(i - 1), **i, *(*i + 1), *(*i + 3), *(*i + 5), v29);
            break;
          case 5:
            CFStringAppendFormat(a1, 0, @"Memory Block %p, %ld bytes (custom V=%d A=%p F=%p R=%p)\n", *(i - 2), *(i - 1), **i, *(*i + 1), *(*i + 3), *(*i + 5));
            break;
          default:
LABEL_22:
            v24 = a1;
            v25 = @"UNKNOWN STATE!!!\n";
            goto LABEL_23;
        }
      }

      else
      {
        if (!v23)
        {
          v24 = a1;
          v25 = @"UNUSED!!!\n";
LABEL_23:
          CFStringAppend(v24, v25);
          goto LABEL_26;
        }

        if (v23 == 1)
        {
          CFStringAppend(a1, @"Buffer Reference:\n");
          v19 = *(i - 2);
          v22 = (a3 + 1);
          v21 = a1;
          v20 = 0;
          goto LABEL_10;
        }

        if (v23 != 2)
        {
          goto LABEL_22;
        }

        CFStringAppendFormat(a1, 0, @"Memory UNALLOCATED, %ld bytes (allocator %p)\n", *(i - 1), *i, v26, v27, v28, v29);
      }

LABEL_26:
      if (++v16 >= *(a2 + 32))
      {
        return;
      }
    }

    v19 = *(i - 2);
    v20 = (a4 + 1);
    v21 = a1;
    v22 = a3;
LABEL_10:
    AppendBBufDescription(v21, v19, v22, v20);
    goto LABEL_26;
  }
}

void DescribeBBufAnnotation(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  *buffer = 1061109567;
  CFStringGetCString(a1, buffer, 200, 0x8000100u);
  if (*(a3 + 12) == 1)
  {
    v5 = "(P)";
  }

  else
  {
    v5 = "   ";
  }

  CFStringAppendFormat(*a3, 0, @"%*s %-10s%s = %@\n", (4 * *(a3 + 8)), "", buffer, v5, a2);
}

void BBufSetAttachment(char *cf, void *key, void *value, int a4)
{
  v7 = 1 - a4;
  v8 = cf + 16;
  Mutable = *&cf[8 * a4 + 16];
  if (Mutable || (v11 = CFGetAllocator(cf), Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]), (*&v8[8 * a4] = Mutable) != 0))
  {
    if (value)
    {
      CFDictionarySetValue(Mutable, key, value);
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, key);
    }
  }

  v12 = *&v8[8 * v7];
  if (v12)
  {

    CFDictionaryRemoveValue(v12, key);
  }
}

const void *BBufGetAttachment(uint64_t a1, void *key, _DWORD *a3)
{
  v5 = 0;
  v6 = a1 + 16;
  for (i = 1; ; i = 0)
  {
    v8 = i;
    v9 = *(v6 + 8 * v5);
    if (v9)
    {
      result = CFDictionaryGetValue(v9, key);
      if (result)
      {
        break;
      }
    }

    v5 = 1;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

void BBufRemoveAttachment(uint64_t a1, void *key)
{
  v3 = 0;
  v4 = a1 + 16;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(v4 + 8 * v3);
    if (v7)
    {
      CFDictionaryRemoveValue(v7, key);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
}

void BBufRemoveAllAttachments(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 16;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = *(v2 + 8 * v1);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 8 * v1) = 0;
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
}

CFDictionaryRef BBufCopyDictionaryOfAttachments(const __CFAllocator *a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8 * a3 + 16);
  if (v3)
  {
    return CFDictionaryCreateCopy(a1, v3);
  }

  else
  {
    return 0;
  }
}

uint64_t RegisterFigCaptionTextOutlineType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionTextOutlineID = result;
  return result;
}

uint64_t FigCaptionTextOutlineCreate(uint64_t a1, uint64_t a2, uint64_t a3, CGColor *a4, void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a5)
  {
    FigThreadRunOnce(&sRegisterFigCaptionTextOutlineTypeOnce, RegisterFigCaptionTextOutlineType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v20 = Instance;
      v21 = CGColorRetain(a4);
      result = 0;
      v20[3] = a3;
      v20[4] = v21;
      v20[2] = a2;
      *a5 = v20;
    }

    else
    {
      FigCaptionTextOutlineCreate_cold_1(0, v13, v14, v15, v16, v17, v18, v19);
      return 0;
    }
  }

  else
  {
    FigCaptionTextOutlineCreate_cold_2(&v23, a2, a3, a4, 0, a6, a7, a8);
    return v23;
  }

  return result;
}

uint64_t FigCaptionTextOutlineCreateNone(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a2)
  {
    FigThreadRunOnce(&sRegisterFigCaptionTextOutlineTypeOnce, RegisterFigCaptionTextOutlineType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v17 = Instance;
      result = 0;
      *(v17 + 32) = 0;
      *(v17 + 16) = kFigGeometryDimensionZero;
      *a2 = v17;
    }

    else
    {
      FigCaptionTextOutlineCreateNone_cold_1(0, v10, v11, v12, v13, v14, v15, v16);
      return 0;
    }
  }

  else
  {
    FigCaptionTextOutlineCreateNone_cold_2(&v19, 0, a3, a4, a5, a6, a7, a8);
    return v19;
  }

  return result;
}

void *fcto_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_4(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, RegisterFigCaptionTextOutlineType);
}

uint64_t FigVirtualCaptureCardCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigVirtualCaptureCardCreate_block_invoke;
  block[3] = &unk_1E749CD00;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  if (FigVirtualCaptureCardCreate_sFigEndpointVirtualCaptureCardRemoteClientSetupOnce != -1)
  {
    dispatch_once(&FigVirtualCaptureCardCreate_sFigEndpointVirtualCaptureCardRemoteClientSetupOnce, block);
  }

  v4 = FigVirtualCaptureCardCreate_sVirtualCaptureCardSingleton;
  if (FigVirtualCaptureCardCreate_sVirtualCaptureCardSingleton)
  {
    v4 = CFRetain(FigVirtualCaptureCardCreate_sVirtualCaptureCardSingleton);
  }

  *a3 = v4;
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

size_t __FigVirtualCaptureCardCreate_block_invoke(uint64_t a1)
{
  FigVirtualCaptureCardInitializeFilesystemPaths();
  result = FigVirtualCaptureCardCreateInternal(*(a1 + 40), &FigVirtualCaptureCardCreate_sVirtualCaptureCardSingleton);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

size_t FigVirtualCaptureCardCreateInternal(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  sVCCEnableCrashRecovery = 1;
  if (!a2)
  {
    FigVirtualCaptureCardCreateInternal_cold_2(&v31);
LABEL_30:
    st_dev = v31.st_dev;
    goto LABEL_13;
  }

  ClassID = FigVirtualCaptureCardGetClassID();
  v10 = CMDerivedObjectCreate(a1, &kFigVirtualCaptureCardVTable, ClassID, &cf, v6, v7, v8, v9);
  if (v10)
  {
    st_dev = v10;
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  if (!DerivedStorage)
  {
    FigVirtualCaptureCardCreateInternal_cold_1(&v31);
    goto LABEL_30;
  }

  v12 = DerivedStorage;
  v13 = FigSimpleMutexCreate();
  *v12 = v13;
  if (!v13)
  {
    st_dev = 0;
    v20 = cf;
LABEL_17:
    *a2 = v20;
    return st_dev;
  }

  v14 = sVCCPreallocationFile;
  v12[2] = sVCCPreallocationFile;
  v12[3] = 0;
  v12[1] = vcc_StatFileCapacity(v14);
  v15 = cf;
  v16 = CMBaseObjectGetDerivedStorage(cf);
  if (*(v16 + 24))
  {
    v18 = 0;
    st_dev = 4294950080;
    goto LABEL_9;
  }

  v17 = v16;
  memset(&v31, 0, sizeof(v31));
  if (lstat(sVCCPreallocationSaveToSymlinkCString, &v31))
  {
    goto LABEL_7;
  }

  v22 = readlink(sVCCPreallocationSaveToSymlinkCString, &v31, 0x400uLL);
  if ((v22 - 1024) < 0xFFFFFFFFFFFFFC01)
  {
    v18 = 0;
    st_dev = 4294950078;
    goto LABEL_9;
  }

  v23 = v22;
  *(&v31.st_dev + v22) = 0;
  if (!FigFileDoesFileExist(*(v17 + 16)))
  {
    goto LABEL_7;
  }

  *(v17 + 8) = vcc_StatFileCapacity(*(v17 + 16));
  memset(&v30, 0, 40);
  st_dev = FigFileGetFileInfo(*(v17 + 16), &v30);
  if (st_dev)
  {
    v18 = 0;
    goto LABEL_9;
  }

  if (*&v30.st_dev <= 0)
  {
LABEL_7:
    v18 = 0;
  }

  else
  {
    v18 = CFURLCreateFromFileSystemRepresentation(0, &v31, v23, 0);
    if (FigFileDoesFileExist(v18))
    {
      goto LABEL_9;
    }

    if (v18)
    {
      *(v17 + 24) = v18;
      CFRetain(v18);
      v24 = FigVirtualCaptureCard_SaveCapture(v15);
      if (v24)
      {
        v25 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Unable to recover preallocated file data %@ due to FigVirtualCaptureCard_SaveCapture err: %d", v15, v24);
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        st_dev = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCBEuLL, "<<< FigVirtualCaptureCard >>>", 0x1D8, v2, v27, v28);
        CFRelease(v25);
        goto LABEL_9;
      }
    }
  }

  st_dev = 0;
LABEL_9:
  memset(&v30, 0, sizeof(v30));
  if (!lstat(sVCCPreallocationSaveToSymlinkCString, &v30))
  {
    st_dev = FigFileDeleteFile(sVCCPreallocationSaveToSymlink);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_13:
  v20 = cf;
  if (st_dev && cf)
  {
    CFRelease(cf);
    v20 = 0;
  }

  if (a2)
  {
    goto LABEL_17;
  }

  return st_dev;
}

uint64_t FigVirtualCaptureCardGetSingleton(uint64_t a1, void *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __FigVirtualCaptureCardGetSingleton_block_invoke;
  v5[3] = &unk_1E749CD28;
  v5[4] = &v6;
  v5[5] = a1;
  if (FigVirtualCaptureCardGetSingleton_sFigEndpointVirtualCaptureCardRemoteClientSetupOnce != -1)
  {
    dispatch_once(&FigVirtualCaptureCardGetSingleton_sFigEndpointVirtualCaptureCardRemoteClientSetupOnce, v5);
  }

  *a2 = FigVirtualCaptureCardGetSingleton_sVirtualCaptureCardSingleton;
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

size_t __FigVirtualCaptureCardGetSingleton_block_invoke(uint64_t a1)
{
  FigVirtualCaptureCardInitializeFilesystemPaths();
  result = FigVirtualCaptureCardCreateInternal(0, &FigVirtualCaptureCardGetSingleton_sVirtualCaptureCardSingleton);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFTypeRef FigVirtualCaptureCardInitializeFilesystemPaths()
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v27, 0, sizeof(v27));
  v26 = 0;
  v1 = getuid();
  if (getpwuid_r(v1, &v27, v28, 0x400uLL, &v26) || !v26)
  {
    v2 = *MEMORY[0x1E695E480];
    v14 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Failed to get user home dir with getpwuid_r()");
    v15 = 586;
    goto LABEL_8;
  }

  if (!v27.pw_dir)
  {
LABEL_10:
    v13 = CFURLCreateWithString(0, @"/var/mobile/Library/VirtualCaptureCard", 0);
    goto LABEL_11;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v27.pw_dir, 0x600u);
  if (!v3)
  {
    v14 = CFStringCreateWithFormat(v2, 0, @"Failed to create user homedir from string %s", v27.pw_dir);
    v15 = 579;
LABEL_8:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCBEuLL, "<<< FigVirtualCaptureCard >>>", v15, v0, v17, v18);
    CFRelease(v14);
    if (v19)
    {
      v20 = CFStringCreateWithFormat(v2, 0, @"Unable to get storage directory");
      v21 = 604;
LABEL_13:
      v22 = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFBCBEuLL, "<<< FigVirtualCaptureCard >>>", v21, v0, v23, v24);
      CFRelease(v20);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v4 = v3;
  v5 = CFURLCreateWithString(0, v3, 0);
  CFRelease(v4);
  v13 = CFURLCreateWithString(0, @"/var/mobile/Library/VirtualCaptureCard", 0);
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_11:
  if (FigCFURLCreateDirectory(v13, v6, v7, v8, v9, v10, v11, v12))
  {
    v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Unable to create preallocation directory at path %@", v13);
    v21 = 616;
    goto LABEL_13;
  }

  sVCCPreallocationFile = CFURLCreateWithString(0, @"/var/mobile/Library/VirtualCaptureCard/43D8CBBD-2797-497D-8CAC-93D1952C83AE.virtual_capture_card", 0);
  sVCCPreallocationSaveToSymlink = CFURLCreateWithString(0, @"/var/mobile/Library/VirtualCaptureCard/43D8CBBD-2797-497D-8CAC-93D1952C83AE.virtual_capture_card_target", 0);
  if (v13)
  {
    CFRelease(v13);
  }

  if (!CFURLGetFileSystemRepresentation(sVCCPreallocationFile, 1u, sVCCPreallocationFileCString, 1024))
  {
    v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Preallocation file path %@ is invalid", sVCCPreallocationFile);
    v21 = 625;
    goto LABEL_13;
  }

  if (!CFURLGetFileSystemRepresentation(sVCCPreallocationSaveToSymlink, 1u, sVCCPreallocationSaveToSymlinkCString, 1024))
  {
    v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Preallocation target file path %@ is invalid", sVCCPreallocationSaveToSymlink);
    v21 = 630;
    goto LABEL_13;
  }

LABEL_14:
  if (sVCCPreallocationFile)
  {
    CFRetain(sVCCPreallocationFile);
  }

  result = sVCCPreallocationSaveToSymlink;
  if (sVCCPreallocationSaveToSymlink)
  {
    return CFRetain(sVCCPreallocationSaveToSymlink);
  }

  return result;
}

blkcnt_t vcc_StatFileCapacity(const __CFURL *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return 0;
  }

  memset(&v2, 0, sizeof(v2));
  if (stat(buffer, &v2) == -1)
  {
    return 0;
  }

  else
  {
    return v2.st_blocks << 9;
  }
}

size_t FigVirtualCaptureCard_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  result = FigSimpleMutexDestroy(*DerivedStorage);
  *DerivedStorage = 0;
  return result;
}

__CFString *FigVirtualCaptureCard_CopyDebugDescription(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!CFURLGetFileSystemRepresentation(*(DerivedStorage + 24), 1u, buffer, 1024))
  {
    strcpy(buffer, "N/A");
  }

  CFStringAppendFormat(Mutable, 0, @"<FigFigVirtualCaptureCard %p> capacity: %lld, preallocatedFileURLh %@, saveToFileURL: %s", a1, *(DerivedStorage + 8), *(DerivedStorage + 16), buffer);
  FigSimpleMutexUnlock(*DerivedStorage);
  return Mutable;
}

size_t FigVirtualCaptureCard_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (!a2)
  {
    FigVirtualCaptureCard_CopyProperty_cold_2(v18);
LABEL_21:
    v13 = LODWORD(v18[0]);
    goto LABEL_17;
  }

  if (!a4)
  {
    FigVirtualCaptureCard_CopyProperty_cold_1(v18);
    goto LABEL_21;
  }

  *a4 = 0;
  if (CFEqual(a2, @"FigVirtualCaptureCardProperty_Capacity"))
  {
    *&v18[0] = vcc_StatFileCapacity(*(DerivedStorage + 16));
LABEL_15:
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v18);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"FigVirtualCaptureCardProperty_FreeSpace"))
  {
    v9 = *(DerivedStorage + 8);
    v8 = *(DerivedStorage + 16);
    if (FigFileDoesFileExist(v8))
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      FileInfo = FigFileGetFileInfo(v8, v18);
      v11 = 0;
      if (v9 >= 1 && !FileInfo)
      {
        v11 = (v9 - *&v18[0]) & ~((v9 - *&v18[0]) >> 63);
      }
    }

    else
    {
      v11 = 0;
    }

    *&v18[0] = v11;
    goto LABEL_15;
  }

  if (!CFEqual(a2, @"FigVirtualCaptureCardProperty_PreallocatedStorageFileURL"))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCC5uLL, "<<< FigVirtualCaptureCard >>>", 0xA9, v4, v16, v17);
    goto LABEL_17;
  }

  v12 = *(DerivedStorage + 16);
  if (v12)
  {
    v12 = CFRetain(v12);
  }

LABEL_16:
  v13 = 0;
  *a4 = v12;
LABEL_17:
  FigSimpleMutexUnlock(*DerivedStorage);
  return v13;
}

size_t FigVirtualCaptureCard_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (!a2)
  {
    FigVirtualCaptureCard_SetProperty_cold_4(&v15);
LABEL_13:
    v10 = v15;
    goto LABEL_8;
  }

  if (!a3)
  {
    FigVirtualCaptureCard_SetProperty_cold_3(&v15);
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"FigVirtualCaptureCardProperty_Capacity"))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCC5uLL, "<<< FigVirtualCaptureCard >>>", 0xC4, v3, v12, v13);
    goto LABEL_8;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CFNumberGetTypeID())
  {
    FigVirtualCaptureCard_SetProperty_cold_1(&v15);
    goto LABEL_13;
  }

  SInt64 = FigCFNumberGetSInt64(a3);
  if (vcc_FigVirtualCaptureCardPreallocateCapacity(a1, SInt64))
  {
    FigVirtualCaptureCard_SetProperty_cold_2(&v15);
    goto LABEL_13;
  }

  v10 = 0;
  *(DerivedStorage + 8) = SInt64;
LABEL_8:
  FigSimpleMutexUnlock(*DerivedStorage);
  return v10;
}

size_t vcc_FigVirtualCaptureCardPreallocateCapacity(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = (DerivedStorage + 2);
  v5 = DerivedStorage[2];
  if (!v5)
  {
    vcc_FigVirtualCaptureCardPreallocateCapacity_cold_3(&v20);
    v15 = v20;
    goto LABEL_11;
  }

  if (DerivedStorage[3])
  {
    vcc_FigVirtualCaptureCardPreallocateCapacity_cold_1(&v18);
    v15 = v18;
    goto LABEL_11;
  }

  if (a2)
  {
    if (FigFileDoesFileExist(v5))
    {
      vcc_FigVirtualCaptureCardPreallocateCapacity_cold_2(v6, a2, &v19);
      v15 = v19;
      goto LABEL_11;
    }

    PreallocFile = APFSCaptureCreatePreallocFile();
    if (!PreallocFile)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"APFSCaptureCreatePreallocFile failed: path %@, err %d, capacity %lld", *v6, PreallocFile, a2);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = v2;
    v13 = 552;
  }

  else
  {
    v14 = APFSCaptureDeletePreallocFile();
    if (!v14)
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_12;
    }

    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"APFSCaptureDeletePreallocFile failed for : path %@, err %d", *v6, v14);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = v2;
    v13 = 502;
  }

  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCC2uLL, "<<< FigVirtualCaptureCard >>>", v13, v12, v10, v11);
  CFRelease(v8);
LABEL_11:
  v16 = vcc_StatFileCapacity(*v6);
LABEL_12:
  DerivedStorage[1] = v16;
  return v15;
}

size_t FigVirtualCaptureCard_ReserveForCaptureToFile(uint64_t a1, const __CFURL *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (!*(DerivedStorage + 16))
  {
    FigVirtualCaptureCard_ReserveForCaptureToFile_cold_4(&v17);
LABEL_21:
    st_dev = v17.st_dev;
    goto LABEL_11;
  }

  if (*(DerivedStorage + 24))
  {
    FigVirtualCaptureCard_ReserveForCaptureToFile_cold_1(&v17);
    goto LABEL_21;
  }

  if (!a2)
  {
    FigVirtualCaptureCard_ReserveForCaptureToFile_cold_3(&v17);
    goto LABEL_21;
  }

  if (sVCCEnableCrashRecovery == 1)
  {
    memset(&v17, 0, sizeof(v17));
    if (!lstat(sVCCPreallocationSaveToSymlinkCString, &v17))
    {
      FigVirtualCaptureCard_ReserveForCaptureToFile_cold_2(&v17);
      goto LABEL_21;
    }
  }

  if (!CFURLGetFileSystemRepresentation(a2, 1u, &v17, 1024))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Save to file path %@ is invalid", a2);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = v2;
    v11 = 235;
    goto LABEL_10;
  }

  started = APFSCaptureStartCaptureInFile();
  if (started)
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"APFSCaptureStartCaptureInFile err %d", started);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = v2;
    v11 = 241;
LABEL_10:
    st_dev = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCBEuLL, "<<< FigVirtualCaptureCard >>>", v11, v10, v8, v9);
    CFRelease(v6);
    goto LABEL_11;
  }

  if (sVCCEnableCrashRecovery == 1 && symlink(&v17, sVCCPreallocationSaveToSymlinkCString))
  {
    v14 = __error();
    v15 = *MEMORY[0x1E695E480];
    v16 = strerror(*v14);
    v6 = CFStringCreateWithFormat(v15, 0, @"symlink failed for: %s -> %s, err: %s", sVCCPreallocationSaveToSymlinkCString, &v17, v16);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v10 = v2;
    v11 = 251;
    goto LABEL_10;
  }

  st_dev = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a2;
  CFRetain(a2);
  if (st_dev)
  {
    CFRelease(st_dev);
    st_dev = 0;
  }

LABEL_11:
  FigSimpleMutexUnlock(*DerivedStorage);
  return st_dev;
}

size_t FigVirtualCaptureCard_SaveCapture(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  if (!*(DerivedStorage + 16))
  {
    FigVirtualCaptureCard_SaveCapture_cold_3(&v26);
    goto LABEL_23;
  }

  v4 = *(DerivedStorage + 24);
  if (!v4)
  {
    FigVirtualCaptureCard_SaveCapture_cold_2(&v26);
    goto LABEL_23;
  }

  if (sVCCEnableCrashRecovery == 1)
  {
    memset(&v26, 0, sizeof(v26));
    if (!lstat(sVCCPreallocationSaveToSymlinkCString, &v26))
    {
      v4 = *(DerivedStorage + 24);
      goto LABEL_6;
    }

    FigVirtualCaptureCard_SaveCapture_cold_1(&v26);
LABEL_23:
    st_dev = v26.st_dev;
    goto LABEL_11;
  }

LABEL_6:
  if (!CFURLGetFileSystemRepresentation(v4, 1u, &v26, 1024))
  {
    v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Save to file path %@ is invalid", *(DerivedStorage + 24));
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = v1;
    v16 = 4294950078;
    v17 = 279;
    goto LABEL_10;
  }

  v5 = APFSCaptureFinishCaptureForFile();
  if (v5)
  {
    v6 = v5;
    v7 = __error();
    v8 = *v7;
    v9 = *MEMORY[0x1E695E480];
    v10 = strerror(*v7);
    v11 = CFStringCreateWithFormat(v9, 0, @"APFSCaptureFinishCaptureForFile failed with err = 0x%08x, errno = 0x%08x, strerror = %s", v6, v8, v10);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = v1;
    v16 = 4294950077;
    v17 = 286;
LABEL_10:
    st_dev = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v16, "<<< FigVirtualCaptureCard >>>", v17, v15, v13, v14);
    CFRelease(v11);
    goto LABEL_11;
  }

  if (sVCCEnableCrashRecovery == 1 && FigFileDeleteFile(sVCCPreallocationSaveToSymlink))
  {
    v21 = __error();
    v22 = *v21;
    v23 = *MEMORY[0x1E695E480];
    v24 = strerror(*v21);
    v11 = CFStringCreateWithFormat(v23, 0, @"FigFileDeleteFile failed for %s, errno 0x%08x, strerror = %s", &sVCCPreallocationFileCString, v22, v24);
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = v1;
    v16 = 4294950078;
    v17 = 295;
    goto LABEL_10;
  }

  v25 = *(DerivedStorage + 24);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 24) = 0;
  }

  vcc_FigVirtualCaptureCardPreallocateCapacity(a1, *(DerivedStorage + 8));
  st_dev = 0;
LABEL_11:
  v19 = *(DerivedStorage + 24);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 24) = 0;
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  return st_dev;
}

size_t FigFoundationCreateHardLink(uint64_t a1, const __CFURL *a2)
{
  v11 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (FigFileDoesFileExist(a2) || ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE22uLL, "<FigFoundationUtilities>", 0x71, v2, v8, v9);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

CFTypeRef FigCFStringCreateWithBytesWithUnknownEncoding(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3, void *a4, uint64_t *a5, uint64_t a6)
{
  cf = 0;
  v12 = objc_autoreleasePoolPush();
  if (!a2 && a3)
  {
    FigCFStringCreateWithBytesWithUnknownEncoding_cold_11();
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    FigCFStringCreateWithBytesWithUnknownEncoding_cold_10();
    goto LABEL_36;
  }

  if (a4)
  {
    v13 = CFGetTypeID(a4);
    if (v13 != CFDictionaryGetTypeID())
    {
      FigCFStringCreateWithBytesWithUnknownEncoding_cold_1();
      goto LABEL_36;
    }
  }

  if (a3)
  {
    v14 = a2;
    while ((*v14 & 0x80000000) == 0)
    {
      if (++v14 >= &a2[a3])
      {
        goto LABEL_10;
      }
    }

    v17 = CFDataCreate(a1, a2, a3);
    if (!v17)
    {
      FigCFStringCreateWithBytesWithUnknownEncoding_cold_9();
      goto LABEL_36;
    }

    v15 = v17;
    if (a4)
    {
      if ([a4 objectForKey:*MEMORY[0x1E696A8E0]])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          FigCFStringCreateWithBytesWithUnknownEncoding_cold_2();
          goto LABEL_35;
        }
      }

      if ([a4 objectForKey:*MEMORY[0x1E696A8C0]])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          FigCFStringCreateWithBytesWithUnknownEncoding_cold_3();
          goto LABEL_35;
        }
      }

      v18 = [a4 objectForKey:*MEMORY[0x1E696A8E8]];
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          FigCFStringCreateWithBytesWithUnknownEncoding_cold_4();
          goto LABEL_35;
        }
      }

      v19 = [a4 objectForKey:*MEMORY[0x1E696A8F0]];
      if (v19)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          FigCFStringCreateWithBytesWithUnknownEncoding_cold_5();
          goto LABEL_35;
        }
      }

      if (![v19 BOOLValue] || objc_msgSend(v18, "count") >= 2)
      {
        if ([a4 objectForKey:*MEMORY[0x1E696A8D0]])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            FigCFStringCreateWithBytesWithUnknownEncoding_cold_6();
            goto LABEL_35;
          }
        }

        if ([a4 objectForKey:*MEMORY[0x1E696A8D8]])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            FigCFStringCreateWithBytesWithUnknownEncoding_cold_7();
            goto LABEL_35;
          }
        }

        if ([a4 objectForKey:*MEMORY[0x1E696A8C8]])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            FigCFStringCreateWithBytesWithUnknownEncoding_cold_8();
            goto LABEL_35;
          }
        }
      }
    }

    v20 = [MEMORY[0x1E696AEC0] stringEncodingForData:v15 encodingOptions:a4 convertedString:&cf usedLossyConversion:a6];
    if (cf)
    {
      cf = CFRetain(cf);
      *a5 = CFStringConvertNSStringEncodingToEncoding(v20);
LABEL_35:
      CFRelease(v15);
      goto LABEL_36;
    }
  }

  else
  {
LABEL_10:
    v15 = 0;
  }

  cf = CFStringCreateWithBytes(a1, a2, a3, 0x8000100u, 1u);
  v16 = 0xFFFFFFFFLL;
  if (cf)
  {
    v16 = 134217984;
  }

  *a5 = v16;
  if (v15)
  {
    goto LABEL_35;
  }

LABEL_36:
  objc_autoreleasePoolPop(v12);
  return cf;
}

void FigExecuteBlockWithAutoreleasePool(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(a1 + 16))(a1);

  objc_autoreleasePoolPop(v2);
}

const CMBufferCallbacks *CMBufferQueueGetCallbacksForUnsortedSampleBuffers(void)
{
  result = &gFigBufferQueueCallbacksForUnsortedSampleBuffers;
  unk_1EAF1AD0C = sbufGetDecodeTimeStamp;
  unk_1EAF1AD14 = sbufGetPresentationTimeStamp;
  unk_1EAF1AD1C = sbufGetDuration;
  unk_1EAF1AD24 = sbufDataIsReady;
  unk_1EAF1AD34 = @"FigSampleBufferDataBecameReady";
  unk_1EAF1AD3C = sbufGetTotalSampleSize;
  return result;
}

void *FigBufferQueueGetCallbacksForUnsortedSampleBuffersWithOutputDuration()
{
  result = &gCMBufferQueueCallbacksForUnsortedSampleBuffersWithOutputDuration;
  unk_1EAF1AD50 = sbufGetDecodeTimeStamp;
  unk_1EAF1AD58 = sbufGetPresentationTimeStamp;
  unk_1EAF1AD60 = sbufGetOutputDuration;
  unk_1EAF1AD68 = sbufDataIsReady;
  unk_1EAF1AD78 = @"FigSampleBufferDataBecameReady";
  unk_1EAF1AD80 = sbufGetTotalSampleSize;
  return result;
}

const CMBufferCallbacks *CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS(void)
{
  result = &gCMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS;
  unk_1EAF1AD94 = sbufGetDecodeTimeStamp;
  unk_1EAF1AD9C = sbufGetPresentationTimeStamp;
  unk_1EAF1ADA4 = sbufGetDuration;
  unk_1EAF1ADAC = sbufDataIsReady;
  unk_1EAF1ADB4 = sbufCompareOutputPTS;
  unk_1EAF1ADBC = @"FigSampleBufferDataBecameReady";
  unk_1EAF1ADC4 = sbufGetTotalSampleSize;
  return result;
}

uint64_t sbufCompareOutputPTS(opaqueCMSampleBuffer *a1, opaqueCMSampleBuffer *a2)
{
  CMSampleBufferGetOutputPresentationTimeStamp(&v7, a1);
  CMSampleBufferGetOutputPresentationTimeStamp(&v6, a2);
  time1 = v7;
  v4 = v6;
  return CMTimeCompare(&time1, &v4);
}

size_t figBufferQueueCreateWithCallbacksOrHandlers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    if (a3 | a4)
    {
      FigThreadRunOnce(&sRegisterFigBufferQueueTypeOnce, registerFigBufferQueueType);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        if (a3 && (*a3 > 1u || !*(a3 + 28)))
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v22 = v5;
          v23 = 4294954534;
          v24 = 1158;
        }

        else if (!a4 || *a4 == 1 && *(a4 + 24))
        {
          DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
          v12 = CMNotificationCenterRegisterForBarrierSupport(DefaultLocalCenter, Instance);
          if (v12)
          {
            v13 = v12;
LABEL_21:
            CFRelease(Instance);
            Instance = 0;
            goto LABEL_22;
          }

          if (a3)
          {
            *(Instance + 48) = *a3;
            *(Instance + 52) = *(a3 + 4);
            *(Instance + 60) = *(a3 + 12);
            *(Instance + 68) = *(a3 + 20);
            *(Instance + 76) = *(a3 + 28);
            *(Instance + 84) = *(a3 + 36);
            *(Instance + 92) = *(a3 + 44);
            v26 = *(a3 + 52);
            if (v26)
            {
              v26 = CFRetain(v26);
            }

            *(Instance + 100) = v26;
            if (*a3)
            {
              *(Instance + 108) = *(a3 + 60);
            }

            *(Instance + 120) = 1;
          }

          if (a4)
          {
            *(Instance + 48) = *a4;
            *(Instance + 56) = _Block_copy(*(a4 + 8));
            *(Instance + 64) = _Block_copy(*(a4 + 16));
            *(Instance + 72) = _Block_copy(*(a4 + 24));
            *(Instance + 80) = _Block_copy(*(a4 + 32));
            *(Instance + 88) = _Block_copy(*(a4 + 40));
            v27 = *(a4 + 48);
            if (v27)
            {
              v27 = CFRetain(v27);
            }

            *(Instance + 96) = v27;
            *(Instance + 104) = _Block_copy(*(a4 + 56));
          }

          v28 = FigReentrantMutexCreate();
          *(Instance + 16) = v28;
          if (v28)
          {
            CMTimeMake(&v33, 0, 1);
            *(Instance + 124) = v33;
            *(Instance + 152) = 0;
            *(Instance + 40) = a2;
            if (!a2)
            {
LABEL_39:
              v13 = 0;
              *(Instance + 216) = *&kCMTimeInvalid.value;
              *(Instance + 232) = 0;
              *(Instance + 240) = *&kCMTimeZero.value;
              *(Instance + 256) = 0;
              goto LABEL_23;
            }

            v29 = CFGetAllocator(Instance);
            Mutable = CFArrayCreateMutable(v29, *(Instance + 40), MEMORY[0x1E695E9C0]);
            *(Instance + 24) = Mutable;
            if (Mutable)
            {
              v31 = CFGetAllocator(Instance);
              v32 = CFDictionaryCreateMutable(v31, *(Instance + 40), 0, MEMORY[0x1E695E9E8]);
              *(Instance + 32) = v32;
              if (v32)
              {
                goto LABEL_39;
              }

              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v22 = v5;
              v23 = 4294954536;
              v24 = 1227;
            }

            else
            {
              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v22 = v5;
              v23 = 4294954536;
              v24 = 1221;
            }
          }

          else
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v22 = v5;
            v23 = 4294954536;
            v24 = 1207;
          }
        }

        else
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v22 = v5;
          v23 = 4294954534;
          v24 = 1165;
        }
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v22 = v5;
        v23 = 4294954536;
        v24 = 1152;
      }

      v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v23, "<<< CMBufferQueue >>>", v24, v22, v20, v21);
      if (!v13)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (!Instance)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v14 = fig_log_get_emitter("com.apple.coremedia", "");
    v17 = v5;
    v18 = 1146;
  }

  else
  {
    v14 = fig_log_get_emitter("com.apple.coremedia", "");
    v17 = v5;
    v18 = 1138;
  }

  v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", v18, v17, v15, v16);
  Instance = 0;
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_22:
  if (a5)
  {
LABEL_23:
    *a5 = Instance;
  }

  return v13;
}

OSStatus CMBufferQueueEnqueue(CMBufferQueueRef queue, CMBufferRef buf)
{
  if (queue && buf)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 168))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v8 = v2;
      v9 = 4294954530;
      v10 = 1798;
LABEL_10:
      v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<< CMBufferQueue >>>", v10, v8, v6, v7);
LABEL_11:
      v16 = v15;
LABEL_12:
      FigReentrantMutexUnlock(*(queue + 2));
      return v16;
    }

    if (*(queue + 121))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v8 = v2;
      v9 = 4294954533;
      v10 = 1803;
      goto LABEL_10;
    }

    v17 = *(queue + 25);
    if (v17)
    {
      v15 = v17(queue, buf, *(queue + 26));
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v18 = *(queue + 24);
    if (v18)
    {
      v15 = (*(v18 + 16))(v18, queue, buf);
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v19 = *(queue + 3);
    if (!v19)
    {
      v26 = CFGetAllocator(queue);
      Mutable = CFArrayCreateMutable(v26, *(queue + 5), MEMORY[0x1E695E9C0]);
      *(queue + 3) = Mutable;
      if (!Mutable)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v8 = v2;
        v9 = 4294954536;
        v10 = 1825;
        goto LABEL_10;
      }

      v28 = CFGetAllocator(queue);
      v29 = CFDictionaryCreateMutable(v28, *(queue + 5), 0, MEMORY[0x1E695E9E8]);
      *(queue + 4) = v29;
      if (!v29)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v8 = v2;
        v9 = 4294954536;
        v10 = 1831;
        goto LABEL_10;
      }

      v19 = *(queue + 3);
    }

    Count = CFArrayGetCount(v19);
    v21 = Count;
    v22 = *(queue + 5);
    if (v22 && Count == v22)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v8 = v2;
      v9 = 4294954532;
      v10 = 1838;
      goto LABEL_10;
    }

    if (*(queue + 120))
    {
      if (*(queue + 92))
      {
        v23 = *(queue + 52);
        v34 = *(queue + 92);
        v35 = v23;
        v36 = 0;
        v37 = buf;
        v24 = *(queue + 3);
        v25 = figBufferQueueCallCompareCallback;
LABEL_29:
        v39.location = 0;
        v39.length = v21;
        v31 = CFArrayBSearchValues(v24, v39, buf, v25, &v34);
        if (v31 >= v21)
        {
          v32 = v21;
        }

        else
        {
          v32 = v31;
        }

        v33 = queue;
        goto LABEL_34;
      }
    }

    else
    {
      v30 = *(queue + 11);
      if (v30)
      {
        v34 = 0;
        v35 = 0;
        v36 = v30;
        v37 = buf;
        v24 = *(queue + 3);
        v25 = figBufferQueueCallCompareHandler;
        goto LABEL_29;
      }
    }

    v33 = queue;
    v32 = v21;
LABEL_34:
    bufQInsertElementAtIndex(v33, v32, buf);
    v16 = 0;
    goto LABEL_12;
  }

  v11 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x6FC, v2, v12, v13);
}

uint64_t figBufferQueueCallCompareCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*a3)(a1, a2, *(a3 + 8));
  if (!result)
  {
    v7 = *(a3 + 24);
    if (v7 == a2)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (v7 == a1)
    {
      return 1;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t figBufferQueueCallCompareHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 16) + 16))();
  if (!result)
  {
    v7 = *(a3 + 24);
    if (v7 == a2)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (v7 == a1)
    {
      return 1;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

OSStatus CMBufferQueueSetValidationCallback(CMBufferQueueRef queue, CMBufferValidationCallback callback, void *refcon)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    *(queue + 25) = callback;
    *(queue + 26) = refcon;
    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x76C, v3, v8, v9);
  }

  return 0;
}

OSStatus CMBufferQueueSetValidationHandler(CMBufferQueueRef queue, CMBufferValidationHandler handler)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    v5 = *(queue + 24);
    *(queue + 24) = _Block_copy(handler);
    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x787, v2, v7, v8);
    v5 = 0;
  }

  _Block_release(v5);
  return 0;
}

CMBufferRef CMBufferQueueDequeueAndRetain(CMBufferQueueRef queue)
{
  if (!queue)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x7A1, v1, v8, v9);
    return 0;
  }

  FigReentrantMutexLock(*(queue + 2));
  if (*(queue + 168))
  {
    v3 = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE22uLL, "<<< CMBufferQueue >>>", 0x7AB, v1, v4, v5);
  }

  else
  {
    v11 = *(queue + 3);
    if (v11 && CFArrayGetCount(v11))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), 0);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
        bufQRemoveElementAtIndex(queue, 0);
      }

      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:
  FigReentrantMutexUnlock(*(queue + 2));
  return v6;
}

CMBufferRef CMBufferQueueDequeueIfDataReadyAndRetain(CMBufferQueueRef queue)
{
  if (!queue)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x7C9, v1, v8, v9);
    return 0;
  }

  FigReentrantMutexLock(*(queue + 2));
  if (!*(queue + 168))
  {
    v11 = *(queue + 3);
    if (!v11 || !CFArrayGetCount(v11))
    {
      goto LABEL_4;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), 0);
    v6 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      goto LABEL_5;
    }

    if (*(queue + 120))
    {
      v13 = *(queue + 84);
      if (v13 && !v13(ValueAtIndex, *(queue + 52)))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v14 = *(queue + 10);
      if (v14 && !(*(v14 + 16))(v14, v6))
      {
        goto LABEL_4;
      }
    }

    CFRetain(v6);
    bufQRemoveElementAtIndex(queue, 0);
    goto LABEL_5;
  }

  v3 = fig_log_get_emitter("com.apple.coremedia", "");
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE22uLL, "<<< CMBufferQueue >>>", 0x7D3, v1, v4, v5);
LABEL_4:
  v6 = 0;
LABEL_5:
  FigReentrantMutexUnlock(*(queue + 2));
  return v6;
}

const void *FigBufferQueueDequeueIfMatchingAndRetain(uint64_t a1, const void *a2)
{
  if (!a1 || (v3 = a2) == 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x7F7, v2, v9, v10);
    return 0;
  }

  FigReentrantMutexLock(*(a1 + 16));
  if (*(a1 + 168))
  {
    v5 = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE22uLL, "<<< CMBufferQueue >>>", 0x801, v2, v6, v7);
  }

  else
  {
    v12 = *(a1 + 24);
    if (v12 && CFArrayGetCount(v12) && CFArrayGetValueAtIndex(*(a1 + 24), 0) == v3)
    {
      CFRetain(v3);
      bufQRemoveElementAtIndex(a1, 0);
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  FigReentrantMutexUnlock(*(a1 + 16));
  return v3;
}

CMBufferRef CMBufferQueueGetHead(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    v3 = *(queue + 3);
    if (v3 && CFArrayGetCount(v3))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), 0);
    }

    else
    {
      ValueAtIndex = 0;
    }

    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x81E, v1, v6, v7);
    return 0;
  }

  return ValueAtIndex;
}

CMBufferRef CMBufferQueueCopyHead(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    v3 = *(queue + 3);
    if (v3 && CFArrayGetCount(v3))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), 0);
      v5 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }
    }

    else
    {
      v5 = 0;
    }

    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x837, v1, v7, v8);
    return 0;
  }

  return v5;
}

Boolean CMBufferQueueIsEmpty(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    v3 = *(queue + 3);
    if (v3)
    {
      v4 = CFArrayGetCount(v3) == 0;
    }

    else
    {
      v4 = 1;
    }

    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x852, v1, v6, v7);
    return 1;
  }

  return v4;
}

OSStatus CMBufferQueueMarkEndOfData(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 168))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE22uLL, "<<< CMBufferQueue >>>", 0x87C, v1, v4, v5);
    }

    else
    {
      *(queue + 121) = 1;
      *(queue + 184) = 0;
      v11 = *(queue + 20);
      if (v11)
      {
        CFSetApplyFunction(v11, evaluateAndMaybeFireTrigger, queue);
      }

      v6 = 0;
    }

    FigReentrantMutexUnlock(*(queue + 2));
    return v6;
  }

  else
  {
    v7 = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x872, v1, v8, v9);
  }
}

Boolean CMBufferQueueContainsEndOfData(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    v3 = *(queue + 121);
    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x892, v1, v5, v6);
    return 1;
  }

  return v3;
}

Boolean CMBufferQueueIsAtEndOfData(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    FigReentrantMutexLock(*(queue + 2));
    v3 = *(queue + 121);
    FigReentrantMutexUnlock(*(queue + 2));
    if (v3)
    {
      LOBYTE(v3) = CMBufferQueueIsEmpty(queue) != 0;
    }

    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x8A9, v1, v5, v6);
    LOBYTE(v3) = 1;
  }

  return v3;
}

size_t resetWithCallback(uint64_t a1, void (*a2)(CFTypeRef, uint64_t), uint64_t a3)
{
  if (a1)
  {
    FigReentrantMutexLock(*(a1 + 16));
    if (*(a1 + 168))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE22uLL, "<<< CMBufferQueue >>>", 0x8CF, v3, v8, v9);
      Mutable = 0;
    }

    else
    {
      *(a1 + 121) = 0;
      v16 = *(a1 + 24);
      if (v16)
      {
        if (!a2)
        {
          Mutable = 0;
          goto LABEL_24;
        }

        v17 = CFGetAllocator(a1);
        Count = CFArrayGetCount(*(a1 + 24));
        Mutable = CFArrayCreateMutable(v17, Count, MEMORY[0x1E695E9C0]);
        while (1)
        {
          v16 = *(a1 + 24);
LABEL_24:
          if (!CFArrayGetCount(v16))
          {
            break;
          }

          if (Mutable)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 0);
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          bufQRemoveElementAtIndex(a1, 0);
        }
      }

      else
      {
        Mutable = 0;
      }

      *(a1 + 184) = 1;
      v19 = *(a1 + 160);
      if (v19)
      {
        CFSetApplyFunction(v19, evaluateAndMaybeFireTrigger, a1);
      }

      v10 = 0;
      if (a2 && Mutable)
      {
        FigReentrantMutexUnlock(*(a1 + 16));
        if (CFArrayGetCount(Mutable))
        {
          do
          {
            v20 = CFArrayGetValueAtIndex(Mutable, 0);
            v21 = CFRetain(v20);
            CFArrayRemoveValueAtIndex(Mutable, 0);
            a2(v21, a3);
            CFRelease(v21);
          }

          while (CFArrayGetCount(Mutable));
          v10 = 0;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_5;
      }
    }

    FigReentrantMutexUnlock(*(a1 + 16));
    if (!Mutable)
    {
      return v10;
    }

LABEL_5:
    CFRelease(Mutable);
    return v10;
  }

  v13 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x8C5, v3, v14, v15);
}

size_t FigBufferQueueTwoPassFilter(uint64_t a1, void (*a2)(const void *, uint64_t), uint64_t (*a3)(const void *, uint64_t), uint64_t a4)
{
  if (a1)
  {
    FigReentrantMutexLock(*(a1 + 16));
    if (*(a1 + 168))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE22uLL, "<<< CMBufferQueue >>>", 0x921, v4, v10, v11);
    }

    else
    {
      v17 = *(a1 + 24);
      if (v17)
      {
        Count = CFArrayGetCount(v17);
        v19 = Count;
        if (a2 && Count >= 1)
        {
          v20 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v20);
            a2(ValueAtIndex, a4);
            ++v20;
          }

          while (v19 != v20);
        }

        if (a3)
        {
          v22 = CFGetAllocator(a1);
          Mutable = CFArrayCreateMutable(v22, v19, MEMORY[0x1E695E9C0]);
          if (v19 >= 1)
          {
            v24 = 0;
            do
            {
              v25 = CFArrayGetValueAtIndex(*(a1 + 24), v24);
              v26 = a3(v25, a4);
              if (v26)
              {
                v27 = v26;
                if (v26 != v25)
                {
                  CFArrayAppendValue(Mutable, v25);
                  bufQRemoveElementAtIndex(a1, v24);
                  bufQInsertElementAtIndex(a1, v24, v27);
                }

                ++v24;
                CFRelease(v27);
              }

              else
              {
                CFArrayAppendValue(Mutable, v25);
                bufQRemoveElementAtIndex(a1, v24);
                --v19;
              }
            }

            while (v24 < v19);
          }

          FigReentrantMutexUnlock(*(a1 + 16));
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return 0;
        }
      }

      v12 = 0;
    }

    FigReentrantMutexUnlock(*(a1 + 16));
    return v12;
  }

  v13 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x918, v4, v14, v15);
}

CMTime *__cdecl CMBufferQueueGetMinDecodeTimeStamp(CMTime *__return_ptr retstr, CMBufferQueueRef queue)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 120))
    {
      if (!*(queue + 60))
      {
        return FigReentrantMutexUnlock(*(queue + 2));
      }
    }

    else if (!*(queue + 7))
    {
      return FigReentrantMutexUnlock(*(queue + 2));
    }

    v9 = *(queue + 3);
    if (v9 && CFArrayGetCount(v9) >= 1)
    {
      v14[3] = 0;
      v14[0] = retstr;
      v10 = figBufferQueueCallGetTimeHandler;
      if (*(queue + 120))
      {
        v10 = *(queue + 60);
        v11 = 52;
      }

      else
      {
        v11 = 56;
      }

      v12 = *(queue + v11);
      v14[1] = v10;
      v14[2] = v12;
      v13 = *(queue + 3);
      v16.length = CFArrayGetCount(v13);
      v16.location = 0;
      CFArrayApplyFunction(v13, v16, findBestTimeStamp, v14);
    }

    return FigReentrantMutexUnlock(*(queue + 2));
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x974, v2, v6, v7);
}

CMTime *__cdecl CMBufferQueueGetFirstDecodeTimeStamp(CMTime *__return_ptr retstr, CMBufferQueueRef queue)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 120))
    {
      if (!*(queue + 60))
      {
        goto LABEL_14;
      }
    }

    else if (!*(queue + 7))
    {
LABEL_14:
      v13 = *(queue + 2);

      return FigReentrantMutexUnlock(v13);
    }

    v8 = *(queue + 3);
    if (v8 && CFArrayGetCount(v8))
    {
      if (*(queue + 120))
      {
        v9 = *(queue + 60);
        ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), 0);
        v9(ValueAtIndex, *(queue + 52));
      }

      else
      {
        v11 = *(queue + 7);
        v12 = CFArrayGetValueAtIndex(*(queue + 3), 0);
        (*(v11 + 16))(v11, v12);
      }
    }

    goto LABEL_14;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x99C, v2, v5, v6);
}

CMTime *__cdecl CMBufferQueueGetMinPresentationTimeStamp(CMTime *__return_ptr retstr, CMBufferQueueRef queue)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 120))
    {
      if (!*(queue + 68))
      {
        return FigReentrantMutexUnlock(*(queue + 2));
      }
    }

    else if (!*(queue + 8))
    {
      return FigReentrantMutexUnlock(*(queue + 2));
    }

    v9 = *(queue + 3);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        while (1)
        {
          memset(&v20, 0, sizeof(v20));
          if (*(queue + 120))
          {
            v13 = *(queue + 68);
            ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), v12);
            v13(&v20, ValueAtIndex, *(queue + 52));
          }

          else
          {
            v15 = *(queue + 8);
            v16 = CFArrayGetValueAtIndex(*(queue + 3), v12);
            (*(v15 + 16))(&v20, v15, v16);
          }

          if (v20.flags)
          {
            if ((retstr->flags & 1) == 0 || (time1 = v20, time2 = *retstr, CMTimeCompare(&time1, &time2) < 0))
            {
              *retstr = v20;
            }

            if (*(queue + 252))
            {
              memset(&time1, 0, sizeof(time1));
              time2 = v20;
              v17 = *retstr;
              CMTimeSubtract(&time1, &time2, &v17);
              time2 = time1;
              v17 = *(queue + 10);
              if ((CMTimeCompare(&time2, &v17) & 0x80000000) == 0)
              {
                break;
              }
            }
          }

          if (v11 == ++v12)
          {
            v12 = v11;
            break;
          }
        }

        if (v11 >= 10 && v12 == v11)
        {
          bufQReconstructBounds(queue);
        }
      }
    }

    return FigReentrantMutexUnlock(*(queue + 2));
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0x9DD, v2, v6, v7);
}

double bufQReconstructBounds(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  value = 0;
  v2 = 0;
  timescale = 0;
  epoch = 0;
  *&v17.value = *&kCMTimeZero.value;
  v17.epoch = 0;
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; v5 != i; ++i)
    {
      memset(&v16, 0, sizeof(v16));
      if (*(a1 + 120))
      {
        v7 = *(a1 + 68);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
        v7(&v16, ValueAtIndex, *(a1 + 52));
      }

      else
      {
        v9 = *(a1 + 64);
        v10 = CFArrayGetValueAtIndex(*(a1 + 24), i);
        (*(v9 + 16))(&v16, v9, v10);
      }

      flags = v16.flags;
      if (v16.flags & 1) != 0 && (v2)
      {
        time1 = v16;
        time2.value = value;
        time2.timescale = timescale;
        time2.flags = v2;
        time2.epoch = epoch;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          memset(&time1, 0, sizeof(time1));
          time2.value = value;
          time2.timescale = timescale;
          time2.flags = v2;
          time2.epoch = epoch;
          v13 = v16;
          CMTimeSubtract(&time1, &time2, &v13);
          time2 = v17;
          v13 = time1;
          CMTimeMaximum(&v17, &time2, &v13);
        }
      }

      else if ((v2 & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((v16.flags & 1) == 0)
      {
        continue;
      }

      time1 = v16;
      time2.value = value;
      time2.timescale = timescale;
      time2.flags = v2;
      time2.epoch = epoch;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        continue;
      }

      flags = v16.flags;
LABEL_14:
      value = v16.value;
      timescale = v16.timescale;
      epoch = v16.epoch;
      v2 = flags;
    }
  }

  *(a1 + 216) = value;
  *(a1 + 224) = timescale;
  *(a1 + 228) = v2;
  *(a1 + 232) = epoch;
  result = *&v17.value;
  *(a1 + 240) = v17;
  return result;
}

CMTime *__cdecl CMBufferQueueGetMaxPresentationTimeStamp(CMTime *__return_ptr retstr, CMBufferQueueRef queue)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 120))
    {
      if (!*(queue + 68))
      {
        return FigReentrantMutexUnlock(*(queue + 2));
      }
    }

    else if (!*(queue + 8))
    {
      return FigReentrantMutexUnlock(*(queue + 2));
    }

    v9 = *(queue + 3);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = Count + 1;
        while (1)
        {
          v13 = v12 - 2;
          memset(&v21, 0, sizeof(v21));
          if (*(queue + 120))
          {
            v14 = *(queue + 68);
            ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), v13);
            v14(&v21, ValueAtIndex, *(queue + 52));
          }

          else
          {
            v16 = *(queue + 8);
            v17 = CFArrayGetValueAtIndex(*(queue + 3), v13);
            (*(v16 + 16))(&v21, v16, v17);
          }

          if (v21.flags)
          {
            if ((retstr->flags & 1) == 0 || (time1 = v21, time2 = *retstr, CMTimeCompare(&time1, &time2) >= 1))
            {
              *retstr = v21;
            }

            if (*(queue + 252))
            {
              memset(&time1, 0, sizeof(time1));
              time2 = *retstr;
              v18 = v21;
              CMTimeSubtract(&time1, &time2, &v18);
              time2 = time1;
              v18 = *(queue + 10);
              if ((CMTimeCompare(&time2, &v18) & 0x80000000) == 0)
              {
                break;
              }
            }
          }

          if (--v12 < 2)
          {
            if (v11 >= 10)
            {
              bufQReconstructBounds(queue);
            }

            return FigReentrantMutexUnlock(*(queue + 2));
          }
        }
      }
    }

    return FigReentrantMutexUnlock(*(queue + 2));
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xA5D, v2, v6, v7);
}

CMTime *__cdecl CMBufferQueueGetEndPresentationTimeStamp(CMTime *__return_ptr retstr, CMBufferQueueRef queue)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 120))
    {
      if (!*(queue + 68) || !*(queue + 76))
      {
        return FigReentrantMutexUnlock(*(queue + 2));
      }
    }

    else if (!*(queue + 8) || !*(queue + 9))
    {
      return FigReentrantMutexUnlock(*(queue + 2));
    }

    v9 = *(queue + 3);
    if (v9 && CFArrayGetCount(v9) >= 1)
    {
      v12[3] = 1;
      v10 = bufQGetEndPTS;
      if (!*(queue + 120))
      {
        v10 = bufQGetEndPTSUsingHandlers;
      }

      v12[0] = retstr;
      v12[1] = v10;
      v12[2] = queue + 48;
      v11 = *(queue + 3);
      v14.length = CFArrayGetCount(v11);
      v14.location = 0;
      CFArrayApplyFunction(v11, v14, findBestTimeStamp, v12);
    }

    return FigReentrantMutexUnlock(*(queue + 2));
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xAF2, v2, v6, v7);
}

CMTime *bufQGetEndPTSUsingHandlers@<X0>(uint64_t a1@<X1>, CMTime *a2@<X8>)
{
  (*(*(a1 + 16) + 16))(&lhs);
  (*(*(a1 + 24) + 16))(&v5);
  return CMTimeAdd(a2, &lhs, &v5);
}

CMTime *__cdecl CMBufferQueueGetFirstPresentationTimeStamp(CMTime *__return_ptr retstr, CMBufferQueueRef queue)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 120))
    {
      if (!*(queue + 68))
      {
        goto LABEL_14;
      }
    }

    else if (!*(queue + 8))
    {
LABEL_14:
      v13 = *(queue + 2);

      return FigReentrantMutexUnlock(v13);
    }

    v8 = *(queue + 3);
    if (v8 && CFArrayGetCount(v8))
    {
      if (*(queue + 120))
      {
        v9 = *(queue + 68);
        ValueAtIndex = CFArrayGetValueAtIndex(*(queue + 3), 0);
        v9(ValueAtIndex, *(queue + 52));
      }

      else
      {
        v11 = *(queue + 8);
        v12 = CFArrayGetValueAtIndex(*(queue + 3), 0);
        (*(v11 + 16))(v11, v12);
      }
    }

    goto LABEL_14;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xB1D, v2, v5, v6);
}

CMItemCount CMBufferQueueGetBufferCount(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    v3 = *(queue + 3);
    if (v3)
    {
      Count = CFArrayGetCount(v3);
    }

    else
    {
      Count = 0;
    }

    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xB38, v1, v6, v7);
    return 0;
  }

  return Count;
}

CMTime *__cdecl CMBufferQueueGetDuration(CMTime *__return_ptr retstr, CMBufferQueueRef queue)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    *&retstr->value = *(queue + 124);
    retstr->epoch = *(queue + 140);
    v5 = *(queue + 2);

    return FigReentrantMutexUnlock(v5);
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xB4E, v2, v8, v9);
  }
}

size_t CMBufferQueueGetTotalSize(CMBufferQueueRef queue)
{
  if (queue)
  {
    FigReentrantMutexLock(*(queue + 2));
    v3 = *(queue + 19);
    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xB63, v1, v5, v6);
    return 0;
  }

  return v3;
}

size_t FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6, uint64_t *a7)
{
  if (a1 && a4 && a2 | a7)
  {
    if ((*(a5 + 3) & 0x1D) == 1 && !*(a5 + 2))
    {
      if (a4 == 12 || a4 == 15)
      {
        v15 = *a5;
        v16 = *(a5 + 2);
        return bufQInstallTrigger(a1, a2, a3, 0, a4, &v15, a6, a7);
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v11 = v7;
      v12 = 4294954529;
      v13 = 3183;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v11 = v7;
      v12 = 4294954531;
      v13 = 3174;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v7;
    v12 = 4294954535;
    v13 = 3169;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<< CMBufferQueue >>>", v13, v11, v9, v10);
}

size_t figBufferQueueInstallTriggerCallbackOrHandler(char *queue, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (queue && a5 && (a2 || a4 || a7))
  {
    if (a5 == 6)
    {
      CMBufferQueueGetMaxPresentationTimeStamp(&v22, queue);
    }

    else
    {
      if (a5 != 5)
      {
        if (a5 - 7 > 2)
        {
          if ((*(a6 + 12) & 0x1D) != 1 || *(a6 + 16))
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v18 = v7;
            v19 = 4294954531;
            v20 = 3087;
            goto LABEL_7;
          }
        }

        else
        {
          *a6 = *&kCMTimeInvalid.value;
          *(a6 + 16) = 0;
        }

        if (a5 > 9 || ((1 << a5) & 0x39E) == 0)
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v18 = v7;
          v19 = 4294954529;
          v20 = 3108;
          goto LABEL_7;
        }

        goto LABEL_23;
      }

      CMBufferQueueGetMinPresentationTimeStamp(&v22, queue);
    }

    *a6 = v22;
    if (queue[120])
    {
      if (!*(queue + 68))
      {
        goto LABEL_24;
      }
    }

    else if (!*(queue + 8))
    {
LABEL_24:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v18 = v7;
      v19 = 4294954529;
      v20 = 3103;
      goto LABEL_7;
    }

LABEL_23:
    v22 = *a6;
    return bufQInstallTrigger(queue, a2, a3, a4, a5, &v22, 0, a7);
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v18 = v7;
  v19 = 4294954535;
  v20 = 3068;
LABEL_7:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v19, "<<< CMBufferQueue >>>", v20, v18, v16, v17);
}

size_t figBufferQueueInstallTriggerWithIntegerThresholdCallbackOrHandler(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (!a1 || !a5 || !a2 && !a4 && !a7)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v7;
    v12 = 4294954535;
    v13 = 3135;
LABEL_7:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<< CMBufferQueue >>>", v13, v11, v9, v10);
  }

  if (a5 > 0xE || ((1 << a5) & 0x6C00) == 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v7;
    v12 = 4294954529;
    v13 = 3146;
    goto LABEL_7;
  }

  return bufQInstallTrigger(a1, a2, a3, a4, a5, &kCMTimeInvalid, a6, a7);
}

OSStatus CMBufferQueueRemoveTrigger(CMBufferQueueRef queue, CMBufferQueueTriggerToken triggerToken)
{
  if (queue && triggerToken)
  {
    FigReentrantMutexLock(*(queue + 2));
    if (*(queue + 168))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v8 = v2;
      v9 = 4294954530;
      v10 = 3280;
    }

    else
    {
      v15 = *(queue + 20);
      if (v15 && CFSetGetValue(v15, triggerToken))
      {
        CFSetRemoveValue(*(queue + 20), triggerToken);
        *(queue + 169) = 0;
        CFSetApplyFunction(*(queue + 20), bufQCheckForDataBecomesReadyTrigger, queue);
        v16 = 0;
        if (!*(queue + 169))
        {
          bufQStopListeningForHeadBufferBecomingReady(queue);
          v16 = 0;
        }

        goto LABEL_14;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v8 = v2;
      v9 = 4294954528;
      v10 = 3287;
    }

    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<< CMBufferQueue >>>", v10, v8, v6, v7);
LABEL_14:
    FigReentrantMutexUnlock(*(queue + 2));
    return v16;
  }

  v11 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xCC6, v2, v12, v13);
}

Boolean CMBufferQueueTestTrigger(CMBufferQueueRef queue, CMBufferQueueTriggerToken triggerToken)
{
  if (queue && triggerToken)
  {
    FigReentrantMutexLock(*(queue + 2));
    v5 = *(queue + 20);
    if (v5 && CFSetGetValue(v5, triggerToken))
    {
      v6 = *(triggerToken + 64);
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE20uLL, "<<< CMBufferQueue >>>", 0xD01, v2, v11, v12);
      v6 = 0;
    }

    FigReentrantMutexUnlock(*(queue + 2));
  }

  else
  {
    v7 = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xCF7, v2, v8, v9);
    return 0;
  }

  return v6;
}

OSStatus CMBufferQueueCallForEachBuffer(CMBufferQueueRef queue, OSStatus (__cdecl *callback)(CMBufferRef, void *), void *refcon)
{
  v14 = 0;
  if (queue && callback)
  {
    FigReentrantMutexLock(*(queue + 2));
    v7 = *(queue + 3);
    if (v7)
    {
      if (CFArrayGetCount(v7) >= 1)
      {
        v13[0] = &v14;
        v13[1] = callback;
        v13[2] = refcon;
        v8 = *(queue + 3);
        v15.length = CFArrayGetCount(v8);
        v15.location = 0;
        CFArrayApplyFunction(v8, v15, bufqCallForOneBuffer, v13);
      }
    }

    FigReentrantMutexUnlock(*(queue + 2));
    return v14;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xD26, v3, v11, v12);
    return 0;
  }
}

uint64_t bufqCallForOneBuffer(uint64_t result, uint64_t a2)
{
  if (!**a2)
  {
    result = (*(a2 + 8))(result, *(a2 + 16));
    **a2 = result;
  }

  return result;
}

uint64_t FigBufferQueueCallForEachBufferLastToFirst(uint64_t a1, uint64_t (*a2)(const void *, uint64_t), uint64_t a3)
{
  if (a1 && a2)
  {
    FigReentrantMutexLock(*(a1 + 16));
    v7 = *(a1 + 24);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    while (Count-- >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), Count);
      v15 = a2(ValueAtIndex, a3);
      if (v15)
      {
        v12 = v15;
        goto LABEL_11;
      }
    }

    v12 = 0;
LABEL_11:
    FigReentrantMutexUnlock(*(a1 + 16));
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE27uLL, "<<< CMBufferQueue >>>", 0xD47, v3, v10, v11);
    return 0;
  }

  return v12;
}

__CFString *bufQCopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<");
  v3 = 92;
  if (!*(a1 + 120))
  {
    v3 = 88;
  }

  if (*(a1 + v3))
  {
    v4 = "sorted";
  }

  else
  {
    v4 = "unsorted";
  }

  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"CMBufferQueue(%s) %p retainCount: %ld allocator: %p\n", v4, a1, v5, v6);
  if (*(a1 + 120))
  {
    unk_1EAF1AD0C = sbufGetDecodeTimeStamp;
    unk_1EAF1AD14 = sbufGetPresentationTimeStamp;
    unk_1EAF1AD1C = sbufGetDuration;
    unk_1EAF1AD24 = sbufDataIsReady;
    unk_1EAF1AD34 = @"FigSampleBufferDataBecameReady";
    unk_1EAF1AD3C = sbufGetTotalSampleSize;
    if (!memcmp((a1 + 48), &gFigBufferQueueCallbacksForUnsortedSampleBuffers, 0x44uLL))
    {
      CFStringAppendFormat(Mutable, 0, @"\tcallbacks: kCMBufferQueueCallbacksForUnsortedSampleBuffers\n", v21, v22, v23, v24);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\tcallbacks:\n\t\tversion = %d\n\t\trefcon = %p\n\t\tgetDTS = %p\n\t\tgetPTS = %p\n\t\tgetDuration = %p\n\t\tisDataReady = %p\n\t\tcompare = %p\n", *(a1 + 48), *(a1 + 52), *(a1 + 60), *(a1 + 68), *(a1 + 76), *(a1 + 84), *(a1 + 92));
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\thandlers:\n\t\tversion = %d\n\t\tgetDTS = %p\n\t\tgetPTS = %p\n\t\tgetDuration = %p\n\t\tisDataReady = %p\n\t\tcompare = %p\n", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  v7 = CFGetAllocator(a1);
  time = *(a1 + 124);
  v8 = CMTimeCopyDescription(v7, &time);
  v9 = CFGetAllocator(a1);
  CMBufferQueueGetMinPresentationTimeStamp(&time, a1);
  v10 = CMTimeCopyDescription(v9, &time);
  v11 = CFGetAllocator(a1);
  CMBufferQueueGetMinDecodeTimeStamp(&time, a1);
  v12 = CMTimeCopyDescription(v11, &time);
  Count = *(a1 + 24);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v14 = "YES";
  if (*(a1 + 168))
  {
    v15 = "YES";
  }

  else
  {
    v15 = "NO";
  }

  if (!*(a1 + 121))
  {
    v14 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"\telement count: %ld\n\tfiringTrigger: %s\n\tcontainsEOD: %s\n\ttotalDuration: %@\n\tminPTS: %@\n\tminDTS: %@\n", Count, v15, v14, v8, v10, v12);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v16 = *(a1 + 160);
  if (v16 && CFSetGetCount(v16))
  {
    v17 = CFSetGetCount(*(a1 + 160));
    CFStringAppendFormat(Mutable, 0, @"\tTriggers (%ld):", v17);
    CFSetApplyFunction(*(a1 + 160), appendTriggerDescription, Mutable);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tNO triggers\n");
  }

  v18 = *(a1 + 24);
  if (v18 && CFArrayGetCount(v18))
  {
    CFStringAppendFormat(Mutable, 0, @"\tElements:");
    v19 = *(a1 + 24);
    v26.length = CFArrayGetCount(v19);
    v26.location = 0;
    CFArrayApplyFunction(v19, v26, appendBufQElementDescription, Mutable);
    CFStringAppendFormat(Mutable, 0, @">\n");
  }

  return Mutable;
}

void appendTriggerDescription(uint64_t a1, __CFString *cf)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(cf);
  time = *(a1 + 28);
  v5 = CMTimeCopyDescription(v4, &time);
  v6 = *(a1 + 24);
  if ((v6 - 1) > 0xE)
  {
    v9 = 0;
    snprintf(&time, 0xFFuLL, "%d", v6);
  }

  else
  {
    strncpy(&time, off_1E749CD48[v6 - 1], 0xFFuLL);
    v9 = 0;
  }

  if (*(a1 + 64))
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  CFStringAppendFormat(cf, 0, @"\n\t\tcondition: %s\n\t\tduration: %@\n\t\tcurrentValue: %s\n\t\tcallback: %p\n\t\trefCon: %p\n", &time, v5, v7, *a1, *(a1 + 8));
  CFStringAppendFormat(cf, 0, @"\t\thandler: %p\n", *(a1 + 16));
  if (v5)
  {
    CFRelease(v5);
  }
}

CFStringRef FigTapToRadarCreateRadarDescriptionString(const __CFAllocator *a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(a1, 0, format, va);
  v4 = FigCopyProcessNamesForGatheringDiagnosticsWithCoreMediaDiagnosticExtension();
  v5 = [(__CFArray *)v4 componentsJoinedByString:@", "];
  v6 = CFStringCreateWithFormat(a1, 0, @"[Please help us understand possible conditions that might be necessary to reproduce this issue -- describe recent media playback related activity here if applicable.]\n%@\n\nDiagnostics collected beyond a typical radar.\n -memory, thread and sandbox state of media-related daemons [%@]", v3, v5);

  if (v6)
  {
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  FigTapToRadarCreateRadarDescriptionString_cold_1();
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

LABEL_4:
  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

uint64_t FigCanTriggerTapToRadar()
{
  result = FigDebugIsInternalBuild();
  if (result)
  {
    result = figIsAllowedToTriggerTapToRadar();
    if (result)
    {
      return _MergedGlobals[0]() != 0;
    }
  }

  return result;
}

uint64_t figIsAllowedToTriggerTapToRadar()
{
  if (FigServer_IsMediaplaybackd() || FigServer_IsMediaparserd() || FigServer_IsAirplayd() || FigServer_IsVideocodecd() || FigServer_IsMediaserverd())
  {
    return 1;
  }

  else
  {
    return in_audio_mx_server_process();
  }
}

Class initTapToRadarService()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initTapToRadarService_cold_1();
  }

  result = objc_getClass("TapToRadarService");
  classTapToRadarService = result;
  _MergedGlobals[0] = TapToRadarServiceFunction;
  return result;
}

void *__TapToRadarKitLibrary_block_invoke()
{
  result = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
  TapToRadarKitLibrary_sLib = result;
  return result;
}

Class initRadarDraft()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initTapToRadarService_cold_1();
  }

  result = objc_getClass("RadarDraft");
  classRadarDraft = result;
  off_1ED4CBF78[0] = RadarDraftFunction;
  return result;
}

Class initRadarComponent()
{
  if (TapToRadarKitLibrary_sOnce != -1)
  {
    initTapToRadarService_cold_1();
  }

  result = objc_getClass("RadarComponent");
  classRadarComponent = result;
  off_1ED4CBF80 = RadarComponentFunction;
  return result;
}

OSStatus CMTextFormatDescriptionGetDisplayFlags(CMFormatDescriptionRef desc, CMTextDisplayFlags *displayFlagsOut)
{
  if (desc)
  {
    MediaType = CMFormatDescriptionGetMediaType(desc);
    if (MediaType == 1668310898 || MediaType == 1935832172 || MediaType == 1952807028)
    {
      if (CMFormatDescriptionGetMediaSubType(desc) == 2004251764 || CMFormatDescriptionGetMediaSubType(desc) == 2021028980 || CMFormatDescriptionGetMediaSubType(desc) == 1937142900 || CMFormatDescriptionGetMediaType(desc) == 1668310898 || CMFormatDescriptionGetMediaType(desc) == 1952807028 && CMFormatDescriptionGetMediaSubType(desc) == 1634301044)
      {
        return -12718;
      }

      if (!displayFlagsOut)
      {
        return 0;
      }

      Extension = CMFormatDescriptionGetExtension(desc, @"DisplayFlags");
      if (Extension)
      {
        v10 = Extension;
        v11 = CFGetTypeID(Extension);
        if (v11 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v10, kCFNumberSInt32Type, displayFlagsOut);
          return 0;
        }
      }

      CMTextFormatDescriptionGetDisplayFlags_cold_1(&v12);
      return v12;
    }

    else
    {

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0x74, v2, v6, v7);
    }
  }

  else
  {
    CMTextFormatDescriptionGetDisplayFlags_cold_2(&v13);
    return v13;
  }
}

OSStatus CMTextFormatDescriptionGetJustification(CMFormatDescriptionRef desc, CMTextJustificationValue *horizontaJustificationlOut, CMTextJustificationValue *verticalJustificationOut)
{
  if (!desc)
  {
    CMTextFormatDescriptionGetJustification_cold_3(&valuePtr);
    return valuePtr;
  }

  MediaType = CMFormatDescriptionGetMediaType(desc);
  if (MediaType != 1668310898 && MediaType != 1935832172 && MediaType != 1952807028)
  {
    v11 = v3;
    v12 = 147;
    goto LABEL_11;
  }

  if (CMFormatDescriptionGetMediaSubType(desc) == 2004251764 || CMFormatDescriptionGetMediaSubType(desc) == 2021028980 || CMFormatDescriptionGetMediaSubType(desc) == 1937142900 || CMFormatDescriptionGetMediaType(desc) == 1668310898 || CMFormatDescriptionGetMediaType(desc) == 1952807028 && CMFormatDescriptionGetMediaSubType(desc) == 1634301044)
  {
    return -12718;
  }

  if (!horizontaJustificationlOut)
  {
    goto LABEL_24;
  }

  if (CMFormatDescriptionGetMediaSubType(desc) != 1952807028)
  {
    Extension = CMFormatDescriptionGetExtension(desc, @"HorizontalJustification");
    if (Extension)
    {
      v17 = Extension;
      v18 = CFGetTypeID(Extension);
      if (v18 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v17, kCFNumberSInt8Type, horizontaJustificationlOut);
        goto LABEL_24;
      }
    }

    CMTextFormatDescriptionGetJustification_cold_1(&valuePtr);
    return valuePtr;
  }

  valuePtr = 0;
  v13 = CMFormatDescriptionGetExtension(desc, @"TextJustification");
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
      *horizontaJustificationlOut = valuePtr;
LABEL_24:
      if (!verticalJustificationOut)
      {
        return 0;
      }

      if (CMFormatDescriptionGetMediaSubType(desc) == 1952807028)
      {
        result = 0;
        *verticalJustificationOut = 0;
        return result;
      }

      v19 = CMFormatDescriptionGetExtension(desc, @"VerticalJustification");
      if (v19)
      {
        v20 = v19;
        v21 = CFGetTypeID(v19);
        if (v21 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v20, kCFNumberSInt8Type, verticalJustificationOut);
          return 0;
        }
      }

      CMTextFormatDescriptionGetJustification_cold_2(&valuePtr);
      return valuePtr;
    }
  }

  v11 = v3;
  v12 = 165;
LABEL_11:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", v12, v11, v8, v9);
}

OSStatus CMTextFormatDescriptionGetDefaultTextBox(CMFormatDescriptionRef desc, Boolean originIsAtTopLeft, CGFloat heightOfTextTrack, CGRect *defaultTextBoxOut)
{
  if (!desc)
  {
    CMTextFormatDescriptionGetDefaultTextBox_cold_6(&v34);
    return v34;
  }

  v7 = originIsAtTopLeft;
  MediaType = CMFormatDescriptionGetMediaType(desc);
  if (MediaType == 1668310898 || MediaType == 1935832172 || MediaType == 1952807028)
  {
    if (CMFormatDescriptionGetMediaSubType(desc) == 2004251764 || CMFormatDescriptionGetMediaSubType(desc) == 2021028980 || CMFormatDescriptionGetMediaSubType(desc) == 1937142900 || CMFormatDescriptionGetMediaType(desc) == 1668310898 || CMFormatDescriptionGetMediaType(desc) == 1952807028 && CMFormatDescriptionGetMediaSubType(desc) == 1634301044)
    {
      return -12718;
    }

    if (!defaultTextBoxOut)
    {
      return 0;
    }

    Extension = CMFormatDescriptionGetExtension(desc, @"DefaultTextBox");
    if (Extension && (v14 = Extension, v15 = CFGetTypeID(Extension), v15 == CFDictionaryGetTypeID()))
    {
      Value = CFDictionaryGetValue(v14, @"Top");
      if (Value && (v17 = Value, v18 = CFGetTypeID(Value), v18 == CFNumberGetTypeID()))
      {
        v32 = 0;
        valuePtr = 0;
        CFNumberGetValue(v17, kCFNumberSInt16Type, &valuePtr + 2);
        v19 = CFDictionaryGetValue(v14, @"Left");
        if (v19 && (v20 = v19, v21 = CFGetTypeID(v19), v21 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v20, kCFNumberSInt16Type, &valuePtr);
          v22 = CFDictionaryGetValue(v14, @"Bottom");
          if (v22 && (v23 = v22, v24 = CFGetTypeID(v22), v24 == CFNumberGetTypeID()))
          {
            CFNumberGetValue(v23, kCFNumberSInt16Type, &v32 + 2);
            v25 = CFDictionaryGetValue(v14, @"Right");
            if (v25)
            {
              v26 = v25;
              v27 = CFGetTypeID(v25);
              if (v27 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v26, kCFNumberSInt16Type, &v32);
                v28 = valuePtr;
                v29 = SHIWORD(valuePtr);
                v30 = (SHIWORD(v32) - SHIWORD(valuePtr));
                defaultTextBoxOut->size.width = (v32 - valuePtr);
                defaultTextBoxOut->size.height = v30;
                defaultTextBoxOut->origin.x = v28;
                v31 = v29;
                result = 0;
                if (!v7)
                {
                  v31 = heightOfTextTrack - v31;
                }

                defaultTextBoxOut->origin.y = v31;
                return result;
              }
            }

            CMTextFormatDescriptionGetDefaultTextBox_cold_1(&v34);
          }

          else
          {
            CMTextFormatDescriptionGetDefaultTextBox_cold_2(&v34);
          }
        }

        else
        {
          CMTextFormatDescriptionGetDefaultTextBox_cold_3(&v34);
        }
      }

      else
      {
        CMTextFormatDescriptionGetDefaultTextBox_cold_4(&v34);
      }
    }

    else
    {
      CMTextFormatDescriptionGetDefaultTextBox_cold_5(&v34);
    }

    return v34;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xC8, v4, v10, v11);
}

OSStatus CMTextFormatDescriptionGetDefaultStyle(CMFormatDescriptionRef desc, uint16_t *localFontIDOut, Boolean *boldOut, Boolean *italicOut, Boolean *underlineOut, CGFloat *fontSizeOut, CGFloat *colorComponentsOut)
{
  if (!desc)
  {
    CMTextFormatDescriptionGetDefaultStyle_cold_12(&valuePtr);
    return valuePtr;
  }

  MediaType = CMFormatDescriptionGetMediaType(desc);
  if (MediaType == 1668310898 || MediaType == 1935832172 || MediaType == 1952807028)
  {
    if (CMFormatDescriptionGetMediaSubType(desc) == 2004251764 || CMFormatDescriptionGetMediaSubType(desc) == 2021028980 || CMFormatDescriptionGetMediaSubType(desc) == 1937142900 || CMFormatDescriptionGetMediaType(desc) == 1668310898 || CMFormatDescriptionGetMediaType(desc) == 1952807028 && CMFormatDescriptionGetMediaSubType(desc) == 1634301044)
    {
      return -12718;
    }

    Extension = CMFormatDescriptionGetExtension(desc, @"DefaultStyle");
    if (!Extension || (v22 = Extension, v23 = CFGetTypeID(Extension), v23 != CFDictionaryGetTypeID()))
    {
      CMTextFormatDescriptionGetDefaultStyle_cold_11(&valuePtr);
      return valuePtr;
    }

    if (localFontIDOut)
    {
      v66 = v22;
      Value = CFDictionaryGetValue(v22, @"Font");
      if (!Value || (v25 = Value, v26 = CFGetTypeID(Value), v26 != CFNumberGetTypeID()))
      {
        CMTextFormatDescriptionGetDefaultStyle_cold_1(&valuePtr);
        return valuePtr;
      }

      CFNumberGetValue(v25, kCFNumberSInt16Type, localFontIDOut);
      v22 = v66;
    }

    if (!boldOut && !italicOut && !underlineOut)
    {
      goto LABEL_33;
    }

    LOBYTE(valuePtr) = 0;
    v27 = v22;
    v28 = CFDictionaryGetValue(v22, @"FontFace");
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v29, kCFNumberSInt8Type, &valuePtr);
        v22 = v27;
        if (boldOut)
        {
          *boldOut = valuePtr & 1;
        }

        if (italicOut)
        {
          *italicOut = (valuePtr & 2) != 0;
        }

        if (underlineOut)
        {
          *underlineOut = (valuePtr & 4) != 0;
        }

LABEL_33:
        if (!fontSizeOut)
        {
          goto LABEL_40;
        }

        v31 = CFDictionaryGetValue(v22, @"FontSize");
        if (v31)
        {
          v32 = v31;
          v33 = CFGetTypeID(v31);
          if (v33 == CFNumberGetTypeID())
          {
            if (CMFormatDescriptionGetMediaSubType(desc) == 1952807028)
            {
              LOWORD(valuePtr) = 0;
              CFNumberGetValue(v32, kCFNumberSInt16Type, &valuePtr);
              v34 = valuePtr;
            }

            else
            {
              LOBYTE(valuePtr) = 0;
              CFNumberGetValue(v32, kCFNumberSInt8Type, &valuePtr);
              v34 = valuePtr;
            }

            *fontSizeOut = v34;
LABEL_40:
            if (!colorComponentsOut)
            {
              return 0;
            }

            v35 = CFDictionaryGetValue(v22, @"ForegroundColor");
            if (v35 && (v36 = v35, v37 = CFGetTypeID(v35), v37 == CFDictionaryGetTypeID()))
            {
              if (CMFormatDescriptionGetMediaSubType(desc) == 1952807028)
              {
                v67 = 0;
                v38 = CFDictionaryGetValue(v36, @"Red");
                if (v38 && (v39 = v38, v40 = CFGetTypeID(v38), v40 == CFNumberGetTypeID()))
                {
                  CFNumberGetValue(v39, kCFNumberSInt16Type, &v67);
                  LOWORD(v41) = v67;
                  *colorComponentsOut = v41 / 65535.0;
                  v42 = CFDictionaryGetValue(v36, @"Green");
                  if (v42 && (v43 = v42, v44 = CFGetTypeID(v42), v44 == CFNumberGetTypeID()))
                  {
                    CFNumberGetValue(v43, kCFNumberSInt16Type, &v67);
                    LOWORD(v45) = v67;
                    colorComponentsOut[1] = v45 / 65535.0;
                    v46 = CFDictionaryGetValue(v36, @"Blue");
                    if (v46)
                    {
                      v47 = v46;
                      v48 = CFGetTypeID(v46);
                      if (v48 == CFNumberGetTypeID())
                      {
                        CFNumberGetValue(v47, kCFNumberSInt16Type, &v67);
                        result = 0;
                        LOWORD(v49) = v67;
                        colorComponentsOut[2] = v49 / 65535.0;
                        colorComponentsOut[3] = 1.0;
                        return result;
                      }
                    }

                    CMTextFormatDescriptionGetDefaultStyle_cold_7(&valuePtr);
                  }

                  else
                  {
                    CMTextFormatDescriptionGetDefaultStyle_cold_8(&valuePtr);
                  }
                }

                else
                {
                  CMTextFormatDescriptionGetDefaultStyle_cold_9(&valuePtr);
                }
              }

              else
              {
                LOBYTE(v67) = 0;
                v50 = CFDictionaryGetValue(v36, @"Red");
                if (v50 && (v51 = v50, v52 = CFGetTypeID(v50), v52 == CFNumberGetTypeID()))
                {
                  CFNumberGetValue(v51, kCFNumberSInt8Type, &v67);
                  LOBYTE(v53) = v67;
                  *colorComponentsOut = v53 / 255.0;
                  v54 = CFDictionaryGetValue(v36, @"Green");
                  if (v54 && (v55 = v54, v56 = CFGetTypeID(v54), v56 == CFNumberGetTypeID()))
                  {
                    CFNumberGetValue(v55, kCFNumberSInt8Type, &v67);
                    LOBYTE(v57) = v67;
                    colorComponentsOut[1] = v57 / 255.0;
                    v58 = CFDictionaryGetValue(v36, @"Blue");
                    if (v58 && (v59 = v58, v60 = CFGetTypeID(v58), v60 == CFNumberGetTypeID()))
                    {
                      CFNumberGetValue(v59, kCFNumberSInt8Type, &v67);
                      LOBYTE(v61) = v67;
                      colorComponentsOut[2] = v61 / 255.0;
                      v62 = CFDictionaryGetValue(v36, @"Alpha");
                      if (v62)
                      {
                        v63 = v62;
                        v64 = CFGetTypeID(v62);
                        if (v64 == CFNumberGetTypeID())
                        {
                          CFNumberGetValue(v63, kCFNumberSInt8Type, &v67);
                          result = 0;
                          LOBYTE(v65) = v67;
                          colorComponentsOut[3] = v65 / 255.0;
                          return result;
                        }
                      }

                      CMTextFormatDescriptionGetDefaultStyle_cold_3(&valuePtr);
                    }

                    else
                    {
                      CMTextFormatDescriptionGetDefaultStyle_cold_4(&valuePtr);
                    }
                  }

                  else
                  {
                    CMTextFormatDescriptionGetDefaultStyle_cold_5(&valuePtr);
                  }
                }

                else
                {
                  CMTextFormatDescriptionGetDefaultStyle_cold_6(&valuePtr);
                }
              }
            }

            else
            {
              CMTextFormatDescriptionGetDefaultStyle_cold_10(&valuePtr);
            }

            return valuePtr;
          }
        }

        CMTextFormatDescriptionGetDefaultStyle_cold_2(&valuePtr);
        return valuePtr;
      }
    }

    v19 = v7;
    v20 = 283;
  }

  else
  {
    v19 = v7;
    v20 = 256;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", v20, v19, v16, v17);
}

OSStatus CMTextFormatDescriptionGetFontName(CMFormatDescriptionRef desc, uint16_t localFontID, CFStringRef *fontNameOut)
{
  if (!desc)
  {
    CMTextFormatDescriptionGetFontName_cold_6(&v23);
    return v23;
  }

  if (!fontNameOut)
  {
    CMTextFormatDescriptionGetFontName_cold_5(&v23);
    return v23;
  }

  v5 = localFontID;
  MediaType = CMFormatDescriptionGetMediaType(desc);
  if (MediaType == 1668310898 || MediaType == 1935832172 || MediaType == 1952807028)
  {
    if (CMFormatDescriptionGetMediaSubType(desc) == 2004251764 || CMFormatDescriptionGetMediaSubType(desc) == 2021028980 || CMFormatDescriptionGetMediaSubType(desc) == 1937142900 || CMFormatDescriptionGetMediaType(desc) == 1668310898 || CMFormatDescriptionGetMediaType(desc) == 1952807028 && CMFormatDescriptionGetMediaSubType(desc) == 1634301044)
    {
      return -12718;
    }

    *fontNameOut = 0;
    if (CMFormatDescriptionGetMediaSubType(desc) == 1952807028)
    {
      Extension = CMFormatDescriptionGetExtension(desc, @"DefaultFontName");
      if (Extension)
      {
        v13 = Extension;
        v14 = CFGetTypeID(Extension);
        if (v14 == CFStringGetTypeID())
        {
          v10 = 0;
          *fontNameOut = v13;
          return v10;
        }
      }

      CMTextFormatDescriptionGetFontName_cold_4(&v23);
    }

    else
    {
      v15 = CMFormatDescriptionGetExtension(desc, @"FontTable");
      if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFDictionaryGetTypeID()))
      {
        v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v5);
        if (v18)
        {
          v19 = v18;
          Value = CFDictionaryGetValue(v16, v18);
          if (Value && (v21 = Value, v22 = CFGetTypeID(Value), v22 == CFStringGetTypeID()))
          {
            v10 = 0;
            *fontNameOut = v21;
          }

          else
          {
            CMTextFormatDescriptionGetFontName_cold_1(&v23);
            v10 = v23;
          }

          CFRelease(v19);
          return v10;
        }

        CMTextFormatDescriptionGetFontName_cold_2(&v23);
      }

      else
      {
        CMTextFormatDescriptionGetFontName_cold_3(&v23);
      }
    }

    return v23;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0x173, v3, v8, v9);
}

void sub_196FC41AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196FC44F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID(int a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigPurgeAndRenewProcessStateTracker[1], @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v5, 0, gFigPurgeAndRenewProcessStateTracker);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CC68, @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CC60);
  if (qword_1ED4CC3D8 != -1)
  {
    FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke;
  block[3] = &unk_1E749CEB8;
  v9 = a1;
  block[4] = &v10;
  block[5] = a2;
  dispatch_sync(sProcessStateTrackerDispatchQueue, block);
  objc_autoreleasePoolPop(v4);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_196FC4914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

size_t __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  if (!v2)
  {
    result = __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke_cold_2(&v23, v4, v5, v6, v7, v8, v9, v10);
    v21 = v23;
    goto LABEL_6;
  }

  v11 = v3;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
LABEL_10:
    result = 1;
    goto LABEL_5;
  }

  v12 = [_MergedGlobals_4 objectForKey:v11];
  if (!v12)
  {
    __FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_block_invoke_cold_1(&v22, v13, v14, v15, v16, v17, v18, v19);
    v21 = v22;
    goto LABEL_10;
  }

  result = [*(v12 + 8) purgeSuspended];
  v21 = 0;
LABEL_5:
  *v2 = result;
LABEL_6:
  *(*(*(a1 + 32) + 8) + 24) = v21;
  return result;
}

uint64_t FigPurgeAndRenewProcessStateTrackerModifyPurgeEligibilityForPID(int a1, char a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigPurgeAndRenewProcessStateTracker[1], @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v5, 0, gFigPurgeAndRenewProcessStateTracker);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CC68, @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CC60);
  if (qword_1ED4CC3D8 != -1)
  {
    FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_cold_1();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigPurgeAndRenewProcessStateTrackerModifyPurgeEligibilityForPID_block_invoke;
  v8[3] = &unk_1E749CEE0;
  v8[4] = &v11;
  v9 = a1;
  v10 = a2;
  dispatch_sync(sProcessStateTrackerDispatchQueue, v8);
  objc_autoreleasePoolPop(v4);
  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_196FC4B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FigPurgeAndRenewProcessStateTrackerStartTrackingPIDWithBlock(int a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigPurgeAndRenewProcessStateTracker[1], @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v5, 0, gFigPurgeAndRenewProcessStateTracker);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CC68, @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CC60);
  if (_os_feature_enabled_impl() && FigGetCFPreferenceNumberWithDefault(@"purge_timeout_seconds", @"com.apple.coremedia", 600))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v9 = 0;
    if (qword_1ED4CC3D8 != -1)
    {
      FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __startProcessStateTracking_block_invoke;
    block[3] = &unk_1E749CF30;
    v7 = a1;
    block[4] = a2;
    block[5] = v8;
    dispatch_sync(sProcessStateTrackerDispatchQueue, block);
    _Block_object_dispose(v8, 8);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t FigPurgeAndRenewProcessStateTrackerGetOperatorForPID(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v3 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigPurgeAndRenewProcessStateTracker[1], @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v3, 0, gFigPurgeAndRenewProcessStateTracker);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CC68, @"processtatetracker_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CC60);
  if (qword_1ED4CC3D8 != -1)
  {
    FigPurgeAndRenewProcessStateTrackerGetPurgeEligibilityForPID_cold_1();
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FigPurgeAndRenewProcessStateTrackerGetOperatorForPID_block_invoke;
  v7[3] = &unk_1E749CF08;
  v7[4] = v4;
  v7[5] = &v8;
  dispatch_sync(sProcessStateTrackerDispatchQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  objc_autoreleasePoolPop(v2);
  return v5;
}

void sub_196FC4EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __ensureProcessStateTrackerDispatchQExists_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  sProcessStateTrackerDispatchQueue = dispatch_queue_create("com.apple.coremedia.pnrq", v0);
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  _MergedGlobals_4 = result;
  return result;
}

size_t __startProcessStateTracking_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  if ([_MergedGlobals_4 objectForKey:v4])
  {
    [_MergedGlobals_4 removeObjectForKey:v4];
  }

  v5 = [FigPurgeAndRenewPurgeOperator operatorForClientPID:v2 notificationQueue:sProcessStateTrackerDispatchQueue withPurgeBlock:v3];
  if (!v5)
  {
    result = __startProcessStateTracking_block_invoke_cold_4(v42, v6, v7, v8, v9, v10, v11, v12);
LABEL_12:
    v41 = v42[0];
    goto LABEL_8;
  }

  v13 = v5;
  v14 = [[ProcessStateTracker alloc] initForClientPID:v2 withOperator:v5];
  if (!v14)
  {
    result = __startProcessStateTracking_block_invoke_cold_3(v42, v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_12;
  }

  v22 = v14;
  v23 = objc_alloc_init(ProcessStateTrackingContext);
  if (!v23)
  {
    result = __startProcessStateTracking_block_invoke_cold_2(v42, v24, v25, v26, v27, v28, v29, v30);
    goto LABEL_12;
  }

  v31 = v23;
  v32 = [MEMORY[0x1E696AD88] defaultCenter];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __startProcessTrackerOnQueue_block_invoke;
  v42[3] = &unk_1E749CF58;
  v42[4] = v4;
  v31->token = [v32 addObserverForName:@"FigProcessStateTrackerClientProcessIsTerminated" object:v13 queue:0 usingBlock:v42];
  if ([v22 isProcessTerminated])
  {
    result = __startProcessStateTracking_block_invoke_cold_1(&v43, v33, v34, v35, v36, v37, v38, v39);
    v41 = v43;
  }

  else
  {
    v31->tracker = v22;
    result = [_MergedGlobals_4 setObject:v31 forKey:v4];
    v41 = 0;
  }

LABEL_8:
  *(*(*(a1 + 40) + 8) + 24) = v41;
  return result;
}

void __startProcessTrackerOnQueue_block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __startProcessTrackerOnQueue_block_invoke_2;
  block[3] = &unk_1E749CE18;
  block[4] = *(a1 + 32);
  dispatch_async(sProcessStateTrackerDispatchQueue, block);
}

void __startProcessTrackerOnQueue_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [_MergedGlobals_4 objectForKey:v1];
  if (v2)
  {
    v3 = v2;
    [_MergedGlobals_4 removeObjectForKey:v1];
  }
}

uint64_t defaultBlock_block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC68)
  {
    v10[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC60, 1, v10, &type);
    v4 = v10[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v10[1] = 136315394;
      v11 = "defaultBlock_block_invoke";
      v12 = 1024;
      v13 = a2;
      v7 = _os_log_send_and_compose_impl();
      LOBYTE(v4) = v10[0];
    }

    else
    {
      v7 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC60, 1u, 1, v7, v7 != &v14, v4, 0, v5);
  }

  return FigXPCPurgeObjectsForPIDWithReportingBlock(a2, &__block_literal_global_108);
}

void __FigCAStatsReportingSubmitData_block_invoke(uint64_t a1)
{
  AnalyticsSendEvent();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigCAStatsReportingSubmitDataDict_block_invoke(uint64_t a1)
{
  AnalyticsSendEvent();
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

dispatch_queue_t __frcs_initOnce_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.FigReportingCAStats", 0);
  _MergedGlobals_5 = result;
  return result;
}

uint64_t FigAudioDeviceSupportsPresentationTime(AudioObjectID inObjectID)
{
  v3.mElement = 0;
  *&v3.mSelector = *"tptbbolg";
  if (sCheckTraceOnceToken != -1)
  {
    FigAudioDeviceSupportsPresentationTime_cold_1();
    if (inObjectID)
    {
      return AudioObjectHasProperty(inObjectID, &v3);
    }

LABEL_6:
    FigAudioDeviceSupportsPresentationTime_cold_2();
    return 0;
  }

  if (!inObjectID)
  {
    goto LABEL_6;
  }

  return AudioObjectHasProperty(inObjectID, &v3);
}

size_t RegisterFigCaptionDataBaseType()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&sFigCaptionDataClassDesc, ClassID, 1, &sFigCaptionDataClassID, v1, v2, v3, v4);
}

uint64_t FigCaptionDataGetTypeID()
{
  FigThreadRunOnce(&FigCaptionDataGetClassID_sRegisterFigCaptionDataBaseTypeOnce, RegisterFigCaptionDataBaseType);
  v0 = sFigCaptionDataClassID;

  return CMBaseClassGetCFTypeID(v0);
}

uint64_t FigCaptionDataCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a2)
  {
    v10 = 291;
LABEL_13:
    FigCaptionDataCreate_cold_1(v10, &v12);
    v8 = v12;
    goto LABEL_8;
  }

  if (!a3)
  {
    v10 = 292;
    goto LABEL_13;
  }

  v5 = FigCaptionDataCreateMutable(a1, &cf);
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v6 = cf;
    v7 = *(*(CMBaseObjectGetVTable(cf) + 16) + 16);
    if (v7)
    {
      v8 = v7(v6, a2);
      if (!v8)
      {
        *a3 = cf;
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

size_t figProcessStateMonitorInformRemoteOfIndirectDependencyDeathApply(uint64_t a1, uint64_t a2, const void *a3)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification(DefaultLocalCenter, @"MediaServicesProcessDeath", a2, a3);
}

uint64_t FigProcessStateMonitorPurgePreventionAssertionGetTypeID()
{
  if (qword_1ED4CC408 != -1)
  {
    FigProcessStateMonitorPurgePreventionAssertionGetTypeID_cold_1();
  }

  return qword_1ED4CC410;
}

uint64_t registerFigProcessStateMonitorPurgePreventionAssertionType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CC410 = result;
  return result;
}

uint64_t figProcessStateMonitorMustNotPurgeClientObjects(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figProcessStateMonitorMustNotPurgeClientObjects_cold_2(v24, a2, a3, a4, a5, a6, a7, a8);
    return v24[0];
  }

  if (!a2)
  {
    figProcessStateMonitorMustNotPurgeClientObjects_cold_1(v24, 0, a3, a4, a5, a6, a7, a8);
    return v24[0];
  }

  if (dword_1EAF1CC88)
  {
    v18[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, v18, &type);
    v11 = v18[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v18[1] = 136315650;
      v19 = "figProcessStateMonitorMustNotPurgeClientObjects";
      v20 = 2114;
      v21 = a1;
      v22 = 2114;
      v23 = a2;
      v14 = _os_log_send_and_compose_impl();
      LOBYTE(v11) = v18[0];
    }

    else
    {
      v14 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v14, v14 != v24, v11, 0, v12);
  }

  FigReentrantMutexLock(*(a1 + 64));
  v15 = FigPurgeAndRenewProcessStateTrackerModifyPurgeEligibilityForPID(*(a1 + 16), 1);
  if (!v15)
  {
    CFArrayAppendValue(*(a1 + 48), a2);
    *(a1 + 56) = 0;
  }

  FigReentrantMutexUnlock(*(a1 + 64));
  return v15;
}

void figProcessStateMonitorPurgePreventionAssertionTimeoutFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  context = dispatch_get_context(*(a1 + 32));
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(context);
  if (v2)
  {
    v9 = v2;
    if (!*(v2 + 16))
    {
      if (dword_1EAF1CC88)
      {
        v17[0] = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, v17, &type);
        v11 = v17[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v13 = v11;
        }

        else
        {
          v13 = v11 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v17[1] = 136315394;
          v18 = "FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID_block_invoke";
          v19 = 2112;
          v20 = v9;
          v14 = _os_log_send_and_compose_impl();
          LOBYTE(v11) = v17[0];
        }

        else
        {
          v14 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v14, v14 != &v21, v11, 0, v12);
      }

      figProcessStateMonitorMayPurgeClientObjects(v9[4], v9[3], v3, v4, v5, v6, v7, v8);
      *(v9 + 16) = 1;
      v15 = v9[5];
      if (v15)
      {
        dispatch_release(v15);
        v9[5] = 0;
      }
    }

    CFRelease(v9);
  }
}

uint64_t figProcessStateMonitorMayPurgeClientObjects(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return figProcessStateMonitorMayPurgeClientObjects_cold_3(0, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!a2)
  {
    return figProcessStateMonitorMayPurgeClientObjects_cold_2(a1, 0, a3, a4, a5, a6, a7, a8);
  }

  FigReentrantMutexLock(*(a1 + 64));
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue(*(a1 + 48), a2);
  if (FirstIndexOfValue == -1)
  {
    figProcessStateMonitorMayPurgeClientObjects_cold_1(-1, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = FirstIndexOfValue;
    if (dword_1EAF1CC88)
    {
      v32 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v32, &type);
      v20 = v32;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v33 = 136315650;
        v34 = "figProcessStateMonitorMayPurgeClientObjects";
        v35 = 2114;
        v36 = a1;
        v37 = 2114;
        v38 = a2;
        v23 = _os_log_send_and_compose_impl();
        LOBYTE(v20) = v32;
      }

      else
      {
        v23 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v23, v23 != v39, v20, 0, v21);
    }

    CFArrayRemoveValueAtIndex(*(a1 + 48), v18);
    v24 = *(a1 + 48);
    if ((!v24 || !CFArrayGetCount(v24)) && !FigPurgeAndRenewProcessStateTrackerModifyPurgeEligibilityForPID(*(a1 + 16), 0))
    {
      *(a1 + 56) = 1;
      if (dword_1EAF1CC88)
      {
        v32 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v32, &type);
        v26 = v32;
        if (os_log_type_enabled(v25, type))
        {
          v28 = v26;
        }

        else
        {
          v28 = v26 & 0xFFFFFFFE;
        }

        if (v28)
        {
          v33 = 136315394;
          v34 = "figProcessStateMonitorMayPurgeClientObjects";
          v35 = 2114;
          v36 = a1;
          v29 = _os_log_send_and_compose_impl();
          LOBYTE(v26) = v32;
        }

        else
        {
          v29 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v29, v29 != v39, v26, 0, v27);
      }
    }
  }

  return FigReentrantMutexUnlock(*(a1 + 64));
}

void __FigProcessStateMonitorEnsureServerStarted_block_invoke()
{
  v22 = *MEMORY[0x1E69E9840];
  v16[0] = 1;
  v16[1] = FigProcessStateMonitor_handleMessage;
  v16[2] = FigProcessStateMonitor_noReplyHandleMessage;
  memset(&v16[3], 0, 24);
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigProcessStateMonitorServerTrace[1], @"figprocessstatemonitor_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v0, 0, gFigProcessStateMonitorServerTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CC88, @"figprocessstatemonitor_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CC80);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    __FigProcessStateMonitorEnsureServerStarted_block_invoke_cold_1(v16, Mutable);
  }

  else
  {
    __FigProcessStateMonitorEnsureServerStarted_block_invoke_cold_2(0, v2, v3, v4, v5, v6, v7, v8);
  }

  if (dword_1EAF1CC88)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v15, &type);
    v10 = v15;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v17 = 136315394;
      v18 = "FigProcessStateMonitorEnsureServerStarted_block_invoke";
      v19 = 1024;
      v20 = _MergedGlobals_6;
      v13 = _os_log_send_and_compose_impl();
      LOBYTE(v10) = v15;
    }

    else
    {
      v13 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v13, v13 != &v21, v10, 0, v11);
  }
}

size_t FigProcessStateMonitor_handleMessage(_xpc_connection_s *a1, xpc_object_t xdict, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v39 = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
  OpCode = FigXPCMessageGetOpCode(xdict, &v39);
  *(v41 + 6) = OpCode;
  if (!OpCode)
  {
    if (v39 == 1668441460)
    {
      value = 0;
      pid = xpc_connection_get_pid(a1);
      FigThreadRunOnce(&sRegisterFigProcessStateMonitorCompanionClassOnce, RegisterFigProcessStateMonitorCompanionClass);
      v10 = *MEMORY[0x1E695E480];
      Instance = _CFRuntimeCreateInstance();
      v14 = Instance;
      if (Instance)
      {
        *(Instance + 16) = pid;
        v15 = FigDispatchQueueCreateWithPriority("com.apple.coremedia.figprocessstatemonitor.server", 0, 0);
        *(v14 + 24) = v15;
        if (v15)
        {
          Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
          *(v14 + 48) = Mutable;
          if (Mutable)
          {
            *(v14 + 32) = 0;
            *(v14 + 40) = 0;
            *(v14 + 56) = 1;
            v19 = FigReentrantMutexCreate();
            *(v14 + 64) = v19;
            if (v19)
            {
              if (dword_1EAF1CC88)
              {
                v46 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v46, &type);
                v21 = v46;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v23 = v21;
                }

                else
                {
                  v23 = v21 & 0xFFFFFFFE;
                }

                if (v23)
                {
                  v47 = 136315394;
                  v48 = "fpsmServer_createCompanion";
                  v49 = 2114;
                  *v50 = v14;
                  v24 = _os_log_send_and_compose_impl();
                  LOBYTE(v21) = v46;
                }

                else
                {
                  v24 = 0;
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v24, v24 != v53, v21, 0, v22);
              }

              goto LABEL_17;
            }

            v36 = 355;
          }

          else
          {
            v36 = 347;
          }
        }

        else
        {
          v36 = 343;
        }

        OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", v36, v3, v16, v17);
        CFRelease(v14);
      }

      else
      {
        OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x153, v3, v12, v13);
      }

      v14 = 0;
      if (OpCode)
      {
LABEL_20:
        if (dword_1EAF1CC88)
        {
          v46 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v46, &type);
          v31 = v46;
          if (os_log_type_enabled(v30, type))
          {
            v33 = v31;
          }

          else
          {
            v33 = v31 & 0xFFFFFFFE;
          }

          if (v33)
          {
            v47 = 136315906;
            v48 = "figProcessStateMonitorHandleCreate";
            v49 = 1024;
            *v50 = pid;
            *&v50[4] = 2114;
            *&v50[6] = v14;
            v51 = 1024;
            v52 = OpCode;
            v34 = _os_log_send_and_compose_impl();
            LOBYTE(v31) = v46;
          }

          else
          {
            v34 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v34, v34 != v53, v31, 0, v32);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_30;
      }

LABEL_17:
      OpCode = FigXPCServerAssociateObjectWithConnection(a1, v14, 0, 0, 0, &value);
      if (!OpCode)
      {
        OpCode = FigCFWeakReferenceTableAddValueAssociatedWithKey(qword_1ED4CC400, v14, value);
        if (!OpCode)
        {
          xpc_dictionary_set_uint64(a3, ".objectID", value);
          OpCode = 0;
        }
      }

      goto LABEL_20;
    }

    v25 = FigCFWeakReferenceTableCopyValue(qword_1ED4CC400, uint64);
    v28 = v25;
    if (!v25)
    {
      OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x2A5, v3, v26, v27);
LABEL_30:
      *(v41 + 6) = OpCode;
      goto LABEL_31;
    }

    v29 = v25[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigProcessStateMonitor_handleMessage_block_invoke;
    block[3] = &unk_1E749D3C8;
    v38 = v39;
    block[4] = a1;
    block[5] = xdict;
    block[6] = a3;
    block[7] = &v40;
    dispatch_sync(v29, block);
    CFRelease(v28);
    OpCode = *(v41 + 6);
  }

LABEL_31:
  _Block_object_dispose(&v40, 8);
  return OpCode;
}

void sub_196FC64CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

size_t FigProcessStateMonitor_noReplyHandleMessage(uint64_t a1, xpc_object_t xdict)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15 = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
  OpCode = FigXPCMessageGetOpCode(xdict, &v15);
  *(v17 + 6) = OpCode;
  if (!OpCode)
  {
    v7 = FigCFWeakReferenceTableCopyValue(qword_1ED4CC400, uint64);
    v10 = v7;
    if (v7)
    {
      v11 = v7[3];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __FigProcessStateMonitor_noReplyHandleMessage_block_invoke;
      v13[3] = &unk_1E749D450;
      v14 = v15;
      v13[4] = a1;
      v13[5] = xdict;
      v13[6] = &v16;
      dispatch_sync(v11, v13);
      CFRelease(v10);
      OpCode = *(v17 + 6);
    }

    else
    {
      OpCode = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x2CE, v2, v8, v9);
      *(v17 + 6) = OpCode;
    }
  }

  _Block_object_dispose(&v16, 8);
  return OpCode;
}

void sub_196FC664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RegisterFigProcessStateMonitorCompanionClass()
{
  result = _CFRuntimeRegisterClass();
  sFigProcessStateMonitorServerCompanionID = result;
  return result;
}

double fpsmServerCompanion_init(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void fpsmServerCompanion_finalize(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (dword_1EAF1CC88)
  {
    v15[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, v15, &type);
    v3 = v15[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v15[1] = 136315394;
      v16 = "fpsmServerCompanion_finalize";
      v17 = 2048;
      v18 = a1;
      v6 = _os_log_send_and_compose_impl();
      LOBYTE(v3) = v15[0];
    }

    else
    {
      v6 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v6, v6 != &v19, v3, 0, v4);
  }

  v7 = a1[3];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[6];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    CFRelease(v10);
  }

  FigReentrantMutexDestroy(a1[8]);
  v11 = a1[11];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[12];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[14];
  if (v13)
  {
    CFRelease(v13);
  }
}

uint64_t __figProcessStateMonitorHandleEnrollInPurge_block_invoke_41(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  FigReentrantMutexLock(*(*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    if (dword_1EAF1CC88)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v18, &type);
      v4 = v18;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v6 = v4;
      }

      else
      {
        v6 = v4 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = *(a1 + 32);
        v19 = 136315394;
        v20 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
        v21 = 2114;
        v22 = v7;
        v8 = _os_log_send_and_compose_impl();
        LOBYTE(v4) = v18;
      }

      else
      {
        v8 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v8, v8 != v23, v4, 0, v5);
      v2 = *(a1 + 32);
    }

    v14 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __figProcessStateMonitorHandleEnrollInPurge_block_invoke_42;
    v16[3] = &__block_descriptor_48_e43_v36__0r_8__NSObject_OS_xpc_object__16q24C32l;
    v16[4] = *(a1 + 40);
    v16[5] = v2;
    FigXPCPurgeObjectsForPIDWithReportingBlock(v14, v16);
  }

  else
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 0, &v18, &type);
    v10 = v18;
    if (os_log_type_enabled(v9, type))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v19 = 136315138;
      v20 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
      v13 = _os_log_send_and_compose_impl();
      LOBYTE(v10) = v18;
    }

    else
    {
      v13 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 0, 1, v13, v13 != v23, v10, 0, v11);
  }

  return FigReentrantMutexUnlock(*(*(a1 + 32) + 64));
}

void __figProcessStateMonitorHandleEnrollInPurge_block_invoke_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (*v8 != a4)
  {
    v9 = *(*(a1 + 40) + 96);
    if (v9)
    {
      CFRelease(v9);
      *(*(a1 + 40) + 96) = 0;
    }

    v10 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();
    *(*(a1 + 40) + 96) = CFDateCreate(v10, Current);
    v8 = *(a1 + 32);
  }

  *v8 = a4;
  v12 = *(a1 + 40);
  *(v12 + 72) = a4;
  if (a5 && !*(v12 + 120))
  {
    *(v12 + 104) = a4;
    v13 = *MEMORY[0x1E695E480];
    v14 = CFAbsoluteTimeGetCurrent();
    *(*(a1 + 40) + 112) = CFDateCreate(v13, v14);
    *(*(a1 + 40) + 120) = 1;
  }

  if (dword_1EAF1CC88)
  {
    v23[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, v23, &type);
    v16 = v23[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = *(a1 + 40);
      v20 = "could not";
      v24 = "figProcessStateMonitorHandleEnrollInPurge_block_invoke";
      v23[1] = 136315906;
      v25 = 2114;
      if (!a5)
      {
        v20 = "did";
      }

      v26 = v19;
      v27 = 2048;
      v28 = a4;
      v29 = 2080;
      v30 = v20;
      v21 = _os_log_send_and_compose_impl();
      LOBYTE(v16) = v23[0];
    }

    else
    {
      v21 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v21, v21 != &v31, v16, 0, v17);
  }

  FigMemoryBarrier();
}

double FigProcessStateMonitorPurgePreventionAssertion_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigProcessStateMonitorPurgePreventionAssertion_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!*(a1 + 16))
  {
    figProcessStateMonitorMayPurgeClientObjects(*(a1 + 32), *(a1 + 24), a3, a4, a5, a6, a7, a8);
    *(a1 + 16) = 1;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    dispatch_source_cancel(v9);
    v10 = *(a1 + 40);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 32);
  if (v12)
  {

    CFRelease(v12);
  }
}

__CFString *FigProcessStateMonitorPurgePreventionAssertion_CopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = "Yes";
  if (*(a1 + 40))
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  if (!*(a1 + 16))
  {
    v5 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigProcessStateMonitorPurgePreventionAssertion %p hasTimeout:%s didPurge:%s>", a1, v6, v5);
  return v4;
}

void OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  CFStringAppendFormat(v3, 0, a3);
}

BOOL OUTLINED_FUNCTION_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, os_log_type_t type, int a21)
{

  return os_log_type_enabled(a1, type);
}

Boolean CMFormatDescriptionEqual(CMFormatDescriptionRef formatDescription, CMFormatDescriptionRef otherFormatDescription)
{
  if (formatDescription && otherFormatDescription)
  {
    return CFEqual(formatDescription, otherFormatDescription);
  }

  else
  {
    return formatDescription == otherFormatDescription;
  }
}

Boolean CMFormatDescriptionEqualIgnoringExtensionKeys(CMFormatDescriptionRef formatDescription, CMFormatDescriptionRef otherFormatDescription, CFTypeRef formatDescriptionExtensionKeysToIgnore, CFTypeRef sampleDescriptionExtensionAtomKeysToIgnore)
{
  if (formatDescription && otherFormatDescription)
  {
    return figFormatDescriptionEqualIgnoringExtensionsKeys(formatDescription, otherFormatDescription, formatDescriptionExtensionKeysToIgnore, sampleDescriptionExtensionAtomKeysToIgnore);
  }

  else
  {
    return formatDescription == otherFormatDescription;
  }
}

uint64_t figFormatDescriptionEqualIgnoringExtensionsKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, v5);
  if (!Value)
  {
    Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, 0x67656E72);
    if (!Value)
    {
      return 1;
    }
  }

  v10 = *(Value + 12);
  if (!v10)
  {
    return 0;
  }

  return v10(a1, a2, a3, a4);
}

uint64_t FigFormatDescriptionExtensionsDictionariesEqualIgnoringKeys(CFDictionaryRef theDict, const __CFDictionary *a2, unint64_t a3, unint64_t a4)
{
  if (a3 | a4)
  {
    v8 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], theDict);
    v10 = FigCFDictionaryCreateMutableCopy(v8, a2);
    CFDictionaryRemoveValue(MutableCopy, @"VerbatimSampleDescription");
    CFDictionaryRemoveValue(MutableCopy, @"VerbatimISOSampleEntry");
    CFDictionaryRemoveValue(v10, @"VerbatimSampleDescription");
    CFDictionaryRemoveValue(v10, @"VerbatimISOSampleEntry");
    if (a3)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        CFDictionaryRemoveValue(MutableCopy, a3);
        CFDictionaryRemoveValue(v10, a3);
      }

      else
      {
        v13 = CFArrayGetTypeID();
        if (v13 == CFGetTypeID(a3))
        {
          Count = CFArrayGetCount(a3);
          if (Count >= 1)
          {
            v15 = Count;
            for (i = 0; i != v15; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
              CFDictionaryRemoveValue(MutableCopy, ValueAtIndex);
              CFDictionaryRemoveValue(v10, ValueAtIndex);
            }
          }
        }
      }
    }

    if (!a4)
    {
      goto LABEL_26;
    }

    Value = CFDictionaryGetValue(MutableCopy, @"SampleDescriptionExtensionAtoms");
    v19 = FigCFDictionaryCreateMutableCopy(v8, Value);
    v20 = CFDictionaryGetValue(v10, @"SampleDescriptionExtensionAtoms");
    v21 = FigCFDictionaryCreateMutableCopy(v8, v20);
    CFDictionaryRemoveValue(MutableCopy, @"SampleDescriptionExtensionAtoms");
    CFDictionaryRemoveValue(v10, @"SampleDescriptionExtensionAtoms");
    v22 = CFStringGetTypeID();
    if (v22 == CFGetTypeID(a4))
    {
      CFDictionaryRemoveValue(v19, a4);
      CFDictionaryRemoveValue(v21, a4);
    }

    else
    {
      v23 = CFArrayGetTypeID();
      if (v23 == CFGetTypeID(a4))
      {
        v24 = CFArrayGetCount(a4);
        if (v24 >= 1)
        {
          v25 = v24;
          for (j = 0; j != v25; ++j)
          {
            v27 = CFArrayGetValueAtIndex(a4, j);
            CFDictionaryRemoveValue(v19, v27);
            CFDictionaryRemoveValue(v21, v27);
          }
        }
      }
    }

    v28 = FigCFEqual(v19, v21);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v28)
    {
LABEL_26:
      v28 = FigCFEqual(MutableCopy, v10) != 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return v28;
  }

  if (!FigCFDictionaryGetCount(theDict) && !FigCFDictionaryGetCount(a2))
  {
    return 1;
  }

  return FigCFEqual(theDict, a2);
}

CMMediaType CMFormatDescriptionGetMediaType(CMFormatDescriptionRef desc)
{
  if (desc)
  {
    LODWORD(desc) = *(desc + 4);
  }

  return desc;
}

FourCharCode CMFormatDescriptionGetMediaSubType(CMFormatDescriptionRef desc)
{
  if (desc)
  {
    LODWORD(desc) = *(desc + 5);
  }

  return desc;
}

CFDictionaryRef CMFormatDescriptionGetExtensions(CFDictionaryRef desc)
{
  if (desc)
  {
    return *(desc + 3);
  }

  return desc;
}

CFPropertyListRef CMFormatDescriptionGetExtension(CMFormatDescriptionRef desc, CFStringRef extensionKey)
{
  if (desc && (v2 = *(desc + 3)) != 0)
  {
    return CFDictionaryGetValue(v2, extensionKey);
  }

  else
  {
    return 0;
  }
}

OSStatus CMFormatDescriptionCreate(CFAllocatorRef allocator, CMMediaType mediaType, FourCharCode mediaSubType, CFDictionaryRef extensions, CMFormatDescriptionRef *formatDescriptionOut)
{
  if (formatDescriptionOut)
  {
    v11 = *&mediaType;
    FigThreadRunOnce(&sFigGenericFormatDescriptionRegisterOnce, FigGenericFormatDescriptionRegisterOnce);

    return FigDerivedFormatDescriptionCreate(allocator, v11, mediaSubType, extensions, formatDescriptionOut, v13, v14, v15);
  }

  else
  {
    v17 = qword_1EAF1CCA0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE5AuLL, "<<<< FormatDescription >>>>", 0x49E, v7, v5, v6);
  }
}

CFHashCode figCFFormatDescriptionHashForCFDictionaryKeyCallbacks(_DWORD *cf)
{
  if (cf && (v2 = CFGetTypeID(cf), FigThreadRunOnce(&CMFormatDescriptionGetTypeID_sRegisterFigFormatDescriptionOnce, registerFigFormatDescription), v2 == sFigFormatDescriptionID))
  {
    v8 = cf[4];
    v3 = *(cf + 3);
    v4 = CFHashBytes();
    if (v8 == 1986618469)
    {
      CMVideoFormatDescriptionGetDimensions(cf);
      v5 = ((v4 << 6) + 2654435769u + (v4 >> 2) + CFHashBytes()) ^ v4;
      v4 = (CFHashBytes() + 2654435769 + (v5 << 6) + (v5 >> 2)) ^ v5;
    }

    v6 = (CFHashBytes() + 2654435769 + (v4 << 6) + (v4 >> 2)) ^ v4;
    if (v3)
    {
      v6 ^= (v6 << 6) + 2654435769u + (v6 >> 2) + CFHash(v3);
    }

    return v6;
  }

  else
  {

    return CFHash(cf);
  }
}

__CFString *figFormatDescriptionCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (v4 && ((Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, *(a1 + 16))) != 0 || (Value = CFDictionaryGetValue(sFigFormatDescriptionRegistry, 0x67656E72)) != 0) && (v7 = *(Value + 20)) != 0)
  {
    v8 = v7(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = CFCopyDescription(v9);
  }

  else
  {
    v10 = 0;
  }

  if (v4 <= 1885564003)
  {
    if (v4 <= 1668310897)
    {
      if (v4 == 1635088502)
      {
        v11 = @"AuxiliaryPicture";
        goto LABEL_38;
      }

      if (v4 == 1668047728)
      {
        v11 = @"ClosedCaption";
        goto LABEL_38;
      }
    }

    else
    {
      switch(v4)
      {
        case 1668310898:
          v11 = @"CaptionGroup";
          goto LABEL_38;
        case 1835365473:
          v11 = @"Metadata";
          goto LABEL_38;
        case 1836415096:
          v11 = @"Muxed";
          goto LABEL_38;
      }
    }
  }

  else if (v4 > 1936684397)
  {
    switch(v4)
    {
      case 1936684398:
        v11 = @"Audio";
        goto LABEL_38;
      case 1952807028:
        v11 = @"Text";
        goto LABEL_38;
      case 1986618469:
        v11 = @"Video";
        goto LABEL_38;
    }
  }

  else
  {
    switch(v4)
    {
      case 1885564004:
        v11 = @"PointCloud";
        goto LABEL_38;
      case 1935832172:
        v11 = @"Subtitle";
        goto LABEL_38;
      case 1935893870:
        v11 = @"Scene";
        goto LABEL_38;
    }
  }

  if (v4 == 1952606066)
  {
    v11 = @"TaggedBufferGroup";
  }

  else
  {
    v11 = &stru_1F0B78830;
  }

LABEL_38:
  v12 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CM%@FormatDescription %p [%p]> {\n\tmediaType:'%c%c%c%c' \n\tmediaSubType:'%c%c%c%c' \n\tmediaSpecific: {\n%@ \n\t} \n\textensions: {%@}\n}", v11, a1, v12, HIBYTE(v4), BYTE2(v4), BYTE1(v4), v4, HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5, v8, v10);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}