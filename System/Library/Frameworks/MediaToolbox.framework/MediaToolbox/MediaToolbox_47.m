uint64_t FigAssetWriterRemoteCreateForWritingFragmentedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, void *a7)
{
  v22 = 0;
  MEMORY[0x19A8D3660](&frr_OneTimeInitialization_sInitRemoteRemakerOnlyOnce, frr_OneTimeInitializationWork);
  if (!gRemakerRemoteClient)
  {
    v20 = 4294955196;
    goto LABEL_22;
  }

  if (a7)
  {
    v12 = *MEMORY[0x1E695E480];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a5);
    if (MutableCopy)
    {
      v14 = MutableCopy;
      FigCFDictionarySetValue();
      v15 = FigXPCCreateBasicMessage();
      if (!v15)
      {
        v15 = FigXPCMessageSetCFDictionary();
        if (!v15)
        {
          v15 = FigXPCMessageSetCFDictionary();
          if (!v15)
          {
            v15 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (!v15)
            {
              uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
              if (!uint64)
              {
                FigAssetWriterRemoteCreateForWritingFragmentedData_cold_2(&v23);
                goto LABEL_25;
              }

              v15 = frr_CreateEmptyWrapper(3, uint64, &v22);
              if (!v15)
              {
                v17 = v22;
                DerivedStorage = CMBaseObjectGetDerivedStorage();
                *(DerivedStorage + 120) = 1;
                *(DerivedStorage + 96) = a2;
                *(DerivedStorage + 104) = a3;
                *(DerivedStorage + 112) = a4;
                *(DerivedStorage + 80) = 0;
                Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(DerivedStorage + 88) = Mutable;
                if (Mutable)
                {
                  v20 = 0;
                  *a7 = v17;
                  v22 = 0;
LABEL_12:
                  FigXPCRemoteClientKillServerOnTimeout();
                  CFRelease(v14);
LABEL_13:
                  if (v22)
                  {
                    CFRelease(v22);
                  }

                  return v20;
                }

                FigAssetWriterRemoteCreateForWritingFragmentedData_cold_1(&v23);
LABEL_25:
                v20 = v23;
                goto LABEL_12;
              }
            }
          }
        }
      }

      v20 = v15;
      goto LABEL_12;
    }

    v20 = FigSignalErrorAtGM();
LABEL_22:
    FigXPCRemoteClientKillServerOnTimeout();
    goto LABEL_13;
  }

  return FigSignalErrorAtGM();
}

void frr_OneTimeInitializationWork()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigRemote_ShouldConnectToMediaparserdForFileParsing();
  FigRemote_ShouldConnectToMediaplaybackd();
  FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t frr_HandleDeadServerConnection()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 24) = 1;
  return result;
}

uint64_t remoteRemakerFamily_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 32))
    {
      v2 = *(DerivedStorage + 64);
      if (v2)
      {
        FigRemote_RemoveSlotIDsFromVideoLayers(v2);
        v3 = *(v1 + 64);
        if (v3)
        {
          CFRelease(v3);
          *(v1 + 64) = 0;
        }
      }

      FigRemote_RemoveReleaseAndClearRemoteCAContext((v1 + 48), *(v1 + 40));
      v4 = *(v1 + 40);
      if (v4)
      {
        CFRelease(v4);
        *(v1 + 40) = 0;
      }

      FigRemote_DestroyCARenderServerPort(*(v1 + 36));
      *(v1 + 36) = 0;
    }

    FigXPCRemoteClientDisassociateObject();
    if (!*(v1 + 24))
    {
      FigXPCCreateBasicMessage();
      FigXPCRemoteClientSendAsyncMessage();
      FigXPCRelease();
    }

    FigXPCRemoteClientKillServerOnTimeout();
  }

  return 0;
}

void remoteRemakerFamily_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  remoteRemakerFamily_Invalidate();
  v1 = DerivedStorage[9];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[9] = 0;
  }

  v2 = DerivedStorage[11];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[11] = 0;
  }

  v3 = DerivedStorage[16];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[16] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }
}

__CFString *remoteRemaker_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
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
  CFStringAppendFormat(Mutable, 0, @"<FigRemakerRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

uint64_t remoteRemakerFamily_CopyProperty(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v15 = 0;
  v16 = 0;
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2 || !a4)
  {

    return FigSignalErrorAtGM();
  }

  ObjectID = remoteRemakerFamily_GetObjectID(a1, &v16);
  if (ObjectID)
  {
    v13 = ObjectID;
    goto LABEL_17;
  }

  v9 = FigXPCSendStdCopyPropertyMessage();
  if (v9)
  {
    v13 = v9;
    v12 = v15;
    goto LABEL_25;
  }

  if (CFEqual(a2, @"AssetWriter_Metadata") || CFEqual(a2, @"Remaker_Metadata"))
  {
    v10 = CFGetAllocator(a1);
    MetadataFromBinaryPListData = FigRemote_CreateMetadataFromBinaryPListData(v15, v10, &cf);
    v12 = v15;
    if (!MetadataFromBinaryPListData)
    {
      v15 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_16;
    }

    v13 = MetadataFromBinaryPListData;
LABEL_25:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = 0;
  *a4 = v15;
  v15 = 0;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v13;
}

uint64_t remoteRemakerFamily_SetProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  cf = 0;
  v12 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a2)
  {
    ObjectID = remoteRemakerFamily_GetObjectID(a1, &v12);
    if (ObjectID)
    {
      v10 = ObjectID;
      goto LABEL_12;
    }

    if ((CFEqual(a2, @"AssetWriter_Metadata") || CFEqual(a2, @"Remaker_Metadata")) && (MetadataBinaryPListData = FigRemote_CreateMetadataBinaryPListData(a3, *MEMORY[0x1E695E480], &cf), v9 = cf, MetadataBinaryPListData))
    {
      v10 = MetadataBinaryPListData;
      if (!cf)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = FigXPCSendStdSetPropertyMessage();
      v9 = cf;
      if (!cf)
      {
LABEL_12:
        FigXPCRemoteClientKillServerOnTimeout();
        return v10;
      }
    }

    CFRelease(v9);
    goto LABEL_12;
  }

  return FigSignalErrorAtGM();
}

