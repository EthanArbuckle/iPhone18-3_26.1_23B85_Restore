uint64_t figCaptionCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCaptionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCaptionSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCaptionSetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCaptionSetTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCaptionSetTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPWDKeyExchangeReceiverCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = FigPWDKeyExchangeReceiverCreateForAOCP(*MEMORY[0x1E695E480], a3, a4);
  if (!v6)
  {
    v7 = *a4;
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (*(v8 + 32))
    {
      (*(v8 + 40))(v7, a2);
    }
  }

  return v6;
}

uint64_t FigAssetCacheInspectorCreate_File(const void *a1, CFTypeRef cf, CFTypeRef *a3)
{
  v21 = 0;
  cfa = 0;
  if (!cf)
  {
    goto LABEL_25;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != FigAssetGetTypeID() || !a3)
  {
    goto LABEL_25;
  }

  FigAssetCacheInspectorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = dispatch_queue_create("com.apple.coremedia.assetcacheinspector_file.statequeue", 0);
  *DerivedStorage = v9;
  if (!v9)
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  DerivedStorage[2] = v10;
  DerivedStorage[3] = CFRetain(cf);
  v11 = DerivedStorage[2];
  CMBaseObject = FigAssetGetCMBaseObject(cf);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    goto LABEL_21;
  }

  v7 = v13(CMBaseObject, @"assetProperty_CreationURL", v11, DerivedStorage + 4);
  if (v7)
  {
LABEL_26:
    v17 = v7;
    goto LABEL_22;
  }

  if (!DerivedStorage[4])
  {
    goto LABEL_25;
  }

  v14 = DerivedStorage[2];
  v15 = FigAssetGetCMBaseObject(cf);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
LABEL_21:
    v17 = 4294954514;
    goto LABEL_22;
  }

  v17 = v16(v15, @"assetProperty_CreationOptionsDictionary", v14, &v21);
  v18 = v21;
  if (!v17)
  {
    if (v21)
    {
      URLValue = FigCFDictionaryGetURLValue();
      if (URLValue)
      {
        URLValue = CFRetain(URLValue);
      }

      DerivedStorage[5] = URLValue;
    }

    *a3 = CFRetain(cfa);
    v18 = v21;
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_22:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v17;
}

uint64_t *acif_invalidateDispatch(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      if (!*(v1 + 8))
      {
        *(v1 + 8) = 1;
      }
    }
  }

  return result;
}

uint64_t acif_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t acif_copyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figSampleGeneratorRemoteCreateCommon(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, void *a7)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  if (!a7)
  {
    goto LABEL_23;
  }

  if (qword_1ED4CB448 != -1)
  {
    dispatch_once(&qword_1ED4CB448, &__block_literal_global_68);
  }

  v13 = _MergedGlobals_91;
  if (_MergedGlobals_91)
  {
    goto LABEL_20;
  }

  FigXPCRemoteClientCopyMemoryRecipient();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
LABEL_32:
    v13 = ObjectID;
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (!FigFormatReaderIsRemote(a2))
  {
LABEL_23:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
LABEL_31:
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_32;
  }

  ObjectID = FigFormatReaderXPCRemoteGetObjectID(a2, &v32);
  if (ObjectID)
  {
    goto LABEL_32;
  }

  xpc_dictionary_set_uint64(v34, "FormatReader", v32);
LABEL_10:
  if (!a3)
  {
    goto LABEL_14;
  }

  if (!FigTrackReaderIsRemote(a3))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    goto LABEL_31;
  }

  ObjectID = FigTrackReaderXPCRemoteGetObjectID(a3, &v31);
  if (ObjectID)
  {
    goto LABEL_32;
  }

  xpc_dictionary_set_uint64(v34, "TrackReader", v31);
LABEL_14:
  xpc_dictionary_set_uint64(v34, "CreationOptions", a6);
  xpc_dictionary_set_BOOL(v34, "AttachByteReferences", a4 != 0);
  if (a5)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v21 = 0u;
    v22 = 0u;
    FigTimebaseGetSyncMoment(a5, &v21);
    bytes[0] = v21;
    bytes[1] = v22;
    v26 = *&v23[0];
    v27 = *(v23 + 8);
    v28 = *(&v23[1] + 1);
    v29 = v24;
    xpc_dictionary_set_data(v34, "TimebaseSyncMoment", bytes, 0x48uLL);
  }

  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_32;
  }

  uint64 = xpc_dictionary_get_uint64(v33, *MEMORY[0x1E69615A0]);
  *&bytes[0] = 0;
  FigSampleGeneratorGetClassID();
  v13 = CMDerivedObjectCreate();
  v16 = *&bytes[0];
  if (v13)
  {
    if (*&bytes[0])
    {
LABEL_28:
      CFRelease(v16);
    }
  }

  else
  {
    v17 = a5 != 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 16) = FigSimpleMutexCreate();
    *(DerivedStorage + 32) = FigSimpleMutexCreate();
    *DerivedStorage = uint64;
    *(DerivedStorage + 48) = v17;
    v19 = *&bytes[0];
    v13 = FigXPCRemoteClientAssociateObject();
    if (!v13)
    {
      *a7 = v19;
      goto LABEL_20;
    }

    if (v19)
    {
      v16 = v19;
      goto LABEL_28;
    }
  }

LABEL_20:
  FigXPCRelease();
  FigXPCRelease();
  if (v30)
  {
    CFRelease(v30);
  }

  return v13;
}

uint64_t remoteSampleGenerator_handleServerMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t remoteSampleGenerator_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 24) = 0;
  }

  FigSimpleMutexDestroy();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  FigXPCRemoteClientDisassociateObject();
  if (*DerivedStorage && !*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigXPCRelease();
  return FigXPCRelease();
}

uint64_t remoteSampleGenerator_GenerateSampleBuffersForRequests(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = 0;
  v40 = 0;
  value[1] = 0;
  xdict = 0;
  cf = 0;
  value[0] = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_44;
  }

  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteSampleGenerator_GetObjectID(a1, &v40);
  if (ObjectID)
  {
LABEL_44:
    v31 = ObjectID;
    Mutable = 0;
    v15 = 0;
    goto LABEL_33;
  }

  FigSimpleMutexLock();
  v11 = FigXPCCreateBasicMessage();
  if (v11)
  {
    v31 = v11;
LABEL_47:
    Mutable = 0;
LABEL_49:
    v15 = 0;
LABEL_32:
    FigSimpleMutexUnlock();
    goto LABEL_33;
  }

  xpc_dictionary_set_int64(v39, "RequestCount", a2);
  v12 = xpc_array_create(0, 0);
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v31 = FigSignalErrorAtGM();
    goto LABEL_47;
  }

  v33 = a4;
  v34 = a5;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v31 = FigSignalErrorAtGM();
    goto LABEL_49;
  }

  v15 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    v31 = FigSignalErrorAtGM();
    goto LABEL_32;
  }

  if (a2 >= 1)
  {
    v16 = a2;
    v17 = a3;
    do
    {
      memset(bytes, 0, sizeof(bytes));
      v18 = *v17;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v19)
      {
LABEL_31:
        v31 = 4294954514;
        goto LABEL_32;
      }

      SampleBufferGeneratorRequestXPCMessage = v19(v18, value);
      if (SampleBufferGeneratorRequestXPCMessage)
      {
        goto LABEL_42;
      }

      CFArrayAppendValue(Mutable, value[0]);
      v21 = *(v17 + 28);
      if (v21)
      {
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v22)
        {
          goto LABEL_31;
        }

        SampleBufferGeneratorRequestXPCMessage = v22(v21, &cf);
        if (SampleBufferGeneratorRequestXPCMessage)
        {
LABEL_42:
          v31 = SampleBufferGeneratorRequestXPCMessage;
          goto LABEL_32;
        }

        CFArrayAppendValue(v15, cf);
      }

      SampleBufferGeneratorRequestXPCMessage = remoteSampleGenerator_createSampleBufferGeneratorRequestXPCMessage(v17, value[0], cf, bytes);
      if (SampleBufferGeneratorRequestXPCMessage)
      {
        goto LABEL_42;
      }

      xpc_array_set_data(v12, 0xFFFFFFFFFFFFFFFFLL, bytes, 0x30uLL);
      if (value[0])
      {
        CFRelease(value[0]);
        value[0] = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v17 = (v17 + 68);
      --v16;
    }

    while (v16);
  }

  xpc_dictionary_set_value(v39, "SampleBufferGenerationRequestArray", v12);
  SampleBufferRequestor = CreateSampleBufferRequestor(a3, a2, v33, v34);
  v24 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v24)
  {
    goto LABEL_29;
  }

  array = xpc_dictionary_get_array(xdict, "SampleBufferResponseArray");
  if (array)
  {
    v26 = array;
    count = xpc_array_get_count(array);
    if (count)
    {
      v28 = count;
      v29 = 0;
      while (1)
      {
        dictionary = xpc_array_get_dictionary(v26, v29);
        v24 = remoteSampleGenerator_processSingleSampleBufferResponse(a1, SampleBufferRequestor, dictionary, 0);
        if (v24)
        {
          goto LABEL_29;
        }

        if (v28 == ++v29)
        {
          goto LABEL_27;
        }
      }
    }

    goto LABEL_27;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  v24 = FigSignalErrorAtGM();
  if (!v24)
  {
LABEL_27:
    v24 = FigXPCCreateBasicMessage();
    if (!v24)
    {
      v24 = FigXPCRemoteClientSendSyncMessage();
    }
  }

LABEL_29:
  v31 = v24;
  FigSimpleMutexUnlock();
  if (SampleBufferRequestor)
  {
    free(SampleBufferRequestor);
  }

LABEL_33:
  if (value[0])
  {
    CFRelease(value[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v31;
}

uint64_t remoteSampleGenerator_CreateBatch(const void *a1, uint64_t a2, void *a3)
{
  v15 = 0;
  if (!a1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_14:
    ObjectID = FigSignalErrorAtGM();
LABEL_15:
    v9 = ObjectID;
    goto LABEL_10;
  }

  ObjectID = remoteSampleGenerator_GetObjectID(a1, &v15);
  if (ObjectID)
  {
    goto LABEL_15;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_15;
  }

  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_14;
  }

  v7 = uint64;
  v8 = *(CMBaseObjectGetDerivedStorage() + 48);
  v16 = 0;
  FigSampleGeneratorBatchGetClassID();
  v9 = CMDerivedObjectCreate();
  v10 = v16;
  if (v9)
  {
    if (!v16)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v11 = v8 == 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 16) = FigSimpleMutexCreate();
  *DerivedStorage = v7;
  *(DerivedStorage + 24) = v11;
  *(DerivedStorage + 28) = 0;
  *(DerivedStorage + 40) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  *(DerivedStorage + 32) = CFRetain(a1);
  v13 = v16;
  v9 = FigXPCRemoteClientAssociateObject();
  if (v9)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    v10 = v13;
LABEL_20:
    CFRelease(v10);
    goto LABEL_10;
  }

  *a3 = v13;
LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t remoteSampleGenerator_createSampleBuffer(uint64_t a1, uint64_t *a2, uint64_t a3, CFTypeRef *a4)
{
  v24 = 0;
  v25 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v21 = 0;
  cf = 0;
  if (!a1 || !a2 || !*a2 || !a4 || *(CMBaseObjectGetDerivedStorage() + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v10 = FigSignalErrorAtGM();
    goto LABEL_33;
  }

  v8 = *a2;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9(v8, &cf);
  if (v10)
  {
LABEL_33:
    v14 = v10;
    goto LABEL_15;
  }

  v11 = *(a2 + 28);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
LABEL_14:
    v14 = 4294954514;
    goto LABEL_15;
  }

  v10 = v12(v11, &v21);
  if (v10)
  {
    goto LABEL_33;
  }

LABEL_11:
  FigSimpleMutexLock();
  if (a3 && (v20 = 0, ObjectID = remoteSampleGeneratorBatch_GetObjectID(a3, &v20), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v14 = ObjectID;
    FigSimpleMutexUnlock();
  }

  else
  {
    SampleBufferRequestor = CreateSampleBufferRequestor(a2, 1, 0, 0);
    memset(v19, 0, sizeof(v19));
    SampleBufferGeneratorRequestXPCMessage = remoteSampleGenerator_createSampleBufferGeneratorRequestXPCMessage(a2, cf, v21, v19);
    if (SampleBufferGeneratorRequestXPCMessage || (xpc_dictionary_set_data(v25, "SampleBufferGenerationRequest", v19, 0x30uLL), SampleBufferGeneratorRequestXPCMessage = FigXPCRemoteClientSendSyncMessageCreatingReply(), SampleBufferGeneratorRequestXPCMessage) || (value = xpc_dictionary_get_value(v24, "SampleBufferResponse"), SampleBufferGeneratorRequestXPCMessage = remoteSampleGenerator_processSingleSampleBufferResponse(a1, SampleBufferRequestor, value, v23), SampleBufferGeneratorRequestXPCMessage) || !a3 && ((SampleBufferGeneratorRequestXPCMessage = FigXPCCreateBasicMessage(), SampleBufferGeneratorRequestXPCMessage) || (SampleBufferGeneratorRequestXPCMessage = FigXPCRemoteClientSendSyncMessage(), SampleBufferGeneratorRequestXPCMessage)))
    {
      v14 = SampleBufferGeneratorRequestXPCMessage;
    }

    else
    {
      v14 = 0;
      *a4 = v23[0];
      v23[0] = 0;
    }

    FigSimpleMutexUnlock();
    if (SampleBufferRequestor)
    {
      free(SampleBufferRequestor);
    }
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  if (v23[0])
  {
    CFRelease(v23[0]);
  }

  return v14;
}

uint64_t remoteSampleGenerator_processSingleSampleBufferResponse(uint64_t a1, uint64_t *a2, void *a3, void **a4)
{
  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2 || !a3 || (v8 = DerivedStorage, v9 = xpc_dictionary_get_BOOL(a3, "SampleBufferDataReady"), int64 = xpc_dictionary_get_int64(a3, "SampleBufferErrorReturn"), valuePtr = xpc_dictionary_get_int64(a3, "RequestID"), v11 = valuePtr, valuePtr >= *a2))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v19 = FigSignalErrorAtGM();
LABEL_21:
    v18 = v19;
    goto LABEL_22;
  }

  v12 = MEMORY[0x1E695E480];
  if (!int64)
  {
    v19 = FigXPCRemoteClientCopyMemoryRecipient();
    if (v19)
    {
      goto LABEL_21;
    }

    v19 = FigXPCMessageCopyCMSampleBuffer();
    if (v19)
    {
      goto LABEL_21;
    }
  }

  if (v9)
  {
    v13 = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v13 = CFNumberCreate(*v12, kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(*(v8 + 24), v13, value);
    FigSimpleMutexUnlock();
  }

  v14 = value;
  v15 = a2[1] + 68 * v11;
  if (value)
  {
    v16 = *(v15 + 44);
    if (v16)
    {
      if (v16(*(v15 + 52), *(v15 + 60), value))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
      }
    }
  }

  v17 = a2[3];
  if (v17)
  {
    v17(a2[2], v15, int64, v14);
  }

  if (a4)
  {
    *a4 = value;
    value = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v18 = 0;
LABEL_22:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t remoteSampleGeneratorBatch_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFSetApplyFunction(v3, remoteSampleGeneratorBatch_removeListener, a1);
  }

  if (!*(DerivedStorage + 28))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v6)
    {
      v6(a1);
    }
  }

  FigSimpleMutexDestroy();
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  FigXPCRemoteClientDisassociateObject();
  if (*DerivedStorage && !*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  return FigXPCRelease();
}

uint64_t remoteSampleGeneratorBatch_Commit(uint64_t a1)
{
  v6 = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  ObjectID = remoteSampleGeneratorBatch_GetObjectID(a1, &v6);
  if (ObjectID)
  {
LABEL_13:
    v4 = ObjectID;
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v3 = FigSignalErrorAtGM();
  }

  else
  {
    *(CMBaseObjectGetDerivedStorage() + 28) = 1;
    v3 = FigXPCCreateBasicMessage();
    if (!v3)
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
      if (!v3)
      {
        if (!CFSetGetCount(*(DerivedStorage + 40)) || *(DerivedStorage + 24))
        {
          *(CMBaseObjectGetDerivedStorage() + 28) = 2;
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        v4 = 0;
        goto LABEL_10;
      }
    }
  }

  v4 = v3;
LABEL_10:
  FigSimpleMutexUnlock();
LABEL_11:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t remoteSampleGeneratorBatch_Cancel(uint64_t a1)
{
  v6 = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  ObjectID = remoteSampleGeneratorBatch_GetObjectID(a1, &v6);
  if (ObjectID)
  {
LABEL_11:
    v3 = ObjectID;
    goto LABEL_9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 28) == 2)
  {
    v3 = 0;
  }

  else
  {
    *(CMBaseObjectGetDerivedStorage() + 28) = 4;
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }

    v3 = v4;
  }

  FigSimpleMutexUnlock();
LABEL_9:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t FigSampleGeneratorRemoteCreateForFormatReader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleGeneratorRemoteCreateForTrackReader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleGeneratorRemoteCreateForTrackReaderProducingByteReferenceSampleBuffers_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleGeneratorBatch_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateSampleBufferRequestor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t remoteSampleGenerator_createSampleBufferGeneratorRequestXPCMessage_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t remoteSampleGenerator_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleGeneratorBatch_GetState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

CFDictionaryRef FigFairPlayCreateSinfExtensionsFromSinfData()
{
  OUTLINED_FUNCTION_2_122(*MEMORY[0x1E69E9840]);
  if (v2)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_1_124();
      keys[0] = @"sinf";
      v5 = 1;
      if (!v1)
      {
        return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }

    else
    {
      v5 = 0;
      v3 = values;
      v4 = keys;
      if (!v1)
      {
        return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }

    *v3 = v1;
    *v4 = @"UUID";
    return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, ++v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return 0;
}

CFDictionaryRef FigFairPlayCreateSinfExtensionsFromPinfData()
{
  OUTLINED_FUNCTION_2_122(*MEMORY[0x1E69E9840]);
  if (v2)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_1_124();
      keys[0] = @"pinf";
      v5 = 1;
      if (!v1)
      {
        return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }

    else
    {
      v5 = 0;
      v3 = values;
      v4 = keys;
      if (!v1)
      {
        return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }

    *v3 = v1;
    *v4 = @"dpInfo";
    return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, ++v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return 0;
}

uint64_t assetCacheInspectorServer_handleRemoteMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  value = 0;
  v4 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v4)
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
  }

  v6 = v4;
  if (!v4)
  {
    return 4294950034;
  }

  return v6;
}

uint64_t ParseAVIFile(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = a1;
  result = RIFFAtomStreamInitWithByteStream(*(a1 + 24), 0, 1, v3);
  if (!result)
  {
    return ProcessChildRIFFAtoms(v3, &ParseAVIFile_atomDispatch, 1, &v2);
  }

  return result;
}

uint64_t ParseMainRIFF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(result) = OUTLINED_FUNCTION_1_125(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5]);
  if (!result)
  {
    LODWORD(result) = ProcessChildRIFFAtoms(v10, &ParseMainRIFF_atomDispatch, 3, v8);
  }

  if (result)
  {
    return result;
  }

  else
  {
    return 1937010544;
  }
}

uint64_t ParseHeaderList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_125(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5]);
  if (!result)
  {
    return ProcessChildRIFFAtoms(v10, &ParseHeaderList_atomDispatch, 2, v8);
  }

  return result;
}

uint64_t ParseStreamList(uint64_t a1, void *a2)
{
  memset(v12, 0, sizeof(v12));
  memset(__src, 0, 108);
  result = RIFFAtomStreamInitWithParent(a1, 0, v12);
  if (result)
  {
    return result;
  }

  v11[0] = a2;
  v11[1] = __src;
  v4 = ProcessChildRIFFAtoms(v12, ParseStreamList_atomDispatch, 4, v11);
  if (!v4 && !*(&__src[0] + 1))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v4 = FigSignalErrorAtGM();
  }

  if (v4)
  {
    FigFormatDescriptionRelease();
    *(&__src[0] + 1) = 0;
    free(*(&__src[6] + 4));
    return 0;
  }

  v5 = *a2;
  v6 = v5[6];
  v7 = v5[8];
  if (v6 == v5[7])
  {
    if (v7)
    {
      v8 = v6 + 2;
      v7 = malloc_type_realloc(v7, 108 * (v6 + 2), 0x106004053A53023uLL);
      if (v7)
      {
        v5[7] = v8;
        v5[8] = v7;
        goto LABEL_12;
      }
    }

    else
    {
      *(v5 + 3) = xmmword_196E728A0;
      v7 = malloc_type_malloc(0xD8uLL, 0x106004053A53023uLL);
      v5[8] = v7;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM();
  }

LABEL_12:
  memcpy(&v7[108 * v5[6]], __src, 0x6CuLL);
  v9 = "dc";
  if (DWORD1(__src[0]) == 1936684398)
  {
    v9 = "wb";
  }

  snprintf(__str, 5uLL, "%02d%s", v5[6], v9);
  result = 0;
  *(v5[8] + 108 * v5[6]++) = *__str;
  return result;
}

uint64_t Parse_avih(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  OUTLINED_FUNCTION_3_99();
  CurrentAtomData = RIFFAtomStreamReadCurrentAtomData(v3, v4, 56, v5);
  if (!CurrentAtomData)
  {
    v7 = *a2;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    *(v7 + 96) = v13;
    *(v7 + 100) = v9;
    *(v7 + 104) = v10;
    CMTimeMake(&v12, v10 * v8, 1000000);
    *(v7 + 72) = v12;
  }

  return CurrentAtomData;
}

uint64_t Parse_strh(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_99();
  result = RIFFAtomStreamReadCurrentAtomData(v3, v4, 48, v5);
  if (!result)
  {
    v7 = bswap32(v13);
    if (v7 == 1986618483)
    {
      v8 = 1986618469;
    }

    else
    {
      if (v7 != 1635083379)
      {
        return 4294954451;
      }

      v8 = 1936684398;
    }

    v9 = *(a2 + 8);
    *(v9 + 4) = v8;
    v10 = timescale;
    *(v9 + 84) = timescale;
    if (v10)
    {
      CMTimeMake(&v12, v14 * v16, v10);
      result = 0;
      epoch = v12.epoch;
      *(v9 + 20) = *&v12.value;
      *(v9 + 36) = epoch;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t Parse_strf(uint64_t a1, uint64_t **a2)
{
  v3 = a2[1];
  OUTLINED_FUNCTION_613();
  BBuf = RIFFAtomStreamReadCurrentAtomDataAndCreateBBuf(v4, v5, v6, v7);
  if (BBuf)
  {
    return BBuf;
  }

  v9 = *(v3 + 1);
  if (v9 != 1986618469)
  {
    if (v9 == 1936684398)
    {
      v10 = **a2;
      v70 = 0;
      *keys = 0u;
      v69 = 0u;
      memset(&outPropertyData, 0, sizeof(outPropertyData));
      *values = 0u;
      v66 = 0u;
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      CMBlockBufferGetDataPointer(0, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      v11 = lengthAtOffsetOut;
      if (lengthAtOffsetOut <= 7)
      {
        goto LABEL_34;
      }

      if (lengthAtOffsetOut >= 0x12 && (*dataPointerOut == -2 ? (v12 = *(dataPointerOut + 8) >= 0x16u) : (v12 = 0), v12))
      {
        if (lengthAtOffsetOut <= 0x27)
        {
          goto LABEL_34;
        }

        v31 = *dataPointerOut;
        v32 = *(dataPointerOut + 1);
        v70 = *(dataPointerOut + 4);
        *keys = v31;
        v69 = v32;
        v13 = 1;
      }

      else
      {
        __memcpy_chk();
        v13 = 0;
      }

      v33 = HIDWORD(keys[0]);
      if (!HIDWORD(keys[0]))
      {
        goto LABEL_34;
      }

      v34 = SWORD1(keys[0]);
      if (SWORD1(keys[0]) < 0)
      {
        goto LABEL_34;
      }

      if (HIDWORD(keys[0]) >= 0xFFFF0000)
      {
        v33 = WORD2(keys[0]);
        HIDWORD(keys[0]) = WORD2(keys[0]);
      }

      if (!WORD1(keys[0]))
      {
        v34 = 1;
        WORD1(keys[0]) = 1;
      }

      outPropertyData.mChannelsPerFrame = v34;
      outPropertyData.mSampleRate = v33;
      if (v13)
      {
        if (v11 >= 0x29)
        {
LABEL_34:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          v27 = FigSignalErrorAtGM();
          v35 = 0;
LABEL_35:
          free(v35);
          return v27;
        }

        if (!memcmp(&unk_196E7843A, &v69 + 10, 0xEuLL))
        {
          v37 = WORD4(v69);
        }

        else
        {
          v37 = 0;
        }

        LOWORD(keys[0]) = v37;
        LODWORD(values[0]) = 0x10000;
        HIDWORD(values[0]) = SWORD2(v69);
        LODWORD(values[1]) = 0;
        v36 = 32;
      }

      else
      {
        v36 = 0;
        v37 = keys[0];
      }

      p_mFormatID = &outPropertyData.mFormatID;
      v39 = 1634492791;
      switch(v37)
      {
        case 0:
          goto LABEL_34;
        case 1:
        case 3:
          outPropertyData.mFormatID = 1819304813;
          if (v13 && WORD1(v69) && SHIWORD(keys[1]) != WORD1(v69))
          {
            goto LABEL_34;
          }

          v39 = HIWORD(keys[1]);
          if ((HIWORD(keys[1]) & 0x8000) != 0)
          {
            goto LABEL_34;
          }

          p_mFormatID = &outPropertyData.mBitsPerChannel;
          if (HIWORD(keys[1]))
          {
            if (HIWORD(keys[1]) >= 9u)
            {
              if (HIWORD(keys[1]) < 0x11u)
              {
                v39 = 16;
                HIWORD(keys[1]) = 16;
                if (v37 == 3)
                {
                  goto LABEL_85;
                }

                goto LABEL_90;
              }

LABEL_84:
              outPropertyData.mFormatFlags = 8;
              if (v37 == 3)
              {
LABEL_85:
                v58 = 9;
                goto LABEL_91;
              }

              if (v39 == 8)
              {
                goto LABEL_92;
              }

LABEL_90:
              v58 = 12;
LABEL_91:
              outPropertyData.mFormatFlags = v58;
LABEL_92:
              *p_mFormatID = v39;
LABEL_93:
              v35 = 0;
              LODWORD(ioPropertyDataSize.value) = 40;
LABEL_94:
              LODWORD(v47) = 0;
              v53 = 0;
              v54 = 0;
LABEL_95:
              if (!AudioFormatGetProperty(0x666D7469u, v47, v54, &ioPropertyDataSize, &outPropertyData) && outPropertyData.mBytesPerPacket && outPropertyData.mFramesPerPacket)
              {
                if (v13)
                {
                  v59 = values;
                }

                else
                {
                  v59 = 0;
                }

                if (v53)
                {
                  v60 = v35;
                }

                else
                {
                  v60 = 0;
                }

                v27 = CMAudioFormatDescriptionCreate(*(v10 + 16), &outPropertyData, v36, v59, v53, v60, 0, v3 + 1);
                *(v3 + 68) = outPropertyData.mBytesPerPacket;
                mSampleRate = outPropertyData.mSampleRate;
                *(v3 + 4) = outPropertyData.mSampleRate;
                CMTimeMake(&ioPropertyDataSize, outPropertyData.mFramesPerPacket, mSampleRate);
                *(v3 + 44) = ioPropertyDataSize;
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
LABEL_106:
                v27 = FigSignalErrorAtGM();
              }

              goto LABEL_35;
            }

            v39 = 8;
          }

          else
          {
            v39 = (8 * LODWORD(keys[1]) / (v33 * v34)) & 0x7FFF;
          }

          HIWORD(keys[1]) = v39;
          goto LABEL_84;
        case 6:
          goto LABEL_92;
        case 7:
          v39 = 1970037111;
          goto LABEL_92;
        default:
          v45 = v37 | 0x6D730000;
          outPropertyData.mFormatID = v45;
          if (v11 < 0x13)
          {
            v46 = 1;
          }

          else
          {
            v46 = v13;
          }

          if (v46)
          {
            goto LABEL_93;
          }

          v47 = v11 + 28;
          v48 = malloc_type_malloc(v11 + 28, 0x100004052888210uLL);
          v35 = v48;
          if (!v48)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            goto LABEL_106;
          }

          *v48 = 0x616D72660C000000;
          v49 = bswap32(v45);
          v51 = lengthAtOffsetOut;
          v50 = dataPointerOut;
          v52 = bswap32(lengthAtOffsetOut + 8);
          *(v48 + 2) = v49;
          *(v48 + 3) = v52;
          *(v48 + 4) = v49;
          memcpy(v48 + 20, v50, v51);
          *&v35[v51 + 20] = 0x8000000;
          LODWORD(ioPropertyDataSize.value) = 40;
          v53 = v47;
          v54 = v35;
          if (v47)
          {
            goto LABEL_95;
          }

          goto LABEL_94;
      }
    }

    return 0;
  }

  v14 = **a2;
  outPropertyData.mSampleRate = 0.0;
  if (CMBlockBufferGetDataLength(0) < 0x28)
  {
    return 0;
  }

  OUTLINED_FUNCTION_613();
  CMBlockBufferGetDataPointer(v15, v16, v17, 0, v18);
  v19 = *(*&outPropertyData.mSampleRate + 4);
  v20 = *(*&outPropertyData.mSampleRate + 8);
  v21 = *(*&outPropertyData.mSampleRate + 16);
  if (v21 == 1196444237)
  {
    keys[0] = *MEMORY[0x1E6962AA8];
    Mutable = CFDictionaryCreateMutable(*(v14 + 16), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_39;
    }

    values[0] = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], CreateMicrosoftHuffmanTable_MJPGDHTSeg, 418, *MEMORY[0x1E695E498]);
    v23 = CFDictionaryCreate(*(v14 + 16), keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (values[0])
    {
      CFRelease(values[0]);
    }

    if (!v23)
    {
      goto LABEL_39;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E69600A0], v23);
    CFRelease(v23);
    SInt32 = FigCFNumberCreateSInt32();
    if (!SInt32)
    {
      goto LABEL_39;
    }

    v25 = SInt32;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6965E50], SInt32);
    CFRelease(v25);
    v26 = 1684890161;
  }

  else
  {
    Mutable = 0;
    v26 = bswap32(v21);
  }

  v28 = *(v14 + 96);
  if ((v28 - 33366) < 2)
  {
    v29 = 2997;
    v30 = 100;
LABEL_75:
    v27 = CMVideoFormatDescriptionCreate(*(v14 + 16), v26, v19, v20, Mutable, v3 + 1);
    if (!v27)
    {
      CMTimeMake(keys, v30, v29);
      *(v3 + 44) = *keys;
      *(v3 + 60) = v69;
      *(v3 + 4) = v29;
      *(v3 + 19) = v19;
      *(v3 + 20) = v20;
    }

    goto LABEL_77;
  }

  if ((v28 - 66666) < 2)
  {
    v29 = 600;
    v30 = 40;
    goto LABEL_75;
  }

  if (v28)
  {
    v40 = 1000000 / v28;
    v41 = *(v3 + 21);
    v42 = 1000000 / v28 < 500 || v41 == v40;
    v43 = 1000000 / v41;
    if (v42 || v43 < 1)
    {
      v55 = 1000000 % v28;
    }

    else
    {
      *(v14 + 96) = v43;
      v55 = 0xF4240u % v43;
      v28 = 1000000 / v41;
      v40 = v41;
    }

    if (v55 <= 0x63 && 600 / v40 * v40 == 600)
    {
      v30 = 600 / v40;
      v29 = 600;
    }

    else
    {
      v56 = (v28 * *(v14 + 104)) / 2147483650.0;
      if (v56 < 1.0)
      {
        v56 = 1.0;
      }

      v30 = (v28 / v56);
      v29 = (1000000.0 / v56);
    }

    goto LABEL_75;
  }

