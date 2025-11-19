uint64_t FigCaptionRendererPaintOnCaptionSetAnimationDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 16);
  *(DerivedStorage + 32) = *a2;
  *(DerivedStorage + 48) = v4;
  return 0;
}

void FigCaptionRendererPaintOnCaptionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 64);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 64) = 0;
  }
}

__CFString *FigCaptionRendererPaintOnCaptionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererIntervalProtocol_GetRange(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererIntervalProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererIntervalProtocol_SetRange(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMTimeMake(&v10, a2, 1);
  *(DerivedStorage + 32) = v10;
  v5 = *DerivedStorage;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v8(v5, a1, a2);
      }
    }
  }

  return 0;
}

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_PurgeImageCache()
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_ResetNodeTree()
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_Draw(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 280);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 288);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 304);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_RemoveAllActions()
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
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

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererCaptionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetAttributes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetAttributes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetContent(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetContent(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetFormat(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetFormat(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetExtendedLanguageTagString(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

  v6 = *(v5 + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetExtendedLanguageTagString(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetTextHighlightArray(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetTextHighlightArray(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetInvisible(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_GetInvisible(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

  v6 = *(v5 + 96);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetSuggestLineHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetWritingMode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

  v6 = *(v5 + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetLayoutSampleWithCTAttributes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
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

uint64_t RegisterFigCaptionRendererPaintOnCaptionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t PostProcessPurchasedItem(const __CFDictionary *a1, const __CFString *a2, void *a3, void (*a4)(uint64_t, float), uint64_t a5)
{
  v10 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  if (v10)
  {
    v11 = v10;
    v12 = CMByteStreamCreateForFileURL();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = PostProcessPurchasedItemInternal(a1, a2, a3, 0, a4, a5);
    }

    CFRelease(v11);
  }

  else
  {
    PostProcessPurchasedItem_cold_1(&v15);
    return v15;
  }

  return v13;
}

uint64_t ObtainSinfInfoFromMedia(CFStringRef filePath, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!filePath)
  {
    ObtainSinfInfoFromMedia_cold_9(&v7);
    return v7;
  }

  if (!a2)
  {
    ObtainSinfInfoFromMedia_cold_8(&v7);
    return v7;
  }

  v2 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v2)
  {
    ObtainSinfInfoFromMedia_cold_7(&v7);
    return v7;
  }

  v3 = v2;
  v4 = CMByteStreamCreateForFileURL();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v19 = -1;
    v18 = 0;
    v17 = -1;
    v16 = 0;
    v15 = -1;
    v14 = 0;
    v13 = -1;
    v12 = 0;
    v11 = -1;
    v10 = 0;
    v9 = -1;
    size[4] = 0;
    *&size[1] = -1;
    size[0] = 0;
    v5 = 4294967246;
  }

  CFRelease(v3);
  return v5;
}

uint64_t PPGetRentalInfoFromSinfInfo(const __CFArray *a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  for (i = 0; i != v5; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    value = 0;
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"sinf", &value))
    {
      Length = CFDataGetLength(value);
      BytePtr = CFDataGetBytePtr(value);
      v18 = 0;
      v19 = 0;
      DefaultFairPlayContextID = GetDefaultFairPlayContextID(0);
      RbFpir(DefaultFairPlayContextID, BytePtr, Length, &v18);
      v6 = FAIRPLAY_CALL_LOG(v12);
      if (v6 == -42032)
      {
        v13 = GetDefaultFairPlayContextID(1);
        RbFpir(v13, BytePtr, Length, &v18);
        v6 = FAIRPLAY_CALL_LOG(v14);
      }

      if (!v6)
      {
        v15 = v19;
        if (*(a2 + 8) - 1 >= v19)
        {
          *a2 = v18;
          v16 = HIDWORD(v19);
          *(a2 + 8) = v15;
          *(a2 + 12) = v16;
        }

        v6 = 0;
      }
    }
  }

  return v6;
}

uint64_t GetDefaultFairPlayContextID(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8D3660](&sInitFPCtxtLockOnce, createInitFPCtxtLock);
  FigSimpleMutexLock();
  if (a1 || !sFairPlayContext)
  {
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      memset(v11, 0, sizeof(v11));
      Length = CFStringGetLength(v2);
      CFStringGetSystemEncoding();
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      zxcm2Qme0x(CStringPtrAndBufferToFree, Length, v11);
      LODWORD(Length) = FAIRPLAY_CALL_LOG(v6);
      free(0);
      if (!Length)
      {
        strcpy(v13, "/Media/iTunes_Control/iTunes/");
        v7 = getuid();
        v8 = getpwuid(v7);
        if (v8)
        {
          snprintf(__str, 0x400uLL, "%s%s", v8->pw_dir, v13);
          v9 = XtCqEf5X(0, v11, __str, &sFairPlayContext);
          FAIRPLAY_CALL_LOG(v9);
        }
      }

      CFRelease(v3);
    }
  }

  FigSimpleMutexUnlock();
  return sFairPlayContext;
}

uint64_t GetByteStreamSize(uint64_t a1, void *a2)
{
  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(CMBaseObject, *MEMORY[0x1E695FF78], 0, &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, a2);
    CFRelease(number);
    return 0;
  }

  return result;
}

uint64_t CompareMD5(const __CFData *a1, void *a2)
{
  if (CFDataGetLength(a1) == 16)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (*a2 == *BytePtr && a2[1] == *(BytePtr + 1))
    {
      return 0;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FindAtomOffsetOfType(uint64_t a1, int a2, uint64_t a3, unsigned int a4, void *a5, _DWORD *a6)
{
  if (!a4)
  {
    return 0;
  }

  v8 = a4;
  while (1)
  {
    v15 = 0;
    ReadMovieBytes(a1, a3, 4u, &v15);
    v12 = bswap32(v15);
    v16 = 0;
    ReadMovieBytes(a1, a3 + 4, 4u, &v16);
    if (v12 < 8 || v8 < v12)
    {
      return 0;
    }

    if (bswap32(v16) == a2)
    {
      break;
    }

    a3 += v12;
    v8 -= v12;
    if (!v8)
    {
      return 0;
    }
  }

  if (a5)
  {
    *a5 = a3 + 8;
  }

  if (a6)
  {
    *a6 = v12 - 8;
  }

  return 1;
}

uint64_t ReadMovieBytes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = 0;
    return v11(a1, a3, a2, a4, &v12);
  }

  return result;
}

uint64_t FindImageDescriptionExtensionOffset(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, _DWORD *a5)
{
  v10 = a2 + 86;
  LOWORD(v16) = 0;
  ReadMovieBytes(a1, a2 + 84, 2u, &v16);
  if (!v16)
  {
    LOWORD(v16) = 0;
    ReadMovieBytes(a1, a2 + 176, 2u, &v16);
    v10 += bswap32(v16) >> 16;
  }

  v16 = 0;
  ReadMovieBytes(a1, a2, 4u, &v16);
  v11 = bswap32(v16);
  if (v11 >= 8)
  {
    v12 = v10 + v11;
    v13 = v10 + 8;
    do
    {
      v16 = 0;
      ReadMovieBytes(a1, v10, 4u, &v16);
      if (!v16)
      {
        break;
      }

      v14 = bswap32(v16);
      v16 = 0;
      ReadMovieBytes(a1, v10 + 4, 4u, &v16);
      if (bswap32(v16) == a3)
      {
        *a4 = v13;
        *a5 = v14 - 8;
        return 1;
      }

      v10 += v14;
      v13 = v10 + 8;
    }

    while (v10 + 8 <= v12);
  }

  return 0;
}

void *IsSoundDescriptionISOv1(uint64_t a1, uint64_t a2, size_t size)
{
  v3 = size;
  v6 = size;
  result = malloc_type_calloc(1uLL, size, 0xED726FD7uLL);
  if (result)
  {
    v8 = result;
    ReadMovieBytes(a1, a2, v3, result);
    v9 = MEMORY[0x19A8D3160](v8, v6, 1);
    free(v8);
    return v9;
  }

  return result;
}

uint64_t FindSampleDescriptionExtensionOffset(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v19 = 0;
  ReadMovieBytes(a1, a2, 4u, &v19);
  v10 = v19;
  v19 = 0;
  ReadMovieBytes(a1, a2 + 8, 4u, &v19);
  v11 = v19;
  LOWORD(v19) = 0;
  ReadMovieBytes(a1, a2 + 12, 2u, &v19);
  result = 0;
  if (v19 == 256)
  {
    v13 = bswap32(v10);
    v14 = bswap32(v11);
    if (v14 >= 0x10 && v14 < v13)
    {
      v16 = v13 + a2;
      v17 = v14 + a2;
      v19 = 0;
      WriteMovieBytes(a1, a2 + 8, 4u, &v19);
      LOWORD(v19) = 0;
      WriteMovieBytes(a1, a2 + 12, 2u, &v19);
      while (1)
      {
        if (v17 + 8 > v16)
        {
          return 0;
        }

        v19 = 0;
        ReadMovieBytes(a1, v17, 4u, &v19);
        if (!v19)
        {
          return 0;
        }

        v18 = bswap32(v19);
        v19 = 0;
        ReadMovieBytes(a1, v17 + 4, 4u, &v19);
        if (bswap32(v19) == a3)
        {
          break;
        }

        v17 += v18;
      }

      *a4 = v17 + 8;
      *a5 = v18 - 8;
      return 1;
    }
  }

  return result;
}

uint64_t WriteMovieBytes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    return v11(a1, a3, a2, a4, &v12);
  }

  return result;
}

void ReadMovieBytesIntoCFData(uint64_t a1, uint64_t a2, CFIndex capacity, __CFData **a4)
{
  v7 = capacity;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
  v9 = Mutable;
  if (!Mutable)
  {
    ReadMovieBytesIntoCFData_cold_2();
    goto LABEL_6;
  }

  v13 = 0;
  CFDataSetLength(Mutable, v7);
  MutableBytePtr = CFDataGetMutableBytePtr(v9);
  if (!MutableBytePtr)
  {
    ReadMovieBytesIntoCFData_cold_1(&v14);
    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = MutableBytePtr;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12 || v12(a1, v7, a2, v11, &v13))
  {
LABEL_5:
    CFRelease(v9);
    v9 = 0;
  }

LABEL_6:
  *a4 = v9;
}

uint64_t createInitFPCtxtLock()
{
  result = FigSimpleMutexCreate();
  sInitFPCtxtLock = result;
  return result;
}

uint64_t FigSampleBufferConsumerCreateForBufferQueue2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1 && a6)
  {
    v11 = *MEMORY[0x1E695E480];
    FigSampleBufferConsumerGetClassID();
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      return v12;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 136) = FigBufferQueueRetain();
    v16 = *(a2 + 16);
    *(DerivedStorage + 12) = *a2;
    *(DerivedStorage + 28) = v16;
    *(DerivedStorage + 40) = a3;
    v17 = *(a4 + 16);
    *(DerivedStorage + 48) = *a4;
    *(DerivedStorage + 64) = v17;
    *(DerivedStorage + 72) = a5;
    v18 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 80) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 96) = *(v18 + 16);
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    v13 = CMBufferQueueCreate(v11, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 144));
    if (!v13)
    {
      *(DerivedStorage + 160) = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      *DerivedStorage = FigSimpleMutexCreate();
      *(DerivedStorage + 8) = 1;
      *(DerivedStorage + 104) = FigSimpleMutexCreate();
      *a6 = 0;
    }

    return v13;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

__CFString *sbcbq_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerToBufferQueue %p>", a1);
  return Mutable;
}

uint64_t sbcbq_setProperty(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"HighWaterDuration"))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&time1, a3);
        v8 = *&time1.value;
        epoch = time1.epoch;
        *(DerivedStorage + 28) = time1.epoch;
        *(DerivedStorage + 12) = v8;
        v10 = *(DerivedStorage + 12);
        time1.epoch = epoch;
        *&time1.value = v10;
        time2 = *(DerivedStorage + 80);
        p_time1 = &time1;
        p_time2 = &time2;
        goto LABEL_5;
      }
    }

    goto LABEL_21;
  }

  if (!CFEqual(a2, @"LowWaterDuration"))
  {
    if (!CFEqual(a2, @"PrerollDuration"))
    {
      return 4294954512;
    }

    if (a3)
    {
      v17 = CFGetTypeID(a3);
      if (v17 == CFDictionaryGetTypeID())
      {
        memset(&time1, 0, sizeof(time1));
        CMTimeMakeFromDictionary(&time1, a3);
        time2 = time1;
        v21 = *(DerivedStorage + 80);
        if (!CMTimeCompare(&time2, &v21))
        {
          return 0;
        }

        v18 = *&time1.value;
        *(DerivedStorage + 80) = *&time1.value;
        v19 = time1.epoch;
        *(DerivedStorage + 96) = time1.epoch;
        *&time2.value = v18;
        time2.epoch = v19;
        v20 = *(DerivedStorage + 12);
        v21.epoch = *(DerivedStorage + 28);
        *&v21.value = v20;
        p_time1 = &time2;
        p_time2 = &v21;
LABEL_5:
        CMTimeCompare(p_time1, p_time2);
        return 0;
      }
    }

    goto LABEL_21;
  }

  if (!a3 || (v14 = CFGetTypeID(a3), v14 != CFDictionaryGetTypeID()))
  {
LABEL_21:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  CMTimeMakeFromDictionary(&time1, a3);
  *(DerivedStorage + 48) = time1;
  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    return 0;
  }

  if (!*(DerivedStorage + 112))
  {
    return 0;
  }

  v15 = *(DerivedStorage + 128);
  if (!v15)
  {
    return 0;
  }

  CMBufferQueueRemoveTrigger(*(DerivedStorage + 136), v15);
  *(DerivedStorage + 128) = 0;
  v16 = *(DerivedStorage + 136);
  time1 = *(DerivedStorage + 48);
  return CMBufferQueueInstallTrigger(v16, sbcbq_LowWater, a1, 2, &time1, (DerivedStorage + 128));
}

uint64_t sbcbq_resetSideQueueAndSwitchToMainQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CMBufferQueueReset(*(DerivedStorage + 144));
  CFArrayRemoveAllValues(*(DerivedStorage + 160));
  *(DerivedStorage + 8) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

BOOL sbcbq_isQueueBelowPrerollLevel()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = **&MEMORY[0x1E6960C70];
  v1 = 48;
  if ((*(DerivedStorage + 92) & 0x1D) == 1)
  {
    v1 = 80;
  }

  v6 = *(DerivedStorage + v1);
  v2 = 136;
  if (!*(DerivedStorage + 8))
  {
    v2 = 144;
  }

  CMBufferQueueGetDuration(&v7, *(DerivedStorage + v2));
  time1 = v7;
  v4 = v6;
  return CMTimeCompare(&time1, &v4) < 1;
}

uint64_t sbcbq_countNonMarkerOnlySampleBuffers(opaqueCMSampleBuffer *a1, void *a2)
{
  if (CMSampleBufferGetNumSamples(a1) >= 1)
  {
    ++*a2;
  }

  return 0;
}

uint64_t sbcbq_setAttachmentIfSampleBufferInPTSRange(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetPresentationTimeStamp(&v7, a1);
  time1 = *(a2 + 16);
  v5 = v7;
  if (CMTimeCompare(&time1, &v5) <= 0)
  {
    time1 = v7;
    v5 = *(a2 + 40);
    if (CMTimeCompare(&time1, &v5) < 0)
    {
      CMSetAttachment(a1, *a2, *(a2 + 8), 1u);
    }
  }

  return 0;
}

uint64_t FigAirPlayRouteGetClassID()
{
  if (_MergedGlobals_48 != -1)
  {
    FigAirPlayRouteGetClassID_cold_1();
  }

  return qword_1ED4CA908;
}

uint64_t airplayRoute_registerBaseClass()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAirPlayRouteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(__str, 0, sizeof(__str));
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (_MergedGlobals_48 != -1)
  {
    FigAirPlayRouteGetClassID_cold_1();
  }

  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v6 = DerivedStorage;
  *(DerivedStorage + 153) = 0;
  v7 = (DerivedStorage + 153);
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, v7, 10, 0x600u);
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.airplayroute_serialize.%s", v7);
  v8 = dispatch_queue_create(__str, 0);
  *(v6 + 88) = v8;
  if (!v8)
  {
    return 4294954434;
  }

  *(v6 + 50) = 1;
  *(v6 + 139) = 0;
  if (dword_1EAF17000)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = 0;
  *a3 = 0;
  return v10;
}

void airplayRoute_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17000 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *DerivedStorage = 1;
  if (*(DerivedStorage + 72))
  {
    if (dword_1EAF17000 >= 2)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
    v6 = *(DerivedStorage + 72);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(SharedInstance, a1, v6);
    }
  }

  *(DerivedStorage + 138) = 0;
  airplayRoute_stopRoutingContextListeners();
  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 8) = 0;
  }

  v9 = *(DerivedStorage + 16);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 16) = 0;
  }

  if (*(DerivedStorage + 112))
  {
    airplayRoute_stopFigAudioSessionListeners();
    v10 = *(DerivedStorage + 112);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  MX_RunningBoardServices_InvalidateMediaPlaybackProcessAssertion();
  v11 = *(DerivedStorage + 128);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 128) = 0;
  }

  v12 = *(DerivedStorage + 88);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 88) = 0;
  }

  airplayRoute_ResumeAirPlayScreen(a1);
  if (*(DerivedStorage + 32))
  {
    FigEndpointRelinquishStreamResource();
  }

  v13 = *(DerivedStorage + 40);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 40) = 0;
  }

  v14 = *(DerivedStorage + 32);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 32) = 0;
  }

  airplayRoute_stopEndpointNotificationListeners();
  v15 = *(DerivedStorage + 24);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 24) = 0;
  }

  v16 = *(DerivedStorage + 80);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 80) = 0;
  }

  v17 = *(DerivedStorage + 96);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 96) = 0;
  }

  v18 = *(DerivedStorage + 72);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 72) = 0;
  }

  v19 = *(DerivedStorage + 56);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 56) = 0;
  }

  *(DerivedStorage + 104) = 0;
  v20 = *(DerivedStorage + 144);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 144) = 0;
  }
}

