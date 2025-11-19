uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions()
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
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

__CFString *FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCellStackLayoutRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetRegionID(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

  v6 = *(v5 + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetLines(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetLines(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

  v9 = *(v8 + 56);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetRegionAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

  v6 = *(v5 + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

  v9 = *(v8 + 72);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetViewportAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
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

  return v6(v3, a2);
}

__CFString *FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererStackLayoutRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCellStackLayoutRegion <FigCaptionRendererStackLayoutRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererStackLayoutRegionProtocol_SetAnimationEnabled(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererStackLayoutRegionProtocolGetProtocolID();
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

uint64_t RegisterFigCaptionRendererCellStackLayoutRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCreateClosedCaptionRenderPipeline(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, const __CFDictionary *a7, CFTypeRef *a8)
{
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    v13 = a2 != 0;
  }

  else
  {
    v13 = 0;
  }

  if ((a2 != 0) == (a3 != 0))
  {
    if (a5)
    {
      v14 = a4 != 0;
    }

    else
    {
      v14 = 0;
    }

    if ((a4 != 0) == (a5 != 0))
    {
      v15 = *MEMORY[0x1E695E480];
      FigRenderPipelineGetClassID();
      v16 = CMDerivedObjectCreate();
      if (v16)
      {
        goto LABEL_17;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 1) = 1;
      *(DerivedStorage + 8) = FigSimpleMutexCreate();
      v16 = FigCEA608CaptionDecoderCreate(v15, a1, ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline, cf, 0, DerivedStorage + 16);
      if (v16)
      {
        goto LABEL_17;
      }

      if (a1)
      {
        v18 = CFRetain(a1);
      }

      else
      {
        v18 = 0;
      }

      *(DerivedStorage + 32) = v18;
      if (v13 && (*(DerivedStorage + 40) = a2, v19 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 48) = v19) == 0))
      {
        FigCreateClosedCaptionRenderPipeline_cold_2(&v29);
      }

      else
      {
        *(DerivedStorage + 24) = 1681272888;
        v20 = *a6;
        *(DerivedStorage + 96) = *(a6 + 2);
        *(DerivedStorage + 80) = v20;
        v29 = *a6;
        v30 = *(a6 + 2);
        v16 = FigSimpleRenderPipelineCreateWithCallback(v15, ccrp_feedClosedCaptionSampleToParserAndRenderIfNecessary, 0, cf, &v29, a7, (DerivedStorage + 56));
        if (v16)
        {
LABEL_17:
          v21 = v16;
          goto LABEL_18;
        }

        FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 56));
        v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v24)
        {
          v21 = 4294954514;
          goto LABEL_18;
        }

        v16 = v24(FigBaseObject, @"SourceSampleBufferQueue", v15, DerivedStorage + 64);
        if (v16)
        {
          goto LABEL_17;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        if (!v14 || (*(DerivedStorage + 128) = a4, v25 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 136) = v25) != 0))
        {
          v21 = 0;
          *a8 = cf;
          return v21;
        }

        FigCreateClosedCaptionRenderPipeline_cold_1(&v29);
      }
    }

    else
    {
      FigCreateClosedCaptionRenderPipeline_cold_3(&v29);
    }
  }

  else
  {
    FigCreateClosedCaptionRenderPipeline_cold_4(&v29);
  }

  v21 = v29;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

void ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline(uint64_t a1, const __CFDictionary *a2, CMTime *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    v9 = DerivedStorage;
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      cf[0] = 0;
      v12 = *(CMBaseObjectGetDerivedStorage() + 144);
      if (!v12)
      {
        goto LABEL_18;
      }

      FigBaseObject = FigBytePumpGetFigBaseObject(v12);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v14)
      {
        goto LABEL_18;
      }

      v16 = v14(FigBaseObject, 0x1F0B4C778, *MEMORY[0x1E695E480], cf) == 0;
      v15 = *MEMORY[0x1E695E4D0];
      v16 = v16 && v15 == cf[0];
      v17 = v16;
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v18 = v17 ^ 1;
      if (!a2)
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        CFDictionarySetValue(MutableCopy, @"H", v15);
        v20 = *(v9 + 40);
        *cf = *&a3->value;
        epoch = a3->epoch;
        v20(a4, a1, MutableCopy, cf, v11);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
LABEL_18:
        v21 = *(v9 + 40);
        *cf = *&a3->value;
        epoch = a3->epoch;
        v21(a4, a1, a2, cf, v11);
      }

      CFRelease(v11);
    }
  }
}

uint64_t ccrp_feedClosedCaptionSampleToParserAndRenderIfNecessary(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v13, 0, sizeof(v13));
  CMTimebaseGetTime(&v13, *(DerivedStorage + 72));
  if (*DerivedStorage)
  {
    return FigSignalErrorAtGM();
  }

  v5 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
  v6 = CMGetAttachment(a2, *MEMORY[0x1E6960510], 0);
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    if (v5)
    {
      v11 = v13;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v8)
      {
        v14 = v11;
        v8(v7, &v14);
      }
    }

    else
    {
      if (v6)
      {
        v12 = v13;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v9)
        {
          v14 = v12;
          v9(v7, &v14);
        }

        v7 = *(DerivedStorage + 16);
      }

      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10 && !v10(v7, a2))
      {
        ccrp_feedCaptionDataToParser();
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t ccrp_resetOutput(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      (*(DerivedStorage + 128))(a2, v4);
      CFRelease(v5);
    }
  }

  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CMTimebaseGetTime(&v9, *(DerivedStorage + 72));
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v10 = v9;
      v7(v6, &v10);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t figClosedCaptionRenderPipelineInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      ccrp_tearDownFeedingSource();
      if (v1[8])
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CFRelease(v1[8]);
        v1[8] = 0;
      }

      v2 = v1[7];
      if (v2)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v2);
        if (FigBaseObject)
        {
          v4 = FigBaseObject;
          v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v5)
          {
            v5(v4);
          }
        }

        CFRelease(v1[7]);
        v1[7] = 0;
      }

      FigSimpleMutexLock();
      v6 = v1[2];
      v1[2] = 0;
      FigSimpleMutexUnlock();
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = v1[9];
      if (v7)
      {
        CFRelease(v7);
        v1[9] = 0;
      }

      v8 = v1[4];
      if (v8)
      {
        CFRelease(v8);
        v1[4] = 0;
      }
    }
  }

  return 0;
}

void figClosedCaptionRenderPipelineFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1) = 1;
  figClosedCaptionRenderPipelineInvalidate();
  v1 = *(DerivedStorage + 48);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 48) = 0;
  }

  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 144) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 8) = 0;
  v4 = *(DerivedStorage + 120);
  if (v4)
  {
    os_release(v4);
    *(DerivedStorage + 120) = 0;
  }
}

__CFString *figClosedCaptionRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigClosedCaptionRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t figClosedCaptionRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v8 = DerivedStorage, !*DerivedStorage))
  {
    if (CFEqual(@"HDRCrossTalker", a2))
    {
      v10 = *(v8 + 18);
      if (v10)
      {
        v11 = CFRetain(v10);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *a4 = v11;
    }

    else
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v8 + 7));
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {

        return v13(FigBaseObject, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figClosedCaptionRenderPipelineSetProperty(uint64_t a1, const void *a2, __CFString *a3)
{
  v3 = a3;
  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (CFEqual(@"Timebase", a2))
      {
        if (v3 && (TypeID = CMTimebaseGetTypeID(), TypeID != CFGetTypeID(v3)))
        {
          FigSignalErrorAtGM();
        }

        else
        {
          if (*(v7 + 9))
          {
            ccrp_tearDownFeedingSource();
            CFRelease(*(v7 + 9));
          }

          *(v7 + 9) = v3;
          if (v3)
          {
            CFRetain(v3);
            v10 = CMBaseObjectGetDerivedStorage();
            v11 = dispatch_queue_create("com.apple.coremedia.ccrenderpipeline", 0);
            *(v10 + 104) = v11;
            if (v11)
            {
              v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
              *(v10 + 112) = v12;
              if (v12)
              {
                v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                dispatch_set_context(*(v10 + 112), v13);
                dispatch_source_set_cancel_handler_f(*(v10 + 112), ccrp_cancelFeedingHandler);
                dispatch_source_set_event_handler_f(*(v10 + 112), ccrp_feedingSourceHandler);
                *(v10 + 120) = voucher_copy();
                dispatch_resume(*(v10 + 112));
                if (CMTimebaseAddTimerDispatchSource(*(v10 + 72), *(v10 + 112)))
                {
                  figClosedCaptionRenderPipelineSetProperty();
                }
              }

              else
              {
                figClosedCaptionRenderPipelineSetProperty();
              }
            }

            else
            {
              figClosedCaptionRenderPipelineSetProperty();
            }
          }
        }

        goto LABEL_25;
      }

      if (CFEqual(@"CCRPP_ClosedCaptionType", a2))
      {
        if (!v3)
        {
          goto LABEL_25;
        }

        v14 = CFGetTypeID(v3);
        if (v14 != CFStringGetTypeID())
        {
          goto LABEL_25;
        }

        LODWORD(v28.value) = 0;
        valuePtr = 0;
        if (!FigClosedCaptionGetClosedCaptionTypeAndChannelNumber(v3, &v28, &valuePtr))
        {
          goto LABEL_25;
        }

        FigSimpleMutexLock();
        if (*(v7 + 6) == LODWORD(v28.value))
        {
          goto LABEL_55;
        }

        v29.value = 0;
        if (LODWORD(v28.value) == 1681272888)
        {
          v15 = FigCEA608CaptionDecoderCreate(*MEMORY[0x1E695E480], *(v7 + 4), ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline, a1, 0, &v29);
        }

        else
        {
          if (LODWORD(v28.value) != 1681338424)
          {
            v24 = *(v7 + 2);
            *(v7 + 2) = 0;
LABEL_51:
            if (v24)
            {
              CFRelease(v24);
            }

            *(v7 + 6) = v28.value;
            if (v29.value)
            {
              CFRelease(v29.value);
            }

LABEL_55:
            v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
            FigBytePumpGetFigBaseObject(*(v7 + 2));
            CMBaseObjectSetProperty(v27, 0x1F0B44258, v26);
            if (v26)
            {
              CFRelease(v26);
            }

            goto LABEL_57;
          }

          v15 = FigCEA708CaptionDecoderCreate(*MEMORY[0x1E695E480], *(v7 + 4), ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline, a1, 0, &v29);
        }

        if (v15)
        {
          FigSignalErrorAtGM();
LABEL_57:
          FigSimpleMutexUnlock();
LABEL_25:
          FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v7 + 7));
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v17)
          {
            return 4294954514;
          }

          LODWORD(result) = v17(FigBaseObject, a2, v3);
          if (result == -12850)
          {
            return 0;
          }

          else
          {
            return result;
          }
        }

        value = v29.value;
        v24 = *(v7 + 2);
        *(v7 + 2) = v29.value;
        if (value)
        {
          CFRetain(value);
        }

        goto LABEL_51;
      }

      if (CFEqual(a2, @"CCRPP_TextHighlightArray"))
      {
        if (v3)
        {
          v18 = CFGetTypeID(v3);
          if (v18 != CFArrayGetTypeID())
          {
            goto LABEL_3;
          }

          v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kQTClosedCaptionTextHighlightArrayKey, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v19 = FigCFWeakReferenceHolderCopyReferencedObject();
        memset(&v29, 0, sizeof(v29));
        CMTimebaseGetTime(&v29, *(v7 + 9));
        v20 = *(v7 + 5);
        v28 = v29;
        v20(a1, 8, v3, &v28, v19);
        if (v3)
        {
          v21 = v3;
LABEL_36:
          CFRelease(v21);
        }
      }

      else
      {
        if (!CFEqual(a2, @"HDRCrossTalker"))
        {
          goto LABEL_25;
        }

        if (!v3)
        {
          goto LABEL_3;
        }

        v22 = CFGetTypeID(v3);
        if (v22 != FigCrossTalkerGetTypeID())
        {
          goto LABEL_3;
        }

        v23 = *(v7 + 18);
        *(v7 + 18) = v3;
        CFRetain(v3);
        if (v23)
        {
          v21 = v23;
          goto LABEL_36;
        }
      }

      return 0;
    }
  }

LABEL_3:

  return FigSignalErrorAtGM();
}

void ccrp_tearDownFeedingSource()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 112);
  if (v2)
  {
    CMTimebaseRemoveTimerDispatchSource(*(DerivedStorage + 72), v2);
    dispatch_source_cancel(*(v1 + 112));
    v3 = *(v1 + 112);
    if (v3)
    {
      dispatch_release(v3);
      *(v1 + 112) = 0;
    }

    v4 = *(v1 + 120);
    if (v4)
    {
      os_release(v4);
      *(v1 + 120) = 0;
    }
  }

  v5 = *(v1 + 104);
  if (v5)
  {
    dispatch_release(v5);
    *(v1 + 104) = 0;
  }
}

void ccrp_cancelFeedingHandler(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ccrp_feedingSourceHandler(void *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    os_retain(*(DerivedStorage + 120));
    voucher_adopt();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 16))
    {
      ccrp_feedCaptionDataToParser();
    }

    FigSimpleMutexUnlock();
    v4 = voucher_adopt();
    os_release(v4);

    CFRelease(v2);
  }
}

uint64_t ccrp_feedCaptionDataToParser()
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v11 = **&MEMORY[0x1E6960C70];
  v10 = v11;
  if (*(DerivedStorage + 1))
  {
    *(DerivedStorage + 1) = 0;
    CMFormatDescriptionGetMediaType(*(DerivedStorage + 32));
    CMFormatDescriptionGetMediaSubType(*(v1 + 32));
    if (dword_1EAF16AF0)
    {
      LODWORD(v8.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  CMTimebaseGetTime(&lhs, *(v1 + 72));
  rhs = *(v1 + 80);
  CMTimeAdd(&v11, &lhs, &rhs);
  v3 = *(v1 + 16);
  rhs = v11;
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 16);
  if (v7)
  {
    lhs = rhs;
    result = v7(v3, &lhs, &v10);
    if (!result && (v10.flags & 1) != 0)
    {
      rhs = v10;
      v8 = *(v1 + 80);
      CMTimeSubtract(&lhs, &rhs, &v8);
      v10 = lhs;
      result = CMTimebaseSetTimerDispatchSourceNextFireTime(*(v1 + 72), *(v1 + 112), &lhs, 0);
      if (result)
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  return result;
}

uint64_t FigCaptionCommandCreatePropertyList(int a1, const __CFDictionary *a2, CFDictionaryRef *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v15 = 0;
  keys = @"command";
  v17 = 0;
  v5 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!values)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (a2)
  {
    v17 = @"data";
    v6 = fcc_CommandDictToPropertyList(a2, &v15);
    if (v6)
    {
      v7 = v6;
      v8 = 1;
      goto LABEL_11;
    }

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = CFDictionaryCreate(v5, &keys, &values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a3 = v9;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v7 = FigSignalErrorAtGM();
  }

LABEL_11:
  v10 = v8;
  p_values = &values;
  do
  {
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    ++p_values;
    --v10;
  }

  while (v10);
  return v7;
}

uint64_t fcc_CommandDictToPropertyList(const __CFDictionary *a1, CFDictionaryRef *a2)
{
  Count = CFDictionaryGetCount(a1);
  v5 = malloc_type_calloc(8uLL, Count, 0x569CBD7FuLL);
  v6 = malloc_type_calloc(8uLL, Count, 0xA6ED29C8uLL);
  v7 = malloc_type_calloc(1uLL, Count, 0x51C84231uLL);
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    CFDictionaryGetKeysAndValues(a1, v5, v6);
    if (Count >= 1)
    {
      v10 = v6;
      v11 = v8;
      v12 = Count;
      do
      {
        v13 = fcc_CommandItemToPropertyList(v10, v11);
        if (v13)
        {
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (--v12);
    }

    v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], v5, v6, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a2 = v14;
    if (!v14)
    {
      fig_log_get_emitter();
      v13 = FigSignalErrorAtGM();
LABEL_11:
      v9 = v13;
      goto LABEL_12;
    }

    v9 = 0;
  }

LABEL_12:
  if (v6 && v8 && Count >= 1)
  {
    v15 = v8;
    v16 = v6;
    do
    {
      if (*v15++)
      {
        CFRelease(*v16);
      }

      ++v16;
      --Count;
    }

    while (Count);
  }

  free(v5);
  free(v6);
  free(v8);
  return v9;
}

uint64_t FigSubtitleSampleCreatePropertyList(const __CFDictionary *a1, int a2, int a3, CFDictionaryRef *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v45 = *MEMORY[0x1E69E9840];
  *keys = 0u;
  v44 = 0u;
  *values = 0u;
  v42 = 0u;
  v15 = MEMORY[0x1E695E480];
  if (!a1 || (v17 = CFDictionaryGetValue(a1, @"SubtitleContent"), CFDictionaryGetValue(a1, @"SubtitleSerializedCaptionGroup"), FigCFDictionaryGetCount() < 1))
  {
    v28 = 0;
    v21 = 0;
    goto LABEL_16;
  }

  if (!v17)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*v15, 0, a1);
    v21 = 0;
    if (MutableCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v39 = a4;
  Count = CFArrayGetCount(v17);
  v19 = *v15;
  Mutable = CFArrayCreateMutable(*v15, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigSubtitleSampleCreatePropertyList_cold_1(&value);
    return value;
  }

  v21 = Mutable;
  if (Count < 1)
  {
LABEL_11:
    v26 = CFDictionaryCreateMutableCopy(v19, 0, a1);
    if (v26)
    {
      MutableCopy = v26;
      CFDictionarySetValue(v26, @"SubtitleContent", v21);
      a4 = v39;
LABEL_15:
      keys[0] = @"subtitleSample";
      values[0] = MutableCopy;
      v28 = 1;
LABEL_16:
      *(keys | (8 * v28)) = @"forcedSubtitle";
      v29 = *MEMORY[0x1E695E4D0];
      v30 = *MEMORY[0x1E695E4C0];
      if (a2)
      {
        v31 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v31 = *MEMORY[0x1E695E4C0];
      }

      *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v28 & 1))) = CFRetain(v31);
      keys[v28 + 1] = @"obeySubtitleFormatting";
      if (a3)
      {
        v32 = v29;
      }

      else
      {
        v32 = v30;
      }

      values[v28 + 1] = CFRetain(v32);
      keys[v28 | 2] = @"textBox";
      v46.origin.x = a5;
      v46.origin.y = a6;
      v46.size.width = a7;
      v46.size.height = a8;
      values[v28 | 2] = CGRectCreateDictionaryRepresentation(v46);
      v33 = v28 + 3;
      v34 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v28 + 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a4 = v34;
      if (v34)
      {
        v35 = 0;
        if (!v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        fig_log_get_emitter();
        v35 = FigSignalErrorAtGM();
        if (!v21)
        {
          goto LABEL_27;
        }
      }

LABEL_26:
      CFRelease(v21);
      goto LABEL_27;
    }

LABEL_34:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    goto LABEL_35;
  }

  v22 = 0;
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v22);
    v24 = fcc_CommandAttributedStringToPropertyList(ValueAtIndex, &value);
    if (v24)
    {
      break;
    }

    v25 = value;
    CFArrayAppendValue(v21, value);
    if (v25)
    {
      CFRelease(v25);
    }

    if (Count == ++v22)
    {
      goto LABEL_11;
    }
  }

LABEL_35:
  v35 = v24;
  v33 = 0;
  if (v21)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v33)
  {
    v36 = v33;
    v37 = values;
    do
    {
      if (*v37)
      {
        CFRelease(*v37);
      }

      ++v37;
      --v36;
    }

    while (v36);
  }

  return v35;
}

uint64_t fcc_CommandAttributedStringToPropertyList(const __CFAttributedString *a1, CFDictionaryRef *a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  Length = CFAttributedStringGetLength(a1);
  values[0] = @"isCFAttributedString";
  keys[0] = @"isCFAttributedString";
  keys[1] = @"string";
  values[1] = CFAttributedStringGetString(a1);
  keys[2] = @"attributedTriplets";
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  values[2] = Mutable;
  if (Length >= 1)
  {
    v7 = 0;
    do
    {
      longestEffectiveRange.location = 0;
      longestEffectiveRange.length = 0;
      v23.location = 0;
      v23.length = Length;
      AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(a1, v7, v23, &longestEffectiveRange);
      value = AttributesAndLongestEffectiveRange;
      if (AttributesAndLongestEffectiveRange)
      {
        v9 = AttributesAndLongestEffectiveRange;
        v10 = CFNumberCreate(v5, kCFNumberCFIndexType, &longestEffectiveRange);
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = v10;
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v11);
        v12 = CFNumberCreate(v5, kCFNumberCFIndexType, &longestEffectiveRange.length);
        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = v12;
        CFArrayAppendValue(Mutable, v12);
        CFRelease(v13);
        v14 = fcc_CommandDictToPropertyList(v9, &value);
        if (v14)
        {
          goto LABEL_13;
        }

        v15 = value;
        CFArrayAppendValue(Mutable, value);
        CFRelease(v15);
      }

      v7 = longestEffectiveRange.length + longestEffectiveRange.location;
    }

    while (longestEffectiveRange.length + longestEffectiveRange.location < Length);
  }

  v16 = CFDictionaryCreate(v5, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a2 = v16;
  if (v16)
  {
    v17 = 0;
    if (!Mutable)
    {
      return v17;
    }

    goto LABEL_14;
  }

LABEL_12:
  fig_log_get_emitter();
  v14 = FigSignalErrorAtGM();
LABEL_13:
  v17 = v14;
  if (Mutable)
  {
LABEL_14:
    CFRelease(Mutable);
  }

  return v17;
}