LABEL_39:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v27 = FigSignalErrorAtGM();
LABEL_77:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v27;
}

uint64_t Parse_indx(uint64_t a1, int **a2)
{
  dataPointerOut = 0;
  theBuffer = 0;
  v31 = 0;
  OUTLINED_FUNCTION_613();
  CurrentAtomTypeAndDataLength = RIFFAtomStreamGetCurrentAtomTypeAndDataLength(v3, v4, v5);
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_613();
  CurrentAtomTypeAndDataLength = RIFFAtomStreamReadCurrentAtomDataAndCreateBBuf(v7, v8, v9, v10);
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_8;
  }

  CMBlockBufferGetDataPointer(theBuffer, 0, &v31, 0, &dataPointerOut);
  v11 = v31;
  if (v31 <= 0x17 || (v12 = dataPointerOut, dataPointerOut[3]) || (*(**a2 + 108) = 1, *v12 != 4) || v12[2] || (v15 = *(v12 + 1), !v15) || v11 - 24 <= 16 * v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
LABEL_8:
    v13 = CurrentAtomTypeAndDataLength;
    goto LABEL_9;
  }

  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E695E480];
    while (1)
    {
      v18 = &dataPointerOut[16 * v16];
      v19 = *(v18 + 3);
      v20 = *(v18 + 8);
      v35 = 0;
      sourceBuffer = 0;
      v34 = 0;
      if (v20 < 0x18)
      {
        goto LABEL_29;
      }

      v21 = *(**a2 + 24);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v22)
      {
        break;
      }

      v13 = 4294954514;
LABEL_34:
      if (sourceBuffer)
      {
        CFRelease(sourceBuffer);
      }

      if (!v13 && ++v16 != v15)
      {
        continue;
      }

      goto LABEL_9;
    }

    DataPointer = v22(v21, v20, v19, &sourceBuffer, &v34);
    if (!DataPointer)
    {
      if (v34 == v20)
      {
        OUTLINED_FUNCTION_613();
        if (!CMBlockBufferIsRangeContiguous(v24, v25, v26))
        {
          v28 = sourceBuffer;
          sourceBuffer = 0;
          v13 = CMBlockBufferCreateContiguous(v17, v28, v17, 0, 0, 0, 0, &sourceBuffer);
          if (v28)
          {
            CFRelease(v28);
          }

          if (v13)
          {
            goto LABEL_34;
          }
        }

        DataPointer = CMBlockBufferGetDataPointer(sourceBuffer, 8uLL, 0, 0, &v35);
        if (DataPointer)
        {
          goto LABEL_30;
        }

        if (*v35 == 2 && !v35[2] && v35[3] == 1)
        {
          v27 = *(v35 + 1);
          if (v27)
          {
            if (v20 - 24 >= (8 * v27))
            {
              if (v27 < 1)
              {
                v13 = 0;
              }

              else
              {
                v29 = 0;
                v30 = *(v35 + 12);
                do
                {
                  v13 = AddChunkToTrack(*(**a2 + 24), v30 + *&v35[v29 + 24], *&v35[v29 + 28], 16, a2[1]);
                  if (v13)
                  {
                    break;
                  }

                  v29 += 8;
                  --v27;
                }

                while (v27);
              }

              goto LABEL_34;
            }
          }
        }
      }

LABEL_29:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      DataPointer = FigSignalErrorAtGM();
    }

LABEL_30:
    v13 = DataPointer;
    goto LABEL_34;
  }

  v13 = 0;
LABEL_9:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v13;
}

uint64_t Parse_idx1_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t Parse_idx1_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddChunkToTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddChunkToTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddChunkToTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddChunkToTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddChunkToTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AddChunkToTrack_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVIFormatReaderCopyTrackByIndex(uint64_t a1, CFIndex a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 < 0 || *(*DerivedStorage + 6) <= a2)
  {
    return 4294954453;
  }

  v10 = (*(*DerivedStorage + 8) + 108 * a2);
  if (a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], a2);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *a3 = ValueAtIndex;
  }

  if (a4)
  {
    *a4 = v10[1];
  }

  result = 0;
  if (a5)
  {
    *a5 = *v10;
  }

  return result;
}

uint64_t AVITrackReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  result = TrackIndexToTrack(*DerivedStorage, *(DerivedStorage + 8), &v23);
  if (!result)
  {
    if (a2 && a4)
    {
      *a4 = 0;
      if (CFEqual(a2, @"TrackFormatDescriptionArray"))
      {
        DimensionDictionary = CFArrayCreate(a3, (v23 + 8), 1, MEMORY[0x1E695E9C0]);
LABEL_13:
        v13 = DimensionDictionary;
        result = 0;
        *a4 = v13;
        return result;
      }

      if (CFEqual(a2, @"TrackTimescale"))
      {
        v10 = *MEMORY[0x1E695E480];
        p_time = (v23 + 16);
LABEL_8:
        v12 = kCFNumberSInt32Type;
LABEL_9:
        DimensionDictionary = CFNumberCreate(v10, v12, p_time);
        goto LABEL_13;
      }

      if (CFEqual(a2, @"TrackDuration") || CFEqual(a2, @"UneditedTrackDuration"))
      {
        time = *(v23 + 20);
        DimensionDictionary = CMTimeCopyAsDictionary(&time, a3);
        goto LABEL_13;
      }

      if (CFEqual(a2, @"UneditedSampleCount"))
      {
        v10 = *MEMORY[0x1E695E480];
        p_time = (v23 + 88);
        goto LABEL_8;
      }

      if (CFEqual(a2, @"TrackFrameReorderingRequired"))
      {
        goto LABEL_18;
      }

      if (!CFEqual(a2, @"TrackEnabled"))
      {
        if (CFEqual(a2, @"TrackDimensions"))
        {
          DimensionDictionary = CreateDimensionDictionary(a3, *(v23 + 76), *(v23 + 80));
          goto LABEL_13;
        }

        if (CFEqual(a2, @"TrackMatrix"))
        {
          DimensionDictionary = wvtt_CreateIdentityMatrixCFArray(a3);
          goto LABEL_13;
        }

        if (CFEqual(a2, @"TrackExcludeFromAutoSelection"))
        {
LABEL_18:
          v14 = MEMORY[0x1E695E4C0];
LABEL_21:
          DimensionDictionary = CFRetain(*v14);
          goto LABEL_13;
        }

        if (!CFEqual(a2, @"TrackIsSelfContained"))
        {
          if (CFEqual(a2, @"UneditedNumDataBytes"))
          {
            v15 = *(v23 + 92);
            if (v15 < 1)
            {
              v16 = 0;
            }

            else
            {
              v16 = 0;
              v17 = (*(v23 + 100) + 8);
              do
              {
                v18 = *v17;
                v17 += 3;
                v16 += v18;
                --v15;
              }

              while (v15);
            }

            time.value = v16;
            v10 = *MEMORY[0x1E695E480];
            p_time = &time;
            v12 = kCFNumberSInt64Type;
          }

          else
          {
            if (!CFEqual(a2, @"NominalFrameRate"))
            {
              return 4294954512;
            }

            v21 = 0.0;
            if (*(v23 + 56))
            {
              OUTLINED_FUNCTION_2_123();
              v20 = **&MEMORY[0x1E6960CC0];
              if (CMTimeCompare(&time, &v20))
              {
                OUTLINED_FUNCTION_2_123();
                v19 = 1.0 / CMTimeGetSeconds(&time);
                v21 = v19;
              }
            }

            v10 = *MEMORY[0x1E695E480];
            p_time = &v21;
            v12 = kCFNumberFloat32Type;
          }

          goto LABEL_9;
        }
      }

      v14 = MEMORY[0x1E695E4D0];
      goto LABEL_21;
    }

    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t AVITrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  result = TrackIndexToTrack(*DerivedStorage, *(DerivedStorage + 8), &v7);
  if (!result)
  {
    if (a2)
    {
      *a2 = *v7;
    }

    if (a3)
    {
      *a3 = v7[1];
    }
  }

  return result;
}

uint64_t AVICursorServiceCreateCursorAtPresentationTimeStamp(uint64_t a1, __int128 *a2, void *a3, _BYTE *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v16 = 0;
  v15 = *a2;
  result = TrackIndexToTrack(*DerivedStorage, *(DerivedStorage + 8), &v17);
  if (!result)
  {
    v11 = v17;
    *&v14.value = v15;
    v14.epoch = 0;
    result = ComputeSampleDeltaForDuration(v17, &v14, 0, &v16, a4, a5);
    if (!result)
    {
      v12 = *DerivedStorage;
      v13 = v16;

      return CreateAVISampleCursor(v12, v11, v13, a3);
    }
  }

  return result;
}

uint64_t AVICursorServiceCreateCursorNearPresentationTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, char *a6)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  return AVICursorServiceCreateCursorAtPresentationTimeStamp(a1, &v7, a4, a5, a6);
}

uint64_t AVICursorServiceCreateCursorAtFirstSampleInDecodeOrder(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_1_126(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  if (!result)
  {
    v13 = *v2;

    return CreateAVISampleCursor(v13, v16, 0, a2);
  }

  return result;
}

uint64_t AVICursorServiceCreateCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_1_126(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  if (!result)
  {
    v13 = *v2;
    v14 = *(v17 + 88) - 1;

    return CreateAVISampleCursor(v13, v17, v14, a2);
  }

  return result;
}

uint64_t AVIFormatReaderCreateFromStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVIFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVIFormatReaderCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVIFormatReaderGetTrackCount_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackIndexToTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TrackIndexToTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVITrackReaderCopySampleCursorService_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t CreateAVISampleCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateAVISampleCursor_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t CreateAVISampleCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVISampleCursorCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVISampleCursorCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVISampleCursorCopy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t AVISampleCursorCopyChunkDetails_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ReadRIFFHeader(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4, void *a5, unsigned int *a6, void *a7)
{
  v7 = a2 + 8;
  if (a2 + 8 > a3)
  {
    return 4294954953;
  }

  v19 = 0;
  v20 = 0;
  result = (*(a1 + 16))(a1, 8, a2, &v20, &v19);
  if (!result)
  {
    if (v19 != 8)
    {
      goto LABEL_14;
    }

    v16 = bswap32(v20);
    LODWORD(v20) = v16;
    if ((v20 & 0x100000000) != 0)
    {
      v17 = 9;
    }

    else
    {
      v17 = 8;
    }

    *a5 = v17 + HIDWORD(v20);
    *a7 = 8;
    if (v16 != 1380533830 && v16 != 1279873876)
    {
      goto LABEL_20;
    }

    if (a2 + 12 > a3)
    {
LABEL_14:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      return FigSignalErrorAtGM();
    }

    result = (*(a1 + 16))(a1, 4, v7, a6, &v19);
    if (!result && v19 != 4)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      result = FigSignalErrorAtGM();
    }

    if (!result)
    {
      *a6 = bswap32(*a6);
      *a7 += 4;
      v16 = v20;
LABEL_20:
      result = 0;
      *a4 = v16;
    }
  }

  return result;
}

void createMutableMovieObject(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const __CFAllocator **ptr, CFTypeRef a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v24;
  a24 = v30;
  a11 = 0;
  cf = 0;
  ptr = 0;
  if (!v29)
  {
    Mutable = 0;
    goto LABEL_13;
  }

  v31 = v29;
  v32 = v28;
  v33 = v27;
  v34 = v26;
  v35 = v25;
  MEMORY[0x19A8D3660](&FigMutableMovieGetClassID_sRegisterFigMutableMovieBaseTypeOnce, RegisterFigMutableMovieBaseType);
  if (CMDerivedObjectCreate())
  {
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_21;
  }

  v37 = DerivedStorage;
  if (MovieInformationCreate(v35, 3, &a11))
  {
LABEL_22:
    Mutable = 0;
    goto LABEL_13;
  }

  if (!a11)
  {
LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
    goto LABEL_22;
  }

  if (MediaDataChunkWriterCreate(*MEMORY[0x1E695E480], &ptr))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v38, v39, v40);
  if (Mutable && (OUTLINED_FUNCTION_613(), (v45 = CFArrayCreateMutable(v42, v43, v44)) != 0))
  {
    v46 = v45;
    *v32 = cf;
    cf = 0;
    v47 = CFRetain(v34);
    v48 = ptr;
    v49 = a11;
    *(v37 + 16) = v47;
    *(v37 + 24) = v49;
    ptr = 0;
    a11 = 0;
    *(v37 + 32) = v48;
    *(v37 + 48) = FigSimpleMutexCreate();
    *(v37 + 56) = Mutable;
    *(v37 + 64) = v46;
    *(v37 + 96) = 0;
    *(v37 + 80) = kFigMutableMovie_DefaultInterleavingPeriod;
    if (v33)
    {
      v50 = CFGetTypeID(v33);
      if (v50 == CFDictionaryGetTypeID())
      {
        FigCFDictionaryGetBooleanIfPresent();
      }
    }

    Mutable = 0;
    *v31 = v37;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  MediaDataChunkWriterRelease(ptr);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_207_0();
}

uint64_t updateTrackArrayFromMovieInformation(uint64_t a1, const __CFAllocator *a2)
{
  value = 0;
  if (!a1 || !*(a1 + 24))
  {
    return 4294950861;
  }

  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v5, v6, v7);
  if (!Mutable)
  {
    return 4294954510;
  }

  v9 = Mutable;
  v10 = MovieInformationLockForRead(*(a1 + 24));
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    if (MovieInformationGetTrackCount(*(a1 + 24)) < 1)
    {
LABEL_12:
      FigSimpleMutexLock();
      CFArrayRemoveAllValues(*(a1 + 56));
      v14 = *(a1 + 56);
      v18.length = CFArrayGetCount(v9);
      v18.location = 0;
      CFArrayAppendArray(v14, v9, v18);
      FigSimpleMutexUnlock();
      v15 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_89_5();
      while (1)
      {
        TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(a1 + 24), v2);
        if (!TrackForTrackIndex)
        {
          v15 = 4294950872;
          goto LABEL_13;
        }

        MutableMovieTrackObject = createMutableMovieTrackObject(a2, *(a1 + 24), TrackForTrackIndex, *(a1 + 32), &value);
        if (MutableMovieTrackObject)
        {
          v15 = MutableMovieTrackObject;
          goto LABEL_13;
        }

        if (!value)
        {
          break;
        }

        CFArrayAppendValue(v9, value);
        OUTLINED_FUNCTION_71_6();
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v15 = 4294954510;
    }

LABEL_13:
    MovieInformationUnlockForRead(*(a1 + 24));
  }

  CFRelease(v9);
  return v15;
}

uint64_t FigMutableMovieCreateWithURL(int a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  if (!a2 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  v9 = CMByteStreamCreateForFileURL();
  if (v9)
  {
    return v9;
  }

  if (a3)
  {
    LODWORD(v10) = a3;
  }

  else
  {
    v10 = @"com.apple.quicktime-movie";
  }

  MutableMovieObjectWithByteStream = createMutableMovieObjectWithByteStream(a1, 0, v10, a4);
  if (!MutableMovieObjectWithByteStream)
  {
    *a5 = 0;
  }

  return MutableMovieObjectWithByteStream;
}

uint64_t MutableMovie_Invalidate(uint64_t a1)
{
  if (a1)
  {
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_33_18();
      if (!v3)
      {
        v4 = *(v1 + 64);
        if (v4)
        {
          Count = CFArrayGetCount(v4);
          if (Count >= 1)
          {
            v6 = Count + 1;
            do
            {
              v2 = (v6 - 2);
              ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 64), v6 - 2);
              if (ValueAtIndex)
              {
                v8 = *ValueAtIndex;
                if (v8)
                {
                  CFRelease(v8);
                }

                v9 = OUTLINED_FUNCTION_517();
                CFAllocatorDeallocate(v9, v10);
              }

              CFArrayRemoveValueAtIndex(*(v1 + 64), v6 - 2);
              --v6;
            }

            while (v6 > 1);
          }
        }

        if (*(v1 + 48))
        {
          FigSimpleMutexLock();
          v11 = *(v1 + 56);
          if (v11)
          {
            v12 = CFArrayGetCount(*(v1 + 56));
            if (v12 >= 1)
            {
              v13 = v12 + 1;
              do
              {
                CFArrayGetValueAtIndex(v11, v13 - 2);
                v14 = OUTLINED_FUNCTION_200_1();
                v15 = CFGetAllocator(v14);
                releaseTrack(v15, v2);
                --v13;
              }

              while (v13 > 1);
            }

            CFRelease(v11);
          }

          *(v1 + 56) = 0;
          FigSimpleMutexUnlock();
        }

        v16 = *(v1 + 64);
        if (v16)
        {
          CFRelease(v16);
          *(v1 + 64) = 0;
        }

        v17 = *(v1 + 8);
        if (v17)
        {
          CFRelease(v17);
          *(v1 + 8) = 0;
        }

        v18 = *(v1 + 40);
        if (v18)
        {
          CFRelease(v18);
          *(v1 + 40) = 0;
        }

        v19 = *(v1 + 24);
        if (v19)
        {
          CFRelease(v19);
          *(v1 + 24) = 0;
        }

        v20 = *(v1 + 16);
        if (v20)
        {
          CFRelease(v20);
          *(v1 + 16) = 0;
        }

        v21 = *(v1 + 104);
        if (v21)
        {
          CFRelease(v21);
          *(v1 + 104) = 0;
        }

        MediaDataChunkWriterRelease(*(v1 + 32));
        *(v1 + 32) = 0;
        *v1 = 1;
      }
    }
  }

  return 0;
}

uint64_t MutableMovie_Finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = CMBaseObjectGetDerivedStorage();
    if (result)
    {
      v2 = result;
      MutableMovie_Invalidate(v1);
      result = *(v2 + 48);
      if (result)
      {
        result = FigSimpleMutexDestroy();
        *(v2 + 48) = 0;
      }
    }
  }

  return result;
}

CFMutableStringRef MutableMovie_CopyDebugDescription(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  if (!CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  OUTLINED_FUNCTION_55_14();
  if (v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6 && (v6(a1, @"Modified", v4, &cf), cf))
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(cf);
      }

      else
      {
        Value = 0;
      }

      CFRelease(cf);
    }

    else
    {
      Value = 0;
    }

    v9 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v9, v10, v11, a1);
    v26 = v1[1];
    v28 = v1[5];
    v12 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v12, v13, v14, Value, v26, v28);
    TrackCount = MovieInformationGetTrackCount(v1[3]);
    if (TrackCount >= 1)
    {
      v16 = TrackCount;
      for (i = 0; i != v16; ++i)
      {
        TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(v1[3], i);
        if (TrackForTrackIndex)
        {
          v25 = *(TrackForTrackIndex + 144);
          v27 = *(TrackForTrackIndex + 24);
          v19 = OUTLINED_FUNCTION_312();
          CFStringAppendFormat(v19, v20, @"<track ID: %d type: %d>", v25, v27);
        }
      }
    }

    v21 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v21, v22, v23);
  }

  return Mutable;
}

uint64_t MutableMovie_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  BasicMetrics = 4294950861;
  if (a1 && a2 && a4 && CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_33_18();
    if (v10)
    {
      return 4294950869;
    }

    v11 = MovieInformationLockForRead(*(v4 + 24));
    if (v11)
    {
      return v11;
    }

    if (CFEqual(a2, @"PreferredVolume"))
    {
      LODWORD(cf[0]) = 1065353216;
LABEL_11:
      OUTLINED_FUNCTION_197();
      BasicMetrics = MovieInformationGetBasicMetrics(v12, v13, v14, v15, v16);
      if (BasicMetrics)
      {
LABEL_15:
        MovieInformationUnlockForRead(*(v4 + 24));
        return BasicMetrics;
      }

      v17 = *MEMORY[0x1E695E480];
      v18 = kCFNumberFloat32Type;
      goto LABEL_13;
    }

    if (CFEqual(a2, @"PreferredRate"))
    {
      LODWORD(cf[0]) = 1065353216;
      goto LABEL_11;
    }

    if (CFEqual(a2, @"PosterTime"))
    {
LABEL_18:
      BasicMetrics = 4294950876;
      goto LABEL_15;
    }

    if (CFEqual(a2, @"MovieDuration"))
    {
      cf[0] = 0;
      cf[1] = 0;
      *&v96 = 0;
      MovieInformationGetMovieDuration(*(v4 + 24), cf);
      OUTLINED_FUNCTION_81_4(v21, v22, v23, v24, v25, v26, v27, v28, *cf);
      time2 = **&MEMORY[0x1E6960CC0];
      v29 = CMTimeCompare(&time1, &time2);
      if (v29 >= 1 && !*(v4 + 2))
      {
        memset(&time1, 0, sizeof(time1));
        getMaximumEditedTrackDuration(v4, &time1);
        *&time2.timescale = *&time1.timescale;
        time2.epoch = time1.epoch;
        v29 = OUTLINED_FUNCTION_43_14(v96, cf[0], cf[1], v96, *(&v96 + 1), v97, v98, cf[0], cf[1], v99, v100, time1.value);
        if ((v29 & 0x80000000) != 0)
        {
          *cf = *&time1.value;
          *&v96 = time1.epoch;
        }
      }

      OUTLINED_FUNCTION_81_4(v29, v30, v31, v32, v33, v34, v35, v36, *cf);
      p_time1 = &time1;
LABEL_25:
      AlternateGroupArray = CMTimeCopyAsDictionary(p_time1, a3);
LABEL_26:
      BasicMetrics = 0;
      goto LABEL_14;
    }

    if (CFEqual(a2, @"MovieTimeScale"))
    {
      LODWORD(cf[0]) = 0;
      OUTLINED_FUNCTION_613();
      BasicMetrics = MovieInformationGetBasicMetrics(v38, v39, v40, v41, 0);
      if (BasicMetrics)
      {
        goto LABEL_15;
      }

      v17 = *MEMORY[0x1E695E480];
      v18 = kCFNumberSInt32Type;
LABEL_13:
      AlternateGroupArray = CFNumberCreate(v17, v18, cf);
LABEL_14:
      *a4 = AlternateGroupArray;
      goto LABEL_15;
    }

    if (CFEqual(a2, @"MovieMatrix"))
    {
      LODWORD(v97) = 0;
      *cf = 0u;
      v96 = 0u;
      OUTLINED_FUNCTION_613();
      BasicMetrics = MovieInformationGetBasicMetrics(v42, v43, v44, 0, v45);
      if (BasicMetrics)
      {
        goto LABEL_15;
      }

      AlternateGroupArray = FigMatrixToCFArray(a3, cf);
      goto LABEL_14;
    }

    if (CFEqual(a2, @"URL"))
    {
      AlternateGroupArray = *(v4 + 8);
      if (!AlternateGroupArray)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }

    if (CFEqual(a2, @"FileType"))
    {
      AlternateGroupArray = *(v4 + 16);
      if (!AlternateGroupArray)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }

    if (CFEqual(a2, @"DefaultMediaDataStorageURL"))
    {
      AlternateGroupArray = *(v4 + 40);
      if (!AlternateGroupArray)
      {
        goto LABEL_26;
      }

LABEL_43:
      AlternateGroupArray = CFRetain(AlternateGroupArray);
      goto LABEL_26;
    }

    if (CFEqual(a2, @"CreationTime"))
    {
      cf[0] = 0;
      v46 = *(v4 + 24);
      v47 = cf;
      v48 = 0;
LABEL_48:
      BasicMetrics = MovieInformationGetTimeInfo(v46, v47, v48);
      if (BasicMetrics)
      {
        goto LABEL_15;
      }

      AlternateGroupArray = CFDateCreate(a3, cf[0] - *MEMORY[0x1E695E460]);
      goto LABEL_14;
    }

    if (CFEqual(a2, @"ModificationTime"))
    {
      cf[0] = 0;
      v46 = *(v4 + 24);
      v48 = cf;
      v47 = 0;
      goto LABEL_48;
    }

    if (CFEqual(a2, @"HasCompressedMovieAtom"))
    {
      HasCompressedMovieAtom = MovieInformationHasCompressedMovieAtom(*(v4 + 24));
      v50 = MEMORY[0x1E695E4D0];
      if (!HasCompressedMovieAtom)
      {
        v50 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_53;
    }

    if (CFEqual(a2, @"AvailableMetadataFormats"))
    {
      v51 = OUTLINED_FUNCTION_383();
      Mutable = CFArrayCreateMutable(v51, v52, v53);
      v55 = copyArrayOfKnownMetadataFormats(a3);
      if (v55)
      {
        v56 = v55;
        if (CFArrayGetCount(v55) >= 1)
        {
          OUTLINED_FUNCTION_89_5();
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v56, a2);
            if (ValueAtIndex)
            {
              v58 = ValueAtIndex;
              if (MovieInformationMetadataFormatIsAvailable(*(v4 + 24), ValueAtIndex))
              {
                CFArrayAppendValue(Mutable, v58);
              }
            }

            OUTLINED_FUNCTION_71_6();
          }

          while (!v59);
        }

        v60 = v56;
LABEL_74:
        CFRelease(v60);
      }
    }

    else
    {
      if (!CFEqual(a2, @"Metadata"))
      {
        if (CFEqual(a2, @"Tracks"))
        {
          LODWORD(cf[0]) = 0;
          TrackCount = MovieInformationGetTrackCount(*(v4 + 24));
          if (TrackCount < 1)
          {
            v84 = 0;
            BasicMetrics = 0;
          }

          else
          {
            v79 = TrackCount;
            v80 = OUTLINED_FUNCTION_797();
            v83 = CFArrayCreateMutable(v80, v81, v82);
            if (!v83)
            {
              goto LABEL_15;
            }

            v84 = v83;
            v85 = 0;
            BasicMetrics = 0;
            do
            {
              TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(v4 + 24), v85);
              if (TrackForTrackIndex)
              {
                BasicMetrics = MovieTrackGetBasicInfo(TrackForTrackIndex, 0, cf);
                if (!BasicMetrics)
                {
                  if (LODWORD(cf[0]))
                  {
                    FigCFArrayAppendInt32();
                    BasicMetrics = 0;
                  }
                }
              }

              ++v85;
            }

            while (v79 != v85);
          }

          *a4 = v84;
          goto LABEL_15;
        }

        if (CFEqual(a2, @"AlternateGroupArray"))
        {
          AlternateGroupArray = MovieInformationCreateAlternateGroupArray(a3, *(v4 + 24), 1);
          goto LABEL_26;
        }

        if (CFEqual(a2, @"TrackReferenceDictionary"))
        {
          cf[0] = 0;
          BasicMetrics = MovieInformationCreateTrackReferenceDictionary(a3, *(v4 + 24), cf);
          if (BasicMetrics)
          {
            goto LABEL_15;
          }

          v87 = cf[0];
        }

        else
        {
          if (CFEqual(a2, @"CouldContainFragments"))
          {
            v50 = MEMORY[0x1E695E4C0];
LABEL_53:
            AlternateGroupArray = *v50;
            goto LABEL_43;
          }

          if (!CFEqual(a2, @"ProtectedStatus"))
          {
            if (!CFEqual(a2, @"Modified"))
            {
              if (!CFEqual(a2, @"InterleavingPeriod"))
              {
                goto LABEL_18;
              }

              *cf = *(v4 + 80);
              *&v96 = *(v4 + 96);
              p_time1 = cf;
              goto LABEL_25;
            }

            v50 = MEMORY[0x1E695E4D0];
            if (!*(v4 + 1))
            {
              v50 = MEMORY[0x1E695E4C0];
            }

            goto LABEL_53;
          }

          v88 = MovieInformationGetTrackCount(*(v4 + 24));
          cf[0] = 0;
          if (v88 < 1)
          {
            BasicMetrics = 0;
            v87 = *MEMORY[0x1E695E4C0];
          }

          else
          {
            v89 = v88;
            v90 = 0;
            BasicMetrics = 0;
            v91 = *MEMORY[0x1E695E4D0];
            v92 = 1;
            do
            {
              v93 = MovieInformationFindTrackForTrackIndex(*(v4 + 24), v90);
              if (v93)
              {
                BasicMetrics = FigMutableMovieCopyTrackProperty(a1, *(v93 + 144), a3, cf);
                v94 = cf[0];
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v94 == v91)
                {
                  break;
                }
              }

              v92 = ++v90 < v89;
            }

            while (v89 != v90);
            v87 = *MEMORY[0x1E695E4C0];
            if (v92)
            {
              v87 = v91;
            }
          }
        }

        *a4 = v87;
        goto LABEL_15;
      }

      v61 = OUTLINED_FUNCTION_383();
      Mutable = CFArrayCreateMutable(v61, v62, v63);
      v64 = copyArrayOfKnownMetadataFormats(a3);
      if (v64)
      {
        v65 = v64;
        Count = CFArrayGetCount(v64);
        if (Count >= 1)
        {
          v67 = Count;
          for (i = 0; i != v67; ++i)
          {
            v69 = CFArrayGetValueAtIndex(v65, i);
            if (v69)
            {
              v70 = v69;
              MovieMetadataItemArray = MovieInformationGetMovieMetadataItemArray(*(v4 + 24), v69);
              if (MovieMetadataItemArray)
              {
                v72 = MovieMetadataItemArray;
                OUTLINED_FUNCTION_613();
                v76 = CFDictionaryCreateMutable(v73, v74, v75, 0);
                if (v76)
                {
                  v77 = v76;
                  CFDictionaryAddValue(v76, v70, v72);
                  CFArrayAppendValue(Mutable, v77);
                  CFRelease(v77);
                }
              }
            }
          }
        }

        v60 = v65;
        goto LABEL_74;
      }
    }

    BasicMetrics = 0;
    *a4 = Mutable;
    goto LABEL_15;
  }

  return BasicMetrics;
}