uint64_t airplayRoute_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  if (!a1 || (v9 = DerivedStorage, *DerivedStorage))
  {
    airplayRoute_CopyProperty_cold_1(&v27);
    v12 = v27;
  }

  else
  {
    if (CFEqual(a2, @"IsSetupForAirPlayVideo"))
    {
      v10 = *(v9 + 11);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __airplayRoute_CopyProperty_block_invoke;
      block[3] = &__block_descriptor_tmp_195;
      block[4] = v9;
      block[5] = a4;
      v11 = block;
      goto LABEL_5;
    }

    if (!CFEqual(a2, @"PickerContextUUID"))
    {
      if (CFEqual(a2, @"BufferedAudioStream"))
      {
        v10 = *(v9 + 11);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 0x40000000;
        v20[2] = __airplayRoute_CopyProperty_block_invoke_3;
        v20[3] = &__block_descriptor_tmp_197;
        v20[4] = a4;
        v20[5] = v9;
        v11 = v20;
      }

      else
      {
        if (!CFEqual(a2, @"DoesCurrentRouteUseScreen"))
        {
          goto LABEL_6;
        }

        v10 = *(v9 + 11);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = __airplayRoute_CopyProperty_block_invoke_4;
        v19[3] = &__block_descriptor_tmp_198;
        v19[4] = a4;
        v19[5] = v9;
        v11 = v19;
      }

LABEL_5:
      dispatch_sync(v10, v11);
LABEL_6:
      v12 = 0;
      goto LABEL_7;
    }

    v15 = *(v9 + 11);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = __airplayRoute_CopyProperty_block_invoke_2;
    v21[3] = &unk_1E7484268;
    v21[4] = &v23;
    v21[5] = a1;
    dispatch_sync(v15, v21);
    v16 = v24[3];
    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69AF4E8], a3, a4);
      }

      goto LABEL_6;
    }

    v18 = *(v9 + 2);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    v12 = 0;
    *a4 = v18;
  }

LABEL_7:
  v13 = v24[3];
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v23, 8);
  return v12;
}

uint64_t airplayRoute_ResumeAirPlayScreen(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v3 = DerivedStorage, *DerivedStorage))
  {
    airplayRoute_ResumeAirPlayScreen_cold_1(v6);
    return v6[0];
  }

  if (*(DerivedStorage + 48) && *(DerivedStorage + 104))
  {
    result = *(DerivedStorage + 40);
    if (!result)
    {
      return result;
    }

    if (dword_1EAF17000)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v3 + 48) = 0;
    FigEndpointStreamResume();
  }

  return 0;
}

void airplayRoute_routeConfigUpdatedNotificationCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17000 >= 2)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B8]);
    if (FigCFEqual())
    {
      if (dword_1EAF17000 >= 2)
      {
        v13 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = *(DerivedStorage + 88);
      if (v10)
      {
        if (a2)
        {
          CFRetain(a2);
          v10 = *(DerivedStorage + 88);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __airplayRoute_routeConfigUpdatedNotificationCallback_block_invoke;
        block[3] = &__block_descriptor_tmp_185;
        block[4] = DerivedStorage;
        block[5] = a2;
        dispatch_async(v10, block);
      }
    }
  }
}

void __airplayRoute_currentEndpointChangedNotificationCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    if (*(a1 + 48))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    airplayRoute_pickableRoutesChangedGuts(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t airplayRoute_endpointStreamsHaveSameID(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  cf = 0;
  v3 = MEMORY[0x1E6962568];
  if (a1 && ((v4 = FigEndpointStreamGetCMBaseObject(), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v5(v4, *v3, 0, &cf)))
  {
    airplayRoute_endpointStreamsHaveSameID_cold_1();
  }

  else
  {
    if (!a2 || (CMBaseObject = FigEndpointStreamGetCMBaseObject(), (v7 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v7(CMBaseObject, *v3, 0, &v10))
    {
      v8 = FigCFEqual();
      goto LABEL_8;
    }

    airplayRoute_endpointStreamsHaveSameID_cold_2();
  }

  v8 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

void airplayRoute_updateRoutingRegistryInternal(uint64_t a1, uint64_t a2)
{
  cf[26] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(a2, *MEMORY[0x1E69AF4E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EAF17000 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
  v8 = *(DerivedStorage + 72);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9 || v9(SharedInstance, a1, v8))
  {
    goto LABEL_16;
  }

  v10 = *(DerivedStorage + 72);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 72) = 0;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (cf[0])
  {
    if (*(DerivedStorage + 64))
    {
      if (!*(DerivedStorage + 152) && !CFPreferenceNumberWithDefault && !*(DerivedStorage + 140) && !*(DerivedStorage + 139))
      {
        v12 = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance();
        v13 = cf[0];
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v14)
        {
          if (!v14(v12, a1, v13))
          {
            v15 = *(DerivedStorage + 72);
            v16 = cf[0];
            *(DerivedStorage + 72) = cf[0];
            if (v16)
            {
              CFRetain(v16);
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }
        }
      }
    }

LABEL_16:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

void __airplayRoute_endpointStreamsChangedCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    airplayRoute_pickableRoutesChangedGuts(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __airplayRoute_routeConfigUpdatedNotificationCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    airplayRoute_pickableRoutesChangedGuts(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t airplayRoute_playbackWillBeInterruptedNotificationCallback()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void airplayRoute_overlayPresentDidChangeNotificationCallback(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();

  airplayRoute_checkIfPrimaryAppChanged(a2);
}

uint64_t airplayRoute_routingContextDidChangeNotificationCallback(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();

  return airplayRoute_ResetRoutingContextIfNeeded(a2);
}

void airplayRoute_checkIfPrimaryAppChanged(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 88))
      {
        CFRetain(a1);
        v4 = *(v3 + 88);
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __airplayRoute_checkIfPrimaryAppChanged_block_invoke;
        v5[3] = &__block_descriptor_tmp_186;
        v5[4] = v3;
        v5[5] = a1;
        dispatch_async(v4, v5);
      }
    }
  }
}

void __airplayRoute_checkIfPrimaryAppChanged_block_invoke(uint64_t a1)
{
  cf = 0;
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      v6 = *(CMBaseObjectGetVTable() + 16);
      if (v6)
      {
        v7 = *(v6 + 48);
        if (v7)
        {
          v7(v4, *MEMORY[0x1E69AEDE8], v5, &cf);
        }
      }

      FigCFEqual();
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetBoolean();
      FigCFDictionarySetValue();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (cf)
      {
        CFRelease(cf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t airplayRoute_ResetRoutingContextIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v3 = *(DerivedStorage + 88);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __airplayRoute_ResetRoutingContextIfNeeded_block_invoke;
  v5[3] = &__block_descriptor_tmp_187;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_async(v3, v5);
  return 0;
}

uint64_t airplayRoute_updateAudioSessionPolicyForBuffered(const void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 8;
  v3 = *(CMBaseObjectGetDerivedStorage() + 112);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = Mutable;
  cf = 0;
  if (v3)
  {
    v6 = Mutable == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v13 = 0;
    if (!Mutable)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  CFArrayAppendValue(Mutable, *MEMORY[0x1E69AFCC0]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69B0020]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69AFF80]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69B02C0]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69B0370]);
  v7 = *(CMBaseObjectGetVTable() + 16);
  if (v7)
  {
    v8 = *(v7 + 112);
    if (v8)
    {
      v8(v3, v5, &cf, 0);
    }
  }

  FigCFDictionaryGetValue();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  FigCFDictionaryGetValue();
  v10 = FigCFDictionaryGetValue();
  FigCFDictionaryGetValue();
  v11 = valuePtr == 32 || valuePtr == 16;
  if (v11 && !v10)
  {
    if (dword_1EAF17000)
    {
LABEL_17:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v13 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (FigCFEqual())
  {
    if (dword_1EAF17000)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

  if (FigCFEqual() || FigCFEqual() && !v10 || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (dword_1EAF17000)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

  if (FigCFEqual())
  {
    if (dword_1EAF17000)
    {
      goto LABEL_17;
    }

LABEL_37:
    v13 = 1;
    goto LABEL_38;
  }

  if (FigCFEqual())
  {
    if (dword_1EAF17000)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

  v13 = 0;
LABEL_38:
  CFRelease(v5);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_40:
  if (v13 == *(DerivedStorage + 140))
  {
    return 0;
  }

  *(DerivedStorage + 140) = v13;
  airplayRoute_updateRoutingRegistry(a1);
  return 1;
}

void airplayRoute_updateRoutingRegistry(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v3 = *(DerivedStorage + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __airplayRoute_updateRoutingRegistry_block_invoke;
  block[3] = &__block_descriptor_tmp_194;
  block[4] = a1;
  dispatch_async(v3, block);
}

void airplayRoute_updateRoutingContextUUID(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v5 = *(DerivedStorage + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __airplayRoute_updateRoutingContextUUID_block_invoke;
  block[3] = &__block_descriptor_tmp_207_0;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a1;
  dispatch_async(v5, block);
}

void __airplayRoute_setNewFigAudioSession_block_invoke(uint64_t a1)
{
  cf = 0;
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (!*v2)
  {
    if (*(v2 + 112))
    {
      __airplayRoute_setNewFigAudioSession_block_invoke_cold_1(a1, a1 + 32, v21);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 112);
    v8 = *(a1 + 48);
    *(v6 + 112) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    airplayRoute_updateAudioSessionPolicyForBuffered(*(a1 + 40));
    if (*(*(a1 + 32) + 112))
    {
      v10 = *(a1 + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!v10 || *DerivedStorage)
      {
        __airplayRoute_setNewFigAudioSession_block_invoke_cold_2();
      }

      else
      {
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
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }

      v12 = *v3;
      v13 = *(*v3 + 144);
      if (v13)
      {
        CFRelease(v13);
        *(*v3 + 144) = 0;
        v12 = *v3;
      }

      v14 = *(v12 + 112);
      v9 = *MEMORY[0x1E695E480];
      if (v14)
      {
        v15 = *(CMBaseObjectGetVTable() + 16);
        if (v15)
        {
          v16 = *(v15 + 48);
          if (v16)
          {
            v16(v14, *MEMORY[0x1E69AFF80], v9, v12 + 144);
          }
        }
      }

      airplayRoute_checkIfPrimaryAppChanged(*(a1 + 40));
    }

    else
    {
      v9 = *MEMORY[0x1E695E480];
    }

    airplayRoute_resetRoutingContextIfNeededInternal(*(a1 + 40));
    v17 = *(*(a1 + 32) + 112);
    if (v17)
    {
      v18 = *(CMBaseObjectGetVTable() + 16);
      if (v18)
      {
        v19 = *(v18 + 48);
        if (v19)
        {
          v19(v17, *MEMORY[0x1E69AFCE8], v9, &cf);
        }
      }
    }

    Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __airplayRoute_setNewFigAudioSession_block_invoke_2(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (v4)
    {
      v5 = *(v4 + 104);
      if (v5)
      {
        v5(v3, Mutable, 0);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = *(a1 + 32);

  CFRelease(v6);
}

void __airplayRoute_setAirPlayVideoIsActive_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2 && *(v2 + 112))
  {
    __airplayRoute_setAirPlayVideoIsActive_block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2 && *(v2 + 112))
  {
    __airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t airplayRoute_SuspendAirPlayScreen(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v5 = DerivedStorage, *DerivedStorage))
  {
    airplayRoute_SuspendAirPlayScreen_cold_2(v17);
    return v17[0];
  }

  if (!a2)
  {
    if (!*(DerivedStorage + 48) && *(DerivedStorage + 104) && *(DerivedStorage + 40))
    {
      if (dword_1EAF17000)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v5 + 48) = 1;
      FigEndpointStreamSuspend();
    }

    return 0;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  if (*v6)
  {
    airplayRoute_SuspendAirPlayScreen_cold_1(v17);
    return v17[0];
  }

  v7 = v6;
  if (*(v6 + 48) || !*(v6 + 104) || !*(v6 + 40))
  {
    return 0;
  }

  v8 = dispatch_semaphore_create(0);
  if (dword_1EAF17000)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(v7 + 48) = 1;
  dispatch_retain(v8);
  v13 = *(v7 + 40);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v14(v13, 0, airplayRoute_screenStreamCompletionCallback, v8);
  }

  v15 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v8, v15))
  {
    v10 = FigSignalErrorAtGM();
  }

  else
  {
    v10 = 0;
  }

  dispatch_release(v8);
  if (dword_1EAF17000)
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v10;
}

void airplayRoute_screenStreamCompletionCallback(int a1, int a2, dispatch_semaphore_t dsema)
{
  dispatch_semaphore_signal(dsema);

  dispatch_release(dsema);
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_26_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, os_log_type_t type, int a31)
{

  return os_log_type_enabled(a1, type);
}

uint64_t virtualDisplaySourceRegisterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplaySourceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualDisplaySourceGetClassID_once, virtualDisplaySourceRegisterType);

  return CMBaseClassGetCFTypeID();
}

void __raci_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"AssetCacheInspector_ServerConnectionDied");
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();

    CFRelease(v3);
  }

  else
  {
    __raci_ensureClientEstablished_block_invoke_cold_1(a1);
  }
}

uint64_t raci_deadConnectionCallback()
{
  CMBaseObjectGetDerivedStorage();

  return FigAtomicCompareAndSwap32();
}

uint64_t raci_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    if (FigAtomicCompareAndSwap32())
    {
      result = 0;
      *a2 = *(DerivedStorage + 8);
    }

    else
    {
      raci_getObjectID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    raci_getObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigSampleBufferConsumerCreateThatDiscards(void *a1)
{
  if (a1)
  {
    FigSampleBufferConsumerGetClassID();
    v2 = CMDerivedObjectCreate();
    if (!v2)
    {
      *a1 = 0;
    }

    return v2;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

__CFString *blackhole_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerThatDiscards %p>", a1);
  return Mutable;
}

uint64_t FigSampleBufferConsumerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferConsumerGetClassID_sRegisterFigSampleBufferConsumerTypeOnce, RegisterFigSampleBufferConsumerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t ttmlParser_RegisterTTMLParser()
{
  result = _CFRuntimeRegisterClass();
  sTTMLParserID = result;
  return result;
}

uint64_t TTMLParserCreate(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v8 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&TTMLParserGetTypeID_sRegisterTTMLParserOnce, ttmlParser_RegisterTTMLParser);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v10 = Instance;
    Instance[2] = a2;
    Instance[3] = a1;
    Instance[7] = CFSetCreateMutable(v8, 0, 0);
    if (a3)
    {
      Copy = CFDictionaryCreateCopy(v8, a3);
    }

    else
    {
      Copy = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v12 = Copy;
    result = 0;
    v10[8] = v12;
    *a4 = v10;
  }

  else
  {
    TTMLParserCreate_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t TTMLParserRegisterReportingCallbacks(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(a1 + 48) = a2;
  *(a1 + 32) = *a3;
  return 0;
}

double ttmlParser_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void ttmlParser_Finalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

void ttmlParser_addTextNodeSourceInformation(void *value, uint64_t a2)
{
  if (value && !*a2)
  {
    ParentNode = value;
    v4 = *MEMORY[0x1E6961450];
    v5 = *MEMORY[0x1E695E480];
    v6 = MEMORY[0x1E695E9C0];
    do
    {
      valuea = 0;
      theArray = 0;
      if (CFSetContainsValue(*(*(a2 + 8) + 56), ParentNode))
      {
        goto LABEL_13;
      }

      v7 = FigTTMLNodeCopySkippedElementLocalNames(ParentNode, &theArray);
      if (v7)
      {
        v11 = v7;
      }

      else
      {
        if (!theArray || !CFArrayGetCount(theArray))
        {
          goto LABEL_13;
        }

        if (CFDictionaryGetValueIfPresent(*(a2 + 16), v4, &valuea))
        {
          CFRetain(valuea);
LABEL_12:
          v9 = valuea;
          v10 = theArray;
          v15.length = CFArrayGetCount(theArray);
          v15.location = 0;
          CFArrayAppendArray(v9, v10, v15);
LABEL_13:
          v11 = 0;
          goto LABEL_14;
        }

        Mutable = CFArrayCreateMutable(v5, 0, v6);
        valuea = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(*(a2 + 16), v4, Mutable);
          goto LABEL_12;
        }

        ttmlParser_addTextNodeSourceInformation_cold_1(&v14);
        v11 = v14;
      }

LABEL_14:
      if (valuea)
      {
        CFRelease(valuea);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v11)
      {
        *a2 = v11;
        return;
      }

      CFSetAddValue(*(*(a2 + 8) + 56), ParentNode);
      *a2 = 0;
      ParentNode = FigTTMLNodeGetParentNode();
    }

    while (ParentNode);
  }
}

uint64_t ttmlParser_getTopRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_getBottomRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_getLeftRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_getRightRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_doPropertiesMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a3)
  {
    return 1;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a3 - 1;
  for (i = a2 + 8; ; i += 24)
  {
    v7 = *(i - 8);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8 || v8(a1, v7, v4, &cf) || (!*(i + 8) || cf) && !FigCFEqual())
    {
      v9 = 0;
      goto LABEL_15;
    }

    if (!v5)
    {
      break;
    }

    --v5;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v9 = 1;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t ttmlParser_initializePredefinedRegion(uint64_t a1, uint64_t a2)
{
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {

    return v8(CMBaseObject, a1, a2);
  }

  return result;
}

void OUTLINED_FUNCTION_0_71()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_2_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 a61, __int128 a62, __int128 a63)
{
  v66 = *(v64 - 208);
  a61 = *(v64 - 224);
  a62 = v66;
  v67 = *(v64 - 176);
  a63 = *(v64 - 192);
  a64 = v67;

  return MEMORY[0x1EEDBD2D8](&a61, &STACK[0x210]);
}

uint64_t OUTLINED_FUNCTION_4_52(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 216) = result;
  *(v21 - 208) = 0;
  *(v21 - 200) = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_42(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 192) = result;
  *(v20 - 184) = 0;
  *(v20 - 176) = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return FigCaptionDynamicStyleCreate();
}

void OUTLINED_FUNCTION_9_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 216) = a1;
  *(v21 - 208) = 0;
  *(v21 - 200) = a21;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_10_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 144) = a1;
  *(v17 - 136) = 0;
  *(v17 - 128) = a17;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_11_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 - 168) = a1;
  *(v16 - 160) = 0;
  *(v16 - 152) = a16;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_12_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 168) = a1;
  *(v17 - 160) = 0;
  *(v17 - 152) = a17;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_13_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 192) = a1;
  *(v20 - 184) = 0;
  *(v20 - 176) = a20;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_16_18()
{

  JUMPOUT(0x19A8D3660);
}

const void *OUTLINED_FUNCTION_17_15()
{
  v3 = *(v1 + 2336);

  return CFDictionaryGetValue(v3, v0);
}

const void *OUTLINED_FUNCTION_18_16()
{
  v3 = *(v1 + 2344);

  return CFDictionaryGetValue(v3, v0);
}