const __CFDictionary *FigCaptionCommandCreateFromPropertyList(const void *a1, void *a2, CGColorRef *a3)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  *a3 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(a1, @"command");
  if (!Value)
  {
    goto LABEL_12;
  }

  v8 = Value;
  v9 = CFNumberGetTypeID();
  if (v9 != CFGetTypeID(v8))
  {
    goto LABEL_12;
  }

  CFNumberGetValue(v8, kCFNumberSInt32Type, a2);
  result = CFDictionaryGetValue(a1, @"data");
  if (!result)
  {
    *a3 = 0;
    return result;
  }

  v11 = result;
  v12 = CFDictionaryGetTypeID();
  if (v12 == CFGetTypeID(v11))
  {

    return fcc_CommandPropertyListToDict(v11, a3);
  }

  else
  {
LABEL_12:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t fcc_CommandPropertyListToDict(const __CFDictionary *a1, CGColorRef *a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"isCGColor");
  if (Value && CFEqual(Value, @"isCGColor"))
  {
    if (!fcc_CommandPropertyListToColor_sColorspace)
    {
      fcc_CommandPropertyListToColor_sColorspace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    v5 = CFDictionaryGetValue(a1, @"red");
    if (v5 && (v6 = v5, v7 = CFNumberGetTypeID(), v7 == CFGetTypeID(v6)))
    {
      CFNumberGetValue(v6, kCFNumberDoubleType, &valuePtr);
      v8 = CFDictionaryGetValue(a1, @"green");
      if (v8)
      {
        v9 = v8;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v9))
        {
          CFNumberGetValue(v9, kCFNumberDoubleType, &v35);
          v11 = CFDictionaryGetValue(a1, @"blue");
          if (v11)
          {
            v12 = v11;
            v13 = CFNumberGetTypeID();
            if (v13 == CFGetTypeID(v12))
            {
              CFNumberGetValue(v12, kCFNumberDoubleType, &v36);
              v14 = CFDictionaryGetValue(a1, @"alpha");
              if (v14)
              {
                v15 = v14;
                v16 = CFNumberGetTypeID();
                if (v16 == CFGetTypeID(v15))
                {
                  CFNumberGetValue(v15, kCFNumberDoubleType, v37);
                  v17 = CGColorCreate(fcc_CommandPropertyListToColor_sColorspace, &valuePtr);
                  *a2 = v17;
                  if (v17)
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }

      fig_log_get_emitter();
    }

    else
    {
      fig_log_get_emitter();
    }

    return FigSignalErrorAtGM();
  }

  v19 = CFDictionaryGetValue(a1, @"isCFAttributedString");
  if (!v19 || !CFEqual(v19, @"isCFAttributedString"))
  {
    Count = CFDictionaryGetCount(a1);
    v22 = malloc_type_calloc(8uLL, Count, 0x14634F31uLL);
    v23 = malloc_type_calloc(8uLL, Count, 0x5C7D8FD3uLL);
    v24 = malloc_type_calloc(1uLL, Count, 0xB42332A2uLL);
    v25 = v24;
    v18 = 0;
    if (!v22 || !v23 || !v24)
    {
      goto LABEL_33;
    }

    CFDictionaryGetKeysAndValues(a1, v22, v23);
    if (Count < 1)
    {
LABEL_27:
      v30 = CFDictionaryCreate(*MEMORY[0x1E695E480], v22, v23, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a2 = v30;
      if (v30)
      {
        v18 = 0;
        goto LABEL_33;
      }

      fig_log_get_emitter();
      v29 = FigSignalErrorAtGM();
    }

    else
    {
      v26 = v23;
      v27 = v25;
      v28 = Count;
      while (1)
      {
        v29 = fcc_CommandPropertyListToItem(v26, v27);
        if (v29)
        {
          break;
        }

        ++v27;
        ++v26;
        if (!--v28)
        {
          goto LABEL_27;
        }
      }
    }

    v18 = v29;
LABEL_33:
    if (v23 && v25 && Count >= 1)
    {
      v31 = v25;
      v32 = v23;
      do
      {
        if (*v31++)
        {
          CFRelease(*v32);
        }

        ++v32;
        --Count;
      }

      while (Count);
    }

    free(v22);
    free(v23);
    free(v25);
    return v18;
  }

  return fcc_CommandPropertyListToAttributedString(a1, a2);
}

uint64_t FigSubtitleSampleCreateFromPropertyList(const __CFDictionary *a1, const __CFDictionary **a2, Boolean *a3, Boolean *a4, CGRect *a5)
{
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      v11 = CFDictionaryGetValue(a1, @"forcedSubtitle");
      if (a3)
      {
        v12 = v11;
        if (v11)
        {
          v13 = CFBooleanGetTypeID();
          if (v13 == CFGetTypeID(v12))
          {
            *a3 = CFBooleanGetValue(v12);
          }
        }
      }

      v14 = CFDictionaryGetValue(a1, @"obeySubtitleFormatting");
      if (a4)
      {
        v15 = v14;
        if (v14)
        {
          v16 = CFBooleanGetTypeID();
          if (v16 == CFGetTypeID(v15))
          {
            *a4 = CFBooleanGetValue(v15);
          }
        }
      }

      v17 = CFDictionaryGetValue(a1, @"textBox");
      if (a5)
      {
        v18 = v17;
        if (v17)
        {
          v19 = CFDictionaryGetTypeID();
          if (v19 == CFGetTypeID(v18))
          {
            CGRectMakeWithDictionaryRepresentation(v18, a5);
          }
        }
      }

      v20 = CFDictionaryGetValue(a1, @"subtitleSample");
      v21 = 0;
      if (!a2 || !v20)
      {
        return v21;
      }

      v22 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v20);
      if (!MutableCopy)
      {
        FigSubtitleSampleCreateFromPropertyList_cold_2(&value);
        return value;
      }

      v24 = MutableCopy;
      v25 = CFDictionaryGetValue(MutableCopy, @"SubtitleContent");
      if (v25)
      {
        v26 = v25;
        Count = CFArrayGetCount(v25);
        Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          FigSubtitleSampleCreateFromPropertyList_cold_1(&value);
          v21 = value;
          goto LABEL_32;
        }

        v29 = Mutable;
        if (Count >= 1)
        {
          v30 = 0;
          while (1)
          {
            value = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v26, v30);
            v32 = fcc_CommandPropertyListToAttributedString(ValueAtIndex, &value);
            if (v32)
            {
              break;
            }

            v33 = value;
            CFArrayAppendValue(v29, value);
            CFRelease(v33);
            if (Count == ++v30)
            {
              goto LABEL_24;
            }
          }

          v21 = v32;
LABEL_30:
          CFRelease(v29);
LABEL_31:
          if (!v24)
          {
            return v21;
          }

LABEL_32:
          CFRelease(v24);
          return v21;
        }

LABEL_24:
        CFDictionarySetValue(v24, @"SubtitleContent", v29);
      }

      else
      {
        v29 = 0;
      }

      v21 = 0;
      *a2 = v24;
      v24 = 0;
      if (!v29)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t fcc_CommandPropertyListToAttributedString(const __CFDictionary *a1, __CFAttributedString **a2)
{
  Value = CFDictionaryGetValue(a1, @"string");
  if (Value && (v5 = Value, v6 = CFStringGetTypeID(), v6 == CFGetTypeID(v5)) && (v7 = CFDictionaryGetValue(a1, @"attributedTriplets")) != 0 && (v8 = v7, v9 = CFArrayGetTypeID(), v9 == CFGetTypeID(v8)) && (Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0)) != 0)
  {
    v11 = Mutable;
    CFAttributedStringBeginEditing(Mutable);
    v29.location = 0;
    v29.length = 0;
    CFAttributedStringReplaceString(v11, v29, v5);
    Count = CFArrayGetCount(v8);
    if (Count < 3)
    {
LABEL_16:
      CFAttributedStringEndEditing(v11);
      v24 = 0;
      *a2 = v11;
    }

    else
    {
      v13 = Count / 3;
      v14 = 2;
      while (1)
      {
        valuePtr = 0;
        cf = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v14 - 2);
        if (!ValueAtIndex)
        {
          break;
        }

        v16 = ValueAtIndex;
        TypeID = CFNumberGetTypeID();
        if (TypeID != CFGetTypeID(v16))
        {
          break;
        }

        CFNumberGetValue(v16, kCFNumberIntType, &valuePtr + 4);
        v18 = CFArrayGetValueAtIndex(v8, v14 - 1);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v20 = CFNumberGetTypeID();
        if (v20 != CFGetTypeID(v19))
        {
          break;
        }

        CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
        cf = CFArrayGetValueAtIndex(v8, v14);
        if (!cf)
        {
          break;
        }

        v21 = CFDictionaryGetTypeID();
        if (v21 != CFGetTypeID(cf))
        {
          break;
        }

        v22 = fcc_CommandPropertyListToDict(cf, &cf);
        if (v22)
        {
          goto LABEL_22;
        }

        v30.length = valuePtr;
        v30.location = SHIDWORD(valuePtr);
        v23 = cf;
        CFAttributedStringSetAttributes(v11, v30, cf, 0);
        CFRelease(v23);
        v14 += 3;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      fig_log_get_emitter();
      v22 = FigSignalErrorAtGM();
LABEL_22:
      v24 = v22;
      CFRelease(v11);
    }

    return v24;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigSubtitleSampleInsertInfoForRenderer(__CFDictionary *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, int a11)
{
  if (a1)
  {
    if (!a11 || (v20 = a2, CGRectIsNull(*&a2)))
    {
      v20 = a6;
      a3 = a7;
      a4 = a8;
      a5 = a9;
    }

    v27.origin.x = v20;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v27);
    if (DictionaryRepresentation)
    {
      v22 = DictionaryRepresentation;
      CFDictionarySetValue(a1, @"kFigSubtitleRenderer_TextBox", DictionaryRepresentation);
      v23 = MEMORY[0x1E695E4C0];
      if (a11)
      {
        v23 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(a1, @"kFigSubtitleRenderer_ObeySubtitleFormatting", *v23);
      CFRelease(v22);
      return 0;
    }

    else
    {
      FigSubtitleSampleInsertInfoForRenderer_cold_1(&v25);
      return v25;
    }
  }

  else
  {
    FigSubtitleSampleInsertInfoForRenderer_cold_2(&v26);
    return v26;
  }
}

uint64_t fcc_CommandItemToPropertyList(CFTypeRef *a1, _BYTE *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(*a1))
  {
    v5 = fcc_CommandDictToPropertyList(*a1, a1);
    if (v5)
    {
      return v5;
    }

LABEL_40:
    v6 = 0;
    *a2 = 1;
    return v6;
  }

  v7 = CFArrayGetTypeID();
  if (v7 == CFGetTypeID(*a1))
  {
    v8 = *a1;
    Count = CFArrayGetCount(*a1);
    v10 = malloc_type_calloc(8uLL, Count, 0x5EA377D1uLL);
    v11 = malloc_type_calloc(1uLL, Count, 0x289890BFuLL);
    v12 = v11;
    v6 = 0;
    if (!v10 || !v11)
    {
LABEL_32:
      free(v10);
      free(v12);
      goto LABEL_39;
    }

    v41.location = 0;
    v41.length = Count;
    CFArrayGetValues(v8, v41, v10);
    if (Count < 1)
    {
LABEL_11:
      v17 = CFArrayCreate(*MEMORY[0x1E695E480], v10, Count, MEMORY[0x1E695E9C0]);
      *a1 = v17;
      if (v17)
      {
        v6 = 0;
        goto LABEL_27;
      }

      fig_log_get_emitter();
      v16 = FigSignalErrorAtGM();
    }

    else
    {
      v13 = Count;
      v14 = v12;
      v15 = v10;
      while (1)
      {
        v16 = fcc_CommandItemToPropertyList(v15, v14);
        if (v16)
        {
          break;
        }

        v15 += 8;
        ++v14;
        if (!--v13)
        {
          goto LABEL_11;
        }
      }
    }

    v6 = v16;
LABEL_27:
    if (Count >= 1)
    {
      v28 = v10;
      v29 = v12;
      do
      {
        if (*v29++)
        {
          CFRelease(*v28);
        }

        ++v28;
        --Count;
      }

      while (Count);
    }

    goto LABEL_32;
  }

  v18 = CGColorGetTypeID();
  if (v18 == CFGetTypeID(*a1))
  {
    v19 = *a1;
    NumberOfComponents = CGColorGetNumberOfComponents(*a1);
    Components = CGColorGetComponents(v19);
    v39 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    keys = @"isCGColor";
    values = @"isCGColor";
    if (NumberOfComponents == 4)
    {
      v22 = Components;
      *&v38 = @"red";
      *(&v38 + 1) = @"green";
      *&v39 = @"blue";
      *(&v39 + 1) = @"alpha";
      v23 = *MEMORY[0x1E695E480];
      v24 = 1;
      while (1)
      {
        v25 = CFNumberCreate(v23, kCFNumberDoubleType, v22);
        *(&values + v24) = v25;
        if (!v25)
        {
          break;
        }

        ++v24;
        ++v22;
        if (v24 == 5)
        {
          v26 = CFDictionaryCreate(v23, &keys, &values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *a1 = v26;
          if (v26)
          {
            v6 = 0;
            goto LABEL_35;
          }

          break;
        }
      }

      fig_log_get_emitter();
    }

    else
    {
      fig_log_get_emitter();
    }

    v6 = FigSignalErrorAtGM();
LABEL_35:
    for (i = 8; i != 40; i += 8)
    {
      v32 = *(&values + i);
      if (v32)
      {
        CFRelease(v32);
      }
    }

LABEL_39:
    if (v6)
    {
      return v6;
    }

    goto LABEL_40;
  }

  v27 = CFAttributedStringGetTypeID();
  if (v27 != CFGetTypeID(*a1))
  {
    return 0;
  }

  v5 = fcc_CommandAttributedStringToPropertyList(*a1, a1);
  if (!v5)
  {
    goto LABEL_40;
  }

  return v5;
}

uint64_t fcc_CommandPropertyListToItem(CFTypeRef *a1, _BYTE *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(*a1))
  {
    v5 = fcc_CommandPropertyListToDict(*a1, a1);
    if (!v5)
    {
      goto LABEL_22;
    }

    return v5;
  }

  v6 = CFArrayGetTypeID();
  if (v6 != CFGetTypeID(*a1))
  {
    return 0;
  }

  v7 = *a1;
  Count = CFArrayGetCount(*a1);
  v9 = malloc_type_calloc(8uLL, Count, 0x2F0839A3uLL);
  v10 = malloc_type_calloc(1uLL, Count, 0xBEE7E6D6uLL);
  v11 = v10;
  v5 = 0;
  if (v9 && v10)
  {
    v21.location = 0;
    v21.length = Count;
    CFArrayGetValues(v7, v21, v9);
    if (Count < 1)
    {
LABEL_11:
      v16 = CFArrayCreate(*MEMORY[0x1E695E480], v9, Count, MEMORY[0x1E695E9C0]);
      *a1 = v16;
      if (v16)
      {
        v5 = 0;
        goto LABEL_16;
      }

      fig_log_get_emitter();
      v15 = FigSignalErrorAtGM();
    }

    else
    {
      v12 = Count;
      v13 = v11;
      v14 = v9;
      while (1)
      {
        v15 = fcc_CommandPropertyListToItem(v14, v13);
        if (v15)
        {
          break;
        }

        ++v14;
        ++v13;
        if (!--v12)
        {
          goto LABEL_11;
        }
      }
    }

    v5 = v15;
LABEL_16:
    if (Count >= 1)
    {
      v17 = v9;
      v18 = v11;
      do
      {
        if (*v18++)
        {
          CFRelease(*v17);
        }

        ++v17;
        --Count;
      }

      while (Count);
    }
  }

  free(v9);
  free(v11);
  if (!v5)
  {
LABEL_22:
    v5 = 0;
    *a2 = 1;
  }

  return v5;
}

uint64_t FigCaptionRendererBasicInputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    FigCaptionRendererBasicInputCreate_cold_2(__str);
    return *__str;
  }

  if (!a5)
  {
    FigCaptionRendererBasicInputCreate_cold_1(__str);
    return *__str;
  }

  *a5 = 0;
  FigCaptionRendererInputGetClassID();
  v9 = CMDerivedObjectCreate();
  if (!v9)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = a1;
    DerivedStorage[3] = a2;
    DerivedStorage[4] = a3;
    DerivedStorage[7] = 0;
    DerivedStorage[5] = 0;
    v9 = FigCaptionSerializerCreate();
    if (!v9)
    {
      snprintf(__str, 0x100uLL, "com.apple.coremedia.ckmediainput.messagequeue<%p>", 0);
      v11 = dispatch_queue_create(__str, 0);
      *DerivedStorage = v11;
      v9 = 0;
      if (v11)
      {
        *a5 = 0;
      }
    }
  }

  return v9;
}

uint64_t FigCaptionRendererBasicInputAddSample(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  v5[0] = DerivedStorage;
  v5[1] = a2;
  if (*DerivedStorage)
  {
    dispatch_sync_f(*DerivedStorage, v5, digestSubtitleSampleDo);
  }

  return 0;
}

uint64_t FigCaptionRendererBasicInputSetLayoutContext(uint64_t a1, uint64_t a2)
{
  v4[0] = CMBaseObjectGetDerivedStorage();
  v4[1] = a2;
  if (*v4[0])
  {
    dispatch_sync_f(*v4[0], v4, setLayoutContextDo);
  }

  return 0;
}

void setLayoutContextDo(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void figFCRBasicInput_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 56);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 56) = 0;
  }

  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 40) = 0;
  }

  *(DerivedStorage + 32) = 0;
}

__CFString *figFCRBasicInput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererBasicInput %p>", a1);
  return Mutable;
}

void OUTLINED_FUNCTION_1_10(void *value)
{

  CFDictionarySetValue(v1, v2, value);
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return CMBaseObjectGetProtocolVTable();
}

void __getDisplayScale_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberCGFloatType, &sMaxDisplayScale);
    }

    CFRelease(v1);
  }
}

uint64_t FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter(const void *a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a1)
  {
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_4(&v18);
LABEL_17:
    v14 = v18;
    goto LABEL_19;
  }

  if (!a2)
  {
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_3(&v18);
    goto LABEL_17;
  }

  if (!a5)
  {
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_2(&v18);
    goto LABEL_17;
  }

  FigPictureCollectionWriterGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v14 = v10;
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_1();
  }

  else
  {
    v16 = 0;
    v11 = iffpcwGetWriteFileTypeOptions(a3, 0, &v16);
    if (v11 || ((DerivedStorage = CMBaseObjectGetDerivedStorage(), !a4) ? (v13 = 0) : (v13 = CFRetain(a4)), *DerivedStorage = v13, *(DerivedStorage + 8) = CFRetain(a1), *(DerivedStorage + 16) = CFRetain(a2), *(DerivedStorage + 40) = v16, v11 = IFFItemInformationCreate(a4, (DerivedStorage + 24)), v11))
    {
      v14 = v11;
    }

    else
    {
      v14 = IFFItemHeaderMakerCreateWithIFFItemInformation(a4, *(DerivedStorage + 24), (DerivedStorage + 32));
      if (!v14)
      {
        *a5 = cf;
        return v14;
      }
    }
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t iffpcwGetWriteFileTypeOptions(const void *a1, char *a2, char *a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    iffpcwGetWriteFileTypeOptions_cold_1(&v11);
    return v11;
  }

  v10 = 0;
  if (!CFDictionaryGetValueIfPresent(a1, @"WriteFileType", &v10))
  {
    goto LABEL_8;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (!FigCFEqual())
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      v7 = 0;
      v8 = 1;
      if (!a2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
    v7 = 1;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v7;
  }

LABEL_10:
  result = 0;
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

void iffpcw_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  IFFItemHeaderMakerRelease(*(DerivedStorage + 32));
  v4 = *DerivedStorage;
  if (*DerivedStorage)
  {

    CFRelease(v4);
  }
}

__CFString *iffpcw_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureCollectionWriter %p>", a1);
  return Mutable;
}

uint64_t iffpcw_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFMutableArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    iffpcw_CopyProperty_cold_3(&v17);
    return v17;
  }

  if (!a4)
  {
    iffpcw_CopyProperty_cold_2(&v17);
    return v17;
  }

  v8 = DerivedStorage;
  if (FigCFEqual())
  {
    v9 = *(v8 + 8);

    return MovieSampleDataWriterCopyMajorBrand(v9, a4);
  }

  else if (FigCFEqual())
  {
    v11 = *(v8 + 8);

    return MovieSampleDataWriterCopyMinorVersion(v11, a4);
  }

  else if (FigCFEqual())
  {
    v12 = *(v8 + 8);

    return MovieSampleDataWriterCopyCompatibleBrands(v12, a4);
  }

  else if (FigCFEqual())
  {
    v16 = 0;
    v17 = 0;
    result = MovieSampleDataWriterGetFirstMediaDataAtomOffset(*(v8 + 8), 1, &v17);
    if (!result)
    {
      result = MovieSampleDataWriterGetLengthOfDefaultByteStream(*(v8 + 8), &v16);
      if (!result)
      {
        Mutable = CFArrayCreateMutable(a3, 2, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v14 = Mutable;
          result = FigCFArrayAppendInt64();
          if (result || (result = FigCFArrayAppendInt64(), result))
          {
            v15 = result;
            CFRelease(v14);
            return v15;
          }

          else
          {
            *a4 = v14;
          }
        }

        else
        {
          iffpcw_CopyProperty_cold_1(&v18);
          return v18;
        }
      }
    }
  }

  else
  {
    return 4294954512;
  }

  return result;
}

uint64_t iffpcw_SetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (FigCFEqual())
    {
      v7 = *(v6 + 8);

      return MovieSampleDataWriterSetMajorBrand(v7, a3);
    }

    else if (FigCFEqual())
    {
      v9 = *(v6 + 8);

      return MovieSampleDataWriterSetMinorVersion(v9, a3);
    }

    else if (FigCFEqual())
    {
      v10 = *(v6 + 8);

      return MovieSampleDataWriterSetCompatibleBrands(v10, a3);
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    iffpcw_SetProperty_cold_1(&v11);
    return v11;
  }
}

void iffpcw_AddPicture(uint64_t a1, int a2, const opaqueCMFormatDescription *a3, const __CFDictionary *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v10 = DerivedStorage;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      v26 = *MEMORY[0x1E695F060];
      CGSizeIfPresent = FigCFDictionaryGetCGSizeIfPresent();
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      v13 = FigCFDictionaryGetInt32IfPresent();
      v23 = a5;
      v25 = a3;
      v24 = a2;
      v14 = v10;
      if (a4)
      {
        Value = CFDictionaryGetValue(a4, @"PixelInformation");
      }

      else
      {
        Value = 0;
      }

      Int16IfPresent = FigCFDictionaryGetInt16IfPresent();
      v17 = FigCFDictionaryGetValue();
      FigCFDictionaryGetBooleanIfPresent();
      v18 = FigCFDictionaryGetValue();
      v19 = FigCFDictionaryGetValue();
      if ((v18 == 0) == (v19 == 0))
      {
        v20 = v19;
        if (v18 && Int16IfPresent)
        {
          iffpcw_AddPicture_cold_1(&v27);
        }

        else
        {
          if (!FigCFDictionaryGetCFIndexIfPresent())
          {
            v21 = 0;
            goto LABEL_14;
          }

          if (v18)
          {
            iffpcw_AddPicture_cold_2(&v27);
          }

          else
          {
            if (!Int16IfPresent)
            {
              v21 = 256;
LABEL_14:
              *(&v22 + 1) = v18;
              *&v22 = Value;
              IFFInformationAddPicture(*(v14 + 24), v24, v25, (4 * (CGSizeIfPresent != 0)) | (8 * (Int32IfPresent != 0)) | (16 * (v13 != 0)) | ((Int16IfPresent != 0) << 6) | ((v18 != 0) << 7) | v21 | 2, 0, v17, 0, 0, *&v26, *(&v26 + 1), v22, v20, v23);
              return;
            }

            iffpcw_AddPicture_cold_3(&v27);
          }
        }
      }

      else
      {
        iffpcw_AddPicture_cold_4(&v27);
      }
    }

    else
    {
      iffpcw_AddPicture_cold_6(&v27);
    }
  }

  else
  {
    iffpcw_AddPicture_cold_7(&v27);
  }
}

