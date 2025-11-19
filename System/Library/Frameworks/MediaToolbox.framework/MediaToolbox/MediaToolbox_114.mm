uint64_t FigSampleBufferProcessorCreateForCaptionConverter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captionConverter_setOutputCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captionConverter_finishPendingProcessing_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captionConverter_finishPendingProcessing_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captionConverter_FromSbufOutputCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void remoteFormatReader_CreateForURLAndConnection(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  if (v22 && (v23 = v20) != 0 && (v24 = v21) != 0)
  {
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFURL() && !FigXPCMessageSetCFDictionary() && !FigSandboxRegisterURLWithProcessAndCopyRegistration())
    {
      v25 = OUTLINED_FUNCTION_73_3();
      if (!CreateRemoteFormatReader(v25, v26))
      {
        OUTLINED_FUNCTION_2_22();
        if (!FigXPCConnectionSendSyncMessageCreatingReply())
        {
          uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
          if (!CommonFormatReaderObjectCompleteObjectSetup(0, uint64, v23))
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            *(DerivedStorage + 48) = 0;
            if (!xpc_dictionary_get_BOOL(0, "AllowsPropertyCaching") || !SetupCommonFormatReaderPropertyCache((DerivedStorage + 24)))
            {
              *v24 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_860();
}

uint64_t FigFormatReaderRemoteWithLoopbackServerCreateForURL(int a1, int a2, int a3, int a4)
{
  v27 = 0;
  v28 = 0;
  cf = 0;
  v22 = 1;
  xdict = CommonFormatReaderObjectDeadConnectionCallback;
  v24 = CommonFormatReaderObjectNotificationFilter;
  *v25 = 0u;
  v26 = 0u;
  v8 = remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient;
  if (remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  started = FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint();
  if (started)
  {
    v13 = started;
    v11 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FormatReader_ServerConnectionDied");
      v12 = FigXPCRemoteClientCreateWithXPCEndpoint();
    }

    else
    {
      OUTLINED_FUNCTION_429();
      v12 = FigSignalErrorAtGM();
    }

    v13 = v12;
  }

  v8 = remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient;
  if (remoteFormatReader_ensureLoopbackConnectionAndCopyRemote_sRemoteClient)
  {
LABEL_7:
    v14 = CFRetain(v8);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (v11)
  {
LABEL_8:
    CFRelease(v11);
  }

LABEL_9:
  FigXPCRelease();
  if (!v13)
  {
    v15 = remoteFormatReaderClient_CopyConnection(v14, 1, &cf);
    v16 = cf;
    if (!v15)
    {
      if (!FigServer_IsServerProcess() || (v15 = FigXPCConnectionSetCustomServerTimeoutPerConnection(), !v15))
      {
        remoteFormatReader_CreateForURLAndConnection(a1, a2, v16, a3, a4, v17, v18, v19, cf, v22, xdict, v24, v25[0], v25[1], v26, *(&v26 + 1), v27, v28, v29, v30);
      }
    }

    v13 = v15;
    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v13;
}

uint64_t FigFormatReaderXPCRemoteRetainCopiedPlaybackProcessFormatReader(uint64_t a1, void *a2)
{
  v23 = 0;
  v24 = 0;
  if (!a1 || !a2)
  {
    v5 = FigSignalErrorAtGM();
    goto LABEL_35;
  }

  v5 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(0, &v23);
  if (v5)
  {
LABEL_35:
    v2 = v5;
    goto LABEL_29;
  }

  v6 = FigXPCRemoteClientRetainCopiedObject();
  v14 = OUTLINED_FUNCTION_22_14(v6, v7, v8, v9, v10, v11, v12, v13, v23, v24);
  if (!v2)
  {
    if (v14)
    {
      FigFormatReaderXPCRemoteGetObjectID(v14, &v28);
      v14 = v24;
LABEL_28:
      v2 = 0;
      *a2 = v14;
      v24 = 0;
      goto LABEL_29;
    }

    v27 = 0;
    v28 = 0;
    cf = 0;
    v26 = 0;
    v15 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(0, &v27);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = remoteFormatReaderClient_CopyConnection(v27, 0, &v26);
    if (v15)
    {
      goto LABEL_17;
    }

    v16 = v26;
    if (FigServer_IsServerProcess())
    {
      v15 = FigXPCConnectionSetCustomServerTimeoutPerConnection();
      if (v15)
      {
        goto LABEL_17;
      }
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v15 = CreateRemoteFormatReader(AllocatorForMedia, &v28);
    if (v15)
    {
      goto LABEL_17;
    }

    v18 = v28;
    v15 = CommonFormatReaderObjectCompleteObjectSetup(v28, a1, v16);
    if (v15)
    {
      goto LABEL_17;
    }

    FigBaseObject = FigFormatReaderGetFigBaseObject(v18);
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(FigBaseObject, @"CanMutate", *MEMORY[0x1E695E480], &cf);
      v20 = cf;
    }

    if (v20 != *MEMORY[0x1E695E4D0] && (DerivedStorage = CMBaseObjectGetDerivedStorage(), v15 = SetupCommonFormatReaderPropertyCache((DerivedStorage + 24)), v15))
    {
LABEL_17:
      v2 = v15;
    }

    else
    {
      v2 = 0;
      v24 = v18;
      v28 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v14 = v24;
    if (!v2)
    {
      goto LABEL_28;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_29:
  if (v23)
  {
    CFRelease(v23);
  }

  return v2;
}

void FigFormatReaderXPCRemoteCreateWithObjectID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void (*cf)(uint64_t, __CFString *, void, CFTypeRef *), CFTypeRef a10, CFTypeRef a11, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_43_9();
  v27 = (v26 | FigRemote_ShouldConnectToMediaparserdForFileParsing()) != 0;
  if (v20 && v24)
  {
    if (!remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v27, &a11) && !remoteFormatReaderClient_CopyConnection(a11, 0, &a10))
    {
      v28 = a10;
      if (!FigServer_IsServerProcess() || !FigXPCConnectionSetCustomServerTimeoutPerConnection())
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        if (!CreateRemoteFormatReader(AllocatorForMedia, &a12))
        {
          v30 = a12;
          if (!CommonFormatReaderObjectCompleteObjectSetup(a12, v20, v28))
          {
            FigBaseObject = FigFormatReaderGetFigBaseObject(v30);
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v32)
            {
              v32(FigBaseObject, @"CanMutate", *MEMORY[0x1E695E480], &cf);
              v32 = cf;
            }

            if (v32 == *MEMORY[0x1E695E4D0] || (DerivedStorage = CMBaseObjectGetDerivedStorage(), !SetupCommonFormatReaderPropertyCache((DerivedStorage + 24))))
            {
              *v24 = v30;
              a12 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  OUTLINED_FUNCTION_860();
}

void FigFormatReaderXPCRemoteObtainObjectIDForOtherProcess(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  OUTLINED_FUNCTION_570();
  CMBaseObjectGetDerivedStorage();
  if (v25 && v23 && v21)
  {
    v26 = OUTLINED_FUNCTION_62_4();
    if (!remoteFormatReader_GetObjectID(v26, v27))
    {
      OUTLINED_FUNCTION_2_22();
      if (!FigXPCCreateBasicMessage())
      {
        xpc_dictionary_set_int64(xdict, "OtherProcessPID", v23);
        if (!OUTLINED_FUNCTION_61_6())
        {
          *v21 = xpc_dictionary_get_uint64(a10, *MEMORY[0x1E69615A0]);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_860();
}

uint64_t FigFormatReaderXPCRemoteCopyTrackReaderForObjectIDFromOtherProcess()
{
  OUTLINED_FUNCTION_570();
  if (!v0 || (v2 = v1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v6 = FigSignalErrorAtGM();
LABEL_28:
    v14 = v6;
    goto LABEL_24;
  }

  v3 = v0;
  ShouldConnectToMediaparserdForFileParsing = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v5 = OUTLINED_FUNCTION_41_9(ShouldConnectToMediaparserdForFileParsing);
  v6 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v5, &v18);
  if (v6)
  {
    goto LABEL_28;
  }

  v6 = FigXPCCreateBasicMessage();
  if (v6)
  {
    goto LABEL_28;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", v3);
  v7 = v18;
  OUTLINED_FUNCTION_2_22();
  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8)
  {
    v14 = v8;
    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v9 = v19;
  v23 = 0;
  cf = 0;
  v22 = 0;
  if (!xpc_dictionary_get_uint64(v19, *MEMORY[0x1E69615A0]))
  {
    OUTLINED_FUNCTION_111();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v10 = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v11 = OUTLINED_FUNCTION_41_9(v10);
  ObjectID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v11, &v23);
  if (ObjectID)
  {
    goto LABEL_11;
  }

  v13 = v23;
  ObjectID = FigXPCRemoteClientRetainCopiedObject();
  if (ObjectID)
  {
    goto LABEL_11;
  }

  if (cf)
  {
    ObjectID = remoteTrackReader_GetObjectID(cf, &v21);
    if (ObjectID)
    {
LABEL_11:
      v14 = ObjectID;
      if (cf)
      {
        CFRelease(cf);
      }

      v15 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    ObjectID = remoteFormatReaderClient_CopyConnection(v13, 1, &v22);
    if (ObjectID)
    {
      goto LABEL_11;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    ObjectID = CreateRemoteTrackReader(AllocatorForMedia, 0, &cf);
    if (ObjectID)
    {
      goto LABEL_11;
    }

    xpc_dictionary_get_int64(v9, "TrackID");
    xpc_dictionary_get_uint64(v9, "MediaType");
    xpc_dictionary_get_BOOL(v9, "AllowsPropertyCaching");
    CompleteTrackReaderCopy();
    if (ObjectID)
    {
      goto LABEL_11;
    }
  }

  v14 = 0;
  v15 = cf;
  cf = 0;
LABEL_18:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v14)
  {
    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    *v2 = v15;
  }

LABEL_24:
  v7 = v18;
  if (v18)
  {
LABEL_25:
    CFRelease(v7);
  }

LABEL_26:
  FigXPCRelease();
  FigXPCRelease();
  return v14;
}

uint64_t FigFormatReaderXPCRemoteCopySampleCursorForObjectIDFromOtherProcess()
{
  v34 = 0;
  xdict = 0;
  OUTLINED_FUNCTION_570();
  if (!v2 || (v4 = v3) == 0 || (v5 = v1, !(v0 | v1)))
  {
    OUTLINED_FUNCTION_243();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_42;
  }

  v6 = v2;
  ShouldConnectToMediaparserdForFileParsing = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v8 = OUTLINED_FUNCTION_41_9(ShouldConnectToMediaparserdForFileParsing);
  ObjectID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v8, &v32);
  if (ObjectID)
  {
    goto LABEL_42;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_42;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", v6);
  if (v5)
  {
    ObjectID = remoteTrackReader_GetObjectID(v5, v33);
    if (!ObjectID)
    {
      v10 = xdict;
      v11 = "TrackReaderObjectID";
      v12 = v33[0];
      goto LABEL_11;
    }

LABEL_42:
    v23 = ObjectID;
    goto LABEL_38;
  }

  v13 = OUTLINED_FUNCTION_62_4();
  ObjectID = remoteFormatReader_GetObjectID(v13, v14);
  if (ObjectID)
  {
    goto LABEL_42;
  }

  v10 = xdict;
  v11 = "FormatReaderObjectID";
  v12 = v33[1];
LABEL_11:
  xpc_dictionary_set_uint64(v10, v11, v12);
  v15 = v32;
  OUTLINED_FUNCTION_16_14();
  v16 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v16)
  {
    v23 = v16;
    if (!v15)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  uint64 = xpc_dictionary_get_uint64(v34, *MEMORY[0x1E69615A0]);
  v18 = v34;
  v36 = 0;
  cf = 0;
  if (!uint64)
  {
    OUTLINED_FUNCTION_243();
    updated = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  v19 = uint64;
  v20 = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v21 = OUTLINED_FUNCTION_41_9(v20);
  updated = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v21, &v36);
  if (updated)
  {
    goto LABEL_17;
  }

  updated = FigXPCRemoteClientRetainCopiedObject();
  if (updated)
  {
    goto LABEL_17;
  }

  if (cf)
  {
    updated = remoteSampleCursor_GetObjectID(cf, &v38);
    if (updated)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  v25 = xpc_dictionary_get_uint64(v18, "SampleCursorOptionalMethods");
  v41 = 0;
  v42 = 0;
  *v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = *(DerivedStorage + 8);
  if (!v27)
  {
    OUTLINED_FUNCTION_243();
    v30 = FigSignalErrorAtGM();
LABEL_49:
    v23 = v30;
    goto LABEL_26;
  }

  v28 = DerivedStorage;
  v29 = *MEMORY[0x1E695E480];
  v30 = FigServerSampleCursorSubscriptionCreate(*MEMORY[0x1E695E480], v27, v19, 0, &v41);
  if (v30)
  {
    goto LABEL_49;
  }

  v30 = FigPartialSampleTableOutOfBandObjectRegistryCreate(v29, &v39[1]);
  if (v30)
  {
    goto LABEL_49;
  }

  v23 = CreateRemoteSampleCursor(v29, *(v28 + 40), v25, &v38, v41, 0, 0, &v42);
  if (v23)
  {
    if (v42)
    {
      CFRelease(v42);
    }
  }

  else
  {
    cf = v42;
  }

LABEL_26:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v39[1])
  {
    CFRelease(v39[1]);
  }

  if (v23)
  {
    goto LABEL_18;
  }

  updated = remoteSampleCursor_updateSimpleCache(cf, v18);
  if (updated || (updated = remoteSampleCursor_updateUpcomingSamplesCache(cf, v18), updated))
  {
LABEL_17:
    v23 = updated;
LABEL_18:
    if (cf)
    {
      CFRelease(cf);
    }

    v24 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v23 = 0;
  v24 = cf;
  cf = 0;
LABEL_34:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v23)
  {
    if (v24)
    {
      CFRelease(v24);
    }
  }

  else
  {
    *v4 = v24;
  }

LABEL_38:
  v15 = v32;
  if (v32)
  {
LABEL_39:
    CFRelease(v15);
  }

LABEL_40:
  FigXPCRelease();
  FigXPCRelease();
  return v23;
}

uint64_t FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(uint64_t a1, void *a2)
{
  v23 = 0;
  xdict = 0;
  cf = 0;
  v22 = 0;
  if (!a1 || !a2)
  {
    v7 = FigSignalErrorAtGM();
LABEL_12:
    v2 = v7;
    goto LABEL_8;
  }

  ShouldConnectToMediaparserdForFileParsing = FigRemote_ShouldConnectToMediaparserdForFileParsing();
  v6 = OUTLINED_FUNCTION_41_9(ShouldConnectToMediaparserdForFileParsing);
  v7 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(v6, &cf);
  if (v7)
  {
    goto LABEL_12;
  }

  v7 = OUTLINED_FUNCTION_81_2();
  if (v7)
  {
    goto LABEL_12;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", a1);
  v8 = cf;
  OUTLINED_FUNCTION_2_22();
  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v9)
  {
    v2 = v9;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(v23, *MEMORY[0x1E69615A0]);
  v11 = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 0, &v22);
  v19 = OUTLINED_FUNCTION_22_14(v11, v12, v13, v14, v15, v16, v17, v18, cf, v22);
  if (v2)
  {
    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    *a2 = v19;
    v22 = 0;
  }

LABEL_8:
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromMediaserverd(uint64_t a1, void *a2)
{
  v21 = 0;
  xdict = 0;
  cf = 0;
  v20 = 0;
  if (!a1 || !a2)
  {
    v5 = FigSignalErrorAtGM();
LABEL_12:
    v2 = v5;
    goto LABEL_8;
  }

  v5 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(0, &cf);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = OUTLINED_FUNCTION_81_2();
  if (v5)
  {
    goto LABEL_12;
  }

  xpc_dictionary_set_uint64(xdict, "OtherProcessObjectID", a1);
  v6 = cf;
  OUTLINED_FUNCTION_2_22();
  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    v2 = v7;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(v21, *MEMORY[0x1E69615A0]);
  v9 = FigFormatReaderXPCRemoteRetainCopiedPlaybackProcessFormatReader(uint64, &v20);
  v17 = OUTLINED_FUNCTION_22_14(v9, v10, v11, v12, v13, v14, v15, v16, cf, v20);
  if (v2)
  {
    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    *a2 = v17;
    v20 = 0;
  }

LABEL_8:
  v6 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v6);
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t FigFormatReaderRemoteCreateForStreamReturningResults(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, CFTypeRef *a6, _DWORD *a7, CFTypeRef *a8)
{
  v32 = 0;
  xdict = 0;
  v30 = 0;
  v31 = 0;
  value = 0;
  cf = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (!a1 || !a5)
  {
    ServerPID = FigSignalErrorAtGM();
LABEL_41:
    v21 = ServerPID;
    goto LABEL_27;
  }

  DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote();
  ServerPID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v25);
  if (ServerPID)
  {
    goto LABEL_41;
  }

  ServerPID = remoteFormatReaderClient_CopyConnection(v25, 1, &v24);
  if (ServerPID)
  {
    goto LABEL_41;
  }

  v23 = a7;
  v16 = v24;
  if (FigServer_IsServerProcess())
  {
    ServerPID = FigXPCConnectionSetCustomServerTimeoutPerConnection();
    if (ServerPID)
    {
      goto LABEL_41;
    }
  }

  ServerPID = FigXPCCreateBasicMessage();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  ServerPID = FigXPCRemoteClientGetServerPID();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  ServerPID = FigXPCRemoteClientCopyMemoryOrigin();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  ServerPID = FigByteStreamServerCreateByteStreamDetails(v26, v27, a1, &value);
  if (ServerPID)
  {
    goto LABEL_41;
  }

  xpc_dictionary_set_value(xdict, "ByteStreamDetails", value);
  ServerPID = FigXPCMessageSetCFDictionary();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  ServerPID = FigXPCMessageSetCFDictionary();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  ServerPID = CreateRemoteFormatReader(a3, &v31);
  if (ServerPID)
  {
    goto LABEL_41;
  }

  ServerPID = FigXPCConnectionSendSyncMessageCreatingReply();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  uint64 = xpc_dictionary_get_uint64(v32, *MEMORY[0x1E69615A0]);
  v18 = v31;
  ServerPID = CommonFormatReaderObjectCompleteObjectSetup(v31, uint64, v16);
  if (ServerPID)
  {
    goto LABEL_41;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_BOOL(v32, "AllowsPropertyCaching"))
  {
    ServerPID = SetupCommonFormatReaderPropertyCache((DerivedStorage + 24));
    if (ServerPID)
    {
      goto LABEL_41;
    }
  }

  ServerPID = FigXPCMessageCopyCFObject();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  v20 = xpc_dictionary_get_uint64(v32, "ContainerLabelType");
  ServerPID = FigXPCMessageCopyCFArray();
  if (ServerPID)
  {
    goto LABEL_41;
  }

  if (a8)
  {
    *a8 = cf;
    cf = 0;
  }

  if (a6)
  {
    *a6 = v30;
    v30 = 0;
  }

  if (v23)
  {
    *v23 = v20;
  }

  v21 = 0;
  *(DerivedStorage + 40) = CFRetain(a1);
  *a5 = v18;
  v31 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v21;
}

CFMutableDictionaryRef *CommonFormatReaderObjectRemovePropertyFromCache(CFMutableDictionaryRef *result, const void *a2)
{
  if (*result)
  {
    v3 = result;
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*v3, a2);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t remoteFormatReader_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  v2 = *(v1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  TeardownCommonFormatReaderPropertyCache(v0 + 24);
  if (*v0)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v0 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      if (!FigXPCCreateBasicMessage())
      {
        OUTLINED_FUNCTION_52_7();
      }
    }
  }

  v3 = *(v0 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(v0 + 48) = 0;
  }

  v4 = *(v0 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  return FigXPCRelease();
}

void remoteFormatReader_CopyProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, xpc_object_t xdict, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_74_5();
  a9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v20 && v21)
  {
    v26 = DerivedStorage;
    *v21 = 0;
    if (remoteFormatReader_GetObjectID(v22, &a9) || CommonFormatReaderObjectTryCopyPropertyFromCache((v26 + 24), v20, v21))
    {
      goto LABEL_23;
    }

    if (!CFEqual(v20, @"QuickTimeUserDataReader") && !CFEqual(v20, @"ISOUserDataReader") && !CFEqual(v20, @"FormatSpecificMetadataReader") && !CFEqual(v20, @"QuickTimeMetadataReader") && !CFEqual(v20, @"iTunesMetadataReader") && !CFEqual(v20, @"ID3MetadataReader") && !CFEqual(v20, @"VorbisCommentMetadataReader") && !CFEqual(v20, @"MetadataReader"))
    {
      if (CFEqual(v20, @"MetadataReaders"))
      {
        v36 = SendFormatReaderCopyMetadataReadersMessage();
      }

      else
      {
        v36 = SendFormatReaderCopyPropertyMessage();
      }

      if (v36)
      {
        goto LABEL_23;
      }

LABEL_34:
      CommonFormatReaderObjectStorePropertyInCache((v26 + 24), v20, *v21);
LABEL_23:
      OUTLINED_FUNCTION_860();
      return;
    }

    OUTLINED_FUNCTION_570();
    v27 = CMBaseObjectGetDerivedStorage();
    v28 = FigXPCCreateBasicMessage();
    if (v28)
    {
      v34 = v28;
    }

    else
    {
      RemoteMetadataReader = FigXPCMessageSetCFString();
      if (RemoteMetadataReader || (v30 = OUTLINED_FUNCTION_73_3(), (RemoteMetadataReader = CreateRemoteMetadataReader(v30, v31)) != 0) || (OUTLINED_FUNCTION_2_22(), (RemoteMetadataReader = FigXPCConnectionSendSyncMessageCreatingReply()) != 0))
      {
        v34 = RemoteMetadataReader;
        v33 = a10;
LABEL_20:
        FigXPCRelease();
        FigXPCRelease();
        if (v33)
        {
          CFRelease(v33);
        }

        FigXPCConnectionKillServerOnTimeout();
        if (v34)
        {
          goto LABEL_23;
        }

        goto LABEL_34;
      }

      uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
      v33 = a10;
      v34 = CommonFormatReaderObjectCompleteObjectSetup(a10, uint64, *(v27 + 8));
      if (v34)
      {
        goto LABEL_20;
      }

      *v21 = v33;
    }

    v33 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_429();
  OUTLINED_FUNCTION_860();

  FigSignalErrorAtGM();
}

uint64_t CommonFormatReaderObjectTryCopyPropertyFromCache(CFDictionaryRef *a1, const void *a2, void *a3)
{
  if (!*a1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(*a1, a2))
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*a1, a2);
      v7 = 0;
      if (Value && Value != *MEMORY[0x1E695E738])
      {
        v7 = CFRetain(Value);
      }

      *a3 = v7;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t SendFormatReaderCopyMetadataReadersMessage()
{
  v4 = v3;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_570();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigXPCCreateBasicMessage() || (OUTLINED_FUNCTION_2_22(), FigXPCConnectionSendSyncMessageCreatingReply()))
  {
    OUTLINED_FUNCTION_332_0();
    goto LABEL_16;
  }

  value = xpc_dictionary_get_value(v17[1], "ObjectIDArray");
  if (!value)
  {
    Mutable = 0;
LABEL_15:
    v4 = 0;
    v2 = 0;
    *v0 = Mutable;
LABEL_16:
    Mutable = 0;
    goto LABEL_17;
  }

  v7 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    v4 = 0;
    Mutable = 0;
    v2 = 0;
    goto LABEL_17;
  }

  v9 = count;
  Mutable = CFArrayCreateMutable(v1, count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_332_0();
    goto LABEL_17;
  }

  if (v9 < 1)
  {
    goto LABEL_15;
  }

  v11 = 0;
  while (1)
  {
    uint64 = xpc_array_get_uint64(v7, v11);
    RemoteMetadataReader = CreateRemoteMetadataReader(v1, v17);
    v4 = v17[0];
    if (RemoteMetadataReader)
    {
      break;
    }

    RemoteMetadataReader = CommonFormatReaderObjectCompleteObjectSetup(v17[0], uint64, *(DerivedStorage + 8));
    if (RemoteMetadataReader)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_182_1();
    CFArrayAppendValue(v14, v15);
    if (v4)
    {
      CFRelease(v4);
      v17[0] = 0;
    }

    if (v9 == ++v11)
    {
      goto LABEL_15;
    }
  }

  v2 = RemoteMetadataReader;
LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigXPCConnectionKillServerOnTimeout();
  return v2;
}

uint64_t SendFormatReaderCopyPropertyMessage()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigXPCCreateBasicMessage();
  if (v0 || (v0 = FigXPCMessageSetCFString(), v0))
  {
    v1 = v0;
  }

  else
  {
    v1 = FigXPCConnectionSendSyncMessageCreatingReply();
    if (!v1)
    {
      v1 = FigXPCMessageCopyCFObject();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v1;
}

CFMutableDictionaryRef *CommonFormatReaderObjectStorePropertyInCache(CFMutableDictionaryRef *result, const void *a2, const void *a3)
{
  if (*result)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = *MEMORY[0x1E695E738];
    }

    FigSimpleMutexLock();
    CFDictionarySetValue(*v4, a2, v5);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t remoteMetadataReader_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (*v1)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v0 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      if (!FigXPCCreateBasicMessage())
      {
        OUTLINED_FUNCTION_52_7();
      }
    }
  }

  v2 = *(v0 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return FigXPCRelease();
}

void remoteMetadataReader_CopyProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  a11 = 0;
  a12 = 0;
  cf = 0;
  a10 = 0;
  CMBaseObjectGetDerivedStorage();
  if (v25 && v23)
  {
    v26 = OUTLINED_FUNCTION_62_4();
    if (!remoteMetadataReader_GetObjectID(v26, v27))
    {
      OUTLINED_FUNCTION_2_22();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString())
      {
        CMBaseObjectGetDerivedStorage();
        if (!FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply() && !FigXPCMessageCopyCFObject())
        {
          if (CFEqual(v25, @"containerByteStream"))
          {
            UInt64 = FigCFNumberGetUInt64();
            if (!remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID(UInt64, UInt64, &cf))
            {
              v29 = *v23;
              v30 = cf;
              *v23 = cf;
              if (v30)
              {
                CFRetain(v30);
              }

              if (v29)
              {
                CFRelease(v29);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

void remoteMetadataReader_CopyValue(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, CFTypeRef cf, xpc_object_t a12, xpc_object_t xdict, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_298_0();
  a25 = v31;
  a26 = v32;
  OUTLINED_FUNCTION_28_15();
  if (v28 | v26)
  {
    if (!remoteMetadataReader_GetObjectID(v29, &a14))
    {
      OUTLINED_FUNCTION_16_14();
      if (!FigXPCCreateBasicMessage())
      {
        xpc_dictionary_set_uint64(xdict, "MetadataValueType", v30);
        if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFObject())
        {
          xpc_dictionary_set_BOOL(xdict, "MetadataPropertiesDesired", v26 != 0);
          xpc_dictionary_set_BOOL(xdict, "MetadataValueDesired", v28 != 0);
          CMBaseObjectGetDerivedStorage();
          if (!FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply())
          {
            if (v28)
            {
              if (FigXPCMessageCopyCFObject())
              {
                goto LABEL_13;
              }

              *v28 = cf;
              cf = 0;
            }

            if (v26)
            {
              data = xpc_dictionary_get_data(a12, "MetadataProperties", &a9);
              if (!FigRemote_CreateMetadataPropertiesFromBinaryPListData(data, a9, v27, &a10))
              {
                *v26 = a10;
                a10 = 0;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  OUTLINED_FUNCTION_297_0();
}

void remoteMetadataReader_CopyItemWithKeyAndIndex(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, CFTypeRef cf, xpc_object_t a12, xpc_object_t xdict, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_298_0();
  a25 = v31;
  a26 = v32;
  OUTLINED_FUNCTION_28_15();
  if (v28 | v26)
  {
    if (!remoteMetadataReader_GetObjectID(v29, &a14))
    {
      OUTLINED_FUNCTION_16_14();
      if (!FigXPCCreateBasicMessage())
      {
        xpc_dictionary_set_int64(xdict, "MetadataItemIndex", v30);
        if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFObject())
        {
          xpc_dictionary_set_BOOL(xdict, "MetadataPropertiesDesired", v26 != 0);
          xpc_dictionary_set_BOOL(xdict, "MetadataValueDesired", v28 != 0);
          CMBaseObjectGetDerivedStorage();
          if (!FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply())
          {
            if (v28)
            {
              if (FigXPCMessageCopyCFObject())
              {
                goto LABEL_13;
              }

              *v28 = cf;
              cf = 0;
            }

            if (v26)
            {
              data = xpc_dictionary_get_data(a12, "MetadataProperties", &a9);
              if (!FigRemote_CreateMetadataPropertiesFromBinaryPListData(data, a9, v27, &a10))
              {
                *v26 = a10;
                a10 = 0;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  OUTLINED_FUNCTION_297_0();
}

uint64_t remoteFormatReader_GetTrackCount()
{
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_570();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (v0)
  {
    if (CommonFormatReaderObjectTryCopyPropertyFromCache((DerivedStorage + 24), @"Cache_Tracks", &theArray))
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      v4 = 0;
LABEL_10:
      *v0 = Count;
      goto LABEL_11;
    }

    ObjectID = remoteFormatReader_GetObjectID(v1, v8);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        OUTLINED_FUNCTION_2_22();
        v4 = FigXPCConnectionSendSyncMessageCreatingReply();
        if (v4)
        {
          goto LABEL_11;
        }

        Count = xpc_dictionary_get_int64(v8[1], "TrackCount");
        goto LABEL_10;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    ObjectID = FigSignalErrorAtGM();
  }

  v4 = ObjectID;
LABEL_11:
  if (theArray)
  {
    CFRelease(theArray);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4();
  return v4;
}

uint64_t remoteFormatReader_EstablishCombinedDataRateProfileForTracks(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v13 = 0;
  xdict = 0;
  length = 0;
  v12 = 0;
  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteFormatReader_GetObjectID(a1, &v12);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      ObjectID = FigXPCMessageSetCFArray();
      if (!ObjectID)
      {
        xpc_dictionary_set_uint64(xdict, "ProfileBucketCount", a4);
        ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          data = xpc_dictionary_get_data(v13, "DataRateProfile", &length);
          if (data && length == 8 * a4)
          {
            memcpy(a3, data, length);
            if (*MEMORY[0x1E695FF58] == 1)
            {
              strncpy(__dst, "DataRateProfile", 8uLL);
              kdebug_trace();
            }

            ObjectID = FigXPCMessageGetCMTime();
          }

          else
          {
            OUTLINED_FUNCTION_239();
            ObjectID = FigSignalErrorAtGM();
          }
        }
      }
    }
  }

  v9 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v9;
}

void remoteFormatReader_copyTrackByIndexFromServer(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, xpc_object_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_43_9();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = OUTLINED_FUNCTION_73_3();
  if (!remoteFormatReader_GetObjectID(v28, v29))
  {
    if (FigXPCCreateBasicMessage() || (xpc_dictionary_set_int64(xdict, "TrackIndex", v26), v24) && (xpc_dictionary_set_BOOL(xdict, "TrackReaderDesired", 1), v30 = CFGetAllocator(v20), CreateRemoteTrackReader(v30, *(DerivedStorage + 40), &cf)) || (OUTLINED_FUNCTION_2_22(), FigXPCConnectionSendSyncMessageCreatingReply()) || (xpc_dictionary_get_int64(a11, "TrackID"), xpc_dictionary_get_uint64(a11, "MediaType"), xpc_dictionary_get_BOOL(a11, "AllowsPropertyCaching"), !v24) || (xpc_dictionary_get_uint64(a11, *MEMORY[0x1E69615A0]), CompleteTrackReaderCopy(), v31))
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *v24 = cf;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_860();
}

void CompleteTrackReaderCopy()
{
  OUTLINED_FUNCTION_845();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v8;
  if (!FigXPCConnectionRetainCopiedObject())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = v3;
    *(DerivedStorage + 28) = v1;
    if ((!v7 || !SetupCommonFormatReaderPropertyCache((DerivedStorage + 40))) && !CommonFormatReaderObjectCompleteObjectSetup(v12, v5, v11))
    {
      *v9 = v12;
    }
  }

  OUTLINED_FUNCTION_843();
}

uint64_t remoteTrackReader_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  v2 = *(v1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(v0 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  TeardownCommonFormatReaderPropertyCache(v0 + 40);
  if (*v0)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v0 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      if (!FigXPCCreateBasicMessage())
      {
        OUTLINED_FUNCTION_52_7();
      }
    }
  }

  v4 = *(v0 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  return FigXPCRelease();
}

uint64_t remoteTrackReader_CopyProperty()
{
  OUTLINED_FUNCTION_74_5();
  cf = 0;
  *v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v0 || !v1)
  {
    OUTLINED_FUNCTION_429();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  v5 = DerivedStorage;
  *v1 = 0;
  ObjectID = remoteTrackReader_GetObjectID(v3, v26);
  if (!ObjectID)
  {
    if (CommonFormatReaderObjectTryCopyPropertyFromCache((v5 + 40), v0, v1))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_20;
    }

    if (CFEqual(v0, @"QuickTimeUserDataReader") || CFEqual(v0, @"ISOUserDataReader") || CFEqual(v0, @"QuickTimeMetadataReader"))
    {
      xdict = 0;
      v29 = 0;
      v27 = 0;
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = FigXPCCreateBasicMessage();
      if (v9)
      {
        v7 = v9;
      }

      else
      {
        v10 = FigXPCMessageSetCFString();
        if (v10 || (v10 = CreateRemoteMetadataReader(v2, &v27), v10) || (OUTLINED_FUNCTION_16_14(), v10 = FigXPCConnectionSendSyncMessageCreatingReply(), v10))
        {
          v7 = v10;
          v12 = v27;
          goto LABEL_16;
        }

        uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
        v12 = v27;
        v7 = CommonFormatReaderObjectCompleteObjectSetup(v27, uint64, *(v8 + 8));
        if (v7)
        {
LABEL_16:
          FigXPCRelease();
          FigXPCRelease();
          if (v12)
          {
            CFRelease(v12);
          }

          FigXPCConnectionKillServerOnTimeout();
LABEL_19:
          if (v7)
          {
            goto LABEL_20;
          }

LABEL_42:
          CommonFormatReaderObjectStorePropertyInCache((v5 + 40), v0, *v1);
          goto LABEL_5;
        }

        *v1 = v12;
      }

      v12 = 0;
      goto LABEL_16;
    }

    if (CFEqual(v0, @"MetadataReaders"))
    {
      MetadataItemArrayFromBinaryPListData = SendTrackReaderCopyMetadataReadersMessage();
      goto LABEL_40;
    }

    if (CFEqual(v0, @"EditCursorService"))
    {
      v21 = v26[0];
      v22 = v3;
      v23 = 1415930673;
    }

    else
    {
      if (!CFEqual(v0, @"SecondaryEditCursorService"))
      {
        if (CFEqual(v0, @"SupportsMetadataArrays"))
        {
          *v1 = CFRetain(*MEMORY[0x1E695E4D0]);
          goto LABEL_42;
        }

        if (CFEqual(v0, @"QuickTimeUserDataArray") || CFEqual(v0, @"ISOUserDataArray") || CFEqual(v0, @"QuickTimeMetadataArray") || CFEqual(v0, @"CommonMetadataArray"))
        {
          v7 = SendTrackReaderCopyPropertyMessage(v3, *v26, v0, &cf);
          if (v7 || !cf)
          {
            goto LABEL_19;
          }

          MetadataItemArrayFromBinaryPListData = FigRemote_CreateMetadataItemArrayFromBinaryPListData(cf, v2, 0, v1);
LABEL_40:
          v7 = MetadataItemArrayFromBinaryPListData;
          goto LABEL_19;
        }

        if (!CFEqual(v0, @"CaptionSampleCursorService"))
        {
          MetadataItemArrayFromBinaryPListData = SendTrackReaderCopyPropertyMessage(v3, *v26, v0, v1);
          goto LABEL_40;
        }

        SendTrackReaderCreateCursorServiceMessage(v3, v26[0], 1415799667, v2, v1, v17, v18, v19, v24, cf, *v26, v27, xdict, v29, v30, v31, v32, v33, v34, v35);
        if (!ObjectID)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

      v21 = v26[0];
      v23 = 1415930674;
      v22 = v3;
    }

    SendTrackReaderCreateEditCursorServiceMessage(v22, v21, v23, v2, v1, v14, v15, v16, v24, cf, *v26, v27, xdict, v29, v30, v31, v32, v33, v34, v35);
    goto LABEL_40;
  }

LABEL_37:
  v7 = ObjectID;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t SendTrackReaderCopyMetadataReadersMessage()
{
  v4 = v3;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_570();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigXPCCreateBasicMessage() || (OUTLINED_FUNCTION_2_22(), FigXPCConnectionSendSyncMessageCreatingReply()))
  {
    OUTLINED_FUNCTION_332_0();
    goto LABEL_16;
  }

  value = xpc_dictionary_get_value(v17[1], "ObjectIDArray");
  if (!value)
  {
    Mutable = 0;
LABEL_15:
    v4 = 0;
    v2 = 0;
    *v0 = Mutable;
LABEL_16:
    Mutable = 0;
    goto LABEL_17;
  }

  v7 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    v4 = 0;
    Mutable = 0;
    v2 = 0;
    goto LABEL_17;
  }

  v9 = count;
  Mutable = CFArrayCreateMutable(v1, count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_332_0();
    goto LABEL_17;
  }

  if (v9 < 1)
  {
    goto LABEL_15;
  }

  v11 = 0;
  while (1)
  {
    uint64 = xpc_array_get_uint64(v7, v11);
    RemoteMetadataReader = CreateRemoteMetadataReader(v1, v17);
    v4 = v17[0];
    if (RemoteMetadataReader)
    {
      break;
    }

    RemoteMetadataReader = CommonFormatReaderObjectCompleteObjectSetup(v17[0], uint64, *(DerivedStorage + 8));
    if (RemoteMetadataReader)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_182_1();
    CFArrayAppendValue(v14, v15);
    if (v4)
    {
      CFRelease(v4);
      v17[0] = 0;
    }

    if (v9 == ++v11)
    {
      goto LABEL_15;
    }
  }

  v2 = RemoteMetadataReader;
LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigXPCConnectionKillServerOnTimeout();
  return v2;
}

void SendTrackReaderCreateEditCursorServiceMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigXPCCreateBasicMessage())
  {
    FigEditCursorServiceGetClassID();
    if (!CMDerivedObjectCreate() && !OUTLINED_FUNCTION_61_6())
    {
      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      if (!CommonFormatReaderObjectCompleteObjectSetup(0, uint64, *(DerivedStorage + 8)))
      {
        *v21 = 0;
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  OUTLINED_FUNCTION_860();
}

uint64_t SendTrackReaderCopyPropertyMessage(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  v6 = FigXPCCreateBasicMessage();
  if (v6)
  {
    goto LABEL_8;
  }

  v6 = FigXPCMessageSetCFString();
  if (v6)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_22();
  v6 = FigXPCConnectionSendSyncMessageCreatingReply();
  if (v6)
  {
    goto LABEL_8;
  }

  if (!CFEqual(a3, @"TrackFormatDescriptionArray"))
  {
    v6 = FigXPCMessageCopyCFObject();
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  v7 = FigXPCMessageCopyFormatDescriptionArray();
  if (!v7)
  {
    *a4 = 0;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v7;
}

void SendTrackReaderCreateCursorServiceMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigXPCCreateBasicMessage())
  {
    v23 = *(DerivedStorage + 32);
    v24 = *(DerivedStorage + 56);
    FigSampleCursorServiceGetClassID();
    if (!CMDerivedObjectCreate())
    {
      v25 = CMBaseObjectGetDerivedStorage();
      if (v24)
      {
        v26 = CFRetain(v24);
      }

      else
      {
        v26 = 0;
      }

      *(v25 + 24) = v26;
      if (v23)
      {
        v27 = CFRetain(v23);
      }

      else
      {
        v27 = 0;
      }

      *(v25 + 32) = v27;
      if (!FigXPCConnectionSendSyncMessageCreatingReply())
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        if (!CommonFormatReaderObjectCompleteObjectSetup(0, uint64, *(DerivedStorage + 8)))
        {
          *v21 = 0;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteEditCursorService_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (*v1)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v0 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      if (!FigXPCCreateBasicMessage())
      {
        OUTLINED_FUNCTION_52_7();
      }
    }
  }

  v2 = *(v0 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return FigXPCRelease();
}

uint64_t remoteEditCursor_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (*v1)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v0 + 16) && !FigXPCCreateBasicMessage())
    {
      OUTLINED_FUNCTION_52_7();
    }
  }

  v2 = *(v0 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return FigXPCRelease();
}

void remoteEditCursor_CopyProperty()
{
  OUTLINED_FUNCTION_47_5();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_570();
  CMBaseObjectGetDerivedStorage();
  if (v3 && v1)
  {
    *v1 = 0;
    v4 = OUTLINED_FUNCTION_62_4();
    if (!remoteEditCursor_GetObjectID(v4, v5))
    {
      OUTLINED_FUNCTION_2_22();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString() && !OUTLINED_FUNCTION_61_6())
      {
        FigXPCMessageCopyCFObject();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_860();
}

uint64_t remoteEditCursor_Step(uint64_t a1, int a2)
{
  v7 = 0;
  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteEditCursor_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    v5 = ObjectID;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage();
    if (!v5)
    {
      xpc_dictionary_set_int64(0, "EditCursorStepCount", a2);
      v5 = FigXPCConnectionSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v5;
}

uint64_t remoteEditCursor_GetEditSegment()
{
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_570();
  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteEditCursor_GetObjectID(v0, &v4);
  if (ObjectID || (OUTLINED_FUNCTION_2_22(), ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    CMTimeMapping = ObjectID;
  }

  else
  {
    CMTimeMapping = OUTLINED_FUNCTION_61_6();
    if (!CMTimeMapping)
    {
      CMTimeMapping = FigXPCMessageGetCMTimeMapping();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_59_4();
  return CMTimeMapping;
}

uint64_t remoteSampleCursorService_Finalize()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  v2 = *(v1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(v0 + 24) = 0;
  }

  v3 = *(v0 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(v0 + 32) = 0;
  }

  if (*v0)
  {
    FigXPCConnectionDisassociateObject();
    if (!*(v0 + 16))
    {
      OUTLINED_FUNCTION_14_24();
      if (!FigXPCCreateBasicMessage())
      {
        OUTLINED_FUNCTION_52_7();
      }
    }
  }

  v4 = *(v0 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(v0 + 8) = 0;
  }

  return FigXPCRelease();
}

uint64_t CreateCursorWithPresentationTimeStamp(const void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, BOOL *a6, BOOL *a7)
{
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  cf = 0;
  v26 = 0;
  if (!a5)
  {
    OUTLINED_FUNCTION_429();
LABEL_29:
    ObjectID = FigSignalErrorAtGM();
LABEL_30:
    v21 = ObjectID;
    goto LABEL_18;
  }

  ObjectID = remoteSampleCursorService_GetObjectID(a1, &v32);
  if (ObjectID)
  {
    goto LABEL_30;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v25))
  {
    xpc_dictionary_set_BOOL(v31, "UseSimpleCache", 1);
  }

  v23[3] = *a2;
  v24 = *(a2 + 16);
  ObjectID = FigXPCMessageSetCMTime();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  xpc_dictionary_set_BOOL(v31, "SampleCursorAllowCreationAfterPTS", a4 != 0);
  ObjectID = FigXPCConnectionCopyMemoryOriginForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  ObjectID = FigXPCConnectionCopyMemoryRecipientForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_30;
  }

  uint64 = xpc_dictionary_get_uint64(v30, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    OUTLINED_FUNCTION_429();
    goto LABEL_29;
  }

  v16 = uint64;
  v17 = xpc_dictionary_get_uint64(v30, "SampleCursorOptionalMethods");
  v18 = CFGetAllocator(a1);
  ObjectID = FigServerSampleCursorSubscriptionCreate(v18, DerivedStorage[1], v16, DerivedStorage[3], &cf);
  if (ObjectID)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_47_6();
  v19 = CFGetAllocator(a1);
  ObjectID = CreateRemoteSampleCursor(v19, DerivedStorage[4], v17, v23, cf, v27, v26, &v29);
  if (ObjectID)
  {
    goto LABEL_30;
  }

  v20 = v29;
  ObjectID = remoteSampleCursor_updateSimpleCache(v29, v30);
  if (ObjectID)
  {
    goto LABEL_30;
  }

  remoteSampleCursor_updateUpcomingSamplesCache(v20, v30);
  *a5 = v20;
  v29 = 0;
  if (a6)
  {
    *a6 = xpc_dictionary_get_BOOL(v30, "SampleCursorCreatedBeforeStart");
  }

  v21 = 0;
  if (a7)
  {
    *a7 = xpc_dictionary_get_BOOL(v30, "SampleCursorCreatedAfterEnd");
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  FigXPCConnectionKillServerOnTimeout();
  return v21;
}

uint64_t remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(uint64_t *a1)
{
  if (qword_1EAF19468 != -1)
  {
    dispatch_once(&qword_1EAF19468, &__block_literal_global_55);
  }

  if (!remoteSampleCursor_useEventLink_prefersEventLink)
  {
    return 0;
  }

  result = _MergedGlobals_157;
  if (_MergedGlobals_157)
  {
    v3 = MEMORY[0x19A8D3620]();
    result = v3 != 0;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t remoteSampleCursor_updateSimpleCache(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v16);
  if (result)
  {
    if (a2)
    {
      length = 0;
      data = xpc_dictionary_get_data(a2, "SampleCursorSyncInfo", &length);
      if (data && length == 8)
      {
        v6 = data;
        __n = 0;
        v7 = xpc_dictionary_get_data(a2, "SampleCursorSampleTimingInfo", &__n);
        if (v7 && __n == 72)
        {
          v8 = v7;
          FigSimpleMutexLock();
          memcpy((DerivedStorage + 152), v6, length);
          memcpy((DerivedStorage + 80), v8, __n);
          *(DerivedStorage + 160) = 0u;
          *(DerivedStorage + 176) = 0u;
          *(DerivedStorage + 192) = 0u;
          v9 = MEMORY[0x1E6960C98];
          v10 = *(MEMORY[0x1E6960C98] + 16);
          *(DerivedStorage + 212) = *MEMORY[0x1E6960C98];
          *(DerivedStorage + 208) = 0;
          *(DerivedStorage + 228) = v10;
          *(DerivedStorage + 244) = *(v9 + 32);
          v11 = MEMORY[0x1E6960C70];
          v12 = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 260) = *MEMORY[0x1E6960C70];
          v13 = *(v11 + 16);
          *(DerivedStorage + 276) = v13;
          *(DerivedStorage + 300) = v13;
          *(DerivedStorage + 284) = v12;
          *(DerivedStorage + 308) = 0;
          *(DerivedStorage + 312) = v12;
          *(DerivedStorage + 328) = v13;
          *(DerivedStorage + 336) = v12;
          *(DerivedStorage + 352) = v13;
          FigSimpleMutexUnlock();
          return 0;
        }

        OUTLINED_FUNCTION_303();
      }

      else
      {
        OUTLINED_FUNCTION_303();
      }

      return FigSignalErrorAtGM();
    }

    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t remoteSampleCursor_updateUpcomingSamplesCache(const void *a1, void *Instance)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v34 = 0;
  v31 = 0;
  cf = 0;
  v29 = 0;
  v30 = 0;
  v5 = CFGetAllocator(a1);
  v28 = 0;
  FigPartialSampleTableAccessorDestroy(*(DerivedStorage + 24));
  v6 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = 0;
  v7 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = 0;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  if (qword_1EAF19470 != -1)
  {
    dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
  }

  OUTLINED_FUNCTION_17_21();
  if (!v8 || remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v28))
  {
    Instance = 0;
    v23 = 0;
    goto LABEL_36;
  }

  if (!Instance)
  {
    OUTLINED_FUNCTION_111();
    AccessorAtIndex = FigSignalErrorAtGM();
    goto LABEL_56;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_array(Instance, "SampleCursorFormatDescriptionArray"))
  {
    OUTLINED_FUNCTION_19_23();
    v36 = 0x40000000;
    v37 = __remoteSampleCursor_registerNewFormatDescriptionsFromMessage_block_invoke;
    v38 = &unk_1E7486518;
    v39 = &v41;
    v40 = v9;
    xpc_array_apply(v10, applier);
  }

  _Block_object_dispose(&v41, 8);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v11 = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_array(Instance, "SampleCursorDataSourceArray"))
  {
    OUTLINED_FUNCTION_19_23();
    v36 = 0x40000000;
    v37 = __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke;
    v38 = &unk_1E7486540;
    v39 = &v41;
    v40 = v11;
    xpc_array_apply(v12, applier);
  }

  _Block_object_dispose(&v41, 8);
  OUTLINED_FUNCTION_182_1();
  BlockBufferData = FigXPCMessageCreateBlockBufferData();
  if (!BlockBufferData)
  {
    int64 = xpc_dictionary_get_int64(Instance, "SampleCursorSampleIndex");
    v27[0] = 0;
    v27[1] = remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID;
    v27[2] = remoteSampleCursor_copyDataSourceTranslatedFromOutOfBandID;
    v27[3] = remoteSampleCursor_copyFormatDescriptionTranslatedFromOutOfBandID;
    v27[4] = remoteSampleCursor_copySampleDependencyAttributesFromOutOfBandID;
    OUTLINED_FUNCTION_182_1();
    BlockBufferData = FigXPCMessageCreateBlockBufferData();
    if (!BlockBufferData)
    {
      if (!v31 || (BlockBufferData = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer(), !BlockBufferData))
      {
        v15 = cf;
        v16 = *(DerivedStorage + 40);
        if (qword_1EAF19478 != -1)
        {
          dispatch_once_f(&qword_1EAF19478, 0, registerRemoteSampleCursorOutOfBandStorageType);
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          if (v15)
          {
            v17 = CFRetain(v15);
          }

          else
          {
            v17 = 0;
          }

          Instance[3] = v17;
          if (v16)
          {
            v18 = CFRetain(v16);
          }

          else
          {
            v18 = 0;
          }

          Instance[2] = v18;
LABEL_24:
          AccessorAtIndex = FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks(v5, v34, v27, Instance, &v33);
          if (!AccessorAtIndex)
          {
            AccessorAtIndex = FigPartialSampleTableCreateAccessorAtIndex(v33, int64, &v29);
            if (!AccessorAtIndex)
            {
              v21 = (DerivedStorage + 48);
              v20 = *(DerivedStorage + 48);
              if (v20)
              {
LABEL_32:
                AccessorAtIndex = FigPartialSampleTableBrokerOfferNewPartialSampleTable(v20, v33);
                if (!AccessorAtIndex)
                {
                  AccessorAtIndex = FigPartialSampleTableBrokerCopyInterestTokenForAdjacentTables(*v21, v33, &v30);
                  if (!AccessorAtIndex)
                  {
                    v22 = v30;
LABEL_35:
                    v23 = 0;
                    v24 = v33;
                    v33 = 0;
                    v25 = v29;
                    *(DerivedStorage + 16) = v24;
                    *(DerivedStorage + 24) = v25;
                    v29 = 0;
                    v30 = 0;
                    *(DerivedStorage + 56) = v22;
                    goto LABEL_36;
                  }
                }

                goto LABEL_56;
              }

              if (qword_1EAF19488 != -1)
              {
                dispatch_once(&qword_1EAF19488, &__block_literal_global_150);
              }

              if (!byte_1ED4CA101 || (AccessorAtIndex = FigPartialSampleTableBrokerCreate(v5, (DerivedStorage + 48)), !AccessorAtIndex))
              {
                v20 = *v21;
                if (!*v21)
                {
                  v22 = 0;
                  goto LABEL_35;
                }

                goto LABEL_32;
              }
            }
          }

LABEL_56:
          v23 = AccessorAtIndex;
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_111();
        BlockBufferData = FigSignalErrorAtGM();
        if (!BlockBufferData)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v23 = BlockBufferData;
  Instance = 0;
LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  FigPartialSampleTableAccessorDestroy(v29);
  return v23;
}

int64_t remoteSampleCursor_CompareInDecodeOrder()
{
  OUTLINED_FUNCTION_187();
  v35 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  if (!v1)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
    goto LABEL_20;
  }

  if (!int64)
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
    goto LABEL_12;
  }

  v4 = v3;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v31))
  {
    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v9)
    {
      memset(&v30, 0, sizeof(v30));
      *v28 = 0u;
      v29 = 0u;
      *v27 = 0u;
      v25 = 0;
      *v23 = 0u;
      v24 = 0u;
      *xdict = 0u;
      v22 = 0u;
      SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), v27);
      if (!SampleTiming)
      {
        SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(v4 + 24), xdict);
        if (!SampleTiming)
        {
          time1 = v30;
          *&time2.value = v24;
          time2.epoch = v25;
          p_time1 = &time1;
          goto LABEL_11;
        }
      }

      v12 = SampleTiming;
      OUTLINED_FUNCTION_33_12();
      if (!v13)
      {
        HIDWORD(v20) = 0;
        BYTE3(v20) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_115_1(v15))
        {
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "remoteSampleCursor_CompareInDecodeOrder";
          LOWORD(time2.flags) = 1024;
          *(&time2.flags + 2) = v12;
          OUTLINED_FUNCTION_25_17();
          p_time2 = &time2;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414();
      }
    }

    remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v1, int64, 1935895920, &v32, &__block_literal_global_79, v6, v7, v8, p_time2, v18, v19, v20, xdict[0], xdict[1], v22, *(&v22 + 1), v23[0], v23[1], v24, *(&v24 + 1), v25, v26, v27[0], v27[1], v28[0], v28[1]);
    if (!v16)
    {
      int64 = xpc_dictionary_get_int64(v32, "SampleCursorComparisonResult");
      goto LABEL_12;
    }

LABEL_20:
    int64 = 0;
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  time1 = *(DerivedStorage + 128);
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  *v27 = *(v4 + 128);
  v28[0] = *(v4 + 144);
  FigSimpleMutexUnlock();
  *xdict = *&time1.value;
  *&v22 = time1.epoch;
  *&time2.value = *v27;
  time2.epoch = v28[0];
  p_time1 = xdict;
LABEL_11:
  int64 = CMTimeCompare(p_time1, &time2);
LABEL_12:
  FigXPCRelease();
  return int64;
}

void remoteSampleCursor_GetPresentationTimeStamp()
{
  OUTLINED_FUNCTION_187();
  v40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  if (v1)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v37))
    {
      v3 = FigSimpleMutexLock();
      OUTLINED_FUNCTION_54_8(v3, v4, v5, v6, v7, v8, v9, v10, v33, v34, v35, v36, v37, __dst[0]);
      SampleTiming = FigSimpleMutexUnlock();
LABEL_8:
      OUTLINED_FUNCTION_67_6(SampleTiming, v12, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36, v37, __dst[0], __dst[1], __dst[2], v19);
      *(v0 + 16) = v21;
LABEL_9:
      OUTLINED_FUNCTION_46_6();
      return;
    }

    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v20)
    {
      SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst);
      if (!SampleTiming)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_33_12();
      if (!v22)
      {
        v23 = OUTLINED_FUNCTION_12_28();
        v31 = OUTLINED_FUNCTION_19_4(v23, v24, v25, v26, v27, v28, v29, v30, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
        if (OUTLINED_FUNCTION_115_1(v31))
        {
          v39 = 136315394;
          OUTLINED_FUNCTION_5_54();
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414();
      }
    }

    OUTLINED_FUNCTION_65_5();
    SampleTiming = remoteSampleCursor_getSampleTimingInfoFromServer();
    if (SampleTiming)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_46_6();

  FigSignalErrorAtGM();
}

void remoteSampleCursor_GetDecodeTimeStamp()
{
  OUTLINED_FUNCTION_187();
  v40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  if (v1)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v37))
    {
      v3 = FigSimpleMutexLock();
      OUTLINED_FUNCTION_54_8(v3, v4, v5, v6, v7, v8, v9, v10, v33, v34, v35, v36, v37, __dst[0]);
      SampleTiming = FigSimpleMutexUnlock();
    }

    else
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v20)
      {
        SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst);
        if (!SampleTiming)
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_33_12();
        if (!v22)
        {
          v23 = OUTLINED_FUNCTION_12_28();
          v31 = OUTLINED_FUNCTION_19_4(v23, v24, v25, v26, v27, v28, v29, v30, v33, v34, v35, v36, SBYTE2(v36), BYTE3(v36), SHIDWORD(v36));
          if (OUTLINED_FUNCTION_115_1(v31))
          {
            v39 = 136315394;
            OUTLINED_FUNCTION_5_54();
            OUTLINED_FUNCTION_7_1();
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414();
        }
      }

      OUTLINED_FUNCTION_65_5();
      SampleTiming = remoteSampleCursor_getSampleTimingInfoFromServer();
      if (SampleTiming)
      {
LABEL_12:
        OUTLINED_FUNCTION_46_6();
        return;
      }
    }

LABEL_8:
    if (__dst[60])
    {
      *v0 = *&__dst[48];
      v21 = *&__dst[64];
    }

    else
    {
      OUTLINED_FUNCTION_67_6(SampleTiming, v12, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36, v37, *__dst, *&__dst[8], *&__dst[16], v19);
    }

    *(v0 + 16) = v21;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_46_6();

  FigSignalErrorAtGM();
}

void remoteSampleCursor_GetDuration()
{
  OUTLINED_FUNCTION_187();
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  if (v1)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v27))
    {
      v3 = FigSimpleMutexLock();
      OUTLINED_FUNCTION_54_8(v3, v4, v5, v6, v7, v8, v9, v10, v23, v24, v25, v26, v27, __dst[0]);
      FigSimpleMutexUnlock();
LABEL_8:
      *v0 = *__dst;
      *(v0 + 16) = *&__dst[16];
LABEL_9:
      OUTLINED_FUNCTION_46_6();
      return;
    }

    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v11)
    {
      if (!FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst))
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_33_12();
      if (!v12)
      {
        v13 = OUTLINED_FUNCTION_12_28();
        v21 = OUTLINED_FUNCTION_19_4(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, SBYTE2(v26), BYTE3(v26), SHIDWORD(v26));
        if (OUTLINED_FUNCTION_115_1(v21))
        {
          v29 = 136315394;
          OUTLINED_FUNCTION_5_54();
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414();
      }
    }

    OUTLINED_FUNCTION_65_5();
    if (remoteSampleCursor_getSampleTimingInfoFromServer())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_46_6();

  FigSignalErrorAtGM();
}

uint64_t remoteSampleCursor_GetDependencyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_27_14();
  v10 = v9;
  v34[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v10)
  {
    v12 = DerivedStorage;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v28))
    {
      FigSimpleMutexLock();
      if (v7)
      {
        *v7 = *(v12 + 156);
      }

      if (v6)
      {
        *v6 = *(v12 + 157);
      }

      if (v5)
      {
        *v5 = *(v12 + 152);
      }

      if (a5)
      {
        *a5 = *(v12 + 158);
      }

      FigSimpleMutexUnlock();
      return 0;
    }

    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v15)
    {
      xdict = 0;
      FigPartialSampleTableAccessorGetSyncInfo(*(v12 + 24), &xdict);
      OUTLINED_FUNCTION_33_12();
      if (!v17)
      {
        v18 = v16;
        if (!v16)
        {
          if (v7)
          {
            *v7 = xdict;
          }

          if (v6)
          {
            *v6 = BYTE1(xdict);
          }

          if (v5)
          {
            *v5 = HIDWORD(xdict);
          }

          if (a5)
          {
            *a5 = BYTE2(xdict);
          }

          return 0;
        }

        LODWORD(length) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = length;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          *v31 = 136315394;
          *&v31[4] = "remoteSampleCursor_GetDependencyInfo";
          v32 = 1024;
          v33 = v18;
          OUTLINED_FUNCTION_25_17();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    CMBaseObjectGetDerivedStorage();
    v34[0] = 0;
    xdict = 0;
    *v31 = 0;
    length = 0;
    ObjectID = remoteSampleCursor_GetObjectID(v10, v34);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          data = xpc_dictionary_get_data(xdict, "SampleCursorSyncInfo", &length);
          if (data && length == 8)
          {
            v13 = 0;
            v24 = *data;
            v25 = HIDWORD(*data);
            v26 = *data >> 40;
            v27 = HIWORD(*data);
LABEL_39:
            FigXPCRelease();
            FigXPCRelease();
            if (v13)
            {
              return v13;
            }

            if (v7)
            {
              *v7 = v25;
            }

            if (v6)
            {
              *v6 = v26;
            }

            if (v5)
            {
              *v5 = v24;
            }

            if (a5)
            {
              v13 = 0;
              *a5 = v27;
              return v13;
            }

            return 0;
          }

          OUTLINED_FUNCTION_111();
          ObjectID = FigSignalErrorAtGM();
        }
      }
    }

    v13 = ObjectID;
    LOBYTE(v27) = 0;
    LOBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    LODWORD(v24) = 0;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_111();

  return FigSignalErrorAtGM();
}

uint64_t remoteSampleCursor_TestReorderingBoundary(uint64_t a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_187();
  xdict[20] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  xdict[0] = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  memcpy(v58, MEMORY[0x1E6960CF0], sizeof(v58));
  v53 = OUTLINED_FUNCTION_75_4(MEMORY[0x1E6960C70]);
  v54 = v8;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  if (!v4 || !v3 || a3 >= 2)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    goto LABEL_49;
  }

  v9 = &off_196E72000;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v50))
  {
    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (!v15)
    {
      goto LABEL_50;
    }

    DecodeToPresentationTimeDeltaRange = FigPartialSampleTableAccessorGetDecodeToPresentationTimeDeltaRange(*(DerivedStorage + 24), &v55, &v53);
    if (DecodeToPresentationTimeDeltaRange || (DecodeToPresentationTimeDeltaRange = FigPartialSampleTableAccessorGetSampleTiming(*(DerivedStorage + 24), __dst)) != 0 || (DecodeToPresentationTimeDeltaRange = FigPartialSampleTableAccessorGetSampleTiming(*(v7 + 24), v58)) != 0)
    {
      v14 = DecodeToPresentationTimeDeltaRange;
      v25 = 0;
      goto LABEL_45;
    }

    if (v56 == v53.n128_u32[2])
    {
      v17 = v56 == LODWORD(__dst[7]) && LODWORD(__dst[7]) == LODWORD(v58[4]);
      if (v17)
      {
        if (a3)
        {
          OUTLINED_FUNCTION_72_4();
          v21 = v19 == v20;
        }

        else
        {
          OUTLINED_FUNCTION_72_4();
          if (v19 ^ v20 | v17)
          {
            v21 = 1;
          }

          else
          {
            v21 = 0;
          }
        }

        *(v18 + 24) = v21;
        goto LABEL_49;
      }
    }

    goto LABEL_50;
  }

  FigSimpleMutexLock();
  memcpy(__dst, (DerivedStorage + 80), sizeof(__dst));
  OUTLINED_FUNCTION_75_4((DerivedStorage + 260));
  v53 = *(DerivedStorage + 284);
  v54 = *(DerivedStorage + 300);
  FigSimpleMutexUnlock();
  if ((v57 & 1) == 0 || (v53.n128_u8[12] & 1) == 0)
  {
    if (remoteSampleCursor_GetObjectID(v4, &v52) || remoteSampleCursor_GetObjectID(v3, &v51))
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_2_75();
    OUTLINED_FUNCTION_40_9();
    v45 = __remoteSampleCursor_TestReorderingBoundary_block_invoke;
    v46 = &__block_descriptor_tmp_86;
    v47 = v52;
    v48 = v51;
    v49 = a3;
    v38 = MEMORY[0x1E69E9820];
    v39 = v10;
    v40 = __remoteSampleCursor_TestReorderingBoundary_block_invoke_2;
    v41 = &unk_1E7486030;
    v42 = &v60;
    v14 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
    goto LABEL_44;
  }

  FigSimpleMutexLock();
  memcpy(v58, (v7 + 80), sizeof(v58));
  FigSimpleMutexUnlock();
  if (v56 != v53.n128_u32[2] || (v56 == LODWORD(__dst[7]) ? (v22 = LODWORD(__dst[7]) == LODWORD(v58[4])) : (v22 = 0), !v22))
  {
LABEL_50:
    v34 = MEMORY[0x1E69E9820];
    v35 = *(v9 + 312);
    LODWORD(v36) = a3;
    remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v4, v3, 1935830628, xdict, &v34, v11, v12, v13, v31, v32, v33, MEMORY[0x1E69E9820], v35, __remoteSampleCursor_TestReorderingBoundary_block_invoke_88, &__block_descriptor_tmp_89, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    if (!v29)
    {
      v30 = xpc_dictionary_get_BOOL(xdict[0], "SampleCursorTestReorderingBoundaryResult");
      *(v61 + 24) = v30;
    }

    goto LABEL_49;
  }

  v14 = 0;
  if (a3)
  {
    OUTLINED_FUNCTION_72_4();
    v24 = v19 == v20;
  }

  else
  {
    OUTLINED_FUNCTION_72_4();
    if (v19 ^ v20 | v17)
    {
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  *(v23 + 24) = v24;
LABEL_44:
  v25 = v14 == 0;
LABEL_45:
  if (v14 != -17712 && v14)
  {
    HIDWORD(v37) = 0;
    BYTE3(v37) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = &off_196E72000;
  }

  if (!v25)
  {
    goto LABEL_50;
  }

LABEL_49:
  FigXPCRelease();
  v27 = *(v61 + 24);
  _Block_object_dispose(&v60, 8);
  return v27;
}

uint64_t remoteSampleCursor_CreateSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if (!v4)
  {
    OUTLINED_FUNCTION_111();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  if (a3)
  {
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v29))
    {
      ObjectID = remoteSampleCursor_GetObjectID(v4, &v33);
      if (ObjectID)
      {
        goto LABEL_17;
      }

      if (v3)
      {
        ObjectID = remoteSampleCursor_GetObjectID(v3, &v32);
        if (ObjectID)
        {
          goto LABEL_17;
        }

        v11 = v32;
      }

      else
      {
        v11 = 0;
      }

      v23 = MEMORY[0x1E69E9820];
      v24 = 0x40000000;
      v25 = __remoteSampleCursor_CreateSampleBuffer_block_invoke;
      v26 = &__block_descriptor_tmp_90_0;
      v27 = v33;
      v28 = v11;
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v19 = __remoteSampleCursor_CreateSampleBuffer_block_invoke_2;
      v20 = &__block_descriptor_tmp_91_0;
      v21 = DerivedStorage;
      v22 = a3;
      if (!FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply())
      {
        goto LABEL_10;
      }
    }

    remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v4, v3, 1936941670, &v31, &__block_literal_global_94, v7, v8, v9, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    if (!ObjectID)
    {
      BlockBufferData = FigXPCMessageCreateBlockBufferData();
      v15 = v30;
      if (BlockBufferData)
      {
        SampleBufferFromSerializedAtomDataBlockBuffer = BlockBufferData;
        if (!v30)
        {
          goto LABEL_11;
        }
      }

      else
      {
        SampleBufferFromSerializedAtomDataBlockBuffer = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
        v15 = v30;
        if (!v30)
        {
          goto LABEL_11;
        }
      }

      CFRelease(v15);
      goto LABEL_11;
    }

LABEL_17:
    SampleBufferFromSerializedAtomDataBlockBuffer = ObjectID;
    goto LABEL_11;
  }

LABEL_10:
  SampleBufferFromSerializedAtomDataBlockBuffer = 0;
LABEL_11:
  FigXPCRelease();
  return SampleBufferFromSerializedAtomDataBlockBuffer;
}

uint64_t remoteSampleCursor_StepByDecodeTime(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  v35 = 0;
  if (a1)
  {
    v3 = DerivedStorage;
    if (!remoteSampleCursor_GetObjectID(a1, &v41))
    {
      if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v35) || (OUTLINED_FUNCTION_2_75(), OUTLINED_FUNCTION_40_9(), v33 = __remoteSampleCursor_StepByDecodeTime_block_invoke, v34 = &__block_descriptor_tmp_95_0, OUTLINED_FUNCTION_1_76(), v27 = __remoteSampleCursor_StepByDecodeTime_block_invoke_2, v28 = &unk_1E74860F8, OUTLINED_FUNCTION_80_3()))
      {
        OUTLINED_FUNCTION_2_49();
        OUTLINED_FUNCTION_43_7();
        v9 = OUTLINED_FUNCTION_30_13();
        remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v9, v10, 1936942196, v11, v12, v13, v14, v15, v19, v20, v21, __remoteSampleCursor_StepByDecodeTime_block_invoke_3, &__block_descriptor_tmp_97, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
        if (!v16)
        {
          v17 = xpc_dictionary_get_BOOL(v40, "SampleCursorPositionWasPinned");
          *(v37 + 24) = v17;
          v18 = *(v3 + 48);
          if (v18)
          {
            CFRelease(v18);
            *(v3 + 48) = 0;
          }

          remoteSampleCursor_updateUpcomingSamplesCache(a1, v40);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_68_5();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  FigXPCRelease();
  _Block_object_dispose(&v36, 8);
  return v7;
}

uint64_t remoteSampleCursor_StepByPresentationTime(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  v35 = 0;
  if (a1)
  {
    v3 = DerivedStorage;
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v35) || !remoteSampleCursor_GetObjectID(a1, &v41) && (OUTLINED_FUNCTION_2_75(), OUTLINED_FUNCTION_40_9(), v33 = __remoteSampleCursor_StepByPresentationTime_block_invoke, v34 = &__block_descriptor_tmp_98, OUTLINED_FUNCTION_1_76(), v27 = __remoteSampleCursor_StepByPresentationTime_block_invoke_2, v28 = &unk_1E7486160, OUTLINED_FUNCTION_80_3()))
    {
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v9 = OUTLINED_FUNCTION_30_13();
      remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v9, v10, 1936945268, v11, v12, v13, v14, v15, v19, v20, v21, __remoteSampleCursor_StepByPresentationTime_block_invoke_3, &__block_descriptor_tmp_100, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      if (!v16)
      {
        v17 = xpc_dictionary_get_BOOL(v40, "SampleCursorPositionWasPinned");
        *(v37 + 24) = v17;
        v18 = *(v3 + 48);
        if (v18)
        {
          CFRelease(v18);
          *(v3 + 48) = 0;
        }

        remoteSampleCursor_updateUpcomingSamplesCache(a1, v40);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_68_5();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  FigXPCRelease();
  _Block_object_dispose(&v36, 8);
  return v7;
}

uint64_t remoteSampleCursor_CopySampleLocation(uint64_t a1, void *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  length[5] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v43 = 0;
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_429();
    goto LABEL_54;
  }

  v11 = DerivedStorage;
  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v43))
  {
    FigSimpleMutexLock();
    *v41 = *(v11 + 160);
    v12 = *(v11 + 176);
    v13 = *(v11 + 184);
    v14 = FigSimpleMutexUnlock();
    if (v13 | v12)
    {
      if (!a5 || !v13)
      {
LABEL_10:
        if (a4)
        {
          if (v12)
          {
            ObjectID = remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID(v14, v12, a4);
            if (ObjectID)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_19;
      }

      ObjectID = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(*v11 + 48), @"DataSourceURL", v13, &cf);
      if (ObjectID)
      {
LABEL_55:
        v22 = ObjectID;
        goto LABEL_24;
      }

      if (cf)
      {
        v16 = CFGetTypeID(cf);
        v14 = CFURLGetTypeID();
        if (v16 == v14)
        {
          *a5 = cf;
          cf = 0;
          goto LABEL_10;
        }
      }

      OUTLINED_FUNCTION_429();
LABEL_54:
      ObjectID = FigSignalErrorAtGM();
      goto LABEL_55;
    }

    v39 = 0;
    v45 = 0;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v45))
    {
      ObjectID = remoteSampleCursor_GetObjectID(a1, &v39);
      if (ObjectID)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_22_19();
      length[0] = v29;
      length[1] = 0x40000000;
      length[2] = __remoteSampleCursor_copySampleLocationFromEventLinkServer_block_invoke;
      length[3] = &__block_descriptor_tmp_101;
      length[4] = v39;
      xdict = MEMORY[0x1E69E9820];
      v47 = 0x40000000;
      v48 = &__remoteSampleCursor_copySampleLocationFromEventLinkServer_block_invoke_2;
      v49 = &__block_descriptor_tmp_102;
      v50 = v41;
      v51 = a1;
      v52 = a5;
      v53 = a4;
      ObjectID = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      if (ObjectID)
      {
        goto LABEL_55;
      }
    }

LABEL_19:
    if (a2)
    {
      *a2 = v41[0];
    }

    if (a3)
    {
      *a3 = v41[1];
    }

    goto LABEL_23;
  }

  if (qword_1EAF19470 != -1)
  {
    dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
  }

  OUTLINED_FUNCTION_17_21();
  if (v20)
  {
    v41[0] = 0;
    v41[1] = 0;
    v39 = 0;
    v40 = 0;
    v21 = FigPartialSampleTableAccessorCopyUnrefinedSampleLocationInTranslatedByteStreamOrDataSourceURL(*(v11 + 24), v41, &v39, a4, a5);
    if (!v21)
    {
      if (v40)
      {
        OUTLINED_FUNCTION_429();
        goto LABEL_54;
      }

      goto LABEL_19;
    }

    v24 = v21;
    OUTLINED_FUNCTION_33_12();
    if (!v25)
    {
      LODWORD(v45) = 0;
      HIBYTE(v38) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = v45;
      value = os_log_and_send_and_compose_flags_and_os_log_type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        LODWORD(length[0]) = 136315394;
        *(length + 4) = "remoteSampleCursor_CopySampleLocation";
        WORD2(length[1]) = 1024;
        *(&length[1] + 6) = v24;
        OUTLINED_FUNCTION_25_17();
        v35 = length;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  length[0] = 0;
  remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, 0, 1936944227, &xdict, &__block_literal_global_105_0, v17, v18, v19, v35, v36, value, v38, v39, v40, v41[0], v41[1], v42, v43, cf, v45, 0, v47, v48, v49, v50, v51);
  v22 = v30;
  if (v30)
  {
    FigXPCRelease();
  }

  else
  {
    data = xpc_dictionary_get_data(xdict, "SampleCursorSampleStorageRange", length);
    if (data && length[0] == 16)
    {
      v33 = *data;
      v32 = data[1];
      if (!(a4 | a5))
      {
        FigXPCRelease();
        goto LABEL_44;
      }

      v34 = CMBaseObjectGetDerivedStorage();
      v22 = CopyByteStreamOrDataSource(v34, xdict, a4, a5);
    }

    else
    {
      OUTLINED_FUNCTION_429();
      v22 = FigSignalErrorAtGM();
      v33 = 0;
      v32 = 0;
    }

    FigXPCRelease();
    if (!v22)
    {
LABEL_44:
      if (a2)
      {
        *a2 = v33;
      }

      if (a3)
      {
        v22 = 0;
        *a3 = v32;
        goto LABEL_24;
      }

LABEL_23:
      v22 = 0;
    }
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

void remoteSampleCursor_CopyChunkDetails(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, void *a4, void *a5, void *a6, int64_t *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10)
{
  v73 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = 0;
  if (a1)
  {
    v17 = DerivedStorage;
    v47 = a8;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v57))
    {
      v56 = 0uLL;
      v55 = 0uLL;
      *type = 0;
      v59 = 0;
      if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(type) && (remoteSampleCursor_GetObjectID(a1, &v59) || (OUTLINED_FUNCTION_22_19(), *length = v37, *&length[8] = 0x40000000, *&length[16] = __remoteSampleCursor_copySampleChunkInfoFromEventLinkServer_block_invoke, v71 = &__block_descriptor_tmp_106, v72 = v59, OUTLINED_FUNCTION_20_14(), v61 = v38, v62 = &__remoteSampleCursor_copySampleChunkInfoFromEventLinkServer_block_invoke_2, v63 = &__block_descriptor_tmp_107, v64 = &v55, v65 = &v56, v66 = a7, v67 = a1, v68 = a3, v69 = a2, FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply())))
      {
        v25 = 1;
      }

      else
      {
        if (a4)
        {
          *a4 = v56.n128_u64[0];
        }

        if (a5)
        {
          *a5 = v56.n128_u64[1];
        }

        if (a6)
        {
          *a6 = v55.n128_u64[0];
        }

        if (a8)
        {
          *a8 = v55.n128_u8[8];
        }

        if (a9)
        {
          *a9 = v55.n128_u8[9];
        }

        v25 = 0;
        if (a10)
        {
          *a10 = v55.n128_u8[10];
        }
      }
    }

    else
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (!v21)
      {
        goto LABEL_29;
      }

      v56 = 0uLL;
      v55 = 0uLL;
      FigPartialSampleTableAccessorCopyChunkDetailsInTranslatedByteStreamOrDataSourceURL(*(v17 + 24), &v56, a2, a3, &v55, a7);
      OUTLINED_FUNCTION_33_12();
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v24 = v22;
        if (v22)
        {
          LODWORD(v59) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v27 = v59;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v28 = v27;
          }

          else
          {
            v28 = v27 & 0xFFFFFFFE;
          }

          if (v28)
          {
            *length = 136315394;
            *&length[4] = "remoteSampleCursor_CopyChunkDetails";
            *&length[12] = 1024;
            *&length[14] = v24;
            OUTLINED_FUNCTION_25_17();
            v42 = length;
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          v25 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          if (a4)
          {
            *a4 = v56.n128_u64[0];
          }

          if (a5)
          {
            *a5 = v56.n128_u64[1];
          }

          if (a6)
          {
            *a6 = v55.n128_u64[0];
          }

          if (a8)
          {
            *a8 = v55.n128_u8[8];
          }

          if (a9)
          {
            *a9 = v55.n128_u8[9];
          }

          v25 = 0;
          if (a10)
          {
            *a10 = v55.n128_u8[10];
          }
        }
      }
    }

    if (!v25)
    {
LABEL_28:
      OUTLINED_FUNCTION_116_1();
      return;
    }

LABEL_29:
    *length = 0;
    remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, 0, 1935894635, &xdict, &__block_literal_global_110, v18, v19, v20, v42, v43, v44, v45, v47, a10, a5, a6, a9, v55.n128_i64[0], v55.n128_i64[1], v56.n128_i64[0], v56.n128_i64[1], v57, *type, v59, 0, v61);
    if (v29)
    {
      FigXPCRelease();
      goto LABEL_28;
    }

    data = xpc_dictionary_get_data(xdict, "SampleCursorChunkInfo", length);
    if (data && *length == 16)
    {
      v31 = *data;
      LOBYTE(v46) = data[8];
      BYTE4(v46) = data[9];
      v32 = data[10];
      v33 = xpc_dictionary_get_data(xdict, "SampleCursorSampleStorageRange", length);
      if (v33 && *length == 16)
      {
        v34 = *v33;
        v35 = v33[1];
        if (a7)
        {
          *a7 = xpc_dictionary_get_int64(xdict, "SampleCursorSampleIndex");
        }

        v36 = v32;
        if (!(a2 | a3))
        {
          FigXPCRelease();
          goto LABEL_38;
        }

        v39 = CMBaseObjectGetDerivedStorage();
        v40 = CopyByteStreamOrDataSource(v39, xdict, a2, a3);
      }

      else
      {
        v36 = v32;
        OUTLINED_FUNCTION_723();
        v40 = FigSignalErrorAtGM();
        v34 = 0;
        v35 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_723();
      v40 = FigSignalErrorAtGM();
      v34 = 0;
      v35 = 0;
      v31 = 0;
      v46 = 0;
      v36 = 0;
    }

    FigXPCRelease();
    if (v40)
    {
      goto LABEL_28;
    }

LABEL_38:
    if (a4)
    {
      *a4 = v34;
    }

    if (v51)
    {
      *v51 = v35;
    }

    if (v53)
    {
      *v53 = v31;
    }

    if (v48)
    {
      *v48 = v46;
    }

    if (v54)
    {
      *v54 = BYTE4(v46);
    }

    if (v49)
    {
      *v49 = v36;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_723();
  OUTLINED_FUNCTION_116_1();

  FigSignalErrorAtGM();
}

uint64_t remoteSampleCursor_CopyFormatDescription()
{
  OUTLINED_FUNCTION_187();
  v43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    if (!v0)
    {
      return 0;
    }

    v3 = DerivedStorage;
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v23))
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v7)
      {
        FigPartialSampleTableAccessorCopyTranslatedFormatDescription(*(v3 + 24), v0);
        v9 = v8;
        if (!v8)
        {
          return v9;
        }

        if (v8 != -17712)
        {
          LODWORD(v29) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
          if (OUTLINED_FUNCTION_115_1(v12))
          {
            *v40 = 136315394;
            *&v40[4] = "remoteSampleCursor_CopyFormatDescription";
            *&v40[12] = 1024;
            *&v40[14] = v9;
            OUTLINED_FUNCTION_25_17();
            v20 = v40;
            OUTLINED_FUNCTION_7_1();
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414();
        }
      }

LABEL_19:
      *v40 = 0;
      remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v1, 0, 1935962979, v34, &__block_literal_global_115, v4, v5, v6, v20, v21, v22, v23, v24, *type, v26, v27, v28, v29, v30, v31, v32, v33, 0, v34[1], v35, v36);
      if (v18)
      {
        v9 = v18;
      }

      else
      {
        v9 = FigXPCMessageCopyFormatDescription();
        if (!v9)
        {
          *v0 = *v40;
          *v40 = 0;
        }
      }

      FigXPCRelease();
      if (*v40)
      {
        CFRelease(*v40);
      }

      return v9;
    }

    v33 = 0;
    v13 = CMBaseObjectGetDerivedStorage();
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = 0;
    *type = 0;
    v26 = type;
    v27 = 0x2000000000;
    v28 = 0;
    v24 = 0;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v24))
    {
      ObjectID = remoteSampleCursor_GetObjectID(v1, &v33);
      if (ObjectID)
      {
LABEL_16:
        v17 = ObjectID;
        goto LABEL_26;
      }

      FigSimpleMutexLock();
      *(v26 + 3) = *(v13 + 192);
      FigSimpleMutexUnlock();
      if (*(v26 + 3))
      {
        v15 = OUTLINED_FUNCTION_36_11();
        ObjectID = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(v15, @"FormatDescription", v16, v30 + 3);
        goto LABEL_16;
      }

      *v40 = MEMORY[0x1E69E9820];
      *&v40[8] = 0x40000000;
      *&v40[16] = __remoteSampleCursor_copyFormatDescriptionFromEventLinkServer_block_invoke;
      v41 = &__block_descriptor_tmp_111;
      v42 = v33;
      OUTLINED_FUNCTION_2_75();
      OUTLINED_FUNCTION_40_9();
      v35 = __remoteSampleCursor_copyFormatDescriptionFromEventLinkServer_block_invoke_2;
      v36 = &unk_1E7486288;
      v37 = type;
      v38 = &v29;
      v39 = v1;
      v17 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      FigSimpleMutexLock();
      *(v13 + 192) = *(v26 + 3);
      FigSimpleMutexUnlock();
    }

    else
    {
      v17 = 0;
    }

LABEL_26:
    v19 = v30;
    *v0 = v30[3];
    v19[3] = 0;
    _Block_object_dispose(type, 8);
    _Block_object_dispose(&v29, 8);
    if (v17)
    {
      goto LABEL_19;
    }

    return 0;
  }

  OUTLINED_FUNCTION_243();

  return FigSignalErrorAtGM();
}

uint64_t remoteSampleCursor_StepInDecodeOrderAndReportStepsTaken(const void *a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_111();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  if (a2)
  {
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v31))
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v7)
      {
        v25[0] = 0;
        if (!remoteSampleCursor_stepInCacheAndReportStepsTaken(a1, 1, a2, v25) && v25[0] == a2)
        {
          if (a3)
          {
            *a3 = a2;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_14;
    }

    ObjectID = remoteSampleCursor_GetObjectID(a1, &v32);
    if (ObjectID)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_2_75();
    OUTLINED_FUNCTION_40_9();
    v26 = __remoteSampleCursor_StepInDecodeOrderAndReportStepsTaken_block_invoke;
    v27 = &__block_descriptor_tmp_116;
    v28 = v32;
    v29 = a2;
    v30 = a1;
    OUTLINED_FUNCTION_1_76();
    if (OUTLINED_FUNCTION_79_3())
    {
LABEL_14:
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v8 = OUTLINED_FUNCTION_37_11();
      remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v8, v10, v9 | 0x73640000, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v26, v27);
      if (!ObjectID)
      {
        if (a3)
        {
          *a3 = xpc_dictionary_get_int64(v33, "SampleCursorStepsTaken");
        }

        remoteSampleCursor_updateUpcomingSamplesCache(a1, v33);
        goto LABEL_18;
      }

LABEL_21:
      v16 = ObjectID;
      goto LABEL_19;
    }
  }

LABEL_18:
  v16 = 0;
LABEL_19:
  FigXPCRelease();
  return v16;
}

