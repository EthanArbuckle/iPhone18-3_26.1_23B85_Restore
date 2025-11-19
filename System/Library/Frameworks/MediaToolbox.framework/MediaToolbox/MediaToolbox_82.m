unint64_t MediaSegmentStartTimeList_RB_PREV(unint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    do
    {
      result = v1;
      v1 = *(v1 + 16);
    }

    while (v1);
  }

  else
  {
    v3 = a1;
    result = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (!result || *(result + 16) != v3)
    {
      do
      {
        result = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (!result)
        {
          break;
        }

        v4 = v3 == *(result + 8);
        v3 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v4);
    }
  }

  return result;
}

unint64_t sc_GetBackingForMediaStreamFromLaterSegments(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  if (!*(a2 + 121))
  {
    return 0;
  }

  v5 = *(a1 + 168);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 56);
  do
  {
    v11 = 0;
    v12 = a4;
    v13 = a4;
    do
    {
      if (*(v5 + 56) == v10)
      {
        v14 = *(v5 + 24);
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *(v14 + 16);
          }

          while (v14);
          if (*(v15 + 120) > v13)
          {
            v12 = v13;
            v11 = v5;
            v13 = *(v15 + 120);
          }
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5);
    if (!v11)
    {
      break;
    }

    while (1)
    {
      v16 = *(v11 + 24);
      if (!v16)
      {
        break;
      }

      do
      {
        v17 = v16;
        v16 = *(v16 + 16);
      }

      while (v16);
      if (v17 == v9)
      {
        return v8;
      }

      if (*(v17 + 120) < v12)
      {
        v9 = v17;
        break;
      }

      v18 = *(a1 + 184);
      segment_EvictEntry(v17, 0, 1);
      v8 += v18 - *(a1 + 184);
      if (v8 >= a3)
      {
        return v8;
      }
    }

    v5 = *(a1 + 168);
  }

  while (v5);
  return v8;
}

uint64_t figMemoryDemandIssueSetupOnce()
{
  result = FigSimpleMutexCreate();
  gFigMemoryDemandIssueMutex = result;
  return result;
}

unint64_t stream_GetFirstSegmentOfContiguousRangeContainingSegment(unint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 160) & 2) == 0)
  {
    for (i = MediaSegmentStartTimeList_RB_PREV(a1); i; v1 = v3)
    {
      if ((*(i + 160) & 1) == 0)
      {
        break;
      }

      if ((*(v1 + 160) & 2) != 0)
      {
        break;
      }

      v3 = i;
      i = MediaSegmentStartTimeList_RB_PREV(i);
    }
  }

  return v1;
}

uint64_t sc_EnsurePersistentStoreAtURL(uint64_t a1, const __CFURL *a2, int a3)
{
  if (*(a1 + 280))
  {
    sc_EnsurePersistentStoreAtURL_cold_1(&v17);
    return v17;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
LABEL_13:
    sc_EnsurePersistentStoreAtURL_cold_2(&v18);
    return v18;
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, @"Playlist", @".m3u8");
  CFDictionarySetValue(v8, @"ContentCryptKey", @".key");
  CFDictionarySetValue(v8, @"AssetList", @".json");
  v9 = FigGetAllocatorForMedia();
  v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    CFRelease(v8);
    goto LABEL_13;
  }

  v11 = v10;
  CFDictionarySetValue(v10, @"HLSStoreCategoryToExtensionMap", v8);
  CFDictionarySetValue(v11, @"HLSStoreDoNotBlockOnLock", *MEMORY[0x1E695E4C0]);
  CFRelease(v8);
  v12 = FigGetAllocatorForMedia();
  v13 = FigHLSPersistentStoreCreateAtURL(v12, a2, v11, a3, (a1 + 280));
  if (v13 || (v14 = *(a1 + 288), *(a1 + 288) = v14 | 1, a3 == 1) && (*(a1 + 288) = v14 | 3, v13 = sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore(a1), v13))
  {
    v15 = v13;
  }

  else
  {
    FigAssetDownloadStorageManagementExcludeURLFromBackup(a2);
    v15 = 0;
  }

  CFRelease(v11);
  return v15;
}

uint64_t sc_CreateDiskCacheBundle(uint64_t a1, CFURLRef url, CFURLRef *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    return FigSignalErrorAtGM();
  }

  __strlcat_chk();
  v5 = mkdtemp(buffer);
  v6 = __error();
  if (!v5)
  {
    sc_CreateDiskCacheBundle_cold_2(v6, &v14);
    return v14;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v8 = strlen(buffer);
  v9 = CFURLCreateFromFileSystemRepresentation(AllocatorForMedia, buffer, v8, 1u);
  v10 = FigDirectoryEnableDirStatsTracking();
  if (v10)
  {
    v11 = v10;
    if (v10 != -17916)
    {
      if (!v9)
      {
        return v11;
      }

LABEL_11:
      CFRelease(v9);
      return v11;
    }
  }

  if (!v9)
  {
    sc_CreateDiskCacheBundle_cold_1(&v14);
    return v14;
  }

  v12 = sc_EnsurePersistentStoreAtURL(a1, v9, 1);
  v11 = v12;
  if (!a3 || v12)
  {
    goto LABEL_11;
  }

  *a3 = v9;
  return v11;
}

uint64_t FigTTMLDocumentWriterCreateProfileInserter(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateProfileInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateProfileInserter_cold_1(&v8);
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

void figTTMLDocumentWriterProfileInserter_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterProfileInserter_StartElement(uint64_t a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 16), &cf);
  if (v4)
  {
    v7 = cf;
    if (!cf)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    FigTTMLDocumentWriterElementAddChildElement(v5, cf);
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 8) = v6;
  }

  v7 = cf;
  *(DerivedStorage + 16) = cf;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v4;
}

uint64_t figTTMLDocumentWriterProfileInserter_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterProfileInserter_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  if (FigCFEqual() && (FigCFEqual() || FigCFEqual()))
  {
    *(DerivedStorage + 25) = 1;
  }

  if (FigCFEqual())
  {
    *(DerivedStorage + 24) = 1;
  }

  return 0;
}

uint64_t figTTMLDocumentWriterProfileInserter_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    return 4294950721;
  }

  v3 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v3);
}

__n128 OUTLINED_FUNCTION_2_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, unint64_t a26)
{
  result = a25;
  v26[1].n128_u64[0] = a26;
  *v26 = a25;
  return result;
}

void FigCaptionRendereriTTRegionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendereriTTRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendereriTTRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v8 = *(ProtocolVTable + 16)) == 0)
  {
    v16 = 4294954508;
LABEL_44:
    FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_HasChildNode_cold_1();
    return v16;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    v16 = 4294954514;
    goto LABEL_44;
  }

  v10 = v9(a2, &__s1);
  if (v10)
  {
    v16 = v10;
    goto LABEL_44;
  }

  v11 = __s1;
  if (__s1 && (!strcmp(__s1, "FigCaptionRendererStackLayoutRegion") || !strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v11, "FigCaptionRendereriTTRegion")))
  {
    theString1 = 0;
    FigCaptionRendererRegionProtocolGetProtocolID();
    v17 = CMBaseObjectGetProtocolVTable();
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          v19(a2, &theString1);
        }
      }
    }

    v20 = theString1;
    if (theString1)
    {
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (v21)
      {
        v22 = *(v21 + 2);
        if (v22 && (v23 = *(v22 + 24)) != 0)
        {
          v23(a1, &theArray);
          v21 = theArray;
        }

        else
        {
          v21 = 0;
        }
      }

      if (CFArrayGetCount(v21) < 1)
      {
LABEL_41:
        v20 = 0;
        goto LABEL_42;
      }

      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
        v36 = 0;
        FigCaptionRendererBaseProtocolGetProtocolID();
        v26 = CMBaseObjectGetProtocolVTable();
        if (!v26)
        {
          break;
        }

        v27 = *(v26 + 16);
        if (!v27)
        {
          break;
        }

        v28 = *(v27 + 8);
        if (!v28)
        {
          v16 = 4294954514;
          goto LABEL_48;
        }

        v29 = v28(ValueAtIndex, &v36);
        if (v29)
        {
          v16 = v29;
          goto LABEL_48;
        }

        v30 = v36;
        if (v36 && (!strcmp(v36, "FigCaptionRendererStackLayoutRegion") || !strcmp(v30, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(__s1, "FigCaptionRendereriTTRegion")))
        {
          theString2 = 0;
          FigCaptionRendererRegionProtocolGetProtocolID();
          v31 = CMBaseObjectGetProtocolVTable();
          if (v31)
          {
            v32 = *(v31 + 16);
            if (v32)
            {
              v33 = *(v32 + 16);
              if (v33)
              {
                v33(ValueAtIndex, &theString2);
              }
            }
          }

          if (CFStringCompare(theString1, theString2, 1uLL) == kCFCompareEqualTo)
          {
            v20 = 1;
            goto LABEL_42;
          }
        }

        if (CFArrayGetCount(theArray) <= ++v24)
        {
          goto LABEL_41;
        }
      }

      v16 = 4294954508;
LABEL_48:
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return v16;
    }

LABEL_42:
    v16 = 0;
    *a3 = v20;
  }

  else
  {
    v12 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13 && (v14 = *(v13 + 16)) != 0)
    {
      v15 = *(v14 + 32);
      if (v15)
      {
        return v15(v12, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294954508;
    }
  }

  return v16;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 64);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 96);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 112);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 128);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_PurgeImageCache()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 160);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 256);
  if (!v6)
  {
    return 4294954514;
  }

  v4.n128_f64[0] = a1;

  return v6(v2, v4);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_ResetNodeTree()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 272);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  v20.origin = *MEMORY[0x1E695F050];
  v20.size = v4;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 104);
      if (v7)
      {
        v7(a1, &v20);
      }
    }
  }

  v8 = *(a2 + 296);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a1);
    MidX = CGRectGetMidX(v20);
    MidY = CGRectGetMidY(v20);
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v12 = CMBaseObjectGetProtocolVTable();
    if (v12)
    {
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v13 + 72);
        if (v14)
        {
          v14(Value, MidX, MidY);
        }
      }
    }

    size = v20.size;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 88);
        if (v18)
        {
          v18(Value, size.width, size.height);
        }
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v99 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v7(a1, &v99);
        if (v99)
        {
          v8 = CMBaseObjectGetDerivedStorage();
          v9 = *(v8 + 16);
          v10 = *(v8 + 20) * 0.0533;
          v11 = *(v8 + 40);
          v12 = *(v8 + 24);
          if (*(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10 >= 0.0)
          {
            v13 = *(v8 + 48) / 100.0 + *(v8 + 32) / -100.0 * v10;
          }

          else
          {
            v13 = 0.0;
          }

          v14 = *v8;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v15 = CMBaseObjectGetProtocolVTable();
          if (v15)
          {
            v16 = *(v15 + 16);
            if (v16)
            {
              v17 = *(v16 + 80);
              if (v17)
              {
                LOBYTE(v101) = 1;
                *(&v101 + 1) = 0;
                DWORD1(v101) = 0;
                *(&v101 + 1) = v11 / 100.0 + v12 / -100.0 * (v9 / 100.0);
                LOBYTE(v102.width) = 1;
                *(&v102.width + 1) = 0;
                HIDWORD(v102.width) = 0;
                v102.height = v13;
                LOBYTE(v103) = 1;
                *(&v103 + 1) = 0;
                DWORD1(v103) = 0;
                *(&v103 + 1) = v9 / 100.0;
                LOBYTE(v104) = 1;
                *(&v104 + 1) = 0;
                DWORD1(v104) = 0;
                *(&v104 + 1) = v10;
                v17(v14, &v101);
              }
            }
          }

          v18 = CMBaseObjectGetDerivedStorage();
          v101 = FCRRectNull;
          v102 = *&byte_196E76830;
          v103 = xmmword_196E76840;
          v104 = *&byte_196E76850;
          v93 = *(MEMORY[0x1E695F050] + 16);
          v94 = *MEMORY[0x1E695F050];
          v100.origin = *MEMORY[0x1E695F050];
          v100.size = v93;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v19 = CMBaseObjectGetProtocolVTable();
          if (v19)
          {
            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = *(v20 + 88);
              if (v21)
              {
                v21(a1, &v101);
              }
            }
          }

          FigCaptionRendererNodeProtocolGetProtocolID();
          v22 = CMBaseObjectGetProtocolVTable();
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = *(v23 + 72);
              if (v24)
              {
                v24(a1, &v100);
              }
            }
          }

          v25 = *(&v103 + 1);
          if (*(&v103 + 1) != -1.0)
          {
            v75 = v100.origin.x + *(&v101 + 1);
            if (v101)
            {
              v75 = v100.origin.x + *(&v101 + 1) * v100.size.width;
            }

            v76 = v100.origin.y + v102.height;
            if (LOBYTE(v102.width))
            {
              v76 = v100.origin.y + v102.height * v100.size.height;
            }

            if (v103)
            {
              v25 = *(&v103 + 1) * v100.size.width;
            }

            v77 = *(&v104 + 1);
            if (v104)
            {
              v77 = v100.size.height * *(&v104 + 1);
            }

            v105 = CGRectIntegral(*(&v25 - 2));
            x = v105.origin.x;
            y = v105.origin.y;
            width = v105.size.width;
            height = v105.size.height;
            v82 = *v18;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v83 = CMBaseObjectGetProtocolVTable();
            if (v83)
            {
              v84 = *(v83 + 16);
              if (v84)
              {
                v85 = *(v84 + 96);
                if (v85)
                {
                  v85(v82, x, y, width, height);
                }
              }
            }
          }

          theArray = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v26 = CMBaseObjectGetProtocolVTable();
          if (v26)
          {
            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = *(v27 + 24);
              if (v28)
              {
                v28(a1, &theArray);
              }
            }
          }

          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v30 = *MEMORY[0x1E695EFF8];
            v31 = *(MEMORY[0x1E695EFF8] + 8);
            v32 = *MEMORY[0x1E69607B0];
            v33 = *MEMORY[0x1E69607A0];
            v34 = *MEMORY[0x1E6960780];
            v35 = *MEMORY[0x1E6960790];
            v36 = Count + 1;
            v91 = *MEMORY[0x1E6960798];
            cf2 = *MEMORY[0x1E6960788];
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v36 - 2);
              __s1 = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v38 = CMBaseObjectGetProtocolVTable();
              if (!v38 || (v39 = *(v38 + 16)) == 0 || (v40 = *(v39 + 8)) == 0 || v40(ValueAtIndex, &__s1))
              {
                FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
                goto LABEL_105;
              }

              if (__s1 && !strcmp(__s1, "FigCaptionRendererCaption"))
              {
                v96 = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v41 = CMBaseObjectGetProtocolVTable();
                if (!v41 || (v42 = *(v41 + 16)) == 0 || (v43 = *(v42 + 48)) == 0 || v43(ValueAtIndex, &v96))
                {
                  FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
                  goto LABEL_105;
                }

                if (v96 == 3)
                {
                  break;
                }
              }

LABEL_87:
              if (--v36 <= 1)
              {
                goto LABEL_105;
              }
            }

            v101 = v94;
            v102 = v93;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v44 = CMBaseObjectGetProtocolVTable();
            if (!v44 || (v45 = *(v44 + 16)) == 0 || (v46 = *(v45 + 104)) == 0 || v46(ValueAtIndex, &v101))
            {
              FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
              goto LABEL_105;
            }

            v100.origin = v94;
            v100.size = v93;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v47 = CMBaseObjectGetProtocolVTable();
            if (!v47 || (v48 = *(v47 + 16)) == 0 || (v49 = *(v48 + 72)) == 0 || v49(ValueAtIndex, &v100))
            {
              FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
              goto LABEL_105;
            }

            v50 = *(DerivedStorage + 56);
            if (v50)
            {
              MinX = v30;
              MinY = v31;
              if (v50 != 2)
              {
                goto LABEL_65;
              }

              v53 = *(DerivedStorage + 64);
              v54 = v100;
              if (v53 == 1)
              {
                MinX = CGRectGetMinX(v54);
              }

              else if (v53 == 3)
              {
                MinX = CGRectGetMaxX(v54) - v102.width;
              }

              else
              {
                MinX = CGRectGetMidX(v54) + v102.width * -0.5;
              }

              v57 = *(DerivedStorage + 60);
            }

            else
            {
              v55 = *(DerivedStorage + 60);
              v56 = v100;
              if (v55 == 1)
              {
                MinX = CGRectGetMinX(v56);
              }

              else if (v55 == 3)
              {
                MinX = CGRectGetMaxX(v56) - v102.width;
              }

              else
              {
                MinX = CGRectGetMidX(v56) + v102.width * -0.5;
              }

              v57 = *(DerivedStorage + 64);
            }

            v58 = v100;
            if (v57 == 1)
            {
              MinY = CGRectGetMaxY(v58) - v102.height;
            }

            else if (v57 == 3)
            {
              MinY = CGRectGetMinY(v58);
            }

            else
            {
              MinY = CGRectGetMidY(v58) + v102.height * -0.5;
            }

LABEL_65:
            theDict = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v59 = CMBaseObjectGetProtocolVTable();
            if (v59)
            {
              v60 = *(v59 + 16);
              if (v60)
              {
                v61 = *(v60 + 16);
                if (v61)
                {
                  v61(ValueAtIndex, &theDict);
                }
              }
            }

            if (!theDict)
            {
              goto LABEL_79;
            }

            Value = CFDictionaryGetValue(theDict, v32);
            if (!Value)
            {
              goto LABEL_79;
            }

            v63 = Value;
            if (CFEqual(Value, v33))
            {
              goto LABEL_72;
            }

            if (CFEqual(v63, v34))
            {
              v65 = v100.origin.y;
              v64 = v100.origin.x;
              v67 = v100.size.height;
              v66 = v100.size.width;
LABEL_75:
              MinX = CGRectGetMaxX(*&v64) - v102.width;
              goto LABEL_79;
            }

            if (CFEqual(v63, v35))
            {
              v65 = v100.origin.y;
              v64 = v100.origin.x;
              v67 = v100.size.height;
              v66 = v100.size.width;
            }

            else
            {
              if (CFEqual(v63, cf2))
              {
LABEL_72:
                MinX = CGRectGetMinX(v100);
                goto LABEL_79;
              }

              v74 = CFEqual(v63, v91);
              v65 = v100.origin.y;
              v64 = v100.origin.x;
              v67 = v100.size.height;
              v66 = v100.size.width;
              if (v74)
              {
                goto LABEL_75;
              }
            }

            MinX = CGRectGetMidX(*&v64) + v102.width * -0.5;
LABEL_79:
            FigCaptionRendererNodeProtocolGetProtocolID();
            v68 = CMBaseObjectGetProtocolVTable();
            if (v68)
            {
              v69 = *(v68 + 16);
              if (v69)
              {
                v70 = *(v69 + 128);
                if (v70)
                {
                  v70(ValueAtIndex, MinX, MinY);
                }
              }
            }

            FigCaptionRendererNodeProtocolGetProtocolID();
            v71 = CMBaseObjectGetProtocolVTable();
            if (v71)
            {
              v72 = *(v71 + 16);
              if (v72)
              {
                v73 = *(v72 + 232);
                if (v73)
                {
                  v73(ValueAtIndex, 1);
                }
              }
            }

            goto LABEL_87;
          }
        }
      }
    }
  }

LABEL_105:
  v86 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v87 = CMBaseObjectGetProtocolVTable();
  if (!v87)
  {
    return 4294954508;
  }

  v88 = *(v87 + 16);
  if (!v88)
  {
    return 4294954508;
  }

  v89 = *(v88 + 288);
  if (v89)
  {
    return v89(v86, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 248);
      if (v7)
      {
        v7(a1, &v25 + 1);
        if (HIBYTE(v25))
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v8 = CMBaseObjectGetProtocolVTable();
          if (v8)
          {
            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = *(v9 + 296);
              if (v10)
              {
                v10(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 240);
      if (v13)
      {
        v13(a1, &v25);
        if (v25)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 288);
              if (v16)
              {
                v16(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 280);
      if (v19)
      {
        v19(a1, a2);
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 304);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 312);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  return v6(v3, v11);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_RemoveAllActions()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 328);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendereriTTRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a1;
  *(DerivedStorage + 32) = a2;
  return 0;
}

uint64_t FigCaptionRendereriTTRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a1;
  *(DerivedStorage + 48) = a2;
  return 0;
}

uint64_t RegisterFigCaptionRendereriTTRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigPictureTileCursorServiceBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureTileCursorServiceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureTileCursorServiceGetClassID_sRegisterFigPictureTileCursorServiceBaseTypeOnce, RegisterFigPictureTileCursorServiceBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterFigPictureTileCursorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureTileCursorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureTileCursorGetClassID_sRegisterFigPictureTileCursorBaseTypeOnce, RegisterFigPictureTileCursorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVideoQueueRemoteCallbackClient_NotificationIsPending(mach_port_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E99E0];
  v5 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 18081;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
}

uint64_t figvideoqueuecallback_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 18081)
  {
    if ((*a1 & 0x80000000) != 0 || a1[1] != 40)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
    }

    else
    {
      *(a2 + 32) = FigVideoQueueRemoteCallbackServer_NotificationIsPending();
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t FigVideoQueueRemoteClient_Create(mach_port_t a1, int a2, uint64_t a3, int a4, char *src, uint64_t a6, int a7, _DWORD *a8, void *a9, void *a10, _DWORD *a11)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  memset(v30, 0, 432);
  v25 = 0x13000000000000;
  v28 = 0;
  memset(&name, 0, sizeof(name));
  v23 = 2;
  v24 = a2;
  v26 = a6;
  LODWORD(v27) = 16777472;
  HIDWORD(v27) = a7;
  v28 = *MEMORY[0x1E69E99E0];
  *&v29 = a3;
  DWORD2(v29) = a4;
  if (MEMORY[0x1EEE9AC40])
  {
    v14 = mig_strncpy_zerofill(v30 + 4, src, 512);
  }

  else
  {
    v14 = mig_strncpy(v30 + 4, src, 512);
  }

  HIDWORD(v29) = 0;
  LODWORD(v30[0]) = v14;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  *(v30 + v15 + 4) = a7;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x42B800000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v18 = mach_msg(&name, 3162387, v15 + 88, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v19 = v18;
  if ((v18 - 268435458) > 0xE || ((1 << (v18 - 2)) & 0x4003) == 0)
  {
    if (!v18)
    {
      if (name.msgh_id == 71)
      {
        v19 = 4294966988;
      }

      else if (name.msgh_id == 17180)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v19 = 4294966996;
            if (v25)
            {
              if (name.msgh_remote_port)
              {
                v19 = 4294966996;
              }

              else
              {
                v19 = v25;
              }
            }
          }

          else
          {
            v19 = 4294966996;
          }

          goto LABEL_30;
        }

        v19 = 4294966996;
        if (v23 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v25) << 16 == 1114112)
        {
          v19 = 0;
          *a8 = v24;
          v20 = v28;
          *a9 = v27;
          *a10 = v20;
          *a11 = v29;
          return v19;
        }
      }

      else
      {
        v19 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&name);
      return v19;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v19 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v19;
}

uint64_t FigVideoQueueRemoteClient_Destroy(int a1)
{
  v9 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x42B900000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162387, 0x18u, 0x2Cu, v3, *MEMORY[0x1E695FF48], 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 17181)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v5;
}

uint64_t FigVideoQueueRemoteClient_GetProperty(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
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
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  *name = 0u;
  memset(v16, 0, sizeof(v16));
  *(&v16[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(&v16[1] + 8, a2, 512);
  }

  else
  {
    v7 = mig_strncpy(&v16[1] + 8, a2, 512);
  }

  LODWORD(v16[1]) = 0;
  DWORD1(v16[1]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v16[0] = 0x42BA00000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162387, v8 + 40, 0x40u, v10, *MEMORY[0x1E695FF48], 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v16[0]) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16[0]) == 17182)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v12 = 4294966996;
            if (LODWORD(v16[1]))
            {
              if (name[2])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = LODWORD(v16[1]);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_31;
        }

        v12 = 4294966996;
        if (DWORD2(v16[0]) == 1 && name[1] == 56 && !name[2] && BYTE7(v16[1]) == 1)
        {
          v13 = DWORD2(v16[1]);
          if (DWORD2(v16[1]) == DWORD1(v17))
          {
            v12 = 0;
            *a3 = *(v16 + 12);
            *a4 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v12;
}

uint64_t FigVideoQueueRemoteClient_SetProperty(mach_port_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
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
  v18 = 0u;
  v19 = 0u;
  *&v17[8] = 0u;
  memset(&name, 0, sizeof(name));
  v14 = 1;
  v15 = a3;
  v16 = 16777472;
  *v17 = a4;
  *&v17[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v6 = mig_strncpy_zerofill(&v17[20], a2, 512);
  }

  else
  {
    v6 = mig_strncpy(&v17[20], a2, 512);
  }

  *&v17[12] = 0;
  *&v17[16] = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *&v17[v7 + 20] = a4;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x42BB00000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&name, 3162387, v7 + 64, 0x2Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v11 - 268435459) > 1)
    {
      return v11;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

LABEL_23:
    mach_msg_destroy(&name);
    return v11;
  }

  if (name.msgh_id == 71)
  {
    v11 = 4294966988;
    goto LABEL_23;
  }

  if (name.msgh_id != 17183)
  {
    v11 = 4294966995;
    goto LABEL_23;
  }

  v11 = 4294966996;
  if ((name.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name.msgh_size != 36)
  {
    goto LABEL_23;
  }

  if (name.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v11 = HIDWORD(v15);
  if (HIDWORD(v15))
  {
    goto LABEL_23;
  }

  return v11;
}

uint64_t FigVideoQueueRemoteClient_Start(int a1, int a2)
{
  *&msg[20] = 0u;
  v10 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x42BC00000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162387, 0x24u, 0x2Cu, v4, *MEMORY[0x1E695FF48], 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg[20] == 17184)
      {
        v6 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v6 = *&msg[32];
          if (!*&msg[32])
          {
            return v6;
          }
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v6;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v6 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v6;
}

uint64_t FigVideoQueueRemoteClient_EnqueueVideoSampleBuffer(int a1, int a2, uint64_t a3, int a4, int a5, int *a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v39 = *MEMORY[0x1E69E9840];
  *&name[16] = 0u;
  *name = 0u;
  *&name[20] = 2;
  *&name[24] = a2;
  v24 = 1245184;
  v25 = a3;
  v26 = 16777472;
  v27 = a4;
  v28 = *MEMORY[0x1E69E99E0];
  v29 = a4;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v36 = a13;
  v37 = a14;
  v38 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&name[4] = a1;
  *&name[8] = special_reply_port;
  v22 = -2147478253;
  *&name[12] = 0x42BD00000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&v22);
    v17 = *&name[8];
  }

  else
  {
    v17 = special_reply_port;
  }

  v18 = mach_msg(&v22, 3162387, 0x88u, 0x30u, v17, *MEMORY[0x1E695FF48], 0);
  v19 = v18;
  if ((v18 - 268435458) > 0xE || ((1 << (v18 - 2)) & 0x4003) == 0)
  {
    if (!v18)
    {
      if (*&name[16] == 71)
      {
        v19 = 4294966988;
      }

      else if (*&name[16] == 17185)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (*name == 40)
          {
            if (!*&name[4])
            {
              v19 = *&name[28];
              if (!*&name[28])
              {
                *a6 = v24;
                return v19;
              }

              goto LABEL_26;
            }
          }

          else if (*name == 36)
          {
            if (*&name[4])
            {
              v20 = 1;
            }

            else
            {
              v20 = *&name[28] == 0;
            }

            if (v20)
            {
              v19 = 4294966996;
            }

            else
            {
              v19 = *&name[28];
            }

            goto LABEL_26;
          }
        }

        v19 = 4294966996;
      }

      else
      {
        v19 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v22);
      return v19;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v19 - 268435459) <= 1)
  {
    if ((v22 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&name[8]);
    }

    goto LABEL_26;
  }

  return v19;
}

uint64_t FigVideoQueueRemoteClient_EnqueueTaggedBufferGroupBackedSampleBuffer(int a1, int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int *a17)
{
  v46 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  v31 = 0x13000000000000;
  v32 = a6;
  *&msg[24] = 5;
  *&msg[28] = a2;
  v25 = 1245184;
  v26 = a3;
  v27 = 1245184;
  v28 = a4;
  v29 = 1245184;
  v30 = a5;
  v33 = 16777472;
  v34 = a7;
  v35 = *MEMORY[0x1E69E99E0];
  v36 = a7;
  v37 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v44 = a16;
  v45 = a8;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x42BE00000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(msg);
    v19 = *&msg[12];
  }

  else
  {
    v19 = special_reply_port;
  }

  v20 = mach_msg(msg, 3162387, 0xACu, 0x30u, v19, *MEMORY[0x1E695FF48], 0);
  v21 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (!v20)
    {
      if (*&msg[20] == 71)
      {
        v21 = 4294966988;
      }

      else if (*&msg[20] == 17186)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 40)
          {
            if (!*&msg[8])
            {
              v21 = *&msg[32];
              if (!*&msg[32])
              {
                *a17 = v25;
                return v21;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v22 = 1;
            }

            else
            {
              v22 = *&msg[32] == 0;
            }

            if (v22)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v21 = 4294966996;
      }

      else
      {
        v21 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v21;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v21 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v21;
}

uint64_t FigVideoQueueRemoteClient_EnqueueH264Frame(mach_port_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17, int *a18)
{
  v48 = *MEMORY[0x1E69E9840];
  v26 = 2;
  v27 = a4;
  v28 = 16777472;
  v29 = a5;
  v30 = a6;
  v31 = 16777472;
  v32 = a7;
  v33 = *MEMORY[0x1E69E99E0];
  v34 = a2;
  v35 = a3;
  v36 = a5;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v45 = a15;
  v46 = a16;
  v47 = a17;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x42BF00000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v21 = mach_msg(&msg, 3162387, 0xA0u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (msg.msgh_id == 71)
      {
        v22 = 4294966988;
      }

      else if (msg.msgh_id == 17187)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v22 = HIDWORD(v27);
              if (!HIDWORD(v27))
              {
                *a18 = v28;
                return v22;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v23 = 1;
            }

            else
            {
              v23 = HIDWORD(v27) == 0;
            }

            if (v23)
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = HIDWORD(v27);
            }

            goto LABEL_26;
          }
        }

        v22 = 4294966996;
      }

      else
      {
        v22 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      return v22;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v22 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

  return v22;
}

uint64_t FigVideoQueueRemoteClient_EnqueueH264FrameWithTimingInfoBaggage(mach_port_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17, uint64_t a18, int a19, int *a20)
{
  v54 = *MEMORY[0x1E69E9840];
  v28 = 3;
  v29 = a4;
  v30 = 16777472;
  v31 = a5;
  v32 = a6;
  v33 = 16777472;
  v34 = a7;
  v35 = a18;
  v36 = 16777472;
  v37 = a19;
  v38 = *MEMORY[0x1E69E99E0];
  v39 = a2;
  v40 = a3;
  v41 = a5;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  v48 = a13;
  v49 = a14;
  v50 = a15;
  v51 = a16;
  v52 = a17;
  v53 = a19;
  special_reply_port = mig_get_special_reply_port();
  *&v27.msgh_bits = 2147489043;
  v27.msgh_remote_port = a1;
  v27.msgh_local_port = special_reply_port;
  *&v27.msgh_voucher_port = 0x42C000000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&v27);
    msgh_local_port = v27.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v23 = mach_msg(&v27, 3162387, 0xB4u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v24 = v23;
  if ((v23 - 268435458) > 0xE || ((1 << (v23 - 2)) & 0x4003) == 0)
  {
    if (!v23)
    {
      if (v27.msgh_id == 71)
      {
        v24 = 4294966988;
      }

      else if (v27.msgh_id == 17188)
      {
        if ((v27.msgh_bits & 0x80000000) == 0)
        {
          if (v27.msgh_size == 40)
          {
            if (!v27.msgh_remote_port)
            {
              v24 = HIDWORD(v29);
              if (!HIDWORD(v29))
              {
                *a20 = v30;
                return v24;
              }

              goto LABEL_26;
            }
          }

          else if (v27.msgh_size == 36)
          {
            if (v27.msgh_remote_port)
            {
              v25 = 1;
            }

            else
            {
              v25 = HIDWORD(v29) == 0;
            }

            if (v25)
            {
              v24 = 4294966996;
            }

            else
            {
              v24 = HIDWORD(v29);
            }

            goto LABEL_26;
          }
        }

        v24 = 4294966996;
      }

      else
      {
        v24 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v27);
      return v24;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v24 - 268435459) <= 1)
  {
    if ((v27.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v27.msgh_local_port);
    }

    goto LABEL_26;
  }

  return v24;
}

uint64_t FigVideoQueueRemoteClient_EnqueueFrameWithFormatDescriptionAndTimingInfoBaggage(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17, int *a18)
{
  v50 = *MEMORY[0x1E69E9840];
  v26 = 3;
  v27 = a2;
  v28 = 16777472;
  v29 = a3;
  v30 = a4;
  v31 = 16777472;
  v32 = a5;
  v33 = a8;
  v34 = 16777472;
  v35 = a17;
  v36 = *MEMORY[0x1E69E99E0];
  v37 = a3;
  v38 = a5;
  v39 = a6;
  v40 = a9;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v45 = a14;
  v46 = a15;
  v47 = a16;
  v48 = a7;
  v49 = a17;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x42C100000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v21 = mach_msg(&msg, 3162387, 0xACu, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (msg.msgh_id == 71)
      {
        v22 = 4294966988;
      }

      else if (msg.msgh_id == 17189)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v22 = HIDWORD(v27);
              if (!HIDWORD(v27))
              {
                *a18 = v28;
                return v22;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v23 = 1;
            }

            else
            {
              v23 = HIDWORD(v27) == 0;
            }

            if (v23)
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = HIDWORD(v27);
            }

            goto LABEL_26;
          }
        }

        v22 = 4294966996;
      }

      else
      {
        v22 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      return v22;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v22 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

  return v22;
}

uint64_t FigVideoQueueRemoteClient_SyncTimebaseToMoment(mach_port_t a1, unsigned int a2, __int128 *a3, _DWORD *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v22 = a3[4];
  v23 = v6;
  v24 = a3[6];
  v7 = a3[1];
  v18 = *a3;
  v19 = v7;
  v8 = a3[3];
  v20 = a3[2];
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a2;
  v25 = *(a3 + 14);
  v21 = v8;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x42C200000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162387, 0x9Cu, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 17190)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = v17;
              if (!v17)
              {
                *a4 = v18;
                return v12;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = v17 == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = v17;
            }

            goto LABEL_26;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

  return v12;
}

uint64_t FigVideoQueueRemoteClient_Flush(int a1, int a2)
{
  *&msg[20] = 0u;
  v10 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x42C300000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162387, 0x24u, 0x2Cu, v4, *MEMORY[0x1E695FF48], 0);
  v6 = v5;
  if ((v5 - 268435458) > 0xE || ((1 << (v5 - 2)) & 0x4003) == 0)
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&msg[20] == 17191)
      {
        v6 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v6 = *&msg[32];
          if (!*&msg[32])
          {
            return v6;
          }
        }
      }

      else
      {
        v6 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v6;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v6 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v6;
}

uint64_t FigVideoQueueRemoteClient_IsAboveHighWaterLevel(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v11 = 5395;
  *name_12 = 0x42C400000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&v11);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v11, 3162387, 0x18u, 0x30u, v5, *MEMORY[0x1E695FF48], 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 17192)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_29;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&name_12[16] == 0;
            }

            if (v9)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_29;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&v11);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_29;
  }

  return v7;
}

uint64_t FigVideoQueueRemoteClient_GetNextPendingNotification(int a1, _DWORD *a2, void *a3, char *a4, void *a5, _DWORD *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, 444);
  v22 = 0u;
  v21 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x42C500000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(msg, 3162387, 0x18u, 0x254u, v13, *MEMORY[0x1E695FF48], 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (*&msg[20] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&msg[20] == 17193)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v15 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = *&msg[32];
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_31;
        }

        v15 = 4294966996;
        if (*&msg[24] == 1 && (*&msg[4] - 76) <= 0x200 && !*&msg[8] && BYTE3(v21) == 1 && LODWORD(v23[0]) <= 0x200 && (*&msg[4] - 76) >= LODWORD(v23[0]))
        {
          v16 = (LODWORD(v23[0]) + 3) & 0xFFFFFFFC;
          if (*&msg[4] == v16 + 76)
          {
            v17 = &msg[v16];
            if (DWORD1(v21) == *(v17 + 18))
            {
              v18 = v17 - 512;
              *a2 = v22;
              *a3 = *(&v22 + 4);
              mig_strncpy(a4, v23 + 4, 512);
              v15 = 0;
              *a5 = *&msg[28];
              *a6 = *(v18 + 146);
              return v15;
            }
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v15;
}

uint64_t FigVideoQueueRemoteClient_RequestDecodeForPreroll(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x42C600000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162387, 0x38u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 17194)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                return v9;
              }

              goto LABEL_29;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v15) == 0;
            }

            if (v11)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_29;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&v13);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v13.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v13.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v9;
}

uint64_t FigVideoQueueRemoteClient_CopyCurrentlyDisplayedCVPixelBuffer(int a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  *&name_12[4] = 0u;
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v17 = 5395;
  *name_12 = 0x42C700000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&v17);
    v11 = name_8;
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(&v17, 3162387, 0x18u, 0x50u, v11, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (*&name_12[4] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&name_12[4] == 17195)
      {
        if ((v17 & 0x80000000) == 0)
        {
          if (name == 36)
          {
            v13 = 4294966996;
            if (*&name_12[16])
            {
              if (name_4)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = *&name_12[16];
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_32;
        }

        v13 = 4294966996;
        if (*&name_12[8] == 2 && name == 72 && !name_4 && WORD1(v22) << 16 == 1114112 && HIBYTE(v22) == 1)
        {
          v15 = v23[0];
          if (v23[0] == v23[3])
          {
            v13 = 0;
            *a2 = *&name_12[12];
            *a3 = *(&v22 + 4);
            *a4 = v15;
            *a5 = v23[4];
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_32:
      mach_msg_destroy(&v17);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((v17 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_32;
  }

  return v13;
}

uint64_t (*figvideoqueue_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 17096) >= 0xFFFFFFF0)
  {
    return FigVideoQueueRemoteServer_figvideoqueue_subsystem[5 * (v1 - 17080) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XCreate(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 601 < 0xFFFFFDFF)
  {
    goto LABEL_3;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1)
  {
    goto LABEL_21;
  }

  v6 = *(result + 80);
  if (v6 > 0x200)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    goto LABEL_4;
  }

  v3 = -304;
  if (v5 - 88 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 88)
  {
    goto LABEL_3;
  }

  if (*(result + 52) != *(result + v7 + 84))
  {
LABEL_21:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x254)
  {
    v8 = 596;
  }

  else
  {
    v8 = v5;
  }

  result = memchr((result + 84), 0, v8 - 84);
  if (!result)
  {
    goto LABEL_2;
  }

  v9 = ((v5 + 3) & 0x7FC) + v4;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  *(a2 + 32) = 0x14000000000000;
  v10 = *(v4 + 12);
  v11 = *(v4 + 28);
  v12 = *(v4 + 64);
  v13 = *(v4 + 72);
  v14 = *(v4 + 40);
  v15 = *(v4 + 52);
  v16 = *(v9 + 36);
  v17[0] = *(v9 + 20);
  v17[1] = v16;
  result = FigVideoQueueRemoteServer_Create(v10, v11, v12, v13, (v4 + 84), v14, v15, (a2 + 28), (a2 + 48), (a2 + 56), (a2 + 64), v17);
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_4:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XDestroy(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    result = FigVideoQueueRemoteServer_Destroy();
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

const char *_XGetProperty(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), (v4 - 553) < 0xFFFFFDFF) || ((v5 = *(result + 9), v5 <= 0x200) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x7FC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr((result + 40), 0, v4 - 40)) == 0))
  {
    *(a2 + 32) = -304;
LABEL_11:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 36) = 16777473;
  result = FigVideoQueueRemoteServer_GetProperty(*(v3 + 3), v3 + 40);
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_11;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XSetProperty(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_2:
    result = 4294966992;
    goto LABEL_3;
  }

  v5 = *(a1 + 24);
  result = 4294966992;
  if (v5 == 1)
  {
    LODWORD(v6) = *(a1 + 4);
    if ((v6 - 577) >= 0xFFFFFDFF)
    {
      if (*(a1 + 39) != 1)
      {
        goto LABEL_16;
      }

      v7 = *(a1 + 56);
      if (v7 <= 0x200 && v6 - 64 >= v7)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 == v8 + 64)
        {
          v9 = *(a1 + 40);
          if (v9 == *(a1 + v8 + 60))
          {
            if (v6 >= 0x23C)
            {
              v6 = 572;
            }

            else
            {
              v6 = v6;
            }

            if (memchr((a1 + 60), 0, v6 - 60))
            {
              result = FigVideoQueueRemoteServer_SetProperty(*(a1 + 12), (a1 + 60), *(a1 + 28), v9);
              goto LABEL_3;
            }

            goto LABEL_2;
          }

LABEL_16:
          result = 4294966996;
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XStart(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = FigVideoQueueRemoteServer_Start(a1[3], a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XEnqueueVideoSampleBuffer(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 136)
  {
    v4 = -304;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1 || (v3 = *(result + 52), v3 != *(result + 64)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  result = FigVideoQueueRemoteServer_EnqueueVideoSampleBuffer(*(result + 12), *(result + 28), *(result + 40), v3, *(result + 132), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XEnqueueTaggedBufferGroupBackedSampleBuffer(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 5 || *(result + 4) != 172)
  {
    v4 = -304;
LABEL_13:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112 || *(result + 62) << 16 != 1114112 || *(result + 74) << 16 != 1114112 || *(result + 87) != 1 || (v3 = *(result + 88), v3 != *(result + 100)))
  {
    v4 = -300;
    goto LABEL_13;
  }

  result = FigVideoQueueRemoteServer_EnqueueTaggedBufferGroupBackedSampleBuffer(*(result + 12), *(result + 28), *(result + 40), *(result + 52), *(result + 64), *(result + 76), v3, *(result + 168), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XEnqueueH264Frame(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 160)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 76)) || (v4 = *(result + 56), v4 != *(result + 80)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  LODWORD(v6) = *(result + 156);
  result = FigVideoQueueRemoteServer_EnqueueH264Frame(*(result + 12), *(result + 68), *(result + 72), *(result + 28), v3, *(result + 44), v4, *(result + 84), v6, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XSyncTimebaseToMoment(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 156)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = *(result + 12);
    v4 = *(result + 32);
    v5 = *(result + 116);
    v8[4] = *(result + 100);
    v8[5] = v5;
    v8[6] = *(result + 132);
    v9 = *(result + 148);
    v6 = *(result + 52);
    v8[0] = *(result + 36);
    v8[1] = v6;
    v7 = *(result + 84);
    v8[2] = *(result + 68);
    v8[3] = v7;
    result = FigVideoQueueRemoteServer_SyncTimebaseToMoment(v3, v4, v8, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t _XFlush(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = FigVideoQueueRemoteServer_Flush(a1[3], a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XIsAboveHighWaterLevel(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = FigVideoQueueRemoteServer_IsAboveHighWaterLevel(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *_XGetNextPendingNotification(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  v6 = 0;
  *(a2 + 36) = 16777473;
  result = FigVideoQueueRemoteServer_GetNextPendingNotification(result[3], a2 + 52, a2 + 56, (a2 + 72), (a2 + 28), &v6);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = v6;
  *(a2 + 40) = v6;
  v4 = *MEMORY[0x1E69E99E0];
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  result = strlen((a2 + 72));
  if ((result + 1) >> 32)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = v4;
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 68) = result + 1;
    v5 = (result + 4) & 0xFFFFFFFC;
    *(a2 + v5 + 72) = v3;
    *a2 |= 0x80000000;
    *(a2 + 4) = v5 + 76;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t _XRequestDecodeForPreroll(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = FigVideoQueueRemoteServer_RequestDecodeForPreroll(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XCopyCurrentlyDisplayedCVPixelBuffer(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x11000000000000;
  *(a2 + 48) = 16777473;
  result = FigVideoQueueRemoteServer_CopyCurrentlyDisplayedCVPixelBuffer(result[3], (a2 + 28), (a2 + 40), (a2 + 64), (a2 + 68));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 52) = *(a2 + 64);
  *(a2 + 56) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 72;
  *(a2 + 24) = 2;
  return result;
}

uint64_t figvideoqueue_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 17096) >= 0xFFFFFFF0 && (v5 = FigVideoQueueRemoteServer_figvideoqueue_subsystem[5 * (v4 - 17080) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t UnjL(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x1E69E99E0];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t aCFD(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t J7JPJQ(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x1E69E99E0];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t QvaDM(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t Hz73b(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = off_1F0B0C400;
  v3 = off_1F0B0CB90;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_4132a946ae2f597dfb04e584afbd4663) ^ 0x55))) ^ 0xCu)) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_4132a946ae2f597dfb04e584afbd4663) ^ 0x55))) - 105);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * (*v4 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * (*v4 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 562);
  v6 = &v10[*(v5 - 4) ^ *v4];
  *v4 = 810526117 * v6 + 0x528FD8C35B4E87C9;
  *(v5 - 4) = 810526117 * (v6 ^ 0xC67C1AE5E193E855);
  LODWORD(v11) = 598 - 489239129 * (((&v11 | 0x2A8B545B) - (&v11 & 0x2A8B545B)) ^ 0x93A3776D);
  v12 = a1;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_4132a946ae2f597dfb04e584afbd4663) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_4132a946ae2f597dfb04e584afbd4663) ^ 0x55))] ^ 0x7F]) + 583) - 4;
  (*&v7[8 * ((-91 * ((*(v5 - 4) - *v4) ^ 0x55)) ^ v3[v2[(-91 * ((*(v5 - 4) - *v4) ^ 0x55))] ^ 0xE0]) + 55328])(&v11);
  LODWORD(v12) = 4878 - 1825732043 * ((&v11 & 0xCC664745 | ~(&v11 | 0xCC664745)) ^ 0x330FEB8D);
  v11 = a1;
  v8 = -91 * ((*(v5 - 4) - *v4) ^ 0x55);
  (*&v7[8 * (*(off_1F0B0BE30 + (*(off_1F0B0CCB0 + v8 - 4) ^ 0x5Cu)) ^ v8) + 53704])(&v11);
  return (HIDWORD(v12) - 1906281716);
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_6b1b45fae75c24e1f2c54cf0d42e3428 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * (fp_dh_6b1b45fae75c24e1f2c54cf0d42e3428 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x60]) + 485);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v4) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v4) ^ 0x55))] ^ 0xE1]) + 483);
  v6 = *v4 ^ &v8 ^ *(v5 - 4);
  *v4 = 810526117 * (v6 + 0x3983E51A1E6C17ABLL);
  *(v5 - 4) = 810526117 * (v6 ^ 0xC67C1AE5E193E855);
  v13 = a4;
  v14 = a1;
  v9 = a3;
  v12 = a2;
  v11 = (1621291457 * (((&v9 | 0xD732ECA0) - (&v9 & 0xD732ECA0)) ^ 0xE1256D39)) ^ 0xD26;
  LOBYTE(v5) = -91 * (*v4 ^ 0x55 ^ *(v5 - 4));
  (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_6b1b45fae75c24e1f2c54cf0d42e3428) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_6b1b45fae75c24e1f2c54cf0d42e3428) ^ 0x55))] ^ 0x7F]) + 583) + 8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v5) ^ 0x60u) - 8) ^ v5) + 55092))(&v9);
  return (v10 - 1906281716);
}

uint64_t lfkien1n12m()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_2e79676352dabf7a427cd2c5e5f3dc5e ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (fp_dh_2e79676352dabf7a427cd2c5e5f3dc5e ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xE1]) - 101);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))] ^ 0x76]) + 593);
  v3 = *(v2 - 4) - v1 - &v5;
  *(v0 - 4) = 810526117 * (v3 + 0x3983E51A1E6C17ABLL);
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  LODWORD(v3) = 1790939281 * (((v6 | 0x51A1EEF9) - (v6 & 0x51A1EEF9)) ^ 0xA97DCEB8);
  v6[1] = v3 ^ 0x2C818299;
  v6[2] = 1257 - v3;
  LOBYTE(v2) = -91 * (*(v0 - 4) ^ 0x55 ^ *(v2 - 4));
  (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_2e79676352dabf7a427cd2c5e5f3dc5e) ^ 0x55)) ^ fp_dh_9f3a64ae35be94ec7344ce35efe855d0[fp_dh_6f808fec9028d604a6d723482abcf3ae[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_2e79676352dabf7a427cd2c5e5f3dc5e) ^ 0x55))] ^ 0xA7]) + 449) + 8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v2) ^ 0xDCu) - 8) ^ v2) + 55036))(v6);
  return (v6[0] - 1906281716);
}

uint64_t AwwTNt5PUEr(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_8aeaa13f41bc97a8319fac8b965f968e ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * (fp_dh_8aeaa13f41bc97a8319fac8b965f968e ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x7F]) + 572);
  v2 = *(v1 - 4);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v2) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v2) ^ 0x55))] ^ 0x16]) + 440);
  v4 = v2 ^ &v6 ^ *(v3 - 4);
  *(v1 - 4) = 810526117 * v4 + 0x3983E51A1E6C17ABLL;
  *(v3 - 4) = 810526117 * (v4 ^ 0xC67C1AE5E193E855);
  v7[1] = 750 - 654144011 * (((v7 ^ 0x6B609687) - 1948719513 - 2 * ((v7 ^ 0x6B609687) & 0x8BD8E667)) ^ 0xCC6C0D7C);
  v8 = a1;
  LODWORD(v3) = 810526117 * ((*(v3 - 4) + *(v1 - 4)) ^ 0xE193E855);
  (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_8aeaa13f41bc97a8319fac8b965f968e) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_8aeaa13f41bc97a8319fac8b965f968e) ^ 0x55))] ^ 0xE1]) + 516) + 8 * (*(off_1F0B0CB90 + (*(off_1F0B0C400 + v3) ^ 0x7Fu)) ^ v3) + 54620))(v7);
  return v7[0];
}

uint64_t U4Fe6iEr(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_b3e2801b8deb9e9a5c74c494f9e1dbf4) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_b3e2801b8deb9e9a5c74c494f9e1dbf4) ^ 0x55))] ^ 0xE1]) - 52);
  v2 = -91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + *v1) ^ 0x55);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v2 - 4) ^ 0x4Eu) - 4) ^ v2) + 404);
  v4 = &v6[*v1 + *(v3 - 4)];
  *v1 = 810526117 * v4 + 0x528FD8C35B4E87C9;
  *(v3 - 4) = 810526117 * (v4 ^ 0xC67C1AE5E193E855);
  v7 = a1;
  v8 = 1790939281 * ((((2 * &v7) | 0xA45EE5E8) - &v7 + 768642316) ^ 0x2AF352B5) + 3265;
  LOBYTE(v3) = -91 * (*v1 ^ 0x55 ^ *(v3 - 4));
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_b3e2801b8deb9e9a5c74c494f9e1dbf4) ^ 0x55)) ^ fp_dh_9f3a64ae35be94ec7344ce35efe855d0[fp_dh_6f808fec9028d604a6d723482abcf3ae[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_b3e2801b8deb9e9a5c74c494f9e1dbf4) ^ 0x55))] ^ 0xA7]) + 449) + 8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v3 - 8) ^ 0x16u) - 12) ^ v3) + 52940))(&v7);
}

uint64_t t40FBjEr(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b714b1d7e301632a4eef149143e09578) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b714b1d7e301632a4eef149143e09578) ^ 0x55))] ^ 0x1D]) + 337);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (*v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (*v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))] ^ 0xE1]) + 483);
  v3 = (*(v2 - 4) ^ *v1) - &v5;
  *v1 = 810526117 * v3 + 0x528FD8C35B4E87C9;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v7 = a1;
  v6 = (455395931 * (&v6 ^ 0x76F15ECC)) ^ 0xC78;
  LOBYTE(v2) = -91 * ((*(v2 - 4) - *v1) ^ 0x55);
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b714b1d7e301632a4eef149143e09578) ^ 0x55)) ^ fp_dh_222236759e9e7014a4b1132c99a61f18[fp_dh_a39239c15ed61b79f612ca2106c00643[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b714b1d7e301632a4eef149143e09578) ^ 0x55))] ^ 0xC2]) + 528) + 8 * (*(off_1F0B0CB90 + (*(off_1F0B0C400 + v2) ^ 0xCu)) ^ v2) + 53020))(&v6);
}

uint64_t VLxCLgDpiF(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_cd8217cc585130cb87695d08f776fbd7 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * (fp_dh_cd8217cc585130cb87695d08f776fbd7 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xE0]) + 362);
  v2 = *(v1 - 4);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * (v2 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) ^ 0x7Fu)) ^ (-91 * (v2 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 550);
  v4 = (*(v3 - 4) + v2) ^ &v7;
  *(v1 - 4) = 810526117 * v4 - 0x3983E51A1E6C17ABLL;
  *(v3 - 4) = 810526117 * (v4 ^ 0xC67C1AE5E193E855);
  v5 = 1012216201 * (((v8 | 0xCBF68D56) - v8 + (v8 & 0x340972A8)) ^ 0x4F5F05BA);
  v8[0] = v5 ^ 0x438;
  v8[1] = v5 ^ (1330434403 * a1 + 438201734);
  LOBYTE(v3) = -91 * (*(v1 - 4) ^ 0x55 ^ *(v3 - 4));
  (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_cd8217cc585130cb87695d08f776fbd7) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_cd8217cc585130cb87695d08f776fbd7) ^ 0x55))] ^ 0xE1]) + 516) + 8 * (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v3 - 4) ^ 0xD2u) - 4) ^ v3) + 54108))(v8);
  return (v8[2] - 1906281716);
}

void fp_dh_19a831de830cfcb011e8a0276eceea44(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 489239129 * ((((2 * a1) | 0xB9C6B696) - a1 - 1558403915) ^ 0xE5CB787D);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 + 34)) - 4;
  (*&v2[8 * (v1 ^ 0x18B9)])(&v3, 0, 128);
  v4[0] = v1 + 1575331711 * ((v4 - 179769706 - 2 * (v4 & 0xF548EE96)) ^ 0x99137B94) + 1655633833;
  (*&v2[8 * (v1 ^ 0x18FE)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968BA600@<X0>(uint64_t result@<X0>, char a2@<W8>, double a3@<D0>)
{
  v3 = LODWORD(a3) | HIDWORD(a3) | ((*&a3 | HIDWORD(*&a3)) >> 16);
  v4 = v3 | ((v3 & 0xF0) >> 4) | (((v3 | ((v3 & 0xF0) >> 4)) & 0xFCu) >> 2);
  v5 = v4 & 1 | ((v4 & 2) != 0);
  *(result + 8) = -42084 * ((v5 ^ 0x3F6BB7AF) + (v5 << (a2 ^ 0x49))) + 962554192;
  return result;
}

void sub_1968BA6CC(char a1@<W8>)
{
  if ((v1 - 364443024) < 2)
  {
    __asm { BRAA            X8, X17 }
  }
}

uint64_t fp_dh_7d66482898ea4b7438a6577d07955679(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = 1621291457 * (a1 ^ 0x36178199);
  v2 = *(a1 + 36) + v1;
  v3 = *a1 ^ v1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32) + v1;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 + 1141759027) - 4;
  if (v3 == 177060717 || v3 == 177060714)
  {
    __asm { BRAA            X19, X17 }
  }

  v9 = *(a1 + 24);
  v10 = 1621291457 * (&v13 ^ 0x36178199);
  v19 = *(a1 + 8);
  v16 = v4;
  v17 = v5;
  v14 = v9;
  v18 = (v2 + 1141761227) ^ v10;
  v13 = (v6 + 1240236337) ^ v10;
  result = (*&v7[8 * (v2 ^ 0xBBF23D2F)])(&v13);
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_1968BAA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 5 * (v7 ^ 0x186);
  *(*(a1 + 16) + (v2 + v8 - 1941003351)) = *(*(a2 + 8) + 4 * v6) ^ v5;
  return (*(v3 + 8 * ((30 * ((((v8 - 3558) ^ (v2 - 1 == v4)) & 1) == 0)) ^ v8)))();
}

void T40gmCiYgO7uIqkoes4oO6isuYo()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_60b2bdd7e53d82566a4431a984b151ed) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_60b2bdd7e53d82566a4431a984b151ed) ^ 0x55))] ^ 0x76]) + 30);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) - 4) ^ 0x4Eu) - 4) ^ (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 404);
  v3 = (*(v2 - 4) ^ v1) - &v5;
  *(v0 - 4) = 810526117 * (v3 + 0x3983E51A1E6C17ABLL);
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 | 0x41DAE114) - v6 + (v6 & 0xBE251EE8)) ^ 0x2D817416) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_60b2bdd7e53d82566a4431a984b151ed) ^ 0x55)) ^ fp_dh_222236759e9e7014a4b1132c99a61f18[fp_dh_a39239c15ed61b79f612ca2106c00643[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_60b2bdd7e53d82566a4431a984b151ed) ^ 0x55))] ^ 0x5C]) + 504) - 4;
  (*&v4[8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v2) ^ 0xDCu) - 8) ^ v2) + 53856])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968BACBC@<X0>(int a1@<W7>, int a2@<W8>)
{
  v11 = v2 + 1;
  v12 = *(v10 + (((a2 - 602) | v5) + v11 * v3 + v6 - (((((((a2 - 602) | v5) + v11 * v3 + v6) >> 1) * v8) >> 16) >> 8) * v4));
  *(v10 + (v12 * v3 - (((v12 * a1) >> 16) >> 6) * v4)) = v11;
  return (*(v9 + 8 * (((v11 == 15) * v7) ^ a2)))();
}

uint64_t sub_1968BADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, char a17, __int16 a18, char a19, char *a20, uint64_t a21, char *a22, int a23, unsigned int a24, char *a25, unsigned int a26, int *a27)
{
  a16 = 1304194923;
  v28 = *(a2 + 8);
  v29 = 1621291457 * ((&a20 & 0x6C4B1A3E | ~(&a20 | 0x6C4B1A3E)) ^ 0xA5A36458);
  a24 = v29 + *(a2 + 4) + 273767718;
  a27 = &a16;
  a21 = v28;
  a22 = &a19;
  a25 = &a15;
  a26 = v29 + 3377;
  a20 = &a17;
  v31 = (*(v27 + 54784))(&a20);
  return (*(v27 + 8 * ((6500 * (a23 == 1906281716)) ^ 0x322u)))(v31, a2);
}

uint64_t sub_1968BAF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6 ^ 0xD8C2E702 ^ v7;
  v10 = LOWORD(STACK[0x8DE]);
  LODWORD(STACK[0x330]) = v10;
  LODWORD(STACK[0x320]) = v10 ^ 0xFFFFB88F;
  v11 = STACK[0x8E0];
  LODWORD(STACK[0x340]) = -1720256289;
  LODWORD(STACK[0x2B0]) = LODWORD(STACK[0x8E4]) ^ 0xD8C2E756;
  v12 = LOWORD(STACK[0x95E]);
  LODWORD(STACK[0x310]) = v12;
  LODWORD(STACK[0x300]) = v12 ^ 0xFFFF9583;
  v13 = STACK[0x960];
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x964]) ^ 0xD8C2E756;
  STACK[0x350] = STACK[0x388] + 24;
  LODWORD(STACK[0x2D0]) = v11;
  LODWORD(STACK[0x2F0]) = v11 ^ 0xD8C2E756;
  LODWORD(STACK[0x2C0]) = v13;
  LODWORD(STACK[0x2E0]) = v13 ^ 0xD8C2E756;
  v14 = *v8;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = ((v15 - 0x6AF7234D0CC131D5) & 0x7B9FBBE89B31A532 ^ 0x6A1EA1C00800A112) + ((v15 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) - (((v15 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) & 0x7F9FBBE89B31A532);
  v17 = __ROR8__(v16 ^ 0xA7B7E3F907D81E09, 8);
  v16 ^= 0xFF1066E9E2E6F55uLL;
  v18 = __ROR8__((0x80118B43C4E60BA1 - ((v17 + v16) | 0x80118B43C4E60BA1) + ((v17 + v16) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20, 8);
  v19 = (0x80118B43C4E60BA1 - ((v17 + v16) | 0x80118B43C4E60BA1) + ((v17 + v16) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20 ^ __ROR8__(v16, 61);
  v20 = (((2 * (v18 + v19)) & 0x80FC60FEBC25C29ELL) - (v18 + v19) + 0x3F81CF80A1ED1EB0) ^ 0xCA233E39143DACB9;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x5963B6C555D97F1FLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x61459D2AF01F24F7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x64C31C027084DE6CLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x5CAA8D75362170F6) - 0x51AAB94564EF4785) ^ 0xB47FAD5ED9431778;
  v30 = *(a6 + 8 * v7);
  *v14 = (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v27, 61))) ^ 0xAB3042D228875C41) >> (8 * (v14 & 7u))) ^ HIBYTE(v9) ^ 0x41;
  v31 = __ROR8__((v14 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((2 * (v31 - 0x6AF7234D0CC131D5)) | 0xC3A82C8AC586D220) - (v31 - 0x6AF7234D0CC131D5) - 0x61D4164562C36910;
  v33 = v32 ^ 0x283D547E0DD58EC2;
  v32 ^= 0x807BB1E99423FF9ELL;
  v34 = __ROR8__(v33, 8);
  v35 = (0xC5FEDAFBD727F00 - ((v34 + v32) | 0xC5FEDAFBD727F00) + ((v34 + v32) | 0xF3A01250428D80FFLL)) ^ 0x173D658FC5B03F81;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF5A2F1B9B5D0B209;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (v38 + v39) ^ 0x5963B6C555D97F1FLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x61459D2AF01F24F7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x64C31C027084DE6CLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) & 0xF225B66F71452428) - (v46 + v45) + 0x6ED24C8475D6DEBLL) ^ 0x1CC7CF2C050EC2E8;
  *(v14 + 1) = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v45, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v14 + 1) & 7))) ^ BYTE2(v9) ^ 0xB4;
  v48 = __ROR8__((v14 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = v48 - ((2 * v48 + 0x2A11B965E67D9C56) & 0x545857267EBA479CLL) + 0x3F350846329BF1F9;
  v50 = __ROR8__(v49 ^ 0xE3C569A8504BC41CLL, 8);
  v49 ^= 0x4B838C3FC9BDB540uLL;
  v51 = (v50 + v49) ^ 0xE49D77DF873DBF7ELL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xF5A2F1B9B5D0B209;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x5963B6C555D97F1FLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x61459D2AF01F24F7;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x64C31C027084DE6CLL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((2 * (v61 + v60)) | 0x9A35C6070C844E0CLL) - (v61 + v60) + 0x32E51CFC79BDD8FALL) ^ 0xD73008E7C4118805;
  *(v14 + 2) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v60, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v14 + 2) & 7))) ^ BYTE1(v9) ^ 0x1F;
  v63 = (__ROR8__((v14 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v64 = v63 ^ 0x4DE9423B6F16E7D2;
  v63 ^= 0xE5AFA7ACF6E0968ELL;
  v65 = __ROR8__(v64, 8);
  v66 = (((2 * (v65 + v63)) & 0xD4384CBE8D1CCB66) - (v65 + v63) + 0x15E3D9A0B9719A4CLL) ^ 0xF17EAE7F3E4C2532;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = __ROR8__(v66, 8);
  v69 = __ROR8__((((2 * (v68 + v67)) & 0x92CB1CAC1BFAFF5ALL) - (v68 + v67) - 0x49658E560DFD7FAELL) ^ 0x4338801047D2325BLL, 8);
  v70 = (((2 * (v68 + v67)) & 0x92CB1CAC1BFAFF5ALL) - (v68 + v67) - 0x49658E560DFD7FAELL) ^ 0x4338801047D2325BLL ^ __ROR8__(v67, 61);
  v71 = (((v69 + v70) & 0xA386F3BFED6BF6BLL ^ 0x8104132A4169360) + ((v69 + v70) & 0xF5C790C401294094 ^ 0x5145004400284001) - 1) ^ 0x36F7B3F1E7AC7FLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x61459D2AF01F24F7;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__((((2 * (v75 + v74)) | 0x5B13AD649E0E3598) - (v75 + v74) - 0x2D89D6B24F071ACCLL) ^ 0x494ACAB03F83C4A0, 8);
  v77 = (((2 * (v75 + v74)) | 0x5B13AD649E0E3598) - (v75 + v74) - 0x2D89D6B24F071ACCLL) ^ 0x494ACAB03F83C4A0 ^ __ROR8__(v74, 61);
  v78 = __ROR8__((v76 + v77) ^ 0x1A2AEBE44253AF03, 8) + ((v76 + v77) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v77, 61));
  *(v14 + 3) = v9 ^ 0x8D ^ (((v78 - ((2 * v78) & 0x7DC344E135698E1CLL) - 0x411E5D8F654B38F2) ^ 0x15D1E0A2B2339B4FuLL) >> (8 * ((v14 + 3) & 7)));
  return v30();
}

uint64_t sub_1968BAF18(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, unsigned int a25, uint64_t a26, uint64_t a27, int a28)
{
  v29 = a28 + 1573240483 > a25;
  if (a25 < a24 != a28 + 1573240483 < ((a4 - 2994) ^ 0x5DC5B946u))
  {
    v29 = a28 + 1573240483 < ((a4 - 2994) ^ 0x5DC5B946u);
  }

  return (*(v28 + 8 * (((32 * v29) | (v29 << 6)) ^ (a8 + 730))))();
}

void fp_dh_b2bdc419a1277a1a5b5c895c8374e9f3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 20) ^ (998242381 * ((-2 - ((~a1 | 0xEC31FAA9) + (a1 | 0x13CE0556))) ^ 0x465E627F));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968BB00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = v3 + 294;
  v8 = v4;
  (*(a2 + 8 * (v3 ^ 0x1CCD)))(a3);
  v9 = STACK[0x370];
  *(a1 + 24) = 0;
  v10 = (*(v9 + 8 * (v6 ^ 0x1DF3)))(a1);
  return (*(STACK[0x370] + 8 * (((v8 == v5) * ((((v6 - 1095) ^ 0x1D1) + 3382) ^ (v6 - 1754))) ^ (v6 - 1095))))(v10);
}

uint64_t sub_1968BB29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = ((((a8 ^ 0x14C6) + 1028390628) & 0xC2B415DD) - 362676181 + (*(a2 + 68) & 0x3F ^ 0x6F756A5B)) ^ ((*(a2 + 68) & 0x3F ^ 0xDDB278FF) + 1487210404) ^ ((*(a2 + 68) & 0x3F ^ 0xB2C712A4) + 936406521);
  *(v13 + (v15 + 2062057635)) = 108;
  return (*(v14 + 8 * ((5558 * ((v15 + 2062057579) < 0xFFFFFFC8)) ^ a8 ^ 0x14C6)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1968BB434@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v3 | 0x228;
  v6 = (((v5 - 754) ^ 0xB3AA36FC) + a1) & ((v5 - 251) ^ 0xFFFFF96E);
  v7 = (*(v4 + 8 * (v5 ^ 0x1139)))(**(v2 + 8 * (v5 ^ 0x864)), va, (((v6 ^ 0x36353254) - 2125537987) ^ ((v6 ^ 0x2F3D5B8B) - 1740196636) ^ ((v6 ^ 0x190869DF) - 1368160584)) + 1216614551, 1) != 0;
  return (*(v4 + 8 * ((181 * v7) ^ v5)))();
}

uint64_t sub_1968BB508(uint64_t a1, uint64_t a2)
{
  v7 = *STACK[0x350];
  v8 = __ROR8__((v7 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (0x2AF7234D0CC131D4 - v8) & 0x2A199E3A6C7C6131 | (v8 - 0x6AF7234D0CC131D5) & 0xD1E661C593839ECELL;
  v10 = v9 ^ 0x67F0DC01036A86E3;
  v9 ^= 0xCFB639969A9CF7BFLL;
  v11 = __ROR8__(v10, 8);
  v12 = (((2 * (v11 + v9)) | 0x1ED977F0C520FDA0) - (v11 + v9) + 0x709344079D6F8130) ^ 0x6BF1CC27E5ADC1AELL;
  v13 = v12 ^ __ROR8__(v9, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0xAB878F6F884E2F0ELL) - (v14 + v13) + 0x2A3C38483BD8E878) ^ 0xDF9EC9F18E085A71;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((a2 - ((v17 + v16) | a2) + ((v17 + v16) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL, 8);
  v19 = (a2 - ((v17 + v16) | a2) + ((v17 + v16) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL ^ __ROR8__(v16, 61);
  v20 = (((2 * (v18 + v19)) | 0xC9AD8CEC88B7F32) - (v18 + v19) - 0x64D6C676445BF99) ^ 0x6708F14D945A9B6ELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v3;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = *(STACK[0x370] + 8 * (v6 - 5691));
  v26 = (((v24 + v23) & 0x63AF45F0EF53838FLL ^ 0x294560A0428381) + ((v24 + v23) & 0x9C50BA0F10AC7C70 ^ 0x10503A0C108C4421) - 1) ^ 0xA539488F29D68A2;
  v27 = v26 ^ __ROR8__(v23, 61);
  v28 = __ROR8__(v26, 8);
  *(v7 + 4) = v5 ^ 0xDD ^ (((v4 - ((v28 + v27) | v4) + ((v28 + v27) | 0x47F243311DD82B06)) ^ 0xECC201E3355F7747) >> (8 * ((v7 + 4) & 7)));
  v29 = __ROR8__((v7 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = (v29 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v31 = (__ROR8__((v29 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v30) ^ 0xE49D77DF873DBF7ELL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xF5A2F1B9B5D0B209;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x5963B6C555D97F1FLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v2;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v3;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x1A2AEBE44253AF03;
  *(v7 + 5) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 5) & 7))) ^ 0xDB;
  return v25();
}

uint64_t sub_1968BB56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  v44 = (4 * a6) ^ 0x5D70;
  if (LOBYTE(STACK[0x5E7]))
  {
    v45 = 6;
  }

  else
  {
    v45 = 8;
  }

  if (((v44 - 604) & STACK[0x644]) != 0)
  {
    v46 = v45;
  }

  else
  {
    v46 = STACK[0x600];
  }

  LODWORD(STACK[0x42C]) = v46;
  v47 = 1068996913 * (((v43 - 208) & 0x6416A54C | ~((v43 - 208) | 0x6416A54C)) ^ 0x4E07BB22);
  *(v43 - 196) = v44 - v47 - 3;
  *(v43 - 192) = v47 + (v46 ^ 0x3FF97FB3) + ((2 * v46) & 0x7FF2FF66) - 542120080;
  *(v43 - 184) = &STACK[0x59C];
  *(v43 - 176) = &STACK[0x3D0];
  *(v43 - 208) = &STACK[0x6C0];
  *(v43 - 200) = a42 - v47 - 47402256;
  *(v43 - 168) = &STACK[0x19D0];
  *(v43 - 160) = STACK[0x218];
  v48 = (*(v42 + 8 * ((4 * a6) ^ 0x44ED)))(v43 - 208);
  v49 = *(v43 - 188);
  LODWORD(STACK[0x450]) = v49;
  return (*(v42 + 8 * (((v49 == 1906281716) * (v44 + ((v44 + 1254808931) & 0xB53537FB) - 3222)) ^ v44)))(v48);
}

uint64_t sub_1968BB718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (*(v70 + 8 * (v69 + 5026)))(((v69 ^ 0x6DDu) - 1720256347) ^ LODWORD(STACK[0x5BC]), 0x100004077774924);
  STACK[0xAC8] = v71;
  if (v71)
  {
    a69 = 1906281716;
  }

  LODWORD(STACK[0xAD4]) = a69;
  return (*(v70 + 8 * (((v71 == 0) * (v69 - 1767)) | v69)))();
}

uint64_t sub_1968BB850()
{
  v6 = (v0 + v3 + 32);
  v7 = v2[1];
  *(v6 - 1) = *v2;
  *v6 = v7;
  return (*(v5 + 8 * ((((v4 & 0x70) == 16) * ((v1 - 466) ^ 0xE7D)) ^ (v1 - 1833))))();
}

uint64_t sub_1968BB918(__n128 a1)
{
  v8 = STACK[0x370] - 2321;
  v9 = STACK[0x370] - 6139;
  v10 = (((v2 ^ v9 ^ v3) & v2) >> ((STACK[0x370] - 17) ^ 0xF5 ^ __clz(v2 ^ v9 ^ v3 | 1))) & 1;
  v11 = STACK[0x2F8];
  *STACK[0x310] = v2 + 1;
  v12 = v8 - 574;
  v13 = v10 ^ v1 ^ 0x6E3B5C7C ^ (v1 >> (v9 ^ 0xB)) ^ 0x546F1399 ^ (v8 - 1658042474) & ((v1 ^ 0x6E3B5C7C ^ (v1 >> (v9 ^ 0xB))) << 7);
  v14 = (v13 << 15) & 0xEFC60000 ^ v13 ^ (((v13 << 15) & 0xEFC60000 ^ v13) >> 18) ^ 0xBBA5B0B;
  v15 = (v11 + (v7 - 1387895889));
  v16 = ((*(*STACK[0x338] + (*STACK[0x340] & 0xFFFFFFFFDC187980)) ^ v15) & 0x7FFFFFFF) * (((v12 - 1667) | 0x11D2) - 1555364496);
  v17 = -1555358357 * (v16 ^ HIWORD(v16));
  LODWORD(v17) = (v14 - ((2 * v14) & 0xC) + 6) ^ *(*(v6 + 8 * (v12 - 2725)) + (v17 >> 24) - 8) ^ *(*(v6 + 8 * (v12 - 2885)) + (v17 >> 24) - 7) ^ *(*(v6 + 8 * (v12 - 3047)) + (v17 >> 24) - 8) ^ v17 ^ (-43 * (v17 >> 24));
  *v15 = v17 ^ 6;
  LODWORD(v17) = v7 - (v17 != 6) == v4 - 16;
  return (*(v5 + 8 * (((8 * v17) | (16 * v17)) ^ v12)))(a1, 0);
}

uint64_t sub_1968BBAEC()
{
  *(v2 - 120) = (v1 + 3081) ^ (654144011 * ((((v2 - 120) | 0x747E6ADE) - ((v2 - 120) & 0x747E6ADE)) ^ 0x58AA1742));
  *(v2 - 112) = &v5;
  *(v2 - 104) = v4;
  return (*(v0 + 8 * (v1 + 5665)))(v2 - 120);
}

uint64_t sub_1968BBBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  v25 = bswap32(*(v23 + 32));
  v26 = &v21[56 * *v21 + 8];
  v27 = (((v24 - 507418248) & 0x1E3E9971) - 4464) & v25 ^ 0x7FD47FD7;
  v28 = 2 * v25;
  v29 = 455395931 * ((((2 * (&a15 ^ 0x6B651658)) | 0xD7E6E6E2) - (&a15 ^ 0x6B651658) + 336366735) ^ 0xF6673BE5);
  a19 = v23 + 56;
  a20 = v23 + 16;
  a21 = v24 - v29 - 2921;
  a16 = v26;
  a18 = v23 + 56;
  a17 = v29 + (v28 & 0xFFA8FFA0) - 4103 + v27;
  (*(v22 + 8 * (v24 + 3219)))(&a15);
  return (*(v22 + 8 * ((5714 * (a15 == 1906281716)) ^ v24)))(a1);
}

void sub_1968BBCF0()
{
  if (v0 == 2126234357)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 32) = v2;
}

uint64_t sub_1968BBD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x8F0] = v6 ^ 0x9976F8DB;
  *(a1 + 16) = (((v6 ^ 0xB0948A) - 11572446 + (v7 ^ 0x1497)) ^ ((v6 ^ 0xF6FB2AF4) + 151311628) ^ (((v7 + 1866281442) ^ v6) - 1866286757)) - 1720256283;
  v9 = (*(a6 + 8 * (v7 ^ 0xE4E)))();
  v10 = STACK[0x370];
  *(a1 + 24) = v9;
  return (*(v10 + 8 * ((7 * (v9 != 0)) ^ v7)))();
}

uint64_t sub_1968BBFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = STACK[0x530];
  if (STACK[0x760])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(a6 + 8 * ((v10 * (a8 + ((a8 - 4016) ^ 0xFFFFF919))) ^ (a8 - 4016))))(v8);
}

uint64_t sub_1968BC0E0(double a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  v48 = vld1q_dup_f32(v47);
  v49.i64[0] = 0x8000000080000000;
  v49.i64[1] = 0x8000000080000000;
  v50.i64[0] = 0x100000001;
  v50.i64[1] = 0x100000001;
  a6.i64[0] = *(v47 + 4);
  a6.i32[2] = *(v47 + 12);
  v51 = vextq_s8(v48, a6, 0xCuLL);
  v52 = a6;
  v52.i32[3] = *(v47 + 16);
  v53 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v52, vnegq_f32(v50)), vandq_s8(v51, v49)), 1uLL), *(v47 + 1588));
  v51.i32[0] = *(&a47 + (*(v47 + 4) & 1));
  v51.i32[1] = *(&a47 + (*(v47 + 8) & 1));
  v51.i32[2] = *(&a47 + (*(v47 + 12) & 1));
  v51.i32[3] = *(&a47 + (v52.i8[12] & 1));
  *v47 = veorq_s8(vaddq_s32(vsubq_s32(v53, vandq_s8(vaddq_s32(v53, v53), vdupq_n_s32(0xACE4B4AA))), vdupq_n_s32(0x56725A55u)), v51);
  return (*(a41 + 16752))();
}

uint64_t sub_1968BC170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, char a42)
{
  v47 = 1825732043 * ((2018516552 - ((v46 - 144) | 0x78501E48) + ((v46 - 144) | 0x87AFE1B7)) ^ 0x8739B280);
  *(v46 - 144) = v42 - v47 + 3025;
  *(v46 - 128) = &STACK[0xD40];
  *(v46 - 120) = v45;
  *(v46 - 136) = &a42;
  *(v46 - 112) = (((v44 ^ 0x1816E6C1) - 404154049) ^ ((v44 ^ 0x48853DA1) - 1216691617) ^ ((v44 ^ 0xD20ACE0F) + 771043825)) - 1952351830 + v47;
  v48 = (*(v43 + 8 * (v42 + 4573)))(v46 - 144);
  *(v45 + 259) = ((&a9 - 555) + ((v42 + 95) & 0xF5)) * (&a40 ^ 0xBA);
  *(v45 + 258) = (&a40 ^ 0xBB) * (&a40 + 18);
  return (*(v43 + 8 * v42))(v48);
}

uint64_t sub_1968BC344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v20 = *(v11 + v9 * a6 + v13 - ((((v9 * a6 + v13) * v16) >> 32) >> 9) * v14);
  *(STACK[0x580] + v9 * a6 + (v10 ^ 0x36CED) - ((((v9 * a6 + (v10 ^ 0x36CED)) * v16) >> 32) >> 9) * v14) = v20 ^ 0x61 ^ *(v8 + (a8 + (v20 ^ v12) * v19 - (((a8 + (v20 ^ v12) * v19) * v18) >> 32) * v15));
  return (*(v17 + 8 * ((241 * (v9 != 15)) ^ v10)))();
}

uint64_t sub_1968BC3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = v24 - 5725;
  v27 = STACK[0x490] + (v25 ^ 0xFAD32DEF7FDFB6EFLL) + 0x6D3DF7FAFD647B40 + ((2 * v25) & 0xFFBF6DDELL) - 0x681125EA7D44322FLL;
  v28 = __ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = ((v28 + 0x568FD0F9DF82F1E3) | 0xED1320230BE5152FLL) - ((v28 + 0x568FD0F9DF82F1E3) | 0x12ECDFDCF41AEAD0) + 0x12ECDFDCF41AEAD0;
  v30 = __ROR8__(v29 ^ 0xDC4CFBDDB2B20571, 8);
  v29 ^= 0x68327C134EA58A6BuLL;
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x7A000AC479256DDCLL) + 0x3D0005623C92B6EELL) ^ 0xBC74352D5DA5A2DDLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x48DE3944125A0254;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0xCD8B0FB35EB746D2) - (v35 + v34) + 0x193A782650A45C97) ^ 0xB115F5066CFE553ELL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = *(STACK[0x370] + 8 * v26);
  v39 = (__ROR8__(v36, 8) + v37) ^ 0xF2620266DFD8DE82;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xB9BEF0CD865D21FDLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) | 0x786F53DE9F8F070) - (v43 + v42) - 0x3C37A9EF4FC7838) ^ 0x6DDD634347C0CA02;
  *v27 = ((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v42, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v27 & 7u));
  v45 = __ROR8__((v27 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = (v45 + 0x568FD0F9DF82F1E3) ^ 0x85215C3045409F44;
  v47 = __ROR8__((v45 + 0x568FD0F9DF82F1E3) ^ 0x315FDBFEB957105ELL, 8);
  v48 = (((2 * (v47 + v46)) | 0x55A29942AAF17B6ELL) - (v47 + v46) + 0x552EB35EAA874249) ^ 0x2BA57CEE344FA984;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x48DE3944125A0254;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((((2 * (v52 + v51)) & 0x40E4ECAD5CD5B212) - (v52 + v51) + 0x5F8D89A9519526F6) ^ 0x85DFB769230D0A1, 8);
  v54 = (((2 * (v52 + v51)) & 0x40E4ECAD5CD5B212) - (v52 + v51) + 0x5F8D89A9519526F6) ^ 0x85DFB769230D0A1 ^ __ROR8__(v51, 61);
  v55 = (0x9178CC700312561CLL - ((v53 + v54) | 0x9178CC700312561CLL) + ((v53 + v54) | 0x6E87338FFCEDA9E3)) ^ 0x9CE531E923357761;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xB9BEF0CD865D21FDLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x6E1E19DDB33CB23ALL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  *(v27 + 1) = ((((2 * (v61 + v60)) & 0x6DA12A7E10EAF434) - (v61 + v60) + 0x492F6AC0F78A85E5) ^ 0x7C1DA7500AD193C7uLL) >> (8 * ((v27 + 1) & 7));
  v62 = __ROR8__((v27 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = ((2 * v62 + 0x2D1FA1F3BF05E3C6) & 0x2102FC295C0EC284) - v62 + 0x18EEB0F17275ACDALL;
  v64 = v63 ^ 0x5E215A15E8AF8EE3;
  v63 ^= 0xEA5FDDDB14B801F9;
  v65 = __ROR8__(v64, 8);
  v66 = (((2 * (v65 + v63)) & 0xE9372FF044D41ELL) - (v65 + v63) + 0x7F8B646807DD95F0) ^ 0xFEFF542766EA81C3;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x48DE3944125A0254;
  v69 = __ROR8__(v68, 8);
  v70 = v68 ^ __ROR8__(v67, 61);
  v71 = (((2 * (v69 + v70)) | 0x99DFB4DEF7216134) - (v69 + v70) + 0x33102590846F4F66) ^ 0x9B3FA8B0B83546CDLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xF2620266DFD8DE82;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xB9BEF0CD865D21FDLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x6E1E19DDB33CB23ALL;
  *(v27 + 2) = ((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v76, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * ((v27 + 2) & 7));
  v78 = __ROR8__((v27 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v79 = ((2 * v78 - 0x52E05E0C40FA1C3ALL) & 0x9914A7B4AF0DC152) - v78 + 0x5CE5DB2BC8F62D73;
  v80 = __ROR8__(v79 ^ 0x822A77DB112E0F08, 8);
  v79 ^= 0x3654F015ED398012uLL;
  v81 = (v80 + v79) ^ 0x8174304F61371433;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x48DE3944125A0254;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x57D072DFC3A5F657;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = __ROR8__((0x3F6001C1A414CE85 - ((v87 + v86) | 0x3F6001C1A414CE85) + ((v87 + v86) | 0xC09FFE3E5BEB317ALL)) ^ 0x32FDFC588433EFF8, 8);
  v89 = (0x3F6001C1A414CE85 - ((v87 + v86) | 0x3F6001C1A414CE85) + ((v87 + v86) | 0xC09FFE3E5BEB317ALL)) ^ 0x32FDFC588433EFF8 ^ __ROR8__(v86, 61);
  v90 = (((2 * (v88 + v89)) | 0xB62A5E463FA53B82) - (v88 + v89) + 0x24EAD0DCE02D623FLL) ^ 0x62ABDFEE998FBC3CLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) & 0x878777912DBA756ALL) - (v92 + v91) + 0x3C3C44376922C54ALL) ^ 0x52225DEADA1E7770;
  *(v27 + 3) = ((__ROR8__(v93, 8) + (v93 ^ __ROR8__(v91, 61))) ^ 0x3532CD90FD5B1622) >> (8 * ((v27 + 3) & 7));
  return v38(0xF2620266DFD8DE82, 0x24EAD0DCE02D623FLL, 0x62ABDFEE998FBC3CLL, 0x9178CC700312561CLL, 0x6E1E19DDB33CB23ALL, 0x3F6001C1A414CE85, 0x878777912DBA756ALL, 0x12ECDFDCF41AEAD0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1968BC3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>)
{
  v16 = a1 - 16;
  v17 = (v16 - 1) & 0xF;
  v19.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v19.i64[1] = a6;
  v20 = vrev64q_s8(vmulq_s8(v19, a7));
  *(a3 + v16) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v17 - 15), *(v10 + v16)), veorq_s8(*(v11 + v17 - 15), *(v17 + v13 - 14))), vextq_s8(v20, v20, 8uLL));
  return (*(v15 + 8 * (((a2 == 16) * (v14 + 1673)) ^ v14)))();
}

void sub_1968BC3EC()
{
  *v5 = *v1;
  *v4 = v0;
  *v1 = 0;
  *(v1 + 8) = 0x56CDB42F56CDB42FLL;
  v2 = *(v1 + 24);
  v3 = *(v1 + 20) & 0xFFFFFFFE;
  *(v1 + 16) = 317215047;
  *(v1 + 20) = v3;
  *(v6 + 16) = v2;
}

void fp_dh_c9dc5efaab1eb7c84099e89318f231ae(_DWORD *a1)
{
  v1 = 1283153057 * ((((2 * a1) | 0xD36A546) - a1 + 2036641117) ^ 0xC9435194);
  v2 = a1[4] - v1;
  v3 = *a1;
  v4 = a1[5] - v1;
  v5 = (v4 ^ 0xEF7B879B) & (2 * (v4 & 0xCF7B141A)) ^ v4 & 0xCF7B141A;
  v6 = ((2 * (v4 ^ 0xFF3DAF8F)) ^ 0x608D772A) & (v4 ^ 0xFF3DAF8F) ^ (2 * (v4 ^ 0xFF3DAF8F)) & 0x3046BB94;
  v7 = v6 ^ 0x10428895;
  v8 = (v6 ^ 0x20063800) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xC11AEE54) & v7 ^ (4 * v7) & 0x3046BB94;
  v10 = (v9 ^ 0x2AA00) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x30441181)) ^ 0x46BB950) & (v9 ^ 0x30441181) ^ (16 * (v9 ^ 0x30441181)) & 0x3046BB90;
  v12 = v10 ^ 0x3046BB95 ^ (v11 ^ 0x42B900) & (v10 << 8);
  v13 = (8 * v4) ^ (16 * ((v12 << 16) & 0x460000 ^ v12 ^ ((v12 << 16) ^ 0xB950000) & (((v11 ^ 0x30040285) << 8) & 0x460000 ^ 0x440000 ^ (((v11 ^ 0x30040285) << 8) ^ 0x6BB0000) & (v11 ^ 0x30040285)))) ^ 0x7FF31980;
  v14 = *(*a1 + 16);
  v15 = *(*a1 + 20);
  *(v3 + 16) = v13 + v14;
  *(v3 + 20) = v15 + __CFADD__(v13, v14) + (((((v4 ^ 0xDBA3126D) + 349701749) ^ v4 ^ ((v4 ^ 0xA1633F3F) + 1847077671) ^ ((v4 ^ 0xB5B2395B) + 2060004675) ^ ((v4 ^ 0xFFF6FFEF) + 814607351)) >> 29) ^ 1);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1968BC754(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v26.val[1].i64[0] = (v22 + 13) & 0xF;
  v26.val[1].i64[1] = (v22 + 12) & 0xF;
  v26.val[2].i64[0] = (v22 + 11) & 0xF;
  v26.val[2].i64[1] = (v22 + 10) & 0xF;
  v26.val[3].i64[0] = (v22 + 9) & 0xF;
  v26.val[3].i64[1] = a1 & 0xF ^ 2;
  v27.val[0].i64[0] = (v22 + 7) & 0xF;
  v27.val[0].i64[1] = (v22 + 6) & 0xF;
  v27.val[1].i64[0] = (v22 + 5) & 0xF;
  v27.val[1].i64[1] = (v22 + 4) & 0xF;
  v27.val[2].i64[0] = (v22 + 3) & 0xF;
  v27.val[2].i64[1] = (v22 + 2) & 0xF;
  v27.val[3].i64[0] = (v22 + 1) & 0xF;
  v27.val[3].i64[1] = v22 & 0xF;
  v23 = vqtbl4q_s8(v27, xmmword_196EBFA60).u64[0];
  v24.i64[0] = 0x7171717171717171;
  v24.i64[1] = 0x7171717171717171;
  v26.val[0].i64[0] = (v22 - 1) & 0xF;
  v26.val[0].i64[1] = (v22 + 14) & 0xF;
  v27.val[3].i64[0] = vqtbl4q_s8(v26, xmmword_196EBFA60).u64[0];
  v27.val[3].i64[1] = v23;
  v27.val[0] = vrev64q_s8(vmulq_s8(v27.val[3], v24));
  *(a16 - 15 + v22 - 1) = veorq_s8(veorq_s8(veorq_s8(*(v21 + v26.val[0].i64[0] - 15), *(v18 - 15 + v22 - 1)), veorq_s8(*(v19 + v26.val[0].i64[0] + 2 - 15), *(v20 + v26.val[0].i64[0] + 2 - 15))), vextq_s8(v27.val[0], v27.val[0], 8uLL));
  return (*(a17 + 8 * ((7017 * (((45 * (v17 ^ 0xB02u)) ^ 0x1643) == (a1 & 0x10))) ^ v17)))();
}

uint64_t sub_1968BC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27)
{
  v34 = (*(a4 + 96) - ((2 * *(a4 + 96)) & 0x77) - 65);
  if (v34 == 190)
  {
    v37 = a7 ^ 0x1B6A;
    v40 = *(a4 + 64);
    v39 = *(a4 + 68);
    *(a4 + 56) = (((v39 - ((2 * v39) & 0xA) + 9) << ((a7 ^ 0x6A) - 107)) - 32) ^ 0xC4;
    *(a4 + 57) = v30 ^ (v39 >> 5);
    *(a4 + 58) = v30 ^ (v39 >> 13);
    *(a4 + 59) = v30 ^ (v39 >> 21);
    *(a4 + 60) = ((__PAIR64__(v40, v39) >> 29) - ((2 * (__PAIR64__(v40, v39) >> 29)) & 0xD2) - 23) ^ 5;
    *(a4 + 61) = v30 ^ (v40 >> 5);
    *(a4 + 62) = v30 ^ (v40 >> 13);
    v38 = (v40 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    v35 = a7;
    if (v34 != 189)
    {
      goto LABEL_6;
    }

    v38 = *(a4 + 64);
    v36 = *(a4 + 68);
    v37 = (a7 + 3914) | 0xA20;
    *(a4 + 56) = v30 ^ (v38 >> 21);
    *(a4 + 57) = (((a7 + 74) | 0x20) + 126) ^ (v38 >> 13);
    *(a4 + 58) = v30 ^ (v38 >> 5);
    *(a4 + 59) = ((__PAIR64__(v38, v36) >> 29) - ((2 * (__PAIR64__(v38, v36) >> 29)) & 0x3C) + 30) ^ 0xF2;
    *(a4 + 60) = v30 ^ (v36 >> 21);
    *(a4 + 61) = v30 ^ (v36 >> 13);
    *(a4 + 62) = v30 ^ (v36 >> 5);
    LOBYTE(v38) = (8 * (v36 + (~(2 * v36) | 0xE9)) + 96) ^ 0xB4;
  }

  v35 = v37 - 6506;
  *(a4 + 63) = v38;
LABEL_6:
  v63 = *(v29 + 8 * (v35 - 131));
  v55 = *(a4 + 80);
  v56 = *(a4 + 84);
  v57 = (*(a4 + 96) - ((2 * *(a4 + 96)) & 0xBC) + 98);
  if (v57 == 96)
  {
    v60 = (a4 + v27 + 1363125044);
    v61 = ((v60[1] ^ v30) << (((a20 - 75) | 0x80) + 28)) + ((*v60 ^ v30) << 24) + ((v60[2] ^ v30) << 8);
    *(v31 + 4 * (v33 ^ 0x144FE8CD)) = v61 + (v60[3] ^ v30) + v32 - 2 * ((v61 + (v60[3] ^ v30)) & (v32 + 4) ^ (v60[3] ^ v30) & 4);
    v62 = *(v29 + 8 * ((75 * ((v27 + 1363125048) > 0x3F)) ^ a20));
    return v62(v62, v28 + 16, 0, 0, 3535774583, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else if (v57 == 99)
  {
    v58 = (a4 + v27 + 1363125044);
    v59 = *v58 ^ v30;
    LODWORD(v58) = ((v58[2] ^ v30) << a26) + ((v58[3] ^ v30) << 24) + (v59 | ((v58[1] ^ v30) << 8));
    *(v31 + 4 * (v33 ^ 0x144FE8CD)) = v58 + v32 - 2 * (v58 & (v32 + 16) ^ v59 & 0x10);
    return (*(v29 + 8 * ((110 * ((v27 + 1363125048) > 0x3F)) ^ a27)))(0, 0, a3, 1363125044, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v41 = (((*(a4 + 72) ^ 0xFDA05D17) + 39822057) ^ ((*(a4 + 72) ^ 0xCC8403A6) + 863763546) ^ ((*(a4 + 72) ^ 0x4D6359DA) - 1298356698)) + (((*(a4 + 72) ^ 0x5A7EFF3A) - 1518272314) ^ ((*(a4 + 72) ^ 0xC8E39B10) + 924607728) ^ ((*(a4 + 72) ^ 0xEEDA6341) + 287677631)) + 1789414030;
    v42 = (v41 ^ 0x8DE1942F) & (2 * (v41 & 0x8DE5C448)) ^ v41 & 0x8DE5C448;
    v43 = ((2 * (v41 ^ 0x8C63943F)) ^ 0x30CA0EE) & (v41 ^ 0x8C63943F) ^ (2 * (v41 ^ 0x8C63943F)) & 0x1865076;
    v44 = v43 ^ 0x825011;
    v45 = (v43 ^ 0x1040060) & (4 * v42) ^ v42;
    v46 = ((4 * v44) ^ 0x61941DC) & v44 ^ (4 * v44) & 0x1865074;
    v47 = (v46 ^ 0x4040) & (16 * v45) ^ v45;
    v48 = ((16 * (v46 ^ 0x1861023)) ^ 0x18650770) & (v46 ^ 0x1861023) ^ (16 * (v46 ^ 0x1861023)) & 0x1865070;
    v49 = v47 ^ 0x1865077 ^ (v48 ^ 0x40000) & (v47 << 8);
    v50 = (v49 << 16) ^ 0x50770000u;
    v51 = (((*(a4 + 76) ^ 0xB7876E69) + 1215861143) ^ ((*(a4 + 76) ^ 0x88E3F5D6) + 1998326314) ^ ((*(a4 + 76) ^ 0x43239CD4) - 1126407380)) + (((*(a4 + 76) ^ 0x903CB5B9) + 1875069511) ^ ((*(a4 + 76) ^ 0x1F61006C) - 526450796) ^ ((*(a4 + 76) ^ 0xF31AB2BE) + 216354114)) + 1477058484;
    *(a4 + 72) = v41 ^ (2 * ((v49 << 16) & 0x1860000 ^ v49 ^ v50 & (((v48 ^ 0x1825007) << 8) & 0x1860000 ^ 0x1860000 ^ (((v48 ^ 0x1825007) << 8) ^ 0x6500000) & (v48 ^ 0x1825007)))) ^ 0xF2A263CD;
    *(a4 + 76) = v51 ^ ((v51 ^ 0x236762C6) - 2082173464) ^ ((v51 ^ 0x2E4AC1C4) - 1899417882) ^ ((v51 ^ 0xDBE7923) - 1388472829) ^ ((v51 ^ 0x5FEFCAFF) - 9689633) ^ 0x233B17B5;
    v52 = (((v55 ^ 0xE58A8CEE) + 443904786) ^ ((v55 ^ 0x676CDC3E) - 1735187518) ^ ((v55 ^ 0xFEA157BB) + 22980677)) + (((*(a4 + 80) ^ 0xFB6745AC) + 77118036) ^ ((*(a4 + 80) ^ 0xDAFE247D) + 620878723) ^ ((*(a4 + 80) ^ 0x5DDE66BA) - 1574856378)) + 548873787;
    v53 = (((v56 ^ 0x65B7C60F) - 1706542607) ^ ((v56 ^ 0x603AED31) - 1614474545) ^ ((v56 ^ 0x79CA2C55) - 2043292757)) + (((*(a4 + 84) ^ 0xCBB9284D) + 877057971) ^ ((*(a4 + 84) ^ 0xFEA4917E) + 22769282) ^ ((*(a4 + 84) ^ 0x495ABE58) - 1230683736)) + 1621559688;
    *(a4 + 80) = v52 ^ ((v52 ^ 0xF12006C5) + 653717088) ^ ((v52 ^ 0xE0851370) + 928250859) ^ ((v52 ^ 0xC27BED2F) + 363660726) ^ ((v52 ^ 0xFBF7EFFF) + 740362086) ^ 0x546E100E;
    *(a4 + 84) = v53 ^ ((v53 ^ 0x52EC9742) - 989097456) ^ ((v53 ^ 0x9DD65BBE) + 171007732) ^ ((v53 ^ 0xD8DDC8B0) + 1329253886) ^ ((v53 ^ 0x7FFFFEFE) - 401015884) ^ 0x145FFDD9;
    return v63(v50, 324, a3, a4, a5, 2740373169, a19, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1968BCC68@<X0>(int a1@<W8>)
{
  v5 = ~v2 + v1;
  v6 = __CFADD__(a1, v5);
  return (*(v4 + 8 * ((((v5 <= (v3 ^ 0xFFFFEBE4uLL)) & ~v6) * (v3 - 5098)) ^ v3)))();
}

void OowSGu()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_b0427e282b4f944dcebad012a03494db) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_b0427e282b4f944dcebad012a03494db) ^ 0x55))] ^ 0x76]) + 231);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) ^ 0xE0u)) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) + 574);
  v3 = (*(v2 - 4) + v1) ^ &v5;
  *(v0 - 4) = 810526117 * (v3 + 0x3983E51A1E6C17ABLL);
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 | 0x54F4AAB5) - v6 + (v6 & 0xAB0B5548)) ^ 0x38AF3FB7) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b0427e282b4f944dcebad012a03494db) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b0427e282b4f944dcebad012a03494db) ^ 0x55))] ^ 0xD2]) + 406) - 4;
  (*&v4[8 * (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v2 - 4) ^ 0x4Eu) - 4) ^ v2) + 53032])(v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1968BCF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = v4 + 8;
  *(v8 + (v10 ^ a3 ^ v7) + v3) = *(v6 + (v10 ^ a3 ^ v7) + v3);
  return (*(v9 + 8 * (((4 * (a2 == v10)) | (16 * (a2 == v10))) ^ v5)))();
}

uint64_t sub_1968BCF50(uint64_t a1)
{
  v7 = a1 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v3 + 7) ^ (97 * (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ 0xEC;
  return (*(v5 + 8 * ((v7 != 0) | (8 * (v7 != 0)) | (v4 - 756))))();
}

uint64_t sub_1968BCFE8()
{
  v6 = *((v4 ^ 0x1A81ECC59515547FLL) - 0x1A81ECC595155467);
  v7 = 1068996913 * ((1366561915 - (&v9 | 0x5174147B) + (&v9 | 0xAE8BEB84)) ^ 0x7B650A15);
  v15 = (v3 ^ 0xFBDEEAFF) - v7 + ((2 * v3) & 0xF7BDD5FE) + 499121962;
  v11 = v1;
  v12 = v6;
  v14 = v2;
  v10 = v0;
  v9 = v7 + 4448;
  (*(v5 + 55328))(&v9);
  return (v13 - 1906281716);
}

void fp_dh_3e26694f251174a1de0f2b4d633c5087(uint64_t a1)
{
  v1 = *(a1 + 8) - 1283153057 * ((2 * (a1 & 0x307AA705) - a1 - 813344518) ^ 0x805D5BCD);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1968BD234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  (*(v20 + 8 * a12))(a13 + a14, 0x100004077774924);
  v21 = (*(v20 + 8 * SHIDWORD(a11)))();
  *v19 = v21;
  v22 = 1812433253 * (((v21 ^ (v21 >> 30) ^ 0x9EECADFB) - 659851121) ^ (((HIDWORD(a12) - 3462) | 0xA19) - 1154398383 + (v21 ^ (v21 >> 30) ^ 0xFD76837E)) ^ ((v21 ^ (v21 >> 30) ^ 0x639A2E85) + 635304945)) + 909288051;
  v19[1] = v22;
  return (*(v20 + 8 * SHIDWORD(a12)))(v22, 3635116175, 4252402558, 3140568913, 1671048837, 635304945, 1812433253, 909288050, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1968BD31C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (v5 + a1 - 12);
  v8.i64[0] = 0xD8D8D8D8D8D8D8D8;
  v8.i64[1] = 0xD8D8D8D8D8D8D8D8;
  v9.i64[0] = 0xECECECECECECECECLL;
  v9.i64[1] = 0xECECECECECECECECLL;
  v10 = vaddq_s8(vsubq_s8(*(v5 + v4 - 16), vandq_s8(vaddq_s8(*(v5 + v4 - 16), *(v5 + v4 - 16)), v8)), v9);
  v7[-1] = vaddq_s8(vsubq_s8(*(v5 + v4 - 32), vandq_s8(vaddq_s8(*(v5 + v4 - 32), *(v5 + v4 - 32)), v8)), v9);
  *v7 = v10;
  return (*(v3 + 8 * ((((v5 & 0xFFFFFFE0) == 32) * ((v6 ^ 0xF6CD638F) + 4466)) ^ (a3 + v6 + 2600))))();
}

uint64_t sub_1968BD858(uint64_t a1, int a2)
{
  if (a2 + 1471143716 > ((v3 + 695) ^ 0xFFFFF2F3))
  {
    a2 = 1352679864 - a2;
  }

  return (*(v2 + 8 * ((6771 * (a2 - 676339933 > (((896 * ((v3 + 695) ^ 0xD0A) - 5290) | 0x881) ^ 0xFFFFF728))) ^ (v3 + 695))))(a1);
}

uint64_t sub_1968BD950()
{
  if (v0)
  {
    v3 = (v1 ^ 0xD33CFF7B) + 1878994152 + ((2 * v1) & 0xA679FEF6) == 1128016995;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((149 * v4) ^ 0x1033)))();
}

uint64_t sub_1968BDA44@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = a1 - 565;
  v19 = a14;
  *(v17 - 136) = a1 - 1575331711 * (((v17 - 136) & 0xA5197A8C | ~((v17 - 136) | 0xA5197A8C)) ^ 0x36BD1071) - 953;
  v15[1] = v19;
  v15[2] = v14;
  (*(v16 + 8 * (a1 + 3636)))(v17 - 136);
  v20 = a14;
  *(v17 - 136) = v18 - 1575331711 * ((v17 - 136) ^ 0x6C5B9502) - 388;
  v15[1] = v20;
  v15[2] = &a7;
  (*(v16 + 8 * (v18 + 4201)))(v17 - 136);
  *v15 = a14;
  *(v17 - 124) = v18 - 489239129 * ((2 * ((v17 - 136) & 0x8B0AE00) - (v17 - 136) - 145796615) ^ 0x4E6772CF) - 1724;
  v21 = (*(v16 + 8 * (v18 + 4203)))(v17 - 136);
  return (*(v16 + 8 * ((7973 * (*(v17 - 128) == ((v18 - 1208127047) & 0x7FFFEFBF ^ 0x4662E74A))) ^ v18)))(v21);
}

uint64_t sub_1968BDB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  if ((a13 - 2051530424) < 0xC09BD7EB != v13 > ((5 * (v14 ^ 0x154E)) ^ 0x3F642893u))
  {
    v16 = (a13 - 2051530424) < 0xC09BD7EB;
  }

  else
  {
    v16 = v13 - 1063528469 < a13 - 2051530424;
  }

  return (*(v15 + 8 * ((55 * v16) ^ v14)))();
}

uint64_t sub_1968BDC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v22 = 1068996913 * ((((v21 - 136) | 0xAB3BD0DE) - ((v21 - 136) & 0xAB3BD0DE)) ^ 0x7ED5314F);
  v23 = (*(a4 + 96) - ((2 * *(a4 + 96)) & 0x5B403A78) - 1382015684) ^ v22;
  *(v21 - 120) = a4;
  *(v21 - 136) = v23;
  *(v21 - 128) = v22 + a14;
  v24 = (*(v20 + 8 * a13))(v21 - 136);
  return (*(v20 + 8 * ((((*(a4 + 68) & 0x3Fu) + 64 > 0x3F) * (((a20 + 1580) | 0x10C0) - 6077)) ^ (a20 + 1172))))(v24);
}

uint64_t fp_dh_5ad79a3c3655e5ae6a54e14a311c6cca(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) ^ (1283153057 * ((-2 - ((a1 | 0x4C193725) + (~a1 | 0xB3E6C8DA))) ^ 0xFC3ECBED));
  v2 = 489239129 * ((v4 - 537704102 - 2 * (v4 & 0xDFF3495A)) ^ 0x66DB6A6C);
  v4[0] = 1477999485 - v2;
  v4[1] = v1 + 1156386898 + v2 + 3578;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 + 1156386898) + 8 * (v1 ^ 0xBB12E8E2) - 4))(v4);
}

void sv65rt7ugf9si4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_d2fbde02273c492664bdb5a71fae3083 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * (fp_dh_d2fbde02273c492664bdb5a71fae3083 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x60]) + 31);
  v1 = -91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v0) ^ 0x55);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v1 - 4) ^ 0x4Eu) - 4) ^ v1) + 404);
  v3 = *v0 - &v5 + *(v2 - 4);
  *v0 = 810526117 * v3 + 0x528FD8C35B4E87C9;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 | 0xFF3E0195) - (v6 & 0xFF3E0195)) ^ 0x93659497) + 1655634431;
  LOBYTE(v0) = -91 * (*v0 ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_d2fbde02273c492664bdb5a71fae3083) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_d2fbde02273c492664bdb5a71fae3083) ^ 0x55))] ^ 0x4E]) + 437) - 4;
  (*&v4[8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v0) ^ 0xDCu) - 8) ^ v0) + 53856])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1968BEAA8(double a1, double a2, double a3, double a4, double a5, __n128 a6)
{
  v8[-1] = a6;
  *v8 = a6;
  return (*(v10 + 8 * (((v7 != 0) * v9) ^ v6)))();
}

uint64_t sub_1968BEAD0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + v2 + v6 - 128 - 16);
  *(a1 + v2 + v5 - 31) = *(v1 + v2 + v6 - 128 - 32);
  *(a1 + v2 + v5 - 15) = v7;
  return (*(v4 + 8 * ((((v2 & 0x7FFFFFE0) == 32) * (((v3 - 99969435) & 0x5F57736) - 346)) ^ v3)))();
}

uint64_t sub_1968BEB34(uint64_t a1, uint64_t a2, int a3, int8x8_t a4, int8x8_t a5)
{
  v11 = v6 + 8;
  *(v9 + (a2 ^ v11) + v5) = vadd_s8(vsub_s8(*(v7 + (a2 ^ v11) + v5), vand_s8(vadd_s8(*(v7 + (a2 ^ v11) + v5), *(v7 + (a2 ^ v11) + v5)), a4)), a5);
  return (*(v10 + 8 * (((a1 == v11) * a3) ^ v8)))();
}

uint64_t sub_1968BEBA0@<X0>(uint64_t a1@<X1>, int a2@<W8>, int a3, int a4)
{
  v7 = a2 + v5 + 1442;
  v8 = v6 < a4 + 1801468304;
  if (a4 + 1801468304 < v6)
  {
    v8 = 1;
  }

  return (*(v4 + 8 * ((4573 * v8) ^ v7)))(0xE9A6D70123396331, a1, 0);
}

uint64_t sub_1968BEC7C(char a1, int a2)
{
  v8 = v2 + 2;
  v9 = (v4 - 2);
  *v9 = (v8 + v5) * (v8 ^ a1);
  *(v9 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v6 + 8 * (((v3 == 2) * a2) ^ v7)))();
}

uint64_t sub_1968BEEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 136) = a16;
  *(v19 - 128) = a15;
  *(v19 - 120) = v16 + 753662761 * ((v18 - 2061878067 - 2 * (v18 & 0x851A3CCD)) ^ 0xE000C786) - 1680;
  v20 = (*(v17 + 8 * (v16 ^ 0x15F6)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 116) <= 0x5818ABABu) * ((v16 + 2353) ^ 0x1B47 ^ (v16 - 1984881514) & 0x764ED7C7)) ^ v16)))(v20);
}

void fp_dh_6c238f0067095b0e81bf5f2d9e67c000(uint64_t a1)
{
  v1 = *(a1 + 4) - 1621291457 * (((a1 | 0xE0C66939) - a1 + (a1 & 0x1F3996C6)) ^ 0xD6D1E8A0);
  __asm { BRAA            X9, X17 }
}

void fp_dh_6c9779a847af0d28571ffbe8c0741682(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) - 632730753;
  v3 = *(*a1 + 4) - 632730753;
  v4 = (v2 < -2103874469) ^ (v3 < -2103874469);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < -2103874469;
  }

  else
  {
    v6 = v5;
  }

  v1 = *(a1 + 16) - 753662761 * ((a1 & 0x35B0A77B | ~(a1 | 0x35B0A77B)) ^ 0xAF55A3CF);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1968BF244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 8 * (v7 ^ 0x1ECE)))(STACK[0x340]);
  v8 = STACK[0x370];
  *v6 = 0;
  return (STACK[0x460])(LODWORD(STACK[0x350]), 4558, 4912, 930994060, 3363973007, v8, 4294961904);
}

uint64_t sub_1968BF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x528] + 24);
  STACK[0x600] = v7;
  return (*(a6 + 8 * (((v7 == 0) * ((v6 + 4137) ^ 0x144A ^ (v6 + 11668453) & 0xFF4DEFFE)) ^ v6)))();
}

uint64_t sub_1968BF3B4()
{
  STACK[0x3F8] = 0;
  v2 = STACK[0x5D0];
  STACK[0x440] = *(v1 + 8 * v0);
  LODWORD(STACK[0x994]) = 1792858949;
  STACK[0x998] = &STACK[0x3F8];
  return (*(v1 + 8 * ((((((((v0 + 7) | 8) + 35) ^ 0x67) + 1) ^ (v2 == 0)) & 1 | (4 * (((((((v0 + 7) | 8) + 35) ^ 0x67) + 1) ^ (v2 == 0)) & 1))) ^ ((v0 + 4103) | 8))))();
}

uint64_t sub_1968BF438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x710];
  *(v7 + 104) = 16;
  *(v7 + 103) = *(v8 + 23);
  *(v7 + 102) = *(v8 + 22);
  *(v7 + 101) = *(v8 + 21);
  *(v7 + 100) = *(v8 + 20);
  *(v7 + 99) = *(v8 + 19);
  *(v7 + 98) = *(v8 + 18);
  *(v7 + 97) = *(v8 + 17);
  *(v7 + 96) = *(v8 + 16);
  *(v7 + 95) = *(v8 + 15);
  *(v7 + 94) = *(v8 + 14);
  *(v7 + 93) = *(v8 + 13);
  *(v7 + 92) = *(v8 + 12);
  *(v7 + 91) = *(v8 + 11);
  *(v7 + 90) = *(v8 + 10);
  *(v7 + 89) = *(v8 + 9);
  *(v7 + 88) = *(v8 + 8);
  *(v7 + 84) = *v8;
  return (*(a6 + 8 * (((*(v8 + 4) == 0) * ((v6 + 4427) ^ 0x1693)) ^ (v6 + 4427))))();
}

uint64_t sub_1968BF4FC()
{
  v5 = (v2 - 1617) | 0x658;
  v8 = *v4;
  LODWORD(v7) = (v2 + 1574) ^ ((((&v7 | 0xFEA26F51) + (~&v7 | 0x15D90AE)) ^ 0x8853319C) * v3);
  (*(v1 + 8 * (v2 ^ 0x1C8C)))(&v7);
  v7 = v0;
  HIDWORD(v8) = (v5 - 402402929) ^ (1825732043 * (&v7 ^ 0x965337));
  (*(v1 + 8 * (v5 ^ 0x1D46)))(&v7);
  return (v8 - 1906281716);
}

uint64_t sub_1968BF658()
{
  LODWORD(STACK[0x784]) = 1906281716;
  STACK[0x4A0] = STACK[0x508];
  return (*(v0 + 8 * ((2724 * (LODWORD(STACK[0x784]) == (v1 ^ 0x719F82E8))) ^ (v1 - 3198))))();
}

uint64_t sub_1968BF6B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v38 = *(&a21 + v33 + 72);
  v39 = ((2 * v33) & 0xBB5B7F70) + (v33 ^ 0xDDADBFBA);
  *(a1 + v35 - a4 - 443109415 + v39) = v38 ^ 0x87;
  v40 = v39 + v34;
  *(a1 + v40) = (BYTE1(v38) ^ 7) - ((2 * (BYTE1(v38) ^ 7)) & 0xD8) - 20;
  *(a1 + v40 + 1) = (BYTE2(v38) ^ 0x47) - ((2 * (BYTE2(v38) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v40 + 2) = (HIBYTE(v38) ^ 0x7C) - 2 * ((HIBYTE(v38) ^ 0x7C) & 0x6D ^ HIBYTE(v38) & 1) - 20;
  return (*(v37 + 8 * (((v33 + 4 >= a33) * v36) ^ v35)))();
}

void fp_dh_bd835a635de22bf134d326b69c5bfd15(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 1575331711 * ((((2 * a1) | 0xCC21EB6A) - a1 - 1712387509) ^ 0xA4B60B7);
  v2 = (*a1 ^ (127 * ((((2 * a1) | 0x6A) - a1 + 75) ^ 0xB7)));
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x177C)) - 4;
  (*&v3[8 * (v1 ^ 0xFF1)])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 5053), fp_dh_481a53f8dbedb85870458a0c09917e3b);
  v4 = *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x157C)) - 4);
  v6 = v1 + 1790939281 * (((&v5 | 0xC4851594) - (&v5 & 0xC4851594)) ^ 0x3C5935D5) - 2115;
  v5 = v4;
  (*&v3[8 * (v1 ^ 0xF7D)])(&v5);
  __asm { BRAA            X9, X17 }
}

void fp_dh_35de752956bc54c5de7b718e6a494c85(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) - 654144011 * ((-2 - ((~a1 | 0x2B428F7A) + (a1 | 0xD4BD7085))) ^ 0x796F2E6);
  v2 = 1068996913 * ((2 * (v6 & 0x4C0A80E0) - v6 + 871726878) ^ 0xE61B9E8F);
  v7 = &v4;
  v6[2] = v1 + v2 + 46798535;
  v6[0] = v2 ^ 0xADA01D3E;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x2EB)) - 4;
  (*&v3[8 * (v1 ^ 0x1A36)])(v6);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1968BFE54(uint64_t result)
{
  v2 = *(v1 + 8);
  *result = 0;
  *(result + 8) = 0x56CDB42F56CDB42FLL;
  *(result + 16) = 0x6C1D2F7D12E85147;
  *(result + 24) = 1906281716;
  *v2 = result;
  *v1 = 1906281716;
  return result;
}

uint64_t sub_1968BFEA0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = ((8 * a1) ^ 0xFFFFFFFFFFFFA77FLL) + v5;
  *(v7 + v8) = *(v4 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v2 + (v8 & 0xF)) ^ *(v3 + (v8 & 0xF)) ^ (-93 * (v8 & 0xF));
  return (*(v6 + 8 * ((1597 * (v8 == 0)) ^ (a1 + 1925))))();
}

uint64_t sub_1968BFF40@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x980] = v2;
  v3 = STACK[0x520];
  STACK[0x988] = STACK[0x520];
  return (*(a1 + 8 * ((1348 * (v2 - v3 > (((a2 ^ 0x13FCu) + 5462) ^ 0x1654uLL))) ^ a2)))();
}

uint64_t sub_1968BFF94(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = v8 + 32;
  v11 = (a3 ^ v10) + v6;
  v12 = *(v4 + v11 - 15);
  v13 = *(v4 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((a2 == v10) * a4) ^ (v5 + v7 + 1298))))();
}

void sub_1968BFF9C()
{
  if (v4 == 364443027 || v4 == 364443024)
  {
    v6 = (v2 + 551) | 0x87Bu;
    v7 = (v2 - 2852);
    v8 = ((v3 ^ 0x690D4C9EABEBBD8CLL) - 0xD0CC35C230C0A9ELL) ^ v3 ^ ((v3 ^ 0x64A2E299B10DB627) - 0xA36D5B39EA0135) ^ ((v3 ^ 0x9281FE9A1C7E0344) + 0x97F8EA76B6648F5 + v7) ^ (((v6 - 0x4D020A07180587ELL) ^ v3) + 0x60D1AF62F967F711);
    *(v5 - 128) = HIBYTE(v8) ^ 0x64;
    *(v5 - 127) = BYTE6(v8) ^ 1;
    *(v5 - 126) = BYTE5(v8) ^ 0x8F;
    *(v5 - 125) = BYTE4(v8) ^ 0xC2;
    *(v5 - 124) = ((((v3 ^ 0xABEBBD8C) - 587991710) ^ v3 ^ ((v3 ^ 0xB10DB627) - 971637045) ^ ((v3 ^ 0x1C7E0344) + 1801865461 + v7) ^ (((v6 - 1904236670) ^ v3) - 110627055)) >> 24) ^ 0x88;
    *(v5 - 123) = ((((v3 ^ 0xABEBBD8C) - 587991710) ^ v3 ^ ((v3 ^ 0xB10DB627) - 971637045) ^ ((v3 ^ 0x1C7E0344) + 1801865461 + v7) ^ (((v6 - 1904236670) ^ v3) - 110627055)) >> 16) ^ 0xE7;
    *(v5 - 122) = ((((v3 ^ 0xBD8C) - 2718) ^ v3 ^ ((v3 ^ 0xB627) - 309) ^ ((v3 ^ 0x344) + 18677 + v2 - 2852) ^ (((((v2 + 551) | 0x87B) - 22654) ^ v3) - 2287)) >> 8) ^ 0xB7;
    *(v5 - 121) = ((v3 ^ 0x8C) + 98) ^ v3 ^ ((v3 ^ 0x27) - 53) ^ ((v3 ^ 0x44) - 11 + v2 - 36) ^ (((((v2 + 39) | 0x7B) - 126) ^ v3) + 17) ^ 0x12;
    __asm { BRAA            X14, X17 }
  }

  *(v0 + 12) = 1906239315;
}

uint64_t sub_1968BFFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (a2 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (v3 + 1335574325)) ^ (v3 + 1335578208))))();
}

uint64_t sub_1968C005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (v6 - 36676306) & 0x22FB3AF;
  v8 = (((*(STACK[0x710] + 116) ^ 0x351085AB) - 890275243) ^ ((*(STACK[0x710] + 116) ^ 0xD34762DC) + 750296356) ^ (((v7 + 2132872199) ^ *(STACK[0x710] + 116)) - 2132877228)) - 1331884229;
  v9 = (v8 ^ 0xC2D1C109) & (2 * (v8 & 0xE8D9E9A1)) ^ v8 & 0xE8D9E9A1;
  v10 = ((2 * (v8 ^ 0x3C1D14B)) ^ 0xD63071D4) & (v8 ^ 0x3C1D14B) ^ (2 * (v8 ^ 0x3C1D14B)) & 0xEB1838EA;
  v11 = v10 ^ 0x2908082A;
  v12 = (v10 ^ 0xC2002080) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xAC60E3A8) & v11 ^ (4 * v11) & 0xEB1838E8;
  v14 = (v13 ^ 0xA80020A0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x43181842)) ^ 0xB1838EA0) & (v13 ^ 0x43181842) ^ (16 * (v13 ^ 0x43181842)) & 0xEB1838E0;
  v16 = v14 ^ 0xEB1838EA ^ (v15 ^ 0xA1000800) & (v14 << 8);
  *(STACK[0x710] + 116) = v8 ^ (2 * ((v16 << 16) & 0x6B180000 ^ v16 ^ ((v16 << 16) ^ 0x38EA0000) & (((v15 ^ 0x4A18304A) << 8) & 0x6B180000 ^ 0x63000000 ^ (((v15 ^ 0x4A18304A) << 8) ^ 0x18380000) & (v15 ^ 0x4A18304A)))) ^ 0xF78F60AE;
  v17 = STACK[0x5F0];
  v18 = STACK[0x568];
  v19 = &STACK[0x9A0] + STACK[0x568];
  STACK[0x4B0] = v19;
  v20 = v19 + 16;
  STACK[0x810] = (v19 + 16);
  STACK[0x5C8] = (v19 + 48);
  STACK[0x568] = v18 + 80;
  (*(a6 + 8 * (v7 ^ 0x94A)))();
  v21 = (*(STACK[0x370] + 8 * (v7 + 1866)))(v20, 0, 32);
  v22 = STACK[0x370];
  STACK[0x618] = 0;
  STACK[0x560] = 0;
  LODWORD(STACK[0x4A4]) = -1720256293;
  STACK[0x688] = 0;
  LODWORD(STACK[0x57C]) = 0;
  STACK[0x738] = v17;
  return (*(v22 + 8 * (((((v7 - 4931) | 0x309) ^ 0x33E) * (v17 == 0)) ^ v7)))(v21);
}

void sub_1968C02F0()
{
  if (v0 == 1476970716)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 28) = v2;
}

uint64_t sub_1968C0350(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, unsigned int a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51)
{
  v55 = (*(v54 - 132) - 1953415482) & 0x746EBEFF;
  v56 = a5 + 16;
  v57 = v53 ^ 0xB903B785;
  v58 = (v55 - 1477796521) ^ v52;
  *(v54 - 120) = v56;
  *(v54 - 136) = 0;
  v59 = (v55 + 2013916638) & 0x87F6145B;
  v60 = (*(v54 - 144) + v56);
  v61 = (*(a28 + (v60[2] ^ 0xCBLL)) ^ 0xB6) << 8;
  v62 = v55;
  v63 = v60[5];
  *(v54 - 132) = v59;
  v64 = ((*(a24 + (v63 ^ 0x7B)) ^ 0xC2 ^ ((v59 ^ v63 ^ 0xC7) - ((2 * (v59 ^ v63 ^ 0xC7) + 38) & 0x7E) - 46)) << 16) | ((*(a28 + (v60[6] ^ 0x34)) ^ 0xBD) << 8) | (*(a23 + (v60[7] ^ 0xE5)) + (v60[7] ^ 0x47) + 78) ^ 0x5A | ((*(a25 + (v60[4] ^ 0xE5)) ^ 0x30) << 24);
  v65 = (v61 & 0xFFFFFF00 | ((*(a25 + (*v60 ^ 0x61)) ^ 0x62) << 24) | (((-85 - (v60[1] ^ 0xFB) - ((88 - 2 * (v60[1] ^ 0xFB)) & 0x7E)) ^ *(a24 + (v60[1] ^ 0x1CLL))) << 16) | (*(a23 + (v60[3] ^ 0xDLL)) + (v60[3] ^ 0xAF) + 78) ^ 0x61) ^ v58;
  v66 = (((v60[11] ^ 0x9B) + *(a23 + (v60[11] ^ 0x39)) + 78) ^ 0xEE | ((*(a28 + (v60[10] ^ 0x35)) ^ 0x46) << 8) | ((*(a25 + (v60[8] ^ 0x2DLL)) ^ 0x99999999) << 24) | ((*(a24 + (v60[9] ^ 0x8FLL)) ^ ((v60[9] ^ 0x68) - ((2 * (v60[9] ^ 0x68) + 38) & 0x7E) - 46) ^ 0x7C) << 16)) ^ v51 ^ 0xB7AC7173;
  v67 = *(v54 - 156) ^ v57 ^ ((*(a23 + (v60[15] ^ 0x42)) + (v60[15] ^ 0xE0) + 78) ^ 0x96 | ((*(a25 + (v60[12] ^ 6)) ^ 0x45) << 24) | ((*(a28 + (v60[14] ^ 0x69)) ^ 0x12) << 8) | ((*(a24 + (v60[13] ^ 0xEBLL)) ^ 0x27 ^ ((v60[13] ^ 0xC) - ((2 * (v60[13] ^ 0xC) + 38) & 0x7E) - 46)) << 16));
  v68 = *(v54 - 156) ^ v57 ^ (*(a23 + (v60[15] ^ 0x42)) + (v60[15] ^ 0xE0) + 78) ^ 0x96 ^ 0xA9;
  v69 = a19 ^ (v66 + 579037299 - ((2 * v66) & 0x4506D0E6));
  v70 = HIBYTE(v69);
  LODWORD(v63) = a18 ^ (v65 - 958829066 - ((2 * v65) & 0x8DB2DBEC));
  v71 = *(v54 - 160) ^ a1 ^ 0x54B6643A ^ 0xEB1D6552 ^ v64;
  v72 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v62 - 351);
  v73 = *(v72 + 4 * BYTE3(v63));
  v74 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v62 ^ 0x318)) - 8;
  *(v54 - 124) = -356591120 - 1432699841 * *&v74[4 * (a19 ^ (v66 + 115 - ((2 * v66) & 0xE6)))];
  v75 = -356591120 - 1432699841 * *&v74[4 * v71];
  v76 = 1929608305 * *(v72 + 4 * ((v67 ^ 0xCC6582A9) >> 24)) + 1898668909;
  *(v54 - 116) = v62;
  v77 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v62 ^ 0x3BB)) - 4;
  v78 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v62 - 50) - 8;
  v79 = (1929608305 * v73 + 1898668909) ^ *(v54 - 164) ^ *&v77[4 * (BYTE1(v69) ^ 0x11)] ^ (BYTE1(v69) + 1202112037 - ((v69 >> 7) & 0x4A)) ^ (*&v78[4 * BYTE2(v71)] + 1416390831) ^ (-356591120 - 1432699841 * *&v74[4 * v68]);
  v80 = *(v54 - 168) ^ (*&v78[4 * BYTE2(v69)] + 1416390831) ^ (-356591120 - 1432699841 * *&v74[4 * v63]) ^ *&v77[4 * (((v67 ^ 0x82A9) >> 8) ^ 0x11)] ^ (((v67 ^ 0x82A9) >> 8) + 1202112037 - ((v67 >> 7) & 0x4A)) ^ (1929608305 * *(v72 + 4 * HIBYTE(v71)) + 1898668909) ^ 0x50BAA9D5;
  v81 = (BYTE1(v63) + 1202112037 - ((v63 >> 7) & 0x4A)) ^ *(v54 - 172) ^ (*&v78[4 * ((v67 ^ 0xCC6582A9) >> 16)] + 1416390831) ^ v75 ^ *&v77[4 * (BYTE1(v63) ^ 0x11)] ^ (1929608305 * *(v72 + 4 * v70) + 1898668909);
  v82 = *(v54 - 176) ^ v76 ^ (BYTE1(v71) + 1202112037 - ((v71 >> 7) & 0x4A)) ^ *&v77[4 * (BYTE1(v71) ^ 0x11)] ^ *(v54 - 124) ^ (*&v78[4 * BYTE2(v63)] + 1416390831) ^ 0x9983FA09;
  v83 = *&v78[4 * BYTE2(v80)] + 1416390831;
  v84 = -1432699841 * *&v74[4 * v80] - 356591120;
  v85 = (-356591120 - 1432699841 * *&v74[4 * (v79 ^ 0x66)]) ^ *(v54 - 180) ^ (1929608305 * *(v72 + 4 * HIBYTE(v80)) + 1898668909) ^ *&v77[4 * (BYTE1(v82) ^ 0x11)] ^ (BYTE1(v82) + 1202112037 - ((v82 >> 7) & 0x4A)) ^ (*&v78[4 * ((v81 ^ 0x667DDD) >> 16)] + 1416390831);
  v86 = (BYTE1(v80) + 1202112037 - ((v80 >> 7) & 0x4A)) ^ *(v54 - 188) ^ *&v77[4 * (BYTE1(v80) ^ 0x11)] ^ (*&v78[4 * (BYTE2(v79) ^ 0x34)] + 1416390831) ^ (1929608305 * *(v72 + 4 * HIBYTE(v82)) + 1898668909) ^ (-1432699841 * *&v74[4 * (v81 ^ 0xDD)] - 356591120);
  v87 = *&v77[4 * (((v79 ^ 0xB566) >> 8) ^ 0x11)] ^ *(v54 - 184) ^ (((v79 ^ 0xB566) >> 8) + 1202112037 - (((v79 ^ 0x3F5DB566) >> 7) & 0x4A)) ^ (*&v78[4 * BYTE2(v82)] + 1416390831) ^ (1929608305 * *(v72 + 4 * HIBYTE(v81)) + 1898668909) ^ v84;
  v88 = a51 ^ (((v81 ^ 0x7DDD) >> 8) + 1202112037 - (((v81 ^ 0x667DDD) >> 7) & 0x4A)) ^ (1929608305 * *(v72 + 4 * (HIBYTE(v79) ^ 0x9A)) + 1898668909) ^ (-356591120 - 1432699841 * *&v74[4 * (*(v54 - 176) ^ v76 ^ (BYTE1(v71) + 37 - ((v71 >> 7) & 0x4A)) ^ v77[4 * (BYTE1(v71) ^ 0x11)] ^ *(v54 - 124) ^ (v78[4 * BYTE2(v63)] - 81) ^ 9)]) ^ v83 ^ *&v77[4 * (((v81 ^ 0x7DDD) >> 8) ^ 0x11)] ^ 0x9C656D19;
  v89 = *&v77[4 * (((v86 ^ 0x2276) >> 8) ^ 0x11)];
  HIDWORD(v90) = v89 ^ 0x625;
  LODWORD(v90) = v89 ^ 0x47A6C000;
  v91 = 1929608305 * *(v72 + 4 * HIBYTE(v88)) + 1898668909;
  LODWORD(v63) = a47 ^ (BYTE1(v88) + 1202112037 - ((v88 >> 7) & 0x4A)) ^ *&v77[4 * (BYTE1(v88) ^ 0x11)] ^ (*&v78[4 * (BYTE2(v86) ^ 0xD2)] + 1416390831) ^ (-356591120 - 1432699841 * *&v74[4 * (v85 ^ 0xE1)]) ^ (1929608305 * *(v72 + 4 * ((v87 ^ 0xCF595525) >> 24)) + 1898668909) ^ 0x5B69F0DB;
  v92 = a49 ^ (*&v78[4 * ((v87 ^ 0xCF595525) >> 16)] + 1416390831) ^ (-1432699841 * *&v74[4 * v88] - 356591120) ^ (1929608305 * *(v72 + 4 * ((v85 ^ 0xC2B2D4E1) >> 24)) + 1898668909) ^ __ROR4__((v90 >> 12) ^ ((v86 ^ 0x3AD22276) << 12) & 0xFF00000 ^ 0xA71BC2DC, 20) ^ 0xCF2839C6;
  v93 = a48 ^ (((v85 ^ 0xD4E1) >> 8) + 1202112037 - (((v85 ^ 0xC2B2D4E1) >> 7) & 0x4A)) ^ (*&v78[4 * BYTE2(v88)] + 1416390831) ^ (-356591120 - 1432699841 * *&v74[4 * (v87 ^ 0x90)]) ^ (1929608305 * *(v72 + 4 * (HIBYTE(v86) ^ 0x9F)) + 1898668909) ^ *&v77[4 * (((v85 ^ 0xD4E1) >> 8) ^ 0x11)];
  v94 = v93 ^ 0xCABFC280;
  v95 = a50 ^ (((v87 ^ 0x5525) >> 8) + 1202112037 + (~((v87 ^ 0xCF595525) >> 7) | 0xFFFFFFB5) + 1) ^ (*&v78[4 * (BYTE2(v85) ^ 0xDB)] + 1416390831) ^ *&v77[4 * (((v87 ^ 0x5525) >> 8) ^ 0x11)] ^ v91 ^ (-356591120 - 1432699841 * *&v74[4 * (v86 ^ 0x76)]) ^ 0x7734B566;
  v96 = 1929608305 * *(v72 + 4 * BYTE3(v63)) + 1898668909;
  v97 = *&v74[4 * v92];
  v98 = 1929608305 * *(v72 + 4 * ((v93 ^ 0xCABFC280) >> 24)) + 1898668909;
  v99 = ((v93 ^ 0xC280) >> 8);
  *(v54 - 124) = *&v77[4 * (v99 ^ 0x11)];
  v100 = -1432699841 * v97 - 356591120;
  v101 = v99 + 1202112037 - ((v93 >> 7) & 0x4A);
  v102 = BYTE1(v63) + 1202112037 - ((v63 >> 7) & 0x4A);
  v103 = *&v78[4 * BYTE2(v63)] + 1416390831;
  v104 = *&v77[4 * (BYTE1(v63) ^ 0x11)];
  LODWORD(v63) = (BYTE1(v92) + 1202112037 - ((v92 >> 7) & 0x4A)) ^ 0x5A7A5512 ^ *&v77[4 * (BYTE1(v92) ^ 0x11)] ^ (*&v78[4 * BYTE2(v95)] + 1416390831) ^ v98 ^ (-1432699841 * *&v74[4 * v63] - 356591120);
  v105 = v63 + a21;
  v106 = v63 & a21;
  LODWORD(v63) = v96 ^ a46 ^ (*&v78[4 * BYTE2(v94)] + 1416390831) ^ (BYTE1(v95) + 1202112037 - ((v95 >> 7) & 0x4A)) ^ v100 ^ *&v77[4 * (BYTE1(v95) ^ 0x11)];
  v107 = a17 ^ v102 ^ (*&v78[4 * BYTE2(v92)] + 1416390831) ^ (1929608305 * *(v72 + 4 * HIBYTE(v95)) + 1898668909) ^ (-1432699841 * *&v74[4 * v94] - 356591120) ^ v104;
  v108 = a16 ^ v101 ^ v103 ^ *(v54 - 124) ^ (-1432699841 * *&v74[4 * v95] - 356591120) ^ (1929608305 * *(v72 + 4 * HIBYTE(v92)) + 1898668909);
  v109 = (v105 - 2 * v106) ^ 0xE6F70F92;
  v110 = -1432699841 * *&v74[4 * v108] - 356591120;
  v111 = (1929608305 * *(v72 + 4 * HIBYTE(v107)) + 1898668909) ^ (*&v78[4 * BYTE2(v108)] + 1416390831) ^ (-1432699841 * *&v74[4 * ((v105 - 2 * v106) ^ 0x92)] - 356591120);
  v112 = *&v77[4 * (BYTE1(v109) ^ 0x11)] ^ a45 ^ (-1432699841 * *&v74[4 * (a17 ^ v102 ^ (v78[4 * BYTE2(v92)] - 81) ^ (113 * *(v72 + 4 * HIBYTE(v95)) + 109) ^ (63 * v74[4 * v94] - 16) ^ v104)] - 356591120) ^ (1929608305 * *(v72 + 4 * HIBYTE(v108)) + 1898668909) ^ (BYTE1(v109) + 1202112037 - ((v109 >> 7) & 0x4A)) ^ (*&v78[4 * (BYTE2(v63) ^ 9)] + 1416390831);
  v113 = (*&v78[4 * BYTE2(v107)] + 1416390831) ^ a44 ^ (BYTE1(v108) + 1202112037 - ((v108 >> 7) & 0x4A)) ^ (-356591120 - 1432699841 * *&v74[4 * (v63 ^ 0x55)]) ^ *&v77[4 * (BYTE1(v108) ^ 0x11)] ^ (1929608305 * *(v72 + 4 * HIBYTE(v109)) + 1898668909);
  v114 = a22 ^ BYTE1(v63) ^ *&v77[4 * (BYTE1(v63) ^ 0x4D)] ^ 0x2E449B87 ^ (v111 + 1202112037 - ((2 * v111) & 0x8F4D8C4A));
  v115 = a42 ^ (BYTE1(v107) + 1202112037 - ((v107 >> 7) & 0x4A)) ^ (*&v78[4 * BYTE2(v109)] + 1416390831) ^ (1929608305 * *(v72 + 4 * (BYTE3(v63) ^ 0x65)) + 1898668909) ^ v110 ^ *&v77[4 * (BYTE1(v107) ^ 0x11)];
  v116 = ((v113 ^ 0xB6C4) >> 8);
  *(v54 - 128) = v116;
  *(v54 - 124) = *&v77[4 * (v116 ^ 0x11)];
  v117 = -1432699841 * *&v74[4 * v114] - ((1429567614 * *&v74[4 * v114] - 713182240) & 0x8F4D8C4A) + 845520917;
  v118 = a43 ^ (((v115 ^ 0x102D) >> 8) + 1202112037 - ((v115 >> 7) & 0x4A)) ^ *&v77[4 * (((v115 ^ 0x102D) >> 8) ^ 0x11)] ^ (*&v78[4 * (BYTE2(v112) ^ 0x64)] + 1416390831) ^ (-1432699841 * *&v74[4 * (v113 ^ 0x71)] - 356591120) ^ (1929608305 * *(v72 + 4 * HIBYTE(v114)) + 1898668909);
  v119 = a39 ^ (((v112 ^ 0xBC16) >> 8) + 1202112037 - (((v112 ^ 0x300DBC16u) >> 7) & 0x4A)) ^ (-1432699841 * *&v74[4 * (v115 ^ 0x2D)] - 356591120) ^ (*&v78[4 * BYTE2(v114)] + 1416390831) ^ (1929608305 * *(v72 + 4 * ((v113 ^ 0x248EB6C4u) >> 24)) + 1898668909) ^ *&v77[4 * (((v112 ^ 0xBC16) >> 8) ^ 0x11)] ^ 0xEFE4A621;
  v120 = a40 ^ (BYTE1(v114) + 1202112037 - ((v114 >> 7) & 0x4A)) ^ (-1432699841 * *&v74[4 * (v112 ^ 0xA3)] - 356591120) ^ (1929608305 * *(v72 + 4 * ((v115 ^ 0xE04102D) >> 24)) + 1898668909) ^ *&v77[4 * (BYTE1(v114) ^ 0x11)] ^ (*&v78[4 * ((v113 ^ 0x248EB6C4u) >> 16)] + 1416390831) ^ 0x2B5F748C;
  v121 = a41 ^ *(v54 - 124) ^ *(v54 - 128) ^ (1929608305 * *(v72 + 4 * ((v112 ^ 0x300DBC16u) >> 24)) + 1898668909) ^ (*&v78[4 * ((v115 ^ 0xE04102D) >> 16)] + 1416390831) ^ 0x2564BCA3 ^ v117;
  v122 = -356591120 - 1432699841 * *&v74[4 * ((a41 ^ *(v54 - 124) ^ *(v54 - 128) ^ (113 * *(v72 + 4 * ((v112 ^ 0x300DBC16u) >> 24)) + 109) ^ (v78[4 * ((v115 ^ 0xE04102D) >> 16)] - 81)) ^ 0xA3 ^ v117)];
  v123 = 1929608305 * *(v72 + 4 * HIBYTE(v121)) + 1898668909;
  v124 = *&v78[4 * BYTE2(v121)] + 1416390831;
  v125 = (*&v78[4 * ((v118 ^ 0xCB55C852) >> 16)] + 1416390831) ^ (1929608305 * *(v72 + 4 * HIBYTE(v119)) + 1898668909);
  v126 = -356591120 - 1432699841 * *&v74[4 * (v118 ^ 0x52)];
  v127 = BYTE1(v121) ^ a36 ^ *&v77[4 * (BYTE1(v121) ^ 0x11)] ^ (-356591120 - 1432699841 * *&v74[4 * v120]) ^ (v125 + 1202112037 - ((2 * v125) & 0x8F4D8C4A));
  v128 = v122 ^ a37 ^ (((v118 ^ 0xC852) >> 8) + 1202112037 - ((v118 >> 7) & 0x4A)) ^ (1929608305 * *(v72 + 4 * HIBYTE(v120)) + 1898668909) ^ (*&v78[4 * BYTE2(v119)] + 1416390831) ^ *&v77[4 * (((v118 ^ 0xC852) >> 8) ^ 0x11)];
  v129 = (BYTE1(v120) + 1202112037 - ((v120 >> 7) & 0x4A)) ^ a38 ^ *&v77[4 * (BYTE1(v120) ^ 0x11)] ^ v124 ^ (1929608305 * *(v72 + 4 * ((v118 ^ 0xCB55C852) >> 24)) + 1898668909) ^ (-356591120 - 1432699841 * *&v74[4 * v119]);
  v130 = a34 ^ *&v77[4 * (BYTE1(v119) ^ 0x11)] ^ (BYTE1(v119) + 1202112037 - ((v119 >> 7) & 0x4A)) ^ v126 ^ (*&v78[4 * BYTE2(v120)] + 1416390831) ^ v123 ^ 0xC13564DC;
  v131 = (v128 ^ 0xE46E007D) >> 24;
  v132 = *(v72 + 4 * HIBYTE(v130));
  v133 = -1432699841 * *&v74[4 * (v127 ^ 0xD0)] - 356591120;
  v134 = 1929608305 * *(v72 + 4 * (HIBYTE(v127) ^ 0x20)) + 1898668909;
  LODWORD(v63) = -1432699841 * *&v74[4 * (v128 ^ 0x7D)] - 356591120;
  v135 = BYTE1(v127);
  v136 = *&v77[4 * (BYTE1(v127) ^ 0xC3)];
  v137 = 1929608305 * v132 - 1194186350 - ((-435750686 * v132 - 497629478) & 0x8F4D8C4A);
  v138 = *&v78[4 * (BYTE2(v127) ^ 0xD5)] + 1416390831;
  v139 = *&v77[4 * (BYTE1(v130) ^ 0x11)];
  v140 = (BYTE1(v130) ^ 0x5A7A5512) + (v139 ^ 0x47A6C625) + ((2 * ((v139 ^ 0x4000012D) & (BYTE1(v130) ^ 0x5A7A5512) ^ ((v130 >> 8) & 8 | 0x2202C100))) ^ 0xBFBEF7FF) + 1;
  v141 = *&v78[4 * ((v128 ^ 0xE46E007D) >> 16)] + 1416390831;
  v142 = *&v77[4 * (BYTE1(v128) ^ 0x11)];
  v143 = BYTE1(v128) + 1202112037 - ((v128 >> 7) & 0x4A);
  v144 = *&v78[4 * (BYTE2(v129) ^ 4)] + 1416390831;
  v145 = -356591120 - 1432699841 * *&v74[4 * (v129 ^ 0x2D)];
  v146 = a12 ^ ((BYTE1(v129) ^ 0x10) + 1202112037 - ((v129 >> 7) & 0x4A)) ^ *&v77[4 * (BYTE1(v129) ^ 1)] ^ v138 ^ (-356591120 - 1432699841 * *&v74[4 * v130]) ^ (1929608305 * *(v72 + 4 * v131) + 1898668909);
  v147 = a35 ^ (1929608305 * *(v72 + 4 * (HIBYTE(v129) ^ 0x25)) + 1898668909) ^ v133 ^ v143 ^ v142 ^ (*&v78[4 * BYTE2(v130)] + 1416390831);
  v148 = v147 ^ 0x9C55C852;
  v149 = a33 ^ v136 ^ v135 ^ v141 ^ v145 ^ 0xEE348794 ^ v137;
  v150 = a32 ^ v134 ^ v63 ^ v144 ^ 0x8F4E363 ^ v140;
  LODWORD(v63) = *(v72 + 4 * HIBYTE(v150));
  v151 = *&v77[4 * (BYTE1(v150) ^ 0x11)];
  v152 = v146 ^ 0x7C5F7439;
  v153 = BYTE1(v150) + 1202112037 - ((v150 >> 7) & 0x4A);
  v154 = *&v77[4 * (BYTE1(v149) ^ 0x11)];
  v155 = (-497629478 - 435750686 * v63) & 0x8F4D8C4A;
  v156 = 1929608305 * v63 - 1194186350;
  v157 = *&v78[4 * ((v147 ^ 0x9C55C852) >> 16)];
  v158 = ((v146 ^ 0x7439) >> 8);
  LODWORD(v63) = *&v77[4 * (v158 ^ 0x11)];
  v159 = v156 - v155;
  v160 = v158 + 1202112037 - (((v146 ^ 0x7C5F7439u) >> 7) & 0x4A);
  v161 = *&v74[4 * (v146 ^ 0x8C)];
  v162 = *&v74[4 * v150];
  v163 = *&v74[4 * v149];
  v164 = *&v74[4 * (v147 ^ 0x52)];
  v165 = ((v147 ^ 0xC852) >> 8);
  LODWORD(v74) = *&v77[4 * (v165 ^ 0x11)];
  LODWORD(v77) = *&v78[4 * BYTE2(v152)];
  v166 = v165 + 1202112037 - ((v147 >> 7) & 0x4A);
  v167 = *&v78[4 * BYTE2(v149)];
  LODWORD(v78) = *&v78[4 * BYTE2(v150)];
  v168 = *(v72 + 4 * HIBYTE(v148));
  v169 = v154 ^ a29 ^ (v157 + 1416390831) ^ BYTE1(v149) ^ (-1432699841 * v161 - 356591120) ^ v159;
  v170 = -1432699841 * v162 - 356591120;
  v171 = v167 + 1416390831;
  v172 = a15 ^ v153 ^ v151 ^ (1929608305 * *(v72 + 4 * HIBYTE(v149)) + 1898668909) ^ (v77 + 1416390831) ^ (-1432699841 * v164 - 356591120) ^ 0xE48F1AC0;
  v173 = v169 ^ 0xBBDD0A63;
  v174 = a30 ^ v166 ^ (1929608305 * *(v72 + 4 * HIBYTE(v152)) + 1898668909) ^ (-1432699841 * v163 - 356591120) ^ v74 ^ (v78 + 1416390831) ^ 0xEED59DFB;
  LODWORD(v63) = a31 ^ v160 ^ v63 ^ v171 ^ (1929608305 * v168 + 1898668909) ^ 0x4BF8DAB ^ v170;
  v175 = *(v54 - 116);
  v176 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v175 - 534) - 4;
  v177 = *&v176[4 * BYTE1(v63)];
  v178 = -1054354207 - 1301646273 * v177 - 256083296 * v177 - 2 * ((-1054354207 - 1301646273 * v177 - 256083296 * v177) & 0x5EDFE8DF ^ (-1054354207 - 1301646273 * v177) & 9);
  v179 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v175 ^ 0x26A)) - 4;
  v180 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v175 ^ 0x2DD)) - 4;
  v181 = *&v180[4 * HIBYTE(v174)];
  v182 = *&v179[4 * (v169 ^ 3)];
  v183 = *&v180[4 * ((v169 ^ 0xBBDD0A63) >> 24)];
  v184 = (*&v179[4 * v63] + 277934882 - ((2 * *&v179[4 * v63] + 1667372184) & 0xBDBFD1AC)) ^ *&v180[4 * HIBYTE(v172)] ^ (-1054354207 - 1557729569 * *&v176[4 * BYTE1(v173)]);
  v185 = *&v180[4 * BYTE3(v63)];
  LODWORD(v180) = *&v176[4 * BYTE1(v172)];
  v186 = v185 ^ (-1054354207 - 1557729569 * *&v176[4 * BYTE1(v174)]) ^ (v182 + 277934882 - 2 * ((v182 + 833686092) & 0x5EDFE8D7 ^ v182 & 1));
  LODWORD(v176) = *&v179[4 * v174];
  LODWORD(v179) = (v178 - 555751210) ^ v181 ^ (*&v179[4 * v172] + 833686092);
  v187 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v175 ^ 0x21B)) - 12;
  LODWORD(v77) = (v184 - 31462258 - ((2 * v184) & 0xFC3FD91C)) ^ a14 ^ *&v187[4 * BYTE2(v174)];
  v188 = v176 + 833686092;
  LODWORD(v176) = *(v54 - 120);
  LODWORD(v72) = *&v187[4 * BYTE2(v172)] ^ a27 ^ (v186 - 31462258 - ((2 * v186) & 0xFC3FD91C));
  LODWORD(v74) = a13 ^ a29 ^ *&v187[4 * BYTE2(v63)] ^ v183 ^ (-1054354207 - 1557729569 * v180) ^ v188;
  v189 = *&v187[4 * BYTE2(v173)] ^ a13 ^ (v179 - 31462258 - ((2 * v179) & 0xFC3FD91C));
  v190 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v175 - 423) - 4;
  v60[8] = v190[HIBYTE(v189) ^ 0xEALL] ^ 0x7C;
  v191 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v175 - 9) - 4;
  v60[6] = v191[BYTE1(v77) ^ 0x11] ^ 0xB6;
  v192 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v175 - 40);
  v60[5] = *(v192 + (BYTE2(v77) ^ 0x9ALL)) ^ 4;
  v60[4] = v190[(v77 >> 24) ^ 0x4CLL] ^ 0xF6;
  v193 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v175 - 193);
  v60[15] = *(v193 + (v74 ^ 0x15)) ^ 0x5C;
  v60[12] = v190[(v74 >> 24) ^ 0x42] ^ 0x68;
  v60[2] = v191[BYTE1(v72) ^ 0x43] ^ 0xFA;
  v60[7] = *(v193 + (v77 ^ 0xDDLL)) ^ 0x7B;
  v60[14] = v191[((v74 ^ 0x458) >> 8) ^ 0xEALL] ^ 0xC3;
  v60[9] = *(v192 + (BYTE2(v189) ^ 0xD7)) ^ 0xDF;
  v60[11] = *(v193 + (v189 ^ 0xD5)) ^ 0xD1;
  *v60 = v190[BYTE3(v72) ^ 1] ^ 0xF2;
  v60[10] = v191[BYTE1(v189) ^ 0x94] ^ 0xE8;
  v60[3] = *(v193 + (v72 ^ 0xCALL)) ^ 0x1E;
  v60[13] = *(v192 + (((v74 ^ 0x20C00458) >> 16) ^ 0x92)) ^ 0x97;
  v60[1] = *(v192 + (BYTE2(v72) ^ 0xF3)) ^ 0x29;
  v194 = v176 + 670229961 < a20;
  if (a20 < 0x27F2E5B9 != (v176 + 670229961) < 0x27F2E5B9)
  {
    v194 = a20 < 0x27F2E5B9;
  }

  return (*(*(v54 - 152) + 8 * ((13 * v194) ^ v175)))();
}

uint64_t sub_1968C03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39)
{
  v41 = (v39 - 3868) ^ 0x973;
  v42 = *(a22 + v41 + 117);
  v43 = (&a39 + v41 + 1);
  *(v43 - 1) = *(a22 + v41 + 101);
  *v43 = v42;
  return (*(v40 + 8 * v39))();
}

uint64_t sub_1968C0444(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *(a4 + v5 + 72);
  v11 = (v5 ^ a2 ^ ((v6 - 1734) | 0x100)) + (v8 & (2 * v5)) + v7;
  *(a1 + v11) = v10 ^ 0x87;
  *(a1 + v11 + 1) = (BYTE1(v10) ^ 7) - ((2 * (BYTE1(v10) ^ 7)) & 0xD8) - 20;
  *(a1 + v11 + 2) = (BYTE2(v10) ^ 0x47) - ((2 * (BYTE2(v10) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v11 + 3) = (HIBYTE(v10) ^ 0x7C) - 2 * ((HIBYTE(v10) ^ 0x7C) & a5 ^ HIBYTE(v10) & 1) - 20;
  return (*(v9 + 8 * ((4183 * (v5 + 4 < *(a4 + 92))) ^ v6)))();
}

uint64_t sub_1968C0584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v66 = STACK[0xAA0] + (((v64 + 741) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v66 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v66) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v67 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v68 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v69 = STACK[0xA50];
  v70 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  v71 = STACK[0xA40];
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  v72 = STACK[0xA30];
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  v73 = STACK[0xA20];
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  v74 = STACK[0xA10];
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  v75 = STACK[0xB30];
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v65 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v65 + 6)) & 0xDDDB1EECBEF9FB72);
  v98 = ((v68 + 6) ^ 0xEEF779BF9BF8D5AFLL) + 0x7F6C8F746E2F7FF9 + ((2 * (v68 + 6)) & 0xDDEEF37F37F1AB5ELL);
  v97 = ((v73 + 6) ^ 0xEF6419B53B6E55BELL) + 0x7EFFEF7ECEB9FFEALL + ((2 * (v73 + 6)) & 0xDEC8336A76DCAB7CLL);
  STACK[0x2B0] = v67 + 10;
  STACK[0x290] = v68 + 10;
  v92 = ((v68 + 10) ^ 0x7EFCBBBC4ABAF7EALL) - 0x1098B2884092A242 + ((2 * (v68 + 10)) & 0xFDF977789575EFD4);
  STACK[0x310] = v70;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  v96 = STACK[0xAF8];
  STACK[0x3E0] = STACK[0x950];
  v95 = STACK[0xB08];
  v94 = STACK[0xA48];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  v93 = STACK[0xB28];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  v76 = __ROR8__((v62 + (v63 ^ 0x6FF74DFDAEEF55FELL) - 0x19344C9A4C70056 + (((v64 + 3942) ^ 0xDFEE9BFB5DDEBB74) & (2 * v63)) - 0x6E6409340A2855A8 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((2 * ((v76 - 0x6AF7234D0CC131D5) ^ 0xC30ED5EEE3F57A90)) | 0x9B480BC5A364AA58) - ((v76 - 0x6AF7234D0CC131D5) ^ 0xC30ED5EEE3F57A90) + 0x325BFA1D2E4DAAD4;
  v78 = v77 ^ 0x474392375D51C86ELL;
  v77 ^= 0xEF0577A0C4A7B932;
  v79 = __ROR8__(v78, 8);
  v80 = __ROR8__((0xA71A3A30759F19F1 - ((v79 + v77) | 0xA71A3A30759F19F1) + ((v79 + v77) | 0x58E5C5CF8A60E60ELL)) ^ 0xBC78B2100D5D5970, 8);
  v81 = (0xA71A3A30759F19F1 - ((v79 + v77) | 0xA71A3A30759F19F1) + ((v79 + v77) | 0x58E5C5CF8A60E60ELL)) ^ 0xBC78B2100D5D5970 ^ __ROR8__(v77, 61);
  v82 = (((2 * (v80 + v81)) | 0xBF13494C79250678) - (v80 + v81) + 0x20765B59C36D7CC4) ^ 0x2A2B551F89423135;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (((2 * (v84 + v83)) & 0xDCAAC815B6E790B4) - (v84 + v83) - 0x6E55640ADB73C85BLL) ^ 0xC8C92D30715548BALL;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x61459D2AF01F24F7;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((2 * (v89 + v88)) & 0x10F33DC44BD18E2ALL) - (v89 + v88) + 0x7786611DDA1738EALL) ^ 0x13457D1FAA93E686;
  return (*(STACK[0x248] + 8 * v64))(0xF30A38FA6F372622, 0xA71A3A30759F19F1, 0x61459D2AF01F24F7, (2 * ((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v88, 61))) ^ 0xE8E98C8663AAE2BLL)) & 0x65466F5D602B4D82, 0xB2A337AEB015A6C1, 0xA6074482947CA7E9, 0xB8C449DC6B14DD50, 0xE61471F4DE6E4C44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, ((v75 + 10) ^ 0xFF6EEBFC5FAB7DF9) + 0x6EF51D37AA7CD7AFLL + ((2 * (v75 + 10)) & 0xFEDDD7F8BF56FBF2), a32, (v70 ^ 0xEEEE09F65AEC55EALL) + 0x7F75FF3DAF3BFFBELL + ((2 * v70) & 0xDDDC13ECB5D8ABD4), a34, v92, a36, ((v67 + 10) ^ 0x6E7EBD3F3B7DF5FFLL) - 0x1AB40B3155A057 + ((2 * (v67 + 10)) & 0xDCFD7A7E76FBEBFELL), a38, v93, a40, v94, a42, v95, a44, v96, a46, v75 + 10, a48, ((v75 + 6) ^ 0xFF7ECF3E6B7E57BELL) + 0x6EE539F59EA9FDEALL + ((2 * (v75 + 6)) & 0xFEFD9E7CD6FCAF7CLL), a50, ((v74 + 6) ^ 0x7F6DADBC1EACFDF8) - 0x1109A4881484A850 + ((2 * (v74 + 6)) & 0xFEDB5B783D59FBF0), a52, v97, a54, ((v72 + 6) ^ 0x7F655F760B2A5FADLL) - 0x1101564201020A05 + ((2 * (v72 + 6)) & 0xFECABEEC1654BF5ALL), a56, ((v71 + 6) ^ 0x6EFF4BBDBBE8F5A8) - 0x9B4289B1C0A000 + ((2 * (v71 + 6)) & 0xDDFE977B77D1EB50), a58, ((v69 + 6) ^ 0xEE770D76CAA95FADLL) + 0x7FECFBBD3F7EF5FBLL + ((2 * (v69 + 6)) & 0xDCEE1AED9552BF5ALL), a60, v98, a62, ((v67 + 6) ^ 0x6F6C6FF62BBA55FFLL) - 0x10866C221920057 + ((2 * (v67 + 6)) & 0xDED8DFEC5774ABFELL));
}

uint64_t sub_1968C05D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26, int a27, unsigned int a28)
{
  v31 = (((v28 - 200) | 0xD0) ^ 0x12E85BB3) + a3 - a14;
  v35 = ((((v28 - 2792) | 0x72) - 134) & a3) + 16;
  v32 = 1012216201 * ((&a25 - 1177713010 - 2 * (&a25 & 0xB9CD868E)) ^ 0x3D640E62);
  a26 = v32 + (v31 ^ 0xBDD7FCFE) + ((2 * v31) & 0x7BAFF9FC) + 1726729210;
  a27 = v28 - v32 + 218;
  a25 = v29;
  a28 = v32 + (v35 ^ 0xDD75FF75) + ((2 * v35) & 0xBAEBFEE0) + 1860165375;
  v33 = (*(v30 + 8 * (v28 ^ 0x1086)))(&a25);
  return (*(v30 + 8 * (((*(v29 + 24) == a13) | (2 * (*(v29 + 24) == a13))) ^ v28)))(v33);
}

uint64_t sub_1968C06FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v39 = *(v37 + 4 * (v36 - 1));
  *(v37 + 4 * v36) = ((1566083941 * (v39 ^ (v39 >> 30))) ^ *(v37 + 4 * v36)) - v36;
  v40 = 1283153057 * ((((v38 - 144) | 0xBA8DECB5E2574B9CLL) - (v38 - 144) + ((v38 - 144) & 0x4572134A1DA8B460)) ^ 0x13607F02AD8F48ABLL);
  *(v38 - 112) = v35 + 116743947 - v40 + 355;
  *(v38 - 120) = v40;
  *(v38 - 144) = v40 + v35 + 116743947 - 46;
  *(v38 - 140) = (v35 + 116743947) ^ v40;
  *(v38 - 136) = v40 ^ 0x26F;
  *(v38 - 128) = v36 + 1 - v40;
  *(v38 - 108) = (v35 + 670121503) ^ v40;
  v41 = (*(a2 + 8 * (v35 ^ 0xD307759B)))(v38 - 144);
  return (*(a35 + 8 * *(v38 - 116)))(v41);
}

uint64_t sub_1968C07FC()
{
  v4 = (*(v0 + 8 * (v1 + 6201)))(128, v3);
  v5 = STACK[0x370];
  STACK[0x4D0] = v4;
  return (*(v5 + 8 * (((v2 - v4 < ((v1 + 1511123861) & 0xA5EE1BDE ^ 0x9E8uLL)) * (v1 + 4492)) ^ v1)))();
}

void sub_1968C0878()
{
  v3[8] = v2[8];
  ++*v1;
  v3[9] = v2[9];
  ++*v1;
  v3[10] = v2[10];
  ++*v1;
  v3[11] = v2[11];
  *v1 += (7 * (v4 ^ 0x56D)) ^ 0x1568;
  *(v0 + 8) = 1906281716;
}

uint64_t sub_1968C0928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  a60 = a8 - 1;
  *(a1 + a60) = (&a60 ^ 0x4D ^ (((v60 - 126) & 0xB6) - 49) & 0xF7) * (&a60 + 17);
  v62 = *(v61 + 8 * ((159 * (a60 != 0)) ^ (v60 + 726012546) & 0x54B9EFB6u));
  return v62(a1, v62, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1968C09F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v7 - 1;
  *(a1 + v9) = *(v8 + v9);
  return (*(a6 + 8 * ((2092 * (v9 == (v6 + 4968) - 5725)) ^ v6)))();
}

uint64_t sub_1968C0A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = a20 < HIDWORD(a19);
  v29 = (v26 - 1404);
  if (v28 == v25 > 0xCD95817)
  {
    v28 = v29 + v25 - 215570881 < a20;
  }

  return (*(v27 + 8 * ((113 * !v28) ^ v26)))(a20, HIDWORD(a19), a3, 216, 113, 424, a25, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1968C0B38()
{
  v6 = *(v9 + 16);
  v7 = 753662761 * ((((2 * (v5 - 144)) | 0x36293EF8) - (v5 - 144) - 454336380) ^ 0x7E0E6437);
  *(v5 - 144) = v10;
  *(v5 - 136) = v7 ^ 0x781DFA5A;
  *(v5 - 132) = (v1 + 1031) ^ v7;
  (*(v4 + 8 * (v1 + 3401)))(v5 - 144);
  *(v5 - 144) = v0;
  *(v5 - 112) = v10;
  *(v5 - 104) = v3;
  *(v5 - 136) = v1 + 1283153057 * ((v5 - 144) ^ 0x4FD80337) + 647;
  *(v5 - 128) = v2;
  *(v5 - 120) = v0;
  (*(v4 + 8 * (v1 ^ 0x1726)))(v5 - 144);
  *(v5 - 144) = (v1 + 750) ^ (654144011 * (((((v5 - 144) | 0x819632EE) ^ 0xFFFFFFFE) - (~(v5 - 144) | 0x7E69CD11)) ^ 0x52BDB08D));
  *(v5 - 136) = v0;
  *(v5 - 128) = v6;
  return (*(v4 + 8 * (v1 ^ 0x1706)))(v5 - 144);
}

uint64_t sub_1968C0CD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = LODWORD(STACK[0x598]) + 212;
  LODWORD(STACK[0x538]) = 16 * LOBYTE(STACK[0xBE0]);
  LODWORD(STACK[0x598]) = v15;
  LODWORD(STACK[0x558]) = v15 + 5002;
  v16 = v14;
  LODWORD(STACK[0x588]) = v14;
  v17 = STACK[0x59C];
  LODWORD(STACK[0x570]) = 16;
  LODWORD(STACK[0x53C]) = 477;
  v18 = 477 - v13;
  LODWORD(STACK[0x540]) = 0;
  v19 = 16 * (LODWORD(STACK[0x598]) - 637);
  v20 = STACK[0x580];
  v21 = *(STACK[0x580] + 4 * (v19 + 6307 - (((((v19 + 6307) * v11) >> 16) + (((v19 + 6307 - (((v19 + 6307) * v11) >> 16)) & 0xFFFE) >> 1)) >> 8) * v13));
  HIDWORD(v22) = *(STACK[0x580] + 4 * (v19 + 2862 - (((((v19 + 2862) * v11) >> 16) + (((v19 + 2862 - (((v19 + 2862) * v11) >> 16)) & 0xFFFE) >> 1)) >> 8) * v13)) ^ 0xF01CCCD7;
  LODWORD(v22) = HIDWORD(v22);
  v23 = (v22 >> 7) ^ (HIDWORD(v22) >> 3) ^ __ROR4__(HIDWORD(v22), 18);
  v24 = *(STACK[0x580] + 4 * (v19 + 3551 - (((((v19 + 3551) * v11) >> 16) + (((v19 + 3551 - (((v19 + 3551) * v11) >> 16)) & 0xFFFE) >> 1)) >> 8) * v13)) ^ 0xF01CCCD7;
  v25 = *(STACK[0x580] + 4 * (v19 + 6996 - (((((v19 + 6996) * v11) >> 16) + (((v19 + 6996 - (((v19 + 6996) * v11) >> 16)) & 0xFFFE) >> 1)) >> 8) * v13));
  HIDWORD(v22) = v24;
  LODWORD(v22) = v24;
  v26 = v22 >> 17;
  v27 = (v21 >> 3) ^ __ROR4__(v21, 18) ^ __ROR4__(v21, 7);
  v29 = __PAIR64__(v25, __ROR4__(v24, 19));
  v28 = v26 ^ (v24 >> 10) ^ v29;
  LODWORD(v29) = v25;
  v30 = (v29 >> 17) ^ (v25 >> 10);
  v31 = v8 + 457900628;
  LODWORD(v29) = __ROR4__(v25, 19);
  v32 = ((v27 ^ v12) - v12) ^ ((v27 ^ a2) - a2) ^ (((v8 + 457900628) ^ (v9 + 265797175) ^ v23 ^ v27) - ((v8 + 457900628) ^ (v9 + 265797175) ^ v23));
  v33 = v9 - v8 - 192103453;
  v34 = v33 ^ 0xFACEB082;
  v35 = v12 - a2;
  v36 = (v12 - a2) ^ v10;
  v37 = v17 - 81;
  v38 = a2 + v14;
  v39 = v36 ^ v38;
  v40 = v33 ^ 0xFACEB082 ^ (v31 + v17);
  v41 = (v31 + v17) ^ a8 ^ v33;
  v42 = v34 + v17 - 367258961;
  v43 = (v35 ^ 0xFACEB082) + v14 - 367258961;
  v44 = 81 - v17;
  v45 = v42 - (v41 - 2017871819);
  LODWORD(STACK[0x56C]) = v45;
  v46 = *v20;
  v47 = v41 + v17 - 367258961 + v40;
  v48 = v41 - 2017871819 - v45;
  LODWORD(STACK[0x568]) = v48;
  v49 = v43 - (v39 - 2017871819);
  LODWORD(STACK[0x544]) = v49;
  v50 = v42 - v16 + v46 + *(v20 + 4 * v18) + v28 + 1440809372 + v32;
  LODWORD(STACK[0x548]) = v47;
  *(v20 + 4 * (v19 - 275 * ((((56481 * v19) >> 16) + (((v19 - ((56481 * v19) >> 16)) & 0xFFFE) >> 1)) >> 8))) = v50 + 1427078962;
  v51 = v50 + v48;
  v52 = *(v20 + 4 * (v19 + 10176 - 275 * ((((56481 * (v19 + 10176)) >> 16) + (((v19 + 10176 - ((56481 * (v19 + 10176)) >> 16)) & 0xFFFE) >> 1)) >> 8)));
  LODWORD(STACK[0x554]) = v19;
  v53 = v17 + v52 + *(v20 + 4 * (v19 + 10653 - 275 * ((((56481 * (v19 + 10653)) >> 16) + (((v19 + 10653 - ((56481 * (v19 + 10653)) >> 16)) & 0xFFFE) >> 1)) >> 8))) + v23 - 1855855428 + (((v30 ^ v29 ^ v35 ^ 0xFACEB082) - (v35 ^ 0xFACEB082)) ^ ((v30 ^ v29 ^ v35 ^ 0xFACEB082 ^ v38) - (v35 ^ 0xFACEB082 ^ v38)) ^ ((v28 ^ (v31 + v17) ^ v30 ^ v29) - (v28 ^ (v31 + v17)))) - v43;
  *(v20 + 4 * (v19 + 11024 - 275 * ((((56481 * (v19 + 11024)) >> 16) + (((v19 + 11024 - ((56481 * (v19 + 11024)) >> 16)) & 0xFFFE) >> 1)) >> 8))) = v53 - 1219555934;
  v54 = STACK[0x5A0];
  v55 = *(STACK[0x5A0] + 11 * (v51 >> 28));
  v56 = *(STACK[0x5A0] + 11 * (HIBYTE(v51) & 0xF));
  v57 = v39 - 2017871819 - v49;
  LODWORD(STACK[0x564]) = v57;
  v58 = v53 - v57;
  v59 = (((v56 << 8) ^ (v55 << 12) | *(v54 + 11 * (HIWORD(v51) & 0xF))) << 8) ^ (*(v54 + 11 * ((v51 >> 20) & 0xF)) << 12);
  v60 = *(v54 + 11 * (v51 >> 4));
  v61 = *(v54 + 11 * (v51 & 0xF));
  v62 = v59 | *(v54 + 11 * ((v51 >> 8) & 0xF));
  v63 = (v62 << 8) ^ (*(v54 + 11 * (v51 >> 12)) << 12);
  v64 = v63 | v61;
  v65 = (*(v54 + 11 * (HIBYTE(v58) & 0xF)) << 8) ^ (*(v54 + 11 * (v58 >> 28)) << 12);
  v66 = ((v65 | *(STACK[0x5A0] + 11 * (HIWORD(v58) & 0xF))) << 8) ^ (*(v54 + 11 * ((v58 >> 20) & 0xF)) << 12);
  v67 = ((v66 | *(STACK[0x5A0] + 11 * ((v58 >> 8) & 0xF))) << 8) ^ (*(STACK[0x5A0] + 11 * (v58 >> 12)) << 12);
  LODWORD(v54) = *(STACK[0x5A0] + 11 * (v58 & 0xF));
  v68 = v61 & 0xF;
  v69 = v67 | v54;
  v70 = v68 & 0xFFFFFF0F | (16 * (v54 & 0xF));
  LODWORD(v54) = ((v47 + 428) & 0x162) + ((83 - v47) & 0x162) + v70;
  LOBYTE(v69) = *(STACK[0x5A0] + 11 * (v58 >> 4)) ^ (v69 >> 4);
  v71 = 11 * (*(STACK[0x5A0] + (LOWORD(STACK[0x594]) + 11 * v70 - 974 * (((8613 * (LODWORD(STACK[0x594]) + 11 * v70)) >> 16) >> 7))) ^ LODWORD(STACK[0x538]));
  v72 = v60 ^ (v64 >> 4);
  LODWORD(v54) = LODWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (11 * v54 - 974 * (((378961 * v54) >> 16) >> 9))) ^ (*(STACK[0x5A0] + (v71 + 3894) % 0x3CEu) >> 4));
  v73 = v72 & 0xF | (16 * (v69 & 0xF));
  LODWORD(v20) = 11 * v73;
  LOWORD(v73) = 11 * (*(STACK[0x5A0] + (11 * v73 - 974 * ((94743 * v73 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7)))));
  LODWORD(v54) = LODWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (v20 + 3894 - 974 * (((8613 * (v20 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v73 + 3894) % 0x3CEu) >> 4));
  v74 = v69 & 0xF0 | (v72 >> 4);
  v75 = 11 * ((*(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7))) << ((((v37 - 1) & 0x99) + (v44 & 0x99)) ^ 0x9Du)) ^ *(STACK[0x5A0] + (11 * v74 - 974 * ((94743 * v74 + 8526870) >> 23) + 990)));
  LODWORD(v54) = 11 * (*(STACK[0x5A0] + (11 * v74 + 3894 - 974 * (((8613 * (11 * v74 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v75 + 3894) % 0x3CEu) >> 4));
  LODWORD(v20) = (v67 >> 8) & 0xF0 | (v63 >> 12);
  LOWORD(v70) = 11 * (*(STACK[0x5A0] + (11 * v20 - 974 * ((94743 * v20 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v54 + 990) % (((v54 + 990) & 0x3CE) + ((33 - v54) & 0x3CEu)))));
  LODWORD(v54) = (v67 >> 12) & 0xF0;
  v76 = LODWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (11 * v20 + 3894 - 974 * (((8613 * (11 * v20 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v70 + 3894) % 0x3CEu) >> 4));
  LODWORD(v54) = v54 & 0xFFFFFFF0 | HIWORD(v63) & 0xF;
  v77 = *(STACK[0x5A0] + (11 * v54 - 974 * ((94743 * v54 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v76 - 974 * (((8613 * v76) >> 16) >> 7))));
  v78 = (11 * v77 + 990) % (27672 - (((31777 - 11 * v77) | (11 * v77 + 990)) & 0x684Au));
  v79 = (v71 + 990) % 0x3CEu;
  v80 = (*(STACK[0x5A0] + (v75 + 990) % 0x3CEu) << 8) ^ (16 * *(STACK[0x5A0] + (v73 + 990) % 0x3CEu));
  LODWORD(v54) = LODWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (11 * v54 + 3894 - 974 * (((8613 * (11 * v54 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (11 * v77 + 3894) % 0x3CEu) >> 4));
  LODWORD(v20) = v77 & 0x16A;
  v81 = (v66 >> 8) & 0xF0 | (v59 >> 12);
  LOWORD(v54) = 11 * (*(STACK[0x5A0] + (LOWORD(STACK[0x594]) + 11 * v81 - 974 * (((8613 * (LODWORD(STACK[0x594]) + 11 * v81)) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7)))));
  LOWORD(v71) = (v54 + 990) % 0x3CEu;
  LODWORD(v54) = LODWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (11 * ((((v20 ^ 0x16A) + v20) & 0x176) + v81) - 974 * (((94743 * ((((v20 ^ 0x16A) + v20) & 0x176) + v81)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v54 + 3894) % 0x3CEu) >> 4));
  LODWORD(v20) = (v66 >> 12) & 0xF0 | HIWORD(v59) & 0xF;
  LOWORD(v54) = 11 * (*(STACK[0x5A0] + (11 * v20 - 974 * ((94743 * v20 + 8526870) >> 23) + 990)) ^ (16 * *(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7)))));
  LOWORD(v81) = (v54 + 990) % 0x3CEu;
  LODWORD(v54) = LODWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (11 * v20 + 3894 - 974 * (((8613 * (11 * v20 + 3894)) >> 16) >> 7))) ^ (*(STACK[0x5A0] + (v54 + 3894) % 0x3CEu) >> 4));
  LODWORD(v20) = LODWORD(STACK[0x594]) + 11 * ((v65 >> 8) & 0xF0 | (v62 >> 20) & 0xF);
  v82 = *(STACK[0x5A0] + v79);
  v83 = *(STACK[0x5A0] + v78);
  v84 = v80 ^ v82 ^ (*(STACK[0x5A0] + (v70 + 990) % 0x3CEu) << 12);
  v85 = *(STACK[0x5A0] + v71);
  v86 = *(STACK[0x5A0] + v81);
  v87 = v84 ^ (v83 << 16);
  v88 = v87 ^ (v85 << 20);
  v89 = v88 ^ (v86 << 24) ^ (*(STACK[0x5A0] + (LOWORD(STACK[0x594]) + 11 * (*(STACK[0x5A0] + (v20 - 974 * (((8613 * v20) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7)))))) % 0x3CEu) << 28);
  v90 = 11 * (v68 & 0xFFFFFF0F | (16 * (v82 & 0xF))) + 7788;
  LODWORD(v54) = 11 * ((v80 ^ v82) & 0xF0 | v72 & 0xF) + 7788;
  v91 = 11 * ((v80 >> 4) & 0xF0 | (v72 >> 4)) + 7788;
  v92 = *(STACK[0x5A0] + (v90 - 974 * (((8613 * v90) >> 16) >> 7))) ^ (16 * *(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7))));
  LODWORD(v54) = 11 * ((v84 >> 8) & 0xF0 | (v63 >> 12)) + 7788;
  v93 = (*(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7))) << 12) ^ (*(STACK[0x5A0] + (v91 - 974 * (((8613 * v91) >> 16) >> 7))) << 8);
  LODWORD(v54) = 11 * ((v87 >> 12) & 0xF0 | HIWORD(v63) & 0xF) + 7788;
  v94 = v93 ^ v92 ^ (*(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7))) << 16);
  LODWORD(v54) = 11 * (HIWORD(v88) & 0xF0 | (v59 >> 12)) + 7788;
  LODWORD(v54) = v94 ^ (*(STACK[0x5A0] + (v54 - 974 * (((8613 * v54) >> 16) >> 7))) << 20);
  LODWORD(v20) = v54 ^ (*(STACK[0x5A0] + (11 * ((v89 >> 20) & 0xF0 | HIWORD(v59) & 0xF) + 7788) % ((((v54 & 0x194244 ^ 0x194244) + (v54 & 0x194244)) | 0x58E) & (((v89 >> 20) & 0xC0 ^ 0xE68BCE) + ((v89 >> 20) & 0xC0)))) << 24);
  v95 = 11 * ((v20 ^ (*(STACK[0x5A0] + (11 * (HIBYTE(v89) & 0xF0 | (v62 >> 20) & 0xF) + 7788) % ((((v62 >> 20) & 0xE ^ 0x2BE) + ((v62 >> 20) & 0xE) + 14608) & 0x7FE)) << 28)) >> 28) + 7590;
  LODWORD(v20) = (*(STACK[0x5A0] + (11 * (BYTE3(v20) & 0xF) + 7590 - 974 * (((8613 * (11 * (BYTE3(v20) & 0xF) + 7590)) >> 16) >> 7))) << 8) ^ (*(STACK[0x5A0] + (v95 - 974 * (((8613 * v95) >> 16) >> 7))) << 12);
  v96 = HIWORD(v94) & 0xF;
  v97 = (11 * (v93 >> 12) + 7590 - 974 * (((8613 * (11 * (v93 >> 12) + 7590)) >> 16) >> 7));
  v98 = 367258961 - LODWORD(STACK[0x588]) - LODWORD(STACK[0x544]);
  LODWORD(v54) = (((v20 | *(STACK[0x5A0] + (11 * v96 + 7590 - 974 * (((8613 * (11 * v96 + 7590)) >> 16) >> 7)))) << 16) ^ (*(STACK[0x5A0] + (11 * ((v54 >> 20) & 0xF) + 7590 - 974 * (((8613 * (11 * ((v54 >> 20) & 0xF) + 7590)) >> 16) >> 7))) << 20) | (*(STACK[0x5A0] + 11 * ((((v93 ^ v92) >> 8) & 0xF) + 599054381 * ((~(2 * v97) + v97) & 0xB9DBFABA ^ (11 * (v93 >> 12) + 7590 - 974 * ((8613 * (11 * (v93 >> 12) + 7590)) >> 23)) & 0x2BA)) % 0x3CE) << 8)) ^ (*(STACK[0x5A0] + (11 * (v93 >> 12) + 7590 - 974 * (((8613 * (11 * (v93 >> 12) + 7590)) >> 16) >> 7))) << 12);
  LODWORD(v20) = v92 & (15 - (((v98 & 0x38 ^ 0x38) + (v98 & 0x38)) ^ 0x38));
  v99 = (v92 & (15 - ((((81 - LOBYTE(STACK[0x588]) - LODWORD(STACK[0x544])) & 0x38 ^ 0x38) + ((81 - LOBYTE(STACK[0x588]) - LODWORD(STACK[0x544])) & 0x38)) ^ 0x38))) + 690;
  LOWORD(v57) = STACK[0x554];
  v100 = STACK[0x580];
  *(STACK[0x580] + 4 * (v57 + 3657 - 275 * ((((56481 * (v57 + 3657)) >> 16) + (((v57 + 3657 - ((56481 * (v57 + 3657)) >> 16)) & 0xFFFE) >> 1)) >> 8))) = v98 ^ 0xF01CCCD7 ^ (16 * *(STACK[0x5A0] + (11 * (v92 >> 4) + 7590 - 974 * (((8613 * (11 * (v92 >> 4) + 7590)) >> 16) >> 7)))) ^ (v54 | *(STACK[0x5A0] + (((v99 ^ (13 - v20)) & 0xB) * v99 - 974 * (((8613 * ((v99 ^ (13 - v20)) & 0xBu) * v99) >> 16) >> 7))));
  LODWORD(v20) = v51 ^ (367258961 - (LODWORD(STACK[0x56C]) + LODWORD(STACK[0x59C])));
  v101 = STACK[0x570];
  LODWORD(STACK[0x59C]) = (LODWORD(STACK[0x56C]) ^ 0x7D0EEDB4) - 428666007;
  *(v100 + 4 * (v57 + 7102 - 275 * ((((56481 * (v57 + 7102)) >> 16) + (((v57 + 7102 - ((56481 * (v57 + 7102)) >> 16)) & 0xFFFE) >> 1)) >> 8))) = v20;
  return (*(STACK[0x578] + 8 * ((3437 * (v101 == 63)) ^ LODWORD(STACK[0x598]))))();
}

uint64_t sub_1968C1B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48)
{
  HIDWORD(a17) = HIDWORD(a12) - 1749194635;
  v107.i64[0] = 0xECECECECECECECECLL;
  v107.i64[1] = 0xECECECECECECECECLL;
  v108 = vdupq_n_s32(0x5D5D9ADu);
  v109 = vdupq_n_s32(0x5D5D9A9u);
  v110 = v52 - 16;
  v53 = *(v50 + 8 * (a5 + v48 + 3679));
  v54 = HIDWORD(a29);
  v55 = a30;
  v56 = HIDWORD(a30);
  v57 = (BYTE4(a32) - ((2 * BYTE4(a32)) & 0xCA) - 23);
  if (v57 == 235)
  {
    v111 = vld4q_s8(&a20 + 4);
    v87 = veorq_s8(v111.val[0], v107);
    v88 = vmovl_high_u8(v87);
    v89 = vmovl_u8(*v87.i8);
    v90 = veorq_s8(v111.val[1], v107);
    _Q21 = vmovl_high_u8(v90);
    _Q20 = vmovl_u8(*v90.i8);
    v93 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v94 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v95 = veorq_s8(v111.val[2], v107);
    v96 = vmovl_u8(*v95.i8);
    v97 = vmovl_high_u8(v95);
    v111.val[0] = veorq_s8(v111.val[3], v107);
    v111.val[1] = vmovl_u8(*v111.val[0].i8);
    v111.val[2] = vmovl_u16(*v111.val[1].i8);
    v111.val[1] = vmovl_high_u16(v111.val[1]);
    v111.val[0] = vmovl_high_u8(v111.val[0]);
    v111.val[3] = vmovl_u16(*v111.val[0].i8);
    v111.val[0] = vmovl_high_u16(v111.val[0]);
    v98 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v97, 8uLL)), vshlq_n_s32(vmovl_high_u16(v88), 0x18uLL)), v111.val[0]);
    v99 = vorrq_s8(vorrq_s8(vorrq_s8(v94, vshll_n_u16(*v97.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v88.i8), 0x18uLL)), v111.val[3]);
    v100 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v96, 8uLL)), vshlq_n_s32(vmovl_high_u16(v89), 0x18uLL)), v111.val[1]);
    v101 = vorrq_s8(vorrq_s8(vorrq_s8(v93, vshll_n_u16(*v96.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v89.i8), 0x18uLL)), v111.val[2]);
    v111.val[0] = veorq_s8(vandq_s8(v98, v108), (*v111.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v111.val[3] = veorq_s8(vandq_s8(v99, v108), (*&v111.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v111.val[1] = veorq_s8(vandq_s8(v100, v108), (*&v111.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v111.val[2] = veorq_s8(vandq_s8(v101, v108), (*&v111.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v111.val[0] = vaddq_s32(vsubq_s32(v98, vaddq_s32(v111.val[0], v111.val[0])), v109);
    v111.val[3] = vaddq_s32(vsubq_s32(v99, vaddq_s32(v111.val[3], v111.val[3])), v109);
    v111.val[1] = vaddq_s32(vsubq_s32(v100, vaddq_s32(v111.val[1], v111.val[1])), v109);
    v111.val[2] = vaddq_s32(vsubq_s32(v101, vaddq_s32(v111.val[2], v111.val[2])), v109);
    LODWORD(a45) = v111.val[2].i32[0];
    *(&a45 + 4) = vextq_s8(v111.val[2], v111.val[1], 4uLL);
    *(&a46 + 4) = vextq_s8(v111.val[1], v111.val[3], 4uLL);
    *(&a47 + 4) = vextq_s8(v111.val[3], v111.val[0], 4uLL);
    *(&a48 + 4) = vextq_s8(v111.val[0], v111.val[0], 4uLL).u64[0];
    HIDWORD(a48) = v111.val[0].i32[3];
    *(&a45 + v51 + 1072136516) = v49 ^ __ROR4__(*(&a41 + v51 + 1072136516) ^ *(&a43 + v51 + 1072136517) ^ *(&a38 + v51 + 1072136516) ^ *(&a45 + (((a3 ^ 0x3CBB83A5) - 3528) | 0x1014) - 5652), 31);
    v102 = *(v50 + 8 * ((1500 * (v52 == 1072136453)) ^ a3 ^ 0x3CBB83A5));
    return v102(v102, 216, a3, a4, a5, v54, v56, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, v110, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
  }

  else if (v57 == 232)
  {
    v112 = vld4q_s8(&a20 + 4);
    v58 = veorq_s8(v112.val[0], v107);
    v59 = vmovl_high_u8(v58);
    v60 = vmovl_high_u16(v59);
    v61 = vmovl_u16(*v59.i8);
    v62 = vmovl_u8(*v58.i8);
    v63 = vmovl_high_u16(v62);
    v64 = vmovl_u16(*v62.i8);
    v65 = veorq_s8(v112.val[1], v107);
    v66 = vmovl_u8(*v65.i8);
    v67 = vmovl_high_u8(v65);
    v68 = veorq_s8(v112.val[2], v107);
    _Q25 = vmovl_u8(*v68.i8);
    _Q24 = vmovl_high_u8(v68);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v112.val[0] = veorq_s8(v112.val[3], v107);
    v112.val[1] = vmovl_u8(*v112.val[0].i8);
    v112.val[2] = vmovl_u16(*v112.val[1].i8);
    v112.val[0] = vmovl_high_u8(v112.val[0]);
    v112.val[3] = vmovl_u16(*v112.val[0].i8);
    v112.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v112.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v67, 8uLL), v60));
    v112.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v112.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v67.i8, 8uLL), v61));
    v112.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v112.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v66, 8uLL), v63));
    v112.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v112.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v66.i8, 8uLL), v64));
    v77 = vdupq_n_s32(0x5D5D9B9u);
    v78 = veorq_s8(vandq_s8(v112.val[0], v77), (*&v60 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v79 = veorq_s8(vandq_s8(v112.val[3], v77), (*&v61 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v80 = veorq_s8(vandq_s8(v112.val[1], v77), (*&v63 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v81 = veorq_s8(vandq_s8(v112.val[2], v77), (*&v64 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v82 = vaddq_s32(vsubq_s32(v112.val[0], vaddq_s32(v78, v78)), v109);
    v83 = vaddq_s32(vsubq_s32(v112.val[3], vaddq_s32(v79, v79)), v109);
    v84 = vaddq_s32(vsubq_s32(v112.val[1], vaddq_s32(v80, v80)), v109);
    v85 = vaddq_s32(vsubq_s32(v112.val[2], vaddq_s32(v81, v81)), v109);
    LODWORD(a45) = v85.i32[0];
    *(&a45 + 4) = vextq_s8(v85, v84, 4uLL);
    *(&a46 + 4) = vextq_s8(v84, v83, 4uLL);
    *(&a47 + 4) = vextq_s8(v83, v82, 4uLL);
    *(&a48 + 4) = vextq_s8(v82, v82, 4uLL).u64[0];
    HIDWORD(a48) = v82.i32[3];
    return (*(v50 + 8 * (a4 + a3 - 960)))(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((a4 + a3 - 960) ^ 0xEFD)), *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((a4 + a3 - 960) ^ 0xD21)) - 4);
  }

  else
  {
    v103 = (((HIDWORD(a29) ^ 0x7B48BE6B) - 2068364907) ^ ((HIDWORD(a29) ^ 0x8A7A39DA) + 1971701286) ^ ((HIDWORD(a29) ^ 0x8D7580DA) + 1921679142)) + (((HIDWORD(a29) ^ 0xFAE1A099) + 85876583) ^ ((HIDWORD(a29) ^ 0x474BD03C) - 1196150844) ^ ((HIDWORD(a29) ^ 0xC1ED77CE) + 1041401906)) + 1467418300;
    v104 = (((a30 ^ 0x4D6AB207) - 1298838023) ^ ((a30 ^ 0x8EDEA7C3) + 1898010685) ^ ((a30 ^ 0xBFF312AF) + 1074589009)) + (((a30 ^ 0xD9D9101C) + 640085988) ^ ((a30 ^ 0x125DEAF7) - 308144887) ^ ((a30 ^ 0xB7C3FD80) + 1211892352)) + 1568702800;
    HIDWORD(a29) = v103 ^ ((v103 ^ 0x81AB4608) + 549211666) ^ ((v103 ^ 0xF621A580) + 1463201178) ^ ((v103 ^ 0xD69F6B95) + 2005427085) ^ ((v103 ^ 0xFFFD7FFB) + 1592424419) ^ 0x22AFF08D;
    LODWORD(a30) = v104 ^ ((v104 ^ 0xFD0AC1AD) + 1711754281) ^ ((v104 ^ 0x89CB3BC0) + 315012678) ^ ((v104 ^ 0x6FCCF7E8) - 188646802) ^ ((v104 ^ 0x7FFF7FFF) - 453840261) ^ 0x18B57511;
    v105 = (((HIDWORD(a30) ^ 0x343E0F2F) - 876482351) ^ ((HIDWORD(a30) ^ 0x79DAD345) - 2044384069) ^ ((HIDWORD(a30) ^ 0x31A3DB01) - 832822017)) + (((HIDWORD(a30) ^ 0x89188D82) + 1994879614) ^ ((HIDWORD(a30) ^ 0x999952B4) + 1718005068) ^ ((HIDWORD(a30) ^ 0x6CC6D85D) - 1824970845)) + 1379212289;
    v106 = (((a31 ^ 0xD13AE9AB) + 784668245) ^ ((a31 ^ 0xF8E3E689) + 119282039) ^ ((a31 ^ 0x559E0849) - 1436420169)) + (((a31 ^ 0x703E2058) - 1883119704) ^ ((a31 ^ 0xA6E0FDFC) + 1495204356) ^ ((a31 ^ 0xAA99DACF) + 1432757553)) + 1129763550;
    HIDWORD(a30) = v105 ^ ((v105 ^ 0xD438C54) - 1424261503) ^ ((v105 ^ 0x8183307D) + 668713642) ^ ((v105 ^ 0x2ADC4EED) - 1937458118) ^ ((v105 ^ 0xFFBBFFEF) + 1508052284) ^ 0x25E00A40;
    LODWORD(a31) = v106 ^ ((v106 ^ 0xD93BB1E8) + 1812761120) ^ ((v106 ^ 0x475F3061) - 228062313) ^ ((v106 ^ 0xAB53B2FA) + 509905166) ^ ((v106 ^ 0x7FFFF77B) - 892810099) ^ 0x368FC363;
    return v53(&a20 + 4, 216, a3, a4, a5, v54, v56, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, v110, a19, a20, a21, a22);
  }
}

uint64_t sub_1968C1B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5630));
  v8 = STACK[0x2C0] + STACK[0x210] - 0x2D6560F450244D3ELL;
  v9 = (__ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8) + v6) & 0xFBFFFFFFFFFFFFFFLL;
  v10 = v9 ^ 0x4DE9423B6F16E7D2;
  v9 ^= 0xE5AFA7ACF6E0968ELL;
  v11 = __ROR8__(v10, 8);
  v12 = __ROR8__((v11 + v9 - ((2 * (v11 + v9)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v13 = (v11 + v9 - ((2 * (v11 + v9)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v9, 61);
  v14 = (v12 + v13) ^ 0xF5A2F1B9B5D0B209;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xB8A665E197C7F47ELL) - (v16 + v15) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x1D3A72000429358 - ((v19 + v18) | 0x1D3A72000429358) + ((v19 + v18) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0x25583E6B392D1AC8 - ((v22 + v21) | 0x25583E6B392D1AC8) + ((v22 + v21) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0x272BFFDC1C3FC546 - ((v25 + v24) | 0x272BFFDC1C3FC546) + ((v25 + v24) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((((2 * (v28 + v27)) | 0xC355F3281D11914) - (v28 + v27) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v8 & 7u))) ^ *v8;
  v30 = *++v8;
  v31 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = -2 - (((0x6AF7234D0CC131D4 - v31) | 0x1A41569DA1CC8FFALL) + ((v31 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v33 = v32 ^ 0x53A814A6CEDA6828;
  v32 ^= 0xFBEEF131572C1974;
  v34 = __ROR8__(v33, 8);
  v35 = (((2 * (v34 + v32)) & 0xF2BD014CC6D06D4ALL) - (v34 + v32) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF5A2F1B9B5D0B209;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (0xFF7817662BD390FALL - ((v38 + v39) | 0xFF7817662BD390FALL) + ((v38 + v39) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x61459D2AF01F24F7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x64C31C027084DE6CLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (0xD96EC6C1FDF6D5E3 - ((v46 + v45) | 0xD96EC6C1FDF6D5E3) + ((v46 + v45) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v45) = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v45, 61))) ^ 0xAB3042D228875C41) >> (8 * (v8 & 7u))) ^ v30;
  return v7(a1, (v45 | (v29 << 8)) - 2 * ((v45 & 5 | (v29 << 8) & 0x3505) ^ v45 & 5) + 13568);
}

uint64_t sub_1968C1C24@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  v11 = (v7 + 128) | 0x49;
  v12 = v6 - v8;
  v13 = (a6 - 1406348948) ^ 0xCB6D0AC5;
  v14 = a3 - a6 + 328837676;
  v15 = a1 - v6 + (v11 ^ 0xF1531169);
  v16 = v14 ^ v13;
  v17 = (v8 + 106469439) ^ 0xCB6D0AC5;
  v18 = (a2 + v6 - v8) ^ v17;
  v19 = v14 + a5;
  v20 = a4 - a3 + 1490454629;
  v21 = v19 ^ v13;
  v22 = v12 ^ v17;
  LODWORD(STACK[0x3D8]) = (a3 + 89) ^ 0xD049CA6E;
  v23 = v9 ^ 0x1FBC3725;
  LODWORD(STACK[0x440]) = 0;
  v24 = 655 * (v11 ^ 0x468);
  LODWORD(STACK[0x418]) = 1883436237 - (v19 ^ v13);
  LODWORD(STACK[0x420]) = 559526256 - v17;
  LODWORD(STACK[0x41C]) = v24 - v20 - 1171470578;
  LODWORD(STACK[0x3E8]) = v18 + 1871001802;
  LODWORD(STACK[0x3FC]) = v15 - 1378926868;
  v18 += 1240354794;
  v25 = v13 ^ ((v19 ^ v13) + 1240354794);
  LODWORD(STACK[0x40C]) = v16 - 798356377;
  LODWORD(STACK[0x414]) = 747292993 - (v12 ^ v17);
  LODWORD(STACK[0x410]) = v13 + 1421697332;
  v26 = (v20 ^ 0x70BDF5FE) & (2 * (v20 & 0x78B1F5FE)) ^ v20 & 0x78B1F5FE;
  v27 = ((2 * (v20 ^ 0x91BC1E26)) ^ 0xD21BD7B0) & (v20 ^ 0x91BC1E26) ^ (2 * (v20 ^ 0x91BC1E26)) & 0xE90DEBD8;
  v28 = v27 ^ 0x29042848;
  v29 = (v27 ^ 0xC009C390) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xA437AF60) & v28 ^ (4 * v28) & 0xE90DEBD8;
  v31 = (v30 ^ 0xA005AB40) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x49084098)) ^ 0x90DEBD80) & (v30 ^ 0x49084098) ^ (16 * (v30 ^ 0x49084098)) & 0xE90DEBD0;
  v33 = v31 ^ 0xE90DEBD8 ^ (v32 ^ 0x800CA900) & (v31 << 8);
  v34 = v20 ^ (v16 - ((2 * v16 - 1706412192) & 0xCB40BC7C) + 851802606) ^ (2 * ((v33 << 16) & 0x690D0000 ^ v33 ^ ((v33 << 16) ^ 0x6BD80000) & (((v32 ^ 0x69014258) << 8) & 0x690D0000 ^ 0x60040000 ^ (((v32 ^ 0x69014258) << 8) ^ 0xDEB0000) & (v32 ^ 0x69014258)))) ^ 0x9D1A7C70;
  v35 = v17 ^ v18;
  v36 = (v21 + 1240354794) ^ 0x9835E80B;
  v37 = ((((963502936 - v16) & 0x77F2FDE7) + ((v16 + 1183980711) & 0x77F2FDE7)) & 0x4E961EAF) + (v36 ^ (v16 + 1294277552));
  v38 = v22 + (((1816709032 - v16) | (v16 + 330774615)) & 0x4D251BB0);
  v39 = (v15 ^ 0x19B34CA5) & (2 * (v15 & 0x99A34CB6)) ^ v15 & 0x99A34CB6;
  v40 = ((2 * (v15 ^ 0x39F3DCA1)) ^ 0x40A1202E) & (v15 ^ 0x39F3DCA1) ^ (2 * (v15 ^ 0x39F3DCA1)) & 0xA0509016;
  v41 = v40 ^ 0xA0509011;
  v42 = v40 & (4 * v39) ^ v39;
  v43 = (4 * v41) & 0xA0509014 ^ 0x20109003 ^ ((4 * v41) ^ 0x8142405C) & v41;
  v44 = ((16 * v42) & 0xA0509000 | 0x10) ^ v42 ^ v43 & (16 * v42);
  v45 = (16 * v43) & 0xA0509010 ^ 0xA0509007 ^ ((16 * v43) ^ 0x5090170) & v43;
  v46 = v44 ^ 0xA0508007 ^ (v44 << 8) & 0xA0509000 ^ ((v44 << 8) ^ 0x1000) & v45;
  v47 = (v38 - ((2 * v38) & 0x6D2EC16A) + 915890357) ^ v15 ^ (2 * ((v46 << 16) & 0x20500000 ^ v46 ^ ((v46 << 16) ^ 0x10170000) & ((v45 << 8) & 0xA0500000 ^ 0x20400000 ^ ((v45 << 8) ^ 0x50900000) & v45))) ^ 0xEFB50C2D;
  LODWORD(STACK[0x3E4]) = v34 + 699766010;
  v48 = (v34 - 1963990976) ^ v36;
  v49 = ((v37 + v10) ^ v36) - v48;
  LODWORD(STACK[0x3EC]) = v36 - 425929182;
  LODWORD(STACK[0x400]) = -175006137 - v47;
  v50 = v36 - 655351939;
  LODWORD(STACK[0x408]) = -1744295123 - v37;
  v51 = v48 - (v36 - 655351939);
  LODWORD(STACK[0x3F8]) = -122072768 - v25;
  LODWORD(STACK[0x348]) = v34;
  v52 = v25 - v34 - v51 + 648728015;
  v53 = (v47 - 1963990976) ^ v18 ^ 0x9835E80B;
  LODWORD(STACK[0x3F4]) = (v18 ^ 0x9835E80B ^ v38) + 1614328779;
  LODWORD(STACK[0x404]) = -1085946197 - (v18 ^ 0x9835E80B);
  v54 = v50 - v49;
  LODWORD(STACK[0x360]) = 2089450614;
  LODWORD(STACK[0x3F0]) = v35 - 69642771;
  v55 = v38 - v53;
  v56 = v53 - ((v18 ^ 0x9835E80B) - 655351939);
  v57 = (v18 ^ 0x9835E80B) - 655351939 - (v38 - v53);
  LODWORD(STACK[0x340]) = v35;
  v58 = v35 - v47 - v56 + 1849923815;
  v59 = LODWORD(STACK[0x3D8]) ^ (v49 + 1183980800);
  LOBYTE(STACK[0xF6F]) = v23 ^ (v38 - v53) ^ 0x9E;
  v60 = v52 + 1201195800;
  LODWORD(STACK[0x588]) = v24 ^ 0x1037;
  LOBYTE(v50) = v59 ^ (v52 + 24);
  LOBYTE(STACK[0xC01]) = v59 ^ 0xA3;
  v61 = v51 ^ (v49 + 1183980711 + v10);
  LOBYTE(v59) = v50 ^ v51 ^ v54;
  v62 = v23 ^ (v38 - v53) ^ v58;
  v63 = STACK[0x5A0];
  *(v63 + ((v52 & 0xB0 ^ 0x281189F6 ^ (v52 & 0xF6 ^ 0x28118946) & (v52 | 0x28118900)) & (((v49 + 1183980711) & 0xDE ^ ((v24 ^ 0x1037) - 256)) + ((v49 + 1183980711) & 0x281187DE)))) = v50 ^ 0xA3;
  v64 = v61 + 96795030;
  v65 = v56 ^ v55;
  *(v63 + (v50 & 0x71 ^ 0x21) + (v50 & 0x71 ^ 0x50)) = v62 ^ 0x9E;
  v66 = v54 - v61;
  v67 = v62 ^ v56;
  LOBYTE(STACK[0xCA6]) = v67 ^ 0x9E;
  v68 = v67 ^ v57;
  v69 = v57 - v65;
  v65 += 96795030;
  LOBYTE(STACK[0xD2B]) = v68 ^ 0x9E;
  v70 = v68 ^ v65;
  LOBYTE(STACK[0xD0B]) = v50 ^ v51 ^ 0xA3;
  LOBYTE(STACK[0xD90]) = v59 ^ 0xA3;
  LOBYTE(v52) = v59 ^ v64;
  v71 = (v60 ^ 0x55B652DA) + v64;
  LOBYTE(v59) = v59 ^ v64 ^ v71;
  LOBYTE(STACK[0xDB0]) = v70 ^ 0x9E;
  v72 = v51 ^ 0x8A810454 ^ v66;
  LOBYTE(STACK[0xE15]) = v52 ^ 0xA3;
  v73 = v65 + (v58 ^ 0x55B652DA);
  v74 = v70 ^ v73;
  LOBYTE(STACK[0xE35]) = v74 ^ 0x9E;
  v66 -= 380224453;
  v75 = v56 ^ 0x8A810454 ^ v69;
  LOBYTE(v57) = v59 ^ v72 ^ 0xA3;
  LOBYTE(v50) = v59 ^ v72 ^ v66;
  v69 -= 380224453;
  v76 = v74 ^ v75;
  v77 = v75 - v73;
  LOBYTE(STACK[0xE9A]) = v59 ^ 0xA3;
  v78 = v72 - v71;
  LOBYTE(STACK[0xBD1]) = v50 ^ 0xA3;
  LOBYTE(STACK[0xEBA]) = v76 ^ 0x9E;
  LOBYTE(STACK[0xF1F]) = v57;
  v79 = v76 ^ v69;
  v80 = v78 + v66;
  LOBYTE(STACK[0xF3F]) = v79 ^ 0x9E;
  v81 = v78 ^ 0x23E0DB4E;
  v82 = v71 - 1419581352;
  v83 = (v77 + v69) ^ (v73 - 1419581352);
  v84 = v71 + v64 + (v78 ^ 0x23E0DB4E);
  v85 = v82 ^ v78;
  v86 = (v73 - 1419581352) ^ v77;
  v77 ^= 0x23E0DB4Eu;
  LOBYTE(v50) = v50 ^ (v84 - ((2 * v84) & 0xE6) + 115);
  LOBYTE(v57) = v50 ^ 0x11;
  v87 = v73 + v65 + v77;
  v88 = v79 ^ v87;
  LOBYTE(STACK[0xBF1]) = v88 ^ 0x9E;
  v89 = v88 ^ v86;
  LOBYTE(STACK[0xC76]) = v89 ^ 0x9E;
  LOBYTE(v65) = (2 * (v50 ^ 0x11)) & 0x60;
  LOBYTE(v50) = v50 ^ v85;
  v90 = v80 ^ v82;
  v91 = v89 ^ v77;
  v92 = v81 - 730806663;
  LOBYTE(STACK[0xCFB]) = v91 ^ 0x9E;
  LOBYTE(STACK[0xC56]) = v57 - v65 + 48 - ((2 * (v57 - v65 + 48)) & 0xE3) - 15;
  LOBYTE(v65) = v50 ^ v81 ^ v90;
  v93 = v84 ^ (v81 - 730806663);
  v77 -= 730806663;
  v94 = v91 ^ v83;
  LOBYTE(STACK[0xD80]) = v94 ^ 0x9E;
  v95 = v85 - v93;
  v96 = v77 ^ v87;
  LOBYTE(STACK[0xD60]) = v50 ^ v81 ^ 0xD0;
  LOBYTE(STACK[0xCDB]) = v50 ^ 0xD0;
  v97 = v96 + v83 - v77;
  v98 = v90 - v81 + v93 + 730806663;
  LOBYTE(v81) = v65 ^ 0xD0;
  v99 = v86 + 677670619 - v96;
  LOBYTE(v65) = v65 ^ (v93 - 60);
  v96 += 89262276;
  LOBYTE(STACK[0xDE5]) = v81;
  v100 = v94 ^ v96;
  LOBYTE(STACK[0xE05]) = v100 ^ 0x9E;
  v101 = v100 ^ v99;
  LOBYTE(v81) = v65 ^ (v95 - 37);
  LOBYTE(STACK[0xE8A]) = v101 ^ 0x9E;
  LOBYTE(STACK[0xE6A]) = v65 ^ 0xD0;
  LOBYTE(v50) = v81 ^ v92 ^ 0xFA;
  LOBYTE(STACK[0xEEF]) = v81 ^ 0xD0;
  v102 = v77 ^ 0x4CEB8FA;
  v103 = v96 - (v77 ^ 0x4CEB8FA);
  v104 = v101 ^ v77 ^ 0x4CEB8FA;
  v105 = (v95 + 677670619) ^ 0xB64F0C21;
  LOBYTE(STACK[0xF0F]) = v104 ^ 0x9E;
  v106 = (v92 ^ 0x4CEB8FA) + 632419743;
  v107 = v93 - (v92 ^ 0x4CEB8FA) + 160189291;
  v108 = v104 ^ v97;
  LOBYTE(STACK[0xF74]) = v50 ^ 0xD0;
  LOBYTE(v50) = v50 ^ v98;
  v109 = v98 + v106;
  LOBYTE(STACK[0xBC1]) = v108 ^ 0x9E;
  v103 += 70927015;
  v102 += 632419743;
  v110 = v102 + v97;
  LOBYTE(v97) = v50 ^ 0xD0;
  LOBYTE(v50) = v50 ^ v107;
  LOBYTE(STACK[0xC26]) = v97;
  v111 = (v99 ^ 0xB64F0C21) + v102;
  v112 = v108 ^ v103;
  v113 = v105 + v107;
  v114 = v105 + v106;
  v115 = v109 + v107;
  v116 = v103 + v110;
  LOBYTE(STACK[0xC46]) = v112 ^ 0x9E;
  v117 = v103 + (v99 ^ 0xB64F0C21);
  LOBYTE(STACK[0xCAB]) = v50 ^ 0xD0;
  v118 = v112 ^ v117;
  LOBYTE(STACK[0xCCB]) = v118 ^ 0x9E;
  v119 = v118 ^ v111;
  LOBYTE(STACK[0xD50]) = v119 ^ 0x9E;
  LOBYTE(v97) = v50 ^ v113 ^ 0xD0;
  LOBYTE(v99) = v50 ^ v113 ^ v114;
  v120 = -v110;
  LOBYTE(STACK[0xD30]) = v97;
  v114 ^= 0xA8498B91;
  LOBYTE(STACK[0xDB5]) = v99 ^ 0xD0;
  LOBYTE(v97) = v99 ^ v115;
  v121 = -v109 ^ 0x2403BEA7;
  LOBYTE(v99) = (v119 & 0x30 ^ 0xEF) & (v119 & 0x30 ^ 0xD8) ^ v99 ^ v115 ^ 0x18;
  v122 = v119 ^ v116;
  v111 ^= 0xA8498B91;
  v123 = v117 - v110 + v111;
  LOBYTE(STACK[0xE3A]) = v99;
  v115 ^= 0xCFCF4993;
  v124 = v114 ^ v115;
  LOBYTE(STACK[0xDD5]) = v122 ^ 0x9E;
  v116 ^= 0xCFCF4993;
  LOBYTE(v97) = v97 ^ v121;
  v125 = v113 - v109 + v114;
  v126 = v116 ^ v111;
  v127 = v116 + v110;
  v128 = v122 ^ v120 ^ 0x2403BEA7;
  v129 = v115 + v109;
  v130 = v121 + 27246189 + v129;
  LOBYTE(STACK[0xE5A]) = v128 ^ 0x9E;
  v131 = v128 ^ v123;
  LOBYTE(STACK[0xEDF]) = v131 ^ 0x9E;
  LOBYTE(STACK[0xF44]) = v97 ^ v125 ^ 0xD0;
  LOBYTE(v121) = v97 ^ v125 ^ v124 ^ v129;
  LOBYTE(STACK[0xBF6]) = v97 ^ v125 ^ v124 ^ 0xD0;
  LOBYTE(STACK[0xEBF]) = v97 ^ 0xD0;
  v132 = v131 ^ v126;
  v133 = v125 - v130 + 1180340149;
  LOBYTE(STACK[0xF64]) = v132 ^ 0x9E;
  v134 = (v120 ^ 0x2403BEA7) + 314715726 + v127;
  v135 = v132 ^ v127;
  v136 = v123 - v134 + 1849522863;
  v137 = v130 - v133 + 1125847771;
  LOBYTE(STACK[0xC16]) = v135 ^ 0x9E;
  v138 = v133 - v124;
  LOBYTE(v113) = v133 - v124 + 70;
  LOBYTE(STACK[0xC7B]) = v121 ^ 0xD0;
  LOBYTE(v97) = v121 ^ v137;
  v139 = v134 - v136 + 1220091411;
  v124 -= 1985031205;
  v140 = v129 - v133 - 1824462885;
  LOBYTE(v121) = v121 ^ v137 ^ v113;
  v141 = v136 - v126;
  v142 = v136 - v126 + 617713709;
  v143 = v135 ^ v139;
  v144 = v127 - v136 - 1442749708;
  LOBYTE(STACK[0xC9B]) = v143 ^ 0x9E;
  v126 -= 1985031205;
  v145 = v143 ^ v142;
  LOBYTE(STACK[0xD20]) = v145 ^ 0x9E;
  LOBYTE(STACK[0xD00]) = v97 ^ 0xD0;
  LOWORD(v142) = v138 - 7603;
  v146 = v145 ^ v126;
  LOBYTE(STACK[0xDA5]) = v146 ^ 0x9E;
  v147 = v146 ^ v144;
  LOBYTE(v54) = v121 ^ v124 ^ v140;
  LOBYTE(STACK[0xE8F]) = v54 ^ 0xD0;
  LOBYTE(STACK[0xE2A]) = v146 ^ v144 ^ 0x9E;
  v148 = v141 - 1270992308;
  v149 = v126 - v139;
  LOBYTE(STACK[0xE0A]) = v121 ^ v124 ^ 0xD0;
  v150 = v124 - v137;
  v151 = v144 - v139;
  v152 = (v138 - 889279131 + v137) ^ v150;
  v153 = (v139 + v148) ^ v149;
  v149 += 1242514557;
  LOBYTE(STACK[0xD85]) = v121 ^ 0xD0;
  v154 = v151 ^ v148;
  v150 += 1242514557;
  v155 = (v140 - v137) ^ (v138 - 889279131);
  LOBYTE(STACK[0xEAF]) = v147 ^ v153 ^ 0x9E;
  v156 = v148 ^ v147 ^ v153;
  LOBYTE(v121) = v156 ^ v149;
  LOBYTE(STACK[0xF14]) = v54 ^ v152 ^ 0xD0;
  LOBYTE(v140) = (v138 + 101) ^ v54 ^ v152;
  LOBYTE(STACK[0xBC6]) = v140 ^ 0xC9;
  LOBYTE(STACK[0xF34]) = v156 ^ 0x87;
  v157 = v156 ^ v149 ^ v154;
  LOBYTE(STACK[0xBE6]) = v121 ^ 0x87;
  LOBYTE(v121) = v140 ^ v150 ^ v155 ^ 0x35;
  LOBYTE(v147) = v140 ^ v150 ^ 0xC9;
  v158 = v154 - v153;
  LOBYTE(STACK[0xC4B]) = v147;
  LOBYTE(STACK[0xC6B]) = v157 ^ 0x87;
  v159 = (v121 & 0x15 ^ 0x5144B9D5) & (v121 & 0xEA ^ 0x7FCEBFFD) | v121 & 0x2A;
  LOBYTE(STACK[0xCD0]) = v159 ^ 0x29;
  v160 = v138 - ((2 * (v138 - 2090474931)) & 0x13E);
  v161 = (v138 + 77) ^ (435 - v138);
  v162 = (v149 - v158) ^ 0x60090032;
  v163 = ((v149 - v158) ^ v153) + v162;
  v164 = v157 ^ v163;
  v165 = (v138 - 889279131) ^ 0xE9B83997 ^ v150;
  v166 = v155 - v152;
  v167 = v150 - (v155 - v152);
  v168 = v167 ^ v152;
  v167 ^= 0x60090032u;
  v169 = v168 + v167;
  v170 = v165 + v166;
  v171 = v148 ^ 0xE9B83997 ^ v149;
  LOBYTE(v149) = v164 ^ v171;
  v172 = v159 ^ v169;
  *(v63 + (((v161 ^ 0x9F ^ (v160 + 236)) - 1) & 0x1A5) + (v142 & 0x1A5)) = v172 ^ 0x29;
  LOBYTE(v142) = v172 ^ v165;
  v173 = v171 + v158;
  LOBYTE(STACK[0xCF0]) = v164 ^ 0x87;
  v174 = v164 ^ v171 ^ v162;
  LOBYTE(STACK[0xD75]) = v149 ^ 0x87;
  v175 = v169 ^ v165;
  v176 = v172 ^ v165 ^ v167;
  LOBYTE(v172) = v174 ^ v173;
  v177 = v165 - v167;
  LOBYTE(STACK[0xE5F]) = v176 ^ 0x29;
  LOBYTE(STACK[0xDFA]) = v174 ^ 0x87;
  LOBYTE(STACK[0xDDA]) = v142 ^ 0x29;
  v178 = v163 ^ v171;
  v179 = v163 ^ v171 ^ 0xEE3461FF;
  v180 = v174 ^ v173 ^ v179;
  LOBYTE(STACK[0xE7F]) = v172 ^ 0x87;
  v181 = v175 ^ 0xEE3461FF;
  v182 = v176 ^ v170;
  LOBYTE(STACK[0xEE4]) = v182 ^ 0x29;
  v183 = v171 - v162;
  v184 = v183 ^ v173;
  v185 = v175 ^ v177;
  v186 = (v175 ^ v167) - v175;
  v187 = (v178 ^ v162) - v178;
  v188 = v178 ^ v183;
  LOBYTE(v183) = v182 ^ v181;
  v189 = v185 ^ v182 ^ v181;
  v190 = v189 ^ v186;
  LOBYTE(STACK[0xC1B]) = v189 ^ 0x29;
  v191 = v180 ^ v188;
  LOBYTE(STACK[0xF04]) = v180 ^ 0x87;
  v192 = v177 ^ v170;
  v193 = v190 ^ v177 ^ v170;
  LOBYTE(STACK[0xBB6]) = v191 ^ 0x87;
  LOBYTE(v177) = v183 ^ 0x29;
  v194 = v191 ^ v187 ^ v184 ^ 0x899BB920;
  LOBYTE(STACK[0xF69]) = v177;
  LOBYTE(STACK[0xC3B]) = v191 ^ v187 ^ 0x87;
  v195 = v185 ^ 0x73CCFD1F;
  v196 = v186 + 2 * (v185 ^ 0x73CCFD1F);
  v197 = v181 - 1817689313 - v196;
  LOBYTE(STACK[0xCA0]) = v190 ^ 0x29;
  v198 = v188 ^ 0x73CCFD1F;
  v199 = v187 + 2 * (v188 ^ 0x73CCFD1F);
  v200 = v179 - v199 - 1817689313;
  LOBYTE(STACK[0xCC0]) = v194 ^ 0xB4;
  v201 = v184 ^ 0x454EAFB2 ^ v179;
  v202 = v192 ^ 0x7B0FCFFB ^ v181;
  v203 = v193 ^ v197 ^ 0xB7D3C776;
  v204 = v196 ^ (v195 + 255078394);
  v205 = ((v203 >> 7) | 0xFE) & ((2 * v203) ^ 0xF) ^ 0x37;
  LOBYTE(STACK[0xD25]) = v193 ^ 0x3A;
  LOBYTE(STACK[0xD45]) = v194 ^ v200 ^ 0xB4;
  v206 = (v199 - ((2 * v199) & 0x3B2EE142) - 1651019615) ^ v201;
  v207 = v203 ^ (v195 + 255078394);
  v198 += 255078394;
  v208 = v194 ^ v200 ^ v198;
  LOBYTE(STACK[0xDAA]) = ((v205 >> 1) | (v205 << 7)) ^ 0xD0;
  v209 = v208 ^ 0x372335A;
  LOBYTE(STACK[0xDCA]) = v208 ^ 0xB4;
  LOBYTE(STACK[0xE4F]) = v208 ^ 0x5A ^ v199 ^ 0xEE;
  v210 = (v196 - ((2 * v196) & 0x47AC21D0) - 1546252056) ^ v202;
  v211 = v207 ^ v202;
  LOBYTE(v207) = v207 ^ 0x4C;
  LOBYTE(STACK[0xE2F]) = v207;
  v212 = v209 ^ v201;
  LOBYTE(STACK[0xED4]) = v212 ^ 0x4F;
  LOBYTE(STACK[0xF39]) = v211 ^ 0xA4;
  v213 = v210 - 2 * v204;
  v214 = (v210 ^ v197) - v213;
  LOBYTE(STACK[0xEB4]) = v207 ^ v196;
  v215 = v196 + 1503363390 + v204;
  v216 = v199 ^ v198;
  v217 = v206 - 2 * (v199 ^ v198);
  v218 = ((2 * ((v199 ^ v198) + v199)) & 0xB337027C) + (((v199 ^ v198) + v199) ^ 0x599B813E);
  v219 = (v206 ^ v200) - v217;
  v220 = v212 ^ v219;
  v221 = v211 ^ v214;
  LOBYTE(STACK[0xBEB]) = v221 ^ 0xA4;
  v216 -= 376538037;
  v222 = v221 ^ (v204 + 75);
  LOBYTE(STACK[0xF59]) = v220 ^ 0x4F;
  v219 -= 200528666;
  LOBYTE(v221) = v222 ^ ((v217 & 0x30 ^ 0x30) + (v217 & 0x30)) ^ 0x94;
  v223 = v222 ^ v215;
  *(v63 + (((((1892405253 - v195) | (v195 + 255078394)) & 0x70D04A64u) + 726865228) ^ 0x9C235F70)) = v221;
  LOBYTE(STACK[0xC0B]) = v220 ^ v216 ^ 0x4F;
  v224 = v220 ^ v216 ^ v218;
  v225 = v223 ^ v213;
  LOBYTE(STACK[0xC90]) = v224 ^ 0x4F;
  LOBYTE(STACK[0xCF5]) = v223 ^ 0xA4;
  v226 = v213 - 1870828949;
  LOBYTE(STACK[0xD7A]) = v223 ^ v213 ^ 0xA4;
  v227 = v204 - 376538037 + v213 - 1870828949;
  v228 = v224 ^ v217;
  v229 = v217 - 1870828949 + v216;
  v230 = v215 ^ (v214 - 200528666) ^ 0x6D0F0563 ^ (v213 - ((2 * (v213 - 1870828949)) & 0xDA1E0AC6) - 41127986);
  v231 = v218 ^ v219 ^ 0x23775FD1 ^ (v217 - 1275803076 - ((2 * (v217 - 1870828949)) & 0x46EEBFA2));
  v232 = v227 + v214;
  LOBYTE(STACK[0xD15]) = v228 ^ 0x4F;
  v233 = v217 - 1870828949 - (v229 + 782327903);
  v234 = v229 + 782327903 + v219;
  v235 = v225 ^ (v232 + 564584261);
  v236 = v228 ^ v234;
  LOBYTE(STACK[0xD9A]) = v236 ^ 0x4F;
  v237 = v236 ^ (v229 + 782327903);
  v238 = v235 ^ (v227 + 782327903);
  LOBYTE(STACK[0xE1F]) = v237 ^ 0x4F;
  v239 = v237 ^ v231;
  v240 = v226 - (v227 + 782327903);
  LOBYTE(v215) = v238 ^ v230;
  LOBYTE(STACK[0xE84]) = v238 ^ 0xA4;
  v241 = v238 ^ v230 ^ v240;
  LOBYTE(STACK[0xEA4]) = v239 ^ 0x4F;
  LOBYTE(STACK[0xBBB]) = v241 ^ 0xA4;
  LOBYTE(STACK[0xDFF]) = v235 ^ 0xA4;
  LOBYTE(STACK[0xF09]) = v215 ^ 0xA4;
  v242 = v239 ^ v233;
  v243 = v227 - 406384179;
  v244 = v229 - 406384179;
  v245 = ((v232 + 581799237) ^ 0xDE4ABF30) + 1163627718;
  LOBYTE(STACK[0xF29]) = v242 ^ 0x4F;
  v246 = -1564655806 - 2 * v229 + v233 - v231;
  v247 = -1564655806 - 2 * v227 + v240;
  v248 = v247 - v230;
  v249 = v241 ^ v245;
  v250 = (((v232 + 581799237) ^ 0xDE4ABF30) + 1156803718 + (((5403322 - v232) ^ (v232 + 581799237)) & 0x682040)) ^ v243;
  v230 += 1188712082;
  v251 = (v234 ^ 0xDE4ABF30) + 1163627718;
  v231 += 1188712082;
  LOBYTE(STACK[0xC40]) = v241 ^ v245 ^ 0xA4;
  v252 = v251 ^ v244;
  LOBYTE(STACK[0xBDB]) = v242 ^ 0x4F ^ v251;
  v253 = v242 ^ v244;
  LOBYTE(STACK[0xC60]) = v253 ^ 0x4F;
  v254 = v249 ^ (v250 + 89 * ((v246 & 0xBFDDB8D8 ^ 0xD8) + (v246 & 0xD8)) + 232) ^ v230 ^ v248;
  v255 = v248 ^ v245;
  LOBYTE(STACK[0xCC5]) = v249 ^ (v250 + 89 * ((v246 & 0xD8 ^ 0xD8) + (v246 & 0xD8)) - 24) ^ 0xA4;
  v256 = v253 ^ v231;
  v257 = v247 - 1482164133;
  LOBYTE(STACK[0xD4A]) = v249 ^ (v250 + 89 * ((v246 & 0xD8 ^ 0xD8) + (v246 & 0xD8)) - 24) ^ v230 ^ 0xA4;
  v258 = (v247 - 1482164133) ^ v255;
  LOBYTE(STACK[0xDCF]) = v254 ^ 0xA4;
  v259 = v246 ^ v251;
  v260 = v252 - v259;
  LOBYTE(STACK[0xCE5]) = v256 ^ 0x4F;
  v261 = v250 - v255;
  v262 = v256 ^ v246;
  v263 = v261 ^ 0xE21B836F;
  v264 = v246 + v231;
  LOBYTE(STACK[0xD6A]) = v262 ^ 0x4F;
  v265 = (v264 + 1624091081) ^ v259;
  v266 = v230 + 2 * v261;
  v267 = v262 ^ v265;
  v268 = v231 + 2 * v260;
  LOBYTE(STACK[0xDEF]) = v267 ^ 0x4F;
  v269 = v254 ^ v258 ^ v261 ^ 0xE21B836F;
  LOBYTE(STACK[0xE54]) = v254 ^ (v247 + 91) ^ v255 ^ 0xA4;
  LOBYTE(v254) = v269 ^ 0x54;
  v260 ^= 0xD432FAC6;
  v270 = v269 ^ v266;
  LOBYTE(STACK[0xED9]) = v254;
  v271 = v267 ^ v260;
  LOBYTE(STACK[0xE74]) = v271 ^ 0x16;
  v272 = v266 - (v247 - 1482164133);
  v273 = v271 ^ v268;
  LOBYTE(v271) = v271 ^ v268 ^ 0x16;
  v247 -= 4400116;
  v274 = v257 - ((2 * v247) & 0xE43BA1E0);
  v275 = v270 ^ v257;
  v276 = (v274 + 1244837025) ^ v263;
  v277 = v268 - (v264 + 1624091081);
  LOBYTE(STACK[0xEF9]) = v271;
  v278 = v273 ^ (v264 + 1624091081);
  v279 = v264 - 1193112198;
  LOBYTE(STACK[0xF7E]) = v273 ^ (v264 - 55) ^ 0x16;
  LOBYTE(STACK[0xF5E]) = v270 ^ 0x54;
  LOBYTE(STACK[0xC10]) = v275 ^ 0x54;
  v280 = (v264 - ((2 * (v264 - 1193112198)) & 0x886952B2) + 2098673363) ^ v260;
  v281 = v276 + v247;
  v282 = v275 ^ (v258 - 266486150) ^ 0x82FC4622;
  v283 = v280 + v279;
  v284 = v276 + v272;
  v285 = v278 ^ (v265 - 266486150) ^ 0x82FC4622;
  LOBYTE(STACK[0xC30]) = v285 ^ 0x16;
  v286 = v280 + v277;
  v287 = v285 ^ v286;
  LOBYTE(STACK[0xD1A]) = v282 ^ (v276 + v272) ^ 0x54;
  LOBYTE(STACK[0xCB5]) = v287 ^ 0x16;
  v288 = v282 ^ (v276 + v272) ^ (v272 - (v276 + v247));
  LOBYTE(STACK[0xC95]) = v282 ^ 0x54;
  v289 = v287 ^ (v277 - v283);
  LOBYTE(STACK[0xD3A]) = v289 ^ 0x16;
  v290 = v289 ^ v283;
  LODWORD(STACK[0x36C]) = v290 ^ 0x1FBC3788;
  LOBYTE(STACK[0xDBF]) = v290 ^ 0x16;
  LODWORD(STACK[0x3D8]) = v288 ^ v281 ^ 0xD049CAF7;
  LOBYTE(STACK[0xE24]) = v288 ^ v281 ^ 0x54;
  v291 = LODWORD(STACK[0x43C]) == LODWORD(STACK[0x358]);
  LOBYTE(STACK[0xD9F]) = v288 ^ 0x54;
  v292 = v291;
  LODWORD(STACK[0x56C]) = v284 + v281 + 2041901706;
  LODWORD(STACK[0x568]) = v283 + v286 + 2044799470;
  return (*(STACK[0x578] + 8 * (v24 ^ ((8 * v292) | (16 * v292)))))();
}

uint64_t sub_1968C1D0C()
{
  v3 = LODWORD(STACK[0x36C]) - 1105;
  v4 = v0 ^ v1 ^ (229 * (v3 ^ 0x1215u));
  return (*(v2 + 8 * (((v4 > 7) * ((89 * (v3 ^ 0x122A)) ^ 0xD25)) | v3)))(0x239F6029FF9C30C4, 0x91CFB014FFCE1862, 0xC8AC06D1AA17677DLL, 0x99DC5D265ED1C336, 0xB311D16CD0971E64, 0xD2544C4620883A93, v4);
}

void sub_1968C1ED0()
{
  v4 = *(v0 + 16);
  **(v0 + 8) = *v1;
  *v4 = *v2 - ((*v2 << (v3 ^ 7)) & 0xCC513B1E) + 1713937807;
  *(v0 + 24) = 1906281716;
}

uint64_t sub_1968C1FF4()
{
  result = (*(v1 + 8 * (v4 + 6254)))(**(v2 + 8 * (v4 ^ 0x94)), v7, v6);
  *(v0 + 20) = v3;
  return result;
}

void fp_dh_da0911e48f7dbc7ce9d60a84b1eefd5d(uint64_t a1)
{
  v1 = 489239129 * ((((2 * a1) | 0x7271289C) - a1 + 1187474354) ^ 0x10B778);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(a1 + 32) - v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 469762048;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1968C21A4@<X0>(unsigned int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v8 - v4 + v2 + 1;
  v10 = v2 + v8 + (a1 ^ 0x96ELL);
  v11 = v3 + v8 - v4 + (a1 ^ 0x96ALL);
  v12 = v8 + v3 + 5;
  v13 = v8 + v1 + 3;
  v15 = v9 < v5 + v4 && v10 > v5;
  v17 = v12 > v5 && v11 < v7 || v15;
  if (v13 <= v5 || v13 - v4 >= v7)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 8 * ((173 * v19) ^ a1)))(v4);
}

uint64_t sub_1968C2244@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v7 = *(v2 + a2 + 40);
  v8 = v3 + a2;
  *(v8 + 24) = *(v2 + a2 + 24);
  *(v8 + 40) = v7;
  return (*(a1 + 8 * (v4 ^ (4 * (a2 + 32 == (v4 ^ v6) + v5)))))();
}

uint64_t sub_1968C2280@<X0>(int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v8 = (a2 + a3);
  *v8 = v7;
  v8[1] = v7;
  return (*(v6 + 8 * (((((v4 + 598429980) & 0xDC54B56D ^ v5) == (v3 & 0xFFFFFFFFFFFFFFF0)) * a1) ^ v4)))();
}

uint64_t sub_1968C22D4(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v12 = v11 - 1;
  v13 = *(v9 + 8);
  v14 = *(v13 + 4 * v12 - 4) ^ (v7 + a1 + 271 - 2649);
  *(v13 + 4 * (a6 - 1)) = ((v14 >> v8) & a3 | (a7 ^ a2) & ~(v14 >> v8)) ^ a2;
  return (*(v10 + 8 * (((v12 < 2) * a5) ^ a1)))();
}

uint64_t sub_1968C2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _BYTE *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *a27 = (v33 - ((2 * v33) & 0x78) + 60) ^ ((v35 ^ v34) + 108) ^ 0x41;
  v37 = 1283153057 * (((v31 | 0x1131E4FD) + (~v31 | 0xEECE1B02)) ^ 0x5EE9E7CB);
  *(v36 - 144) = v32;
  *(v36 - 136) = a27;
  *(v36 - 128) = v37 + v35 + 654;
  *(v36 - 124) = v37 + 814017526;
  (*(a3 + 8 * (v35 + 2414)))(v36 - 144);
  *(v36 - 128) = v35 + 753662761 * (((v31 | 0x16A912A3) + (~v31 | 0xE956ED5C)) ^ 0x73B3E9E9) + 187;
  *(v36 - 144) = v32;
  *(v36 - 136) = a28 + 16 * v33;
  v38 = (*(a31 + 8 * (v35 ^ 0xB0F)))(v36 - 144);
  return (*(a31 + 8 * (v35 ^ (38 * (v33 != 8)))))(v38);
}

uint64_t sub_1968C252C()
{
  STACK[0x590] = v1 - 1824;
  LODWORD(STACK[0x380]) = v0;
  return (*(v3 + 8 * (((116 * ((v2 - 1917915773) & 0x7250FFBF ^ 0x53B) - 96) * (STACK[0x510] == 0)) ^ (v2 + 256))))();
}

void fp_dh_e65dd2fa93edf59ffd3c05ad1c17a023(uint64_t a1)
{
  v1 = 1825732043 * ((-2 - ((~a1 | 0xF2A7B6C6) + (a1 | 0xD584939))) ^ 0xF231E5F1);
  if (*(a1 + 24))
  {
    v2 = *(a1 + 12) - v1 == 1456321583;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t fp_dh_38f653be3d460c9016e76a04125d9d17(_DWORD *a1)
{
  v1 = 1621291457 * ((a1 + 820797179 - 2 * (a1 & 0x30EC5EFB)) ^ 0x6FBDF62);
  v2 = a1[1] - v1;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 2566)) + 8 * (((((v2 - 25) ^ (*a1 - v1 - 1906281717 < 0x63)) & 1) * (((v2 - 606) | 0x45) ^ 0xB10)) ^ v2) - 4))();
}

uint64_t sub_1968C2738(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v6 + 40);
  *(v5 - 112) = veorq_s8(**v6, xmmword_196EBFA40);
  if (v3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  v10 = *(v4 + 8 * ((81 * v9) ^ a3));
  *(v5 - 136) = -42900;
  return v10(a1, a2);
}

uint64_t sub_1968C29D8(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x534]) = LODWORD(STACK[0x544]) + LODWORD(STACK[0x3FC]);
  v18 = STACK[0x45C];
  v19 = 74 * (LODWORD(STACK[0x45C]) ^ 0x17B2);
  LODWORD(STACK[0x598]) = v19;
  v20 = v16 ^ a6 ^ ((v19 ^ 0x583F2BDB) + v17);
  v21 = (v18 - 810) | 5;
  LODWORD(STACK[0x510]) = v21;
  v22 = ((v14 ^ v8) - v8) ^ ((v14 ^ v10) - v10) ^ ((((v20 ^ v12 ^ 0xCA6E3271) + 282686380) ^ (v21 - 2083512453 + (v20 ^ v12 ^ 0x5967720D)) ^ ((v20 ^ v12 ^ 0xF20FF9E8) + 683194419)) - (((v20 ^ 0x379E5A54) - 316073073) ^ ((v20 ^ 0xB4EC90F5) + 1851511088) ^ ((v20 ^ 0xFD90ACDD) + 656928008)) - 391958696);
  LODWORD(STACK[0x564]) = ((v11 ^ 0x897547CC) + 2083671089) ^ ((v11 ^ 0x80A6BE1E) + 1977726435) ^ ((v11 ^ 0x7D896BAD) - 1999740846);
  LODWORD(STACK[0x558]) = ((v22 ^ 0xC28F410C) - 2092921887) ^ ((v22 ^ 0x814531CF) - 1064633564) ^ ((v22 ^ 0x43CA70C3) + 33929776);
  v23 = (((v9 - 609286332) ^ 0xD5078836) + 2021962504) ^ (((v9 - 609286332) ^ 0xE64AB3BB) + 1271498891) ^ (((v9 - 609286332) ^ 0x2599D841) - 2011503759);
  v24 = (a8 + v17 - 812706965) ^ a6;
  v25 = v9 - 609286332 + (a6 ^ 0xD2EAB7C7);
  v26 = a2 + (a6 ^ 0xD2EAB7C7);
  v27 = STACK[0x4FC];
  LODWORD(STACK[0x544]) = ((LODWORD(STACK[0x4FC]) ^ 0x9FA1D8B) - 167386507) ^ ((LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x330])) - 143250262) ^ ((LODWORD(STACK[0x4FC]) ^ 0x7F91A8A1) - 2140252321);
  v28 = v25 ^ v27 ^ v24;
  v29 = (((v28 ^ LODWORD(STACK[0x554]) ^ 0x2AAEA720) + 354578119) ^ ((v28 ^ LODWORD(STACK[0x554]) ^ 0x7F5BE08F) + 1087842666) ^ ((v28 ^ LODWORD(STACK[0x554]) ^ 0xE61949FC) - 644513765)) - (((v28 ^ 0x12335ADC) + 767529787) ^ ((v28 ^ 0xF53B9F3C) - 893954341) ^ ((v28 ^ 0x4B00145B) + 1955388862));
  v30 = (a1 - v13 - 253872987) ^ v10;
  v31 = (((v30 ^ LODWORD(STACK[0x554]) ^ 0x8672A617) + 1159686424) ^ ((v30 ^ LODWORD(STACK[0x554]) ^ 0xEC06365F) + 795605344) ^ ((v30 ^ LODWORD(STACK[0x554]) ^ 0xA77AF867) + 1679243112)) - (((v30 ^ 0x15BD2307) - 690951160) ^ ((v30 ^ 0x687ECC24) - 1424817371) ^ ((v30 ^ 0xAF2958E4) + 1816434661));
  v32 = ((v24 ^ 0xF07D50B8) + 41308705) ^ ((v24 ^ 0x49332110) - 1153948791) ^ ((v24 ^ 0x7D0909FE) - 1895691417);
  v33 = v31 - ((2 * v31 + 105358128) & 0x3545BAE8);
  v34 = (v10 ^ 0xD2EAB7C7) + a5;
  v35 = v13 + 1075470627 + (v10 ^ 0xD2EAB7C7);
  v36 = ((LODWORD(STACK[0x554]) ^ v15 ^ v35) - v35) ^ (v33 - 1647923444) ^ 0x9AA2DD74 ^ (v29 + 119754920);
  LODWORD(STACK[0x524]) = v23;
  v37 = v26 - v23;
  v38 = (v26 - v23 - 1151870722) ^ v24;
  v39 = v23 - v37;
  v40 = v32 - (v23 - v37);
  v41 = (v39 - 1991225852) ^ v25;
  v42 = ((v38 ^ 0x5B7351B8) - 104704034) ^ ((v38 ^ 0xA40C761E) + 113078396) ^ ((v38 ^ 0x3B385FF0) - 1719051882);
  v43 = (v17 ^ 0x4C574030) & (2 * (v17 & 0x48676804)) ^ v17 & 0x48676804;
  v44 = ((2 * (v17 ^ 0xCC998038)) ^ 0x9FDD078) & (v17 ^ 0xCC998038) ^ (2 * (v17 ^ 0xCC998038)) & 0x84FEE83C;
  v45 = (v44 ^ 0xBCC030) & (4 * v43) ^ v43;
  v46 = ((4 * (v44 ^ 0x84022804)) ^ 0x13FBA0F0) & (v44 ^ 0x84022804) ^ (4 * (v44 ^ 0x84022804)) & 0x84FEE83C;
  v47 = (v46 ^ 0xFAA020) & (16 * v45) ^ v45;
  v48 = ((16 * (v46 ^ 0x8404480C)) ^ 0x4FEE83C0) & (v46 ^ 0x8404480C) ^ (16 * (v46 ^ 0x8404480C)) & 0x84FEE830;
  v49 = v47 ^ 0x84FEE83C ^ (v48 ^ 0x4EE8000) & (v47 << 8);
  v50 = (v49 << 16) & 0xE60000 ^ v49 ^ ((v49 << 16) ^ 0x683C0000) & (((v48 ^ 0x8010683C) << 8) & 0x4FE0000 ^ 0x160000 ^ (((v48 ^ 0x8010683C) << 8) ^ 0x7EE80000) & (v48 ^ 0x8010683C));
  LODWORD(STACK[0x554]) = v36 - ((v13 + 1075470627) ^ 0x16D4E3CC);
  v30 ^= 0xC4477856;
  v51 = v34 - ((v13 + 1075470627) ^ 0x16D4E3CC);
  v52 = ((v13 + 1075470627) ^ 0x16D4E3CC) - v51;
  v53 = v51 ^ v30;
  v54 = v30 - v52;
  v55 = ((v30 - v52) & 0x9133710C ^ 0x9133710C) + ((v30 - v52) & 0x9133710C);
  v56 = STACK[0x570];
  v57 = (v40 + 1080244013) ^ LODWORD(STACK[0x570]) ^ v41;
  v58 = (v52 ^ v35) + v53;
  v59 = v52 ^ v35 ^ LODWORD(STACK[0x500]);
  v60 = v52 ^ v35 ^ 0x2562EC60;
  LODWORD(STACK[0x514]) = (((v59 ^ 0x3A863388) - v60) ^ 0xB12EFA6 ^ ((LODWORD(STACK[0x448]) ^ v54) - v54 + 185790374 - ((2 * ((LODWORD(STACK[0x448]) ^ v54) - v54)) & 0x1625DF4C)) ^ ((((v57 ^ LODWORD(STACK[0x500]) ^ 0x3EAD893F) - 611472109) ^ ((v57 ^ LODWORD(STACK[0x500]) ^ 0x1FDA01D4) - 84269574) ^ ((v57 ^ LODWORD(STACK[0x500]) ^ 0x6513DD1F) - 2144077517)) - (((v57 ^ 0x12298CBA) - 150361960) ^ ((v57 ^ 0xDF143C8D) + 976492705) ^ ((v57 ^ 0x96BD3A2B) + 1939676679)) + 492584024)) - (v55 ^ v52);
  LODWORD(STACK[0x570]) = ((v56 ^ 0xBCC133FD) + 1128188931) ^ ((v56 ^ 0xB0E5CE04) + 1327116796) ^ ((v56 ^ 0x72C69B85) - 1925618565);
  v61 = (((v17 ^ (2 * v50)) & 0xD3CF8894 ^ 0x41C28814) + ((((v17 ^ 0x42863CAF) + 182539437) ^ v17 ^ ((v17 ^ 0x6004BEFE) + 677631742) ^ ((v17 ^ 0xE2C5E052) - 1432188846) ^ ((v17 ^ 0x77DFF5FF) + 1069063677)) & 0xD3CF8894 ^ 0x40470800)) ^ v25;
  v62 = v42 - (v40 + 1177102205) + (((v41 ^ 0xDDA94768) - 1975607332) ^ ((v41 ^ 0x67AD71A3) + 809150737) ^ ((v41 ^ 0xBA0436CB) - 309072263)) + 1194826088;
  v63 = (v41 ^ 0x2562EC60) - v62;
  v64 = (((v61 ^ 0xF12BDB12) - 896864850) ^ ((v61 ^ 0x9066EBB8) - 1412965112) ^ ((v61 ^ 0xD51CADC6) - 289563782)) - 2118413733;
  v65 = ((((v40 + 1080244013) ^ 0x55AA0A31) + 1686172045) ^ (((v40 + 1080244013) ^ 0x63ABB4C3) + 1384206207) ^ (((v40 + 1080244013) ^ 0xCA23D78C) - 83284942)) + v64;
  v66 = (v63 - 844315938) ^ LODWORD(STACK[0x588]) ^ (v65 + 558575373);
  v67 = ((v55 ^ v35 ^ 0x93E2D9BA) - 1699724622) ^ ((v55 ^ v35 ^ 0x7D800259) + 1959958867) ^ ((v55 ^ v35 ^ 0x18CFBF17) + 295511069);
  v68 = v58 - v54;
  v69 = v67 + (((v54 ^ 0x4D666364) + 1152347691) ^ ((v54 ^ 0x55000516) + 1556678745) ^ ((v54 ^ 0xE4440F0C) - 309525949));
  v70 = v60 - v68;
  v71 = ((LODWORD(STACK[0x44C]) ^ (v69 + 169122767)) - (v69 + 169122767)) ^ ((LODWORD(STACK[0x44C]) ^ (v60 - v68 - 844315938)) - (v60 - v68 - 844315938)) ^ ((((v66 ^ LODWORD(STACK[0x548]) ^ 0x7A4028DD) - 1896760186) ^ ((v66 ^ LODWORD(STACK[0x548]) ^ 0xAA8A785C) + 1580985349) ^ ((v66 ^ LODWORD(STACK[0x548]) ^ 0xB1CCE915) + 1165851982)) - (((v66 ^ 0x57A64A34) - 1558716819) ^ ((v66 ^ 0x9FD002CE) + 1801557655) ^ ((v66 ^ 0xD7929712) + 589497163)) + 1436425700);
  v72 = ((v71 ^ 0x2DDC6FE9) - 218706163) ^ ((v71 ^ 0xC566F31) - 746795051) ^ ((v71 ^ 0x218A00D8) - 23027650);
  v73 = (v62 ^ 0xCF1CC8C3) - (v65 - 1301235182);
  v74 = v63 + (~((v63 + 24) ^ (39 - v63)) & 0x34) - 190044244 + v65 - 1301235182;
  v75 = (((v68 ^ 0x4CE29AE0) - 154568947) ^ ((v68 ^ 0xB3A62546) + 160286891) ^ ((v68 ^ 0x30587765) - 1972135286)) - (v69 - 900489263);
  v76 = v70 - 980242769 + v69 - 900489263;
  LODWORD(STACK[0x548]) = (((LODWORD(STACK[0x588]) ^ 0xC6473AD2) + 968410414) ^ ((LODWORD(STACK[0x588]) ^ 0x5FF921BA) - 1610162618) ^ ((LODWORD(STACK[0x588]) ^ 0x865AC480) + 2040871808)) + LODWORD(STACK[0x400]) + v64;
  v77 = v64 - v63 + 1246480933;
  v78 = v77 ^ (v63 - 1542981716);
  v79 = v74 ^ a4 ^ v78;
  v80 = (((v79 ^ a7 ^ 0xA5F21599) - 200147951) ^ ((v79 ^ a7 ^ 0x1150854B) + 1085500611) ^ ((v79 ^ a7 ^ 0x8BF2C800) - 636411510)) - (((v79 ^ 0xE113500A) - 1326401148) ^ ((v79 ^ 0x243C2E8) + 1403005794) ^ ((v79 ^ 0x9B7CD036) - 895534656));
  v81 = v67 - 337750316 + v69;
  v82 = v74 + v77;
  v83 = (v73 - 1352937472) ^ 0x925EBF8A;
  v84 = v83 - (((v59 ^ 0x3A863388) & 0x8828E648 | 0x45151032) ^ (v59 & 0x8938E668 ^ 0xC42DD452) & ~((v59 ^ 0x3A863388) & 0x8938E668));
  v85 = v83 ^ v82;
  v86 = (v83 ^ v82 ^ v78) - v84;
  v87 = (v74 - v83 - ((((v80 - 1155794430) ^ 0x7049825F) - ((v80 - 1155794430) & 0x8FB67DA0)) ^ (v80 - 1155794430) & 0x7049825F) - 1396739332) ^ v84;
  v88 = v74 - v83 + 1014362269;
  v89 = v88 ^ LODWORD(STACK[0x568]) ^ v86;
  v90 = (((v89 ^ LODWORD(STACK[0x520]) ^ 0x7CB6C4EE) - 1047657732) ^ ((v89 ^ LODWORD(STACK[0x520]) ^ 0x4B2F91B4) - 166242398) ^ ((v89 ^ LODWORD(STACK[0x520]) ^ 0x8C90D88) - 1242444898)) - (((v89 ^ 0xD837E9C1) + 1695494101) ^ ((v89 ^ 0x8409F4B) - 1250404001) ^ ((v89 ^ 0x970B6C8C) + 708029082));
  v91 = (v75 + 1765680077) ^ v81;
  v92 = (v67 - (v70 - 1542981716)) ^ (v70 - 1542981716) ^ 0x925EBF8A ^ v91;
  v93 = (((v91 ^ 0xA2CAC9BE) + 1489623051) ^ ((v91 ^ 0xA9256B86) + 1395030579) ^ ((v91 ^ 0x99B11DB2) + 1672612871)) - 1881412984;
  v94 = (((v91 ^ 0xCA468EC8) + 809869181) ^ ((v91 ^ 0xE54005C4) + 524489841) ^ ((v91 ^ 0xBD583486) + 1197155635)) - ((2 * v93) & 0x5E69BFA8);
  v95 = (v75 + 1765680077) ^ 0x925EBF8A;
  v96 = v76 - v95 + 1014362269;
  v97 = v95 + 1992759704;
  v98 = v92 - (v95 + 1992759704);
  v99 = (v85 - 130443065) ^ 0x97C25493 ^ (v87 + 1917297122);
  v100 = (((LODWORD(STACK[0x520]) ^ 0x782C42D4 ^ v98) - v98) ^ 0x62D501EC ^ ((LODWORD(STACK[0x520]) ^ 0x782C42D4 ^ v96) - v96 + 1658126828 - ((2 * ((LODWORD(STACK[0x520]) ^ 0x782C42D4 ^ v96) - v96)) & 0xC5AA03D8)) ^ (v90 + 2010922316)) - v93;
  v101 = v98 - v93;
  v102 = ((LODWORD(STACK[0x568]) ^ 0xDFA9D4AE) + 542518098) ^ ((LODWORD(STACK[0x568]) ^ 0xD60EB03A) + 703680454) ^ ((LODWORD(STACK[0x568]) ^ 0x4EDB7E92) - 1323007634);
  v103 = v86 - (v85 - 130443065);
  v104 = v88 - v103;
  v105 = v103 + ((v85 - 130443065) ^ 0xAF34DFD4);
  v106 = v104 ^ v103;
  v107 = v104 ^ v103 ^ LODWORD(STACK[0x56C]) ^ v105 ^ v104;
  v108 = STACK[0x528];
  v109 = (((v107 ^ v108 ^ 0x2C821E7F) + 1320905049) ^ ((v107 ^ v108 ^ 0xF262C2F2) - 1873037866) ^ ((v107 ^ v108 ^ 0xE1B0845F) - 2088111239)) - (((v107 ^ 0xA67F2632) - 1002024682) ^ ((v107 ^ 0x601CE42F) + 36016905) ^ ((v107 ^ 0x811FD81B) - 484004035));
  v110 = v96 ^ v97;
  v111 = v96 - v101;
  v112 = v111 ^ v101;
  v94 += 1058064988;
  v113 = (v110 + 1917297122) ^ 0xB0F3F6B4 ^ v94;
  v114 = v94 + v101;
  v115 = (v94 + v101) ^ v111;
  v116 = ((((v114 ^ v111 ^ v108 ^ 0xC207FF22) - 1675552164) ^ ((v114 ^ v111 ^ v108 ^ 0xBCDDDF7D) - 486852091) ^ ((v114 ^ v111 ^ v108 ^ 0x6F6628B) + 1490061299)) - (((v115 ^ 0x3BDCC9F) + 1570449895) ^ ((v115 ^ 0x1C3E21D1) + 1108919465) ^ ((v115 ^ 0x1F83ED4E) + 1101334584)) + 941374924) ^ ((((v111 ^ v101 ^ v108 ^ 0xDC50EC68) + 2117857580) ^ ((v111 ^ v101 ^ v108 ^ 0x643F43FA) - 967549254) ^ ((v111 ^ v101 ^ v108 ^ 0xC043ED46) + 1646850054)) - (((v111 ^ v101 ^ 0xE61D5516) + 1148602454) ^ ((v111 ^ v101 ^ 0x6EF188B7) - 862284299) ^ ((v111 ^ v101 ^ 0x88ECDDA1) + 713539811)) - 937181780) ^ (v109 - 941867732);
  v117 = v106 ^ v105 ^ (v103 - ((2 * v103) & 0x321BA5AA) - 1727147307) ^ v99;
  LODWORD(STACK[0x59C]) = v99 ^ (v103 - ((2 * v103) & 0x71ED168E) + 955681607);
  LODWORD(STACK[0x588]) = (v101 - 1326188876 - ((2 * v101) & 0x61E7ED68)) ^ v113;
  v118 = (LODWORD(STACK[0x40C]) + LODWORD(STACK[0x540]) + LODWORD(STACK[0x564]));
  LODWORD(STACK[0x430]) += v100;
  LODWORD(STACK[0x428]) = LODWORD(STACK[0x428]) - v67 + 550854426 + v72;
  LODWORD(STACK[0x570]) = v117 ^ 0xA1FB5992;
  LODWORD(STACK[0x568]) = (v101 - 1865065368 + (~(2 * v101) | 0xDE554731)) ^ v112 ^ v114 ^ v113 ^ 0x2026AAD3;
  LODWORD(STACK[0x56C]) = v101 + 1430385902;
  v119 = LODWORD(STACK[0x43C]) - v114;
  LODWORD(STACK[0x558]) = v103;
  LODWORD(STACK[0x43C]) = v119 + 1945302527 + (((v116 ^ 0x15DD2708) - 1714410231) ^ ((v116 ^ 0x28B75143) - 1531290812) ^ ((v116 ^ 0x3D6A764B) - 1318618036));
  return (*(STACK[0x578] + 8 * (LODWORD(STACK[0x45C]) | (4 * (STACK[0x424] & 1)) & 0xF7 | (8 * (STACK[0x424] & 1)))))(v118, (((v112 ^ 0x293A1E71) - 1957625037) ^ ((v112 ^ 0x908F38DB) + 853812633) ^ ((v112 ^ 0xB9B526AA) + 467549162)) - v101 - (((v115 ^ 0x5F355EE1) + 18070425) ^ ((v115 ^ 0xEE47BD0) + 1354931882) ^ ((v115 ^ 0x51D12531) + 267894857)) - 1145321418, LODWORD(STACK[0x41C]) + v102 + v85);
}

uint64_t sub_1968C4380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  HIDWORD(a28) = 399946095;
  HIDWORD(a24) = a4;
  HIDWORD(a26) = 1304194923;
  return (*(v30 + 8 * ((a6 + 1828957340) & 0x92FC5FD5 ^ 0x1E2F)))(a1, 570499551, a2, a3, a4, a5, 3832349834, 2717982844, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, &STACK[0x238], &a30, a24, 0, a26, 0, a28);
}

uint64_t sub_1968C448C@<X0>(int a1@<W8>)
{
  v7 = v4 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (107 * (v7 & 0xF)) ^ *((v7 & 0xF) + v3 + 4) ^ 0xEC;
  return (*(v5 + 8 * ((6315 * (v7 == 0)) ^ (a1 + 2725))))();
}

uint64_t sub_1968C44EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13)
{
  a13 = 4;
  v16 = (*(v13 + 8 * (v15 ^ 0x17E8)))(*(v14 + 4), 22, 0, 0, &a11, &a13);
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = a13 == 4;
  }

  v21 = v20;
  return (*(v13 + 8 * ((v21 * (339 * (v15 ^ 0xD27) + ((v15 + 1852) ^ 0xFFFFE6BC))) ^ v15)))(v16, v17, v18, v19);
}

uint64_t sub_1968C4564@<X0>(uint64_t a1@<X5>, int a2@<W7>, int a3@<W8>)
{
  v3 = a3 & 0xFFFFFFFFD3674D7DLL;
  STACK[0x460] = *(a1 + 8 * v3);
  return (*(a1 + 8 * (((((86 * ((v3 - 1607311433) & 0x5FCDAB6C ^ 0xB27) - 4493) | 0x1010) + ((86 * ((v3 - 1607311433) & 0x5FCDAB6C ^ 0xB27) + 673963509) & 0xD7D40EBF) - 2828) * (&STACK[0x550] == 0)) ^ (86 * ((v3 - 1607311433) & 0x5FCDAB6C ^ 0xB27)))))((a2 - 5677), 4558, 4912, 930994060, 3363973007);
}

uint64_t sub_1968C4628@<X0>(int a1@<W4>, int a2@<W8>)
{
  if ((a2 - 399946083) <= 0x19 && ((1 << (a2 - 99)) & 0x3014001) != 0)
  {
    return (*(v4 + 8 * ((980 * (((((v3 - 1705757001) | 0xD44) - 3413) & *(v6 + 48 * v5 + 40)) == ((a1 - 1649) ^ 0x9A543FAD) - 1681)) ^ (v2 - 1705753875))))();
  }

  else
  {
    return (*(v4 + 8 * ((1624 * ((*(v6 + 48 * v5 + 40) & 8) == 0)) ^ (v3 - 1705756387))))(4294925278);
  }
}

uint64_t sub_1968C4710(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x340] = vdupq_n_s64(0x38uLL);
  *&STACK[0x350] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v18 = vdupq_n_s64(v12);
  v19 = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  v20 = vdupq_n_s64(a3);
  v21 = vdupq_n_s64(v14);
  v22 = vdupq_n_s64(v17);
  v23 = -v11;
  v24 = vdupq_n_s64(a5);
  v25 = vdupq_n_s64(v16);
  v26 = vdupq_n_s64(a2);
  v27 = vdupq_n_s64(a6);
  v28 = vdupq_n_s64(a7);
  v29 = vdupq_n_s64(v8);
  v30 = vdupq_n_s64(a8);
  v31 = vdupq_n_s64(0x408B64F38B169598uLL);
  v32 = vdupq_n_s64(0xDFBA4D863A74B533);
  v33 = vdupq_n_s64(0xBEFFD0ACCA6B91C4);
  v34 = vdupq_n_s64(0xE86939D20CCACD96);
  v35 = vdupq_n_s64(0x8BCB6316F99A9935);
  v36 = (v9 - 1475) | 0x269;
  v37 = vdupq_n_s64(0x10F780EB76E1B8A7uLL);
  v38 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x330] = xmmword_196EBFAE0;
  v39 = vdupq_n_s64(v15);
  v40 = v13 + v10 + v23 + v36;
  v41.i64[0] = v13 + v10 + v23 - 7;
  v41.i64[1] = v13 + v10 + v23 - 8;
  v42.i64[0] = v13 + v10 + v23 - 5;
  v42.i64[1] = v13 + v10 + v23 - 6;
  v43.i64[0] = v13 + v10 + v23 - 3;
  v43.i64[1] = v13 + v10 + v23 - 4;
  v44.i64[0] = v40 - 2668;
  v44.i64[1] = v13 + v10 + v23 - 2;
  v45 = vandq_s8(v44, *&STACK[0x350]);
  v46 = vandq_s8(v43, *&STACK[0x350]);
  v47 = vandq_s8(v42, *&STACK[0x350]);
  v48 = vandq_s8(v41, *&STACK[0x350]);
  v49 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v53 = vaddq_s64(v52, v18);
  v54 = vaddq_s64(v51, v18);
  v55 = vaddq_s64(v50, v18);
  v56 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v19, v52), v20), v53), vandq_s8(v53, v21));
  v57 = vaddq_s64(v49, v18);
  v58 = vaddq_s64(vandq_s8(vsubq_s64(v19, v49), v20), v57);
  v59 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v19, v51), v20), v54), vandq_s8(v54, v21));
  v60 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v19, v50), v20), v55), vandq_s8(v55, v21));
  v61 = vsubq_s64(v58, vandq_s8(v57, v21));
  v62 = veorq_s8(v61, v22);
  v63 = veorq_s8(v60, v22);
  v64 = veorq_s8(v60, v24);
  v65 = veorq_s8(v61, v24);
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64), v25);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65), v25);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v26);
  v73 = veorq_s8(v71, v26);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v27);
  v80 = veorq_s8(v78, v27);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, v28), vorrq_s8(v79, v29)), v29), v30);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v80, v28), vorrq_s8(v80, v29)), v29), v30);
  v83 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), v31), v88), v32), v33);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v87, v87), v31), v87), v32), v33);
  v91 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v92 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = veorq_s8(v89, v91);
  v94 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = vaddq_s64(v94, v92);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v34), v96), v35), v37);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), v34), v95), v35), v37);
  v99 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v101);
  v104 = veorq_s8(vaddq_s64(v102, v100), v38);
  v105 = veorq_s8(v103, v38);
  v139.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL))), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), *&STACK[0x340])));
  v139.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL))), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), *&STACK[0x340])));
  v106 = veorq_s8(v59, v22);
  v107 = veorq_s8(v59, v24);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v25);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v26);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v27);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v28), vorrq_s8(v112, v29)), v29), v30);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v31), v115), v32), v33);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), v34), v118), v35), v37);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v38);
  v139.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL))), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), *&STACK[0x340])));
  v122 = veorq_s8(v56, v22);
  v123 = veorq_s8(v56, v24);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v25);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v26);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v27);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v28), vorrq_s8(v128, v29)), v29), v30);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v31), v131), v32), v33);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v34), v134), v35), v37);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v38);
  v139.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL))), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), *&STACK[0x340])));
  *(v10 + a1 - 2675 + v36 + v23) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v40 - 2675)), 0xECECECECECECECECLL), *&vqtbl4q_s8(v139, *&STACK[0x330])));
  return (*(STACK[0x370] + 8 * ((5594 * (8 - (v10 & 0xFFFFFFF8) == v23)) ^ v9)))();
}

uint64_t sub_1968C4D84@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = (a2 + 1771533341) & 0x9668965F;
  v3 = ((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFFLL;
  v4 = __ROR8__((v2 - 5733) & v3, 8);
  v5 = (0x6AF7234D0CC131D4 - v4) & 0xC294CCCCC1BD3E84 | (v4 + 0x1508DCB2F33ECE2BLL) & 0x3D6B33333E42C17BLL;
  v6 = v5 ^ 0x8B7D8EF7AEABD956;
  v5 ^= 0x233B6B60375DA80AuLL;
  v7 = __ROR8__(v6, 8);
  v8 = (((2 * (v7 + v5)) | 0x5BFA3CD3E9B03CB6) - (v7 + v5) + 0x5202E1960B27E1A5) ^ 0x496069B673E5A125;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xF5A2F1B9B5D0B209;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x5963B6C555D97F1FLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14 - ((2 * (v13 + v14)) & 0x46F63B55781E90A8) - 0x5C84E25543F0B7ACLL) ^ 0xC23E80804C106CA3;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((((2 * ((v17 + v16) ^ 0xD84FE1C754F18840)) | 0x1F76449AB97A7CAELL) - ((v17 + v16) ^ 0xD84FE1C754F18840) - 0xFBB224D5CBD3E57) ^ 0xB337DF8878C8687BLL, 8);
  v19 = (((2 * ((v17 + v16) ^ 0xD84FE1C754F18840)) | 0x1F76449AB97A7CAELL) - ((v17 + v16) ^ 0xD84FE1C754F18840) - 0xFBB224D5CBD3E57) ^ 0xB337DF8878C8687BLL ^ __ROR8__(v16, 61);
  v20 = (((2 * (v18 + v19)) & 0xA52DD7AC0D92506) - (v18 + v19) + 0x7AD691429F936D7CLL) ^ 0x60FC7AA6DDC0C27FLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = ((((2 * ((v22 + v21) ^ 0x3DE289E964841133)) & 0x8A2A2A1882F7B950) - ((v22 + v21) ^ 0x3DE289E964841133) + 0x3AEAEAF3BE842357) ^ 0xAC3821C8F2876E25) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 1) & 7u));
  v24 = __ROR8__((((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFELL) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v23 ^ *v3;
  v26 = v24 - ((2 * v24 + 0xA11B965E67D9C56) & 0x113C3EC95292F7F4) - 0x625903E86377B5DBLL;
  v27 = (__ROR8__(v26 ^ 0x41775D5FC65F9C28, 8) + (v26 ^ 0xE931B8C85FA9ED74)) ^ 0xE49D77DF873DBF7ELL;
  v28 = v27 ^ __ROR8__(v26 ^ 0xE931B8C85FA9ED74, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xF5A2F1B9B5D0B209;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (((v30 + v31) & 0x3F5E63FE9BD0AB63 ^ 0x1B1E005E8B00AA23) + ((v30 + v31) & 0xC0A19C01642F549CLL ^ 0x11000242C5009) - 1) ^ 0x427CA69BFAF58534;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0x8C768DD787872606) - (v34 + v33) - 0x463B46EBC3C39304) ^ 0xD881243ECC23480BLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x64C31C027084DE6CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((((((v41 + v40) & 0x3DFD5293D9D7E6C9 ^ 0x28901201905122C9) + ((v41 + v40) ^ 0x156DECB64B86CD14) - (((v41 + v40) ^ 0x156DECB64B86CD14) & 0x3DFD5293D9D7E6C9)) ^ 0x83A0FCF7BAD6779CLL) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 2) & 7u))) ^ *(((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFELL)) << 48) | (v25 << 56);
  v43 = __ROR8__((((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFDLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = -2 - (((0x6AF7234D0CC131D4 - v43) | 0xBC5A4E518562A624) + ((v43 - 0x6AF7234D0CC131D5) | 0x43A5B1AE7A9D59DBLL));
  v45 = v44 ^ 0xF5B30C6AEA7441F6;
  v44 ^= 0x5DF5E9FD738230AAuLL;
  v46 = __ROR8__(v45, 8);
  v47 = (((v46 + v44) | 0x1FBB99B7550EA3FLL) - ((v46 + v44) | 0xFE0446648AAF15C0) - 0x1FBB99B7550EA40) ^ 0xE566CE44F26D5541;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0x9E05AE14AEBCA70ELL) - 0x30FD28F5A8A1AC79) ^ 0x3AA026B3E28EE18ELL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x5963B6C555D97F1FLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x61459D2AF01F24F7;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((((2 * (v56 + v55)) & 0xF0FE260FF4DFE482) - (v56 + v55) + 0x780ECF805900DBELL) ^ 0x6343F0FA7514D3D2, 8);
  v58 = (((2 * (v56 + v55)) & 0xF0FE260FF4DFE482) - (v56 + v55) + 0x780ECF805900DBELL) ^ 0x6343F0FA7514D3D2 ^ __ROR8__(v55, 61);
  v59 = (v57 + v58 - ((2 * (v57 + v58)) & 0x93868746793C3E3ELL) + 0x49C343A33C9E1F1FLL) ^ 0x53E9A8477ECDB01CLL;
  v60 = __ROR8__((((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFCLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = v42 | (((((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ 0xAB3042D228875C41) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 3) & 7u))) ^ *(((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFDLL)) << 40);
  v62 = (0x6AF7234D0CC131D4 - v60) & 0xCAF13B63757397BCLL | (v60 + 0x1508DCB2F33ECE2BLL) & 0x310EC49C8A8C6843;
  v63 = v62 ^ 0x871879581A65706ELL;
  v62 ^= 0x2F5E9CCF83930132uLL;
  v64 = (__ROR8__(v63, 8) + v62) ^ 0xE49D77DF873DBF7ELL;
  v65 = __ROR8__(v64, 8);
  v66 = v64 ^ __ROR8__(v62, 61);
  v67 = (((2 * (v65 + v66)) | 0xA42226C60A16CE78) - (v65 + v66) - 0x52111363050B673CLL) ^ 0xA7B3E2DAB0DBD535;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * (v69 + v68)) | 0x4C8DB7A6C794D120) - (v69 + v68) + 0x59B9242C9C359770) ^ 0xFF256D163613178FLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x61459D2AF01F24F7;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x64C31C027084DE6CLL;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (((v76 + v75) | 0x850583D99A474AC0) - ((v76 + v75) | 0x7AFA7C2665B8B53FLL) + 0x7AFA7C2665B8B53FLL) ^ 0x9F2F683DD814E5C3;
  v78 = v61 | (((((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v75, 61))) ^ 0xAB3042D228875C41) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 4) & 7u))) ^ *(((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFCLL)) << 32);
  v79 = __ROR8__((((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFBLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = ((v79 - 0x6AF7234D0CC131D5) | 0x5FD555A5ED19C75BLL) - ((v79 - 0x6AF7234D0CC131D5) | 0xA02AAA5A12E638A4) - 0x5FD555A5ED19C75CLL;
  v81 = v80 ^ 0x163C179E820F2089;
  v80 ^= 0xBE7AF2091BF951D5;
  v82 = (__ROR8__(v81, 8) + v80) ^ 0xE49D77DF873DBF7ELL;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xF5A2F1B9B5D0B209;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x5963B6C555D97F1FLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((v88 + v87) ^ 0xFE7A176D67236552) - ((2 * ((v88 + v87) ^ 0xFE7A176D67236552)) & 0xA2FCF994B45D1B44) - 0x2E818335A5D1725ELL) ^ 0x4E41F68DCD12CC07;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) | 0xF496B0A45C18BC8ALL) - (v91 + v90) - 0x7A4B58522E0C5E45) ^ 0x1E8844505E888029;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x1A2AEBE44253AF03;
  v95 = __ROR8__((((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFALL) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = v78 & 0xFFFFFFFF00FFFFFFLL | (((((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ 0xAB3042D228875C41) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 5) & 7u))) ^ *(((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFBLL)) << 24);
  v97 = ((2 * (v95 - 0x6AF7234D0CC131D5)) | 0x399F821F9A7FA07ELL) - (v95 - 0x6AF7234D0CC131D5) - 0x1CCFC10FCD3FD03FLL;
  v98 = __ROR8__(v97 ^ 0x55268334A22937EDLL, 8);
  v97 ^= 0xFD6066A33BDF46B1;
  v99 = (v98 + v97 - ((2 * (v98 + v97)) & 0x39EF620FDA9685DALL) - 0x63084EF812B4BD13) ^ 0x786AC6D86A76FD93;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xF5A2F1B9B5D0B209;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x5963B6C555D97F1FLL;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x61459D2AF01F24F7;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) | 0x4D9D0F408A595028) - (v107 + v106) - 0x26CE87A0452CA814) ^ 0x420D9BA235A87678;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) | 0x7DB961569F911255) - ((v110 + v109) | 0x82469EA9606EEDAALL) - 0x7DB961569F911256) ^ 0x67938AB2DDC2BD56;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v114 = v96 & 0xFFFFFFFFFF00FFFFLL | (((((v113 + v112 - ((2 * (v113 + v112)) & 0x6935DF41F332A4FALL) + 0x349AEFA0F999527DLL) ^ 0x9FAAAD72D11E0E3CLL) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 6) & 7u))) ^ *(((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FFALL)) << 16);
  v115 = __ROR8__((((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FF9) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = -2 - (((0x6AF7234D0CC131D4 - v115) | 0x66EECEE507CABA21) + ((v115 + 0x1508DCB2F33ECE2BLL) | 0x9911311AF83545DELL));
  v117 = v116 ^ 0x2F078CDE68DC5DF3;
  v116 ^= 0x87416949F12A2CAFLL;
  v118 = __ROR8__(v117, 8);
  v119 = __ROR8__((((v118 + v116) & 0x625061C6F646BF2FLL ^ 0x424000C2C2042C27) + ((v118 + v116) ^ 0xA4B4F52C356B9308) - (((v118 + v116) ^ 0xA4B4F52C356B9308) & 0x625061C6F646BF2FLL)) ^ 0x2279E33544109359, 8);
  v120 = (((v118 + v116) & 0x625061C6F646BF2FLL ^ 0x424000C2C2042C27) + ((v118 + v116) ^ 0xA4B4F52C356B9308) - (((v118 + v116) ^ 0xA4B4F52C356B9308) & 0x625061C6F646BF2FLL)) ^ 0x2279E33544109359 ^ __ROR8__(v116, 61);
  v121 = (v119 + v120) ^ 0xF5A2F1B9B5D0B209;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x5963B6C555D97F1FLL;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x61459D2AF01F24F7;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x64C31C027084DE6CLL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x1A2AEBE44253AF03;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  LOBYTE(v94) = (((v131 + v130 - ((2 * (v131 + v130)) & 0x3A0F8FAC9ED9A79ELL) + 0x1D07C7D64F6CD3CFLL) ^ 0xB637850467EB8F8ELL) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 7) & 7u))) ^ *(((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FF9);
  v132 = __ROR8__((((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FF8) & 0xFFFFFFFFFFFFFFF8, 8);
  v133 = v114 & 0xFFFFFFFFFFFF00FFLL | (v94 << 8);
  v134 = ((0x6AF7234D0CC131D4 - v132) & 0xC8B006C559D2B160) + v132 - 0x6AF7234D0CC131D5 - ((v132 - 0x6AF7234D0CC131D5) & 0xCCB006C559D2B160);
  v135 = v134 ^ 0x855944FE36C456B2;
  v134 ^= 0x2D1FA169AF3227EEuLL;
  v136 = __ROR8__(v135, 8);
  v137 = (((v136 + v134) | 0x2BFF81EF10D2B39FLL) - ((v136 + v134) | 0xD4007E10EF2D4C60) - 0x2BFF81EF10D2B3A0) ^ 0xCF62F63097EF0CE1;
  v138 = v137 ^ __ROR8__(v134, 61);
  v139 = __ROR8__(v137, 8);
  v140 = (v139 + v138 - ((2 * (v139 + v138)) & 0x208C17187339CEB2) - 0x6FB9F473C66318A7) ^ 0x65E4FA358C4C5550;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (((v142 + v141) | 0x507EB7600E7DB331) - ((v142 + v141) | 0xAF81489FF1824CCELL) - 0x507EB7600E7DB332) ^ 0x91D01A55BA4CC2ELL;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0x61459D2AF01F24F7;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0x64C31C027084DE6CLL;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (v149 + v148 - ((2 * (v149 + v148)) & 0x86464A6D5ED8A3FELL) + 0x43232536AF6C51FFLL) ^ 0x5909CED2ED3FFEFCLL;
  v151 = v133 | ((((__ROR8__(v150, 8) + (v150 ^ __ROR8__(v148, 61))) ^ 0xAB3042D228875C41) >> (8 * ((2 * LOBYTE(STACK[0x270]) + ~LOBYTE(STACK[0x270]) + LOBYTE(STACK[0x7A8]) + 8) & 7u))) ^ *(((2 * STACK[0x270]) & 0xD5DCF626FFFE3FFELL) + (STACK[0x270] ^ 0x6AEE7B137FFF1FFFLL) + STACK[0x7A8] - 0x6AEE7B137FFF1FF8));
  STACK[0x820] = v151 - ((2 * v151) & 0x66F1CFB5A669E596) + 0x3378E7DAD334F2CBLL;
  STACK[0x5E8] = STACK[0x880];
  v153 = LODWORD(STACK[0x874]) == (v2 ^ 0x17AA) - 1720256796 && LOWORD(STACK[0x87A]) == 26075;
  return (*(a1 + 8 * (((4 * v153) | (v153 << 6)) ^ (v2 - 602))))();
}

uint64_t sub_1968C5D2C()
{
  v6 = 1621291457 * ((-1800617256 - (&v26 | 0x94ACC2D8) + (&v26 | 0x6B533D27)) ^ 0x5D44BCBE);
  v29 = v25;
  v27 = v0 - 240849551 + v6;
  LODWORD(v28) = v6 ^ (1122297523 * v3 + 296299868);
  (*(v4 + 8 * (v0 + v24)))(&v26);
  v7 = 1621291457 * (((&v26 | 0x7A4D8221) - (&v26 & 0x7A4D8221)) ^ 0x4C5A03B8);
  v27 = v0 - 240849551 + v7;
  LODWORD(v28) = v7 ^ (1122297523 * v2 + 296299868);
  v29 = v25;
  v8 = v5 - 2447;
  (*(v4 + 8 * (v0 ^ (v5 - 2447))))(&v26);
  v9 = *v1;
  if (*v1 == 3)
  {
    v13 = v5 - 240846011;
    v20 = 1621291457 * ((&v26 & 0xB4B3712F | ~(&v26 | 0xB4B3712F)) ^ 0x7D5B0F49);
    v29 = v25;
    v27 = v5 - 240849551 + v20;
    LODWORD(v28) = v20 ^ 0xDA57E175;
    (*(v4 + 8 * (v5 + v24)))(&v26);
    v17 = 0xFDFEF5FBEF3ECFDBLL;
    v18 = 0xFC2F7E6F2DAF75EALL;
    v19 = 0x7E17BF3796D7BAF5;
LABEL_7:
    v21 = (*(v1 + 1) ^ v19) + v17 + ((*(v1 + 1) << ((-95 * (v13 ^ 0xAB)) ^ 0xC7u)) & v18);
    v22 = 1068996913 * ((~&v26 & 0x383839125CB31234 | &v26 & 0xC7C7C6EDA34CEDCBLL) ^ 0xAC590D81895DF3A5);
    LODWORD(v29) = v13 - v22 + 1584;
    v28 = v21 ^ v22;
    v30 = v25;
    (*(v4 + 8 * (v13 ^ 0x80D)))(&v26);
    __asm { BRAA            X8, X17 }
  }

  if (v9 == 2)
  {
    v13 = (v5 - 2125243259) & 0x10519EBF;
    v14 = 1621291457 * ((-1681409370 - (&v26 | 0x9BC7BAA6) + (&v26 | 0x64384559)) ^ 0x522FC4C0);
    v27 = v5 - 240849551 + v14;
    LODWORD(v28) = v14 ^ 0x9772FAC2;
    v29 = v25;
    (*(v4 + 8 * (v5 ^ v8)))(&v26);
    v15 = 1621291457 * ((&v26 & 0x4E1A5756 | ~(&v26 | 0x4E1A5756)) ^ 0x87F22930);
    v16 = (v13 + 1122297523 * v1[1] + 296295087) ^ v15;
    v27 = v5 - 240849551 + v15;
    LODWORD(v28) = v16;
    v29 = v25;
    (*(v4 + 8 * (v5 + v24)))(&v26);
    v17 = 0xFE37BFF38FB6FEFALL;
    v18 = 0xFBBDEA7FECBF17ACLL;
    v19 = 0x7DDEF53FF65F8BD6;
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v10 = 1621291457 * ((2 * (&v26 & 0x6F502E28) - &v26 + 279957973) ^ 0x26B8504C);
    v27 = v5 - 240849551 + v10;
    LODWORD(v28) = v10 ^ 0x548E140F;
    v29 = v25;
    (*(v4 + 8 * (v5 + v24)))(&v26);
    v11 = 1621291457 * ((1448407032 - (&v26 | 0x5654EFF8) + (&v26 | 0xA9AB1007)) ^ 0x9FBC919E);
    v12 = (((v5 + 1938588310) & 0x7E186FC7 ^ 0x11A9249A) + 1122297523 * v1[4]) ^ v11;
    v27 = v5 - 240849551 + v11;
    LODWORD(v28) = v12;
    v29 = v25;
    (*(v4 + 8 * (v5 ^ v8)))(&v26);
    __asm { BRAA            X8, X17 }
  }

  v28 = v25;
  v26 = v24 - 1790939281 * ((((2 * &v26) | 0x714FFB7E) - &v26 - 950533567) ^ 0xC07BDDFE) + v5 - 732;
  (*(v4 + 8 * (v24 + v5 - 6)))(&v26);
  return 4294925295;
}

uint64_t sub_1968C6254(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (a3 - 127) | 0x7A1;
  v16 = (a3 + 637994889) | 0x8800001;
  v17 = 1283153057 * ((v14 + 707332421 - 2 * ((v14 - 120) & 0x2A2909BD)) ^ 0x65F10A8A);
  *(v14 - 104) = (a3 + 2844) ^ v17;
  *(v14 - 112) = v14 - 220;
  *(v14 - 120) = v17 + a13 - 236687653;
  v18 = (*(v13 + 8 * (a3 + 6661)))(v14 - 120);
  v19 = ((*(v14 - 152) & 0x3F ^ 0xEC76482D) - 1933551504) ^ ((*(v14 - 152) & 0x3F ^ 0xBEC22B25) + (v16 ^ 0xF0F33379)) ^ ((v15 ^ *(v14 - 152) & 0x3F ^ 0x52B464A1) + 839021387);
  *(v14 - 220 + v19 - 1622544451) = 108;
  return (*(v13 + 8 * ((4946 * (v19 - 1622544507 < 0xFFFFFFC8)) ^ a3)))(v18);
}

uint64_t sub_1968C642C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21)
{
  v23 = (a9 - 4144) | 0x36C;
  v24 = (a13 ^ 0x97C89E4B) & (2 * (a13 & v21)) ^ a13 & v21;
  v25 = (((a13 ^ 0x9DD0864B) << (a21 ^ 0xDE)) ^ 0x94393456) & (a13 ^ 0x9DD0864B) ^ ((a13 ^ 0x9DD0864B) << (a21 ^ 0xDE)) & 0x4A1C9A2A;
  v26 = v25 ^ (v23 + 1241808557);
  v27 = (v25 ^ 0x141828) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x287268AC) & v26 ^ (4 * v26) & 0x4A1C9A28;
  v29 = (v28 ^ 0x8100820) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x420C9203)) ^ 0xA1C9A2B0) & (v28 ^ 0x420C9203) ^ (16 * (v28 ^ 0x420C9203)) & 0x4A1C9A20;
  v31 = v29 ^ 0x4A1C9A2B ^ (v30 ^ 0x88200) & (v29 << 8);
  v32 = a13 ^ (2 * ((v31 << 16) & 0x4A1C0000 ^ v31 ^ ((v31 << 16) ^ 0x1A2B0000) & (((v30 ^ 0x4A14180B) << 8) & 0x4A1C0000 ^ 0x42040000 ^ (((v30 ^ 0x4A14180B) << 8) ^ 0x1C9A0000) & (v30 ^ 0x4A14180B))));
  v34 = v32 == 1474635830 || (((v23 ^ 0x19A3) - 4816) & v32) != 6;
  return (*(v22 + 8 * ((226 * v34) ^ v23)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

uint64_t fp_dh_dffa72219490fc91e47dd42a6c879936(uint64_t a1)
{
  v1 = 1825732043 * ((a1 + 741942836 - 2 * (a1 & 0x2C392634)) ^ 0x2CAF7503);
  v2 = *(a1 + 12) ^ v1;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 - 5000) + 8 * ((((((*(a1 + 8) - v1 - 1865116590) < 7) ^ (v2 - 1)) & 1) * ((v2 - 273569337) & 0x104E527C ^ 0x1248)) | v2) - 4))();
}

uint64_t sub_1968C685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = a22;
  *(v24 - 136) = a12 - 1575331711 * ((((v24 - 136) | 0x3A59B839) + (~(v24 - 136) | 0xC5A647C6)) ^ 0x56022D3A) - 463;
  v22[1] = v25;
  v22[2] = &a15;
  (*(v23 + 8 * (a12 ^ 0x103E)))(v24 - 136);
  v26 = a22;
  *(v24 - 124) = a12 - 489239129 * ((((v24 - 136) | 0x391EDAEB) - (v24 - 136) + ((v24 - 136) & 0xC6E12510)) ^ 0x8036F9DD) - 1799;
  *v22 = v26;
  v27 = (*(v23 + 8 * (a12 | 0x1020)))(v24 - 136);
  return (*(v23 + 8 * (((*(v24 - 128) == 1906281716) * (a12 ^ 0x1420)) ^ a12)))(v27);
}

void fp_dh_cb4028e96884d6baa58e811f4b04e0c0(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1621291457 * ((a1 - 1936006906 - 2 * (a1 & 0x8C9AE106)) ^ 0xBA8D609F));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1968C6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12, uint64_t a13, uint64_t a14)
{
  v19 = 998242381 * ((2 * (&a11 & 0x2E1B8540) - &a11 - 773555524) ^ 0x7B8BE26A);
  a13 = v17;
  a11 = 1805132673 - v19;
  a12 = (v16 + 976) ^ v19;
  (*(v15 + 8 * (v16 ^ 0x8E0)))(&a11);
  a11 = -242397222 - 1283153057 * (((&a11 ^ 0x8D9037D9) - 454822730 - 2 * ((&a11 ^ 0x8D9037D9) & 0xE4E3F4B6)) ^ 0x26ABC058) + v16 + 442;
  a13 = v17;
  a14 = v14;
  v20 = (*(v15 + 8 * (v16 + 2142)))(&a11);
  return (*(v15 + 8 * (v16 ^ (2964 * ((v18 - 814017638) < 0xFFFFFFC0)))))(v20);
}

uint64_t sub_1968C6B30@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  v43 = *(&a28 + a2 + 72);
  v44 = ((2 * a2) & 0xBF7CB7F8) + (a2 ^ 0x5FBE5BFD) + v40;
  *(a1 + v44) = (HIBYTE(v43) ^ 0x7C) - (((HIBYTE(v43) ^ 0x7C) << (v41 + 79)) & 0xD8) - 20;
  *(a1 + v44 + 1) = (BYTE2(v43) ^ 0x47) - ((2 * (BYTE2(v43) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v44 + 2) = (BYTE1(v43) ^ 7) - ((2 * (BYTE1(v43) ^ 7)) & 0xD8) - 20;
  *(a1 + v44 + 3) = v43 ^ 0x87;
  return (*(v42 + 8 * ((7719 * (a2 + 4 < a40)) ^ v41)))();
}

uint64_t sub_1968C6BF0(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (v11 + v9 + v12 - 16);
  v15 = vaddq_s8(vsubq_s8(*(a9 + v9 - 16), vandq_s8(vaddq_s8(*(a9 + v9 - 16), *(a9 + v9 - 16)), a4)), a5);
  v14[-1] = vaddq_s8(vsubq_s8(*(a9 + v9 - 32), vandq_s8(vaddq_s8(*(a9 + v9 - 32), *(a9 + v9 - 32)), a4)), a5);
  *v14 = v15;
  return (*(v13 + 8 * ((70 * ((2 * v10 + 3546) - (v9 & 0xFFFFFFE0) == 4572)) ^ (2 * v10))))(4572 - (2 * v10 + 3546));
}

uint64_t fp_dh_85d97fb006ed66817bc6daa7c41dd38c(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1 - 1012216201 * (((a1 | 0xF7AB016A) - (a1 & 0xF7AB016A)) ^ 0x73028986);
  v4[0] = (489239129 * (v4 ^ 0xB9282336)) ^ (v2 - 1017962886);
  result = (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 + 5148030)) + 8 * (v2 + 5154323) - 4))(v4);
  a1[1] = v4[1];
  return result;
}

void fp_dh_7b8f19afdf20b671e438b8ef03562cf0()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v19 = *MEMORY[0x1E69E9840];
  v1 = 489239129 * (v0 ^ 0xB9282336);
  v2 = *(v0 + 4) ^ v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 28) ^ v1;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 + 154) - 4;
  (*&v5[8 * v2 + 51336])(v18, 0, 296);
  v6 = 311563405 * v4 + 1089221900;
  v7 = (v6 ^ 0x38087BF5) & (2 * (v6 & 0xBD2C73C0)) ^ v6 & 0xBD2C73C0;
  v8 = ((2 * (v6 ^ 0x38105F75)) ^ 0xA78596A) & (v6 ^ 0x38105F75) ^ (2 * (v6 ^ 0x38105F75)) & 0x853C2CB4;
  v9 = v8 ^ 0x85042495;
  v10 = (v8 ^ 0x300800) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x14F0B2D4) & v9 ^ (4 * v9) & 0x853C2CB4;
  v12 = (v11 ^ 0x4302080) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x810C0C21)) ^ 0x53C2CB50) & (v11 ^ 0x810C0C21) ^ (16 * (v11 ^ 0x810C0C21)) & 0x853C2CB0;
  v14 = v12 ^ 0x853C2CB5 ^ (v13 ^ 0x10008A5) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x53C0000 ^ v14 ^ ((v14 << 16) ^ 0x2CB50000) & (((v13 ^ 0x843C24A5) << 8) & 0x53C0000 ^ 0x1100000 ^ (((v13 ^ 0x843C24A5) << 8) ^ 0x3C2C0000) & (v13 ^ 0x843C24A5))));
  if (v3)
  {
    v16 = (((v15 ^ 0x3CEFF173) + 2009236193) ^ ((v15 ^ 0x6D6B768C) + 642123040) ^ ((v15 ^ 0xEEB8AD55) - 1516904761)) == -200189606;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1968C701C@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  v5 = *(v2 + 28) - v3;
  v6 = *(v2 + 24);
  v7 = *(v2 + 9) - v3;
  v8 = *(v2 + 16);
  v9 = *v2;
  *(result + 4) = (*(v2 + 8) ^ v3) + ((a2 - 5) ^ 0xD9);
  *(result + 5) = v7 ^ 0xB3;
  *(result + 6) = v3 ^ v6 ^ 0x4D;
  *(result + 7) = v5 ^ 0xDA;
  *(result + 8) = 0;
  *v9 = result;
  *v8 = v4;
  return result;
}

uint64_t sub_1968C709C@<X0>(int a1@<W8>)
{
  v5 = __OFSUB__(a1, 1);
  v6 = a1 - 1;
  *(*(v3 + 8) + 4 * v6) = v1;
  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return (*(v4 + 8 * ((244 * ((v7 ^ (v2 - 56)) & 1)) ^ v2)))();
}

uint64_t sub_1968C711C(uint64_t a1)
{
  v6 = a1 + 0x1A81ECC59515547FLL;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  v10 = v5 - 489239129 * ((-1106394571 - (&v10 | 0xBE0DC235) + (&v10 | 0x41F23DCA)) ^ 0xF8DA1EFC) + 2596;
  v12 = v2;
  v13 = a1 + 24;
  (*(v4 + 8 * (v5 ^ 0x1F1B)))(&v10);
  v7 = v11;
  v8 = v6 ^ (v5 + 481882671) ^ 0x1A81ECC589ADA22DLL;
  if (v11 != v3)
  {
    v8 = 0;
  }

  *v1 = v8;
  return (v7 - 1906281716);
}

uint64_t sub_1968C7278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *STACK[0x530];
  STACK[0x588] = 0;
  STACK[0x4C8] = 0;
  return (*(a6 + 8 * (((v7 == 0) * (v6 - 11650 + 25 * (v6 ^ 0x17A2))) ^ v6)))();
}

uint64_t sub_1968C730C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = (a1 + 1266337141) & 0xB4853A7B;
  v18 = -v15;
  v19 = (v17 - 3234) ^ 0xFFFFFFFFFFFFFC38;
  v22.val[0].i64[0] = (v14 - v15 + v19) & 0xF;
  v22.val[0].i64[1] = (v14 - v15 + 14) & 0xF;
  v22.val[1].i64[0] = (v14 - v15 + 13) & 0xF;
  v22.val[1].i64[1] = (v14 - v15 + 12) & 0xF;
  v22.val[2].i64[0] = (v14 - v15 + 11) & 0xF;
  v22.val[2].i64[1] = (v14 - v15 + 10) & 0xF;
  v22.val[3].i64[0] = (v14 - v15 + 9) & 0xF;
  v22.val[3].i64[1] = (v14 - v15) & 0xF ^ 8;
  *(v16 + -7 - v15 + v14 + v19) = veor_s8(veor_s8(veor_s8(*(v13 + ((v14 + v18 + v19) & 0xF) - 7), *(v10 + -7 - v15 + v14 + v19)), veor_s8(*(v11 + ((v14 + v18 + v19) & 0xF) + 2 - 7), *(v12 + ((v14 + v18 + v19) & 0xF) + 2 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v22, xmmword_196EBFAE0), 0x7171717171717171)));
  v20 = ((v17 - 4177) & v14) - 8 != v15;
  return (*(a10 + 8 * ((v20 | (16 * v20)) ^ v17)))(xmmword_196EBFAE0);
}

uint64_t sub_1968C7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(((2 * (v6 + 6)) & 0x3F37C7FFF0F3FF04) + ((v6 + 6) ^ 0x5F9BE3FFF879FF82) + v7 - 0x5F9BE3FFF879FF82) << 24) | (*(((2 * (v6 + 6)) & 0x3F37C7FFF0F3FF04) + ((v6 + 6) ^ 0x5F9BE3FFF879FF82) + v7 - 0x5F9BE3FFF879FF81) << 16) | (*(((2 * (v6 + 6)) & 0x3F37C7FFF0F3FF04) + ((v6 + 6) ^ 0x5F9BE3FFF879FF82) + v7 - 0x5F9BE3FFF879FF80) << 8);
  v11 = *(((2 * (v6 + 6)) & 0x3F37C7FFF0F3FF04) + ((v6 + 6) ^ 0x5F9BE3FFF879FF82) + v7 - 0x5F9BE3FFF879FF7FLL);
  return (*(a6 + 8 * ((126 * ((((v10 | v11) - 1720256293 - 2 * ((v10 | v11) & 0x1976F8DF ^ v11 & 4)) ^ 0x9976F8DB) + v6 + 10 > v8)) ^ v9)))();
}

uint64_t sub_1968C75F4()
{
  STACK[0x470] = 0;
  v1 = STACK[0x3F0];
  v2 = STACK[0x8D8];
  v3 = STACK[0x370];
  STACK[0x440] = *(STACK[0x370] + 8 * (v0 - 5427));
  LODWORD(STACK[0x994]) = v2;
  STACK[0x998] = &STACK[0x470];
  return (*(v3 + 8 * (((((((v0 ^ 0x67) + 35) ^ 0x67) + 1) ^ (v1 == 0)) & 1 | (4 * ((((((v0 ^ 0x67) + 35) ^ 0x67) + 1) ^ (v1 == 0)) & 1))) ^ v0 ^ 0x767)))();
}

uint64_t sub_1968C767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, int a23)
{
  v29 = 1621291457 * (((&a19 | 0xBEA2F7BF) - (&a19 & 0xBEA2F7BF)) ^ 0x88B57626);
  a22 = a13;
  a20 = v29 + v23 - 3636;
  LODWORD(a21) = v29 ^ (1122297523 * v26 + 296299868);
  (*(v27 + 8 * (v23 ^ 0x9BC)))(&a19);
  v30 = 753662761 * (((&a19 | 0x9CA8BE8A) - (&a19 & 0x9CA8BE8A)) ^ 0xF9B245C1);
  a19 = (v25 ^ 0x5FBF2E93) - v30 + ((((v23 - 772) | 0x300) - 1082242531) & (2 * v25)) - 159982595;
  a20 = (v23 + 714) ^ v30;
  a21 = a13;
  a22 = v24;
  v31 = (*(v27 + 8 * (v23 + 1902)))(&a19);
  return (*(v27 + 8 * ((79 * (a23 == v28)) ^ v23)))(v31);
}

uint64_t sub_1968C77F8@<X0>(int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, unsigned __int8 a4@<W8>, int8x16_t a5@<Q0>, int8x8_t a6@<D1>, int8x8_t a7@<D2>)
{
  v15 = v7 - 8;
  v17.val[0].i64[0] = (v12 + v15 - 1) & 0xF;
  v17.val[0].i64[1] = (v12 + v15 + 14) & 0xF;
  v17.val[1].i64[0] = (v12 + v15 + 13) & 0xF;
  v17.val[1].i64[1] = (v12 + v15 + 12) & 0xF;
  v17.val[2].i64[0] = (v12 + v15 + (a4 ^ 0xFD)) & 0xF;
  v17.val[2].i64[1] = (v12 + v15 + 10) & 0xF;
  v17.val[3].i64[0] = (v12 + v15 + 9) & 0xF;
  v17.val[3].i64[1] = (v12 + v15) & 0xF ^ 8;
  *(v13 - 8 + v12) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v8 - 8 + v12), *(v10 + v17.val[0].i64[0] - 7)), veor_s8(*(v11 + v17.val[0].i64[0] - 7), *(v9 + v17.val[0].i64[0] - 7)))), a7), vmul_s8(*&vqtbl4q_s8(v17, a5), a6)));
  return (*(v14 + 8 * (((a2 == v15) * a3) ^ a1)))();
}

uint64_t sub_1968C79DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t a6, int8x8_t a7)
{
  v13 = a2 - 8;
  v15.val[0].i64[0] = a5 & (v10 + v13 - 1);
  v15.val[0].i64[1] = (v10 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v10 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v10 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v10 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v10 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v10 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v10 + v13) & 0xF ^ 8;
  *(a3 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a4 - 8 + v10)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v7 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v12 + 8 * ((60 * (a1 != v13)) ^ v11)))();
}

uint64_t sub_1968C79EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  if (v7 <= ((a5 - 6395006) & 0x619BFF ^ 0x285030EC) - v8)
  {
    v7 = ((a5 - 6395006) & 0x619BFF ^ 0x285030EC) - v8;
  }

  return (*(v9 + 8 * ((99 * (v7 > (((a5 - 2206) | 0x1020) ^ a7))) ^ a5)))();
}

uint64_t sub_1968C7A7C(int8x16_t *a1, uint64_t a2, int a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11)
{
  v18 = (v14 - 16) & 0xF;
  v19 = v16;
  v20.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v20.i64[1] = a9;
  v21 = vrev64q_s8(veorq_s8(veorq_s8(*a1, *(v13 + v18 - 15)), veorq_s8(*(v11 + v18 - 15), *(v18 + v12 - 11))));
  v22 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v21, v21, 8uLL), a11), vmulq_s8(v20, a10)));
  *a1 = vextq_s8(v22, v22, 8uLL);
  return (*(v17 + 8 * (((a2 == 16) * ((v15 + 987) ^ a3)) ^ v15)))(a1 - 1);
}

uint64_t sub_1968C7FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v27 = (v22 - 356) ^ 0x2A4;
  v228 = (a6 + 16) + (v27 - 1861);
  v28 = *(a14 + (*(v25 + v228) ^ 0xDFLL)) + 85;
  v29 = (v25 + (a6 + 16));
  v30 = (v28 ^ (32 * v28) ^ (v28 << (((v22 - 100) ^ 0xA4) - 67)));
  LOBYTE(v28) = *(a13 + (v29[11] ^ 0x9CLL)) ^ 0x75;
  LOBYTE(v28) = (16 * v28) & 0xD0 ^ v28;
  v31 = *(a14 + (v29[10] ^ 0xBELL)) + 85;
  v32 = *(a13 + (v29[15] ^ 0xA0)) ^ 0xB4;
  v33 = (16 * v32) & 0xD0 ^ v32;
  v34 = (((v31 ^ (32 * v31) ^ (16 * v31)) << 8) ^ 0x622181FB) & (v28 ^ 0xF7F9FF9F);
  v35 = ((v34 | v28 & 4) ^ 0x88DECC04) & (((*(a15 + (v29[9] ^ 0xA0)) ^ v29[9]) << 16) ^ 0xAAB5FCF6) | v34 & 0x309;
  v36 = *(a13 + (v29[3] ^ 0x4DLL)) ^ 0x18;
  v37 = ((16 * v36) & 0xD0 ^ v36 ^ 0x6E41FF20) & ((v30 << 8) ^ 0x6E4164F9) | ((16 * v36) & 0xD0 ^ v36) & 6;
  LOBYTE(v34) = *(a14 + (v29[14] ^ 0x5CLL));
  v38 = ((((2 * v34) & 0xAA) + (v34 ^ 0x55)) ^ (32 * (((2 * v34) & 0xAA) + (v34 ^ 0x55))) ^ (16 * (((2 * v34) & 0xAA) + (v34 ^ 0x55)))) << 8;
  v39 = (*(a15 + (v29[13] ^ 0xA7)) ^ v29[13]) << 16;
  v40 = ((v38 & 0x7D00 | (v38 ^ 0xFF3202FF) & (((((v29[12] ^ *(a16 + (v29[12] ^ 0x6DLL)) ^ 0xFFFFFF83) << 24) ^ 0xCA12F45E) & (v33 ^ 0xFFB6FC4F) | v33 & 0xA1) ^ 0x2C207675)) ^ 0x47750B4E) & (v39 ^ 0xFF4DFFFF);
  v41 = v39 & 0xB80000;
  v42 = *(a13 + (v29[7] ^ 0xB6)) ^ 0xFFFFFFB6;
  v43 = (((16 * v42) & 0xD0 ^ v42) & 0xFC ^ 0xFFFFFF0F) & (((*(a15 + (v29[5] ^ 0xA8)) ^ v29[5]) << 16) ^ 0xCB46C39C) | ((16 * v42) & 0xD0 ^ v42) & 0x63;
  v44 = (*(a16 + (v29[8] ^ 0xB7)) ^ v29[8]) << 24;
  v45 = (*(a16 + (*v29 ^ 0x9BLL)) ^ *v29) << 24;
  v46 = (((*(a16 + (v29[4] ^ 0x28)) ^ v29[4]) << 24) ^ 0x5FEAB354) & (v43 ^ 0x34F67CCB);
  v47 = v43 & 0x411500AB;
  LOBYTE(v43) = *(a14 + (v29[6] ^ 0x5BLL)) + 85;
  v48 = (*(a15 + (v29[1] ^ 0x9DLL)) ^ v29[1]) << 16;
  v49 = (v48 & 0x950000 | 0x82008004) ^ a8 ^ 0x1360ACC3 ^ (v48 ^ 0xFF2AFFFF) & (v45 & 0x2B000000 ^ 0xBEA38983 ^ (v45 ^ 0xACC9FFFF) & (v37 ^ 0xBA88D886));
  v50 = v41 ^ (v27 + 568918953) ^ v26 ^ v40;
  v51 = v24 ^ 0x2A856D8E ^ v44 & 0x44444444 ^ 0xB75B5E22 ^ (v44 ^ 0x25FFFFFF) & (v35 ^ 0x1173E438);
  v52 = v47 ^ v23 ^ 0xE040B6C6 ^ v46;
  v53 = (v51 & 0x1742159C ^ 0x9FDCA7F9) & (v51 & 0xE8BDEA63 ^ 0x57425DFF);
  v54 = v53 | v51 & 0x60214802;
  v55 = HIBYTE(v50);
  v56 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v27 - 1274) - 4;
  v57 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v22 - 356) ^ 0x40D)) - 4;
  v58 = *&v56[4 * (BYTE2(v52) ^ 0x50)] + 1792694175;
  v59 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v22 - 356) ^ 0x4DC)) - 12;
  v60 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v27 - 1422) - 12;
  v61 = v58 ^ (v58 >> 3) ^ *&v57[4 * (HIBYTE(v49) ^ 0xAF)] ^ (v58 >> 5) ^ *&v60[4 * (v50 ^ 0xA9)] ^ *&v59[4 * (BYTE1(v54) ^ 0x85) + 580 + 4 * ((v53 >> 7) & 0x120 ^ 0xFFFFFEFF)];
  LOBYTE(v48) = HIBYTE(v49) ^ v50 ^ v61;
  v62 = *&v56[4 * (BYTE2(v54) ^ 0xB7)] + 1792694175;
  v63 = v49 ^ HIBYTE(v52) ^ *&v57[4 * (HIBYTE(v52) ^ 0x52)] ^ v62 ^ (v62 >> 3) ^ (v62 >> 5) ^ *&v59[4 * (BYTE1(v50) ^ 0xFA)] ^ *&v60[4 * (v49 ^ 0x3B)];
  v64 = *&v56[4 * (BYTE2(v50) ^ 0x70)] + 1792694175;
  v65 = *&v56[4 * (BYTE2(v49) ^ 0xA2)];
  v66 = *&v60[4 * (v52 ^ 0xD8)] ^ v52 ^ 0xC2 ^ __ROR4__(__ROR4__(HIBYTE(v54) ^ *&v59[4 * (BYTE1(v49) ^ 0x48)] ^ v64 ^ *&v57[4 * (HIBYTE(v54) ^ 0x86)] ^ (v64 >> 3) ^ (v64 >> 5) ^ 0x86EDDC7E, 25) ^ 0x57091C89, 7);
  v67 = v54 ^ v55 ^ *&v57[4 * (v55 ^ 0x95)] ^ (v65 + 1792694175) ^ ((v65 + 1792694175) >> 3) ^ ((v65 + 1792694175) >> 5) ^ *&v59[4 * ((v43 ^ (16 * v43) ^ ((32 * v43) | 0x14) ^ ((v52 ^ 0xFFC2) >> 8)) ^ 0x1D)] ^ *&v60[4 * (v54 ^ 0x8D)];
  v68 = (v63 & 0xAA ^ 0x95996D1) & (v63 & 0x55 ^ 0xCF5BD6EA) ^ (v63 & 4 | 0xC6024008);
  v69 = HIBYTE(v67);
  v70 = *&v56[4 * (BYTE2(v63) ^ 0x4D)] + 1792694175;
  v71 = *&v57[4 * (HIBYTE(v61) ^ 0x1D)] ^ HIBYTE(v61) ^ v70 ^ *&v60[4 * (v67 ^ 0x79)] ^ *&v59[4 * (BYTE1(v66) ^ 0x6F)] ^ (v70 >> 3) ^ (v70 >> 5);
  LOBYTE(v55) = v57[4 * (HIBYTE(v61) ^ 0x1D)] ^ HIBYTE(v61) ^ v70 ^ v60[4 * (v67 ^ 0x79)] ^ v59[4 * (BYTE1(v66) ^ 0x6F)] ^ (v70 >> 3) ^ (v70 >> 5) ^ v67;
  v72 = *&v56[4 * (BYTE2(v66) ^ 0x59)] + 1792694175;
  v73 = v72 ^ v48 ^ *&v59[4 * (BYTE1(v67) ^ 8)] ^ *&v60[4 * (v48 ^ 0x95)] ^ __ROR4__(__ROR4__(*&v57[4 * (HIBYTE(v63) ^ 0xCB)] ^ HIBYTE(v63), 5) ^ 0xB75498AF, 27) ^ (((v72 >> 2) + v72 - 2 * ((v72 >> 2) & v72)) >> 3);
  v74 = *&v56[4 * (BYTE2(v67) ^ 0xB0)] + 1792694175;
  v75 = *&v60[4 * (v68 ^ 0xCF5BD6B5)] ^ v68 ^ __ROR4__(__ROR4__(HIBYTE(v66) ^ v74 ^ *&v57[4 * (HIBYTE(v66) ^ 5)] ^ (v74 >> 3) ^ (v74 >> 5) ^ *&v59[4 * (BYTE1(v61) ^ 0x1C)] ^ 0xA9EE7762, 4) ^ 0x8B340E5F, 28);
  v76 = *&v56[4 * (BYTE2(v61) ^ 0x45)] + 1792694175;
  v77 = v69 ^ *&v57[4 * (v69 ^ 0x1E)] ^ v66 ^ v76 ^ *&v59[4 * (BYTE1(v63) ^ 0x6C)] ^ *&v60[4 * (v66 ^ 0x92)] ^ (v76 >> 3) ^ (v76 >> 5);
  v78 = (v73 >> 8) ^ 0xC328C7;
  v79 = HIBYTE(v77);
  v80 = *&v56[4 * (BYTE2(v73) ^ 0x53)] + 1792694175;
  v81 = v77;
  v82 = *&v57[4 * (HIBYTE(v71) ^ 0xD)] ^ HIBYTE(v71) ^ v80 ^ (v80 >> 3) ^ (v80 >> 5) ^ *&v59[4 * (BYTE1(v75) ^ 0xD2)] ^ *&v60[4 * (v77 ^ 0x33)];
  v83 = v82 ^ v77;
  v84 = *&v56[4 * (BYTE2(v75) ^ 0x61)] + 1792694175;
  v85 = HIBYTE(v73) ^ v55 ^ *&v57[4 * (HIBYTE(v73) ^ 0x55)] ^ v84 ^ (v84 >> 3) ^ (v84 >> 5) ^ *&v59[4 * (BYTE1(v77) ^ 0xEB)] ^ *&v60[4 * (v55 ^ 0x5E)];
  v86 = *&v56[4 * (BYTE2(v77) ^ 0x6A)] + 1792694175;
  v87 = __ROR4__(HIBYTE(v75) ^ *&v59[4 * (BYTE1(v71) ^ 0x5B)] ^ v86 ^ *&v57[4 * (HIBYTE(v75) ^ 0x82)] ^ (v86 >> 3) ^ (v86 >> 5) ^ 0xD13072E5, 12) ^ 0xCADF61ED;
  v88 = BYTE1(v73) ^ 0xC7;
  if (v88 >= 0xB2)
  {
    v88 -= 178;
  }

  v89 = *&v56[4 * (BYTE2(v71) ^ 0xC3)];
  v90 = *&v60[4 * (v73 ^ 0x3F)] ^ __ROR4__(v87, 20);
  v91 = v90 ^ v73;
  if (((v78 - v88) & 0xFEu) >= 0xB2)
  {
    v92 = -78;
  }

  else
  {
    v92 = 0;
  }

  if (!v88)
  {
    LOBYTE(v78) = v92;
  }

  v93 = *&v57[4 * (v79 ^ 0x30)] ^ v75 ^ (v89 + 1792694175) ^ *&v60[4 * (v75 ^ 0x4D)] ^ ((v89 + 1792694175) >> 3) ^ ((v89 + 1792694175) >> 5) ^ *&v59[4 * (v78 ^ 0x90)];
  v94 = HIBYTE(v90);
  v95 = *&v56[4 * (BYTE2(v85) ^ 0x8E)] + 1792694175;
  v96 = HIBYTE(v90) ^ 0x35;
  v97 = *&v59[4 * (BYTE1(v90) ^ 0xF4)] ^ *&v57[4 * (HIBYTE(v82) ^ 0x6C)] ^ v95 ^ (v95 >> 3) ^ (v95 >> 5) ^ *&v60[4 * (v93 ^ v79 ^ 0x10)] ^ (((254 - (v93 ^ v79)) ^ v93 ^ v79 ^ 0xFE ^ -(v93 ^ v79 ^ 0xFE)) - 1270076418);
  v98 = HIBYTE(v93);
  v99 = v97 ^ HIBYTE(v82);
  HIDWORD(v100) = v82 ^ ~v81;
  LODWORD(v100) = v83;
  v101 = *&v56[4 * (BYTE2(v90) ^ 0x7A)] + 1792694175;
  v102 = 899707127 - (v94 ^ 0x35A070C2);
  v103 = *&v59[4 * (BYTE1(v93) ^ 0x54) + 580 + 4 * ((v93 >> 7) & 0x120 ^ 0xFFFFFFDF)] ^ *&v57[4 * (HIBYTE(v85) ^ 0xAA)] ^ v101 ^ (v101 >> 3) ^ (v101 >> 5) ^ __ROR4__((v100 >> 1) & 0x8000007F ^ __ROR4__(*&v60[4 * (v83 ^ 0xA5)], 1) ^ 0x25, 31);
  v104 = v103 ^ HIBYTE(v85);
  v105 = *&v56[4 * (BYTE2(v93) ^ 0x70)] + 1792694175;
  v106 = *&v57[4 * (v94 ^ 0xA3)];
  v107 = (v105 >> 2) & 0x200;
  v108 = (v96 ^ -v96 ^ v102) + 899707127;
  if ((v107 & v105) != 0)
  {
    v107 = -v107;
  }

  v109 = v106 ^ v85 ^ v105 ^ *&v59[4 * (BYTE1(v82) ^ 0x8E)] ^ *&v60[4 * (v85 ^ 0xBE)] ^ v108 ^ (((v107 + v105) ^ (v105 >> 2) & 0xFFFFFDFF) >> 3);
  v110 = *&v56[4 * BYTE2(v82)] + 1792694175;
  BYTE2(v85) = BYTE2(v99) ^ 0x7F;
  v111 = v91 ^ v98 ^ *&v59[4 * (BYTE1(v85) ^ 0xB9)] ^ *&v57[4 * (v98 ^ 0xCD)] ^ v110 ^ *&v60[4 * (v91 ^ 0x9E)] ^ (v110 >> 3) ^ (v110 >> 5);
  v112 = v111 ^ 0xECAC5BA8;
  v113 = *&v56[4 * ((v104 ^ 0xA588C5B9) >> 16)] + 1792694175;
  v114 = *&v57[4 * (((v99 ^ 0xC27F228D) >> 24) ^ 0x96)] ^ ((v99 ^ 0xC27F228D) >> 24) ^ v113 ^ (v113 >> 3) ^ (v113 >> 5) ^ *&v59[4 * ((v109 ^ 0xAF0) >> 8)] ^ *&v60[4 * (v111 ^ 0x46)];
  v115 = *&v56[4 * ((v109 ^ 0x6D320AF0) >> 16)] + 1792694175;
  v116 = (v111 ^ 0xECAC5BA8) >> 24;
  v117 = ((v104 ^ 0xA588C5B9) >> 24) ^ v99 ^ 0x8D ^ v115 ^ *&v57[4 * (((v104 ^ 0xA588C5B9) >> 24) ^ 0x96)] ^ (v115 >> 3) ^ (v115 >> 5);
  v118 = *&v59[4 * (BYTE1(v112) ^ 0x90)] ^ *&v60[4 * (v99 ^ 0x63)];
  v119 = v114 ^ v112;
  v120 = v117 ^ v118;
  v121 = *&v56[4 * BYTE2(v112)] + 1792694175;
  v122 = *&v59[4 * (BYTE1(v97) ^ 0xB2)];
  v123 = BYTE2(v85);
  v124 = ((v109 ^ 0x6D320AF0) >> 24) ^ v104 ^ 0xB9 ^ v121 ^ *&v57[4 * (((v109 ^ 0x6D320AF0) >> 24) ^ 0x96)] ^ *&v60[4 * (v104 ^ 0x57)] ^ (v121 >> 3) ^ (v121 >> 5) ^ v122;
  v125 = *&v56[4 * (v123 ^ 0x7B)] + 1792694175;
  v126 = *&v59[4 * (BYTE1(v103) ^ 0x55)];
  v127 = BYTE1(v120) ^ 0x2D;
  v128 = (v120 ^ 0xCC1D2DB0) >> 24;
  v129 = BYTE1(v119) ^ 0xD;
  v130 = *&v57[4 * (v116 ^ 0x96)] ^ v109 ^ 0xF0 ^ *&v60[4 * (v109 ^ 0x1E)] ^ v125 ^ (v125 >> 3) ^ (v125 >> 5) ^ v126;
  v131 = v130 ^ v116;
  v132 = *&v56[4 * (BYTE2(v120) ^ 0x66)] + 1792694175;
  v133 = v131 ^ 0x78580C64;
  v134 = *&v57[4 * (((v119 ^ 0x86DB0D1A) >> 24) ^ 0x96)] ^ ((v119 ^ 0x86DB0D1A) >> 24) ^ v132 ^ (v132 >> 3) ^ (v132 >> 5);
  v135 = *&v56[4 * ((v124 ^ 0x7BBAB2C8) >> 16)] + 1792694175;
  v136 = v134 ^ *&v60[4 * (v131 ^ 0x8A)] ^ *&v59[4 * (((v124 ^ 0xB2C8) >> 8) ^ -((v124 ^ 0xB2C8) >> 8) ^ (144 - (((v124 ^ 0xB2C8) >> 8) ^ 0x90))) + 576] ^ v131 ^ 0x64;
  v137 = (v124 ^ 0x7BBAB2C8) >> 24;
  v138 = *&v57[4 * (v128 ^ 0x96)] ^ v119 ^ 0x1A ^ v135 ^ (v135 >> 3) ^ (v135 >> 5);
  v139 = HIBYTE(v133);
  v140 = v138 ^ *&v59[4 * (BYTE1(v130) ^ 0x9C)] ^ *&v60[4 * (v119 ^ 0xF4)];
  v141 = v140 ^ v128;
  v142 = *&v56[4 * BYTE2(v133)] + 1792694175;
  v143 = *&v60[4 * (v120 ^ 0x5E)];
  v144 = v120 ^ 0xB0 ^ v137;
  v145 = *&v56[4 * (BYTE2(v114) ^ 0xA0)] + 1792694175;
  v146 = v136 ^ 0x9173314E;
  v147 = v144 ^ *&v57[4 * (v137 ^ 0x96)] ^ v142 ^ (v142 >> 3) ^ (v142 >> 5) ^ *&v59[4 * v129] ^ v143 ^ 0x26AF3E36;
  v148 = v141 ^ 0xB220F9D1;
  v149 = v139 ^ v124 ^ 0xC8 ^ *&v57[4 * (v139 ^ 0x96)] ^ *&v59[4 * v127] ^ v145 ^ *&v60[4 * (v124 ^ 0x26)] ^ (v145 >> 3) ^ (v145 >> 5);
  BYTE2(v137) = BYTE2(v149) ^ 0xB9;
  v150 = (v149 ^ 0xB1B9D77D) >> 24;
  v151 = *&v56[4 * (BYTE2(v140) ^ 0x5B)] + 1792694175;
  v152 = *&v56[4 * BYTE2(v147)] + 1792694175;
  v153 = *&v60[4 * (v149 ^ 0x93)] ^ *&v59[4 * BYTE1(v147)] ^ v149 ^ 0x7D ^ __ROR4__(__ROR4__(HIBYTE(v146) ^ 0x35A070F7 ^ v151 ^ *&v57[4 * (HIBYTE(v146) ^ 0x96)] ^ (v151 >> 5) ^ (v151 >> 3), 17) ^ 0xE447B75C, 15);
  v154 = *&v59[4 * ((v149 ^ 0xD77D) >> 8)];
  v155 = v154 & 0x2000;
  v156 = HIBYTE(v148) ^ v136 ^ 0x4E ^ v152 ^ *&v57[4 * (HIBYTE(v148) ^ 0x96)] ^ (v152 >> 3) ^ (v152 >> 5) ^ v154 & 0xFFFFDFFF ^ *&v60[4 * (v136 ^ 0xA0)];
  v157 = HIBYTE(v148) ^ v136 ^ 0x4E ^ v152 ^ v57[4 * (HIBYTE(v148) ^ 0x96)] ^ (v152 >> 3) ^ (v152 >> 5) ^ v154 ^ v60[4 * (v136 ^ 0xA0)] ^ 0x6E;
  v158 = *&v57[4 * (HIBYTE(v147) ^ 0x96)] ^ HIBYTE(v147);
  v159 = *&v56[4 * BYTE2(v137)] + 1792694175;
  v160 = v158 & 8;
  v161 = v159 ^ (v159 >> 5) ^ (v159 >> 3);
  if ((v161 & v158 & 8) != 0)
  {
    v160 = -v160;
  }

  v162 = *&v60[4 * (v141 ^ 0x3F)] ^ v141 ^ 0xD1 ^ ((*&v59[4 * BYTE1(v146)] ^ -*&v59[4 * BYTE1(v146)] ^ ((v158 & 0xFFFFFFF7 ^ 0x35A070F7 ^ (v160 + v161)) - (v158 & 0xFFFFFFF7 ^ 0x35A070F7 ^ (v160 + v161) ^ *&v59[4 * BYTE1(v146)]))) + (v158 & 0xFFFFFFF7 ^ 0x35A070F7 ^ (v160 + v161)));
  v163 = *&v56[4 * BYTE2(v146)] + 1792694175;
  v164 = *&v59[4 * (BYTE1(v148) ^ 0x90)];
  v165 = v153 ^ 0xFEDC482D;
  v166 = v155 ^ 0xF8ABECAB ^ v156;
  v167 = v150 ^ v147 ^ *&v57[4 * (v150 ^ 0x96)] ^ v163 ^ (v163 >> 3) ^ (v163 >> 5) ^ v164 ^ *&v60[4 * (v147 ^ 0xEE)];
  v168 = (v162 ^ 0x491D745) >> 24;
  v169 = *&v56[4 * BYTE2(v166)] + 1792694175;
  v170 = *&v57[4 * (((v153 ^ 0xFEDC482D) >> 24) ^ 0x96)] ^ ((v153 ^ 0xFEDC482D) >> 24) ^ v169 ^ *&v59[4 * ((v162 ^ 0xD745) >> 8)] ^ *&v60[4 * ((v150 ^ v147 ^ v57[4 * (v150 ^ 0x96)] ^ v163 ^ (v163 >> 3) ^ (v163 >> 5) ^ v164 ^ v60[4 * (v147 ^ 0xEE)]) ^ 0xE)] ^ (v169 >> 3) ^ (v169 >> 5);
  v171 = v170 ^ (v150 ^ v147 ^ v57[4 * (v150 ^ 0x96)] ^ v163 ^ (v163 >> 3) ^ (v163 >> 5) ^ v164 ^ v60[4 * (v147 ^ 0xEE)]) ^ 0xE0;
  v172 = *&v56[4 * (BYTE2(v162) ^ 0xEA)] + 1792694175;
  v173 = HIBYTE(v166) ^ v153 ^ 0x2D ^ *&v57[4 * (HIBYTE(v166) ^ 0x96)] ^ v172 ^ (v172 >> 3) ^ (v172 >> 5) ^ *&v59[4 * ((v167 ^ 0x5E0) >> 8)] ^ *&v60[4 * (v153 ^ 0xC3)];
  v174 = *&v56[4 * (BYTE2(v167) ^ 0xBD)] + 1792694175;
  v175 = *&v57[4 * (v168 ^ 0x96)] ^ v166 ^ *&v59[4 * BYTE1(v165)] ^ v174 ^ *&v60[4 * (v157 ^ 0x2B)] ^ (v174 >> 3) ^ (v174 >> 5) ^ ((v168 ^ -v168 ^ (899707127 - (v168 ^ 0x35A070F7))) + 899707127);
  v176 = *&v56[4 * ((BYTE2(v165) - (BYTE2(v165) ^ 0x7B)) ^ 0xFFFFFFFE) + 4 * BYTE2(v165)] + 1792694175;
  v177 = v162 ^ 0x45 ^ ((v167 ^ 0x6FBD05E0u) >> 24) ^ *&v57[4 * (((v167 ^ 0x6FBD05E0u) >> 24) ^ 0x96)] ^ *&v59[4 * BYTE1(v166)] ^ *&v60[4 * (v162 ^ 0xAB)] ^ (((v176 >> 5) ^ (v176 >> 3)) & 0x6768E04 ^ v176 & 0x26768E04 | ((v176 >> 5) ^ (v176 >> 3)) & 0x198971FB ^ v176 & 0xD98971FB);
  v178 = BYTE1(v173) ^ 0xA6;
  v179 = (v173 ^ 0x4488A639u) >> 24;
  v180 = v171 ^ 0xAFBD;
  v181 = v177 ^ 0x1A7F046B;
  v182 = *&v56[4 * (((v173 ^ 0x4488A639u) >> 16) ^ 0x7B)] + 1792694175;
  v183 = *&v59[4 * (BYTE1(v175) ^ 0x94)] ^ *&v57[4 * (((v171 ^ 0x536DAFBDu) >> 24) ^ 0x96)] ^ v182 ^ (v182 >> 3) ^ (v182 >> 5) ^ *&v60[4 * (v177 ^ 0x85)];
  v184 = v177 ^ 0x6B ^ ((v171 ^ 0x536DAFBDu) >> 24);
  v185 = *&v56[4 * (BYTE2(v175) ^ 0x57)] + 1792694175;
  v186 = *&v57[4 * (v179 ^ 0x96)];
  v187 = v185 ^ (v185 >> 5) ^ (v185 >> 3);
  v188 = v186 & 0x400000;
  if ((v187 & v186 & 0x400000) != 0)
  {
    v188 = -v188;
  }

  v189 = *&v59[4 * (BYTE1(v181) ^ 0x90)] ^ v186 & 0xFFBFFFFF ^ *&v60[4 * (v171 ^ 0x53)];
  v190 = v183 ^ v184;
  v191 = v189 ^ (v188 + v187);
  v192 = v180 ^ v179 ^ v191;
  v193 = *&v56[4 * (BYTE2(v177) ^ 4)] + 1792694175;
  v194 = ((v175 ^ 0xAF2C0453) >> 24) ^ v173 ^ 0x39 ^ *&v59[4 * HIBYTE(v180)] ^ *&v57[4 * (((v175 ^ 0xAF2C0453) >> 24) ^ 0x96)] ^ *&v60[4 * (v173 ^ 0xD7)] ^ v193 ^ (v193 >> 3) ^ (v193 >> 5);
  v195 = *&v56[4 * (BYTE2(v170) ^ 0x16)] + 1792694175;
  v196 = v175 ^ 0x53;
  v197 = *&v60[4 * (v175 ^ 0xBD)];
  v198 = (v190 ^ 0xA08B63D9) >> 24;
  v199 = HIBYTE(v181) ^ v196 ^ v195 ^ *&v57[4 * (HIBYTE(v181) ^ 0x96)] ^ (v195 >> 3) ^ (v195 >> 5) ^ *&v59[4 * (v178 ^ 0x90)] ^ v197;
  v200 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v27 - 1807);
  v201 = *(v200 + 4 * (v198 ^ 0x50));
  v202 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v22 - 356) ^ 0x471)) - 12;
  v203 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v22 - 356) ^ 0x470)) - 4;
  v204 = (v198 + 1762068800) ^ v198;
  v205 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v22 - 356) ^ 0x7CC)) - 8;
  v206 = *&v205[4 * ((v194 ^ 0x5144) >> 8)] ^ 0x6671A1D4;
  v207 = v204 ^ *&v202[4 * (BYTE2(v191) ^ 0x42)] ^ v201 ^ v206 ^ (*&v203[4 * (v199 ^ 0x76)] - (v199 ^ 0xE728467E)) ^ (-1188175528 * v206);
  v208 = *(v200 + 4 * (((v192 ^ 0xB3620CFu) >> 24) ^ 0x50));
  v209 = *&v202[4 * (((v194 ^ 0x7E8F5144) >> 16) ^ 0x74)];
  v210 = v208 + ((((v192 ^ 0xB3620CFu) >> 24) + 1762068800) ^ ((v192 ^ 0xB3620CFu) >> 24)) - 2 * (v208 & ((((v192 ^ 0xB3620CFu) >> 24) + 1762068800) ^ ((v192 ^ 0xB3620CFu) >> 24)));
  v211 = *&v205[4 * (BYTE1(v199) ^ 0xB0)] ^ 0x6671A1D4;
  v199 ^= 0x8BB15000;
  v212 = v211 ^ (v209 + 557230568 - ((2 * v209) & 0x426D53D0)) ^ (*&v203[4 * (v190 ^ 0xAF)] - (v190 ^ 0xE72846A7)) ^ v210 ^ (-1188175528 * v211);
  v213 = HIBYTE(v199);
  v214 = *&v203[4 * (v192 ^ 0xB9)] - (v192 ^ 0xE72846B1);
  v215 = *&v205[4 * (BYTE1(v183) ^ 0x83)] ^ 0x6671A1D4;
  v216 = *&v202[4 * ~HIWORD(v183)];
  LODWORD(v202) = (((v194 ^ 0x7E8F5144) >> 24) + 1762068800) ^ ((v194 ^ 0x7E8F5144) >> 24) ^ *(v200 + 4 * (((v194 ^ 0x7E8F5144) >> 24) ^ 0x50)) ^ *&v202[4 * BYTE2(v199)] ^ v215 ^ v214 ^ (-1188175528 * v215);
  v217 = *&v205[4 * (BYTE1(v191) ^ 0xC0)] ^ 0x6671A1D4;
  LODWORD(v200) = (v213 + 1762068800) ^ v213 ^ v216 ^ *(v200 + 4 * (v213 ^ 0x50));
  v218 = ((v200 ^ 0x2136A9E8 ^ ((v200 ^ 0xDEC95617) + 1) ^ (((-1188175528 * v217) ^ v217) - (v200 ^ 0x2136A9E8 ^ (-1188175528 * v217) ^ v217))) + ((-1188175528 * v217) ^ v217)) ^ (*&v203[4 * (v194 ^ 0x32)] - (v194 ^ 0xE728463A));
  v219 = v202 ^ 0x139D7743;
  v220 = BYTE3(v219);
  v221 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v27 - 1836) - 4;
  v29[12] = v221[((v218 ^ 0x5348089Fu) >> 24) ^ 0x15] ^ ((((v218 ^ 0x5348089Fu) >> 24) ^ 0x8B) - (((v218 ^ 0x5348089Fu) >> 24) ^ 0x30)) ^ 0x49;
  v222 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v27 - 1401) - 12;
  v223 = (((v218 ^ 0x5348089Fu) >> 16) - 119) ^ v222[((v218 ^ 0x5348089Fu) >> 16) ^ 0x2CLL];
  v29[13] = (v223 ^ -v223 ^ (-93 - (v223 ^ 0xA3))) - 93;
  v29[8] = (v221[v220 ^ 0xC1] + (v220 ^ 0x5F) - (v220 ^ 0xE4) - 2 * (v221[v220 ^ 0xC1] & ((v220 ^ 0x5F) - (v220 ^ 0xE4)))) ^ 0xE0;
  v224 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v22 - 356) ^ 0x5EB)) - 8;
  v29[14] = v224[BYTE1(v218) ^ 0xCDLL] ^ 0xCF;
  v225 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v27 - 1745) - 4;
  v29[11] = v225[v202 ^ 0x13] ^ (16 * v225[v202 ^ 0x13]) ^ 0x35;
  v29[6] = v224[BYTE1(v212) ^ 0x8DLL] ^ 0x2B;
  *(a12 + v228) = v224[BYTE1(v207) ^ 0x1CLL] ^ 0xD;
  LOBYTE(v205) = v225[((v212 ^ 0xE1) - ((2 * (v212 ^ 0x3CB83BE1)) & 0xFA) + 125) ^ 7];
  v29[7] = v205 ^ (16 * v205) ^ 0x42;
  v29[9] = (((v219 >> 15) & 0x12) + (BYTE2(v219) ^ 0x89)) ^ 0x45 ^ v222[BYTE2(v219) ^ 0x2CLL];
  v29[3] = v225[v207 ^ 0xB4] ^ (16 * v225[v207 ^ 0xB4]) ^ 0x41;
  v29[15] = v225[v218 ^ 0x6ELL] ^ (16 * v225[v218 ^ 0x6ELL]) ^ 0x2E;
  *v29 = ((((v207 ^ 0x64AF0D9C) >> 24) ^ 0x55) - (((v207 ^ 0x64AF0D9C) >> 24) ^ 0xEE)) ^ 0xE9 ^ v221[((v207 ^ 0x64AF0D9C) >> 24) ^ 0xCBLL];
  v29[10] = v224[BYTE1(v202) ^ 0x91] ^ 0x64;
  v29[4] = ((((v212 ^ 0x3CB83BE1) >> 24) ^ 0x59) - (((v212 ^ 0x3CB83BE1) >> 24) ^ 0xE2)) ^ 0x4E ^ v221[((v212 ^ 0x3CB83BE1) >> 24) ^ 0xC7];
  v29[5] = ((BYTE2(v212) ^ 0xA9) - 119) ^ 0xB7 ^ v222[BYTE2(v212) ^ 0x85];
  v29[1] = ((((v207 ^ 0x64AF0D9C) >> 16) ^ 0x3B) - 119) ^ 0xDE ^ v222[((v207 ^ 0x64AF0D9C) >> 16) ^ 0x17];
  v226 = a6 + 1947223140 < a22;
  if (a22 < 0x74104444 != (a6 + 1947223140) < 0x74104444)
  {
    v226 = a22 < 0x74104444;
  }

  return (*(a17 + 8 * ((3401 * v226) ^ v27)))(v221, ((v207 ^ 0x64AF0D9C) >> 24) ^ 0xEEEEEEEE, v29, 44, v219, (a6 + 16), 1718723028, v207, a9, a10, a11, a12);
}

uint64_t sub_1968C8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  LOBYTE(STACK[0x24F]) = (59 * (v59 ^ 0xF3) + 37 + &a59) * (&a59 ^ 0xBA);
  LOBYTE(STACK[0x24E]) = (&a59 ^ 0xBB) * (&a59 + 18);
  return (*(v60 + 6616 * (v59 ^ 0x4F3)))(&a59 ^ 0xBBBBBBBB, 4034593439, 1906281716, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1968C81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44, unsigned int a45, unsigned int a46, uint64_t a47, char a48, __int16 a49, char a50)
{
  v85 = *(v51 + 8 * (v50 + 66));
  v58 = (a48 - ((2 * a48) & 0x88) + 75);
  if (v58 == 77)
  {
    v62 = &a34 + v53 + 1496482802;
    v63 = ((v62[1] ^ v52) << SBYTE4(a31)) + ((*v62 ^ v52) << 24) + ((v62[2] ^ v52) << 8);
    LODWORD(v62) = v63 + (v62[3] ^ v52) + v54 - 2 * ((v63 + (v62[3] ^ v52)) & (v54 + 4) ^ (v62[3] ^ v52) & 4);
    v64 = (a5 ^ 0x34EB3CFE) & 0x9A759E7F ^ 3;
    v65 = (4 * ((a5 ^ 0xCB14C302) & 0x9A759E7F ^ 0x658A6181)) & 0x658A6180 ^ (a5 ^ 0xCB14C302) & 0x9A759E7F ^ 0x658A6181 ^ ((4 * ((a5 ^ 0xCB14C302) & 0x9A759E7F ^ 0x658A6181)) ^ a6) & v64;
    v66 = (4 * v64) & 0x658A6180 ^ 0x61826183 ^ ((4 * v64) ^ a6) & v64;
    v67 = (16 * v65) & 0x658A6180 ^ v65 ^ ((16 * v65) ^ 0x18261830) & v66;
    v68 = (16 * v66) & 0x658A6180 ^ 0x25086183 ^ ((16 * v66) ^ 0x58A61830) & v66;
    v69 = v67 ^ (v67 << 8) & 0x658A6100 ^ ((v67 << 8) ^ 0x80618300) & v68 ^ 0x40A0100;
    v56[(((2 * ((v69 << 16) & 0x658A0000 ^ v69 ^ ((v69 << 16) ^ 0x61830000) & ((v68 << 8) & 0x658A0000 ^ 0x658A0000 ^ ((v68 << 8) ^ 0xA610000) & v68))) ^ 0x593283F2) >> 2) ^ 0x2BB76FC2] = v62;
    v70 = *(v51 + 8 * ((198 * ((v53 + 1496482806) > 0x3F)) ^ a32));
    return v70(v70, 733441986, a32 ^ 0xC6, 1703567744, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, &a50, a17, a18, a19, a20, a21, a22);
  }

  else if (v58 == 76)
  {
    v59 = (a8 + 1973);
    v60 = &a34 + v53 + 1496482802;
    v61 = *v60 ^ v52;
    LODWORD(v60) = ((*(&a34 + v57 + v59 + 1496486629) ^ v52) << 16) | ((v60[3] ^ v52) << 24) | v61 | ((v60[1] ^ v52) << 8);
    *v56 = v60 + v54 - 2 * (v60 & (v54 + 16) ^ v61 & 0x10);
    return (*(v51 + 8 * ((7349 * ((v53 + 1496482806) < 0x40)) ^ v59)))(v59, 0, 0, 1496482802, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, &a50, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v71 = (((a43 ^ 0xD4F9274D) + 721868979) ^ ((a43 ^ 0xDEA8A3AB) + 559373397) ^ ((a43 ^ 0x7616838D) - 1981186957)) + (((a43 ^ 0x831F902D) + 2095083475) ^ ((a43 ^ 0x1E2543A2) - 505758626) ^ ((a43 ^ 0xE17DD4E4) + 511847196)) + 741642739;
    v72 = (v71 ^ 0xAB5D7AD2) & (2 * (v71 & 0xCC597CE3)) ^ v71 & 0xCC597CE3;
    v73 = ((2 * (v71 ^ 0xA3DD6B94)) ^ 0xDF082EEE) & (v71 ^ 0xA3DD6B94) ^ (2 * (v71 ^ 0xA3DD6B94)) & 0x6F841776;
    v74 = v73 ^ 0x20841111;
    v75 = (v73 ^ 0x43000604) & (4 * v72) ^ v72;
    v76 = ((4 * v74) ^ 0xBE105DDC) & v74 ^ (4 * v74) & 0x6F841774;
    v77 = (v76 ^ 0x2E001550) & (16 * v75) ^ v75;
    v78 = ((16 * (v76 ^ 0x41840223)) ^ 0xF8417770) & (v76 ^ 0x41840223) ^ (16 * (v76 ^ 0x41840223)) & 0x6F841770;
    v79 = v77 ^ 0x6F841777 ^ (v78 ^ 0x68001700) & (v77 << 8);
    v80 = (v79 << 16) ^ 0x17770000u;
    v81 = (((a44 ^ 0x9CC78EF4) + 1664643340) ^ ((a44 ^ 0xEB8A3749) + 343263415) ^ ((a44 ^ 0xB0ABED6) - 185253590)) + (((a44 ^ 0xB33E43BD) + 1287765059) ^ ((a44 ^ 0x4C10AD0C) - 1276161292) ^ ((a44 ^ 0x8369E9DA) + 2090210854)) + 271948277;
    a43 = v71 ^ (2 * ((v79 << 16) & 0x6F840000 ^ v79 ^ v80 & (((v78 ^ 0x7840007) << 8) & 0x6F840000 ^ 0x6B800000 ^ (((v78 ^ 0x7840007) << 8) ^ 0x4170000) & (v78 ^ 0x7840007)))) ^ 0x611E5566;
    a44 = v81 ^ ((v81 ^ 0xA677D12E) + 1311745487) ^ ((v81 ^ 0xDB6C40EF) + 859059216) ^ ((v81 ^ 0x154FC1A1) - 48777918) ^ ((v81 ^ 0x7FF3DB7F) - 1750356064) ^ 0x6BE08C74;
    v82 = (((a45 ^ 0xBBECE0) - 12315872) ^ ((a45 ^ 0x75DA8B60) - 1977256800) ^ ((a45 ^ 0x92660EB) - 153510123)) + (((a45 ^ 0x5F1FD4E5) - 1595921637) ^ ((a45 ^ 0xDBBE0A7B) + 608302469) ^ ((a45 ^ 0xF8E6D9F5) + 119088651)) + 381916427;
    v83 = (((a46 ^ 0xBD1EB8FD) + 1122060035) ^ ((a46 ^ 0xC8975FC3) + 929603645) ^ ((a46 ^ 0x9CEE055) - 164552789)) + (((a46 ^ 0xC38C738C) + 1014205556) ^ ((a46 ^ 0xE601D05A) + 436088742) ^ ((a46 ^ 0x59CAA4BD) - 1506452669)) + 1126151672;
    a45 = v82 ^ ((v82 ^ 0x3B74DECF) - 625039610) ^ ((v82 ^ 0x403BB58) - 439762285) ^ ((v82 ^ 0xDE9D4CD9) + 1062679828) ^ ((v82 ^ 0xFFDFAF7B) + 504747698) ^ 0x6272815E;
    a46 = v83 ^ ((v83 ^ 0x8B011B8B) + 1047479127) ^ ((v83 ^ 0xA02AFCFD) + 356820001) ^ ((v83 ^ 0x1AC5AF2F) - 1347684365) ^ ((v83 ^ 0x7B7FEF7B) - 837699673) ^ 0x36D6A049;
    return v85(v80, 1870927728, a28, a4, 3935617798, 3081340428, 2740373169, a8, a9, a10, a11, a12, a13, a14, a15, &a50, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v55, a28, a29, v85, a31, a32, a33, a34, a35, a36);
  }
}

uint64_t sub_1968C81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  *(*(v45 + 8 * (v44 + 754487794)) - 8) = 67;
  v46 = (*(v43 + 8 * (v44 ^ 0xD30775B8)))(&a43, 0, 1024);
  return (*(a35 + 8 * (((((v44 ^ 0xD3076AE1) - 754488927) ^ 0x2CF88883) + (v44 ^ 0xD30777C3)) ^ v44 ^ 0xD3076AE1)))(v46);
}

uint64_t sub_1968C83C8()
{
  v4 = (((v2 ^ 0x1B9A39C242DB9200) + ((v1 - 1752657712) & 0x68776F2F) - 0x1B9A39C242DB972DLL) ^ ((v2 ^ 0x830B36748BDF2787) + 0x7CF4C98B7420D879) ^ ((v2 ^ (v1 + 1212336286) & 0xB7BD36F6 ^ 0x87FC10FA26379BBFLL) + 0x7803EF05D9C86083)) + 0x1F6D1F4D022D7077;
  v5 = (((v0 ^ 0x56C03301B0F54F4) - 0x56C03301B0F54F4) ^ ((v0 ^ 0x64B05E57BBDFC036) - 0x64B05E57BBDFC036) ^ ((v0 ^ 0x7EB1422B4FE3BE38) - 0x7EB1422B4FE3BE38)) + 0x1F6D1F4D022D7077;
  v6 = v5 < 0x12FA457D;
  v7 = v4 < v5;
  if (v6 != v4 < 0x12FA457D)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * (((v7 << 6) | (v7 << 9)) ^ (v1 + 1234))))();
}

uint64_t sub_1968C8570@<X0>(unsigned int a1@<W8>)
{
  v9 = a1 < v1;
  if (v9 == v6 > v5)
  {
    v9 = v6 + v4 < v3;
  }

  return (*(v8 + 8 * ((v9 * v7) ^ v2)))();
}

uint64_t sub_1968C85B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  v19 = *v16;
  v20 = v16[2];
  v21 = v16[4];
  LODWORD(a15) = v18 + 544 + 1790939281 * ((2 * (&a13 & 0x31886498) - &a13 + 1316461413) ^ 0xB6ABBB24);
  a13 = a11;
  a14 = v21;
  (*(v17 + 8 * (v18 ^ 0xAB0)))(&a13);
  LODWORD(a15) = v18 + 544 + 1790939281 * (((&a13 | 0x9F59FD64) - (&a13 & 0x9F59FD64)) ^ 0x6785DD25);
  a13 = a11;
  a14 = v20;
  (*(v17 + 8 * (v18 + 2480)))(&a13);
  a14 = v19;
  a15 = a11;
  a16 = v18 + 1012216201 * ((-1562116539 - (&a13 | 0xA2E3FE45) + (&a13 | 0x5D1C01BA)) ^ 0xD9B58956) + 120;
  v22 = (*(v17 + 8 * (v18 ^ 0xB73)))(&a13);
  return (*(v17 + 8 * (((a13 == 1906281716) * (79 * (v18 ^ 0x11A5) - 3272)) ^ v18)))(v22);
}

uint64_t sub_1968C8718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v39 = *(a30 + 19);
  v45 = 2 % ((v39 - ((2 * v39) & 0x3333) + 14489) ^ 0x3899u);
  v40 = (((2 * *(a30 + 18)) & 0xFFEF) + (*(a30 + 18) ^ 0x3EF7) - 16119);
  v46 = *(*(&a37 + a12 + 136) + ((LOBYTE(STACK[0xCF6]) ^ *(v38 - 146)) ^ 0x16u));
  v41 = a30 + ((((0 % v40) + 964330641 - 2 * ((0 % v40) & 1)) ^ 0x397A8491u) << 7) + 1176;
  v42 = (v41 + 32 * (v39 != 1));
  v43 = *(*v42 + 4 * *(*(&a37 + a12 + 56) + ((LOBYTE(STACK[0xCEC]) ^ *(v38 - 156)) ^ 0x16u))) ^ 0xA74F83CC ^ *(v42[1] + 4 * *(*(&a37 + a12 + 96) + ((LOBYTE(STACK[0xCF1]) ^ *(v38 - 151)) ^ 0x16u))) ^ *(v42[3] + 4 * *(*(&a37 + a12 + 48) + ((LOBYTE(STACK[0xCEB]) ^ *(v38 - 157)) ^ 0x16u))) ^ (*(v42[2] + 4 * v46) - 1487961140 - ((2 * *(v42[2] + 4 * v46)) & 0x4E9F0798));
  return (*(a31 + 8 * ((v37 + 227) | 0x140)))((*(&a37 + a12 + 2589) ^ BYTE1(v43)), (*(&a37 + a12 + 2594) ^ ((*(*(v41 + 32 * v45 + 8) + 4 * *(*(&a37 + a12 + 128) + ((LOBYTE(STACK[0xCF5]) ^ *(v38 - 147)) ^ 0x16u))) ^ *(*(v41 + 32 * v45) + 4 * *(*(&a37 + a12 + 88) + ((LOBYTE(STACK[0xCF0]) ^ *(v38 - 152)) ^ 0x16u))) ^ (*(*(v41 + 32 * v45 + 16) + 4 * *(*(&a37 + a12 + 40) + (((v37 - 29) | 0x40) ^ (LOBYTE(STACK[0xCEA]) ^ *(v38 - 158)) ^ 0xC1u))) ^ *(*(v41 + 32 * v45 + 24) + 4 * *(*(&a37 + a12 + 80) + ((LOBYTE(STACK[0xCEF]) ^ *(v38 - 153)) ^ 0x16u))))) >> 16)));
}

uint64_t sub_1968C8D4C()
{
  v5 = 654144011 * ((30832233 - ((v4 - 128) | 0x1D67669) + ((v4 - 128) | 0xFE298996)) ^ 0xD2FDF40A);
  *(v4 - 112) = v5 ^ 0xDE1ABB65;
  *(v4 - 120) = v3;
  *(v4 - 124) = v1 - v5 + 418965669;
  v6 = (*(v0 + 8 * (v1 ^ 0x1E2C)))(v4 - 128);
  return (*(v0 + 8 * (((*(v4 - 128) == v2) * (v1 + 3641)) ^ v1)))(v6);
}

uint64_t sub_1968C8DF4@<X0>(uint64_t a1@<X5>, int a2@<W7>, unint64_t a3@<X8>)
{
  v8 = (a2 ^ 0x1CE7u) - 37;
  v9 = (((v8 + 0x5FE3337FFDEDEEE3) & (2 * v5)) + (v5 ^ 0xEFF199BFFEF6FCBCLL) + v4 + 0x100E664001090344);
  v10 = (*v9 << 56) | (v9[1] << 48) | (v9[2] << 40) | (v9[3] << 32) | (v9[4] << 24) | (v9[5] << 16) | (v9[6] << 8);
  STACK[0x740] = v10 & 0x1866823ABA9E5CB8 ^ 0xC22B8C6F29C45DA5 ^ ((v9[7] - ((2 * v9[7]) & 0x15E) + 0x744D802FB498DEAFLL) ^ 0x93D4FDEAF1F97DE8) & (v10 ^ 0xEF997DCD65F3BFFFLL);
  v11 = 91 * (v8 ^ 0xA96);
  STACK[0x610] = a3;
  v13 = STACK[0x398];
  LODWORD(v9) = STACK[0x6D4];
  v14 = STACK[0x740];
  v15 = STACK[0x5B8];
  STACK[0x670] = *(a1 + 8 * v11);
  STACK[0x7E8] = v13;
  LODWORD(STACK[0x958]) = v6;
  LOWORD(STACK[0x95E]) = v3;
  LODWORD(STACK[0x960]) = v7;
  LODWORD(STACK[0x964]) = v9;
  STACK[0x968] = v14;
  STACK[0x970] = v15;
  return (*(a1 + 8 * (((v13 == 0) * (((v11 - 207) | 0x1029) ^ ((v11 + 772) | 0x1248) ^ 0x5F7)) ^ (v11 + 3250))))();
}

uint64_t sub_1968C8F8C@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 32);
  if ((v1 + v4) >= 0x7FFFFFFF)
  {
    v7 = 1352679864 - v2;
  }

  else
  {
    v7 = v2;
  }

  v10[1] = v7;
  *(v5 - 128) = (a1 - 2472) ^ (654144011 * ((2 * ((v5 - 128) & 0x2C09EC98) - (v5 - 128) - 738847902) ^ 0xFF226EFE));
  *(v5 - 120) = v10;
  *(v5 - 112) = v6;
  return (*(v3 + 8 * (a1 ^ 0x90)))(v5 - 128);
}

uint64_t sub_1968C90E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  a10 = v12 + 1012216201 * ((&a10 - 891133267 - 2 * (&a10 & 0xCAE262AD)) ^ 0x4E4BEA41) - 5148235;
  v13 = (*(v11 + 8 * (v12 ^ 0x19F0)))(&a10);
  return (*(v11 + 8 * ((14 * (a11 != v12 + 1477998647)) ^ v12)))(v13);
}

uint64_t sub_1968C9174(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v18 = 1012216201 * ((((v17 - 128) | 0x9932AD2E) - ((v17 - 128) & 0x9932AD2E)) ^ 0x1D9B25C2);
  *(v17 - 120) = v18 + ((a3 << 6) & 0x7FFF3DC0) - 67109894 + ((a3 << ((a11 + 45) & 0xEF ^ 0xED)) ^ 0x3FFF9EEF);
  *(v17 - 116) = (a11 + 2692) ^ v18;
  *(v17 - 128) = &a16;
  v19 = (*(v16 + 8 * (a11 ^ 0x1CCD)))(v17 - 128);
  return (*(v16 + 8 * ((3700 * ((*(a9 + 4) - 676339933) < 0x7FFFFFFF)) ^ a11)))(v19);
}

uint64_t sub_1968C929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v94 = (*(v92 - 148) - 1697) | 0x440;
  v95 = v89 + 16;
  *(v92 - 136) = *(v92 - 160) ^ 0xB98D4A5B;
  v96 = *(v92 - 156);
  *(v92 - 132) = *(v92 - 152) ^ v94 ^ 0x6A10CAAE;
  *(v92 - 140) = v96 ^ 0x4160EB13;
  *(v92 - 128) = v90 ^ 0xCA86C5FA;
  *(v92 - 124) = v95;
  *(v92 - 180) = 0;
  v97 = (v94 + 155742837) & 0xF6B78FEB;
  v98 = 9 * (v94 ^ 0x66F);
  v99 = (v93 + v95);
  v100 = v99[13];
  *(v92 - 148) = v97;
  *(v92 - 164) = v98;
  v101 = v98 ^ 0x1344 | v95;
  *(v92 - 144) = v101;
  v102 = *(v92 - 240);
  v103 = *(v92 - 224);
  v104 = *(v92 - 248);
  v105 = *(v92 - 252);
  v106 = *(v92 - 232);
  v107 = ((*(v102 + (*(v93 + v101) ^ 4)) ^ 0x24) << 16) | ((*(v103 + (v99[8] ^ 0xC5)) ^ 0x88888888) << 24) | (((v105 - 69 * *(v104 + (v99[10] ^ 0x7FLL))) ^ 0xE8) << 8) | (*(v106 + (v99[11] ^ 0x81)) + 75) ^ 0x96;
  v108 = ((*(v102 + (v100 ^ v97)) ^ 0x8A) << 16) | ((*(v103 + (v99[12] ^ 0xA1)) ^ 0xE4) << 24) | (*(v106 + (v99[15] ^ 0x9FLL)) + 75) | (((v105 - 69 * *(v104 + (v99[14] ^ 0x9FLL))) ^ 0xAB) << 8);
  v109 = ((*(v103 + (v99[4] ^ 0x22)) ^ 0x46) << 24) | (((v105 - 69 * *(v104 + (v99[6] ^ 0x6DLL))) ^ 0xBF) << 8) | (*(v106 + (v99[7] ^ 0x89)) + 75) | ((*(v102 + (v99[5] ^ 0xFELL)) ^ 0x1A) << 16);
  v110 = (((v105 - 69 * *(v104 + (v99[2] ^ 0xDALL))) ^ 0x65) << 8) | ((*(v102 + (v99[1] ^ 0xE7)) ^ 0xD7) << 16) | ((*(v103 + (*v99 ^ 0x58)) ^ 0xBA) << 24) | (*(v106 + (v99[3] ^ 0xF2)) + 75) ^ 3;
  *(v92 - 156) = v110;
  v111 = a82 ^ v110;
  v112 = (a82 ^ v110) >> 24;
  *(v92 - 160) = v108;
  *(v92 - 152) = v109;
  LODWORD(v102) = a79 ^ v109;
  LODWORD(v104) = (a79 ^ v109) >> 24;
  v113 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v94 ^ 0x543)) - 4;
  v114 = *&v113[4 * ((a80 ^ v108) >> 24)];
  v115 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v94 ^ 0x514));
  v116 = *(v115 + 4 * ((a80 ^ v108) >> 8));
  *(v92 - 120) = v94;
  v117 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v94 ^ 0x5F5)) - 8;
  v118 = 1922521479 * v116 - 1376398993 - ((-449924338 * v116 + 1676087484) & a7);
  v119 = *(v115 + 4 * BYTE1(v102));
  v120 = -1966173134 * v119 - 1309439906 - 406272683 * v119 + 16829934 - 2 * ((-1966173134 * v119 - 1309439906 - 406272683 * v119) & 0x100CDEF ^ (85 * v119) & 1);
  v121 = *(v115 + 4 * ((v107 ^ a81 ^ 0xFE10) >> 8));
  v122 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v94 - 693) - 4;
  v123 = (1922521479 * v121 - 1292609972 - ((19837710 * v121 + 65474748) & v91)) ^ *&v113[4 * v112];
  v124 = v118 ^ (*&v122[4 * BYTE2(v111)] - 842190321) ^ *&v117[4 * ((v107 ^ a81) ^ 0x10)];
  LODWORD(v104) = *&v113[4 * v104];
  v125 = v120 ^ v114 ^ (*&v122[4 * (((v107 ^ a81) >> 16) ^ 0x87)] - 842190321);
  v126 = *&v122[4 * BYTE2(v102)] - 842190321;
  v127 = (v124 - ((v124 + 16829934 - (v91 & (2 * v124))) ^ v104)) ^ (-16829934 - (((v104 ^ 0x4C155CC6) - 1276468422) ^ ((v104 ^ 0xF290C22B) + 225394133) ^ ((v104 ^ 0xBF855303) + 1081781501)));
  v128 = ((v127 + 16829934 - (v91 & (2 * v127))) ^ v104) + v124;
  v129 = *&v117[4 * v102];
  LODWORD(v102) = v125 - 66959087 - (a7 & (2 * v125));
  v130 = *(v92 - 216) ^ v128;
  LODWORD(v102) = a89 ^ *&v117[4 * v111] ^ v102;
  LODWORD(v104) = a78 ^ *&v117[4 * (a80 ^ v108)] ^ v126 ^ *&v113[4 * ((v107 ^ a81 ^ 0xD633FE10) >> 24)] ^ 0x57AE67AA ^ (1922521479 * *(v115 + 4 * BYTE1(v111)) - 1309439906);
  v131 = a77 ^ (*&v122[4 * ((a80 ^ v108) >> 16)] - 842190321) ^ v129 ^ 0x88F99DF8 ^ (v123 - 66959087 - (a7 & (2 * v123)));
  v132 = (*&v122[4 * BYTE2(v104)] - 909149408 - ((2 * *&v122[4 * BYTE2(v104)] - 1684380642) & a7)) ^ *&v117[4 * ((a77 ^ (v122[4 * ((a80 ^ v108) >> 16)] + 15) ^ v129) ^ 0xF8 ^ (v123 + 17 - (a7 & (2 * v123))))];
  v133 = v132 + 16829934 - (v91 & (2 * v132));
  v134 = (*&v122[4 * BYTE2(v131)] - 825360387 - ((2 * *&v122[4 * BYTE2(v131)] + 60449822) & v91)) ^ *&v113[4 * ((v130 ^ 0xECD77E2F) >> 24)];
  v135 = *&v122[4 * ((v130 ^ 0xECD77E2F) >> 16)];
  v136 = (v135 - 909149408 - ((2 * v135 - 1684380642) & a7)) ^ *&v117[4 * (v102 ^ 0x18)] ^ (1922521479 * *(v115 + 4 * BYTE1(v131)) - 1309439906);
  v137 = a88 ^ (1922521479 * *(v115 + 4 * BYTE1(v104)) - 1376398993 - ((1676087484 - 449924338 * *(v115 + 4 * BYTE1(v104))) & a7)) ^ (*&v122[4 * (BYTE2(v102) ^ 0x42)] - 842190321) ^ *&v117[4 * (v130 ^ 0x2F)];
  v138 = (v137 + 16829934 - (v91 & (2 * v137))) ^ *&v113[4 * HIBYTE(v131)];
  v139 = v136 + 16829934 - (v91 & (2 * v136));
  v140 = a76 ^ *&v117[4 * v104] ^ (1922521479 * *(v115 + 4 * ((v102 ^ 0x9618) >> 8)) - 1309439906) ^ 0xF09516D1 ^ (v134 - 66959087 - (a7 & (2 * v134)));
  v141 = a75 ^ *&v113[4 * ((v102 ^ 0x47F69618) >> 24)] ^ v133 ^ 0x5A0F429D ^ (1922521479 * *(v115 + 4 * (BYTE1(v130) ^ 0x1Du)) - 1309439906);
  LODWORD(v104) = a74 ^ *&v113[4 * BYTE3(v104)] ^ 0xB1BAA69A ^ v139;
  v142 = (*&v122[4 * BYTE2(v141)] - 842190321) ^ *&v117[4 * v140] ^ (1922521479 * *(v115 + 4 * BYTE1(v104)) - 1376398993 - ((1676087484 - 449924338 * *(v115 + 4 * BYTE1(v104))) & a7));
  LODWORD(v103) = (1922521479 * *(v115 + 4 * BYTE1(v140)) - 1376398993 - ((1676087484 - 449924338 * *(v115 + 4 * BYTE1(v140))) & a7)) ^ *&v117[4 * (v138 ^ 0xEC)];
  v143 = a87 ^ *&v113[4 * ((v138 ^ 0x194404ECu) >> 24)] ^ (v142 + 16829934 - (v91 & (2 * v142)));
  v144 = *&v122[4 * BYTE2(v104)];
  v145 = *&v113[4 * HIBYTE(v140)];
  v146 = a73 ^ *&v117[4 * v141] ^ (*&v122[4 * BYTE2(v140)] - 842190321) ^ *&v113[4 * BYTE3(v104)] ^ (1922521479 * *(v115 + 4 * (BYTE1(v138) ^ 4u)) - 1309439906);
  LOBYTE(v102) = v146 ^ 0x6A;
  LODWORD(v104) = *(v92 - 256) ^ (*&v122[4 * (BYTE2(v138) ^ 0xF0)] - 842190321) ^ v145 ^ *&v117[4 * v104] ^ (1922521479 * *(v115 + 4 * BYTE1(v141)) - 1309439906) ^ 0xC6918B2D;
  v147 = a72 ^ *&v113[4 * HIBYTE(v141)] ^ (v144 - 842190321) ^ 0x5C33186 ^ (v103 + 16829934 - (v91 & (2 * v103)));
  v148 = *&v113[4 * ((v146 ^ 0xF93316Au) >> 24)];
  v149 = *&v122[4 * ((v146 ^ 0xF93316Au) >> 16)];
  v150 = (v149 - 909149408 - ((2 * v149 - 1684380642) & a7)) ^ *&v117[4 * (v143 ^ 0x9A)];
  v151 = *(v115 + 4 * (BYTE1(v146) ^ 0x52u));
  v152 = (1922521479 * v151 - 1376398993 - ((-449924338 * v151 + 1676087484) & a7)) ^ *&v117[4 * v104];
  v153 = (1922521479 * *(v115 + 4 * BYTE1(v147)) - 1292609972 - ((19837710 * *(v115 + 4 * BYTE1(v147)) + 65474748) & v91)) ^ *&v113[4 * BYTE3(v104)] ^ (*&v122[4 * ((v143 ^ 0x9C9A069A) >> 16)] - 842190321);
  v154 = (*&v122[4 * BYTE2(v104)] - 825360387 - ((2 * *&v122[4 * BYTE2(v104)] + 60449822) & v91)) ^ v148 ^ (1922521479 * *(v115 + 4 * (BYTE1(v143) ^ 0x65u)) - 1309439906);
  v155 = a86 ^ *&v117[4 * v102] ^ (v153 - 66959087 - (a7 & (2 * v153)));
  LODWORD(v102) = a71 ^ *&v113[4 * HIBYTE(v147)] ^ (1922521479 * *(v115 + 4 * BYTE1(v104)) - 1309439906) ^ 0x7A216BC ^ (v150 + 16829934 - (v91 & (2 * v150)));
  v156 = a70 ^ (*&v122[4 * BYTE2(v147)] - 842190321) ^ *&v113[4 * ((v143 ^ 0x9C9A069A) >> 24)] ^ (v152 + 16829934 - (v91 & (2 * v152))) ^ 0x552FE8D1;
  v157 = v155 ^ 0x4C3E3358;
  LODWORD(v103) = (v155 ^ 0x4C3E3358u) >> 24;
  v158 = a69 ^ *&v117[4 * v147] ^ 0xF36C6A5 ^ (v154 - 66959087 - (a7 & (2 * v154)));
  v159 = *(v115 + 4 * (BYTE1(v155) ^ 0x50u));
  v160 = (*&v122[4 * BYTE2(v102)] - 909149408 - ((2 * *&v122[4 * BYTE2(v102)] - 1684380642) & a7)) ^ *&v117[4 * v157];
  v161 = (1922521479 * v159 - 1376398993 - ((-449924338 * v159 + 1676087484) & a7)) ^ *&v117[4 * v156] ^ (*&v122[4 * BYTE2(v158)] - 842190321);
  v162 = (*&v122[4 * BYTE2(v157)] - 825360387 - ((2 * *&v122[4 * BYTE2(v157)] + 60449822) & v91)) ^ *&v113[4 * HIBYTE(v158)];
  v163 = *&v122[4 * BYTE2(v156)] - 842190321;
  LODWORD(v104) = a68 ^ *&v113[4 * HIBYTE(v156)] ^ (v160 + 16829934 - (v91 & (2 * v160)));
  v164 = 1922521479 * *(v115 + 4 * BYTE1(v102)) - 1309439906;
  v165 = 1922521479 * *(v115 + 4 * BYTE1(v156)) - 1309439906;
  v166 = *&v117[4 * v102];
  v167 = *&v113[4 * BYTE3(v102)];
  LODWORD(v102) = v104 ^ (1922521479 * *(v115 + 4 * BYTE1(v158)) - 1309439906) ^ 0x74AC041B;
  v168 = a67 ^ *&v113[4 * v103] ^ *&v117[4 * v158] ^ v163 ^ v164 ^ 0xA8940C0F;
  LODWORD(v104) = a66 ^ v167 ^ 0x40B944C9 ^ (v161 + 16829934 - (v91 & (2 * v161)));
  v169 = a65 ^ v166 ^ v165 ^ 0x79205E14 ^ (v162 - 66959087 - (a7 & (2 * v162)));
  v170 = *&v113[4 * HIBYTE(v169)];
  LODWORD(v103) = (1922521479 * *(v115 + 4 * BYTE1(v169)) - 1376398993 - ((1676087484 - 449924338 * *(v115 + 4 * BYTE1(v169))) & a7)) ^ *&v117[4 * v168];
  v171 = *&v113[4 * BYTE3(v102)];
  v172 = v103 + 16829934 - (v91 & (2 * v103));
  LODWORD(v103) = (*&v122[4 * BYTE2(v169)] - 909149408 - ((2 * *&v122[4 * BYTE2(v169)] - 1684380642) & a7)) ^ *&v117[4 * v102];
  v173 = (1922521479 * *(v115 + 4 * BYTE1(v104)) - 1376398993 - ((1676087484 - 449924338 * *(v115 + 4 * BYTE1(v104))) & a7)) ^ *&v117[4 * v169] ^ (*&v122[4 * BYTE2(v102)] - 842190321);
  v174 = 1922521479 * *(v115 + 4 * BYTE1(v102)) - 1309439906;
  LODWORD(v102) = a64 ^ *&v113[4 * BYTE3(v104)] ^ (1922521479 * *(v115 + 4 * BYTE1(v168)) - 1309439906) ^ 0x42268975 ^ (v103 + 16829934 - (v91 & (2 * v103)));
  v175 = a63 ^ v170 ^ (*&v122[4 * BYTE2(v168)] - 842190321) ^ *&v117[4 * ((a66 ^ v167) ^ 0xC9 ^ (v161 - 18 - (v91 & (2 * v161))))] ^ v174 ^ 0x6AF2918;
  LODWORD(v103) = a62 ^ *&v113[4 * HIBYTE(v168)] ^ (v173 + 16829934 - (v91 & (2 * v173)));
  v176 = a61 ^ v171 ^ (*&v122[4 * BYTE2(v104)] - 842190321) ^ 0x8245261 ^ v172;
  v177 = *&v113[4 * HIBYTE(v175)];
  LODWORD(v104) = (1922521479 * *(v115 + 4 * BYTE1(v175)) - 1376398993 - ((-449924338 * *(v115 + 4 * BYTE1(v175)) + 1676087484) & a7)) ^ *&v117[4 * (v103 ^ 0x80)];
  v178 = *&v117[4 * v175];
  v179 = *&v122[4 * (BYTE2(v175) ^ 0xB4)];
  v180 = *&v122[4 * ((v103 ^ 0x3EBC9280) >> 16)];
  v181 = (v179 - 909149408 - ((2 * v179 - 1684380642) & a7)) ^ *&v117[4 * v176] ^ (1922521479 * *(v115 + 4 * (BYTE1(v103) ^ 0xF1u)) - 1309439906);
  v182 = a85 ^ v177 ^ (1922521479 * *(v115 + 4 * BYTE1(v176)) - 1309439906) ^ (v180 - 825360387 - ((2 * v180 + 60449822) & v91));
  v183 = (v182 - 66959087 - (a7 & (2 * v182))) ^ *&v117[4 * v102];
  v184 = 1922521479 * *(v115 + 4 * BYTE1(v102)) - 1309439906;
  v185 = *&v113[4 * BYTE3(v102)];
  LODWORD(v102) = a52 ^ (*&v122[4 * BYTE2(v102)] - 842190321) ^ *&v113[4 * HIBYTE(v176)] ^ 0xB2F9D2B0 ^ (v104 + 16829934 - (v91 & (2 * v104)));
  LODWORD(v104) = a60 ^ v185 ^ 0x413EC32C ^ (v181 + 16829934 - (v91 & (2 * v181)));
  v186 = a59 ^ v178 ^ v184 ^ *&v113[4 * ((v103 ^ 0x3EBC9280) >> 24)] ^ (*&v122[4 * BYTE2(v176)] - 842190321) ^ 0x65094815;
  v187 = *&v122[4 * (BYTE2(v183) ^ 0x30)];
  LODWORD(v103) = (v187 - 909149408 - ((2 * v187 - 1684380642) & a7)) ^ *&v117[4 * v102];
  v188 = v183 ^ 0xDF8422B8;
  v189 = (1922521479 * *(v115 + 4 * BYTE1(v104)) - 1292609972 - ((19837710 * *(v115 + 4 * BYTE1(v104)) + 65474748) & v91)) ^ *&v113[4 * HIBYTE(v186)];
  v190 = *(v115 + 4 * (BYTE1(v183) ^ 0x41u));
  v191 = (1922521479 * v190 - 1292609972 - ((19837710 * v190 + 65474748) & v91)) ^ *&v113[4 * BYTE3(v102)] ^ (*&v122[4 * BYTE2(v104)] - 842190321);
  v192 = 1922521479 * *(v115 + 4 * BYTE1(v102)) - 1309439906;
  v193 = *&v122[4 * BYTE2(v102)];
  LODWORD(v102) = a58 ^ *&v113[4 * BYTE3(v104)] ^ (1922521479 * *(v115 + 4 * BYTE1(v186)) - 1309439906) ^ 0x2D39A0FD ^ (v103 + 16829934 - (v91 & (2 * v103)));
  LODWORD(v103) = *&v122[4 * BYTE2(v186)];
  v194 = a57 ^ (v193 - 842190321) ^ *&v117[4 * v188] ^ 0x99265C60 ^ (v189 - 66959087 - (a7 & (2 * v189)));
  v195 = *(v92 - 212) ^ *&v117[4 * v186] ^ 0x1D449050 ^ (v191 - 66959087 - (a7 & (2 * v191)));
  v196 = a56 ^ *&v117[4 * v104] ^ *&v113[4 * HIBYTE(v188)] ^ v192 ^ (v103 - 842190321) ^ 0x55661CE7;
  v197 = HIBYTE(v196);
  LODWORD(v104) = (1922521479 * *(v115 + 4 * BYTE1(v102)) - 1376398993 - ((1676087484 - 449924338 * *(v115 + 4 * BYTE1(v102))) & a7)) ^ *&v117[4 * (a56 ^ v117[4 * v104] ^ v113[4 * HIBYTE(v188)] ^ v192 ^ (v103 + 15) ^ 0xE7)];
  v198 = *&v113[4 * HIBYTE(v195)] ^ (*&v122[4 * BYTE2(v102)] - 825360387 - ((2 * *&v122[4 * BYTE2(v102)] + 60449822) & v91));
  LODWORD(v103) = (*&v122[4 * BYTE2(v194)] - 842190321) ^ (1922521479 * *(v115 + 4 * BYTE1(v195)) - 1309439906);
  v199 = (1922521479 * *(v115 + 4 * BYTE1(v194)) - 1309439906) ^ *&v117[4 * v195] ^ (*&v122[4 * BYTE2(v196)] - 909149408 - ((2 * *&v122[4 * BYTE2(v196)] - 1684380642) & a7));
  v200 = *(v115 + 4 * BYTE1(v196));
  v201 = (v103 + 16829934 - (v91 & (2 * v103))) ^ *&v113[4 * v197];
  LODWORD(v115) = a84 ^ *&v113[4 * HIBYTE(v194)] ^ (*&v122[4 * BYTE2(v195)] - 842190321) ^ (v104 + 16829934 - (v91 & (2 * v104)));
  LODWORD(v103) = a55 ^ *&v117[4 * v102] ^ 0x9EDFC4B3 ^ (v201 - 66959087 - (a7 & (2 * v201)));
  LODWORD(v102) = a54 ^ *&v113[4 * BYTE3(v102)] ^ 0x61159594 ^ (v199 + 16829934 - (v91 & (2 * v199)));
  LODWORD(v113) = a53 ^ *&v117[4 * v194] ^ (1922521479 * v200 - 1309439906) ^ 0x215CEA94 ^ (v198 - 66959087 - (a7 & (2 * v198)));
  v202 = *(v92 - 120);
  v203 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v202 ^ 0x413)) - 4;
  v204 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v202 - 497) - 8;
  v205 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v202 - 802) - 8;
  v206 = *&v205[4 * BYTE3(v102)] ^ *&v204[4 * BYTE2(v103)];
  v207 = *&v205[4 * BYTE3(v103)] ^ *&v204[4 * BYTE2(v115)];
  v208 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v202 - 551) - 12;
  LODWORD(v104) = *&v208[4 * v103] ^ (*&v203[4 * BYTE1(v102)] - ((2 * *&v203[4 * BYTE1(v102)] - 434089544) & 0xD6B9739A) + 1584194217);
  LODWORD(v103) = (*&v203[4 * BYTE1(v103)] - ((2 * *&v203[4 * BYTE1(v103)] - 434089544) & 0xFB01D712) + 1888556133) ^ *&v204[4 * BYTE2(v102)];
  LODWORD(v104) = (v104 - ((2 * v104) & 0xFB01D712) - 41882743) ^ *&v204[4 * BYTE2(v113)];
  LODWORD(v103) = (v103 - 1698605948 - ((2 * v103) & 0x3582A908)) ^ *&v205[4 * (v113 >> 24)];
  LODWORD(v205) = *&v205[4 * (BYTE3(v115) ^ 0x22)];
  v209 = *(v92 - 140) ^ *(v92 - 200) ^ *&v208[4 * (v115 ^ 0x12)] ^ (v103 - 346244659 - ((2 * v103) & 0xD6B9739A));
  LODWORD(v204) = *(v92 - 128) ^ *(v92 - 208) ^ *&v208[4 * v102] ^ (*&v203[4 * BYTE1(v113)] + 1930438876) ^ ((v207 ^ 0x6741BF0D) - 346244659 - 2 * ((v207 ^ 0x6741BF0D) & 0x6B5CB9CF ^ v207 & 2));
  LODWORD(v115) = *(v92 - 136) ^ *(v92 - 204) ^ *&v208[4 * v113] ^ (*&v203[4 * (BYTE1(v115) ^ 0x23)] + 1930438876) ^ ((v206 ^ 0x6741BF0D) - 346244659 - 2 * ((v206 ^ 0x6741BF0D) & 0x6B5CB9DD ^ v206 & 0x10));
  LODWORD(v203) = *(v92 - 132) ^ *(v92 - 196) ^ v205 ^ (v104 - 1698605948 - ((2 * v104) & 0x3582A908));
  v210 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v202 - 684) - 8;
  v99[3] = v210[v209 ^ 0x60] ^ 0x1E;
  v99[11] = v210[v204 ^ 0x69] ^ 0xA4;
  v211 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v202 - 828) - 12;
  v212 = v211[BYTE1(v115) ^ 0xFFLL];
  HIDWORD(v213) = v212 ^ 0xFFFFFFFB;
  LODWORD(v213) = (v212 ^ 0xC0) << 24;
  v99[14] = (v213 >> 28) ^ 0xB6;
  v214 = v211[BYTE1(v209) ^ 0xD8];
  HIDWORD(v213) = v214 ^ 0xFFFFFFFB;
  LODWORD(v213) = (v214 ^ 0xC0) << 24;
  v99[2] = (v213 >> 28) ^ 0x39;
  v215 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v202 ^ 0x454)) - 8;
  v99[12] = v215[BYTE3(v115) ^ 0xA4] ^ 0x28;
  v99[8] = v215[(v204 >> 24) ^ 1] ^ 9;
  v216 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v202 ^ 0x5FA)) - 4;
  v99[5] = v216[BYTE2(v203) ^ 0xACLL] ^ 0xF;
  v99[7] = v210[v203 ^ 0xDLL] ^ 0xCA;
  v217 = v211[BYTE1(v204) ^ 0x19];
  HIDWORD(v213) = v217 ^ 0xFFFFFFFB;
  LODWORD(v213) = (v217 ^ 0xC0) << 24;
  v99[10] = (v213 >> 28) ^ 0x24;
  v99[13] = ~v216[BYTE2(v115) ^ 0xE5];
  v99[1] = v216[BYTE2(v209) ^ 0xB7] ^ 0x5F;
  *(*(v92 - 192) + *(v92 - 144)) = v216[BYTE2(v204) ^ 0xDDLL] ^ 0x1A;
  *v99 = v215[HIBYTE(v209) ^ 0x66] ^ 7;
  v218 = v211[BYTE1(v203) ^ 0xE7];
  HIDWORD(v213) = v218 ^ 0xFFFFFFFB;
  LODWORD(v213) = (v218 ^ 0xC0) << 24;
  v99[6] = (v213 >> 28) ^ 0xA7;
  LOBYTE(v218) = v215[(v203 >> 24) ^ 0x9BLL];
  LODWORD(v215) = *(v92 - 124);
  v99[4] = v218 ^ 0xC9;
  v99[15] = v210[v115 ^ 0xE3] ^ 0x85;
  v219 = v215 - 1727021636 < a83;
  if (a83 < 0x990FBDAC != (v215 - 1727021636) < 0x990FBDAC)
  {
    v219 = a83 < 0x990FBDAC;
  }

  return (*(*(v92 - 176) + 8 * ((3874 * v219) ^ v202)))();
}

uint64_t sub_1968C9300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31)
{
  v37 = 1283153057 * ((v36 - 152) ^ 0xA9ED93B74FD80337);
  *(v36 - 116) = (v32 - 84368465) ^ v37;
  *(v36 - 128) = v37;
  *(v36 - 120) = v32 - 358042992 - v37 + 359;
  *(v36 - 144) = ((((((~(v32 - 1880) + v33) ^ (v35 - (v32 - 1880))) - 1) & ((v32 - 1880) - v33) & 0x8000000000000000) == 0) - v32 + 2505) ^ v37;
  *(v36 - 136) = (v31 + 1) - v37;
  *(v36 - 152) = v37 + v32 - 358042992 + 16;
  *(v36 - 148) = (v32 - 358042992) ^ v37;
  v38 = (*(v34 + 8 * a31))(v36 - 152);
  return (*(v34 + 8 * *(v36 - 124)))(v38);
}

uint64_t sub_1968C9408@<X0>(uint64_t a1@<X1>, int a2@<W2>, unint64_t a3@<X5>, int a4@<W6>, int a5@<W8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int32x4_t a11@<Q7>)
{
  v16 = v11 + 4;
  v17 = v12 + 16;
  a7.i64[0] = *(v17 + 4);
  a7.i32[2] = *(v17 + 12);
  v18 = vextq_s8(a6, a7, 0xCuLL);
  v19 = a7;
  v19.i32[3] = *(v15 + 4 * (v16 + (a5 ^ (a2 - 2653) ^ a3)));
  v20 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v19, a9), vandq_s8(v18, a8)), 1uLL), *(v17 - 908));
  v18.i32[0] = *(v13 + 4 * (*(v17 + 4) & 1));
  v18.i32[1] = *(v13 + 4 * (*(v17 + 8) & 1));
  v18.i32[2] = *(v13 + 4 * (*(v17 + 12) & 1));
  v18.i32[3] = *(v13 + 4 * (v19.i8[12] & 1));
  *v17 = veorq_s8(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), a10)), a11), v18);
  return (*(a1 + 8 * (((v16 == 392) * a4) ^ (v14 + a5 + 1436))))();
}

uint64_t sub_1968C9458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (v57)
  {
    v60 = *((v58 ^ 0x1A81ECC59515547FLL) - 0x1A81ECC595155467) == 0;
  }

  else
  {
    v60 = 1;
  }

  v63 = v60 || a56 == 0 || v56 == 0;
  return (*(v59 + 8 * ((230 * v63) ^ 0x166E)))();
}

uint64_t sub_1968C9678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, _DWORD *a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  *a29 = 0;
  v48 = ((v43 ^ (v43 >> 11)) << 7) & 0x9D2C5680 ^ v43 ^ (v43 >> 11);
  v49 = (((((v44 - 5120) ^ (v44 - 5120)) - 1) & (5119 - v44)) >= 0) ^ v45 & (v48 << 15) ^ v48 ^ ((v45 & (v48 << 15) ^ v48) >> 18);
  v50 = &a43 + (a27 - 1);
  v51 = -1555358357 * ((*(*v46 + (*a31 & 0x6706E928)) ^ v50) & 0x7FFFFFFF);
  v52 = -1555358357 * (v51 ^ HIWORD(v51));
  v53 = *((v52 >> 24) + v47[124] + 1);
  v54 = *(v47[44] + (v52 >> 24) - 12);
  v55 = (v49 + 1456 - ((2 * v49) & 0x3C) - 18) ^ *(v47[493] + (v52 >> 24) - 4) ^ v53 ^ v54 ^ v52 ^ (113 * (v52 >> 24));
  LODWORD(v52) = ((v49 - 80 - ((2 * v49) & 0x3C) - 18) ^ *(v47[493] + (v52 >> 24) - 4) ^ v53 ^ v54 ^ v52 ^ (113 * BYTE3(v52)));
  *v50 = v55 ^ 0x9E;
  return (*(a35 + 8 * (((16 * (a27 != (v52 != 158))) | ((a27 != (v52 != 158)) << 6)) ^ 0x1894)))();
}

uint64_t sub_1968C96C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  *(v5 - 200) = v2 - 3482;
  v9 = veorq_s8(*v8, xmmword_196EBFAC0);
  *(v5 - 128) = veorq_s8(*v7, xmmword_196EBFAB0);
  *(v5 - 112) = v9;
  v10 = *(v3 + 8 * (v2 ^ (247 * (v6 != 0))));
  *(v5 - 204) = -42900;
  return v10(a1, a2);
}

uint64_t sub_1968C9720(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x450]) = a4 + 22;
  LODWORD(STACK[0x424]) = v6;
  LODWORD(STACK[0x58C]) = v5;
  return (*(v7 + 8 * (((LODWORD(STACK[0x450]) == a2) * (((v4 + v8) | 0x200) ^ 0x6C0)) ^ (v4 - 3815))))();
}

uint64_t sub_1968C9894(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7, char a8)
{
  v15 = *(v11 + 8 * v14);
  v16 = (v12 + v10 + v9);
  *v16 = HIBYTE(a3) ^ a4;
  v16[1] = BYTE6(a3) ^ a6;
  v16[2] = BYTE5(a3) ^ 0xC;
  v16[3] = BYTE4(a3) ^ a7;
  v16[4] = a8 ^ BYTE3(a3);
  v16[5] = BYTE2(a3) ^ 0xE;
  v16[6] = BYTE1(a3) ^ 0xF9;
  v16[7] = a3 ^ v13;
  return v15(a1, v8);
}

uint64_t sub_1968C98E4()
{
  v4 = (v2 ^ 0xC5E) * v0;
  v5 = (*(v3 + 8 * (v2 ^ 0x16D7u)))(v1 ^ 0x5D5D9A9u, 2920263595) == 0;
  return (*(v3 + 8 * ((v5 * ((v2 ^ 0x14DA) - 7886 + v4)) ^ v2)))();
}

uint64_t sub_1968C99BC()
{
  v4 = (v1 - 680648650) & 0x2891DFB9;
  v3[227] = (13 * (v4 ^ 0xE0C)) ^ *v3 ^ *(v0 + 4 * (v3[228] & 1)) ^ ((v3[228] & 0x7FFFFFFE | v3[227] & 0x80000000) >> 1) ^ 0x8D4E7E16;
  return (*(v2 + 8 * (v4 ^ 0x70u)))();
}

uint64_t sub_1968C9A48()
{
  v6 = veor_s8(v2[1], 0xECECECECECECECECLL);
  *(v0 + v3 + 24) = veor_s8(*v2, 0xECECECECECECECECLL);
  *(v0 + v3 + 32) = v6;
  return (*(v5 + 8 * ((((v4 & 0x70) == 16) * (37 * (v1 ^ 0xDAC) - 2199)) ^ (v1 + 1719))))();
}

void sub_1968C9BB8(__int16 a1@<W8>)
{
  if ((v5 - 364443024) < 2)
  {
    __asm { BRAA            X9, X17 }
  }

  if (v5 == 364443022 || v5 == 364443027)
  {
    __asm { BRAA            X11, X17 }
  }

  *(v1 + 12) = v6;
}

void sub_1968C9F00(uint64_t a1@<X8>)
{
  v3[a1] = v1;
  v4 = a1 + v1 + 1 - ((2 * (a1 + v1 + 1)) & 0xE84A) + 29733;
  *v3 = HIBYTE(v4) ^ 0x74;
  v3[1] = v4 ^ (-59 * (v2 ^ 0x5F) + 76);
  ++v3[v3[2] + 3];
  JUMPOUT(0x1968C9F68);
}

uint64_t sub_1968CA008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18)
{
  v238 = v21;
  v22 = (v18 - 2052) | 0x804;
  v23 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v18 + 781) ^ 0x93F)) - 4;
  v24 = v23[*(v20 - 93) ^ 0x78];
  v25 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v18 + 781) ^ 0xAEB));
  v26 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v18 + 781) ^ 0xAE9)) - 4;
  v27 = (((v26[*(v20 - 95) ^ 0x92] + 39) << 16) ^ 0x7372785A) & (v24 ^ 0xF3FFFC7F) | v24 & 0xA5;
  v28 = *(v25 + (*(v20 - 92) ^ 0xD9)) << 24;
  v29 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v18 - 1827) - 12;
  v30 = (v29[*(v20 - 98) ^ 0x3ELL] - 86) << 8;
  v31 = ((*(v25 + (*(v20 - 100) ^ 0xDB ^ ((v18 - 4) | 4u))) << 24) ^ 0xA967A0FF) & ~v30 | v30 & 0x5F00;
  v237 = v25;
  v32 = v23[*(v20 - 101) ^ 0x81];
  v33 = (v29[*(v20 - 94) ^ 0xEDLL] - 86) << 8;
  v34 = (v33 ^ 0xFFFFA8FF) & (v27 & 0x619600E4 ^ 0x279C634D ^ (((*(v25 + (*(v20 - 96) ^ 0xF2)) ^ 0x5A) << 24) ^ 0xE369DD1B) & (v27 ^ 0x8CDEA541));
  v35 = v33 & 0x4100;
  v36 = ((*(v25 + (*(v20 - 104) ^ 0x4ALL)) << 24) ^ 0xFD0E47AB) & ~v32 | v32 & 0x54;
  v37 = (v26[*(v20 - 103) ^ 0x82] + 39) << 16;
  v38 = (v37 ^ 0xFF302FFF) & (v36 ^ 0x81B268D6) | v37 & 0x430000;
  v235 = v29;
  v39 = (v26[*(v20 - 91) ^ 0xA9] + 39) << 16;
  v40 = (((((v29[*(v20 - 90) ^ 0x37] - 86) << 8) ^ 0xAA4FA2F4) & (v28 ^ 0x29CFFFF5) | v28 & 0x55555555) ^ 0xA3BFAC62) & (v39 ^ 0xFF94FFF7) ^ v39 & 0xF0000;
  v236 = v26;
  v41 = v23[*(v20 - 89) ^ 0x84];
  v42 = v23[*(v20 - 97) ^ 0x33];
  v43 = v38 & 0x952D0C39 ^ 0x3CBB55CC ^ (((v29[*(v20 - 102) ^ 0xBALL] - 86) << 8) ^ 0x6AD2BFC6) & (v38 ^ 0xED40D0AB);
  v44 = v42 & 0x6E ^ 0xBC3698A7 ^ (v31 & 0x2D010E01 ^ 0x44958E42 ^ (((v26[*(v20 - 99) ^ 0x57] + 39) << 16) ^ 0xD23FF1D2) & (v31 ^ 0xA98562C)) & (v42 ^ 0xFFFFFFD3);
  LODWORD(v25) = v35 ^ 0xA26A0980 ^ v34;
  *(v20 - 108) = (((v19 ^ 0x5E0A447F) - 29835740) ^ ((v19 ^ 0x79E89D8F) - 639997996) ^ ((v19 ^ 0xF17D493) - 1356517680)) + 58685052;
  v239 = *(v20 - 108) < 0x8C476DBC;
  LOBYTE(v34) = v29[a18[14] ^ 0xDALL] - 86;
  v45 = a18[4];
  v46 = *(v237 + (-(v45 ^ (((v22 + 5) | 8) - 103)) ^ (((v22 + 633500396) & 0xDA3D9F27 ^ 0x1A3F) - (v45 ^ 0xA9)) ^ 0x5E670713 ^ ((v45 ^ (((v22 + 5) | 8) - 103)) + 1583810323 - ((2 * (v45 ^ (((v22 - 1787) | 0xA08) - 103))) & 0x26))) + 29) << 24;
  v47 = (((v29[~a18[6]] - 86) << 8) ^ 0xBBBAF2F8) & (v46 ^ 0xE2FBFFFD) | v46 & 0x44444444;
  v48 = (v26[a18[13] ^ 7] + 39) << 16;
  v49 = (v29[a18[2] ^ 0x79] - 86) << 8;
  v50 = (v48 ^ 0xFF53FFA8) & ((((*(v237 + (a18[12] ^ 0x1CLL)) << 24) ^ 0x477D4F80) & ((v34 << 8) ^ 0xFF7D7F80) | (v34 << 8) & 0xB000) ^ 0xEB535928);
  v51 = v48 & 0xD10000;
  LODWORD(v26) = (v29[a18[10] ^ 0x29] - 86);
  v52 = v23[a18[7] ^ 0xE2];
  v53 = (v47 ^ 0xDF108555) & ~v52 | v52 & 0x52;
  v54 = ((v26 << 8) ^ 0xFFFE01FF) & ((*(v237 + (a18[8] ^ 0x2ELL)) << 24) ^ 0x557E8738) & 0xFFFF87FF | (((v26 >> 3) & 0xF) << 11);
  LODWORD(v26) = (((*(v237 + (*a18 ^ 0xC1)) ^ 0x56) << 24) ^ 0xBB984CB9) & (v49 ^ 0xFF98A6B9) | v49 & 0xB300;
  v55 = v23[a18[11] ^ 0x43];
  v56 = v23[a18[3] ^ 0x63];
  v57 = (v55 ^ 0xFFFFFFC7) & (v54 ^ 0x86CE8FF4) | v55 & 0x33333333;
  v58 = v53 & 0xB393F7B6 ^ v44 ^ (((v236[a18[5] ^ 0x30] + 39) << 16) ^ 0x4CA30849) & (v53 ^ 0x3B557364);
  v59 = (v26 ^ 0xA503F04C) & (v56 ^ 0xFFFFFFE6) & 0x691D565 ^ v43 ^ (((v236[a18[1] ^ 0xBFLL] + 39) << 16) ^ 0xF9292A9A) & ((v56 & 0xA | (v26 ^ 0xA503F04C) & (v56 ^ 0xFFFFFFE6)) ^ 0xBD64012A);
  v60 = v57 & 0xA262E5D9 ^ v25 ^ (((v236[a18[9] ^ 0x2ELL] + 39) << 16) ^ 0x5D071A26) & (v57 ^ 0xC94F7292);
  v61 = v23[a18[15] ^ 0x58];
  v62 = v61 & 0x93 ^ ((-(v40 ^ 0x58FBF296) ^ __ROR4__((v40 >> 7) ^ __ROR4__((v41 ^ 0x29) - ((v40 ^ 0x58FBF296 | v41) ^ 0x29), 7) ^ 0x2807B8B9, 25) ^ 0x5B27AE14) + (v41 ^ 0x29)) ^ 0x51CB774 ^ (v51 ^ 0x311EB3C4 ^ v50) & ~v61;
  v63 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0x828));
  v64 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0x90D)) - 4;
  v65 = 1957412381 * *&v64[4 * (BYTE2(v58) ^ 0x39)];
  LODWORD(v25) = HIBYTE(v62);
  v66 = HIBYTE(v62) ^ 0xE;
  v67 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0xA55)) - 12;
  v68 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0x8A1)) - 12;
  v69 = v65 ^ *(v63 + 4 * (HIBYTE(v59) ^ 0x73)) ^ (*&v67[4 * (BYTE1(v60) ^ 0xDB)] - ((BYTE1(v60) ^ 0x98DA34F5) + (BYTE1(v60) ^ 0xD3))) ^ (v65 >> 1) & 0x48060533 ^ *&v68[4 * (v62 ^ 0x2B)] ^ ((HIBYTE(v59) ^ 0xF6) + (HIBYTE(v59) ^ 0xC8E2851C) - 2 * (HIBYTE(v59) ^ 0xC8E2851C));
  LODWORD(v29) = 1957412381 * *&v64[4 * (BYTE2(v60) ^ 0x33)];
  v70 = BYTE2(v62);
  LODWORD(v26) = 1957412381 * *&v64[4 * (BYTE2(v62) ^ 0x70)];
  v71 = *(v63 + 4 * (HIBYTE(v58) ^ 0xB0)) ^ ((HIBYTE(v58) ^ 0x35) - (HIBYTE(v58) ^ 0xC8E285DF)) ^ v29 ^ *&v68[4 * (((v59 & 0x46 ^ 0x52) & (v59 & 0xB9 ^ 0x7E) | v59 & 0xA9) ^ 0x36)] ^ ((BYTE1(v62) ^ 0x6725CB90) + (BYTE1(v62) ^ 0xFFFFFFB6) + *&v67[4 * (BYTE1(v62) ^ 0x41)] + 2) ^ (v29 >> 1) & 0x48060533;
  LODWORD(v23) = (BYTE1(v59) ^ 0xFFFFFF47) + (BYTE1(v59) ^ 0x6725CB61) + *&v67[4 * (BYTE1(v59) ^ 0xB0)] + 2;
  v72 = *(v63 + 4 * (v25 ^ 0x8B)) ^ (v66 - (v25 ^ 0xC8E285E4));
  LODWORD(v25) = *&v64[4 * (BYTE2(v59) ^ 0x3E)];
  v73 = v72 ^ *&v68[4 * (v60 ^ 0x9B)] ^ ((BYTE1(v58) ^ 0x6725CB93) + (BYTE1(v58) ^ 0xFFFFFFB5) + *&v67[4 * (BYTE1(v58) ^ 0x42)] + 2) ^ ((1957412381 * v25) >> 1) & 0x48060533 ^ (1957412381 * v25 + 1781236114 - ((-380142534 * v25) & 0xD4570324));
  v74 = (v69 ^ 0xC53AB47B) >> 24;
  v75 = (((v73 ^ 0x6A2B8192) - (v73 ^ 0xCA7EBC1F)) ^ 0xFFFFFFFE) + (v73 ^ 0x6A2B8192);
  v76 = ((HIBYTE(v60) ^ 0x5F) - (HIBYTE(v60) ^ 0xC8E285B5)) ^ *(v63 + 4 * (HIBYTE(v60) ^ 0xDA)) ^ v23 ^ v26 ^ *&v68[4 * (v58 ^ 0x7D)] ^ (v26 >> 1) & 0x48060533 ^ 0x15ACAC32;
  v77 = HIBYTE(v76);
  v78 = HIBYTE(v75);
  v79 = HIBYTE(v75) ^ 0x1C;
  LODWORD(v26) = 1957412381 * *&v64[4 * (BYTE2(v71) ^ 0x94)];
  v80 = ((((v73 ^ 0x92) - (v73 ^ 0x1F)) ^ 0xFE) + (v73 ^ 0x92)) ^ 0xAA;
  LODWORD(v26) = *(v63 + 4 * (v74 ^ 0x85)) ^ (v74 - (v74 ^ 0xC8E285EA)) ^ v26 ^ (v26 >> 1) & 0x48060533 ^ *&v68[4 * (v75 ^ 0x57)] ^ (*&v67[4 * (BYTE1(v76) ^ 8)] - BYTE1(v76) + (BYTE1(v76) ^ 0x6725CBD9) + 1) ^ (((v80 - (v75 ^ 0xA0553D27)) ^ 0xFFFFFFFE) + v80);
  v81 = 1957412381 * *&v64[4 * BYTE2(v76)];
  LODWORD(v23) = *&v67[4 * (BYTE1(v75) ^ 0xD1)] + BYTE1(v75) + 1730530050 + (BYTE1(v75) ^ 0xFFFFFF26);
  LODWORD(v29) = *(v63 + 4 * (HIBYTE(v71) ^ 0xC8)) ^ ((HIBYTE(v71) ^ 0x4D) - (HIBYTE(v71) ^ 0xC8E285A7)) ^ v81 ^ (v81 >> 1) & 0x48060533 ^ (v23 - 42513108 - ((2 * v23) & 0xFAEE9A58));
  LODWORD(v23) = v29 ^ 0xFD774D2C;
  v82 = *&v68[4 * (v69 ^ 0x7B)];
  LODWORD(v29) = -(v82 ^ 0xA0553D8D) ^ 0x38E7E079 ^ ((v82 ^ 0xA0553D8D) + 954720377 - ((2 * (v82 ^ 0xA0553D8D)) & 0x71CFC0F2)) ^ ((v29 ^ 0xFD774D2C) - (v82 ^ 0x5D2270A1 ^ v29));
  v83 = 1957412381 * *&v64[4 * (BYTE2(v75) ^ 0x80)];
  v84 = v29 + v23;
  v85 = *(v63 + 4 * (v77 ^ 0x85)) ^ (v77 - (v77 ^ 0xC8E285EA)) ^ ((((v69 ^ 0xB47B) >> 8) ^ 0x6725CBD9) - ((v69 ^ 0xB47B) >> 8) + *&v67[4 * (((v69 ^ 0xB47B) >> 8) ^ 8)] + 1) ^ v83 ^ *&v68[4 * (v71 ^ 0xD)] ^ (v83 >> 1) & 0x48060533;
  LODWORD(v29) = 1957412381 * *&v64[4 * (BYTE2(v69) ^ 0xED)];
  v86 = *(v63 + 4 * (v78 ^ 0x99)) ^ (v79 - (v78 ^ 0xC8E285F6)) ^ ((BYTE1(v71) ^ 0x6725CB81) + (BYTE1(v71) ^ 0xFFFFFFA7) + *&v67[4 * (BYTE1(v71) ^ 0x50)] + 2) ^ *&v68[4 * v76] ^ v29 ^ (v29 >> 1) & 0x48060533;
  HIDWORD(v88) = (__PAIR64__(v26 ^ v80, v26) >> 13) ^ 0x712475E;
  LODWORD(v88) = HIDWORD(v88);
  v87 = v88 >> 19;
  v89 = (v87 ^ 0x96C79C5u) >> 24;
  v90 = v85 ^ 0xB9EA7068;
  if ((v85 ^ 0xB9EA7068) >= 0xD90BE061)
  {
    v91 = 97;
  }

  else
  {
    v91 = 0;
  }

  v92 = v90 + 653533087;
  if (v90 < 0xD90BE061)
  {
    v92 = v85 ^ 0xB9EA7068;
  }

  if (v92)
  {
    v93 = v85 ^ 0x68;
  }

  else
  {
    v93 = v91;
  }

  v94 = v89 - (v89 ^ 0xC8E285EA);
  v95 = *(v63 + 4 * (v89 ^ 0x85));
  v96 = HIWORD(v84) ^ 0x9C47B5CE;
  v97 = __OFSUB__(v70, 112);
  if (v70 == 112)
  {
    v96 = -1673009666;
  }

  v98 = (BYTE1(v85) ^ 0xFFFFFF8F) + (BYTE1(v85) ^ 0x6725CBA9) + *&v67[4 * (BYTE1(v85) ^ 0x78)];
  v99 = HIBYTE(v90);
  v100 = 1957412381 * *&v64[4 * (v96 & 0x6A1 ^ 0x4D0 ^ (v96 ^ 0x406) & (BYTE2(v84) ^ 0x66E)) + 4 * (HIWORD(v84) & 7)];
  v101 = *&v64[4 * (BYTE2(v85) ^ 0x3D)];
  v102 = *&v68[4 * (v86 ^ 0xB4)] ^ v95 ^ v100 ^ (v98 + 2) ^ (v100 >> 1) & 0x48060533 ^ v94;
  v103 = HIBYTE(v86);
  v104 = *(v63 + 4 * ((HIBYTE(v84) ^ 0x50) - ((v84 >> 23) & 0x10A) + 133)) ^ 0x64DC22D0 ^ ((1957412381 * v101) >> 1) & 0x48060533 ^ (1957412381 * v101 + 1692148432 - ((-380142534 * v101) & 0xC9B845A0)) ^ ((HIBYTE(v84) ^ 0x50) - (HIBYTE(v84) ^ 0xC8E285BA)) ^ ((BYTE1(v86) ^ 0x6725CB57) + (BYTE1(v86) ^ 0xFFFFFF71) + *&v67[4 * (BYTE1(v86) ^ 0x86)] + 2);
  v105 = *&v68[4 * (v87 ^ 0xC5)] ^ 0xA0553D8D;
  v106 = v104 + v105 - 2 * (v104 & v105);
  v107 = (HIBYTE(v86) ^ 0x59) - (HIBYTE(v86) ^ 0xC8E285B3);
  v108 = 1957412381 * *&v64[4 * (BYTE2(v86) ^ 0x34)];
  v109 = *&v64[4 * (BYTE2(v87) ^ 0xBB)];
  v110 = *(v63 + 4 * (v99 ^ 0x85)) ^ (v99 - (v99 ^ 0xC8E285EA)) ^ v108 ^ ((BYTE1(v87) ^ 0x6725CBA0) - (BYTE1(v87) ^ 0x79) + *&v67[4 * (BYTE1(v87) ^ 0x71)] + 1) ^ *&v68[4 * (v84 & 0xFD ^ 0x9FF0AB90 ^ (v84 & 2 | 0x9FF0AB41))] ^ (v108 >> 1) & 0x48060533;
  LODWORD(v111) = __ROR4__(v107 ^ *(v63 + 4 * (v103 ^ 0xDC)) ^ ((BYTE1(v84) ^ 0x6725CB22) + (BYTE1(v84) ^ 0xFFFFFF04) + *&v67[4 * (BYTE1(v84) ^ 0xF3)] + 2) ^ (1957412381 * v109) ^ *&v68[4 * (v93 ^ 0xFD)] ^ ((1957412381 * v109) >> 1) & 0x48060533 ^ 0x38983CD5, 5);
  v112 = -817874992 - (v102 ^ 0x6F150A5D);
  LODWORD(v111) = v111 ^ 0x14A6C287;
  HIDWORD(v111) = v111;
  v113 = v111 >> 27;
  v114 = (v102 ^ 0xA0553D8D) - 405741982 - ((2 * (v102 ^ 0xA0553D8D)) & 0xCFA1BCC4);
  v115 = ((-(v102 ^ 0xA0553D8D) ^ 0xE7D0DE62 ^ v112 ^ v114) - 817874992) >> 24;
  v116 = (-(v102 ^ 0xA0553D8D) ^ 0xE7D0DE62 ^ v112 ^ v114) - 817874992;
  v117 = -v77;
  v118 = ((v77 - 1) | v77) - 1;
  if ((v110 & 0x8000) != 0)
  {
    v119 = -32768;
  }

  else
  {
    v119 = 0x8000;
  }

  v120 = v119 + (v110 ^ 0xA0553D8D);
  v121 = ((v118 & v117) < 0) ^ v97;
  v122 = *&v67[4 * (BYTE1(v120) ^ 9)] + (BYTE1(v120) ^ 0x6725CBD8) + (BYTE1(v120) ^ 0xFFFFFFFE);
  v124 = HIBYTE(v120);
  v125 = HIBYTE(v120) ^ 0x86;
  if (!v121)
  {
    LOBYTE(v99) = v116;
  }

  v123 = *&v64[4 * (BYTE2(v120) ^ 0xE7)];
  v126 = ((HIBYTE(v106) ^ 0x63) - (HIBYTE(v106) ^ 0xC8E28589)) ^ 0xBD710C2 ^ *(v63 + 4 * (HIBYTE(v106) ^ 0xE6)) ^ ((1957412381 * v123) >> 1) & 0x48060533 ^ (1957412381 * v123 + 198643906 + (~(156728378 * v123) | 0xE851DE7B) + 1) ^ (*&v67[4 * (BYTE1(v113) ^ 0x4C)] + (BYTE1(v113) ^ 0x6725CB9D) + (BYTE1(v113) ^ 0xFFFFFFBB) + 2);
  v127 = *&v68[4 * (v99 ^ 0xFD)] ^ 0xA0553D8D;
  v128 = v127 & 0x40000;
  if ((v126 & v127 & 0x40000) != 0)
  {
    v128 = -v128;
  }

  v129 = 1957412381 * *&v64[4 * (BYTE2(v113) ^ 0x1A)];
  v130 = *(v63 + 4 * (v124 ^ 3)) ^ (v125 - (v124 ^ 0xC8E2856C));
  v131 = (v128 + v126) ^ v127 & 0xFFFBFFFF;
  v132 = v130 ^ v129 ^ *&v68[4 * (v106 ^ 0x8A)] ^ (v129 >> 1) & 0x48060533;
  v133 = 1957412381 * *&v64[4 * (BYTE2(v106) ^ 6)];
  v134 = v132 ^ ((BYTE1(v116) ^ 0x6725CBD9) - BYTE1(v116) + *&v67[4 * (BYTE1(v116) ^ 8)] + 1);
  v135 = 1957412381 * *&v64[4 * (BYTE2(v116) ^ 0xD7)];
  v136 = *(v63 + 4 * (v115 ^ 0x85)) ^ v133 ^ *&v68[4 * (v113 ^ 0x11)] ^ (v115 - (v115 ^ 0xC8E285EA)) ^ (v133 >> 1) & 0x48060533 ^ (v122 + 2) ^ 0x8FD9CE26;
  v137 = *(v63 + 4 * (HIBYTE(v113) ^ 0xA)) ^ ((HIBYTE(v113) ^ 0x8F) - (HIBYTE(v113) ^ 0xC8E28565)) ^ v135 ^ ((BYTE1(v106) ^ 0xFFFFFF14) + (BYTE1(v106) ^ 0x6725CB32) + *&v67[4 * (BYTE1(v106) ^ 0xE3)] + 2) ^ (v135 >> 1) & 0x48060533 ^ *&v68[4 * (v110 ^ 0x69)];
  v138 = 1957412381 * *&v64[4 * (BYTE2(v131) ^ 3)];
  v139 = *(v63 + 4 * (HIBYTE(v136) ^ 0x85)) ^ (HIBYTE(v136) - (HIBYTE(v136) ^ 0xC8E285EA)) ^ *&v68[4 * (v137 ^ 0x95)] ^ v138 ^ ((BYTE1(v134) ^ 0xFFFFFF5B) + (BYTE1(v134) ^ 0x6725CB7D) + *&v67[4 * (BYTE1(v134) ^ 0xAC)] + 2) ^ (v138 >> 1) & 0x48060533;
  v140 = ((HIBYTE(v131) ^ 0xB0) - (HIBYTE(v131) ^ 0xC8E2855A)) ^ *(v63 + 4 * (HIBYTE(v131) ^ 0x35));
  v141 = 1957412381 * *&v64[4 * (BYTE2(v134) ^ 0x38)];
  v142 = (v141 >> 1) & 0x48060533 ^ v141;
  v143 = ((BYTE1(v137) ^ 0xFFFFFF69) + (BYTE1(v137) ^ 0x6725CB4F) + *&v67[4 * (BYTE1(v137) ^ 0x9E)] + 2) ^ *&v68[4 * v136] ^ ((-v140 ^ 0xC9AC4446 ^ (v140 - 911457210 - ((2 * v140) & 0x9358888C)) ^ (v142 - (v142 ^ v140))) + v142);
  v144 = 1957412381 * *&v64[4 * (BYTE2(v137) ^ 0xBE)];
  v145 = *(v63 + 4 * (HIBYTE(v134) ^ 0xEF)) ^ ((HIBYTE(v134) ^ 0x6A) - (HIBYTE(v134) ^ 0xC8E28580)) ^ ((BYTE1(v136) ^ 0x6725CBD9) - BYTE1(v136) + *&v67[4 * (BYTE1(v136) ^ 8)] + 1) ^ *&v68[4 * (v131 ^ 0x57)] ^ v144 ^ (v144 >> 1) & 0x48060533;
  v146 = (BYTE1(v131) ^ 0xFFFFFFC0) + (BYTE1(v131) ^ 0x6725CBE6) + *&v67[4 * (BYTE1(v131) ^ 0x37)] + 2;
  v147 = (__ROR4__(__ROR4__(((HIBYTE(v137) ^ 0x15) - (HIBYTE(v137) ^ 0xC8E285FF)) ^ (1957412381 * *&v64[4 * BYTE2(v136)]) ^ *(v63 + 4 * (HIBYTE(v137) ^ 0x90)) ^ 0x50009C62 ^ (((1957412381 * *&v64[4 * BYTE2(v136)]) & 0x900C0A66) >> (v142 & 1) >> !(v142 & 1)), 5) ^ 0x3F0861BA, 27) ^ 0xB10CAB25) + (v146 & 0x80000000);
  v148 = v143 ^ 0xC39F;
  v149 = v146 & 0x7FFFFFFF ^ *&v68[4 * (v134 ^ 0x48)];
  v150 = (v143 ^ 0x599BC39F) >> 24;
  v151 = v149 ^ v147;
  v152 = 1957412381 * *&v64[4 * (BYTE2(v143) ^ 0x4C)];
  v153 = *(v63 + 4 * (HIBYTE(v139) ^ 0x90)) ^ ((HIBYTE(v139) ^ 0x15) - (HIBYTE(v139) ^ 0xC8E285FF)) ^ v152 ^ *&v68[4 * ((v149 ^ v147) ^ 0x42)] ^ (v152 >> 1) & 0x48060533 ^ ((BYTE1(v145) ^ 0x6725CBA4) + (BYTE1(v145) ^ 0xFFFFFF82) + *&v67[4 * (BYTE1(v145) ^ 0x75)] + 2);
  v154 = 1957412381 * *&v64[4 * (BYTE2(v145) ^ 0xA8)];
  v155 = (v150 - (v150 ^ 0xC8E285EA)) ^ *(v63 + 4 * (v150 ^ 0x85)) ^ v154 ^ (v154 >> 1) & 0x48060533;
  v156 = (((v151 ^ 0xF142) >> 8) ^ 0x6725CBD9) + *&v67[4 * (((v151 ^ 0xF142) >> 8) ^ 8)] - ((v151 ^ 0xF142) >> 8) + 1;
  v157 = (v156 + v155 - 2 * (v156 & v155)) ^ *&v68[4 * (v139 ^ 0xBE)];
  v158 = 1957412381 * *&v64[4 * (BYTE2(v151) ^ 0xCA)];
  v159 = *(v63 + 4 * (HIBYTE(v145) ^ 0xEA)) ^ ((HIBYTE(v145) ^ 0x6F) - (HIBYTE(v145) ^ 0xC8E28585)) ^ ((BYTE1(v139) ^ 0x6725CB02) + (BYTE1(v139) ^ 0xFFFFFF24) + *&v67[4 * (BYTE1(v139) ^ 0xD3)] + 2) ^ *&v68[4 * v148] ^ v158 ^ (v158 >> 1) & 0x48060533;
  v160 = 1957412381 * *&v64[4 * (BYTE2(v139) ^ 0xC6)];
  v161 = (((v151 ^ 0x261DF142u) >> 24) - (((v151 ^ 0x261DF142u) >> 24) ^ 0xC8E285EA)) ^ v160 ^ ((HIBYTE(v148) ^ 0x6725CBD9) - HIBYTE(v148) + *&v67[4 * (HIBYTE(v148) ^ 8)] + 1) ^ *&v68[4 * (v145 ^ 0x2C)] ^ *(v63 + 4 * (((v151 ^ 0x261DF142u) >> 24) ^ 0x85)) ^ (v160 >> 1) & 0x48060533;
  v162 = v159 ^ 0x473E183F;
  v163 = v161 ^ 0x3D28F37B;
  v164 = 1957412381 * *&v64[4 * (BYTE2(v157) ^ 0x9D)];
  v165 = *(v63 + 4 * (HIBYTE(v153) ^ 0xF4)) ^ ((HIBYTE(v153) ^ 0x71) - (HIBYTE(v153) ^ 0xC8E2859B)) ^ v164 ^ *&v68[4 * (v161 ^ 0x7B)] ^ (v164 >> 1) & 0x48060533 ^ (*&v67[4 * (BYTE1(v162) ^ 8)] - BYTE1(v162) + (BYTE1(v162) ^ 0x6725CBD9) + 1);
  v166 = 1957412381 * *&v64[4 * (BYTE2(v159) ^ 0xE9)];
  v167 = ((HIBYTE(v157) ^ 0x74) - (HIBYTE(v157) ^ 0xC8E2859E)) ^ *&v68[4 * (v153 ^ 0x71)] ^ *(v63 + 4 * (HIBYTE(v157) ^ 0xF1)) ^ v166 ^ (*&v67[4 * (BYTE1(v163) ^ 8)] - BYTE1(v163) + (BYTE1(v163) ^ 0x6725CBD9) + 1) ^ (v166 >> 1) & 0x48060533;
  if ((v162 & 8) != 0)
  {
    v168 = 248;
  }

  else
  {
    v168 = 8;
  }

  v169 = *&v64[4 * ~HIWORD(v161)];
  v170 = *(v63 + 4 * (HIBYTE(v162) ^ 0x85)) ^ (HIBYTE(v162) - (HIBYTE(v162) ^ 0xC8E285EA)) ^ ((BYTE1(v153) ^ 0xFFFFFF59) + (BYTE1(v153) ^ 0x6725CB7F) + *&v67[4 * (BYTE1(v153) ^ 0xAE)] + 2) ^ *&v68[4 * (v157 ^ 0x15)] ^ ((1957412381 * v169) >> 1) & 0x48060533 ^ (1957412381 * v169 - ((1767341114 * v169) & 0x54A00350) + 709886376);
  v171 = 1957412381 * *&v64[4 * (BYTE2(v153) ^ 0xD)];
  v172 = (BYTE1(v157) ^ 0x6725CBA6) + (BYTE1(v157) ^ 0xFFFFFF80) + *&v67[4 * (BYTE1(v157) ^ 0x77)] + 2;
  v173 = (HIBYTE(v163) - (HIBYTE(v163) ^ 0xC8E285EA)) ^ 0x27DC0C40 ^ *(v63 + 4 * (HIBYTE(v163) ^ 0x85)) ^ v171 ^ (v171 >> 1) & 0x48060533 ^ (v172 + 668732480 - ((2 * v172) & 0x4FB81880));
  v174 = *&v68[4 * ((v168 + v162) & 0xFD ^ (v162 & 2 | 0xF5))] ^ 0xA0553D8D;
  v175 = v173 + v174 - 2 * (v173 & v174);
  v176 = 1957412381 * *&v64[4 * (BYTE2(v167) ^ 0x1B)];
  v177 = *(v63 + 4 * (HIBYTE(v165) ^ 0xF1)) ^ ((HIBYTE(v165) ^ 0x74) - (HIBYTE(v165) ^ 0xC8E2859E)) ^ *&v68[4 * ((v173 + v174 - 2 * (v173 & v174)) ^ 0xD)] ^ v176 ^ ((BYTE1(v170) ^ 0x6725CBC6) + (BYTE1(v170) ^ 0xFFFFFFE0) + *&v67[4 * (BYTE1(v170) ^ 0x17)] + 2) ^ (((v176 >> 1) & 0x48060533) - (v176 & 0x80080202) + 1630878085);
  v178 = 1957412381 * *&v64[4 * (BYTE2(v170) ^ 0x7E)];
  v179 = *(v63 + 4 * (HIBYTE(v167) ^ 0xD9)) ^ ((HIBYTE(v167) ^ 0x5C) - (HIBYTE(v167) ^ 0xC8E285B6)) ^ v178 ^ *&v68[4 * (v165 ^ 0xD7)] ^ (v178 >> 1) & 0x48060533 ^ (*&v67[4 * (BYTE1(v175) ^ 0xC2)] + (BYTE1(v175) ^ 0xFFFFFF35) + (BYTE1(v175) ^ 0x6725CB13) + 2);
  v180 = HIBYTE(v175);
  v181 = HIBYTE(v175) ^ 0x86;
  v182 = 1957412381 * *&v64[4 * (BYTE2(v175) ^ 0x58)];
  v183 = *(v63 + 4 * (HIBYTE(v170) ^ 0xE8)) ^ ((HIBYTE(v170) ^ 0x6D) - (HIBYTE(v170) ^ 0xC8E28587)) ^ v182 ^ ((BYTE1(v165) ^ 0x6725CBA0) + (BYTE1(v165) ^ 0xFFFFFF86) + *&v67[4 * (BYTE1(v165) ^ 0x71)] + 2) ^ (v182 >> 1) & 0x48060533 ^ *&v68[4 * (v167 ^ 0x39)];
  v184 = 1957412381 * *&v64[4 * (BYTE2(v165) ^ 0x5A)];
  v185 = (v181 - (v180 ^ 0xC8E2856C)) ^ *(v63 + 4 * (v180 ^ 3)) ^ ((BYTE1(v167) ^ 0x6725CBC5) + (BYTE1(v167) ^ 0xFFFFFFE3) + *&v67[4 * (BYTE1(v167) ^ 0x14)] + 2) ^ *&v68[4 * (v170 ^ 0xA8)] ^ v184 ^ 0x8FF27FA7 ^ (v184 >> 1) & 0x48060533;
  v186 = 1957412381 * *&v64[4 * (BYTE2(v179) ^ 0xD1)];
  v187 = *(v63 + 4 * (((v177 ^ 0x8FF4A960) >> 24) ^ 0x85)) ^ (((v177 ^ 0x8FF4A960) >> 24) - (((v177 ^ 0x8FF4A960) >> 24) ^ 0xC8E285EA)) ^ v186 ^ (v186 >> 1) & 0x48060533 ^ *&v68[4 * (v185 - ((2 * v185) & 0x1FA)) + 1012] ^ (*&v67[4 * (((v183 ^ 0x92DC) >> 8) ^ 8)] - ((v183 ^ 0x92DC) >> 8) + (((v183 ^ 0x92DC) >> 8) ^ 0x6725CBD9) + 1);
  v188 = 1957412381 * *&v64[4 * ((v183 ^ 0xF52392DC) >> 16)];
  v189 = (v183 ^ 0xF52392DC) >> 24;
  v190 = *(v63 + 4 * (((v179 ^ 0xEE069627) >> 24) ^ 0x85)) ^ (((v179 ^ 0xEE069627) >> 24) - (((v179 ^ 0xEE069627) >> 24) ^ 0xC8E285EA)) ^ v188 ^ *&v68[4 * ((v177 ^ 0x60) - ((2 * (v177 ^ 0x8FF4A960)) & 0x1FA)) + 1012] ^ (v188 >> 1) & 0x48060533 ^ (*&v67[4 * (BYTE1(v185) ^ 8)] - BYTE1(v185) + (BYTE1(v185) ^ 0x6725CBD9) + 1);
  v191 = v189 - (v189 ^ 0xC8E285EA);
  v192 = *(v63 + 4 * (v189 ^ 0x85));
  v193 = 1957412381 * *&v64[4 * BYTE2(v185)];
  v194 = *&v68[4 * (v179 ^ 0xDA)] ^ ((((v177 ^ 0xA960) >> 8) ^ 0x6725CBD9) - ((v177 ^ 0xA960) >> 8) + *&v67[4 * (((v177 ^ 0xA960) >> 8) ^ 8)] + 1) ^ (((v193 >> 1) & 0x48060533 ^ v193) + (v192 ^ v191) - 2 * (((v193 >> 1) & 0x48060533 ^ v193) & (v192 ^ v191)));
  v195 = 1957412381 * *&v64[4 * (BYTE2(v177) ^ 0x23)];
  v196 = *(v63 + 4 * (HIBYTE(v185) ^ 0x85)) ^ (HIBYTE(v185) - (HIBYTE(v185) ^ 0xC8E285EA)) ^ *&v68[4 * (v183 ^ 0x21)] ^ v195 ^ ((((v179 ^ 0x9627) >> 8) ^ 0x6725CBD9) - ((v179 ^ 0x9627) >> 8) + *&v67[4 * (((v179 ^ 0x9627) >> 8) ^ 8)] + 1) ^ (v195 >> 1) & 0x48060533;
  LOBYTE(v183) = v194 ^ 0xA1;
  v197 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v22 - 2033) - 4;
  v198 = *&v197[4 * (HIBYTE(v187) ^ 0xC8)];
  v199 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0xA54)) - 4;
  v200 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0x8E9)) - 12;
  v201 = *&v200[4 * ((v194 ^ 0x58A1) >> 8)] ^ 0xD109E40B;
  v202 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0x94E));
  v203 = (1202136098 * v198) ^ (122524503 * v198) ^ (*&v199[4 * (BYTE2(v190) ^ 0x61)] - 197112972) ^ v201 ^ *(v202 + 4 * v196) ^ ((8 * v201) | 0x9C138958);
  v204 = *&v197[4 * (HIBYTE(v190) ^ 0x7A)];
  v205 = *&v200[4 * (BYTE1(v196) ^ 0x3D)];
  v206 = (122524503 * v204) ^ (1202136098 * v204);
  v207 = (*&v199[4 * ((v194 ^ 0xC89E58A1) >> 16)] - 197112972) ^ *(v202 + 4 * (v187 ^ 0x5Au)) ^ (((v205 - (v205 ^ 0xD109E40B)) ^ 0xFFFFFFFE) + v205) ^ ((8 * (((v205 - (v205 ^ 0xD109E40B)) ^ 0xFFFFFFFE) + v205)) | 0x9C138958);
  HIDWORD(v208) = v196;
  LODWORD(v208) = v196;
  v209 = *&v197[4 * (HIBYTE(v194) ^ 0xD3)];
  v210 = *&v200[4 * (BYTE1(v187) ^ 0x5C)] ^ 0xD109E40B;
  v211 = (122524503 * v209) ^ (1202136098 * v209) ^ (*&v199[4 * (__ROR4__((v208 >> 18) & 0xC000003F ^ 0xEABAB2C2, 30) ^ 0xAAEACBBB)] - 197112972) ^ *(v202 + 4 * (v190 ^ 0x7Bu)) ^ v210 ^ ((8 * v210) | 0x9C138958);
  v212 = *&v197[4 * HIBYTE(v196)];
  v213 = *&v200[4 * (BYTE1(v190) ^ 0xD0)];
  LODWORD(v202) = (1202136098 * v212) ^ (122524503 * v212) ^ (*&v199[4 * (BYTE2(v187) ^ 0x6C)] - 197112972) ^ *(v202 + 4 * v183) ^ v213 ^ 0xD109E40B ^ ((8 * (v213 ^ 0xD109E40B)) | 0x9C138958);
  v214 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v22 - 1771) - 4;
  LOBYTE(v212) = v214[(((v211 ^ 0x9B3A9A34) >> 16) - (((v211 ^ 0x9B3A9A34) >> 15) & 0xF0) + 120) ^ 0xC1];
  a18[9] = v212 ^ (40 * (v212 ^ 4)) ^ 0xB4;
  v215 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v22 - 1826);
  v216 = *(v215 + (BYTE1(v202) ^ 0xFDLL));
  a18[14] = ((v216 >> 7) | (2 * v216)) ^ 0x1C;
  v217 = *(v215 + (BYTE1(v211) ^ 0x31));
  a18[10] = ((v217 >> 7) | (2 * v217)) ^ 0x51;
  v218 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v22 ^ 0x87A)) - 12;
  v219 = v218[HIBYTE(v203) ^ 0xAFLL];
  *a18 = ((v219 >> 7) | (2 * v219)) ^ 0xC4;
  v220 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v22 - 1898) - 4;
  v221 = v220[v202 ^ 0x4ALL];
  a18[15] = ((v221 >> 6) | (4 * v221)) ^ 0x36 ^ (((v221 >> 6) | (4 * v221)) >> 1) & 0x5F;
  v222 = v218[BYTE3(v202) ^ 0xE3];
  v223 = v206 ^ v207;
  a18[12] = ((v222 >> 7) | (2 * v222)) ^ 0xC2;
  v224 = *(v215 + (BYTE1(v203) ^ 0x9ALL));
  a18[2] = (v224 >> (HIBYTE(v116) & 7) >> (HIBYTE(v116) & 7 ^ 7)) ^ (2 * v224) ^ 0x9E;
  v225 = v214[BYTE2(v223) ^ 0xAELL];
  v226 = (v225 ^ -v225 ^ (100 - ((((((v225 >> 5) | (8 * v225)) ^ 0x4F) >> 3) | (32 * (((v225 >> 5) | (8 * v225)) ^ 0x4F))) ^ 0xFFFFFF8D))) + 100;
  a18[5] = v226 ^ (40 * v226) ^ 0x16;
  v227 = v220[v223 ^ 0x57];
  a18[7] = ((v227 >> 6) | (4 * v227)) ^ 0x2F ^ (((v227 >> 6) | (4 * v227)) >> 1) & 0x5F;
  v228 = v220[v211 ^ 0x34];
  a18[11] = ((v228 >> 6) | (4 * v228)) ^ 0x84 ^ (((v228 >> 6) | (4 * v228)) >> 1) & 0x5F;
  v229 = v218[BYTE3(v211) ^ 0xB8];
  a18[8] = ((v229 >> 7) | (2 * v229)) ^ 0xD6;
  a18[1] = v214[BYTE2(v203) ^ 0x4ELL] ^ (40 * (v214[BYTE2(v203) ^ 0x4ELL] ^ 4)) ^ 0xE8;
  a18[13] = v214[BYTE2(v202) ^ 0x6CLL] ^ (40 * (v214[BYTE2(v202) ^ 0x6CLL] ^ 4)) ^ 0xAC;
  v230 = *(v215 + (BYTE1(v223) ^ 0xB9));
  a18[6] = ((v230 >> 7) | (2 * v230)) ^ 0xD1;
  v231 = v218[HIBYTE(v223) ^ 0x40];
  HIDWORD(v208) = v203 ^ 0xFFFFFFED;
  LODWORD(v208) = (v203 ^ 0xFFFFFFED) & 0xE0;
  a18[4] = ((v231 >> 7) | (2 * v231)) ^ 0x34;
  HIDWORD(v208) = (v208 >> 5) ^ 0xC6019276;
  LODWORD(v208) = HIDWORD(v208);
  v232 = v220[(v208 >> 27) ^ 0xC0324EACLL];
  a18[3] = ((v232 >> 6) | (4 * v232)) ^ 0x57 ^ (((v232 >> 6) | (4 * v232)) >> 1) & 0x5F;
  v233 = *(v20 - 108) > 0x8C476DCC;
  if (v239)
  {
    v233 = v239;
  }

  return (*(v238 + 8 * ((7074 * v233) ^ v22)))(v211, 1957412381, v218, 95, 87, 0, 1730530265, v199, a9, a10, a11, a12, v235, v236);
}