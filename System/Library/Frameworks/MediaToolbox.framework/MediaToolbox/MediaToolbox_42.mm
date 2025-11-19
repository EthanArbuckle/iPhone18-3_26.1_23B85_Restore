void OUTLINED_FUNCTION_3_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
}

uint64_t FigMetadataReaderCreateForBoxedMetadata(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    FigMetadataReaderCreateForBoxedMetadata_cold_2(&v7);
    return v7;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForBoxedMetadata_cold_1(&v7);
    return v7;
  }

  FigMetadataReaderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    CMBaseObjectGetDerivedStorage();
    v5 = FigBoxedMetadataCreateFromBlockBuffer();
    if (!v5)
    {
      v5 = 0;
      *a4 = 0;
    }
  }

  return v5;
}

void boxedreader_Finalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (v0)
  {

    CFRelease(v0);
  }
}

CFIndex boxedreader_GetKeyCount(int a1, CFTypeRef cf1)
{
  if (cf1 && CFEqual(cf1, @"comn"))
  {
    boxedreader_GetKeyCount_cold_1();
  }

  else
  {
    Identifiers = boxedreader_getIdentifiers();
    v4 = boxedreader_copyUniqueKeysWithKeySpaceFromIdentifiers(*MEMORY[0x1E695E480], Identifiers, cf1);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      CFRelease(v5);
      return Count;
    }
  }

  return 0;
}

uint64_t boxedReader_CopyKeyAtIndex(int a1, CFTypeRef cf1, CFIndex a3, const __CFAllocator *a4, void *a5)
{
  if (a3 < 0)
  {
    boxedReader_CopyKeyAtIndex_cold_4(&v14);
    return v14;
  }

  if (!a5)
  {
    boxedReader_CopyKeyAtIndex_cold_3(&v14);
    return v14;
  }

  if (cf1 && CFEqual(cf1, @"comn"))
  {
    boxedReader_CopyKeyAtIndex_cold_1(&v14);
    return v14;
  }

  Identifiers = boxedreader_getIdentifiers();
  v10 = boxedreader_copyUniqueKeysWithKeySpaceFromIdentifiers(a4, Identifiers, cf1);
  if (CFArrayGetCount(v10) <= a3)
  {
    boxedReader_CopyKeyAtIndex_cold_2(&v14);
    v12 = v14;
    if (!v10)
    {
      return v12;
    }

    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v10, a3);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  v12 = 0;
  *a5 = ValueAtIndex;
  if (v10)
  {
LABEL_9:
    CFRelease(v10);
  }

  return v12;
}

CFIndex boxedreader_GetItemCount(uint64_t a1, const __CFString *cf1, const void *a3)
{
  if (cf1)
  {
    v6 = CFEqual(cf1, @"comn");
    if (!a3 && v6)
    {
      boxedreader_GetItemCount_cold_1();
      return 0;
    }
  }

  else if (a3)
  {
    boxedreader_GetItemCount_cold_2();
    return 0;
  }

  ItemIndexesMatchingKeyAndKeySpace = boxedreader_createItemIndexesMatchingKeyAndKeySpace(a1, cf1, a3);
  Count = CFArrayGetCount(ItemIndexesMatchingKeyAndKeySpace);
  if (ItemIndexesMatchingKeyAndKeySpace)
  {
    CFRelease(ItemIndexesMatchingKeyAndKeySpace);
  }

  return Count;
}

uint64_t boxedreader_CopyItemWithKeyAndIndex(uint64_t a1, const __CFString *cf1, const void *a3, CFIndex a4, const __CFAllocator *a5, void *a6, void *a7)
{
  valuePtr = 0;
  if (a4 < 0)
  {
    boxedreader_CopyItemWithKeyAndIndex_cold_4(&cf);
    return cf;
  }

  if (cf1)
  {
    v14 = CFEqual(cf1, @"comn");
    if (!a3 && v14)
    {
      boxedreader_CopyItemWithKeyAndIndex_cold_1(&cf);
      return cf;
    }
  }

  else if (a3)
  {
    boxedreader_CopyItemWithKeyAndIndex_cold_2(&cf);
    return cf;
  }

  ItemIndexesMatchingKeyAndKeySpace = boxedreader_createItemIndexesMatchingKeyAndKeySpace(a1, cf1, a3);
  if (CFArrayGetCount(ItemIndexesMatchingKeyAndKeySpace) <= a4)
  {
    boxedreader_CopyItemWithKeyAndIndex_cold_3(&cf);
    v30 = cf;
    if (!ItemIndexesMatchingKeyAndKeySpace)
    {
      return v30;
    }

    goto LABEL_41;
  }

  v32 = a6;
  v33 = a7;
  ValueAtIndex = CFArrayGetValueAtIndex(ItemIndexesMatchingKeyAndKeySpace, a4);
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
  cf = 0;
  Mutable = CFDictionaryCreateMutable(a5, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CMBaseObjectGetDerivedStorage();
  FigBoxedMetadataGetFormatDescription();
  FigBoxedMetadataGetLocalIDOfItemAtIndex();
  IdentifierForLocalID = FigMetadataFormatDescriptionGetIdentifierForLocalID();
  LanguageTagForLocalID = FigMetadataFormatDescriptionGetLanguageTagForLocalID();
  DataTypeForLocalID = FigMetadataFormatDescriptionGetDataTypeForLocalID();
  ConformingDataTypesForLocalID = FigMetadataFormatDescriptionGetConformingDataTypesForLocalID();
  keyOut = 0;
  keySpaceOut = 0;
  SizeOfItemAtIndex = FigBoxedMetadataGetSizeOfItemAtIndex();
  v22 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &SizeOfItemAtIndex);
  v23 = FigBoxedMetadataCopyValueOfItemAtIndexAsCFType();
  if (v23 || (v23 = CMMetadataCreateKeySpaceFromIdentifier(a5, IdentifierForLocalID, &keySpaceOut), v23) || (CFDictionarySetValue(Mutable, @"keyspace", keySpaceOut), v23 = CMMetadataCreateKeyFromIdentifier(a5, IdentifierForLocalID, &keyOut), v23))
  {
    v30 = v23;
    if (!v22)
    {
      goto LABEL_32;
    }

LABEL_31:
    CFRelease(v22);
    goto LABEL_32;
  }

  CFDictionarySetValue(Mutable, @"key", keyOut);
  CFDictionarySetValue(Mutable, @"dataLength", v22);
  if (DataTypeForLocalID)
  {
    CFDictionarySetValue(Mutable, @"dataType", DataTypeForLocalID);
    CFDictionarySetValue(Mutable, @"dataTypeNamespace", @"com.apple.coremedia");
  }

  if (ConformingDataTypesForLocalID)
  {
    CFDictionarySetValue(Mutable, @"conformingDataTypes", ConformingDataTypesForLocalID);
  }

  if (LanguageTagForLocalID)
  {
    CFDictionarySetValue(Mutable, @"extendedLanguageTag", LanguageTagForLocalID);
    v24 = CFLocaleCreate(a5, LanguageTagForLocalID);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(Mutable, @"locale", v24);
      v26 = FigMetadataCopyLangCodeFromLocale(v25);
      if (v26)
      {
        v27 = v26;
        CFDictionarySetValue(Mutable, @"languageCode", v26);
        CFRelease(v27);
      }

      CFRelease(v25);
    }
  }

  if (v32)
  {
    v28 = cf;
    if (cf)
    {
      v28 = CFRetain(cf);
    }

    *v32 = v28;
  }

  if (!v33)
  {
    v30 = 0;
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (Mutable)
  {
    v29 = CFRetain(Mutable);
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
  *v33 = v29;
  if (v22)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (keySpaceOut)
  {
    CFRelease(keySpaceOut);
  }

  if (keyOut)
  {
    CFRelease(keyOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (ItemIndexesMatchingKeyAndKeySpace)
  {
LABEL_41:
    CFRelease(ItemIndexesMatchingKeyAndKeySpace);
  }

  return v30;
}

CFArrayRef boxedreader_getIdentifiers()
{
  CMBaseObjectGetDerivedStorage();
  FormatDescription = FigBoxedMetadataGetFormatDescription();

  return CMMetadataFormatDescriptionGetIdentifiers(FormatDescription);
}

const __CFArray *boxedreader_copyUniqueKeysWithKeySpaceFromIdentifiers(const __CFAllocator *a1, const __CFArray *a2, const void *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a2) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      if (boxedreader_identifierMatchesKeySpace(ValueAtIndex, a3))
      {
        keyOut = 0;
        if (!CMMetadataCreateKeyFromIdentifier(a1, ValueAtIndex, &keyOut))
        {
          v11.length = CFArrayGetCount(Mutable);
          v11.location = 0;
          if (!CFArrayContainsValue(Mutable, v11, keyOut))
          {
            CFArrayAppendValue(Mutable, keyOut);
          }
        }

        if (keyOut)
        {
          CFRelease(keyOut);
        }
      }

      ++v7;
    }

    while (v7 < CFArrayGetCount(a2));
  }

  return Mutable;
}

uint64_t boxedreader_identifierMatchesKeySpace(CFStringRef identifier, const void *a2)
{
  keySpaceOut = 0;
  if (!a2)
  {
    return 1;
  }

  if (CMMetadataCreateKeySpaceFromIdentifier(*MEMORY[0x1E695E480], identifier, &keySpaceOut))
  {
    v3 = 0;
  }

  else
  {
    v3 = CFEqual(keySpaceOut, a2);
  }

  if (keySpaceOut)
  {
    CFRelease(keySpaceOut);
  }

  return v3;
}

CFMutableArrayRef boxedreader_createItemIndexesMatchingKeyAndKeySpace(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CMBaseObjectGetDerivedStorage();
  NumberOfItems = FigBoxedMetadataGetNumberOfItems();
  if (NumberOfItems >= 1)
  {
    v8 = NumberOfItems;
    v9 = 0;
    if (a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = a3 == 0;
    }

    v11 = v10;
    while (1)
    {
      if (!FigBoxedMetadataGetLocalIDOfItemAtIndex())
      {
        goto LABEL_17;
      }

      FigBoxedMetadataGetFormatDescription();
      IdentifierForLocalID = FigMetadataFormatDescriptionGetIdentifierForLocalID();
      if (!boxedreader_identifierMatchesKeySpace(IdentifierForLocalID, a2))
      {
        goto LABEL_17;
      }

      identifierOut = 0;
      if ((v11 & 1) == 0)
      {
        boxedreader_createItemIndexesMatchingKeyAndKeySpace_cold_1();
        goto LABEL_17;
      }

      if (!a3)
      {
LABEL_16:
        FigCFArrayAppendInt32();
        goto LABEL_17;
      }

      v13 = CMMetadataCreateIdentifierForKeyAndKeySpace(v5, a3, a2, &identifierOut);
      v14 = identifierOut;
      if (!v13)
      {
        break;
      }

      v16 = 1;
      if (identifierOut)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (!v16)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v8 == ++v9)
      {
        return Mutable;
      }
    }

    v15 = CFEqual(IdentifierForLocalID, identifierOut);
    v14 = identifierOut;
    v16 = v15 == 0;
    if (!identifierOut)
    {
      goto LABEL_15;
    }

LABEL_14:
    CFRelease(v14);
    goto LABEL_15;
  }

  return Mutable;
}

uint64_t CreatePesPrivateForMP3(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x138uLL, 0x10B0040459D684BuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *v4 = v4 + 38;
  v4[2] = v4 + 308;
  v4[3] = 4;
  v4[4] = MP3CheckHeader;
  v4[5] = MP3CompareHeaders;
  v4[6] = MP3GetSamplesPerFrame;
  v4[7] = MP3GetSampleFrequency;
  v4[8] = MP3GetFrameSize;
  a1[105] = PesMP3ProcessData;
  a1[106] = PesMP3CleanPrivateData;
  a1[107] = PesMP3DeletePrivateData;
  a1[6] = v4;
  return result;
}

BOOL MP3CheckHeader(unsigned int *a1)
{
  result = 0;
  v3 = bswap32(*a1);
  if ((v3 & 0x60000) != 0 && v3 >= 0xFFE00000 && (v3 & 0x180000) != 0x80000)
  {
    v4 = v3 & 0xF000;
    if ((v3 & 0xF000) != 0)
    {
      v5 = (~v3 & 0xC00) != 0;
      return v4 != 61440 && v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void PesMP3DeletePrivateData(uint64_t a1)
{
  MPEGAudioCleanPrivateData(*(a1 + 48));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t figTTMLCaptionWriter_RegisterFigTTMLCaptionWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLCaptionWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLCaptionWriterGetClassID_sRegisterFigTTMLCaptionWriterBaseTypeOnce, figTTMLCaptionWriter_RegisterFigTTMLCaptionWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTTMLCaptionWriterAddCaption(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = a3[2];
  return v6(a1, a2, v9);
}

uint64_t FigTTMLCaptionWriterFinish(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLCaptionWriterInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t RegisterFigVideoTargetType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoTargetGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVideoTargetCreateLocalWithVideoReceiverEndpointID(const __CFAllocator *a1, void *a2, uint64_t a3, void *a4)
{
  v18 = 0;
  v17 = 0;
  cf = 0;
  if (!a4)
  {
    FigVideoTargetCreateLocalWithVideoReceiverEndpointID_cold_2(&v19);
LABEL_23:
    v12 = 0;
    v13 = v19;
    goto LABEL_16;
  }

  if (!a2)
  {
    FigVideoTargetCreateLocalWithVideoReceiverEndpointID_cold_1(&v19);
    goto LABEL_23;
  }

  v7 = videoTarget_create(a1, &cf);
  if (v7)
  {
    v13 = v7;
    v12 = 0;
    v10 = cf;
  }

  else
  {
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v8 = v17 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v12 = CFDictionaryCreate(a1, &kFigVideoReceiverCreationOption_ServerIsInSuspendibleProcess, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v10 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __FigVideoTargetCreateLocalWithVideoReceiverEndpointID_block_invoke;
      v15[3] = &__block_descriptor_tmp_55;
      v15[4] = v10;
      RemoteAsync = FigVideoReceiverCreateRemoteAsync(a1, a2, v12, v15);
      if (!RemoteAsync)
      {
        goto LABEL_15;
      }

LABEL_11:
      v13 = RemoteAsync;
      goto LABEL_26;
    }

    v9 = FigVideoReceiverCreateRemote(a1, a2, 0, &v18);
    v10 = cf;
    if (!v9)
    {
      RemoteAsync = videoTarget_attachToVideoReceiver(cf, v18);
      v12 = 0;
      if (!RemoteAsync)
      {
LABEL_15:
        v13 = 0;
        *a4 = v10;
        cf = 0;
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v13 = v9;
    v12 = 0;
  }

LABEL_26:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_16:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t videoTarget_create(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType);
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = dispatch_queue_create("com.apple.coremedia.videotarget.notification", 0);
  *(DerivedStorage + 16) = v5;
  if (!v5)
  {
    v12 = 1230;
LABEL_19:
    videoTarget_create_cold_1(v12, __dst);
    return *__dst;
  }

  *(DerivedStorage + 104) = FigSimpleMutexCreate();
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 88) = CFRetain(@"Loading");
  *(DerivedStorage + 64) = 0;
  v6 = FigSimpleMutexCreate();
  *(DerivedStorage + 56) = v6;
  if (!v6)
  {
    v12 = 1239;
    goto LABEL_19;
  }

  v3 = FigCFWeakReferenceTableCreate();
  if (v3)
  {
    return v3;
  }

  *(DerivedStorage + 32) = 1;
  v7 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v7;
  if (!v7)
  {
    v12 = 1246;
    goto LABEL_19;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    v8 = *(DerivedStorage + 24);
    *buffer = 0;
    if (v8)
    {
      if (CFStringGetLength(v8) <= 8)
      {
        v9.length = CFStringGetLength(v8);
      }

      else
      {
        v9.length = 8;
      }

      v9.location = 0;
      CFStringGetBytes(v8, v9, 0, 0x3Fu, 0, buffer, 8, 0);
    }

    strncpy(__dst, buffer, 8uLL);
    kdebug_trace();
  }

  v10 = 0;
  *a2 = 0;
  return v10;
}

void __FigVideoTargetCreateLocalWithVideoReceiverEndpointID_block_invoke(uint64_t a1, int a2, const void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    videoTarget_setVideoReceiverLoadingState(v4, @"Failed", a2);
  }

  else
  {
    videoTarget_attachToVideoReceiver(v4, a3);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t videoTarget_setVideoReceiverLoadingState(const void *a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = FigCFEqual();
  v8 = *(DerivedStorage + 88);
  *(DerivedStorage + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  *(DerivedStorage + 96) = a3;
  if (dword_1EAF172C8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v7)
  {
    videoTarget_postReceiverLoadingStateDidChangeNotification(a1);
  }

  return FigSimpleMutexUnlock();
}

uint64_t videoTarget_attachToVideoReceiver(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    videoTarget_attachToVideoReceiver_cold_3(&cf);
    return cf;
  }

  v5 = @"Failed";
  if (a2)
  {
    v6 = DerivedStorage;
    if (!*(DerivedStorage + 8))
    {
      *(DerivedStorage + 8) = CFRetain(a2);
      CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      FigSimpleMutexLock();
      cf = 0;
      v7 = CFGetAllocator(a1);
      CMBaseObject = FigVideoReceiverGetCMBaseObject(a2);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, 0x1F0B51E18, v7, &cf);
        if (cf)
        {
          FigCFDictionaryGetBooleanIfPresent();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      FigSimpleMutexUnlock();
      v10 = *(v6 + 8);
      v11 = CFGetAllocator(a1);
      v12 = FigVideoReceiverGetCMBaseObject(v10);
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v14 = v13(v12, @"LoggingIdentifier", v11, v6 + 24);
        if (!v14)
        {
          v5 = @"Complete";
        }
      }

      else
      {
        v14 = 4294954514;
      }

      goto LABEL_13;
    }

    videoTarget_attachToVideoReceiver_cold_1(&cf);
  }

  else
  {
    videoTarget_attachToVideoReceiver_cold_2(&cf);
  }

  v14 = cf;
LABEL_13:
  videoTarget_setVideoReceiverLoadingState(a1, v5, 0);
  return v14;
}

uint64_t FigVideoTargetCreateLocalWithVideoReceiver(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v10 = 0;
  if (!a4)
  {
    FigVideoTargetCreateLocalWithVideoReceiver_cold_2(&v11);
    return v11;
  }

  if (!a2)
  {
    FigVideoTargetCreateLocalWithVideoReceiver_cold_1(&v11);
    return v11;
  }

  v6 = videoTarget_create(a1, &v10);
  v7 = v10;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = videoTarget_attachToVideoReceiver(v10, a2);
    if (!v8)
    {
      *a4 = v7;
      return v8;
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void videoTarget_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v1 = DerivedStorage[2];
  if (v1)
  {
    dispatch_release(v1);
  }

  v2 = DerivedStorage[6];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[6] = 0;
  }

  FigSimpleMutexDestroy();
  v3 = DerivedStorage[10];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[10] = 0;
  }

  v4 = DerivedStorage[9];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[9] = 0;
  }

  if (DerivedStorage[7])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[7] = 0;
  }

  if (DerivedStorage[13])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[13] = 0;
  }

  v5 = DerivedStorage[11];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[11] = 0;
  }

  v6 = DerivedStorage[1];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[1] = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[3] = 0;
  }
}

__CFString *videoTarget_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 24);
  v6 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoTarget [%p|%@] retainCount: %ld>", a1, v5, v6);
  return Mutable;
}

uint64_t videoTarget_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  if (!a2)
  {
    videoTarget_CopyProperty_cold_5(&v18);
    return v18;
  }

  if (!a4)
  {
    videoTarget_CopyProperty_cold_4(&v18);
    return v18;
  }

  *a4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v8 = CMBaseObjectGetDerivedStorage();
  if (!FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey())
  {
LABEL_7:
    if (FigCFEqual())
    {
      v12 = DerivedStorage[3];
      if (v12)
      {
        Copy = CFStringCreateCopy(a3, v12);
        if (!Copy)
        {
          videoTarget_CopyProperty_cold_2();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      goto LABEL_19;
    }

    if (FigCFEqual())
    {
      v14 = DerivedStorage[1];
      if (!v14)
      {
        return 4294951734;
      }

      goto LABEL_18;
    }

    if (CFEqual(a2, @"InstanceType"))
    {
      v15 = kFigVideoTargetInstanceType_Local;
LABEL_17:
      v14 = *v15;
LABEL_18:
      Copy = CFRetain(v14);
LABEL_19:
      result = 0;
      *a4 = Copy;
      return result;
    }

    if (!CFEqual(a2, @"LastSampledCVPixelBuffer"))
    {
      if (CFEqual(a2, @"ReceiverLoadingState"))
      {
        FigSimpleMutexLock();
        v16 = DerivedStorage[11];
        if (v16)
        {
          v16 = CFRetain(v16);
        }

        *a4 = v16;
        FigSimpleMutexUnlock();
        return 0;
      }

      if (!CFEqual(a2, @"IsValid"))
      {
        return 4294954509;
      }

      FigSimpleMutexLock();
      v17 = FigCFEqual();
      FigSimpleMutexUnlock();
      v15 = MEMORY[0x1E695E4D0];
      if (v17)
      {
        v15 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_17;
    }

    if (remoteXPCVideoTarget_isFullySetupWithServer())
    {
      return FigVideoReceiverCopyProperty(DerivedStorage[1], @"LastSampledCVPixelBuffer", a3, a4);
    }

    videoTarget_CopyProperty_cold_3(&v18);
    return v18;
  }

  if (!remoteXPCVideoTarget_isFullySetupWithServer())
  {
    videoTarget_CopyProperty_cold_1();
    goto LABEL_7;
  }

  CMBaseObject = FigVideoReceiverGetCMBaseObject(*(v8 + 8));
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_7;
  }

  result = v10(CMBaseObject, v18, a3, a4);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t videoTarget_SetProperty(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType), v6 != CMBaseClassGetCFTypeID()))
  {
    videoTarget_SetProperty_cold_4(&cf);
    return cf;
  }

  if (!a2)
  {
    videoTarget_SetProperty_cold_3(&cf);
    return cf;
  }

  if (!a3)
  {
    videoTarget_SetProperty_cold_2(&cf);
    return cf;
  }

  CMBaseObjectGetDerivedStorage();
  if (!remoteXPCVideoTarget_isFullySetupWithServer())
  {
    videoTarget_SetProperty_cold_1(&cf);
    return cf;
  }

  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey())
  {
    return 4294954509;
  }

  CMBaseObject = FigVideoReceiverGetCMBaseObject(*(DerivedStorage + 8));
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
    return 4294954509;
  }

  result = v9(CMBaseObject, cf, a3);
  if (result)
  {
    return 4294954509;
  }

  return result;
}