uint64_t remoteSampleCursor_StepInPresentationOrderAndReportStepsTaken(const void *a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  v33 = 0;
  if (qword_1EAF19470 != -1)
  {
    dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
  }

  v6 = _MergedGlobals_4;
  v31 = 0;
  v32 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_111();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  if (a2)
  {
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v31))
    {
      if (v6)
      {
        v25[0] = 0;
        if (!remoteSampleCursor_stepInCacheAndReportStepsTaken(a1, 0, a2, v25) && v25[0] == a2)
        {
          if (a3)
          {
            *a3 = a2;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_14;
    }

    ObjectID = remoteSampleCursor_GetObjectID(a1, &v32);
    if (ObjectID)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_2_75();
    OUTLINED_FUNCTION_40_9();
    v26 = __remoteSampleCursor_StepInPresentationOrderAndReportStepsTaken_block_invoke;
    v27 = &__block_descriptor_tmp_119_0;
    v28 = v32;
    v29 = a2;
    v30 = a1;
    OUTLINED_FUNCTION_1_76();
    if (OUTLINED_FUNCTION_79_3())
    {
LABEL_14:
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v8 = OUTLINED_FUNCTION_37_11();
      remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(v8, v10, v9 | 0x73700000, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v26, v27);
      if (!ObjectID)
      {
        if (a3)
        {
          *a3 = xpc_dictionary_get_int64(v33, "SampleCursorStepsTaken");
        }

        remoteSampleCursor_updateUpcomingSamplesCache(a1, v33);
        goto LABEL_18;
      }

LABEL_21:
      v16 = ObjectID;
      goto LABEL_19;
    }
  }

LABEL_18:
  v16 = 0;
LABEL_19:
  FigXPCRelease();
  return v16;
}

uint64_t remoteSampleCursor_getMinimumUpcomingPresentationTime(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v24 = v9;
  *&v22.value = v23;
  v22.epoch = v9;
  if (a1 && a3 && a4)
  {
    v10 = DerivedStorage;
    v17 = v23;
    if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v21))
    {
      if (qword_1EAF19470 != -1)
      {
        dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
      }

      OUTLINED_FUNCTION_17_21();
      if (v14)
      {
        if (a2)
        {
          v15 = *(CMBaseObjectGetDerivedStorage() + 24);
        }

        else
        {
          v15 = 0;
        }

        FigPartialSampleTableAccessorGetMinimumUpcomingPresentationTime(*(v10 + 24), v15, &v23, &v22);
        OUTLINED_FUNCTION_33_12();
        if (v16)
        {
          result = 4294954514;
        }

        else
        {
          result = result;
        }

        goto LABEL_20;
      }

      goto LABEL_15;
    }

    FigSimpleMutexLock();
    v23 = *(v10 + 312);
    v24 = *(v10 + 328);
    v22 = *(v10 + 336);
    v11 = *(v10 + 308);
    FigSimpleMutexUnlock();
    if (v11)
    {
      if (a2)
      {
        if (v22.flags)
        {
          v12 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          memcpy(__dst, (v12 + 80), sizeof(__dst));
          FigSimpleMutexUnlock();
          time1 = v22;
          time2 = __dst[2];
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            v23 = *MEMORY[0x1E6960C88];
            v24 = *(MEMORY[0x1E6960C88] + 16);
            *&v22.value = v17;
            v22.epoch = v9;
            result = 4294954513;
LABEL_20:
            *a3 = v23;
            *(a3 + 16) = v24;
            *a4 = v22;
            return result;
          }
        }
      }

LABEL_15:
      result = 0;
      goto LABEL_20;
    }

    return 4294954513;
  }

  else
  {
    OUTLINED_FUNCTION_111();

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteSampleCursor_getBatchSampleTimingAndSizes(uint64_t a1, uint64_t a2, uint64_t a3, int64_t *a4, int64_t *a5, void *a6, int64_t *a7, void *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_374();
LABEL_38:
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v17 = DerivedStorage;
  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v48))
  {
    ObjectID = remoteSampleCursor_GetObjectID(a1, &v53);
    if (!ObjectID)
    {
      if (!a3)
      {
        v19 = 0;
        goto LABEL_8;
      }

      ObjectID = remoteSampleCursor_GetObjectID(a3, &v52);
      if (!ObjectID)
      {
        v19 = v52;
LABEL_8:
        v39 = MEMORY[0x1E69E9820];
        v40 = 0x40000000;
        v41 = __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke;
        v42 = &__block_descriptor_tmp_122;
        v43 = v53;
        v44 = v19;
        v45 = a2;
        v46 = a8;
        v47 = a6;
        OUTLINED_FUNCTION_1_76();
        v31 = __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_2;
        v32 = &__block_descriptor_tmp_123_0;
        v33 = a8;
        v34 = v17;
        v35 = a7;
        v36 = a6;
        v37 = a5;
        v38 = a4;
        ObjectID = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
      }
    }

LABEL_9:
    v20 = ObjectID;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_49();
  OUTLINED_FUNCTION_43_7();
  remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, a3, 1936941671, &v51, v30, v22, v23, v24, v29, v30[0], v30[1], __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_3, &__block_descriptor_tmp_124, a2, a8, a6, v30[7], v30[8], v31, v32, v33, v34, v35, v36, v37, v38);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  int64 = xpc_dictionary_get_int64(v51, "SampleCursorBatchNumSampleSizeEntries");
  v26 = xpc_dictionary_get_int64(v51, "SampleCursorBatchNumSampleTimingEntries");
  if (a8 && int64)
  {
    ObjectID = FigXPCMessageCreateBlockBufferData();
    if (ObjectID)
    {
      goto LABEL_9;
    }

    if (v50)
    {
      DataLength = CMBlockBufferGetDataLength(v50);
      if (int64 > a2 || DataLength != 8 * int64)
      {
LABEL_39:
        OUTLINED_FUNCTION_374();
        goto LABEL_38;
      }

      ObjectID = CMBlockBufferCopyDataBytes(v50, 0, DataLength, a8);
      if (ObjectID)
      {
        goto LABEL_9;
      }

      if (a7)
      {
        *a7 = int64;
      }
    }
  }

  if (a6 && v26)
  {
    ObjectID = FigXPCMessageCreateBlockBufferData();
    if (ObjectID)
    {
      goto LABEL_9;
    }

    if (v49)
    {
      v28 = CMBlockBufferGetDataLength(v49);
      if (v26 <= a2 && v28 == 72 * v26)
      {
        ObjectID = CMBlockBufferCopyDataBytes(v49, 0, v28, a6);
        if (ObjectID)
        {
          goto LABEL_9;
        }

        if (a5)
        {
          *a5 = v26;
        }

        goto LABEL_34;
      }

      goto LABEL_39;
    }
  }