__n128 OUTLINED_FUNCTION_19_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a33, uint64_t a34)
{
  result = a33;
  *(v34 - 224) = a33;
  *(v34 - 208) = a34;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_12(uint64_t a1)
{
  *(v1 - 120) = a1;
  *(v1 - 112) = 1;

  return FigCaptionRegionGetCMBaseObject();
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1)
{
  *(v1 - 144) = a1;
  *(v1 - 136) = 1;

  return FigCaptionRegionGetCMBaseObject();
}

const void *OUTLINED_FUNCTION_22_17()
{
  v3 = *(v1 + 2360);

  return CFDictionaryGetValue(v3, v0);
}

const void *OUTLINED_FUNCTION_23_18()
{
  v3 = *(v1 + 2352);

  return CFDictionaryGetValue(v3, v0);
}

uint64_t remakerFamily_formatWriterErrorOccurred(uint64_t a1, const void *a2)
{
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return remakerFamily_HandleNotificationErrorPayload(a2, 0);
}

void remakerFamily_renderPipelineLostDecoderState(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == FigAssetReaderGetTypeID())
    {
      v6 = -16112;
    }

    else
    {
      v6 = -16104;
    }

    remakerFamily_PostFailureNotificationIfError(v4, a2, v6, 1u, 0);

    CFRelease(v4);
  }
}

void remakerFamily_MediaProcessorProcessSampleBufferFailed(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  remakerFamily_HandleNotificationErrorPayload(v3, a2);
  if (v3)
  {
    CFRelease(v3);
  }
}

void remakerFamily_MediaProcessorSessionTerminated(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == FigAssetReaderGetTypeID())
    {
      v6 = -16112;
    }

    else
    {
      v7 = CFGetTypeID(v3);
      if (v7 == FigAssetWriterGetTypeID())
      {
        v6 = -16124;
      }

      else
      {
        v6 = -16104;
      }
    }

    remakerFamily_PostFailureNotificationIfError(v3, a2, v6, 1u, 0);
    CFRelease(v3);
  }

  else
  {
    remakerFamily_PostFailureNotificationIfError(0, a2, -16104, 1u, 0);
  }
}

uint64_t remakerFamily_registerDarwinNotification(uint64_t a1, int *a2)
{
  v7 = 0;
  out_token = -1;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    remakerFamily_registerDarwinNotification_cold_2(&v8);
LABEL_7:
    v4 = v8;
    goto LABEL_4;
  }

  if (notify_register_check(CStringPtrAndBufferToFree, &out_token))
  {
    remakerFamily_registerDarwinNotification_cold_1(&v8);
    goto LABEL_7;
  }

  v4 = 0;
  *a2 = out_token;
LABEL_4:
  free(v7);
  return v4;
}

uint64_t remakerFamily_postDarwinNotificationWithState(int a1, int val, uint64_t a3)
{
  if (!notify_is_valid_token(val))
  {
    goto LABEL_5;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    v9 = 977;
LABEL_10:
    remakerFamily_postDarwinNotificationWithState_cold_1(v9, &v10);
    v7 = v10;
    goto LABEL_6;
  }

  v6 = CStringPtrAndBufferToFree;
  if (notify_set_state(val, a3))
  {
    v9 = 980;
    goto LABEL_10;
  }

  if (notify_post(v6))
  {
    v9 = 983;
    goto LABEL_10;
  }

LABEL_5:
  v7 = 0;
LABEL_6:
  free(0);
  return v7;
}

uint64_t remakerFamily_SetRemakerState(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexLock();
  }

  v6 = *DerivedStorage;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if ((v6 - 1) <= 1)
        {
          v7 = 0;
          v8 = 3;
          goto LABEL_33;
        }
      }

      else if (v6 == 3)
      {
        v7 = 0;
        v8 = 4;
        goto LABEL_33;
      }
    }

    else if (a2 == 1)
    {
      if (!v6)
      {
        v7 = 0;
        v8 = 1;
        goto LABEL_33;
      }
    }

    else if (a2 == 2 && v6 == 1)
    {
      v7 = 0;
      v8 = 2;
LABEL_33:
      *DerivedStorage = v8;
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      goto LABEL_22;
    }

    if (a2 == 8)
    {
      if (v6 == 7)
      {
        v7 = 0;
        goto LABEL_34;
      }

      if (v6 != 6)
      {
        v7 = 0;
        v8 = 8;
        goto LABEL_33;
      }

LABEL_22:
      v7 = 0;
      v8 = 7;
      goto LABEL_33;
    }
  }

  else
  {
    if (a2 != 5)
    {
      if (v6 != 8)
      {
        v7 = 0;
        v8 = 6;
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v6 == 4)
    {
      v7 = 0;
      v8 = 5;
      goto LABEL_33;
    }
  }

LABEL_29:
  v7 = FigSignalErrorAtGM();
LABEL_34:
  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexUnlock();
  }

  if (a3)
  {
    *a3 = *DerivedStorage;
  }

  return v7;
}

uint64_t FigFormatWriterInvalidate(uint64_t a1)
{
  result = FigFormatWriterGetFigBaseObject(a1);
  if (result)
  {
    v2 = result;
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 24);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

intptr_t remakerFamily_removeTrackNotifications(intptr_t result)
{
  v1 = result;
  if (*(result + 416))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    result = v1[51];
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }
  }

  if (v1[7])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (v1[21])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (v1[25])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (v1[29])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    if (*(v1[19] + 160))
    {
      result = v1[30];
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result >= 2)
        {
          v2 = result;
          for (i = 1; i != v2; ++i)
          {
            CFArrayGetValueAtIndex(v1[30], i);
            CMNotificationCenterGetDefaultLocalCenter();
            result = FigNotificationCenterRemoveWeakListeners();
          }
        }
      }
    }
  }

  if (v1[33])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (v1[36])
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListeners();
  }

  return result;
}

uint64_t remakerFamily_invalidateTrack(uint64_t a1)
{
  result = FigAtomicCompareAndSwap32();
  if (result)
  {
    v3 = *(a1 + 288);
    if (v3)
    {
      FigMediaProcessorInvalidate(v3);
    }

    v4 = *(a1 + 264);
    if (v4)
    {
      FigMediaProcessorInvalidate(v4);
    }

    v5 = *(a1 + 232);
    if (v5)
    {
      FigMediaProcessorInvalidate(v5);
      if (*(*(a1 + 152) + 160))
      {
        v6 = *(a1 + 240);
        if (v6)
        {
          Count = CFArrayGetCount(v6);
          if (Count >= 2)
          {
            v8 = Count;
            for (i = 1; i != v8; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), i);
              FigMediaProcessorInvalidate(ValueAtIndex);
            }
          }
        }
      }
    }

    FigPlaybackBossInvalidate(*(a1 + 416));
    v11 = *(a1 + 56);
    if (v11)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v11);
      if (FigBaseObject)
      {
        v13 = FigBaseObject;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v14)
        {
          v14(v13);
        }
      }
    }

    assetReaderTrack_Invalidate(*(a1 + 152));
    assetWriterTrack_Invalidate(*(a1 + 160));
    v15 = *(a1 + 168);
    if (v15)
    {
      FigVideoCompositionProcessorInvalidate(v15);
    }

    v16 = *(a1 + 368);
    if (v16 && dispatch_get_current_queue() != v16)
    {
      dispatch_sync_f(v16, 0, remakerFamily_NoOp);
    }

    remakerFamily_cleanupTemporaryTrackFiles(a1);
    v17 = *(a1 + 200);
    if (v17)
    {
      FigAudioQueueOfflineMixerInvalidate(v17);
    }

    v18 = *(a1 + 232);
    if (v18)
    {
      FigMediaProcessorInvalidate(v18);
      if (*(*(a1 + 152) + 160))
      {
        v19 = *(a1 + 240);
        if (v19)
        {
          v20 = CFArrayGetCount(v19);
          if (v20 >= 2)
          {
            v21 = v20;
            for (j = 1; j != v21; ++j)
            {
              v23 = CFArrayGetValueAtIndex(*(a1 + 240), j);
              FigMediaProcessorInvalidate(v23);
            }
          }
        }
      }
    }

    v24 = *(a1 + 264);
    if (v24)
    {
      FigMediaProcessorInvalidate(v24);
    }

    result = *(a1 + 288);
    if (result)
    {

      return FigMediaProcessorInvalidate(result);
    }
  }

  return result;
}

void remakerFamily_invalidateAllMediaProcessors()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 80);
  if (v1)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
        v6 = *(ValueAtIndex + 33);
        if (v6)
        {
          FigMediaProcessorInvalidate(v6);
        }

        v7 = *(ValueAtIndex + 29);
        if (v7)
        {
          FigMediaProcessorInvalidate(v7);
          if (*(*(ValueAtIndex + 19) + 160))
          {
            v8 = *(ValueAtIndex + 30);
            if (v8)
            {
              v9 = CFArrayGetCount(v8);
              if (v9 >= 2)
              {
                v10 = v9;
                for (j = 1; j != v10; ++j)
                {
                  v12 = CFArrayGetValueAtIndex(*(ValueAtIndex + 30), j);
                  FigMediaProcessorInvalidate(v12);
                }
              }
            }
          }
        }

        v13 = *(ValueAtIndex + 36);
        if (v13)
        {
          FigMediaProcessorInvalidate(v13);
        }

        remakerFamily_cleanupTemporaryTrackFiles(ValueAtIndex);
      }
    }
  }
}

void remakerFamily_cleanupTemporaryTrackFiles(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 360) = 0;
  }

  v3 = *(a1 + 392);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 392) = 0;
  }
}

uint64_t remakerFamily_setMemoryUsage(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v26, 0, sizeof(v26));
  if (a2)
  {
    CMTimeMake(&v26, 2, 1000);
    v4 = 1;
  }

  else
  {
    CMTimeMake(&v26, 45, 1000);
    v4 = 35;
  }

  memset(&v25, 0, sizeof(v25));
  CMTimeMake(&v25, v4, 1000);
  result = *(DerivedStorage + 80);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      if (a2)
      {
        v8 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = MEMORY[0x1E695E4C0];
      }

      v9 = *v8;
      do
      {
        result = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v7);
        v10 = *(result + 32);
        if (v10 == 1986618469 || v10 == 1635088502)
        {
          v12 = result;
          v13 = *(result + 264);
          if (v13)
          {
            v28 = v26;
            v27 = v25;
            FigMediaProcessorSetWaterLevels(v13, &v28, &v27);
          }

          v14 = *(v12 + 232);
          if (v14)
          {
            v28 = v26;
            v27 = v25;
            FigMediaProcessorSetWaterLevels(v14, &v28, &v27);
            if (*(*(v12 + 152) + 160))
            {
              v15 = *(v12 + 240);
              if (v15)
              {
                Count = CFArrayGetCount(v15);
                if (Count >= 2)
                {
                  v17 = Count;
                  for (i = 1; i != v17; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 240), i);
                    v28 = v26;
                    v27 = v25;
                    FigMediaProcessorSetWaterLevels(ValueAtIndex, &v28, &v27);
                  }
                }
              }
            }
          }

          v20 = *(v12 + 56);
          if (v20)
          {
            v24 = v26;
            v23 = v25;
            v21 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v21)
            {
              v28 = v24;
              v27 = v23;
              v21(v20, &v28, &v27);
            }
          }

          v22 = *(v12 + 168);
          if (v22)
          {
            v28 = v26;
            v27 = v25;
            FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels(v22, &v28, &v27);
          }

          result = *(v12 + 288);
          if (result)
          {
            result = FigMediaProcessorSetProperty(result, @"MinimizeMemoryUsage", v9);
          }
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  return result;
}

CMTime *remakerFamily_getHighWaterLevel@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1)
  {
    v2 = 5;
    v3 = 30;
  }

  else
  {
    v2 = 45;
    v3 = 1000;
  }

  return CMTimeMake(a2, v2, v3);
}

CMTime *remakerFamily_getLowWaterLevel@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1)
  {
    v2 = 3;
    v3 = 30;
  }

  else
  {
    v2 = 35;
    v3 = 1000;
  }

  return CMTimeMake(a2, v2, v3);
}

const char *remakerFamily_StateDesc(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "bad";
  }

  else
  {
    return off_1E74844A0[a1 - 1];
  }
}

__CFString *remakerFamily_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = "FigRemaker";
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == FigAssetReaderGetTypeID())
    {
      v5 = "FigAssetReader";
    }

    else
    {
      v7 = CFGetTypeID(a1);
      if (v7 == FigAssetWriterGetTypeID())
      {
        v5 = "FigAssetWriter";
      }
    }
  }

  v8 = CFGetRetainCount(a1);
  v9 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p retainCount: %d allocator: %p, ", v5, a1, v8, v9);
  v10 = remakerFamily_StateDesc(*DerivedStorage);
  if (*(DerivedStorage + 384))
  {
    v11 = " singlePassBossIsDone";
  }

  else
  {
    v11 = "";
  }

  if (*(DerivedStorage + 428))
  {
    v12 = " didLastStep";
  }

  else
  {
    v12 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"state: %s%s%s, ", v10, v11, v12);
  CFStringAppendFormat(Mutable, 0, @"sourceAsset %@, destByteStream %@, tempByteStream %@, tempFilePath %@, formatWriter %@, singlePassBoss %@", *(DerivedStorage + 72), *(DerivedStorage + 168), *(DerivedStorage + 216), *(DerivedStorage + 224), *(DerivedStorage + 184), *(DerivedStorage + 376));
  CFStringAppendFormat(Mutable, 0, @"\n  %@", *(DerivedStorage + 80));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

_DWORD *remakerFamily_getChannelBySourceTrackID(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    result = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v6);
    if (result[7] == a2)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return result;
}

unint64_t remakerFamily_useAudioFormatWriterGivenFormatWriterOption(unint64_t result)
{
  if (result)
  {
    v1 = result;
    return CFEqual(result, @"CAFAudioFile") || CFEqual(v1, @"AIFFAudioFile") || CFEqual(v1, @"WAVEAudioFile") || CFEqual(v1, @"AMRAudioFile") != 0;
  }

  return result;
}

uint64_t remakerFamily_createFormatWriter(const void *a1, const __CFAllocator *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"FileFormat");
    v13 = Value;
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 432) = Value;
    v14 = CFDictionaryGetValue(a5, @"AudioPrimingFormat");
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v16 = MutableCopy;
      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_74:
    remakerFamily_createFormatWriter_cold_1(&cf);
    return cf;
  }

  v17 = FigCFDictionaryCreateMutableCopy();
  if (!v17)
  {
    goto LABEL_74;
  }

  v16 = v17;
  v13 = 0;
LABEL_9:
  v14 = @"AudioPrimingFormat_DetermineFromSampleOrFileFormat";
  CFDictionarySetValue(v16, @"AudioPrimingFormat", @"AudioPrimingFormat_DetermineFromSampleOrFileFormat");
  if (!@"AudioPrimingFormat_DetermineFromSampleOrFileFormat")
  {
    v18 = 0;
    goto LABEL_14;
  }

LABEL_10:
  if (!CFEqual(v14, @"AudioPrimingFormat_Manual"))
  {
    *(DerivedStorage + 208) = 1;
  }

  v18 = CFRetain(v14);
LABEL_14:
  *(DerivedStorage + 200) = v18;
  if (*(DerivedStorage + 32))
  {
    CFDictionarySetValue(v16, @"RealTime", *MEMORY[0x1E695E4D0]);
  }

  *(DerivedStorage + 296) = a4;
  v19 = remakerFamily_useAudioFormatWriterGivenFormatWriterOption(v13);
  v20 = FigCFEqual();
  v21 = FigCFEqual();
  v53 = FigCFEqual();
  if (!*(DerivedStorage + 240))
  {
    goto LABEL_34;
  }

  if (v19)
  {
    TempFile = FigAudioFileFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (v20)
  {
    TempFile = FigTTMLFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (v21)
  {
    TempFile = FigSCCFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (v53)
  {
    TempFile = FigWebVTTFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (a4)
  {
    *(DerivedStorage + 240) = 0;
  }

  else
  {
    TempFile = FigMovieFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  if (v54)
  {
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 72) != 0;
    *(DerivedStorage + 240) = v23;
    if (!v23)
    {
      goto LABEL_34;
    }
  }

  else if (!*(DerivedStorage + 240))
  {
LABEL_34:
    if (*(DerivedStorage + 336))
    {
      v24 = *(DerivedStorage + 344);
    }

    else
    {
      v24 = *(DerivedStorage + 168);
    }

    goto LABEL_37;
  }

  v50 = v20;
  v37 = a3;
  v38 = a4;
  v39 = v21;
  v40 = a6;
  v41 = *(DerivedStorage + 336);
  v42 = CFGetTypeID(a1);
  v43 = *(DerivedStorage + 232);
  v44 = *(DerivedStorage + 160);
  if (v41)
  {
    TempFile = remakerFamily_createTempFile(v42, v43, v44, 0, 0, (DerivedStorage + 224));
    if (TempFile)
    {
      goto LABEL_59;
    }

    v45 = (DerivedStorage + 344);
    goto LABEL_71;
  }

  v45 = (DerivedStorage + 216);
  TempFile = remakerFamily_createTempFile(v42, v43, v44, 0, (DerivedStorage + 216), (DerivedStorage + 224));
  if (!TempFile)
  {
LABEL_71:
    v24 = *v45;
    CFDictionarySetValue(v16, @"WriteFileType", @"WriteFileType_OnlyInWriteHeaderToByteStream");
    a6 = v40;
    v21 = v39;
    a4 = v38;
    a3 = v37;
    v20 = v50;
LABEL_37:
    v25 = *(DerivedStorage + 168);
    if (v25 && v24 && v25 != v24)
    {
      v26 = v20;
      v27 = a3;
      v28 = a4;
      v29 = v21;
      v30 = a6;
      cf = 0;
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v32)
      {
        v33 = CMBaseObject;
        v34 = *MEMORY[0x1E695FF88];
        if (!v32(v33))
        {
          v51 = cf;
          v49 = CMByteStreamGetCMBaseObject();
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v48)
          {
            v48(v49, v34, v51);
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      a6 = v30;
      v21 = v29;
      a4 = v28;
      a3 = v27;
      v20 = v26;
    }

    if (a3 >= 1)
    {
      cf = 0;
      v35 = *(CMBaseObjectGetVTable() + 16);
      if (*v35 >= 3uLL)
      {
        v36 = v35[6];
        if (v36)
        {
          v36(v24, a3, 2, &cf);
        }
      }
    }

    if (v19)
    {
      TempFile = FigAudioFileFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }

    else if (v20)
    {
      TempFile = FigTTMLFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }

    else if (v21)
    {
      TempFile = FigSCCFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }

    else if (v53)
    {
      if (a4)
      {
        TempFile = FigWebVTTFormatWriterCreateForWritingWebVTTSegments(a2, a4, a1, v16, a6);
      }

      else
      {
        TempFile = FigWebVTTFormatWriterCreateWithByteStream(a2, v24, v16, a6);
      }
    }

    else if (a4)
    {
      TempFile = FigMovieFormatWriterCreateForWritingMovieFragments(a2, remakerFamily_MovieFormatWriterFragmentCallback, a1, v16, a6);
    }

    else
    {
      TempFile = FigMovieFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }
  }

LABEL_59:
  v46 = TempFile;
  CFRelease(v16);
  if (v54)
  {
    CFRelease(v54);
  }

  return v46;
}

uint64_t remakerFamily_MovieFormatWriterFragmentCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 296);

  return v8(a1, a2, a5);
}

uint64_t remakerFamily_createChannel(const void *a1, int a2, int a3, uint64_t *a4)
{
  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigRemakerTrackGetTypeID_sRegisterFigRemakerTrackOnce, RegisterFigRemakerTrack);
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (!a1)
  {
    v14 = FigSignalErrorAtGM();
    if (!v9)
    {
      return v14;
    }

    goto LABEL_13;
  }

  if (!Instance)
  {
    remakerFamily_createChannel_cold_2(a1, &v18);
    return v18;
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  *(v9 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 28) = a2;
  *(v9 + 32) = a3;
  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigAssetReaderTrackGetTypeID_sRegisterFigAssetReaderTrackOnce, RegisterFigAssetReaderTrack);
  v10 = _CFRuntimeCreateInstance();
  if (!v10)
  {
    v16 = 2364;
LABEL_12:
    remakerFamily_createChannel_cold_1(a1, v16, &v17);
    v14 = v17;
LABEL_13:
    CFRelease(v9);
    return v14;
  }

  v11 = v10;
  *(v10 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 152) = v11;
  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigAssetWriterTrackGetTypeID_sRegisterFigAssetWriterTrackOnce, RegisterFigAssetWriterTrack);
  v12 = _CFRuntimeCreateInstance();
  if (!v12)
  {
    v16 = 2373;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = 0;
  *(v12 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 160) = v13;
  *a4 = v9;
  return v14;
}

uint64_t remakerFamily_MapError(uint64_t a1, unsigned int a2)
{
  if (FigRemakerGetTypeID() == a1)
  {
    v4 = &unk_196E767C8;
LABEL_3:
    v5 = &v4[4 * a2];
    return *v5;
  }

  if (FigAssetReaderGetTypeID() == a1)
  {
    if (a2 < 6)
    {
      v5 = &unk_196E767E4 + 4 * a2;
      return *v5;
    }
  }

  else if (FigAssetWriterGetTypeID() == a1)
  {
    v4 = &unk_196E767FC;
    goto LABEL_3;
  }

  return 4294966297;
}

void remakerFamily_commitChannel(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(a2 + 56))
    {
      v5 = *(a2 + 32);
      if (v5 == 1986618469 || v5 == 1635088502)
      {
        FigStartForwardingMediaServicesProcessDeathNotification();
      }
    }

    CFArrayAppendValue(*(v4 + 80), a2);

    CFRelease(a2);
  }
}