uint64_t iffpcw_CopyPictureProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a5)
    {
      return 4294954512;
    }

    v8 = 661;
  }

  else
  {
    v8 = 660;
  }

  v10 = v5;
  v11 = v6;
  iffpcw_CopyPictureProperty_cold_1(v8, &v9);
  return v9;
}

void iffpcw_AddThumbnailToPicture(uint64_t a1, int a2, int a3, const opaqueCMFormatDescription *a4, const __CFDictionary *a5, _DWORD *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a6)
    {
      v12 = DerivedStorage;
      FigCFDictionaryGetBooleanIfPresent();
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      v14 = FigCFDictionaryGetInt32IfPresent();
      if (a5)
      {
        Value = CFDictionaryGetValue(a5, @"PixelInformation");
      }

      else
      {
        Value = 0;
      }

      IFFInformationAddThumbnailToPicture(*(v12 + 24), a2, a3, a4, (8 * (Int32IfPresent != 0)) | (16 * (v14 != 0)) | 2, 0, 0, Value, a6);
    }

    else
    {
      iffpcw_AddThumbnailToPicture_cold_2(&v16);
    }
  }

  else
  {
    iffpcw_AddThumbnailToPicture_cold_3(&v16);
  }
}

uint64_t iffpcw_AddAuxiliaryImageToPicture(uint64_t a1, int a2, int a3, const opaqueCMFormatDescription *a4, const __CFDictionary *a5, _DWORD *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    iffpcw_AddAuxiliaryImageToPicture_cold_6(&v34);
    goto LABEL_25;
  }

  if (!a6)
  {
    iffpcw_AddAuxiliaryImageToPicture_cold_5(&v34);
    goto LABEL_25;
  }

  v32 = a3;
  v30 = DerivedStorage;
  v31 = a6;
  if (a5)
  {
    if (CFDictionaryContainsKey(a5, @"AuxiliaryImageType"))
    {
      Value = CFDictionaryGetValue(a5, @"AuxiliaryImageType");
      if (!Value || (v13 = CFGetTypeID(Value), v13 != CFStringGetTypeID()))
      {
        iffpcw_AddAuxiliaryImageToPicture_cold_2(&v34);
        goto LABEL_25;
      }

      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      if (!CStringPtrAndBufferToFree)
      {
        iffpcw_AddAuxiliaryImageToPicture_cold_1(&v34);
LABEL_25:
        v27 = v34;
        goto LABEL_20;
      }
    }

    else
    {
      CStringPtrAndBufferToFree = 0;
    }

    v29 = CStringPtrAndBufferToFree;
    if (CFDictionaryContainsKey(a5, @"AuxiliaryImageSubType"))
    {
      v17 = CFDictionaryGetValue(a5, @"AuxiliaryImageSubType");
      if (!v17 || (v18 = v17, v19 = CFGetTypeID(v17), v19 != CFDataGetTypeID()))
      {
        iffpcw_AddAuxiliaryImageToPicture_cold_3(&v34);
        goto LABEL_25;
      }

      BytePtr = CFDataGetBytePtr(v18);
      Length = CFDataGetLength(v18);
    }

    else
    {
      Length = 0;
      BytePtr = 0;
    }
  }

  else
  {
    Length = 0;
    BytePtr = 0;
    v29 = 0;
  }

  v33 = *MEMORY[0x1E695F060];
  CGSizeIfPresent = FigCFDictionaryGetCGSizeIfPresent();
  Int16IfPresent = FigCFDictionaryGetInt16IfPresent();
  v22 = FigCFDictionaryGetValue();
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  v24 = FigCFDictionaryGetInt32IfPresent();
  if (a5)
  {
    v25 = CFDictionaryGetValue(a5, @"PixelInformation");
  }

  else
  {
    v25 = 0;
  }

  IFFInformationAddAuxiliaryImageToPicture(*(v30 + 24), a2, v32, a4, (4 * (CGSizeIfPresent != 0)) | ((Int16IfPresent != 0) << 6) | (8 * (Int32IfPresent != 0)) | (16 * (v24 != 0)), 0, v22, 0, *&v33, *(&v33 + 1), 0, v29, BytePtr, Length, v25, v31);
  v27 = v26;
LABEL_20:
  free(0);
  return v27;
}

void iffpcw_AddGroup(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (!a2)
  {
    iffpcw_AddGroup_cold_1(&v11);
    return;
  }

  v7 = DerivedStorage;
  if (FigCFEqual())
  {
    v8 = 1937007986;
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    v8 = 1634497650;
LABEL_6:
    IFFInformationAddGroup(*(v7 + 24), v8, &v10);
    if (a4)
    {
      if (!v9)
      {
        *a4 = v10;
      }
    }

    return;
  }

  fig_log_get_emitter();

  FigSignalErrorAtGM();
}

void iffpcw_AddPictureToGroup(uint64_t a1, int a2, int a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);

  IFFInformationAddPictureToGroup(v5, a2, a3);
}

void iffpcw_AddGroupProperties(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);

  IFFInformationAddPropertiesToGroup(v5, a2, a3);
}

void iffpcw_AddGroupToGroup(uint64_t a1, int a2, int a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);

  IFFInformationAddGroupToGroup(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{

  return IFFInformationGetItemExtents(v17, &a17, &a15, &a14, &a13, &a12);
}

uint64_t FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (_MergedGlobals_17 != -1)
  {
    FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_3(Instance, v3);
  }

  else if (!FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_2(&v9))
  {
    return v9;
  }

  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = 0;
  }

  v5[2] = v6;
  v7 = FigXPCServerAssociateCopiedObjectWithNeighborProcess();
  if (v7)
  {
    CFRelease(v5);
  }

  return v7;
}

BOOL FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(const void *a1)
{
  result = 0;
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    if (v1 == FigPlaybackCoordinatorGetTypeID())
    {
      return 1;
    }
  }

  return result;
}

uint64_t serverXPCCoordinator_handleEndSuspensionProposingNewTime(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  int64 = xpc_dictionary_get_int64(xdict, "SuspensionID");
  FigXPCMessageGetCMTime();
  Value = CFDictionaryGetValue(*(a2 + 40), int64);
  if (Value)
  {
    v7 = Value;
    CFRetain(Value);
    CFDictionaryRemoveValue(*(a2 + 40), int64);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8)
    {
      v13 = v11;
      v14 = v12;
      v9 = v8(a1, v7, &v13);
    }

    else
    {
      v9 = 4294954514;
    }

    CFRelease(v7);
  }

  else
  {
    serverXPCCoordinator_handleEndSuspensionProposingNewTime_cold_1(&v13);
    return v13;
  }

  return v9;
}

uint64_t serverXPCCoordinator_handleSetWeakMediumAndCallbacks(uint64_t a1, uint64_t a2, void *a3, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v8 = *(a2 + 24);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 24) = 0;
  }

  if (FigPlaybackCoordinatorServerMediumGetTypeID_sRegisterFigPlaybackCoordinatorServerMediumTypeOnce != -1)
  {
    serverXPCCoordinator_handleSetWeakMediumAndCallbacks_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (Instance)
  {
    *(Instance + 32) = 1;
    *(Instance + 40) = FigSimpleMutexCreate();
    v10[2] = xpc_retain(a3);
    v10[3] = uint64;
  }

  else if (!serverXPCCoordinator_handleSetWeakMediumAndCallbacks_cold_2(&v15))
  {
    return v15;
  }

  v14[0] = 0;
  v14[1] = 0;
  v14[2] = coordinatorServerMedium_broadcastTimelineState;
  v14[3] = coordinatorServerMedium_broadcastParticipantState;
  v14[4] = coordinatorServerMedium_asynchronouslyReloadTimelineState;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v11)
  {
    v12 = v11(a1, v10, v14);
    if (!v12)
    {
      *(a2 + 24) = v10;
      return v12;
    }
  }

  else
  {
    v12 = 4294954514;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

uint64_t serverXPCCoordinator_handleCopyParticipantSnapshots(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v2)
  {
    return 4294954514;
  }

  v3 = v2(a1, &cf);
  v4 = cf;
  if (v3)
  {
    v5 = v3;
    if (!cf)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v5 = FigXPCMessageSetTimelineCoordinatorParticipantSnapshots();
  v4 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v4);
  }

  return v5;
}

uint64_t serverXPCCoordinator_handleDisconnectFromMedium(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t serverXPCCoordinator_handleAsyncReloadCompletion(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "FetchID");
  if (int64)
  {
    if (*(a1 + 24))
    {
      v4 = int64;
      FigSimpleMutexLock();
      v5 = *(a1 + 24);
      if (v4 == v5[6])
      {
        v6 = v5[7];
        v7 = v5[8];
        v5[6] = 0;
        v5[7] = 0;
        v5[8] = 0;
        FigSimpleMutexUnlock();
        if (v7)
        {
          v7(v6);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      return 0;
    }

    else
    {
      serverXPCCoordinator_handleAsyncReloadCompletion_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    serverXPCCoordinator_handleAsyncReloadCompletion_cold_2(&v10);
    return v10;
  }
}

uint64_t FigXPCPlaybackCoordinatorServerStartAsSubserver(uint64_t a1)
{
  if (gPlaybackCoordinatorServer)
  {
    FigXPCPlaybackCoordinatorServerStartAsSubserver_cold_1(&v3);
    return v3;
  }

  if (!a1)
  {
    FigXPCPlaybackCoordinatorServerStartAsSubserver_cold_2(&v3);
    return v3;
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __FigXPCPlaybackCoordinatorServerStartAsSubserver_block_invoke;
  v2[3] = &__block_descriptor_tmp_3;
  v2[4] = a1;
  if (FigXPCPlaybackCoordinatorServerStartAsSubserver_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigXPCPlaybackCoordinatorServerStartAsSubserver_onceToken, v2);
  return 0;
}

uint64_t __ServedPlaybackCoordinatorStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA440 = result;
  return result;
}

double servedPlaybackCoordinatorState_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void servedPlaybackCoordinatorState_Finalize(void *a1)
{
  v2 = a1[2];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v3)
  {
    v3(v2);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
    a1[3] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

__CFString *servedPlaybackCoordinatorState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"ServedPlaybackCoordinatorState %p", a1);
  return Mutable;
}

uint64_t registerFigPlaybackCoordinatorServerMediumType()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackCoordinatorServerMediumID = result;
  return result;
}

double FigPlaybackCoordinatorServerMedium_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t FigPlaybackCoordinatorServerMedium_Finalize(void *a1)
{
  coordinatorServerMedium_cancelOutstandingFetchAndRecordNewCallback(a1, 0, 0, 0);
  FigXPCRelease();

  return FigSimpleMutexDestroy();
}

uint64_t coordinatorServerMedium_cancelOutstandingFetchAndRecordNewCallback(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  FigSimpleMutexLock();
  if (a1[8])
  {
    v8 = a1[7];
  }

  else
  {
    v8 = 0;
  }

  v11 = a1[8];
  a1[7] = a2;
  a1[8] = a3;
  v9 = a1[4];
  a1[4] = v9 + 1;
  a1[6] = v9;
  if (a4)
  {
    *a4 = v9;
  }

  result = FigSimpleMutexUnlock();
  if (v11)
  {

    return v11(v8);
  }

  return result;
}

__CFString *FigPlaybackCoordinatorServerMedium_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackCoordinatorServerMedium %p>", a1);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return CMBaseObjectGetVTable();
}

void CEA608CustomRenderer::~CEA608CustomRenderer(CEA608CustomRenderer *this)
{
  *this = &unk_1F0ADB158;
  v2 = *(this + 13);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    CFRelease(v8);
  }

  CEA608Renderer::~CEA608Renderer(this);
}

{
  CEA608CustomRenderer::~CEA608CustomRenderer(this);

  JUMPOUT(0x19A8D5150);
}

uint64_t CEA608CustomRenderer::SetProperty(CEA608CustomRenderer *this, CFTypeRef cf1, const __CFData *a3)
{
  if (CFEqual(cf1, @"RenderCallback"))
  {
    BytePtr = CFDataGetBytePtr(a3);
    if (BytePtr && *BytePtr)
    {
      if (*(BytePtr + 1))
      {
        *(this + 11) = *BytePtr;
        *(this + 12) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      }
    }

    return 0;
  }

  else
  {

    return TextRendererBase::SetProperty(this, cf1, a3);
  }
}

uint64_t CEA608CustomRenderer::Render(CEA608CustomRenderer *this, CGContext *a2, const CGRect *a3, const CGRect *a4)
{
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  return (*(*this + 216))(this, a2, &v5, a3, a4);
}

void CEA608CustomRenderer::CallRenderCallback(CEA608CustomRenderer *this, uint64_t a2, const __CFDictionary *a3, CMTime *a4)
{
  if (*(this + 11))
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      v10 = *(this + 11);
      v11 = *&a4->value;
      epoch = a4->epoch;
      v10(a2, a3, &v11, v8);
      CFRelease(v9);
    }
  }
}

uint64_t CEA608CustomRenderer::RenderAtTime(CEA608CustomRenderer *this, CGContext *a2, CMTime *a3, const CGRect *a4, const CGRect *a5)
{
  v6 = *(this + 8);
  if (v6 == 1)
  {
    v24 = 0;
    theArray = 0;
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"F", *(this + 13));
    CFDictionarySetValue(Mutable, @"B", *(this + 15));
    CFDictionarySetValue(Mutable, @"U", *(this + 14));
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 0, Mutable, &v23);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CEA608CustomRenderer::BuildRowCommandArray(this);
    CEA608CustomRenderer::DetectCaptionElements(this, &theArray, &v24);
    v10 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v11 = theArray;
    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      v12 = 0;
      do
      {
        v13 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v13, @"R", ValueAtIndex);
        CFDictionarySetValue(v13, @"U", *(this + 14));
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFArrayAppendValue(v10, v13);
        if (v13)
        {
          CFRelease(v13);
        }

        ++v12;
      }

      while (CFArrayGetCount(v11) > v12);
    }

    v15 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v15, @"F", *(this + 13));
    CFDictionaryAddValue(v15, @"W", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 6, v15, &v23);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v17 = v24;
    if (v24 && CFArrayGetCount(v24) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v20 = CFArrayGetValueAtIndex(v17, v18);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v19, @"R", v20);
        CFArrayAppendValue(v16, v19);
        if (v19)
        {
          CFRelease(v19);
        }

        ++v18;
      }

      while (CFArrayGetCount(v17) > v18);
    }

    v21 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v21, @"F", *(this + 13));
    CFDictionaryAddValue(v21, @"C", v16);
    if (v16)
    {
      CFRelease(v16);
    }

    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 7, v21, &v23);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CEA608Renderer::Memory::SetDirty(*(this + 4), 0);
    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 1, 0, &v23);
    LOBYTE(v6) = *(this + 8);
  }

  *(this + 72) = v6;
  return 0;
}

void CEA608CustomRenderer::BuildRowCommandArray(CEA608CustomRenderer *this)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = 1;
  valuePtr = 1;
  v3 = *MEMORY[0x1E695E480];
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  v6 = @"a";
  allocator = *MEMORY[0x1E695E480];
  do
  {
    if (CEA608Renderer::MemoryRow::IsDirty(*(*(this + 4) + 8 * v2 + 8)))
    {
      CEA608CustomRenderer::EraseRow(this, valuePtr);
      if (CEA608Renderer::MemoryRow::IsDisplayable(*(*(this + 4) + 8 * valuePtr + 8)))
      {
        Mutable = CFAttributedStringCreateMutable(v3, 0);
        if (Mutable)
        {
          v8 = Mutable;
          CFAttributedStringBeginEditing(Mutable);
          v9 = CFStringCreateWithCharacters(v3, *(*(*(this + 4) + 8 * valuePtr + 8) + 256), 32);
          if (v9)
          {
            v10 = v9;
            v44.location = 0;
            v44.length = 0;
            CFAttributedStringReplaceString(v8, v44, v9);
            CFRelease(v10);
          }

          v11 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v12 = 1;
          do
          {
            longestEffectiveRange = 0;
            v39 = 0u;
            v37 = 0;
            CEA608Renderer::MemoryRow::GetStyleForCell(*(*(this + 4) + 8 * valuePtr + 8), v12, &longestEffectiveRange, &v37 + 1, &v37);
            v13 = CEA608Renderer::MemoryRow::GetNextStyleChange(*(*(this + 4) + 8 * valuePtr + 8), v12);
            CFDictionaryRemoveAllValues(v11);
            if (HIBYTE(v37))
            {
              v14 = v4;
            }

            else
            {
              v14 = v5;
            }

            CFDictionarySetValue(v11, @"d", v14);
            if (v37)
            {
              v15 = v4;
            }

            else
            {
              v15 = v5;
            }

            CFDictionarySetValue(v11, v6, v15);
            if (HIBYTE(v37) == 1)
            {
              if (longestEffectiveRange.location)
              {
                *components = vcvtq_f64_f32(*longestEffectiveRange.location);
                v42 = vcvtq_f64_f32(*(longestEffectiveRange.location + 8));
                v16 = CGColorCreate(*(this + 16), components);
                if (v16)
                {
                  v17 = v16;
                  CFDictionarySetValue(v11, @"t", v16);
                  CGColorRelease(v17);
                }
              }

              if (longestEffectiveRange.length)
              {
                *components = vcvtq_f64_f32(*longestEffectiveRange.length);
                v42 = vcvtq_f64_f32(*(longestEffectiveRange.length + 8));
                v18 = CGColorCreate(*(this + 16), components);
                if (v18)
                {
                  v19 = v18;
                  CFDictionarySetValue(v11, @"b", v18);
                  CGColorRelease(v19);
                }
              }

              if (DWORD1(v39) == 1)
              {
                v20 = v4;
              }

              else
              {
                v20 = v5;
              }

              CFDictionarySetValue(v11, @"i", v20);
              if (v39 == 1)
              {
                v21 = v4;
              }

              else
              {
                v21 = v5;
              }

              CFDictionarySetValue(v11, @"u", v21);
              if (DWORD2(v39) == 1)
              {
                v22 = v4;
              }

              else
              {
                v22 = v5;
              }

              CFDictionarySetValue(v11, @"f", v22);
            }

            v45.location = v12 - 1;
            v45.length = v13 - v12;
            CFAttributedStringSetAttributes(v8, v45, v11, 1u);
            v12 = v13;
          }

          while (v13 < 33);
          CFAttributedStringEndEditing(v8);
          if (v11)
          {
            CFRelease(v11);
          }

          v3 = allocator;
          value = CFNumberCreate(allocator, kCFNumberSInt8Type, &valuePtr);
          if (value)
          {
            Length = CFAttributedStringGetLength(v8);
            v24 = 0;
            do
            {
              longestEffectiveRange.location = 0;
              longestEffectiveRange.length = 0;
              v46.length = Length - v24;
              v46.location = v24;
              AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(v8, v24, @"d", v46, &longestEffectiveRange);
              if (CFBooleanGetValue(AttributeAndLongestEffectiveRange))
              {
                v26 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v26)
                {
                  v27 = v26;
                  v28 = v6;
                  v29 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (v29)
                  {
                    v30 = v29;
                    CFDictionarySetValue(v27, @"F", *(this + 13));
                    CFDictionarySetValue(v27, @"B", *(this + 15));
                    CFDictionarySetValue(v27, @"U", *(this + 14));
                    FigCFDictionarySetInt32();
                    FigCFDictionarySetInt32();
                    v31 = CFAttributedStringCreateWithSubstring(v3, v8, longestEffectiveRange);
                    CFDictionarySetValue(v27, @"S", v31);
                    CFRelease(v31);
                    ++longestEffectiveRange.location;
                    v32 = CFNumberCreate(allocator, kCFNumberCFIndexType, &longestEffectiveRange);
                    CFDictionarySetValue(v30, @"x", v32);
                    v33 = v32;
                    v3 = allocator;
                    CFRelease(v33);
                    CFDictionarySetValue(v30, @"y", value);
                    CFDictionarySetValue(v27, @"L", v30);
                    CFRelease(v30);
                    ValueAtIndex = CFArrayGetValueAtIndex(*(this + 17), valuePtr - 1);
                    CFArrayAppendValue(ValueAtIndex, v27);
                  }

                  CFRelease(v27);
                  v6 = v28;
                }
              }

              v24 += longestEffectiveRange.length;
            }

            while (v24 < Length);
            CFSetAddValue(*(this + 18), value);
            CFRelease(value);
          }

          CFRelease(v8);
        }
      }
    }

    v2 = ++valuePtr;
  }

  while (valuePtr < 16);
}