LABEL_34:
  v20 = 0;
  if (a4)
  {
    *a4 = xpc_dictionary_get_int64(v51, "SampleCursorBatchNumSamplesIncluded");
  }

LABEL_10:
  FigXPCRelease();
  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v20;
}

uint64_t remoteSampleCursor_GetPresentationTimeRange()
{
  OUTLINED_FUNCTION_187();
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  if (v1)
  {
    v3 = DerivedStorage;
    if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v11))
    {
      FigSimpleMutexLock();
      v13 = *(v3 + 212);
      v4 = *(v3 + 224);
      v14 = *(v3 + 220);
      v5 = *(v3 + 228);
      v6 = *(v3 + 236);
      v7 = *(v3 + 244);
      v8 = *(v3 + 248);
      v9 = *(v3 + 252);
      FigSimpleMutexUnlock();
      if ((v4 & 1) == 0 || (v8 & 1) == 0 || v9 || v6 < 0)
      {
        result = remoteSampleCursor_GetObjectID(v1, &v12);
        if (!result)
        {
          OUTLINED_FUNCTION_2_49();
          OUTLINED_FUNCTION_43_7();
          return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
        }
      }

      else
      {
        result = 0;
        *v0 = v13;
        *(v0 + 8) = v14;
        *(v0 + 12) = v4;
        *(v0 + 16) = v5;
        *(v0 + 24) = v6;
        *(v0 + 32) = v7;
        *(v0 + 36) = v8;
        *(v0 + 40) = 0;
      }
    }

    else
    {
      return 4294954451;
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM();
  }

  return result;
}

void remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t value, xpc_object_t a12, xpc_object_t xdict, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_298_0();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  a14 = 0;
  a12 = 0;
  if (!v37)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    goto LABEL_21;
  }

  if (remoteSampleCursor_GetObjectID(v37, &a14))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_16_14();
  if (FigXPCCreateBasicMessage())
  {
    goto LABEL_21;
  }

  v47 = v31;
  v39 = *(*DerivedStorage + 40);
  xpc_dictionary_set_BOOL(xdict, "SampleCursorCursorMustCopy", v39 > 1);
  xpc_dictionary_set_int64(xdict, "SampleCursorMatchCacheSteps", DerivedStorage[4]);
  if (v35)
  {
    v40 = CMBaseObjectGetDerivedStorage();
    value = 0;
    if (remoteSampleCursor_GetObjectID(v35, &value))
    {
      goto LABEL_21;
    }

    v41 = *(*v40 + 40);
    v42 = v41 < 2;
    v43 = v41 > 1;
    xpc_dictionary_set_uint64(xdict, "SampleCursorSecondSampleCursorID", value);
    xpc_dictionary_set_BOOL(xdict, "SampleCursorSecondCursorMustCopy", v43);
    xpc_dictionary_set_int64(xdict, "SampleCursorSecondCursorMatchCacheSteps", v40[4]);
    if (!v33)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = 0;
    v42 = 1;
    if (!v33)
    {
      goto LABEL_11;
    }
  }

  empty = xpc_dictionary_create_empty();
  if (!empty)
  {
    goto LABEL_30;
  }

  if ((*(v29 + 16))(v29, empty))
  {
    goto LABEL_21;
  }

  xpc_dictionary_set_uint64(empty, *MEMORY[0x1E69615A8], v33);
  xpc_dictionary_set_value(xdict, "SampleCursorAdditionalOperation", empty);