void remakerFamily_discardChannel(uint64_t a1, intptr_t a2)
{
  if (a2)
  {
    if (*(a2 + 56))
    {
      v3 = *(a2 + 32);
      if (v3 == 1986618469 || v3 == 1635088502)
      {
        FigStopForwardingMediaServicesProcessDeathNotification();
      }
    }

    remakerFamily_removeTrackNotifications(a2);

    CFRelease(a2);
  }
}

uint64_t remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(uint64_t a1, uint64_t a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 392))
  {
    v6 = result;
    if (a3 == 1986618469 || a3 == 1936684398 && *(result + 388) != 1986618469)
    {
      FigBaseObject = FigFormatWriterGetFigBaseObject(*(result + 184));
      VTable = CMBaseObjectGetVTable();
      v9 = *(VTable + 8);
      result = VTable + 8;
      v10 = *(v9 + 56);
      if (v10)
      {
        result = v10(FigBaseObject, @"MovieTimeScale", a2);
      }

      *(v6 + 388) = a3;
    }
  }

  return result;
}

uint64_t remakerFamily_createMultiPassPlaybackBossForTrack(uint64_t a1, void *a2)
{
  cf = 0;
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    if (*(a1 + 356) && *(a1 + 300))
    {
      RelatedTrackArray = remakerFamily_createRelatedTrackArray(a1, &cf);
      if (!RelatedTrackArray)
      {
        RelatedTrackArray = remakerFamily_createPlaybackBossForTracks(v5, cf, a1, &remakerFamily_multiPassPlaybackBossNotifications, a2);
      }

      v7 = RelatedTrackArray;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    remakerFamily_createMultiPassPlaybackBossForTrack_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t remakerFamily_createRelatedTrackArray(_DWORD *a1, __CFArray **a2)
{
  v4 = a1[75];
  v5 = a1[76];
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v6)
  {
    remakerFamily_createRelatedTrackArray_cold_1(&v19);
    return v19;
  }

  v8 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, 0);
  CFArrayAppendValue(Mutable, a1);
  Count = CFArrayGetCount(*(v8 + 80));
  if (Count >= 1)
  {
    v11 = Count;
    for (i = 0; v11 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 80), i);
      if (ValueAtIndex != a1)
      {
        if (v4)
        {
          v14 = a1[75];
          v15 = ValueAtIndex[76];
          if (v14 != v15 && v5 != 0)
          {
LABEL_13:
            v14 = a1[76];
            v15 = ValueAtIndex[75];
          }

          if (v14 == v15)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          continue;
        }

        if (v5)
        {
          goto LABEL_13;
        }
      }
    }
  }

  if (a2)
  {
    *a2 = Mutable;
    v17 = v6;
LABEL_21:
    CFRelease(v17);
    return 0;
  }

  CFRelease(v6);
  if (Mutable)
  {
    v17 = Mutable;
    goto LABEL_21;
  }

  return 0;
}

uint64_t remakerFamily_createPlaybackBossForTracks(const void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v80[0] = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  Count = CFArrayGetCount(a2);
  v10 = Count;
  if (Count < 1)
  {
    v59 = 0;
    v60 = 0;
    v11 = 0;
    v19 = 0;
    goto LABEL_95;
  }

  v60 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  v59 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  v11 = malloc_type_calloc(v10, 8uLL, 0x6004044C4A2DFuLL);
  v61 = *MEMORY[0x1E695E480];
  CMBaseObject = FigAssetGetCMBaseObject(*(DerivedStorage + 72));
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, @"iTunesGaplessInfo", v61, v80);
  }

  theArray = a2;
  v14 = *(DerivedStorage + 72);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v15)
  {
    v15(v14, 1936684398, &v76);
  }

  if (v76 && CFArrayGetCount(v76) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v76, 0);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v17)
    {
LABEL_94:
      v19 = 4294954514;
      goto LABEL_95;
    }

    v18 = v17(ValueAtIndex, &v79, 0);
    if (v18)
    {
LABEL_10:
      v19 = v18;
      goto LABEL_95;
    }
  }

  v20 = FigAssetGetCMBaseObject(*(DerivedStorage + 72));
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    goto LABEL_94;
  }

  v52 = a5;
  cf = a1;
  v18 = v21(v20, @"assetProperty_FormatReader", v61, &v75);
  if (v18)
  {
    goto LABEL_10;
  }

  v56 = 0;
  v22 = 0;
  v23 = 0;
  v54 = *MEMORY[0x1E695E4C0];
  v24 = *MEMORY[0x1E695E4D0];
  v57 = 1;
  v25 = theArray;
  v55 = DerivedStorage;
  do
  {
    v26 = CFArrayGetValueAtIndex(v25, v23);
    v73 = 0;
    v27 = v26[7];
    if (v27)
    {
      v28 = v26;
      v60[v22] = *(v26 + 7);
      v59[v22] = v27;
      Mutable = CFDictionaryCreateMutable(v61, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11[v22] = Mutable;
      if (!Mutable)
      {
        remakerFamily_createPlaybackBossForTracks_cold_1(&__dst);
        v19 = __dst;
        goto LABEL_95;
      }

      if (!*(v28 + 50))
      {
        CFDictionarySetValue(Mutable, @"BossTrack_TrimSampleBufferDurations", v54);
      }

      if (*(v28 + 49) && (*(v28 + 340) & 1) != 0)
      {
        __dst = *(v28 + 41);
        *v70 = v28[43];
        FigCFDictionarySetCMTime();
      }

      if (*(v28 + 51))
      {
        CFDictionarySetValue(v11[v22], @"BossTrack_SendSampleReferenceSampleBuffers", v24);
        v57 = 0;
      }

      if (*(v28 + 52))
      {
        CFDictionarySetValue(v11[v22], @"BossTrack_SendCaptionBackedSampleBuffers", v24);
      }

      if (*(v28 + 8) == 1936684398 && *(v28 + 50))
      {
        *&__dst = 0;
        v30 = *(DerivedStorage + 72);
        v31 = *(v28 + 7);
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v32)
        {
          goto LABEL_94;
        }

        v18 = v32(v30, v31, &__dst);
        if (v18)
        {
          goto LABEL_10;
        }

        v33 = FigAssetTrackGetCMBaseObject(__dst);
        v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v34)
        {
          v34(v33, @"assetTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration", v61, &v74);
        }

        DefaultEnhanced = 0;
        v36 = *(v28 + 7);
        v25 = theArray;
        if (v36 == v79 && v80[0])
        {
          v37 = v75;
          v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v38)
          {
            v38(v37, v36, &v73, 0);
          }

          if (v73)
          {
            DefaultEnhanced = FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(v28[5], v73, v80[0]);
          }

          else
          {
            DefaultEnhanced = 0;
          }
        }

        v40 = v28[5];
        if (v40)
        {
          if (!DefaultEnhanced)
          {
            DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(v40);
            v40 = v28[5];
          }

          GradualDecoderRefresh = FigGaplessInfoCreateGradualDecoderRefresh(v40);
          if (GradualDecoderRefresh)
          {
            CFDictionarySetValue(v11[v22], @"gdrCount", GradualDecoderRefresh);
          }

          if (FigGaplessInfoGetDefaultBonusAudioPrimingPacketCount(v28[5]))
          {
            FigCFDictionarySetInt32();
          }
        }

        else
        {
          GradualDecoderRefresh = 0;
        }

        if (v74 && CFEqual(v74, v24))
        {
          if (DefaultEnhanced)
          {
            CFRelease(DefaultEnhanced);
            DefaultEnhanced = 0;
          }
        }

        else if (DefaultEnhanced)
        {
          CFDictionarySetValue(v11[v22], @"iTunesGaplessInfo", DefaultEnhanced);
        }

        if (__dst)
        {
          CFRelease(__dst);
        }
      }

      else
      {
        GradualDecoderRefresh = 0;
        DefaultEnhanced = 0;
      }

      v41 = v11[v22];
      if (*(v28 + 17))
      {
        FigCFDictionarySetInt32();
        __dst = *(v28 + 9);
        *v70 = v28[11];
        FigCFDictionarySetCMTime();
        __dst = *(v28 + 6);
        *v70 = v28[14];
        FigCFDictionarySetCMTime();
        v41 = v11[v22];
      }

      if (*(v28 + 121))
      {
        __dst = *(v28 + 124);
        *v70 = *(v28 + 140);
        FigCFDictionarySetCMTime();
        v41 = v11[v22];
        v56 = 1;
      }

      if (*(v28 + 432))
      {
        CFDictionarySetValue(v41, @"BossTrack_RoundUpStartPTS", v24);
      }

      FigCFDictionarySetInt32();
      v42 = *(v28 + 8);
      if (v42 == 1635088502 || v42 == 1986618469)
      {
        v44 = *(DerivedStorage + 480);
        if (v44)
        {
          __dst = *MEMORY[0x1E6960CC0];
          *v70 = *(MEMORY[0x1E6960CC0] + 16);
          *&v70[8] = __dst;
          *&v70[24] = *v70;
          v71 = __dst;
          *v72 = *v70;
          *&v72[8] = __dst;
          *&v72[24] = *v70;
          FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v44, *(v28 + 7), &__dst);
          v65 = *&v70[16];
          v66 = v71;
          v67 = *v72;
          v68 = *&v72[16];
          *v64 = __dst;
          *&v64[16] = *v70;
          if (!FigVideoCompositionTimeWindowDurationIsZero(v64))
          {
            *v64 = __dst;
            *&v64[16] = *v70;
            FigCFDictionarySetCMTime();
            *v64 = *&v70[8];
            *&v64[16] = *&v70[24];
            FigCFDictionarySetCMTime();
            *v64 = __dst;
            *&v64[16] = *v70;
            FigCFDictionarySetCMTime();
            *v64 = *&v70[8];
            *&v64[16] = *&v70[24];
            FigCFDictionarySetCMTime();
            *v64 = *(v55 + 88);
            *&v64[16] = *(v55 + 104);
            FigCFDictionarySetCMTime();
            *v64 = *(v55 + 112);
            *&v64[16] = *(v55 + 128);
            FigCFDictionarySetCMTime();
            if (*(v55 + 136))
            {
              lhs = *(v55 + 88);
              *&rhs.value = __dst;
              rhs.epoch = *v70;
              CMTimeSubtract(v64, &lhs, &rhs);
              FigCFDictionarySetCMTime();
              lhs = *(v55 + 112);
              rhs = *&v70[8];
              CMTimeAdd(v64, &lhs, &rhs);
              FigCFDictionarySetCMTime();
            }
          }

          v25 = theArray;
          DerivedStorage = v55;
        }
      }

      else if (v42 == 1835365473)
      {
        v43 = *(DerivedStorage + 488);
        if (v43)
        {
          __dst = *MEMORY[0x1E6960CC0];
          *v70 = *(MEMORY[0x1E6960CC0] + 16);
          *&v70[8] = __dst;
          *&v70[24] = *v70;
          v71 = __dst;
          *v72 = *v70;
          *&v72[8] = __dst;
          *&v72[24] = *v70;
          v18 = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v43, *(v28 + 7), &__dst);
          if (v18)
          {
            goto LABEL_10;
          }

          v65 = *&v70[16];
          v66 = v71;
          v67 = *v72;
          v68 = *&v72[16];
          *v64 = __dst;
          *&v64[16] = *v70;
          if (!FigVideoCompositionTimeWindowDurationIsZero(v64))
          {
            *v64 = __dst;
            *&v64[16] = *v70;
            FigCFDictionarySetCMTime();
            *v64 = *&v70[8];
            *&v64[16] = *&v70[24];
            FigCFDictionarySetCMTime();
            *v64 = __dst;
            *&v64[16] = *v70;
            FigCFDictionarySetCMTime();
            *v64 = *&v70[8];
            *&v64[16] = *&v70[24];
            FigCFDictionarySetCMTime();
            *v64 = *(DerivedStorage + 88);
            *&v64[16] = *(DerivedStorage + 104);
            FigCFDictionarySetCMTime();
            *v64 = *(DerivedStorage + 112);
            *&v64[16] = *(DerivedStorage + 128);
            FigCFDictionarySetCMTime();
            if (*(DerivedStorage + 136))
            {
              lhs = *(DerivedStorage + 88);
              *&rhs.value = __dst;
              rhs.epoch = *v70;
              CMTimeSubtract(v64, &lhs, &rhs);
              FigCFDictionarySetCMTime();
              lhs = *(DerivedStorage + 112);
              rhs = *&v70[8];
              CMTimeAdd(v64, &lhs, &rhs);
              FigCFDictionarySetCMTime();
            }
          }

          v25 = theArray;
        }
      }

      if (GradualDecoderRefresh)
      {
        CFRelease(GradualDecoderRefresh);
      }

      if (DefaultEnhanced)
      {
        CFRelease(DefaultEnhanced);
      }

      if (v74)
      {
        CFRelease(v74);
        v74 = 0;
      }

      if (v73)
      {
        CFRelease(v73);
      }

      ++v22;
    }

    ++v23;
  }

  while (v10 != v23);
  v45 = FigAssetGetCMBaseObject(*(DerivedStorage + 72));
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v46)
  {
    goto LABEL_94;
  }

  v18 = v46(v45, @"assetProperty_ByteStreamProvider", v61, &v78);
  if (v18)
  {
    goto LABEL_10;
  }

  if (!v57)
  {
    goto LABEL_115;
  }

  if (qword_1ED4CA968 != -1)
  {
    remakerFamily_createPlaybackBossForTracks_cold_2();
  }

  if (_MergedGlobals_51)
  {
    v47 = *(DerivedStorage + 32) ? 25 : 49;
  }

  else
  {
LABEL_115:
    v47 = 1;
  }

  v50 = CFGetAllocator(cf);
  v18 = FigPlaybackBossCreate(v50, v75, v22, v60, v59, v11, v78, 1, 0, v47, 0, &v77);
  if (v18)
  {
    goto LABEL_10;
  }

  if (v56)
  {
    v18 = FigPlaybackBossSetIFrameOnlySpeedThreshold(v77, 0.0);
    if (v18)
    {
      goto LABEL_10;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v51 = FigNotificationCenterAddWeakListeners();
  v19 = v51;
  if (v52 && !v51)
  {
    *v52 = v77;
    v77 = 0;
    goto LABEL_97;
  }

LABEL_95:
  if (v77)
  {
    CFRelease(v77);
  }

LABEL_97:
  free(v60);
  free(v59);
  if (v11)
  {
    if (v10 >= 1)
    {
      v48 = v11;
      do
      {
        if (*v48)
        {
          CFRelease(*v48);
          *v48 = 0;
        }

        ++v48;
        --v10;
      }

      while (v10);
    }

    free(v11);
  }

  if (v80[0])
  {
    CFRelease(v80[0]);
    v80[0] = 0;
  }

  if (v78)
  {
    CFRelease(v78);
    v78 = 0;
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  return v19;
}

uint64_t remakerFamily_createSinglePassPlaybackBoss(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
      if (!ValueAtIndex[356])
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  PlaybackBossForTracks = remakerFamily_createPlaybackBossForTracks(a1, Mutable, a1, &remakerFamily_singlePassPlaybackBossNotifications, a2);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return PlaybackBossForTracks;
}

uint64_t remakerFamily_startTrack(uint64_t a1, CMTime *a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 232);
    if (v6)
    {
      FigMediaProcessorGo(v6);
      if (*(*(a1 + 152) + 160))
      {
        v7 = *(a1 + 240);
        if (v7)
        {
          Count = CFArrayGetCount(v7);
          if (Count >= 2)
          {
            v9 = Count;
            for (i = 1; i != v9; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), i);
              FigMediaProcessorGo(ValueAtIndex);
            }
          }
        }
      }
    }

    v12 = *(a1 + 264);
    if (v12)
    {
      FigMediaProcessorGo(v12);
    }

    v13 = *(a1 + 288);
    if (v13)
    {
      if (*(a1 + 356))
      {
        v14 = CFGetTypeID(v5);
        TypeID = FigRemakerGetTypeID();
        v13 = *(a1 + 288);
        if (v14 == TypeID)
        {
          VTCompressionSession = FigMediaProcessorGetVTCompressionSession(v13);
          v17 = VTCompressionSessionBeginPass(VTCompressionSession, 0, 0);
          if (v17)
          {
            v18 = v17;
            CFRelease(v5);
            return v18;
          }

          v13 = *(a1 + 288);
        }
      }

      FigMediaProcessorGo(v13);
    }

    CFRelease(v5);
  }

  v20 = *a2;
  return remakerFamily_startSourceRendererOfTrack(a1, &v20);
}