uint64_t remoteRemakerFamily_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteRemakerFamily_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[24])
    {
      remoteRemakerFamily_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t remoteRemaker_AddAudioTrack(uint64_t a1, int a2, const void *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  xdict = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a3)
  {
    v15 = remoteRemakerFamily_CreateXPCMessage(a1, 1836212596, &xdict);
    v16 = xdict;
    if (v15)
    {
      goto LABEL_17;
    }

    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    xpc_dictionary_set_data(v16, "AudioDestASBD", a3, 0x28uLL);
    if (a4 && a5)
    {
      xpc_dictionary_set_data(v16, "AudioDestChannelLayout", a5, a4);
    }

    v15 = FigXPCMessageSetCFDictionary();
    if (v15 || (v15 = FigXPCMessageSetCFDictionary(), v15) || (v15 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v15))
    {
LABEL_17:
      v18 = v15;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v18 = 0;
        if (a8)
        {
          *a8 = int64;
        }
      }

      else
      {
        remoteRemaker_AddAudioTrack_cold_1(&v20);
        v18 = v20;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v18;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteRemaker_AddVideoTrack(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  value[0] = a6;
  v25 = 0;
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v17 = remoteRemakerFamily_CreateXPCMessage(a1, 1836212598, &v25);
    v18 = v25;
    if (v17 || (xpc_dictionary_set_int64(v25, "TrackID", a2), xpc_dictionary_set_int64(v18, "Width", a3), xpc_dictionary_set_int64(v18, "Height", a4), v17 = FigXPCMessageSetCFDictionary(), v17) || (xpc_dictionary_set_uint64(v18, "VideoCodecType", value[0]), v17 = FigXPCMessageSetCFDictionary(), v17) || (v17 = FigXPCMessageSetCFDictionary(), v17) || (v17 = FigXPCMessageSetCFDictionary(), v17))
    {
      v21 = v17;
    }

    else
    {
      v19 = FigXPCMessageSetCFDictionary();
      if (v19 || (*&value[1] = *a11, v23 = *(a11 + 16), v19 = FigXPCMessageSetCMTime(), v19) || (v19 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v19))
      {
        v21 = v19;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(xdict, "TrackIDOut");
        if (int64)
        {
          v21 = 0;
          if (a12)
          {
            *a12 = int64;
          }
        }

        else
        {
          remoteRemaker_AddVideoTrack_cold_1(&value[1]);
          v21 = value[1];
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v21;
  }
}

uint64_t remoteRemakerFamily_SetFormatWriterProperty(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a2)
  {
    v5 = remoteRemakerFamily_CreateXPCMessage(a1, 1717991280, &v7);
    if (!v5)
    {
      v5 = FigXPCMessageSetCFString();
      if (!v5)
      {
        v5 = FigXPCMessageSetCFObject();
        if (!v5)
        {
          v5 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v6 = v5;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteRemakerFamily_SetFormatWriterTrackProperty(uint64_t a1, int a2, const void *a3)
{
  cf = 0;
  xdict = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a3)
  {
    PListFromFormatDescriptionCollection = remoteRemakerFamily_CreateXPCMessage(a1, 1717990512, &xdict);
    if (!PListFromFormatDescriptionCollection)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      PListFromFormatDescriptionCollection = FigXPCMessageSetCFString();
      if (!PListFromFormatDescriptionCollection)
      {
        if (!CFEqual(a3, @"FormatDescriptionArray") && !CFEqual(a3, @"ReplacementFormatDescriptionArray") || (PListFromFormatDescriptionCollection = FigRemote_CreatePListFromFormatDescriptionCollection(), !PListFromFormatDescriptionCollection))
        {
          PListFromFormatDescriptionCollection = FigXPCMessageSetCFObject();
          if (!PListFromFormatDescriptionCollection)
          {
            PListFromFormatDescriptionCollection = FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }

    v8 = PListFromFormatDescriptionCollection;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    if (cf)
    {
      CFRelease(cf);
    }

    return v8;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteRemaker_SetTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage() || (a2->flags & 0x1D) != 1)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if ((a3->flags & 0x1D) == 1)
    {
      *&time1.start.value = *&a2->value;
      time1.start.epoch = a2->epoch;
      time2 = *a3;
      if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
      {
        return FigSignalErrorAtGM();
      }
    }

    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1836282994, &v12);
    if (!v8)
    {
      time2 = *a2;
      v9 = *a3;
      CMTimeRangeFromTimeToTime(&time1, &time2, &v9);
      v8 = FigXPCMessageSetCMTimeRange();
      if (!v8)
      {
        v8 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    v6 = v8;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }
}

uint64_t remoteRemaker_StartOutput()
{
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    remoteRemaker_StartOutput_cold_1();
    return v1;
  }
}

uint64_t remoteRemaker_EstimateMaxSegmentDurationForFileSize(uint64_t a1, int64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *MEMORY[0x1E6960CC0];
  v13 = *(MEMORY[0x1E6960CC0] + 16);
  xdict = 0;
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1835363699, &xdict);
    if (v8 || (xpc_dictionary_set_int64(xdict, "TargetFileSize", a2), v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
    {
      v10 = v8;
    }

    else
    {
      CMTime = FigXPCMessageGetCMTime();
      v10 = CMTime;
      if (a3 && !CMTime)
      {
        *a3 = v12;
        *(a3 + 16) = v13;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v10;
  }
}

uint64_t remoteRemaker_AddAudioTrackWithPreset(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = remoteRemakerFamily_CreateXPCMessage(a1, 1836212592, &xdict);
    if (v9 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v9 = FigXPCMessageSetCFString(), v9) || (v9 = FigXPCMessageSetCFDictionary(), v9) || (v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
    {
      v11 = v9;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v11 = 0;
        if (a5)
        {
          *a5 = int64;
        }
      }

      else
      {
        remoteRemaker_AddAudioTrackWithPreset_cold_1(&v13);
        v11 = v13;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v11;
  }
}

uint64_t remoteRemaker_AddAudioMixdownTrack(uint64_t a1, const __CFArray *a2, const void *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v21 = 0;
  v22 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a3)
  {
    v15 = remoteRemakerFamily_CreateXPCMessage(a1, 1836212589, &v21);
    if (v15)
    {
      v20 = v15;
      v17 = 0;
    }

    else
    {
      v16 = frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(a2, @"RemakerAudioMixdown_AudioProcessingTap", &v22);
      v18 = v21;
      v17 = v22;
      if (v16)
      {
        goto LABEL_21;
      }

      v16 = FigXPCMessageSetCFArray();
      if (v16)
      {
        goto LABEL_21;
      }

      xpc_dictionary_set_data(v18, "AudioDestASBD", a3, 0x28uLL);
      if (a4 && a5)
      {
        xpc_dictionary_set_data(v18, "AudioDestChannelLayout", a5, a4);
      }

      v16 = FigXPCMessageSetCFDictionary();
      if (v16 || (v16 = FigXPCMessageSetCFDictionary(), v16) || (v16 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v16))
      {
LABEL_21:
        v20 = v16;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          v20 = 0;
          if (a8)
          {
            *a8 = int64;
          }
        }

        else
        {
          remoteRemaker_AddAudioMixdownTrack_cold_1(&v23);
          v20 = v23;
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (v17)
    {
      CFRelease(v17);
    }

    return v20;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteRemaker_AddAudioMixdownTrackWithPreset(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  v15 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v9 = remoteRemakerFamily_CreateXPCMessage(a1, 1836215664, &v14);
    if (v9)
    {
      v13 = v9;
      v11 = 0;
    }

    else
    {
      v10 = frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(a2, @"RemakerAudioMixdown_AudioProcessingTap", &v15);
      v11 = v15;
      if (v10 || (v10 = FigXPCMessageSetCFArray(), v10) || (v10 = FigXPCMessageSetCFString(), v10) || (v10 = FigXPCMessageSetCFDictionary(), v10) || (v10 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v10))
      {
        v13 = v10;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          v13 = 0;
          if (a5)
          {
            *a5 = int64;
          }
        }

        else
        {
          remoteRemaker_AddAudioMixdownTrackWithPreset_cold_1(&v16);
          v13 = v16;
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (v11)
    {
      CFRelease(v11);
    }

    return v13;
  }
}

uint64_t remoteRemaker_AddVideoCompositionTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, int a9, const __CFArray *a10, const __CFArray *a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, int a17, int a18, uint64_t a19, unsigned int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  v38 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && (*(a13 + 12) & 0x1D) == 1)
  {
    v27 = remoteRemakerFamily_CreateXPCMessage(a1, 1835103843, &v38);
    if (!v27)
    {
      v36 = *a13;
      v37 = *(a13 + 16);
      v27 = remoteRemakerFamily_AddVideoCompositionTrackCommon(a1, v38, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v36, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
    }

    v28 = v27;
    FigXPCRelease();
    return v28;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteRemaker_AddPassthroughTrackWithOptions(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1836086383, &xdict);
    if (v8 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v8 = FigXPCMessageSetCFDictionary(), v8) || (v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
    {
      v10 = v8;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v10 = 0;
        if (a4)
        {
          *a4 = int64;
        }
      }

      else
      {
        remoteRemaker_AddPassthroughTrackWithOptions_cold_1(&v12);
        v10 = v12;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v10;
  }
}

uint64_t remoteRemaker_CanPerformFastFrameRateConversion(uint64_t a1, int a2)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = remoteRemakerFamily_CreateXPCMessage(a1, 1835427427, &xdict);
    if (!v5)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      v5 = FigXPCMessageSetCMTime();
      if (!v5)
      {
        v5 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    v6 = v5;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }
}

uint64_t remoteRemaker_AddTemporalMetadataTrackWithOptions(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1836346740, &xdict);
    if (v8 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v8 = FigXPCMessageSetCFDictionary(), v8) || (v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
    {
      v10 = v8;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      v10 = 0;
      if (a4)
      {
        *a4 = int64;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v10;
  }
}

uint64_t remoteRemaker_CopyTrackProperty(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  xdict = 0;
  cf = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a3 && a5)
  {
    v10 = remoteRemakerFamily_CreateXPCMessage(a1, 1920099184, &xdict);
    if (v10 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v10 = FigXPCMessageSetCFString(), v10) || (v10 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v10))
    {
      v11 = v10;
    }

    else
    {
      v11 = FigXPCMessageCopyCFObject();
      if (!v11)
      {
        *a5 = cf;
        cf = 0;
      }
    }

    FigXPCRelease();
    FigXPCRelease();
    if (cf)
    {
      CFRelease(cf);
    }

    FigXPCRemoteClientKillServerOnTimeout();
    return v11;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t frr_GetDefaultSourceTrack(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  xdict = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a3)
  {
    v7 = remoteRemakerFamily_CreateXPCMessage(a1, 1717859188, &xdict);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      xpc_dictionary_set_int64(xdict, "MediaType", a2);
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v8)
      {
        *a3 = xpc_dictionary_get_int64(0, "TrackIDOut");
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v8;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(const __CFArray *a1, const void *a2, void *a3)
{
  if (!a1)
  {
    v10 = 0;
    *a3 = 0;
    return v10;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_7:
    v10 = 0;
    *a3 = CFRetain(a1);
    return v10;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    if (!ValueAtIndex)
    {
      frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_5(&v23);
      return v23;
    }

    if (CFDictionaryContainsKey(ValueAtIndex, a2))
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_4(&v23);
    return v23;
  }

  v13 = MutableCopy;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v23 = 0;
    v17 = CFArrayGetValueAtIndex(v13, v14);
    if (!v17)
    {
      frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_3(&v24);
      goto LABEL_33;
    }

    v18 = v17;
    Value = CFDictionaryGetValue(v17, a2);
    if (!Value)
    {
      goto LABEL_21;
    }

    ServerObjectToken = MTAudioProcessingTapRemoteGetServerObjectToken(Value, &v23);
    if (ServerObjectToken)
    {
      v10 = ServerObjectToken;
      goto LABEL_34;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v15 = CFNumberCreate(v11, kCFNumberSInt64Type, &v23);
    if (!v15)
    {
      frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_2(&v24);
      goto LABEL_33;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v21 = CFDictionaryCreateMutableCopy(v11, 0, v18);
    v16 = v21;
    if (!v21)
    {
      break;
    }

    CFDictionaryReplaceValue(v21, a2, v15);
    CFArraySetValueAtIndex(v13, v14, v16);
LABEL_21:
    if (v7 == ++v14)
    {
      v10 = 0;
      *a3 = v13;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens_cold_1(&v24);
LABEL_33:
  v10 = v24;
LABEL_34:
  CFRelease(v13);
  if (v15)
  {
LABEL_23:
    CFRelease(v15);
  }

LABEL_24:
  if (v16)
  {
    CFRelease(v16);
  }

  return v10;
}

uint64_t remoteRemakerFamily_AddVideoCompositionTrackCommon(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, const void *a9, int a10, const __CFArray *a11, const __CFArray *a12, uint64_t a13, __int128 *a14, int a15, int a16, int a17, int a18, int a19, uint64_t a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v58 = 0;
  v59[0] = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  if (*DerivedStorage || (*(a14 + 3) & 0x1D) != 1)
  {
    goto LABEL_5;
  }

  if (!a9)
  {
    if (!a10 && !a11)
    {
      v29 = a21;
      v49 = DerivedStorage;
      if (!a12)
      {
        goto LABEL_25;
      }
    }

LABEL_5:

    return FigSignalErrorAtGM();
  }

  if (DerivedStorage[32])
  {
    goto LABEL_5;
  }

  v29 = a21;
  if (a10)
  {
    if (a11)
    {
      goto LABEL_5;
    }

    v49 = DerivedStorage;
    if (a12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!a11)
    {
      goto LABEL_5;
    }

    v49 = DerivedStorage;
    Count = CFArrayGetCount(a11);
    if (a12)
    {
      if (Count != CFArrayGetCount(a12))
      {
        goto LABEL_5;
      }
    }

    else if (Count <= 0)
    {
      goto LABEL_5;
    }
  }

LABEL_25:
  v31 = FigXPCMessageSetCFArray();
  if (v31)
  {
    goto LABEL_72;
  }

  v31 = FigXPCMessageSetCFArray();
  if (v31)
  {
    goto LABEL_72;
  }

  v31 = FigXPCMessageSetCFArray();
  if (v31)
  {
    goto LABEL_72;
  }

  v31 = FigXPCMessageSetCFArray();
  if (v31)
  {
    goto LABEL_72;
  }

  if (!a7)
  {
    goto LABEL_55;
  }

  v32 = CFGetTypeID(a7);
  if (v32 != CFStringGetTypeID())
  {
    v33 = CFGetTypeID(a7);
    if (v33 == FigVideoCompositorGetTypeID())
    {
      ObjectID = FigVideoCompositorRemoteGetObjectID(a7, v59);
      if (ObjectID)
      {
LABEL_73:
        v38 = ObjectID;
        goto LABEL_49;
      }

      Mutable = *(v49 + 9);
      if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*(v49 + 9) = Mutable) != 0))
      {
        CFArrayAppendValue(Mutable, a7);
        goto LABEL_36;
      }

      remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_1(&v52);
LABEL_56:
      v38 = v52;
      goto LABEL_49;
    }

LABEL_55:
    remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_4(&v52);
    goto LABEL_56;
  }

LABEL_36:
  FigXPCMessageSetCFString();
  xpc_dictionary_set_uint64(a2, "VideoCompositorObjectID", v59[0]);
  ObjectID = FigXPCMessageSetCFArray();
  if (ObjectID)
  {
    goto LABEL_73;
  }

  v52 = *a14;
  v53 = *(a14 + 2);
  ObjectID = FigXPCMessageSetCMTime();
  if (ObjectID)
  {
    goto LABEL_73;
  }

  xpc_dictionary_set_int64(a2, "SourceTrackIDForFrameTiming", a15);
  xpc_dictionary_set_int64(a2, "RenderWidth", a16);
  xpc_dictionary_set_int64(a2, "RenderHeight", a17);
  xpc_dictionary_set_int64(a2, "Width", a18);
  xpc_dictionary_set_int64(a2, "Height", a19);
  v31 = FigXPCMessageSetCFDictionary();
  if (v31 || (xpc_dictionary_set_uint64(a2, "VideoCodecType", v29), v31 = FigXPCMessageSetCFDictionary(), v31) || (v31 = FigXPCMessageSetCFDictionary(), v31) || (v31 = FigXPCMessageSetCFDictionary(), v31) || (v31 = remoteRemakerFamily_copySerializableVideoCompositionProcessorProperties(), v31) || (v31 = FigXPCMessageSetCFDictionary(), v31))
  {
LABEL_72:
    v38 = v31;
    goto LABEL_49;
  }

  if (!a9)
  {
    goto LABEL_45;
  }

  RemoteCAContextAndAttachLayer = remoteRemakerFamily_CreateXPCMessage(a1, 1836081507, &v57);
  v40 = v57;
  if (!RemoteCAContextAndAttachLayer)
  {
    v41 = a11 ? CFArrayGetCount(a11) : 0;
    xpc_dictionary_set_int64(v40, "AnimationVideoLayerCount", v41);
    RemoteCAContextAndAttachLayer = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!RemoteCAContextAndAttachLayer)
    {
      v42 = xpc_dictionary_copy_mach_send();
      *(v49 + 9) = v42;
      if (!v42)
      {
        remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_2(&v52);
LABEL_75:
        v38 = v52;
        goto LABEL_49;
      }

      RemoteCAContextAndAttachLayer = FigXPCMessageCopyCFArray();
      if (!RemoteCAContextAndAttachLayer)
      {
        v49[32] = 1;
        v43 = CFRetain(a9);
        v44 = v49;
        v45 = v43;
        *(v49 + 5) = v43;
        v46 = a11;
        if (a11)
        {
          v46 = CFRetain(a11);
          v44 = v49;
          v45 = *(v49 + 5);
        }

        *(v44 + 8) = v46;
        v47 = v44;
        RemoteCAContextAndAttachLayer = FigRemote_CreateRemoteCAContextAndAttachLayer(*(v44 + 9), v45, v44 + 6, v44 + 14);
        if (!RemoteCAContextAndAttachLayer)
        {
          xpc_dictionary_set_uint64(a2, "AnimationRemoteContextID", *(v47 + 14));
          v48 = *(v47 + 8);
          if (!v48 || (RemoteCAContextAndAttachLayer = FigRemote_InstallSlotIDsInVideoLayers(v58, v48), !RemoteCAContextAndAttachLayer))
          {
            xpc_dictionary_set_int64(a2, "AnimationTrackID", a10);
            RemoteCAContextAndAttachLayer = FigXPCMessageSetCFArray();
            if (!RemoteCAContextAndAttachLayer)
            {
              RemoteCAContextAndAttachLayer = FigXPCMessageSetCFDictionary();
              if (!RemoteCAContextAndAttachLayer)
              {
LABEL_45:
                RemoteCAContextAndAttachLayer = FigXPCRemoteClientSendSyncMessageCreatingReply();
                if (!RemoteCAContextAndAttachLayer)
                {
                  int64 = xpc_dictionary_get_int64(v55, "TrackIDOut");
                  if (int64)
                  {
                    v38 = 0;
                    if (a26)
                    {
                      *a26 = int64;
                    }

                    goto LABEL_49;
                  }

                  remoteRemakerFamily_AddVideoCompositionTrackCommon_cold_3(&v52);
                  goto LABEL_75;
                }
              }
            }
          }
        }
      }
    }
  }

  v38 = RemoteCAContextAndAttachLayer;
LABEL_49:
  v39 = v38;
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  if (v58)
  {
    CFRelease(v58);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  return v39;
}

__CFString *remoteReader_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
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
  CFStringAppendFormat(Mutable, 0, @"<FigAssetReaderRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

uint64_t remoteReader_EnableOriginalSampleExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1920169065, &xdict);
    if (v8 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v8 = FigXPCMessageSetCFDictionary(), v8) || (v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
    {
      v10 = v8;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v10 = 0;
        if (a4)
        {
          *a4 = int64;
        }
      }

      else
      {
        remoteReader_EnableOriginalSampleExtractionFromTrack_cold_1(&v12);
        v10 = v12;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v10;
  }
}

uint64_t remoteReader_EnableOriginalSampleReferenceExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1920168564, &xdict);
    if (v8 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v8 = FigXPCMessageSetCFDictionary(), v8) || (v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
    {
      v10 = v8;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v10 = 0;
        if (a4)
        {
          *a4 = int64;
        }
      }

      else
      {
        remoteReader_EnableOriginalSampleReferenceExtractionFromTrack_cold_1(&v12);
        v10 = v12;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v10;
  }
}

uint64_t remoteReader_EnableDecodedVideoExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5, const __CFDictionary *a6, _DWORD *a7)
{
  xdict = 0;
  cf = 0;
  v19 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    PixelBufferAttributesWithIOSurfaceSupport = remoteRemakerFamily_CreateXPCMessage(a1, 1920361844, &xdict);
    if (PixelBufferAttributesWithIOSurfaceSupport)
    {
      goto LABEL_21;
    }

    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    if (a6)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a6))
      {
        CFDictionaryGetValue(a6, @"AssetReader_CopyDataBuffers");
        FigCFEqual();
      }
    }

    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    if (PixelBufferAttributesWithIOSurfaceSupport || (PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCFDictionary(), PixelBufferAttributesWithIOSurfaceSupport) || (PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCFDictionary(), PixelBufferAttributesWithIOSurfaceSupport) || (v17 = *a5, v18 = *(a5 + 2), PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCMTime(), PixelBufferAttributesWithIOSurfaceSupport) || (PixelBufferAttributesWithIOSurfaceSupport = FigXPCMessageSetCFDictionary(), PixelBufferAttributesWithIOSurfaceSupport) || (PixelBufferAttributesWithIOSurfaceSupport = FigXPCRemoteClientSendSyncMessageCreatingReply(), PixelBufferAttributesWithIOSurfaceSupport))
    {
LABEL_21:
      v16 = PixelBufferAttributesWithIOSurfaceSupport;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v19, "TrackIDOut");
      if (int64)
      {
        v16 = 0;
        if (a7)
        {
          *a7 = int64;
        }
      }

      else
      {
        remoteReader_EnableDecodedVideoExtractionFromTrack_cold_1(&v17);
        v16 = v17;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    if (cf)
    {
      CFRelease(cf);
    }

    FigXPCRelease();
    FigXPCRelease();
    return v16;
  }
}

uint64_t remoteReader_EnableAudioMixdownExtraction(uint64_t a1, const __CFArray *a2, const void *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v22 = 0;
  v23 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v15 = remoteRemakerFamily_CreateXPCMessage(a1, 1918987621, &v22);
    if (v15)
    {
      v21 = v15;
      v17 = 0;
    }

    else
    {
      v16 = frr_CopySourceAudioTrackArrayWithAudioProcessingTapServerTokens(a2, @"AssetReaderSource_AudioProcessingTap", &v23);
      v18 = v22;
      v17 = v23;
      if (v16)
      {
        goto LABEL_23;
      }

      v16 = FigXPCMessageSetCFArray();
      if (v16)
      {
        goto LABEL_23;
      }

      if (a3)
      {
        xpc_dictionary_set_data(v18, "AudioDestASBD", a3, 0x28uLL);
      }

      if (a4 && a5)
      {
        xpc_dictionary_set_data(v18, "AudioDestChannelLayout", a5, a4);
      }

      v16 = FigXPCMessageSetCFDictionary();
      if (v16 || (v16 = FigXPCMessageSetCFDictionary(), v16) || (v16 = FigXPCMessageSetCFDictionary(), v16))
      {
LABEL_23:
        v21 = v16;
      }

      else
      {
        v19 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
          if (int64)
          {
            v21 = 0;
            if (a9)
            {
              *a9 = int64;
            }
          }

          else
          {
            remoteReader_EnableAudioMixdownExtraction_cold_1(&v24);
            v21 = v24;
          }
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (v17)
    {
      CFRelease(v17);
    }

    return v21;
  }
}

uint64_t remoteReader_StartExtractionForTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage() || (a2->flags & 0x1D) != 1)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if ((a3->flags & 0x1D) == 1)
    {
      *&time1.start.value = *&a2->value;
      time1.start.epoch = a2->epoch;
      time2 = *a3;
      if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
      {
        return FigSignalErrorAtGM();
      }
    }

    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1920165234, &v12);
    if (!v8)
    {
      time2 = *a2;
      v9 = *a3;
      CMTimeRangeFromTimeToTime(&time1, &time2, &v9);
      v8 = FigXPCMessageSetCMTimeRange();
      if (!v8)
      {
        v8 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    v6 = v8;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }
}

uint64_t remoteReader_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, int a3, BOOL *a4, CFTypeRef *a5)
{
  v32 = 0;
  cf = 0;
  xdict = 0;
  v31 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  v11 = remoteRemakerFamily_CreateXPCMessage(a1, 1919251298, &xdict);
  if (v11)
  {
    goto LABEL_39;
  }

  v12 = xdict;
  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  xpc_dictionary_set_BOOL(v12, "WaitForSampleBuffer", a3 != 0);
  xpc_dictionary_set_BOOL(v12, "RequestedSampleBuffer", a5 != 0);
  v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v11)
  {
    goto LABEL_39;
  }

  v13 = xpc_dictionary_get_BOOL(0, "ExtractionCompleteOut");
  if (a4)
  {
    *a4 = v13;
  }

  if (!a5)
  {
    v16 = 0;
    BlockBufferData = 0;
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  *a5 = 0;
  v14 = *MEMORY[0x1E695E480];
  BlockBufferData = FigXPCMessageCreateBlockBufferData();
  v16 = 0;
  v17 = cf;
  v18 = 0;
  if (BlockBufferData || !cf)
  {
    goto LABEL_24;
  }

  v11 = frr_CopyTrackInfo(a1, a2, &v31);
  if (v11)
  {
LABEL_39:
    BlockBufferData = v11;
LABEL_40:
    v16 = 0;
    goto LABEL_22;
  }

  value = xpc_dictionary_get_value(0, "IOSurfaceArray");
  if (!value)
  {
    goto LABEL_37;
  }

  v20 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    remoteReader_ExtractAndRetainNextSampleBuffer_cold_3(&v34);
    goto LABEL_36;
  }

  v22 = count;
  Mutable = CFArrayCreateMutable(v14, count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteReader_ExtractAndRetainNextSampleBuffer_cold_2(&v34);
LABEL_36:
    BlockBufferData = v34;
    if (!v34)
    {
LABEL_37:
      v29 = xpc_dictionary_get_value(0, "IOSurface");
      v18 = IOSurfaceLookupFromXPCObject(v29);
      SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
      v16 = 0;
      if (SampleBufferFromSerializedAtomBlockBufferAndSurface)
      {
LABEL_38:
        BlockBufferData = SampleBufferFromSerializedAtomBlockBufferAndSurface;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    goto LABEL_40;
  }

  v16 = Mutable;
  for (i = 0; i != v22; ++i)
  {
    v25 = xpc_array_get_value(v20, i);
    v26 = IOSurfaceLookupFromXPCObject(v25);
    if (!v26)
    {
      remoteReader_ExtractAndRetainNextSampleBuffer_cold_1(v16, &v34);
      goto LABEL_36;
    }

    v27 = v26;
    CFArrayAppendValue(v16, v26);
    CFRelease(v27);
  }

  SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurfaceArray();
  v18 = 0;
  if (SampleBufferFromSerializedAtomBlockBufferAndSurface)
  {
    goto LABEL_38;
  }

LABEL_20:
  BlockBufferData = 0;
  *a5 = v32;
  v32 = 0;
LABEL_23:
  v17 = cf;
LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return BlockBufferData;
}

uint64_t remoteReader_EnableDecodedAudioExtractionFromTrackWithAudioOptions(uint64_t a1, int a2, _OWORD *a3, size_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v23 = 0;
  xdict = 0;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v15 = remoteRemakerFamily_CreateXPCMessage(a1, 1919251553, &xdict);
    v16 = xdict;
    if (v15)
    {
      goto LABEL_20;
    }

    if (a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = v21;
    }

    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    xpc_dictionary_set_data(v16, "AudioDestASBD", v17, 0x28uLL);
    if (a4 && a5)
    {
      xpc_dictionary_set_data(v16, "AudioDestChannelLayout", a5, a4);
    }

    v15 = FigXPCMessageSetCFDictionary();
    if (v15 || (v15 = FigXPCMessageSetCFDictionary(), v15) || (v15 = FigXPCMessageSetCFDictionary(), v15))
    {
LABEL_20:
      v20 = v15;
    }

    else
    {
      v18 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(v23, "TrackIDOut");
        if (int64)
        {
          v20 = 0;
          if (a9)
          {
            *a9 = int64;
          }
        }

        else
        {
          remoteReader_EnableDecodedAudioExtractionFromTrackWithAudioOptions_cold_1(&v25);
          v20 = v25;
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v20;
  }
}

uint64_t remoteReader_StartExtractionForTimeRanges(uint64_t a1, void *a2, uint64_t a3)
{
  xdict = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a3 > 0 && a2)
  {
    v7 = a2 + 5;
    v8 = a3;
    while ((*(v7 - 7) & 0x1D) == 1 && (*(v7 - 4) & 1) != 0 && !*v7 && (*(v7 - 2) & 0x8000000000000000) == 0)
    {
      v7 += 6;
      if (!--v8)
      {
        v9 = remoteRemakerFamily_CreateXPCMessage(a1, 1920168563, &xdict);
        if (!v9)
        {
          if (a3 <= 0x555555555555555)
          {
            v10 = 48 * a3;
          }

          else
          {
            v10 = 0;
          }

          xpc_dictionary_set_data(xdict, "TimeRanges", a2, v10);
          v9 = FigXPCRemoteClientSendSyncMessage();
        }

        v11 = v9;
        FigXPCRemoteClientKillServerOnTimeout();
        FigXPCRelease();
        return v11;
      }
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t remoteReader_StartExtractionForTimeRangesFromTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  xdict = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a4 > 0 && a3)
  {
    v9 = a3 + 5;
    v10 = a4;
    while ((*(v9 - 7) & 0x1D) == 1 && (*(v9 - 4) & 1) != 0 && !*v9 && (*(v9 - 2) & 0x8000000000000000) == 0)
    {
      v9 += 6;
      if (!--v10)
      {
        v11 = remoteRemakerFamily_CreateXPCMessage(a1, 1920169076, &xdict);
        v12 = xdict;
        if (!v11)
        {
          xpc_dictionary_set_int64(xdict, "TrackID", a2);
          if (a4 <= 0x555555555555555)
          {
            v13 = 48 * a4;
          }

          else
          {
            v13 = 0;
          }

          xpc_dictionary_set_data(v12, "TimeRanges", a3, v13);
          v11 = FigXPCRemoteClientSendSyncMessage();
        }

        v14 = v11;
        FigXPCRemoteClientKillServerOnTimeout();
        FigXPCRelease();
        return v14;
      }
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t remoteReader_EnableCaptionExtractionFromTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = remoteRemakerFamily_CreateXPCMessage(a1, 1919115640, &xdict);
    if (v8 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v8 = FigXPCMessageSetCFDictionary(), v8) || (v8 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v8))
    {
      v10 = v8;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v10 = 0;
        if (a4)
        {
          *a4 = int64;
        }
      }

      else
      {
        remoteReader_EnableCaptionExtractionFromTrack_cold_1(&v12);
        v10 = v12;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v10;
  }
}

uint64_t remoteReader_StartExtractionForTime(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && (*(a2 + 12) & 0x1D) == 1)
  {
    v5 = remoteRemakerFamily_CreateXPCMessage(a1, 1920165236, &v7);
    if (!v5)
    {
      v5 = FigXPCMessageSetCMTime();
      if (!v5)
      {
        v5 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    v6 = v5;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteReader_EnableVideoCompositionExtraction2(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, int a7, const __CFArray *a8, const __CFArray *a9, uint64_t a10, __int128 *a11, int a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const __CFDictionary *a24, _DWORD *a25)
{
  v26 = *a11;
  v27 = *(a11 + 2);
  return remoteReader_EnableVideoCompositionExtraction3(a1, a2, a3, 0, 0, a4, a5, a6, a7, a8, a9, a10, &v26, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t frr_CopyTrackInfo(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SInt32 = FigCFNumberCreateSInt32();
  if (!SInt32)
  {
    frr_CopyTrackInfo_cold_2(&v12);
    return v12;
  }

  v6 = SInt32;
  os_unfair_lock_lock((DerivedStorage + 80));
  Value = CFDictionaryGetValue(*(DerivedStorage + 88), v6);
  if (Value)
  {
    Instance = Value;
    CFRetain(Value);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_8:
    os_unfair_lock_unlock((DerivedStorage + 80));
    if (Instance)
    {
      CFRelease(Instance);
    }

    v9 = 0;
    goto LABEL_11;
  }

  MEMORY[0x19A8D3660](&remoteRemakerTrackInfo_GetTypeID_sRegisterFigRemoteRemakerTrackInfoOnce, remoteRemakerTrackInfo_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance && !frr_CopyTrackInfo_cold_1(&v11))
  {
    v9 = v11;
    goto LABEL_5;
  }

  CFDictionarySetValue(*(DerivedStorage + 88), v6, Instance);
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 0;
  *a3 = Instance;
LABEL_5:
  os_unfair_lock_unlock((DerivedStorage + 80));
LABEL_11:
  CFRelease(v6);
  return v9;
}

uint64_t remoteRemakerTrackInfo_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigRemoteRemakerTrackInfoID = result;
  return result;
}

void *remoteRemakerTrackInfo_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void remoteRemakerTrackInfo_Finalize(uint64_t a1)
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

__CFString *remoteWriter_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
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
  CFStringAppendFormat(Mutable, 0, @"<FigAssetWriterRemote %p retainCount: %ld%s allocator: %p>", a1, v5, v6, v7);
  return Mutable;
}

uint64_t remoteWriter_AddNativeTrack(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = remoteRemakerFamily_CreateXPCMessage(a1, 2002873972, &xdict);
    if (v7 || (xpc_dictionary_set_int64(xdict, "MediaType", a2), v7 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v7))
    {
      v9 = v7;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v9 = 0;
        if (a3)
        {
          *a3 = int64;
        }
      }

      else
      {
        remoteWriter_AddNativeTrack_cold_1(&v11);
        v9 = v11;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v9;
  }
}

uint64_t remoteWriter_AddAudioTrackWithCompression(uint64_t a1, const void *a2, size_t a3, const void *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2)
  {

    return FigSignalErrorAtGM();
  }

  v14 = remoteRemakerFamily_CreateXPCMessage(a1, 2002875491, &xdict);
  v15 = xdict;
  if (v14)
  {
    goto LABEL_23;
  }

  xpc_dictionary_set_data(xdict, "AudioDestASBD", a2, 0x28uLL);
  if (a3 && a4)
  {
    xpc_dictionary_set_data(v15, "AudioDestChannelLayout", a4, a3);
  }

  v14 = FigXPCMessageSetCFDictionary();
  if (v14)
  {
LABEL_23:
    v19 = v14;
    v16 = 0;
  }

  else
  {
    v16 = 0;
    v21 = 0;
    if (!a6)
    {
LABEL_12:
      v17 = FigXPCMessageSetCFDictionary();
      if (v17 || (v17 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v17))
      {
        v19 = v17;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
        if (int64)
        {
          v19 = 0;
          if (a7)
          {
            *a7 = int64;
          }
        }

        else
        {
          remoteWriter_AddAudioTrackWithCompression_cold_2(&v22);
          v19 = v22;
        }
      }

      goto LABEL_17;
    }

    if (remoteWriter_AddAudioTrackWithCompression_cold_1(a6, &v21, &v22, &v23))
    {
      v16 = v22;
      goto LABEL_12;
    }

    v16 = 0;
    v19 = v23;
  }

LABEL_17:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v16)
  {
    CFRelease(v16);
  }

  return v19;
}

uint64_t remoteWriter_AddAudioTrackWithPresetCompression(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = remoteRemakerFamily_CreateXPCMessage(a1, 2002875504, &v10);
    if (v7 || (v7 = FigXPCMessageSetCFString(), v7) || (v7 = FigXPCMessageSetCFDictionary(), v7) || (v7 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v7))
    {
      v9 = v7;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v9 = 0;
        if (a4)
        {
          *a4 = int64;
        }
      }

      else
      {
        remoteWriter_AddAudioTrackWithPresetCompression_cold_1(&v11);
        v9 = v11;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v9;
  }
}

uint64_t remoteWriter_AddVideoTrackWithCompression(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  v12 = *a9;
  v13 = *(a9 + 16);
  return remoteWriter_AddVideoTrackWithCompressionAndMediaType(a1, a2, a3, a4, 0x76696465u, a5, a6, a7, a8, &v12, a10, a11);
}

uint64_t remoteWriter_SetTrackProperty(uint64_t a1, int a2, const void *a3, const __CFArray *a4)
{
  cf = 0;
  xdict = 0;
  if (!*CMBaseObjectGetDerivedStorage() && a3)
  {
    MetadataBinaryPListData = remoteRemakerFamily_CreateXPCMessage(a1, 2003989616, &xdict);
    if (!MetadataBinaryPListData)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      MetadataBinaryPListData = FigXPCMessageSetCFString();
      if (!MetadataBinaryPListData)
      {
        if (!CFEqual(a3, @"AssetWriterTrack_Metadata") || (MetadataBinaryPListData = FigRemote_CreateMetadataBinaryPListData(a4, *MEMORY[0x1E695E480], &cf), !MetadataBinaryPListData))
        {
          MetadataBinaryPListData = FigXPCMessageSetCFObject();
          if (!MetadataBinaryPListData)
          {
            MetadataBinaryPListData = FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }

    v10 = MetadataBinaryPListData;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    if (cf)
    {
      CFRelease(cf);
    }

    return v10;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteWriter_CopyTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFAllocator *a4, CFTypeRef *a5)
{
  xdict = 0;
  v26 = 0;
  cf[1] = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2 || !a3 || !a5)
  {

    return FigSignalErrorAtGM();
  }

  if (!CFEqual(a3, @"AssetWriterTrack_PixelBufferPool"))
  {
    v16 = remoteRemakerFamily_CreateXPCMessage(a1, 2003985264, &xdict);
    if (!v16)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      v16 = FigXPCMessageSetCFString();
      if (!v16)
      {
        v16 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v16)
        {
          v16 = FigXPCMessageCopyCFObject();
        }
      }
    }

    v13 = v16;
    goto LABEL_26;
  }

  v11 = frr_CopyTrackInfo(a1, a2, &v26);
  if (v11)
  {
    goto LABEL_46;
  }

  v12 = *(v26 + 2);
  if (v12)
  {
    v13 = 0;
    *a5 = CFRetain(v12);
    goto LABEL_26;
  }

  v23 = 0;
  cf[0] = 0;
  pixelBufferAttributes = 0;
  v22 = 0;
  v20 = 0;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v14)
  {
    v13 = 4294954514;
    goto LABEL_26;
  }

  v11 = v14(a1, a2, 0x1F0B52818, a4, cf);
  if (v11)
  {
LABEL_46:
    v13 = v11;
    goto LABEL_26;
  }

  v13 = FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary(cf[0], &v23, &v22);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v13)
  {
    goto LABEL_26;
  }

  PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  if (PixelBufferAttributesWithIOSurfaceSupport)
  {
    v13 = PixelBufferAttributesWithIOSurfaceSupport;
    if (v23)
    {
      CFRelease(v23);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    goto LABEL_26;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v22 = 0;
  v17 = CVPixelBufferPoolCreate(a4, v23, pixelBufferAttributes, &v20);
  if (v23)
  {
    CFRelease(v23);
  }

  if (pixelBufferAttributes)
  {
    CFRelease(pixelBufferAttributes);
  }

  if (v17)
  {
    v11 = FigSignalErrorAtGM();
    goto LABEL_46;
  }

  v18 = v20;
  *(v26 + 2) = v20;
  if (v18)
  {
    CFRetain(v18);
    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  v13 = 0;
  *a5 = v19;
LABEL_26:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (v26)
  {
    CFRelease(v26);
  }

  return v13;
}

uint64_t remoteWriter_BeginSession(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && (*(a2 + 12) & 0x1D) == 1)
  {
    v5 = remoteRemakerFamily_CreateXPCMessage(a1, 2003985011, &v7);
    if (!v5)
    {
      v5 = FigXPCMessageSetCMTime();
      if (!v5)
      {
        v5 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    v6 = v5;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteWriter_AddSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  aSurface = 0;
  xdict = 0;
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a3)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = frr_CopyTrackInfo(a1, a2, &cf);
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      SerializedAtomDataAndSurfaceForSampleBuffer = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer();
      if (SerializedAtomDataAndSurfaceForSampleBuffer)
      {
        v9 = SerializedAtomDataAndSurfaceForSampleBuffer;
        *(cf + 4) = 0;
      }

      else
      {
        *(cf + 4) = (v16 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        v10 = remoteRemakerFamily_CreateXPCMessage(a1, 2003984755, &xdict);
        v11 = xdict;
        if (v10 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), v10 = FigXPCMessageSetAndConsumeVMData(), v10))
        {
          v9 = v10;
        }

        else
        {
          XPCObject = IOSurfaceCreateXPCObject(aSurface);
          xpc_dictionary_set_value(v11, "IOSurface", XPCObject);
          v9 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    if (cf)
    {
      CFRelease(cf);
    }

    return v9;
  }
}

uint64_t remoteWriter_AddPixelBuffer(uint64_t a1, uint64_t a2, __CVBuffer *a3, __int128 *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  aSurface = 0;
  xdict = 0;
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a3 || (*(a4 + 3) & 0x1D) != 1)
  {

    return FigSignalErrorAtGM();
  }

  v9 = remoteRemakerFamily_CreateXPCMessage(a1, 2003984752, &xdict);
  if (v9)
  {
    goto LABEL_25;
  }

  v10 = xdict;
  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  if (frr_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
  {
    remoteWriter_AddPixelBuffer_cold_1();
  }

  if (!CVPixelBufferGetIOSurface(a3))
  {
    if (!CVPixelBufferGetIOSurface(a3))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = frr_CopyTrackInfo(a1, a2, &cf);
    if (!v9)
    {
      SerializedAtomDataAndSurfaceForPixelBuffer = FigRemote_CreateSerializedAtomDataAndSurfaceForPixelBuffer();
      if (SerializedAtomDataAndSurfaceForPixelBuffer)
      {
        v12 = SerializedAtomDataAndSurfaceForPixelBuffer;
        *(cf + 4) = 0;
        goto LABEL_20;
      }

      *(cf + 4) = (v19 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      v9 = FigXPCMessageSetAndConsumeVMData();
      if (!v9)
      {
        XPCObject = IOSurfaceCreateXPCObject(aSurface);
        xpc_dictionary_set_value(v10, "IOSurface", XPCObject);
LABEL_12:
        v21 = *a4;
        v22 = *(a4 + 2);
        v11 = FigXPCMessageSetCMTime();
        if (!v11)
        {
          v11 = FigXPCRemoteClientSendSyncMessage();
        }

        goto LABEL_14;
      }
    }

LABEL_25:
    v12 = v9;
    goto LABEL_20;
  }

  v11 = FigPixelBufferOriginSetPixelBufferInXPCMessage();
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_14:
  v12 = v11;
LABEL_20:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

BOOL remoteWriter_IsTrackQueueAboveHighWaterLevel(uint64_t a1, int a2)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    FigSignalErrorAtGM();
    return 0;
  }

  else
  {
    v4 = !remoteRemakerFamily_CreateXPCMessage(a1, 2003988840, &xdict) && (xpc_dictionary_set_int64(xdict, "TrackID", a2), !FigXPCRemoteClientSendSyncMessageCreatingReply()) && xpc_dictionary_get_BOOL(0, "IsTrackQueueAboveHighWaterLevelOut");
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
  }

  return v4;
}

uint64_t remoteWriter_MarkEndOfDataForTrack(uint64_t a1, int a2)
{
  v5 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    remoteWriter_MarkEndOfDataForTrack_cold_1(a1, &v5, a2, &v6);
    return v6;
  }
}

uint64_t remoteWriter_EndSession(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (!*CMBaseObjectGetDerivedStorage() && (*(a2 + 12) & 0x1D) == 1)
  {
    v5 = remoteRemakerFamily_CreateXPCMessage(a1, 2003985779, &v7);
    if (!v5)
    {
      v5 = FigXPCMessageSetCMTime();
      if (!v5)
      {
        v5 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    v6 = v5;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteWriter_Finish()
{
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    remoteWriter_Finish_cold_1();
    return v1;
  }
}

uint64_t remoteWriter_FinishAsync()
{
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    remoteWriter_FinishAsync_cold_1();
    return v1;
  }
}

uint64_t remoteWriter_BeginPass(uint64_t a1, int a2)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = remoteRemakerFamily_CreateXPCMessage(a1, 2003985008, &xdict);
    if (!v5)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      v5 = FigXPCMessageSetCFDictionary();
      if (!v5)
      {
        v5 = FigXPCRemoteClientSendSyncMessage();
      }
    }

    v6 = v5;
    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    return v6;
  }
}

uint64_t remoteWriter_EndPass(uint64_t a1, int a2)
{
  v5 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    remoteWriter_EndPass_cold_1(a1, &v5, a2, &v6);
    return v6;
  }
}

uint64_t remoteWriter_AddCaptionTrack(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v10 = remoteRemakerFamily_CreateXPCMessage(a1, 2003001712, &v14);
    v11 = v14;
    if (v10 || (v10 = FigXPCMessageSetCFDictionary(), v10) || (xpc_dictionary_set_uint64(v11, "MediaType", a2), xpc_dictionary_set_uint64(v11, "MediaSubType", a3), v10 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v10))
    {
      v13 = v10;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(0, "TrackIDOut");
      if (int64)
      {
        v13 = 0;
        if (a5)
        {
          *a5 = int64;
        }
      }

      else
      {
        remoteWriter_AddCaptionTrack_cold_1(&v15);
        v13 = v15;
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v13;
  }
}

uint64_t remoteWriter_CopyFormatWriterTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, void *a5)
{
  cf = 0;
  xdict = 0;
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a3)
  {

    return FigSignalErrorAtGM();
  }

  FormatDescriptionCollectionFromPList = remoteRemakerFamily_CreateXPCMessage(a1, 1719104624, &xdict);
  if (FormatDescriptionCollectionFromPList)
  {
    goto LABEL_18;
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  FormatDescriptionCollectionFromPList = FigXPCMessageSetCFString();
  if (FormatDescriptionCollectionFromPList)
  {
    goto LABEL_18;
  }

  FormatDescriptionCollectionFromPList = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (FormatDescriptionCollectionFromPList)
  {
    goto LABEL_18;
  }

  FormatDescriptionCollectionFromPList = FigXPCMessageCopyCFObject();
  if (FormatDescriptionCollectionFromPList)
  {
    goto LABEL_18;
  }

  if (CFEqual(a3, @"FormatDescriptionArray"))
  {
    FormatDescriptionCollectionFromPList = FigRemote_CreateFormatDescriptionCollectionFromPList();
    if (!FormatDescriptionCollectionFromPList)
    {
      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      goto LABEL_14;
    }

LABEL_18:
    v11 = FormatDescriptionCollectionFromPList;
    goto LABEL_15;
  }

LABEL_14:
  v11 = 0;
  *a5 = v12;
LABEL_15:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t remoteWriter_Flush()
{
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    remoteWriter_Flush_cold_1();
    return v1;
  }
}

uint64_t remoteWriter_AddTaggedPixelBufferGroup(uint64_t a1, int a2, OpaqueCMTaggedBufferGroup *a3, uint64_t a4)
{
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a3 || (*(a4 + 12) & 0x1D) != 1)
  {
LABEL_2:

    return FigSignalErrorAtGM();
  }

  if (CMTaggedBufferGroupGetCount(a3) >= 1)
  {
    v9 = 0;
    while (CMTaggedBufferGroupGetCVPixelBufferAtIndex(a3, v9))
    {
      if (++v9 >= CMTaggedBufferGroupGetCount(a3))
      {
        goto LABEL_11;
      }
    }

    goto LABEL_2;
  }

LABEL_11:
  v10 = remoteRemakerFamily_CreateXPCMessage(a1, 2003988583, &xdict);
  if (!v10)
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    v10 = FigXPCMessageSetCMTime();
    if (!v10)
    {
      if (frr_shouldUseFigPixelBufferMemorySharing_onceToken != -1)
      {
        frr_CreateEmptyWrapper_cold_2();
      }

      v10 = FigPixelBufferOriginSetTaggedBufferGroupInXPCMessage();
      if (!v10)
      {
        v10 = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  v11 = v10;
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v11;
}

uint64_t remoteWriter_AddVideoTrackWithCompressionAndMediaType(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, _DWORD *a12)
{
  v27 = 0;
  xdict = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v22 = a5;
    v17 = remoteRemakerFamily_CreateXPCMessage(a1, 2004251747, &v27);
    v18 = v27;
    if (v17 || (xpc_dictionary_set_int64(v27, "Width", a2), xpc_dictionary_set_int64(v18, "Height", a3), v17 = FigXPCMessageSetCFDictionary(), v17) || (xpc_dictionary_set_uint64(v18, "MediaType", v22), xpc_dictionary_set_uint64(v18, "VideoCodecType", a6), v17 = FigXPCMessageSetCFDictionary(), v17) || (v17 = FigXPCMessageSetCFDictionary(), v17) || (v17 = FigXPCMessageSetCFDictionary(), v17) || (v24 = *a10, v25 = *(a10 + 2), v17 = FigXPCMessageSetCMTime(), v17))
    {
      v21 = v17;
    }

    else
    {
      v19 = FigXPCMessageSetCFDictionary();
      if (v19 || (v19 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v19))
      {
        v21 = v19;
      }

      else
      {
        int64 = xpc_dictionary_get_int64(xdict, "TrackIDOut");
        if (int64)
        {
          v21 = 0;
          if (a12)
          {
            *a12 = int64;
          }
        }

        else
        {
          remoteWriter_AddVideoTrackWithCompressionAndMediaType_cold_1(&v24);
          v21 = v24;
        }
      }
    }

    FigXPCRemoteClientKillServerOnTimeout();
    FigXPCRelease();
    FigXPCRelease();
    return v21;
  }
}

void remoteRemakerFamily_storeSandboxRegistration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 128);
  if (Mutable || (Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]), (*(DerivedStorage + 128) = Mutable) != 0))
  {
    if (a2)
    {

      CFSetAddValue(Mutable, a2);
    }
  }

  else
  {
    remoteRemakerFamily_storeSandboxRegistration_cold_1();
  }
}

void OUTLINED_FUNCTION_2_107()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_5_75()
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t PKDKeyManagerCreateKeyRequestForKeyID(uint64_t a1, void *a2, CFDictionaryRef theDict, const void *a4, void *a5)
{
  v37 = 0;
  v38 = 0;
  cf = 0;
  v36 = 0;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B10]);
  v11 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AF0]);
  v12 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AB0]);
  v13 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B20]);
  v34 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AD8]);
  if (!v11)
  {
    v30 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AC8]);
    if (v30)
    {
      v14 = CFRetain(v30);
    }

    else
    {
      v14 = 0;
    }

    v31 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AC0]);
    if (v31)
    {
      v32 = CFRetain(v31);
    }

    else
    {
      v32 = 0;
    }

    v37 = v32;
    if (a4)
    {
      v33 = CFRetain(a4);
    }

    else
    {
      v33 = 0;
    }

    cf = v33;
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_61:
    PKDKeyManagerCreateKeyRequestForKeyID_cold_5(&v39);