uint64_t videoTarget_reflectReceiverNotification(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a3, @"DesiredPixelCountChanged") || CFEqual(a3, @"RefreshRateChanged") || CFEqual(a3, @"PreferredDataChannelGroupsChanged") || CFEqual(a3, @"DataChannelSettingsChanged"))
  {
    goto LABEL_3;
  }

  if (!CFEqual(a3, @"PlaybackStartupPreventionAssertionAcquired"))
  {
    if (CFEqual(a3, @"PlaybackStartupPreventionAssertionReleased"))
    {
      FigSimpleMutexLock();
      v8 = *(DerivedStorage + 72);
      if (v8)
      {
        CFRelease(v8);
        *(DerivedStorage + 72) = 0;
      }

      *(DerivedStorage + 64) = 0;
      goto LABEL_18;
    }

    if (!CFEqual(a3, @"IsBeingServicedStatusChanged"))
    {
      result = CFEqual(a3, @"DisplayChanged");
      if (!result)
      {
        return result;
      }
    }

LABEL_3:
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  v7 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  *(DerivedStorage + 64) = 1;
LABEL_18:
  FigCFWeakReferenceTableApplyFunction();

  return FigSimpleMutexUnlock();
}

uint64_t FigVideoReceiverCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigVideoReceiverGetCMBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t videoTarget_createFigImageQueue(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v8 = DerivedStorage, v9 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType), v9 != CMBaseClassGetCFTypeID()))
  {
    videoTarget_createFigImageQueue_cold_4(&v18);
LABEL_3:
    Key = v18;
    goto LABEL_18;
  }

  if (!a3)
  {
    videoTarget_createFigImageQueue_cold_3(&v18);
    goto LABEL_3;
  }

  if (!remoteXPCVideoTarget_isFullySetupWithServer())
  {
    videoTarget_createFigImageQueue_cold_2(&v18);
    goto LABEL_3;
  }

  v10 = *(v8 + 8);
  v11 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (!v11)
  {
    Key = 4294954514;
    goto LABEL_18;
  }

  v12 = v11(v10, a2, &cf);
  if (!v12)
  {
    FigSimpleMutexLock();
    if (!*(v8 + 64))
    {
      goto LABEL_13;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v14 = Mutable;
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigBaseObject = FigImageQueueGetFigBaseObject(cf);
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v16)
      {
        Key = v16(FigBaseObject, @"RendererPreparationInfo", v14);
        CFRelease(v14);
        if (!Key)
        {
LABEL_13:
          v18 = 0;
          Key = FigCFWeakReferenceTableAddValueAndGetKey();
          if (!Key)
          {
            FigSimpleMutexUnlock();
            *a3 = cf;
            return Key;
          }
        }
      }

      else
      {
        CFRelease(v14);
        Key = 4294954514;
      }
    }

    else
    {
      videoTarget_createFigImageQueue_cold_1(&v18);
      Key = v18;
    }

    FigSimpleMutexUnlock();
    goto LABEL_18;
  }

  Key = v12;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return Key;
}

uint64_t videoTarget_createFigDataQueue(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v9)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    v12 = *a4;
    v13 = *(a4 + 2);
    v10 = *(*(CMBaseObjectGetVTable() + 24) + 48);
    if (v10)
    {
      v18 = v14;
      v19 = v15;
      v16 = v12;
      v17 = v13;
      return v10(v9, a2, &v18, &v16, a5);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    videoTarget_createFigDataQueue_cold_1(&v18);
    return v18;
  }
}

uint64_t videoTarget_createFigDataChannelResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 24) + 56);
    if (v8)
    {

      return v8(v7, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    videoTarget_createFigDataChannelResource_cold_1(&v10);
    return v10;
  }
}

uint64_t videoTarget_copyPreferredDataChannelGroups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (remoteXPCVideoTarget_isFullySetupWithServer())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      CMBaseObject = FigVideoReceiverGetCMBaseObject(*(DerivedStorage + 8));
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {

        return v7(CMBaseObject, 0x1F0B51EF8, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      videoTarget_copyPreferredDataChannelGroups_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    videoTarget_copyPreferredDataChannelGroups_cold_2(&v10);
    return v10;
  }
}

uint64_t videoTarget_copyDataChannelSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (remoteXPCVideoTarget_isFullySetupWithServer())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      CMBaseObject = FigVideoReceiverGetCMBaseObject(*(DerivedStorage + 8));
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {

        return v7(CMBaseObject, 0x1F0B51F18, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      videoTarget_copyDataChannelSettings_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    videoTarget_copyDataChannelSettings_cold_2(&v10);
    return v10;
  }
}

uint64_t videoTarget_beginTransitionToDataChannelConfigurationAtHostTime(uint64_t a1, const void *a2, __int128 *a3)
{
  if (!a2)
  {
    videoTarget_beginTransitionToDataChannelConfigurationAtHostTime_cold_2(&v4);
    return v4;
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    videoTarget_beginTransitionToDataChannelConfigurationAtHostTime_cold_1(&v4);
    return v4;
  }

  v4 = *a3;
  v5 = *(a3 + 2);
  return videoTarget_beginTransitionToDataChannelConfigurationInternal(a1, a2, 0, &v4);
}

uint64_t videoTarget_beginTransitionToDataChannelConfigurationImmediately(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x1E6960C70];

    return videoTarget_beginTransitionToDataChannelConfigurationInternal(a1, a2, 1, v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    videoTarget_beginTransitionToDataChannelConfigurationImmediately_cold_1(&v6);
    return v6;
  }
}

uint64_t videoTarget_setActive(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v5 + 32) == a2)
    {
LABEL_15:
      FigSimpleMutexUnlock();
      return 0;
    }

    if (dword_1EAF172C8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *(v5 + 48);
    if (a2)
    {
      if (!v7)
      {
        LOBYTE(a2) = 1;
LABEL_14:
        *(v5 + 32) = a2;
        goto LABEL_15;
      }

      if (!*(v5 + 8))
      {
        LOBYTE(a2) = 1;
LABEL_13:
        CFRelease(v7);
        *(v5 + 48) = 0;
        goto LABEL_14;
      }

      LOBYTE(a2) = 1;
      videoTarget_addDataChannelConfigurationToReceiver(a1, v7, 1, MEMORY[0x1E6960C70]);
      v7 = *(v5 + 48);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  videoTarget_setActive_cold_1(v9);
  return v9[0];
}

uint64_t videoTarget_beginTransitionToDataChannelConfigurationInternal(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    videoTarget_beginTransitionToDataChannelConfigurationInternal_cold_3(&v13);
    return v13;
  }

  v9 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer())
  {
    videoTarget_beginTransitionToDataChannelConfigurationInternal_cold_2(&v13);
    return v13;
  }

  if (!*(v9 + 8))
  {
    videoTarget_beginTransitionToDataChannelConfigurationInternal_cold_1(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  if (*(v9 + 32))
  {
    v13 = *a4;
    v14 = *(a4 + 16);
    v10 = videoTarget_addDataChannelConfigurationToReceiver(a1, a2, a3, &v13);
  }

  else
  {
    if (a3)
    {
      v11 = *(v9 + 48);
      *(v9 + 48) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    v10 = 0;
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t videoTarget_addDataChannelConfigurationToReceiver(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v10 = *a4;
  v11 = *(a4 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, a2, a3, &v12);
}

uint64_t videoTarget_addLayerToLayerSynchronizerConfiguration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    if (remoteXPCVideoTarget_isFullySetupWithServer())
    {
      if (a2 && (v6 = CFGetTypeID(a2), v6 == FigLayerSynchronizerConfigurationGetTypeID()))
      {
        v7 = *(v5 + 8);
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 104);
        if (v8)
        {

          return v8(v7, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        videoTarget_addLayerToLayerSynchronizerConfiguration_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      videoTarget_addLayerToLayerSynchronizerConfiguration_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    videoTarget_addLayerToLayerSynchronizerConfiguration_cold_3(&v12);
    return v12;
  }
}

uint64_t videoTarget_updateDurationWithDeferredTransaction(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    videoTarget_updateDurationWithDeferredTransaction_cold_2(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer())
  {
    videoTarget_updateDurationWithDeferredTransaction_cold_1(&v13);
    return v13;
  }

  v8 = *(v7 + 8);
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 120);
  if (!v9)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  result = v9(v8, &v13, a3);
  if (result == -12782)
  {
    return 0;
  }

  return result;
}

uint64_t videoTarget_rebroadcastLoadingStateIfSetup(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    FigSimpleMutexLock();
    if (FigCFEqual() || FigCFEqual())
    {
      videoTarget_postReceiverLoadingStateDidChangeNotification(a1);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    videoTarget_rebroadcastLoadingStateIfSetup_cold_1(&v3);
    return v3;
  }
}

void videoTarget_postReceiverLoadingStateDidChangeNotification(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v3, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  FigCFDictionarySetValue();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __videoTarget_postReceiverLoadingStateDidChangeNotification_block_invoke;
  v6[3] = &__block_descriptor_tmp_20_0;
  v6[4] = a1;
  v6[5] = Mutable;
  dispatch_async(v5, v6);
}

void __videoTarget_postReceiverLoadingStateDidChangeNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t CreatePesPrivateForMPEG2Video(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x130uLL, 0x10B004003C638B1uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  a1[6] = v3;
  a1[105] = MPEG2VideoProcessData;
  a1[106] = MPEG2VideoCleanPrivateData;
  a1[107] = MPEG2VideoDeletePrivateData;
  a1[108] = MPEG2VideoFlushFrames;
  PesFrameHeadersInit((a1 + 68), 8uLL);
  MPEG2VideoCleanPrivateData(a1);
  v4[16] = 0;
  v4 += 16;
  v4[1] = v4;
  FrameQueueEntryInit((v4 + 2));
  return 0;
}

void *MPEG2VideoCleanPrivateData(uint64_t a1)
{
  v1 = *(a1 + 48);
  *v1 = -1;
  *(v1 + 80) = 0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  v2 = *(v1 + 88);
  if (v2)
  {
    CFRelease(v2);
    *(v1 + 88) = 0;
  }

  *(v1 + 113) = 0;
  *(v1 + 296) = 0;
  *(v1 + 300) = 0;
  FrameQueueEntryClean(v1 + 144);

  return FrameQueueClean((v1 + 128));
}

void MPEG2VideoDeletePrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  MPEG2VideoCleanPrivateData(a1);
  PesFrameHeaderDestroy((v2 + 232));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

void *MPEG2VideoFlushFrames(void *a1)
{
  v2 = a1[6];
  v7 = 0;
  v6 = 0;
  v3 = v2[11];
  if (v3)
  {
    PesAddBlockBufferToFrameBlockBuffer(a1, v3, v2[12], v2[13], 0, &v7, &v6);
    v4 = v2[11];
    if (v4)
    {
      CFRelease(v4);
      v2[11] = 0;
    }
  }

  if (a1[77] || a1[64])
  {
    MPEG2VideoEmitBuffer(a1, v2);
  }

  FigMPEG2VideoFrameFlush(a1);
  return MPEG2VideoCleanPrivateData(a1);
}

uint64_t MPEG2VideoInitialize(void *a1)
{
  a1[21] = MPEG2VideoInject;
  a1[22] = MPEG2VideoReset;
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040A345989DuLL);
  if (!v2)
  {
    return 12;
  }

  *v2 = a1;
  v2[10] = 1;
  *(v2 + 3) = 0;
  *(v2 + 4) = v2 + 6;
  v3 = a1[2];
  *(v2 + 1) = v3;
  if (v3)
  {
    *(v3 + 16) = v2 + 2;
  }

  v5 = 0;
  a1[2] = v2;
  *(v2 + 2) = a1 + 2;
  return AddPes(a1, v2, 0, 1836476772, 0, 1, 1, 1, 1, &v5);
}

uint64_t MPEG2VideoInject(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3)
{
  v8 = 0u;
  v9 = 0u;
  v4 = *(a1 + 24);
  if (*(v4 + 451))
  {
    v5 = 0;
  }

  else
  {
    *&v8 = 10000;
    v5 = 1;
    BYTE8(v9) = 1;
    *(v4 + 451) = 1;
  }

  *(&v9 + 9) = v5;
  *&v9 = a3;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  return MPEG2VideoProcessWork(v4, theBuffer, 0, 0, DataLength, &v8, 1);
}

uint64_t MPEG2VideoReset(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(v1 + 451) = 0;
  }

  return result;
}

uint64_t MPEG2VideoProcessWork(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a4;
  v9 = *(a1 + 48);
  v10 = *(a1 + 616);
  if (*(v9 + 88))
  {
    v10 = v10 + *(v9 + 104) - 4;
  }

  if (a2)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  offset = v11;
  if (*(a6 + 24))
  {
    *(v9 + 72) = 0;
    *(v9 + 8) = *(v9 + 40);
    *(v9 + 24) = *(v9 + 56);
    v12 = *(a6 + 16);
    *(v9 + 40) = *a6;
    *(v9 + 56) = v12;
  }

  v77 = a5;
  v13 = v11;
  v14 = v11 + a5;
  v82 = 0;
  dataPointerOut = 0;
  v81 = 0;
  v72 = *MEMORY[0x1E695E488];
  blockAllocator = *MEMORY[0x1E695E480];
  v70 = v11 + a5;
  while (1)
  {
    if (v7)
    {
      dataPointerOut = v7;
      v15 = v14;
    }

    else
    {
      lengthAtOffsetOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(a2, v13, &lengthAtOffsetOut, 0, &dataPointerOut);
      v15 = lengthAtOffsetOut + v13;
      if (v14 < lengthAtOffsetOut + v13)
      {
        v15 = v14;
      }

      if (DataPointer)
      {
LABEL_146:
        v63 = DataPointer;
        goto LABEL_147;
      }
    }

    if (v13 < v15)
    {
      break;
    }

LABEL_138:
    if (v13 >= v14)
    {
      if (!a2 || !*(v9 + 80) || !*(v9 + 112))
      {
        return 0;
      }

      v64 = *(v9 + 88);
      if (v64)
      {
        v63 = PesAddBlockBufferToFrameBlockBuffer(a1, v64, *(v9 + 96), *(v9 + 104), 0, &v82, &v81);
        v65 = *(v9 + 88);
        v66 = v77;
        v67 = offset;
        if (v65)
        {
          CFRelease(v65);
        }
      }

      else
      {
        v63 = 0;
        v66 = v77;
        v67 = offset;
      }

      *(v9 + 88) = CFRetain(a2);
      *(v9 + 96) = v67;
      *(v9 + 104) = v66;
      return v63;
    }
  }

  v17 = 3 - v13;
  v18 = v13 - 3;
  v71 = v15;
  v79 = -v15;
  while (1)
  {
    v19 = *v9;
    v20 = v19 << 8;
    *v9 <<= 8;
    v21 = dataPointerOut;
    v22 = *dataPointerOut;
    v23 = v22 | (v19 << 8);
    *v9 = v23;
    dataPointerOut = v21 + 1;
    v24 = v18 + 4;
    v25 = *(v9 + 72) + 1;
    *(v9 + 72) = v25;
    if (*(v9 + 80))
    {
      break;
    }

    if (v20 == 256)
    {
      if (v23 == 440 || v23 == 435)
      {
        *(v9 + 80) = 1;
        if (v23 == 435)
        {
          *(a1 + 536) |= 2u;
        }

        goto LABEL_46;
      }

      if (v23 == 256)
      {
        *(v9 + 80) = 2;
        *(v9 + 120) = 0;
        v30 = 40;
        if (v25 < 4)
        {
          v30 = 8;
        }

        v31 = 64;
        if (v25 < 4)
        {
          v31 = 32;
        }

        v32 = 65;
        if (v25 < 4)
        {
          v32 = 33;
        }

        v33 = 66;
        if (v25 < 4)
        {
          v33 = 34;
        }

        v34 = 48;
        if (v25 < 4)
        {
          v34 = 16;
        }

        *(a1 + 504) = *(v9 + v31);
        *(a1 + 505) = *(v9 + v32);
        v35 = *(v9 + v30);
        v36 = *(v9 + v33);
        v37 = *(v9 + v34);
        *(v9 + v32) = 0;
        *(v9 + v33) = 0;
        *(a1 + 506) = v36;
        *(a1 + 480) = v35;
        *(a1 + 488) = v37;
LABEL_46:
        if (a7)
        {
          *(a1 + 496) = v18 + *(a6 + 16);
          *(a1 + 504) = 1;
        }

        else
        {
          v38 = v25 >= 4;
          v39 = 56;
          if (!v38)
          {
            v39 = 24;
          }

          *(a1 + 496) = *(v9 + v39);
        }

        PesFrameHeaderAddOffset(a1 + 544, 0, v22);
        if (v24 >= offset + 4)
        {
          v10 = 0;
          if (a4)
          {
            v40 = 0;
          }

          else
          {
            v40 = *(a1 + 116) == 0;
          }

          v41 = v40;
          *(v9 + 112) = v41;
          v77 += v17 + offset;
          offset = v18;
        }

        else
        {
          v10 = 0;
          *(v9 + 112) = 0;
        }
      }
    }

LABEL_135:
    --v17;
    ++v18;
    ++v13;
    if (v79 + v18 == -3)
    {
      v14 = v70;
      v13 = v71;
      v7 = a4;
      goto LABEL_138;
    }
  }

  if (*(v9 + 112))
  {
LABEL_71:
    ++v10;
    if (v20 == 256)
    {
      lengthAtOffsetOut = 0;
      LODWORD(v44) = *v9;
      if (*(v9 + 80) == 1)
      {
        if (v44 == 256)
        {
          v45 = 0;
          *(v9 + 80) = 2;
          goto LABEL_109;
        }

LABEL_84:
        v45 = 0;
      }

      else
      {
        if (((v44 - 435) > 5 || ((1 << (v44 + 77)) & 0x31) == 0) && v44 != 256)
        {
          goto LABEL_84;
        }

        if (*(v9 + 112))
        {
          v46 = *(v9 + 88);
          v47 = offset;
          v48 = offset + 4;
          if (v46)
          {
            if (v24 >= v48)
            {
              DataPointer = PesAddBlockBufferToFrameBlockBuffer(a1, v46, *(v9 + 96), *(v9 + 104), 0, &v82, &v81);
              if (DataPointer)
              {
                goto LABEL_146;
              }

              v50 = *(v9 + 88);
              if (v50)
              {
                CFRelease(v50);
              }

              v45 = 0;
              *(v9 + 88) = 0;
            }

            else
            {
              v49 = *(v9 + 104);
              if (v49 <= offset + v17)
              {
                v45 = v17 + offset - v49;
                *(a1 + 616) = v18 + v49 + *(a1 + 616) - offset;
                DataPointer = CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, v45, blockAllocator, 0, 0, v45, 1u, &lengthAtOffsetOut);
                if (DataPointer)
                {
                  goto LABEL_146;
                }

                v47 = offset;
                DataPointer = CMBlockBufferFillDataBytes(0, lengthAtOffsetOut, 0, v45);
                if (DataPointer)
                {
                  goto LABEL_146;
                }
              }

              else
              {
                DataPointer = PesAddBlockBufferToFrameBlockBuffer(a1, v46, *(v9 + 96), v18 + v49 - offset, 0, &v82, &v81);
                if (DataPointer)
                {
                  goto LABEL_146;
                }

                v45 = 0;
                *(v9 + 96) = v18 + *(v9 + 104) + *(v9 + 96) - offset;
                *(v9 + 104) = offset + v17;
                v47 = offset;
              }
            }
          }

          else
          {
            v45 = 0;
          }

          if (v18 + 3 >= v48)
          {
            DataPointer = PesAddBlockBufferToFrameBlockBuffer(a1, a2, v47, v18 - v47, 0, &v82, &v81);
            if (DataPointer)
            {
              goto LABEL_146;
            }

            v77 -= v13 - 3 - v47;
            v47 = v13 - 3;
          }
        }

        else
        {
          v45 = 0;
          v77 += v17 + offset;
          v47 = v18;
        }

        DataPointer = MPEG2VideoEmitBuffer(a1, v9);
        if (DataPointer)
        {
          goto LABEL_146;
        }

        if (a7)
        {
          *(a1 + 496) = v18 + *(a6 + 16);
          *(a1 + 504) = 1;
        }

        else
        {
          v51 = 56;
          if (*(v9 + 72) < 4uLL)
          {
            v51 = 24;
          }

          *(a1 + 496) = *(v9 + v51);
        }

        offset = v47;
        if (a4)
        {
          v52 = 0;
        }

        else
        {
          v52 = *(a1 + 116) == 0;
        }

        v53 = v52;
        *(v9 + 112) = v53;
        LODWORD(v44) = *v9;
        if (*v9 == 256)
        {
          v10 = 0;
LABEL_109:
          *(v9 + 120) = v10;
          v54 = 40;
          if (*(v9 + 72) < 4uLL)
          {
            v54 = 8;
          }

          v55 = 64;
          if (*(v9 + 72) < 4uLL)
          {
            v55 = 32;
          }

          v56 = 65;
          if (*(v9 + 72) < 4uLL)
          {
            v56 = 33;
          }

          v57 = 66;
          if (*(v9 + 72) < 4uLL)
          {
            v57 = 34;
          }

          v58 = 48;
          if (*(v9 + 72) < 4uLL)
          {
            v58 = 16;
          }

          *(a1 + 504) = *(v9 + v55);
          *(a1 + 505) = *(v9 + v56);
          v44 = *(v9 + v54);
          v59 = *(v9 + v57);
          v60 = *(v9 + v58);
          *(v9 + v56) = 0;
          *(v9 + v57) = 0;
          *(a1 + 506) = v59;
          *(a1 + 480) = v44;
          *(a1 + 488) = v60;
          LOBYTE(v44) = 0;
        }

        else
        {
          v10 = 0;
          *(v9 + 80) = 1;
        }
      }

      PesFrameHeaderAddOffset(a1 + 544, v10, v44);
      v61 = *v9;
      if (*v9 > 438)
      {
        if (v61 == 439)
        {
          v62 = *(a1 + 536) | 0x800;
LABEL_130:
          *(a1 + 536) = v62;
        }

        else if (v61 == 440)
        {
          *(v9 + 113) = 1;
        }
      }

      else if (v61 == 434)
      {
        *(v9 + 114) = 1;
      }

      else if (v61 == 435)
      {
        v62 = *(a1 + 536) | 2;
        goto LABEL_130;
      }

      if (lengthAtOffsetOut)
      {
        v63 = PesAddBlockBufferToFrameBlockBuffer(a1, lengthAtOffsetOut, 0, v45, 0, &v82, &v81);
        if (lengthAtOffsetOut)
        {
          CFRelease(lengthAtOffsetOut);
        }

        if (v63)
        {
          goto LABEL_147;
        }
      }

      goto LABEL_135;
    }

    goto LABEL_135;
  }

  v26 = *(a1 + 624);
  if (!*(a1 + 608))
  {
    if (v26)
    {
      if (*(a1 + 119))
      {
        v26 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
      }
    }

    else
    {
      v26 = *(a1 + 640);
      if (!v26)
      {
        *(a1 + 640) = 0x2000;
        v26 = 0x2000;
        if (!(*(*(a1 + 8) + 104) >> 13))
        {
          goto LABEL_28;
        }
      }
    }

    v43 = MEMORY[0x19A8CC720](v72, v26, 0x100004077774924, 0);
    *(a1 + 608) = v43;
    if (!v43)
    {
      goto LABEL_151;
    }

    *(a1 + 632) = v26;
    *(a1 + 616) = 0;
    goto LABEL_68;
  }

  v27 = *(a1 + 616);
  if (v26)
  {
    v28 = v26 == v27;
  }

  else
  {
    v28 = 0;
  }

  if (!v28)
  {
    ++v27;
  }

  if (*(a1 + 119))
  {
    v27 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v27 <= *(a1 + 632))
  {
    goto LABEL_68;
  }

  v29 = (v27 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  *(a1 + 640) = v29;
  if (v29 <= *(*(a1 + 8) + 104))
  {
    v42 = MEMORY[0x19A8CC770](v72);
    *(a1 + 608) = v42;
    *(a1 + 632) = *(a1 + 640);
    goto LABEL_69;
  }

LABEL_28:
  PesErrorHandling(a1, 4294954325);
LABEL_68:
  v42 = *(a1 + 608);
LABEL_69:
  if (v42)
  {
    *(v42 + (*(a1 + 616))++) = HIBYTE(v19);
    goto LABEL_71;
  }

LABEL_151:
  v63 = 0;
LABEL_147:
  PesErrorHandling(a1, v63);
  return v63;
}

void MPEG2VideoCombine2Fields(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigMPEG2VideoCombineFields(a1, a2, a3))
  {

    FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(a1, a2);
  }
}

uint64_t RegisterFigSampleBufferRenderSynchronizerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferRenderSynchronizerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferRenderSynchronizerGetClassID_sRegisterFigSampleBufferRenderSynchronizerTypeOnce, RegisterFigSampleBufferRenderSynchronizerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t CreatePesPrivateForPrivateStream(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  a1[6] = v4;
  *v4 = 0;
  v4[1] = 0;
  a1[105] = PesPriProcessData;
  a1[106] = PesPriCleanPrivateData;
  a1[107] = PesPriDeletePrivateData;
  return result;
}

uint64_t CreatePesPrivateForRawPes(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040F6D918ACuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  a1[105] = PesRawProcessData;
  a1[106] = PesRawCleanPrivateData;
  a1[107] = PesRawDeletePrivateData;
  a1[6] = v4;
  return result;
}

uint64_t PesRawProcessData(void *a1, OpaqueCMBlockBuffer *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  v11 = a1[6];
  v19 = 0;
  v18 = 0;
  if (*(a6 + 24))
  {
    if (!a1[17] && (a1[76] || a1[64]))
    {
      v17 = PesRawEmitData(a1, v11);
      if (v17)
      {
        v15 = v17;
LABEL_16:
        PesErrorHandling(a1, v15);
        return v15;
      }
    }

    v13 = *(a6 + 16);
    *v11 = *a6;
    v11[1] = v13;
  }

  if (a2)
  {
    v14 = PesAddBlockBufferToFrameBlockBuffer(a1, a2, a3, a5, a1[17], &v18, &v19);
  }

  else
  {
    v14 = PesAddMemoryToFrameMemory(a1, a4, a5, a1[17], &v18, &v19);
  }

  v15 = v14;
  if (v14)
  {
    goto LABEL_16;
  }

  if (v19)
  {
    PesRawEmitData(a1, v11);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_1_92(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return fssm_server_copyManagerByObjectIDForConnection(v14, v15);
}

void FigCreateCFErrorFromFigErrorLog(const __CFArray *a1, int a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count + 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 2);
        if (FigCFDictionaryGetInt32IfPresent() && a2 == 0)
        {
          break;
        }

        if (--v5 <= 1)
        {
          return;
        }
      }

      FigCFDictionaryGetInt32IfPresent();
      CFDictionaryGetValue(ValueAtIndex, @"c-user-info");
      CFDictionaryGetValue(ValueAtIndex, @"domain");
      CFDictionaryGetValue(ValueAtIndex, @"comment");
      figCreateCFError();
    }
  }
}