uint64_t MutableMovie_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v5 = 4294950861;
  if (a1 && a2 && CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_33_18();
    if (v8)
    {
      return 4294950869;
    }

    v9 = MovieInformationLockForWrite(*(v3 + 24));
    if (v9)
    {
      return v9;
    }

    if (CFEqual(a2, @"PreferredVolume"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        v10 = OUTLINED_FUNCTION_200_1();
        v11 = CFGetTypeID(v10);
        if (v4 == v11)
        {
          OUTLINED_FUNCTION_66_9(v11, v12, v13, v14, v15, v16, v17, v18, v81, v82, v84, v86, key, v89, valuePtr);
          MovieInformationSetPreferredVolume(*(v3 + 24), *&valuePtr);
LABEL_14:
          v5 = 0;
          v28 = 1;
LABEL_15:
          *(v3 + 1) = v28;
LABEL_71:
          MovieInformationUnlockForWrite(*(v3 + 24));
          return v5;
        }
      }

      goto LABEL_70;
    }

    if (CFEqual(a2, @"PreferredRate"))
    {
      if (a3)
      {
        CFNumberGetTypeID();
        v19 = OUTLINED_FUNCTION_200_1();
        v20 = CFGetTypeID(v19);
        if (v4 == v20)
        {
          OUTLINED_FUNCTION_66_9(v20, v21, v22, v23, v24, v25, v26, v27, v81, v82, v84, v86, key, v89, valuePtr);
          MovieInformationSetPreferredRate(*(v3 + 24), *&valuePtr);
          goto LABEL_14;
        }
      }

LABEL_70:
      v5 = 0;
      goto LABEL_71;
    }

    if (CFEqual(a2, @"MovieTimeScale"))
    {
      if (!a3)
      {
        goto LABEL_70;
      }

      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_70;
      }

      LODWORD(valuePtr) = 0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr > 0)
      {
        v30 = MovieInformationSetMovieTimeScale(*(v3 + 24), valuePtr);
        goto LABEL_21;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
LABEL_26:
      v5 = FigSignalErrorAtGM();
      goto LABEL_71;
    }

    if (CFEqual(a2, @"PosterTime"))
    {
      if (!a3)
      {
        goto LABEL_70;
      }

      v31 = CFDictionaryGetTypeID();
      if (v31 != CFGetTypeID(a3))
      {
        goto LABEL_70;
      }

LABEL_25:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      goto LABEL_26;
    }

    if (CFEqual(a2, @"MovieMatrix"))
    {
      if (!a3)
      {
        goto LABEL_70;
      }

      CFArrayGetTypeID();
      v32 = OUTLINED_FUNCTION_200_1();
      if (v4 != CFGetTypeID(v32))
      {
        goto LABEL_70;
      }

      v92 = 0;
      valuePtr = 0u;
      v91 = 0u;
      v5 = CFArrayToFigMatrix(a3, &valuePtr);
      if (v5)
      {
        goto LABEL_71;
      }

      v30 = MovieInformationSetMovieMatrix(*(v3 + 24), &valuePtr);
LABEL_21:
      v5 = v30;
      v28 = v30 == 0;
      goto LABEL_15;
    }

    if (CFEqual(a2, @"DefaultMediaDataStorageURL"))
    {
      if (a3)
      {
        v33 = CFGetTypeID(a3);
        if (v33 != CFURLGetTypeID())
        {
          goto LABEL_70;
        }

        v34 = *(v3 + 40);
        *(v3 + 40) = a3;
        goto LABEL_40;
      }

      v34 = *(v3 + 40);
      *(v3 + 40) = 0;
      goto LABEL_68;
    }

    if (CFEqual(a2, @"URL"))
    {
      if (a3)
      {
        v35 = CFGetTypeID(a3);
        if (v35 != CFURLGetTypeID())
        {
          goto LABEL_70;
        }

        v34 = *(v3 + 8);
        *(v3 + 8) = a3;
LABEL_40:
        CFRetain(a3);
        goto LABEL_68;
      }

      v34 = *(v3 + 8);
      *(v3 + 8) = 0;
LABEL_68:
      if (v34)
      {
        CFRelease(v34);
      }

      goto LABEL_70;
    }

    if (CFEqual(a2, @"Metadata"))
    {
      if (!a3 || (v36 = CFGetTypeID(a3), v36 == CFArrayGetTypeID()))
      {
        v37 = *MEMORY[0x1E695E480];
        v38 = copyArrayOfKnownMetadataFormats(*MEMORY[0x1E695E480]);
        if (v38)
        {
          v39 = v38;
          Count = CFArrayGetCount(v38);
          if (Count >= 1)
          {
            v41 = Count;
            for (i = 0; i != v41; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v39, i);
              if (ValueAtIndex)
              {
                v44 = ValueAtIndex;
                OUTLINED_FUNCTION_613();
                v48 = CFArrayCreate(v45, v46, v47, 0);
                if (v48)
                {
                  v49 = v48;
                  MovieInformationSetMovieMetadataItemArray(*(v3 + 24), v44, v48);
                  CFRelease(v49);
                }
              }
            }

            if (a3)
            {
              v50 = 0;
              v83 = v37;
              v85 = v41;
              v87 = v39;
              do
              {
                v51 = CFArrayGetValueAtIndex(v39, v50);
                if (v51)
                {
                  v52 = v51;
                  Mutable = CFArrayCreateMutable(v37, 0, MEMORY[0x1E695E9C0]);
                  if (Mutable)
                  {
                    v54 = Mutable;
                    v55 = CFArrayGetCount(a3);
                    if (v55 >= 1)
                    {
                      v56 = v55;
                      for (j = 0; j != v56; ++j)
                      {
                        v58 = OUTLINED_FUNCTION_618();
                        v60 = CFArrayGetValueAtIndex(v58, v59);
                        if (v60)
                        {
                          v61 = v60;
                          v62 = CFDictionaryGetTypeID();
                          if (v62 == CFGetTypeID(v61))
                          {
                            CFDictionaryGetValue(v61, @"format");
                            Value = CFDictionaryGetValue(v61, @"items");
                            if (Value)
                            {
                              v64 = Value;
                              if (FigCFEqual())
                              {
                                v93.length = CFArrayGetCount(v64);
                                v93.location = 0;
                                CFArrayAppendArray(v54, v64, v93);
                              }
                            }
                          }
                        }
                      }
                    }

                    MovieInformationSetMovieMetadataItemArray(*(v3 + 24), v52, v54);
                    CFRelease(v54);
                    v37 = v83;
                  }
                }

                ++v50;
                v39 = v87;
              }

              while (v50 != v85);
            }
          }

          CFRelease(v39);
        }

        goto LABEL_14;
      }

      goto LABEL_70;
    }

    if (!CFEqual(a2, @"TrackReferenceDictionary"))
    {
      if (CFEqual(a2, @"Modified"))
      {
        if (a3)
        {
          CFBooleanGetTypeID();
          v79 = OUTLINED_FUNCTION_200_1();
          if (v4 == CFGetTypeID(v79))
          {
            if (*MEMORY[0x1E695E4D0] != a3)
            {
              v5 = 0;
              *(v3 + 1) = 0;
              goto LABEL_71;
            }

            goto LABEL_14;
          }
        }

        goto LABEL_70;
      }

      if (CFEqual(a2, @"InterleavingPeriod"))
      {
        if (a3)
        {
          CFDictionaryGetTypeID();
          v80 = OUTLINED_FUNCTION_200_1();
          if (v4 == CFGetTypeID(v80))
          {
            CMTimeMakeFromDictionary(&valuePtr, a3);
            v5 = 0;
            *(v3 + 80) = valuePtr;
            *(v3 + 96) = v91;
            goto LABEL_71;
          }
        }

        goto LABEL_70;
      }

      if (!CFEqual(a2, @"MovieDuration") && !CFEqual(a2, @"CreationTime") && !CFEqual(a2, @"ModificationTime") && !CFEqual(a2, @"Tracks") && !CFEqual(a2, @"AlternateGroupArray") && !CFEqual(a2, @"CouldContainFragments") && !CFEqual(a2, @"AvailableMetadataFormats") && !CFEqual(a2, @"FileType") && !CFEqual(a2, @"HasCompressedMovieAtom"))
      {
        v5 = 4294950876;
        goto LABEL_71;
      }

      goto LABEL_25;
    }

    if (!a3)
    {
      goto LABEL_70;
    }

    CFDictionaryGetTypeID();
    v66 = OUTLINED_FUNCTION_200_1();
    if (v4 != CFGetTypeID(v66))
    {
      goto LABEL_70;
    }

    v67 = CFDictionaryGetCount(a3);
    v68 = malloc_type_calloc(v67, 8uLL, 0x6004044C4A2DFuLL);
    if (v68)
    {
      v69 = malloc_type_calloc(v67, 8uLL, 0x6004044C4A2DFuLL);
      if (v69)
      {
        CFDictionaryGetKeysAndValues(a3, v68, v69);
        if (v67 < 1)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          v70 = 0;
          while (1)
          {
            v71 = v68[v70];
            v72 = CFArrayGetCount(v69[v70]);
            if (v72 >= 1)
            {
              break;
            }

LABEL_88:
            if (++v70 == v67)
            {
              goto LABEL_111;
            }
          }

          v73 = v72;
          v74 = 0;
          while (1)
          {
            LODWORD(valuePtr) = 0;
            if (!FigCFArrayGetInt32AtIndex())
            {
              break;
            }

            v75 = v74 + 1;
            if (!FigCFArrayGetInt32AtIndex())
            {
              break;
            }

            v76 = *(v3 + 24);
            v77 = convertCFStringToOSType(v71);
            v78 = MovieInformationAddOneTrackReference(v76, v77, valuePtr, 0);
            v74 = v75 + 1;
            if (v74 >= v73)
            {
              v5 = v78;
              goto LABEL_88;
            }
          }

          v5 = 4294954516;
        }

        goto LABEL_111;
      }
    }

    else
    {
      v69 = 0;
    }

    v5 = 4294954510;
LABEL_111:
    free(v68);
    free(v69);
    goto LABEL_71;
  }

  return v5;
}

void getTrackEditedDuration(uint64_t a1@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  EditSegmentCount = MovieTrackGetEditSegmentCount(*(a2 + 16));
  v7 = *(a2 + 16);
  __src[0].value = 0;
  v8 = *(MEMORY[0x1E6960C98] + 32);
  v31 = *(MEMORY[0x1E6960C98] + 16);
  v32 = v8;
  v30 = *MEMORY[0x1E6960C98];
  OUTLINED_FUNCTION_63();
  if (v9)
  {
    if (!*(a1 + 2) && !MovieTrackEditsExcludeAudioPrimingAndRemainderDuration(v7))
    {
      v10 = MovieTrackCopyFormatDescriptionArray(v7);
      if (v10)
      {
        v11 = v10;
        if (CFArrayGetCount(v10) >= 1)
        {
          v12 = OUTLINED_FUNCTION_249();
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
          MovieTrackCopyEnhancedGaplessInfo(v7, __src);
          FigGaplessInfoGetGaplessSourceTimeRange(ValueAtIndex, __src[0].value);
        }

        CFRelease(v11);
        if (__src[0].value)
        {
          CFRelease(__src[0].value);
        }
      }
    }
  }

  v15 = MEMORY[0x1E6960CC0];
  v22 = *MEMORY[0x1E6960CC0];
  *&a3->value = *MEMORY[0x1E6960CC0];
  v16 = *(v15 + 16);
  a3->epoch = v16;
  if (EditSegmentCount >= 1)
  {
    v17 = 0;
    v18 = MEMORY[0x1E6960C78];
    do
    {
      OUTLINED_FUNCTION_8_47();
      memcpy(__dst, v18, sizeof(__dst));
      *&v27.value = v22;
      v27.epoch = v16;
      v19 = OUTLINED_FUNCTION_517();
      if (MovieTrackGetEditSegmentWithIndex(v19, v20, v21))
      {
        break;
      }

      do
      {
        memcpy(time1, v18, sizeof(time1));
        memcpy(lhs, __src, sizeof(lhs));
        v24[0] = v30;
        v24[1] = v31;
        v24[2] = v32;
        memcpy(rhs, __dst, sizeof(rhs));
        FigGaplessInfoAdjustEditSegmentAccordingtoGaplessAudioTimeRange(lhs, v24, rhs, time1, &v27);
        memcpy(__dst, time1, sizeof(__dst));
        lhs[0] = *a3;
        rhs[0] = time1[3];
        CMTimeAdd(a3, lhs, rhs);
        if (v17 >= EditSegmentCount - 1)
        {
          break;
        }

        time1[0] = v27;
        lhs[0] = __src[1];
      }

      while (CMTimeCompare(time1, lhs) < 0);
      ++v17;
    }

    while (v17 != EditSegmentCount);
  }

  OUTLINED_FUNCTION_651();
}