LABEL_67:
    v28 = v39;
    goto LABEL_40;
  }

  if (PKDCopyInfoFromPackagedPersistentKey(v11, 0, &v37, &cf, &v36))
  {
    PKDKeyManagerCreateKeyRequestForKeyID_cold_1(&v39);
    v14 = 0;
    goto LABEL_67;
  }

  v14 = 0;
  if (!v37)
  {
    goto LABEL_61;
  }

LABEL_4:
  if (!cf)
  {
    PKDKeyManagerCreateKeyRequestForKeyID_cold_4(&v39);
    goto LABEL_67;
  }

  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 != CFDataGetTypeID())
    {
      PKDKeyManagerCreateKeyRequestForKeyID_cold_2(&v39);
      goto LABEL_67;
    }
  }

  if (!a5)
  {
    PKDKeyManagerCreateKeyRequestForKeyID_cold_3(&v39);
    goto LABEL_67;
  }

  *a5 = 0;
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexLock();
  KeyRequestForEntryInternal = keyManager_copyEntryForKeyIDInternal(a1, a2, 0, &v38);
  if (KeyRequestForEntryInternal)
  {
    goto LABEL_62;
  }

  v17 = *(v38 + 4);
  *(v38 + 4) = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v37;
  v19 = *(v38 + 5);
  *(v38 + 5) = v37;
  if (v18)
  {
    CFRetain(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(v38 + 6);
  v21 = cf;
  *(v38 + 6) = cf;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  KeyRequestForEntryInternal = keyManager_createKeyRequestForEntryInternal(a1, v38, v37, cf, v14, Value, v36, 0, v13, v34, a5);
  if (KeyRequestForEntryInternal)
  {
LABEL_62:
    v28 = KeyRequestForEntryInternal;
  }

  else
  {
    v22 = v37;
    v23 = cf;
    v24 = *(a1 + 48);
    *(a1 + 48) = v37;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    v25 = *(a1 + 56);
    *(a1 + 56) = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    v26 = *(a1 + 64);
    *(a1 + 64) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v27 = *(a1 + 80);
    *(a1 + 80) = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v28 = 0;
  }

  FigSimpleMutexUnlock();
LABEL_40:
  if (v38)
  {
    CFRelease(v38);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v28;
}

uint64_t keyManager_copyEntryForKeyIDInternal(CFDictionaryRef *a1, void *key, int a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    keyManager_copyEntryForKeyIDInternal_cold_5(context);
    return context[0];
  }

  if (!key)
  {
    keyManager_copyEntryForKeyIDInternal_cold_4(context);
    return context[0];
  }

  if (!a4)
  {
    keyManager_copyEntryForKeyIDInternal_cold_3(context);
    return context[0];
  }

  *a4 = 0;
  Value = CFDictionaryGetValue(a1[11], key);
  if (Value)
  {
    Instance = CFRetain(Value);
    if (a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Instance = 0;
    if (a3)
    {
LABEL_17:
      if (Instance)
      {
        v11 = 0;
        *a4 = Instance;
        return v11;
      }

      keyManager_copyEntryForKeyIDInternal_cold_2(context);
      return context[0];
    }
  }

  if (Instance)
  {
    goto LABEL_17;
  }

  *context = xmmword_1E748D9C8;
  if (keyManagerEntry_getTypeID_once != -1)
  {
    dispatch_once_f(&keyManagerEntry_getTypeID_once, context, CFRuntimeClassRegisterOnce);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFRetain(a1);
    v10 = CFRetain(key);
    v11 = 0;
    *(Instance + 128) = 0;
    *(Instance + 24) = v10;
    *(Instance + 80) = 0;
    *(Instance + 88) = 0;
    *(Instance + 56) = 0;
    *(Instance + 176) = 0;
    *(Instance + 168) = 1;
    *(Instance + 184) = 1;
    *(Instance + 136) = Instance + 128;
  }

  else
  {
    keyManager_copyEntryForKeyIDInternal_cold_1(context);
    v11 = context[0];
  }

  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v11)
  {
    CFDictionarySetValue(a1[11], key, Instance);
    goto LABEL_17;
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return v11;
}

uint64_t keyManager_createKeyRequestForEntryInternal(uint64_t a1, void *a2, const __CFData *a3, CFArrayRef theArray, const void *a5, const void *a6, const void *a7, unsigned int a8, const void *a9, const void *a10, void *a11)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a8 > 5)
  {
    keyManager_createKeyRequestForEntryInternal_cold_14(v38);
    return v38[0];
  }

  if (((1 << a8) & 0x16) != 0)
  {
    if (!a7)
    {
      return 4294955146;
    }
  }

  else if (((1 << a8) & 0x21) != 0)
  {
    if (!a5)
    {
      return 4294955146;
    }
  }

  else
  {
    if (a7)
    {
      keyManager_createKeyRequestForEntryInternal_cold_1(v38);
      return v38[0];
    }

    if (a5)
    {
      keyManager_createKeyRequestForEntryInternal_cold_2(v38);
      return v38[0];
    }
  }

  if (!a1)
  {
    keyManager_createKeyRequestForEntryInternal_cold_13(v38);
    return v38[0];
  }

  if (!a3)
  {
    keyManager_createKeyRequestForEntryInternal_cold_12(v38);
    return v38[0];
  }

  if (!a11)
  {
    keyManager_createKeyRequestForEntryInternal_cold_11(v38);
    return v38[0];
  }

  *a11 = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

  if (a2[2] != a1)
  {
    keyManager_createKeyRequestForEntryInternal_cold_3(v38);
    return v38[0];
  }

  v19 = keyManager_ensureMovieIDInternal(a1, a3, theArray);
  if (v19)
  {
    return v19;
  }

  if (a2[8])
  {
    keyManager_createKeyRequestForEntryInternal_cold_4(v38);
    return v38[0];
  }

LABEL_17:
  v20 = a5;
  if (a8 >= 5)
  {
    FigSignalErrorAtGM();
  }

  v21 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    keyManager_createKeyRequestForEntryInternal_cold_9(v38);
LABEL_74:
    v31 = 0;
    v26 = 0;
    v27 = 0;
    v18 = v38[0];
    goto LABEL_52;
  }

  v35 = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v35)
  {
    keyManager_createKeyRequestForEntryInternal_cold_8(v38);
    goto LABEL_74;
  }

  UInt64 = FigCFNumberCreateUInt64();
  if (!UInt64)
  {
    keyManager_createKeyRequestForEntryInternal_cold_7(v38);
    v31 = 0;
    v26 = 0;
    v18 = v38[0];
    v27 = v35;
    goto LABEL_52;
  }

  if (((1 << a8) & 0x16) != 0)
  {
    if (a7)
    {
      CFDictionarySetValue(Mutable, @"igoeg", a7);
      goto LABEL_28;
    }

    keyManager_createKeyRequestForEntryInternal_cold_6(v38);
LABEL_81:
    v31 = 0;
    v18 = v38[0];
    v27 = v35;
    v26 = UInt64;
    goto LABEL_52;
  }

  if (((1 << a8) & 0x21) != 0)
  {
    if (v20)
    {
      v23 = @"HJN6grNt";
      v24 = Mutable;
      v25 = v20;
LABEL_30:
      CFDictionarySetValue(v24, v23, v25);
      goto LABEL_31;
    }

    keyManager_createKeyRequestForEntryInternal_cold_5(v38);
    goto LABEL_81;
  }