uint64_t FigCFErrorIsEqualToOSStatus(__CFError *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    CFErrorGetDomain(a1);
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    return CFErrorGetCode(a1) == a3;
  }

  else
  {
    return a3 == 0;
  }
}

__CFString *FigErrorLogGetStringFromInterfaceType(int a1)
{
  v1 = @"wifi-bridged";
  v2 = @"wwan-bridged";
  v3 = @"bluetooth-bridged";
  if (a1 != 103)
  {
    v3 = 0;
  }

  if (a1 != 102)
  {
    v2 = v3;
  }

  if (a1 != 101)
  {
    v1 = v2;
  }

  v4 = @"wwan";
  if (a1 != 5)
  {
    v4 = 0;
  }

  if (a1 == 4)
  {
    v4 = @"wifi-AWDL";
  }

  if (a1 <= 100)
  {
    v1 = v4;
  }

  v5 = @"wired";
  v6 = @"wifi-infra";
  if (a1 != 3)
  {
    v6 = 0;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  v7 = @"loopback";
  if (a1 != 1)
  {
    v7 = 0;
  }

  if (!a1)
  {
    v7 = @"unknown";
  }

  if (a1 <= 1)
  {
    v5 = v7;
  }

  if (a1 <= 3)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

void FigErrorLogSetSeverity(int a1, CFMutableDictionaryRef theDict, int a3)
{
  valuePtr = a3;
  if (theDict)
  {
    if (a3)
    {
      v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (v4)
      {
        v5 = v4;
        CFDictionarySetValue(theDict, @"c-severity", v4);
        CFRelease(v5);
      }
    }

    else
    {

      CFDictionaryRemoveValue(theDict, @"c-severity");
    }
  }
}

void OUTLINED_FUNCTION_0_100(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  CFDictionarySetValue(v10, a2, value);
}

uint64_t OUTLINED_FUNCTION_1_93(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  return CFDictionaryGetValueIfPresent(v10, a2, &value);
}

void *FigMPEG2VideoFrameDiscard(uint64_t a1)
{
  result = FrameQueueClean((a1 + 784));
  *(a1 + 812) = 0;
  *(a1 + 748) = 0;
  *(a1 + 800) = 0;
  return result;
}

void *FigMPEG2VideoFrameFlush(uint64_t a1)
{
  if (!*(*(a1 + 8) + 448))
  {
    VideoFrameCheckAdjustmentQueue(a1);
  }

  VideoFrameQueueFlush(a1);
  result = FrameQueueClean((a1 + 784));
  *(a1 + 812) = 0;
  *(a1 + 748) = 0;
  *(a1 + 800) = 0;
  return result;
}

uint64_t VideoFrameCheckAdjustmentQueue(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  *(a1 + 744) = 0;
  if (*(*(a1 + 8) + 448))
  {
    v2 = *(a1 + 728);
    if (v2)
    {
      v3 = 4294954325;
      do
      {
        v4 = v2[4];
        v5 = *(a1 + 688);
        v6 = *(a1 + 712);
        if ((v4 & 0x100000000) == 0 && (v5 & 0x100000000) != 0)
        {
          v6 += 0x200000000;
          *(a1 + 712) = v6;
        }

        v7 = v6 + v4 + *(*a1 + 64);
        if (v7 >= v5 && v7 <= *(*(a1 + 8) + 160) + v5)
        {
          v18 = 0;
          v19 = &v18;
          FigMPEG2MoveAdjustmentQueue(a1, &v18);
          v3 = FigMPEG2ParseFromQueue(&v18);
        }

        else
        {
          v8 = *v2;
          v9 = v2[1];
          v10 = (*v2 + 8);
          if (!*v2)
          {
            v10 = (a1 + 736);
          }

          *v10 = v9;
          *v9 = v8;
          FrameQueueEntryDestroy(v2);
        }

        v2 = *(a1 + 728);
      }

      while (v2);
    }

    else
    {
      return 4294954325;
    }
  }

  else
  {
    v11 = *(a1 + 728);
    if (v11)
    {
      v3 = 0;
      v11[1] = &v18;
      v12 = *(a1 + 736);
      v18 = v11;
      v19 = v12;
      *(a1 + 728) = 0;
      *(a1 + 736) = a1 + 728;
      do
      {
        v13 = *v11;
        v14 = v11[1];
        if (*v11)
        {
          v15 = *v11;
        }

        else
        {
          v15 = &v18;
        }

        v15[1] = v14;
        *v14 = v13;
        *(v11 + 49) = 0;
        if (v3)
        {
          FrameQueueEntryDestroy(v11);
        }

        else
        {
          FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(a1, v11);
          v3 = v16;
        }

        v11 = v18;
      }

      while (v18);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t VideoFrameQueueFlush(uint64_t result)
{
  v1 = *(result + 784);
  if (v1 && *(result + 800))
  {
    v2 = *(result + 804);
    if (v2)
    {
      *(v1 + 24) = *(v1 + 32) + *(result + 808) * (90000 * *(result + 812)) / v2;
      *(v1 + 49) = 1;
      return FigMPEG2FrameQueueEmit(result);
    }
  }

  return result;
}

uint64_t FigMPEG2ParserVideoFrameWorkBackward(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  if (*(a2 + 144))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 50) != 0;
  }

  v6 = *(*a1 + 64) + *(a1 + 712);
  v7 = v6 + *(a2 + 32);
  *(a2 + 32) = v7;
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a2 + 49) == 0;
  }

  if (!v8)
  {
    *(a2 + 24) += v6;
  }

  v9 = **(*(a1 + 792) + 8);
  if (v9)
  {
    v10 = *(a1 + 808);
    v11 = *(a1 + 804);
    v12 = 90000;
    v13 = v7;
    do
    {
      v14 = v9;
      v9 = **(*(v9 + 8) + 8);
      v15 = v7 - v10 * v12 / v11;
      *(v14 + 50) = 1;
      *(v14 + 32) = v15;
      if (*(v14 + 144))
      {
        *(v14 + 49) = 1;
        *(v14 + 24) = v15;
      }

      else
      {
        if (v5)
        {
          v5 = 1;
          *(v14 + 49) = 1;
          *(v14 + 24) = v13;
        }

        else
        {
          *(v14 + 49) = 0;
          v5 = 1;
        }

        v13 = v7 - v10 * v12 / v11;
      }

      v12 += 90000;
    }

    while (v9);
  }

  FigMPEG2FrameQueueEmit(a1);
  if (!*(a1 + 784) && *(a2 + 49) && *(a2 + 50))
  {

    return FigMPEG2VideoFrameEmit(a1, a2);
  }

  else
  {

    return FigMPEG2VideoFrameEnqueue(a1, a2);
  }
}

uint64_t VideoFrameAddToAdjustmentQueue(uint64_t a1, uint64_t a2)
{
  VideoFrameQueueFlush(a1);
  Retainable = FrameQueueEntryMakeRetainable(a1, a2);
  Retainable[2] = a1;
  v5 = *(a1 + 744) + 1;
  *(a1 + 744) = v5;
  v6 = *(a1 + 736);
  *Retainable = 0;
  Retainable[1] = v6;
  *v6 = Retainable;
  *(a1 + 736) = Retainable;
  if (*(*a1 + 72) != 1 && v5 < 0x10)
  {
    return 0;
  }

  return VideoFrameCheckAdjustmentQueue(a1);
}

uint64_t FigMPEG2FrameQueueEmit(uint64_t result)
{
  v1 = *(result + 784);
  if (v1)
  {
    v2 = result;
    v3 = (result + 792);
    do
    {
      if (!*(v1 + 50) || !*(v1 + 49))
      {
        break;
      }

      v4 = *v1;
      v5 = *(v1 + 8);
      v6 = (*v1 + 8);
      if (!*v1)
      {
        v6 = v3;
      }

      *v6 = v5;
      *v5 = v4;
      result = FigMPEG2VideoFrameEmit(v2, v1);
      --*(v2 + 812);
      v1 = *(v2 + 784);
    }

    while (v1);
  }

  return result;
}

CMTime *OUTLINED_FUNCTION_3_67@<X0>(int64_t a1@<X0>, CMTime *a2@<X8>)
{

  return CMTimeMake(a2, a1, 90000);
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v85 = *MEMORY[0x1E69E9840];
  theString = 0;
  cf = 0;
  value = 0;
  number = 0;
  v77 = 0;
  memset(__str, 0, sizeof(__str));
  context = objc_autoreleasePoolPush();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v75 = a2;
  if (!a2 || !a4)
  {
    v10 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  if (FigPlayerAirPlayCreateNonCoordinatedWithOptions_initOnceCheck != -1)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_1();
  }

  v8 = a1;
  FigPlayerGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v10 = v9;
    FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v13 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 256;
  *(DerivedStorage + 459) = 0;
  *(DerivedStorage + 240) = 1;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (DerivedStorage + 459), 10, 0x600u);
  }

  v74 = a4;
  if (a3 && CFDictionaryGetValueIfPresent(a3, @"PlayerName", &value))
  {
    *(DerivedStorage + 376) = CFRetain(value);
    v15 = value;
    if (qword_1ED4CAC88 != -1)
    {
      FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_2();
    }

    v16 = qword_1ED4CAC80;
    FigSimpleMutexLock();
    v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CFDictionarySetValue(v16, v15, v17);
    if (v17)
    {
      CFRelease(v17);
    }

    FigSimpleMutexUnlock();
    a4 = v74;
  }

  Mutable = CFDictionaryCreateMutable(v8, 0, 0, 0);
  *(DerivedStorage + 16) = Mutable;
  if (!Mutable)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_19(handler);
LABEL_112:
    v10 = LODWORD(handler[0]);
    goto LABEL_8;
  }

  v19 = FigReentrantMutexCreate();
  *(DerivedStorage + 24) = v19;
  if (!v19)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_18(handler);
    goto LABEL_112;
  }

  v20 = FigSimpleMutexCreate();
  *(DerivedStorage + 72) = v20;
  if (!v20)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_17(handler);
    goto LABEL_112;
  }

  v21 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  v22 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  *v21 = v22;
  if (!v22 || (v23 = FigSimpleMutexCreate(), (v21[1] = v23) == 0))
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_3();
  }

  *(DerivedStorage + 40) = v21;
  *(DerivedStorage + 8) = v75;
  CFRetain(v75);
  if (cf)
  {
    v24 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v24 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_serialize.%s", v24);
  v25 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 88) = v25;
  if (!v25)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_16(handler);
    goto LABEL_112;
  }

  if (cf)
  {
    v26 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v26 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_postnotification.%s", v26);
  v27 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 96) = v27;
  if (!v27)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_15(handler);
    goto LABEL_112;
  }

  if (cf)
  {
    v28 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v28 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_playqueuehelper.%s", v28);
  v29 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 104) = v29;
  if (!v29)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_14(handler);
    goto LABEL_112;
  }

  if (cf)
  {
    v30 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v30 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_playqueue.%s", v30);
  v31 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 112) = v31;
  if (!v31)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_13(handler);
    goto LABEL_112;
  }

  if (!a3 || !CFDictionaryGetValueIfPresent(a3, @"InterstitialPrimaryPlayerName", &v77))
  {
    goto LABEL_52;
  }

  v32 = v77;
  if (qword_1ED4CAC88 != -1)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_2();
  }

  v33 = qword_1ED4CAC80;
  FigSimpleMutexLock();
  if (!CFDictionaryGetValue(v33, v32))
  {
    FigSimpleMutexUnlock();
LABEL_52:
    v34 = 0;
    goto LABEL_53;
  }

  v34 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigSimpleMutexUnlock();
  if (v34)
  {
    v35 = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 368) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_target_queue(*(DerivedStorage + 112), *(v35 + 112));
  }

LABEL_53:
  v36 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 112));
  *(DerivedStorage + 120) = v36;
  if (!v36)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_12(handler);
LABEL_124:
    v10 = LODWORD(handler[0]);
    goto LABEL_125;
  }

  dispatch_source_set_timer(v36, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  dispatch_source_set_event_handler(*(DerivedStorage + 120), DispatchSourceBlock);
  _Block_release(DispatchSourceBlock);
  dispatch_resume(*(DerivedStorage + 120));
  v38 = FigCFDictionaryGetValue();
  v39 = CMBaseObjectGetDerivedStorage();
  *(v39 + 408) = 1;
  if (v38)
  {
    *(v39 + 208) = CFRetain(v38);
  }

  else
  {
    v40 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigAirPlayRouteCreate(v8, v40, (v39 + 208));
    if (v40)
    {
      CFRelease(v40);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v41 = *(v39 + 208);
  v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v42)
  {
    v42(v41);
  }

  if (_CFMZEnabled())
  {
    v43 = *(v39 + 208);
    v44 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v44)
    {
      v44(v43);
    }
  }

  if (!*(DerivedStorage + 208))
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_11(handler);
    goto LABEL_124;
  }

  v45 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 448) = v45;
  if (!v45)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_10(handler);
    goto LABEL_124;
  }

  *(DerivedStorage + 48) = 257;
  *(DerivedStorage + 216) = 0;
  *(DerivedStorage + 200) = 0;
  *(DerivedStorage + 246) = _os_feature_enabled_impl();
  *(DerivedStorage + 456) = 0;
  *(DerivedStorage + 458) = 0;
  *(DerivedStorage + 52) = 0;
  v46 = dispatch_queue_create("com.apple.coremedia.playerairplay_scrubbing", 0);
  *(DerivedStorage + 160) = v46;
  if (!v46)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_9(handler);
    goto LABEL_124;
  }

  v47 = FigSimpleMutexCreate();
  *(DerivedStorage + 168) = v47;
  if (!v47)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_8(handler);
    goto LABEL_124;
  }

  v48 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 176) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 192) = *(v48 + 16);
  *(DerivedStorage + 404) = 45;
  *(DerivedStorage + 80) = 1;
  *(DerivedStorage + 84) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForSelectionCriteriaChanged();
  a4 = v74;
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (v13 && CFDictionaryGetValueIfPresent(v13, @"ClientPID", &number))
  {
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    v49 = number;
    FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
    v51 = v50;
    v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v52)
    {
      v52(v51, 0x1F0B22718, v49);
    }

    v53 = *(DerivedStorage + 432);
    v54 = number;
    *(DerivedStorage + 432) = number;
    if (v54)
    {
      CFRetain(v54);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    handler[0] = 0;
    FigServer_CopyProcessName();
    v55 = handler[0];
    v56 = *(DerivedStorage + 416);
    *(DerivedStorage + 416) = handler[0];
    if (v55)
    {
      CFRetain(v55);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    v57 = FigCFDictionaryGetValue();
    *(DerivedStorage + 424) = v57;
    if (v57)
    {
      CFRetain(v57);
    }

    if (v55)
    {
      CFRelease(v55);
    }
  }

  v58 = CMBaseObjectGetDerivedStorage();
  if (!*(v58 + 112))
  {
    goto LABEL_87;
  }

  v59 = v58;
  *(v58 + 400) = -1;
  v60 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v60)
  {
    v10 = 4294954510;
    goto LABEL_125;
  }

  v61 = v60;
  v62 = *(v59 + 112);
  v63 = CFRetain(v60);
  dispatch_set_context(v62, v63);
  dispatch_set_finalizer_f(*(v59 + 112), playerairplay_playQueueWorkQueueFinalizer);
  v64 = *(v59 + 112);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __playerairplay_initializeVolumeFadeOutNotification_block_invoke;
  handler[3] = &unk_1E7479BE0;
  handler[4] = v64;
  if (!notify_register_dispatch("com.apple.mediaexperience.fadeoutappliedforplaybackhandoff", (v59 + 400), v64, handler))
  {
    CFRelease(v61);
    goto LABEL_87;
  }

  v10 = FigSignalErrorAtGM();
  CFRelease(v61);
  if (!v10)
  {
LABEL_87:
    v65 = FigCFDictionaryGetValue();
    if (v65)
    {
      v65 = CFRetain(v65);
    }

    *(DerivedStorage + 440) = v65;
    v66 = FigSimpleMutexCreate();
    *(DerivedStorage + 480) = v66;
    if (v66)
    {
      v67 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 472) = v67;
      if (v67)
      {
        v68 = CFBagCreateMutable(v8, 0, MEMORY[0x1E695E9D0]);
        *(DerivedStorage + 288) = v68;
        if (v68)
        {
          if (!v34)
          {
LABEL_97:
            if (dword_1EAF172E8)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v10 = 0;
            v11 = context;
            if (a4)
            {
              goto LABEL_12;
            }

            goto LABEL_13;
          }

          v69 = cf;
          FigBaseObject = FigPlayerGetFigBaseObject(v34);
          v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v71)
          {
            v71(FigBaseObject, @"InterstitialAirPlayPlayer", v69);
          }

          if (dword_1EAF172E8)
          {
            v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v10 = 0;
          goto LABEL_102;
        }

        FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_5(handler);
      }

      else
      {
        FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_6(handler);
      }
    }

    else
    {
      FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_7(handler);
    }

    goto LABEL_124;
  }