uint64_t remakerFamily_startAllMultiPassTracks(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    v16 = 0uLL;
    v17 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
    if (*(ValueAtIndex + 356))
    {
      v10 = ValueAtIndex;
      v11 = ValueAtIndex[52];
      if (v11)
      {
        *(v10 + 424) = 0;
        if (*(DerivedStorage + 136))
        {
          v15 = *(DerivedStorage + 88);
          result = FigPlaybackBossSendSampleForTime(v11, &v15, 4);
          if (result)
          {
            return result;
          }
        }

        else
        {
          v15 = *(DerivedStorage + 88);
          v13 = *(DerivedStorage + 112);
          v14 = *(DerivedStorage + 128);
          result = FigPlaybackBossSendSamplesForTimeRange(v11, &v15, &v13, 4);
          if (result)
          {
            return result;
          }
        }
      }

      result = remakerFamily_getExpectedEndTime(a1, &v16);
      if (result)
      {
        return result;
      }

      v15 = *(DerivedStorage + 88);
      v13 = v16;
      v14 = v17;
      result = remakerFamily_startTrack(v10, &v15);
      if (result)
      {
        return result;
      }

      ++v7;
    }
  }

  result = 0;
  if (a2)
  {
    if (v7 >= 1)
    {
      result = 0;
      *a2 = 1;
    }
  }

  return result;
}

uint64_t remakerFamily_getExpectedEndTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  if (a2)
  {
    v4 = MEMORY[0x1E6960C88];
    *a2 = *MEMORY[0x1E6960C88];
    *(a2 + 16) = *(v4 + 16);
    if ((*(DerivedStorage + 124) & 0x1D) == 1)
    {
      v5 = 0;
      v6 = *(DerivedStorage + 112);
      *(a2 + 16) = *(DerivedStorage + 128);
      *a2 = v6;
    }

    else
    {
      v7 = *(DerivedStorage + 72);
      if (v7)
      {
        CMBaseObject = FigAssetGetCMBaseObject(v7);
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v5 = v9(CMBaseObject, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
          v10 = dictionaryRepresentation;
          if (v5)
          {
            v11 = 1;
          }

          else
          {
            v11 = dictionaryRepresentation == 0;
          }

          if (!v11)
          {
            CMTimeMakeFromDictionary(&v13, dictionaryRepresentation);
            *a2 = *&v13.value;
            v10 = dictionaryRepresentation;
            *(a2 + 16) = v13.epoch;
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    remakerFamily_getExpectedEndTime_cold_1(&v13);
    return LODWORD(v13.value);
  }

  return v5;
}

uint64_t remakerFamily_startAllSinglePassTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
LABEL_7:
    result = *(DerivedStorage + 376);
    if (result)
    {
      if (*(DerivedStorage + 136))
      {
        v10 = *(DerivedStorage + 88);
        return FigPlaybackBossSendSampleForTime(result, &v10, 0);
      }

      else
      {
        v10 = *(DerivedStorage + 88);
        v9 = *(DerivedStorage + 112);
        return FigPlaybackBossSendSamplesForTimeRange(result, &v10, &v9, 0);
      }
    }
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      memset(&v10, 0, sizeof(v10));
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v5);
      if (!ValueAtIndex[356])
      {
        v7 = ValueAtIndex;
        result = remakerFamily_getExpectedEndTime(a1, &v10);
        if (result)
        {
          break;
        }

        v9 = *(DerivedStorage + 88);
        result = remakerFamily_startTrack(v7, &v9);
        if (result)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t remakerFamily_MarkEndOfDataForTrack(uint64_t a1, int a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v4)
  {
    remakerFamily_MarkEndOfDataForTrack_cold_4(&queue);
    return queue;
  }

  v6 = DerivedStorage;
  v7 = *DerivedStorage;
  if (*DerivedStorage >= 7)
  {
    remakerFamily_MarkEndOfDataForTrack_cold_3(&queue);
    goto LABEL_26;
  }

  if (!DerivedStorage[5])
  {
    if (v7 >= 5)
    {
      remakerFamily_MarkEndOfDataForTrack_cold_2(&queue);
    }

    else
    {
      if (v7 > 2)
      {
        if (a2)
        {
          *(a1 + 424) = 257;
        }

        v8 = *(*(a1 + 160) + 32);
        if (!v8 || (v9 = CMBufferQueueMarkEndOfData(v8), !v9))
        {
          if (!*(a1 + 288))
          {
            v10 = *(v6 + 23);
            if (v10)
            {
              queue = 0;
              v11 = *(a1 + 300);
              v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v12)
              {
                v12(v10, v11, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &queue);
                if (queue)
                {
                  if (queue != *(*(a1 + 160) + 32))
                  {
                    CMBufferQueueMarkEndOfData(queue);
                  }
                }
              }

              FigBufferQueueRelease();
            }
          }

          v13 = 0;
          goto LABEL_18;
        }

        goto LABEL_23;
      }

      remakerFamily_MarkEndOfDataForTrack_cold_1(&queue);
    }

LABEL_26:
    v13 = queue;
    goto LABEL_18;
  }

  v9 = FigSignalErrorAtGM();
LABEL_23:
  v13 = v9;
LABEL_18:
  CFRelease(v4);
  return v13;
}

uint64_t remakerFamily_copyFormatDescription(uint64_t a1, uint64_t a2, void *a3)
{
  theArray = 0;
  CMBaseObject = FigAssetTrackGetCMBaseObject(a2);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(CMBaseObject, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
    if (v7 == -12521)
    {
      goto LABEL_11;
    }

    v8 = v7;
    if (v7)
    {
      goto LABEL_14;
    }

    if (theArray && CFArrayGetCount(theArray))
    {
      if (a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        v8 = 0;
        *a3 = ValueAtIndex;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
LABEL_11:
      if (FigAssetReaderGetTypeID() == a1)
      {
        v8 = 4294955158;
      }

      else
      {
        v8 = 4294955173;
      }
    }
  }

  else
  {
    v8 = 4294954514;
  }

LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

uint64_t remakerFamily_setupMultiPassTrackIfNecessary(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  if (!FigCFDictionaryGetBooleanIfPresent() || !*(a2 + 356))
  {
    goto LABEL_10;
  }

  if ((!a1 || (v5 = CFGetTypeID(a1), v5 != FigAssetReaderGetTypeID())) && ((v16 = **&MEMORY[0x1E6960C70], ExpectedDuration = remakerFamily_getExpectedDuration(a1, &v16), ExpectedDuration) || (v7 = CFGetTypeID(a1), ExpectedDuration = remakerFamily_createTempFile(v7, *(DerivedStorage + 232), *(DerivedStorage + 160), 0, 0, &v17), ExpectedDuration) || (FigFileDeleteFile(), v8 = *MEMORY[0x1E695E480], start = *(DerivedStorage + 88), v13 = v16, v9 = v17, CMTimeRangeMake(&timeRange, &start, &v13), ExpectedDuration = VTFrameSiloCreate(v8, v9, &timeRange, 0, (a2 + 360)), ExpectedDuration)))
  {
    value_low = ExpectedDuration;
  }

  else
  {
    *(a2 + 428) = 1;
    v10 = FigDispatchQueueCreateWithPriorityAndClientPID();
    *(a2 + 368) = v10;
    if (v10)
    {
      *(a2 + 408) = dispatch_semaphore_create(0);
      if (*(a2 + 368))
      {
LABEL_10:
        value_low = 0;
        goto LABEL_11;
      }

      remakerFamily_setupMultiPassTrackIfNecessary_cold_1(&timeRange);
    }

    else
    {
      remakerFamily_setupMultiPassTrackIfNecessary_cold_2(&timeRange);
    }

    value_low = LODWORD(timeRange.start.value);
  }

LABEL_11:
  if (v17)
  {
    CFRelease(v17);
  }

  return value_low;
}

CFStringRef remakerFamily_createRenderPipelineOptions(int a1, const void *a2, __int128 *a3, __int128 *a4, int a5, const void *a6, int a7, int a8, char a9, char a10, char a11, void *value, char a13, uint64_t a14, unsigned int a15, __CFDictionary **a16)
{
  if (!a16)
  {
    remakerFamily_createRenderPipelineOptions_cold_2(&v30);
    return v30;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 16, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    remakerFamily_createRenderPipelineOptions_cold_1(&v30);
    return v30;
  }

  v24 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"FormatDescription", a2);
  }

  if ((*(a3 + 3) & 0x1D) == 1)
  {
    v30 = *a3;
    v31 = *(a3 + 2);
    FigCFDictionarySetCMTime();
  }

  if ((*(a4 + 3) & 0x1D) == 1)
  {
    v30 = *a4;
    v31 = *(a4 + 2);
    FigCFDictionarySetCMTime();
  }

  v25 = MEMORY[0x1E695E4D0];
  if (a5)
  {
    CFDictionarySetValue(v24, @"AllowAMRDecode", *MEMORY[0x1E695E4D0]);
  }

  if (a6)
  {
    CFDictionarySetValue(v24, @"SharePixelBufferPool", a6);
  }

  v26 = *v25;
  if (a7)
  {
    CFDictionarySetValue(v24, @"MaximizePowerEfficiency", *v25);
  }

  if (a8)
  {
    CFDictionarySetValue(v24, @"InhibitPixelFormatConversion", v26);
  }

  if (a9)
  {
    CFDictionarySetValue(v24, @"InhibitCompressedBufferUse", v26);
  }

  CFDictionarySetValue(v24, @"NonRealTime", v26);
  if (a10)
  {
    CFDictionarySetValue(v24, @"RealTimePriority", v26);
  }

  if (a11)
  {
    CFDictionarySetValue(v24, @"EnableSpatialization", v26);
  }

  if (value)
  {
    CFDictionarySetValue(v24, @"DestFormatDescription", value);
  }

  if (a13)
  {
    CFDictionarySetValue(v24, @"DisableAsyncVideoDecompression", v26);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  result = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s.t%d", a14, a15);
  if (result)
  {
    v29 = result;
    CFDictionarySetValue(v24, @"LoggingID", result);
    *a16 = v24;
    CFRelease(v29);
    return 0;
  }

  else
  {
    *a16 = v24;
  }

  return result;
}

uint64_t remakerFamily_getSourceASBDForTrackID(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  desc = 0;
  v18 = 0;
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_getSourceASBDForTrackID_cold_2(&v21);
LABEL_19:
    v14 = v21;
    goto LABEL_12;
  }

  v7 = *(DerivedStorage + 72);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8(v7, a2, &cf);
  if (v9)
  {
LABEL_20:
    v14 = v9;
    goto LABEL_12;
  }

  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11)
  {
LABEL_11:
    v14 = 4294954514;
    goto LABEL_12;
  }

  v9 = v11(v10, 0, &v18);
  if (v9)
  {
    goto LABEL_20;
  }

  if (v18 != 1936684398)
  {
    return FigSignalErrorAtGM();
  }

  v12 = CFGetTypeID(a1);
  v9 = remakerFamily_copyFormatDescription(v12, cf, &desc);
  if (v9)
  {
    goto LABEL_20;
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(desc);
  if (!RichestDecodableFormat)
  {
    RichestDecodableFormat = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    if (!RichestDecodableFormat)
    {
      remakerFamily_getSourceASBDForTrackID_cold_1(&v21);
      goto LABEL_19;
    }
  }

  v14 = 0;
  v15 = *&RichestDecodableFormat->mASBD.mSampleRate;
  v16 = *&RichestDecodableFormat->mASBD.mBytesPerPacket;
  *(a3 + 32) = *&RichestDecodableFormat->mASBD.mBitsPerChannel;
  *a3 = v15;
  *(a3 + 16) = v16;
LABEL_12:
  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t remakerfamily_updateThrottleForBackground(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x1E695E4D0];
      v8 = *MEMORY[0x1E695E4C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v6);
        v10 = ValueAtIndex;
        if (*(ValueAtIndex + 8) == 1986618469)
        {
          v11 = ValueAtIndex[21];
          if (v11)
          {
            v12 = (*(DerivedStorage + 40) ? v7 : v8);
            result = FigVideoCompositionProcessorSetProperty(v11, @"VideoCompositionProcessor_ThrottleForBackground", v12);
            if (result)
            {
              break;
            }
          }
        }

        if (*(v10 + 356))
        {
          v13 = v10[52];
          if (v13)
          {
            FigPlaybackBossSetThrottleForBackground(v13, *(DerivedStorage + 40));
          }
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      if (result == -12303)
      {
        if (a1)
        {
          v14 = CFGetTypeID(a1);
          if (v14 == FigRemakerGetTypeID())
          {
            return 4294955171;
          }

          else
          {
            v15 = CFGetTypeID(a1);
            if (v15 == FigAssetReaderGetTypeID())
            {
              return 4294955157;
            }

            else
            {
              return 4294954993;
            }
          }
        }

        else
        {
          return 4294954993;
        }
      }
    }
  }

  return result;
}

CFTypeRef remakerfamily_updateIOPolicy()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = *MEMORY[0x1E695E480];
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, DerivedStorage + 57);
  if (v2)
  {
    v3 = v2;
    v4 = DerivedStorage[9];
    if (v4)
    {
      CMBaseObject = FigAssetGetCMBaseObject(v4);
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        if (!v6(CMBaseObject, @"assetProperty_ContentByteStream", v1, &cf) && cf != 0)
        {
          v8 = CMByteStreamGetCMBaseObject();
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9)
          {
            v9(v8, *MEMORY[0x1E695FF88], v3);
          }
        }
      }
    }

    if (DerivedStorage[21])
    {
      v10 = CMByteStreamGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(v10, *MEMORY[0x1E695FF88], v3);
      }
    }

    if (DerivedStorage[27])
    {
      v12 = CMByteStreamGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(v12, *MEMORY[0x1E695FF88], v3);
      }
    }

    CFRelease(v3);
    result = cf;
    if (cf)
    {
      CFRelease(cf);
      return 0;
    }
  }

  else
  {
    remakerfamily_updateIOPolicy_cold_1(&v16);
    return v16;
  }

  return result;
}

uint64_t remakerfamily_updateJoinWritingThreadToNewWorkgroup()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 394))
  {
    if (*(DerivedStorage + 32))
    {
      if (*(DerivedStorage + 176))
      {
        FigBaseObject = FigFormatWriterGetFigBaseObject(*(DerivedStorage + 184));
        v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v3)
        {
          v3(FigBaseObject, @"JoinWritingThreadToNewWorkgroup", *MEMORY[0x1E695E4D0]);
        }
      }
    }
  }

  return 0;
}

uint64_t remakerfamily_setFailureStatusIfError(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    if ((*v5 & 0xFFFFFFFE) != 6)
    {
      v5[5] = a2;
    }

    return remakerFamily_SetRemakerState(a1, 6, 0);
  }

  return result;
}

uint64_t remakerFamily_SinglePassBossBecameIdle(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    return remakerFamily_SinglePassBossBecameIdle_cold_1();
  }

  *(DerivedStorage + 384) = 1;
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = remakerFamily_HandleNotificationErrorPayload(a2, 0);
  if (!result)
  {
    return remakerFamily_performLastStepIfComplete(a2);
  }

  return result;
}

uint64_t remakerFamily_HandleNotificationErrorPayload(const void *a1, uint64_t a2)
{
  if (FigCFDictionaryGetInt32IfPresent())
  {
    remakerFamily_PostFailureNotificationIfError(a1, a2, 0, 1u, 0);
  }

  return 0;
}

uint64_t remakerFamily_performLastStepIfComplete(const void *a1)
{
  v131 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_performLastStepIfComplete_cold_11(v130);
    return LODWORD(v130[0].value);
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*(v3 + 384))
  {
    Count = CFArrayGetCount(*(v3 + 80));
    if (Count < 1)
    {
LABEL_20:
      v9 = 0;
      if (!v4)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 80), v7);
      if (*(ValueAtIndex + 33))
      {
        if (!ValueAtIndex[280])
        {
          break;
        }
      }

      if (*(ValueAtIndex + 29) && !ValueAtIndex[256] || *(ValueAtIndex + 36) && !ValueAtIndex[296] || *(ValueAtIndex + 25) && !ValueAtIndex[216] || *(ValueAtIndex + 21) && !ValueAtIndex[184] || *(ValueAtIndex + 45) && !ValueAtIndex[357])
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_20;
      }
    }
  }

  v9 = 1;
  if (v4)
  {
LABEL_23:
    FigSimpleMutexUnlock();
  }