LABEL_11:
  if (!FigXPCConnectionSendSyncMessageCreatingReply())
  {
    if (v39 < 2 || (v45 = xpc_dictionary_get_uint64(a12, *MEMORY[0x1E69615A0]), !remoteSampleCursor_finishCopy(v37, v45, *(*DerivedStorage + 32))))
    {
      DerivedStorage[4] = 0;
      if (v42 || (uint64 = xpc_dictionary_get_uint64(a12, "SampleCursorSecondSampleCursorID"), !remoteSampleCursor_finishCopy(v35, uint64, *(*v40 + 32))))
      {
        if (v35)
        {
          v40[4] = 0;
        }

        if (v33)
        {
          if (xpc_dictionary_get_value(a12, "SampleCursorAdditionalReply"))
          {
            if (v47)
            {
              *v47 = FigXPCRetain();
            }

            FigXPCMessageGetOSStatus();
            goto LABEL_21;
          }

LABEL_30:
          FigSignalErrorAtGM();
        }
      }
    }
  }

LABEL_21:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  if (DerivedStorage)
  {
    FigXPCConnectionKillServerOnTimeout();
  }

  OUTLINED_FUNCTION_297_0();
}

uint64_t remoteSampleCursor_finishCopy(const void *a1, uint64_t a2, const void *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_111();
    v9 = FigSignalErrorAtGM();
LABEL_19:
    v12 = v9;
    goto LABEL_10;
  }

  v7 = DerivedStorage;
  if (*DerivedStorage)
  {
    v14 = remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v15) ? FigServerSampleCursorSubscriptionUnsubscribeViaEventLink(a1, v15, *v7) : FigServerSampleCursorSubscriptionUnsubscribe(*v7);
    v12 = v14;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v8 = CFGetAllocator(a1);
  v9 = FigServerSampleCursorSubscriptionCreate(v8, a3, a2, *(*v7 + 48), &cf);
  if (v9)
  {
    goto LABEL_19;
  }

  v9 = FigServerSampleCursorSubscriptionSubscribe(cf);
  if (v9)
  {
    goto LABEL_19;
  }

  v10 = *v7;
  v11 = cf;
  *v7 = cf;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v12 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigServerSampleCursorSubscriptionUnsubscribeViaEventLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  if (FigAtomicDecrement32())
  {
    return 0;
  }

  FigXPCConnectionDisassociateObject();
  if (*(a3 + 24))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_65_5();
  result = remoteSampleCursor_GetObjectID(v5, v6);
  if (!result)
  {
    OUTLINED_FUNCTION_0_52();
    return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
  }

  return result;
}

uint64_t FigServerSampleCursorSubscriptionUnsubscribe(uint64_t a1)
{
  if (!a1 || FigAtomicDecrement32() || (FigXPCConnectionDisassociateObject(), *(a1 + 24)))
  {
    v2 = 0;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage();
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      v2 = FigXPCConnectionSendAsyncMessage();
      if (!v2)
      {
        *(a1 + 16) = 0;
      }
    }
  }

  FigXPCRelease();
  return v2;
}

uint64_t remoteSampleCursor_getSampleTimingInfoFromServer()
{
  OUTLINED_FUNCTION_180_1();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_9();
  ObjectID = remoteSampleCursor_GetObjectID(v1, &v7);
  if (ObjectID)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_11;
  }

  ObjectID = OUTLINED_FUNCTION_61_6();
  if (ObjectID)
  {
    goto LABEL_11;
  }

  data = xpc_dictionary_get_data(v6[1], "SampleCursorSampleTimingInfo", v6);
  if (!data || v6[0] != 72)
  {
    ObjectID = FigSignalErrorAtGM();
LABEL_11:
    v4 = ObjectID;
    goto LABEL_9;
  }

  if (v0)
  {
    memcpy(v0, data, 0x48uLL);
  }

  v4 = 0;
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t CopyByteStreamOrDataSource(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = FigXPCMessageCopyCFURL();
  if (v6)
  {
    return v6;
  }

  v6 = FigXPCMessageCopyCFURL();
  if (v6)
  {
    return v6;
  }

  if (a4)
  {
    *a4 = 0;
    if (!a3)
    {
      return 0;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  v7 = 0;
  *a3 = 0;
  return v7;
}

void __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef cf, size_t lengthAtOffsetOut, char *dataPointerOut, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(v24, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
  {
    goto LABEL_2;
  }

  v25 = dataPointerOut;
  if ((dataPointerOut & 7) != 0 || lengthAtOffsetOut <= 0x197)
  {
    goto LABEL_2;
  }

  if (*(v23 + 32) && *(dataPointerOut + 42) && *(dataPointerOut + 44))
  {
    if (FigInMemoryDeserializerCopyCFType())
    {
      goto LABEL_2;
    }

    BytePtr = CFDataGetBytePtr(0);
    Length = CFDataGetLength(0);
    v28 = *(v25 + 44);
    if (Length < 8 * v28)
    {
      goto LABEL_22;
    }

    memcpy(*(v23 + 32), BytePtr, 8 * v28);
    v29 = *(v23 + 48);
    if (v29)
    {
      *v29 = *(v25 + 44);
    }
  }

  if (*(v23 + 56) && *(v25 + 43) && *(v25 + 45))
  {
    if (FigInMemoryDeserializerCopyCFType())
    {
      goto LABEL_2;
    }

    v30 = CFDataGetBytePtr(0);
    if (CFDataGetLength(0) >= (72 * *(v25 + 45)))
    {
      memcpy(*(v23 + 56), v30, 72 * *(v25 + 45));
      v31 = *(v23 + 64);
      if (v31)
      {
        *v31 = *(v25 + 45);
      }

      goto LABEL_19;
    }

LABEL_22:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
    goto LABEL_2;
  }

LABEL_19:
  v32 = *(v23 + 72);
  if (v32)
  {
    *v32 = *(v25 + 46);
  }

LABEL_2:
  OUTLINED_FUNCTION_860();
}

void remoteSampleCursor_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  FigSimpleMutexDestroy();
  v3 = *(v1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 64) = 0;
  }

  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v11))
  {
    FigServerSampleCursorSubscriptionUnsubscribeViaEventLink(a1, v11, *v1);
  }

  else
  {
    FigServerSampleCursorSubscriptionUnsubscribe(*v1);
  }

  if (*v1)
  {
    CFRelease(*v1);
    *v1 = 0;
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 16) = 0;
  }

  FigPartialSampleTableAccessorDestroy(*(v1 + 24));
  *(v1 + 24) = 0;
  v5 = *(v1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 40) = 0;
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 48) = 0;
  }

  v7 = *(v1 + 56);
  if (v7)
  {
    CFRelease(v7);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 360);
  if (v8)
  {
    CFRelease(v8);
    *(v1 + 360) = 0;
  }

  v9 = *(v1 + 368);
  if (v9)
  {
    CFRelease(v9);
    *(v1 + 368) = 0;
  }

  v10 = *(v1 + 376);
  if (v10)
  {
    CFRelease(v10);
    *(v1 + 376) = 0;
  }
}

void remoteSampleCursor_CopyProperty(uint64_t a1, CMTimeEpoch a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v40 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v39 = 0;
  if (!a2 || !a4)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    goto LABEL_51;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v39))
  {
    if (qword_1EAF19470 != -1)
    {
      dispatch_once(&qword_1EAF19470, &__block_literal_global_82);
    }

    OUTLINED_FUNCTION_17_21();
    if (v10)
    {
      if (FigCFEqual())
      {
        v11 = *(v9 + 24);
        if (v11)
        {
          cf.start.value = 0;
          if (FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes(v11, &cf))
          {
            goto LABEL_51;
          }

          value = cf.start.value;
          if (cf.start.value)
          {
            v13 = CFGetTypeID(cf.start.value);
            TypeID = CFNullGetTypeID();
            value = cf.start.value;
            if (v13 == TypeID)
            {
              if (cf.start.value)
              {
                CFRelease(cf.start.value);
              }

              goto LABEL_51;
            }
          }

LABEL_23:
          *a4 = value;
          goto LABEL_51;
        }
      }

      if (FigCFEqual())
      {
        v15 = *(v9 + 24);
        if (!v15)
        {
          goto LABEL_51;
        }

        v16 = *(MEMORY[0x1E6960C98] + 16);
        *&cf.start.value = *MEMORY[0x1E6960C98];
        *&cf.start.epoch = v16;
        *&cf.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
        if (FigPartialSampleTableAccessorGetPresentationTimeRange(v15, &cf) || (cf.start.flags & 1) == 0 || (cf.duration.flags & 1) == 0 || cf.duration.epoch || cf.duration.value < 0)
        {
          goto LABEL_51;
        }

        range = cf;
        value = CMTimeRangeCopyAsDictionary(&range, a3);
        goto LABEL_23;
      }
    }

    goto LABEL_49;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v51 = 0;
  v52 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v47 = 0;
  if (!remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v47))
  {
    v20 = 0;
    goto LABEL_38;
  }

  ObjectID = remoteSampleCursor_GetObjectID(a1, &v52);
  if (ObjectID)
  {
    goto LABEL_37;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v19 = *(v17 + 200);
    FigSimpleMutexUnlock();
    if (v19)
    {
      if (v19 == -1)
      {
        v20 = 0;
        v49[3] = 0;
        goto LABEL_38;
      }

      ObjectID = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(*v17 + 48), @"SampleDependencyAttributes", v19, v49 + 3);
      goto LABEL_37;
    }

LABEL_35:
    OUTLINED_FUNCTION_20_14();
    *&range.start.timescale = 0x40000000;
    range.start.epoch = __remoteSampleCursor_copyPropertyViaEventLink_block_invoke;
    range.duration.value = &__block_descriptor_tmp_131_0;
    *&range.duration.timescale = v52;
    range.duration.epoch = a2;
    v45 = v17;
    OUTLINED_FUNCTION_1_76();
    cf.start.epoch = __remoteSampleCursor_copyPropertyViaEventLink_block_invoke_2;
    cf.duration.value = &unk_1E7486470;
    *&cf.duration.timescale = &v48;
    cf.duration.epoch = a2;
    v42 = a1;
    v43 = v17;
    ObjectID = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
LABEL_37:
    v20 = ObjectID;
    goto LABEL_38;
  }

  if (!FigCFEqual())
  {
    goto LABEL_35;
  }

  FigSimpleMutexLock();
  v53 = *(v17 + 212);
  v21 = *(v17 + 224);
  v54 = *(v17 + 220);
  v37 = *(v17 + 228);
  v22 = *(v17 + 236);
  v23 = *(v17 + 244);
  v24 = *(v17 + 248);
  v25 = *(v17 + 252);
  FigSimpleMutexUnlock();
  if ((v21 & 1) == 0 || (v24 & 1) == 0 || v25 || v22 < 0)
  {
    goto LABEL_35;
  }

  v35 = *MEMORY[0x1E695E480];
  v46.start.value = v53;
  v46.start.timescale = v54;
  v46.start.flags = v21;
  v46.start.epoch = v37;
  v46.duration.value = v22;
  v46.duration.timescale = v23;
  v46.duration.flags = v24;
  v46.duration.epoch = 0;
  v36 = CMTimeRangeCopyAsDictionary(&v46, v35);
  v20 = 0;
  v49[3] = v36;
LABEL_38:
  v26 = v49[3];
  if (v26)
  {
    v27 = CFGetTypeID(v26);
    v28 = CFNullGetTypeID();
    v29 = v49;
    v30 = v49[3];
    if (v27 == v28)
    {
      if (!v20)
      {
        v20 = -12783;
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }

    else
    {
      *a4 = v30;
      v29[3] = 0;
    }
  }

  else if (!v20)
  {
    _Block_object_dispose(&v48, 8);
    goto LABEL_51;
  }

  _Block_object_dispose(&v48, 8);
  if ((v20 + 12784) >= 2 && v20)
  {
LABEL_49:
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    remoteSampleCursor_internalEnsureMatchingAndIndependentThenPerformOperation(a1, 0, 1935896697, &v40, v38, v31, v32, v33, v37, v38[0], v38[1], __remoteSampleCursor_CopyProperty_block_invoke, &__block_descriptor_tmp_130, a2, v39, v40, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v42, v43, range.start.value, *&range.start.timescale);
    if (!v34)
    {
      FigXPCMessageCopyCFObject();
    }
  }

LABEL_51:
  FigXPCRelease();
  OUTLINED_FUNCTION_116_1();
}

uint64_t remoteSampleCursor_SetProperty(uint64_t a1, uint64_t a2, const __CFBoolean *a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  result = remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v10);
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      if (a3 && (v7 = CFGetTypeID(a3), v7 == CFBooleanGetTypeID()))
      {
        Value = CFBooleanGetValue(a3);
        FigSimpleMutexLock();
        v9 = *(DerivedStorage + 208);
        *(DerivedStorage + 208) = Value;
        FigSimpleMutexUnlock();
        if (v9 == Value)
        {
          return 0;
        }

        else
        {
          result = remoteSampleCursor_GetObjectID(a1, &v11);
          if (!result)
          {
            OUTLINED_FUNCTION_0_52();
            return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_243();

        return FigSignalErrorAtGM();
      }
    }
  }

  return result;
}