LABEL_125:
  if (v34)
  {
LABEL_102:
    CFRelease(v34);
  }

LABEL_8:
  if (!v10)
  {
    goto LABEL_97;
  }

LABEL_9:
  v11 = context;
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (a4)
  {
LABEL_12:
    *a4 = cf;
  }

LABEL_13:
  objc_autoreleasePoolPop(v11);
  return v10;
}

uint64_t __FigPlayerAirPlayCreateNonCoordinatedWithOptions_block_invoke()
{
  gIsiOSDeviceWithMedusaSupport_0 = MGGetBoolAnswer();
  result = notify_register_check("com.apple.springboard.lockstate", &gFigPlayerAirPlayDeviceLockedStateNotifyToken_0);
  if (!result)
  {
    gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid_0 = 1;
  }

  return result;
}

void FigCFRelease_5(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playerairplay_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || !a4)
  {
LABEL_2:

    return FigSignalErrorAtGM();
  }

  v10 = DerivedStorage;
  if (CFEqual(a2, @"IsValid"))
  {
    v11 = MEMORY[0x1E695E4D0];
LABEL_14:
    SInt32 = *v11;
LABEL_15:
    SInt32 = CFRetain(SInt32);
LABEL_16:
    v16 = 0;
    *a4 = SInt32;
    return v16;
  }

  if (CFEqual(a2, @"AllowsAirPlayVideo"))
  {
    v11 = MEMORY[0x1E695E4D0];
    v12 = v10[48];
LABEL_11:
    v13 = MEMORY[0x1E695E4C0];
    v14 = v12 == 0;
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    v17 = MEMORY[0x1E695E4D0];
    if (!v10[49])
    {
      v17 = MEMORY[0x1E695E4C0];
    }

    SInt32 = *v17;
    if (!*v17)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"ParticipatingInCoordinatedPlayback"))
  {
    v11 = MEMORY[0x1E695E4D0];
    v12 = v10[456];
    goto LABEL_11;
  }

  if (CFEqual(a2, @"IsAirPlayVideoActive"))
  {
    IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
    goto LABEL_29;
  }

  if (CFEqual(a2, @"IsIntegratedTimelineAllowedForExternalPlayback"))
  {
    IsAirplayVideoActive = playerairplay_isInterstitialsWithIntegratedTimelineAllowed();
LABEL_29:
    v11 = MEMORY[0x1E695E4D0];
    if (!IsAirplayVideoActive)
    {
      v11 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"UseAirPlayVideoAudioOnlyMode"))
  {
    v11 = MEMORY[0x1E695E4D0];
    v12 = v10[51];
    goto LABEL_11;
  }

  if (CFEqual(a2, @"EnableBufferedAirPlayLocalPlayback") || CFEqual(a2, @"BufferedAirPlayLocalPlaybackVolume"))
  {
    FigSignalErrorAtGM();
    goto LABEL_37;
  }

  if (CFEqual(a2, @"UsesAirPlayVideoWhileAirPlayScreenIsActive"))
  {
    v11 = MEMORY[0x1E695E4D0];
    v12 = v10[52];
    goto LABEL_11;
  }

  if (CFEqual(a2, @"PickerContextUUID"))
  {
    FigBytePumpGetFigBaseObject(*(v10 + 26));
    CMBaseObjectCopyProperty(v22, 0x1F0B25938, a3, a4);
    return 0;
  }

  if (CFEqual(a2, @"AirPlayVideoScrubbingCAContextID"))
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(v10 + 18);
    if (v24)
    {
      goto LABEL_51;
    }

    v25 = *MEMORY[0x1E695E4D0];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"FigPlayerAirPlay_Scrub_CAContext", *MEMORY[0x1E69796A0], *MEMORY[0x1E695E4D0], *MEMORY[0x1E69796C0], 0}];
    v27 = [MEMORY[0x1E6979550] contextWithOptions:v26];
    *(v10 + 18) = v27;
    if (!v27)
    {
      goto LABEL_62;
    }

    CFRetain(v27);
    if (!*(v10 + 19))
    {
      v28 = [MEMORY[0x1E6979398] layer];
      *(v10 + 19) = v28;
      if (v28)
      {
        CFRetain(v28);
      }
    }

    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:v25 forKey:*MEMORY[0x1E697A020]];
    [*(v10 + 18) setLayer:*(v10 + 19)];
    [MEMORY[0x1E6979518] commit];
    v24 = *(v10 + 18);
    if (v24)
    {
LABEL_51:
      valuePtr = [v24 contextId];
      v16 = 0;
      *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
LABEL_62:
      v16 = FigSignalErrorAtGM();
    }

    objc_autoreleasePoolPop(v23);
    return v16;
  }

  if (CFEqual(a2, @"PlayerName"))
  {
    SInt32 = *(v10 + 47);
    if (!SInt32)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"IsSetupForAirPlayVideo"))
  {
    BOOLean = 0;
    v29 = *MEMORY[0x1E695E480];
    FigBytePumpGetFigBaseObject(*(v10 + 26));
    CMBaseObjectCopyProperty(v30, 0x1F0B25918, v29, &BOOLean);
    if (BOOLean && CFBooleanGetValue(BOOLean))
    {
      v31 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v31 = MEMORY[0x1E695E4C0];
    }

    *a4 = CFRetain(*v31);
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }

    return 0;
  }

  if (CFEqual(a2, @"ExternalPlaybackCapabilities"))
  {
    SInt32 = *(v10 + 33);
    if (!SInt32)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"IsBufferedAirPlayActive"))
  {
    v11 = MEMORY[0x1E695E4D0];
    v13 = MEMORY[0x1E695E4C0];
    v14 = *(v10 + 37) == 0;
LABEL_12:
    if (v14)
    {
      v11 = v13;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"ItemsToPrebuffer"))
  {
    SInt32 = *(v10 + 4);
    if (!SInt32)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"Topology"))
  {
    v32 = *(v10 + 1);

    return FPSupport_CreatePlayerTopology(a3, @"AirPlay", v32, a4);
  }

  if (CFEqual(a2, @"ExternalPlaybackSystemLanguageCode"))
  {
    SInt32 = playerairplay_copyExternalPlaybackSystemLanguageCode(a1);
    goto LABEL_16;
  }

  v33 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v33 && v33 != 10)
  {
    if (CFEqual(a2, @"ActionAtEnd"))
    {
      SInt32 = *(v10 + 16);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"PlaybackState"))
    {
      SInt32 = FigCFNumberCreateSInt32();
      goto LABEL_16;
    }

    if (CFEqual(a2, @"ExternalProtectionStatus"))
    {
      SInt32 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlayerExternalProtectionStatusKey_Video, &kFigPlayerExternalProtectionStatus_Protected, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_16;
    }
  }

LABEL_37:
  v19 = *(v10 + 1);
  if (!v19)
  {
    goto LABEL_2;
  }

  FigBaseObject = FigPlayerGetFigBaseObject(v19);
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    return 4294954514;
  }

  return v21(FigBaseObject, a2, a3, a4);
}

void playerairplay_resetAirPlayRouteInformation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playerairplay_updateAirPlayRouteInformationAndEndpoint(a1, 0, 0);
  pap_invalidateEndpointPlaybackSession(a1);
  v3 = *(DerivedStorage + 256);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 256) = 0;
  }

  v4 = *(DerivedStorage + 264);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 264) = 0;
    *(DerivedStorage + 272) = 0;
    if (!*DerivedStorage)
    {

      playerairplay_postPlayerNotification();
    }
  }

  else
  {
    *(DerivedStorage + 272) = 0;
  }
}

void pap_setAirPlayState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  v7 = v5 == 16 || (v5 & 0xFFFFFFFE) == 14;
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
  *(DerivedStorage + 216) = a2;
  playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
  v9 = *(CMBaseObjectGetDerivedStorage() + 216);
  v11 = v9 != 16 && (v9 & 0xFFFFFFFE) != 14;
  if (v7 == v11)
  {

    playerairplay_updateShareAndAirPlayEchoMitigation(a1);
  }
}

void playerairplay_removeAndCleanupQueuedItemsOnAirPlayController()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(*(DerivedStorage + 40), 0);
  if (PlayQueueSnapshot)
  {
    v2 = PlayQueueSnapshot;
    if (!*DerivedStorage)
    {
      Count = CFArrayGetCount(PlayQueueSnapshot);
      if (Count >= 1)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          if (*DerivedStorage)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
          if (*(CMBaseObjectGetDerivedStorage() + 701))
          {
            itemairplay_removeQueuedItemOnAirPlayController(ValueAtIndex);
            playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*(DerivedStorage + 40), ValueAtIndex, 0, 1);
          }
        }
      }
    }

    CFRelease(v2);
  }
}

uint64_t playerairplay_InvalidateItem(uint64_t a1, uint64_t a2)
{
  result = FigPlaybackItemGetFigBaseObject(a2);
  if (result)
  {
    v3 = result;
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 24);
    if (v6)
    {

      return v6(v3);
    }
  }

  return result;
}

void playerairplay_cleanUpScrubLayerAndContext()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = objc_autoreleasePoolPush();
  if (DerivedStorage && (*(DerivedStorage + 144) || *(DerivedStorage + 152)))
  {
    FigSimpleMutexLock();
    v2 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 176) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 192) = *(v2 + 16);
    FigSimpleMutexUnlock();
    v3 = *(DerivedStorage + 160);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __playerairplay_cleanUpScrubLayerAndContext_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = DerivedStorage;
    dispatch_sync(v3, block);
  }

  objc_autoreleasePoolPop(v1);
}

uint64_t playqueue_clearPlayQueue(uint64_t a1)
{
  FigSimpleMutexLock();
  CFArrayRemoveAllValues(*a1);
  *(a1 + 16) = 0;

  return FigSimpleMutexUnlock();
}

void playerairplay_setRateAirPlay(const void *a1, int a2, __int128 *a3, __int128 *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 56) != 0.0 && *(DerivedStorage + 152))
  {
    pap_clearLayerContents(a1);
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v11 + 40), 0, &cf);
  CMBaseObjectGetDerivedStorage();
  if (!cf)
  {
    if (!playerairplay_deferMediaControlPlaylistForInterstitials())
    {
      v16 = *(v11 + 56);
      v19 = *a3;
      v20 = *(a3 + 2);
      v17 = *a4;
      v18 = *(a4 + 2);
      pap_playbackSessionSetRate(a1, a2, v16, &v19, &v17, a5);
    }

    playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, cf != 0);
    Mutable = 0;
    goto LABEL_18;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  if (a2)
  {
    v19 = *a3;
    v20 = *(a3 + 2);
    FigCFDictionarySetCMTime();
    v19 = *a4;
    v20 = *(a4 + 2);
    FigCFDictionarySetCMTime();
  }

  if (a5)
  {
    CFDictionarySetValue(Mutable, @"SetRateOptions", a5);
  }

  itemairplay_NotifyReachedTimeToPauseBufferingIfFF();
  LOBYTE(v19) = 0;
  LOBYTE(v17) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v13 = *(v11 + 56);
  if (v13 == 0.0 || *(v11 + 488))
  {
    goto LABEL_11;
  }

  playerairplay_notifyStartupTasksOfEvents(a1, cf, 5, 0, MEMORY[0x1E6960C70], &v19, v13);
  v15 = v19;
  v14 = 1;
  *(v11 + 488) = 1;
  if (v15)
  {
    v13 = *(v11 + 56);
LABEL_11:
    v14 = v13 != 0.0 && *(v11 + 64) != 0;
  }

  playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, cf != 0);
  if (*(v11 + 84) == 4)
  {
    if (v14)
    {
      goto LABEL_18;
    }
  }

  else if (*(v11 + 56) != 0.0 || v14)
  {
    goto LABEL_18;
  }

  FigSimpleMutexLock();
  FigCFDictionarySetValue();
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void pap_clearLayerContents(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 176) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 192) = *(v3 + 16);
  FigSimpleMutexUnlock();
  CFRetain(a1);
  v4 = *(DerivedStorage + 160);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __pap_clearLayerContents_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_async(v4, v5);
}

void itemairplay_NotifyReachedTimeToPauseBufferingIfFF()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2)
  {
    v3 = v2 == 10;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && !*(DerivedStorage + 241) && *(DerivedStorage + 56) > 1.0 && (*(v1 + 500) & 1) != 0)
  {

    itemairplay_postItemNotification();
  }
}

void playerairplay_inferPlaybackStateFromAirPlayPlayer(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56) == 0.0)
  {
    WaitingState = 0;
    goto LABEL_16;
  }

  if (!a2)
  {
    WaitingState = 3;
    goto LABEL_16;
  }

  v5 = DerivedStorage;
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (!v7 || v7 == 10)
  {
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  v8 = *(v6 + 472);
  if (!v8 || (Count = CFArrayGetCount(v8), Count < 1))
  {
LABEL_11:
    FigSimpleMutexUnlock();
LABEL_12:
    if (*(v5 + 64))
    {
      WaitingState = 6;
    }

    else
    {
      WaitingState = 4;
    }

    goto LABEL_16;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 472), v11);
    if (!FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex))
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  WaitingState = FigPlayerStartupTaskGetWaitingState(ValueAtIndex);
  FigSimpleMutexUnlock();
LABEL_16:
  v13 = CMBaseObjectGetDerivedStorage();
  if (*(v13 + 84) != WaitingState)
  {
    v14 = v13;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    *(v14 + 84) = WaitingState;
    playerairplay_postPlayerNotification();
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

void __pap_clearLayerContents_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 152))
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [*(*(a1 + 32) + 152) setContents:0];
    [MEMORY[0x1E6979518] commit];
  }

  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t playqueue_getCurrentClientPlayQueueItemIndexInternal(CFArrayRef *a1)
{
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return -1;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*a1, v4);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage[72] && DerivedStorage[700] && DerivedStorage[707] != 2)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return -1;
    }
  }

  return v4;
}

void __itemairplay_postItemNotification_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (!*(*(a1 + 32) + 72) && !**(a1 + 40))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  FigReadWriteLockUnlockForRead();
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t itemairplay_GetCurrentTime(CFTypeRef a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetCurrentTime_cold_1(&v19);
    v6 = 0;
    goto LABEL_33;
  }

  v5 = DerivedStorage;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!v7 || *v7)
  {
    itemairplay_GetCurrentTime_cold_2(&v19);
LABEL_33:
    value_low = LODWORD(v19.value);
    goto LABEL_26;
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v7 + 40), 0, &cf);
  v8 = *(CMBaseObjectGetDerivedStorage() + 216) == 16 && cf == a1;
  if (v8 && (v9 = *(v5 + 568)) != 0)
  {
    CMTimebaseGetTime(&v19, v9);
    value_low = 0;
    *a2 = v19;
  }

  else
  {
    v11 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v11)
    {
      v12 = v11 == 10;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 || ((v13 = *(CMBaseObjectGetDerivedStorage() + 216), v13 != 10) ? (v14 = v13 == 0) : (v14 = 1), v14 && *(v5 + 152)))
    {
      value_low = 0;
      v15 = *(v5 + 160);
      a2->epoch = *(v5 + 176);
      *&a2->value = v15;
    }

    else
    {
      v16 = *(v5 + 8);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v17)
      {
        value_low = v17(v16, a2);
      }

      else
      {
        value_low = 4294954514;
      }
    }
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return value_low;
}

void __playerairplay_postPlayerNotification_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

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

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkAndUpdatePlayQueueItems(*(a1 + 40));
    v3 = pap_copyInterstitialPlayer();
    if (v3)
    {
      v4 = v3;
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems();
      CFRelease(v4);
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t pap_copyInterstitialPlayer()
{
  CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 360))
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

CFArrayRef playqueue_createPlayQueueSnapshot(uint64_t a1, uint64_t *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 16) || *(a1 + 20))
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *a1);
    v5 = playqueue_copyPlayQueueSummary(a1);
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  Copy = 0;
  v5 = 0;
  if (a2)
  {
LABEL_4:
    *a2 = playqueue_getCurrentClientPlayQueueItemIndexInternal(a1);
  }

LABEL_5:
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }

  return Copy;
}

void itemairplay_doCleanupAtEndOfPlayback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 632);
    if (v2)
    {
      v3 = *(CMBaseObjectGetVTable() + 16);
      if (*v3)
      {
        v4 = v3[12];
        if (v4)
        {
          v4(v2);
        }
      }

      v5 = *(v1 + 632);
      if (v5)
      {
        CFRelease(v5);
        *(v1 + 632) = 0;
      }
    }

    v6 = *(v1 + 432);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 432) = 0;
    }

    *(v1 + 703) = 0;
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

void itemairplay_cleanupItemForAirPlay(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = *(DerivedStorage + 568);
    if (v6)
    {
      CMTimebaseSetRate(v6, 0.0);
      v7 = *(v5 + 568);
      if (v7)
      {
        CFRelease(v7);
        *(v5 + 568) = 0;
      }
    }

    v8 = *(v5 + 592);
    if (v8)
    {
      dispatch_source_cancel(v8);
      if (a2)
      {
        v9 = FigCFWeakReferenceHolderCopyReferencedObject();
        v10 = CMBaseObjectGetDerivedStorage();
        if (v10)
        {
          if (!*v10)
          {
            v11 = *(v10 + 88);
            if (v11)
            {
              dispatch_sync(v11, &__block_literal_global_75);
            }
          }
        }
      }

      else
      {
        v9 = 0;
      }

      dispatch_release(*(v5 + 592));
      *(v5 + 592) = 0;
    }

    else
    {
      v9 = 0;
    }

    StopAndReleaseTimer((v5 + 328));
    *(v5 + 624) = 0;
    *(v5 + 712) = 0;
    itemairplay_unsubscribeFromURLProcessor(a1);
    v12 = *(v5 + 808);
    if (v12)
    {
      CFRelease(v12);
      *(v5 + 808) = 0;
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

uint64_t playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(uint64_t a1, const void *a2, int a3, int a4)
{
  FigSimpleMutexLock();
  playqueue_removeItemFromClientQueueAndFromMediaControlPlaylistInternal(a1, a2, a3, a4);

  return FigSimpleMutexUnlock();
}

void itemairplay_setRememberedTimeAndDefaultFlag(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E6960CC0];
  if (*(a2 + 12))
  {
    v4 = a2;
  }

  v5 = *(v4 + 16);
  *(DerivedStorage + 160) = *v4;
  *(DerivedStorage + 176) = v5;
  v6 = MEMORY[0x1E695E480];
  *(DerivedStorage + 184) = (*(a2 + 12) & 1) == 0;
  v7 = *v6;
  v9 = *(DerivedStorage + 160);
  v8 = CMTimeCopyDescription(v7, &v9);
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t itemairplay_controlPlaybackActivityTimer(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v4 = result;
  FigReadWriteLockLockForRead();
  if (!*(v4 + 72))
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(v4 + 592);
    if (!v7 || !DerivedStorage)
    {
      goto LABEL_20;
    }

    if (a2 > 1)
    {
      if (a2 == 3)
      {
        dispatch_source_set_timer(v7, 0, 1000000000 * *(DerivedStorage + 404), 0x4C4B40uLL);
        goto LABEL_20;
      }

      if (a2 != 2 || !*(v4 + 600))
      {
LABEL_20:
        if (v5)
        {
          CFRelease(v5);
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (!a2)
      {
        dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        *(v4 + 600) = 0;
        goto LABEL_20;
      }

      if (a2 != 1)
      {
        goto LABEL_20;
      }
    }

    if (*(DerivedStorage + 200) && *(v4 + 603))
    {
      v8 = 30000000000;
    }

    else
    {
      v8 = 1000000000;
    }

    dispatch_source_set_timer(v7, 0, v8, 0x4C4B40uLL);
    *(v4 + 600) = 1;
    goto LABEL_20;
  }

LABEL_22:

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_insertItemOnMediaControl(const void *a1, __CFDictionary *Mutable)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!*(DerivedStorage + 72) && !*(DerivedStorage + 701) && *(DerivedStorage + 700))
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    v6 = CMBaseObjectGetDerivedStorage();
    if (v6)
    {
      v7 = v6;
      if (!*v6)
      {
        v8 = itemairplay_copyPlayParams(a1, 0, 0);
        if (v8)
        {
          v9 = v8;
          cf = 0;
          v10 = *MEMORY[0x1E695E480];
          FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 8));
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v12(FigBaseObject, @"SelectedMediaArray", v10, &cf);
          }

          if (a1)
          {
            CFRetain(a1);
          }

          if (v5)
          {
            CFRetain(v5);
          }

          if (cf)
          {
            CFRetain(cf);
            v13 = cf;
          }

          else
          {
            v13 = 0;
          }

          v14 = *(v7 + 13);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __itemairplay_insertItemOnMediaControl_block_invoke;
          v22[3] = &__block_descriptor_72_e5_v8__0l;
          v22[4] = DerivedStorage;
          v22[5] = v7;
          v22[6] = v13;
          v22[7] = v5;
          v22[8] = a1;
          dispatch_async(v14, v22);
          if (cf)
          {
            CFRelease(cf);
          }

          if (Mutable)
          {
            v15 = CMBaseObjectGetDerivedStorage();
            if (*(v15 + 80))
            {
              v16 = v15;
              Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961D40], *(v16 + 80));
            }

            else
            {
              Mutable = 0;
            }
          }

          playqueue_addItemToMediaControlPlaylist(*(v7 + 5));
          v17 = CMBaseObjectGetDerivedStorage();
          if (!v5)
          {
            FigReadWriteLockUnlockForRead();
LABEL_35:
            CFRelease(v9);
LABEL_36:
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            return;
          }

          v18 = v17;
          if (!*v17 && *(v17 + 280))
          {
            if (pap_shouldUseInterstitialQueuing())
            {
              CFDictionaryAddValue(v9, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
            }

            v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
            *v19 = v5;
            CFRetain(v5);
            v19[1] = a1;
            if (a1)
            {
              CFRetain(a1);
            }

            v20 = *(v18 + 280);
            v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v21)
            {
              v21(v20, v9, Mutable, pap_playbackSessionInsertPlayQueueItemCompletion, v19);
            }
          }

LABEL_34:
          CFRelease(v5);
          FigReadWriteLockUnlockForRead();
          if (!v9)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

    if (v5)
    {
      v9 = 0;
      Mutable = 0;
      goto LABEL_34;
    }
  }

  FigReadWriteLockUnlockForRead();
}