LABEL_24:
  if ((v9 & 1) != 0 || !FigAtomicCompareAndSwap32())
  {
    return 0;
  }

  v12 = CMBaseObjectGetDerivedStorage();
  v13 = &dword_1EAF17000;
  if (dword_1EAF17020)
  {
    LODWORD(desc) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (*v12 >= 7u)
  {
    remakerFamily_performLastStepIfComplete_cold_6(v130);
    value_low = LODWORD(v130[0].value);
    goto LABEL_43;
  }

  if (a1)
  {
    v15 = CFGetTypeID(a1);
    if (v15 == FigAssetReaderGetTypeID())
    {
      goto LABEL_189;
    }
  }

  if (!FigAtomicCompareAndSwap32() && dword_1EAF17020)
  {
    LODWORD(desc) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((*(v12 + 124) & 0x1D) == 1)
  {
    v17 = *(v12 + 184);
    cf = *(v12 + 112);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v18)
    {
      goto LABEL_42;
    }

    v130[0] = cf;
    v19 = v18(v17, v130);
    if (v19)
    {
      goto LABEL_179;
    }
  }

  v20 = *(v12 + 184);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v21)
  {
    goto LABEL_42;
  }

  v121 = v12;
  v30 = v21(v20, 0);
  if (v30)
  {
    value_low = v30;
    goto LABEL_43;
  }

  v31 = CMBaseObjectGetDerivedStorage();
  v32 = CFArrayGetCount(*(v31 + 80));
  if (v32 >= 1)
  {
    v33 = v32;
    v34 = 0;
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      v35 = CFArrayGetValueAtIndex(*(v31 + 80), v34);
      v36 = v35[36];
      if (v36)
      {
        SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(v36);
        if (SampleBufferProcessor)
        {
          break;
        }
      }

LABEL_93:
      if (v33 == ++v34)
      {
        goto LABEL_100;
      }
    }

    v38 = *(v35 + 75);
    *type = 0;
    desc = 0;
    theArray = 0;
    if (v38)
    {
      v39 = SampleBufferProcessor;
      FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(SampleBufferProcessor);
      v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v41)
      {
        if (!v41(FigBaseObject, @"SampleBufferProcessorProperty_ImprovedOutputFormatDescription", allocator, &desc))
        {
          if (!desc)
          {
            Mutable = 0;
LABEL_87:
            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_93;
          }

          if (CMFormatDescriptionGetMediaType(desc) == 1936684398)
          {
            StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
            if (StreamBasicDescription)
            {
              if (StreamBasicDescription->mFormatID == 1634754915)
              {
                v43 = FigSampleBufferProcessorGetFigBaseObject(v39);
                v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v44)
                {
                  if (!v44(v43, @"SampleBufferProcessor_OutputFormatDescription", allocator, type) && !FigCFEqual())
                  {
                    if (v13[8])
                    {
                      v127[0] = OS_LOG_TYPE_DEFAULT;
                      v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(v45, v127[0]);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v13 = &dword_1EAF17000;
                    }

                    if (!remakerFamily_CopyFormatWriterTrackProperty(a1, v38, @"FormatDescriptionArray", allocator, &theArray) && theArray && CFArrayGetCount(theArray) == 1)
                    {
                      CFArrayGetValueAtIndex(theArray, 0);
                      if (FigCFEqual())
                      {
                        Mutable = CFArrayCreateMutable(allocator, 1, MEMORY[0x1E695E9C0]);
                        CFArrayAppendValue(Mutable, desc);
                        if (remakerFamily_SetFormatWriterTrackProperty(a1, v38, @"ReplacementFormatDescriptionArray", Mutable))
                        {
                          v127[0] = OS_LOG_TYPE_DEFAULT;
                          v122 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(v122, v127[0]);
                        }

                        else
                        {
                          if (!v13[8])
                          {
                            goto LABEL_85;
                          }

                          v127[0] = OS_LOG_TYPE_DEFAULT;
                          v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(v48, v127[0]);
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_98:
                        v13 = &dword_1EAF17000;
LABEL_85:
                        if (desc)
                        {
                          CFRelease(desc);
                          desc = 0;
                        }

                        goto LABEL_87;
                      }

                      if (v13[8])
                      {
                        v127[0] = OS_LOG_TYPE_DEFAULT;
                        v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v47, v127[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        Mutable = 0;
                        goto LABEL_98;
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

    Mutable = 0;
    goto LABEL_85;
  }

LABEL_100:
  v49 = CMBaseObjectGetDerivedStorage();
  v130[0].value = 0;
  cf.value = 0;
  if (!a1)
  {
    goto LABEL_131;
  }

  v50 = v49;
  v51 = CFGetTypeID(a1);
  if (v51 != FigRemakerGetTypeID())
  {
    value_low = 0;
    v54 = 0;
    v12 = v121;
    goto LABEL_125;
  }

  CMBaseObject = FigAssetGetCMBaseObject(*(v50 + 72));
  v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v12 = v121;
  if (v53)
  {
    v55 = *MEMORY[0x1E695E480];
    v53(CMBaseObject, @"assetProperty_TrackReferences", *MEMORY[0x1E695E480], v130);
    if (!v130[0].value)
    {
      goto LABEL_131;
    }

    v56 = CMBaseObjectGetDerivedStorage();
    v57 = CFArrayGetCount(*(v56 + 80));
    v54 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v54)
    {
      v12 = v121;
      if (v57 >= 1)
      {
        for (i = 0; i != v57; ++i)
        {
          v59 = CFArrayGetValueAtIndex(*(v56 + 80), i);
          v60 = v59[7];
          LODWORD(desc) = v60;
          v61 = v59[75];
          if (!v61)
          {
            v61 = v59[76];
          }

          *type = v61;
          if (v60)
          {
            v62 = v61 == 0;
          }

          else
          {
            v62 = 1;
          }

          if (!v62)
          {
            v63 = CFNumberCreate(v55, kCFNumberSInt32Type, &desc);
            v64 = CFNumberCreate(v55, kCFNumberSInt32Type, type);
            CFDictionaryAddValue(v54, v63, v64);
            if (v64)
            {
              CFRelease(v64);
            }

            if (v63)
            {
              CFRelease(v63);
            }
          }
        }
      }
    }

    else
    {
      v12 = v121;
      if (!remakerFamily_performLastStepIfComplete_cold_1(&desc))
      {
        v54 = 0;
        value_low = desc;
LABEL_124:
        v13 = &dword_1EAF17000;
        goto LABEL_125;
      }
    }

    value_low = remakerFamily_createDestinationTrackReferenceDictionary(v54, v130[0].value, &cf);
    value = cf.value;
    if (!value_low)
    {
      v66 = FigFormatWriterGetFigBaseObject(*(v50 + 184));
      v67 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v67)
      {
        v67(v66, @"TrackReference", value);
      }
    }

    if (value)
    {
      CFRelease(value);
    }

    goto LABEL_124;
  }

  value_low = 0;
  v54 = 0;
LABEL_125:
  if (v130[0].value)
  {
    CFRelease(v130[0].value);
    if (!v54)
    {
LABEL_127:
      if (value_low)
      {
        goto LABEL_43;
      }

      goto LABEL_131;
    }
  }

  else if (!v54)
  {
    goto LABEL_127;
  }

  CFRelease(v54);
  if (value_low)
  {
    goto LABEL_43;
  }

LABEL_131:
  v68 = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    goto LABEL_160;
  }

  v69 = v68;
  v70 = CFGetTypeID(a1);
  if (v70 != FigRemakerGetTypeID())
  {
    goto LABEL_160;
  }

  v71 = CFArrayGetCount(*(v69 + 80));
  if (v71 < 1)
  {
    goto LABEL_160;
  }

  v72 = v71;
  v73 = 0;
  v74 = *MEMORY[0x1E695E480];
  v75 = MEMORY[0x1E6960CC0];
  while (1)
  {
    v76 = CFArrayGetValueAtIndex(*(v69 + 80), v73);
    if (*(v76 + 8) == 1936684398)
    {
      break;
    }

LABEL_147:
    if (v72 == ++v73)
    {
      goto LABEL_160;
    }
  }

  desc = 0;
  if (*(v76 + 48))
  {
    v130[0] = *(v69 + 88);
    cf = *v75;
    if (!CMTimeCompare(v130, &cf) && (*(v69 + 124) & 0x1D) != 1)
    {
      v77 = FigAssetGetCMBaseObject(*(v69 + 72));
      v78 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v78)
      {
        v79 = v77;
        v80 = @"iTunesGaplessInfo";
LABEL_145:
        v78(v79, v80, v74, &desc);
      }
    }
  }

  else
  {
    v81 = *(v76 + 36);
    if (v81)
    {
      v82 = FigMediaProcessorGetSampleBufferProcessor(v81);
      if (v82)
      {
        v83 = FigSampleBufferProcessorGetFigBaseObject(v82);
        v78 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v78)
        {
          v79 = v83;
          v80 = @"SampleBufferProcessor_iTunesGaplessInfo";
          goto LABEL_145;
        }
      }
    }
  }

  v84 = desc;
  if (!desc)
  {
    goto LABEL_147;
  }

  v87 = FigFormatWriterGetFigBaseObject(*(v69 + 184));
  v88 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v88)
  {
    v88(v87, @"iTunesGaplessInfo", v84);
  }

  CFRelease(desc);
LABEL_160:
  remakerFamily_transferMetadata(a1);
  v12 = v121;
  if (*(v121 + 240))
  {
    v91 = *(v121 + 336);
    v13 = &dword_1EAF17000;
    if (v91)
    {
      v105 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v105)
      {
        goto LABEL_42;
      }

      v19 = v105(v91);
      if (v19 || (v19 = CMByteStreamCreateForFileURL(), v19))
      {
LABEL_179:
        value_low = v19;
        goto LABEL_43;
      }
    }

    v92 = CMBaseObjectGetDerivedStorage();
    v130[0].value = 0;
    cf.value = 0;
    *type = 0;
    desc = 0;
    if (*v92 >= 7u)
    {
      remakerFamily_performLastStepIfComplete_cold_5(&theArray);
      v102 = 0;
      v98 = 0;
      goto LABEL_222;
    }

    v93 = v92;
    if (*(v92 + 241))
    {
      v106 = *(v92 + 184);
      v107 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v107)
      {
        goto LABEL_181;
      }

      v97 = v107(v106, 0);
      if (v97)
      {
        goto LABEL_191;
      }
    }

    v94 = FigFormatWriterGetFigBaseObject(*(v93 + 184));
    v95 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v95)
    {
      v96 = *MEMORY[0x1E695E480];
      v97 = v95(v94, @"HeaderByteCount", *MEMORY[0x1E695E480], v130);
      if (!v97)
      {
        v98 = CFDictionaryCreate(v96, kFigFormatWriterWriteHeaderOption_ByteOffsetToAddToAllSampleOffsets, v130, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v98)
        {
          v99 = *(v93 + 184);
          v100 = *(v93 + 168);
          v101 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v101)
          {
            v102 = 0;
LABEL_182:
            value_low = 4294954514;
            goto LABEL_183;
          }

          v108 = v101(v99, v100, v98);
          if (v108)
          {
            value_low = v108;
            v102 = 0;
            goto LABEL_195;
          }

          v109 = FigFormatWriterGetFigBaseObject(*(v93 + 184));
          v110 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v110)
          {
            v102 = 0;
            value_low = 4294954514;
LABEL_195:
            v12 = v121;
            goto LABEL_183;
          }

          value_low = v110(v109, @"MediaDataLocation", v96, &cf);
          v111 = cf.value;
          if (value_low)
          {
            v102 = 0;
            if (!cf.value)
            {
              goto LABEL_220;
            }
          }

          else
          {
            FigCFArrayGetInt64AtIndex();
            FigCFArrayGetInt64AtIndex();
            v112 = desc;
            theArray = 0;
            v102 = malloc_type_malloc(0x20000uLL, 0x7B7EB5FAuLL);
            if (v102)
            {
              v113 = *type;
              if (*type >= 1)
              {
                while (1)
                {
                  if (*v93 >= 7u)
                  {
                    remakerFamily_performLastStepIfComplete_cold_2(v127);
                    goto LABEL_226;
                  }

                  if (v113 >= 0x20000)
                  {
                    v114 = 0x20000;
                  }

                  else
                  {
                    v114 = v113;
                  }

                  v115 = *(v93 + 216);
                  v116 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (!v116)
                  {
                    value_low = 4294954514;
                    goto LABEL_218;
                  }

                  v117 = v116(v115, v114, v112, v102, &theArray);
                  if (v117)
                  {
                    break;
                  }

                  v118 = theArray;
                  if (theArray)
                  {
                    while (1)
                    {
                      v119 = CMByteStreamAppend();
                      if (v119)
                      {
                        break;
                      }

                      if (!v118)
                      {
                        v120 = theArray;
                        goto LABEL_211;
                      }
                    }

                    value_low = v119;
                    goto LABEL_218;
                  }

                  v120 = 0;
LABEL_211:
                  v112 = (v112 + v120);
                  v113 = (*type - v120);
                  *type = v113;
                  if (v113 <= 0)
                  {
                    goto LABEL_217;
                  }
                }

                value_low = v117;
                if (v117 != -12873)
                {
                  goto LABEL_218;
                }
              }

LABEL_217:
              value_low = 0;
            }

            else
            {
              remakerFamily_performLastStepIfComplete_cold_3(v127);
LABEL_226:
              value_low = *v127;
            }

LABEL_218:
            v111 = cf.value;
            if (!cf.value)
            {
              goto LABEL_220;
            }
          }

          CFRelease(v111);
LABEL_220:
          v12 = v121;
          goto LABEL_183;
        }

        remakerFamily_performLastStepIfComplete_cold_4(&theArray);
        v102 = 0;
LABEL_222:
        value_low = theArray;
LABEL_183:
        if (v130[0].value)
        {
          CFRelease(v130[0].value);
        }

        if (v98)
        {
          CFRelease(v98);
        }

        free(v102);
        v13 = &dword_1EAF17000;
        if (!value_low)
        {
          goto LABEL_188;
        }

        goto LABEL_43;
      }

LABEL_191:
      value_low = v97;
      v102 = 0;
      v98 = 0;
      goto LABEL_183;
    }

LABEL_181:
    v102 = 0;
    v98 = 0;
    goto LABEL_182;
  }

  v89 = *(v121 + 184);
  v90 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v90)
  {
    value_low = 4294954514;
    v13 = &dword_1EAF17000;
    goto LABEL_43;
  }

  v13 = &dword_1EAF17000;
  v19 = v90(v89, 0);
  if (v19)
  {
    goto LABEL_179;
  }

  v103 = *(v121 + 336);
  if (!v103)
  {
    goto LABEL_188;
  }

  v104 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v104)
  {
LABEL_42:
    value_low = 4294954514;
    goto LABEL_43;
  }

  v19 = v104(v103);
  if (v19)
  {
    goto LABEL_179;
  }

LABEL_188:
  remakerFamily_handleFinalHDRMetadataGenerationState(a1);
LABEL_189:
  value_low = 0;
LABEL_43:
  remakerFamily_registerPowerLogEvent();
  remakerFamily_invalidateAllMediaProcessors();
  if (a1)
  {
    v22 = CFGetTypeID(a1);
    if (v22 == FigRemakerGetTypeID())
    {
      remakerFamily_performLastStepIfComplete_cold_10(a1, value_low);
    }

    else
    {
      v23 = CFGetTypeID(a1);
      if (v23 == FigAssetWriterGetTypeID())
      {
        v24 = *(v12 + 56);
        if (dispatch_get_current_queue() != v24)
        {
          dispatch_sync_f(v24, 0, remakerFamily_NoOp);
        }

        remakerfamily_setFailureStatusIfError(a1, value_low);
        if (value_low != -12785)
        {
          if (value_low)
          {
            remakerFamily_PostFailureNotificationIfError(a1, 0, value_low, 0, 1u);
          }

          else if (*(v12 + 292))
          {
            v85 = CMBaseObjectGetDerivedStorage();
            v86 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v86)
            {
              remakerFamily_performLastStepIfComplete_cold_7(v86, v85);
            }

            else
            {
              remakerFamily_performLastStepIfComplete_cold_8();
            }
          }

          else
          {
            remakerFamily_performLastStepIfComplete_cold_9(a1);
          }
        }
      }
    }
  }

  FigAtomicCompareAndSwap32();
  if (v13[8])
  {
    LODWORD(desc) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = desc;
    if (os_log_type_enabled(v25, type[0]))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v28 = remakerFamily_StateDesc(*v12);
      LODWORD(cf.value) = 136315906;
      *(&cf.value + 4) = "remakerFamily_handleLastStep";
      LOWORD(cf.flags) = 2048;
      *(&cf.flags + 2) = a1;
      HIWORD(cf.epoch) = 1024;
      v129[0] = value_low;
      LOWORD(v129[1]) = 2082;
      *(&v129[1] + 2) = v28;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v29 = CFGetTypeID(a1);
    if (v29 == FigAssetWriterGetTypeID())
    {
      FigSemaphoreSignal();
    }
  }

  return value_low;
}

uint64_t remakerFamily_createVideoPixelTransferProperties(int a1, CFDictionaryRef theDict, int a3, __CFDictionary **a4)
{
  if (!theDict)
  {
    MutableCopy = 0;
LABEL_13:
    v13 = 0;
    *a4 = MutableCopy;
    return v13;
  }

  v7 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, @"MatrixHandling");
  v9 = *MEMORY[0x1E6983DC8];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DC8]);
  if (!Value)
  {
    goto LABEL_13;
  }

  Mutable = Value;
  v12 = CFGetTypeID(Value);
  if (v12 != CFDictionaryGetTypeID())
  {
    goto LABEL_13;
  }

  if (a3 != 270 && a3 != 90)
  {
    CFRetain(Mutable);
    CFDictionarySetValue(MutableCopy, v9, Mutable);
LABEL_12:
    CFRelease(Mutable);
    goto LABEL_13;
  }

  if (FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent())
  {
    Mutable = CFDictionaryCreateMutable(v7, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CFDictionarySetValue(MutableCopy, v9, Mutable);
    if (!Mutable)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = FigSignalErrorAtGM();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v13;
}

void remakerFamily_startNextPassWork(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17020)
  {
    LODWORD(timeRangeArrayOut.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v2)
  {
    remakerFamily_startNextPassWork_cold_5(a1);
    goto LABEL_72;
  }

  if (*(a1 + 425))
  {
    goto LABEL_34;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetTypeID(v2);
  TypeID = FigRemakerGetTypeID();
  type[0] = OS_LOG_TYPE_INFO;
  if (v5 == TypeID)
  {
    v7 = *(a1 + 408);
    if (v7)
    {
      dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    }

    v8 = *(a1 + 400);
    if (v8)
    {
      if (CFArrayGetCount(v8))
      {
        remakerFamily_startNextPassWork_cold_1(&v57);
        goto LABEL_82;
      }
    }
  }

  if (*DerivedStorage >= 7u)
  {
    remakerFamily_startNextPassWork_cold_2(&v57);
LABEL_82:
    value = v57.start.value;
    goto LABEL_31;
  }

  VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(a1 + 288));
  value = VTCompressionSessionEndPass(VTCompressionSession, type, 0);
  v11 = type[0];
  if (!value && type[0])
  {
    timeRangeCountOut.value = 0;
    timeRangeArrayOut.value = 0;
    TimeRangesForNextPass = VTCompressionSessionGetTimeRangesForNextPass(VTCompressionSession, &timeRangeCountOut.value, &timeRangeArrayOut);
    if (!TimeRangesForNextPass)
    {
      ++*(a1 + 428);
      TimeRangesForNextPass = remakerFamily_resetTrackMultiPassTimeRanges(a1, timeRangeArrayOut.value, timeRangeCountOut.value);
      if (!TimeRangesForNextPass)
      {
        if (v5 != TypeID || (TimeRangesForNextPass = VTFrameSiloSetTimeRangesForNextPass(*(a1 + 360), timeRangeCountOut.value, timeRangeArrayOut.value)) == 0 && (v13 = FigMediaProcessorGetVTCompressionSession(*(a1 + 288)), (TimeRangesForNextPass = VTCompressionSessionBeginPass(v13, 0, 0)) == 0) && (v57 = *timeRangeArrayOut.value, (TimeRangesForNextPass = remakerFamily_resetSourceRenderersForNextSegment(a1, &v57, 1)) == 0))
        {
          *(a1 + 296) = 0;
          TimeRangesForNextPass = FigMediaProcessorReset(*(a1 + 288), 1);
          if (!TimeRangesForNextPass)
          {
            v14 = *(a1 + 232);
            if (!v14)
            {
LABEL_28:
              v21 = *(*(a1 + 160) + 32);
              if (v21)
              {
                CMBufferQueueReset(v21);
              }

              value = 0;
              goto LABEL_31;
            }

            *(a1 + 256) = 0;
            TimeRangesForNextPass = FigMediaProcessorReset(v14, 1);
            if (!TimeRangesForNextPass)
            {
              if (*(*(a1 + 152) + 160))
              {
                v15 = *(a1 + 240);
                if (v15)
                {
                  Count = CFArrayGetCount(v15);
                  if (Count >= 2)
                  {
                    v17 = Count;
                    v18 = 1;
                    while (1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), v18);
                      started = FigMediaProcessorReset(ValueAtIndex, 1);
                      if (started)
                      {
                        goto LABEL_73;
                      }

                      if (v17 == ++v18)
                      {
                        goto LABEL_28;
                      }
                    }
                  }
                }
              }

              goto LABEL_28;
            }
          }
        }
      }
    }

    value = TimeRangesForNextPass;
LABEL_31:
    v11 = type[0];
  }

  if (value)
  {
    goto LABEL_71;
  }

  if (v11)
  {
    v22 = 0;
    goto LABEL_46;
  }