void MutableMovie_CopyHeaderData(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, const __CFAllocator **ptr, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v24;
  a24 = v29;
  v30 = 0;
  a10 = 0;
  ptr = 0;
  if (v25 && (v31 = v26) != 0)
  {
    v32 = v28;
    Mutable = 0;
    if (!v28)
    {
      goto LABEL_25;
    }

    v34 = v27;
    v35 = v25;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v30 = DerivedStorage;
    if (!DerivedStorage)
    {
      goto LABEL_24;
    }

    if (*DerivedStorage)
    {
      v30 = 0;
      Mutable = 0;
    }

    else
    {
      if (v34 && (v37 = CFGetTypeID(v34), v37 == CFDictionaryGetTypeID()))
      {
        v38 = CFDictionaryGetValue(v34, @"WriteFileTypeAtom") == *MEMORY[0x1E695E4C0];
        v39 = CFDictionaryGetValue(v34, @"SynthesizeURLForMovieProxy") != *MEMORY[0x1E695E4D0];
      }

      else
      {
        v38 = 0;
        v39 = 1;
      }

      if (createMovieHeaderMakerFromMiP(v35, v30[3], &ptr))
      {
        v30 = 0;
        goto LABEL_24;
      }

      v40 = *MEMORY[0x1E695E480];
      if (v39)
      {
        v30 = 0;
      }

      else
      {
        v30 = CFURLCreateWithString(*MEMORY[0x1E695E480], @"file:///proxy.mov", 0);
      }

      if (MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(ptr, v40, v31, v30, &a10))
      {
        goto LABEL_24;
      }

      v41 = OUTLINED_FUNCTION_266_0();
      Mutable = CFDataCreateMutable(v41, v42);
      if (Mutable)
      {
        if (v38)
        {
          goto LABEL_39;
        }

        cf = 0;
        v43 = copyFileTypeAtomAsBlockBuffer(v31, &cf);
        v44 = cf;
        if (!v43)
        {
          v43 = writeBlockBufferToCFData(cf, Mutable);
          v44 = cf;
        }

        if (v44)
        {
          CFRelease(v44);
        }

        if (!v43)
        {
LABEL_39:
          if (!writeBlockBufferToCFData(a10, Mutable))
          {
            *v32 = Mutable;
LABEL_24:
            Mutable = 0;
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_25:
  if (a10)
  {
    CFRelease(a10);
  }

  MovieHeaderMakerRelease(ptr);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  OUTLINED_FUNCTION_207_0();
}

uint64_t MutableMovie_AddTrack(uint64_t a1, int a2, const __CFDictionary *a3, uint64_t a4, unsigned int *a5)
{
  v21 = 0;
  value = 0;
  cf = 0;
  v6 = 4294950861;
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v12 = DerivedStorage;
        if (*DerivedStorage)
        {
          v6 = 4294950869;
        }

        else
        {
          v13 = MovieInformationLockForWrite(*(DerivedStorage + 24));
          if (!v13)
          {
            v6 = MovieInformationCreateTrack(*(v12 + 24), a2, 0, &v21, &cf);
            MovieInformationUnlockForWrite(*(v12 + 24));
            if (v6)
            {
              goto LABEL_13;
            }

            *(v12 + 1) = 1;
            MutableMovieTrackObject = createMutableMovieTrackObject(*MEMORY[0x1E695E480], *(v12 + 24), cf, *(v12 + 32), &value);
            if (value)
            {
              v6 = MutableMovieTrackObject;
              FigSimpleMutexLock();
              CFArrayAppendValue(*(v12 + 56), value);
              FigSimpleMutexUnlock();
              if (!a4)
              {
                goto LABEL_12;
              }

              v15 = 1752524863;
              v18 = 1752524863;
              v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v16)
              {
                v16(a4, 0, &v18);
                v15 = v18;
              }

              if (v15 == a2)
              {
LABEL_12:
                syncPropertiesOfNewTrackWithSourceTrackUsingTrackReaderOrOptionsDictionary(a1, v21, a4, a3);
                goto LABEL_13;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
            }

            v13 = FigSignalErrorAtGM();
          }

          v6 = v13;
        }
      }
    }
  }

LABEL_13:
  if (a5)
  {
    *a5 = v21;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t MutableMovie_DeleteTrack(uint64_t a1, int a2)
{
  v3 = 4294950861;
  if (a1 && a2 && CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_33_18();
    if (v6)
    {
      return 4294950869;
    }

    else
    {
      Storage = MutableMovieTrackGetStorage(a1, a2);
      if (Storage)
      {
        v8 = Storage;
        FigSimpleMutexLock();
        v9 = *(v2 + 56);
        v14.length = CFArrayGetCount(v9);
        v14.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v14, v8);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(v2 + 56), FirstIndexOfValue);
        }

        FigSimpleMutexUnlock();
        releaseTrack(*MEMORY[0x1E695E480], v8);
        v11 = MovieInformationLockForWrite(*(v2 + 24));
        if (v11)
        {
          return v11;
        }

        else
        {
          TrackForTrackID = MovieInformationFindTrackForTrackID(*(v2 + 24), a2);
          if (TrackForTrackID)
          {
            v3 = MovieInformationRemoveTrack(*(v2 + 24), TrackForTrackID);
          }

          else
          {
            v3 = 0;
          }

          MovieInformationUnlockForWrite(*(v2 + 24));
          *(v2 + 1) = v3 == 0;
        }
      }

      else
      {
        return 4294950872;
      }
    }
  }

  return v3;
}

uint64_t MutableMovie_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, void *a5)
{
  TrackTimeInfo = 4294950861;
  if (a1 && a2 && a3 && a5 && CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_33_18();
    if (v12)
    {
      return 4294950869;
    }

    v13 = MovieInformationLockForRead(*(v5 + 24));
    if (v13)
    {
      return v13;
    }

    TrackForTrackID = MovieInformationFindTrackForTrackID(*(v5 + 24), a2);
    if (!TrackForTrackID)
    {
      goto LABEL_21;
    }

    v15 = TrackForTrackID;
    Storage = MutableMovieTrackGetStorage(a1, a2);
    if (!Storage)
    {
      fig_log_get_emitter();
      v32 = FigSignalErrorAtGM();
      goto LABEL_42;
    }

    v17 = Storage;
    if (CFEqual(a3, @"Volume"))
    {
      LODWORD(valuePtr.start.value) = MovieTrackGetVolume(v15);
      v18 = *MEMORY[0x1E695E480];
      v19 = kCFNumberFloat32Type;
LABEL_12:
      DictionaryRepresentation = CFNumberCreate(v18, v19, &valuePtr);
LABEL_19:
      TrackTimeInfo = 0;
      goto LABEL_20;
    }

    if (CFEqual(a3, @"MediaDataStorageURL"))
    {
      DictionaryRepresentation = *(v17 + 5);
      if (!DictionaryRepresentation)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (CFEqual(a3, @"SampleReferenceBaseURL"))
    {
      DictionaryRepresentation = *(v17 + 6);
      if (!DictionaryRepresentation)
      {
        goto LABEL_19;
      }

LABEL_18:
      DictionaryRepresentation = CFRetain(DictionaryRepresentation);
      goto LABEL_19;
    }

    if (CFEqual(a3, @"MediaTimeScale"))
    {
      LODWORD(valuePtr.start.value) = MovieTrackGetMediaTimeScale(*(v17 + 2));
LABEL_25:
      v18 = *MEMORY[0x1E695E480];
      v19 = kCFNumberSInt32Type;
      goto LABEL_12;
    }

    if (CFEqual(a3, @"MediaType"))
    {
      LODWORD(valuePtr.start.value) = 1752524863;
      p_valuePtr = &valuePtr;
      v23 = v15;
      v24 = 0;
LABEL_28:
      BasicInfo = MovieTrackGetBasicInfo(v23, p_valuePtr, v24);
LABEL_29:
      TrackTimeInfo = BasicInfo;
      if (BasicInfo)
      {
        goto LABEL_21;
      }

      v26 = *MEMORY[0x1E695E480];
      v27 = kCFNumberSInt32Type;
      goto LABEL_31;
    }

    if (CFEqual(a3, @"MediaSubType"))
    {
      LODWORD(valuePtr.start.value) = 1752524863;
      v28 = MovieTrackCopyFormatDescriptionArray(v15);
      if (v28)
      {
        v29 = v28;
        ValueAtIndex = CFArrayGetValueAtIndex(v28, 0);
        LODWORD(valuePtr.start.value) = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
        CFRelease(v29);
      }

      goto LABEL_25;
    }

    if (CFEqual(a3, @"TrackID"))
    {
      LODWORD(valuePtr.start.value) = 0;
      v23 = OUTLINED_FUNCTION_249();
      goto LABEL_28;
    }

    if (CFEqual(a3, @"AlternateGroupID"))
    {
      TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(*(v5 + 24), v15);
LABEL_45:
      LOWORD(valuePtr.start.value) = TrackAlternateGroupID;
LABEL_46:
      v18 = *MEMORY[0x1E695E480];
      v19 = kCFNumberSInt16Type;
      goto LABEL_12;
    }

    if (CFEqual(a3, @"DefaultAlternateGroupID"))
    {
      TrackAlternateGroupID = MovieTrackGetDefaultAlternateGroupID(v15);
      goto LABEL_45;
    }

    if (CFEqual(a3, @"ProvisionalAlternateGroupID"))
    {
      LOWORD(valuePtr.start.value) = 0;
      if (!MovieTrackGetProvisionalAlternateGroupID(v15, &valuePtr))
      {
        DictionaryRepresentation = 0;
        goto LABEL_19;
      }

      goto LABEL_46;
    }

    if (CFEqual(a3, @"CreationTime"))
    {
      valuePtr.start.value = 0;
      v33 = &valuePtr;
      v34 = v15;
      v35 = 0;
LABEL_54:
      TrackTimeInfo = MovieTrackGetTrackTimeInfo(v34, v33, v35);
      if (TrackTimeInfo)
      {
        goto LABEL_21;
      }

      DictionaryRepresentation = CFDateCreate(a4, valuePtr.start.value - *MEMORY[0x1E695E460]);
      goto LABEL_20;
    }

    if (CFEqual(a3, @"ModificationTime"))
    {
      valuePtr.start.value = 0;
      v34 = OUTLINED_FUNCTION_249();
      goto LABEL_54;
    }

    if (CFEqual(a3, @"Layer"))
    {
      TrackAlternateGroupID = MovieTrackGetLayer(v15);
      goto LABEL_45;
    }

    if (CFEqual(a3, @"TrackEnabled"))
    {
      IsEnabled = MovieTrackIsEnabled(v15);
      goto LABEL_62;
    }

    if (CFEqual(a3, @"IsSelfContained"))
    {
      IsEnabled = MovieTrackIsSelfContained(v15);
      goto LABEL_62;
    }

    if (CFEqual(a3, @"TrackProtectedStatus"))
    {
      v38 = MovieTrackCopyFormatDescriptionArray(v15);
      if (v38)
      {
        v39 = v38;
        if (CFArrayGetCount(v38) < 1)
        {
          v41 = MEMORY[0x1E695E4C0];
        }

        else
        {
          OUTLINED_FUNCTION_417_0();
          v40 = MEMORY[0x1E695E4D0];
          v41 = MEMORY[0x1E695E4C0];
          while (1)
          {
            v42 = OUTLINED_FUNCTION_797();
            v44 = CFArrayGetValueAtIndex(v42, v43);
            if (FigCPEIsSupportedFormatDescription(v44))
            {
              break;
            }

            OUTLINED_FUNCTION_377_0();
            if (v45)
            {
              goto LABEL_82;
            }
          }

          v41 = v40;
        }

LABEL_82:
        CFRelease(v39);
      }

      else
      {
        v41 = MEMORY[0x1E695E4C0];
      }

      DictionaryRepresentation = *v41;
      goto LABEL_18;
    }

    if (CFEqual(a3, @"TrackDimensions"))
    {
      LODWORD(valuePtr.start.value) = 0;
      LODWORD(cf[0]) = 0;
LABEL_75:
      MovieTrackGetSpatialInformation(v15, &valuePtr, cf, 0);
LABEL_76:
      v130.width = *&valuePtr.start.value;
      v130.height = *cf;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v130);
      goto LABEL_19;
    }

    if (CFEqual(a3, @"TrackMatrix"))
    {
LABEL_80:
      memset(&valuePtr, 0, 36);
      OUTLINED_FUNCTION_613();
      MovieTrackGetSpatialInformation(v46, v47, v48, v49);
      DictionaryRepresentation = FigMatrixToCFArray(a4, &valuePtr);
      goto LABEL_19;
    }

    if (CFEqual(a3, @"FormatDescriptionArray"))
    {
      DictionaryRepresentation = MovieTrackCopyFormatDescriptionArray(v15);
      goto LABEL_19;
    }

    if (CFEqual(a3, @"LanguageCode"))
    {
      valuePtr.start.value = 0;
      v50 = OUTLINED_FUNCTION_249();
      v53 = 0;
LABEL_90:
      MovieTrackGetLanguageInformation(v50, v51, v52, v53);
      DictionaryRepresentation = valuePtr.start.value;
      goto LABEL_19;
    }

    if (CFEqual(a3, @"ExtendedLanguageTag"))
    {
      valuePtr.start.value = 0;
      OUTLINED_FUNCTION_613();
      goto LABEL_90;
    }

    if (CFEqual(a3, @"MediaCharacteristicArray"))
    {
      valuePtr.start.value = 0;
      v54 = OUTLINED_FUNCTION_797();
      TrackTimeInfo = FigMediaCharacteristicsCopyMediaCharacteristicsForTrackInformation(v54, v55, v56);
      if (TrackTimeInfo)
      {
        goto LABEL_21;
      }

      value = valuePtr.start.value;
LABEL_94:
      *a5 = value;
      goto LABEL_21;
    }

    if (CFEqual(a3, @"NaturalSize"))
    {
      v58 = OUTLINED_FUNCTION_5_85();
      MovieTrackGetCleanApertureDimensions(v58, v59, v60);
      if (v61)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    if (CFEqual(a3, @"PreferredTransform"))
    {
      goto LABEL_80;
    }

    if (CFEqual(a3, @"NominalFrameRate"))
    {
      LODWORD(valuePtr.start.value) = 0;
      TrackTimeInfo = MovieTrackComputeNominalFrameRate();
      if (TrackTimeInfo)
      {
        goto LABEL_21;
      }

      v26 = *MEMORY[0x1E695E480];
      v27 = kCFNumberFloat32Type;
LABEL_31:
      DictionaryRepresentation = CFNumberCreate(v26, v27, &valuePtr);
      goto LABEL_20;
    }

    if (CFEqual(a3, @"CommonMetadata"))
    {
      valuePtr.start.value = 0;
      cf[0] = 0;
      v129.value = 0;
      v32 = MovieFormatReaderCreateWithMovieInformation(*(v5 + 24), 1, cf);
      if (!v32)
      {
        if (cf[0])
        {
          TrackTimeInfo = FigFormatReaderCopyTrackByID_0(cf[0], v17[1], &v129);
          if (!TrackTimeInfo && v129.value)
          {
            FigMetadataCopyTrackCommonMetadata(v129.value, *MEMORY[0x1E695E480], &valuePtr);
            CFRelease(v129.value);
          }

          CFRelease(cf[0]);
          DictionaryRepresentation = valuePtr.start.value;
          if (valuePtr.start.value)
          {
            goto LABEL_20;
          }
        }

        else
        {
          TrackTimeInfo = 0;
        }

        v73 = OUTLINED_FUNCTION_383();
        DictionaryRepresentation = CFArrayCreateMutable(v73, v74, v75);
LABEL_20:
        *a5 = DictionaryRepresentation;
LABEL_21:
        MovieInformationUnlockForRead(*(v5 + 24));
        return TrackTimeInfo;
      }

LABEL_42:
      TrackTimeInfo = v32;
      goto LABEL_21;
    }

    if (CFEqual(a3, @"AvailableMetadataFormats"))
    {
      v62 = OUTLINED_FUNCTION_383();
      Mutable = CFArrayCreateMutable(v62, v63, v64);
      v66 = copyArrayOfKnownMetadataFormats(a4);
      if (v66)
      {
        v67 = v66;
        Count = CFArrayGetCount(v66);
        if (Count >= 1)
        {
          v69 = Count;
          for (i = 0; i != v69; ++i)
          {
            v71 = CFArrayGetValueAtIndex(v67, i);
            if (v71)
            {
              v72 = v71;
              if (MovieTrackMetadataFormatIsAvailable(*(v5 + 24), *(v17 + 2), v71))
              {
                CFArrayAppendValue(Mutable, v72);
              }
            }
          }
        }

        CFRelease(v67);
      }

      TrackTimeInfo = 0;
      *a5 = Mutable;
      goto LABEL_21;
    }

    if (CFEqual(a3, @"Metadata"))
    {
      v76 = OUTLINED_FUNCTION_383();
      theArray = CFArrayCreateMutable(v76, v77, v78);
      v79 = copyArrayOfKnownMetadataFormats(a4);
      if (v79)
      {
        v80 = v79;
        v81 = CFArrayGetCount(v79);
        if (v81 >= 1)
        {
          v82 = v81;
          for (j = 0; j != v82; ++j)
          {
            v84 = CFArrayGetValueAtIndex(v80, j);
            if (v84)
            {
              v85 = v84;
              TrackMetadataItemArray = MovieTrackGetTrackMetadataItemArray(*(v17 + 2), v84);
              if (TrackMetadataItemArray)
              {
                v87 = TrackMetadataItemArray;
                OUTLINED_FUNCTION_613();
                v91 = CFDictionaryCreateMutable(v88, v89, v90, 0);
                if (v91)
                {
                  v92 = v91;
                  CFDictionaryAddValue(v91, v85, v87);
                  CFArrayAppendValue(theArray, v92);
                  CFRelease(v92);
                }
              }
            }
          }
        }

        CFRelease(v80);
      }

      TrackTimeInfo = 0;
      value = theArray;
      goto LABEL_94;
    }

    if (CFEqual(a3, @"MediaPresentationTimeRange"))
    {
      v129 = **&MEMORY[0x1E6960C70];
      duration = v129;
      TrackTimeInfo = MovieTrackGetDisplayTimeRange(*(v17 + 1), v15, &v129, &duration);
      if (TrackTimeInfo)
      {
        goto LABEL_21;
      }

      memset(&valuePtr, 0, sizeof(valuePtr));
      *cf = *&v129.value;
      *&v123 = v129.epoch;
      end = duration;
      v93 = CMTimeRangeFromTimeToTime(&valuePtr, cf, &end);
      DictionaryRepresentation = OUTLINED_FUNCTION_65_9(v93, *MEMORY[0x1E695E480], v94, v95, v96, v97, v98, v99, v120, *cf, v123, v124, end.value, *&end.timescale, end.epoch, v126, *&valuePtr.start.value, *&valuePtr.start.epoch, *&valuePtr.duration.timescale);
      goto LABEL_20;
    }

    if (CFEqual(a3, @"MediaPresentationEndTime"))
    {
      OUTLINED_FUNCTION_169(MEMORY[0x1E6960C70]);
      DisplayTimeRange = MovieTrackGetDisplayTimeRange(*(v17 + 1), v15, 0, &valuePtr);
      goto LABEL_138;
    }

    if (CFEqual(a3, @"MediaDecodeTimeRange"))
    {
      memset(&v129, 0, sizeof(v129));
      MovieTrackGetMediaDuration(v15, &v129);
      memset(&valuePtr, 0, sizeof(valuePtr));
      *cf = *MEMORY[0x1E6960CC0];
      *&v123 = *(MEMORY[0x1E6960CC0] + 16);
      duration = v129;
      v101 = CMTimeRangeMake(&valuePtr, cf, &duration);
      DictionaryRepresentation = OUTLINED_FUNCTION_65_9(v101, *MEMORY[0x1E695E480], v102, v103, v104, v105, v106, v107, v120, *cf, v123, v124, end.value, *&end.timescale, end.epoch, v126, *&valuePtr.start.value, *&valuePtr.start.epoch, *&valuePtr.duration.timescale);
      goto LABEL_19;
    }

    if (CFEqual(a3, @"IsExcludedFromAutoselection"))
    {
      IsEnabled = MovieTrackIsExcludedFromAutoSelection(v15);
LABEL_62:
      v37 = MEMORY[0x1E695E4D0];
      if (!IsEnabled)
      {
        v37 = MEMORY[0x1E695E4C0];
      }

LABEL_64:
      DictionaryRepresentation = *v37;
      goto LABEL_18;
    }

    if (CFEqual(a3, @"CleanApertureDimensions"))
    {
      v108 = OUTLINED_FUNCTION_5_85();
      MovieTrackGetCleanApertureDimensions(v108, v109, v110);
      if (v111)
      {
        goto LABEL_76;
      }
    }

    else if (CFEqual(a3, @"ProductionApertureDimensions"))
    {
      v112 = OUTLINED_FUNCTION_5_85();
      MovieTrackGetProductionApertureDimensions(v112, v113, v114);
      if (v115)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (!CFEqual(a3, @"EncodedPixelsDimensions"))
      {
        if (CFEqual(a3, @"Modified"))
        {
          v37 = MEMORY[0x1E695E4D0];
          if (!*(v17 + 56))
          {
            v37 = MEMORY[0x1E695E4C0];
          }

          goto LABEL_64;
        }

        if (CFEqual(a3, @"PreferredChunkSize"))
        {
          LODWORD(valuePtr.start.value) = 0;
          BasicInfo = MediaDataChunkWriterTrackGetPreferredChunkSize(*(v17 + 3), *(v17 + 4), &valuePtr);
          goto LABEL_29;
        }

        if (!CFEqual(a3, @"PreferredChunkDuration"))
        {
          if (!CFEqual(a3, @"PreferredChunkAlignment"))
          {
            TrackTimeInfo = 4294950876;
            goto LABEL_21;
          }

          LODWORD(valuePtr.start.value) = 0;
          BasicInfo = MediaDataChunkWriterTrackGetPreferredChunkAlignment(*(v17 + 3), *(v17 + 4), &valuePtr);
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_169(MEMORY[0x1E6960C70]);
        DisplayTimeRange = MediaDataChunkWriterTrackGetPreferredChunkDuration(*(v17 + 3), *(v17 + 4), &valuePtr);
LABEL_138:
        TrackTimeInfo = DisplayTimeRange;
        if (DisplayTimeRange)
        {
          goto LABEL_21;
        }

        *cf = *&valuePtr.start.value;
        *&v123 = valuePtr.start.epoch;
        DictionaryRepresentation = CMTimeCopyAsDictionary(cf, a4);
        goto LABEL_20;
      }

      v116 = OUTLINED_FUNCTION_5_85();
      MovieTrackGetEncodedPixelsDimensions(v116, v117, v118);
      if (v119)
      {
        goto LABEL_76;
      }
    }

    TrackTimeInfo = 4294954513;
    goto LABEL_21;
  }

  return TrackTimeInfo;
}

uint64_t MutableMovie_SetTrackProperty(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v5 = 4294950861;
  if (a1 && a2 && a3 && CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_33_18();
    if (v10)
    {
      return 4294950869;
    }

    else
    {
      v11 = MovieInformationLockForWrite(*(v4 + 24));
      if (!v11)
      {
        TrackForTrackID = MovieInformationFindTrackForTrackID(*(v4 + 24), a2);
        if (!TrackForTrackID)
        {
          goto LABEL_121;
        }

        v13 = TrackForTrackID;
        Storage = MutableMovieTrackGetStorage(a1, a2);
        if (Storage)
        {
          v15 = Storage;
          if (CFEqual(a3, @"Volume"))
          {
            if (a4)
            {
              v16 = CFGetTypeID(a4);
              if (v16 == CFNumberGetTypeID())
              {
                *v147 = 1065353216;
                v17 = OUTLINED_FUNCTION_34_17();
                CFNumberGetValue(v17, kCFNumberFloat32Type, v18);
                v19 = MovieTrackSetVolume(v13, 1.0);
LABEL_25:
                v5 = v19;
LABEL_75:
                v69 = 1;
LABEL_76:
                *(v15 + 56) = v69;
                goto LABEL_121;
              }
            }

            goto LABEL_120;
          }

          if (CFEqual(a3, @"Layer"))
          {
            if (a4)
            {
              v20 = CFGetTypeID(a4);
              TypeID = CFNumberGetTypeID();
              if (v20 == TypeID)
              {
                OUTLINED_FUNCTION_16_31(TypeID, v22, v23, v24, v25, v26, v27, v28, v136, allocator, v139, key, v141, theArray, size.value, *&size.timescale, size.epoch, v146, *v147);
                v19 = MovieTrackSetLayer(v13, *v147);
                goto LABEL_25;
              }
            }

LABEL_120:
            v5 = 0;
            goto LABEL_121;
          }

          if (CFEqual(a3, @"TrackEnabled"))
          {
            if (a4)
            {
              v29 = CFGetTypeID(a4);
              if (v29 == CFBooleanGetTypeID())
              {
                Value = CFBooleanGetValue(a4);
                v19 = MovieTrackSetEnabled(v13, Value);
                goto LABEL_25;
              }
            }

            goto LABEL_74;
          }

          if (CFEqual(a3, @"IsExcludedFromAutoselection"))
          {
            if (a4)
            {
              v31 = CFGetTypeID(a4);
              if (v31 == CFBooleanGetTypeID())
              {
                v32 = CFBooleanGetValue(a4);
                v19 = MovieTrackSetExcludeFromAutoSelection(v13, v32);
                goto LABEL_25;
              }
            }

            goto LABEL_74;
          }

          if (CFEqual(a3, @"TrackDimensions"))
          {
            size.value = 0;
            *&size.timescale = 0;
            if (!a4)
            {
              goto LABEL_120;
            }

            v33 = CFGetTypeID(a4);
            if (v33 != CFDictionaryGetTypeID() || !CGSizeMakeWithDictionaryRepresentation(a4, &size))
            {
              goto LABEL_120;
            }

            v148 = 0;
            memset(v147, 0, sizeof(v147));
            OUTLINED_FUNCTION_613();
            MovieTrackGetSpatialInformation(v34, v35, v36, v37);
            v38 = *&size.value;
            v39 = *&size.timescale;
            goto LABEL_31;
          }

          if (CFEqual(a3, @"CleanApertureDimensions"))
          {
            *v147 = 0uLL;
            if (!a4)
            {
              goto LABEL_120;
            }

            v41 = CFGetTypeID(a4);
            if (v41 != CFDictionaryGetTypeID())
            {
              goto LABEL_120;
            }

            v42 = OUTLINED_FUNCTION_79_7();
            if (!CGSizeMakeWithDictionaryRepresentation(v42, v43))
            {
              goto LABEL_120;
            }

            v44 = OUTLINED_FUNCTION_22_22();
            v40 = MovieTrackSetCleanApertureDimensions(v44, v45, v46);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"ProductionApertureDimensions"))
          {
            *v147 = 0uLL;
            if (!a4)
            {
              goto LABEL_120;
            }

            v47 = CFGetTypeID(a4);
            if (v47 != CFDictionaryGetTypeID())
            {
              goto LABEL_120;
            }

            v48 = OUTLINED_FUNCTION_79_7();
            if (!CGSizeMakeWithDictionaryRepresentation(v48, v49))
            {
              goto LABEL_120;
            }

            v50 = OUTLINED_FUNCTION_22_22();
            v40 = MovieTrackSetProductionApertureDimensions(v50, v51, v52);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"EncodedPixelsDimensions"))
          {
            *v147 = 0uLL;
            if (!a4)
            {
              goto LABEL_120;
            }

            v53 = CFGetTypeID(a4);
            if (v53 != CFDictionaryGetTypeID())
            {
              goto LABEL_120;
            }

            v54 = OUTLINED_FUNCTION_79_7();
            if (!CGSizeMakeWithDictionaryRepresentation(v54, v55))
            {
              goto LABEL_120;
            }

            v56 = OUTLINED_FUNCTION_22_22();
            v40 = MovieTrackSetEncodedPixelsDimensions(v56, v57, v58);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"AlternateGroupID"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            v59 = CFGetTypeID(a4);
            v60 = CFNumberGetTypeID();
            if (v59 != v60)
            {
              goto LABEL_120;
            }

            OUTLINED_FUNCTION_16_31(v60, v61, v62, v63, v64, v65, v66, v67, v136, allocator, v139, key, v141, theArray, size.value, *&size.timescale, size.epoch, v146, *v147);
            v5 = 0;
            if (*v147 != MovieInformationGetTrackAlternateGroupID(*(v4 + 24), v13))
            {
              v40 = MovieInformationSetTrackAlternateGroupID(*(v4 + 24), v13, *v147);
              goto LABEL_55;
            }

LABEL_121:
            MovieInformationUnlockForWrite(*(v4 + 24));
            return v5;
          }

          if (CFEqual(a3, @"DefaultAlternateGroupID"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            v70 = CFGetTypeID(a4);
            v71 = CFNumberGetTypeID();
            if (v70 != v71)
            {
              goto LABEL_120;
            }

            OUTLINED_FUNCTION_16_31(v71, v72, v73, v74, v75, v76, v77, v78, v136, allocator, v139, key, v141, theArray, size.value, *&size.timescale, size.epoch, v146, *v147);
            v5 = MovieTrackSetDefaultAlternateGroupID(v13, *v147);
            MovieInformationEvaluateTrackAlternateGroupAssignment(*(v15 + 1), v13);
            v68 = v5 == 0;
LABEL_56:
            v69 = v68;
            goto LABEL_76;
          }

          if (CFEqual(a3, @"ProvisionalAlternateGroupID"))
          {
            if (a4)
            {
              v79 = CFGetTypeID(a4);
              v80 = CFNumberGetTypeID();
              if (v79 != v80)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_16_31(v80, v81, v82, v83, v84, v85, v86, v87, v136, allocator, v139, key, v141, theArray, size.value, *&size.timescale, size.epoch, v146, *v147);
              v88 = MovieTrackSetProvisionalAlternateGroupID(v13, *v147);
            }

            else
            {
              v88 = MovieTrackClearProvisionalAlternateGroupID(v13);
            }

            v5 = v88;
            if (v88)
            {
              goto LABEL_121;
            }

LABEL_73:
            MovieInformationEvaluateTrackAlternateGroupAssignment(*(v15 + 1), v13);
            goto LABEL_74;
          }

          if (CFEqual(a3, @"LanguageCode"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            v89 = CFGetTypeID(a4);
            if (v89 != CFStringGetTypeID())
            {
              goto LABEL_120;
            }

            v90 = OUTLINED_FUNCTION_178();
            v40 = MovieTrackSetLanguageCodeString(v90, v91);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"ExtendedLanguageTag"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            v92 = CFGetTypeID(a4);
            if (v92 != CFStringGetTypeID())
            {
              goto LABEL_120;
            }

            v93 = OUTLINED_FUNCTION_178();
            v40 = MovieTrackSetExtendedLanguageTagString(v93, v94);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"MediaDataStorageURL"))
          {
            if (a4)
            {
              v95 = CFGetTypeID(a4);
              if (v95 != CFURLGetTypeID())
              {
                goto LABEL_120;
              }

              v96 = *(v15 + 5);
              *(v15 + 5) = a4;
              goto LABEL_89;
            }

            v96 = *(v15 + 5);
            *(v15 + 5) = 0;
            goto LABEL_118;
          }

          if (CFEqual(a3, @"SampleReferenceBaseURL"))
          {
            if (a4)
            {
              v97 = CFGetTypeID(a4);
              if (v97 != CFURLGetTypeID())
              {
                goto LABEL_120;
              }

              v96 = *(v15 + 6);
              *(v15 + 6) = a4;
LABEL_89:
              CFRetain(a4);
              goto LABEL_118;
            }

            v96 = *(v15 + 6);
            *(v15 + 6) = 0;
LABEL_118:
            if (v96)
            {
              CFRelease(v96);
            }

            goto LABEL_120;
          }

          if (CFEqual(a3, @"Metadata"))
          {
            if (!a4 || (v98 = CFGetTypeID(a4), v98 == CFArrayGetTypeID()))
            {
              allocatora = *MEMORY[0x1E695E480];
              theArraya = copyArrayOfKnownMetadataFormats(*MEMORY[0x1E695E480]);
              if (theArraya)
              {
                Count = CFArrayGetCount(theArraya);
                if (Count >= 1)
                {
                  for (i = 0; i != Count; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(theArraya, i);
                    if (ValueAtIndex)
                    {
                      v101 = ValueAtIndex;
                      OUTLINED_FUNCTION_613();
                      v105 = CFArrayCreate(v102, v103, v104, 0);
                      if (v105)
                      {
                        v106 = v105;
                        MovieTrackSetTrackMetadataItemArray(*(v4 + 24), v13, v101, v105);
                        CFRelease(v106);
                      }
                    }
                  }

                  if (a4)
                  {
                    for (j = 0; j != Count; ++j)
                    {
                      v108 = CFArrayGetValueAtIndex(theArraya, j);
                      if (v108)
                      {
                        v109 = v108;
                        Mutable = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
                        if (Mutable)
                        {
                          v111 = Mutable;
                          v112 = CFArrayGetCount(a4);
                          if (v112 >= 1)
                          {
                            v113 = v112;
                            for (k = 0; k != v113; ++k)
                            {
                              v115 = CFArrayGetValueAtIndex(a4, k);
                              if (v115)
                              {
                                v116 = v115;
                                v117 = CFDictionaryGetTypeID();
                                if (v117 == CFGetTypeID(v116))
                                {
                                  CFDictionaryGetValue(v116, @"format");
                                  v118 = CFDictionaryGetValue(v116, @"items");
                                  if (v118)
                                  {
                                    v119 = v118;
                                    if (FigCFEqual())
                                    {
                                      v149.length = CFArrayGetCount(v119);
                                      v149.location = 0;
                                      CFArrayAppendArray(v111, v119, v149);
                                    }
                                  }
                                }
                              }
                            }
                          }

                          MovieTrackSetTrackMetadataItemArray(*(v4 + 24), v13, v109, v111);
                          CFRelease(v111);
                        }
                      }
                    }
                  }
                }

                CFRelease(theArraya);
              }

              v5 = 0;
              *(v4 + 1) = 1;
              goto LABEL_121;
            }

            goto LABEL_120;
          }

          if (CFEqual(a3, @"TrackMatrix"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            v121 = CFArrayGetTypeID();
            if (v121 != CFGetTypeID(a4))
            {
              goto LABEL_120;
            }

            v148 = 0;
            memset(v147, 0, sizeof(v147));
            v122 = OUTLINED_FUNCTION_79_7();
            v5 = CFArrayToFigMatrix(v122, v123);
            if (v5)
            {
              goto LABEL_121;
            }

            LODWORD(size.value) = 0;
            HIDWORD(v146) = 0;
            MovieTrackGetSpatialInformation(v13, &size, &v146 + 1, 0);
            v38 = *&size.value;
            v39 = *(&v146 + 1);
LABEL_31:
            v40 = MovieTrackSetSpatialInformation(v13, v147, v38, v39);
LABEL_55:
            v5 = v40;
            v68 = v40 == 0;
            goto LABEL_56;
          }

          if (CFEqual(a3, @"Modified"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            CFBooleanGetTypeID();
            if (v13 != OUTLINED_FUNCTION_97_6())
            {
              goto LABEL_120;
            }

            if (*MEMORY[0x1E695E4D0] != a4)
            {
              v5 = 0;
              *(v15 + 56) = 0;
              goto LABEL_121;
            }

LABEL_74:
            v5 = 0;
            goto LABEL_75;
          }

          if (CFEqual(a3, @"PreferredChunkSize"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            CFNumberGetTypeID();
            if (v13 != OUTLINED_FUNCTION_97_6())
            {
              goto LABEL_120;
            }

            *v147 = 0x100000;
            v124 = OUTLINED_FUNCTION_34_17();
            CFNumberGetValue(v124, kCFNumberSInt32Type, v125);
            v40 = MediaDataChunkWriterTrackSetPreferredChunkSize(*(v15 + 3), *(v15 + 4), 0x100000);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"PreferredChunkDuration"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            CFDictionaryGetTypeID();
            if (v13 != OUTLINED_FUNCTION_97_6())
            {
              goto LABEL_120;
            }

            memset(v147, 0, 24);
            CMTimeMakeFromDictionary(v147, a4);
            v126 = *(v15 + 3);
            v127 = *(v15 + 4);
            size = *v147;
            v40 = MediaDataChunkWriterTrackSetPreferredChunkDuration(v126, v127, &size);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"PreferredChunkAlignment"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            CFNumberGetTypeID();
            if (v13 != OUTLINED_FUNCTION_97_6())
            {
              goto LABEL_120;
            }

            *v147 = 0;
            v128 = OUTLINED_FUNCTION_34_17();
            CFNumberGetValue(v128, kCFNumberSInt32Type, v129);
            v40 = MediaDataChunkWriterTrackSetPreferredChunkAlignment(*(v15 + 3), *(v15 + 4), 0);
            goto LABEL_55;
          }

          if (CFEqual(a3, @"FormatDescriptionArray"))
          {
            if (a4)
            {
              v130 = CFArrayGetTypeID();
              if (v130 == CFGetTypeID(a4))
              {
                v131 = OUTLINED_FUNCTION_178();
                v5 = MovieTrackReplaceFormatDescriptionArray(v131, v132);
                MovieInformationEvaluateTrackAlternateGroupAssignment(*(v15 + 1), v13);
                goto LABEL_75;
              }
            }

            goto LABEL_120;
          }

          if (CFEqual(a3, @"MediaTimeScale"))
          {
            if (!a4)
            {
              goto LABEL_120;
            }

            v133 = CFNumberGetTypeID();
            if (v133 != CFGetTypeID(a4))
            {
              goto LABEL_120;
            }

            *v147 = 0;
            v134 = OUTLINED_FUNCTION_34_17();
            CFNumberGetValue(v134, kCFNumberSInt32Type, v135);
            MovieTrackSetMediaTimeScale(v13, 0);
            goto LABEL_74;
          }

          if (!CFEqual(@"MediaType", a3) && !CFEqual(@"MediaSubType", a3) && !CFEqual(@"IsSelfContained", a3) && !CFEqual(@"TrackProtectedStatus", a3) && !CFEqual(@"CreationTime", a3) && !CFEqual(@"AvailableMetadataFormats", a3) && !CFEqual(@"MediaPresentationTimeRange", a3) && !CFEqual(@"MediaPresentationEndTime", a3) && !CFEqual(@"MediaDecodeTimeRange", a3) && !CFEqual(@"ModificationTime", a3))
          {
            v5 = 4294950876;
            goto LABEL_121;
          }
        }

        fig_log_get_emitter();
        v5 = FigSignalErrorAtGM();
        goto LABEL_121;
      }

      return v11;
    }
  }

  return v5;
}

uint64_t MutableMovie_AppendSampleBuffer(uint64_t a1, int a2, opaqueCMSampleBuffer *a3, int a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v68 = 0;
  v67 = 0;
  v66 = -1;
  v7 = *MEMORY[0x1E6960C70];
  *v64 = v7;
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v65 = v8;
  *v61 = v7;
  v62 = v8;
  v60 = 0;
  v9 = 4294950861;
  if (!a1)
  {
    goto LABEL_47;
  }

  if (!a2)
  {
    goto LABEL_47;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

  *v54 = v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_47;
  }

  v14 = DerivedStorage;
  if (*DerivedStorage)
  {
    v9 = 4294950869;
    goto LABEL_47;
  }

  Storage = MutableMovieTrackGetStorage(a1, a2);
  if (!Storage)
  {
    goto LABEL_68;
  }

  v16 = Storage;
  *(Storage + 6) = *v54;
  *(Storage + 14) = v8;
  *(Storage + 18) = *v54;
  *(Storage + 11) = v8;
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (!FormatDescription || (MediaType = CMFormatDescriptionGetMediaType(FormatDescription), MediaType != *v16))
  {
    v9 = 4294950866;
    goto LABEL_47;
  }

  v19 = MediaType;
  if (*(v16 + 120) != 1)
  {
    v20 = *(v16 + 16);
    if (v20 && MovieTrackGetTrackDurationValue(v20))
    {
      MovieTrackExtendMediaDecodeDurationToDisplayEndTime();
    }

    *(v16 + 120) = 1;
  }

  v25 = CMGetAttachment(a3, *MEMORY[0x1E6960530], 0);
  v26 = v25;
  if (!v25)
  {
    v26 = *(v16 + 40);
    if (!v26)
    {
      v26 = *(v14 + 40);
      if (!v26)
      {
        v9 = 4294950873;
        goto LABEL_47;
      }
    }
  }

  if (*(v16 + 128))
  {
    goto LABEL_33;
  }

  v27 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_91_4();
  v28 = MEMORY[0x19A8CC720](v27, 160);
  if (!v28)
  {
LABEL_68:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    goto LABEL_69;
  }

  v29 = v28;
  if (v19 == 1751216244 || v19 == 1936684398)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = MediaSampleTimingGeneratorCreate(v27, v19, v31, &v60);
  if (v32)
  {
    goto LABEL_70;
  }

  bzero(v29, 0xA0uLL);
  v29[7] = v60;
  *v29 = v19;
  *(v16 + 128) = v29;
  v32 = MovieInformationLockForWrite(*(v14 + 24));
  if (v32)
  {
    goto LABEL_70;
  }

  v33 = setMediaTimeScaleIfNeeded(v16, a3);
  if (v33)
  {
    v9 = v33;
    MovieInformationUnlockForWrite(*(v14 + 24));
    goto LABEL_47;
  }

  if (v19 == 1668047728)
  {
    v9 = setClosedCaptionTrackDimensionsIfNeeded(*(v14 + 24));
  }

  else
  {
    if (v19 != 1986618469)
    {
      MovieInformationUnlockForWrite(*(v14 + 24));
      goto LABEL_33;
    }

    v9 = setVideoTrackDimensionsIfNeeded(*(v16 + 16), *(v14 + 16), a3);
  }

  MovieInformationUnlockForWrite(*(v14 + 24));
  if (v9)
  {
    goto LABEL_47;
  }

LABEL_33:
  if (v25)
  {
    v34 = *(v16 + 64);
  }

  else
  {
    getByteStreamForTrackStorageURL(a1, v26, &v67, &v66, v21, v22, v23, v24, v52, v53, v54[0], v54[1], v55, refcon, v57, v58, v59, v60, v61[0], v61[1], v62, v63, v64[0], v64[1]);
    if (v66 == -1)
    {
      v32 = CMByteStreamCreateForFileURL();
      if (v32)
      {
        goto LABEL_70;
      }

      v32 = createStreamInfoForByteStream(v68, v14, &v66);
      if (v32)
      {
        goto LABEL_70;
      }

      if (v68)
      {
        CFRelease(v68);
        v68 = 0;
      }
    }

    v34 = v66;
    *(v16 + 64) = v66;
  }

  if (v34 == -1)
  {
    v38 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v14 + 64), v34);
    if (!ValueAtIndex)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      goto LABEL_69;
    }

    v36 = ValueAtIndex;
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(a3);
    if (!TotalSampleSize)
    {
      v9 = 4294950861;
      goto LABEL_47;
    }

    writeMdatHeaderIfNecessary(v36, TotalSampleSize, 0);
    v38 = *v36;
  }

  if (v19 == 1936684398)
  {
    v32 = addSampleBufferToTrack(v16, v26, v38, 0, a3);
    if (v32)
    {
      goto LABEL_70;
    }
  }

  else
  {
    refcon = v16;
    v57 = v26;
    v58 = v38;
    v59 = 0;
    CMSampleBufferCallForEachSample(a3, addSample, &refcon);
  }

  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v39, v40, v41);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
LABEL_69:
    v32 = FigSignalErrorAtGM();
LABEL_70:
    v9 = v32;
    goto LABEL_47;
  }

  v43 = Mutable;
  CFArrayAppendValue(Mutable, v16);
  writeActualMdatLengthsToStorages(v14, v43, v44, v45, v46, v47, v48, v49, v52, v53, v54[0], HIDWORD(v54[0]), v54[1], v55, refcon, v57, v58, v59, v60, v61[0], v61[1], v62, v63, v64[0], v64[1]);
  v9 = v50;
  CFRelease(v43);
  if (!v9)
  {
    *v64 = *(v16 + 96);
    v65 = *(v16 + 112);
    *v61 = *(v16 + 72);
    v62 = *(v16 + 88);
  }

LABEL_47:
  if (a5)
  {
    *a5 = *v64;
    *(a5 + 16) = v65;
  }

  if (v55)
  {
    *v55 = *v61;
    *(v55 + 16) = v62;
  }

  if (v68)
  {
    CFRelease(v68);
  }

  return v9;
}

uint64_t MutableMovie_AppendSampleReferences(uint64_t a1, int a2, const void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, size_t *a8, CFArrayRef theArray, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  result = 4294950861;
  if (!a1 || !a2 || !a3 || a4 < 1 || !a10)
  {
    return result;
  }

  if (a5 >= 2 && a5 != a4)
  {
    return result;
  }

  if (a7 >= 2 && a7 != a4)
  {
    return result;
  }

  if (Count >= 2 && Count != a4)
  {
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294950861;
  }

  v27 = DerivedStorage;
  if (*DerivedStorage)
  {
    return 4294950869;
  }

  result = MovieInformationLockForRead(*(DerivedStorage + 24));
  if (!result)
  {
    TrackForTrackID = MovieInformationFindTrackForTrackID(*(v27 + 24), a2);
    MovieInformationUnlockForRead(*(v27 + 24));
    if (TrackForTrackID)
    {
      Storage = MutableMovieTrackGetStorage(a1, a2);
      if (!Storage)
      {
        goto LABEL_45;
      }

      v30 = Storage;
      if (Storage[30] != 2)
      {
        v31 = *(Storage + 2);
        if (v31 && MovieTrackGetTrackDurationValue(v31))
        {
          MovieTrackExtendMediaDecodeDurationToDisplayEndTime();
        }

        v30[30] = 2;
      }

      v32 = MEMORY[0x1E6960C70];
      v33 = *MEMORY[0x1E6960C70];
      *(v30 + 6) = *MEMORY[0x1E6960C70];
      v34 = *(v32 + 16);
      *(v30 + 14) = v34;
      *(v30 + 18) = v33;
      *(v30 + 11) = v34;
      if (*(v30 + 3) && *(v30 + 4))
      {
        v38 = 0;
        result = MovieTrackFindOrAddSampleDescription(TrackForTrackID, a3, a10, &v38);
        if (!result)
        {
          MovieInformationEvaluateTrackAlternateGroupAssignment(*(v30 + 1), TrackForTrackID);
          result = MediaDataChunkWriterTrackAppendSampleReference(*(v30 + 3), *(v30 + 4), a11, v38, a4, a5, a6, a7, a8, theArray, 0);
          if (a13)
          {
            v35 = *(v30 + 6);
            *(a13 + 16) = *(v30 + 14);
            *a13 = v35;
          }

          if (a14)
          {
            v36 = *(v30 + 18);
            *(a14 + 16) = *(v30 + 11);
            *a14 = v36;
          }

          *(v30 + 56) = 1;
        }
      }

      else
      {
LABEL_45:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_120();

        return FigSignalErrorAtGM();
      }

      return result;
    }

    return 4294950861;
  }

  return result;
}

void MutableMovie_AppendSampleReferencesFromSampleCursor(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (!a1 || !a2 || !a4 || (DerivedStorage = CMBaseObjectGetDerivedStorage()) == 0 || (v16 = DerivedStorage, *DerivedStorage) || a5 && ((v17 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v18 = 0) : (v18 = v17), (v19 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v20 = 0) : (v20 = v19), v18 != v20 || !*(v18 + 32) || (*(v20 + 32))(a4, a5) != -1) || MovieInformationLockForRead(*(v16 + 3)) || (TrackForTrackID = MovieInformationFindTrackForTrackID(*(v16 + 3), a2), MovieInformationUnlockForRead(*(v16 + 3)), !TrackForTrackID))
  {
LABEL_27:
    OUTLINED_FUNCTION_651();
    return;
  }

  Storage = MutableMovieTrackGetStorage(a1, a2);
  if (Storage)
  {
    if (a8)
    {
      *a8 = 0;
    }

    v23 = MEMORY[0x1E6960C70];
    if (a9)
    {
      *a9 = *MEMORY[0x1E6960C70];
      *(a9 + 16) = *(v23 + 16);
    }

    if (a10)
    {
      *a10 = *v23;
      *(a10 + 16) = *(v23 + 16);
    }

    *(Storage + 56) = 1;
    goto LABEL_27;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_651();

  FigSignalErrorAtGM();
}

BOOL MutableMovie_CanTrackAcceptFormatDescription(uint64_t a1, int a2, const void *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 0;
    }

    v7 = DerivedStorage;
    v26 = 0;
    if (*DerivedStorage || MovieInformationLockForRead(*(DerivedStorage + 24)))
    {
      return 0;
    }

    else
    {
      TrackForTrackID = MovieInformationFindTrackForTrackID(*(v7 + 24), a2);
      if (TrackForTrackID && (v9 = TrackForTrackID, !MovieTrackGetBasicInfo(TrackForTrackID, &v26, 0)) && (MediaType = CMFormatDescriptionGetMediaType(a3), MediaType == v26) && (v11 = MediaType, (v12 = MovieTrackCopyFormatDescriptionArray(v9)) != 0))
      {
        v13 = v12;
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          v3 = 0;
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
            if (v11 == 1952807028)
            {
              goto LABEL_16;
            }

            if (v11 != 1986618469)
            {
              break;
            }

            v19 = OUTLINED_FUNCTION_409();
            PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v19, v20, 1u);
            v22 = CMVideoFormatDescriptionGetPresentationDimensions(ValueAtIndex, 1u, 1u);
            if (v22.width != 0.0 || v22.height != 0.0)
            {
              v23 = v22.width / v22.height;
              if (v22.height == 0.0)
              {
                v23 = 0.0;
              }

              v24 = PresentationDimensions.width / PresentationDimensions.height;
              if (PresentationDimensions.height == 0.0)
              {
                v24 = 0.0;
              }

              if (vabdd_f64(v23, v24) > 0.00999999978)
              {
                goto LABEL_31;
              }
            }

LABEL_27:
            v3 = ++v16 >= v15;
            if (v15 == v16)
            {
              goto LABEL_31;
            }
          }

          if (v11 != 1953325924)
          {
            if (!CFEqual(a3, ValueAtIndex))
            {
              goto LABEL_31;
            }

            goto LABEL_27;
          }

LABEL_16:
          MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
          if (MediaSubType != CMFormatDescriptionGetMediaSubType(ValueAtIndex))
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        v3 = 1;
LABEL_31:
        CFRelease(v13);
      }

      else
      {
        v3 = 0;
      }

      MovieInformationUnlockForRead(*(v7 + 24));
    }
  }

  return v3;
}

uint64_t MutableMovie_GetTrackCompatibleWithTrackReader(uint64_t a1, const void *a2, _DWORD *a3)
{
  result = 4294950861;
  if (a1 && a3)
  {
    *a3 = 0;
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_59_10();
      if (v8)
      {
        return 4294950869;
      }

      else
      {
        v11 = 0;
        v9 = *MEMORY[0x1E695E480];
        result = createSourceFromTrack(0, a2, *MEMORY[0x1E695E480], 0, 0, &v11);
        if (!result)
        {
          if (v11)
          {
            TrackForInsertionFromSource = getTrackForInsertionFromSource(v3, v11);
            if (TrackForInsertionFromSource)
            {
              *a3 = TrackForInsertionFromSource[1];
            }

            releaseSource(v9, v11);
          }

          return 0;
        }
      }
    }

    else
    {
      return 4294950861;
    }
  }

  return result;
}