CFStringRef playqueue_copyPlayQueueSummary(uint64_t a1)
{
  alloc = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFArrayGetCount(*a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (i)
      {
        CFStringAppend(Mutable, @", ");
      }

      if (ValueAtIndex)
      {
        v8 = (CMBaseObjectGetDerivedStorage() + 820);
      }

      else
      {
        v8 = "";
      }

      if (*(DerivedStorage + 701))
      {
        v9 = 89;
      }

      else
      {
        v9 = 78;
      }

      if (*(DerivedStorage + 700))
      {
        v10 = 89;
      }

      else
      {
        v10 = 78;
      }

      CFStringAppendFormat(Mutable, 0, @"item %p %s [Client:%c,MC:%c](subitem %p) uuid %@", ValueAtIndex, v8, v10, v9, *(DerivedStorage + 8), *(DerivedStorage + 80));
    }
  }

  v11 = CFStringCreateWithFormat(alloc, 0, @"[%p] play queue now[CPQ:%d,MC:%d]: [%@]", a1, *(a1 + 16), *(a1 + 20), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

void __itemairplay_sendUnhandledURLResponse_block_invoke(void *a1)
{
  CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
  FigCFDictionaryGetValue();
  FigCFNumberGetUInt64();
  FigReadWriteLockLockForRead();
  v3 = a1[5];
  if (!*(v3 + 72) && *(v3 + 700))
  {
    if (!pap_playbackSessionGetBooleanProperty() && CFDictionaryContainsKey(CopyRemovingKeys, *MEMORY[0x1E6960D00]))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      itemairplay_postFailNotificationWithError(a1[7], -17224, 1);
    }

    if (dword_1EAF172E8)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    pap_playbackSessionPerformRemoteAction(a1[6], *MEMORY[0x1E6961A20], CopyRemovingKeys);
  }

  FigReadWriteLockUnlockForRead();
  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  if (CopyRemovingKeys)
  {
    CFRelease(CopyRemovingKeys);
  }

  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
  }
}

void __pap_playbackSessionRequestForStreamingKeyCompletion_block_invoke(uint64_t a1)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = *(a1 + 64);
  if (v3)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v3 = -12860;
LABEL_2:
    valuePtr = v3;
    goto LABEL_3;
  }

  Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6961BD0]);
  if (!Value || (v10 = CFDictionaryGetValue(Value, *MEMORY[0x1E6961A70])) == 0 || (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr), !valuePtr))
  {
    FigCFDictionaryGetValue();
    FigCFDictionarySetValue();
  }

LABEL_3:
  FigCFDictionarySetInt64();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetInt32();
  v4 = *(*(a1 + 48) + 808);
  if (v4)
  {
    FigAirPlayURLProcessorUtilHandleStreamingKeyResponse(v4, Mutable);
  }

  v5 = *(a1 + 40);
  if (*v5)
  {
    CFRelease(*v5);
    v5 = *(a1 + 40);
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a1 + 56));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void playqueue_removeItemFromClientQueueAndFromMediaControlPlaylistInternal(uint64_t a1, const void *a2, int a3, int a4)
{
  CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*a1);
  if (Count >= 1)
  {
    v19.length = Count;
    v19.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*a1, v19, a2);
    if (FirstIndexOfValue != -1)
    {
      v10 = FirstIndexOfValue;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a3 && DerivedStorage[700])
      {
        --*(a1 + 16);
        DerivedStorage[700] = 0;
        DerivedStorage[702] = 0;
      }

      if (a4 && DerivedStorage[701])
      {
        --*(a1 + 20);
        DerivedStorage[701] = 0;
      }

      if (!DerivedStorage[700] && !DerivedStorage[701])
      {
        CFArrayRemoveValueAtIndex(*a1, v10);
      }
    }
  }

  v12 = playqueue_copyPlayQueueSummary(a1);
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v13)
  {
    v14 = v13;
    if (dword_1EAF172E8)
    {
      v15 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v16 = *(v15 + 216);
        if (v16 && v16 != 10)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t playerairplay_performQueuedItemVodkaExchange(const void *a1, const void *a2, const void *a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  *(v10 + 736) = FigGetUpTimeNanoseconds();
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{DerivedStorage[28], @"RouteInfo", DerivedStorage[35], @"EndpointPlaybackSession", *(v10 + 80), @"MediaControlUUID", 0}];
  v12 = DerivedStorage[11];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __playerairplay_performQueuedItemVodkaExchange_block_invoke;
  v24[3] = &__block_descriptor_57_e25_v16__0____CFDictionary__8l;
  v24[4] = a1;
  v24[5] = a2;
  v25 = a4;
  v24[6] = a3;
  v13 = *(CMBaseObjectGetVTable() + 16);
  if (*v13 && (v14 = v13[11]) != 0)
  {
    v15 = v14(a3, v11, v12, v24);
    if (!v15)
    {
      v16 = *(v10 + 632);
      if (v16)
      {
        v17 = *(CMBaseObjectGetVTable() + 16);
        if (*v17)
        {
          v18 = v17[12];
          if (v18)
          {
            v18(v16);
          }
        }

        v19 = *(v10 + 632);
        if (v19)
        {
          CFRelease(v19);
          *(v10 + 632) = 0;
        }
      }

      CFRetain(a3);
      v15 = 0;
      *(v10 + 632) = a3;
      goto LABEL_25;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  if (a4 && pap_isLocalFileURL(*(v10 + 88), 0))
  {
    v21 = itemairplay_createCPEProtectorIfAvailable(a2, 0, &v23);
    if (v21)
    {
      v22 = v21;
      v15 = playerairplay_performQueuedItemVodkaExchange(a1);
      CFRelease(v22);
    }

    else
    {
      *(v10 + 703) = 1;
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
    }
  }

  if (a1)
  {
    CFRelease(a1);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (a2)
  {
    CFRelease(a2);
  }

LABEL_25:
  objc_autoreleasePoolPop(v8);
  return v15;
}

void __itemairplay_assureItemForAirPlay_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 703) == 2)
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v3 = v1;
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);

      CFRelease(v3);
    }
  }

  else
  {
    v2 = *(a1 + 40);

    itemairplay_requestAirPlayPlaybackInfo(v2, 0, 0, 0);
  }
}

void pap_playbackSessionGetPlaybackInfoCompletion(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(a3 + 8);
  if (a1)
  {
    CFRetain(a1);
  }

  v8 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionGetPlaybackInfoCompletion_block_invoke;
  block[3] = &__block_descriptor_68_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a3;
  block[6] = a1;
  block[7] = v7;
  v10 = a2;
  dispatch_async(v8, block);
}

void pap_playbackSessionFreeSeekCompletionContext(CFTypeRef *a1)
{
  v2 = a1[7];
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

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void __pap_playbackSessionGetPlaybackInfoCompletion_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 29);
    v6 = *v4;
    shouldUseInterstitialQueuing = pap_shouldUseInterstitialQueuing();
    Value = *(a1 + 48);
    if (Value)
    {
      v9 = !shouldUseInterstitialQueuing;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      Value = CFDictionaryGetValue(*(a1 + 48), *MEMORY[0x1E6961D98]);
    }

    itemairplay_getPlaybackInfoCompletionHandler(*(a1 + 56), v6, Value, *(a1 + 64), v5, 0, *(*(a1 + 40) + 30), *(*(a1 + 40) + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  pap_playbackSessionFreeSeekCompletionContext(v3);
}

uint64_t itemairplay_airplaySetCurrentTime(const void *a1, CMTime *a2, int a3, int a4, int a5)
{
  v42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = CMBaseObjectGetDerivedStorage();
  if (!v10 || *v10)
  {
    itemairplay_airplaySetCurrentTime_cold_2(&time);
    value_low = LODWORD(time.value);
    if (!v9)
    {
      return value_low;
    }

    goto LABEL_37;
  }

  v37 = v10;
  v34 = a2;
  if (dword_1EAF172E8)
  {
    LODWORD(v39.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = *(DerivedStorage + 144);
  if (!v12 || v12 == a5)
  {
    if (a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  time = *a2;
  itemairplay_sendSeekToTimeNotification();
  *(DerivedStorage + 144) = 0;
  if (!a5)
  {
LABEL_8:
    a5 = *(DerivedStorage + 816);
    *(DerivedStorage + 816) = FPSupport_IncrementSeekID(a5);
  }

LABEL_9:
  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    v13 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v39 = **&MEMORY[0x1E6960CC0];
    itemairplay_GetCurrentTime(a1, &v39);
    time = *a2;
    time2 = v39;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      *(DerivedStorage + 708) = 0;
    }

    FigReadWriteLockLockForRead();
    *(DerivedStorage + 144) = a5;
    if (!*(DerivedStorage + 72) && !*(DerivedStorage + 701) && *(CMBaseObjectGetDerivedStorage() + 360))
    {
      v16 = *&a2->value;
      *(DerivedStorage + 136) = a2->epoch;
      *(DerivedStorage + 120) = v16;
      *(DerivedStorage + 157) = 1;
      time = *a2;
      itemairplay_setRememberedTimeAndDefaultFlag(a1, &time);
    }

    FigReadWriteLockUnlockForRead();
    time = *a2;
    FigCFDictionarySetCMTime();
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    if (a3)
    {
      FigCFDictionarySetInt32();
    }

    FigCFDictionarySetValue();
    if (Mutable)
    {
      itemairplay_airplaySetCurrentTime_cold_1();
      if (!MutableCopy)
      {
        goto LABEL_21;
      }
    }

    else if (!MutableCopy)
    {
LABEL_21:
      if (*(v37 + 14) != 0.0 || !*(v37 + 19))
      {
        goto LABEL_34;
      }

      time.value = 0;
      v17 = CMBaseObjectGetDerivedStorage();
      if (v17)
      {
        v18 = v17;
        FigReadWriteLockLockForRead();
        if (!*(v18 + 72))
        {
          v19 = *(v18 + 88);
          if (v19)
          {
            if (pap_isLocalFileURL(v19, 0))
            {
              FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
              v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v30)
              {
                v30(FigBaseObject, @"CPEProtector", v13, &time);
                value = time.value;
                if (time.value)
                {
                  time2.value = 0;
                  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v32)
                  {
                    v32(value, @"IsRental", v13, &time2);
                    if (time2.value)
                    {
                      v33 = CFBooleanGetValue(time2.value);
                      CFRelease(time2.value);
                      CFRelease(time.value);
                      FigReadWriteLockUnlockForRead();
                      v20 = v37;
                      if (!v33)
                      {
LABEL_28:
                        if (!v20[51])
                        {
                          v21 = v20;
                          FigSimpleMutexLock();
                          epoch = v34->epoch;
                          *(v21 + 11) = *&v34->value;
                          *(v21 + 24) = epoch;
                          FigSimpleMutexUnlock();
                          if (v9)
                          {
                            CFRetain(v9);
                          }

                          if (a1)
                          {
                            CFRetain(a1);
                          }

                          v23 = *(v37 + 20);
                          block[0] = MEMORY[0x1E69E9820];
                          block[1] = 3221225472;
                          block[2] = __itemairplay_airplaySetCurrentTime_block_invoke;
                          block[3] = &__block_descriptor_56_e5_v8__0l;
                          block[4] = v37;
                          block[5] = a1;
                          block[6] = v9;
                          dispatch_async(v23, block);
                        }
                      }

LABEL_34:
                      if (dword_1EAF172E8)
                      {
                        v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      goto LABEL_36;
                    }
                  }

                  CFRelease(time.value);
                }
              }
            }
          }
        }

        FigReadWriteLockUnlockForRead();
      }

      v20 = v37;
      goto LABEL_28;
    }

    CFRelease(MutableCopy);
    goto LABEL_21;
  }

  v27 = *&a2->value;
  *(DerivedStorage + 136) = a2->epoch;
  *(DerivedStorage + 120) = v27;
  *(DerivedStorage + 144) = a5;
  *(DerivedStorage + 157) = 0;
  time = *a2;
  itemairplay_setRememberedTimeAndDefaultFlag(a1, &time);
  *(DerivedStorage + 188) = a3 & 0xF;
  itemairplay_postItemNotification();
  if (dword_1EAF172E8)
  {
    LODWORD(v39.value) = 0;
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    time = *a2;
    itemairplay_sendSeekToTimeNotification();
  }

LABEL_36:
  value_low = 0;
  if (v9)
  {
LABEL_37:
    CFRelease(v9);
  }

  return value_low;
}

uint64_t playerairplay_ignoreRemoteRateUpdate(float a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    hasAirPlayReachedTimeToPausePlayback = pap_hasAirPlayReachedTimeToPausePlayback();
  }

  else
  {
    hasAirPlayReachedTimeToPausePlayback = 0;
  }

  return (a1 == 0.0) & ((*(DerivedStorage + 64) != 0) | hasAirPlayReachedTimeToPausePlayback);
}

uint64_t playerairplay_isAPVSupportedForCoordinatedPlayback()
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

BOOL pap_hasAirPlayReachedTimeToPausePlayback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 524) & 1) == 0)
  {
    return 0;
  }

  v2 = DerivedStorage;
  result = playerairplay_getIsAirplayVideoActive();
  if (result)
  {
    CMTimebaseGetTime(&time1, *(v2 + 568));
    v3 = *(v2 + 512);
    return CMTimeCompare(&time1, &v3) >= 0;
  }

  return result;
}

void pap_handleAirPlayReachedTimeToPausePlayback(const void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = v5;
    if (!*(DerivedStorage + 64) && (*(v5 + 524) & 1) != 0)
    {
      v8 = (v5 + 512);
      *(DerivedStorage + 64) = 1;
      if (!*(DerivedStorage + 241))
      {
        v9 = *(DerivedStorage + 56);
        *(DerivedStorage + 56) = 0;
        playerairplay_setRateAirPlay(a1, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0);
        *(DerivedStorage + 56) = v9;
      }

      playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, 1);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *&time.value = *&v8->value;
      time.epoch = *(v6 + 528);
      FigCFDictionarySetCMTime();
      itemairplay_postItemNotification();
      v11 = CMTimebaseCopySource(*(v6 + 568));
      v12 = *(v6 + 568);
      CMSyncGetTime(&time, v11);
      timebaseTime = *v8;
      CMTimebaseSetRateAndAnchorTime(v12, 0.0, &timebaseTime, &time);
      time = *v8;
      itemairplay_setRememberedTimeAndDefaultFlag(a2, &time);
      if (dword_1EAF172E8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else if (dword_1EAF172E8)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t itemairplay_convertTimeRangesToTimeIntervals(const __CFAllocator *a1, CFArrayRef theArray, uint64_t a3, __CFArray **a4)
{
  v35 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 4294954513;
  }

  v8 = Count;
  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v10 = Mutable;
  v21 = a4;
  v11 = 0;
  v22 = *MEMORY[0x1E6961F00];
  key = *MEMORY[0x1E6961F08];
  v12 = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (ValueAtIndex)
    {
      v14 = ValueAtIndex;
      *keys = 0u;
      v34 = 0u;
      *values = 0u;
      v32 = 0u;
      Seconds = 0.0;
      valuePtr = 0.0;
      v28 = **&MEMORY[0x1E6960C70];
      v27 = v28;
      v26 = v28;
      Value = CFDictionaryGetValue(ValueAtIndex, key);
      v16 = CFDictionaryGetValue(v14, v22);
      v17 = 4294954513;
      if (!Value)
      {
        goto LABEL_24;
      }

      v18 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      CMTimeMakeFromDictionary(&v28, Value);
      CMTimeMakeFromDictionary(&v26, v18);
      lhs = v28;
      rhs = v26;
      CMTimeAdd(&v27, &lhs, &rhs);
      lhs = v28;
      valuePtr = CMTimeGetSeconds(&lhs);
      lhs = v27;
      Seconds = CMTimeGetSeconds(&lhs);
      keys[0] = @"start";
      keys[1] = @"end";
      *&v34 = @"startTime";
      *(&v34 + 1) = @"endTime";
      values[0] = CFNumberCreate(v12, kCFNumberFloat64Type, &valuePtr);
      values[1] = CFNumberCreate(v12, kCFNumberFloat64Type, &Seconds);
      lhs = v28;
      *&v32 = CMTimeCopyAsDictionary(&lhs, a1);
      lhs = v27;
      *(&v32 + 1) = CMTimeCopyAsDictionary(&lhs, a1);
      v19 = CFDictionaryCreate(a1, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (values[0])
      {
        CFRelease(values[0]);
      }

      if (values[1])
      {
        CFRelease(values[1]);
      }

      if (v32)
      {
        CFRelease(v32);
      }

      if (*(&v32 + 1))
      {
        CFRelease(*(&v32 + 1));
      }

      if (!v19)
      {
        v17 = 4294954510;
        goto LABEL_24;
      }

      CFArrayAppendValue(v10, v19);
      CFRelease(v19);
    }

    ++v11;
  }

  while (v8 != v11);
  if (v21)
  {
    v17 = 0;
    *v21 = v10;
    return v17;
  }

  v17 = 0;
LABEL_24:
  CFRelease(v10);
  return v17;
}

uint64_t itemairplay_setPositionCompletionHandler(uint64_t a1, int a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v6 = result;
  FigReadWriteLockLockForRead();
  if (!*(v6 + 72))
  {
    if (a2)
    {
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      itemairplay_setPositionCompletionHandler_cold_1();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    itemairplay_sendSeekToTimeNotification();
  }

LABEL_5:

  return FigReadWriteLockUnlockForRead();
}

void pap_updateAirPlayReachedTimeToPausePlayback(uint64_t a1, CMTime *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  time1 = *a2;
  time2 = *(DerivedStorage + 512);
  if (CMTimeCompare(&time1, &time2))
  {
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *&a2->value;
    *(DerivedStorage + 528) = a2->epoch;
    *(DerivedStorage + 512) = v5;
    itemairplay_postItemNotification();
  }
}

void __itemairplay_airplaySetCurrentTime_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (**(a1 + 32))
  {
    goto LABEL_38;
  }

  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  image = 0;
  FigReadWriteLockLockForRead();
  if (!*(DerivedStorage + 72))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    v5 = CMBaseObjectGetDerivedStorage();
    if (v5)
    {
      v6 = v5;
      if (!*v5 && *(v5 + 56) == 0.0)
      {
        if (*(v5 + 152))
        {
          FigSimpleMutexLock();
          v25 = *(v6 + 176);
          v7 = *(v6 + 188);
          v26 = *(v6 + 184);
          v8 = *(v6 + 192);
          FigSimpleMutexUnlock();
          if (v7)
          {
            v9 = (DerivedStorage + 32);
            if (*(DerivedStorage + 32) || (v10 = CFGetAllocator(v2), !FigAssetImageGeneratorCreateFromAsset(v10, *(DerivedStorage + 16), (DerivedStorage + 32))))
            {
              if (!*(DerivedStorage + 40))
              {
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(DerivedStorage + 40) = Mutable;
                if (!Mutable)
                {
                  __itemairplay_airplaySetCurrentTime_block_invoke_cold_1();
                  if (!v4)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_34;
                }

                FigCFDictionarySetInt32();
              }

              if (*v9)
              {
                v12 = CFRetain(*v9);
              }

              else
              {
                v12 = 0;
              }

              v13 = *(DerivedStorage + 40);
              if (v13)
              {
                v14 = CFRetain(v13);
              }

              else
              {
                v14 = 0;
              }

              FigReadWriteLockUnlockForRead();
              v15 = CFGetAllocator(v2);
              v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v16)
              {
                time1.value = v25;
                time1.timescale = v26;
                time1.flags = v7;
                time1.epoch = v8;
                v17 = v16(v12, &time1, v14, v15, &image, 0) == 0;
              }

              else
              {
                v17 = 0;
              }

              FigReadWriteLockLockForRead();
              if (v12)
              {
                CFRelease(v12);
              }

              if (v14)
              {
                CFRelease(v14);
              }

              if (v17 && !*v6)
              {
                if (image)
                {
                  time1.value = v25;
                  time1.timescale = v26;
                  time1.flags = v7;
                  time1.epoch = v8;
                  v22 = *(v6 + 176);
                  if (!CMTimeCompare(&time1, &v22))
                  {
                    Width = CGImageGetWidth(image);
                    Height = CGImageGetHeight(image);
                    [MEMORY[0x1E6979518] begin];
                    if (!pthread_main_np())
                    {
                      [MEMORY[0x1E6979518] activateBackground:1];
                    }

                    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
                    [*(v6 + 152) setBounds:{0.0, 0.0, Width, Height}];
                    [*(v6 + 152) setPosition:{Width * 0.5, Height * 0.5}];
                    [*(v6 + 152) setContents:image];
                    [MEMORY[0x1E6979518] commit];
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v4)
    {
LABEL_34:
      CFRelease(v4);
    }
  }

LABEL_35:
  if (image)
  {
    CFRelease(image);
  }

  FigReadWriteLockUnlockForRead();
LABEL_38:
  v20 = *(a1 + 40);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    CFRelease(v21);
  }
}

BOOL playerairplay_getIsAirplayVideoActive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) < 3)
  {
    return 1;
  }

  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2)
  {
    v3 = v2 == 10;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && *(DerivedStorage + 457) && playerairplay_isAirPlayVideoAllowed() != 0;
}

uint64_t playerairplay_isAirPlayVideoAllowed()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 48) || !*(v1 + 49))
  {
    return 0;
  }

  if (!*(DerivedStorage + 456))
  {
    return 1;
  }

  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

void itemairplay_getInterstitialEventTimeForItem(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  FigPlayerInterstitialEventGetStartTime(a2, a3);
  started = FigPlayerInterstitialEventCopyStartDate(a2);
  if (*(a3 + 12) & 1) == 0 && *(a1 + 192) && (*(a1 + 172))
  {
    v7 = MEMORY[0x19A8CCD90]();
    v8 = MEMORY[0x19A8CCD90](started);
    CMTimeMakeWithSeconds(&v12, v8 - v7, 1000000);
    *a3 = *&v12.value;
    epoch = v12.epoch;
    *(a3 + 16) = v12.epoch;
    *&lhs.value = *a3;
    lhs.epoch = epoch;
    v10 = *(a1 + 160);
    CMTimeAdd(&v12, &lhs, &v10);
    *a3 = v12;
  }

  if (started)
  {
    CFRelease(started);
  }
}