LABEL_34:
  v22 = 1;
  if (*(a1 + 358))
  {
    goto LABEL_46;
  }

  *(a1 + 358) = 1;
  started = remakerFamily_startAllSinglePassTracks(v2);
  if (started)
  {
LABEL_73:
    value = started;
    goto LABEL_71;
  }

  v23 = FigCFWeakReferenceHolderCopyReferencedObject();
  v24 = CMBaseObjectGetDerivedStorage();
  *type = 0;
  if (!v23)
  {
    remakerFamily_startNextPassWork_cold_4(&v57);
    value = v57.start.value;
    if (LODWORD(v57.start.value))
    {
      goto LABEL_71;
    }

LABEL_46:
    if (*(a1 + 425))
    {
      goto LABEL_70;
    }

    v32 = CFGetTypeID(v2);
    if (v32 != FigAssetWriterGetTypeID())
    {
      goto LABEL_70;
    }

    timeRangeArrayOut.value = 0;
    *type = 0;
    v33 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (dword_1EAF17020)
    {
      HIDWORD(v51) = 0;
      BYTE3(v51) = 0;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = HIDWORD(v51);
      if (os_log_type_enabled(v34, BYTE3(v51)))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        LODWORD(timeRangeCountOut.value) = 136315394;
        *(&timeRangeCountOut.value + 4) = "assetWriter_postPassFinishedNotification";
        LOWORD(timeRangeCountOut.flags) = 2048;
        *(&timeRangeCountOut.flags + 2) = v33;
        LODWORD(v47) = 22;
        p_timeRangeCountOut = &timeRangeCountOut;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v33)
    {
LABEL_69:
      free(timeRangeArrayOut.value);
LABEL_70:
      value = 0;
      goto LABEL_71;
    }

    v37 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v39 = Mutable;
    v40 = MEMORY[0x1E695E4C0];
    if (!v22)
    {
      v40 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"AssetWriter_FurtherPassesRequested", *v40);
    FigCFDictionarySetInt32();
    if ((v22 & 1) != 0 || (v44 = *(a1 + 400)) == 0 || CFArrayGetCount(v44) < 1)
    {
      v45 = 0;
    }

    else
    {
      if (remakerFamily_createTimeRangesCArray(*(a1 + 400), type, &timeRangeArrayOut))
      {
        v45 = 0;
        goto LABEL_65;
      }

      v45 = CFDataCreate(v37, timeRangeArrayOut.value, 48 * *type);
      CFDictionarySetValue(v39, @"AssetWriter_PassTimeRanges", v45);
    }

    remakerFamily_safelyPostNotification(v33, 0, @"AssetWriter_WriterTrackIDPassFinished", v39, v33, v41, v42, v43, p_timeRangeCountOut, v47, timeRangeArrayOut.value, timeRangeArrayOut.timescale, SBYTE2(timeRangeArrayOut.timescale), HIBYTE(timeRangeArrayOut.timescale), timeRangeArrayOut.flags, timeRangeArrayOut.epoch, SHIDWORD(timeRangeArrayOut.epoch), v49, v50, v51, *type, timeRangeCountOut.value, *&timeRangeCountOut.timescale, timeRangeCountOut.epoch, v54, v55, v56, v57.start.value, *&v57.start.timescale, v57.start.epoch, v57.duration.value, *&v57.duration.timescale, v57.duration.epoch, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
LABEL_65:
    CFRelease(v33);
    if (v39)
    {
      CFRelease(v39);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    goto LABEL_69;
  }

  v25 = v24;
  if (*v24 >= 7u)
  {
    remakerFamily_startNextPassWork_cold_3(&v57);
    value = v57.start.value;
  }

  else
  {
    *(a1 + 376) = FigSemaphoreCreate();
    v26 = *(v25 + 23);
    v27 = *(a1 + 300);
    CMTimeMake(&v57.start, 2, 1);
    CMTimeMake(&timeRangeCountOut, 1, 1);
    v28 = FigSampleBufferConsumerCreateForFormatWriter(v26, v27, &v57, 0, &timeRangeCountOut, 0, (a1 + 384));
    if (v28)
    {
      goto LABEL_80;
    }

    v29 = *(a1 + 384);
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v30)
    {
      value = -12782;
      goto LABEL_45;
    }

    v28 = v30(v29, remakerFamily_frameSiloLowWaterTrigger, a1, type);
    if (v28)
    {
LABEL_80:
      value = v28;
    }

    else
    {
      v31 = *(a1 + 360);
      timeRangeCountOut = *(v25 + 22);
      timeRangeArrayOut = *(v25 + 28);
      CMTimeRangeFromTimeToTime(&v57, &timeRangeCountOut, &timeRangeArrayOut);
      value = VTFrameSiloCallFunctionForEachSampleBuffer(v31, &v57, a1, remakerFamily_addFrameFromSiloToFormatWriter);
      if (!value)
      {
        remakerFamily_markFormatWriterTrackWithEOD(a1);
        *(a1 + 357) = 1;
        remakerFamily_performLastStepIfComplete(v23);
      }
    }
  }

LABEL_45:
  CFRelease(v23);
  if (!value)
  {
    goto LABEL_46;
  }

LABEL_71:
  remakerFamily_PostFailureNotificationIfError(v2, a1, value, 1u, 0);
  CFRelease(v2);
LABEL_72:
  CFRelease(a1);
}

void remakerFamily_VideoCompositionProcessorErrorOccurred(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  *(a2 + 184) = 1;
  remakerFamily_HandleNotificationErrorPayload(v3, a2);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t remakerFamily_getTrackRotationAngle(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v10 = 0;
  CMBaseObject = FigAssetTrackGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 0;
  }

  v6(CMBaseObject, @"PreferredTransform", *MEMORY[0x1E695E480], &v10);
  if (!v10)
  {
    return 0;
  }

  FigGetCGAffineTransformFrom3x3MatrixArray(v10, v9);
  RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform(v9, a2, a3);
  CFRelease(v10);
  return RotationAngleAndFlipsFromCGAffineTransform;
}

CFDictionaryRef remakerFamily_IsRasterFormatDescription(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  result = CVPixelFormatDescriptionCreateWithPixelFormatType(0, MediaSubType);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel(const void *a1, uint64_t a2, const __CFArray *a3, const __CFArray *a4, __CFString *a5, const void *a6, const void *a7, int a8, const __CFArray *a9, uint64_t a10, const void *a11, __int128 *a12, unsigned int a13, int a14, int a15, const void *a16, CFDictionaryRef theDict, const __CFDictionary *a18, const __CFArray *a19, void *a20)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v163 = 0;
  v162 = 1986618469;
  v160 = 0;
  v161 = 0;
  __dst = *MEMORY[0x1E6960CC0];
  v28 = *(MEMORY[0x1E6960CC0] + 16);
  *&v157[8] = __dst;
  *v157 = v28;
  *&v157[24] = v28;
  v158 = __dst;
  *v159 = v28;
  *&v159[24] = v28;
  *&v159[8] = __dst;
  formatDescription = 0;
  value = 0;
  v152 = 0;
  v153 = 0;
  v151 = 0;
  cf1 = 0;
  if (*(DerivedStorage + 32))
  {
    v29 = 30;
  }

  else
  {
    v29 = 31;
  }

  valuePtr = v29;
  queueOut = 0;
  v147 = 0;
  cf = 0;
  tagCollectionsOut = 0;
  v129 = a3;
  Count = CFArrayGetCount(a3);
  theArray = a4;
  v125 = a7;
  if (a4)
  {
    v30 = CFArrayGetCount(a4);
  }

  else
  {
    v30 = 0;
  }

  v150 = 0;
  v31 = v30 + Count;
  v132 = malloc_type_calloc(8uLL, v30 + Count, 0xC918AAF5uLL);
  if (!a5)
  {
    a5 = @"RemakerFamilyVideoCompositor_DeviceSpecific";
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_Basic"))
  {
    v32 = @"VideoCompositorBasic";
LABEL_11:
    v33 = CFRetain(v32);
    cf1 = v33;
    goto LABEL_12;
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_vImage"))
  {
    v32 = @"VideoCompositorvImage";
    goto LABEL_11;
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_Metal"))
  {
    v32 = @"VideoCompositorMetal";
    goto LABEL_11;
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_OpenGL"))
  {
    v32 = @"VideoCompositorOpenGL";
    goto LABEL_11;
  }

  if (!CFEqual(a5, @"RemakerFamilyVideoCompositor_DeviceSpecific"))
  {
    TypeID = FigVideoCompositorGetTypeID();
    if (TypeID != CFGetTypeID(a5))
    {
      remakerFamily_finishVideoCompositionChannel_cold_13(v135);
      goto LABEL_252;
    }

    v32 = @"VideoCompositorCustom";
    goto LABEL_11;
  }

  v35 = FigVideoCompositorCopyDeviceSpecificCompositorName(1, &cf1);
  if (v35)
  {
    goto LABEL_250;
  }

  v33 = cf1;
LABEL_12:
  if (CFEqual(v33, @"VideoCompositorBasic"))
  {
    v34 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreateBasic(v34, 0, &v150);
    if (!v35)
    {
      goto LABEL_29;
    }

LABEL_250:
    v63 = v35;
    v128 = 0;
    Mutable = 0;
    goto LABEL_234;
  }

  if (CFEqual(cf1, @"VideoCompositorvImage"))
  {
    v36 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreatevImage(v36, 0, &v150);
    if (v35)
    {
      goto LABEL_250;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"VideoCompositorMetal"))
  {
    v37 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreateMetal(v37, &v150);
    if (v35)
    {
      goto LABEL_250;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"VideoCompositorOpenGL"))
  {
    v38 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreateOpenGL(v38, 0, &v150);
    if (v35)
    {
      goto LABEL_250;
    }

LABEL_29:
    v128 = 1;
    goto LABEL_30;
  }

  if (!CFEqual(cf1, @"VideoCompositorCustom"))
  {
    remakerFamily_finishVideoCompositionChannel_cold_12(v135);
LABEL_252:
    v128 = 0;
    goto LABEL_253;
  }

  v128 = 0;
  v150 = a5;
LABEL_30:
  allocator = *MEMORY[0x1E695E480];
  v39 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  FigBaseObject = FigVideoCompositorGetFigBaseObject(v150);
  v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v41)
  {
    v41(FigBaseObject, @"WorkerThreadPriority", v39);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v42 = FigVideoCompositorGetFigBaseObject(v150);
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v43)
  {
    v43(v42, @"HighQualityRendering", *MEMORY[0x1E695E4D0]);
  }

  if (!a1)
  {
    remakerFamily_finishVideoCompositionChannel_cold_11(v135);
LABEL_253:
    Mutable = 0;
    v69 = 0;
LABEL_254:
    v101 = 0;
    v63 = LODWORD(v135[0]);
    goto LABEL_185;
  }

  *v135 = *MEMORY[0x1E6960C70];
  *&v136 = *(MEMORY[0x1E6960C70] + 16);
  v123 = *v135;
  *v142 = *v135;
  v122 = v136;
  v143 = v136;
  if (!FigVideoCompositionInstructionArrayIsValid(a6, v135, v142))
  {
    remakerFamily_finishVideoCompositionChannel_cold_10(a1, v135);
    goto LABEL_253;
  }

  if (a6)
  {
    v44 = CFRetain(a6);
  }

  else
  {
    v44 = 0;
  }

  *(a2 + 176) = v44;
  if (!a19)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_57;
    }

    goto LABEL_249;
  }

  v45 = CFArrayGetCount(a19);
  v46 = CFArrayCreateMutable(allocator, v45, MEMORY[0x1E695E9C0]);
  if (!v46)
  {
LABEL_249:
    remakerFamily_finishVideoCompositionChannel_cold_9(v135);
    goto LABEL_253;
  }

  Mutable = v46;
  if (v45 >= 1)
  {
    v48 = 0;
    while (1)
    {
      v49 = CFGetAllocator(a1);
      v50 = FigImageQueueCreateForCoreVideo(v49, &v161);
      if (v50)
      {
        goto LABEL_233;
      }

      v51 = v161;
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v52)
      {
        v52(v51, 1);
      }

      v53 = v161;
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v54)
      {
        v54(v53, 1.0);
      }

      CFArrayAppendValue(Mutable, v161);
      ValueAtIndex = CFArrayGetValueAtIndex(a19, v48);
      v56 = v161;
      v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v57)
      {
        break;
      }

      v50 = v57(v56, ValueAtIndex, 0);
      if (v50)
      {
        goto LABEL_233;
      }

      if (v161)
      {
        CFRelease(v161);
        v161 = 0;
      }

      if (v45 == ++v48)
      {
        goto LABEL_57;
      }
    }

    v69 = 0;
    v101 = 0;
    v63 = 4294954514;
LABEL_185:
    v110 = v132;
    goto LABEL_187;
  }