uint64_t MutableMovie_InsertMediaIntoTrack(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = 4294950861;
  if (a1 && a2 && (*(a3 + 36) & 1) != 0 && (*(a4 + 12) & 1) != 0 && (*(a4 + 36) & 1) != 0 && !*(a4 + 40) && (*(a4 + 24) & 0x8000000000000000) == 0 && CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_86_5();
    if (v9)
    {
      return 4294950869;
    }

    else
    {
      v10 = MovieInformationLockForWrite(*(v4 + 24));
      if (v10)
      {
        return v10;
      }

      else
      {
        if (MovieInformationFindTrackForTrackID(*(v4 + 24), a2))
        {
          OUTLINED_FUNCTION_82_5();
          v11 = *(a4 + 16);
          v16[0] = *a4;
          v16[1] = v11;
          v16[2] = *(a4 + 32);
          MovieTrackInsertMediaSegment(v12, v13, v17, v16);
          if (!v14)
          {
            v14 = setTrackIDModified(a1, v4, a2);
          }

          v5 = v14;
        }

        MovieInformationUnlockForWrite(*(v4 + 24));
      }
    }
  }

  return v5;
}

uint64_t MutableMovie_InsertSegmentFromTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t x4_0, CMTime *a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v76 = 0;
  v77 = 0;
  v10 = 4294950861;
  if (!a1 || !a4)
  {
    goto LABEL_7;
  }

  if ((*(x4_0 + 12) & 1) == 0 || (*(x4_0 + 36) & 1) == 0 || *(x4_0 + 40) || (*(x4_0 + 24) & 0x8000000000000000) != 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v14 = a7;
  v17 = a2;
  *v70 = *(x4_0 + 24);
  *&v70[16] = *(x4_0 + 40);
  *&v75.value = *MEMORY[0x1E6960CC0];
  if (!OUTLINED_FUNCTION_62_9(a1, a2, a3, a4, x4_0, a6, a7, a8, v66, v8, v75.value, *&v75.timescale, *v70))
  {
    v10 = 0;
    goto LABEL_6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v9 = 0;
    v10 = 4294950861;
    goto LABEL_7;
  }

  v26 = DerivedStorage;
  if (*DerivedStorage)
  {
    v9 = 0;
    v10 = 4294950869;
    goto LABEL_7;
  }

  v27 = MEMORY[0x1E695E480];
  if ((v14 & 0x100) == 0)
  {
    OUTLINED_FUNCTION_21_23();
    *&v75.value = v69;
    DerivedStorage = OUTLINED_FUNCTION_62_9(v28, v29, v30, v31, v32, v33, v34, v35, v67, v68, v69, *(&v69 + 1), *v70);
    if (a3)
    {
      if (!DerivedStorage)
      {
        LODWORD(time2.value) = 0;
        v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v36)
        {
          v36(a4, 0, &time2);
        }

        OUTLINED_FUNCTION_63();
        if (v37)
        {
          v67 = @"TrackDuration";
          v38 = *MEMORY[0x1E695E480];
          FigBaseObject = FigTrackReaderGetFigBaseObject(a4);
          v40 = v38;
          v27 = MEMORY[0x1E695E480];
          DerivedStorage = CMBaseObjectCopyProperty(FigBaseObject, @"TrackDuration", v40, &v76);
          if (!DerivedStorage)
          {
            *v70 = *MEMORY[0x1E6960C70];
            *&v70[16] = *(MEMORY[0x1E6960C70] + 16);
            DerivedStorage = v76;
            if (v76)
            {
              v41 = CFGetTypeID(v76);
              if (v41 == CFDictionaryGetTypeID())
              {
                CMTimeMakeFromDictionary(v70, v76);
              }

              DerivedStorage = v76;
              v27 = MEMORY[0x1E695E480];
              if (v76)
              {
                CFRelease(v76);
                v76 = 0;
              }
            }

            if ((v70[12] & 0x1D) == 1)
            {
              v75 = *(x4_0 + 24);
              DerivedStorage = OUTLINED_FUNCTION_49_10(DerivedStorage, v20, v21, v22, v23, v24, v25, @"TrackDuration", v68, v69, *(&v69 + 1), *v70, *&v70[16], *&v70[24], v71, *(&v71 + 1), time2.value, *&time2.timescale, time2.epoch, v73, *&time1.value, time1.epoch);
              if (!DerivedStorage)
              {
                DerivedStorage = FigGaplessInfoGetTrackDuration(a3, a4, 0, v70);
                if (!DerivedStorage)
                {
                  *(x4_0 + 24) = *v70;
                  *(x4_0 + 40) = *&v70[16];
                }
              }
            }
          }
        }
      }
    }
  }

  if (!*(v26 + 2))
  {
    *v70 = *&a6->value;
    *&v70[16] = a6->epoch;
    *&v75.value = v69;
    if (OUTLINED_FUNCTION_62_9(DerivedStorage, v20, v21, v22, v23, *(&v23 + 1), v24, v25, v67, v68, v69, *(&v69 + 1), *v70) >= 1)
    {
      if (v17)
      {
        TrackCount = MovieInformationGetTrackCount(*(v26 + 24));
        if (TrackCount >= 1)
        {
          v43 = TrackCount;
          v44 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v26 + 56), v44);
            if (*(ValueAtIndex + 1) == v17)
            {
              break;
            }

            if (v43 == ++v44)
            {
              goto LABEL_42;
            }
          }

          v46 = ValueAtIndex;
          memset(v70, 0, 24);
          getTrackEditedDuration(v26, ValueAtIndex, v70);
          OUTLINED_FUNCTION_24_20();
          if (!OUTLINED_FUNCTION_49_10(v47, v48, v49, v50, v78, v51, v52, v67, v68, v69, *(&v69 + 1), *v70, *&v70[16], *&v70[24], v71, *(&v71 + 1), time2.value, *&time2.timescale, time2.epoch, v73, *&time1.value, time1.epoch))
          {
            memset(&v75, 0, sizeof(v75));
            GetTotalEditSegmentDuration(v46[2], &v75);
            time1 = v75;
            time2 = *a6;
            v53 = CMTimeCompare(&time1, &time2);
            v27 = MEMORY[0x1E695E480];
            if (v53 < 1)
            {
              goto LABEL_46;
            }

            *&a6->value = *&v75.value;
            epoch = v75.epoch;
            goto LABEL_45;
          }
        }
      }

LABEL_42:
      getMaximumEditedTrackDuration(v26, v70);
      OUTLINED_FUNCTION_24_20();
      v55 = CMTimeCompare(&v75, v70);
      v27 = MEMORY[0x1E695E480];
      if (!v55)
      {
        memset(v70, 0, 24);
        MovieInformationGetMovieDuration(*(v26 + 24), v70);
        v75 = *v70;
        time1 = *a6;
        if (CMTimeCompare(&v75, &time1) >= 1)
        {
          *&a6->value = *v70;
          epoch = *&v70[16];
LABEL_45:
          a6->epoch = epoch;
        }
      }
    }
  }

LABEL_46:
  clearInsertionStateInTracks(a1);
  SourceFromTrack = createSourceFromTrack(0, a4, *v27, v14, 1, &v77);
  if (SourceFromTrack)
  {
    v10 = SourceFromTrack;
    goto LABEL_6;
  }

  v77[37] = v17;
  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v57, v58, v59);
  v9 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, v77);
    v61 = *(x4_0 + 16);
    *v70 = *x4_0;
    *&v70[16] = v61;
    v71 = *(x4_0 + 32);
    OUTLINED_FUNCTION_24_20();
    insertSegmentFromSourceArray(v9, a1, v70, &v75.value, v14, v62, v63, v64, v67, v68, v69, DWORD1(v69), *(&v69 + 1), *v70, *&v70[8], *&v70[16], *&v70[24], v71, *(&v71 + 1), time2.value, *&time2.timescale, time2.epoch, v73, time1.value, *&time1.timescale);
    v10 = v65;
    if (!v65)
    {
      *(v26 + 1) = 1;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    v10 = FigSignalErrorAtGM();
  }

LABEL_7:
  releaseSourceArray(v9);
  if (v76)
  {
    CFRelease(v76);
  }

  return v10;
}

uint64_t MutableMovie_InsertSegmentFromFormatReader(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Mutable = 0;
  v116 = *MEMORY[0x1E69E9840];
  cf = 0;
  SourceFromTrack = 4294950861;
  if (!a1)
  {
    goto LABEL_86;
  }

  v11 = 0;
  if (!a2)
  {
    goto LABEL_9;
  }

  v13 = *(a3 + 12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = a1;
  v17 = MEMORY[0x1E6960CC0];
  if ((*(a3 + 36) & 1) != 0 && !*(a3 + 40) && (*(a3 + 24) & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_77_6();
    v27 = OUTLINED_FUNCTION_37_19(v19, v20, v21, v22, v23, v24, v25, v26, v92, v95, v98, v101, *v17, v17[1], v17[2], *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, cf, time2[0]);
    a1 = CMTimeCompare(v27, v28);
    if (!a1)
    {
      Mutable = 0;
      v11 = 0;
      SourceFromTrack = 0;
      goto LABEL_9;
    }

    v13 = *(a3 + 12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((*(a3 + 36) & 1) == 0 || *(a3 + 40))
  {
    goto LABEL_8;
  }

  Mutable = 0;
  if ((v13 & 0x1D) != 1)
  {
LABEL_86:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  if ((*(a3 + 24) & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  *time2 = *a3;
  *&time2[16] = *(a3 + 16);
  v29 = OUTLINED_FUNCTION_37_19(a1, a2, a3, a4, a5, a6, a7, a8, v92, v95, *v17, v17[1], *v17, v17[1], v17[2], *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, cf, time2[0]);
  if (CMTimeCompare(v29, v30) < 0)
  {
    goto LABEL_8;
  }

  v32 = *(a4 + 12);
  if (v32 & 0x1D) != 1 && (v32)
  {
    goto LABEL_8;
  }

  if ((v32 & 0x1D) == 1 && (OUTLINED_FUNCTION_14_38(v31, *(a4 + 16), v93, v96, v99, *time1, *&time1[16], *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, cf, *a4, *(a4 + 8), *&time2[16]) & 0x80000000) != 0)
  {
    fig_log_get_emitter();
    SourceFromTrack = FigSignalErrorAtGM();
LABEL_8:
    Mutable = 0;
    v11 = 0;
    goto LABEL_9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (!DerivedStorage)
  {
    goto LABEL_81;
  }

  if (*DerivedStorage)
  {
    Mutable = 0;
    goto LABEL_88;
  }

  v35 = MEMORY[0x1E695E480];
  if ((a5 & 0x100) == 0 && !OUTLINED_FUNCTION_14_38(v34, *(a3 + 16), v93, v96, v99, *time1, *&time1[16], *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, cf, *a3, *(a3 + 8), *&time2[16]))
  {
    v36 = *v35;
    FigBaseObject = FigFormatReaderGetFigBaseObject(a2);
    if (!CMBaseObjectCopyProperty(FigBaseObject, @"Duration", v36, &cf))
    {
      if (cf)
      {
        v38 = CFGetTypeID(cf);
        if (v38 == CFDictionaryGetTypeID())
        {
          CMTimeMakeFromDictionary(time2, cf);
          v114 = *time2;
          HIDWORD(v96) = *&time2[12];
          v115 = *&time2[8];
          v93 = *&time2[16];
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v39 = FigFormatReaderGetFigBaseObject(a2);
          if (!CMBaseObjectCopyProperty(v39, @"NominalDuration", v36, &cf))
          {
            if (cf)
            {
              v40 = CFGetTypeID(cf);
              if (v40 == CFDictionaryGetTypeID())
              {
                v41 = CMTimeMakeFromDictionary(time2, cf);
                v112 = *time2;
                v47 = *&time2[12];
                v113 = *&time2[8];
                v48 = (BYTE4(v96) & 0x1D) == 1 && (time2[12] & 0x1D) == 1;
                if (v48)
                {
                  v49 = *&time2[16];
                  *&time2[8] = v113;
                  v50 = OUTLINED_FUNCTION_37_19(v41, v42, v34, *(&v34 + 1), v43, v44, v45, v46, v93, v96, v99, *(&v99 + 1), v114, __SPAIR64__(HIDWORD(v96), v115), v93, *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, cf, v112);
                  if (CMTimeCompare(v50, v51) >= 1)
                  {
                    OUTLINED_FUNCTION_77_6();
                    v60 = OUTLINED_FUNCTION_37_19(v52, v53, v54, v55, v56, v57, v58, v59, v93, v96, v99, *(&v99 + 1), v114, __SPAIR64__(HIDWORD(v96), v115), v93, *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, cf, time2[0]);
                    if (!CMTimeCompare(v60, v61))
                    {
                      *(a3 + 24) = v112;
                      *(a3 + 32) = v113;
                      *(a3 + 36) = v47;
                      *(a3 + 40) = v49;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v35 = MEMORY[0x1E695E480];
  }

  if (!*(v11 + 2) && OUTLINED_FUNCTION_14_38(v34, *(a4 + 16), v93, v96, v99, *time1, *&time1[16], *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, cf, *a4, *(a4 + 8), *&time2[16]) >= 1)
  {
    getMaximumEditedTrackDuration(v11, time2);
    OUTLINED_FUNCTION_21_23();
    if (!CMTimeCompare(time1, time2))
    {
      MovieInformationGetMovieDuration(*(v11 + 24), time2);
      *a4 = *time2;
      *(a4 + 16) = *&time2[16];
    }
  }

  clearInsertionStateInTracks(v16);
  v62 = *v35;
  *time2 = 0;
  *time1 = 0;
  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v63, v64, v65);
  if (Mutable)
  {
    v66 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v66)
    {
LABEL_79:
      SourceFromTrack = 4294954514;
LABEL_80:
      releaseSourceArray(Mutable);
LABEL_81:
      Mutable = 0;
      goto LABEL_9;
    }

    v67 = v66(a2, time2);
    if (v67)
    {
LABEL_95:
      SourceFromTrack = v67;
      goto LABEL_80;
    }

    if (*time2 >= 1)
    {
      v68 = 0;
      do
      {
        v114 = 0;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_197();
        v67 = v69();
        if (v67)
        {
          goto LABEL_95;
        }

        SourceFromTrack = createSourceFromTrack(a2, v114, v62, a5, 1, time1);
        if (v114)
        {
          CFRelease(v114);
        }

        if (SourceFromTrack)
        {
          goto LABEL_80;
        }

        v70 = *time1;
        if (*time1)
        {
          *(*time1 + 148) = 0;
          CFArrayAppendValue(Mutable, v70);
        }
      }

      while (++v68 < *time2);
    }

    releaseSourceArray(0);
  }

  else
  {
    fig_log_get_emitter();
    SourceFromTrack = FigSignalErrorAtGM();
    releaseSourceArray(0);
    if (SourceFromTrack)
    {
      goto LABEL_81;
    }
  }

  *(v11 + 72) = Mutable;
  v71 = *(a3 + 16);
  *time2 = *a3;
  *&time2[16] = v71;
  v111 = *(a3 + 32);
  OUTLINED_FUNCTION_21_23();
  insertSegmentFromSourceArray(Mutable, v16, time2, time1, a5, v72, v73, v74, v93, v96, v99, DWORD1(v99), *(&v99 + 1), *time1, *&time1[8], *&time1[16], *&time1[24], v104, *(&v104 + 1), v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1));
  if (v75)
  {
    goto LABEL_93;
  }

  v106 = 0u;
  v107 = 0u;
  v105 = 0u;
  *time2 = *a4;
  *&time2[16] = *(a4 + 16);
  v83 = OUTLINED_FUNCTION_37_19(v75, v76, v77, v78, v79, v80, v81, v82, v94, v97, v100, v102, *(a3 + 24), *(a3 + 32), *(a3 + 40), *&time1[24], v104, *(&v104 + 1), 0, 0, 0, 0, 0, 0, v108, cf, time2[0]);
  CMTimeRangeMake(v85, v83, v84);
  *time1 = v105;
  *&time1[16] = v106;
  v104 = v107;
  if (!CMBaseObjectGetDerivedStorage())
  {
    SourceFromTrack = 4294950861;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_86_5();
  if (v86)
  {
LABEL_88:
    SourceFromTrack = 4294950869;
    goto LABEL_9;
  }

  v75 = MovieInformationLockForRead(*(a3 + 24));
  if (v75)
  {
LABEL_93:
    SourceFromTrack = v75;
    goto LABEL_9;
  }

  if (MovieInformationGetTrackCount(*(a3 + 24)) < 1)
  {
    MovieInformationUnlockForRead(*(a3 + 24));
LABEL_85:
    SourceFromTrack = 0;
    *(v11 + 1) = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_417_0();
  SourceFromTrack = 0;
  do
  {
    TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(a3 + 24), a5);
    if (TrackForTrackIndex)
    {
      v88 = TrackForTrackIndex;
      Storage = MutableMovieTrackGetStorage(v16, *(TrackForTrackIndex + 144));
      if (Storage)
      {
        v90 = Storage;
        if (!*(Storage + 124))
        {
          if (*(v88 + 816) >= 1)
          {
            *time2 = *time1;
            *&time2[16] = *&time1[16];
            v111 = v104;
            MovieTrackInsertEmptySegment();
            SourceFromTrack = v91;
          }

          *(v90 + 124) = 1;
          *(v90 + 56) = SourceFromTrack == 0;
        }
      }
    }

    OUTLINED_FUNCTION_377_0();
  }

  while (!v48);
  MovieInformationUnlockForRead(*(a3 + 24));
  if (!SourceFromTrack)
  {
    goto LABEL_85;
  }

LABEL_9:
  releaseSourceArray(Mutable);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    *(v11 + 72) = 0;
  }

  return SourceFromTrack;
}

uint64_t MutableMovie_AddTrackReferenceToTrack(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 4294950861;
  if (a1 && a3 && a4)
  {
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_59_10();
      if (v7)
      {
        return 4294950869;
      }

      else
      {
        result = MovieInformationLockForWrite(*(v4 + 24));
        if (!result)
        {
          v8 = OUTLINED_FUNCTION_76_8();
          v12 = MovieInformationAddOneTrackReference(v8, v9, v10, v11);
          MovieInformationUnlockForWrite(*(v4 + 24));
          *(v4 + 1) = 1;
          return v12;
        }
      }
    }

    else
    {
      return 4294950861;
    }
  }

  return result;
}

uint64_t MutableMovie_DeleteTrackReferenceToTrack(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 4294950861;
  if (a1 && a3 && a4)
  {
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_59_10();
      if (v7)
      {
        return 4294950869;
      }

      else
      {
        result = MovieInformationLockForWrite(*(v4 + 24));
        if (!result)
        {
          v8 = OUTLINED_FUNCTION_76_8();
          v12 = MovieInformationRemoveOneTrackReference(v8, v9, v10, v11);
          MovieInformationUnlockForWrite(*(v4 + 24));
          *(v4 + 1) = 1;
          return v12;
        }
      }
    }

    else
    {
      return 4294950861;
    }
  }

  return result;
}

uint64_t MutableMovie_CopyAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 4294950861;
  if (a1)
  {
    if (a4)
    {
      v10 = v8;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v12 = DerivedStorage;
        if (!a2)
        {
          v23 = *(DerivedStorage + 104);
          if (v23)
          {
            v15 = CFRetain(v23);
            v26 = v15;
LABEL_13:
            v9 = 0;
            OUTLINED_FUNCTION_74_8(v15, v16, v17, v18, v19, v20, v21, v22, cf, v26);
            return v9;
          }
        }

        cf = 0;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v13)
        {
          v14 = v13(a1, a2, a3, &cf);
          if (v14)
          {
            return v14;
          }

          v9 = FigAssetCreateWithFormatReader(v10, cf, (*(v12 + 2) != 0) << 8, 0, &v26);
          CFRelease(cf);
          if (a2 || v9)
          {
            if (v9)
            {
              return v9;
            }
          }

          else
          {
            v15 = CFRetain(v26);
            *(v12 + 104) = v15;
          }

          goto LABEL_13;
        }

        return 4294954514;
      }
    }
  }

  return v9;
}

uint64_t writeHeaderToByteStream(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  ptr = 0;
  url = 0;
  v78 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_107;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &url);
  if (v12)
  {
    goto LABEL_93;
  }

  v13 = CFURLCopyPathExtension(url);
  if (v13)
  {
    v14 = v13;
    FigGetFileTypeForMovieFamilyExtension(v13);
    CFRelease(v14);
    if (!FigCFEqual())
    {
      appended = 4294950874;
      goto LABEL_108;
    }
  }

  v15 = *(DerivedStorage + 56);
  if (v15)
  {
    Count = CFArrayGetCount(v15);
    if (Count >= 1)
    {
      v17 = Count;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), i);
        if (ValueAtIndex)
        {
          v20 = ValueAtIndex;
          if (*(ValueAtIndex + 30) == 1)
          {
            v21 = ValueAtIndex[16];
            if (v21)
            {
              releaseSource(v11, v21);
              v20[16] = 0;
            }
          }
        }
      }
    }
  }

  v23 = !a4 || (v22 = CFGetTypeID(a4), v22 != CFDictionaryGetTypeID()) || CFDictionaryGetValue(a4, @"WriteFileTypeAtom") != *MEMORY[0x1E695E4C0];
  v12 = createMovieHeaderMakerFromMiP(a1, *(DerivedStorage + 24), &ptr);
  if (v12)
  {
    goto LABEL_93;
  }

  v12 = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(ptr, v11, a2, url, &v78);
  if (v12)
  {
    goto LABEL_93;
  }

  v77 = 0;
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v24)
  {
    goto LABEL_107;
  }

  v12 = v24(a3, 0, &v77);
  if (v12)
  {
    goto LABEL_93;
  }

  v25 = !v23;
  if (v77)
  {
    v25 = 1;
  }

  if (v25)
  {
    DataLength = CMBlockBufferGetDataLength(v78);
    OUTLINED_FUNCTION_53_14();
    OUTLINED_FUNCTION_46_12();
    CurrentAtomGlobalOffset = FigAtomStreamInitWithByteStream();
    if (!CurrentAtomGlobalOffset)
    {
      AtomWithType = FigAtomStreamPositionAtFirstAtomWithType();
      if (AtomWithType == -12890)
      {
        goto LABEL_45;
      }

      appended = AtomWithType;
      if (AtomWithType)
      {
LABEL_43:
        if (appended && appended != -12894)
        {
          goto LABEL_108;
        }

LABEL_45:
        v34 = -DataLength < 8 && DataLength < 0;
        if (DataLength > 0 || v34)
        {
          theBuffer[0] = 0;
          v53 = OUTLINED_FUNCTION_46_12();
          getLastAtomTypeAndOffsetAndLength(v53, v54, v55, v56);
          if (v12)
          {
            goto LABEL_93;
          }

          LODWORD(v82) = 0;
          if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
          {
            goto LABEL_107;
          }

          v58 = OUTLINED_FUNCTION_11_47();
          v12 = v59(v58);
          if (v12)
          {
            goto LABEL_93;
          }

          v60 = v82;
          LODWORD(v82) = bswap32(v82);
          if (v60)
          {
            v12 = OUTLINED_FUNCTION_18_27();
            if (v12)
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (theBuffer[0] > 0xFFFFFFFFLL)
            {
              if (!precedingAtomIsWideAtom(a3, -1))
              {
                appended = 4294950860;
                goto LABEL_108;
              }

              theBuffer[0] = (theBuffer[0] + 8);
              LODWORD(v82) = 0x1000000;
              v66 = OUTLINED_FUNCTION_11_47();
              v12 = CMByteStreamWrite(v66, v67, v68, v69);
              if (v12)
              {
                goto LABEL_93;
              }

              v70 = OUTLINED_FUNCTION_13_35();
              v12 = CMByteStreamWrite(v70, v71, v72, v73);
              if (v12)
              {
                goto LABEL_93;
              }

              theBuffer[0] = bswap64(theBuffer[0]);
              v74 = OUTLINED_FUNCTION_46_12();
              CMByteStreamWrite(v74, 8, v75, v76);
            }

            else
            {
              theBuffer[0] = bswap32(theBuffer[0]);
              v62 = OUTLINED_FUNCTION_13_35();
              v12 = CMByteStreamWrite(v62, v63, v64, v65);
              if (v12)
              {
                goto LABEL_93;
              }
            }

            v12 = OUTLINED_FUNCTION_18_27();
            if (v12)
            {
              goto LABEL_93;
            }
          }
        }

        theBuffer[0] = 0;
        LODWORD(v82) = 0;
        if (a2 && a3)
        {
          v35 = copyFileTypeAtomAsBlockBuffer(a2, theBuffer);
          if (v35)
          {
            goto LABEL_125;
          }

          v36 = CMBlockBufferGetDataLength(theBuffer[0]);
          if (v36 < 0x21)
          {
            v37 = v36;
            if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
            {
LABEL_65:
              appended = 4294954514;
              goto LABEL_66;
            }

            v38 = OUTLINED_FUNCTION_11_47();
            v35 = v39(v38);
            if (!v35)
            {
              if (v82 != 1952539757)
              {
LABEL_64:
                appended = 0;
                goto LABEL_66;
              }

              v40 = 8;
              while (*(*(CMBaseObjectGetVTable() + 16) + 8))
              {
                v41 = OUTLINED_FUNCTION_11_47();
                v35 = v42(v41);
                if (v35)
                {
                  goto LABEL_125;
                }

                if (v82 != 1887007846)
                {
                  goto LABEL_64;
                }

                v40 += 4;
                if (v40 == 32)
                {
                  v35 = OUTLINED_FUNCTION_92_5();
                  if (v35)
                  {
                    goto LABEL_125;
                  }

                  LOBYTE(v81) = 0;
                  if (v37 != 32)
                  {
                    do
                    {
                      v57 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v57)
                      {
                        appended = v57(a3, 1, v37, &v81, 0);
                      }

                      else
                      {
                        appended = 4294954514;
                      }

                      ++v37;
                    }

                    while (v37 != 32);
                    goto LABEL_66;
                  }

                  goto LABEL_64;
                }
              }

              goto LABEL_65;
            }

LABEL_125:
            appended = v35;
LABEL_66:
            if (theBuffer[0])
            {
              CFRelease(theBuffer[0]);
            }

            if (appended)
            {
              goto LABEL_108;
            }

            theBuffer[0] = 0;
            LODWORD(v82) = 0;
            LODWORD(v81) = 0;
            if (a2 && a3)
            {
              if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
              {
                goto LABEL_85;
              }

              v43 = OUTLINED_FUNCTION_11_47();
              v45 = v44(v43);
              if (v45)
              {
                goto LABEL_123;
              }

              if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
              {
LABEL_85:
                appended = 4294954514;
                goto LABEL_86;
              }

              v46 = OUTLINED_FUNCTION_13_35();
              v45 = v47(v46);
              if (v45)
              {
                goto LABEL_123;
              }

              LODWORD(v82) = bswap32(v82);
              v48 = v81;
              LODWORD(v81) = bswap32(v81);
              if (v48 != 1887007846)
              {
                goto LABEL_96;
              }

              v45 = copyFileTypeAtomAsBlockBuffer(a2, theBuffer);
              if (v45)
              {
LABEL_123:
                appended = v45;
                goto LABEL_86;
              }

              v49 = CMBlockBufferGetDataLength(theBuffer[0]);
              if (v49 <= v82)
              {
                v50 = v49;
                v45 = OUTLINED_FUNCTION_92_5();
                if (!v45)
                {
                  LOBYTE(v83) = 0;
                  if (v50 < v82)
                  {
                    do
                    {
                      v51 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v51)
                      {
                        appended = v51(a3, 1, v50, &v83, 0);
                      }

                      else
                      {
                        appended = 4294954514;
                      }

                      ++v50;
                    }

                    while (v50 < v82);
LABEL_86:
                    if (theBuffer[0])
                    {
                      CFRelease(theBuffer[0]);
                    }

                    goto LABEL_88;
                  }

LABEL_96:
                  appended = 0;
                  goto LABEL_86;
                }

                goto LABEL_123;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_5();
            v45 = FigSignalErrorAtGM();
            goto LABEL_123;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        v35 = FigSignalErrorAtGM();
        goto LABEL_125;
      }

      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    }

    appended = CurrentAtomGlobalOffset;
    goto LABEL_43;
  }

  theBuffer[0] = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    appended = FigSignalErrorAtGM();
    if (appended)
    {
      goto LABEL_108;
    }

LABEL_31:
    v28 = v78;
    theBuffer[0] = 0;
    if (!v78 || !a3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      v30 = FigSignalErrorAtGM();
      goto LABEL_36;
    }

    v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v29)
    {
      v12 = v29(a3, 0, theBuffer);
      if (!v12)
      {
        CMBlockBufferGetDataLength(v28);
        OUTLINED_FUNCTION_517();
        v30 = CMByteStreamWriteBlockBuffer();
LABEL_36:
        appended = v30;
LABEL_88:
        if (!appended)
        {
          v52 = *(DerivedStorage + 8);
          if (v52 && CFEqual(url, v52))
          {
            appended = 0;
            *(DerivedStorage + 1) = 0;
          }

          else
          {
            appended = 0;
          }
        }

        goto LABEL_108;
      }

LABEL_93:
      appended = v12;
      goto LABEL_108;
    }

LABEL_107:
    appended = 4294954514;
    goto LABEL_108;
  }

  appended = copyFileTypeAtomAsBlockBuffer(a2, theBuffer);
  v27 = theBuffer[0];
  if (!appended)
  {
    CMBlockBufferGetDataLength(theBuffer[0]);
    appended = CMByteStreamAppendBlockBuffer();
    v27 = theBuffer[0];
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (!appended)
  {
    goto LABEL_31;
  }

LABEL_108:
  if (v78)
  {
    CFRelease(v78);
  }

  MovieHeaderMakerRelease(ptr);
  if (url)
  {
    CFRelease(url);
  }

  return appended;
}

void getLastAtomTypeAndOffsetAndLength(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4)
{
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithByteStream();
  if (CurrentAtomTypeAndDataLength != -12893)
  {
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_7;
    }

    do
    {
      Atom = FigAtomStreamAdvanceToNextAtom();
    }

    while (!Atom);
    if (Atom == -12890)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (!CurrentAtomTypeAndDataLength)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomGlobalOffset();
      }

LABEL_7:
      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  CurrentAtomTypeAndDataLength = 0;
  if (a2)
  {
LABEL_8:
    *a2 = 1752524863;
  }

LABEL_9:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_74_8(CurrentAtomTypeAndDataLength, v8, v9, v10, v11, v12, v13, v14, v16, 0);
  }
}

BOOL precedingAtomIsWideAtom(uint64_t a1, uint64_t a2)
{
  v9 = 1752524863;
  v10 = 0;
  v2 = a2 - 8;
  if (a2 < 8)
  {
    return 0;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 0;
  }

  if (v5(a1, 4, v2, &v10, 0))
  {
    return 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6 || v6(a1, 4, a2 - 4, &v9, 0))
  {
    return 0;
  }

  return v10 == 0x8000000 && v9 == 1701079415;
}

_DWORD *MutableMovieTrackGetStorage(uint64_t a1, int a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    if (!CMBaseObjectGetDerivedStorage())
    {
      return 0;
    }

    OUTLINED_FUNCTION_33_18();
    if (v6)
    {
      return 0;
    }

    else
    {
      FigSimpleMutexLock();
      v7 = *(v2 + 56);
      if (v7 && CFArrayGetCount(v7) >= 1)
      {
        OUTLINED_FUNCTION_417_0();
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 56), v3);
          if (ValueAtIndex)
          {
            v4 = ValueAtIndex;
            if (ValueAtIndex[1] == a2)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_377_0();
          if (v9)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v4 = 0;
      }

      FigSimpleMutexUnlock();
    }
  }

  return v4;
}

uint64_t copyFileTypeAtomAsBlockBuffer(uint64_t a1, CMBlockBufferRef *a2)
{
  v3 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_20_23();
  v9 = MovieHeaderMakerCopyFileTypeMajorBrand(v4, v5, v6, v7, v8);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_20_23();
  v9 = MovieHeaderMakerCopyFileTypeMinorVersion(v10, v11, v12, v13, v14);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_20_23();
  v20 = MovieHeaderMakerCopyFileTypeCompatibleBrands(v15, v16, v17, v18, v19);
  if (v20)
  {
    return v20;
  }

  else
  {
    return MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(v3, 0, 0, 0, a2);
  }
}

uint64_t writeBlockBufferToCFData(uint64_t a1, __CFData *a2)
{
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_197();
  Contiguous = CMBlockBufferCreateContiguous(v3, v4, v5, v6, v7, 0, 0, v8);
  if (Contiguous)
  {
    return Contiguous;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v10, v11, v12, v13, v14);
  if (!DataPointer)
  {
    CFDataAppendBytes(a2, 0, 0);
  }

  return DataPointer;
}

uint64_t createMutableMovieTrackObject(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, uint64_t *a5)
{
  v18 = 0;
  v19 = 0;
  if (!a5)
  {
    return 4294950861;
  }

  v10 = MEMORY[0x19A8CC720](a1, 136, 0x1060040A18F7735, 0);
  if (v10)
  {
    v11 = v10;
    bzero(v10, 0x88uLL);
    *(v11 + 64) = -1;
    BasicInfo = MovieTrackGetBasicInfo(a3, &v19 + 1, &v19);
    if (BasicInfo || (BasicInfo = MediaDataChunkWriterAddTrack(a4, SHIDWORD(v19), 1, chunkCallback_0, v11, &v18), BasicInfo) || (BasicInfo = MediaDataChunkWriterTrackSetPreferredChunkAlignment(a4, v18, 0), BasicInfo) || (*&v17.value = kFigMutableMovie_DefaultPreferredChunkDuration, v17.epoch = 0, BasicInfo = MediaDataChunkWriterTrackSetPreferredChunkDuration(a4, v18, &v17), BasicInfo) || (BasicInfo = MediaDataChunkWriterTrackSetPreferredChunkSize(a4, v18, 0x100000), BasicInfo))
    {
      v15 = BasicInfo;
      releaseTrack(a1, v11);
    }

    else
    {
      *v11 = HIDWORD(v19);
      *(v11 + 4) = v19;
      if (a2)
      {
        v13 = CFRetain(a2);
      }

      else
      {
        v13 = 0;
      }

      *(v11 + 8) = v13;
      if (a3)
      {
        v14 = CFRetain(a3);
      }

      else
      {
        v14 = 0;
      }

      *(v11 + 16) = v14;
      *(v11 + 24) = a4;
      *(v11 + 32) = v18;
      *(v11 + 120) = 0;
      *(v11 + 124) = 0;
      if (*v11 == 1953325924)
      {
        v14[881] = 1;
      }

      v15 = 0;
      *a5 = v11;
    }

    return v15;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void chunkCallback_0(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, CMTime *a7, _BYTE *a8, uint64_t *a9, const __CFArray *a10, uint64_t a11, uint64_t a12)
{
  v42 = **&MEMORY[0x1E6960C70];
  v41 = v42;
  if (a12)
  {
    MovieTrackAppendSampleInformation(*(a12 + 8), *(a12 + 16), a1, a2, a4, a5, a6, a7, a8, a9, a10, a11, &v42, &v41);
    if (!v12)
    {
      v13 = *(a12 + 128);
      if (v13)
      {
        if (*(a12 + 120) != 1)
        {
          v14 = *(v13 + 96);
          if ((v14 & 0x8000000000000000) == 0)
          {
            v15 = *(v13 + 88);
            if (v15)
            {
              if (v14 < v15[1])
              {
                v16 = (*v15 + 48 * v14);
                v17 = v16[1];
                v39 = *v16;
                *v40 = v17;
                *&v40[16] = v16[2];
                OUTLINED_FUNCTION_72_7();
                if ((OUTLINED_FUNCTION_43_14(*v40, v24, v26, v28, v30, v32, v34, v18, v19, time2.epoch, v37, time1.value) & 0x80000000) != 0)
                {
                  OUTLINED_FUNCTION_72_7();
                  OUTLINED_FUNCTION_132_0(MEMORY[0x1E6960CC0]);
                  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                  {
                    v39 = *&v42.value;
                    *v40 = v42.epoch;
                  }
                }

                *&time1.timescale = *&v41.timescale;
                time1.epoch = v41.epoch;
                if ((OUTLINED_FUNCTION_43_14(*&v40[24], v25, v27, v29, v31, v33, v35, *&v40[8], *&v40[16], time2.epoch, v37, v41.value) & 0x80000000) != 0)
                {
                  *&v40[8] = v41;
                }

                v20 = *(a12 + 128);
                v21 = *(v20 + 88);
                if (v21)
                {
                  v22 = (*v21 + 48 * *(v20 + 96));
                  v23 = *v40;
                  *v22 = v39;
                  v22[1] = v23;
                  v22[2] = *&v40[16];
                }
              }
            }
          }
        }
      }

      if ((*(a12 + 84) & 1) == 0)
      {
        *(a12 + 72) = v42;
      }

      if ((*(a12 + 108) & 1) == 0)
      {
        *(a12 + 96) = v41;
      }
    }
  }
}

uint64_t setMediaTimeScaleIfNeeded(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  result = 4294950861;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 4294950861;
  }

  v6 = *(a1 + 128);
  if (!v6)
  {
    MediaTimeScale = MovieTrackGetMediaTimeScale(*(a1 + 16));
    if (MediaTimeScale)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v7 = *(v6 + 56);
  if (v7 && MediaSampleTimingGeneratorGetMediaTimeScale(v7))
  {
    return 0;
  }

  v8 = MovieTrackGetMediaTimeScale(v5);
  MediaTimeScale = v8;
  if (!v8)
  {
    v10 = *(v6 + 8);
    MediaTimeScale = v10;
    if (v10)
    {
LABEL_14:
      result = MovieTrackSetMediaTimeScale(v5, v10);
      if (result)
      {
        return result;
      }

      v9 = MediaTimeScale;
      goto LABEL_16;
    }

LABEL_12:
    result = FigMovieGetDefaultMediaTimeScaleFromSample(a2, &MediaTimeScale);
    if (result)
    {
      return result;
    }

    v10 = MediaTimeScale;
    if (MediaTimeScale)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v9 = v8;
LABEL_16:
  result = 0;
  if (v6 && v9)
  {
    result = *(v6 + 56);
    if (result)
    {
      return MediaSampleTimingGeneratorSetMediaTimeScale(result, v9);
    }
  }

  return result;
}

uint64_t setVideoTrackDimensionsIfNeeded(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  IsISOFileType = FigFileTypeIsISOFileType();
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  v6 = OUTLINED_FUNCTION_31_17();
  MovieTrackGetSpatialInformation(v6, v7, v8, 0);
  FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(FormatDescription, IsISOFileType);
  v9 = OUTLINED_FUNCTION_23_30();
  result = MovieTrackSetTrackDimensions(v9, v10, v11);
  if (!result)
  {
    v13 = OUTLINED_FUNCTION_31_17();
    MovieTrackGetCleanApertureDimensions(v13, v14, v15);
    if (v16 || (FigMovieGetVideoDefaultCleanApertureDimensionsFromFormatDescription(FormatDescription), v17 = OUTLINED_FUNCTION_23_30(), result = MovieTrackSetCleanApertureDimensions(v17, v18, v19), !result))
    {
      v20 = OUTLINED_FUNCTION_31_17();
      MovieTrackGetProductionApertureDimensions(v20, v21, v22);
      if (v23 || (FigMovieGetVideoDefaultProductionApertureDimensionsFromFormatDescription(FormatDescription), v24 = OUTLINED_FUNCTION_23_30(), result = MovieTrackSetProductionApertureDimensions(v24, v25, v26), !result))
      {
        v27 = OUTLINED_FUNCTION_31_17();
        MovieTrackGetEncodedPixelsDimensions(v27, v28, v29);
        if (v30)
        {
          return 0;
        }

        else
        {
          FigMovieGetVideoDefaultEncodedPixelsDimensionsFromFormatDescription(FormatDescription);
          v31 = OUTLINED_FUNCTION_23_30();
          return MovieTrackSetEncodedPixelsDimensions(v31, v32, v33);
        }
      }
    }
  }

  return result;
}

void getByteStreamForTrackStorageURL(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_296_0();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v33 = DerivedStorage;
    v47 = v29;
    v48 = v27;
    v34 = *(DerivedStorage + 64);
    if (v34 && (Count = CFArrayGetCount(v34), Count >= 1))
    {
      v36 = Count;
      v37 = 0;
      v38 = 0;
      v39 = *MEMORY[0x1E695FFA0];
      v40 = *MEMORY[0x1E695E480];
      v41 = -1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v33 + 64), v37);
        if (!ValueAtIndex)
        {
          break;
        }

        v43 = ValueAtIndex;
        if (*ValueAtIndex)
        {
          cf = 0;
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v45)
          {
            v45(CMBaseObject, v39, v40, &cf);
          }

          if (cf)
          {
            v46 = CFGetTypeID(cf);
            if (v46 == CFURLGetTypeID() && CFEqual(cf, v31))
            {
              if (*(v43 + 8))
              {
                v38 = 1;
              }

              v41 = v37;
            }

            CFRelease(cf);
          }
        }

        if (v36 == ++v37)
        {
          goto LABEL_19;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM();
    }

    else
    {
      v38 = 0;
      v41 = -1;
LABEL_19:
      if (v47)
      {
        *v47 = v38;
      }

      if (v48)
      {
        *v48 = v41;
      }
    }
  }

  OUTLINED_FUNCTION_207_0();
}

uint64_t createStreamInfoForByteStream(const void *a1, uint64_t a2, CFIndex *a3)
{
  result = 4294950861;
  if (a1 && a2 && a3 && *(a2 + 64))
  {
    Count = CFArrayGetCount(*(a2 + 64));
    v8 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 24, 0x1020040AC2FBBA9, 0);
    if (v8)
    {
      v9 = v8;
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = CFRetain(a1);
      CFArrayAppendValue(*(a2 + 64), v9);
      result = 0;
      *a3 = Count;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

void writeMdatHeaderIfNecessary(uint64_t a1, unint64_t a2, void *a3)
{
  v16 = 0;
  v15 = 1752524863;
  v14 = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    goto LABEL_21;
  }

  getLastAtomTypeAndOffsetAndLength(*a1, &v15, &v16, &v14);
  if (v6)
  {
    goto LABEL_21;
  }

  if (v15 == 1835295092)
  {
    v13 = 0;
    v7 = *a1;
    v8 = v16;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v9)
    {
      if (!a3)
      {
        return;
      }

      goto LABEL_16;
    }

    if (v9(v7, 4, v8, &v13, 0))
    {
      goto LABEL_21;
    }

    v10 = bswap32(v13);
    v13 = v10;
    if (!v10)
    {
      goto LABEL_15;
    }

    if (v10 == 1)
    {
      if (~v14 < a2)
      {
        goto LABEL_9;
      }

LABEL_15:
      v12 = v16;
      *(a1 + 16) = v16;
      *(a1 + 8) = 1;
      v9 = (v14 + v12);
      if (!a3)
      {
        return;
      }

      goto LABEL_16;
    }

    if (0xFFFFFFFFLL - v14 >= a2 || precedingAtomIsWideAtom(*a1, v16))
    {
      goto LABEL_15;
    }
  }

LABEL_9:
  if (!writeMdatHeader(*a1))
  {
    v11 = v14 + v16;
    *(a1 + 16) = v14 + v16 + 8;
    *(a1 + 8) = 1;
    v9 = (v11 + 16);
    if (!a3)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_21:
  v9 = 0;
  if (!a3)
  {
    return;
  }

LABEL_16:
  *a3 = v9;
}

void writeActualMdatLengthsToStorages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_296_0();
  a24 = v25;
  a25 = v28;
  a13 = 0;
  if (v27)
  {
    v29 = v26;
    if (CFArrayGetCount(v27) >= 1)
    {
      OUTLINED_FUNCTION_417_0();
      do
      {
        v30 = OUTLINED_FUNCTION_618();
        ValueAtIndex = CFArrayGetValueAtIndex(v30, v31);
        if (!ValueAtIndex)
        {
LABEL_31:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM();
          break;
        }

        v33 = ValueAtIndex[8];
        if (v33 != -1)
        {
          v34 = CFArrayGetValueAtIndex(*(v29 + 64), v33);
          if (!v34)
          {
            goto LABEL_31;
          }

          v35 = v34;
          if (*(v34 + 8))
          {
            v36 = *v34;
            v37 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v37 || v37(v36, 0, &a13))
            {
              break;
            }

            v38 = v35[2];
            v39 = a13 - v38;
            if (!((a13 - v38) >> 32))
            {
              LODWORD(a10) = bswap32(v39);
              v40 = *v35;
              v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v41)
              {
                break;
              }

              v42 = v40;
              v43 = 4;
              v44 = v38;
LABEL_13:
              if (v41(v42, v43, v44, &a10, 0))
              {
                break;
              }

              goto LABEL_18;
            }

            a12 = 0;
            a10 = a13 - v38;
            v45 = *v35;
            v46 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v46 || v46(v45, 4, v38, &a12, 0))
            {
              break;
            }

            v47 = bswap32(a12);
            a12 = v47;
            if (v47)
            {
              if (v47 == 1)
              {
                precedingAtomIsWideAtom(*v35, v35[2]);
                a10 = bswap64(a10);
                v49 = *v35;
                v50 = v35[2];
                v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v41)
                {
                  break;
                }

                v44 = v50 + 8;
                v42 = v49;
                v43 = 8;
                goto LABEL_13;
              }

              if (precedingAtomIsWideAtom(*v35, v35[2]))
              {
                a9 = 0x7461646D01000000;
                a10 = bswap64(v39 + 8);
                v51 = *v35;
                v52 = v35[2];
                v53 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v53)
                {
                  break;
                }

                if (v53(v51, 8, v52 - 8, &a9, 0))
                {
                  break;
                }

                v54 = *v35;
                v55 = v35[2];
                v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v41)
                {
                  break;
                }

                v42 = v54;
                v43 = 8;
                v44 = v55;
                goto LABEL_13;
              }
            }
          }
        }