BOOL __remoteSampleCursor_registerNewFormatDescriptionsFromMessage_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  blockBufferOut = 0;
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "SampleCursorFormatDescriptionOutOfBandID");
  if (uint64)
  {
    v6 = uint64;
    value = xpc_dictionary_get_value(xdict, "SampleCursorFormatDescription");
    v8 = *MEMORY[0x1E695E480];
    bytes_ptr = xpc_data_get_bytes_ptr(value);
    length = xpc_data_get_length(value);
    v11 = *MEMORY[0x1E695E498];
    v12 = xpc_data_get_length(value);
    v13 = CMBlockBufferCreateWithMemoryBlock(v8, bytes_ptr, length, v11, 0, 0, v12, 0, &blockBufferOut);
    OUTLINED_FUNCTION_12_7(v13);
    OUTLINED_FUNCTION_3_38();
    if (!v14)
    {
      FormatDescriptionFromSerializedAtomDataBlockBuffer = FigRemote_CreateFormatDescriptionFromSerializedAtomDataBlockBuffer();
      OUTLINED_FUNCTION_12_7(FormatDescriptionFromSerializedAtomDataBlockBuffer);
      OUTLINED_FUNCTION_3_38();
      v16 = cf;
      if (!v17)
      {
        v18 = FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID(*(*(a1 + 40) + 40), @"FormatDescription", v6, cf);
        OUTLINED_FUNCTION_12_7(v18);
        v16 = cf;
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    v21 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_12_7(v21);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  OUTLINED_FUNCTION_3_38();
  return v19 == 0;
}

uint64_t CreateCursorAtSampleInDecodeOrder(const void *a1, uint64_t a2, void *a3)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  cf = 0;
  v17 = 0;
  ObjectID = remoteSampleCursorService_GetObjectID(a1, &v23);
  if (ObjectID)
  {
    goto LABEL_25;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  if (remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&v16))
  {
    xpc_dictionary_set_BOOL(v22, "UseSimpleCache", 1);
  }

  ObjectID = FigXPCConnectionCopyMemoryOriginForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  ObjectID = FigXPCConnectionCopyMemoryRecipientForConnectedProcess();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  ObjectID = FigXPCConnectionSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_25;
  }

  uint64 = xpc_dictionary_get_uint64(v21, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    OUTLINED_FUNCTION_111();
    ObjectID = FigSignalErrorAtGM();
LABEL_25:
    updated = ObjectID;
    goto LABEL_13;
  }

  v8 = uint64;
  v9 = xpc_dictionary_get_uint64(v21, "SampleCursorOptionalMethods");
  v10 = CFGetAllocator(a1);
  ObjectID = FigServerSampleCursorSubscriptionCreate(v10, DerivedStorage[1], v8, DerivedStorage[3], &cf);
  if (ObjectID)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_47_6();
  v11 = CFGetAllocator(a1);
  ObjectID = CreateRemoteSampleCursor(v11, DerivedStorage[4], v9, &v15, cf, v18, v17, &v20);
  if (ObjectID)
  {
    goto LABEL_25;
  }

  v12 = v20;
  updated = remoteSampleCursor_updateSimpleCache(v20, v21);
  if (!updated)
  {
    remoteSampleCursor_updateUpcomingSamplesCache(v12, v21);
    *a3 = v12;
    v20 = 0;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (DerivedStorage)
  {
    FigXPCConnectionKillServerOnTimeout();
  }

  return updated;
}

uint64_t FigFormatReaderXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFormatReaderXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SetupCommonFormatReaderPropertyCache_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteFormatReader_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteTrackReader_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTrackReaderXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTrackReaderXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_GetObjectID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t InitCommonFormatReaderPropertyCacheMutex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteMetadataReader_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteFormatReader_CopyFormatReaderWithSecondaryConnection_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL remoteEditCursorService_CreateCursorAtTrackTime_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t remoteEditCursorService_CreateCursorAtTrackTime_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteEditCursor_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteEditCursor_Copy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursorService_CreateCursorAtFirstSampleInDecodeOrder_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursorService_CreateCursorAtLastSampleInDecodeOrder_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursorService_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServerSampleCursorSubscriptionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServerSampleCursorSubscriptionCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateRemoteSampleCursor_cold_3(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigServerSampleCursorSubscriptionSubscribe_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_Copy_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_Copy_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_copyDataSourceTranslatedFromOutOfBandID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSampleCursor_copyFormatDescriptionTranslatedFromOutOfBandID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLCaptionWriterForDocument_AddCaption(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 8))
  {
    v7 = DerivedStorage;
    FigBytePumpGetFigBaseObject(a1);
    v8 = CMBaseObjectGetDerivedStorage();
    started = FigTTMLDocumentWriterStartElement(*v8, 7);
    if (started)
    {
      return started;
    }

    started = FigTTMLDocumentWriterStartElement(*v8, 2);
    if (started)
    {
      return started;
    }

    started = FigTTMLDocumentWriterStartElement(*v8, 3);
    if (started)
    {
      return started;
    }

    *(v7 + 8) = 1;
  }

  cf.start.value = 0;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E6961240], v10, &cf);
    if (cf.start.value)
    {
      matched = figTTMLCaptionWriterForDocument_addImplicitRegionIdentifierToArrayRecursively(cf.start.value, Mutable);
      if (matched)
      {
        goto LABEL_44;
      }
    }
  }

  FigBytePumpGetFigBaseObject(a1);
  v15 = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v17 = *(v15 + 16);
  if (v17)
  {
    v17 = CFArrayGetCount(v17);
  }

  v18 = 0;
  v19 = v17 >= Count ? Count : v17;
  v20 = v19 & ~(v19 >> 63);
  while (v20 != v18)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v15 + 16), v18);
    v22 = CFArrayGetValueAtIndex(Mutable, v18++);
    if (!CFEqual(ValueAtIndex, v22))
    {
      v20 = v18 - 1;
      break;
    }
  }

  matched = figTTMLCaptionWriterForDocument_closeDivElementsToMatchRegionHierarchy(a1, v20);
  if (matched)
  {
    goto LABEL_44;
  }

  FigBytePumpGetFigBaseObject(a1);
  v23 = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    v24 = CFArrayGetCount(Mutable);
  }

  else
  {
    v24 = 0;
  }

  if (v24 > v20)
  {
    while (1)
    {
      v25 = CFArrayGetValueAtIndex(Mutable, v20);
      matched = FigTTMLDocumentWriterStartElement(*v23, 3);
      if (matched)
      {
        break;
      }

      CFArrayAppendValue(*(v23 + 16), v25);
      if (v24 == ++v20)
      {
        goto LABEL_28;
      }
    }

LABEL_44:
    v26 = matched;
    goto LABEL_29;
  }

LABEL_28:
  v26 = 0;
LABEL_29:
  if (cf.start.value)
  {
    CFRelease(cf.start.value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v26)
  {
    *&v32.start.value = *a3;
    *&v32.start.epoch = a3[1];
    *&v32.duration.timescale = a3[2];
    FigBytePumpGetFigBaseObject(a1);
    v27 = CMBaseObjectGetDerivedStorage();
    *&cf.start.value = *&v32.start.value;
    cf.start.epoch = v32.start.epoch;
    v28 = CMTimeCopyAsDictionary(&cf.start, v10);
    cf = v32;
    CMTimeRangeGetEnd(&time, &cf);
    v29 = CMTimeCopyAsDictionary(&time, v10);
    v30 = FigTTMLDocumentWriterStartElement(*v27, 4);
    if (!v30)
    {
      v30 = FigTTMLDocumentWriterSetAttribute(*v27, @"begin", v28);
      if (!v30)
      {
        v30 = FigTTMLDocumentWriterSetAttribute(*v27, @"end", v29);
        if (!v30)
        {
          v30 = FigTTMLDocumentWriterAddCaptionData(*v27, a2);
          if (!v30)
          {
            v30 = FigTTMLDocumentWriterEndElement(*v27);
          }
        }
      }
    }

    v26 = v30;
    if (v29)
    {
      CFRelease(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }

  return v26;
}

uint64_t figTTMLCaptionWriterForDocument_Finish(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = figTTMLCaptionWriterForDocument_closeDivElementsToMatchRegionHierarchy(a1, 0);
  if (!result)
  {
    if (*(DerivedStorage + 8))
    {
      FigBytePumpGetFigBaseObject(a1);
      v4 = CMBaseObjectGetDerivedStorage();
      result = FigTTMLDocumentWriterEndElement(*v4);
      if (!result)
      {
        result = FigTTMLDocumentWriterEndElement(*v4);
        if (!result)
        {
          result = FigTTMLDocumentWriterEndElement(*v4);
          if (!result)
          {
            result = FigTTMLDocumentWriterFlush(*v4);
            if (!result)
            {
              *(DerivedStorage + 8) = 0;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t figTTMLCaptionWriterForDocument_addImplicitRegionIdentifierToArrayRecursively(uint64_t a1, __CFArray *a2)
{
  cf1 = 0;
  cf = 0;
  value = 0;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = v4(CMBaseObject, *MEMORY[0x1E6961318], *MEMORY[0x1E695E480], &cf1);
  if (v6)
  {
    goto LABEL_21;
  }

  if (cf1 && !CFEqual(cf1, *MEMORY[0x1E695E4C0]))
  {
    v9 = 0;
    goto LABEL_15;
  }

  v7 = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_14:
    v9 = 4294954514;
    goto LABEL_15;
  }

  v9 = v8(v7, *MEMORY[0x1E6961300], v5, &cf);
  if (v9 || !cf)
  {
    goto LABEL_15;
  }

  v6 = figTTMLCaptionWriterForDocument_addImplicitRegionIdentifierToArrayRecursively(cf, a2);
  if (v6)
  {
LABEL_21:
    v9 = v6;
    goto LABEL_15;
  }

  v10 = FigCaptionRegionGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_14;
  }

  v9 = v11(v10, *MEMORY[0x1E6961338], v5, &value);
  v12 = value;
  if (!v9)
  {
    CFArrayAppendValue(a2, value);
    v12 = value;
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_15:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t figTTMLCaptionWriterForDocument_closeDivElementsToMatchRegionHierarchy(uint64_t a1, CFIndex a2)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = *(DerivedStorage + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  v5 = Count - a2;
  if (Count - a2 < 1)
  {
LABEL_7:
    v8.location = a2;
    v8.length = v5;
    CFArrayReplaceValues(*(DerivedStorage + 16), v8, 0, 0);
    return 0;
  }

  else
  {
    v6 = Count - a2;
    while (1)
    {
      result = FigTTMLDocumentWriterEndElement(*DerivedStorage);
      if (result)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t FigTTMLCaptionWriterCreateForDocument_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLCaptionWriterCreateForDocument_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLCaptionWriterCreateForDocument_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForUserData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5 && (a4 & 0x8000000000000000) == 0)
  {
    result = FigAtomStreamInitWithByteStream();
    if (!result)
    {
      result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (!result)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

CFIndex FigUserDataGetKeyCount(const void *a1, const void *a2)
{
  Mutable = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_6;
  }

  v9 = DerivedStorage;
  OUTLINED_FUNCTION_4_59();
  if (a2)
  {
    if (*(v9 + 16))
    {
      if (CFEqual(a2, @"udta"))
      {
        goto LABEL_8;
      }

      if (*(v9 + 16))
      {
LABEL_6:
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        return 0;
      }
    }

    if (!CFEqual(a2, @"uiso"))
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  if (*(v9 + 32))
  {
    return *(v9 + 24);
  }

  if (FigAtomStreamInitWithByteStream() || FigAtomStreamInitWithParent())
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_37();
  v11 = v3 | 0x736B0000u;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_27;
    }

    if (v2)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      if (!Mutable)
      {
        CFGetAllocator(a1);
        OUTLINED_FUNCTION_613();
        Mutable = CFSetCreateMutable(v14, v15, v16);
      }

      CFSetAddValue(Mutable, 0);
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  if (Atom == -12890 || Atom == -12893)
  {
LABEL_27:
    if (!Mutable)
    {
      return 0;
    }

    if (CurrentAtomTypeAndDataLength)
    {
      Count = 0;
    }

    else
    {
      Count = CFSetGetCount(Mutable);
      *(v9 + 24) = Count;
      *(v9 + 32) = 1;
    }

    goto LABEL_34;
  }

  Count = 0;
  if (!Mutable)
  {
    return Count;
  }

LABEL_34:
  CFRelease(Mutable);
  return Count;
}

uint64_t FigUserDataCopyKeyAtIndex(const void *a1, const void *a2, uint64_t a3, uint64_t a4, CFNumberRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a5)
  {
LABEL_7:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM();
  }

  v10 = DerivedStorage;
  OUTLINED_FUNCTION_4_59();
  if (a2)
  {
    if (*(v10 + 16))
    {
      if (CFEqual(a2, @"udta"))
      {
        goto LABEL_11;
      }

      if (*(v10 + 16))
      {
        goto LABEL_7;
      }
    }

    if (!CFEqual(a2, @"uiso"))
    {
      goto LABEL_7;
    }
  }

LABEL_11:
  if (*(v10 + 32) && *(v10 + 24) <= a3)
  {
    goto LABEL_7;
  }

  valuePtr = 0;
  v12 = FigAtomStreamInitWithByteStream();
  if (v12)
  {
    return v12;
  }

  v12 = FigAtomStreamInitWithParent();
  if (v12)
  {
    return v12;
  }

  Mutable = 0;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      v21 = CurrentAtomTypeAndDataLength;
      goto LABEL_28;
    }

    v15 = valuePtr;
    if (valuePtr != 1936419184)
    {
      if (!Mutable)
      {
        CFGetAllocator(a1);
        OUTLINED_FUNCTION_613();
        Mutable = CFSetCreateMutable(v16, v17, v18);
        v15 = valuePtr;
      }

      CFSetAddValue(Mutable, v15);
      if (CFSetGetCount(Mutable) - 1 == a3)
      {
        v21 = 0;
        *a5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        goto LABEL_28;
      }
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  if (Atom == -12893 || Atom == -12890)
  {
    v21 = 0;
  }

  else
  {
    v21 = Atom;
  }

LABEL_28:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

char *FigUserDataGetItemCount(int a1, char *a2, uint64_t a3)
{
  v37 = 0;
  v38 = 0;
  v36.location = 0;
  v36.length = 0;
  v35 = 0;
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
  v19 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    v9 = CMBaseObjectGetDerivedStorage();
    if (!UserDataCopyKeysInfoCommon(*(v9 + 16), a2, a3, &v38, &v37, &v36) && !FigAtomStreamInitWithByteStream() && !FigAtomStreamInitWithParent())
    {
      OUTLINED_FUNCTION_7_37();
      v11 = v3 | 0x736B0000;
      while (1)
      {
        if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
        {
          goto LABEL_4;
        }

        v12 = HIDWORD(v38);
        if (HIDWORD(v38) != a1 && HIDWORD(v38) != v11)
        {
          if (v37)
          {
            if (!CFArrayContainsValue(v37, v36, HIDWORD(v38)))
            {
              goto LABEL_18;
            }

            v12 = HIDWORD(v38);
          }

          else if (a3 && v38 != HIDWORD(v38))
          {
            goto LABEL_18;
          }

          if (*(v8 + 16) && (v12 & 0xFF000000) == 0xA9000000)
          {
            v14 = v35;
            if (v35 >= 4)
            {
              OUTLINED_FUNCTION_613();
              if (!FigAtomStreamReadCurrentAtomDataAndCreateBBuf())
              {
                v15 = 0;
                while (!CMBlockBufferGetDataPointer(cf, v15, 0, 0, &v19))
                {
                  v16 = bswap32(*v19) >> 16;
                  v17 = v16 + 4;
                  if (v16 <= 0xFFFB && v17 <= (v14 - v15))
                  {
                    ++a2;
                    v15 += v17;
                    if (v15 + 4 <= v14)
                    {
                      continue;
                    }
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  cf = 0;
                  goto LABEL_18;
                }
              }

              goto LABEL_4;
            }
          }

          else
          {
            ++a2;
          }
        }

LABEL_18:
        if (FigAtomStreamAdvanceToNextAtom())
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
  }

  a2 = 0;
LABEL_4:
  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return a2;
}

uint64_t FigUserDataCopyItemWithKeyAndIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5, unint64_t a6, uint64_t a7)
{
  v150 = 0;
  v148.length = 0;
  v149 = 0;
  v147 = 0;
  v148.location = 0;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v140 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v133 = 0u;
  dataPointerOut = 0;
  theBuffer = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_37_9();
    goto LABEL_83;
  }

  if (!(a6 | a7))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
    goto LABEL_148;
  }

  v16 = DerivedStorage;
  v17 = CMBaseObjectGetDerivedStorage();
  CurrentAtomTypeAndDataLength = UserDataCopyKeysInfoCommon(*(v17 + 16), a2, a3, &v150, &v149, &v148);
  if (CurrentAtomTypeAndDataLength || (CurrentAtomTypeAndDataLength = FigAtomStreamInitWithByteStream(), CurrentAtomTypeAndDataLength) || (CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent(), CurrentAtomTypeAndDataLength))
  {
LABEL_148:
    v7 = CurrentAtomTypeAndDataLength;
LABEL_149:
    a2 = 0;
    goto LABEL_88;
  }

  v122 = a5;
  v124 = a7;
  v97 = v8;
  v99 = a1;
  v19 = 0;
  key = @"locale";
  v103 = @"extendedLanguageTag";
  allocator = *MEMORY[0x1E695E480];
  v101 = @"languageCode";
  v110 = @"dataType";
  v113 = @"dataTypeNamespace";
  value = @"com.apple.quicktime.udta";
  v116 = @"key";
  v118 = @"keyspace";
  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_148;
    }

    v20 = HIDWORD(v150);
    if (HIDWORD(v150) == 1718773093 || HIDWORD(v150) == 1936419184)
    {
      goto LABEL_13;
    }

    if (!v149)
    {
      break;
    }

    if (CFArrayContainsValue(v149, v148, HIDWORD(v150)))
    {
      v20 = HIDWORD(v150);
      goto LABEL_18;
    }

LABEL_13:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      OUTLINED_FUNCTION_37_9();
      if (v54 != -12890 && v54 != -12893)
      {
        goto LABEL_88;
      }

LABEL_82:
      v7 = 0;
      goto LABEL_83;
    }
  }

  if (a3 && v150 != HIDWORD(v150))
  {
    goto LABEL_13;
  }

LABEL_18:
  if (*(v16 + 16) && (v20 & 0xFF000000) == 0xA9000000)
  {
    v22 = v147;
    if (v147 < 4)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_613();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!CurrentAtomTypeAndDataLength)
    {
      v120 = v16;
      v128 = a6;
      v23 = 0;
      while (1)
      {
        CurrentAtomTypeAndDataLength = CMBlockBufferGetDataPointer(theBuffer, v23, 0, 0, &dataPointerOut);
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_148;
        }

        v29 = dataPointerOut;
        v30 = bswap32(*dataPointerOut) >> 16;
        v31 = v30 + 4;
        if (v30 > 0xFFFB || v31 > (v22 - v23))
        {
LABEL_37:
          a2 = 1;
          a6 = v128;
          v16 = v120;
          goto LABEL_70;
        }

        if (a4 == v19)
        {
          break;
        }

        v23 += v31;
        ++v19;
        if (v23 + 4 > v22)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v154) = 0;
      v33 = bswap32(*(dataPointerOut + 1));
      v34 = HIWORD(v33);
      LOWORD(valuePtr) = HIWORD(v33);
      v35 = v128;
      if (v128)
      {
        v36 = v122;
        CurrentAtomTypeAndDataLength = FigCFStringCreateWithBytesAndMovieLangCode();
        v7 = CurrentAtomTypeAndDataLength;
        v37 = v124;
        if (CurrentAtomTypeAndDataLength == -12993)
        {
          CurrentAtomTypeAndDataLength = CFDataCreate(v122, v29 + 4, v30);
          if (CurrentAtomTypeAndDataLength)
          {
            v7 = 0;
            *v128 = CurrentAtomTypeAndDataLength;
            goto LABEL_42;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          CurrentAtomTypeAndDataLength = FigSignalErrorAtGM();
          v7 = CurrentAtomTypeAndDataLength;
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_149;
          }

LABEL_63:
          a6 = v128;
          v16 = v120;
          if (v37)
          {
            a2 = *v37;
            if (*v37)
            {
              v52 = OUTLINED_FUNCTION_10_30(CurrentAtomTypeAndDataLength, v24, &v150 + 4, v25, v26, v35, v27, v28, v95, v97, v99, v101, v103, key, value, v110, v113, v116, v118, v120, v122, v124, allocator);
              if (v52)
              {
                v53 = v52;
                CFDictionaryAddValue(a2, v116, v52);
                CFRelease(v53);
              }

              CFDictionaryAddValue(a2, v118, @"udta");
              a2 = 0;
              v19 = a4;
              a6 = v128;
              v16 = v120;
LABEL_70:
              if (theBuffer)
              {
                CFRelease(theBuffer);
              }

              theBuffer = 0;
              if (a2)
              {
                goto LABEL_13;
              }

              goto LABEL_133;
            }
          }

          else
          {
            a2 = 0;
          }

          v19 = a4;
          goto LABEL_70;
        }

LABEL_42:
        if (!v124 || v7)
        {
          if (v7)
          {
            goto LABEL_149;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v36 = v122;
        v37 = v124;
        if (!v124)
        {
          goto LABEL_63;
        }
      }

      CurrentAtomTypeAndDataLength = CFDictionaryCreateMutable(v36, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!CurrentAtomTypeAndDataLength)
      {
        goto LABEL_63;
      }

      v7 = CurrentAtomTypeAndDataLength;
      if (FigCFLocaleCreateWithMovieLangCode())
      {
        v38 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v38, key, v30);
        CFRelease(v30);
      }

      if (FigUserDataExtendedLanguageTagCreateWithMovieLangCode(v36, v34))
      {
        v39 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v39, v103, v30);
        CFRelease(v30);
      }

      v40 = CFNumberCreate(allocator, kCFNumberSInt16Type, &valuePtr);
      if (v40)
      {
        v47 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v47, v101, v30);
        CFRelease(v30);
      }

      HIDWORD(v49) = v154 - 256;
      LODWORD(v49) = v154 - 256;
      v48 = v49 >> 26;
      if ((v48 - 4) >= 2 && v48)
      {
        if (v48 == 2)
        {
          v50 = 2;
          goto LABEL_59;
        }

        LODWORD(v152) = 1;
      }

      else
      {
        v50 = 3;
LABEL_59:
        LODWORD(v152) = v50;
      }

      CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_10_30(v40, v41, &v152, v42, v43, v44, v45, v46, v95, v97, v99, v101, v103, key, value, v110, v113, v116, v118, v120, v122, v124, allocator);
      if (CurrentAtomTypeAndDataLength)
      {
        v51 = OUTLINED_FUNCTION_8_26();
        CFDictionaryAddValue(v51, v110, v30);
        CFDictionaryAddValue(v7, v113, value);
        CFRelease(v30);
      }

      *v37 = v7;
      goto LABEL_63;
    }

    goto LABEL_148;
  }

  if (v19 != a4)
  {
    ++v19;
    goto LABEL_13;
  }

  v130 = 0;
  v154 = 0;
  v153 = 0;
  valuePtr = 0;
  v152 = 0;
  if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_37_9();
    v57 = v124;
    v58 = v99;
  }

  else
  {
    OUTLINED_FUNCTION_613();
    v57 = v124;
    v58 = v99;
    if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf() || CMBlockBufferGetDataPointer(v154, 0, &valuePtr, 0, &v152))
    {
      OUTLINED_FUNCTION_37_9();
    }

    else
    {
      a2 = CFDataCreate(v122, v152, valuePtr);
      if (a2)
      {
        v7 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        v7 = FigSignalErrorAtGM();
      }
    }
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v7)
  {
    goto LABEL_83;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_106;
  }

  LODWORD(ItemTextFromData) = FigUserDataWeKnowIsISOText(SHIDWORD(v150));
  if (ItemTextFromData)
  {
LABEL_107:
    v130 = 2;
    if (*(v16 + 16) || HIDWORD(v150) != 1819239273)
    {
      LODWORD(v154) = 0;
      v68 = OUTLINED_FUNCTION_104_0();
      ItemTextFromData = FigISOUserDataCreateItemTextFromData(v68, v69, v70, a6, v57);
      if (ItemTextFromData)
      {
        goto LABEL_162;
      }

      HIDWORD(v72) = v154 - 256;
      LODWORD(v72) = v154 - 256;
      v71 = v72 >> 26;
      if (v71 > 5)
      {
        v73 = 2;
      }

      else
      {
        v73 = dword_196E771D0[v71];
      }

      v130 = v73;
    }

    else
    {
      v66 = OUTLINED_FUNCTION_104_0();
      ItemTextFromData = FigISOUserDataCreateItemTextFromLocation(v66, v67, a6, v57);
      if (ItemTextFromData)
      {
        goto LABEL_162;
      }
    }

    goto LABEL_121;
  }

  if (!*(v16 + 16))
  {
LABEL_106:
    LODWORD(ItemTextFromData) = FigISOUserDataWeKnowIsISOText(SHIDWORD(v150));
    if (ItemTextFromData)
    {
      goto LABEL_107;
    }
  }

  if (!a6)
  {
    goto LABEL_121;
  }

  v130 = 0;
  if (!*(v16 + 16) && HIDWORD(v150) == 2037543523)
  {
    ItemTextFromData = FigISOUserDataCreateItemFromRecordingYear(a2, a6);
    if (ItemTextFromData)
    {
      goto LABEL_162;
    }

LABEL_121:
    if (a2)
    {
LABEL_122:
      CFRelease(a2);
    }

    goto LABEL_123;
  }

  if (!*(v16 + 16) && HIDWORD(v150) == 1684108389)
  {
    v87 = OUTLINED_FUNCTION_104_0();
    ItemTextFromData = FigISOUserDataCreateItemFromDate(v87, v88, a6);
    if (!ItemTextFromData)
    {
      goto LABEL_121;
    }

    goto LABEL_162;
  }

  if (!*(v16 + 16) && HIDWORD(v150) == 1970430324)
  {
    ItemTextFromData = FigISOUserDataCreateItemFromUserRating(a2, a6);
    if (!ItemTextFromData)
    {
      goto LABEL_121;
    }

    goto LABEL_162;
  }

  if (*(v16 + 16) || HIDWORD(v150) != 1953000802)
  {
    if (HIDWORD(v150) == 1952540515)
    {
      if (CFDataGetLength(a2) > 0)
      {
        v91 = OUTLINED_FUNCTION_104_0();
        ItemTextFromData = CFStringCreateFromExternalRepresentation(v91, v92, 0x600u);
        *a6 = ItemTextFromData;
        goto LABEL_121;
      }

LABEL_161:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      ItemTextFromData = FigSignalErrorAtGM();
      goto LABEL_162;
    }

    if (*(v16 + 16) && HIDWORD(v150) == 1851878757)
    {
      if (a2)
      {
        v93 = OUTLINED_FUNCTION_104_0();
        *a6 = CFStringCreateFromExternalRepresentation(v93, v94, 0);
        goto LABEL_122;
      }
    }

    else
    {
      *a6 = a2;
    }

LABEL_123:
    if (v57)
    {
      a2 = *v57;
      if (!*v57)
      {
        v74 = CFGetAllocator(v58);
        ItemTextFromData = CFDictionaryCreateMutable(v74, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        a2 = ItemTextFromData;
        *v57 = ItemTextFromData;
        if (!ItemTextFromData)
        {
          goto LABEL_161;
        }
      }

      v75 = OUTLINED_FUNCTION_10_30(ItemTextFromData, v60, &v150 + 4, v61, v62, v63, v64, v65, v95, v97, v99, v101, v103, key, value, v110, v113, v116, v118, v120, v122, v124, allocator);
      if (v75)
      {
        v76 = v75;
        CFDictionaryAddValue(a2, v117, v75);
        CFRelease(v76);
      }

      if (*(v16 + 16))
      {
        v77 = @"udta";
      }

      else
      {
        v77 = @"uiso";
      }

      CFDictionaryAddValue(a2, v119, v77);
      v85 = OUTLINED_FUNCTION_10_30(v78, v79, &v130, v80, v81, v82, v83, v84, v96, v98, v100, v102, v104, keya, valuea, v111, v114, v117, v119, v121, v123, v125, allocatora);
      if (v85)
      {
        v86 = v85;
        CFDictionaryAddValue(a2, v112, v85);
        CFDictionaryAddValue(a2, v115, valueb);
        CFRelease(v86);
      }
    }

LABEL_133:
    a2 = 0;
    goto LABEL_82;
  }

  v89 = OUTLINED_FUNCTION_104_0();
  ItemTextFromData = FigISOUserDataCreateItemFromThumbnailData(v89, v90, a6, v57);
  if (!ItemTextFromData)
  {
    goto LABEL_121;
  }

LABEL_162:
  v7 = ItemTextFromData;
LABEL_83:
  if (a6 && !v7)
  {
    if (*a6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4294954689;
    }
  }

LABEL_88:
  if (v149)
  {
    CFRelease(v149);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v7;
}

const void *FigUserDataCopyKeysInfoAsCFNumber(CFTypeRef cf1, CFTypeRef cf, int a3, void *a4, __CFArray **a5, _OWORD *a6)
{
  v23 = 0;
  theArray = 0;
  v21 = 0uLL;
  if (cf && (v12 = CFGetTypeID(cf), v12 == CFNumberGetTypeID()))
  {
    v13 = CFRetain(cf);
  }

  else
  {
    v14 = UserDataCopyKeysInfoCommon(a3, cf1, cf, &v23, &theArray, &v21);
    if (v14)
    {
      v13 = v14;
      goto LABEL_26;
    }

    if (v23)
    {
      v13 = FigUserDataCopyKeyAsCFNumber(v23);
    }

    else
    {
      v13 = 0;
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v19 = FigUserDataCopyKeyAsCFNumber(ValueAtIndex);
          CFArrayAppendValue(Mutable, v19);
          if (v19)
          {
            CFRelease(v19);
          }
        }
      }

      goto LABEL_16;
    }
  }

  Mutable = 0;
LABEL_16:
  if (a4)
  {
    *a4 = v13;
    v13 = 0;
  }

  if (a5)
  {
    *a5 = Mutable;
    Mutable = 0;
  }

  if (a6)
  {
    *a6 = v21;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

LABEL_26:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

uint64_t FigMetadataReaderCreateForUserDataBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForUserDataBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForUserDataArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForUserDataArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigUserDataHasKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t UserDataCopyValueCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyValueCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyValueCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyValueCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyValueCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyKeysInfoCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyKeysInfoCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyKeysInfoCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t UserDataCopyKeysInfoCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromLocation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromLocation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromLocation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromLocation_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromLocation_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromLocation_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemTextFromData_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromRecordingYear_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromRecordingYear_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromUserRating_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromUserRating_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromThumbnailData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromThumbnailData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromThumbnailData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigISOUserDataCreateItemFromThumbnailData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayUserDataHasKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayUserDataHasKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayUserDataHasKey_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayUserDataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayUserDataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayUserDataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayUserDataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayUserDataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayUserDataCopyKeyAtIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayUserDataGetItemCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ArrayUserDataCopyItemWithKeyAndIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ArrayUserDataCopyItemWithKeyAndIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FAIGCommon_createRotatedCVImageBuffer(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, const __CFAllocator *a7, CFTypeRef *a8)
{
  v26 = 0;
  if (!a1 || !a8 || (v15 = CFGetTypeID(a1), v15 != CVPixelBufferGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    v16 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  if (a3 != 270 && a3 != 90 && a3 != 180)
  {
    if (!a3 && a5 | a4)
    {
      pixelFormatType = CVPixelBufferGetPixelFormatType(a1);
LABEL_20:
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      goto LABEL_22;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM();
    v16 = 0;
LABEL_11:
    MutableCopy = 0;
    Mutable = 0;
    goto LABEL_12;
  }

  pixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (a3 == 180)
  {
    goto LABEL_20;
  }

  Width = CVPixelBufferGetHeight(a1);
  Height = CVPixelBufferGetWidth(a1);
LABEL_22:
  v22 = Height;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6966208]);
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E69660B8]);
  if (a6)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v16 = 0;
      goto LABEL_12;
    }

    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69660D8], Mutable);
  }

  v23 = CVPixelBufferCreate(a7, Width, v22, pixelFormatType, MutableCopy, &v26);
  if (v23 || (v23 = VTImageRotationSessionCreate(), v23) || (v24 = MEMORY[0x1E695E4D0], a5) && (v23 = VTSessionSetProperty(0, *MEMORY[0x1E6983D00], *MEMORY[0x1E695E4D0]), v23) || a4 && (v23 = VTSessionSetProperty(0, *MEMORY[0x1E6983D08], *v24), v23))
  {
    v16 = v23;
  }

  else
  {
    v16 = MEMORY[0x19A8D4E10](0, a1, v26);
    if (!v16)
    {
      *a8 = v26;
      v26 = 0;
    }
  }

LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v16;
}