void CEA608CustomRenderer::DetectCaptionElements(CEA608CustomRenderer *this, const __CFArray **a2, const __CFArray **a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2, a3);
  v43 = v4;
  v44 = v5;
  v52 = *MEMORY[0x1E69E9840];
  v50 = v3;
  Count = CFArrayGetCount(*(v3 + 136));
  bzero(v51, 0x3C00uLL);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Count >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v50 + 136), v9);
      v12 = CFArrayGetCount(ValueAtIndex);
      if (v12 >= 1)
      {
        v13 = v12;
        v14 = 0;
        v15 = &v51[2 * v10];
        do
        {
          v16 = CFArrayGetValueAtIndex(ValueAtIndex, v14);
          v53.origin.x = CEA608CustomRenderer::GetCellRectFromCommandData(v16, v16);
          *v15 = v53;
          if (!CGRectIsNull(v53))
          {
            CFArrayAppendValue(Mutable, v15);
          }

          ++v14;
          ++v15;
        }

        while (v13 != v14);
        v10 += v14;
      }

      ++v9;
    }

    while (v9 != Count);
  }

  v17 = CFArrayGetCount(Mutable);
  if (v17 > 1)
  {
    v18 = v17;
    while (2)
    {
      v19 = 0;
LABEL_13:
      v20 = CFArrayGetValueAtIndex(Mutable, v19++);
      v21 = v19;
      while (1)
      {
        v22 = CFArrayGetValueAtIndex(Mutable, v21);
        if (CEA608CustomRenderer::DoesRectIntersectOrTounchRect(v22, *v20, *v22))
        {
          break;
        }

        if (++v21 >= v18)
        {
          if (v19 < v18 - 1)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }

      *v20 = CGRectUnion(*v20, *v22);
      CFArrayRemoveValueAtIndex(Mutable, v21);
      v18 = CFArrayGetCount(Mutable);
      if (v18 > 1)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
  v23 = MEMORY[0x1E695E9C0];
  theArray = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  v46 = CFArrayCreateMutable(v7, 0, v23);
  v45 = CFArrayGetCount(Mutable);
  if (v45 >= 1)
  {
    v24 = 0;
    v25 = MEMORY[0x1E695E9C0];
    do
    {
      v26 = CFArrayCreateMutable(v7, 0, v25);
      v49 = v24;
      v27 = CFArrayGetValueAtIndex(Mutable, v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v54.origin.x = *v27;
      v54.origin.y = v29;
      v54.size.width = v30;
      v54.size.height = v31;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v54);
      CFArrayAppendValue(theArray, DictionaryRepresentation);
      v55.origin.x = v28;
      v55.origin.y = v29;
      v55.size.width = v30;
      v55.size.height = v31;
      for (i = CGRectGetMinY(v55); ; ++i)
      {
        v56.origin.x = v28;
        v56.origin.y = v29;
        v56.size.width = v30;
        v56.size.height = v31;
        if (i >= CGRectGetMaxY(v56))
        {
          break;
        }

        v33 = CFArrayCreateMutable(v7, 0, v25);
        v34 = CFArrayGetValueAtIndex(*(v50 + 136), i);
        v35 = CFArrayGetCount(v34);
        if (v35 >= 1)
        {
          v36 = v35;
          for (j = 0; j != v36; ++j)
          {
            v38 = CFArrayGetValueAtIndex(v34, j);
            v57.origin.x = CEA608CustomRenderer::GetCellRectFromCommandData(v38, v38);
            x = v57.origin.x;
            y = v57.origin.y;
            width = v57.size.width;
            height = v57.size.height;
            if (!CGRectIsNull(v57))
            {
              v58.origin.x = v28;
              v58.origin.y = v29;
              v58.size.width = v30;
              v58.size.height = v31;
              v59.origin.x = x;
              v59.origin.y = y;
              v59.size.width = width;
              v59.size.height = height;
              if (CGRectContainsRect(v58, v59))
              {
                CFArrayAppendValue(v33, v38);
              }
            }
          }
        }

        CFArrayAppendValue(v26, v33);
        if (v33)
        {
          CFRelease(v33);
        }
      }

      CFArrayAppendValue(v46, v26);
      if (v26)
      {
        CFRelease(v26);
      }

      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }

      v24 = v49 + 1;
    }

    while (v49 + 1 != v45);
  }

  *v43 = theArray;
  *v44 = v46;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void CEA608CustomRenderer::EraseRow(CFArrayRef *this, unsigned __int8 a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
  if (CFSetContainsValue(this[18], v3))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this[17], valuePtr - 1);
    CFArrayRemoveAllValues(ValueAtIndex);
    CFSetRemoveValue(this[18], v3);
  }

  CFRelease(v3);
}

double CEA608CustomRenderer::GetCellRectFromCommandData(CEA608CustomRenderer *this, CFDictionaryRef theDict)
{
  v3 = *MEMORY[0x1E695F050];
  if (CFDictionaryGetValue(theDict, @"L"))
  {
    if (FigCFDictionaryGetInt32IfPresent())
    {
      if (FigCFDictionaryGetInt32IfPresent())
      {
        Value = CFDictionaryGetValue(theDict, @"S");
        if (Value)
        {
          if (CFAttributedStringGetLength(Value))
          {
            return -1;
          }
        }
      }
    }
  }

  return v3;
}

BOOL CEA608CustomRenderer::DoesRectIntersectOrTounchRect(CEA608CustomRenderer *this, CGRect a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = a2.size.height;
  v8 = a2.size.width;
  v9 = a2.origin.y;
  v10 = a2.origin.x;
  result = 0;
  if (!CGRectIsNull(a2))
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (!CGRectIsNull(v26))
    {
      v27.origin.x = v10;
      v27.origin.y = v9;
      v27.size.width = v8;
      v27.size.height = v7;
      MinX = CGRectGetMinX(v27);
      v28.size.height = height;
      v12 = MinX;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      rect = v28.size.height;
      if (v12 >= CGRectGetMinX(v28))
      {
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = rect;
        MaxX = CGRectGetMaxX(v30);
        v14 = v10;
        v15 = v9;
        v16 = v8;
        v17 = v7;
      }

      else
      {
        v29.origin.x = v10;
        v29.origin.y = v9;
        v29.size.width = v8;
        v29.size.height = v7;
        MaxX = CGRectGetMaxX(v29);
        v14 = x;
        v15 = y;
        v16 = width;
        v17 = rect;
      }

      if (MaxX >= CGRectGetMinX(*&v14))
      {
        v31.origin.x = v10;
        v31.origin.y = v9;
        v31.size.width = v8;
        v31.size.height = v7;
        MinY = CGRectGetMinY(v31);
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = rect;
        if (MinY >= CGRectGetMinY(v32))
        {
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = rect;
          MaxY = CGRectGetMaxY(v34);
          v20 = v10;
          v21 = v9;
          v22 = v8;
          v23 = v7;
        }

        else
        {
          v33.origin.x = v10;
          v33.origin.y = v9;
          v33.size.width = v8;
          v33.size.height = v7;
          MaxY = CGRectGetMaxY(v33);
          v20 = x;
          v21 = y;
          v22 = width;
          v23 = rect;
        }

        if (MaxY >= CGRectGetMinY(*&v20))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t cea708IsThereValidRowData(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 74;
  while (2)
  {
    for (i = 0; i != 1008; i += 24)
    {
      if (*(v2 + i))
      {
        return 1;
      }
    }

    ++v1;
    v2 += 1010;
    if (v1 != 15)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t FigCEA708CaptionDecoderCreate(int a1, CMFormatDescriptionRef desc, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a4)
  {
    v6 = a3 != 0;
  }

  else
  {
    v6 = 0;
  }

  if ((a3 != 0) != (a4 != 0))
  {
    FigCEA708CaptionDecoderCreate_cold_3(&v15);
    return v15;
  }

  if (!desc)
  {
    FigCEA708CaptionDecoderCreate_cold_2(&v15);
    return v15;
  }

  if (!a6)
  {
    FigCEA708CaptionDecoderCreate_cold_1(&v15);
    return v15;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v10 = MediaSubType;
  if (MediaSubType == 1635017571 || MediaSubType == 1664561208)
  {
    FigCaptionDecoderGetClassID();
    v11 = CMDerivedObjectCreate();
    if (!v11)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      bzero(DerivedStorage, 0x7516A8uLL);
      *DerivedStorage = v10;
      if (v6 && (*(DerivedStorage + 1) = a3, v13 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 2) = v13) == 0))
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      else
      {
        DerivedStorage[6] = 0;
        *(DerivedStorage + 4) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        cea708Initialize(DerivedStorage);
        v11 = 0;
        *a6 = 0;
      }
    }

    return v11;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void cea708Initialize(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 112;
  v4 = (a1 + 120);
  do
  {
    *(v3 + 121800 * v2 + 1) = -1;
    v5 = v4;
    v6 = 8;
    do
    {
      bzero(v5, 0x3B78uLL);
      v5 += 15224;
      --v6;
    }

    while (v6);
    ++v2;
    v4 += 121800;
  }

  while (v2 != 63);
  *(a1 + 88) = -1;
  *(a1 + 96) = 0;
  v7 = *(a1 + 104);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 104) = 0;
  }

  v8 = MEMORY[0x1E6960C70];
  *(a1 + 40) = *MEMORY[0x1E6960C70];
  *(a1 + 56) = *(v8 + 16);
  *(a1 + 64) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = 0x41F0000000000000;
}

void cea708_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[4];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[13];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[9];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFString *cea708_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CEA708CaptionDecoder %p>", a1);
  return Mutable;
}

uint64_t cea708_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      valuePtr = *(v7 + 24) + 1;
      v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      result = 0;
      *a4 = v8;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    cea708_CopyProperty_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t cea708_SetProperty(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (FigCFEqual())
    {
      valuePtr = 0;
      if (a3 && (v7 = CFGetTypeID(a3), v7 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        result = 0;
        if (*(v6 + 24) != valuePtr - 1)
        {
          *(v6 + 24) = valuePtr - 1;
        }
      }

      else
      {
        cea708_SetProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    cea708_SetProperty_cold_2(&v11);
    return v11;
  }

  return result;
}

uint64_t cea708_RenderToTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E6960C70];
  *&v142.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v142.epoch = v6;
  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    *&v141.value = v5;
    v141.epoch = v6;
    v118 = v5;
    *&v140.value = v5;
    v117 = v6;
    v140.epoch = v6;
    Count = CFArrayGetCount(v7);
    v8 = Count;
    if ((~a2->flags & 5) != 0)
    {
      lhs = *a2;
      rhs = *(DerivedStorage + 40);
      CMTimeSubtract(&time, &lhs, &rhs);
      v8 = (CMTimeGetSeconds(&time) * *(DerivedStorage + 84));
    }

    v9 = *(DerivedStorage + 64);
    if (v8 <= v9 + 1)
    {
      v8 = v9 + 1;
    }

    if (v8 >= Count)
    {
      v8 = Count;
    }

    v121 = v8;
    if (v9 < v8)
    {
      v127 = DerivedStorage + 121;
      v128 = DerivedStorage + 112;
      v125 = DerivedStorage;
      v126 = DerivedStorage + 192;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 72), v9);
        theArray = ValueAtIndex;
        v11 = ValueAtIndex ? CFArrayGetCount(ValueAtIndex) : 0;
        CMTimeMakeWithSeconds(&v141, (*(DerivedStorage + 64) / *(DerivedStorage + 84)), *(DerivedStorage + 48));
        time = *(DerivedStorage + 40);
        lhs = v141;
        CMTimeAdd(&v140, &time, &lhs);
        if (v11 >= 1)
        {
          break;
        }

LABEL_155:
        v9 = *(DerivedStorage + 64) + 1;
        *(DerivedStorage + 64) = v9;
        if (v9 >= v121)
        {
          goto LABEL_156;
        }
      }

      v12 = 0;
      v122 = v11;
      while (1)
      {
        v124 = v12;
        v13 = CFArrayGetValueAtIndex(theArray, v12);
        rhs.value = 0;
        dataPointerOut = 0;
        result = CMBlockBufferGetDataPointer(v13, 0, 0, &rhs, &dataPointerOut);
        if (result)
        {
          return result;
        }

        if (rhs.value >= 1)
        {
          break;
        }

LABEL_152:
        if (*(v128 + 121800 * *(DerivedStorage + 24)))
        {
          time = v140;
          cea708Render(DerivedStorage, &time.value);
        }

        v12 = v124 + 1;
        if (v124 + 1 == v122)
        {
          goto LABEL_155;
        }
      }

      v15 = dataPointerOut;
      v130 = &dataPointerOut[rhs.value];
      while (1)
      {
        v17 = (v15 + 1);
        v16 = *v15;
        v18 = v16 >> 5;
        if (v16 >> 5 == 7)
        {
          v18 = v15[1] & 0x3F;
          v17 = (v15 + 2);
        }

        if (!v18)
        {
          goto LABEL_152;
        }

        v19 = v16 & 0x1F;
        if ((v16 & 0x1F) != 0)
        {
          break;
        }

        v111 = 0;
LABEL_151:
        v15 = &v17[v111];
        if (&v17[v111] >= v130)
        {
          goto LABEL_152;
        }
      }

      v20 = 0;
      v21 = &v17[v19];
      v144[0] = 0;
      v135 = v18 - 1;
      v136 = &v17[v19];
      v22 = (v18 - 1);
      v23 = (v128 + 121800 * v22);
      v24 = v23 + 8;
      v133 = v17;
      v134 = (v127 + 121800 * v22);
      v129 = (v126 + 121800 * v22);
      v131 = DerivedStorage + 121800 * v22;
      v132 = v19;
      v25 = v19;
      while (!v20)
      {
        v26 = *v17;
        if (v26 > 0x1F)
        {
          if ((v26 & 0x80) != 0 && v26 <= 0x9F)
          {
            v20 = 0;
            switch(*v17)
            {
              case 0x80u:
              case 0x81u:
              case 0x82u:
              case 0x83u:
              case 0x84u:
              case 0x85u:
              case 0x86u:
              case 0x87u:
                if (v25 < 1)
                {
                  goto LABEL_78;
                }

                v20 = v24[15224 * (v26 & 7)];
                if (v20)
                {
                  v20 = 0;
                  v23[1] = v26 & 7;
                }

                goto LABEL_91;
              case 0x88u:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v89 = 0;
                v90 = 0;
                v91 = v17[1];
                v92 = v129;
                do
                {
                  if ((v91 >> v89))
                  {
                    v93 = v24;
                    v94 = &v24[15224 * v89];
                    v95 = v92;
                    v96 = 15;
                    do
                    {
                      bzero(v95, 0x3F2uLL);
                      v95 += 1010;
                      --v96;
                    }

                    while (v96);
                    *(v94 + 34) = 0;
                    v90 = 1;
                    v94[70] = 1;
                    v24 = v93;
                  }

                  ++v89;
                  v92 += 15224;
                }

                while (v89 != 8);
                v20 = 0;
                *v23 = v90;
                v144[0] = 1;
                DerivedStorage = v125;
                goto LABEL_140;
              case 0x89u:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v100 = 0;
                v101 = 0;
                v102 = v17[1];
                v103 = v134;
                do
                {
                  if ((v102 >> v100))
                  {
                    v101 = 1;
                    *v103 = 1;
                  }

                  ++v100;
                  v103 += 15224;
                }

                while (v100 != 8);
                v20 = 0;
                *v23 = v101;
                goto LABEL_131;
              case 0x8Au:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v79 = 0;
                v80 = 0;
                v81 = v17[1];
                v82 = v134;
                do
                {
                  if ((v81 >> v79))
                  {
                    *v82 = 0;
                    v80 = 1;
                  }

                  ++v79;
                  v82 += 15224;
                }

                while (v79 != 8);
                goto LABEL_124;
              case 0x8Bu:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v97 = 0;
                v80 = 0;
                v98 = v17[1];
                v99 = v134;
                do
                {
                  if ((v98 >> v97))
                  {
                    *v99 = !*v99;
                    v80 = 1;
                  }

                  ++v97;
                  v99 += 15224;
                }

                while (v97 != 8);
LABEL_124:
                v20 = 0;
                *v23 = v80;
                goto LABEL_131;
              case 0x8Cu:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v104 = 0;
                v105 = 0;
                v106 = v17[1];
                v107 = v24;
                do
                {
                  if ((v106 >> v104))
                  {
                    bzero(v107, 0x3B78uLL);
                    if (v104 == v23[1])
                    {
                      v23[1] = -1;
                    }

                    v105 = 1;
                  }

                  ++v104;
                  v107 += 15224;
                }

                while (v104 != 8);
                v20 = 0;
                *v23 = v105;
                v144[0] = 1;
LABEL_140:
                v21 = v136;
                goto LABEL_91;
              case 0x8Du:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v20 = 0;
LABEL_131:
                v144[0] = 1;
                goto LABEL_91;
              case 0x8Eu:
                if (v25 >= 1)
                {
                  goto LABEL_89;
                }

                goto LABEL_78;
              case 0x8Fu:
                if (v25 < 1)
                {
                  goto LABEL_78;
                }

                v23[1] = -1;
                v76 = v24;
                v77 = v24;
                v78 = 8;
                do
                {
                  bzero(v77, 0x3B78uLL);
                  v77 += 15224;
                  --v78;
                }

                while (v78);
                v20 = 0;
                *v23 = 1;
                v144[0] = 0;
                v24 = v76;
                goto LABEL_91;
              case 0x90u:
                if (v25 < 3 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v86 = v17[1];
                v87 = v17[2];
                v88 = &v24[15224 * v23[1]];
                v88[48] = v86 & 3;
                v88[49] = v87 & 7;
                v88[50] = (v86 >> 2) & 3;
                v88[51] = v87 >> 7;
                v88[52] = (v87 & 0x40) != 0;
                v88[53] = (v87 >> 3) & 7;
                v88[54] = v86 >> 4;
                v88[67] = 1;
                goto LABEL_148;
              case 0x91u:
                if (v25 < 4 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v83 = &v24[15224 * v23[1]];
                v84 = v17[2];
                v85 = v17[3];
                *(v83 + 55) = (v17[1] << 18) & 0x3000000 | ((v17[1] & 3) << 16) | (((v17[1] >> 2) & 3) << 8) | (v17[1] >> 4) & 3;
                *(v83 + 59) = (v84 << 18) & 0x3000000 | ((v84 & 3) << 16) | (((v84 >> 2) & 3) << 8) | (v84 >> 4) & 3;
                *(v83 + 63) = (((v85 >> 2) & 3) << 8) & 0xFFFCFFFC | ((v85 & 3) << 16) | (v85 >> 4) & 3;
                v83[67] = 1;
                v74 = 3;
                goto LABEL_149;
              case 0x92u:
                if (v25 < 3 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v108 = &v24[15224 * v23[1]];
                v109 = v17[1] & 0xF;
                v110 = v17[2] & 0x3F;
                if (v108[7] < v109)
                {
                  LOWORD(v109) = v108[7];
                }

                if (v108[8] < v110)
                {
                  LOWORD(v110) = v108[8];
                }

                *(v108 + 34) = v109 | (v110 << 8);
                v108[70] = 1;
LABEL_148:
                v74 = 2;
                goto LABEL_149;
              case 0x97u:
                if (v25 < 5 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v70 = v17[2];
                v71 = v17[3];
                v72 = v17[4];
                v73 = &v24[15224 * v23[1]];
                *(v73 + 10) = (v17[1] << 18) & 0x3000000 | ((v17[1] & 3) << 16) | (((v17[1] >> 2) & 3) << 8) | (v17[1] >> 4) & 3;
                *(v73 + 11) = (((v70 >> 2) & 3) << 8) & 0xFFFCFFFC | ((v70 & 3) << 16) | (v70 >> 4) & 3;
                *(v73 + 4) = ((v72 >> 4) << 48) | (((v71 >> 5) & 4 | (v70 >> 6)) << 56) | (((v72 >> 2) & 3) << 40) | ((v72 & 3) << 32) | (((v71 >> 6) & 1) << 24) | (((v71 >> 2) & 3) << 16) | (((v71 >> 4) & 3) << 8) | v71 & 3;
                v74 = 4;
LABEL_149:
                v144[0] = v74;
                break;
              case 0x98u:
              case 0x99u:
              case 0x9Au:
              case 0x9Bu:
              case 0x9Cu:
              case 0x9Du:
              case 0x9Eu:
              case 0x9Fu:
                if (v25 >= 7)
                {
                  v31 = v17[1];
                  v32 = v17[2];
                  v33 = v17[3];
                  v34 = v17[4];
                  v35 = v17[6];
                  v36 = v26 & 7;
                  v37 = v34 & 0xF;
                  v38 = v34 >> 4;
                  v39 = v17[5] & 0x3F;
                  v40 = (v35 >> 3) & 7;
                  if (v37 == 15)
                  {
                    v41 = 14;
                  }

                  else
                  {
                    v41 = v37;
                  }

                  if (v39 >= 0x29)
                  {
                    v42 = 41;
                  }

                  else
                  {
                    v42 = v17[5] & 0x3F;
                  }

                  v43 = v39 > 0x1F;
                  v44 = ((v42 + 1) >> 1);
                  if (v38 != 1)
                  {
                    v44 = 0.0;
                  }

                  v45 = &v24[15224 * v36];
                  v46 = *v45;
                  if (v40 || !*v45)
                  {
                    if (v40 <= 1)
                    {
                      v40 = 1;
                    }

                    v47 = kPREDEFINED_WINDOW_STYLES[v40 - 1];
                  }

                  else
                  {
                    v47 = *(v45 + 2);
                  }

                  *&lhs.value = v47;
                  v62 = v35 & 7;
                  if (v62 || !v46)
                  {
                    if (v62 <= 1)
                    {
                      v62 = 1;
                    }

                    v64 = &kPREDEFINED_PEN_STYLES + 19 * v62;
                    *&time.value = *(v64 - 19);
                    *(&time.flags + 3) = *(v64 - 1);
                    v63 = 1;
                  }

                  else
                  {
                    v63 = 0;
                    *&time.value = *(v45 + 3);
                    *(&time.flags + 3) = *(v45 + 63);
                  }

                  *v45 = 1;
                  v45[1] = (v31 & 0x20) != 0;
                  v45[2] = v31 & 7;
                  v45[3] = v38;
                  v45[4] = v32 >> 7;
                  v45[5] = v32 & 0x7F;
                  v45[6] = v33;
                  v45[7] = v41;
                  v45[8] = v42;
                  v45[9] = (v31 & 8) != 0;
                  v45[10] = (v31 & 0x10) != 0;
                  *(v45 + 2) = *&lhs.value;
                  *(v45 + 3) = *&time.value;
                  *(v45 + 63) = *(&time.flags + 3);
                  v45[67] = v63;
                  v45[70] = 1;
                  *(v45 + 3) = v43;
                  *(v45 + 2) = floor(v33 / 5.0 + 0.5) - v44;
                  *(v45 + 3) = floor((v32 & 0x7F) / 5.0 + 0.5);
                  v23[1] = v36;
                  v144[0] = 6;
                }

                goto LABEL_78;
              default:
                goto LABEL_91;
            }

            goto LABEL_91;
          }

          v65 = v135;
          v66 = DerivedStorage;
          v67 = v17;
          v68 = v25;
          v69 = 0;
          goto LABEL_77;
        }

        v27 = v23[1];
        if (v27 != -1)
        {
          if (*v17 <= 0xCu)
          {
            if (v26 == 8)
            {
              v56 = &v24[15224 * v23[1]];
              v57 = *(v56 + 34);
              if (v57 >= 0x100)
              {
                v58 = 0;
                *(v56 + 34) = v57 - 256;
                v56[70] = 1;
                v59 = v56 + 72;
                v60 = &v59[1010 * v57 + 24 * ((v57 - 256) >> 8)];
                *(v60 + 2) = 0;
                *(v60 + 18) = 0;
                *(v60 + 10) = 0;
                v61 = &v59[1010 * v57];
                while (!v61[v58 + 2])
                {
                  v58 += 24;
                  if (v58 == 1008)
                  {
                    goto LABEL_80;
                  }
                }

                *v61 = 0;
                goto LABEL_80;
              }

LABEL_89:
              v20 = 0;
              goto LABEL_90;
            }

            if (v26 != 12)
            {
              goto LABEL_89;
            }

            v28 = &v24[15224 * v23[1]];
            v29 = v28 + 72;
            v30 = 15;
            do
            {
              bzero(v29, 0x3F2uLL);
              v29 += 1010;
              --v30;
            }

            while (v30);
            v20 = 0;
            *(v28 + 34) = 0;
            v28[70] = 1;
          }

          else
          {
            if (v26 != 13)
            {
              if (v26 != 14)
              {
                v20 = v26 == 16;
LABEL_90:
                v144[0] = 0;
                goto LABEL_91;
              }

              v54 = &v24[15224 * v23[1]];
              if (*(v54 + 34) >= 0x100u)
              {
                v55 = *(v54 + 34);
                *(v54 + 34) = v55;
                v54[70] = 1;
                bzero(&v54[1010 * v55 + 72], 0x3F2uLL);
LABEL_80:
                v20 = 0;
                *v23 = 1;
                goto LABEL_90;
              }

              goto LABEL_89;
            }

            v48 = &v24[15224 * v23[1]];
            v49 = *(v48 + 34);
            LOBYTE(v50) = v49 + 1;
            *(v48 + 34) = (v49 + 1);
            v48[70] = 1;
            if (v48[7] < (v49 + 1))
            {
              v48[70] = 1;
              v50 = v49;
              *(v48 + 34) = v49;
              if (v49)
              {
                v51 = v131 + 15224 * v27;
                v52 = v49;
                do
                {
                  memcpy((v51 + 192), (v51 + 1202), 0x3F2uLL);
                  v51 += 1010;
                  --v52;
                }

                while (v52);
                v53 = v50;
              }

              else
              {
                v53 = 0;
              }

              bzero(&v48[1010 * v53 + 72], 0x3F2uLL);
            }

            v20 = 0;
            v48[1010 * v50 + 72] = 1;
          }

          *v23 = 1;
          v21 = v136;
          goto LABEL_90;
        }

LABEL_78:
        v20 = 0;
LABEL_91:
        v75 = v144[0] + 1;
        v17 += v75;
        v25 -= v75;
        if (v17 >= v21)
        {
          v111 = v132;
          v17 = v133;
          goto LABEL_151;
        }
      }

      v65 = v135;
      v69 = v20;
      v66 = DerivedStorage;
      v67 = v17;
      v68 = v25;
LABEL_77:
      cea708ProcessCharacters(v66, v65, v67, v68, v69, v144);
      goto LABEL_78;
    }

LABEL_156:
    if (Count == v9)
    {
      v112 = v118;
      *(DerivedStorage + 40) = v118;
      v113 = v117;
      *(DerivedStorage + 56) = v117;
      *(DerivedStorage + 64) = 0;
      v114 = *(DerivedStorage + 72);
      if (v114)
      {
        CFRelease(v114);
        v113 = v117;
        v112 = v118;
        *(DerivedStorage + 72) = 0;
      }

      *(DerivedStorage + 80) = 0x41F0000000000000;
      *&v142.value = v112;
      v142.epoch = v113;
    }

    else
    {
      CMTimeMakeWithSeconds(&time, (v9 / *(DerivedStorage + 84)), *(DerivedStorage + 48));
      epoch = time.epoch;
      v141 = time;
      v116 = *&time.value;
      time = *(DerivedStorage + 40);
      *&lhs.value = v116;
      lhs.epoch = epoch;
      CMTimeAdd(&v142, &time, &lhs);
    }
  }

  result = 0;
  if (a3)
  {
    *a3 = v142;
  }

  return result;
}

uint64_t cea708_ResetAtTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cea708Initialize(DerivedStorage);
  if (*(DerivedStorage + 121800 * *(DerivedStorage + 24) + 112))
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    cea708Render(DerivedStorage, &v5);
  }

  return 0;
}