uint64_t pap_copyPrimaryPlayer()
{
  CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 368))
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

void pap_invalidateEndpointPlaybackSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  StopAndReleaseTimer((DerivedStorage + 496));
  playerairplay_updateShareAndAirPlayEchoMitigation(a1);
  if (*(DerivedStorage + 280))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 368))
    {
      v3 = pap_copyPrimaryPlayer();
      v4 = CMBaseObjectGetDerivedStorage();
      if (!v3)
      {
        goto LABEL_7;
      }

      v5 = v4;
      CFBagRemoveValue(*(v4 + 288), *(DerivedStorage + 280));
      v6 = MEMORY[0x19A8CCA80](*(v5 + 288), *(DerivedStorage + 280));
      CFRelease(v3);
    }

    else
    {
      CFBagRemoveValue(*(DerivedStorage + 288), *(DerivedStorage + 280));
      v6 = MEMORY[0x19A8CCA80](*(DerivedStorage + 288), *(DerivedStorage + 280));
    }

    if (v6 > 0)
    {
LABEL_12:
      v12 = *(DerivedStorage + 280);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 280) = 0;
      }

      return;
    }

LABEL_7:
    v7 = *(DerivedStorage + 280);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v8)
    {
      v8(v7, 0, 0, 0);
    }

    CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v10 = CMBaseObject;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v11)
      {
        v11(v10);
      }
    }

    goto LABEL_12;
  }
}

_BYTE *playerairplay_updateAirPlayVideoIsActiveProperty()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*result)
  {
    return result;
  }

  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2)
  {
    v12 = *MEMORY[0x1E695E4C0];
    FigBytePumpGetFigBaseObject(*(v1 + 26));
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, 0x1F0B34D78, v12);
    }

    FigBytePumpGetFigBaseObject(*(v1 + 26));
    v17 = v16;
    VTable = CMBaseObjectGetVTable();
    v19 = *(VTable + 8);
    result = (VTable + 8);
    v10 = *(v19 + 56);
    if (v10)
    {
      v20 = v17;
      v21 = v12;
LABEL_19:

      return v10(v20, 0x1F0B34D98, v21);
    }
  }

  else
  {
    v2 = *(v1 + 26);
    if (v1[51])
    {
      FigBytePumpGetFigBaseObject(v2);
      v4 = v3;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v5)
      {
        v5(v4, 0x1F0B34D78, *MEMORY[0x1E695E4C0]);
      }

      FigBytePumpGetFigBaseObject(*(v1 + 26));
      v7 = v6;
      v8 = CMBaseObjectGetVTable();
      v9 = *(v8 + 8);
      result = (v8 + 8);
      v10 = *(v9 + 56);
      if (v10)
      {
        v11 = MEMORY[0x1E695E4D0];
LABEL_18:
        v21 = *v11;
        v20 = v7;
        goto LABEL_19;
      }
    }

    else
    {
      FigBytePumpGetFigBaseObject(v2);
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        v24(v23, 0x1F0B34D78, *MEMORY[0x1E695E4D0]);
      }

      FigBytePumpGetFigBaseObject(*(v1 + 26));
      v7 = v25;
      v26 = CMBaseObjectGetVTable();
      v27 = *(v26 + 8);
      result = (v26 + 8);
      v10 = *(v27 + 56);
      if (v10)
      {
        v11 = MEMORY[0x1E695E4C0];
        goto LABEL_18;
      }
    }
  }

  return result;
}

const char *pap_getDescriptionForAirPlayState(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return "Unknown";
  }

  else
  {
    return (&off_1E748B910)[a1];
  }
}

uint64_t pap_doesCurrentRouteUseScreen()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigBytePumpGetFigBaseObject(*(DerivedStorage + 208));
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(v2, 0x1F0B34E58, *MEMORY[0x1E695E480], &cf);
  }

  v4 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

const void *itemairplay_getiTunesStoreContentType()
{
  result = itemairplay_copyiTunesStoreContentInfo();
  if (result)
  {
    v1 = result;
    v2 = itemairplay_getiTunesStoreContentTypeFromInfo(result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

const void *itemairplay_copyiTunesStoreAlternateContentID()
{
  v0 = *MEMORY[0x1E695E870];
  v1 = itemairplay_copyiTunesStoreContentInfo();
  v2 = v1;
  if (v1)
  {
    Value = CFDictionaryGetValue(v1, @"assetOption_iTunesStoreAlternateContentInfo");
    if (Value)
    {
      v0 = CFDictionaryGetValue(Value, @"assetOption_iTunesStoreContentID");
    }
  }

  if (v0)
  {
    CFRetain(v0);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v0;
}

const void *itemairplay_copyiTunesStoreContentInfo()
{
  cf = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 16);
  if (!v0)
  {
    return 0;
  }

  CMBaseObject = FigAssetGetCMBaseObject(v0);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v2(CMBaseObject, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    return 0;
  }

  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v4 = DictionaryValue;
  if (DictionaryValue)
  {
    CFRetain(DictionaryValue);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t itemairplay_getiTunesStoreContentTypeFromInfo(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentType");
  if (result)
  {
    v4 = result;
    if (CFEqual(result, @"match"))
    {
      return 2;
    }

    else
    {
      return CFEqual(v4, @"purchaseHistory") != 0;
    }
  }

  return result;
}

void __playerairplay_performQueuedItemVodkaExchange_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = v7;
    FigReadWriteLockLockForRead();
    if (!*(v8 + 72))
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [a2 objectForKey:@"Error"];
      if (v13 && [v13 code])
      {
        if (!v5 || (__playerairplay_performQueuedItemVodkaExchange_block_invoke_cold_1(v8) & 1) != 0)
        {
          *(v8 + 703) = 4;
          *(v8 + 707) = 2;
        }
      }

      else
      {
        *(v8 + 703) = 3;
        v14 = *(v8 + 432);
        if (v14)
        {
          CFRelease(v14);
          *(v8 + 432) = 0;
        }

        v15 = [a2 objectForKey:@"AirPlayParams"];
        *(v8 + 432) = v15;
        if (v15)
        {
          CFRetain(v15);
        }
      }

      objc_autoreleasePoolPop(v12);
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v4);
    }

    FigReadWriteLockUnlockForRead();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {

    CFRelease(v11);
  }
}

__CFDictionary *itemairplay_copyPlayParams(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v10 = v9;
      FigCFDictionarySetFloat32();
      v11 = MEMORY[0x1E695E4D0];
      if (*(v10 + 51))
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961E48], *MEMORY[0x1E695E4D0]);
      }

      if (*(v10 + 137))
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961EA8], *v11);
      }

      if (pap_shouldUseInterstitialQueuing())
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *v11);
      }
    }

    if (!itemairplay_setUpPlayParamDictionary(a1, Mutable, *(DerivedStorage + 432), a3))
    {
      goto LABEL_10;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  result = 0;
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
    return Mutable;
  }

  return result;
}

void playqueue_addItemToMediaControlPlaylist(uint64_t a1)
{
  FigSimpleMutexLock();
  *(CMBaseObjectGetDerivedStorage() + 701) = 1;
  ++*(a1 + 20);
  v2 = playqueue_copyPlayQueueSummary(a1);
  if (dword_1EAF172E8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v2)
  {
    CFRelease(v2);
  }
}

void pap_playbackSessionPlayCompletion(int a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 112);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __pap_playbackSessionPlayCompletion_block_invoke;
  v5[3] = &__block_descriptor_44_e5_v8__0l;
  v5[4] = a2;
  v6 = a1;
  dispatch_async(v4, v5);
}

uint64_t itemairplay_setUpPlayParamDictionary(uint64_t a1, __CFDictionary *a2, const __CFDictionary *a3, int a4)
{
  v181 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v164 = 0;
  v162 = 0;
  number = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    itemairplay_setUpPlayParamDictionary_cold_1(&time);
LABEL_329:
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v158 = 0;
    v159 = 0;
    goto LABEL_330;
  }

  if (!a2)
  {
    itemairplay_setUpPlayParamDictionary_cold_13(&time);
    goto LABEL_329;
  }

  v159 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (!v9 || (v10 = v9, *v9))
  {
    itemairplay_setUpPlayParamDictionary_cold_12(&time);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v158 = 0;
LABEL_330:
    value_low = LODWORD(time.value);
    goto LABEL_100;
  }

  if (!*(DerivedStorage + 88))
  {
    if (dword_1EAF172E8)
    {
      LODWORD(v170) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemairplay_postFailNotificationWithError(a1, -17226, 1);
    v157 = 0;
    v158 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    goto LABEL_282;
  }

  v154 = a4;
  if (!*(DerivedStorage + 24))
  {
    CMBaseObject = FigAssetGetCMBaseObject(*(DerivedStorage + 16));
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v28(CMBaseObject, @"assetProperty_AssetType", *MEMORY[0x1E695E480], DerivedStorage + 24);
    }
  }

  v156 = CFEqual(*(DerivedStorage + 24), @"com.apple.coremedia.assettype.streaming");
  isLocalFileURL = pap_isLocalFileURL(*(DerivedStorage + 88), &v164 + 1);
  if (v156)
  {
    v12 = 1;
  }

  else
  {
    v12 = !isLocalFileURL;
  }

  v13 = !v12;
  v155 = v13;
  v14 = *(DerivedStorage + 88);
  if (v14 && FigCFURLIsLocalResource() && (v15 = CFURLCopyPathExtension(v14), (v16 = v15) != 0))
  {
    v152 = CFStringCompare(v15, @"movpkg", 1uLL) == kCFCompareEqualTo;
    CFRelease(v16);
  }

  else
  {
    v152 = 0;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v18 = FigCFWeakReferenceHolderCopyReferencedObject();
  v19 = CMBaseObjectGetDerivedStorage();
  if (v19 && !*v19)
  {
    v20 = CFEqual(*(v17 + 24), @"com.apple.coremedia.assettype.streaming");
    BooleanProperty = pap_playbackSessionGetBooleanProperty();
    v22 = itemairplay_copyiTunesStoreContentRentalID();
    v23 = v22;
    if (!BooleanProperty && v22 && v20)
    {
      itemairplay_postFailNotificationWithError(a1, -17220, 1);
      value_low = 4294950076;
    }

    else
    {
      value_low = 0;
      if (!v22)
      {
        goto LABEL_28;
      }
    }

    CFRelease(v23);
LABEL_28:
    if (!v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  itemairplay_setUpPlayParamDictionary_cold_2(&time);
  value_low = LODWORD(time.value);
  if (v18)
  {
LABEL_29:
    CFRelease(v18);
  }

LABEL_30:
  if (value_low)
  {
    v157 = 0;
    v158 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    goto LABEL_283;
  }

  if (pap_playbackSessionGetBooleanProperty())
  {
    v26 = 0;
    v158 = 0;
  }

  else
  {
    v158 = itemairplay_copyiTunesStoreAlternateContentID();
    v26 = FigCFEqual() == 0;
  }

  v29 = *(DerivedStorage + 16);
  if (v29)
  {
    v30 = FigAssetGetCMBaseObject(v29);
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v31)
    {
      v31(v30, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &theDict);
    }
  }

  CFDictionaryAddValue(a2, *MEMORY[0x1E6961D40], *(DerivedStorage + 80));
  if (v10[459])
  {
    v32 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10 + 459, 0x8000100u);
    FigCFDictionarySetValue();
    if (v32)
    {
      CFRelease(v32);
    }
  }

  if (*(DerivedStorage + 820))
  {
    v33 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (DerivedStorage + 820), 0x8000100u);
    FigCFDictionarySetValue();
    if (v33)
    {
      CFRelease(v33);
    }
  }

  v34 = *(DerivedStorage + 192);
  if (v34)
  {
    if (*(DerivedStorage + 224))
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961CE8], v34);
    }

    else
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961CE0], v34);
    }
  }

  else
  {
    v35 = *(DerivedStorage + 184);
    if (!*(DerivedStorage + 184))
    {
      time = *(DerivedStorage + 160);
      FigCFDictionarySetCMTime();
      v36 = *MEMORY[0x1E695E480];
      time = *(DerivedStorage + 160);
      v37 = CMTimeCopyDescription(v36, &time);
      if (v37)
      {
        CFRelease(v37);
      }
    }

    if (pap_playbackSessionGetBooleanProperty())
    {
      time = **&MEMORY[0x1E6960CC0];
      valuePtr = *(DerivedStorage + 160);
      Seconds = CMTimeGetSeconds(&valuePtr);
      if (Seconds > 0.0)
      {
        v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v39)
        {
          if (!v39(a1, &time))
          {
            valuePtr = time;
            CMTimeGetSeconds(&valuePtr);
          }
        }
      }

      if (!v35)
      {
        FigCFDictionarySetFloat32();
      }
    }
  }

  if (a3)
  {
    Count = CFDictionaryGetCount(a3);
    v41 = malloc_type_calloc(8uLL, Count, 0x43E43F7DuLL);
    CFDictionaryGetKeysAndValues(a3, v41, 0);
    if (Count >= 1)
    {
      v42 = v41;
      do
      {
        Value = CFDictionaryGetValue(a3, *v42);
        CFDictionaryAddValue(a2, *v42++, Value);
        --Count;
      }

      while (Count);
    }

    free(v41);
  }

  if (itemairplay_getiTunesStoreContentType() != 0 && !v26)
  {
    v44 = CFDictionaryGetValue(theDict, @"assetOption_iTunesStoreContentInfo");
    itemairplay_addiTunesStoreContentInfo(v44, a2);
  }

  if (!*(DerivedStorage + 688))
  {
    playerairplay_isInterstitialEventIDRestrictedForSkip(v159, *(DerivedStorage + 760));
  }

  FigCFDictionarySetInt64();
  v45 = *(DerivedStorage + 744);
  if (v45)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961D08], v45);
  }

  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2020000000;
  v180 = 0;
  v46 = *(v10 + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __itemairplay_setUpPlayParamDictionary_block_invoke;
  block[3] = &unk_1E7482510;
  block[4] = &time;
  block[5] = DerivedStorage;
  dispatch_sync(v46, block);
  v47 = *&time.timescale;
  v48 = *(*&time.timescale + 24);
  if (v48)
  {
    v49 = CFArrayGetCount(v48);
    v47 = *&time.timescale;
    if (v49 >= 1)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961620], *(*&time.timescale + 24));
      v47 = *&time.timescale;
    }
  }

  v50 = *(v47 + 24);
  if (v50)
  {
    CFRelease(v50);
  }

  _Block_object_dispose(&time, 8);
  FigCFDictionaryGetBooleanIfPresent();
  if ((v155 & 1) == 0)
  {
    v56 = *(DerivedStorage + 16);
    if (v56)
    {
      v57 = FigAssetGetCMBaseObject(v56);
      v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v58)
      {
LABEL_98:
        value_low = 4294954514;
        goto LABEL_99;
      }

      value_low = v58(v57, @"assetProperty_CustomURLLoader", *MEMORY[0x1E695E480], &v162);
      if (value_low)
      {
LABEL_99:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        goto LABEL_100;
      }
    }

    v59 = v162;
    if (v162)
    {
      v60 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v60)
      {
        v60(v59, *MEMORY[0x1E6961600], *MEMORY[0x1E695E480], &number);
      }

      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, (DerivedStorage + 104));
        FigCFDictionarySetInt64();
      }
    }

    if (v156)
    {
      v61 = FigAssetGetCMBaseObject(*(DerivedStorage + 16));
      v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v62)
      {
        value_low = v62(v61, @"assetProperty_OriginalNetworkContentURL");
        if (!value_low)
        {
          itemairplay_setUpPlayParamDictionary_cold_3(&time);
          value_low = LODWORD(time.value);
        }

        goto LABEL_99;
      }

      goto LABEL_98;
    }

    v68 = *(DerivedStorage + 88);
    if (v68)
    {
      v68 = CFRetain(v68);
    }

    cf = v68;
    if (v26 && FigCFDictionaryGetDictionaryValue())
    {
      DictionaryValue = FigCFDictionaryGetDictionaryValue();
      itemairplay_addiTunesStoreContentInfo(DictionaryValue, a2);
      v70 = CFDictionaryGetValue(DictionaryValue, @"assetOption_iTunesStoreAlternateContentInfoAssetURLString");
      v71 = CFURLCreateWithString(*MEMORY[0x1E695E480], v70, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v71;
    }

    v72 = cf;
    if (cf)
    {
      if (theDict)
      {
        StringValue = FigCFDictionaryGetStringValue();
        v72 = cf;
        if (StringValue)
        {
          time.value = 0;
          value_low = FigCFHTTPCreateURLWithQueryParam(cf, @"_HLS_primary_id=", StringValue, &time);
          if (value_low)
          {
            goto LABEL_99;
          }

          v74 = cf;
          cf = time.value;
          if (time.value)
          {
            CFRetain(time.value);
          }

          CFRelease(v74);
          if (time.value)
          {
            CFRelease(time.value);
          }

          v72 = cf;
        }
      }
    }

    if (v72)
    {
      v75 = CFURLCopyAbsoluteURL(v72);
      v76 = v75;
      v77 = v75 == 0;
      if (!v75)
      {
        v75 = cf;
      }

      v78 = CFURLGetString(v75);
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BA0], v78);
      if (!v77)
      {
        CFRelease(v76);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10[272] && FigAirPlayURLProcessorUtilDoesItemRequestSecureStop(a1))
    {
      CFDictionarySetValue(a2, *MEMORY[0x1E6961628], *MEMORY[0x1E695E4D0]);
    }

    if (!v152)
    {
      v157 = 0;
      v64 = 0;
LABEL_134:
      v66 = 0;
      v65 = 0;
      goto LABEL_165;
    }

    if (HIBYTE(v164))
    {
      goto LABEL_77;
    }

    v64 = CFURLCopyAbsoluteURL(*(DerivedStorage + 88));
    if (!v164)
    {
      if (dword_1EAF172E8)
      {
        LODWORD(v170) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v86 = v170;
        if (os_log_type_enabled(v85, type[0]))
        {
          v87 = v86;
        }

        else
        {
          v87 = v86 & 0xFFFFFFFE;
        }

        if (v87)
        {
          if (v159)
          {
            v88 = (CMBaseObjectGetDerivedStorage() + 459);
          }

          else
          {
            v88 = "";
          }

          if (a1)
          {
            v149 = (CMBaseObjectGetDerivedStorage() + 820);
          }

          else
          {
            v149 = "";
          }

          v150 = *(DerivedStorage + 80);
          LODWORD(valuePtr.value) = 136316418;
          *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
          LOWORD(valuePtr.flags) = 2048;
          *(&valuePtr.flags + 2) = v159;
          HIWORD(valuePtr.epoch) = 2082;
          v172 = v88;
          v173 = 2048;
          v174 = a1;
          v175 = 2082;
          v176 = v149;
          v177 = 2114;
          v178 = v150;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_349:
      v157 = 0;
      goto LABEL_134;
    }

    time.value = 0;
    v79 = CMBaseObjectGetDerivedStorage();
    v81 = (v79 + 48);
    v80 = *(v79 + 48);
    v82 = *MEMORY[0x1E695E480];
    if (!v80)
    {
      if (FigStreamingAssetDownloadCacheTranslatorCreate(*MEMORY[0x1E695E480], v64, *(v79 + 57), v81))
      {
        if (itemairplay_setUpPlayParamDictionary_cold_4())
        {
LABEL_338:
          if (time.value)
          {
            CFRelease(time.value);
          }

          v157 = 0;
          goto LABEL_341;
        }

LABEL_337:
        itemairplay_setUpPlayParamDictionary_cold_5(v81);
        goto LABEL_338;
      }

      v80 = *v81;
    }

    FigBaseObject = FigStreamingAssetDownloadCacheTranslatorGetFigBaseObject(v80);
    v84 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v84 && !v84(FigBaseObject, @"FSADCT_MultiVariantPlaylist", v82, &time))
    {
      if (*(v79 + 57))
      {
        CFURLGetString(time.value);
      }

      v157 = time.value;
LABEL_341:
      if (v152 && !v157)
      {
        itemairplay_setUpPlayParamDictionary_cold_8(&time);
        goto LABEL_333;
      }

      if (v157)
      {
        v65 = CFURLCopyFileSystemPath(v157, kCFURLPOSIXPathStyle);
        if (v65)
        {
          v151 = v64;
          if (!v64)
          {
            v151 = *(DerivedStorage + 88);
          }

          v66 = CFURLCopyFileSystemPath(v151, kCFURLPOSIXPathStyle);
          if (v66)
          {
            CFDictionaryAddValue(a2, *MEMORY[0x1E6961C58], v66);
            goto LABEL_164;
          }

          itemairplay_setUpPlayParamDictionary_cold_6(&time);
        }

        else
        {
          itemairplay_setUpPlayParamDictionary_cold_7(&time);
          v65 = 0;
        }

        value_low = LODWORD(time.value);
        v63 = v157;
LABEL_100:
        v157 = v63;
        v66 = 0;
        if (!value_low)
        {
          goto LABEL_287;
        }

        goto LABEL_283;
      }

      goto LABEL_349;
    }

    goto LABEL_337;
  }

  if (!HIBYTE(v164))
  {
    v67 = CFURLCopyAbsoluteURL(*(DerivedStorage + 88));
    v64 = v67;
    if (!v67)
    {
      v67 = *(DerivedStorage + 88);
    }

    v65 = CFURLCopyFileSystemPath(v67, kCFURLPOSIXPathStyle);
    if (v65)
    {
      goto LABEL_163;
    }

    itemairplay_setUpPlayParamDictionary_cold_11(&time);
    goto LABEL_333;
  }