LABEL_57:
  v58 = CFGetAllocator(a1);
  if (*(DerivedStorage + 32))
  {
    v59 = 30;
  }

  else
  {
    v59 = 31;
  }

  v50 = FigActivitySchedulerCreateForNewThread(v58, v59, @"com.apple.coremedia.remaker.videoprocessor", &v160);
  if (v50)
  {
    goto LABEL_233;
  }

  v169.width = a14;
  v169.height = a15;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v169);
  v61 = FigVideoCompositorGetFigBaseObject(v150);
  v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v62)
  {
    v63 = 4294954514;
    if (!DictionaryRepresentation)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v63 = v62(v61, @"RenderDimensions", DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
LABEL_65:
    CFRelease(DictionaryRepresentation);
  }

LABEL_66:
  if (v63)
  {
LABEL_234:
    v69 = 0;
LABEL_235:
    v101 = 0;
    goto LABEL_185;
  }

  v64 = CFGetAllocator(a1);
  v65 = v150;
  v66 = *(*(a2 + 152) + 152);
  remakerFamily_getHighWaterLevel(*(DerivedStorage + 32), v135);
  v126 = Mutable;
  remakerFamily_getLowWaterLevel(*(DerivedStorage + 32), v142);
  *&v141.value = *a12;
  v141.epoch = *(a12 + 2);
  v130 = (a2 + 168);
  v67 = FigVideoCompositionProcessorCreateWithImageQueueArray(v64, 5u, v65, &v141, a13, Mutable, v66, v135, v142, v160, (a2 + 168));
  if (v67)
  {
    v63 = v67;
    v69 = 0;
    v101 = 0;
    v110 = v132;
    goto LABEL_187;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v68 = FigNotificationCenterAddWeakListeners();
  if (v68)
  {
    v63 = v68;
    v69 = 0;
    v101 = 0;
    v110 = v132;
    goto LABEL_187;
  }

  v50 = FigVideoCompositionProcessorSetCompositionInstructionCallback(*(a2 + 168), remakerFamily_copyCompositionInstructionAtTime, a2);
  if (v50 || (v50 = FigVideoCompositionProcessorSetProperty(*v130, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", a20), v50))
  {
LABEL_233:
    v63 = v50;
    goto LABEL_234;
  }

  v147 = VTNextUniquePixelBufferPoolSharingIDFromSource();
  v69 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v147);
  if (!v69)
  {
    remakerFamily_finishVideoCompositionChannel_cold_8(v135);
    goto LABEL_254;
  }

  v70 = FigVideoCompositionProcessorSetProperty(*v130, @"VideoCompositionProcessor_PixelBufferPoolSharingID", v69);
  if (v70 || (v71 = *v130, v72 = CFGetAllocator(a1), v70 = FigVideoCompositionProcessorCopyProperty(v71, @"VideoCompositionProcessor_SourcePixelBufferAttributes", v72, &v151), v70))
  {
    v63 = v70;
    goto LABEL_235;
  }

  v73 = CFArrayGetCount(Mutable);
  if (a19)
  {
    v74 = CFArrayGetCount(a19);
  }

  else
  {
    v74 = 0;
  }

  v75 = theArray;
  if (v73 != v74)
  {
    remakerFamily_finishVideoCompositionChannel_cold_1(v135);
    goto LABEL_254;
  }

  v127 = v69;
  if (v31 < 1)
  {
LABEL_148:
    v135[0] = 0;
    v142[0] = 0;
    v141.value = 0;
    v167 = 0;
    v168 = 0;
    v165 = 0;
    v166 = 0;
    v164 = 0;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_CompositionYCbCrMatrix", &v168);
    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_CompositionColorPrimaries", v142);
    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_CompositionTransferFunction", &v141);
    if (v168)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionYCbCrMatrix", v168);
    }

    if (v142[0])
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionColorPrimaries", v142[0]);
    }

    if (v141.value)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionTransferFunction", v141.value);
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E6983DE0], &v165))
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix", v165);
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E6983DC0], &v167))
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries", v167);
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E6983DD8], &v166))
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction", v166);
    }

    if (!v168 && v165)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionYCbCrMatrix", v165);
    }

    if (!v142[0] && v167)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionColorPrimaries", v167);
    }

    v110 = v132;
    if (!v141.value && v166)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionTransferFunction", v166);
    }

    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy", &v164);
    if (v164)
    {
      CFDictionarySetValue(MutableCopy, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy", v164);
    }

    CFDictionaryApplyFunction(MutableCopy, remakerFamily_setPropertyOnVideoCompositionProcessor, *v130);
    VideoPixelTransferProperties = remakerFamily_createVideoPixelTransferProperties(v112, theDict, 0, v135);
    if (!VideoPixelTransferProperties)
    {
      VideoPixelTransferProperties = FigVideoCompositionProcessorSetProperty(*v130, @"VideoCompositionProcessor_DestinationPixelTransferProperties", v135[0]);
    }

    v63 = VideoPixelTransferProperties;
    v69 = v127;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v135[0])
    {
      CFRelease(v135[0]);
    }

    if (!v63)
    {
      if (!v125 || (v114 = FigVideoCompositionProcessorSetAnimationLayer(*v130, a8, v125, a9, a10, a11), !v114))
      {
        v115 = *a12;
        *(a2 + 344) = *(a12 + 2);
        *(a2 + 328) = v115;
        remakerFamily_commitChannel(a1, a2);
        if (v31 < 1)
        {
          v101 = 0;
          v63 = 0;
          goto LABEL_187;
        }

        v116 = v132;
        v117 = v31;
        do
        {
          remakerFamily_commitChannel(a1, *v116);
          *v116++ = 0;
          --v117;
        }

        while (v117);
        v63 = 0;
        v101 = 0;
        goto LABEL_188;
      }

      v63 = v114;
    }

    v101 = 0;
    goto LABEL_187;
  }

  v76 = 0;
  while (1)
  {
    LODWORD(v141.value) = 0;
    v77 = v76 - Count;
    if (v76 >= Count)
    {
      v78 = v75;
    }

    else
    {
      v78 = v129;
      v77 = v76;
    }

    v79 = CFArrayGetValueAtIndex(v78, v77);
    if (!v79)
    {
      remakerFamily_finishVideoCompositionChannel_cold_6(a1, v135);
      goto LABEL_241;
    }

    v80 = CFNumberGetTypeID();
    if (v80 != CFGetTypeID(v79))
    {
      remakerFamily_finishVideoCompositionChannel_cold_2(a1, v135);
      goto LABEL_241;
    }

    CFNumberGetValue(v79, kCFNumberSInt32Type, &v141);
    v81 = *(DerivedStorage + 72);
    value_low = LODWORD(v141.value);
    v83 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v83)
    {
      goto LABEL_146;
    }

    Channel = v83(v81, value_low, &v163);
    if (Channel)
    {
      goto LABEL_242;
    }

    v85 = v163;
    v86 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v86)
    {
LABEL_146:
      v101 = 0;
      v63 = 4294954514;
      goto LABEL_147;
    }

    Channel = v86(v85, 0, &v162);
    if (Channel)
    {
      goto LABEL_242;
    }

    if (v162 != 1635088502 && v162 != 1835365473 && v162 != 1986618469)
    {
      remakerFamily_finishVideoCompositionChannel_cold_7(a1, v135);
LABEL_241:
      v101 = 0;
      v63 = LODWORD(v135[0]);
      goto LABEL_147;
    }

    v87 = CFGetTypeID(a1);
    v88 = remakerFamily_copyFormatDescription(v87, v163, &formatDescription);
    if (v88 == -12138)
    {
      goto LABEL_139;
    }

    v63 = v88;
    if (v88 == -12123)
    {
      goto LABEL_139;
    }

    if (v88)
    {
      goto LABEL_243;
    }

    v89 = &v132[v76];
    Channel = remakerFamily_createChannel(a1, v141.value, v162, v89);
    if (Channel)
    {
LABEL_242:
      v63 = Channel;
LABEL_243:
      v101 = 0;
LABEL_147:
      v110 = v132;
      v69 = v127;
      goto LABEL_187;
    }

    v90 = *v89;
    *(v90 + 48) = 0;
    *(v90 + 50) = 1;
    if (v162 == 1986618469)
    {
      goto LABEL_99;
    }

    if (v162 != 1835365473)
    {
      break;
    }

    CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
    v75 = theArray;
    if (!CMBufferQueueCreate(allocator, 0, CallbacksForSampleBuffersSortedByOutputPTS, &queueOut))
    {
      Channel = FigRenderPipelineCreateForBufferQueue(allocator, queueOut, 0, (*v89 + 56));
      if (Channel)
      {
        goto LABEL_242;
      }

      Channel = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(DerivedStorage + 488), v141.value, &__dst);
      if (Channel)
      {
        goto LABEL_242;
      }

      v109 = *v130;
      v137 = *&v157[16];
      v138 = v158;
      v139 = *v159;
      v140 = *&v159[16];
      *v135 = __dst;
      v136 = *v157;
      *v142 = v123;
      v143 = v122;
      Channel = FigVideoCompositionProcessorSetSourceBufferQueue(v109, v141.value, v135, queueOut, v142);
      if (Channel)
      {
        goto LABEL_242;
      }

      if (queueOut)
      {
        CFRelease(queueOut);
        queueOut = 0;
      }

      goto LABEL_128;
    }

LABEL_139:
    if (++v76 == v31)
    {
      goto LABEL_148;
    }
  }

  if (v162 != 1635088502)
  {
LABEL_128:
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (formatDescription)
    {
      CFRelease(formatDescription);
      formatDescription = 0;
    }

    v75 = theArray;
    if (v153)
    {
      CFRelease(v153);
      v153 = 0;
    }

    if (v152)
    {
      CFRelease(v152);
      v152 = 0;
    }

    if (v163)
    {
      CFRelease(v163);
      v163 = 0;
    }

    goto LABEL_139;
  }

LABEL_99:
  if (FigRemakerIsFormatDescriptionProtected(formatDescription))
  {
    remakerFamily_finishVideoCompositionChannel_cold_3(a1, v135);
    goto LABEL_241;
  }

  v91 = CFGetAllocator(a1);
  Channel = FigVisualContextCreateBasic(v91, 0, &value);
  if (Channel)
  {
    goto LABEL_242;
  }

  CFGetAllocator(a1);
  v92 = formatDescription;
  remakerFamily_getLowWaterLevel(*(DerivedStorage + 32), v135);
  HighWaterLevel = remakerFamily_getHighWaterLevel(*(DerivedStorage + 32), v142);
  Channel = remakerFamily_createRenderPipelineOptions(HighWaterLevel, v92, v135, v142, 0, v127, *(DerivedStorage + 424), 0, 0, *(DerivedStorage + 32), 0, 0, 0, DerivedStorage + 41, v141.value, &v153);
  if (Channel)
  {
    goto LABEL_242;
  }

  Channel = remakerFamily_createRemakerVideoDecoderSpecification(a1, v94, &v152);
  if (Channel)
  {
    goto LABEL_242;
  }

  v95 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
  if (!v95 || !FigVideoCompositorSupportsSpatialVideoSources(v150))
  {
    v105 = CFGetAllocator(a1);
    v106 = FigVideoRenderPipelineCreateWithVisualContext(v105, v152, v151, 0, 1, value, 0, v153, *v89 + 56);
    v101 = 0;
    if (v106)
    {
      goto LABEL_245;
    }

LABEL_117:
    v106 = remakerFamily_setVideoRenderPipelineProperties(a1, *v89, 0, 0, formatDescription, a16, *(DerivedStorage + 32), 0, 0, 0);
    if (v106 || (CMNotificationCenterGetDefaultLocalCenter(), v106 = FigNotificationCenterAddWeakListeners(), v106) || (*(*v89 + 356) = *(a2 + 356), v106 = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(DerivedStorage + 480), v141.value, &__dst), v106))
    {
LABEL_245:
      v63 = v106;
      goto LABEL_147;
    }

    if (v95 && FigVideoCompositorSupportsSpatialVideoSources(v150))
    {
      v63 = FigVideoCompositionProcessorSetSourceVisualContextGroup(*v130, v141.value, v162, v101, tagCollectionsOut);
      if (tagCollectionsOut)
      {
        CFRelease(tagCollectionsOut);
        tagCollectionsOut = 0;
      }
    }

    else
    {
      v107 = *v130;
      v137 = *&v157[16];
      v138 = v158;
      v139 = *v159;
      v140 = *&v159[16];
      *v135 = __dst;
      v136 = *v157;
      v63 = FigVideoCompositionProcessorSetSourceVisualContext(v107, v141.value, v162, v135, value);
    }

    if (v63)
    {
      goto LABEL_147;
    }

    *(*v89 + 304) = *(a2 + 300);
    if (v101)
    {
      CFRelease(v101);
    }

    goto LABEL_128;
  }

  v96 = a2;
  v97 = CMVideoFormatDescriptionCopyTagCollectionArray(formatDescription, &tagCollectionsOut);
  if (v97)
  {
    v63 = v97;
    v101 = 0;
    goto LABEL_237;
  }

  if (!tagCollectionsOut || (v98 = CFArrayGetCount(tagCollectionsOut), v99 = v98 - 1, v98 <= 1))
  {
    remakerFamily_finishVideoCompositionChannel_cold_5(v135);
    v101 = 0;
LABEL_260:
    v63 = LODWORD(v135[0]);
    goto LABEL_237;
  }

  v100 = CFArrayCreateMutable(allocator, v98, MEMORY[0x1E695E9C0]);
  v101 = v100;
  if (!v100)
  {
    remakerFamily_finishVideoCompositionChannel_cold_4(v135);
    goto LABEL_260;
  }

  CFArrayAppendValue(v100, value);
  while (1)
  {
    v102 = CFGetAllocator(a1);
    v103 = FigVisualContextCreateBasic(v102, 0, &cf);
    if (v103)
    {
      break;
    }

    CFArrayAppendValue(v101, cf);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!--v99)
    {
      v104 = CFGetAllocator(a1);
      v103 = FigVideoRenderPipelineCreateWithVisualContextGroup(v104, v152, v151, 0, 1, v101, tagCollectionsOut, 0, v153, (*v89 + 56));
      if (!v103)
      {
        a2 = v96;
        Mutable = v126;
        goto LABEL_117;
      }

      break;
    }
  }

  v63 = v103;
LABEL_237:
  v110 = v132;
  Mutable = v126;
  v69 = v127;
LABEL_187:
  if (v110)
  {
LABEL_188:
    if (v31 >= 1)
    {
      v118 = v110;
      do
      {
        v119 = *v118++;
        remakerFamily_discardChannel(a1, v119);
        --v31;
      }

      while (v31);
    }

    free(v110);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (v151)
  {
    CFRelease(v151);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v163)
  {
    CFRelease(v163);
  }

  if (queueOut)
  {
    CFRelease(queueOut);
  }

  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (v128 && v150)
  {
    CFRelease(v150);
  }

  return v63;
}

uint64_t remakerFamily_copyCompositionInstructionAtTime(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 176);
  if (!v4)
  {
    goto LABEL_7;
  }

  Count = CFArrayGetCount(*(a1 + 176));
  if (Count < 1)
  {
    goto LABEL_7;
  }

  v7 = Count;
  v8 = 0;
  v13 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
    *&v14.value = *a2;
    v14.epoch = *(a2 + 16);
    *&v18.value = v13;
    v18.epoch = v9;
    *&v17.value = v13;
    v17.epoch = v9;
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    time1 = v14;
    time2 = v18;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v17;
      time2 = v14;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  if (ValueAtIndex)
  {
    v11 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  *a3 = v11;
  return 0;
}

uint64_t remakerFamily_getExpectedDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = **&MEMORY[0x1E6960C70];
  ExpectedEndTime = remakerFamily_getExpectedEndTime(a1, &v10);
  lhs = v10;
  v7 = *(DerivedStorage + 88);
  CMTimeSubtract(&v9, &lhs, &v7);
  *a2 = v9;
  return ExpectedEndTime;
}

uint64_t remakerFamily_resetTrackMultiPassTimeRanges(uint64_t a1, void *a2, CFIndex capacity)
{
  if (!a1)
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_5(&v10);
    return LODWORD(v10.version);
  }

  if (!*(a1 + 356))
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_4(&v10);
    return LODWORD(v10.version);
  }

  v4 = capacity;
  if (capacity <= 0)
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_3(&v10);
    return LODWORD(v10.version);
  }

  v5 = a2;
  if (!a2)
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_2(&v10);
    return LODWORD(v10.version);
  }

  v6 = a2 + 5;
  v7 = capacity;
  do
  {
    if ((*(v6 - 28) & 1) == 0 || (*(v6 - 4) & 1) == 0 || *v6 || (*(v6 - 2) & 0x8000000000000000) != 0)
    {
      remakerFamily_resetTrackMultiPassTimeRanges_cold_1(&v10);
      return LODWORD(v10.version);
    }

    v6 += 6;
    --v7;
  }

  while (v7);
  v8 = *(a1 + 400);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  else
  {
    v10 = *byte_1F0AE3C80;
    *(a1 + 400) = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, &v10);
  }

  do
  {
    CFArrayAppendValue(*(a1 + 400), v5);
    v5 += 48;
    --v4;
  }

  while (v4);
  return 0;
}

uint64_t remakerFamily_createTimeRangesCArray(CFArrayRef theArray, CFIndex *a2, void *a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    remakerFamily_createTimeRangesCArray_cold_2(&v15);
    return v15;
  }

  Count = 0;
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a2)
  {
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      v8 = 0;
      v9 = v7;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v12 = ValueAtIndex[1];
        v11 = ValueAtIndex[2];
        *v9 = *ValueAtIndex;
        v9[1] = v12;
        v9[2] = v11;
        ++v8;
        v9 += 3;
      }

      while (Count != v8);
    }

    result = 0;
    *a2 = Count;
    *a3 = v7;
  }

  else
  {
    remakerFamily_createTimeRangesCArray_cold_1(&v14);
    return v14;
  }

  return result;
}

BOOL remakerFamily_CFURLSchemeIsFile(const __CFURL *a1)
{
  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFStringCompare(@"file", v1, 1uLL) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

uint64_t remakerFamily_GetDefaultSourceAudioTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_GetDefaultSourceAudioTrack_cold_1(&v9);
    return v9;
  }

  else
  {
    CMBaseObject = FigAssetGetCMBaseObject(*(DerivedStorage + 72));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5 && (v5(CMBaseObject, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &cf), cf))
    {
      DefaultTrackIDForMediaType = FPSupport_GetDefaultTrackIDForMediaType(cf, 1936684398, a2, 0);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      return 0;
    }
  }

  return DefaultTrackIDForMediaType;
}

const __CFArray *remakerFamily_hasTrackForMediaType(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (*(CFArrayGetValueAtIndex(*(DerivedStorage + 80), v7) + 8) != a2)
      {
        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t remakerFamily_GetEnabledTrackWithAllAlphaSegments(const __CFArray *a1)
{
  v16 = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    theArray = 0;
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (remakerFamily_isTrackEnabled(ValueAtIndex))
        {
          CMBaseObject = FigAssetTrackGetCMBaseObject(ValueAtIndex);
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v8)
          {
            break;
          }

          v9 = v8(CMBaseObject, @"FormatDescriptionArray", v5, &theArray);
          v10 = theArray;
          if (v9)
          {
            v11 = 1;
          }

          else
          {
            v11 = theArray == 0;
          }

          if (v11)
          {
            goto LABEL_22;
          }

          if (CFArrayGetCount(theArray) < 1)
          {
LABEL_14:
            remakerFamily_GetEnabledTrackWithAllAlphaSegments_cold_1(ValueAtIndex, &v16, &v17);
            v13 = v17;
          }

          else
          {
            v12 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(v10, v12);
              if (!FigVideoFormatDescriptionContainsAlphaChannel())
              {
                break;
              }

              if (++v12 >= CFArrayGetCount(v10))
              {
                goto LABEL_14;
              }
            }

            v13 = 0;
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          break;
        }

        ++v4;
      }

      while (v4 < v3);
      v10 = theArray;
LABEL_22:
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  return v16;
}

uint64_t remakerFamily_isTrackEnabled(uint64_t a1)
{
  cf1 = 0;
  CMBaseObject = FigAssetTrackGetCMBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 1;
  }

  v2(CMBaseObject, @"IsEnabled", *MEMORY[0x1E695E480], &cf1);
  if (!cf1)
  {
    return 1;
  }

  v3 = CFEqual(cf1, *MEMORY[0x1E695E4D0]);
  CFRelease(cf1);
  return v3;
}

uint64_t remakerFamily_GetEnabledTrackWithHomogeneousStereoSegments(const __CFArray *a1)
{
  v29 = 0;
  if (!a1)
  {
    return v29;
  }

  Count = CFArrayGetCount(a1);
  theArray = 0;
  if (Count < 1)
  {
    return v29;
  }

  v3 = Count;
  v4 = 0;
  v5 = @"FormatDescriptionArray";
  v6 = *MEMORY[0x1E695E480];
  v26 = *MEMORY[0x1E695E480];
  v27 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    if (!remakerFamily_isTrackEnabled(ValueAtIndex))
    {
      v23 = 0;
      goto LABEL_32;
    }

    CMBaseObject = FigAssetTrackGetCMBaseObject(ValueAtIndex);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      break;
    }

    v10 = v9(CMBaseObject, v5, v6, &theArray);
    v11 = theArray;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = theArray == 0;
    }

    if (v12)
    {
      goto LABEL_35;
    }

    v13 = CFArrayGetCount(theArray);
    v30 = 0;
    v31 = 0;
    if (v13 < 1)
    {
LABEL_24:
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v24)
      {
        v24(ValueAtIndex, &v29, 0);
      }

      v23 = 1;
      goto LABEL_30;
    }

    v14 = v13;
    CFArrayGetValueAtIndex(v11, 0);
    if (FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs())
    {
      v15 = v5;
      v16 = 0;
      v17 = 0;
      v18 = 1;
      v19 = 1;
      do
      {
        v20 = v18;
        if (v18 == 1)
        {
          v17 = v30;
          v16 = v31;
        }

        else if (v17 != v30 || v16 != v31)
        {
          v19 = 0;
        }

        if (v14 == v18)
        {
          break;
        }

        CFArrayGetValueAtIndex(v11, v18);
        MVHEVCVideoLayerIDs = FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs();
        v18 = v20 + 1;
      }

      while (MVHEVCVideoLayerIDs);
      v23 = 0;
      if (v20 < v14)
      {
        v5 = v15;
        v6 = v26;
        v3 = v27;
      }

      else
      {
        v5 = v15;
        v6 = v26;
        v3 = v27;
        if (v19)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v23 = 0;
    }

LABEL_30:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

LABEL_32:
    if (v23)
    {
      break;
    }

    ++v4;
  }

  while (v4 < v3);
  v11 = theArray;
LABEL_35:
  if (v11)
  {
    CFRelease(v11);
  }

  return v29;
}