void cea708Render(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v3 = a1 + 121800 * *(a1 + 24);
  v59 = v3 + 120;
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9C0]);
  allocator = v4;
  v6 = CFArrayCreateMutable(v4, 8, v5);
  v7 = 0;
  v57 = v6;
  v56 = *MEMORY[0x1E695E4D0];
  v55 = *MEMORY[0x1E695E4C0];
  v8 = v3 + 199;
  v53 = v3;
  v9 = (v3 + 194);
  v64 = v2;
  do
  {
    v65 = v59 + 15224 * v7;
    if (*(v65 + 1))
    {
      v62 = v7;
      theArray = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      v10 = 0;
      v11 = 0x80000000;
      v12 = 0x7FFFFFFF;
      v60 = v9;
      v61 = v8;
      v13 = 0x80000000;
      do
      {
        if (*(v65 + 72 + 1010 * v10))
        {
          v66 = v13;
          v67 = v12;
          v68 = v11;
          v14 = *(v65 + 24);
          v69 = (*(v65 + 16) + 1.0);
          v15 = (v14 + v10 + 1.0);
          v16 = *(v2 + 32);
          v75 = 0;
          memset(v74, 0, sizeof(v74));
          bzero(&v72, 0x31EuLL);
          bzero(v71, 0x2A0uLL);
          v17 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = v8;
          do
          {
            if (*(v22 - 5))
            {
              if (!v20)
              {
                v21 = v18;
              }

              if (*(v22 - 1))
              {
                v23 = v20;
                if (v19)
                {
                  v71[2 * v19 - 1] = v20 - v71[2 * v19 - 2];
                }

                v24 = &v72 + 19 * v19;
                *v24 = *v22;
                *(v24 + 15) = *(v22 + 15);
                v71[2 * v19++] = v20;
              }

              else
              {
                v23 = v20;
              }

              *(v74 + v23) = *(v22 - 3);
              ++v20;
            }

            else if (v20)
            {
              v71[2 * v19 - 1] = v20 - v71[2 * v19 - 2];
              CommandData = cea708CreateCommandData(allocator, v74, v20, v19, &v72, v71, (v21 + v69), v15, v16);
              CFArrayAppendValue(v17, CommandData);
              if (CommandData)
              {
                CFRelease(CommandData);
              }

              v20 = 0;
              v19 = 0;
            }

            ++v18;
            v22 += 24;
          }

          while (v18 != 42);
          if (v20)
          {
            v71[2 * v19 - 1] = v20 - v71[2 * v19 - 2];
            v26 = cea708CreateCommandData(allocator, v74, v20, v19, &v72, v71, (v21 + v69), v15, v16);
            CFArrayAppendValue(v17, v26);
            if (v26)
            {
              CFRelease(v26);
            }
          }

          v2 = v64;
          v12 = v67;
          v13 = v66;
          if (v17)
          {
            if (CFArrayGetCount(v17))
            {
              CFArrayAppendValue(theArray, v17);
            }

            CFRelease(v17);
          }

          v27 = 0;
          v28 = 0;
          v29 = 0x7FFFFFFF;
          v30 = 0x80000000;
          v31 = v9;
          do
          {
            v33 = *v31;
            v31 += 24;
            v32 = v33;
            if (v29 >= v27)
            {
              v34 = v27;
            }

            else
            {
              v34 = v29;
            }

            if (v30 <= v27)
            {
              v35 = v27;
            }

            else
            {
              v35 = v30;
            }

            if (v32)
            {
              v29 = v34;
              v30 = v35;
              v28 = 1;
            }

            ++v27;
          }

          while (v27 != 42);
          if (v67 < v29)
          {
            v29 = v67;
          }

          v11 = v68;
          if (v68 > v30)
          {
            v30 = v68;
          }

          if (v28)
          {
            v11 = v30;
            v12 = v29;
          }

          if (v66 <= v10)
          {
            v13 = v10;
          }
        }

        ++v10;
        v8 += 1010;
        v9 += 1010;
      }

      while (v10 != 15);
      v8 = v61;
      v7 = v62;
      v9 = v60;
      if (theArray && CFArrayGetCount(theArray))
      {
        v36 = *(v2 + 32);
        v37 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CGColor = cea708CreateCGColor(v36, (v65 + 40));
        v39 = cea708CreateCGColor(v36, (v65 + 44));
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v37, @"U", @"cells");
        FigCFDictionarySetCGRect();
        CFDictionaryAddValue(v37, @"C", CGColor);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v37, @"G", v39);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (*(v65 + 35))
        {
          v40 = v56;
        }

        else
        {
          v40 = v55;
        }

        CFDictionarySetValue(v37, @"O", v40);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (v39)
        {
          CFRelease(v39);
        }

        if (CGColor)
        {
          CFRelease(CGColor);
        }

        CFArrayAppendValue(v57, v37);
        if (v37)
        {
          CFRelease(v37);
        }

        v41 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v41, @"R", theArray);
        CFRelease(theArray);
        CFArrayAppendValue(Mutable, v41);
        if (v41)
        {
          CFRelease(v41);
        }
      }
    }

    ++v7;
    v8 += 15224;
    v9 += 15224;
  }

  while (v7 != 8);
  CFArrayGetCount(v57);
  v42 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v42, @"F", @"c708");
  CFDictionaryAddValue(v42, @"W", v57);
  if (*(v2 + 8))
  {
    v43 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v43)
    {
      v44 = v43;
      v45 = *(v2 + 8);
      v72 = *a2;
      v73 = *(a2 + 2);
      v45(6, v42, &v72, v43);
      CFRelease(v44);
    }
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (Mutable)
  {
    CFArrayGetCount(Mutable);
  }

  v46 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v46, @"F", @"c708");
  CFDictionaryAddValue(v46, @"C", Mutable);
  if (*(v2 + 8))
  {
    v47 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v47)
    {
      v48 = v47;
      v49 = *(v2 + 8);
      v72 = *a2;
      v73 = *(a2 + 2);
      v49(7, v46, &v72, v47);
      CFRelease(v48);
    }
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*(v2 + 8))
  {
    v50 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v50)
    {
      v51 = v50;
      v52 = *(v2 + 8);
      v72 = *a2;
      v73 = *(a2 + 2);
      v52(1, 0, &v72, v50);
      CFRelease(v51);
    }
  }

  *(v53 + 112) = 0;
}

__CFDictionary *cea708CreateCommandData(const __CFAllocator *a1, const UniChar *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9)
{
  v13 = a3;
  v14 = CFStringCreateWithCharacters(a1, a2, a3);
  allocator = a1;
  Mutable = CFAttributedStringCreateMutable(a1, v13);
  CFAttributedStringBeginEditing(Mutable);
  v33 = Mutable;
  v34.location = 0;
  v34.length = 0;
  CFAttributedStringReplaceString(Mutable, v34, v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (a4 >= 1)
  {
    v16 = *MEMORY[0x1E695E4D0];
    v17 = *MEMORY[0x1E695E4C0];
    v18 = a4;
    v19 = (a5 + 7);
    v20 = a6 + 8;
    do
    {
      CGColor = cea708CreateCGColor(a9, v19);
      v22 = cea708CreateCGColor(a9, v19 + 4);
      v23 = cea708CreateCGColor(a9, v19 + 8);
      v24 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v24, @"t", CGColor);
      CFDictionarySetValue(v24, @"b", v22);
      CFDictionarySetValue(v24, @"e", v23);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (*(v19 - 3))
      {
        v25 = v16;
      }

      else
      {
        v25 = v17;
      }

      CFDictionarySetValue(v24, @"u", v25);
      if (*(v19 - 4))
      {
        v26 = v16;
      }

      else
      {
        v26 = v17;
      }

      CFDictionarySetValue(v24, @"i", v26);
      CFDictionarySetValue(v24, @"d", v16);
      CGColorRelease(v23);
      CGColorRelease(v22);
      CGColorRelease(CGColor);
      CFAttributedStringSetAttributes(v33, *(v20 - 8), v24, 1u);
      if (v24)
      {
        CFRelease(v24);
      }

      v20 += 16;
      v19 += 19;
      --v18;
    }

    while (v18);
  }

  CFAttributedStringEndEditing(v33);
  v27 = MEMORY[0x1E695E9D8];
  v28 = MEMORY[0x1E695E9E8];
  v29 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v30 = CFDictionaryCreateMutable(allocator, 0, v27, v28);
  CFDictionarySetValue(v30, @"S", v33);
  CFDictionarySetValue(v30, @"L", v29);
  if (v29)
  {
    CFRelease(v29);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v30;
}

CGColorRef cea708CreateCGColor(CGColorSpace *a1, unsigned __int8 *a2)
{
  components[4] = *MEMORY[0x1E69E9840];
  v2 = (a2[1] >> 1);
  components[0] = (*a2 >> 1);
  components[1] = v2;
  v3 = a2[3];
  v4 = 1.0;
  if (v3 == 2)
  {
    v4 = 0.5;
  }

  if (v3 == 3)
  {
    v4 = 0.0;
  }

  components[2] = (a2[2] >> 1);
  components[3] = v4;
  return CGColorCreate(a1, components);
}

__CFString *downloaderCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigStreamingDownloaderReportingModerator:");
  return Mutable;
}

void CEA608Parser::CEA608Parser(CEA608Parser *this, int a2, int (*a3)(uint64_t, uint64_t *, uint64_t *, __CFData *, __CFData *, void *), void *a4, CEA608Renderer *a5)
{
  TextParserBase::TextParserBase(this, a2, a3, a4);
  *v6 = &unk_1F0ADB398;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = a5;
  *(v6 + 96) = 0;
}

void CEA608Parser::~CEA608Parser(CEA608Parser *this)
{
  *this = &unk_1F0ADB398;
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  TextParserBase::~TextParserBase(this);
}

{
  CEA608Parser::~CEA608Parser(this);

  JUMPOUT(0x19A8D5150);
}

uint64_t CEA608Parser::NextInterestingTime(CEA608Parser *this, uint64_t a2, uint64_t *a3, int a4)
{
  if (a3)
  {
    v4 = 1173985215403 * *(this + 12);
    v5 = ((v4 >> 45) + (v4 >> 63));
    if (a4 < 0)
    {
      v5 = -v5;
    }

    *a3 = v5 + a2;
  }

  return 0;
}

uint64_t CEA608Parser::AdvanceToTime(CFDataRef *this, uint64_t a2)
{
  v4 = 30000 * a2;
  v5 = *(this + 12);
  Length = CFDataGetLength(this[3]);
  v7 = Length > 0;
  v9 = this + 4;
  v8 = this[4];
  v10 = v8 <= a2 && v8 + this[5] > a2;
  v11 = 0;
  v12 = v4 / v5;
  if (Length < 1 || v10)
  {
    v13 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v11 = (this[1])(v8 + this[5], &v35, &v34, 0, 0, this[2]);
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v14 = v34;
      if (v34 <= *(this + 12) / 2)
      {
        v14 = (*(this + 12) + (*(this + 12) >> 31)) >> 1;
      }

      v15 = v14 + v35;
      v13 = v35 <= a2 && v15 > a2;
      v7 = 1;
    }
  }

  if (v10 || !v7 || v13)
  {
    if (this[8] >= v12 || v11 != 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(this[3]);
      v20 = CFDataGetLength(this[3]);
      v21 = this[7];
      if (v21 >= v20)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v22 = this[8];
        do
        {
          if (v22 >= v12)
          {
            break;
          }

          if (v11)
          {
            break;
          }

          v35 = v21;
          v11 = CEA608Parser::ProcessCodePair(this, MutableBytePtr, &v35, v20, 0);
          v21 = v35;
          v22 = this[8] + 1001 * ((v35 - this[7]) / 2);
          this[7] = v35;
          this[8] = v22;
        }

        while (v21 < v20);
      }

      v23 = a2;
      if (!v7 || ((v23 = this[5] + *v9, v23 < a2) ? (v24 = v11 == 0) : (v24 = 0), v24))
      {
        v25 = (this[1])(v23, this + 32, this + 40, this[3], 0, this[2]);
        if (v25)
        {
          v11 = v25;
          goto LABEL_55;
        }

        v26 = this[3];
        v27 = 30000 * this[4] / *(this + 12);
        this[7] = 0;
        this[8] = v27;
        v28 = CFDataGetLength(v26);
        if (v28 >= 8 && (v29 = v28, v30 = CFDataGetMutableBytePtr(this[3]), v30[1] == 1952539747))
        {
          v31 = bswap32(*v30);
          if (v29 < v31)
          {
            v31 = v29;
          }

          if (v29 > v31)
          {
            CFDataSetLength(this[3], v31);
          }

          v11 = 0;
          this[7] = 8;
        }

        else
        {
          v11 = 0;
        }
      }

      else if (v21 == v20)
      {
        this[8] = v12;
      }

      if (this[8] < v12)
      {
        v7 = 1;
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_55;
    }
  }

  v17 = this[11];
  if (v17)
  {
    (*(*v17 + 208))(v17);
  }

  CFDataSetLength(this[3], 0);
  *v9 = 0;
  this[5] = 0;
  this[7] = 0;
  this[8] = 0;
LABEL_55:
  this[9] = v12;
  v32 = this[11];
  if (v32)
  {
    (*(*v32 + 24))(v32, v12);
  }

  return v11;
}

uint64_t CEA608Parser::ProcessCodePair(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4, int a5)
{
  result = 4294967246;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  v8 = a4;
  if (a4 < 1)
  {
    return result;
  }

  v9 = *a3;
  if (*a3 >= a4)
  {
    return result;
  }

  while (1)
  {
    if ((v9 & 1) == 0)
    {
      v12 = *(this + 11);
      if (v12)
      {
        (*(*v12 + 24))(v12, *(this + 8));
        v9 = *a3;
      }
    }

    v13 = a2[v9];
    if ((v13 & 0x70) == 0x10)
    {
      break;
    }

    v14 = v13 & 0x7F;
    if (v14 < 0x20)
    {
      if (a5 == 2 && v14 - 1 <= 0xE)
      {
        if (v9 + 1 < v8)
        {
          result = 0;
          *(this + 80) = 1;
          *a3 = v9 + 2;
          return result;
        }

        goto LABEL_30;
      }

LABEL_16:
      *a3 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        return 0;
      }

      v8 = v9 + 2;
      ++v9;
      goto LABEL_18;
    }

    if (*(this + 80))
    {
      goto LABEL_16;
    }

    *(this + 48) = 0;
    result = CEA608Parser::ProcessStandardCharacterCode(this, a2, a3, v8);
    if (result)
    {
      return result;
    }

    v9 = *a3;
    if (*a3 >= v8)
    {
      return 0;
    }

    v8 = v9 + 1;
LABEL_18:
    result = 4294967246;
    if (v8 < 1 || v9 >= v8)
    {
      return result;
    }
  }

  if (v9 + 1 >= v8)
  {
LABEL_30:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  *(this + 80) = 0;

  return CEA608Parser::ProcessControlCode(this, a2, a3, v8);
}

uint64_t CEA608Parser::ProcessControlCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 4294967246;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (a4 < 1)
  {
    return v4;
  }

  v5 = *a3;
  if (*a3 + 1 >= a4)
  {
    return v4;
  }

  v6 = a2[v5];
  v7 = a2[v5 + 1];
  v8 = v7 & 0x7F;
  if (__PAIR64__(*(this + 97), *(this + 96)) != __PAIR64__(v8, v6 & 0x7F))
  {
    *(this + 96) = v6 & 0x7F;
    *(this + 97) = v8;
    v9 = v6 & 0x77777777;
    if ((v6 & 0x77777777) == 0x11)
    {
      v11 = v7 & 0x70;
      if (v11 == 48)
      {
        return CEA608Parser::ProcessSpecialCharacterCode(this, a2, a3, a4);
      }

      if (v11 == 32)
      {
        return CEA608Parser::ProcessMidRowCode(this, a2, a3, a4);
      }

      if (v8 >= 0x40)
      {
        return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
      }
    }

    else
    {
      if (v9 != 16)
      {
        if ((v6 & 0x76 | 8) == 0x1A)
        {
          if ((v7 & 0x60) == 0x20)
          {
            return CEA608Parser::ProcessExtendedCharacterCode(this, a2, a3, a4);
          }

          if (v8 >= 0x40)
          {
            return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
          }

          goto LABEL_36;
        }

        if ((v6 & 0x76) == 0x14)
        {
          if ((v7 & 0x70) != 0x20)
          {
            if (v8 >= 0x40)
            {
              return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
            }

            goto LABEL_36;
          }
        }

        else
        {
          if (v9 == 22 && v8 >= 0x40)
          {
            return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
          }

          if (v9 != 23)
          {
            goto LABEL_36;
          }

          if (v8 - 33 > 2)
          {
            if (v8 - 45 <= 2)
            {
              return CEA608Parser::ProcessMidRowCode(this, a2, a3, a4);
            }

            if (v8 >= 0x40)
            {
              return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
            }

            goto LABEL_36;
          }
        }

        return CEA608Parser::ProcessMiscControlCode(this, a2, a3, a4);
      }

      if ((v7 & 0x70) == 0x20)
      {
        return CEA608Parser::ProcessMidRowCode(this, a2, a3, a4);
      }

      if ((v7 & 0x60) == 0x40)
      {
        return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
      }
    }

LABEL_36:
    v4 = 0;
    goto LABEL_37;
  }

  v4 = 0;
  *(this + 48) = 0;
LABEL_37:
  *a3 = v5 + 2;
  return v4;
}

uint64_t CEA608Parser::ProcessStandardCharacterCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        v6 = *a3;
        if (*a3 <= a4)
        {
          result = 0;
          if (a4)
          {
            if (v6 != a4)
            {
              v7 = a2[v6];
              *a3 = v6 + 1;
              result = *(this + 11);
              if (result)
              {
                (*(*result + 112))(result, 0, StandardCharacters[(v7 & 0x7F) - 32], 0);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CEA608Parser::ProcessMidRowCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 < 1)
  {
    return result;
  }

  v6 = *a3;
  if (*a3 + 1 >= a4)
  {
    return result;
  }

  v7 = a2[v6];
  v8 = v7 & 0x7F;
  v9 = a2[v6 + 1];
  v10 = v9 & 0x7F;
  *a3 = v6 + 2;
  v11 = v7 & 0x7E;
  if (v8 == 31 || v11 == 24)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v8 == 23 || v11 == 16)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13;
  }

  v16 = v7 & 0x77;
  v17 = v9 & 0x70;
  if (v16 == 16 && v17 == 32)
  {
    v18 = &AttributeCodes1 + 32 * (v10 - 32);
LABEL_20:
    v19 = 1;
    goto LABEL_33;
  }

  if (v16 == 17 && v17 == 32)
  {
    v19 = 0;
    v18 = (&MidRowCodes + 4 * (v10 - 32));
  }

  else
  {
    v20 = (v10 - 45);
    if ((v8 == 31 || v8 == 23) && v20 <= 2)
    {
      v18 = &AttributeCodes2 + 32 * v20;
      goto LABEL_20;
    }

    v19 = 0;
    v18 = &AttributeCodes1;
  }

LABEL_33:
  result = *(this + 11);
  if (result)
  {
    if (v19)
    {
      (*(*result + 120))(result, v15);
      result = *(this + 11);
    }

    (*(*result + 152))(result, v15, v18);
    return 0;
  }

  return result;
}