LABEL_77:
  if (!*(DerivedStorage + 96))
  {
    SecurityScopedFileURLForPersistentURL = FigCreateSecurityScopedFileURLForPersistentURL();
    *(DerivedStorage + 96) = SecurityScopedFileURLForPersistentURL;
    if (!SecurityScopedFileURLForPersistentURL)
    {
      itemairplay_setUpPlayParamDictionary_cold_10(&time);
      v63 = 0;
      v64 = 0;
      goto LABEL_334;
    }

    if (!CFURLStartAccessingSecurityScopedResource(SecurityScopedFileURLForPersistentURL))
    {
      LODWORD(v170) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v53 = v170;
      if (os_log_type_enabled(v52, type[0]))
      {
        v54 = v53;
      }

      else
      {
        v54 = v53 & 0xFFFFFFFE;
      }

      if (v54)
      {
        if (a1)
        {
          v55 = (CMBaseObjectGetDerivedStorage() + 820);
        }

        else
        {
          v55 = "";
        }

        v89 = 88;
        if (!*(DerivedStorage + 57))
        {
          v89 = 112;
        }

        v90 = *(DerivedStorage + v89);
        v91 = *(DerivedStorage + 96);
        LODWORD(valuePtr.value) = 136316163;
        *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
        LOWORD(valuePtr.flags) = 2048;
        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 2082;
        v172 = v55;
        v173 = 2113;
        v174 = v90;
        v175 = 2113;
        v176 = v91;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v92 = CFURLCopyAbsoluteURL(*(DerivedStorage + 96));
  v64 = v92;
  if (!v92)
  {
    v92 = *(DerivedStorage + 96);
  }

  v65 = CFURLCopyFileSystemPath(v92, kCFURLPOSIXPathStyle);
  if (!v65)
  {
    itemairplay_setUpPlayParamDictionary_cold_9(&time);
LABEL_333:
    v63 = 0;
LABEL_334:
    v65 = 0;
    goto LABEL_330;
  }

LABEL_163:
  v157 = 0;
  v66 = 0;
LABEL_164:
  CFDictionaryAddValue(a2, *MEMORY[0x1E6961C70], v65);
LABEL_165:
  time.value = 0;
  valuePtr.value = 0;
  v93 = CMBaseObjectGetDerivedStorage();
  v94 = FigAssetGetCMBaseObject(*(v93 + 16));
  v95 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v153 = *MEMORY[0x1E695E480];
  if (v95)
  {
    v96 = v95(v94, @"assetProperty_CreationFlags");
    v97 = time.value;
    if (!v96 && time.value)
    {
      CFNumberGetValue(time.value, kCFNumberSInt64Type, &valuePtr);
      v97 = time.value;
    }

    if (v97)
    {
      CFRelease(v97);
    }
  }

  FigCFDictionarySetInt32();
  if (theDict)
  {
    ArrayValue = FigCFDictionaryGetArrayValue();
    if (ArrayValue)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961C68], ArrayValue);
    }

    v99 = CFDictionaryGetValue(theDict, @"assetOption_InheritURIQueryComponentFromReferencingURI");
    if (v99 != 0 && !v26)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BF0], v99);
    }

    FigCFDictionarySetValueFromKeyInDict();
  }

  v100 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(a2, *MEMORY[0x1E6961C48], *MEMORY[0x1E695E4D0]);
  v101 = theDict;
  CMBaseObjectGetDerivedStorage();
  if (v101 && (v102 = CFDictionaryGetValue(v101, @"assetOption_iTunesStoreContentInfo")) != 0 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v102)) && (v104 = CFDictionaryGetValue(v102, @"assetOption_iTunesStoreAssetHLSAssetURLString")) != 0)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961BE0], v104);
    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  if (!v154)
  {
    if (v10[456])
    {
      CMBaseObjectGetDerivedStorage();
      LOBYTE(time.value) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (!LOBYTE(time.value))
      {
        if (dword_1EAF172E8)
        {
          LODWORD(v170) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v112 = v170;
          if (os_log_type_enabled(v111, type[0]))
          {
            v113 = v112;
          }

          else
          {
            v113 = v112 & 0xFFFFFFFE;
          }

          if (v113)
          {
            if (v159)
            {
              v114 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v114 = "";
            }

            if (a1)
            {
              v147 = (CMBaseObjectGetDerivedStorage() + 820);
            }

            else
            {
              v147 = "";
            }

            v148 = *(DerivedStorage + 80);
            LODWORD(valuePtr.value) = 136316418;
            *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
            LOWORD(valuePtr.flags) = 2048;
            *(&valuePtr.flags + 2) = v159;
            HIWORD(valuePtr.epoch) = 2082;
            v172 = v114;
            v173 = 2048;
            v174 = a1;
            v175 = 2082;
            v176 = v147;
            v177 = 2114;
            v178 = v148;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        itemairplay_postFailNotificationWithError(a1, -15694, 1);
        value_low = 4294951602;
        goto LABEL_283;
      }
    }
  }

  if (v105)
  {
    LOBYTE(theArray) = 0;
    LOBYTE(v167) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v106 = v155;
    if (!theArray)
    {
      v106 = 0;
    }

    if (v106 == 1)
    {
      if (!dword_1EAF172E8)
      {
LABEL_281:
        itemairplay_postFailNotificationWithError(a1, -17226, 1);
LABEL_282:
        value_low = 4294950070;
LABEL_283:
        if (*(DerivedStorage + 56))
        {
          FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(*(DerivedStorage + 16));
          *(DerivedStorage + 56) = 0;
        }

        v145 = *(DerivedStorage + 48);
        if (v145)
        {
          CFRelease(v145);
          *(DerivedStorage + 48) = 0;
        }

        goto LABEL_287;
      }

      LODWORD(v170) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v107 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v108 = v170;
      if (os_log_type_enabled(v107, type[0]))
      {
        v109 = v108;
      }

      else
      {
        v109 = v108 & 0xFFFFFFFE;
      }

      if (!v109)
      {
        goto LABEL_266;
      }

      if (v159)
      {
        v110 = (CMBaseObjectGetDerivedStorage() + 459);
        if (a1)
        {
LABEL_322:
          v137 = (CMBaseObjectGetDerivedStorage() + 820);
          goto LABEL_265;
        }
      }

      else
      {
        v110 = "";
        if (a1)
        {
          goto LABEL_322;
        }
      }

      v137 = "";
LABEL_265:
      v138 = *(DerivedStorage + 80);
      LODWORD(valuePtr.value) = 136316418;
      *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
      LOWORD(valuePtr.flags) = 2048;
      *(&valuePtr.flags + 2) = v159;
      HIWORD(valuePtr.epoch) = 2082;
      v172 = v110;
      v173 = 2048;
      v174 = a1;
      v175 = 2082;
      v176 = v137;
      v177 = 2114;
      v178 = v138;
      _os_log_send_and_compose_impl();
      goto LABEL_266;
    }

    if (!v156)
    {
      v170 = 0;
      v132 = *(DerivedStorage + 16);
      if (v132)
      {
        v133 = FigAssetGetCMBaseObject(v132);
        CMBaseObjectCopyProperty(v133, @"assetProperty_ProtectedStatus", v153, &v170);
        if (v170)
        {
          if (CFBooleanGetValue(v170) && v167)
          {
            if (!dword_1EAF172E8)
            {
              goto LABEL_267;
            }

            *type = 0;
            LOBYTE(v166) = 0;
            v134 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v135 = *type;
            if (os_log_type_enabled(v134, v166))
            {
              v136 = v135;
            }

            else
            {
              v136 = v135 & 0xFFFFFFFE;
            }

            if (!v136)
            {
LABEL_266:
              fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_267:
              if (dword_1EAF172E8)
              {
                LODWORD(v170) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v140 = v170;
                if (os_log_type_enabled(v139, type[0]))
                {
                  v141 = v140;
                }

                else
                {
                  v141 = v140 & 0xFFFFFFFE;
                }

                if (v141)
                {
                  if (v159)
                  {
                    v142 = (CMBaseObjectGetDerivedStorage() + 459);
                  }

                  else
                  {
                    v142 = "";
                  }

                  if (a1)
                  {
                    v143 = (CMBaseObjectGetDerivedStorage() + 820);
                  }

                  else
                  {
                    v143 = "";
                  }

                  v144 = *(DerivedStorage + 80);
                  LODWORD(valuePtr.value) = 136316418;
                  *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
                  LOWORD(valuePtr.flags) = 2048;
                  *(&valuePtr.flags + 2) = v159;
                  HIWORD(valuePtr.epoch) = 2082;
                  v172 = v142;
                  v173 = 2048;
                  v174 = a1;
                  v175 = 2082;
                  v176 = v143;
                  v177 = 2114;
                  v178 = v144;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              goto LABEL_281;
            }

            if (v159)
            {
              v110 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v110 = "";
            }

            if (!a1)
            {
              v137 = "";
              goto LABEL_265;
            }

            goto LABEL_322;
          }
        }
      }
    }
  }

  v115 = *(v10 + 52);
  if (v115)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961B98], v115);
  }

  v116 = *(v10 + 53);
  if (v116)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961B90], v116);
  }

  if (FigCFEqual())
  {
    v117 = MEMORY[0x1E6961D58];
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v118 = *MEMORY[0x1E6961D68];
      }

      else
      {
        v118 = *MEMORY[0x1E6961D70];
      }

      goto LABEL_215;
    }

    v117 = MEMORY[0x1E6961D60];
  }

  v118 = *v117;
LABEL_215:
  CFDictionaryAddValue(a2, *MEMORY[0x1E6961C40], v118);
  valuePtr.value = 0;
  v119 = CMBaseObjectGetDerivedStorage();
  if (*(v119 + 240) && *(v119 + 241))
  {
    v120 = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 8));
    v121 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v121)
    {
      v121(v120, @"TimeToPauseBuffering", v153, &valuePtr);
    }

    if (valuePtr.value)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961D10], valuePtr.value);
      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
        valuePtr.value = 0;
      }
    }

    v122 = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 8));
    v123 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v123)
    {
      v123(v122, @"TimeToPausePlayback", v153, &valuePtr);
    }

    if (valuePtr.value)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961D18], valuePtr.value);
    }

    v124 = *MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 158))
    {
      v125 = v100;
    }

    else
    {
      v125 = *MEMORY[0x1E695E4C0];
    }

    CFDictionaryAddValue(a2, *MEMORY[0x1E6961CD8], v125);
    if (valuePtr.value)
    {
      CFRelease(valuePtr.value);
      valuePtr.value = 0;
    }

    v126 = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 8));
    v127 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v127)
    {
      v127(v126, @"timeToSwapPlayback", v153, &valuePtr);
    }

    if (valuePtr.value)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961D20], valuePtr.value);
      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
        valuePtr.value = 0;
      }
    }

    if (v10[246])
    {
      v128 = v100;
    }

    else
    {
      v128 = v124;
    }

    CFDictionaryAddValue(a2, *MEMORY[0x1E6961D00], v128);
    v129 = *(DerivedStorage + 776);
    if (v129)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961C00], v129);
    }

    v130 = *(DerivedStorage + 752);
    if (v130)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BA8], v130);
    }

    v131 = *(DerivedStorage + 760);
    if (v131)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BF8], v131);
    }

    if (*(DerivedStorage + 548))
    {
      itemairplay_getCurrentInterstitialLiveHorizon(DerivedStorage, &time);
      FigCFDictionarySetCMTime();
    }
  }

  value_low = 0;
LABEL_287:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v158)
  {
    CFRelease(v158);
  }

  if (v159)
  {
    CFRelease(v159);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v162)
  {
    CFRelease(v162);
  }

  FigReadWriteLockUnlockForRead();
  return value_low;
}

void itemairplay_addiTunesStoreContentInfo(const void *a1, __CFDictionary *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = itemairplay_getiTunesStoreContentTypeFromInfo(a1);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentID");
        v8 = MEMORY[0x1E6961B60];
        if (v6 == 2)
        {
          v8 = MEMORY[0x1E6961B58];
        }

        CFDictionaryAddValue(a2, *MEMORY[0x1E6961C30], *v8);
        CFDictionaryAddValue(a2, *MEMORY[0x1E6961C20], Value);
        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentUserAgent"))
        {
          v9 = *MEMORY[0x1E6961D48];
          v10 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentUserAgent");
          CFDictionaryAddValue(a2, v9, v10);
        }

        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDownloadParameters"))
        {
          v11 = *MEMORY[0x1E6961B88];
          v12 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDownloadParameters");
          CFDictionaryAddValue(a2, v11, v12);
        }

        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDSID"))
        {
          v13 = *MEMORY[0x1E6961BC0];
          v14 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDSID");
          CFDictionaryAddValue(a2, v13, v14);
        }

        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentPurchasedMediaKind"))
        {
          v15 = *MEMORY[0x1E6961CA0];
          v16 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentPurchasedMediaKind");

          CFDictionaryAddValue(a2, v15, v16);
        }
      }
    }
  }
}

CMTime *itemairplay_getCurrentInterstitialLiveHorizon@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  CMTimeMake(&rhs, UpTimeNanoseconds - *(a1 + 560), 1000000000);
  v6 = *(a1 + 536);
  return CMTimeAdd(a2, &v6, &rhs);
}

const void *itemairplay_copyiTunesStoreContentRentalID()
{
  v0 = itemairplay_copyiTunesStoreContentInfo();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"assetOption_iTunesStoreContentRentalID");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

void __itemairplay_doesHLSAssetHaveACompletelyDownloadedAlternate_block_invoke(uint64_t a1)
{
  propertyList = 0;
  v2 = *MEMORY[0x1E695E480];
  FigAirPlayMediaSelectionCopyProperty(*(*(a1 + 40) + 352), @"ClientSelectedMediaArray", *MEMORY[0x1E695E480], &propertyList);
  *(*(*(a1 + 32) + 8) + 24) = CFPropertyListCreateDeepCopy(v2, propertyList, 0);
  if (propertyList)
  {
    CFRelease(propertyList);
  }
}

void __pap_playbackSessionPlayCompletion_block_invoke(uint64_t a1)
{
  itemairplay_playMediaCompletionHandler(*(*(a1 + 32) + 8), **(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[1])
  {
    CFRelease(v2[1]);
    v2 = *(a1 + 32);
  }

  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  free(v2);
}

void itemairplay_playMediaCompletionHandler(void *a1, const void *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = *(CMBaseObjectGetDerivedStorage() + 216);
  v9 = v8 > 0xF;
  v10 = (1 << v8) & 0xD000;
  v11 = v9 || v10 == 0;
  if (v11 || *v7)
  {
    return;
  }

  if (a3)
  {
    itemairplay_playMediaCompletionHandler_cold_1();
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  cf = 0;
  if (dword_1EAF172E8)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  pap_setAirPlayState(a2, 16);
  playerairplay_setActionAtEndOnAirPlayController();
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 20, &cf);
  if (*(v7 + 456))
  {
    *(v7 + 356) = 1;
  }

  else
  {
    itemairplay_playMediaCompletionHandler_cold_2();
  }

  v13 = *(v7 + 208);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v14)
  {
    v14(v13, 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a1)
  {
LABEL_16:
    FigReadWriteLockLockForRead();
    if (!*(DerivedStorage + 72))
    {
      if (a3)
      {
        CFRetain(a2);
        CFRetain(a1);
        v15 = *(v7 + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __itemairplay_playMediaCompletionHandler_block_invoke;
        block[3] = &__block_descriptor_64_e5_v8__0l;
        block[4] = v7;
        block[5] = DerivedStorage;
        block[6] = a2;
        block[7] = a1;
        dispatch_async(v15, block);
        itemairplay_postFailNotificationWithError(a1, a3, 1);
      }

      else
      {
        itemairplay_postItemNotification();
        *(DerivedStorage + 706) = 257;
        itemairplay_controlPlaybackActivityTimer(a1, 1);
        v21 = *(DerivedStorage + 440);
        v20 = *(DerivedStorage + 464);
        playerairplay_setPlaybackEndTimes(a2, a1, &v21, 1, &v20, 1);
        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a2);
      }
    }

    FigReadWriteLockUnlockForRead();
  }
}

void playerairplay_setActionAtEndOnAirPlayController()
{
  CMBaseObjectGetDerivedStorage();
  v0 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v0)
  {
    v1 = v0 == 10;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    playerairplay_setActionAtEndOnAirPlayController_cold_1();
  }
}

void __itemairplay_playMediaCompletionHandler_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMTimebaseSetRate(*(*(a1 + 40) + 568), 0.0);
  }

  CFRelease(*(a1 + 48));
  v2 = *(a1 + 56);

  CFRelease(v2);
}

void playerairplay_setPlaybackEndTimes(uint64_t a1, CFMutableDictionaryRef a2, CMTime *a3, int a4, CMTime *a5, int a6)
{
  v10 = MEMORY[0x1E695E480];
  if (a4)
  {
    v11 = *MEMORY[0x1E695E480];
    v18 = *a3;
    v12 = CMTimeCopyAsDictionary(&v18, v11);
    if (v12)
    {
      v15 = v12;
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
        Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
      }

      else
      {
        Mutable = 0;
      }

      pap_playbackSessionSetProxiedProperty(a1, *MEMORY[0x1E6961E78], v15, Mutable);
      CFRelease(v15);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  if (a6)
  {
    v13 = *v10;
    v18 = *a5;
    v14 = CMTimeCopyAsDictionary(&v18, v13);
    if (v14)
    {
      v17 = v14;
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
        a2 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
      }

      pap_playbackSessionSetProxiedProperty(a1, *MEMORY[0x1E6961EC0], v17, a2);
      CFRelease(v17);
      if (a2)
      {
        CFRelease(a2);
      }
    }
  }
}

CFMutableDictionaryRef itemairplay_createProxiedPropertyParamsWithItemUUID()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  return Mutable;
}

void pap_playbackSessionInsertPlayQueueItemCompletion(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionInsertPlayQueueItemCompletion_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v3, block);
}

void __pap_playbackSessionInsertPlayQueueItemCompletion_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    CFRelease(v2[1]);
    v2 = *(a1 + 32);
  }

  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  free(v2);
}

uint64_t playerairplay_performAirPlayVodkaExchange(const void *a1, const void *a2, const void *a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v10 = DerivedStorage, !*(DerivedStorage + 280)) || (v11 = CMBaseObjectGetDerivedStorage()) == 0)
  {
    objc_autoreleasePoolPop(v8);
    return 0;
  }

  v12 = v11;
  FigReadWriteLockLockForRead();
  if (*(v12 + 72))
  {
    goto LABEL_31;
  }

  CFRetain(a1);
  CFRetain(a2);
  CFRetain(a3);
  *(v12 + 736) = FigGetUpTimeNanoseconds();
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10[28], @"RouteInfo", v10[35], @"EndpointPlaybackSession", *(v12 + 80), @"MediaControlUUID", 0}];
  v14 = v10[11];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __playerairplay_performAirPlayVodkaExchange_block_invoke;
  v27[3] = &__block_descriptor_73_e25_v16__0____CFDictionary__8l;
  v27[4] = v10;
  v27[5] = v12;
  v28 = a4;
  v27[6] = a2;
  v27[7] = a1;
  v27[8] = a3;
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (!*v15 || (v16 = v15[11]) == 0)
  {
    v17 = 4294954514;
LABEL_17:
    if (a4 && pap_isLocalFileURL(*(v12 + 88), 0))
    {
      v24 = itemairplay_createCPEProtectorIfAvailable(a2, 0, &v26);
      if (v24)
      {
        v25 = v24;
        v17 = playerairplay_performAirPlayVodkaExchange(a1, a2, v24, 0);
        CFRelease(v25);
      }

      else
      {
        *(v12 + 703) = 1;
        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
      }
    }

    if (a3)
    {
      CFRelease(a3);
    }

    if (a2)
    {
      CFRelease(a2);
    }

    if (a1)
    {
      CFRelease(a1);
    }

    goto LABEL_24;
  }

  v17 = v16(a3, v13, v14, v27);
  if (v17)
  {
    goto LABEL_17;
  }

  v18 = *(v12 + 632);
  if (v18)
  {
    v19 = *(CMBaseObjectGetVTable() + 16);
    if (*v19)
    {
      v20 = v19[12];
      if (v20)
      {
        v20(v18);
      }
    }

    v21 = *(v12 + 632);
    if (v21)
    {
      CFRelease(v21);
      *(v12 + 632) = 0;
    }
  }

  if (a3)
  {
    v22 = CFRetain(a3);
  }

  else
  {
    v22 = 0;
  }

  *(v12 + 632) = v22;
  *(v12 + 703) = 2;
  itemairplay_controlPlaybackActivityTimer(a2, 3);
LABEL_31:
  v17 = 0;
LABEL_24:
  objc_autoreleasePoolPop(v8);
  FigReadWriteLockUnlockForRead();
  return v17;
}

uint64_t playerairplay_applyCachedPropertiesOnBaoAndPlaybackSession(const void *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  result = CFEqual(a1, @"AudioMode");
  if (result)
  {

    return playerairplay_setAndCacheAudioMode(a3, a2, 0);
  }

  return result;
}

void playerairplay_createAndResumeVideoSyncTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 112));
  *(DerivedStorage + 496) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_context(v2, v3);
    dispatch_set_finalizer_f(*(DerivedStorage + 496), FigCFRelease_5);
    dispatch_source_set_event_handler_f(*(DerivedStorage + 496), pap_videoSyncTimerEventHandler);
    dispatch_source_set_timer(*(DerivedStorage + 496), 0, 0x12A05F200uLL, 0x4C4B40uLL);
    v4 = *(DerivedStorage + 496);

    dispatch_resume(v4);
  }

  else
  {
    playerairplay_createAndResumeVideoSyncTimer_cold_1();
  }
}

uint64_t playqueue_getNumItemsInClientPlayQueue(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v2;
}

__n128 pap_expectedEndTime@<Q0>(CMTime *a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = MEMORY[0x1E6960C68];
  a1->epoch = *(MEMORY[0x1E6960C68] + 16);
  result = *v4;
  *&a1->value = *v4;
  if (*(DerivedStorage + 452))
  {
    result = *(DerivedStorage + 440);
    a1->epoch = *(DerivedStorage + 456);
    *&a1->value = result;
  }

  else
  {
    v6 = *(DerivedStorage + 616);
    if (v6)
    {
      if (CFArrayGetCount(v6) >= 1)
      {
        v7 = *(v3 + 616);
        Count = CFArrayGetCount(v7);
        ValueAtIndex = CFArrayGetValueAtIndex(v7, Count - 1);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6961F08]);
          v12 = CFDictionaryGetValue(v10, *MEMORY[0x1E6961F00]);
          if (Value)
          {
            v13 = v12 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = v12;
            memset(&v18, 0, sizeof(v18));
            CMTimeMakeFromDictionary(&v18, Value);
            memset(&v17, 0, sizeof(v17));
            CMTimeMakeFromDictionary(&v17, v14);
            lhs = v18;
            v15 = v17;
            CMTimeAdd(a1, &lhs, &v15);
          }
        }
      }
    }
  }

  return result;
}