LABEL_28:
  v25 = *(a1 + 104);
  if (v25)
  {
    v23 = @"lGxB4ky";
    v24 = Mutable;
    goto LABEL_30;
  }

LABEL_31:
  CFDictionarySetValue(Mutable, @"Y7bdIsnh7", a3);
  if (theArray)
  {
    CFDictionarySetValue(Mutable, @"P5h3ZgzLxs", theArray);
  }

  v26 = UInt64;
  if (a2 && a2[9])
  {
    FigCFDictionarySetInt64();
  }

  v27 = v35;
  if (a9)
  {
    CFDictionarySetValue(Mutable, @"LBV3vEsw", a9);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, @"xNJu5eepP", a6);
  }

  if (a10)
  {
    CFDictionarySetValue(Mutable, @"mDCRHTmtTKJ", a10);
  }

  CFDictionarySetValue(Mutable, @"aMII4QYJ", UInt64);
  FigCFDictionarySetInt32();
  v28 = **(a1 + 32);
  if (v28 == 3)
  {
    v29 = TnhfdPSFlg(Mutable, v35);
LABEL_46:
    v18 = v29;
    if (v29)
    {
      v31 = 0;
    }

    else
    {
      FigCFDictionaryGetInt64IfPresent();
      Value = CFDictionaryGetValue(v35, @"yN1lNULD2GD");
      if (Value)
      {
        v31 = CFRetain(Value);
      }

      else
      {
        v31 = 0;
      }

      v18 = 0;
    }

    goto LABEL_52;
  }

  if (v28 == 2)
  {
    v29 = pC3lVfLuVJLMz(Mutable, v35);
    goto LABEL_46;
  }

  v31 = 0;
  v18 = 4294955137;
LABEL_52:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EAF17448 >= 2)
    {
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (!v18)
  {
    if (((1 << a8) & 0x31) == 0 || !a2)
    {
      v18 = 0;
      *a11 = v31;
      return v18;
    }

    a2[8] = 0;
    keyManager_createKeyRequestForEntryInternal_cold_10(928, v38);
    v18 = v38[0];
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v18;
}

uint64_t PKDKeyManagerSetUsedForLowValueDecryptionForKeyID(CFDictionaryRef *a1, void *a2, char a3)
{
  cf = 0;
  if (a2)
  {
    FigSimpleMutexLock();
    v6 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
    if (!v6)
    {
      *(cf + 96) = a3;
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    PKDKeyManagerSetUsedForLowValueDecryptionForKeyID_cold_1(&v9);
    return v9;
  }

  return v6;
}

uint64_t PKDKeyManagerEnsureAndCopyLowValueKeyAndIVForKeyID(CFDictionaryRef *a1, void *a2, void *a3, void *a4)
{
  v11 = 0;
  if (a2)
  {
    FigSimpleMutexLock();
    v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &v11);
    if (!v8)
    {
      v8 = keyManager_ensureAndCopyLowValueKeyAndIVForEntryInternal(a1, v11, a3, a4);
    }

    v9 = v8;
    FigSimpleMutexUnlock();
  }

  else
  {
    PKDKeyManagerEnsureAndCopyLowValueKeyAndIVForKeyID_cold_1(&v12);
    return v12;
  }

  return v9;
}

uint64_t PKDKeyManagerSetKeyRequestResponseForKeyID(uint64_t a1, void *a2, const void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    PKDKeyManagerSetKeyRequestResponseForKeyID_cold_2(v23);
    return v23[0];
  }

  if (!a3)
  {
    PKDKeyManagerSetKeyRequestResponseForKeyID_cold_1(v23);
    return v23[0];
  }

  FigSimpleMutexLock();
  v7 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v7)
  {
    v8 = cf;
    if (!*(cf + 8) || *(cf + 7))
    {
      v7 = FigSignalErrorAtGM();
      if (!v7)
      {
        if (!*(a1 + 112))
        {
LABEL_16:
          v20 = 0;
          goto LABEL_17;
        }

LABEL_13:
        v11 = *(a1 + 120);
        if (v11)
        {
          v12 = *(a1 + 96);
          v13 = *(a1 + 80);
          v15 = *(a1 + 56);
          v14 = *(a1 + 64);
          v16 = *(a1 + 48);
          ID = PKDAPIProviderGetID(*(a1 + 32));
          v18 = *(a1 + 72);
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v19)
          {
            v19(v11, v16, v12, v13, v14, v15, ID, v18);
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = *(cf + 96);
      v10 = *(cf + 80);
      *(cf + 7) = a3;
      CFRetain(a3);
      if (*(v8 + 80))
      {
        v7 = keyManager_processOnlineKeyInternal(a1, v8, 2);
        if (v7)
        {
          goto LABEL_24;
        }

        JE2f6WCx();
        v8[8] = 0;
      }

      if (v10)
      {
LABEL_12:
        *(a1 + 112) = 1;
        goto LABEL_13;
      }

      if (v9)
      {
        v7 = keyManager_ensureAndCopyLowValueKeyAndIVForEntryInternal(a1, v8, 0, 0);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = keyManager_ensureDecryptContextForEntryInternal(a1, v8, 0);
        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_24:
  v20 = v7;
LABEL_17:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

__CFString *PKDAPIProviderGetID(_DWORD *a1)
{
  if (*a1 == 2)
  {
    return @"F19BF03B-7470-41A4-9655-86D078307D59";
  }

  if (*a1 == 3)
  {
    return @"EC396D13-FB13-4993-9D0D-71518ACF3D6F";
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

uint64_t PKDKeyManagerIsDecryptContextAvailableForKeyID(CFDictionaryRef *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerIsDecryptContextAvailableForKeyID_cold_2(&v8);
    return v8;
  }

  if (!a2)
  {
    PKDKeyManagerIsDecryptContextAvailableForKeyID_cold_1(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  v4 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (*(cf + 9))
    {
LABEL_5:
      v5 = 0;
      goto LABEL_6;
    }

    if (*(cf + 8))
    {
      if (*(cf + 7))
      {
        goto LABEL_5;
      }
    }

    else if (*(cf + 11))
    {
      goto LABEL_5;
    }

    v5 = 4294955138;
  }

LABEL_6:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t PKDKeyManagerIsReadyToCreateKeyRequestForKeyID(CFDictionaryRef *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerIsReadyToCreateKeyRequestForKeyID_cold_2(&v8);
    return v8;
  }

  if (!a2)
  {
    PKDKeyManagerIsReadyToCreateKeyRequestForKeyID_cold_1(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  v4 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v4)
  {
    v5 = v4;
  }

  else if (*(cf + 8))
  {
    v5 = 4294955138;
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t PKDKeyManagerGetDecryptContextForKeyID(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    PKDKeyManagerGetDecryptContextForKeyID_cold_3(&v6);
    return v6;
  }

  if (!a2)
  {
    PKDKeyManagerGetDecryptContextForKeyID_cold_2(&v6);
    return v6;
  }

  if (!a3)
  {
    PKDKeyManagerGetDecryptContextForKeyID_cold_1(&v6);
    return v6;
  }

  v5 = 0;
  result = keyManager_ensureDecryptContextForKeyID(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t keyManager_ensureDecryptContextForKeyID(uint64_t a1, void *a2, void *a3)
{
  v12 = 0;
  if (!a1)
  {
    keyManager_ensureDecryptContextForKeyID_cold_3(&cf);
LABEL_29:
    v7 = 0;
    v8 = 0;
    v6 = cf;
    goto LABEL_20;
  }

  if (!a2)
  {
    keyManager_ensureDecryptContextForKeyID_cold_2(&cf);
    goto LABEL_29;
  }

  FigSimpleMutexLock();
  if (*(a1 + 24))
  {
    FigSimpleMutexUnlock();
    v6 = FigSignalErrorAtGM();
    v7 = 0;
    v8 = 0;
    goto LABEL_20;
  }

  if (keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &v12) || !v12 || !*(v12 + 19))
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = *(v12 + 20);
  if (!v9)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = CFRetain(v9);
LABEL_12:
  FigSimpleMutexUnlock();
  if (!v7 || v7 == a1)
  {
    cf = 0;
    if (a3)
    {
      v13 = 0;
      FigSimpleMutexLock();
      v10 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
      if (v10)
      {
        v6 = v10;
      }

      else
      {
        v6 = keyManager_ensureDecryptContextForEntryInternal(a1, cf, &v13);
        *a3 = v13;
      }

      FigSimpleMutexUnlock();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      keyManager_ensureDecryptContextForKeyID_cold_1(&v13);
      v6 = v13;
    }
  }

  else
  {
    v6 = keyManager_ensureDecryptContextForKeyID(v7, v8, a3);
  }

LABEL_20:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t PKDKeyManagerRemoveKeyID(CFDictionaryRef *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerRemoveKeyID_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    PKDKeyManagerRemoveKeyID_cold_1(&v7);
    return v7;
  }

  FigSimpleMutexLock();
  v4 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v4)
  {
    CFDictionaryRemoveValue(a1[11], a2);
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t PKDKeyManagerCopySessionID(uint64_t a1, CFDataRef *a2)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      if (a2)
      {
        *a2 = 0;
        FigSimpleMutexLock();
        *a2 = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], *(a1 + 96), 0x8000100u, 0);
        FigSimpleMutexUnlock();
        return 0;
      }

      else
      {
        PKDKeyManagerCopySessionID_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      PKDKeyManagerCopySessionID_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    PKDKeyManagerCopySessionID_cold_3(&v7);
    return v7;
  }
}

uint64_t PKDKeyManagerSetPropertyForKeyID(CFDictionaryRef *a1, void *a2, const void *a3, const __CFBoolean *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_8(v54);
    return v54[0];
  }

  if (!a2)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_7(v54);
    return v54[0];
  }

  if (!a3)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_6(v54);
    return v54[0];
  }

  if (!a4)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_5(v54);
    return v54[0];
  }

  FigSimpleMutexLock();
  v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v8)
  {
    v24 = v8;
  }

  else
  {
    v9 = cf;
    if (CFEqual(a3, *MEMORY[0x1E6961138]))
    {
      v9[80] = CFBooleanGetValue(a4);
      if (dword_1EAF17448)
      {
        v45 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = v45;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = *(v9 + 3);
          v14 = v9[80];
          v46 = 136315906;
          v47 = "keyManager_setPropertyForEntryInternal";
          v48 = 2048;
          v49 = a1;
          v50 = 2114;
          v51 = v13;
          v52 = 1024;
          LODWORD(v53) = v14;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_31:
      v24 = 0;
      goto LABEL_32;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610F8]))
    {
      v9[80] = 1;
      if (dword_1EAF17448)
      {
        v45 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v16 = v45;
        if (os_log_type_enabled(v15, type))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v18 = *(v9 + 3);
          v46 = 136315906;
          v47 = "keyManager_setPropertyForEntryInternal";
          v48 = 2048;
          v49 = a1;
          v50 = 2114;
          v51 = v18;
          v52 = 2048;
          v53 = a4;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v23 = *(v9 + 11);
      *(v9 + 11) = a4;
      CFRetain(a4);
      if (v23)
      {
        CFRelease(v23);
      }

      goto LABEL_31;
    }

    if (!CFEqual(a3, *MEMORY[0x1E69610F0]))
    {
      v24 = 4294954512;
      goto LABEL_32;
    }

    v9[80] = 1;
    if (dword_1EAF17448)
    {
      v45 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v20 = v45;
      if (os_log_type_enabled(v19, type))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *(v9 + 3);
        v46 = 136315906;
        v47 = "keyManager_setPropertyForEntryInternal";
        v48 = 2048;
        v49 = a1;
        v50 = 2114;
        v51 = v22;
        v52 = 2048;
        v53 = a4;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v26 = CFGetTypeID(a4);
    if (v26 == CFDataGetTypeID())
    {
      v27 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a4, 0, 0, 0);
      v28 = v27;
      if (v27)
      {
        v29 = CFGetTypeID(v27);
        if (v29 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v28, *MEMORY[0x1E6962AF8]);
          if (Value && (v31 = Value, v32 = CFGetTypeID(Value), v32 == CFDataGetTypeID()))
          {
            v33 = CFDictionaryGetValue(v28, *MEMORY[0x1E6962AC0]);
            if (v33 && (v34 = v33, v35 = CFGetTypeID(v33), v35 == CFDataGetTypeID()))
            {
              v36 = CFDictionaryGetValue(v28, *MEMORY[0x1E6962B00]);
              if (v36)
              {
                v37 = v36;
                v38 = CFGetTypeID(v36);
                if (v38 == CFArrayGetTypeID())
                {
                  v39 = *(v9 + 11);
                  *(v9 + 11) = v31;
                  CFRetain(v31);
                  if (v39)
                  {
                    CFRelease(v39);
                  }

                  v40 = *(v9 + 5);
                  *(v9 + 5) = v34;
                  CFRetain(v34);
                  if (v40)
                  {
                    CFRelease(v40);
                  }

                  v41 = *(v9 + 6);
                  *(v9 + 6) = v37;
                  CFRetain(v37);
                  if (v41)
                  {
                    CFRelease(v41);
                  }

                  v42 = keyManager_ensureMovieIDInternal(a1, v34, v37);
                  if (!v42)
                  {
                    if (!v9[96])
                    {
                      v24 = 0;
                      goto LABEL_51;
                    }

                    v42 = keyManager_processOfflineKeyInternal(a1, v9, 6);
                  }

                  v24 = v42;
                  goto LABEL_51;
                }
              }

              PKDKeyManagerSetPropertyForKeyID_cold_2(v54);
            }

            else
            {
              PKDKeyManagerSetPropertyForKeyID_cold_3(v54);
            }
          }

          else
          {
            PKDKeyManagerSetPropertyForKeyID_cold_4(v54);
          }

          v24 = v54[0];
LABEL_51:
          CFRelease(v28);
          goto LABEL_32;
        }
      }

      v24 = FigSignalErrorAtGM();
      if (v28)
      {
        goto LABEL_51;
      }
    }

    else
    {
      PKDKeyManagerSetPropertyForKeyID_cold_1(v54);
      v24 = v54[0];
    }
  }

LABEL_32:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t PKDKeyManagerCopyPropertyForKeyID(uint64_t a1, void *a2, const void *a3, CFDataRef *a4)
{
  v38[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_4(v38);
    return LODWORD(v38[0]);
  }

  if (!a2)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_3(v38);
    return LODWORD(v38[0]);
  }

  if (!a3)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_2(v38);
    return LODWORD(v38[0]);
  }

  if (!a4)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_1(v38);
    return LODWORD(v38[0]);
  }

  *a4 = 0;
  FigSimpleMutexLock();
  v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v8)
  {
    v9 = cf;
    if (CFEqual(a3, *MEMORY[0x1E6961138]))
    {
      v10 = MEMORY[0x1E695E4C0];
      if (*(v9 + 80))
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      *a4 = CFRetain(*v10);
    }

    if (CFEqual(a3, *MEMORY[0x1E69610F8]))
    {
      UInt32 = *(v9 + 11);
      if (UInt32)
      {
LABEL_12:
        UInt32 = CFRetain(UInt32);
LABEL_13:
        v12 = 0;
        *a4 = UInt32;
        goto LABEL_17;
      }

      goto LABEL_41;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610F0]))
    {
      PackagedPersistentKeyFromEntryInternal = keyManager_createPackagedPersistentKeyFromEntryInternal(a1, v9, a4);
LABEL_16:
      v12 = PackagedPersistentKeyFromEntryInternal;
      goto LABEL_17;
    }

    if (CFEqual(a3, *MEMORY[0x1E6961120]))
    {
      v38[0] = 0;
      if (!*(v9 + 148))
      {
        PackagedPersistentKeyFromEntryInternal = keyManager_ensureDecryptContextForEntryInternal(a1, v9, 0);
        if (PackagedPersistentKeyFromEntryInternal)
        {
          goto LABEL_16;
        }

        v19 = *(v9 + 9);
        if (v19)
        {
          v20 = **(a1 + 32);
          if (v20 == 3)
          {
            v21 = VCDDnY3lV491XcWac(v19, v38);
          }

          else
          {
            if (v20 != 2)
            {
LABEL_41:
              v12 = 4294955137;
              goto LABEL_17;
            }

            i2DzSgbBIIe95gyG0gW();
          }

          v12 = v21;
          if (!v21)
          {
            if (v38[0] == 0x285A0863BBA8E1D3)
            {
              v22 = 2;
            }

            else
            {
              v22 = v38[0] == 0x40791AC78BD5C571;
            }

            *(v9 + 36) = v22;
            *(v9 + 148) = 1;
            goto LABEL_48;
          }

LABEL_17:
          if (dword_1EAF17448)
          {
            v27 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v15 = v27;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v16 = v15;
            }

            else
            {
              v16 = v15 & 0xFFFFFFFE;
            }

            if (v16)
            {
              if (v9)
              {
                v17 = *(v9 + 3);
              }

              else
              {
                v17 = 0;
              }

              v28 = 136316162;
              v29 = "keyManager_copyPropertyForEntryInternal";
              v30 = 2048;
              v31 = a1;
              v32 = 2114;
              v33 = v17;
              v34 = 2114;
              v35 = a3;
              v36 = 2048;
              v37 = a4;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          goto LABEL_28;
        }

        PackagedPersistentKeyFromEntryInternal = FigSignalErrorAtGM();
        if (PackagedPersistentKeyFromEntryInternal)
        {
          goto LABEL_16;
        }
      }

LABEL_48:
      UInt32 = FigCFNumberCreateUInt32();
      goto LABEL_13;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610E0]))
    {
      UInt32 = *(v9 + 15);
      if (!UInt32)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610A0]))
    {
      UInt32 = *(v9 + 5);
      if (!UInt32)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610D0]))
    {
      if (*(v9 + 9) && (jSNXSLgDwR(), v23 == -42656))
      {
        v24 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v24 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (!CFEqual(a3, *MEMORY[0x1E69610B8]))
      {
        v12 = 4294954512;
        goto LABEL_17;
      }

      v24 = MEMORY[0x1E695E4D0];
      if (*(v9 + 184))
      {
        v24 = MEMORY[0x1E695E4C0];
      }
    }

    UInt32 = *v24;
    goto LABEL_12;
  }

  v12 = v8;