uint64_t CEA608Parser::ProcessPreambleAddressCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 4294967246;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (a4 < 1)
  {
    return v4;
  }

  v5 = *a3;
  if (*a3 + 1 >= a4)
  {
    return v4;
  }

  v6 = a2[v5];
  v7 = a2[v5 + 1] & 0x7F;
  *a3 = v5 + 2;
  if ((v6 & 0x78) == 0x18)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = -96;
  if (v7 < 0x60)
  {
    v9 = -64;
  }

  v10 = &(&(&PreambleAddressCodes)[2 * v9])[2 * v7];
  if (v7 <= 0x3F)
  {
    v10 = &PreambleAddressCodes;
  }

  v11 = v6 & 0x77;
  if (v11 > 19)
  {
    if (v11 > 21)
    {
      if (v11 == 22)
      {
        v12 = v7 >= 0x60;
        v13 = 7;
      }

      else
      {
        if (v11 != 23)
        {
LABEL_36:
          v13 = 1;
          goto LABEL_31;
        }

        v12 = v7 >= 0x60;
        v13 = 9;
      }
    }

    else
    {
      v12 = v7 >= 0x60;
      if (v11 == 20)
      {
        v13 = 14;
      }

      else
      {
        v13 = 5;
      }
    }

LABEL_29:
    if (v12)
    {
      ++v13;
    }

    goto LABEL_31;
  }

  if (v11 > 17)
  {
    v12 = v7 >= 0x60;
    if (v11 == 18)
    {
      v13 = 3;
    }

    else
    {
      v13 = 12;
    }

    goto LABEL_29;
  }

  if (v11 != 16)
  {
    if (v11 == 17)
    {
      v12 = v7 >= 0x60;
      v13 = 1;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v13 = 11;
LABEL_31:
  v14 = *(this + 11);
  if (v14)
  {
    (*(*v14 + 144))(v14, v8, v13, *v10, *(v10 + 8));
  }

  return 0;
}

uint64_t CEA608Parser::ProcessSpecialCharacterCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 4294967246;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (a4 < 1)
  {
    return v4;
  }

  v5 = *a3;
  if (*a3 + 1 >= a4)
  {
    return v4;
  }

  v6 = a2[v5] & 0x7F;
  v7 = a2[v5 + 1];
  *a3 = v5 + 2;
  v8 = v7 & 0x70;
  if (v6 == 17 && v8 == 48)
  {
    v9 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 32;
    v9 = 1;
    if (v6 != 25 || v8 != 48)
    {
      goto LABEL_12;
    }

    v9 = 2;
  }

  v12 = (v7 & 0x7F) - 48;
  v11 = SpecialCharacters[v12];
  v10 = SpecialCharactersTransparent[v12];
LABEL_12:
  v13 = *(this + 11);
  if (v13)
  {
    (*(*v13 + 112))(v13, v9, v11, v10 & 1);
  }

  return 0;
}

uint64_t CEA608Parser::ProcessExtendedCharacterCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      if (a4 >= 1)
      {
        v6 = *a3;
        if (*a3 + 1 < a4)
        {
          v7 = a2[v6] & 0x7F;
          v8 = a2[v6 + 1];
          *a3 = v6 + 2;
          v9 = v8 & 0x60;
          if (v7 == 18 && v9 == 32)
          {
            v10 = 1;
LABEL_8:
            v11 = &ExtendedCharacters1;
LABEL_13:
            v12 = v11[(v8 & 0x7F) - 32];
LABEL_14:
            result = *(this + 11);
            if (result)
            {
              (*(*result + 120))(result, v10);
              (*(**(this + 11) + 112))(*(this + 11), v10, v12, 0);
              return 0;
            }

            return result;
          }

          if (v7 == 19 && v9 == 32)
          {
            v10 = 1;
          }

          else
          {
            if (v7 == 26 && v9 == 32)
            {
              v10 = 2;
              goto LABEL_8;
            }

            v12 = 32;
            v10 = 1;
            if (v7 != 27 || v9 != 32)
            {
              goto LABEL_14;
            }

            v10 = 2;
          }

          v11 = &ExtendedCharacters2;
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t CEA608Parser::ProcessMiscControlCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      if (a4 >= 1)
      {
        v6 = *a3;
        if (*a3 + 1 < a4)
        {
          v7 = a2[v6];
          v8 = a2[v6 + 1];
          *a3 = v6 + 2;
          v9 = v7 & 0x7E;
          v10 = (v7 & 0x7F) == 0x1F || v9 == 28;
          v11 = v10 ? 2 : 1;
          v12 = (v7 & 0x7F) == 0x17 || v9 == 20;
          v13 = v12 ? 1 : v11;
          result = *(this + 11);
          if (result)
          {
            v14 = v8 & 0x7F;
            v15 = v14 - 32;
            switch(v14)
            {
              case ' ':
                (*(*result + 80))(result, v13);
                goto LABEL_39;
              case '!':
                if ((v7 & 0x77777777) == 0x14)
                {
                  (*(*result + 120))(result, v13);
                }

                goto LABEL_29;
              case '""':
              case '#':
LABEL_29:
                result = 0;
                if (v7 > 150)
                {
                  if (v7 != 159 && v7 != 151)
                  {
                    return result;
                  }
                }

                else if (v7 != 23 && v7 != 31)
                {
                  return result;
                }

                (*(**(this + 11) + 160))(*(this + 11), v13, v15);
LABEL_39:
                result = 0;
                break;
              case '$':
                (*(*result + 136))(result, v13);
                goto LABEL_39;
              case '%':
              case '&':
              case '\'':
                (*(*result + 88))(result, v13, (v14 - 35));
                goto LABEL_39;
              case '(':
                (*(*result + 168))(result, v13);
                goto LABEL_39;
              case ')':
                (*(*result + 96))(result, v13);
                goto LABEL_39;
              case '*':
                (*(*result + 192))(result, v13);
                goto LABEL_39;
              case '+':
                (*(*result + 200))(result, v13);
                goto LABEL_39;
              case ',':
                (*(*result + 176))(result, v13);
                goto LABEL_39;
              case '-':
                (*(*result + 128))(result, v13);
                goto LABEL_39;
              case '.':
                (*(*result + 184))(result, v13);
                goto LABEL_39;
              case '/':
                (*(*result + 104))(result, v13);
                goto LABEL_39;
              default:
                goto LABEL_39;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL CEA608Renderer::MemoryRow::IsDisplayable(CEA608Renderer::MemoryRow *this)
{
  if (*(*this + 16))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 31)
    {
      break;
    }

    v4 = *(*(this + ++v2) + 16);
  }

  while (v4 != 1);
  return v3 < 0x1F;
}

uint64_t CEA608Renderer::MemoryRow::GetStyleForCell(uint64_t result, unsigned int a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *a3 = DefaultStyle;
  *(a3 + 16) = unk_1E74787B0;
  v5 = *(result + 8 * a2 - 8);
  *a5 = *(v5 + 8) != 0;
  v6 = *(v5 + 16);
  *a4 = v6;
  if (a2 && (v6 & 1) != 0)
  {
    for (i = 1; i <= a2; ++i)
    {
      v8 = i - 1;
      v9 = *(result + 8 * v8);
      v10 = *v9;
      if (*v9)
      {
        v11 = v10[1];
        *a3 = *v10;
        *(a3 + 16) = v11;
        v9 = *(result + 8 * v8);
      }

      v12 = *(v9 + 8);
      if (v12)
      {
        if (*v12)
        {
          *a3 = *v12;
        }

        v13 = *(v12 + 8);
        if (v13)
        {
          *(a3 + 8) = v13;
        }

        v14 = *(v12 + 16);
        if (v14)
        {
          *(a3 + 16) = v14;
        }

        v15 = *(v12 + 20);
        if (v15)
        {
          *(a3 + 20) = v15;
        }

        v16 = *(v12 + 24);
        if (v16)
        {
          *(a3 + 24) = v16;
        }
      }
    }
  }

  return result;
}

uint64_t CEA608Renderer::MemoryRow::GetNextStyleChange(CEA608Renderer::MemoryRow *this, unsigned int a2)
{
  v2 = a2;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  CEA608Renderer::MemoryRow::GetStyleForCell(this, a2, &v15, &v14 + 1, &v14);
  while (++v2 <= 0x20u)
  {
    v4 = *(this + v2 - 1);
    v5 = *v4;
    if (*v4)
    {
      v6 = v5[1];
      v15 = *v5;
      v16 = v6;
    }

    v7 = *(v4 + 8);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = v15 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9 && (*v8 != *v15 || v8[1] != *(v15 + 4) || v8[2] != *(v15 + 8) || v8[3] != *(v15 + 12)))
      {
        return v2;
      }

      v10 = *(v7 + 8);
      v11 = !v10 || *(&v15 + 1) == 0;
      if (!v11 && (*v10 != **(&v15 + 1) || v10[1] != *(*(&v15 + 1) + 4) || v10[2] != *(*(&v15 + 1) + 8) || v10[3] != *(*(&v15 + 1) + 12)))
      {
        return v2;
      }

      if (*(v7 + 16) || *(v7 + 20))
      {
        return v2;
      }

      if (*(v7 + 24) || v14 == 0)
      {
        return v2;
      }
    }

    else if (v14)
    {
      return v2;
    }

    if (HIBYTE(v14) != *(v4 + 16))
    {
      return v2;
    }
  }

  return 33;
}

BOOL CEA608Renderer::MemoryRow::IsDirty(CEA608Renderer::MemoryRow *this)
{
  if (*(*this + 32))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 31)
    {
      break;
    }

    v4 = *(*(this + ++v2) + 32);
  }

  while (v4 != 1);
  return v3 < 0x1F;
}

void CEA608Renderer::Memory::~Memory(CEA608Renderer::Memory *this)
{
  v2 = 0;
  v3 = this + 16;
  do
  {
    v4 = *&v3[8 * v2];
    if (v4)
    {
      for (i = 0; i != 256; i += 8)
      {
        v6 = *(v4 + i);
        if (v6)
        {
          MEMORY[0x19A8D5150](v6, 0x1070C40BFE75829);
        }
      }

      MEMORY[0x19A8D5150](v4, 0x30C408693532ALL);
    }

    ++v2;
  }

  while (v2 != 15);
  v7 = *(this + 1);
  if (v7)
  {
    MEMORY[0x19A8D5140](v7, 0x1000C80BDFB0063);
  }
}

uint64_t CEA608Renderer::Memory::ShiftRows(uint64_t this, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  if (v2 >= 1)
  {
    LOBYTE(v3) = 0;
    v4 = (this + 16);
    do
    {
      if (a2 < 0)
      {
        v32 = *(this + 128);
        v33 = *v32;
        if (*(*v32 + 16))
        {
          goto LABEL_51;
        }

        v34 = v32 + 1;
        v35 = -1;
        v36 = v34;
        while (v35 != 30)
        {
          v37 = *v36++;
          ++v35;
          if (*(v37 + 16) == 1)
          {
            if (v35 < 0x1F)
            {
              goto LABEL_51;
            }

            break;
          }
        }

        if (*(v33 + 32))
        {
LABEL_51:
          v38 = 1;
        }

        else
        {
          v62 = 0;
          do
          {
            v63 = v62;
            if (v62 == 31)
            {
              break;
            }

            v64 = *(v34[v62++] + 32);
          }

          while (v64 != 1);
          v38 = v63 < 0x1F;
        }

        v39 = 0;
        v40 = *(this + 16);
        v41 = v40;
        do
        {
          v42 = v39++;
          v43 = *v41;
          if (*(*v41 + 16))
          {
            goto LABEL_64;
          }

          v44 = v41 + 1;
          v45 = -1;
          v46 = v44;
          while (v45 != 30)
          {
            v47 = *v46++;
            ++v45;
            if (*(v47 + 16) == 1)
            {
              if (v45 < 0x1F)
              {
                goto LABEL_64;
              }

              break;
            }
          }

          v41 = v4[v39];
          if (*(*v41 + 16))
          {
            goto LABEL_64;
          }

          v48 = 1;
          while (v48 != 32)
          {
            v49 = *(v41[v48++] + 16);
            if (v49 == 1)
            {
              if ((v48 - 2) < 0x1F)
              {
                goto LABEL_64;
              }

              break;
            }
          }

          if (*(v43 + 32))
          {
LABEL_64:
            v50 = 0;
            v41 = v4[v39];
            do
            {
              *(v41[v50++] + 32) = 1;
            }

            while (v50 != 32);
          }

          else
          {
            v51 = -1;
            while (v51 != 30)
            {
              v52 = *v44++;
              ++v51;
              if (*(v52 + 32) == 1)
              {
                if (v51 <= 0x1E)
                {
                  goto LABEL_64;
                }

                break;
              }
            }
          }

          v4[v42] = v41;
        }

        while (v39 != 14);
        v53 = 0;
        *(this + 128) = v40;
        do
        {
          v54 = v40[v53];
          v55 = *(v54 + 24);
          if (v55)
          {
            *v55 = 32;
          }

          if (*(v54 + 16))
          {
            v56 = 1;
          }

          else
          {
            v56 = *(v54 + 32);
          }

          *(v54 + 32) = v56 & 1;
          *v54 = 0;
          *(v54 + 8) = 0;
          *(v54 + 16) = 0;
          ++v53;
        }

        while (v53 != 32);
        if (v38)
        {
          v57 = 0;
          v58 = *(this + 128);
          do
          {
            *(*(v58 + v57) + 32) = 1;
            v57 += 8;
          }

          while (v57 != 256);
        }
      }

      else
      {
        v5 = *(this + 16);
        v6 = *v5;
        if (*(*v5 + 16))
        {
          goto LABEL_13;
        }

        v7 = v5 + 1;
        v8 = -1;
        v9 = v7;
        while (v8 != 30)
        {
          v10 = *v9++;
          ++v8;
          if (*(v10 + 16) == 1)
          {
            if (v8 < 0x1F)
            {
              goto LABEL_13;
            }

            break;
          }
        }

        if (*(v6 + 32))
        {
LABEL_13:
          v11 = 1;
        }

        else
        {
          v59 = 0;
          do
          {
            v60 = v59;
            if (v59 == 31)
            {
              break;
            }

            v61 = *(v7[v59++] + 32);
          }

          while (v61 != 1);
          v11 = v60 < 0x1F;
        }

        v12 = *(this + 128);
        v13 = 14;
        v14 = 13;
        do
        {
          v15 = v4[v13];
          v16 = *v15;
          if (*(*v15 + 16))
          {
            goto LABEL_26;
          }

          v17 = v15 + 1;
          v18 = -1;
          v19 = v17;
          while (v18 != 30)
          {
            v20 = *v19++;
            ++v18;
            if (*(v20 + 16) == 1)
            {
              if (v18 < 0x1F)
              {
                goto LABEL_26;
              }

              break;
            }
          }

          v21 = v4[v14];
          if (*(*v21 + 16))
          {
            goto LABEL_26;
          }

          v22 = 1;
          while (v22 != 32)
          {
            v23 = *(*(v21 + 8 * v22++) + 16);
            if (v23 == 1)
            {
              if ((v22 - 2) < 0x1F)
              {
                goto LABEL_26;
              }

              break;
            }
          }

          if (*(v16 + 32))
          {
LABEL_26:
            v24 = 0;
            v21 = v4[v14];
            do
            {
              *(*(v21 + v24) + 32) = 1;
              v24 += 8;
            }

            while (v24 != 256);
          }

          else
          {
            v25 = -1;
            while (v25 != 30)
            {
              v26 = *v17++;
              ++v25;
              if (*(v26 + 32) == 1)
              {
                if (v25 <= 0x1E)
                {
                  goto LABEL_26;
                }

                break;
              }
            }
          }

          v4[v13] = v21;
          --v14;
          --v13;
        }

        while (v13);
        *v4 = v12;
        do
        {
          v27 = *(v12 + v13);
          v28 = *(v27 + 24);
          if (v28)
          {
            *v28 = 32;
          }

          if (*(v27 + 16))
          {
            v29 = 1;
          }

          else
          {
            v29 = *(v27 + 32);
          }

          *(v27 + 32) = v29 & 1;
          *v27 = 0;
          *(v27 + 8) = 0;
          *(v27 + 16) = 0;
          v13 += 8;
        }

        while (v13 != 256);
        if (v11)
        {
          v30 = 0;
          v31 = *v4;
          do
          {
            *(*(v31 + v30) + 32) = 1;
            v30 += 8;
          }

          while (v30 != 256);
        }
      }

      v3 = (v3 + 1);
    }

    while (v3 < v2);
  }

  return this;
}

uint64_t CEA608Renderer::Memory::Erase(uint64_t this)
{
  for (i = 0; i != 15; ++i)
  {
    v2 = 0;
    v3 = *(this + 16 + 8 * i);
    do
    {
      v4 = *(v3 + v2);
      v5 = *(v4 + 24);
      if (v5)
      {
        *v5 = 32;
      }

      if (*(v4 + 16))
      {
        v6 = 1;
      }

      else
      {
        v6 = *(v4 + 32);
      }

      *(v4 + 32) = v6 & 1;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v2 += 8;
    }

    while (v2 != 256);
  }

  return this;
}

uint64_t CEA608Renderer::Memory::SetDirty(uint64_t this, char a2)
{
  for (i = 0; i != 15; ++i)
  {
    v3 = 0;
    v4 = *(this + 16 + 8 * i);
    do
    {
      *(*(v4 + v3) + 32) = a2;
      v3 += 8;
    }

    while (v3 != 256);
  }

  return this;
}

void CEA608Renderer::CEA608Renderer(CEA608Renderer *this)
{
  TextRendererBase::TextRendererBase(this);
  *v1 = &unk_1F0ADB3E0;
  *(v1 + 48) = 0;
  *(v1 + 50) = 1;
  *(v1 + 52) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = -1;
  *(v1 + 72) = 0;
  *(v1 + 80) = -1;
  operator new();
}

void sub_1964753BC(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x19A8D5150](v3, 0x1030C4078BDD907);
  FigBytePumpGetFigBaseObject(v1);
  _Unwind_Resume(a1);
}

void CEA608Renderer::~CEA608Renderer(CEA608Renderer *this)
{
  *this = &unk_1F0ADB3E0;
  v2 = *(this + 3);
  if (v2)
  {
    CEA608Renderer::Memory::~Memory(v2);
    MEMORY[0x19A8D5150]();
  }

  v3 = *(this + 4);
  if (v3)
  {
    CEA608Renderer::Memory::~Memory(v3);
    MEMORY[0x19A8D5150]();
  }

  FigBytePumpGetFigBaseObject(this);
}

uint64_t CEA608Renderer::ResumeCaptionLoading(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    *(this + 40) = *(this + 24);
    v2 = *(this + 56);
    if (*(this + 52) != v2)
    {
      *(this + 52) = v2;
    }

    *(this + 56) = 2;
    *(this + 48) = 4;
  }

  return this;
}

unsigned __int8 *CEA608Renderer::RollUpCaptions(unsigned __int8 *this, uint64_t a2, unsigned int a3)
{
  this[49] = a2;
  if (this[50] == a2)
  {
    v4 = this;
    this = *(this + 4);
    *(v4 + 5) = this;
    v5 = *(v4 + 14);
    if (v5 == 1 || v5 == 4 && *(v4 + 13) == 1)
    {
      v7 = *this;
      if (a3 > v7)
      {
        CEA608Renderer::Memory::ShiftRows(this, (a3 - v7));
        this = *(v4 + 5);
        *this = a3;
        v7 = a3;
      }

      v8 = v4[48];
      if (v8 > a3)
      {
        v9 = v7 - a3;
        if ((v7 - v8) < (v7 - a3))
        {
          do
          {
            v10 = 0;
            v11 = *&this[8 * v9 + 8];
            do
            {
              v12 = *(v11 + v10);
              v13 = *(v12 + 24);
              if (v13)
              {
                *v13 = 32;
              }

              if (*(v12 + 16))
              {
                v14 = 1;
              }

              else
              {
                v14 = *(v12 + 32);
              }

              *(v12 + 32) = v14 & 1;
              *v12 = 0;
              *(v12 + 8) = 0;
              *(v12 + 16) = 0;
              v10 += 8;
            }

            while (v10 != 256);
            --v9;
            this = *(v4 + 5);
          }

          while (*this - v4[48] < v9);
        }
      }
    }

    else
    {
      (*(*v4 + 176))(v4, a2);
      this = (*(*v4 + 184))(v4, a2);
      **(v4 + 5) = 271;
      *(v4 + 8) = -1;
    }

    v15 = *(v4 + 14);
    if (*(v4 + 13) != v15)
    {
      *(v4 + 13) = v15;
    }

    *(v4 + 14) = 1;
    v4[48] = a3;
  }

  return this;
}

uint64_t CEA608Renderer::ResumeDirectCaptioning(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    *(this + 40) = *(this + 32);
    v2 = *(this + 56);
    if (*(this + 52) != v2)
    {
      *(this + 52) = v2;
    }

    *(this + 56) = 3;
    *(this + 48) = 4;
  }

  return this;
}