uint64_t pap_copyItemFromUUIDOrCurrentInMediaControlPlaylist(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    if (*result)
    {
      return 0;
    }

    else if (!a2 || (result = playqueue_copyItemForUUID(*(result + 40), a2), (v5 = result) == 0))
    {
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v4 + 40), 0, &v5);
      return v5;
    }
  }

  return result;
}

uint64_t itemairplay_clearCoordinatedPlaybackSynchronizationTimebase()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    itemairplay_clearCoordinatedPlaybackSynchronizationTimebase_cold_1();
  }

  else
  {
    FigSimpleMutexLock();
    v1 = *(DerivedStorage + 576);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 576) = 0;
    }

    FigSimpleMutexUnlock();
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t playqueue_getIndexOfAirPlayItem(CFArrayRef *a1, const void *a2)
{
  if (!a2)
  {
    return -1;
  }

  FigSimpleMutexLock();
  IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(a1, a2);
  FigSimpleMutexUnlock();
  return IndexOfAirPlayItemInternal;
}

void pap_playbackSessionGetMediaSelectionCompletion(uint64_t a1, const void *a2, int a3, const void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 || (v8 = DerivedStorage, *DerivedStorage))
  {
LABEL_12:
    if (!a4)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    if (!a4)
    {
      return;
    }

    goto LABEL_8;
  }

  v9 = CFGetTypeID(a2);
  if (v9 != CFArrayGetTypeID())
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  if (!a4)
  {
    return;
  }

  CFRetain(a2);
LABEL_8:
  CFRetain(a4);
  v10 = *(v8 + 14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionGetMediaSelectionCompletion_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = v8;
  block[5] = a2;
  block[6] = a4;
  dispatch_async(v10, block);
LABEL_9:
  CFRelease(a4);
}

void pap_playbackSessionGetTimedMetadataCompletion(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  v7 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionGetTimedMetadataCompletion_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a4;
  dispatch_async(v7, block);
}

void __pap_playbackSessionGetTimedMetadataCompletion_block_invoke(uint64_t a1)
{
  values[16] = *MEMORY[0x1E69E9840];
  if (**(a1 + 32) || (v5 = *(a1 + 40)) == 0)
  {
LABEL_2:
    v2 = 0;
    goto LABEL_3;
  }

  v6 = CFGetTypeID(v5);
  TypeID = CFArrayGetTypeID();
  v8 = *(a1 + 40);
  if (v6 != TypeID)
  {
    if (v8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_2;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  values[0] = Mutable;
  Count = CFArrayGetCount(v8);
  if (Count >= 1)
  {
    v12 = Count;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
      if (CFDictionaryGetValue(ValueAtIndex, @"locale"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, ValueAtIndex);
        Value = CFDictionaryGetValue(MutableCopy, @"locale");
        if (Value)
        {
          v17 = CFLocaleCreate(v9, Value);
          if (v17)
          {
            v18 = v17;
            CFDictionaryAddValue(MutableCopy, @"locale", v17);
            CFRelease(v18);
          }
        }

        CFArrayAppendValue(Mutable, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  v2 = CFDictionaryCreate(v9, &kFigPlayerTimedMetadataNotificationKey_ValueArray, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    playerairplay_postPlayerNotification();
  }

  if (values[0])
  {
    CFRelease(values[0]);
  }

LABEL_3:
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t playqueue_getNumItemsInMediaControlPlaylist(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 20);
  FigSimpleMutexUnlock();
  return v2;
}

CFIndex playqueue_getIndexOfAirPlayItemInternal(CFArrayRef *a1, const void *a2)
{
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return -1;
  }

  v6.length = Count;
  v5 = *a1;
  v6.location = 0;

  return CFArrayGetFirstIndexOfValue(v5, v6, a2);
}

void pap_playbackSessionStopCompletion(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionStopCompletion_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(global_queue, block);
}

void __pap_playbackSessionStopCompletion_block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(*(a1 + 32) + 16));
  dispatch_release(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  if (v2[1])
  {
    CFRelease(v2[1]);
    v2 = *(a1 + 32);
  }

  free(v2);
}

void __pap_playbackSessionGetMediaSelectionCompletion_block_invoke(void *a1)
{
  v11 = 0;
  v2 = a1[4];
  if (!*v2)
  {
    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v2 + 40), 0, &v11);
    if (v11)
    {
      v5 = a1[5];
      if (v5)
      {
        CFRetain(v5);
      }

      v6 = a1[6];
      if (v6)
      {
        CFRetain(v6);
      }

      if (v11)
      {
        CFRetain(v11);
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1[4] + 104);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __pap_playbackSessionGetMediaSelectionCompletion_block_invoke_2;
      v9[3] = &__block_descriptor_56_e5_v8__0l;
      v9[4] = v7;
      v10 = *(a1 + 5);
      dispatch_async(v8, v9);
      if (v11)
      {
        CFRelease(v11);
      }
    }
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

void __pap_playbackSessionGetMediaSelectionCompletion_block_invoke_2(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    FigReadWriteLockUnlockForRead();
  }

  else
  {
    FigAirPlayMediaSelectionSetProperty(*(DerivedStorage + 352), @"LastQueriedSelectedMediaArray", *(a1 + 40));
    v3 = *MEMORY[0x1E695E480];
    FigAirPlayMediaSelectionCopyProperty(*(DerivedStorage + 352), @"SelectedMediaArray", *MEMORY[0x1E695E480], &value);
    if (value)
    {
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"CurrentSelectedMediaArray", value);
    }

    else
    {
      Mutable = 0;
    }

    itemairplay_postItemNotification();
    FigReadWriteLockUnlockForRead();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  if (value)
  {
    CFRelease(value);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

void __playerairplay_performAirPlayVodkaExchange_block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:@"Error"];
  if (!**(a1 + 32))
  {
    v5 = v4;
    FigReadWriteLockLockForRead();
    v6 = *(a1 + 40);
    if (*(v6 + 72))
    {
LABEL_3:
      FigReadWriteLockUnlockForRead();
      goto LABEL_4;
    }

    if (v5)
    {
      if ([v5 code])
      {
        if (*(a1 + 72) && pap_isLocalFileURL(*(*(a1 + 40) + 88), 0))
        {
          v18 = itemairplay_createCPEProtectorIfAvailable(*(a1 + 48), 0, &v28);
          if (!v18)
          {
            v11 = *(a1 + 40);
            v13 = 1;
LABEL_19:
            *(v11 + 703) = v13;
LABEL_28:
            playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(*(a1 + 56));
            goto LABEL_3;
          }

          v19 = v18;
          v20 = *(a1 + 48);
          if (v20)
          {
            CFRetain(v20);
          }

          v21 = *(a1 + 56);
          if (v21)
          {
            CFRetain(v21);
            v22 = *(a1 + 56);
          }

          else
          {
            v22 = 0;
          }

          v23 = *(a1 + 32);
          v16 = *(v23 + 112);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __playerairplay_performAirPlayVodkaExchange_block_invoke_2;
          v27[3] = &__block_descriptor_64_e5_v8__0l;
          v27[4] = v23;
          v27[5] = v22;
          v27[6] = *(a1 + 48);
          v27[7] = v19;
          v17 = v27;
        }

        else
        {
          v14 = *(a1 + 48);
          if (v14)
          {
            CFRetain(v14);
          }

          v15 = *(a1 + 56);
          if (v15)
          {
            CFRetain(v15);
          }

          CFRetain(v5);
          v16 = *(*(a1 + 32) + 112);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __playerairplay_performAirPlayVodkaExchange_block_invoke_3;
          block[3] = &unk_1E748B7A8;
          v25 = *(a1 + 40);
          v26 = *(a1 + 56);
          block[4] = v5;
          v17 = block;
        }

        dispatch_async(v16, v17);
        goto LABEL_28;
      }

      v6 = *(a1 + 40);
    }

    v10 = *(v6 + 432);
    if (v10)
    {
      CFRelease(v10);
      *(*(a1 + 40) + 432) = 0;
    }

    *(*(a1 + 40) + 432) = CFDictionaryGetValue(a2, @"AirPlayParams");
    v11 = *(a1 + 40);
    v12 = *(v11 + 432);
    if (v12)
    {
      CFRetain(v12);
      v11 = *(a1 + 40);
    }

    v13 = 3;
    goto LABEL_19;
  }

LABEL_4:
  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }
}

void __playerairplay_performAirPlayVodkaExchange_block_invoke_2(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_performAirPlayVodkaExchange(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  }

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

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __playerairplay_performAirPlayVodkaExchange_block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  *(*(a1 + 40) + 703) = 4;
  itemairplay_playMediaCompletionHandler(v3, *(a1 + 56), [*(a1 + 32) code]);
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t itemairplay_copyCurrentDateAndTime(const void *a1, CFMutableDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = **&MEMORY[0x1E6960C70];
  itemairplay_GetCurrentTime(a1, &v21);
  if (*(DerivedStorage + 192) && !*(DerivedStorage + 224) && (*(DerivedStorage + 212) & 1) != 0)
  {
    v22 = v21;
    v11 = MEMORY[0x19A8CCD90]();
    lhs = v21;
    rhs = *(DerivedStorage + 200);
    CMTimeSubtract(&v14, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&v14);
    v10 = *MEMORY[0x1E695E480];
    v14 = v22;
    v15 = v11 + Seconds;
    v16 = 257;
  }

  else
  {
    if ((*(DerivedStorage + 172) & 1) == 0)
    {
      return 4294954513;
    }

    v22 = v21;
    v6 = *(DerivedStorage + 320);
    v7 = 0.0;
    if (v6)
    {
      v6 = *(DerivedStorage + 321);
      if (v6)
      {
        v8 = *(DerivedStorage + 312);
        v14 = v21;
        v9 = v8 + CMTimeGetSeconds(&v14);
        v14 = *(DerivedStorage + 288);
        v7 = v9 - CMTimeGetSeconds(&v14);
        v6 = 1;
      }
    }

    v10 = *MEMORY[0x1E695E480];
    v14 = v22;
    v15 = v7;
    LOBYTE(v16) = 1;
    HIBYTE(v16) = v6;
  }

  v17 = 0;
  v18 = 0;
  v13 = FigDateTimeMomentCopyAsDictionary(&v14, v10);
  result = 0;
  *a2 = v13;
  return result;
}

void pap_playbackSessionSeekCompletion(const void *a1, int a2, uint64_t *a3)
{
  v6 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v8 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionSeekCompletion_block_invoke;
  block[3] = &__block_descriptor_68_e5_v8__0l;
  block[4] = a3;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[7] = v6;
  v10 = a2;
  dispatch_async(v8, block);
}

void __pap_playbackSessionSeekCompletion_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E6960C70];
  if (*(*(a1 + 40) + 245))
  {
    v3 = FigCFDictionaryGetCMTimeIfPresent() == 0;
  }

  else
  {
    v3 = 1;
  }

  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    goto LABEL_5;
  }

  v5 = *(*(a1 + 32) + 16);
  v6 = CMBaseObjectGetDerivedStorage();
  if (!v5 || *v6 || *(v6 + 280) != v5)
  {
    goto LABEL_5;
  }

  if (!*(DerivedStorage + 157))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    if (!v7 && *(v8 + 28) && (v9 = *(v8 + 24), v9 == *(DerivedStorage + 144)))
    {
      *(DerivedStorage + 148) = v9;
      *(DerivedStorage + 156) = 0;
      if (v3)
      {
        __pap_playbackSessionSeekCompletion_block_invoke_cold_1(v8);
        goto LABEL_13;
      }

      if (BYTE12(v11))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetCMTime();
        itemairplay_getPlaybackInfoCompletionHandler(*(*(a1 + 32) + 8), *(a1 + 56), Mutable, *(a1 + 64), 1, 2, *(*(a1 + 32) + 30), *(*(a1 + 32) + 56));
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    else
    {
      itemairplay_setPositionCompletionHandler(*(v8 + 8), v7, *(v8 + 28));
      itemairplay_requestAirPlayPlaybackInfo(*(*(a1 + 32) + 8), 0, 1, *(*(a1 + 32) + 30));
    }

LABEL_5:
    FigReadWriteLockUnlockForRead();
    pap_playbackSessionFreeSeekCompletionContext(*(a1 + 32));
    goto LABEL_6;
  }

LABEL_13:
  FigReadWriteLockUnlockForRead();
LABEL_6:
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

void pap_playbackSessionSetRateCompletion(int a1, uint64_t *a2)
{
  v4 = *a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionSetRateCompletion_block_invoke;
  block[3] = &__block_descriptor_68_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = v4;
  v8 = a1;
  block[6] = a2;
  block[7] = a2;
  dispatch_async(v6, block);
}

_BYTE *playerairplay_bufferedAirPlayOutputEndpointPreemptedNotificationListener()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    v1 = 1;
  }

  else
  {
    v1 = dword_1EAF172E8 == 0;
  }

  if (!v1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void playerairplay_updateAirPlayRouteInformation(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFDictionaryGetValue(a2, @"NewRouteName");
    v13 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    CFDictionaryGetValue(a2, @"AirPlayPlayQueueSupported");
    IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
    v6 = *(DerivedStorage + 224);
    *(DerivedStorage + 224) = a2;
    CFRetain(a2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
  v6 = *(DerivedStorage + 224);
  *(DerivedStorage + 224) = 0;
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

LABEL_4:
  playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
  *(DerivedStorage + 247) = v13;
  v7 = pap_copyInterstitialPlayer();
  if (v7)
  {
    v8 = v7;
    v9 = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      CFRetain(a2);
    }

    v10 = *(v9 + 112);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __playerairplay_updateAirPlayRouteInformation_block_invoke;
    v11[3] = &__block_descriptor_57_e5_v8__0l;
    v11[4] = v9;
    v11[5] = a2;
    v12 = v13;
    v11[6] = v8;
    dispatch_async(v10, v11);
  }
}

void playerairplay_notifyIfIsAirPlayVideoActiveChanged(uint64_t a1, int a2)
{
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
  if (IsAirplayVideoActive != a2)
  {
    if (IsAirplayVideoActive)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 360))
      {
        v4 = pap_copyInterstitialPlayer();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (v4)
        {
          v6 = DerivedStorage;
          v7 = *(DerivedStorage + 8);
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v8)
          {
            v8(v7, 0);
          }

          playqueue_clearPlayQueue(*(v6 + 40));
          CFRelease(v4);
        }
      }
    }

    playerairplay_postPlayerNotification();
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void __playerairplay_updateAirPlayRouteInformation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(v2 + 224);
    v4 = *(a1 + 40);
    *(v2 + 224) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(*(a1 + 32) + 247) = *(a1 + 56);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);

  CFRelease(v6);
}

void playerairplay_handleRouteNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (FigCFEqual())
  {
    Value = FigCFDictionaryGetValue();
    if (a2)
    {
      v8 = Value;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v10 = DerivedStorage;
        if (!*DerivedStorage)
        {
          CFRetain(a2);
          if (a5)
          {
            CFRetain(a5);
          }

          if (v8)
          {
            CFRetain(v8);
          }

          v11 = *(v10 + 14);
          block = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = &__playerairplay_airplayRouteSelectedCallback_block_invoke;
          v28 = &__block_descriptor_64_e5_v8__0l;
          v29 = a2;
          v30 = v8;
          v31 = a5;
          v32 = v10;
          goto LABEL_15;
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    if (a2)
    {
      v12 = CMBaseObjectGetDerivedStorage();
      if (v12)
      {
        v13 = v12;
        if (!*v12)
        {
          CFRetain(a2);
          v11 = *(v13 + 14);
          block = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = __playerairplay_airplayRouteDeselectedCallback_block_invoke;
          v28 = &__block_descriptor_48_e5_v8__0l;
          v29 = v13;
          v30 = a2;
LABEL_15:
          p_block = &block;
LABEL_16:
          dispatch_async(v11, p_block);
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      v15 = CMBaseObjectGetDerivedStorage();
      if (v15)
      {
        if (!*v15)
        {
          v16 = CMBaseObjectGetDerivedStorage();
          if (v16)
          {
            v17 = v16;
            if (!*v16)
            {
              v18 = *(CMBaseObjectGetDerivedStorage() + 216);
              if (v18)
              {
                if (v18 != 10)
                {
                  v19 = *(v17 + 14);
                  block = MEMORY[0x1E69E9820];
                  v26 = 3221225472;
                  v27 = __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke;
                  v28 = &__block_descriptor_48_e5_v8__0l;
                  v29 = v17;
                  v30 = a2;
                  dispatch_sync(v19, &block);
                  CFRetain(a2);
                  v11 = *(v17 + 14);
                  v33[0] = MEMORY[0x1E69E9820];
                  v33[1] = 3221225472;
                  v33[2] = __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2;
                  v33[3] = &__block_descriptor_48_e5_v8__0l;
                  v33[4] = v17;
                  v33[5] = a2;
                  p_block = v33;
                  goto LABEL_16;
                }
              }
            }
          }
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    LOBYTE(v33[0]) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v20 = FigCFDictionaryGetValue();
    if (a2)
    {
      v21 = v20;
      v22 = CMBaseObjectGetDerivedStorage();
      if (v22)
      {
        v23 = v22;
        if (!*v22)
        {
          CFRetain(a2);
          if (v21)
          {
            CFRetain(v21);
          }

          v11 = *(v23 + 14);
          block = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = __playerairplay_primaryAppChangedCallback_block_invoke;
          v28 = &__block_descriptor_57_e5_v8__0l;
          LOBYTE(v32) = 0;
          v29 = v23;
          v30 = a2;
          v31 = v21;
          goto LABEL_15;
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    v24 = FigCFDictionaryGetValue();

    playerairplay_audioModeChangedCallback(a2, v24);
  }

  else if (FigCFEqual())
  {

    playerairplay_airplayRouteChangedPausePlaybackCallback(a2);
  }
}

void playerairplay_audioModeChangedCallback(const void *a1, const void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v5 = DerivedStorage;
      if (!*DerivedStorage)
      {
        CFRetain(a1);
        if (a2)
        {
          CFRetain(a2);
        }

        v6 = *(v5 + 14);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __playerairplay_audioModeChangedCallback_block_invoke;
        block[3] = &__block_descriptor_56_e5_v8__0l;
        block[4] = v5;
        block[5] = a1;
        block[6] = a2;
        dispatch_async(v6, block);
      }
    }
  }
}

void playerairplay_airplayRouteChangedPausePlaybackCallback(const void *a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v3 = DerivedStorage;
      if (!*DerivedStorage)
      {
        CFRetain(a1);
        v4 = *(v3 + 14);
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __playerairplay_airplayRouteChangedPausePlaybackCallback_block_invoke;
        v5[3] = &__block_descriptor_48_e5_v8__0l;
        v5[4] = v3;
        v5[5] = a1;
        dispatch_async(v4, v5);
      }
    }
  }
}

void playerairplay_switchFromAirPlayVideoToLocal(void *a1, int a2)
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  cf[0] = 0;
  v32 = 0;
  v33 = 0;
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v5)
  {
    v6 = v5 == 10;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(DerivedStorage + 56);
    if (dword_1EAF172E8)
    {
      v31 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), cf, &v34);
    *(DerivedStorage + 50) = 1;
    v9 = *(DerivedStorage + 8);
    v10 = *(DerivedStorage + 1);
    v11 = *(CMBaseObjectGetVTable() + 24);
    if (v11)
    {
      v12 = *(v11 + 24);
      if (v12)
      {
        v12(v9, v10);
      }
    }

    playerairplay_savePlaybackInfoAndStopAPV(a1);
    if (a2 == 1)
    {
      playerairplay_resetAirPlayRouteInformation(a1);
    }

    playerairplay_resetAirPlayVideoState(a1);
    playerairplay_updateSubPlayerPlayQueue();
    *(DerivedStorage + 50) = 0;
    if (*(DerivedStorage + 457))
    {
      IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive();
      *(DerivedStorage + 457) = 0;
      playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
    }

    FigSimpleMutexLock();
    v14 = *(DerivedStorage + 472);
    v36.length = CFArrayGetCount(v14);
    v36.location = 0;
    CFArrayApplyFunction(v14, v36, playerairplay_forwardStartupTasksToSubPlayerApply, a1);
    FigSimpleMutexUnlock();
    v15 = MEMORY[0x1E695E480];
    if (v7 != 0.0)
    {
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 21, &v32);
      if (!*(DerivedStorage + 200) || *(DerivedStorage + 51))
      {
        v16 = *(DerivedStorage + 8);
        v17 = v32;
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v18)
        {
          v18(v16, v17, v7);
        }
      }

      else
      {
        playerairplay_updatePlayerRateToMatch(a1, v32, 0.0);
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8));
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20 && (v21 = *v15, v20(FigBaseObject, @"ExternalProtectionStatus", *v15, &v33), v33))
    {
      v22 = CFDictionaryCreate(v21, &kFigPlayerParameter_CurrentExternalProtectionStatus, &v33, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v22 = 0;
    }

    playerairplay_postPlayerNotification();
    if (*(CMBaseObjectGetDerivedStorage() + 360))
    {
      v23 = pap_copyInterstitialPlayer();
      if (v23)
      {
        v24 = v23;
        v25 = *(CMBaseObjectGetDerivedStorage() + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __playerairplay_switchFromAirPlayVideoToLocal_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = v24;
        dispatch_async(v25, block);
      }
    }

    v26 = MEMORY[0x1E6960C70];
    v27 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 308) = *MEMORY[0x1E6960C70];
    v28 = *(v26 + 16);
    *(DerivedStorage + 324) = v28;
    *(DerivedStorage + 332) = v27;
    *(DerivedStorage + 348) = v28;
    *(DerivedStorage + 356) = 0;
    if (v33)
    {
      CFRelease(v33);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v32)
    {
      CFRelease(v32);
    }
  }

  *(DerivedStorage + 50) = 0;
}