LABEL_28:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t PKDKeyManagerCreatePackagedPersistentKeyForKeyID(CFDictionaryRef *a1, void *a2, uint64_t a3, CFDataRef *a4)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_2(&v11);
    return v11;
  }

  if (!a4)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_1(&v11);
    return v11;
  }

  *a4 = 0;
  FigSimpleMutexLock();
  PackagedPersistentKeyFromEntryInternal = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!PackagedPersistentKeyFromEntryInternal)
  {
    PackagedPersistentKeyFromEntryInternal = keyManager_createPackagedPersistentKeyFromEntryInternal(a1, cf, a4);
  }

  v8 = PackagedPersistentKeyFromEntryInternal;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal(uint64_t a1, const void **a2, CFDataRef *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2[11])
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_6(v15);
    return v15[0];
  }

  if (!a2[5])
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_5(v15);
    return v15[0];
  }

  if (!a2[6])
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_4(v15);
    return v15[0];
  }

  if (!a3)
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_3(v15);
    return v15[0];
  }

  *a3 = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_2(v15);
    return v15[0];
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6962AF8], a2[11]);
  CFDictionarySetValue(v8, *MEMORY[0x1E6962AC0], a2[5]);
  CFDictionarySetValue(v8, *MEMORY[0x1E6962B00], a2[6]);
  v9 = **(a1 + 32);
  if (v9 == 2)
  {
    v10 = MEMORY[0x1E6962B38];
LABEL_10:
    CFDictionarySetValue(v8, *MEMORY[0x1E6962B48], *v10);
    Data = CFPropertyListCreateData(v6, v8, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v12 = 0;
      *a3 = Data;
    }

    else
    {
      keyManager_createPackagedPersistentKeyFromEntryInternal_cold_1(v15);
      v12 = v15[0];
    }

    goto LABEL_13;
  }

  if (v9 == 3)
  {
    v10 = MEMORY[0x1E6962B40];
    goto LABEL_10;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v12 = 4294955138;
LABEL_13:
  CFRelease(v8);
  return v12;
}

uint64_t PKDKeyManagerGetMovieID(void *a1, CFDictionaryRef theDict, void *a3)
{
  if (!a1)
  {
    PKDKeyManagerGetMovieID_cold_5(&v12);
    return v12;
  }

  if (!theDict)
  {
    PKDKeyManagerGetMovieID_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    PKDKeyManagerGetMovieID_cold_3(&v12);
    return v12;
  }

  *a3 = 0;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AC0]);
  if (!Value)
  {
    PKDKeyManagerGetMovieID_cold_2(&v12);
    return v12;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B00]);
  if (!v8)
  {
    PKDKeyManagerGetMovieID_cold_1(&v12);
    return v12;
  }

  v9 = v8;
  FigSimpleMutexLock();
  v10 = keyManager_ensureMovieIDInternal(a1, v7, v9);
  if (!v10)
  {
    *a3 = a1[5];
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t keyManager_ensureMovieIDInternal(void *a1, const __CFData *a2, CFArrayRef theArray)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    keyManager_ensureMovieIDInternal_cold_6(v22);
    return v22[0];
  }

  if (!a2)
  {
    keyManager_ensureMovieIDInternal_cold_5(v22);
    return v22[0];
  }

  if (!theArray)
  {
    keyManager_ensureMovieIDInternal_cold_4(v22);
    return v22[0];
  }

  if (a1[5])
  {
    return 0;
  }

  v21 = 0;
  Count = CFArrayGetCount(theArray);
  v6 = Count;
  if (Count)
  {
    v8 = malloc_type_malloc(4 * Count, 0x100004052888210uLL);
    v9 = 0;
    v10 = v8;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      if (!ValueAtIndex || (v12 = ValueAtIndex, v13 = CFGetTypeID(ValueAtIndex), v13 != CFNumberGetTypeID()))
      {
        keyManager_ensureMovieIDInternal_cold_3(v22);
        goto LABEL_27;
      }

      if (!CFNumberGetValue(v12, kCFNumberSInt32Type, v10))
      {
        keyManager_ensureMovieIDInternal_cold_2(v22);
        goto LABEL_27;
      }

      ++v9;
      v10 += 4;
    }

    while (v6 != v9);
    v14 = a1[4];
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    if (*v14 == 2)
    {
      Qhl17oSYJtCJIxM();
    }

    else
    {
      if (*v14 != 3)
      {
        v6 = 4294955137;
        goto LABEL_21;
      }

      v17 = V2qUlL4PZ5VKVXDsUHg5z(BytePtr, Length, v8, v6, &v21);
    }

    v6 = v17;
    if (v17)
    {
      goto LABEL_21;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%llu", v21);
    a1[12] = v18;
    if (v18)
    {
      v6 = 0;
      a1[5] = v21;
      goto LABEL_21;
    }

    keyManager_ensureMovieIDInternal_cold_1(v22);
LABEL_27:
    v6 = v22[0];
  }

  else
  {
    v8 = 0;
  }

LABEL_21:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  free(v8);
  return v6;
}

uint64_t KeyManagerSetSecureStopManager(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    KeyManagerSetSecureStopManager_cold_2(v8);
LABEL_11:
    v5 = v8[0];
    goto LABEL_6;
  }

  if (!a2)
  {
    KeyManagerSetSecureStopManager_cold_1(v8);
    goto LABEL_11;
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 120);
  *(a1 + 120) = a2;
  CFRetain(a2);
  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  v5 = 0;
LABEL_6:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5;
}

uint64_t PKDKeyManagerGetKeyRequestStateAndID(CFDictionaryRef *a1, void *a2, _DWORD *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerGetKeyRequestStateAndID_cold_2(v12);
    return v12[0];
  }

  if (!a2)
  {
    PKDKeyManagerGetKeyRequestStateAndID_cold_1(v12);
    return v12[0];
  }

  FigSimpleMutexLock();
  v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v8)
  {
    if (a3)
    {
      *a3 = *(cf + 42);
    }

    if (a4)
    {
      *a4 = *(cf + 22);
    }

    if (dword_1EAF17448)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t PKDKeyManagerTestAndSetKeyRequestState(CFDictionaryRef *a1, void *a2, unsigned int a3, unsigned int a4, char *a5, void *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerTestAndSetKeyRequestState_cold_2(v22);
LABEL_26:
    v17 = 0;
    v20 = 0;
    v12 = v22[0];
    goto LABEL_15;
  }

  if (!a2)
  {
    PKDKeyManagerTestAndSetKeyRequestState_cold_1(v22);
    goto LABEL_26;
  }

  FigSimpleMutexLock();
  v12 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v12)
  {
    v17 = 0;
    v20 = 0;
  }

  else
  {
    v13 = cf;
    if (*(cf + 42) == a3)
    {
      *(cf + 42) = a4;
      if (a4 >= a3)
      {
        v14 = a4;
      }

      else
      {
        keyManager_resetKeyRequestContextForEntryInternal(a1, v13);
        v13 = cf;
        v14 = *(cf + 42);
      }

      if (v14 == 2 && (v15 = PKDGetNewRequestID(), v13 = cf, *(cf + 22) = v15, dword_1EAF17448))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v20 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = cf;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    v17 = v13[22];
  }

  FigSimpleMutexUnlock();
LABEL_15:
  if (dword_1EAF17448)
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    *a5 = v20;
  }

  if (a6)
  {
    *a6 = v17;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void keyManager_resetKeyRequestContextForEntryInternal(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    PKDAPIProviderDestroyExchange(*(a1 + 32), v3);
    *(a2 + 64) = 0;
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 56) = 0;
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 32) = 0;
  }

  v6 = *(a2 + 88);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 88) = 0;
  }

  v7 = *(a2 + 104);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 104) = 0;
  }

  v8 = *(a2 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 112) = 0;
  }

  v9 = *(a2 + 152);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 152) = 0;
  }

  v10 = *(a2 + 160);
  if (v10)
  {
    CFRelease(v10);
    *(a2 + 160) = 0;
  }

  *(a2 + 176) = 0;
  *(a2 + 80) = 0;
}

uint64_t PKDKeyManagerSetKeyRequestError(CFDictionaryRef *a1, void *a2, const void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerSetKeyRequestError_cold_4(v16);
LABEL_28:
    v6 = v16[0];
    goto LABEL_20;
  }

  if (!a2)
  {
    PKDKeyManagerSetKeyRequestError_cold_3(v16);
    goto LABEL_28;
  }

  if (!a3)
  {
    PKDKeyManagerSetKeyRequestError_cold_2(v16);
    goto LABEL_28;
  }

  FigSimpleMutexLock();
  v6 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v6)
  {
    v7 = cf;
    *(cf + 42) = 1;
    v8 = v7[15];
    v7[15] = a3;
    CFRetain(a3);
    if (v8)
    {
      CFRelease(v8);
    }

    keyManager_resetKeyRequestContextForEntryInternal(a1, cf);
    v9 = *(cf + 16);
    if (v9)
    {
      while (1)
      {
        v10 = *(v9 + 40);
        if (!*v9 || !*(v9 + 32) || !*(v9 + 24))
        {
          break;
        }

        v11 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E0040DE8CDC7DuLL);
        if (!v11)
        {
          PKDKeyManagerSetKeyRequestError_cold_1();
          goto LABEL_15;
        }

        v12 = FigCFWeakReferenceHolderCopyReferencedObject();
        *v11 = v12;
        if (!v12)
        {
          goto LABEL_15;
        }

        v11[6] = *(v9 + 8);
        *(v11 + 4) = *(v9 + 16);
        *(v11 + 5) = *(v9 + 24);
        *(v11 + 2) = CFRetain(a3);
        dispatch_async_f(*v9, v11, keyManager_dispatchKeyRequestErrorOccurredCallback);
LABEL_16:
        v9 = v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      v11 = 0;
LABEL_15:
      keyManager_releaseCallbackContext(v11);
      goto LABEL_16;
    }
  }

LABEL_19:
  FigSimpleMutexUnlock();
LABEL_20:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext(CFDictionaryRef *a1, CFDictionaryRef *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  v33 = 0;
  v34 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v34 = &v33;
          FigSimpleMutexLock();
          v8 = keyManager_copyEntryForKeyIDInternal(a1, a3, 1, &cf);
          if (v8)
          {
            v29 = v8;
          }

          else
          {
            v32 = a3;
            v9 = *(cf + 16);
            if (v9)
            {
              v10 = 0;
              v11 = *MEMORY[0x1E695E480];
              do
              {
                v12 = v9;
                v9 = *(v9 + 40);
                v13 = FigCFWeakReferenceHolderCopyReferencedObject();
                if (!v13)
                {
LABEL_13:
                  if (v10)
                  {
                    *(v10 + 40) = 0;
                    v19 = v34;
                    *(v10 + 48) = v34;
                    *v19 = v10;
                    v34 = (v10 + 40);
                  }

                  continue;
                }

                v14 = v13;
                v15 = MEMORY[0x19A8CC720](v11, 56, 0x10E004083C12A20, 0);
                if (v15)
                {
                  v16 = v15;
                  *(v15 + 48) = 0;
                  *(v15 + 32) = 0u;
                  *v15 = 0u;
                  *(v15 + 16) = 0u;
                  dispatch_retain(*v12);
                  *v16 = *v12;
                  *(v16 + 8) = *(v12 + 8);
                  *(v16 + 16) = *(v12 + 16);
                  *(v16 + 24) = *(v12 + 24);
                  v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                  *(v16 + 32) = v17;
                  if (v17)
                  {
                    v18 = 0;
                    v10 = v16;
                    goto LABEL_12;
                  }

                  PKDKeyManagerAbsorbKeyRequestContext_cold_1(v37);
                }

                else
                {
                  PKDKeyManagerAbsorbKeyRequestContext_cold_2(v37);
                }

                v18 = v37[0];
LABEL_12:
                CFRelease(v14);
                if (!v18)
                {
                  goto LABEL_13;
                }
              }

              while (v9);
            }

            FigSimpleMutexUnlock();
            if (!cf)
            {
              PKDKeyManagerAbsorbKeyRequestContext_cold_4(v37);
              v29 = v37[0];
              goto LABEL_29;
            }

            FigSimpleMutexLock();
            v20 = keyManager_copyEntryForKeyIDInternal(a2, a4, 1, &value);
            if (!v20)
            {
              v21 = v33;
              if (v33)
              {
                do
                {
                  v22 = (v21 + 40);
                  v23 = *(v21 + 40);
                  v24 = *(v21 + 48);
                  v25 = (v23 + 48);
                  if (!v23)
                  {
                    v25 = &v34;
                  }

                  *v25 = v24;
                  *v24 = v23;
                  *v22 = 0;
                  v26 = *(value + 17);
                  *(v21 + 48) = v26;
                  *v26 = v21;
                  *(value + 17) = v22;
                  v21 = v23;
                }

                while (v23);
              }

              FigSimpleMutexUnlock();
              if (value)
              {
                FigSimpleMutexLock();
                *(value + 19) = FigCFWeakReferenceHolderCreateWithReferencedObject();
                v27 = CFRetain(a4);
                v28 = value;
                *(value + 20) = v27;
                CFDictionarySetValue(a1[11], v32, v28);
                FigSimpleMutexUnlock();
                v29 = 0;
                goto LABEL_29;
              }

              PKDKeyManagerAbsorbKeyRequestContext_cold_3(v37);
              goto LABEL_45;
            }

            v29 = v20;
          }

          FigSimpleMutexUnlock();
          goto LABEL_29;
        }

        PKDKeyManagerAbsorbKeyRequestContext_cold_5(v37);
      }

      else
      {
        PKDKeyManagerAbsorbKeyRequestContext_cold_6(v37);
      }
    }

    else
    {
      PKDKeyManagerAbsorbKeyRequestContext_cold_7(v37);
    }
  }

  else
  {
    PKDKeyManagerAbsorbKeyRequestContext_cold_8(v37);
  }

LABEL_45:
  v29 = v37[0];
LABEL_29:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v29;
}

uint64_t PKDKeyManagerInstallCallbacksForKeyID(CFDictionaryRef *a1, void *a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerInstallCallbacksForKeyID_cold_4(&v18);
    return v18;
  }

  if (!a2)
  {
    PKDKeyManagerInstallCallbacksForKeyID_cold_3(&v18);
    return v18;
  }

  FigSimpleMutexLock();
  v10 = keyManager_copyEntryForKeyIDInternal(a1, a2, 0, &cf);
  if (!v10 && a3 && a4 && a5)
  {
    v11 = cf;
    v12 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 56, 0x10E004083C12A20, 0);
    if (v12)
    {
      v13 = v12;
      *(v12 + 48) = 0;
      *(v12 + 32) = 0u;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      dispatch_retain(a4);
      *v13 = a4;
      *(v13 + 8) = *a5;
      *(v13 + 16) = *(a5 + 8);
      *(v13 + 24) = *(a5 + 16);
      v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v13 + 32) = v14;
      if (v14)
      {
        v10 = 0;
        *(v13 + 40) = 0;
        v15 = v11[17];
        *(v13 + 48) = v15;
        *v15 = v13;
        v11[17] = v13 + 40;
        goto LABEL_10;
      }

      PKDKeyManagerInstallCallbacksForKeyID_cold_1(&v18);
    }

    else
    {
      PKDKeyManagerInstallCallbacksForKeyID_cold_2(&v18);
    }

    v10 = v18;
  }

LABEL_10:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t PKDKeyManagerInvalidate(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = keyManager_invalidateInternal(a1);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t keyManager_createInternal(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    keyManager_createInternal_cold_3(&v12);
    return v12;
  }

  *a3 = 0;
  v12 = xmmword_1E748D9D8;
  if (keyManager_getTypeID_once != -1)
  {
    dispatch_once_f(&keyManager_getTypeID_once, &v12, CFRuntimeClassRegisterOnce);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    keyManager_createInternal_cold_2(&v12);
    return v12;
  }

  v6 = Instance;
  v7 = FigSimpleMutexCreate();
  v6[2] = v7;
  if (!v7)
  {
    v11 = 2884;
LABEL_16:
    keyManager_createInternal_cold_1(v11, v6, &v12);
    return v12;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[11] = Mutable;
  if (!Mutable)
  {
    v11 = 2887;
    goto LABEL_16;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"AuditToken");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v6[13] = Value;
  }

  result = 0;
  *a3 = v6;
  return result;
}