uint64_t FAIGCommon_createImageRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForGenericMetadataArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForGenericMetadataArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForGenericMetadataArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetadataReaderCreateForGenericMetadataArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyValue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyValue_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyItemWithKeyAndIndex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyItemWithKeyAndIndex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyItemWithKeyAndIndex_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t GenericMetadataArrayCopyItemWithKeyAndIndex_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_77();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playeroverlap_setTheSameDispatchQueueOnSubPlayers(uint64_t a1, uint64_t a2)
{
  result = playeroverlap_setDispatchQueueFromFirstSubPlayerOnSecond(a1, a2, 0x1F0B29F18);
  if (!result)
  {

    return playeroverlap_setDispatchQueueFromFirstSubPlayerOnSecond(a1, a2, 0x1F0B29F38);
  }

  return result;
}

uint64_t playeroverlap_setDispatchQueueFromFirstSubPlayerOnSecond(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  FigBaseObject = FigPlayerGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(FigBaseObject, a3, *MEMORY[0x1E695E480], &cf);
    if (v7)
    {
LABEL_5:
      v11 = v7;
      goto LABEL_7;
    }

    v8 = cf;
    v9 = FigPlayerGetFigBaseObject(a2);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v7 = v10(v9, a3, v8);
      goto LABEL_5;
    }
  }

  v11 = 4294954514;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(void *a1)
{
  v205 = *MEMORY[0x1E69E9840];
  v4 = playeroverlap_itemAtIndex(a1, 0);
  if (!v4)
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_20_15();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_51_9(os_log_and_send_and_compose_flags_and_os_log_type, v19, v20, v21, v22, v23, v24, v25, v175, v180, v185, v191, timebase[0], timebase[1], v197, type, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v16)
      {
        v27 = v26;
      }

      else
      {
        v27 = v1;
      }

      if (!v27)
      {
        goto LABEL_59;
      }

      if (!a1)
      {
        goto LABEL_58;
      }

      goto LABEL_24;
    }

    return 0;
  }

  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_20_15();
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_51_9(v7, v8, v9, v10, v11, v12, v13, v14, v175, v180, v185, v191, timebase[0], timebase[1], v197, type, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = v1;
      }

      if (!v17)
      {
        goto LABEL_59;
      }

      if (!a1)
      {
        goto LABEL_58;
      }

LABEL_24:
      CMBaseObjectGetDerivedStorage();
LABEL_58:
      LODWORD(time2.value) = 136315650;
      OUTLINED_FUNCTION_2_76();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
LABEL_59:
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 0;
    }

    return 0;
  }

  if (playeroverlap_playQueueCount() <= 1)
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_20_15();
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_51_9(v28, v29, v30, v31, v32, v33, v34, v35, v175, v180, v185, v191, timebase[0], timebase[1], v197, type, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v16)
      {
        v37 = v36;
      }

      else
      {
        v37 = v1;
      }

      if (!v37)
      {
        goto LABEL_59;
      }

      if (!a1)
      {
        goto LABEL_58;
      }

      goto LABEL_24;
    }

    return 0;
  }

  if (!itemoverlap_hasAdvanceTime(v5))
  {
    if (!dword_1EAF17080)
    {
      return 0;
    }

    OUTLINED_FUNCTION_48_8();
    v46 = OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_90_3(v46, v47, v48, v49, v50, v51, v52, v53, v175, v180, v185, v191, 0, timebase[1], v197, type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (!v1)
    {
      goto LABEL_59;
    }

    if (!a1)
    {
      v54 = "";
      goto LABEL_72;
    }

    goto LABEL_37;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    if (!dword_1EAF17080)
    {
      return 0;
    }

    OUTLINED_FUNCTION_48_8();
    v38 = OUTLINED_FUNCTION_45_9();
    OUTLINED_FUNCTION_90_3(v38, v39, v40, v41, v42, v43, v44, v45, v175, v180, v185, v191, 0, timebase[1], v197, type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (!v1)
    {
      goto LABEL_59;
    }

    if (!a1)
    {
      v54 = "";
      goto LABEL_72;
    }

LABEL_37:
    v54 = (CMBaseObjectGetDerivedStorage() + 129);
LABEL_72:
    CMBaseObjectGetDerivedStorage();
    LODWORD(time2.value) = 136316162;
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_61_7();
    v200 = v54;
    *v201 = v85;
    *&v201[2] = v5;
    *&v201[10] = v86;
    *&v201[12] = v87;
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_12_17();
    goto LABEL_59;
  }

  LODWORD(timebase[0]) = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_37_12();
  v56 = *(v55 + 8);
  v57 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v57)
  {
    Duration = 4294954514;
    goto LABEL_63;
  }

  v58 = v57(v56, timebase);
  if (v58)
  {
    Duration = v58;
LABEL_63:
    if (!Duration)
    {
      return Duration;
    }

    goto LABEL_64;
  }

  if (*timebase <= 0.0)
  {
    if (dword_1EAF17080)
    {
      HIDWORD(type) = 0;
      BYTE3(type) = 0;
      OUTLINED_FUNCTION_48_8();
      v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_73_4(v92, v93, v94, v95, v96, v97, v98, v99, v175, v180, v185, v191, timebase[0], timebase[1], v197, type, SBYTE2(type), BYTE3(type));
      OUTLINED_FUNCTION_40();
      if (!v1)
      {
        goto LABEL_108;
      }

      if (!a1)
      {
LABEL_107:
        LODWORD(time2.value) = 136315650;
        OUTLINED_FUNCTION_2_76();
        OUTLINED_FUNCTION_12_17();
LABEL_108:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
        goto LABEL_109;
      }

LABEL_98:
      CMBaseObjectGetDerivedStorage();
      goto LABEL_107;
    }

LABEL_109:
    Duration = 0;
    goto LABEL_63;
  }

  if (!playeroverlap_isActionAtEnd())
  {
    return 0;
  }

  v59 = CMBaseObjectGetDerivedStorage();
  v60 = *(MEMORY[0x1E6960C70] + 16);
  v197 = v60;
  *v186 = *MEMORY[0x1E6960C70];
  *timebase = *MEMORY[0x1E6960C70];
  CurrentTime_0 = FigPlaybackItemGetCurrentTime_0(v59->epoch, timebase);
  Duration = CurrentTime_0;
  if (CurrentTime_0)
  {
    HIDWORD(type) = 0;
    BYTE3(type) = 0;
    v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v101 = HIDWORD(type);
    OUTLINED_FUNCTION_73_4(v100, v102, v103, v104, v105, v106, v107, v108, v175, v180, v186[0], v186[1], timebase[0], timebase[1], v197, type, SBYTE2(type), BYTE3(type));
    OUTLINED_FUNCTION_189();
    if (v16)
    {
      v110 = v109;
    }

    else
    {
      v110 = v101;
    }

    if (v110)
    {
      LODWORD(time2.value) = 136315138;
      *(&time2.value + 4) = "playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime";
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    goto LABEL_111;
  }

  if ((BYTE4(timebase[1]) & 0x1D) == 1)
  {
    OUTLINED_FUNCTION_47_7(CurrentTime_0, v62, v63, v64, v65, v66, v67, v68, v175, v180, v186[0], v186[1], *timebase);
    time2 = v59[1];
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      if (!dword_1EAF17080)
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_58_2();
      v147 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_73_4(v147, v148, v149, v150, v151, v152, v153, v154, v175, v180, v186[0], v186[1], timebase[0], timebase[1], v197, type, SBYTE2(type), BYTE3(type));
      OUTLINED_FUNCTION_46();
      if (v60)
      {
        v155 = CMBaseObjectGetDerivedStorage();
        v156 = v155 + 156;
        OUTLINED_FUNCTION_47_7(v155, v157, v158, v159, v160, v161, v162, v163, v178, v183, v189, v194, *timebase);
        Seconds = CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_70_5(v165, v166, v167, v168, v169, v170, v171, v172, v179, v184, v190, v195, timebase[0], timebase[1], v197, type, time2.value, *&time2.timescale, time2.epoch, v200, *v201, *&v201[8], *&v201[16], *&v201[24], v202, v203, *&time1.value, time1.epoch);
        LODWORD(time2.value) = 136316162;
        OUTLINED_FUNCTION_37_6();
        *(&time2.flags + 2) = v5;
        HIWORD(time2.epoch) = 2082;
        v200 = v156;
        *v201 = v173;
        *&v201[2] = Seconds;
        *&v201[10] = v173;
        *&v201[12] = v174;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
      }

      goto LABEL_110;
    }
  }

  *timebase = *v186;
  v197 = v60;
  Duration = FigPlaybackItemGetDuration(v5, timebase);
  if (Duration)
  {
    OUTLINED_FUNCTION_243();
LABEL_100:
    FigSignalErrorAtGM();
    goto LABEL_63;
  }

  time1 = v59[1];
  *&time2.value = *timebase;
  time2.epoch = v197;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_58_2();
    v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_73_4(v111, v112, v113, v114, v115, v116, v117, v118, v175, v180, v186[0], v186[1], timebase[0], timebase[1], v197, type, SBYTE2(type), BYTE3(type));
    OUTLINED_FUNCTION_46();
    if (v60)
    {
      v119 = CMBaseObjectGetDerivedStorage();
      v120 = v119 + 156;
      v128 = OUTLINED_FUNCTION_70_5(v119, v121, v122, v123, v124, v125, v126, v127, v176, v181, v187, v192, timebase[0], timebase[1], v197, type, time2.value, *&time2.timescale, time2.epoch, v200, *v201, *&v201[8], *&v201[16], *&v201[24], v202, v203, *&time1.value, time1.epoch);
      OUTLINED_FUNCTION_47_7(v129, v130, v131, v132, v133, v134, v135, v136, v177, v182, v188, v193, *timebase);
      CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136316162;
      OUTLINED_FUNCTION_37_6();
      *(&time2.flags + 2) = v5;
      HIWORD(time2.epoch) = 2082;
      v200 = v120;
      *v201 = v137;
      *&v201[2] = v128;
      *&v201[10] = v137;
      *&v201[12] = v138;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

LABEL_110:
    OUTLINED_FUNCTION_80_4();
LABEL_111:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_63;
  }

  timebase[0] = 0;
  v70 = *MEMORY[0x1E695E480];
  FigBaseObject = FigPlaybackItemGetFigBaseObject(v5);
  v72 = CMBaseObjectCopyProperty(FigBaseObject, @"Timebase", v70, timebase);
  if (v72)
  {
    goto LABEL_99;
  }

  Rate = CMTimebaseGetRate(timebase[0]);
  if (timebase[0])
  {
    CFRelease(timebase[0]);
    timebase[0] = 0;
  }

  if (Rate == 0.0)
  {
    v72 = itemoverlap_addTimebaseListener(v5);
    if (v72)
    {
LABEL_99:
      Duration = v72;
      OUTLINED_FUNCTION_243();
      goto LABEL_100;
    }
  }

  if (Rate <= 0.0)
  {
    if (dword_1EAF17080)
    {
      HIDWORD(type) = 0;
      BYTE3(type) = 0;
      OUTLINED_FUNCTION_48_8();
      v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_73_4(v139, v140, v141, v142, v143, v144, v145, v146, v175, v180, v186[0], v186[1], timebase[0], timebase[1], v197, type, SBYTE2(type), BYTE3(type));
      OUTLINED_FUNCTION_40();
      if (!v70)
      {
        goto LABEL_108;
      }

      if (!a1)
      {
        goto LABEL_107;
      }

      goto LABEL_98;
    }

    goto LABEL_109;
  }

  v74 = playeroverlap_itemAtIndex(a1, 1);
  if (dword_1EAF17080)
  {
    v75 = v74;
    LODWORD(timebase[0]) = 0;
    BYTE4(type) = 0;
    v76 = OUTLINED_FUNCTION_45_9();
    os_log_type_enabled(v76, BYTE4(type));
    OUTLINED_FUNCTION_28();
    if (v2)
    {
      if (a1)
      {
        v77 = (CMBaseObjectGetDerivedStorage() + 129);
      }

      else
      {
        v77 = "";
      }

      v88 = CMBaseObjectGetDerivedStorage() + 156;
      if (v75)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime";
      LOWORD(time2.flags) = 2048;
      OUTLINED_FUNCTION_61_7();
      v200 = v77;
      *v201 = v89;
      *&v201[2] = v5;
      *&v201[10] = v90;
      *&v201[12] = v88;
      *&v201[20] = v89;
      *&v201[22] = v75;
      *&v201[30] = v90;
      v202 = v91;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417();
  }

  Duration = playeroverlap_scheduleAdvanceTimerAndAnchorTime(a1);
  if (Duration)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
LABEL_64:
    v79 = itemoverlap_removeTimebaseListener();
    if (v79)
    {
      v80 = v79;
      OUTLINED_FUNCTION_20_15();
      v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v82 = timebase[0];
      os_log_type_enabled(v81, BYTE4(type));
      OUTLINED_FUNCTION_189();
      if (v16)
      {
        v84 = v83;
      }

      else
      {
        v84 = v82;
      }

      if (v84)
      {
        LODWORD(time2.value) = 136315394;
        *(&time2.value + 4) = "playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime";
        LOWORD(time2.flags) = 1024;
        *(&time2.flags + 2) = v80;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return Duration;
}

uint64_t playeroverlap_cancelScheduledOverlap(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  v3 = *(v2 + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(v3, 0.0);
  if (!result)
  {
    playeroverlap_removeAdvanceTimer();
    result = playeroverlap_resetOverlapRangeProperty(a1);
    if (!result)
    {
      v6 = OUTLINED_FUNCTION_312();
      playeroverlap_itemAtIndex(v6, v7);

      return itemoverlap_removeTimebaseListener();
    }
  }

  return result;
}

uint64_t itemoverlap_removeTimebaseListener()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 96))
  {
    return 0;
  }

  v1 = DerivedStorage;
  CMNotificationCenterGetDefaultLocalCenter();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    v3 = *(v1 + 96);
    if (v3)
    {
      CFRelease(v3);
      *(v1 + 96) = 0;
    }

    result = 0;
    *(v1 + 104) = 0;
  }

  return result;
}