uint64_t CEA608Renderer::EndOfCaption(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    v2 = *(this + 32);
    for (i = 1; i != 16; ++i)
    {
      v4 = *(v2 + 16 + 8 * (i - 1));
      v5 = *v4;
      if (*(*v4 + 16))
      {
        goto LABEL_9;
      }

      v6 = v4 + 1;
      v7 = -1;
      v8 = v6;
      while (v7 != 30)
      {
        v9 = *v8++;
        ++v7;
        if (*(v9 + 16) == 1)
        {
          if (v7 < 0x1F)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      if (*(v5 + 32))
      {
LABEL_9:
        v10 = 0;
        v11 = *(*(this + 24) + 8 * (i - 1) + 16);
        do
        {
          *(*(v11 + v10) + 32) = 1;
          v10 += 8;
        }

        while (v10 != 256);
      }

      else
      {
        v12 = -1;
        while (v12 != 30)
        {
          v13 = *v6++;
          ++v12;
          if (*(v13 + 32) == 1)
          {
            if (v12 <= 0x1E)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }
    }

    *(this + 32) = *(this + 24);
    *(this + 40) = v2;
    *(this + 24) = v2;
    v14 = *(this + 56);
    if (*(this + 52) != v14)
    {
      *(this + 52) = v14;
    }

    *(this + 56) = 2;
    *(this + 48) = 4;
  }

  return this;
}

uint64_t CEA608Renderer::Character(uint64_t this, int a2, __int16 a3, char a4)
{
  if (a2)
  {
    *(this + 49) = a2;
  }

  else
  {
    a2 = *(this + 49);
  }

  if (a2 == *(this + 50) && (*(this + 56) | 4) != 4)
  {
    v4 = *(this + 40);
    v5 = v4[1];
    v6 = *(*&v4[8 * *v4 + 8] + 8 * v4[1] - 8);
    **(v6 + 24) = a3;
    *(v6 + 8) = 0;
    *(v6 + 16) = a4 ^ 1;
    *(v6 + 32) = 1;
    if (v5 <= 0x1F)
    {
      v4[1] = v5 + 1;
    }
  }

  return this;
}

uint64_t CEA608Renderer::Backspace(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2 && (*(this + 56) | 4) != 4)
  {
    v2 = *(this + 40);
    v3 = v2[1];
    if (v3 >= 2)
    {
      v4 = *v2 - 1;
      if (v3 == 32)
      {
        v5 = *(*&v2[8 * v4 + 16] + 248);
        *(v5 + 8) = 0;
        **(v5 + 24) = 32;
        *(v5 + 16) = 0;
        *(v5 + 32) = 1;
      }

      v6 = v3 - 1;
      v2[1] = v6;
      v7 = *(*&v2[8 * v4 + 16] + 8 * v6 - 8);
      *(v7 + 8) = 0;
      **(v7 + 24) = 32;
      *(v7 + 16) = 0;
      *(v7 + 32) = 1;
    }
  }

  return this;
}

uint64_t CEA608Renderer::CarriageReturn(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    v2 = this;
    if (*(this + 56) == 1)
    {
      v3 = 0;
      v4 = *(*(this + 40) + 8 * (**(this + 40) - *(this + 48) + 1) + 8);
      do
      {
        v5 = *(v4 + v3);
        v6 = *(v5 + 24);
        if (v6)
        {
          *v6 = 32;
        }

        if (*(v5 + 16))
        {
          v7 = 1;
        }

        else
        {
          v7 = *(v5 + 32);
        }

        *(v5 + 32) = v7 & 1;
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        v3 += 8;
      }

      while (v3 != 256);
      this = CEA608Renderer::Memory::ShiftRows(*(this + 40), -1);
      v2[8] = v2[2];
      *(v2[5] + 1) = 1;
    }
  }

  return this;
}

uint64_t CEA608Renderer::DeleteToEndOfRow(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2 && (*(this + 56) | 4) != 4)
  {
    v2 = *(this + 40);
    v3 = v2[1];
    if (v3 < 2)
    {
      goto LABEL_7;
    }

    v4 = *&v2[8 * *v2 + 8];
    if (*(*(v4 + 8 * (v3 - 1) - 8) + 16) == 1)
    {
      v5 = *(v4 + 8 * v3 - 8);
      **(v5 + 24) = 32;
      *(v5 + 16) = 0;
      *(v5 + 32) = 1;
      LOBYTE(v3) = v3 + 1;
    }

    if (v3 <= 0x20u)
    {
LABEL_7:
      v6 = v3 - 1;
      do
      {
        v7 = *(*(*(this + 40) + 8 * **(this + 40) + 8) + 8 * v6);
        v8 = *(v7 + 24);
        if (v8)
        {
          *v8 = 32;
        }

        if (*(v7 + 16))
        {
          v9 = 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        *(v7 + 32) = v9 & 1;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        v10 = (v6++ + 2);
      }

      while (v10 != 33);
    }
  }

  return this;
}

unsigned __int8 *CEA608Renderer::PreambleAddressCode(unsigned __int8 *result, int a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  result[49] = a2;
  if (result[50] == a2)
  {
    v5 = *(result + 14);
    if (v5 && v5 != 4)
    {
      v9 = a3;
      if (v5 == 1)
      {
        v10 = result + 40;
        result = *(result + 5);
        if (v10[8] <= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v10[8];
        }

        v11 = v9 - *result;
        if (!v11)
        {
          goto LABEL_14;
        }

        CEA608Renderer::Memory::ShiftRows(result, v11);
      }

      else
      {
        v10 = result + 40;
      }

      result = *v10;
      **v10 = v9;
LABEL_14:
      result[1] = a5 + 1;
      v12 = v9 - 1;
      if (!a5 || (*(*(*&result[8 * v12 + 16] + 8 * a5 - 8) + 16) & 1) == 0)
      {
        v13 = *(*&result[8 * v12 + 16] + 8 * (a5 + 1) - 8);
        *v13 = a4;
        *(v13 + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t CEA608Renderer::MidRowCode(uint64_t result, int a2, uint64_t a3)
{
  *(result + 49) = a2;
  if (*(result + 50) == a2)
  {
    v3 = result;
    if ((*(result + 56) | 4) != 4)
    {
      v5 = *(*(result + 40) + 1);
      result = (*(*result + 112))(result);
      v6 = *(*(*(v3 + 40) + 8 * **(v3 + 40) + 8) + 8 * v5 - 8);
      *(v6 + 8) = a3;
      *(v6 + 32) = 1;
    }
  }

  return result;
}

uint64_t CEA608Renderer::TabOffset(uint64_t this, int a2, char a3)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2 && (*(this + 56) | 4) != 4)
  {
    v3 = *(this + 40);
    if (((*(v3 + 1) + a3) & 0xE0) != 0)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(v3 + 1) + a3;
    }

    *(v3 + 1) = v4;
  }

  return this;
}

uint64_t CEA608Renderer::FlashOn(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    v2 = this;
    v3 = *(*(this + 40) + 1);
    this = (*(*this + 112))(this);
    v4 = *(*(*(v2 + 40) + 8 * **(v2 + 40) + 8) + 8 * v3 - 8);
    *(v4 + 8) = &FlashOnStyle;
    *(v4 + 32) = 1;
  }

  return this;
}

uint64_t CEA608Renderer::EraseDisplayedMemory(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    return CEA608Renderer::Memory::Erase(*(this + 32));
  }

  return this;
}

uint64_t CEA608Renderer::EraseNonDisplayedMemory(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    return CEA608Renderer::Memory::Erase(*(this + 24));
  }

  return this;
}

uint64_t CEA608Renderer::TextRestart(CEA608Renderer *this, uint64_t a2)
{
  v4 = *(this + 14);
  if (*(this + 13) != v4)
  {
    *(this + 13) = v4;
  }

  *(this + 14) = 4;
  *(this + 49) = a2;
  (*(*this + 176))(this, a2);
  v5 = *(*this + 184);

  return v5(this, a2);
}

uint64_t CEA608Renderer::TextDisplay(uint64_t this, uint64_t a2)
{
  v4 = *(this + 52);
  v3 = *(this + 56);
  if (v4 != 1 || v3 != 1)
  {
    v7 = this;
    if (v4 != v3)
    {
      *(this + 52) = v3;
    }

    *(this + 56) = 4;
    *(this + 49) = a2;
    (*(*this + 176))(this, a2);
    v8 = *(*v7 + 184);

    return v8(v7, a2);
  }

  return this;
}

uint64_t CEA608Renderer::InvalidData(CEA608Renderer *this)
{
  (*(*this + 176))(this, *(this + 49));
  result = (*(*this + 184))(this, *(this + 49));
  v3 = *(this + 14);
  if (*(this + 13) != v3)
  {
    *(this + 13) = v3;
  }

  *(this + 14) = 0;
  return result;
}

uint64_t CEA608Renderer::IsDisplayDirty(CEA608Renderer *this)
{
  v1 = *(this + 72);
  if (v1 != *(this + 8))
  {
    goto LABEL_4;
  }

  if (*(this + 72))
  {
    v2 = *(this + 4);
    v5 = *(v2 + 16);
    v3 = v2 + 16;
    v4 = v5;
    if (*(*v5 + 32))
    {
LABEL_4:
      LOBYTE(v1) = 1;
      return v1 & 1;
    }

    v7 = 0;
    LOBYTE(v1) = 1;
    do
    {
      v8 = v4 + 1;
      v9 = -1;
      while (v9 != 30)
      {
        v10 = *v8++;
        ++v9;
        if (*(v10 + 32) == 1)
        {
          if (v9 <= 0x1E)
          {
            return v1 & 1;
          }

          break;
        }
      }

      LOBYTE(v1) = v7 < 0xE;
      if (v7 == 14)
      {
        break;
      }

      v4 = *(v3 + 8 * ++v7);
    }

    while ((*(*v4 + 32) & 1) == 0);
  }

  return v1 & 1;
}

uint64_t FigMetricMediaResourceRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, __int128 *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, CFAbsoluteTime a12, char a13, const void *a14, const void *a15, void *a16)
{
  ensureMetricEventTrace();
  if (!a16)
  {
    FigMetricMediaResourceRequestEventCreateInternal_cold_2(&v43);
    return v43;
  }

  FigMetricEventGetClassID();
  v28 = CMDerivedObjectCreate();
  if (v28)
  {
    return v28;
  }

  v29 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v31 = DerivedStorage;
  v32 = FigSimpleMutexCreate();
  *(v31 + 192) = v32;
  if (!v32)
  {
    FigMetricMediaResourceRequestEventCreateInternal_cold_1(&v43);
    return v43;
  }

  *v31 = 1;
  *(v31 + 8) = 0;
  if (a5)
  {
    v33 = CFRetain(a5);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v33 = CFDateCreate(a1, Current);
  }

  *(v31 + 16) = v33;
  v35 = *a4;
  *(v31 + 48) = *(a4 + 2);
  *(v31 + 32) = v35;
  if (a6)
  {
    v36 = CFRetain(a6);
  }

  else
  {
    v36 = 0;
  }

  *(v31 + 24) = v36;
  if (a2)
  {
    v37 = CFRetain(a2);
  }

  else
  {
    v37 = 0;
  }

  *(v31 + 56) = v37;
  if (a3)
  {
    v38 = CFRetain(a3);
  }

  else
  {
    v38 = 0;
  }

  *(v31 + 72) = v38;
  *(v31 + 80) = CFDateCreate(a1, a9);
  *(v31 + 88) = CFDateCreate(a1, a10);
  *(v31 + 96) = CFDateCreate(a1, a11);
  *(v31 + 104) = CFDateCreate(a1, a12);
  *(v31 + 112) = a7;
  *(v31 + 120) = v29;
  *(v31 + 128) = a13;
  if (a15)
  {
    v39 = CFRetain(a15);
  }

  else
  {
    v39 = 0;
  }

  *(v31 + 144) = v39;
  if (a14)
  {
    v40 = CFRetain(a14);
  }

  else
  {
    v40 = 0;
  }

  v41 = 0;
  *(v31 + 136) = v40;
  *a16 = 0;
  return v41;
}

uint64_t FigMetricHLSPlaylistRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, __int128 *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, CFAbsoluteTime a12, char a13, const void *a14, const void *a15, int a16, char a17, void *a18)
{
  ensureMetricEventTrace();
  if (!a18)
  {
    FigMetricHLSPlaylistRequestEventCreateInternal_cold_2(&v45);
    return v45;
  }

  FigMetricEventGetClassID();
  v30 = CMDerivedObjectCreate();
  if (v30)
  {
    return v30;
  }

  v31 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v33 = DerivedStorage;
  v34 = FigSimpleMutexCreate();
  *(v33 + 192) = v34;
  if (!v34)
  {
    FigMetricHLSPlaylistRequestEventCreateInternal_cold_1(&v45);
    return v45;
  }

  *v33 = 1;
  *(v33 + 8) = 1;
  if (a5)
  {
    v35 = CFRetain(a5);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v35 = CFDateCreate(a1, Current);
  }

  *(v33 + 16) = v35;
  v37 = *a4;
  *(v33 + 48) = *(a4 + 2);
  *(v33 + 32) = v37;
  if (a6)
  {
    v38 = CFRetain(a6);
  }

  else
  {
    v38 = 0;
  }

  *(v33 + 24) = v38;
  if (a2)
  {
    v39 = CFRetain(a2);
  }

  else
  {
    v39 = 0;
  }

  *(v33 + 56) = v39;
  if (a3)
  {
    v40 = CFRetain(a3);
  }

  else
  {
    v40 = 0;
  }

  *(v33 + 72) = v40;
  *(v33 + 80) = CFDateCreate(a1, a9);
  *(v33 + 88) = CFDateCreate(a1, a10);
  *(v33 + 96) = CFDateCreate(a1, a11);
  *(v33 + 104) = CFDateCreate(a1, a12);
  *(v33 + 112) = a7;
  *(v33 + 120) = v31;
  *(v33 + 128) = a13;
  if (a15)
  {
    v41 = CFRetain(a15);
  }

  else
  {
    v41 = 0;
  }

  *(v33 + 144) = v41;
  *(v33 + 152) = a17;
  *(v33 + 156) = a16;
  if (a14)
  {
    v42 = CFRetain(a14);
  }

  else
  {
    v42 = 0;
  }

  v43 = 0;
  *(v33 + 136) = v42;
  *a18 = 0;
  return v43;
}

uint64_t FigMetricHLSMediaSegmentRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, __int128 *a5, const void *a6, const void *a7, CFAbsoluteTime a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, const void *a17, const void *a18, int a19, char a20, void *a21)
{
  ensureMetricEventTrace();
  if (!a21)
  {
    FigMetricHLSMediaSegmentRequestEventCreateInternal_cold_2(&v48);
    return v48;
  }

  FigMetricEventGetClassID();
  v33 = CMDerivedObjectCreate();
  if (v33)
  {
    return v33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v35 = DerivedStorage;
  v36 = FigSimpleMutexCreate();
  *(v35 + 192) = v36;
  if (!v36)
  {
    FigMetricHLSMediaSegmentRequestEventCreateInternal_cold_1(&v48);
    return v48;
  }

  *v35 = 1;
  *(v35 + 8) = 2;
  if (a6)
  {
    v37 = CFRetain(a6);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v37 = CFDateCreate(a1, Current);
  }

  *(v35 + 16) = v37;
  v39 = *a5;
  *(v35 + 48) = *(a5 + 2);
  *(v35 + 32) = v39;
  if (a7)
  {
    v40 = CFRetain(a7);
  }

  else
  {
    v40 = 0;
  }

  *(v35 + 24) = v40;
  if (a2)
  {
    v41 = CFRetain(a2);
  }

  else
  {
    v41 = 0;
  }

  *(v35 + 56) = v41;
  if (a3)
  {
    v42 = CFRetain(a3);
  }

  else
  {
    v42 = 0;
  }

  *(v35 + 64) = v42;
  if (a4)
  {
    v43 = CFRetain(a4);
  }

  else
  {
    v43 = 0;
  }

  *(v35 + 72) = v43;
  *(v35 + 80) = CFDateCreate(a1, a8);
  *(v35 + 88) = CFDateCreate(a1, a9);
  *(v35 + 96) = CFDateCreate(a1, a10);
  *(v35 + 104) = CFDateCreate(a1, a11);
  *(v35 + 112) = a14;
  *(v35 + 120) = a15;
  *(v35 + 128) = a16;
  *(v35 + 156) = a19;
  if (a17)
  {
    v44 = CFRetain(a17);
  }

  else
  {
    v44 = 0;
  }

  *(v35 + 136) = v44;
  if (a18)
  {
    v45 = CFRetain(a18);
  }

  else
  {
    v45 = 0;
  }

  v46 = 0;
  *(v35 + 144) = v45;
  *(v35 + 176) = a20;
  *(v35 + 184) = a12;
  *a21 = 0;
  return v46;
}

uint64_t FigMetricContentKeyRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, __int128 *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, CFAbsoluteTime a12, char a13, const void *a14, const void *a15, int a16, char a17, const void *a18, void *a19)
{
  ensureMetricEventTrace();
  if (!a18)
  {
    FigMetricContentKeyRequestEventCreateInternal_cold_3();
    return 0;
  }

  if (!a19)
  {
    FigMetricContentKeyRequestEventCreateInternal_cold_2(&v46);
    return v46;
  }

  FigMetricEventGetClassID();
  v31 = CMDerivedObjectCreate();
  if (v31)
  {
    return v31;
  }

  v45 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v33 = DerivedStorage;
  v34 = FigSimpleMutexCreate();
  *(v33 + 192) = v34;
  if (!v34)
  {
    FigMetricContentKeyRequestEventCreateInternal_cold_1(&v46);
    return v46;
  }

  *v33 = 1;
  *(v33 + 8) = 3;
  if (a5)
  {
    v35 = CFRetain(a5);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v35 = CFDateCreate(a1, Current);
  }

  *(v33 + 16) = v35;
  v37 = *a4;
  *(v33 + 48) = *(a4 + 2);
  *(v33 + 32) = v37;
  if (a6)
  {
    v38 = CFRetain(a6);
  }

  else
  {
    v38 = 0;
  }

  *(v33 + 24) = v38;
  if (a2)
  {
    v39 = CFRetain(a2);
  }

  else
  {
    v39 = 0;
  }

  *(v33 + 56) = v39;
  if (a3)
  {
    v40 = CFRetain(a3);
  }

  else
  {
    v40 = 0;
  }

  *(v33 + 72) = v40;
  *(v33 + 80) = CFDateCreate(a1, a9);
  *(v33 + 88) = CFDateCreate(a1, a10);
  *(v33 + 96) = CFDateCreate(a1, a11);
  *(v33 + 104) = CFDateCreate(a1, a12);
  *(v33 + 112) = a7;
  *(v33 + 120) = v45;
  *(v33 + 128) = a13;
  if (a14)
  {
    v41 = CFRetain(a14);
  }

  else
  {
    v41 = 0;
  }

  *(v33 + 136) = v41;
  if (a15)
  {
    v42 = CFRetain(a15);
  }

  else
  {
    v42 = 0;
  }

  *(v33 + 144) = v42;
  *(v33 + 156) = a16;
  v43 = 0;
  *(v33 + 168) = CFRetain(a18);
  *(v33 + 160) = a17;
  *a19 = 0;
  return v43;
}

uint64_t merr_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[9];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[17];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[18];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[21];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[2];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[11];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[10];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[13];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[12];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[3];
  if (v12)
  {
    CFRelease(v12);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef merr_copyDebugDesc(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v2 && v2(a1) == 3)
  {
    v3 = @"[FigMetricContentKeyRequestEvent  %p]";
  }

  else
  {
    v3 = @"[FigMetricResourceRequestEvent %p]";
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, v3, a1);
}

uint64_t merr_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t merr_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef merr_copySessionID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t merr_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    merr_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t merr_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 32);
  *(a1 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t merr_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    merr_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigCEA608DataGeneratorCaptionInfoCreate(int a1, int a2, __int128 *a3, const void *a4, void *a5)
{
  if ((a1 - 1) < 2 || a1 == 3 && (a2 - 2) < 3)
  {
    if ((*(a3 + 3) & 0x1D) == 1 && (*(a3 + 9) & 0x1D) == 1)
    {
      v10 = MEMORY[0x19A8CC720](a4, 128, 0x1060040BD5CC85ALL, 0);
      if (v10)
      {
        v11 = v10;
        v10[6] = 0u;
        v10[7] = 0u;
        v10[4] = 0u;
        v10[5] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *v10 = 0u;
        v10[1] = 0u;
        if (a4)
        {
          v12 = CFRetain(a4);
        }

        else
        {
          v12 = 0;
        }

        v13 = 0;
        *v11 = v12;
        *(v11 + 2) = a1;
        *(v11 + 3) = a2;
        v14 = *a3;
        v15 = a3[2];
        v11[2] = a3[1];
        v11[3] = v15;
        v11[1] = v14;
        *a5 = v11;
      }

      else
      {
        FigCEA608DataGeneratorCaptionInfoCreate_cold_2(&v18);
        v13 = v18;
      }
    }

    else
    {
      FigCEA608DataGeneratorCaptionInfoCreate_cold_1(&v17);
      v13 = v17;
    }
  }

  else
  {
    fig_log_get_emitter();
    v13 = FigSignalErrorAtGM();
  }

  FigCEA608DataGeneratorCaptionInfoRelease(0);
  return v13;
}

uint64_t FigCEA608DataGeneratorCreate(uint64_t a1, uint64_t a2, const __CFAllocator *a3, uint64_t *a4)
{
  v116 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigCEA608DataGeneratorCreate_cold_7(&v105);
LABEL_106:
    v9 = 0;
LABEL_108:
    value_low = LODWORD(v105.start.value);
    goto LABEL_103;
  }

  if (!a4)
  {
    FigCEA608DataGeneratorCreate_cold_6(&v105);
    goto LABEL_106;
  }

  v5 = a3;
  v8 = MEMORY[0x19A8CC720](a3, 160, 0x10E00406167A9ECLL, 0);
  v9 = v8;
  if (!v8)
  {
    FigCEA608DataGeneratorCreate_cold_5(&v105);
    goto LABEL_108;
  }

  v71 = a4;
  v8[8] = 0u;
  v8[9] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  if (v5)
  {
    v10 = CFRetain(v5);
  }

  else
  {
    v10 = 0;
  }

  *v9 = v10;
  *(v9 + 9) = 1;
  *start = *MEMORY[0x1E6960CC0];
  *allocatora = *start;
  *&start[16] = *(MEMORY[0x1E6960CC0] + 16);
  v11 = *&start[16];
  *duration = *MEMORY[0x1E6960C88];
  *&duration[16] = *(MEMORY[0x1E6960C88] + 16);
  CMTimeRangeMake(&v105, start, duration);
  v12 = *&v105.start.value;
  v13 = *&v105.start.epoch;
  *(v9 + 44) = *&v105.duration.timescale;
  *(v9 + 76) = 0;
  *(v9 + 28) = v13;
  *(v9 + 12) = v12;
  *(v9 + 120) = *allocatora;
  *(v9 + 60) = kFigCEA608DefaultFrameDuration;
  *(v9 + 144) = a2;
  *(v9 + 152) = a1;
  *(v9 + 136) = v11;
  v103 = 0;
  v104 = 0;
  v105.start.value = 0x1F0B1CAB8;
  *&v105.start.timescale = 0x1F0B1CAD8;
  v14 = @"ÁÉÓÚÜü‘¡*'━©℠•“”ÀÂÇÈÊËëÎÏïÔÙùÛ«»";
  v105.start.epoch = 0x1F0B1CAF8;
  v105.duration.value = 0x1F0B1CB18;
  theDict = CFDictionaryCreateMutable(v5, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  allocator = v5;
  v72 = v9;
  if (theDict)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(&v105.start.value + v15);
      if (FigCFEqual())
      {
        v17 = 48;
      }

      else
      {
        v17 = 32;
      }

      Length = CFStringGetLength(v16);
      v87 = 0u;
      v88 = 0u;
      v89 = 0;
      theString = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      memset(duration, 0, sizeof(duration));
      *&theString = v16;
      *&v88 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v16);
      CStringPtr = 0;
      *(&theString + 1) = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v16, 0x600u);
      }

      *&v87 = CStringPtr;
      *(&v88 + 1) = 0;
      v89 = 0;
      Mutable = CFDictionaryCreateMutable(allocator, Length, 0, 0);
      if (!Mutable)
      {
        break;
      }

      v22 = Mutable;
      if (Length >= 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 64;
        do
        {
          if (v24 >= 4)
          {
            v26 = 4;
          }

          else
          {
            v26 = v24;
          }

          v27 = v88;
          if (v88 <= v24)
          {
            v29 = 0;
          }

          else
          {
            if (*(&theString + 1))
            {
              v28 = (*(&theString + 1) + 2 * *(&v87 + 1));
            }

            else
            {
              if (v87)
              {
                v29 = *(v87 + *(&v87 + 1) + v24);
                goto LABEL_25;
              }

              v30 = *(&v88 + 1);
              if (v89 <= v24 || *(&v88 + 1) > v24)
              {
                v32 = v26 + v23;
                v33 = v25 - v26;
                v34 = v24 - v26;
                v35 = v34 + 64;
                if (v34 + 64 >= v88)
                {
                  v35 = v88;
                }

                *(&v88 + 1) = v34;
                v89 = v35;
                if (v88 >= v33)
                {
                  v27 = v33;
                }

                v117.location = *(&v87 + 1) + v34;
                v117.length = v27 + v32;
                CFStringGetCharacters(theString, v117, duration);
                v30 = *(&v88 + 1);
              }

              v28 = &duration[-2 * v30];
            }

            v29 = *&v28[2 * v24];
          }

LABEL_25:
          CFDictionaryAddValue(v22, v29, (v17 + v24++));
          --v23;
          ++v25;
        }

        while (Length != v24);
      }

      CFDictionaryAddValue(theDict, off_1E74787E8[v15], v22);
      CFRelease(v22);
      if (++v15 == 4)
      {
        v5 = allocator;
        v103 = theDict;
        v9 = v72;
        goto LABEL_41;
      }
    }

    FigCEA608DataGeneratorCreate_cold_1(duration, theDict, start);
    value_low = *start;
    v9 = v72;
    v5 = allocator;
    if (*start)
    {
      goto LABEL_97;
    }
  }

  else
  {
    FigCEA608DataGeneratorCreate_cold_2(start);
    value_low = *start;
    if (*start)
    {
      goto LABEL_97;
    }
  }