double keyManagerEntry_init(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void keyManagerEntry_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 168) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = **(v2 + 32);
    if (v4 == 3)
    {
      Y08TTM99sD0XheA(v3);
    }

    else if (v4 == 2)
    {
      N8pdwAfn();
    }

    *(a1 + 72) = 0;
  }

  keyManager_resetKeyRequestContextForEntryInternal(v2, a1);
  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    v11 = (a1 + 136);
    v12 = *MEMORY[0x1E695E480];
    do
    {
      v13 = *(v10 + 40);
      if (*v10)
      {
        dispatch_release(*v10);
        *v10 = 0;
      }

      v14 = *(v10 + 32);
      if (v14)
      {
        CFRelease(v14);
        *(v10 + 32) = 0;
      }

      v15 = *(v10 + 40);
      v16 = *(v10 + 48);
      v17 = (v15 + 48);
      if (!v15)
      {
        v17 = v11;
      }

      *v17 = v16;
      *v16 = v15;
      CFAllocatorDeallocate(v12, v10);
      v10 = v13;
    }

    while (v13);
  }
}

uint64_t CFRuntimeClassRegisterOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t keyManager_processOnlineKeyInternal(uint64_t a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 64))
  {
    keyManager_processOnlineKeyInternal_cold_6(v28);
    return v28[0];
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    keyManager_processOnlineKeyInternal_cold_5(v28);
    return v28[0];
  }

  v8 = Mutable;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    keyManager_processOnlineKeyInternal_cold_4(v8, v28);
    return v28[0];
  }

  v10 = v9;
  if (a3 == 2)
  {
    v11 = *(a2 + 88);
    if (v11)
    {
      CFRelease(v11);
      *(a2 + 88) = 0;
    }

    v12 = *(a1 + 104);
    if (v12)
    {
      CFDictionarySetValue(v8, @"lGxB4ky", v12);
    }
  }

  if (*(a2 + 72))
  {
    FigCFDictionarySetInt64();
  }

  CFDictionarySetValue(v8, @"RulIk", *(a2 + 56));
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = PKDAPIProviderProcessCKC(*(a1 + 32), v8, v10);
  if (v14)
  {
    v15 = keyManager_cleanFairPlayStateIfNecessary(a1, v14);
    if (v15 || (v15 = PKDAPIProviderProcessCKC(*(a1 + 32), v8, v10), v15))
    {
LABEL_43:
      v26 = v15;
      goto LABEL_49;
    }
  }

  if (a3 == 1)
  {
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(a2 + 72) = 0;
    }

    if (dword_1EAF17448)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 72))
    {
      goto LABEL_47;
    }

    v15 = FigSignalErrorAtGM();
    goto LABEL_43;
  }

  if (a3 == 3)
  {
    v16 = *(a2 + 104);
    Value = CFDictionaryGetValue(v10, @"sPJ8AGu5PT");
    *(a2 + 104) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (dword_1EAF17448)
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 112);
      v24 = CFDictionaryGetValue(v10, @"o9YYYJ64ntzC");
      *(a2 + 112) = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (dword_1EAF17448)
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(a2 + 112))
      {
LABEL_47:
        v26 = 0;
        if (FigCFDictionaryGetInt64IfPresent())
        {
          *(a2 + 184) = 1;
        }

        goto LABEL_49;
      }

      keyManager_processOnlineKeyInternal_cold_1(v28);
    }

    else
    {
      keyManager_processOnlineKeyInternal_cold_2(v28);
    }
  }

  else
  {
    v20 = *(a2 + 88);
    v21 = CFDictionaryGetValue(v10, @"igoeg");
    *(a2 + 88) = v21;
    if (v21)
    {
      CFRetain(v21);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (dword_1EAF17448)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 88))
    {
      goto LABEL_47;
    }

    keyManager_processOnlineKeyInternal_cold_3(v28);
  }

  v26 = v28[0];
LABEL_49:
  CFRelease(v8);
  CFRelease(v10);
  return v26;
}

uint64_t PKDAPIProviderProcessCKC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 3)
  {
    return YuSm1Tar2l(a2, a3);
  }

  if (*a1 == 2)
  {
    return gojqbvrX305gQO(a2, a3);
  }

  return 4294955137;
}

uint64_t keyManager_cleanFairPlayStateIfNecessary(uint64_t a1, uint64_t a2)
{
  if (a2 == -42670 || a2 == -42844)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    wnFx1xLULXLA();
    a2 = 0;
    if (v4)
    {
      v6 = v4;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v6;
    }
  }

  return a2;
}

void keyManager_dispatchPersistentKeyUpdatedCallback(const void **a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2(*a1, a1[1]);
  }

  keyManager_releaseCallbackContext(a1);
}

void keyManager_releaseCallbackContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void PKDAPIProviderDestroyExchange(_DWORD *a1, uint64_t a2)
{
  if (*a1 == 3)
  {
    JvfqldDvSIjTyuq(a2);
  }

  else if (*a1 == 2)
  {
    JE2f6WCx();
  }
}

void keyManager_dispatchKeyRequestErrorOccurredCallback(const void **a1)
{
  v2 = a1[5];
  if (v2)
  {
    v2(*a1, a1[2]);
  }

  keyManager_releaseCallbackContext(a1);
}

double keyManager_init(_OWORD *a1)
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

CFTypeRef InitPKDAPIProviderForPastis(uint64_t a1)
{
  *a1 = 2;
  result = PKDCopyDisposeStorageAllocator();
  *(a1 + 8) = result;
  return result;
}

CFTypeRef InitPKDAPIProviderForMSECTR(uint64_t a1)
{
  *a1 = 3;
  result = PKDMSECopyDisposeStorageAllocator();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_71()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_7_53()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_9_40(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, os_log_type_t type, int a16)
{

  return os_log_type_enabled(a1, type);
}

uint64_t RegisterFigCaptionDecoderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigXPCImageQueueGaugeServerAssociateCopiedNeighborImageQueueGauge(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);

  return FigXPCServerAssociateCopiedObjectWithNeighborProcess();
}

uint64_t FigXPCImageQueueGaugeServerCopyImageQueueGaugeForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigImageQueueGaugeGetTypeID())
      {
        return 0;
      }
    }

    FigXPCImageQueueGaugeServerCopyImageQueueGaugeForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

const void *FigXPCImageQueueGaugeServerHandlesMessagesForObject(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == FigImageQueueGaugeGetTypeID());
  }

  return result;
}

uint64_t FigXPCImageQueueGaugeServerStartAsSubserver(uint64_t a1)
{
  if (gImageQueueGaugeServer)
  {
    FigXPCImageQueueGaugeServerStartAsSubserver_cold_1(&v3);
    return v3;
  }

  if (!a1)
  {
    FigXPCImageQueueGaugeServerStartAsSubserver_cold_2(&v3);
    return v3;
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __FigXPCImageQueueGaugeServerStartAsSubserver_block_invoke;
  v2[3] = &__block_descriptor_tmp_67;
  v2[4] = a1;
  if (FigXPCImageQueueGaugeServerStartAsSubserver_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigXPCImageQueueGaugeServerStartAsSubserver_onceToken, v2);
  return 0;
}

uint64_t FigDataChannelConfigurationGetTypeID()
{
  if (FigDataChannelConfigurationGetTypeID_sRegisterDataChannelConfigurationTypeOnce != -1)
  {
    FigDataChannelConfigurationGetTypeID_cold_1();
  }

  return FigDataChannelConfigurationGetTypeID_sDataChannelConfigurationTypeID;
}

uint64_t __FigDataChannelConfigurationGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigDataChannelConfigurationGetTypeID_sDataChannelConfigurationTypeID = result;
  return result;
}

double dataChannelConfiguration_init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void dataChannelConfiguration_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
    a1[8] = 0;
  }
}

uint64_t dataChannelConfiguration_equal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  result = FigCFEqual();
  if (result)
  {
    return FigCFEqual() != 0;
  }

  return result;
}

CFStringRef dataChannelConfiguration_copyDebugDesc(uint64_t a1)
{
  if (!a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[DataChannelConfiguration %p]", 0);
  }

  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[DataChannelConfiguration <%p|%@>] activationID %u Resources: %@ Channels: %@ ", a1, *(a1 + 40), *(a1 + 36), *(a1 + 24), v2);
  CFRelease(v2);
  return v3;
}

uint64_t FigDataChannelConfigurationCreate(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {

    return dataChannelConfiguration_createDataChannelConfiguration(a1, a2, a3);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    FigDataChannelConfigurationCreate_cold_1(&v6);
    return v6;
  }
}

uint64_t dataChannelConfiguration_createDataChannelConfiguration(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (FigDataChannelConfigurationGetTypeID_sRegisterDataChannelConfigurationTypeOnce != -1)
  {
    FigDataChannelConfigurationGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    dataChannelConfiguration_createDataChannelConfiguration_cold_3(&v14);
    return v14;
  }

  v6 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v6 + 16) = Mutable;
  if (!Mutable)
  {
    v13 = 240;
LABEL_20:
    dataChannelConfiguration_createDataChannelConfiguration_cold_2(v13, v6, &v14);
    return v14;
  }

  v8 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v6 + 24) = v8;
  if (!v8)
  {
    v13 = 242;
    goto LABEL_20;
  }

  add = atomic_fetch_add(&dataChannelConfiguration_createDataChannelConfiguration_sCurrentDataChannelConfigurationActivationID, 1u);
  *(v6 + 32) = 0;
  *(v6 + 36) = add;
  v10 = dataChannelConfiguration_createDataChannelConfiguration_kMaxDataChannelConfigurationActivationID;
  v11 = dataChannelConfiguration_createDataChannelConfiguration_kMaxDataChannelConfigurationActivationID;
  atomic_compare_exchange_strong(&dataChannelConfiguration_createDataChannelConfiguration_sCurrentDataChannelConfigurationActivationID, &v11, 1u);
  if (v11 != v10)
  {
    dataChannelConfiguration_createDataChannelConfiguration_kMaxDataChannelConfigurationActivationID = v11;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 40) = 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 48) = 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 56) = 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 64) = 0;
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t FigDataChannelConfigurationCreateCopy(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  v28 = 0;
  if (!a2)
  {
    FigDataChannelConfigurationCreateCopy_cold_4(&v29);
    return v29;
  }

  if (!a3)
  {
    FigDataChannelConfigurationCreateCopy_cold_3(&v29);
    return v29;
  }

  v6 = dataChannelConfiguration_createDataChannelConfiguration(a1, 0, &v28);
  v7 = v28;
  if (v6)
  {
    v26 = v6;
    if (!v28)
    {
      return v26;
    }

    goto LABEL_27;
  }

  *(v28 + 32) = *(a2 + 32);
  v8 = *(a2 + 40);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v7 + 40) = v8;
  v9 = *(a2 + 48);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *(v7 + 48) = v9;
  v10 = *(a2 + 56);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *(v7 + 56) = v10;
  v11 = *(a2 + 64);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *(v7 + 64) = v11;
  v12 = *(a2 + 16);
  if (!v12 || (v13 = CFArrayGetCount(v12), v13 < 1))
  {
LABEL_17:
    v19 = *(a2 + 24);
    if (!v19 || (Count = CFArrayGetCount(v19), Count < 1))
    {
LABEL_22:
      v26 = 0;
      *a3 = v7;
      return v26;
    }

    v21 = Count;
    v22 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), v22);
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, ValueAtIndex);
      if (!MutableCopy)
      {
        break;
      }

      v25 = MutableCopy;
      CFArrayAppendValue(*(v7 + 24), MutableCopy);
      CFRelease(v25);
      if (v21 == ++v22)
      {
        goto LABEL_22;
      }
    }

    FigDataChannelConfigurationCreateCopy_cold_2(&v29);
    v26 = v29;
LABEL_27:
    CFRelease(v7);
    return v26;
  }

  v14 = v13;
  v15 = 0;
  while (1)
  {
    v16 = CFArrayGetValueAtIndex(*(a2 + 16), v15);
    v17 = CFDictionaryCreateMutableCopy(a1, 0, v16);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    CFArrayAppendValue(*(v7 + 16), v17);
    CFRelease(v18);
    if (v14 == ++v15)
    {
      goto LABEL_17;
    }
  }

  FigDataChannelConfigurationCreateCopy_cold_1(&v29);
  v26 = v29;
  if (v7)
  {
    goto LABEL_27;
  }

  return v26;
}

uint64_t FigDataChannelConfigurationAddFigImageQueue(const void *a1, const void *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  cf = 0;
  if (!a1)
  {
    FigDataChannelConfigurationAddFigImageQueue_cold_3(&v16);
    return v16;
  }

  if (!a2)
  {
    FigDataChannelConfigurationAddFigImageQueue_cold_2(&v16);
    return v16;
  }

  if (!a3)
  {
    FigDataChannelConfigurationAddFigImageQueue_cold_1(&v16);
    return v16;
  }

  v10 = CFGetAllocator(a1);
  v11 = dataChannelConfiguration_copySidebandVideoPropertiesArrayFromFormatDescriptionArray(v10, a5, &cf);
  v12 = cf;
  if (!v11)
  {
    v11 = dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, cf);
  }

  v13 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t dataChannelConfiguration_addOutputQueueCommon(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    dataChannelConfiguration_addOutputQueueCommon_cold_1(&v20);
    return v20;
  }

  v11 = Mutable;
  if (!a2)
  {
LABEL_14:
    fig_log_get_emitter();
    v15 = FigSignalErrorAtGM();
    goto LABEL_15;
  }

  v12 = CFGetTypeID(a2);
  if (v12 != FigImageQueueGetTypeID())
  {
    v16 = CFGetTypeID(a2);
    if (v16 == FigDataQueueGetTypeID())
    {
      FigCFDictionarySetValue();
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  cf = 0;
  FigCFDictionarySetValue();
  FigBaseObject = FigImageQueueGetFigBaseObject(a2);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v17 = 4294954514;
    goto LABEL_17;
  }

  v15 = v14(FigBaseObject, @"CAImageQueue", v9, &cf);
  if (!v15)
  {
    CAImageQueueGetIdentifier();
    FigCFDictionarySetInt64();
    CFRelease(cf);
LABEL_9:
    FigCFDictionarySetValue();
    if (a4)
    {
      FigCFDictionarySetValue();
    }

    if (a5)
    {
      FigCFDictionarySetValue();
    }

    CFArrayAppendValue(*(a1 + 16), v11);
    v17 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v17 = v15;
LABEL_17:
  CFRelease(v11);
  return v17;
}

uint64_t FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, a5);
      }

      else
      {
        FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_3(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationAddFigDataQueue(const void *a1, const void *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  cf = 0;
  if (!a1)
  {
    FigDataChannelConfigurationAddFigDataQueue_cold_3(&v16);
    return v16;
  }

  if (!a2)
  {
    FigDataChannelConfigurationAddFigDataQueue_cold_2(&v16);
    return v16;
  }

  if (!a3)
  {
    FigDataChannelConfigurationAddFigDataQueue_cold_1(&v16);
    return v16;
  }

  v10 = CFGetAllocator(a1);
  v11 = dataChannelConfiguration_copySidebandVideoPropertiesArrayFromFormatDescriptionArray(v10, a5, &cf);
  v12 = cf;
  if (!v11)
  {
    v11 = dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, cf);
  }

  v13 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, a5);
      }

      else
      {
        FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_3(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationAddDataChannelResource(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v4 = Mutable;
        FigCFDictionarySetValue();
        CFArrayAppendValue(*(a1 + 24), v4);
        CFRelease(v4);
        return 0;
      }

      else
      {
        FigDataChannelConfigurationAddDataChannelResource_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelConfigurationAddDataChannelResource_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationAddDataChannelResource_cold_3(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationSetModificationID(uint64_t a1, int a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 32) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigDataChannelConfigurationSetModificationID_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigDataChannelConfigurationGetModificationID(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t FigDataChannelConfigurationGetActivationID(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

CFIndex FigDataChannelConfigurationGetChannelCount(uint64_t a1)
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

CFIndex FigDataChannelConfigurationGetResourceCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex(uint64_t a1, CFIndex idx)
{
  if (a1)
  {
    if (idx < 0)
    {
      goto LABEL_8;
    }

    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= idx)
    {
LABEL_8:
      FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_1(&v6);
      return v6;
    }

    else
    {
      CFArrayGetValueAtIndex(*(a1 + 16), idx);
      FigCFDictionarySetUInt32();
      return 0;
    }
  }

  else
  {
    FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_2(&v7);
    return v7;
  }
}

uint64_t FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex(uint64_t a1, CFIndex idx, _DWORD *a3)
{
  if (!a1)
  {
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_4(&v8);
    return v8;
  }

  if (!a3)
  {
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_3(&v8);
    return v8;
  }

  if (idx < 0)
  {
    goto LABEL_10;
  }

  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_10:
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_1(&v8);
    return v8;
  }

  CFArrayGetValueAtIndex(*(a1 + 16), idx);
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_2(&v8);
    return v8;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(uint64_t a1, CFIndex idx)
{
  if (a1)
  {
    if (idx < 0)
    {
      goto LABEL_8;
    }

    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= idx)
    {
LABEL_8:
      FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_1(&v6);
      return v6;
    }

    else
    {
      CFArrayGetValueAtIndex(*(a1 + 16), idx);
      FigCFDictionarySetBoolean();
      return 0;
    }
  }

  else
  {
    FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_2(&v7);
    return v7;
  }
}

uint64_t FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex(uint64_t a1, CFIndex idx, _BYTE *a3)
{
  if (a1)
  {
    if (a3)
    {
      if (idx < 0)
      {
        goto LABEL_9;
      }

      Count = *(a1 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= idx)
      {
LABEL_9:
        FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_1(&v8);
        return v8;
      }

      else
      {
        CFArrayGetValueAtIndex(*(a1 + 16), idx);
        FigCFDictionaryGetBooleanIfPresent();
        result = 0;
        *a3 = 0;
      }
    }

    else
    {
      FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  v6 = 0;
  memset(&value[1], 0, 40);
  if (a3)
  {
    if (theDict)
    {
      if (CFDictionaryGetValue(theDict, @"ChannelArray"))
      {
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigDataChannelConfigurationCreateFromDictionary_cold_4(value);
      }

      else
      {
        FigDataChannelConfigurationCreateFromDictionary_cold_5(value);
      }
    }

    else
    {
      FigDataChannelConfigurationCreateFromDictionary_cold_6(value);
    }
  }

  else
  {
    FigDataChannelConfigurationCreateFromDictionary_cold_7(value);
  }

  v4 = LODWORD(value[0]);
  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

uint64_t FigDataChannelConfigurationCopyLoggingIdentifier(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v3);
        if (!Copy)
        {
          FigDataChannelConfigurationCopyLoggingIdentifier_cold_1();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyLoggingIdentifier_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyLoggingIdentifier_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerLoggingIdentifier(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v3);
        if (!Copy)
        {
          FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_1();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 56);
      if (v3)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v3);
        if (!Copy)
        {
          FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_1();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier(CFTypeRef cf, CFStringRef *a2)
{
  if (cf)
  {
    if (a2)
    {
      Copy = *(cf + 8);
      if (Copy)
      {
        v5 = CFGetAllocator(cf);
        Copy = CFStringCreateCopy(v5, *(cf + 8));
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_2(&v8);
    return v8;
  }

  return result;
}

const void *OUTLINED_FUNCTION_4_89()
{
  v3 = *(v1 + 16);

  return CFArrayGetValueAtIndex(v3, v0);
}

uint64_t FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterParagraphStyleAttributeInserter_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_EndElement(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v1);
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v1);
}

void initMappingArray()
{
  v9[14] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E6961208];
  v0 = *MEMORY[0x1E6961220];
  v9[1] = FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor;
  v9[2] = v0;
  v1 = *MEMORY[0x1E6961278];
  v9[3] = FigTTMLDocumentWriterMapPropertyToAttribute_Hidden;
  v9[4] = v1;
  v2 = *MEMORY[0x1E6961230];
  v9[5] = FigTTMLDocumentWriterMapPropertyToAttribute_TextAlign;
  v9[6] = v2;
  v3 = *MEMORY[0x1E6961228];
  v9[7] = FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding;
  v9[8] = v3;
  v4 = *MEMORY[0x1E6961238];
  v9[9] = FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight;
  v9[10] = v4;
  v5 = *MEMORY[0x1E6961218];
  v9[11] = FigTTMLDocumentWriterMapPropertyToAttribute_MultiRowAlign;
  v9[12] = v5;
  v9[13] = FigTTMLDocumentWriterMapPropertyToAttribute_FillLineGap;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 7, 0);
  for (i = 0; i != 14; i += 2)
  {
    v8 = malloc_type_malloc(0x10uLL, 0xE00402B90B96AuLL);
    *v8 = *&v9[i];
    CFArrayAppendValue(Mutable, v8);
  }

  sCaptionPropertyToAttributeMappingArray = Mutable;
}

void OUTLINED_FUNCTION_1_112(int a1, CFRange a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char context)
{
  a2.location = 0;

  CFArrayApplyFunction(v17, a2, v16, &context);
}

__CFString *FigAlternateGetVideoContentTypeStringFromCollection(__CFString *result)
{
  if (result)
  {
    FigTagCollectionGetTagsWithCategory();
    FigTagCollectionGetTagsWithCategory();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag() && FigTagEqualToTag() && FigTagEqualToTag())
    {
      return @"3D";
    }

    else if (FigTagEqualToTag() && FigTagEqualToTag() && (FigTagEqualToTag() || FigTagEqualToTag()))
    {
      return @"IM";
    }

    else if (FigTagEqualToTag())
    {
      return @"EQUI";
    }

    else if (FigTagEqualToTag())
    {
      return @"HEQU";
    }

    else if (FigTagEqualToTag())
    {
      return @"PRIM";
    }

    else if (FigTagEqualToTag())
    {
      return @"2D";
    }

    else
    {
      return @"Unknown";
    }
  }

  return result;
}

uint64_t FigAlternateAreAllAlternatesOnSameHost(const __CFArray *a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  Count = CFArrayGetCount(a1);
  v33 = 0;
  if (Count < 1)
  {
    LOBYTE(IsMediaGroupOnSameHost) = 1;
    return IsMediaGroupOnSameHost;
  }

  v5 = Count;
  v6 = 0;
  v7 = 0;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    v9 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      v17 = 0;
      v10 = 0;
LABEL_19:
      v11 = 0;
      v13 = 1;
      goto LABEL_20;
    }

    v10 = CFArrayGetCount(ValueAtIndex);
    if (v10 < 1)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v6 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 1;
    do
    {
      v14 = CFArrayGetValueAtIndex(v9, v12 - 1);
      PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v14);
      if (PlaylistAlternateURL)
      {
        v16 = PlaylistAlternateURL;
        if (!v6)
        {
          v6 = CFURLCopyAbsoluteURL(PlaylistAlternateURL);
        }

        if (FigCFHTTPIsHTTPBasedURL(v16))
        {
          if (!FigCFHTTPDoURLHostsAndPortsMatch(v6, v16))
          {
            v13 = 0;
          }
        }

        else
        {
          ++v11;
        }
      }

      if (v12 >= v10)
      {
        break;
      }

      ++v12;
    }

    while (v13);
    v33 = v6;
    v17 = v6;
LABEL_20:
    v18 = v11 == v10 || v11 < 1;
    LOBYTE(IsMediaGroupOnSameHost) = v18 ? v13 : 0;
    if (!IsMediaGroupOnSameHost)
    {
      break;
    }

    v20 = CFArrayGetCount(v9);
    Mutable = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
    if (v20 >= 1)
    {
      for (i = 0; i != v20; ++i)
      {
        v23 = CFArrayGetValueAtIndex(v9, i);
        if (FigAlternateGetVideoGroupIDString(v23))
        {
          VideoGroupIDString = FigAlternateGetVideoGroupIDString(v23);
          CFSetAddValue(Mutable, VideoGroupIDString);
        }

        if (FigAlternateGetAudioGroupIDString(v23))
        {
          AudioGroupIDString = FigAlternateGetAudioGroupIDString(v23);
          CFSetAddValue(Mutable, AudioGroupIDString);
        }

        if (FigAlternateGetSubtitleGroupIDString(v23))
        {
          SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(v23);
          CFSetAddValue(Mutable, SubtitleGroupIDString);
        }
      }
    }

    if (!Mutable)
    {
      goto LABEL_43;
    }

    if (!figStreamAlternate_IsMediaGroupOnSameHost(a2, &v33, Mutable) || !figStreamAlternate_IsMediaGroupOnSameHost(a3, &v33, Mutable))
    {
      LOBYTE(IsMediaGroupOnSameHost) = 0;
      goto LABEL_43;
    }

    IsMediaGroupOnSameHost = figStreamAlternate_IsMediaGroupOnSameHost(a4, &v33, Mutable);
    if (v17)
    {
      CFRelease(v17);
      v6 = 0;
      v33 = 0;
    }

    CFRelease(Mutable);
    Mutable = 0;
    if (++v7 >= v5 || !IsMediaGroupOnSameHost)
    {
      goto LABEL_43;
    }
  }

  LOBYTE(IsMediaGroupOnSameHost) = 0;
  Mutable = 0;
LABEL_43:
  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return IsMediaGroupOnSameHost;
}

uint64_t figStreamAlternate_IsMediaGroupOnSameHost(const __CFDictionary *a1, const __CFURL **a2, const __CFSet *a3)
{
  v5 = FigCFDictionaryCopyArrayOfKeys();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      v10 = *MEMORY[0x1E6962BB0];
      v11 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        if (CFSetContainsValue(a3, ValueAtIndex))
        {
          CFDictionaryGetValue(a1, ValueAtIndex);
          v13 = FigCFDictionaryCopyArrayOfValues();
          if (v13)
          {
            v14 = v13;
            v15 = CFArrayGetCount(v13);
            if (v15 < 1)
            {
              v11 = 1;
            }

            else
            {
              v16 = v15;
              v17 = 1;
              v11 = 1;
              do
              {
                v18 = CFArrayGetValueAtIndex(v14, v17 - 1);
                Value = CFDictionaryGetValue(v18, v10);
                if (Value && !FigCFHTTPDoURLHostsAndPortsMatch(*a2, Value))
                {
                  v11 = 0;
                }

                if (v17 >= v16)
                {
                  break;
                }

                ++v17;
              }

              while (v11);
            }

            CFRelease(v14);
          }

          else
          {
            v11 = 1;
          }
        }

        ++v9;
      }

      while (v9 < v8 && v11);
    }

    CFRelease(v6);
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

uint64_t FPSupportVideoRangeToAlternateVideoRange(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_196E77EA8[a1 - 1];
  }
}