uint64_t playeroverlap_isActionAtEnd()
{
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_37_12();
  FigBaseObject = FigPlayerGetFigBaseObject(*(v0 + 8));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2 || v2(FigBaseObject, @"ActionAtEnd", *MEMORY[0x1E695E480], &cf))
  {
    return 0;
  }

  v3 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t playeroverlap_removeOutroItem(const void *a1, int a2)
{
  v133 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CFRetain(*(DerivedStorage + 56));
  }

  v8 = playeroverlap_resetOverlapRangeProperty(a1);
  if (v8)
  {
    v81 = v8;
    goto LABEL_85;
  }

  v129 = CMBaseObjectGetDerivedStorage();
  v9 = &dword_1EAF17000;
  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_4_60();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_53_7(os_log_and_send_and_compose_flags_and_os_log_type, v11, v12, v13, v14, v15, v16, v17, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_28();
    if (!v2)
    {
LABEL_11:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
      goto LABEL_12;
    }

    if (a1)
    {
      v3 = CMBaseObjectGetDerivedStorage() + 129;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = "";
      if (!v7)
      {
LABEL_10:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_7();
        OUTLINED_FUNCTION_67_7();
        goto LABEL_11;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_10;
  }

LABEL_12:
  if (itemoverlap_removeTimebaseListener())
  {
    OUTLINED_FUNCTION_4_60();
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_86_3(v18, v19, v20, v21, v22, v23, v24, v25, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
    {
      v26 = v3;
    }

    else
    {
      v26 = v3 & 0xFFFFFFFE;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_27_10();
      OUTLINED_FUNCTION_67_7();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_417();
  }

  v27 = OUTLINED_FUNCTION_265();
  playeroverlap_itemAtIndex(v27, v28);
  if (itemoverlap_removeTimebaseListener())
  {
    OUTLINED_FUNCTION_4_60();
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_86_3(v29, v30, v31, v32, v33, v34, v35, v36, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
    {
      v37 = v3;
    }

    else
    {
      v37 = v3 & 0xFFFFFFFE;
    }

    if (v37)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_27_10();
      OUTLINED_FUNCTION_67_7();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_417();
  }

  if (dword_1EAF17080)
  {
    OUTLINED_FUNCTION_4_60();
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_53_7(v38, v39, v40, v41, v42, v43, v44, v45, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    OUTLINED_FUNCTION_28();
    if (!v2)
    {
      goto LABEL_34;
    }

    if (a1)
    {
      v3 = CMBaseObjectGetDerivedStorage() + 129;
      if (!v7)
      {
LABEL_33:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_7();
        OUTLINED_FUNCTION_67_7();
LABEL_34:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417();
        goto LABEL_35;
      }
    }

    else
    {
      v3 = "";
      if (!v7)
      {
        goto LABEL_33;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_33;
  }

LABEL_35:
  HIDWORD(v130) = a2;
  v46 = CMBaseObjectGetDerivedStorage();
  v47 = *(v46 + 72);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_31_14();
  if (v47 == v48 % 2)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_60();
  v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  LODWORD(v2) = BYTE3(type);
  os_log_type_enabled(v49, BYTE3(type));
  OUTLINED_FUNCTION_37();
  if (v3)
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_42:
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_31_14();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_27_10();
        goto LABEL_43;
      }
    }

    else if (!v7)
    {
      goto LABEL_42;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_42;
  }

LABEL_43:
  OUTLINED_FUNCTION_16();
  LODWORD(v9) = v50;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_44:
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_31_14();
  v53 = OUTLINED_FUNCTION_18_19(v51, v52);
  if (CFArrayGetCount(v53) == 1)
  {
    goto LABEL_53;
  }

  HIDWORD(type) = 0;
  BYTE3(type) = 0;
  OUTLINED_FUNCTION_14_25();
  v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  LODWORD(v2) = v54;
  os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_70();
  if (v9)
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_51:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_29_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        goto LABEL_52;
      }
    }

    else if (!v7)
    {
      goto LABEL_51;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_51;
  }

LABEL_52:
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_454();
LABEL_53:
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  if (FirstIndexOfValue == -1)
  {
    OUTLINED_FUNCTION_4_60();
    v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v80, BYTE3(type));
    OUTLINED_FUNCTION_40();
    if (!v46)
    {
      goto LABEL_81;
    }

    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v7)
      {
LABEL_80:
        OUTLINED_FUNCTION_24_15();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_12_17();
LABEL_81:
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_414();
        v81 = 4294954436;
        goto LABEL_82;
      }
    }

    else if (!v7)
    {
      goto LABEL_80;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_80;
  }

  v56 = FirstIndexOfValue;
  if (!HIDWORD(v130))
  {
    goto LABEL_57;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_58();
  v2 = *(v57 + 8);
  v58 = *(v46 + 16);
  v59 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v59)
  {
    v81 = 4294954514;
LABEL_72:
    OUTLINED_FUNCTION_4_60();
    v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v90 = OUTLINED_FUNCTION_40_10(v82, v83, v84, v85, v86, v87, v88, v89, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v90))
    {
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_82:
    OUTLINED_FUNCTION_4_60();
    v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v108 = OUTLINED_FUNCTION_40_10(v100, v101, v102, v103, v104, v105, v106, v107, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v108))
    {
LABEL_83:
      OUTLINED_FUNCTION_74_6();
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

LABEL_84:
    OUTLINED_FUNCTION_16();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_85;
  }

  v60 = v59(v2, v58);
  if (v60)
  {
    v81 = v60;
    goto LABEL_72;
  }

LABEL_57:
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_31_14();
  v63 = OUTLINED_FUNCTION_18_19(v61, v62);
  CFArrayRemoveValueAtIndex(v63, v56);
  v64 = CMBaseObjectGetDerivedStorage();
  *(v64 + 88) = 0;
  *(v64 + 72) = -1;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_15_25();
  v66 = *(v65 + 8);
  v67 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v67)
  {
    v81 = 4294954514;
    goto LABEL_75;
  }

  v68 = v67(v66, 0.0);
  if (v68)
  {
    v81 = v68;
LABEL_75:
    OUTLINED_FUNCTION_4_60();
    v91 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v99 = OUTLINED_FUNCTION_40_10(v91, v92, v93, v94, v95, v96, v97, v98, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_124_0(v99))
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  v69 = v129;
  v70 = *(v129 + 56);
  if (v70)
  {
    CFRelease(v70);
    *(v129 + 56) = 0;
  }

  inserted = playeroverlap_reInsertPendingQueue(a1);
  if (inserted)
  {
    v81 = inserted;
    OUTLINED_FUNCTION_14_25();
    v116 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v124 = OUTLINED_FUNCTION_40_10(v116, v117, v118, v119, v120, v121, v122, v123, v126, v127, v128, v129, v130, type, SBYTE2(type), OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_124_0(v124))
    {
      OUTLINED_FUNCTION_74_6();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    goto LABEL_84;
  }

  if (FigPlaybackTimerIsScheduled(*(v129 + 72)))
  {
    if (dword_1EAF17080)
    {
      OUTLINED_FUNCTION_4_60();
      v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_53_7(v72, v73, v74, v75, v76, v77, v78, v79, v126, v127, v128, v129, v130, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_28();
      if (v2)
      {
        if (v7)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_74_6();
        OUTLINED_FUNCTION_55_8();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_7();
        OUTLINED_FUNCTION_67_7();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417();
    }

    v110 = FigPlaybackTimerCancel(*(v69 + 72));
    if (v110)
    {
      v81 = v110;
      OUTLINED_FUNCTION_14_25();
      v125 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT);
      goto LABEL_84;
    }
  }

  v111 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  playeroverlap_dispatchAsyncPostNotification(0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v113 = CFDictionaryCreateMutable(v111, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  time = **&MEMORY[0x1E6960C70];
  v114 = CMTimeCopyAsDictionary(&time, v111);
  FigCFDictionarySetValue();
  if (v114)
  {
    CFRelease(v114);
  }

  FigCFDictionarySetInt32();
  v115 = OUTLINED_FUNCTION_265();
  playeroverlap_dispatchAsyncPostNotification(v115);
  if (v113)
  {
    CFRelease(v113);
  }

  v81 = 0;
LABEL_85:
  if (v7)
  {
    CFRelease(v7);
  }

  return v81;
}

uint64_t playeroverlap_rescheduleAdvanceTimerAndAnchorTime(uint64_t a1)
{
  v2 = playeroverlap_cancelScheduledOverlap(a1);
  if (v2)
  {
    return v2;
  }

  v3 = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1);
  if (v3)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  return v3;
}

uint64_t playeroverlap_setOverlapRangeProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v51 = **&MEMORY[0x1E6960CC0];
  CurrentTimeInPlayerQueue = itemoverlap_GetCurrentTimeInPlayerQueue(a3, &v51);
  if (CurrentTimeInPlayerQueue)
  {
    v30 = CurrentTimeInPlayerQueue;
    v21 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  *(DerivedStorage + 108) = FigAtomicIncrement32();
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v12 = Mutable;
  v44 = a1;
  v45 = a2;
  v13 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"Outro", *MEMORY[0x1E695E4D0]);
  v14 = FigCFDictionarySetInt32();
  if (v14 || (v68[0] = *(v7 + 24), v14 = FigCFDictionarySetCMTime(), v14))
  {
    v30 = v14;
    v21 = 0;
    goto LABEL_23;
  }

  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v46 = v8;
  if ((*(v7 + 60) & 0x1D) == 1)
  {
    memset(v68, 0, 24);
    itemoverlap_getEffectiveOverlappedPlaybackEndTime(a2, v68);
    if ((v68[0].flags & 0x1D) == 1)
    {
      v52 = v68[0];
      v19 = FigCFDictionarySetCMTime();
      if (v19)
      {
        goto LABEL_56;
      }
    }

    memset(&v52, 0, sizeof(v52));
    lhs = v68[0];
    type = *(v7 + 24);
    CMTimeSubtract(&v52, &lhs, &type);
    type = v51;
    rhs = v52;
    CMTimeAdd(&lhs, &type, &rhs);
    value = lhs.value;
    flags = lhs.flags;
    timescale = lhs.timescale;
    epoch = lhs.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v7 + 16));
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v18)
  {
    v21 = 0;
    v30 = 4294954514;
LABEL_21:
    v8 = v46;
    goto LABEL_23;
  }

  v43 = a3;
  v19 = v18(FigBaseObject, @"OverlapRange", v12);
  if (v19)
  {
LABEL_56:
    v30 = v19;
    v21 = 0;
    goto LABEL_21;
  }

  v20 = CFDictionaryCreateMutable(v10, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21 = v20;
  if (!v20)
  {
    v27 = 0;
    v26 = 0;
LABEL_48:
    v30 = 0;
    goto LABEL_49;
  }

  CFDictionarySetValue(v20, @"Intro", v13);
  v22 = FigCFDictionarySetInt32();
  if (v22 || (v68[0] = v51, v22 = FigCFDictionarySetCMTime(), v22) || (flags & 0x1D) == 1 && (v68[0].value = value, *&v68[0].timescale = __PAIR64__(flags, timescale), v68[0].epoch = epoch, v22 = FigCFDictionarySetCMTime(), v22))
  {
    v30 = v22;
    goto LABEL_21;
  }

  v8 = v46;
  v23 = FigPlaybackItemGetFigBaseObject(*(v46 + 16));
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v24)
  {
    v25 = v24(v23, @"OverlapRange", v21);
    if (!v25)
    {
      v26 = FigCFCopyCompactDescription();
      v27 = FigCFCopyCompactDescription();
      if (dword_1EAF17080)
      {
        LODWORD(lhs.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
        OUTLINED_FUNCTION_70();
        if (FigBaseObject)
        {
          if (v44)
          {
            v29 = (CMBaseObjectGetDerivedStorage() + 129);
          }

          else
          {
            v29 = "";
          }

          v47 = v29;
          if (v45)
          {
            v38 = (CMBaseObjectGetDerivedStorage() + 156);
          }

          else
          {
            v38 = "";
          }

          if (v43)
          {
            v39 = v38;
            v40 = CMBaseObjectGetDerivedStorage();
            v38 = v39;
            v41 = (v40 + 156);
          }

          else
          {
            v41 = "";
          }

          v42 = *(DerivedStorage + 108);
          LODWORD(v52.value) = 136317442;
          *(&v52.value + 4) = "playeroverlap_setOverlapRangeProperty";
          LOWORD(v52.flags) = 2048;
          *(&v52.flags + 2) = v44;
          HIWORD(v52.epoch) = 2082;
          v53 = v47;
          v54 = 2114;
          v55 = v26;
          v56 = 2048;
          v57 = v45;
          v58 = 2082;
          v59 = v38;
          v60 = 2114;
          v61 = v27;
          v62 = 2048;
          v63 = v43;
          v64 = 2082;
          v65 = v41;
          v66 = 1024;
          v67 = v42;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454();
      }

      goto LABEL_48;
    }

    v30 = v25;
  }

  else
  {
    v30 = 4294954514;
  }

LABEL_23:
  v31 = FigPlaybackItemGetFigBaseObject(*(v7 + 16));
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v32)
  {
    v32(v31, @"OverlapRange", 0);
  }

  v33 = FigPlaybackItemGetFigBaseObject(*(v8 + 16));
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v34)
  {
    v34(v33, @"OverlapRange", 0);
  }

  v27 = 0;
  v26 = 0;
  v35 = 0;
  v36 = 0;
  if (v12)
  {
LABEL_49:
    CFRelease(v12);
    v35 = v27;
    v36 = v26;
    if (!v21)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v21)
  {
LABEL_29:
    CFRelease(v21);
  }

LABEL_30:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v30;
}

uint64_t itemoverlap_getEffectiveOverlappedPlaybackEndTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  v7 = *(v5 + 16);
  *(a2 + 16) = v7;
  if ((*(result + 60) & 0x1D) != 1)
  {
    return result;
  }

  v8 = result;
  value = *(result + 108);
  flags = *(result + 120);
  timescale = *(result + 116);
  if ((flags & 0x1D) == 1)
  {
    epoch = *(result + 124);
    goto LABEL_8;
  }

  *&time2.value = v6;
  time2.epoch = v7;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11 || v11(a1, &time2))
  {
    OUTLINED_FUNCTION_147();
    v12 = OUTLINED_FUNCTION_69_3();
    v20 = OUTLINED_FUNCTION_88_4(v12, v13, v14, v15, v16, v17, v18, v19, v30, v31, v32, v33, SBYTE2(v33), BYTE3(v33), SHIDWORD(v33));
    if (!OUTLINED_FUNCTION_77_0(v20))
    {
LABEL_14:
      OUTLINED_FUNCTION_16();
      return OUTLINED_FUNCTION_420();
    }

LABEL_12:
    v35 = 136315138;
    v36 = "itemoverlap_getEffectiveOverlappedPlaybackEndTime";
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_44_0();
    _os_log_send_and_compose_impl();
    goto LABEL_14;
  }

  flags = time2.flags;
  if ((time2.flags & 0x1D) != 1)
  {
    OUTLINED_FUNCTION_147();
    v21 = OUTLINED_FUNCTION_69_3();
    v29 = OUTLINED_FUNCTION_88_4(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, SBYTE2(v33), BYTE3(v33), SHIDWORD(v33));
    if (!OUTLINED_FUNCTION_77_0(v29))
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  value = time2.value;
  timescale = time2.timescale;
  epoch = time2.epoch;
LABEL_8:
  time1 = v8[2];
  time2.value = value;
  time2.timescale = timescale;
  time2.flags = flags;
  time2.epoch = epoch;
  result = CMTimeCompare(&time1, &time2);
  if ((result & 0x80000000) != 0)
  {
    time1 = v8[1];
    time2 = v8[2];
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      *a2 = *&v8[2].value;
      *(a2 + 16) = v8[2].epoch;
    }
  }

  return result;
}

void playeroverlap_removeItemAndRefreshPlayQueue(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, os_log_type_t a22, os_log_type_t type, float a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_458();
  a57 = v50;
  a58 = v51;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  a46 = *MEMORY[0x1E69E9840];
  v59 = playeroverlap_indexForItem();
  if (v59 != -1)
  {
    v60 = v59;
    if (*(CMBaseObjectGetDerivedStorage() + 56))
    {
      v61 = OUTLINED_FUNCTION_312();
      if (playeroverlap_itemAtIndex(v61, v62) == v56 && (playeroverlap_removeOutroItem(v58, 1) || playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v58)))
      {
        goto LABEL_13;
      }
    }

    v63 = OUTLINED_FUNCTION_312();
    if (playeroverlap_itemAtIndex(v63, v64) == v56 || playeroverlap_itemAtIndex(v58, 1) == v56)
    {
      v65 = OUTLINED_FUNCTION_312();
      v67 = playeroverlap_itemAtIndex(v65, v66);
      if (itemoverlap_hasAdvanceTime(v67))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
        {
          if (playeroverlap_cancelScheduledOverlap(v58))
          {
            goto LABEL_13;
          }
        }
      }
    }

    if (playeroverlap_removeFromInternalPlayQueue(v58, v56, v54))
    {
      goto LABEL_13;
    }

    if (itemoverlap_hasAdvanceTime(v56))
    {
      v69 = CMBaseObjectGetDerivedStorage();
      v70 = OUTLINED_FUNCTION_34_12(v69);
      if (!CFArrayGetCount(v70))
      {
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_3_58();
        if (CFArrayGetCount(*(v71 + 24)))
        {
          if (v54)
          {
            v72 = &kFigPlayerCurrentItemDidChangeReason_RemoveFromPlayQueue;
          }

          else
          {
            v72 = &kFigPlayerCurrentItemDidChangeReason_AdvanceAtEnd;
          }

          v73 = OUTLINED_FUNCTION_312();
          v75 = playeroverlap_itemAtIndex(v73, v74);
          if (!dword_1EAF17080)
          {
            goto LABEL_30;
          }

          a24 = 0.0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_40();
          if (!v52)
          {
LABEL_29:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414();
LABEL_30:
            a24 = 0.0;
            if (playeroverlap_GetRateInPlayerQueue(v58, &a24) || a24 != 0.0 && playeroverlap_SetRateInPlayerQueue(v58, 0.0))
            {
              goto LABEL_13;
            }

            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_31_14();
            *(v80 + 4) = v79 % 2;
            playeroverlap_postUpdateActiveIndex();
            if (a24 != 0.0)
            {
              if (playeroverlap_SetRateInPlayerQueue(v58, a24))
              {
                goto LABEL_13;
              }
            }

            v81 = *v72;
            playeroverlap_dispatchAsyncPostNotification(0);
            v82 = playeroverlap_createCurrentItemDidChangePayload(v81);
            v83 = OUTLINED_FUNCTION_312();
            playeroverlap_dispatchAsyncPostNotification(v83);
            if (v82)
            {
              CFRelease(v82);
            }

            if (playeroverlap_reInsertPendingQueue(v58))
            {
              v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
              if (OUTLINED_FUNCTION_77_0(v87))
              {
                LODWORD(a25) = 136315138;
                *(&a25 + 4) = "playeroverlap_swapActiveSubPlayer";
                OUTLINED_FUNCTION_39();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_192_0();
              }

              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_420();
              goto LABEL_13;
            }

            v84 = *(CMBaseObjectGetDerivedStorage() + 112);
            if (v84)
            {
              playeroverlap_setItemsToPrebufferInPlayerQueue(v58, v84);
            }

            goto LABEL_12;
          }

          if (v58)
          {
            v77 = (CMBaseObjectGetDerivedStorage() + 129);
            if (!v75)
            {
LABEL_28:
              LODWORD(a25) = 136316162;
              *(&a25 + 4) = "playeroverlap_swapActiveSubPlayer";
              WORD6(a25) = 2048;
              *(&a25 + 14) = v58;
              OUTLINED_FUNCTION_443();
              a27 = v77;
              OUTLINED_FUNCTION_63_4();
              *(&a29 + 4) = v78;
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_12_17();
              OUTLINED_FUNCTION_612();
              goto LABEL_29;
            }
          }

          else
          {
            v77 = "";
            if (!v75)
            {
              goto LABEL_28;
            }
          }

          CMBaseObjectGetDerivedStorage();
          goto LABEL_28;
        }
      }

      if (playeroverlap_refreshPlayQueueFromIndex(v58, v60))
      {
LABEL_13:
        OUTLINED_FUNCTION_457();
        return;
      }
    }

LABEL_12:
    playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v58);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_457();

  FigSignalErrorAtGM();
}