LABEL_41:
  v101 = 0x1F0B1CB58;
  v102 = 0x1F0B1CB38;
  v73 = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v73)
  {
    v36 = 0;
    v37 = &v102;
    v38 = 1;
    while (1)
    {
      v39 = v38;
      v40 = CFStringGetLength(v14);
      v41 = *v37;
      if (v40 != CFStringGetLength(*v37))
      {
        FigCEA608DataGeneratorCreate_cold_3(&v105);
        value_low = LODWORD(v105.start.value);
        goto LABEL_94;
      }

      v112 = 0;
      v114 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      memset(&v105, 0, sizeof(v105));
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      memset(start, 0, sizeof(start));
      *&v111 = v14;
      v113 = 0;
      v115 = 0;
      *&v114 = v40;
      v42 = CFStringGetCharactersPtr(v14);
      v43 = 0;
      *(&v111 + 1) = v42;
      if (!v42)
      {
        v43 = CFStringGetCStringPtr(v14, 0x600u);
      }

      v112 = v43;
      *(&v114 + 1) = 0;
      v115 = 0;
      *&v97 = v41;
      *(&v98 + 1) = 0;
      *&v99 = v40;
      v44 = CFStringGetCharactersPtr(v41);
      v45 = 0;
      *(&v97 + 1) = v44;
      if (!v44)
      {
        v45 = CFStringGetCStringPtr(v41, 0x600u);
      }

      *&v98 = v45;
      *(&v99 + 1) = 0;
      v100 = 0;
      v46 = CFDictionaryCreateMutable(v5, v40, 0, 0);
      if (!v46)
      {
        break;
      }

      v47 = v46;
      v74 = v39;
      theDicta = v36;
      if (v40 >= 1)
      {
        v48 = 0;
        v49 = 0;
        v50 = 64;
        do
        {
          if (v49 >= 4)
          {
            v51 = 4;
          }

          else
          {
            v51 = v49;
          }

          v52 = v51 + v48;
          v53 = v50 - v51;
          v54 = -v51;
          v55 = v114;
          if (v114 <= v49)
          {
            v57 = 0;
          }

          else
          {
            if (*(&v111 + 1))
            {
              v56 = (*(&v111 + 1) + 2 * v113);
LABEL_57:
              v57 = *&v56[2 * v49];
              goto LABEL_59;
            }

            if (!v112)
            {
              v61 = *(&v114 + 1);
              if (v115 <= v49 || *(&v114 + 1) > v49)
              {
                v63 = v49 + v54 + 64;
                if (v63 >= v114)
                {
                  v63 = v114;
                }

                *(&v114 + 1) = v49 + v54;
                v115 = v63;
                if (v114 >= v53)
                {
                  v55 = v53;
                }

                v118.location = v49 + v54 + v113;
                v118.length = v55 + v52;
                CFStringGetCharacters(v111, v118, &v105);
                v61 = *(&v114 + 1);
              }

              v56 = &v105 - 2 * v61;
              goto LABEL_57;
            }

            v57 = v112[v113 + v49];
          }

LABEL_59:
          v58 = v99;
          if (v99 <= v49)
          {
            v60 = 0;
          }

          else
          {
            if (*(&v97 + 1))
            {
              v59 = (*(&v97 + 1) + 2 * *(&v98 + 1));
            }

            else
            {
              if (v98)
              {
                v60 = *(v98 + *(&v98 + 1) + v49);
                goto LABEL_64;
              }

              if (v100 <= v49 || (v64 = *(&v99 + 1), *(&v99 + 1) > v49))
              {
                v65 = v49 + v54 + 64;
                if (v65 >= v99)
                {
                  v65 = v99;
                }

                *(&v99 + 1) = v49 + v54;
                v100 = v65;
                if (v99 >= v53)
                {
                  v58 = v53;
                }

                v119.location = v49 + v54 + *(&v98 + 1);
                v119.length = v58 + v52;
                CFStringGetCharacters(v97, v119, start);
                v64 = *(&v99 + 1);
              }

              v59 = &start[-2 * v64];
            }

            v60 = *&v59[2 * v49];
          }

LABEL_64:
          CFDictionaryAddValue(v47, v57, v60);
          ++v49;
          --v48;
          ++v50;
        }

        while (v40 != v49);
      }

      CFDictionaryAddValue(v73, off_1E7478808[theDicta], v47);
      CFRelease(v47);
      v38 = 0;
      v37 = &v101;
      v14 = @"ÃãÍÌìÒòÕõ{}\\^_|~ÄäÖöß¥¤┃ÅåØø┏┓┗┛";
      v36 = 1;
      v5 = allocator;
      if ((v74 & 1) == 0)
      {
        v104 = v73;
        v9 = v72;
        goto LABEL_95;
      }
    }

    fig_log_get_emitter();
    value_low = FigSignalErrorAtGM();
LABEL_94:
    CFRelease(v73);
    v9 = v72;
    if (!value_low)
    {
LABEL_95:
      value_low = FigCFCreateCombinedDictionary();
      if (!value_low)
      {
        *(v9 + 88) = 0;
      }
    }
  }

  else
  {
    FigCEA608DataGeneratorCreate_cold_4(&v105);
    value_low = LODWORD(v105.start.value);
    if (!LODWORD(v105.start.value))
    {
      goto LABEL_95;
    }
  }

LABEL_97:
  v67 = &v103;
  v68 = 1;
  do
  {
    v69 = v68;
    if (*v67)
    {
      CFRelease(*v67);
    }

    v68 = 0;
    v67 = &v104;
  }

  while ((v69 & 1) != 0);
  if (!value_low)
  {
    *v71 = v9;
    v9 = 0;
  }

LABEL_103:
  FigCEA608DataGeneratorRelease(v9);
  return value_low;
}

__n128 cea608dgCCDataGetQuantizedTimeByFrameDuration@<Q0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2->flags & 0x1D) == 1)
  {
    time = *a2;
    v6 = CMTimeGetSeconds(&time) * (*(a1 + 8) / *a1);
    v8 = *a1;
    CMTimeMultiply(&time, &v8, llroundf(v6));
    *a2 = time;
  }

  result = *&a2->value;
  *a3 = *&a2->value;
  *(a3 + 16) = a2->epoch;
  return result;
}

uint64_t cea608dgCaptionInfoCopy(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x19A8CC720](a3, 128, 0x1060040BD5CC85ALL, 0);
  if (v7)
  {
    v8 = v7;
    v7[6] = 0u;
    v7[7] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[2] = 0u;
    v7[3] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
    v9 = *a2;
    if (*a2)
    {
      v9 = CFRetain(v9);
    }

    *v8 = v9;
    *(v8 + 1) = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v11;
    v8[1] = v10;
    v20 = *a1;
    v21 = *(a1 + 2);
    v12 = *(a2 + 16);
    flags = *(a2 + 28);
    timescale = *(a2 + 24);
    value = v12;
    epoch = *(a2 + 32);
    v14 = *(a2 + 40);
    v16 = *(a2 + 52);
    v28 = *(a2 + 48);
    v27 = v14;
    v17 = *(a2 + 56);
    if ((flags & 0x1D) == 1 && (v16 & 0x1D) == 1)
    {
      memset(&v26, 0, sizeof(v26));
      *&range.start.value = *a1;
      range.start.epoch = *(a1 + 2);
      v25.value = *(a2 + 16);
      v25.timescale = *(a2 + 24);
      v25.flags = flags;
      v25.epoch = epoch;
      cea608dgCCDataGetQuantizedTimeByFrameDuration(&range, &v25, &v26);
      memset(&v25, 0, sizeof(v25));
      range.start.value = value;
      range.start.timescale = timescale;
      range.start.flags = flags;
      range.start.epoch = epoch;
      range.duration.value = v27;
      range.duration.timescale = v28;
      range.duration.flags = v16;
      range.duration.epoch = v17;
      CMTimeRangeGetEnd(&duration, &range);
      *&range.start.value = v20;
      range.start.epoch = v21;
      cea608dgCCDataGetQuantizedTimeByFrameDuration(&range, &duration, &v25);
      range.start = v25;
      rhs = v26;
      CMTimeSubtract(&duration, &range.start, &rhs);
      rhs = v26;
      CMTimeRangeMake(&range, &rhs, &duration);
      value = range.start.value;
      flags = range.start.flags;
      timescale = range.start.timescale;
      epoch = range.start.epoch;
      v27 = range.duration.value;
      v16 = range.duration.flags;
      v28 = range.duration.timescale;
      v17 = range.duration.epoch;
    }

    result = 0;
    *(v8 + 8) = value;
    *(v8 + 18) = timescale;
    *(v8 + 19) = flags;
    v19 = v27;
    *(v8 + 10) = epoch;
    *(v8 + 11) = v19;
    *(v8 + 24) = v28;
    *(v8 + 25) = v16;
    *(v8 + 13) = v17;
    *a4 = v8;
  }

  else
  {
    cea608dgCaptionInfoCopy_cold_1(&range);
    return LODWORD(range.start.value);
  }

  return result;
}

uint64_t FigCEA608DataGeneratorAddCaptionLine(uint64_t a1, unsigned int a2, unsigned int a3, CFAttributedStringRef aStr)
{
  if (!a1)
  {
    FigCEA608DataGeneratorAddCaptionLine_cold_12(&v77);
    return v77;
  }

  if (a2 - 16 <= 0xFFFFFFF0)
  {
    FigCEA608DataGeneratorAddCaptionLine_cold_11(&v77);
    return v77;
  }

  if (a3 - 33 <= 0xFFFFFFDF)
  {
    FigCEA608DataGeneratorAddCaptionLine_cold_10(&v77);
    return v77;
  }

  if (!aStr)
  {
    FigCEA608DataGeneratorAddCaptionLine_cold_9(&v77);
    return v77;
  }

  if (!CFAttributedStringGetLength(aStr))
  {
    FigCEA608DataGeneratorAddCaptionLine_cold_8(&v77);
    return v77;
  }

  v7 = *(a1 + 112);
  if (!v7)
  {
    FigCEA608DataGeneratorAddCaptionLine_cold_7(&v77);
    return v77;
  }

  v8 = *(v7 + 112);
  v66 = a1;
  v9 = *(a1 + 88);
  String = CFAttributedStringGetString(aStr);
  Length = CFStringGetLength(String);
  longestEffectiveRange.location = 0;
  longestEffectiveRange.length = 0;
  Limit = FigCFRangeGetLimit();
  if (Limit < FigCFRangeGetLimit())
  {
    aStra = aStr;
    v13 = 0;
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = a2 - 1;
    v17 = a2 & 0xE;
    if (v17 == 14)
    {
      v18 = 20;
    }

    else
    {
      v18 = 0;
    }

    v19 = v17 == 12;
    if (v17 == 12)
    {
      v20 = 19;
    }

    else
    {
      v20 = v18;
    }

    if ((v19 || a2 >= 0xC) && v16 >= 0xB)
    {
      v23 = a2;
    }

    else
    {
      v23 = a2 - 1;
    }

    v69 = (a3 - 1) & 3;
    if (v16 < 2)
    {
      v24 = 17;
    }

    else
    {
      v24 = 18;
    }

    if (v16 >= 4)
    {
      v24 = 21;
    }

    if (v16 >= 6)
    {
      v24 = 22;
    }

    if (v16 >= 8)
    {
      v24 = 23;
    }

    if (v16 >= 0xA)
    {
      v24 = 16;
    }

    if (v16 >= 0xB)
    {
      v25 = v20;
    }

    else
    {
      v25 = v24;
    }

    v68 = v25;
    v67 = 32 * (v23 & 1);
    v26 = 1;
    v71 = Length;
    while (1)
    {
      v27 = FigCFRangeGetLimit();
      v90.location = 0;
      v90.length = Length;
      CFAttributedStringGetAttributesAndLongestEffectiveRange(aStra, v27, v90, &longestEffectiveRange);
      v77 = xmmword_196E72F60;
      FigCFDictionaryGetInt32IfPresent();
      if (v77 > 7 || (FigCFDictionaryGetInt32IfPresent(), DWORD1(v77) > 7) || (FigCFDictionaryGetInt32IfPresent(), DWORD2(v77) > 2))
      {
        if (!FigCEA608DataGeneratorAddCaptionLine_cold_1())
        {
          return *v89;
        }

        v29 = 0;
        v28 = 0;
      }

      else
      {
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        v29 = *(&v77 + 1);
        v28 = v77;
      }

      v30 = HIDWORD(v28);
      v73 = v28;
      v74 = v29;
      if (v26)
      {
        v32 = (v29 & 0xFF00FFFFFFFFLL) == 0 && v30 == 7;
        v33 = (v29 & 0xFF00000000) != 0 && v32;
        if (a3 > 4 || v28 == 7)
        {
          v36 = 0;
          v35 = ((((a3 - 1) >> 1) & 0x7E) + 16) | v33;
        }

        else
        {
          if ((v29 & 0xFF00000000) != 0)
          {
            v34 = 15;
          }

          else
          {
            v34 = 14;
          }

          v35 = v33 | (2 * v28);
          v36 = v28;
          if (!v28 && (v74 & 0xFF0000000000) != 0)
          {
            v36 = 0;
            v37 = 1;
            LOBYTE(v35) = v34;
LABEL_63:
            bytes[0] = v68;
            bytes[1] = v67 | v35 | 0x40;
            CFDataAppendBytes(v8, bytes, 2);
            if (v69)
            {
              *v89 = kFigCEA608TabOffsetControlCodes[v69 - 1];
              CFDataAppendBytes(v8, v89, 2);
            }

            LODWORD(v75) = v36;
            *(&v75 + 4) = 7;
            BYTE12(v75) = v33;
            BYTE13(v75) = v37;
            HIWORD(v75) = 0;
            v13 = *(&v75 + 1);
            v14 = v75;
            v29 = v74;
            goto LABEL_66;
          }
        }

        if (v35 <= 0x1F)
        {
          v37 = 0;
          goto LABEL_63;
        }

        v29 = v74;
        if (!FigCEA608DataGeneratorAddCaptionLine_cold_2())
        {
          return *v89;
        }
      }

LABEL_66:
      if ((v30 != HIDWORD(v14) || v13 != v29) && (v13 != 2 || v29 != 2))
      {
        if (v29 == 2)
        {
          v63 = &kFigCEA608ForegroundAttributeCodes;
          if (v13 != 2)
          {
            goto LABEL_141;
          }
        }

        v64 = v29 + 2 * HIDWORD(v28);
        if (v64 <= 0xF)
        {
          v63 = (&kFigCEA608BackgroundAttributeCodes + 2 * v64);
LABEL_141:
          FigCEA608DataGeneratorAddCaptionLine_cold_4(v63, &v79, v8);
          goto LABEL_70;
        }

        if (!FigCEA608DataGeneratorAddCaptionLine_cold_3())
        {
          return *v89;
        }
      }

LABEL_70:
      if (v14 == v28 && BYTE4(v13) == BYTE4(v29) && BYTE5(v13) == BYTE5(v29))
      {
        goto LABEL_95;
      }

      v38 = BYTE4(v29) != BYTE4(v13);
      v39 = v29 & 0xFF0000000000;
      v40 = (v29 & 0xFF0000000000) == 0 && (BYTE5(v13) ^ BYTE5(v29)) != 0;
      if ((v29 & 0xFF0000000000) != 0)
      {
        v38 = 0;
      }

      if (v14 == v28 && !v38 && !v40)
      {
        goto LABEL_91;
      }

      if (BYTE4(v29))
      {
        v41 = v39 == 0;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;
      if (v28 != 7)
      {
        if ((v28 & 0x80000000) != 0 || (v43 = v42 | (2 * v28), v43 > 15))
        {
          if (!FigCEA608DataGeneratorAddCaptionLine_cold_5())
          {
            return *v89;
          }

          goto LABEL_95;
        }

        *v80 = kFigCEA608MidRowCodes[v43];
        CFDataAppendBytes(v8, v80, 2);
LABEL_91:
        if (v39)
        {
          goto LABEL_92;
        }

        goto LABEL_95;
      }

      FigCEA608DataGeneratorAddCaptionLine_cold_6(v42, v80, v8);
      if (v39)
      {
LABEL_92:
        v44 = 15;
        if (!BYTE4(v29))
        {
          v44 = 14;
        }

        *v80 = kFigCEA608MidRowCodes[v44];
        CFDataAppendBytes(v8, v80, 2);
      }

LABEL_95:
      if (!v15)
      {
        v45 = CFDataGetLength(v8);
        BytePtr = CFDataGetBytePtr(v8);
        if (v45 < 2)
        {
LABEL_100:
          v15 = CFDataGetLength(v8) >> 1;
        }

        else
        {
          v15 = 0;
          while (1)
          {
            v47 = *BytePtr;
            BytePtr += 2;
            if (v47 == 32)
            {
              break;
            }

            if (v45 >> 1 == ++v15)
            {
              goto LABEL_100;
            }
          }
        }
      }

      location = longestEffectiveRange.location;
      *buffer = 0;
      v49.location = CFDataGetLength(v8) - 2;
      if (v49.location >= 0)
      {
        v49.length = 2;
        CFDataGetBytes(v8, v49, buffer);
      }

      if (location < FigCFRangeGetLimit())
      {
        v50 = location;
        do
        {
          *v83 = 0;
          v82 = 0;
          v81 = 0;
          CharacterAtIndex = CFStringGetCharacterAtIndex(String, v50);
          if (!cea608dgCharacterMappingGetControlCodeForCharacter(v9, CharacterAtIndex, v83, &v82, &v81 + 1, &v81))
          {
            v83[0] = 127;
            v82 = 1;
          }

          if (HIBYTE(v81) && buffer[0] == v83[0])
          {
            if (buffer[1] == v83[1])
            {
              v52 = 2;
            }

            else
            {
              v52 = 1;
            }
          }

          else
          {
            v52 = 1;
          }

          if (v81)
          {
            v53 = 0;
            *v89 = 0;
            v54 = 1;
            do
            {
              v55 = v54;
              Value = CFDictionaryGetValue(v9, off_1E7478808[v53]);
              ValueIfPresent = CFDictionaryGetValueIfPresent(Value, CharacterAtIndex, v89);
              if (ValueIfPresent == 1)
              {
                v59 = *v89;
                goto LABEL_121;
              }

              if (ValueIfPresent)
              {
                break;
              }

              v54 = 0;
              v53 = 1;
            }

            while ((v55 & 1) != 0);
            fig_log_get_emitter();
            result = FigSignalErrorAtGM();
            if (result)
            {
              return result;
            }

            v59 = 0;
LABEL_121:
            *v88 = 0;
            v87 = 0;
            v85 = 0;
            if (cea608dgCharacterMappingGetControlCodeForCharacter(v9, v59, v88, &v87, &v86, &v85) == 1 && v87 == 1 && !v85)
            {
              CFDataAppendBytes(v8, v88, 1);
            }

            else
            {
              fig_log_get_emitter();
              result = FigSignalErrorAtGM();
              if (result)
              {
                return result;
              }
            }
          }

          v60 = v82;
          if (v82 == 1)
          {
            v61 = 1;
          }

          else
          {
            v61 = 2;
          }

          do
          {
            if (v60 == 2)
            {
              cea608dgCCDataAppendPaddingIfNeeded(v8);
            }

            CFDataAppendBytes(v8, v83, v61);
            --v52;
          }

          while (v52);
          *buffer = *v83;
          ++v50;
        }

        while (v50 < FigCFRangeGetLimit());
      }

      cea608dgCCDataAppendPaddingIfNeeded(v8);
      v14 = v73;
      v13 = v74;
      v62 = FigCFRangeGetLimit();
      Length = v71;
      v26 = 0;
      if (v62 >= FigCFRangeGetLimit())
      {
        goto LABEL_153;
      }
    }
  }

  LODWORD(v15) = 0;
LABEL_153:
  v65 = *(v66 + 112);
  result = 0;
  if (!*(v65 + 120))
  {
    *(v65 + 120) = v15;
  }

  return result;
}