LABEL_18:
        OUTLINED_FUNCTION_377_0();
      }

      while (!v48);
    }
  }

  OUTLINED_FUNCTION_207_0();
}

uint64_t createSourceFromTrack(const void *a1, const void *a2, const void *a3, char a4, int a5, uint64_t *a6)
{
  v8 = 0;
  v46 = 0;
  v47 = 0;
  cf = 0;
  v45 = 0;
  v9 = 4294950861;
  valuePtr = 0;
  if (!a2)
  {
    v11 = 0;
    goto LABEL_33;
  }

  v11 = 0;
  if (!a6)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_91_4();
  v15 = MEMORY[0x19A8CC720](a3, 160);
  v11 = v15;
  if (!v15)
  {
    fig_log_get_emitter();
    v17 = FigSignalErrorAtGM();
LABEL_40:
    v9 = v17;
    goto LABEL_41;
  }

  bzero(v15, 0xA0uLL);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v8 = 0;
    v9 = 4294954514;
    goto LABEL_33;
  }

  v17 = v16(a2, &v45, &v45 + 4);
  if (v17)
  {
    goto LABEL_40;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(a2);
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(FigBaseObject, @"TrackTimescale", 0, &cf);
    if (cf)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        CFRelease(cf);
      }
    }
  }

  if (!a5)
  {
    goto LABEL_29;
  }

  if (FigServer_IsMediaparserd() && (FigFormatReaderIsRemote(a1) || FigTrackReaderIsRemote(a2)))
  {
    OUTLINED_FUNCTION_20_23();
    if (a4)
    {
      v26 = FigSampleGeneratorRemoteCreateForTrackReader(v21, v22, v23, v24, v25);
    }

    else
    {
      v26 = FigSampleGeneratorRemoteCreateForTrackReaderProducingByteReferenceSampleBuffers(v21, v22, v23, v24, v25);
    }
  }

  else if (a4)
  {
    FigGetBaseByteStreamProvider();
    v30 = OUTLINED_FUNCTION_266_0();
    v26 = FigSampleGeneratorCreateForFormatReaderUsingByteStreams(v30, v31, a2, v32, 0, 2, v33);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_266_0();
    v26 = FigSampleGeneratorCreateForFormatReaderProducingByteReferenceSampleBuffers(v27, v28, a2, 0, 0, v29);
  }

  v9 = v26;
  if (v26)
  {
LABEL_41:
    v8 = 0;
    goto LABEL_33;
  }

  if (HIDWORD(v45) == 1751216244 || HIDWORD(v45) == 1936684398)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  v36 = MediaSampleTimingGeneratorCreate(a3, SHIDWORD(v45), v35, &v47);
  if (v36)
  {
    v9 = v36;
    v8 = v47;
    goto LABEL_33;
  }

LABEL_29:
  *v11 = HIDWORD(v45);
  v37 = valuePtr;
  *(v11 + 4) = v45;
  *(v11 + 8) = v37;
  if (a1)
  {
    v38 = CFRetain(a1);
  }

  else
  {
    v38 = 0;
  }

  *(v11 + 24) = v38;
  v39 = CFRetain(a2);
  v8 = 0;
  v9 = 0;
  v40 = v46;
  *(v11 + 32) = v39;
  *(v11 + 40) = v40;
  *(v11 + 56) = v47;
  v41 = *MEMORY[0x1E6960CC0];
  *(v11 + 128) = *(MEMORY[0x1E6960CC0] + 16);
  *(v11 + 112) = v41;
  *(v11 + 16) = 0;
  *a6 = v11;
  *(v11 + 146) = 0;
  v46 = 0;
  v47 = 0;
  v11 = 0;
LABEL_33:
  MediaSampleTimingGeneratorRelease(v8);
  if (v46)
  {
    CFRelease(v46);
  }

  if (v11)
  {
    releaseSource(a3, v11);
  }

  return v9;
}

const void *getTrackForInsertionFromSource(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1)
  {
    return v2;
  }

  v3 = a2;
  if (!a2)
  {
    return v2;
  }

  if (!*(a1 + 56) || !*(a2 + 32))
  {
    return 0;
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_213;
  }

  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    goto LABEL_213;
  }

  v7 = Count;
  Mutable = 0;
  v9 = 0;
  v10 = @"TrackEnabled";
  v142 = *MEMORY[0x1E695E480];
  v152 = v3;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v9);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      if (!*(ValueAtIndex + 124))
      {
        if (ValueAtIndex[1])
        {
          if (ValueAtIndex[2])
          {
            v13 = *(v3 + 32);
            if (v13)
            {
              v14 = *(v3 + 148);
              if (v14)
              {
                if (v14 != *(ValueAtIndex + 1))
                {
                  goto LABEL_18;
                }

                goto LABEL_15;
              }

              if (*ValueAtIndex == *v3)
              {
                cf[0] = 0;
                LODWORD(valuePtr[0]) = 0;
                FigTrackReaderGetFigBaseObject(v13);
                if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                {
                  v18 = OUTLINED_FUNCTION_57_8();
                  v19(v18, @"TrackTimescale", 0);
                  if (cf[0])
                  {
                    TypeID = CFNumberGetTypeID();
                    if (TypeID == CFGetTypeID(cf[0]))
                    {
                      CFNumberGetValue(cf[0], kCFNumberSInt32Type, valuePtr);
                      CFRelease(cf[0]);
                    }
                  }
                }

                MediaTimeScale = MovieTrackGetMediaTimeScale(v12[2]);
                if (!MediaTimeScale || MediaTimeScale == LODWORD(valuePtr[0]))
                {
                  cf[0] = 0;
                  FigTrackReaderGetFigBaseObject(v13);
                  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                  {
                    v22 = OUTLINED_FUNCTION_57_8();
                    v23(v22, v10, 0);
                  }

                  if (cf[0] && (v24 = CFBooleanGetTypeID(), v24 == CFGetTypeID(cf[0])))
                  {
                    v25 = CFBooleanGetValue(cf[0]);
                    CFRelease(cf[0]);
                  }

                  else
                  {
                    v25 = 0;
                  }

                  if (v25 == MovieTrackIsEnabled(v12[2]))
                  {
                    cf[0] = 0;
                    *&valuePtr[0] = 0;
                    MovieTrackGetLanguageInformation(v12[2], 0, cf, valuePtr);
                    value = 0;
                    v160 = 0;
                    FigBaseObject = FigTrackReaderGetFigBaseObject(v13);
                    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v27)
                    {
                      v27(FigBaseObject, @"TrackLanguageCode", 0, &value);
                    }

                    if (!cf[0])
                    {
                      cf[0] = @"und";
                    }

                    if (!value)
                    {
                      value = @"und";
                    }

                    v28 = FigCFEqual();
                    if (value)
                    {
                      CFRelease(value);
                      value = 0;
                    }

                    if (v28)
                    {
                      v29 = FigTrackReaderGetFigBaseObject(v13);
                      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v30)
                      {
                        v30(v29, @"ExtendedLanguageTagString", 0, &v160);
                      }

                      v31 = FigCFEqual();
                      if (v160)
                      {
                        CFRelease(v160);
                      }

                      if (v31)
                      {
                        v159 = 0;
                        *cf = 0u;
                        v158 = 0u;
                        v156 = 0;
                        memset(valuePtr, 0, sizeof(valuePtr));
                        value = 0;
                        OUTLINED_FUNCTION_613();
                        MovieTrackGetSpatialInformation(v32, v33, v34, v35);
                        v36 = FigTrackReaderGetFigBaseObject(v13);
                        v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v37)
                        {
                          v37(v36, @"TrackMatrix", v142, &value);
                        }

                        if (value)
                        {
                          v38 = CFArrayGetTypeID();
                          if (v38 == CFGetTypeID(value))
                          {
                            CFArrayToFigMatrix(value, valuePtr);
                            CFRelease(value);
                            v39 = 0;
                            for (i = 0; i != 3; ++i)
                            {
                              v41 = v39;
                              v42 = 3;
                              do
                              {
                                if (*(cf + v41) != *(valuePtr + v41))
                                {
                                  goto LABEL_71;
                                }

                                v41 += 4;
                                --v42;
                              }

                              while (v42);
                              v39 += 12;
                            }
                          }
                        }

                        OUTLINED_FUNCTION_63();
                        if (!v92)
                        {
                          goto LABEL_64;
                        }

                        cf[0] = 0;
                        LODWORD(valuePtr[0]) = 1065353216;
                        Volume = MovieTrackGetVolume(v12[2]);
                        FigTrackReaderGetFigBaseObject(v13);
                        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                        {
                          v44 = OUTLINED_FUNCTION_57_8();
                          if (!v45(v44, @"Volume", 0))
                          {
                            if (cf[0])
                            {
                              v46 = CFNumberGetTypeID();
                              if (v46 == CFGetTypeID(cf[0]))
                              {
                                CFNumberGetValue(cf[0], kCFNumberFloat32Type, valuePtr);
                                CFRelease(cf[0]);
                              }
                            }
                          }
                        }

                        if (Volume == *valuePtr)
                        {
LABEL_64:
                          IsChapterTrack = MovieTrackIsChapterTrack(v12[1], v12[2]);
                          cf[0] = 0;
                          v48 = FigTrackReaderGetFigBaseObject(v13);
                          v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                          if (v49)
                          {
                            v49(v48, @"ContainsChapters", 0, cf);
                          }

                          if (cf[0] && (v50 = CFBooleanGetTypeID(), v50 == CFGetTypeID(cf[0])))
                          {
                            v51 = CFBooleanGetValue(cf[0]);
                            CFRelease(cf[0]);
                            if ((IsChapterTrack == 0) != (v51 == 0))
                            {
                              goto LABEL_18;
                            }

                            if (v51)
                            {
                              goto LABEL_15;
                            }
                          }

                          else if (IsChapterTrack)
                          {
                            goto LABEL_18;
                          }

                          cf[0] = 0;
                          FigTrackReaderGetFigBaseObject(v13);
                          if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v52 = OUTLINED_FUNCTION_57_8(), v53(v52, @"TrackFormatDescriptionArray", 0)) || !cf[0])
                          {
LABEL_15:
                            if (Mutable || (OUTLINED_FUNCTION_613(), (Mutable = CFArrayCreateMutable(v15, v16, v17)) != 0))
                            {
                              CFArrayAppendValue(Mutable, v12);
                            }

                            goto LABEL_18;
                          }

                          v54 = MovieTrackCopyFormatDescriptionArray(v12[2]);
                          if (v54)
                          {
                            if (cf[0])
                            {
                              v55 = CFArrayGetCount(cf[0]);
                              v146 = CFArrayGetCount(v54);
                              v137 = v55;
                              if (v55 >= 1)
                              {
                                v56 = 0;
                                v141 = v10;
                                while (1)
                                {
                                  v139 = v56;
                                  desc = CFArrayGetValueAtIndex(cf[0], v56);
                                  if (desc && v146 >= 1)
                                  {
                                    break;
                                  }

LABEL_102:
                                  v56 = v139 + 1;
                                  if (v139 + 1 == v137)
                                  {
                                    goto LABEL_105;
                                  }
                                }

                                v58 = 0;
                                while (1)
                                {
                                  v59 = CFArrayGetValueAtIndex(v54, v58);
                                  if (!v59)
                                  {
                                    goto LABEL_101;
                                  }

                                  v60 = v59;
                                  v61 = *v12;
                                  if (*v12 == 1952807028)
                                  {
                                    break;
                                  }

                                  if (v61 == 1986618469)
                                  {
                                    v64 = OUTLINED_FUNCTION_409();
                                    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v64, v65, 1u);
                                    v67 = CMVideoFormatDescriptionGetPresentationDimensions(desc, 1u, 1u);
                                    if (PresentationDimensions.width != 0.0 || PresentationDimensions.height != 0.0)
                                    {
                                      v68 = PresentationDimensions.width / PresentationDimensions.height;
                                      if (PresentationDimensions.height == 0.0)
                                      {
                                        v68 = 0.0;
                                      }

                                      v69 = v67.width / v67.height;
                                      if (v67.height == 0.0)
                                      {
                                        v69 = 0.0;
                                      }

                                      if (vabdd_f64(v68, v69) > 0.00999999978)
                                      {
LABEL_106:
                                        v70 = 0;
LABEL_107:
                                        if (cf[0])
                                        {
                                          CFRelease(cf[0]);
                                          cf[0] = 0;
                                        }

                                        if (v54)
                                        {
                                          CFRelease(v54);
                                        }

                                        if ((v70 & 1) == 0)
                                        {
LABEL_18:
                                          v3 = v152;
                                          goto LABEL_71;
                                        }

                                        goto LABEL_15;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (v61 == 1953325924)
                                    {
                                      break;
                                    }

                                    if (!CFEqual(desc, v59))
                                    {
                                      goto LABEL_106;
                                    }
                                  }

LABEL_101:
                                  if (v146 == ++v58)
                                  {
                                    goto LABEL_102;
                                  }
                                }

                                v62 = v54;
                                MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
                                v92 = MediaSubType == CMFormatDescriptionGetMediaSubType(v60);
                                v54 = v62;
                                v10 = v141;
                                if (!v92)
                                {
                                  goto LABEL_106;
                                }

                                goto LABEL_101;
                              }
                            }

                            else
                            {
                              CFArrayGetCount(v54);
                            }
                          }

LABEL_105:
                          v70 = 1;
                          goto LABEL_107;
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

LABEL_71:
    ++v9;
  }

  while (v9 != v7);
  if (!Mutable)
  {
LABEL_213:
    FigSimpleMutexUnlock();
    return 0;
  }

  v71 = CFArrayGetCount(Mutable);
  if (!v71)
  {
    FigSimpleMutexUnlock();
    CFRelease(Mutable);
    return 0;
  }

  v72 = v71;
  if (v71 < 1)
  {
    v2 = 0;
    v73 = 0;
    goto LABEL_219;
  }

  v73 = 0;
  v74 = 0;
  v75 = v142;
  v136 = v71;
  v138 = Mutable;
  do
  {
    v76 = CFArrayGetValueAtIndex(Mutable, v74);
    if (!v76)
    {
      goto LABEL_176;
    }

    v77 = v76;
    cf[0] = 0;
    *&valuePtr[0] = 0;
    if (v76[1] && v76[2] && *(v3 + 32))
    {
      v78 = *(v3 + 24);
      if (!v78)
      {
        goto LABEL_161;
      }

      v79 = FigFormatReaderGetFigBaseObject(v78);
      v80 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v80)
      {
        v80(v79, @"TrackReferenceDictionary", v75, cf);
      }

      MovieInformationCreateTrackReferenceDictionary(v75, v77[1], valuePtr);
      if (cf[0] && CFDictionaryGetCount(cf[0]))
      {
        v81 = CFDictionaryGetCount(cf[0]);
        v82 = malloc_type_calloc(v81, 8uLL, 0x6004044C4A2DFuLL);
        v147 = v81;
        v83 = malloc_type_calloc(v81, 8uLL, 0x6004044C4A2DFuLL);
        v84 = 1;
        v3 = v152;
        v148 = v83;
        keys = v82;
        if (v82 && v83)
        {
          CFDictionaryGetKeysAndValues(cf[0], v82, v83);
          if (v147 < 1)
          {
            v84 = 0;
          }

          else
          {
            v140 = v74;
            desca = v73;
            v85 = 0;
            v86 = v148;
            do
            {
              v153 = keys[v85];
              v150 = v85;
              v87 = CFArrayGetCount(v86[v85]);
              if (v87 >= 1)
              {
                v88 = v87;
                v89 = 0;
                v151 = v87;
                do
                {
                  LODWORD(v160) = 0;
                  v163 = 0;
                  FigCFArrayGetInt32AtIndex();
                  FigCFArrayGetInt32AtIndex();
                  v90 = *(v3 + 4);
                  v91 = v160;
                  v92 = v90 == v160 || v90 == v163;
                  if (v92)
                  {
                    if (v90 == v160)
                    {
                      v93 = v163;
                    }

                    else
                    {
                      v93 = v160;
                    }

                    value = 0;
                    if (CFDictionaryGetValueIfPresent(*&valuePtr[0], v153, &value))
                    {
                      v94 = CFArrayGetCount(value);
                      if (v94 >= 1)
                      {
                        v95 = v94;
                        for (j = 0; j < v95; j += 2)
                        {
                          v161 = 0;
                          FigCFArrayGetInt32AtIndex();
                          FigCFArrayGetInt32AtIndex();
                          v97 = (&v161 + 4);
                          if (v90 != v91)
                          {
                            v97 = &v161;
                          }

                          if (*(v77 + 1) == *v97)
                          {
                            v98 = CFArrayGetCount(*(a1 + 72));
                            if (v98 >= 1)
                            {
                              v99 = v98;
                              v100 = 1;
                              do
                              {
                                v101 = *(CFArrayGetValueAtIndex(*(a1 + 72), v100 - 1) + 1) != v93 && v100 < v99;
                                ++v100;
                              }

                              while (v101);
                            }
                          }
                        }
                      }
                    }

                    v3 = v152;
                    v88 = v151;
                  }

                  v89 += 2;
                }

                while (v89 < v88);
              }

              v85 = v150 + 1;
              v86 = v148;
            }

            while (v150 + 1 != v147);
            v84 = 0;
            v72 = v136;
            Mutable = v138;
            v75 = v142;
            v73 = desca;
            v74 = v140;
          }
        }

        goto LABEL_168;
      }

      v102 = v77[1];
      v103 = *(v102 + 328);
      v3 = v152;
      if (v103 < 1)
      {
LABEL_161:
        v84 = 0;
        v148 = 0;
        keys = 0;
        goto LABEL_168;
      }

      v104 = *(v102 + 344);
      v105 = *(v77[2] + 144);
      if (v104[2] != v105 && v104[1] != v105)
      {
        v106 = v104 + 5;
        v107 = 1;
        do
        {
          v108 = v107;
          if (v103 == v107)
          {
            break;
          }

          if (*v106 == v105)
          {
            break;
          }

          v109 = *(v106 - 1);
          ++v107;
          v106 += 3;
        }

        while (v109 != v105);
        v148 = 0;
        keys = 0;
        v84 = v108 < v103;
        goto LABEL_168;
      }
    }

    v148 = 0;
    keys = 0;
    v84 = 1;
LABEL_168:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (*&valuePtr[0])
    {
      CFRelease(*&valuePtr[0]);
    }

    free(keys);
    free(v148);
    if (!v84)
    {
      if (v73 || (OUTLINED_FUNCTION_613(), (v73 = CFArrayCreateMutable(v110, v111, v112)) != 0))
      {
        CFArrayAppendValue(v73, v77);
      }
    }

LABEL_176:
    ++v74;
  }

  while (v74 != v72);
  if (!v73 || (v154 = CFArrayGetCount(v73), v154 < 1))
  {
    v2 = 0;
LABEL_219:
    v113 = 0;
    goto LABEL_220;
  }

  descb = v73;
  v113 = 0;
  v114 = 0;
  while (2)
  {
    v115 = CFArrayGetValueAtIndex(descb, v114);
    if (v115)
    {
      v116 = v115;
      cf[0] = 0;
      *&valuePtr[0] = 0;
      LODWORD(value) = 0;
      LODWORD(v160) = 0;
      if (v115[1])
      {
        if (v115[2])
        {
          v117 = *(v152 + 32);
          if (v117)
          {
            FigTrackReaderGetFigBaseObject(v117);
            if (*(*(CMBaseObjectGetVTable() + 8) + 48))
            {
              v118 = OUTLINED_FUNCTION_57_8();
              v119(v118, @"AlternateGroupID", 0);
              if (cf[0])
              {
                v120 = CFGetTypeID(cf[0]);
                if (v120 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(cf[0], kCFNumberSInt32Type, &value);
                  CFRelease(cf[0]);
                }
              }
            }

            TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(v116[1], v116[2]);
            v122 = TrackAlternateGroupID;
            if (value)
            {
              if (!TrackAlternateGroupID)
              {
                goto LABEL_209;
              }

              if (CFArrayGetCount(*(a1 + 56)) >= 1)
              {
                OUTLINED_FUNCTION_417_0();
                do
                {
                  v123 = CFArrayGetValueAtIndex(*(a1 + 56), v75);
                  if (v123)
                  {
                    v124 = v123;
                    v125 = v123[16];
                    if (v125)
                    {
                      v126 = *(v125 + 32);
                      if (v126)
                      {
                        v127 = FigTrackReaderGetFigBaseObject(v126);
                        v128 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v128)
                        {
                          v128(v127, @"AlternateGroupID", 0, valuePtr);
                        }

                        if (*&valuePtr[0])
                        {
                          v129 = CFGetTypeID(*&valuePtr[0]);
                          if (v129 == CFNumberGetTypeID())
                          {
                            CFNumberGetValue(*&valuePtr[0], kCFNumberSInt32Type, &v160);
                            CFRelease(*&valuePtr[0]);
                          }
                        }

                        if (v160 == value && MovieInformationGetTrackAlternateGroupID(v124[1], v124[2]) != v122)
                        {
                          goto LABEL_209;
                        }
                      }
                    }
                  }

                  OUTLINED_FUNCTION_377_0();
                }

                while (!v92);
              }
            }

            else if (TrackAlternateGroupID)
            {
              goto LABEL_209;
            }

            if (v113 || (OUTLINED_FUNCTION_613(), (v113 = CFArrayCreateMutable(v130, v131, v132)) != 0))
            {
              CFArrayAppendValue(v113, v116);
            }
          }
        }
      }
    }

LABEL_209:
    if (++v114 != v154)
    {
      continue;
    }

    break;
  }

  if (v113)
  {
    v73 = descb;
    if (CFArrayGetCount(v113))
    {
      v133 = OUTLINED_FUNCTION_266_0();
      v2 = CFArrayGetValueAtIndex(v133, v134);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
    v73 = descb;
  }

LABEL_220:
  FigSimpleMutexUnlock();
  CFRelease(Mutable);
  if (v73)
  {
    CFRelease(v73);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  return v2;
}

uint64_t setTrackIDModified(uint64_t a1, uint64_t a2, int a3)
{
  result = 4294950861;
  if (a1 && a2 && a3)
  {
    Storage = MutableMovieTrackGetStorage(a1, a3);
    if (Storage)
    {
      v6 = Storage;
      result = 0;
      *(v6 + 56) = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

void clearInsertionStateInTracks(uint64_t a1)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_55_14();
    if (!v3 && !MovieInformationLockForRead(*(v1 + 24)))
    {
      TrackCount = MovieInformationGetTrackCount(*(v1 + 24));
      if (TrackCount >= 1)
      {
        v5 = TrackCount;
        for (i = 0; i != v5; ++i)
        {
          TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(v1 + 24), i);
          if (TrackForTrackIndex)
          {
            Storage = MutableMovieTrackGetStorage(a1, *(TrackForTrackIndex + 144));
            if (Storage)
            {
              *(Storage + 124) = 0;
            }
          }
        }
      }

      v9 = *(v1 + 24);

      MovieInformationUnlockForRead(v9);
    }
  }
}

void insertSegmentFromSourceArray(const __CFArray *a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a1)
  {
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_33_18();
      if (!v30)
      {
        OUTLINED_FUNCTION_82_5();
        v44 = *a4;
        v45 = *(a4 + 2);
        transferMovieSamplesFromSourceArray(a2, a1, v32, v33, v34, v31 & ~a5, v35, v46, &v44);
        if (!v42)
        {
          v43 = *(v25 + 56);

          writeActualMdatLengthsToStorages(v25, v43, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
        }
      }
    }
  }
}

void transferMovieSamplesFromSourceArray(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _OWORD *a8, uint64_t a9)
{
  v372 = a8;
  LODWORD(v375) = a6;
  v363 = a5;
  v437 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  v422 = *MEMORY[0x1E6960C70];
  v423 = *(MEMORY[0x1E6960C70] + 8);
  v407 = 0;
  sbuf = 0;
  if (!a1)
  {
    goto LABEL_439;
  }

  if (!a2)
  {
    goto LABEL_439;
  }

  v11 = a3;
  if (!a3)
  {
    goto LABEL_439;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_439;
  }

  v15 = DerivedStorage;
  v353 = a7;
  v409 = *(DerivedStorage + 80);
  v410 = *(DerivedStorage + 96);
  FigSimpleMutexLock();
  v16 = *(v15 + 56);
  if (v16)
  {
    Count = CFArrayGetCount(v16);
    if (Count >= 1)
    {
      v18 = Count;
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v15 + 56), i);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v21 = ValueAtIndex[2];
          if (v21 && MovieTrackGetTrackDurationValue(v21))
          {
            MovieTrackExtendMediaDecodeDurationToDisplayEndTime();
          }

          *(v9 + 120) = 4;
        }
      }

      value = v9;
    }
  }

  FigSimpleMutexUnlock();
  v22 = CFArrayGetCount(a2);
  v23 = MEMORY[0x1E695E480];
  if (v22 >= 1)
  {
    v24 = v22;
    v25 = 0;
    v9 = *MEMORY[0x1E695E480];
    v26 = 1;
    while (1)
    {
      HIDWORD(v365) = v26;
      v27 = CFArrayGetValueAtIndex(a2, v25);
      TrackForInsertionFromSource = getTrackForInsertionFromSource(v15, v27);
      value = TrackForInsertionFromSource;
      if (TrackForInsertionFromSource)
      {
        *(v27 + 38) = TrackForInsertionFromSource[1];
      }

      else
      {
        if (MovieInformationLockForWrite(v11))
        {
          goto LABEL_429;
        }

        v33 = v23;
        v34 = MovieInformationCreateTrack(v11, *v27, 0, 0, &cf);
        MovieInformationUnlockForWrite(v11);
        if (v34 || createMutableMovieTrackObject(v9, v11, cf, a4, &value))
        {
          goto LABEL_429;
        }

        v35 = value;
        if (!value)
        {
          goto LABEL_451;
        }

        *(v27 + 38) = *(value + 1);
        v35[125] = 1;
        FigSimpleMutexLock();
        CFArrayAppendValue(*(v15 + 56), value);
        FigSimpleMutexUnlock();
        syncPropertiesOfNewTrackWithSourceTrackUsingTrackReaderOrOptionsDictionary(a1, *(cf + 36), *(v27 + 4), 0);
        v23 = v33;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      v36 = value;
      v37 = *(value + 16);
      if (v37)
      {
        releaseSource(v9, v37);
        v36 = value;
        *(value + 16) = 0;
      }

      v36[16] = v27;
      *(v36 + 124) = 1;
      if (!v375)
      {
        LOBYTE(__src[0].start.value) = 0;
        v38 = v36[8];
        if (v38 == -1)
        {
          v39 = v36[5];
          v435.source.start.value = -1;
          if (v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v363;
          }

          if (!v40)
          {
            goto LABEL_429;
          }

          getByteStreamForTrackStorageURL(a1, v40, __src, &v435, v29, v30, v31, v32, v341, v343, v345, v347, v349, v350, v351, v353, v355, v358, v361, v363, v365, v366, v370, v372);
          v38 = v435.source.start.value;
          if (v41)
          {
            v42 = 1;
          }

          else
          {
            v42 = v435.source.start.value == -1;
          }

          if (v42)
          {
            FigFileDoesFileExist();
            if (CMByteStreamCreateForFileURL())
            {
              goto LABEL_429;
            }

            source[0].start.value = -1;
            if (createStreamInfoForByteStream(v407, v15, &source[0].start.value))
            {
              goto LABEL_429;
            }

            if (v407)
            {
              CFRelease(v407);
              v407 = 0;
            }

            v38 = source[0].start.value;
            *(value + 8) = source[0].start.value;
            if (v38 == -1)
            {
              goto LABEL_55;
            }
          }

          else
          {
            *(value + 8) = v435.source.start.value;
          }
        }

        v43 = CFArrayGetValueAtIndex(*(v15 + 64), v38);
        if (!v43)
        {
LABEL_451:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_41();
          FigSignalErrorAtGM();
          goto LABEL_429;
        }

        if (!LOBYTE(__src[0].start.value))
        {
          v44 = v43;
          LOBYTE(__src[0].start.value) = v43[8];
          if (!LOBYTE(__src[0].start.value))
          {
            source[0].start.value = 0;
            if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              goto LABEL_429;
            }

            v45 = OUTLINED_FUNCTION_383();
            if (v46(v45))
            {
              goto LABEL_429;
            }

            v23 = MEMORY[0x1E695E480];
            if (!source[0].start.value)
            {
              v47 = *v44;
              v435.source.start.value = 0;
              if (v47)
              {
                if (CMByteStreamAppend())
                {
                  goto LABEL_429;
                }

                v48 = v435.source.start.value;
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_41();
                if (FigSignalErrorAtGM())
                {
                  goto LABEL_429;
                }

                v48 = 0;
              }

              source[0].start.value += v48;
            }

            if (writeMdatHeader(*v44))
            {
              goto LABEL_429;
            }

            *(v44 + 2) = source[0].start.value + 8;
            v44[8] = 1;
          }
        }
      }

LABEL_55:
      v26 = ++v25 < v24;
      if (v24 == v25)
      {
        goto LABEL_60;
      }
    }
  }

  v26 = 0;