uint64_t figStreamAlternate_FigCreateAudioFormatLookupOnce()
{
  qword_1ED4CAEC8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  result = FigSimpleMutexCreate();
  qword_1ED4CAED0 = result;
  return result;
}

uint64_t FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(const __CFArray *a1, int a2)
{
  if (!a1)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    goto LABEL_15;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (Count < 1)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v6 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6 - 1);
    Value = FigCFDictionaryGetValue();
    if (!Value)
    {
      goto LABEL_6;
    }

    v9 = Value;
    if (!FigCFStringGetOSTypeValue() || figStreamAlternate_isSelectionClosedCaptionsMediaType(ValueAtIndex))
    {
      goto LABEL_6;
    }

    if (CFSetContainsValue(Mutable, v9))
    {
      goto LABEL_15;
    }

    CFSetAddValue(Mutable, v9);
    if (a2)
    {
LABEL_6:
      v10 = 0;
    }

    else
    {
      v10 = FigCFDictionaryGetValue();
    }

    if (v6 >= Count)
    {
      break;
    }

    ++v6;
  }

  while (!v10);
LABEL_16:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

BOOL FigStreamAlternateCanConcurrentlyDecodeAlternates(__CFArray *a1, __CFArray *a2)
{
  if (FigAlternateIs4k(a1))
  {
    if (FigAlternateHasStereoVideo(a1))
    {
      FigAlternateGetFrameRate(a1);
      if (CelestialShouldLimit4kStereoConcurrentPlayback())
      {
        return 0;
      }
    }
  }

  if (!FigAlternateIs4k(a2) || !FigAlternateHasStereoVideo(a2))
  {
    return 1;
  }

  FigAlternateGetFrameRate(a2);
  return CelestialShouldLimit4kStereoConcurrentPlayback() == 0;
}

CFMutableArrayRef FigStreamAlternateCopyAvailableVideoDynamicRanges(const __CFArray *a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v5 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 2);
          VideoQualityIndex = FigAlternateGetVideoQualityIndex(ValueAtIndex);
          FigAlternateStreamVideoQualityIndexToCMVideoDynamicRange(VideoQualityIndex);
          FigCFArrayAppendInt32();
          --v5;
        }

        while (v5 > 1);
      }
    }
  }

  else
  {
    FigStreamAlternateCopyAvailableVideoDynamicRanges_cold_1();
  }

  return Mutable;
}

uint64_t FigStreamAlternateCopyMaximumVideoResolution(CFArrayRef theArray, double *a2)
{
  v4 = 0;
  v5 = 0;
  v7 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v8 = 0.0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    Resolution = FigAlternateGetResolution(ValueAtIndex);
    if (Resolution * v12 > v8)
    {
      v5 = 1;
      v6 = v12;
      v7 = Resolution;
      v8 = Resolution * v12;
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v5)
  {
    *a2 = v7;
    a2[1] = v6;
  }

  return v5;
}

CFIndex FigStreamAlternateGetPixelsPerSecondLimits(CFArrayRef theArray, uint64_t a2, __CFArray **a3, __CFArray **a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(theArray); v9 < result; result = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    PixelPerSecondCount = FigAlternateGetPixelPerSecondCount(ValueAtIndex);
    if (!FigAlternateIsIFrameOnly(ValueAtIndex))
    {
      if (!a2 || (FigAlternateGetVideoLayoutTags(ValueAtIndex), FigCFEqual()))
      {
        if (PixelPerSecondCount > v10)
        {
          v7 = ValueAtIndex;
          v10 = PixelPerSecondCount;
        }

        if (PixelPerSecondCount < v11)
        {
          v8 = ValueAtIndex;
          v11 = PixelPerSecondCount;
        }
      }
    }

    ++v9;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (a3)
  {
    *a3 = v7;
  }

  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

CFNumberRef FigStreamAlternateCopyNominalVideoFrameRate(CFArrayRef theArray)
{
  v2 = 0;
  v3 = 0.0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    FrameRate = FigAlternateGetFrameRate(ValueAtIndex);
    v7 = FrameRate;
    if (v7 == 0.0)
    {
      goto LABEL_18;
    }

    if (v3 == 0.0)
    {
      v8 = FrameRate;
      goto LABEL_19;
    }

    if (vabds_f32(v3, v7) <= 0.01)
    {
LABEL_18:
      v8 = v3;
    }

    else
    {
      if (v3 <= v7)
      {
        v8 = FrameRate;
      }

      else
      {
        v8 = v3;
      }

      if (v3 < v7)
      {
        v7 = v3;
      }

      if (fabsf(v8 + (v7 * -2.0)) >= 0.01 && fabsf(v8 + (v7 * -3.0)) >= 0.01 && fabsf(v8 + (v7 * -4.0)) >= 0.01)
      {
        v8 = 0.0;
      }
    }

LABEL_19:
    ++v2;
    v3 = v8;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  valuePtr = v3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
}

uint64_t __figAlternateFeatureDisabledCodecString_block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_78 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_113(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{

  return FigAlternateGetRenditionInfoForMediaType(a1, v9, v10, v11, v12, 0, 0, a8, a9);
}

void *OUTLINED_FUNCTION_3_86(uint64_t a1, size_t a2)
{

  return malloc_type_calloc(1uLL, a2, 0x100004052888210uLL);
}

uint64_t RegisterFigBandwidthPredictorType()
{
  result = _CFRuntimeRegisterClass();
  sFigBandwidthPredictorID = result;
  return result;
}

uint64_t FigBandwidthPredictorCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (sRegisterFigBandwidthPredictorTypeOnce != -1)
  {
    FigBandwidthPredictorCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    FigSymptomsManagerTriggerScorecardsUpdate();
    Value = CFDictionaryGetValue(a2, @"FBP_StoreBagConfiguration");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v6[2] = Value;
    *a3 = CFRetain(v6);
    CFRelease(v6);
    return 0;
  }

  else
  {
    FigBandwidthPredictorCreate_cold_2(&v9);
    return v9;
  }
}

void figBandwidthPredictorFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigRemakerFamilyServer_Destroy(uint64_t a1, uint64_t a2)
{
  *(a2 + 165) = 1;
  if (*(a2 + 32))
  {
    if (FigXPCServerGetConnectionRefcon())
    {
      FigPixelBufferRecipientFlushPixelBufferBackings();
    }

    frs_runningStatsUpdateProgress(a2);
    v3 = *(a2 + 32);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  return FigXPCServerDisassociateObjectWithConnection();
}

void frs_runningStatsUpdateProgress(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigRemakerGetFigBaseObject(*(a1 + 32));
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(FigBaseObject, @"Remaker_Progress", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      FigCFNumberGetFloat32();
      *(a1 + 160) = v4;
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t FigRemakerFamilyServer_RemakerStartOutput(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigRemakerGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_RemakerStartOutput_cold_1(&v5);
    return v5;
  }
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges(const void *a1, void *a2)
{
  v9 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigAssetReaderGetTypeID()))
  {
    data = xpc_dictionary_get_data(a2, "TimeRanges", &v9);
    v6 = v9;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      return v7(a1, data, v6 / 0x30);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges_cold_1(&v10);
    return v10;
  }
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack(const void *a1, void *a2)
{
  v10 = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != FigAssetReaderGetTypeID()))
  {
    FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_2(&v11);
    return v11;
  }

  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  if (!int64)
  {
    FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_1(&v11);
    return v11;
  }

  data = xpc_dictionary_get_data(a2, "TimeRanges", &v10);
  v7 = v10;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v8)
  {
    return v8(a1, int64, data, v7 / 0x30);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == FigAssetWriterGetTypeID()))
  {
    int64 = xpc_dictionary_get_int64(a2, "TrackID");
    if (int64)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v8)
      {
        v9 = v8(a1, int64) != 0;
      }

      else
      {
        v9 = 0;
      }

      xpc_dictionary_set_BOOL(a3, "IsTrackQueueAboveHighWaterLevelOut", v9);
      return 0;
    }

    else
    {
      FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_2(&v12);
    return v12;
  }
}

uint64_t FigRemakerFamilyServer_WriterMarkEndOfDataForTrack(const void *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigAssetWriterGetTypeID()))
  {
    int64 = xpc_dictionary_get_int64(a2, "TrackID");
    if (int64)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v6)
      {

        return v6(a1, int64);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_2(&v9);
    return v9;
  }
}

uint64_t FigRemakerFamilyServer_WriterFinish(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigAssetWriterGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterFinish_cold_1(&v5);
    return v5;
  }
}

uint64_t FigRemakerFamilyServer_WriterFinishAsync(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigAssetWriterGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterFinishAsync_cold_1(&v5);
    return v5;
  }
}

uint64_t FigRemakerFamilyServer_WriterEndPass(const void *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigAssetWriterGetTypeID()))
  {
    int64 = xpc_dictionary_get_int64(a2, "TrackID");
    if (int64)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
      if (v6)
      {

        return v6(a1, int64);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      FigRemakerFamilyServer_WriterEndPass_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterEndPass_cold_2(&v9);
    return v9;
  }
}

uint64_t FigRemakerFamilyServer_WriterFlush(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigAssetWriterGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterFlush_cold_1(&v5);
    return v5;
  }
}

uint64_t frs_MakeWrapperForRemakerFamilyInternal(uint64_t a1, void *a2, const void *a3, uint64_t *a4, int a5, __int128 *a6, int a7)
{
  v14 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10E00401ACD5DA1uLL);
  if (!v14)
  {
    frs_MakeWrapperForRemakerFamilyInternal_cold_2(a1, valuePtr);
    return LODWORD(valuePtr[0]);
  }

  v15 = v14;
  v14[4] = a3;
  CFRetain(a3);
  *(v15 + 16) = a5;
  v16 = *(v15 + 32);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = CFGetTypeID(*(v15 + 32));
  if (v17 == FigAssetReaderGetTypeID())
  {
    v18 = 2;
    goto LABEL_10;
  }

  v19 = CFGetTypeID(v16);
  if (v19 == FigAssetWriterGetTypeID())
  {
    v18 = 3;
    goto LABEL_10;
  }

  v20 = CFGetTypeID(v16);
  if (v20 == FigRemakerGetTypeID())
  {
    v18 = 1;
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

LABEL_10:
  *(v15 + 152) = v18;
  v21 = FigSandboxAssertionCreateForPID();
  if (v21 || (*(v15 + 40) = os_retain(a2), v21 = FigXPCServerAssociateObjectWithConnection(), v21))
  {
    v49 = v21;
    FigRemakerFamilyServer_Destroy(a1, v15);
    return v49;
  }

  FigSimpleMutexLock();
  v22 = _MergedGlobals_79;
  *v15 = qword_1ED4CAEE8;
  _MergedGlobals_79 = v22 + 1;
  qword_1ED4CAEE8 = v15;
  *(v15 + 49) = a7;
  if (!a7)
  {
    goto LABEL_51;
  }

  v23 = *a6;
  *(v15 + 68) = a6[1];
  *(v15 + 52) = v23;
  v24 = &qword_1ED4CAEF0;
  do
  {
    v24 = *v24;
    if (!v24)
    {
      v55 = 0;
      number = 0;
      v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004014030ADEuLL);
      if (!v26)
      {
        frs_MakeWrapperForRemakerFamilyInternal_cold_1(valuePtr);
        v49 = LODWORD(valuePtr[0]);
        if (LODWORD(valuePtr[0]))
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      v24 = v26;
      *(v26 + 2) = *(v15 + 16);
      if (in_audio_mx_server_process())
      {
        UsingPrimaryAVAudioSessionSiblingForAuditToken = CMSessionCreate();
        if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          goto LABEL_66;
        }

        v25 = *MEMORY[0x1E695E480];
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateWithCMSession(*MEMORY[0x1E695E480], v55, v24 + 2);
        if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v25 = *MEMORY[0x1E695E480];
        v28 = *(v15 + 68);
        valuePtr[0] = *(v15 + 52);
        valuePtr[1] = v28;
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v25, valuePtr, @"FigRemaker", v24 + 2);
        if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
LABEL_66:
          v49 = UsingPrimaryAVAudioSessionSiblingForAuditToken;
          free(v24);
          goto LABEL_67;
        }
      }

      v29 = v24[2];
      LODWORD(valuePtr[0]) = *(v24 + 2);
      if (in_audio_mx_server_process())
      {
        if (v29)
        {
          v30 = *(CMBaseObjectGetVTable() + 16);
          if (v30)
          {
            v31 = *(v30 + 56);
            if (v31)
            {
              v31(v29, *MEMORY[0x1E69AFD90], @"RemakerServer");
            }
          }

          v32 = *(CMBaseObjectGetVTable() + 16);
          if (v32)
          {
            v33 = *(v32 + 56);
            if (v33)
            {
              v33(v29, *MEMORY[0x1E69AFCC0], *MEMORY[0x1E69AF648]);
            }
          }

          v34 = CFNumberCreate(v25, kCFNumberSInt32Type, valuePtr);
          if (v34)
          {
            v35 = v34;
            v36 = *(CMBaseObjectGetVTable() + 16);
            if (v36)
            {
              v37 = *(v36 + 56);
              if (v37)
              {
                v37(v29, *MEMORY[0x1E69AFDA8], v35);
              }
            }

            goto LABEL_36;
          }
        }

        else
        {
          v35 = CFNumberCreate(v25, kCFNumberSInt32Type, valuePtr);
          if (v35)
          {
LABEL_36:
            CFRelease(v35);
          }
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      UsingPrimaryAVAudioSessionSiblingForAuditToken = CMNotificationCenterAddListener();
      if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
      {
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigStartForwardingMediaServicesProcessDeathNotification();
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          *v24 = qword_1ED4CAEF0;
          qword_1ED4CAEF0 = v24;
          goto LABEL_40;
        }
      }

      goto LABEL_66;
    }
  }

  while (*(v24 + 2) != *(v15 + 16));
  v55 = 0;
  number = 0;
  v25 = *MEMORY[0x1E695E480];