LABEL_60:
  FigSimpleMutexLock();
  v49 = *(v15 + 56);
  HIDWORD(v365) = v26;
  if (v49)
  {
    v50 = CFArrayGetCount(v49);
    v51 = v50;
    v371 = *v23;
    if (v50 >= 1)
    {
      v52 = 0;
      v359 = &v429;
      v356 = @"EditCursorService";
      v381 = *(MEMORY[0x1E6960C78] + 12);
      *v377 = *(MEMORY[0x1E6960C78] + 16);
      v367 = v50;
      do
      {
        v405 = 0;
        v406 = 0;
        v53 = CFArrayGetValueAtIndex(*(v15 + 56), v52);
        value = v53;
        if (v53)
        {
          v54 = v53[16];
          if (v54)
          {
            v55 = v372[1];
            *&v404.start.value = *v372;
            *&v404.start.epoch = v55;
            *&v404.duration.timescale = v372[2];
            v429 = 0;
            v428 = 0;
            v420 = 0;
            v419 = 0;
            v56 = *(v54 + 32);
            if (v56)
            {
              v57 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v57)
              {
                v58 = v57(v56);
              }

              else
              {
                v58 = 0;
              }

              if (v58 <= 1)
              {
                v59 = 1;
              }

              else
              {
                v59 = v58;
              }

              OUTLINED_FUNCTION_50_9();
              v60 = OUTLINED_FUNCTION_200_1();
              *v23 = OUTLINED_FUNCTION_63_9(v60);
              *(v23 + 16) = v59;
              FigBaseObject = FigTrackReaderGetFigBaseObject(*(v54 + 32));
              v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v62)
              {
                v62(FigBaseObject, @"SecondaryEditCursorService", v371, &v428);
                v63 = v428 != 0;
                if (v428)
                {
                  v64 = &v429;
                }

                else
                {
                  v64 = &v428;
                }

                if (v428)
                {
                  v65 = 2;
                }

                else
                {
                  v65 = 1;
                }
              }

              else
              {
                v63 = 0;
                v64 = &v428;
                v65 = 1;
              }

              v66 = FigTrackReaderGetFigBaseObject(*(v54 + 32));
              v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v67)
              {
                v67(v66, @"EditCursorService", v371, v64);
              }

              if (*v64)
              {
                v68 = v65;
              }

              else
              {
                v68 = v63;
              }

              if (v68)
              {
                v69 = v428;
                v70 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v70)
                {
                  *&v435.source.start.value = *MEMORY[0x1E6960C80];
                  v435.source.start.epoch = *(MEMORY[0x1E6960C80] + 16);
                  if (!v70(v69, &v435, &v420))
                  {
                    v71.n128_f64[0] = OUTLINED_FUNCTION_8_47();
                    for (j = *(*(OUTLINED_FUNCTION_61_12(v71) + 16) + 24); j; j = *(*(OUTLINED_FUNCTION_61_12(v88) + 16) + 24))
                    {
                      if (j(v69, &v435))
                      {
                        break;
                      }

                      memset(&lhs, 0, sizeof(lhs));
                      fromRange[0] = v435.target;
                      toRange[0] = v404;
                      v73 = OUTLINED_FUNCTION_15_35();
                      CMTimeRangeGetIntersection(v75, v73, v74);
                      if ((lhs.start.flags & 1) != 0 && (lhs.duration.flags & 1) != 0 && !lhs.duration.epoch && (lhs.duration.value & 0x8000000000000000) == 0)
                      {
                        OUTLINED_FUNCTION_52_14();
                        *&toRange[0].start.value = *MEMORY[0x1E6960CC0];
                        toRange[0].start.epoch = *(MEMORY[0x1E6960CC0] + 16);
                        v76 = OUTLINED_FUNCTION_15_35();
                        if (!CMTimeCompare(v76, v77))
                        {
                          goto LABEL_456;
                        }
                      }

                      memset(&v417, 0, sizeof(v417));
                      *&dur[0].start.value = *&lhs.start.value;
                      OUTLINED_FUNCTION_19_30(lhs.start.epoch);
                      CMTimeMapTimeFromRangeToRange(&v417, &dur[0].start, fromRange, toRange);
                      memset(&v416, 0, sizeof(v416));
                      *&dur[0].start.value = *&lhs.duration.value;
                      OUTLINED_FUNCTION_19_30(lhs.duration.epoch);
                      CMTimeMapDurationFromRangeToRange(&v416, &dur[0].start, fromRange, toRange);
                      memset(&v415, 0, sizeof(v415));
                      fromRange[0].start = v417;
                      toRange[0].start = v416;
                      v78 = OUTLINED_FUNCTION_15_35();
                      CMTimeRangeMake(v80, v78, v79);
                      memset(__src, 0, sizeof(__src));
                      fromRange[0] = v415;
                      toRange[0] = lhs;
                      v81 = OUTLINED_FUNCTION_15_35();
                      CMTimeMappingMake(v83, v81, v82);
                      if (v68 == 1)
                      {
                        memcpy(fromRange, __src, sizeof(fromRange));
                        v84 = OUTLINED_FUNCTION_68_9();
                        appendToTimeMappingArray(v84, v85);
                      }

                      else
                      {
                        v89 = v429;
                        toRange[0].start = v417;
                        v90 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                        if (!v90)
                        {
                          break;
                        }

                        *&fromRange[0].start.value = *&toRange[0].start.value;
                        fromRange[0].start.epoch = toRange[0].start.epoch;
                        v91 = v90(v89, fromRange, &v419);
                        for (k = -12521; v91 != k; k = -12520)
                        {
                          if (v91)
                          {
                            goto LABEL_122;
                          }

                          v93 = v419;
                          v94 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                          if (!v94 || v94(v93, source))
                          {
                            goto LABEL_122;
                          }

                          toRange[0] = source[1];
                          dur[0] = v415;
                          CMTimeRangeGetIntersection(fromRange, toRange, dur);
                          lhs = fromRange[0];
                          if ((fromRange[0].start.flags & 1) == 0 || (lhs.duration.flags & 1) == 0 || lhs.duration.epoch || lhs.duration.value < 0 || (OUTLINED_FUNCTION_52_14(), *&toRange[0].start.value = *MEMORY[0x1E6960CC0], toRange[0].start.epoch = *(MEMORY[0x1E6960CC0] + 16), v95 = OUTLINED_FUNCTION_15_35(), CMTimeCompare(v95, v96)))
                          {
                            memcpy(toRange, &v435, sizeof(toRange));
                            memcpy(dur, source, sizeof(dur));
                            memset(&v421, 0, sizeof(v421));
                            memset(&v436, 0, sizeof(v436));
                            memcpy(fromRange, source, sizeof(fromRange));
                            *&time1.start.value = *&source[1].start.value;
                            time1.start.epoch = source[1].start.epoch;
                            *&time2.start.value = *&v435.source.start.value;
                            time2.start.epoch = v435.source.start.epoch;
                            if (CMTimeCompare(&time1.start, &time2.start) < 0)
                            {
                              *&fromRange[1].start.value = *&toRange[0].start.value;
                              fromRange[1].start.epoch = toRange[0].start.epoch;
                              start = toRange[0].start;
                              *&time1.start.value = *&dur[1].start.value;
                              *&time1.start.epoch = *&dur[1].start.epoch;
                              OUTLINED_FUNCTION_45_13(*&dur[1].duration.timescale);
                              CMTimeMapTimeFromRangeToRange(&fromRange[0].start, &start, &time1, &time2);
                              *&time1.start.value = *&fromRange[1].start.value;
                              time1.start.epoch = fromRange[1].start.epoch;
                              *&start.value = *&dur[1].start.value;
                              OUTLINED_FUNCTION_94_4(dur[1].start.epoch);
                              *&start.value = *&dur[1].duration.value;
                              OUTLINED_FUNCTION_95_3(dur[1].duration.epoch);
                              OUTLINED_FUNCTION_84_3();
                              *&time1.start.value = *&fromRange[0].start.value;
                              time1.start.epoch = fromRange[0].start.epoch;
                              *&start.value = *&dur[0].start.value;
                              OUTLINED_FUNCTION_94_4(dur[0].start.epoch);
                              *&start.value = *&dur[0].duration.value;
                              OUTLINED_FUNCTION_95_3(dur[0].duration.epoch);
                              OUTLINED_FUNCTION_83_5();
                            }

                            time1 = fromRange[1];
                            CMTimeRangeGetEnd(&v421, &time1);
                            OUTLINED_FUNCTION_12_41();
                            CMTimeRangeGetEnd(&v436, &time1);
                            OUTLINED_FUNCTION_35_13();
                            if (CMTimeCompare(&time1.start, &time2.start) >= 1)
                            {
                              memset(&start, 0, sizeof(start));
                              OUTLINED_FUNCTION_35_13();
                              CMTimeSubtract(&start, &time1.start, &time2.start);
                              memset(&duration, 0, sizeof(duration));
                              OUTLINED_FUNCTION_78_5();
                              *&time1.start.value = *&dur[1].start.value;
                              *&time1.start.epoch = *&dur[1].start.epoch;
                              OUTLINED_FUNCTION_45_13(*&dur[1].duration.timescale);
                              CMTimeMapDurationFromRangeToRange(&duration, &rhs, &time1, &time2);
                              time2.start = fromRange[1].duration;
                              OUTLINED_FUNCTION_78_5();
                              CMTimeSubtract(&time1.start, &time2.start, &rhs);
                              OUTLINED_FUNCTION_84_3();
                              time2.start = fromRange[0].duration;
                              rhs = duration;
                              CMTimeSubtract(&time1.start, &time2.start, &rhs);
                              OUTLINED_FUNCTION_83_5();
                            }

                            duration = fromRange[1].start;
                            OUTLINED_FUNCTION_12_41();
                            OUTLINED_FUNCTION_29_19();
                            CMTimeMapTimeFromRangeToRange(v100, v97, v98, v99);
                            fromRange[1].start = start;
                            duration = fromRange[1].duration;
                            OUTLINED_FUNCTION_12_41();
                            OUTLINED_FUNCTION_29_19();
                            CMTimeMapDurationFromRangeToRange(v104, v101, v102, v103);
                            fromRange[1].duration = start;
                            memcpy(__src, fromRange, sizeof(__src));
                            memcpy(fromRange, __src, sizeof(fromRange));
                            v105 = OUTLINED_FUNCTION_68_9();
                            appendToTimeMappingArray(v105, v106);
                          }

                          if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                          {
                            goto LABEL_122;
                          }

                          v107 = OUTLINED_FUNCTION_409();
                          v91 = v108(v107);
                        }
                      }

LABEL_456:
                      v69 = v420;
                      if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                      {
                        break;
                      }

                      v86 = OUTLINED_FUNCTION_409();
                      if (v87(v86))
                      {
                        break;
                      }

                      if (v419)
                      {
                        CFRelease(v419);
                        v419 = 0;
                      }

                      v88.n128_f64[0] = OUTLINED_FUNCTION_8_47();
                    }
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_47();
                source[0] = v404;
                __src[0] = v404;
                CMTimeMappingMake(&v435, source, __src);
                memcpy(source, &v435, sizeof(source));
                appendToTimeMappingArray(v23, source);
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_41();
              FigSignalErrorAtGM();
              v23 = 0;
              v68 = 0;
            }

LABEL_122:
            if (v420)
            {
              CFRelease(v420);
            }

            if (v419)
            {
              CFRelease(v419);
            }

            if (v68 >= 1)
            {
              v109 = &v428;
              do
              {
                if (*v109)
                {
                  CFRelease(*v109);
                  *v109 = 0;
                }

                ++v109;
                --v68;
              }

              while (v68);
            }

            *(v54 + 64) = v23;
            if (v23)
            {
              v23 = *(v23 + 8);
              if (v23)
              {
                v110 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
                *v110 = OUTLINED_FUNCTION_63_9(v23);
                v110[2] = v23;
                v111 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
                *v111 = OUTLINED_FUNCTION_64_10(v23);
                v111[2] = v23;
                if (v23 < 1)
                {
                  *(v54 + 72) = v110;
                  *(v54 + 80) = v111;
                }

                else
                {
                  v386 = v111;
                  v391 = v110;
                  for (m = 0; m != v23; ++m)
                  {
                    duration.value = 0;
                    rhs.value = 0;
                    start.value = *MEMORY[0x1E6960C78];
                    start.timescale = *(MEMORY[0x1E6960C78] + 8);
                    *&time1.start.value = *(MEMORY[0x1E6960C78] + 24);
                    time1.start.epoch = *(MEMORY[0x1E6960C78] + 40);
                    v113 = *(MEMORY[0x1E6960C78] + 64);
                    *&source[0].start.value = *(MEMORY[0x1E6960C78] + 48);
                    *&source[0].start.epoch = v113;
                    *&source[0].duration.timescale = *(MEMORY[0x1E6960C78] + 80);
                    *&time2.start.value = *MEMORY[0x1E6960C70];
                    v114 = *(MEMORY[0x1E6960C70] + 16);
                    time2.start.epoch = v114;
                    *&lhs.start.value = *&time2.start.value;
                    lhs.start.epoch = v114;
                    *&v415.start.value = *&time2.start.value;
                    v415.start.epoch = v114;
                    *&v404.start.value = *MEMORY[0x1E6960C80];
                    v404.start.epoch = *(MEMORY[0x1E6960C80] + 16);
                    *keys = *&time2.start.value;
                    *&v421.value = *&time2.start.value;
                    v421.epoch = v114;
                    v115 = *(MEMORY[0x1E6960C98] + 16);
                    *&__src[0].start.value = *MEMORY[0x1E6960C98];
                    *&__src[0].start.epoch = v115;
                    *&__src[0].duration.timescale = *(MEMORY[0x1E6960C98] + 32);
                    OUTLINED_FUNCTION_48_14();
                    v121 = *(v54 + 64);
                    if (v121)
                    {
                      v122 = *v121 + 96 * m;
                      fromRange[0].start.value = *v122;
                      fromRange[0].start.timescale = *(v122 + 8);
                      v123 = *(v122 + 12);
                      v124 = *(v122 + 16);
                      *&v435.source.start.value = *(v122 + 24);
                      v435.source.start.epoch = *(v122 + 40);
                      v125 = (v122 + 48);
                    }

                    else
                    {
                      fromRange[0].start.value = v117;
                      fromRange[0].start.timescale = v118;
                      *&v435.source.start.value = v120;
                      v125 = v119 + 1;
                      v123 = v381;
                      v124 = *v377;
                      v435.source.start.epoch = v116;
                    }

                    source[0] = *v125;
                    start.value = fromRange[0].start.value;
                    start.timescale = fromRange[0].start.timescale;
                    *&time1.start.value = *&v435.source.start.value;
                    time1.start.epoch = v435.source.start.epoch;
                    epoch = v435.source.start.epoch;
                    v435.source.start.value = fromRange[0].start.value;
                    v435.source.start.timescale = fromRange[0].start.timescale;
                    v435.source.start.flags = v123;
                    v435.source.start.epoch = v124;
                    *&v435.source.duration.value = *&time1.start.value;
                    v435.source.duration.epoch = epoch;
                    CMTimeRangeGetEnd(&time2.start, &v435.source);
                    if (v123)
                    {
                      v130 = *(v54 + 32);
                      v131 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                      if (v131)
                      {
                        if (!v131(v130, &duration))
                        {
                          v132 = duration.value;
                          if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                          {
                            v435.source.start.value = start.value;
                            v435.source.start.timescale = start.timescale;
                            v435.source.start.flags = v123;
                            v435.source.start.epoch = v124;
                            v133 = OUTLINED_FUNCTION_25_22();
                            if (!v134(v133))
                            {
                              while (1)
                              {
                                OUTLINED_FUNCTION_48_14();
                                *&v435.source.start.value = *keys;
                                v435.source.start.epoch = v114;
                                v135 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 40);
                                if (!v135 || v135(v132, &v435))
                                {
                                  break;
                                }

                                OUTLINED_FUNCTION_70_7();
                                OUTLINED_FUNCTION_30_17();
                                v136 = OUTLINED_FUNCTION_15_35();
                                CMTimeMinimum(v138, v136, v137);
                                if (*(*(OUTLINED_FUNCTION_51_14() + 16) + 64))
                                {
                                  v139 = OUTLINED_FUNCTION_25_22();
                                  if (!v140(v139) && !LOBYTE(v416.value))
                                  {
                                    v141 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 168);
                                    if (v141)
                                    {
                                      if (!v141(v132, -1, &v417) && v417.value == -1)
                                      {
                                        continue;
                                      }
                                    }
                                  }
                                }

                                v143 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 48);
                                if (v143 && !v143(v132, &v415))
                                {
                                  if (rhs.value)
                                  {
                                    CFRelease(rhs.value);
                                    rhs.value = 0;
                                  }

                                  v144 = duration.value;
                                  OUTLINED_FUNCTION_67_10();
                                  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                                  {
                                    *&v435.source.start.value = *&fromRange[0].start.value;
                                    v435.source.start.epoch = fromRange[0].start.epoch;
                                    v145 = OUTLINED_FUNCTION_25_22();
                                    if (!v146(v145))
                                    {
                                      v147 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 40);
                                      if (v147)
                                      {
                                        if (!v147(v144, &v421))
                                        {
                                          v435.source.start = v421;
                                          OUTLINED_FUNCTION_67_10();
                                          if (CMTimeCompare(&v435.source.start, &fromRange[0].start) || (v155 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 176)) != 0 && !v155(v144, -1, 0))
                                          {
                                            while (1)
                                            {
                                              *&v436.value = *keys;
                                              v436.epoch = v114;
                                              OUTLINED_FUNCTION_48_14();
                                              v148 = rhs.value;
                                              *&v435.source.start.value = v149;
                                              v435.source.start.epoch = v114;
                                              *&fromRange[0].start.value = v149;
                                              fromRange[0].start.epoch = v114;
                                              v150 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                                              if (!v150)
                                              {
                                                break;
                                              }

                                              if (v150(v148, &v435))
                                              {
                                                break;
                                              }

                                              v151 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                                              if (!v151 || v151(v148, fromRange))
                                              {
                                                break;
                                              }

                                              OUTLINED_FUNCTION_30_17();
                                              *&dur[0].start.value = *&fromRange[0].start.value;
                                              dur[0].start.epoch = fromRange[0].start.epoch;
                                              CMTimeAdd(&v436, &toRange[0].start, &dur[0].start);
                                              *&v435.source.start.value = *&v404.start.value;
                                              v435.source.start.epoch = v404.start.epoch;
                                              fromRange[0].start = v436;
                                              CMTimeMaximum(&v404.start, &v435.source.start, &fromRange[0].start);
                                              if (*(*(OUTLINED_FUNCTION_51_14() + 16) + 64))
                                              {
                                                v152 = OUTLINED_FUNCTION_25_22();
                                                if (!v153(v152) && !LOBYTE(v416.value))
                                                {
                                                  v154 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 176);
                                                  if (v154)
                                                  {
                                                    if (!v154(v148, -1, &v417) && v417.value == -1)
                                                    {
                                                      continue;
                                                    }
                                                  }
                                                }
                                              }

                                              goto LABEL_139;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                break;
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_139:
                      OUTLINED_FUNCTION_70_7();
                      *&toRange[0].start.value = *&time2.start.value;
                      toRange[0].start.epoch = time2.start.epoch;
                      v127 = OUTLINED_FUNCTION_15_35();
                      CMTimeRangeFromTimeToTime(v129, v127, v128);
                      start.timescale = v435.source.start.timescale;
                      start.value = v435.source.start.value;
                      time1.start = v435.source.duration;
                      v435.target = source[0];
                      appendToTimeMappingArray(v391, &v435);
                      *&v435.source.start.value = *&v415.start.value;
                      v435.source.start.epoch = v415.start.epoch;
                      *&fromRange[0].start.value = *&v404.start.value;
                      fromRange[0].start.epoch = v404.start.epoch;
                      CMTimeRangeFromTimeToTime(__src, &v435.source.start, &fromRange[0].start);
                      v435.source = __src[0];
                      appendToTimeRangeArray(v386, &v435);
                    }

                    if (duration.value)
                    {
                      CFRelease(duration.value);
                    }

                    if (rhs.value)
                    {
                      CFRelease(rhs.value);
                    }
                  }

                  v111 = v386;
                  v110 = v391;
                  *(v54 + 72) = v391;
                  *(v54 + 80) = v386;
                  v51 = v367;
                }

                if (v110[1] && v111[1])
                {
                  v156 = *(v54 + 64);
                  if (v156)
                  {
                    v157 = *(v156 + 8);
                  }

                  else
                  {
                    v157 = 0;
                  }

                  if (v157 <= 1)
                  {
                    v158 = 1;
                  }

                  else
                  {
                    v158 = v157;
                  }

                  OUTLINED_FUNCTION_50_9();
                  v159 = OUTLINED_FUNCTION_200_1();
                  *v23 = OUTLINED_FUNCTION_64_10(v159);
                  *(v23 + 16) = v158;
                  *(v54 + 88) = v23;
                  v160 = 0uLL;
                  v161 = MEMORY[0x1E6960C88];
                  if (v157 >= 1)
                  {
                    do
                    {
                      *&v435.source.start.epoch = v160;
                      *&v435.source.duration.timescale = v160;
                      *&v435.source.start.value = v160;
                      *&source[0].start.value = *v161;
                      source[0].start.epoch = *(v161 + 16);
                      *&__src[0].start.value = *&source[0].start.value;
                      __src[0].start.epoch = source[0].start.epoch;
                      CMTimeRangeMake(&v435.source, &source[0].start, &__src[0].start);
                      v162 = *(v54 + 88);
                      source[0] = v435.source;
                      appendToTimeRangeArray(v162, source);
                      v160 = 0uLL;
                      --v157;
                    }

                    while (v157);
                  }

                  v163 = *(v54 + 32);
                  v164 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                  if (v164 && !v164(v163, &v406))
                  {
                    v165 = v406;
                    v166 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                    if (!v166 || v166(v165, &v405))
                    {
                      v167 = *(v54 + 72);
                      v401 = *MEMORY[0x1E6960C70];
                      v402 = *(MEMORY[0x1E6960C70] + 16);
                      if (v167 && v167[1] > 0)
                      {
                        v168 = *v167;
                        v401 = *v168;
                        v402 = *(v168 + 2);
                      }

                      else
                      {
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_41();
                        FigSignalErrorAtGM();
                      }

                      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                      {
                        *&v435.source.start.value = v401;
                        v435.source.start.epoch = v402;
                        OUTLINED_FUNCTION_197();
                        if (!v169())
                        {
                          do
                          {
                            v435.source.start.value = 0;
                            v172 = v405;
                            v173 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                          }

                          while (v173 && !v173(v172, -1, &v435) && v435.source.start.value == -1);
                        }
                      }
                    }

                    if (v406)
                    {
                      CFRelease(v406);
                    }

                    *(v54 + 48) = v405;
                    MovieTrackGetMediaDuration(*(value + 2), &v435);
                    OUTLINED_FUNCTION_75_7();
                    if (v170)
                    {
                      v174 = v435.source.start.epoch;
                      *(v54 + 112) = v422;
                      *(v54 + 120) = v423;
                      *(v54 + 124) = v170;
                      *(v54 + 128) = v174;
                    }

                    else
                    {
                      v171 = MEMORY[0x1E6960CC0];
                      *(v54 + 112) = *MEMORY[0x1E6960CC0];
                      *(v54 + 128) = *(v171 + 16);
                    }
                  }
                }
              }
            }
          }
        }

        ++v52;
      }

      while (v52 != v51);
      v175 = 1;
      v176 = 0;
      v362 = *MEMORY[0x1E695FFA0];
      *keysa = *MEMORY[0x1E6960C70];
      v177 = *(MEMORY[0x1E6960C70] + 16);
      v392 = *MEMORY[0x1E6960CC0];
      v178 = *(MEMORY[0x1E6960CC0] + 16);
      LODWORD(v9) = 1;
      v368 = v51;
      LODWORD(v386) = 1;
      v382 = v177;
      while (1)
      {
        *&__src[0].start.value = *keysa;
        __src[0].start.epoch = v177;
        *&fromRange[0].start.value = v392;
        fromRange[0].start.epoch = v178;
        value = CFArrayGetValueAtIndex(*(v15 + 56), v176);
        v11 = *(value + 16);
        if (v11)
        {
          CMBaseObject = *(v11 + 48);
          if (CMBaseObject)
          {
            break;
          }
        }

LABEL_295:
        if (++v176 == v51)
        {
          v176 = 0;
          v42 = v9 == 0;
          v234 = v175 ^ 1;
          v9 = 1;
          if (!v42)
          {
            v234 = 1;
          }

          if (v234)
          {
            goto LABEL_299;
          }
        }
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v180 = OUTLINED_FUNCTION_68_9();
        v181(v180);
      }

      *&source[0].start.value = *(v11 + 112);
      source[0].start.epoch = *(v11 + 128);
      *&toRange[0].start.value = v409;
      toRange[0].start.epoch = v410;
      CMTimeAdd(&v435.source.start, &source[0].start, &toRange[0].start);
      *(v11 + 112) = *&v435.source.start.value;
      *(v11 + 128) = v435.source.start.epoch;
      v182 = value;
      v183 = v363;
      if (*(value + 5))
      {
        v183 = *(value + 5);
      }

      if (v375 || v183)
      {
        v378 = v183;
        if (v375 && !*(v11 + 16))
        {
          v435.source.start.value = 0;
          source[0].start.value = 0;
          if (*(*(OUTLINED_FUNCTION_96_3() + 16) + 144))
          {
            OUTLINED_FUNCTION_613();
            v184();
          }

          v185 = source[0].start.value;
          v186 = v435.source.start.value;
          if (!source[0].start.value && v435.source.start.value)
          {
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v187 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v187)
            {
              v187(CMBaseObject, v362, v371, source);
            }

            v186 = v435.source.start.value;
            v185 = source[0].start.value;
          }

          *(v11 + 16) = v185;
          if (v186)
          {
            CFRelease(v186);
          }

          v182 = value;
        }

        v188 = v182[8];
        if (v188 == -1 || (v189 = CFArrayGetValueAtIndex(*(v15 + 64), v188)) == 0)
        {
          v373 = 0;
        }

        else
        {
          v373 = *v189;
        }

        while (1)
        {
          if (*(v11 + 145))
          {
            goto LABEL_295;
          }

          time1.start.value = 0;
          MovieTrackGetMediaDuration(*(value + 2), &v435);
          OUTLINED_FUNCTION_75_7();
          if (v190)
          {
            v191 = v435.source.start.epoch;
            *&v435.source.start.value = *(v11 + 112);
            v435.source.start.epoch = *(v11 + 128);
            source[0].start.value = v422;
            source[0].start.timescale = v423;
            source[0].start.flags = v190;
            source[0].start.epoch = v191;
            if (CMTimeCompare(&v435.source.start, &source[0].start) < 1)
            {
              goto LABEL_294;
            }
          }

          v192 = *(*(OUTLINED_FUNCTION_96_3() + 16) + 56);
          if (!v192 || v192(CMBaseObject, __src))
          {
            goto LABEL_429;
          }

          CMBaseObject = *(v11 + 80);
          dur[0].start.value = fromRange[0].start.value;
          dur[0].start.timescale = fromRange[0].start.timescale;
          if (!CMBaseObject)
          {
            break;
          }

          flags = fromRange[0].start.flags;
          if ((fromRange[0].start.flags & 1) == 0)
          {
            CMBaseObject = 5358;
            goto LABEL_290;
          }

          v194 = *(CMBaseObject + 8);
          if (!v194)
          {
            CMBaseObject = 5361;
            goto LABEL_290;
          }

          if (v194 < 1)
          {
            goto LABEL_257;
          }

          v195 = 0;
          v196 = 0;
          v197 = fromRange[0].start.epoch;
          while (1)
          {
            v198 = *CMBaseObject + v195;
            toRange[0].start.value = *v198;
            toRange[0].start.timescale = *(v198 + 8);
            v199 = *(v198 + 12);
            if (v199)
            {
              v200 = *(v198 + 36);
              if ((v200 & 1) != 0 && !*(v198 + 40))
              {
                v201 = *(v198 + 24);
                if ((v201 & 0x8000000000000000) == 0)
                {
                  v202 = *(v198 + 16);
                  v203 = *(v198 + 32);
                  v435.source.start.value = toRange[0].start.value;
                  v435.source.start.timescale = toRange[0].start.timescale;
                  v435.source.start.flags = v199;
                  v435.source.start.epoch = v202;
                  v435.source.duration.value = v201;
                  v435.source.duration.timescale = v203;
                  v435.source.duration.flags = v200;
                  v435.source.duration.epoch = 0;
                  source[0].start.value = dur[0].start.value;
                  source[0].start.timescale = dur[0].start.timescale;
                  source[0].start.flags = flags;
                  source[0].start.epoch = v197;
                  if (CMTimeRangeContainsTime(&v435.source, &source[0].start))
                  {
                    break;
                  }
                }
              }
            }

            ++v196;
            v195 += 48;
            if (v194 == v196)
            {
              goto LABEL_257;
            }
          }

          OUTLINED_FUNCTION_63();
          if (v42)
          {
            if (__src[0].start.timescale / __src[0].start.value / 4 <= 1)
            {
              CMBaseObject = 1;
            }

            else
            {
              CMBaseObject = __src[0].start.timescale / __src[0].start.value / 4;
            }
          }

          else
          {
            CMBaseObject = 1;
          }

          v51 = v368;
          v209 = *(v11 + 40);
          v210 = *(v11 + 48);
          v211 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v211)
          {
            goto LABEL_429;
          }

          v342 = 0;
          v344 = 0;
          v346 = 0;
          p_sbuf = &sbuf;
          v212 = v211(v209, v210, CMBaseObject, CMBaseObject, 1, 0, 2, 0);
          if (v212 == -12840)
          {
            v175 = v386;
            v177 = v382;
            if (sbuf)
            {
              CFRelease(sbuf);
              sbuf = 0;
            }

LABEL_293:
            *(v11 + 145) = 1;
LABEL_294:
            LODWORD(v9) = 0;
            goto LABEL_295;
          }

          v175 = v386;
          v177 = v382;
          if (v212)
          {
            goto LABEL_429;
          }

          v213 = value;
          v214 = v378;
          if (!*(*(value + 16) + 146) || !*(value + 126))
          {
            MovieInformationLockForWrite(*(v15 + 24));
            v215 = value;
            if (*(*(value + 16) + 146))
            {
              CMBaseObject = 0;
            }

            else
            {
              CMBaseObject = setMediaTimeScaleIfNeeded(value, sbuf);
              v215 = value;
              *(*(value + 16) + 146) = 1;
            }

            if (!*(v215 + 126))
            {
              v216 = *v215;
              if (*v215 == 1986618469)
              {
                v225 = setVideoTrackDimensionsIfNeeded(v215[2], v353, sbuf);
                OUTLINED_FUNCTION_69_5(v225, v226, v227, v228, v229, v230, v231, v232, 0, 0, 0, &sbuf, v349, v350, v351, v353, v356, v359, v362, v363, v365, v368, v371, v373, v375, v378, v382, v386, v392, *(&v392 + 1), keysa[0], keysa[1], v401, *(&v401 + 1), v402, v403, v404.start.value, *&v404.start.timescale, v404.start.epoch, v404.duration.value, *&v404.duration.timescale, v404.duration.epoch, v405, v406, v407, sbuf, v409, *(&v409 + 1), v410, v411, value);
                v216 = *v233;
              }

              if (v216 == 1668047728)
              {
                v217 = setClosedCaptionTrackDimensionsIfNeeded(*(v15 + 24));
                OUTLINED_FUNCTION_69_5(v217, v218, v219, v220, v221, v222, v223, v224, v342, v344, v346, p_sbuf, v349, v350, v351, v353, v356, v359, v362, v363, v365, v368, v371, v373, v375, v378, v382, v386, v392, *(&v392 + 1), keysa[0], keysa[1], v401, *(&v401 + 1), v402, v403, v404.start.value, *&v404.start.timescale, v404.start.epoch, v404.duration.value, *&v404.duration.timescale, v404.duration.epoch, v405, v406, v407, sbuf, v409, *(&v409 + 1), v410, v411, value);
              }
            }

            MovieInformationUnlockForWrite(*(v15 + 24));
            if (CMBaseObject)
            {
              goto LABEL_429;
            }

            v213 = value;
            v214 = v378;
          }

          if (addSampleBufferToTrack(v213, v214, v373, v196, sbuf))
          {
            goto LABEL_429;
          }

          NumSamples = CMSampleBufferGetNumSamples(sbuf);
          if (sbuf)
          {
            CFRelease(sbuf);
            sbuf = 0;
          }

LABEL_258:
          if (!*(*(OUTLINED_FUNCTION_96_3() + 16) + 168))
          {
            goto LABEL_429;
          }

          v205 = OUTLINED_FUNCTION_797();
          if (v206(v205))
          {
            goto LABEL_429;
          }

          if (!*(*(OUTLINED_FUNCTION_96_3() + 16) + 48))
          {
            goto LABEL_429;
          }

          v207 = OUTLINED_FUNCTION_68_9();
          if (v208(v207))
          {
            goto LABEL_429;
          }

          if (time1.start.value != NumSamples)
          {
            goto LABEL_293;
          }

          LODWORD(v9) = 0;
        }

        CMBaseObject = 5357;
LABEL_290:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_41();
        FigSignalErrorAtGM();
LABEL_257:
        NumSamples = 1;
        v51 = v368;
        v175 = v386;
        v177 = v382;
        goto LABEL_258;
      }

      goto LABEL_429;
    }
  }

  else
  {
    v371 = *v23;
  }

LABEL_299:
  v235 = *(v15 + 56);
  *&v404.start.value = *a9;
  v404.start.epoch = *(a9 + 16);
  if (v235 && CFArrayGetCount(v235) >= 1)
  {
    OUTLINED_FUNCTION_417_0();
    keysb = 0;
    v369 = *(MEMORY[0x1E6960CC0] + 16);
    v383 = *(MEMORY[0x1E6960C78] + 16);
    v236 = *MEMORY[0x1E6960CC0];
    v237 = *(MEMORY[0x1E6960CC0] + 8);
    v352 = *(MEMORY[0x1E6960CC0] + 12);
    v354 = v237;
    v360 = v238;
    v357 = *MEMORY[0x1E6960CC0];
    while (1)
    {
      v239 = OUTLINED_FUNCTION_618();
      v241 = CFArrayGetValueAtIndex(v239, v240);
      v436.value = v236;
      v436.timescale = v237;
      if (!v241)
      {
        break;
      }

      v242 = v241[16];
      if (v242)
      {
        v243 = v242[8];
        if (v243)
        {
          v244 = v242[9];
          if (v244)
          {
            v245 = *(v243 + 8);
            if (v245)
            {
              v246 = *(v244 + 8);
              if (v246 && v245 == v246)
              {
                v249 = v241[1];
                v248 = v241[2];
                keysb = MovieInformationLockForWrite(v249);
                if (!keysb)
                {
                  v364 = v248;
                  v393 = v249;
                  if (v245 >= 1)
                  {
                    v250 = 0;
                    keysb = 0;
                    v251 = 88;
                    v374 = v369;
                    v376 = v352;
                    v252 = MEMORY[0x1E6960C78];
                    v253 = v383;
                    v254 = v249;
                    while (1)
                    {
                      v255 = v242[8];
                      if (v255)
                      {
                        v256 = (*v255 + v251);
                        *&v421.value = *(v256 - 11);
                        v257 = *(v256 - 9);
                        *&dur[0].start.value = *(v256 - 4);
                        dur[0].start.epoch = *(v256 - 6);
                        duration.value = *(v256 - 5);
                        v258 = v256 - 7;
                        duration.timescale = *(v256 - 8);
                        v259 = v256 - 3;
                        v260 = v256 - 2;
                        v261 = (v256 - 1);
                        v262 = v256 - 1;
                      }

                      else
                      {
                        *&v421.value = *v252;
                        *&dur[0].start.value = *(v252 + 24);
                        v263 = *(v252 + 48);
                        dur[0].start.epoch = *(v252 + 40);
                        duration.value = v263;
                        v256 = (v252 + 88);
                        v262 = (v252 + 84);
                        v261 = (v252 + 80);
                        duration.timescale = *(v252 + 56);
                        v260 = (v252 + 72);
                        v259 = (v252 + 64);
                        v258 = (v252 + 60);
                        v257 = v253;
                      }

                      v264 = *v256;
                      v265 = *v262;
                      v266 = *v261;
                      v267 = *v260;
                      v268 = *v259;
                      v269 = *v258;
                      v270 = v242[9];
                      if (v270)
                      {
                        v271 = (*v270 + v251);
                        *&v435.source.start.value = *(v271 - 11);
                        *&v435.source.start.epoch = *(v271 - 9);
                        *&v435.source.duration.timescale = *(v271 - 7);
                        *(&v435.source.duration.epoch + 4) = *(v271 - 44);
                        v272 = v271 - 7;
                        v273 = v271 - 2;
                        v274 = v271 - 1;
                        if (v269)
                        {
                          goto LABEL_322;
                        }
                      }

                      else
                      {
                        v275 = *(v252 + 16);
                        *&v435.source.start.value = *v252;
                        *&v435.source.start.epoch = v275;
                        *&v435.source.duration.timescale = *(v252 + 32);
                        *(&v435.source.duration.epoch + 4) = *(v252 + 44);
                        v271 = (v252 + 88);
                        v274 = (v252 + 84);
                        v273 = (v252 + 72);
                        v272 = (v252 + 60);
                        if (v269)
                        {
LABEL_322:
                          if ((v265 & 1) != 0 && !v264 && (v267 & 0x8000000000000000) == 0 && (*v272 & 1) != 0 && (*v274 & 1) != 0 && !*v271 && (*v273 & 0x8000000000000000) == 0)
                          {
                            *&time1.start.value = *MEMORY[0x1E6960C70];
                            time1.start.epoch = *(MEMORY[0x1E6960C70] + 16);
                            v276 = *(MEMORY[0x1E6960C98] + 16);
                            *&source[0].start.value = *MEMORY[0x1E6960C98];
                            *&source[0].start.epoch = v276;
                            *&source[0].duration.timescale = *(MEMORY[0x1E6960C98] + 32);
                            rhs.value = *MEMORY[0x1E6960C98];
                            rhs.timescale = *(MEMORY[0x1E6960C98] + 8);
                            *&time2.start.value = *(MEMORY[0x1E6960C98] + 24);
                            time2.start.epoch = *(MEMORY[0x1E6960C98] + 40);
                            *&__src[0].start.value = *&source[0].start.value;
                            *&__src[0].start.epoch = v276;
                            *&__src[0].duration.timescale = *&source[0].duration.timescale;
                            if (v251 == 88)
                            {
                              v436.value = duration.value;
                              v436.timescale = duration.timescale;
                              v376 = v269;
                              v374 = v268;
                            }

                            v387 = v266;
                            if (v257)
                            {
                              start.value = duration.value;
                              start.timescale = duration.timescale;
                            }

                            else
                            {
                              toRange[0].start.value = duration.value;
                              toRange[0].start.timescale = duration.timescale;
                              toRange[0].start.flags = v269;
                              toRange[0].start.epoch = v268;
                              lhs.start.value = v436.value;
                              *&lhs.start.timescale = __PAIR64__(v376, v436.timescale);
                              lhs.start.epoch = v374;
                              CMTimeSubtract(&fromRange[0].start, &toRange[0].start, &lhs.start);
                              v257 = 0;
                              start.value = fromRange[0].start.value;
                              v269 = fromRange[0].start.flags;
                              start.timescale = fromRange[0].start.timescale;
                              v268 = fromRange[0].start.epoch;
                            }

                            *&fromRange[0].start.value = *&v421.value;
                            fromRange[0].start.epoch = v257;
                            OUTLINED_FUNCTION_30_17();
                            v277 = OUTLINED_FUNCTION_15_35();
                            CMTimeSubtract(v279, v277, v278);
                            v280 = v242[11];
                            if (v280)
                            {
                              v281 = (*v280 + v250);
                            }

                            else
                            {
                              v281 = MEMORY[0x1E6960C98];
                            }

                            source[0] = *v281;
                            *&lhs.start.value = *&source[0].start.value;
                            lhs.start.epoch = source[0].start.epoch;
                            *&v415.start.value = *&time1.start.value;
                            v415.start.epoch = time1.start.epoch;
                            CMTimeAdd(&toRange[0].start, &lhs.start, &v415.start);
                            *&lhs.start.value = *&dur[0].start.value;
                            lhs.start.epoch = dur[0].start.epoch;
                            CMTimeRangeMake(fromRange, &toRange[0].start, &lhs.start);
                            rhs.value = fromRange[0].start.value;
                            rhs.timescale = fromRange[0].start.timescale;
                            v379 = fromRange[0].start.epoch;
                            time2.start = fromRange[0].duration;
                            *&toRange[0].start.value = *&v404.start.value;
                            toRange[0].start.epoch = v404.start.epoch;
                            lhs.start.value = start.value;
                            *&lhs.start.timescale = __PAIR64__(v269, start.timescale);
                            v282 = fromRange[0].start.flags;
                            lhs.start.epoch = v268;
                            CMTimeAdd(&fromRange[0].start, &toRange[0].start, &lhs.start);
                            toRange[0].start.value = v267;
                            toRange[0].start.timescale = v387;
                            toRange[0].start.flags = v265;
                            toRange[0].start.epoch = 0;
                            v283 = OUTLINED_FUNCTION_15_35();
                            CMTimeRangeMake(v285, v283, v284);
                            if ((v282 & 0x1D) == 1)
                            {
                              fromRange[0].start.value = rhs.value;
                              fromRange[0].start.timescale = rhs.timescale;
                              fromRange[0].start.flags = v282;
                              fromRange[0].start.epoch = v379;
                              *&toRange[0].start.value = *MEMORY[0x1E6960CC0];
                              toRange[0].start.epoch = v369;
                              v286 = OUTLINED_FUNCTION_15_35();
                              if ((CMTimeCompare(v286, v287) & 0x80000000) == 0)
                              {
                                fromRange[0] = __src[0];
                                toRange[0].start.value = rhs.value;
                                toRange[0].start.timescale = rhs.timescale;
                                toRange[0].start.flags = v282;
                                toRange[0].start.epoch = v379;
                                toRange[0].duration = time2.start;
                                MovieTrackInsertMediaSegment(v393, v364, fromRange, toRange);
                                keysb = v288;
                              }
                            }

                            v252 = MEMORY[0x1E6960C78];
                            v253 = v383;
                            v254 = v393;
                          }
                        }
                      }

                      v250 += 48;
                      v251 += 96;
                      if (!--v245)
                      {
                        goto LABEL_344;
                      }
                    }
                  }

                  keysb = 0;
                  v254 = v249;
LABEL_344:
                  MovieInformationUnlockForWrite(v254);
                  v11 = v360;
                  v236 = v357;
                  v237 = v354;
                }
              }
            }
          }
        }
      }

      if (++v9 == v11)
      {
        goto LABEL_346;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_41();
  keysb = FigSignalErrorAtGM();
LABEL_346:
  if (!keysb)
  {
    v289 = CFArrayGetCount(*(v15 + 56));
    v435.source.start.value = 0;
    if (v289 >= 1)
    {
      v290 = v289;
      v291 = 0;
      keysc = 0;
      v292 = 0;
      *v380 = v289;
      while (1)
      {
        v293 = CFArrayGetValueAtIndex(*(v15 + 56), v291);
        if (v293)
        {
          if (*(v293 + 125))
          {
            v294 = v293[16];
            if (v294)
            {
              if (*(v294 + 24))
              {
                v295 = v435.source.start.value;
                if (v435.source.start.value)
                {
                  goto LABEL_354;
                }

                v305 = FigFormatReaderGetFigBaseObject(*(v294 + 24));
                v306 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v306)
                {
                  v306(v305, @"TrackReferenceDictionary", v371, &v435);
                }

                if (v435.source.start.value)
                {
                  v307 = CFDictionaryGetCount(v435.source.start.value);
                  if (v307)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_380:
        if (++v291 == v290)
        {
          goto LABEL_384;
        }
      }

      v308 = v307;
      v309 = malloc_type_calloc(v307, 8uLL, 0x6004044C4A2DFuLL);
      v292 = malloc_type_calloc(v308, 8uLL, 0x6004044C4A2DFuLL);
      v295 = v435.source.start.value;
      keysc = v309;
      if (v309 && v292)
      {
        CFDictionaryGetKeysAndValues(v435.source.start.value, v309, v292);
        v295 = v435.source.start.value;
      }

LABEL_354:
      v394 = CFDictionaryGetCount(v295);
      if (keysc && v292 && v394 >= 1)
      {
        v384 = v291;
        v388 = v292;
        for (n = 0; n != v394; ++n)
        {
          v297 = keysc[n];
          v298 = CFArrayGetCount(v292[n]);
          if (v298 >= 1)
          {
            v299 = v298;
            for (ii = 0; ii < v299; ii += 2)
            {
              LODWORD(source[0].start.value) = 0;
              LODWORD(__src[0].start.value) = 0;
              FigCFArrayGetInt32AtIndex();
              FigCFArrayGetInt32AtIndex();
              if (*(v294 + 4) == LODWORD(__src[0].start.value))
              {
                v301 = *(v294 + 152);
                if (CFArrayGetCount(*(v15 + 72)) >= 1)
                {
                  OUTLINED_FUNCTION_89_5();
                  while (1)
                  {
                    v302 = CFArrayGetValueAtIndex(*(v15 + 72), v292);
                    if (v302[1] == LODWORD(source[0].start.value))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_71_6();
                    if (v42)
                    {
                      goto LABEL_370;
                    }
                  }

                  v303 = v302[38];
                  if (v303 && v301)
                  {
                    v292 = *(v15 + 24);
                    v304 = convertCFStringToOSType(v297);
                    MovieInformationAddOneTrackReference(v292, v304, v303, v301);
                  }
                }
              }

LABEL_370:
              ;
            }
          }

          v292 = v388;
        }

        v290 = *v380;
        v291 = v384;
      }

      goto LABEL_380;
    }

    v292 = 0;
    keysc = 0;
LABEL_384:
    free(keysc);
    free(v292);
    if (v435.source.start.value)
    {
      CFRelease(v435.source.start.value);
    }

    v310 = CFArrayGetCount(*(v15 + 56));
    v435.source.start.value = 0;
    keysd = v310;
    if (v310 >= 1)
    {
      v311 = 0;
      do
      {
        v312 = CFArrayGetValueAtIndex(*(v15 + 56), v311);
        if (v312)
        {
          v313 = v312;
          if (*(v312 + 125))
          {
            v314 = v312[16];
            if (v314)
            {
              if (*(v314 + 24))
              {
                v315 = v435.source.start.value;
                if (v435.source.start.value)
                {
                  goto LABEL_396;
                }

                v316 = FigFormatReaderGetFigBaseObject(*(v314 + 24));
                v317 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v317)
                {
                  v317(v316, @"AlternateGroupArray", v371, &v435);
                }

                v315 = v435.source.start.value;
                if (v435.source.start.value)
                {
LABEL_396:
                  v318 = CFArrayGetCount(v315);
                  if (v318 >= 1)
                  {
                    v319 = v318;
                    v320 = 0;
                    v389 = v313;
                    v395 = v311;
                    v385 = v318;
                    do
                    {
                      v321 = CFArrayGetValueAtIndex(v435.source.start.value, v320);
                      if (v321)
                      {
                        v322 = CFArrayGetCount(v321);
                        if (v322 >= 1)
                        {
                          v323 = v322;
                          v324 = 0;
                          while (1)
                          {
                            LODWORD(source[0].start.value) = 0;
                            FigCFArrayGetInt32AtIndex();
                            if (*(v314 + 4) == LODWORD(source[0].start.value))
                            {
                              break;
                            }

                            if (v323 == ++v324)
                            {
                              goto LABEL_425;
                            }
                          }

                          v325 = 0;
                          while (1)
                          {
                            v326 = CFArrayGetValueAtIndex(*(v15 + 56), v325);
                            if (v326)
                            {
                              v327 = v326[16];
                              if (v327)
                              {
                                TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(v326[1], v326[2]);
                                if (TrackAlternateGroupID)
                                {
                                  break;
                                }
                              }
                            }

LABEL_412:
                            if (++v325 == keysd)
                            {
                              v330 = v389[1];
                              v331 = v389[2];
                              if (CFArrayGetCount(*(v15 + 56)) < 1)
                              {
                                v335 = 1;
                                v311 = v395;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_89_5();
                                v332 = 0;
                                v311 = v395;
                                do
                                {
                                  v333 = CFArrayGetValueAtIndex(*(v15 + 56), v292);
                                  if (v333)
                                  {
                                    v334 = MovieInformationGetTrackAlternateGroupID(v333[1], v333[2]);
                                    if (v334 > v332)
                                    {
                                      v332 = v334;
                                    }
                                  }

                                  OUTLINED_FUNCTION_71_6();
                                }

                                while (!v42);
                                v335 = v332 + 1;
                              }

                              MovieInformationSetTrackAlternateGroupID(v330, v331, v335);
                              goto LABEL_424;
                            }
                          }

                          v292 = TrackAlternateGroupID;
                          v329 = 0;
                          while (1)
                          {
                            LODWORD(__src[0].start.value) = 0;
                            if (v324 != v329)
                            {
                              FigCFArrayGetInt32AtIndex();
                              if (*(v327 + 4) == LODWORD(__src[0].start.value))
                              {
                                break;
                              }
                            }

                            if (v323 == ++v329)
                            {
                              goto LABEL_412;
                            }
                          }

                          MovieInformationSetTrackAlternateGroupID(v389[1], v389[2], v292);
                          v311 = v395;
LABEL_424:
                          v319 = v385;
                        }
                      }

LABEL_425:
                      ++v320;
                    }

                    while (v320 != v319);
                  }
                }
              }
            }
          }
        }

        ++v311;
      }

      while (v311 != keysd);
      if (v435.source.start.value)
      {
        CFRelease(v435.source.start.value);
      }
    }
  }

LABEL_429:
  v336 = *(v15 + 56);
  if (v336)
  {
    v337 = CFArrayGetCount(v336);
    if (v337 >= 1)
    {
      v338 = v337;
      for (jj = 0; jj != v338; ++jj)
      {
        v340 = CFArrayGetValueAtIndex(*(v15 + 56), jj);
        value = v340;
        if (v340)
        {
          if (*(v340 + 124))
          {
            *(v340 + 16) = 0;
          }

          *(v340 + 125) = 0;
        }
      }
    }
  }

  if ((v365 & 0x100000000) == 0)
  {
    FigSimpleMutexUnlock();
  }

LABEL_439:
  if (v407)
  {
    CFRelease(v407);
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_651();
}