LABEL_40:
  v38 = v24[2];
  if (!v38 || (v39 = *(CMBaseObjectGetVTable() + 16)) == 0 || (v40 = *(v39 + 48)) == 0 || (v40(v38, *MEMORY[0x1E69AFCA0], v25, &number), !number))
  {
    ++*(v24 + 3);
    goto LABEL_51;
  }

  LODWORD(valuePtr[0]) = 0;
  Value = CFNumberGetValue(number, kCFNumberSInt32Type, valuePtr);
  v42 = valuePtr[0];
  CFRelease(number);
  ++*(v24 + 3);
  if (Value)
  {
    if ((v42 & 0xFFFFFFF7) != 0)
    {
      v43 = *(v15 + 32);
      if (v43)
      {
        v44 = CFGetTypeID(v43);
        TypeID = FigRemakerGetTypeID();
        v46 = *(v15 + 32);
        if (v44 == TypeID)
        {
          v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v47)
          {
            v48 = &kFigRemakerProperty_ThrottleForBackground;
LABEL_62:
            if (!v47(v46, *v48, *MEMORY[0x1E695E4D0]))
            {
              goto LABEL_51;
            }
          }

          goto LABEL_63;
        }

        if (!v46)
        {
          goto LABEL_51;
        }

        v51 = CFGetTypeID(*(v15 + 32));
        v52 = FigAssetReaderGetTypeID();
        v46 = *(v15 + 32);
        if (v51 == v52)
        {
          v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v47)
          {
            v48 = &kFigAssetReaderProperty_ThrottleForBackground;
            goto LABEL_62;
          }

LABEL_63:
          fig_log_get_emitter();
          v49 = FigSignalErrorAtGM();
          if (!v49)
          {
            goto LABEL_51;
          }

LABEL_67:
          FigRemakerFamilyServer_Destroy(a1, v15);
          FigSimpleMutexUnlock();
          return v49;
        }

        if (v46)
        {
          v53 = CFGetTypeID(*(v15 + 32));
          if (v53 == FigAssetWriterGetTypeID())
          {
            v46 = *(v15 + 32);
            v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v47)
            {
              v48 = &kFigAssetWriterProperty_ThrottleForBackground;
              goto LABEL_62;
            }

            goto LABEL_63;
          }
        }
      }
    }
  }

LABEL_51:
  FigSimpleMutexUnlock();
  *(v15 + 157) = VTIsBackgroundRunningSupportedForClientPID();
  v49 = 0;
  if (a4)
  {
    *a4 = v15;
  }

  return v49;
}

uint64_t frs_FilterClientNotifications(_BYTE *a1)
{
  if (!FigCFEqual() && !FigCFEqual())
  {
    if (FigCFEqual())
    {
      a1[166] = 1;
      v2 = 168;
LABEL_12:
      *&a1[v2] = FigGetContinuousUpTimeNanoseconds();
      return 0;
    }

    if (FigCFEqual())
    {
      a1[176] = 1;
      v2 = 184;
      goto LABEL_12;
    }

    if (FigCFEqual())
    {
      a1[177] = 1;
LABEL_11:
      v2 = 192;
      goto LABEL_12;
    }

    if (FigCFEqual())
    {
      a1[178] = 1;
      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t frs_appStateChangeListener(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (frs_appStateChangeListener_dynamicBackgroundMemoryOnce != -1)
  {
    frs_appStateChangeListener_cold_1();
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69AFA50]);
  if (Value)
  {
    valuePtr = 0;
    if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      v8 = valuePtr;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = &qword_1ED4CAEF0;
  FigSimpleMutexLock();
  do
  {
    v9 = *v9;
    if (v9)
    {
      v10 = v9 == a2;
    }

    else
    {
      v10 = 1;
    }
  }

  while (!v10);
  if (!v9)
  {
    return FigSimpleMutexUnlock();
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        for (i = qword_1ED4CAEE8; i; i = *i)
        {
          if (*(i + 49) && *(i + 16) == *(a2 + 8))
          {
            *(i + 165) = 1;
          }
        }
      }

      return FigSimpleMutexUnlock();
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    v13 = qword_1ED4CAEE8;
    if (!qword_1ED4CAEE8)
    {
      return FigSimpleMutexUnlock();
    }

    while (1)
    {
      if (!*(v13 + 49) || *(v13 + 16) != *(a2 + 8))
      {
        goto LABEL_46;
      }

      *(v13 + 158) = 1;
      v14 = *(v13 + 32);
      if (!v14)
      {
        goto LABEL_44;
      }

      v15 = CFGetTypeID(v14);
      if (v15 == FigRemakerGetTypeID())
      {
        v16 = -16101;
      }

      else
      {
        v17 = *(v13 + 32);
        if (!v17)
        {
          goto LABEL_44;
        }

        v18 = CFGetTypeID(v17);
        if (v18 != FigAssetReaderGetTypeID())
        {
          v19 = *(v13 + 32);
          if (v19)
          {
            v20 = CFGetTypeID(v19);
            if (v20 == FigAssetWriterGetTypeID())
            {
              v16 = -16121;
            }

            else
            {
              v16 = 0;
            }

            goto LABEL_45;
          }

LABEL_44:
          v16 = 0;
          goto LABEL_45;
        }

        v16 = -16111;
      }

LABEL_45:
      frs_stopAndFailClient(v13, v16);
LABEL_46:
      v13 = *v13;
      if (!v13)
      {
        return FigSimpleMutexUnlock();
      }
    }
  }

  if (v8 == 4)
  {
    if (frs_appStateChangeListener_allowDynamicMemoryUsage)
    {
      frs_setAppForegroundState(*(a2 + 8), 0);
    }

    v21 = qword_1ED4CAEE8;
    if (!qword_1ED4CAEE8)
    {
      return FigSimpleMutexUnlock();
    }

    v12 = MEMORY[0x1E695E4D0];
    do
    {
      if (*(v21 + 49) && *(v21 + 16) == *(a2 + 8) && !*(v21 + 156))
      {
        *(v21 + 156) = 1;
      }

      v21 = *v21;
    }

    while (v21);
    goto LABEL_57;
  }

  if (v8 != 8)
  {
    return FigSimpleMutexUnlock();
  }

LABEL_28:
  if (frs_appStateChangeListener_allowDynamicMemoryUsage)
  {
    frs_setAppForegroundState(*(a2 + 8), 1);
  }

  v12 = MEMORY[0x1E695E4C0];
LABEL_57:
  v22 = qword_1ED4CAEE8;
  if (qword_1ED4CAEE8)
  {
    v23 = *v12;
    do
    {
      if (*(v22 + 16) == *(a2 + 8))
      {
        v24 = *(v22 + 32);
        if (v24)
        {
          v25 = CFGetTypeID(v24);
          TypeID = FigRemakerGetTypeID();
          v27 = *(v22 + 32);
          if (v25 == TypeID)
          {
            v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v28)
            {
              v29 = v27;
              v30 = @"Remaker_ThrottleForBackground";
LABEL_72:
              v36 = v28(v29, v30, v23);
              if (v36 == -12125 || v36 == -12139)
              {
                frs_stopAndFailClient(v22, v36);
              }
            }
          }

          else if (v27)
          {
            v31 = CFGetTypeID(*(v22 + 32));
            v32 = FigAssetReaderGetTypeID();
            v33 = *(v22 + 32);
            if (v31 == v32)
            {
              v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v28)
              {
                v29 = v33;
                v30 = @"AssetReader_ThrottleForBackground";
                goto LABEL_72;
              }
            }

            else if (v33)
            {
              v34 = CFGetTypeID(*(v22 + 32));
              if (v34 == FigAssetWriterGetTypeID())
              {
                v35 = *(v22 + 32);
                v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v28)
                {
                  v29 = v35;
                  v30 = @"AssetWriter_ThrottleForBackground";
                  goto LABEL_72;
                }
              }
            }
          }
        }
      }

      v22 = *v22;
    }

    while (v22);
  }

  return FigSimpleMutexUnlock();
}

uint64_t __frs_appStateChangeListener_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  frs_appStateChangeListener_allowDynamicMemoryUsage = result;
  return result;
}

const void *frs_setAppForegroundState(const void *result, int a2)
{
  v2 = MEMORY[0x1E695E4C0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  v3 = qword_1ED4CAEE8;
  if (qword_1ED4CAEE8)
  {
    v4 = result;
    v5 = *v2;
    do
    {
      if (!*(v3 + 49))
      {
        goto LABEL_20;
      }

      if (*(v3 + 16) != v4)
      {
        goto LABEL_20;
      }

      result = *(v3 + 32);
      if (!result)
      {
        goto LABEL_20;
      }

      v6 = CFGetTypeID(result);
      TypeID = FigRemakerGetTypeID();
      result = *(v3 + 32);
      if (v6 == TypeID)
      {
        FigBaseObject = FigRemakerGetFigBaseObject(result);
        VTable = CMBaseObjectGetVTable();
        v10 = *(VTable + 8);
        result = (VTable + 8);
        v11 = *(v10 + 56);
        if (v11)
        {
          v12 = FigBaseObject;
          v13 = @"Remaker_MinimizeMemoryUsage";
LABEL_19:
          result = v11(v12, v13, v5);
        }
      }

      else if (result)
      {
        v14 = CFGetTypeID(result);
        v15 = FigAssetReaderGetTypeID();
        result = *(v3 + 32);
        if (v14 != v15)
        {
          if (!result)
          {
            goto LABEL_20;
          }

          v19 = CFGetTypeID(result);
          result = FigAssetWriterGetTypeID();
          if (v19 != result)
          {
            goto LABEL_20;
          }

          v20 = FigAssetWriterGetFigBaseObject(*(v3 + 32));
          v21 = CMBaseObjectGetVTable();
          v22 = *(v21 + 8);
          result = (v21 + 8);
          v11 = *(v22 + 56);
          if (!v11)
          {
            goto LABEL_20;
          }

          v12 = v20;
          v13 = @"AssetWriter_MinimizeMemoryUsage";
          goto LABEL_19;
        }

        v16 = FigAssetReaderGetFigBaseObject(result);
        v17 = CMBaseObjectGetVTable();
        v18 = *(v17 + 8);
        result = (v17 + 8);
        v11 = *(v18 + 56);
        if (v11)
        {
          v12 = v16;
          v13 = @"AssetReader_MinimizeMemoryUsage";
          goto LABEL_19;
        }
      }

LABEL_20:
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

void frs_stopAndFailClient(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (*(a1 + 84))
  {
    return;
  }

  keys = 0;
  v3 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 == FigAssetReaderGetTypeID())
    {
      v6 = @"AssetReader_Failed";
      v7 = &kFigAssetReaderNotificationParameter_OSStatus;
LABEL_11:
      v12 = *v7;
      keys = *v7;
      goto LABEL_13;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 == FigAssetWriterGetTypeID())
      {
        v6 = @"AssetWriter_Failed";
        v7 = &kFigAssetWriterNotificationParameter_OSStatus;
        goto LABEL_11;
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = CFGetTypeID(v10);
        if (v11 == FigRemakerGetTypeID())
        {
          v6 = @"Remaker_Failed";
          v7 = &kFigRemakerNotificationParameter_OSStatus;
          goto LABEL_11;
        }
      }
    }
  }

  v12 = 0;
  v6 = 0;
LABEL_13:
  frs_runningStatsUpdateProgress(a1);
  FigBaseObject = FigRemakerGetFigBaseObject(*(a1 + 32));
  if (FigBaseObject)
  {
    v14 = FigBaseObject;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v15)
    {
      v15(v14);
    }
  }

  if (v12 && v6)
  {
    v16 = CFDictionaryCreate(v3, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v17 = *(a1 + 32);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(a1 + 84) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __frs_stopAndFailClient_block_invoke;
    block[3] = &__block_descriptor_tmp_129;
    block[4] = v6;
    block[5] = v17;
    block[6] = v16;
    block[7] = values;
    dispatch_async(gRemakerFamilyServerState_4, block);
  }
}

void __frs_stopAndFailClient_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(const __CFArray *a1, const void *a2, void *a3)
{
  if (!a1)
  {
    v10 = 0;
    *a3 = 0;
    return v10;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_7:
    v10 = 0;
    *a3 = CFRetain(a1);
    return v10;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    if (!ValueAtIndex)
    {
      frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_4(&value);
      return value;
    }

    if (CFDictionaryContainsKey(ValueAtIndex, a2))
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_3(&value);
    return value;
  }

  v13 = MutableCopy;
  v14 = 0;
  while (1)
  {
    valuePtr = 0;
    value = 0;
    v15 = CFArrayGetValueAtIndex(v13, v14);
    if (!v15)
    {
      frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_2(&v24);
      goto LABEL_24;
    }

    v16 = v15;
    v17 = CFDictionaryGetValue(v15, a2);
    if (v17)
    {
      break;
    }

LABEL_16:
    if (v7 == ++v14)
    {
      v10 = 0;
      *a3 = v13;
      return v10;
    }
  }

  CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr);
  v18 = MTAudioProcessingTapServerLookupAndRetainObject(valuePtr, &value);
  if (v18)
  {
    v10 = v18;
    goto LABEL_25;
  }

  v19 = CFDictionaryCreateMutableCopy(v11, 0, v16);
  if (v19)
  {
    v20 = v19;
    CFDictionaryReplaceValue(v19, a2, value);
    CFRelease(value);
    CFArraySetValueAtIndex(v13, v14, v20);
    CFRelease(v20);
    goto LABEL_16;
  }

  frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_1(&v24);
LABEL_24:
  v10 = v24;
LABEL_25:
  CFRelease(v13);
  return v10;
}

uint64_t frs_createVideoCompositionProcessorPropertiesFromSerializableProperties(const __CFDictionary *a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_4(&v21);
    goto LABEL_25;
  }

  v4 = CFDictionaryGetValue(a1, @"VideoCompositionProcessor_OutputBufferDescription");
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E695E480];
    Count = CFDictionaryGetCount(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v6, Count, a1);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      v10 = CFGetTypeID(v5);
      if (v10 == CFArrayGetTypeID())
      {
        v11 = CFArrayGetCount(v5);
        Mutable = CFArrayCreateMutable(v6, v11, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v13 = Mutable;
          if (v11 >= 1)
          {
            v14 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v5, v14);
              v16 = CMTagCollectionCreateFromData(ValueAtIndex, v6, &value);
              if (v16)
              {
                break;
              }

              CFArrayAppendValue(v13, value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              if (v11 == ++v14)
              {
                goto LABEL_12;
              }
            }

            v17 = v16;
            CFRelease(v9);
            v19 = v13;
            goto LABEL_22;
          }

LABEL_12:
          CFDictionarySetValue(v9, @"VideoCompositionProcessor_OutputBufferDescription", v13);
          CFRelease(v13);
          if (a2)
          {
LABEL_13:
            v17 = 0;
            *a2 = v9;
            goto LABEL_18;
          }

          goto LABEL_15;
        }

        frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_2(&v21);
      }

      else
      {
        frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_1(&v21);
      }

      v17 = v21;
      v19 = v9;
LABEL_22:
      CFRelease(v19);
      goto LABEL_18;
    }

    frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_3(&v21);
LABEL_25:
    v17 = v21;
    goto LABEL_18;
  }

  v9 = CFRetain(a1);
  if (a2)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v9)
  {
    CFRelease(v9);
  }

  v17 = 0;
LABEL_18:
  if (value)
  {
    CFRelease(value);
  }

  return v17;
}

void fsr_ConnectionRefconDestructor(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void OUTLINED_FUNCTION_12_35()
{
  *(v0 - 208) = 0;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
}

uint64_t OUTLINED_FUNCTION_15_32()
{
  *v0 = 0u;
  v0[1] = 0u;

  return xpc_connection_get_audit_token();
}

SecTaskRef OUTLINED_FUNCTION_16_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, audit_token_t *token, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 tokena, __int128 token_16)
{
  v35 = *v32;
  v36 = v33[1];
  tokena = *v33;
  token_16 = v36;

  return SecTaskCreateWithAuditToken(v35, &tokena);
}

CFNumberRef OUTLINED_FUNCTION_17_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int valuePtr)
{
  valuePtr = v31;

  return CFNumberCreate(v32, kCFNumberSInt32Type, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21)
{
  *(v22 - 64) = a20;
  *(v22 - 48) = a21;
  return v21;
}

CFTypeID OUTLINED_FUNCTION_24_18(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

void OUTLINED_FUNCTION_36_15()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
}

CMTime *OUTLINED_FUNCTION_40_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTimeRange *range, uint64_t a6, CMTime *a7, uint64_t a8, __int128 a9, __int128 a10, __int128 rangea, __int128 range_16, __int128 range_32, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20)
{
  rangea = a18;
  range_16 = a19;
  range_32 = a20;

  return CMTimeRangeGetEnd(&a15, &rangea);
}

uint64_t OUTLINED_FUNCTION_46_9()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_47_10()
{

  CFRelease(v0);
}

CFTypeID OUTLINED_FUNCTION_48_12(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t OUTLINED_FUNCTION_49_7()
{

  return CMBaseObjectGetVTable();
}

__n128 OUTLINED_FUNCTION_61_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, uint64_t a16)
{
  result = a15;
  *(v16 - 112) = a15;
  *(v16 - 96) = a16;
  return result;
}

CMTime *OUTLINED_FUNCTION_63_7@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{

  return CMTimeMake(&a3, a1 - v4, 1000000000);
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID()
{
  if (qword_1ED4CAF08 != -1)
  {
    FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID_cold_1();
  }

  return qword_1ED4CAF10;
}

uint64_t __FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineGetTypeID()
{
  if (qword_1ED4CAF08 != -1)
  {
    FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __FigBufferedAirPlaySubPipeManagerForRenderPipelineCreate_block_invoke()
{
  dword_1ED4CAF04 = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceBooleanWithDefault();
  _MergedGlobals_80 = result;
  return result;
}

__CFString *bapspManager_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlaySubPipeManagerForRenderPipelinet %p>", a1);
  return Mutable;
}

uint64_t bapspManager_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspManager_setProperty_block_invoke;
  block[3] = &unk_1E748DF78;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __bapspManager_invalidate_block_invoke_2(uint64_t a1)
{
  result = bapspManager_clearCurrentSubPipe(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t bapspManager_setSubPipeTerminationInFlight(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 136) != a2)
  {
    *(result + 136) = a2;

    return CMBaseObjectGetDerivedStorage();
  }

  return result;
}

void bapspManager_scheduleProcessingDataIfPossible(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (bapspManager_dataFlowIsAllowed())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 72);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __bapspManager_dequeueInspectSendSampleBuffer_block_invoke;
    v4[3] = &__block_descriptor_tmp_130_0;
    v4[4] = DerivedStorage;
    v4[5] = a1;
    dispatch_async(v3, v4);
  }
}

BOOL bapspManager_dataFlowIsAllowed()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 104);
  if (v2)
  {
    v3 = *(DerivedStorage + 88);
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v2)
    {
      LODWORD(v2) = v2(v3) != 0;
    }
  }

  v4 = *(v1 + 56) != -999999.875 && *(v1 + 136) == 0;
  return !v2 && v4;
}