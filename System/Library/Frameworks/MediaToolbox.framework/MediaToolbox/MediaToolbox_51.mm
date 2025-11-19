uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_PurgeImageCache()
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_ResetNodeTree()
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v82 = 0;
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
        v7(a1, &v82);
        if (v82)
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
                LOBYTE(v84) = 1;
                *(&v84 + 1) = 0;
                DWORD1(v84) = 0;
                *(&v84 + 1) = v11 / 100.0 + v12 / -100.0 * (v9 / 100.0);
                LOBYTE(v85.width) = 1;
                *(&v85.width + 1) = 0;
                HIDWORD(v85.width) = 0;
                v85.height = v13;
                LOBYTE(v86) = 1;
                *(&v86 + 1) = 0;
                DWORD1(v86) = 0;
                *(&v86 + 1) = v9 / 100.0;
                LOBYTE(v87) = 1;
                *(&v87 + 1) = 0;
                DWORD1(v87) = 0;
                *(&v87 + 1) = v10;
                v17(v14, &v84);
              }
            }
          }

          v18 = CMBaseObjectGetDerivedStorage();
          v84 = FCRRectNull;
          v85 = *&byte_196E76830;
          v86 = xmmword_196E76840;
          v87 = *&byte_196E76850;
          v77 = *(MEMORY[0x1E695F050] + 16);
          v78 = *MEMORY[0x1E695F050];
          v83.origin = *MEMORY[0x1E695F050];
          v83.size = v77;
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
                v21(a1, &v84);
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
                v24(a1, &v83);
              }
            }
          }

          v25 = *(&v86 + 1);
          if (*(&v86 + 1) != -1.0)
          {
            v61 = v83.origin.x + *(&v84 + 1);
            if (v84)
            {
              v61 = v83.origin.x + *(&v84 + 1) * v83.size.width;
            }

            v62 = v83.origin.y + v85.height;
            if (LOBYTE(v85.width))
            {
              v62 = v83.origin.y + v85.height * v83.size.height;
            }

            if (v86)
            {
              v25 = *(&v86 + 1) * v83.size.width;
            }

            v63 = *(&v87 + 1);
            if (v87)
            {
              v63 = v83.size.height * *(&v87 + 1);
            }

            v88 = CGRectIntegral(*(&v25 - 2));
            x = v88.origin.x;
            y = v88.origin.y;
            width = v88.size.width;
            height = v88.size.height;
            v68 = *v18;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v69 = CMBaseObjectGetProtocolVTable();
            if (v69)
            {
              v70 = *(v69 + 16);
              if (v70)
              {
                v71 = *(v70 + 96);
                if (v71)
                {
                  v71(v68, x, y, width, height);
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
            v32 = Count + 1;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v32 - 2);
              __s1 = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v34 = CMBaseObjectGetProtocolVTable();
              if (!v34 || (v35 = *(v34 + 16)) == 0 || (v36 = *(v35 + 8)) == 0 || v36(ValueAtIndex, &__s1))
              {
                FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_4();
                goto LABEL_88;
              }

              if (__s1 && !strcmp(__s1, "FigCaptionRendererCaption"))
              {
                v79 = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v37 = CMBaseObjectGetProtocolVTable();
                if (!v37 || (v38 = *(v37 + 16)) == 0 || (v39 = *(v38 + 48)) == 0 || v39(ValueAtIndex, &v79))
                {
                  FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_3();
                  goto LABEL_88;
                }

                if (v79 == 3)
                {
                  break;
                }
              }

LABEL_73:
              if (--v32 <= 1)
              {
                goto LABEL_88;
              }
            }

            v84 = v78;
            v85 = v77;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v40 = CMBaseObjectGetProtocolVTable();
            if (!v40 || (v41 = *(v40 + 16)) == 0 || (v42 = *(v41 + 104)) == 0 || v42(ValueAtIndex, &v84))
            {
              FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_2();
              goto LABEL_88;
            }

            v83.origin = v78;
            v83.size = v77;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v43 = CMBaseObjectGetProtocolVTable();
            if (!v43 || (v44 = *(v43 + 16)) == 0 || (v45 = *(v44 + 72)) == 0 || v45(ValueAtIndex, &v83))
            {
              FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Layout_cold_1();
              goto LABEL_88;
            }

            v46 = *(DerivedStorage + 56);
            if (v46)
            {
              MinX = v30;
              MinY = v31;
              if (v46 != 2)
              {
LABEL_65:
                FigCaptionRendererNodeProtocolGetProtocolID();
                v55 = CMBaseObjectGetProtocolVTable();
                if (v55)
                {
                  v56 = *(v55 + 16);
                  if (v56)
                  {
                    v57 = *(v56 + 128);
                    if (v57)
                    {
                      v57(ValueAtIndex, MinX, MinY);
                    }
                  }
                }

                FigCaptionRendererNodeProtocolGetProtocolID();
                v58 = CMBaseObjectGetProtocolVTable();
                if (v58)
                {
                  v59 = *(v58 + 16);
                  if (v59)
                  {
                    v60 = *(v59 + 232);
                    if (v60)
                    {
                      v60(ValueAtIndex, 1);
                    }
                  }
                }

                goto LABEL_73;
              }

              v49 = *(DerivedStorage + 64);
              v50 = v83;
              if (v49 == 1)
              {
                MinX = CGRectGetMinX(v50);
              }

              else if (v49 == 3)
              {
                MinX = CGRectGetMaxX(v50) - v85.width;
              }

              else
              {
                MinX = CGRectGetMidX(v50) + v85.width * -0.5;
              }

              v53 = *(DerivedStorage + 60);
            }

            else
            {
              v51 = *(DerivedStorage + 60);
              v52 = v83;
              if (v51 == 1)
              {
                MinX = CGRectGetMinX(v52);
              }

              else if (v51 == 3)
              {
                MinX = CGRectGetMaxX(v52) - v85.width;
              }

              else
              {
                MinX = CGRectGetMidX(v52) + v85.width * -0.5;
              }

              v53 = *(DerivedStorage + 64);
            }

            v54 = v83;
            if (v53 == 1)
            {
              MinY = CGRectGetMaxY(v54) - v85.height;
            }

            else if (v53 == 3)
            {
              MinY = CGRectGetMinY(v54);
            }

            else
            {
              MinY = CGRectGetMidY(v54) + v85.height * -0.5;
            }

            goto LABEL_65;
          }
        }
      }
    }
  }

LABEL_88:
  v72 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v73 = CMBaseObjectGetProtocolVTable();
  if (!v73)
  {
    return 4294954508;
  }

  v74 = *(v73 + 16);
  if (!v74)
  {
    return 4294954508;
  }

  v75 = *(v74 + 288);
  if (v75)
  {
    return v75(v72, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_RemoveAllActions()
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
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

__CFString *FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererSRTRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
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

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a1;
  *(DerivedStorage + 32) = a2;
  return 0;
}

uint64_t FigCaptionRendererSRTRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a1;
  *(DerivedStorage + 48) = a2;
  return 0;
}

uint64_t RegisterFigCaptionRendererSRTRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetricItemRateChangeEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, void *a6, double a7, double a8)
{
  ensureMetricEventTrace();
  if (a6)
  {
    FigMetricEventGetClassID();
    v16 = CMDerivedObjectCreate();
    if (!v16)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v18 = FigSimpleMutexCreate();
      *(DerivedStorage + 88) = v18;
      if (v18)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 10;
        if (a3)
        {
          v19 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v19 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v19;
        v21 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v21;
        if (a4)
        {
          v22 = CFRetain(a4);
        }

        else
        {
          v22 = 0;
        }

        *(DerivedStorage + 24) = v22;
        if (a5)
        {
          v23 = CFRetain(a5);
        }

        else
        {
          v23 = 0;
        }

        v16 = 0;
        *(DerivedStorage + 56) = v23;
        *(DerivedStorage + 64) = a7;
        *(DerivedStorage + 72) = a8;
        *a6 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemRateChangeEventCreateInternal_cold_1(&v25);
    return v25;
  }

  return v16;
}

uint64_t FigMetricItemStallEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, void *a6, double a7, double a8)
{
  ensureMetricEventTrace();
  if (a6)
  {
    FigMetricEventGetClassID();
    v16 = CMDerivedObjectCreate();
    if (!v16)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v18 = FigSimpleMutexCreate();
      *(DerivedStorage + 88) = v18;
      if (v18)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 9;
        if (a3)
        {
          v19 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v19 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v19;
        v21 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v21;
        if (a4)
        {
          v22 = CFRetain(a4);
        }

        else
        {
          v22 = 0;
        }

        *(DerivedStorage + 24) = v22;
        if (a5)
        {
          v23 = CFRetain(a5);
        }

        else
        {
          v23 = 0;
        }

        v16 = 0;
        *(DerivedStorage + 56) = v23;
        *(DerivedStorage + 64) = a7;
        *(DerivedStorage + 72) = a8;
        *a6 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemStallEventCreateInternal_cold_1(&v25);
    return v25;
  }

  return v16;
}

uint64_t FigMetricItemSeekEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, void *a6, double a7, double a8)
{
  ensureMetricEventTrace();
  if (a6)
  {
    FigMetricEventGetClassID();
    v16 = CMDerivedObjectCreate();
    if (!v16)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v18 = FigSimpleMutexCreate();
      *(DerivedStorage + 88) = v18;
      if (v18)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 11;
        if (a3)
        {
          v19 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v19 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v19;
        v21 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v21;
        if (a4)
        {
          v22 = CFRetain(a4);
        }

        else
        {
          v22 = 0;
        }

        *(DerivedStorage + 24) = v22;
        if (a5)
        {
          v23 = CFRetain(a5);
        }

        else
        {
          v23 = 0;
        }

        v16 = 0;
        *(DerivedStorage + 56) = v23;
        *(DerivedStorage + 64) = a7;
        *(DerivedStorage + 72) = a8;
        *a6 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemSeekEventCreateInternal_cold_1(&v25);
    return v25;
  }

  return v16;
}

uint64_t FigMetricItemSeekDidCompleteEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, char a6, void *a7, double a8, double a9)
{
  ensureMetricEventTrace();
  if (a7)
  {
    FigMetricEventGetClassID();
    v18 = CMDerivedObjectCreate();
    if (!v18)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v20 = FigSimpleMutexCreate();
      *(DerivedStorage + 88) = v20;
      if (v20)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 12;
        if (a3)
        {
          v21 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v21 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v21;
        v23 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v23;
        if (a4)
        {
          v24 = CFRetain(a4);
        }

        else
        {
          v24 = 0;
        }

        *(DerivedStorage + 24) = v24;
        if (a5)
        {
          v25 = CFRetain(a5);
        }

        else
        {
          v25 = 0;
        }

        v18 = 0;
        *(DerivedStorage + 56) = v25;
        *(DerivedStorage + 80) = a6;
        *(DerivedStorage + 64) = a8;
        *(DerivedStorage + 72) = a9;
        *a7 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricItemSeekDidCompleteEventCreateInternal_cold_1(&v27);
    return v27;
  }

  return v18;
}

uint64_t meirc_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[7];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meirc_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meirc_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef meirc_copySessionID()
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

uint64_t meirc_setSessionID(uint64_t a1, const void *a2)
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
    meirc_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meirc_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 32);
  *(a1 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t meirc_setMediaTime(uint64_t a1, __int128 *a2)
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
    meirc_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigRemakerCreateQueuedBaseWithURLs(const __CFAllocator *a1, uint64_t a2, unint64_t a3, const __CFURL *a4, uint64_t a5, const __CFDictionary *a6, const __CFDictionary *a7, void *a8)
{
  FigKTraceInit();
  v16 = FigOSTransactionCreate();
  if (!v16)
  {
    FigRemakerCreateQueuedBaseWithURLs_cold_2(&v34);
    return v34;
  }

  v17 = v16;
  v33 = a1;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  if (a7)
  {
    v21 = *MEMORY[0x1E695E4D0];
    v22 = v21 == CFDictionaryGetValue(a7, @"Remaker_PermitNonLocalSourceURLs");
  }

  else
  {
    v22 = 0;
  }

  if (a2 | a3)
  {
    if (!a2 || (FigCFURLIsLocalResource() ? (v23 = 1) : (v23 = v22), (v23 & 1) != 0))
    {
      if (a4 && remakerFamily_CFURLSchemeIsFile(a4) && v20)
      {
        FigRemakerGetClassID();
        v24 = CMDerivedObjectCreate();
        if (!v24)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *(DerivedStorage + 32) = 12301;
          v27 = FigReentrantMutexCreate();
          *(DerivedStorage + 8) = v27;
          if (v27)
          {
            *(DerivedStorage + 40) = v17;
            v28 = CFGetAllocator(0);
            Mutable = CFArrayCreateMutable(v28, 0, MEMORY[0x1E695E9C0]);
            *(DerivedStorage + 24) = Mutable;
            if (!Mutable)
            {
              return 4294955196;
            }

            v30 = CFGetAllocator(0);
            v31 = CFDictionaryCreateMutable(v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(DerivedStorage + 56) = v31;
            if (!v31)
            {
              return 4294955196;
            }

            BaseWithURLs = FigRemakerCreateBaseWithURLs(v33, a2, a3, a4, v18, v19, a7, (DerivedStorage + 16));
            if (BaseWithURLs)
            {
              return BaseWithURLs;
            }

            CMNotificationCenterGetDefaultLocalCenter();
            v24 = CMNotificationCenterAddListener();
            if (!v24)
            {
              *v20 = 0;
            }

            return v24;
          }

          FigRemakerCreateQueuedBaseWithURLs_cold_1(&v34);
          v24 = v34;
        }

        os_release(v17);
        return v24;
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t queuedRemaker_reflectSubRemakerNotification(int a1, const void *a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"Remaker_Completed") || CFEqual(cf1, @"Remaker_Failed"))
  {
    remakerQueue_removeRemakerFromQueue(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigRemakerCreateQueuedWithURLs(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const __CFURL *a16, const __CFDictionary *a17, const __CFDictionary *a18, _DWORD *a19, _DWORD *a20, void *a21)
{
  v47 = 0;
  v48[0] = 0;
  FigKTraceInit();
  if (a2 && FigCFURLIsLocalResource() && a16 && remakerFamily_CFURLSchemeIsFile(a16) && a21)
  {
    if (a19)
    {
      *a19 = 0;
    }

    if (a20)
    {
      *a20 = 0;
    }

    QueuedBaseWithURLs = FigRemakerCreateQueuedBaseWithURLs(a1, a2, 0, a16, a15, a17, a18, v48);
    if (QueuedBaseWithURLs)
    {
      goto LABEL_52;
    }

    v25 = v48[0];
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v26)
    {
      QueuedBaseWithURLs = v26(v25, &v47);
      if (QueuedBaseWithURLs)
      {
        goto LABEL_52;
      }

      v27 = v48[0];
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v28)
      {
        QueuedBaseWithURLs = v28(v27, &v47 + 4);
        if (QueuedBaseWithURLs)
        {
          goto LABEL_52;
        }

        if ((*(a14 + 12) & 1) != 0 && (*(a14 + 36) & 1) != 0 && !*(a14 + 40) && (*(a14 + 24) & 0x8000000000000000) == 0)
        {
          v29 = v48[0];
          v30 = *(a14 + 16);
          *&range.start.value = *a14;
          *&range.start.epoch = v30;
          *&range.duration.timescale = *(a14 + 32);
          CMTimeRangeGetEnd(&v46, &range);
          *&range.start.value = *a14;
          range.start.epoch = *(a14 + 16);
          QueuedBaseWithURLs = FigRemakerSetTimeRange(v29, &range.start.value, &v46.value);
          if (QueuedBaseWithURLs)
          {
            goto LABEL_52;
          }
        }

        v32 = v47;
        v31 = HIDWORD(v47);
        if (!v47)
        {
          FigRemakerCreateQueuedWithURLs_cold_1(&range);
          value_low = LODWORD(range.start.value);
          goto LABEL_33;
        }

        if (!v47)
        {
          goto LABEL_25;
        }

        v33 = v48[0];
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v34)
        {
          QueuedBaseWithURLs = v34(v33, v32, a3, a4, a19);
          if (!QueuedBaseWithURLs)
          {
            v31 = HIDWORD(v47);
LABEL_25:
            if (!v31)
            {
LABEL_47:
              value_low = 0;
LABEL_48:
              *a21 = v48[0];
              return value_low;
            }

            LODWORD(v46.value) = 0;
            if (a8)
            {
              if (a8 == 1851876449)
              {
                v35 = a20;
                if (!a20)
                {
                  goto LABEL_47;
                }

                goto LABEL_46;
              }

              *&range.start.value = *a13;
              range.start.epoch = *(a13 + 16);
              v38 = FigRemakerAddVideoTrack(v48[0], v31, a5, a6, a7, a8, a9, a10, a11, a12, &range.start.value, &v46);
            }

            else
            {
              v38 = FigRemakerAddPassthroughTrack(v48[0], v31, &v46);
            }

            value_low = v38;
            if (v38)
            {
              v39 = 6;
            }

            else
            {
              v39 = 0;
            }

            v35 = a20;
            if (a20 && !v38)
            {
LABEL_46:
              *v35 = v46.value;
              goto LABEL_47;
            }

            if (v39 != 6)
            {
              goto LABEL_48;
            }

LABEL_33:
            if (v48[0])
            {
              CFRelease(v48[0]);
            }

            return value_low;
          }

LABEL_52:
          value_low = QueuedBaseWithURLs;
          goto LABEL_33;
        }
      }
    }

    value_low = 4294954514;
    goto LABEL_33;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigRemakerSetTimeRange(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *a3;
  v9 = *(a3 + 2);
  return v6(a1, &v10, &v8);
}

uint64_t FigRemakerAddVideoTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12)
{
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    return 4294954514;
  }

  v22 = *a11;
  v23 = *(a11 + 2);
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v22, a12);
}

uint64_t FigRemakerAddPassthroughTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void remakerQueue_removeRemakerFromQueue(const void *a1)
{
  MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
  FigSimpleMutexLock();
  if (sActiveRemaker == a1)
  {
    sActiveRemaker = 0;
  }

  v2 = sRemakerWaitingQueue;
  v6.length = CFArrayGetCount(sRemakerWaitingQueue);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v6, a1);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(sRemakerWaitingQueue, FirstIndexOfValue);
  }

  FigSimpleMutexUnlock();
  MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
  v4 = sRemakerStartQueue;

  dispatch_async(v4, &__block_literal_global_65);
}

uint64_t remakerQueue_createMutexAndArray()
{
  sRemakerQueueMutex = FigSimpleMutexCreate();
  sRemakerWaitingQueue = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  result = FigDispatchQueueCreateWithPriority();
  sRemakerStartQueue = result;
  return result;
}

void __remakerQueue_ensureWeHaveAnActiveRemaker_soon_block_invoke()
{
  FigSimpleMutexLock();
  if (sActiveRemaker || CFArrayGetCount(sRemakerWaitingQueue) < 1)
  {
LABEL_2:

    FigSimpleMutexUnlock();
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(sRemakerWaitingQueue, 0);
  if (!ValueAtIndex)
  {
    sActiveRemaker = 0;
    CFArrayRemoveValueAtIndex(sRemakerWaitingQueue, 0);
    goto LABEL_2;
  }

  v1 = ValueAtIndex;
  CFRetain(ValueAtIndex);
  sActiveRemaker = v1;
  CFArrayRemoveValueAtIndex(sRemakerWaitingQueue, 0);
  FigSimpleMutexUnlock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v81 = 0;
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    FigSimpleMutexLock();
  }

  v78 = v3;
  *(DerivedStorage + 49) = 1;
  Count = CFArrayGetCount(*(DerivedStorage + 24));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v79 = *MEMORY[0x1E695E480];
    v7 = 1;
    while (1)
    {
      v81 = 0;
      v8 = CFArrayGetValueAtIndex(*(DerivedStorage + 24), v6);
      Value = CFDictionaryGetValue(v8, @"Common_TrackType");
      if (CFEqual(Value, @"TrackType_AudioMixdownTrackWithPreset"))
      {
        v10 = *(DerivedStorage + 16);
        value_low = CFDictionaryGetValue(v8, @"Audio_SourceAudioTrackArray");
        v12 = CFDictionaryGetValue(v8, @"Audio_AudioPresetName");
        v13 = CFDictionaryGetValue(v8, @"Audio_AudioProcessingOptions");
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v14)
        {
          goto LABEL_62;
        }

        goto LABEL_16;
      }

      if (CFEqual(Value, @"TrackType_AudioTrackWithPreset"))
      {
        v10 = *(DerivedStorage + 16);
        LODWORD(context.value) = 0;
        FigCFDictionaryGetInt32IfPresent();
        value_low = LODWORD(context.value);
        v12 = CFDictionaryGetValue(v8, @"Audio_AudioPresetName");
        v13 = CFDictionaryGetValue(v8, @"Audio_AudioProcessingOptions");
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v14)
        {
          goto LABEL_62;
        }

LABEL_16:
        v15 = v14(v10, value_low, v12, v13, &v81);
        if (v15 != -12123 && v15 != 0)
        {
          goto LABEL_61;
        }

        goto LABEL_21;
      }

      if (CFEqual(Value, @"TrackType_AudioTrack"))
      {
        v22 = *(DerivedStorage + 16);
        LODWORD(context.value) = 0;
        FigCFDictionaryGetInt32IfPresent();
        v76 = context.value;
        v23 = CFDictionaryGetValue(v8, @"Audio_DestinationASBD");
        if (v23)
        {
          BytePtr = CFDataGetBytePtr(v23);
        }

        else
        {
          BytePtr = 0;
        }

        context.value = 0;
        v31 = CFDictionaryGetValue(v8, @"Audio_DestinationChannelLayoutSize");
        if (v31)
        {
          CFNumberGetValue(v31, kCFNumberSInt64Type, &context);
          v71 = context.value;
        }

        else
        {
          v71 = 0;
        }

        v32 = CFDictionaryGetValue(v8, @"Audio_DestinationChannelLayout");
        v33 = v1;
        if (v32)
        {
          v34 = CFDataGetBytePtr(v32);
        }

        else
        {
          v34 = 0;
        }

        v35 = CFDictionaryGetValue(v8, @"Audio_AudioOptions");
        v36 = CFDictionaryGetValue(v8, @"Audio_AudioProcessingOptions");
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v37)
        {
          flags = -12782;
          v1 = v33;
          goto LABEL_63;
        }

        v30 = v37(v22, v76, BytePtr, v71, v34, v35, v36, &v81);
        v1 = v33;
        if (v30 != -12123)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v77 = v1;
        if (CFEqual(Value, @"TrackType_VideoCompositionTrack"))
        {
          v24 = *(DerivedStorage + 16);
          v74 = CFDictionaryGetValue(v8, @"Video_SourceVideoTrackArray");
          v70 = CFDictionaryGetValue(v8, @"Video_SourceSampleDataTrackArray");
          v68 = CFDictionaryGetValue(v8, @"Video_SourceVideoTrackWindows");
          v66 = CFDictionaryGetValue(v8, @"Video_SourceSampleDataTrackWindows");
          v64 = CFDictionaryGetValue(v8, @"Video_VideoCompositor");
          v63 = CFDictionaryGetValue(v8, @"Video_VideoCompositionInstructionArray");
          v62 = CFDictionaryGetValue(v8, @"Video_AnimationRootLayer");
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v61 = context.value;
          v60 = CFDictionaryGetValue(v8, @"Video_AnimationVideoLayers");
          v59 = CFDictionaryGetValue(v8, @"Video_AnimationVideoTrackIDs");
          v58 = CFDictionaryGetValue(v8, @"Video_AnimationRendererOptions");
          queuedRemaker_dictionaryGetFigTime(v8, &v80);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v57 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v56 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v55 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v54 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v53 = context.value;
          v52 = CFDictionaryGetValue(v8, @"Video_VideoScalingProperties");
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v51 = context.value;
          v25 = CFDictionaryGetValue(v8, @"Video_VideoEncoderSpecification");
          v26 = CFDictionaryGetValue(v8, @"Video_VideoCompressionProperties");
          v27 = CFDictionaryGetValue(v8, @"Video_VideoProcessingOptions");
          v28 = CFDictionaryGetValue(v8, @"Video_VideoCompositionProcessorProperties");
          v29 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (!v29)
          {
            goto LABEL_69;
          }

          context = v80;
          LODWORD(v50) = v61;
          v30 = v29(v24, v74, v70, v68, v66, v64, v63, v62, v50, v60, v59, v58, &context, __PAIR64__(v56, v57), __PAIR64__(v54, v55), v53, v52, v51, v25, v26, v27, v28, &v81);
          goto LABEL_47;
        }

        if (CFEqual(Value, @"TrackType_VideoTrack"))
        {
          v38 = *(DerivedStorage + 16);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v75 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v72 = context.value;
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v69 = context.value;
          v67 = CFDictionaryGetValue(v8, @"Video_VideoScalingProperties");
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v65 = context.value;
          v39 = CFDictionaryGetValue(v8, @"Video_VideoEncoderSpecification");
          v40 = CFDictionaryGetValue(v8, @"Video_VideoDecompressionProperties");
          v41 = CFDictionaryGetValue(v8, @"Video_VideoCompressionProperties");
          v42 = CFDictionaryGetValue(v8, @"Video_VideoProcessingOptions");
          queuedRemaker_dictionaryGetFigTime(v8, &v80);
          v43 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v43)
          {
LABEL_69:
            flags = -12782;
            v1 = v77;
            goto LABEL_63;
          }

          context = v80;
          v30 = v43(v38, v75, v72, v69, v67, v65, v39, v40, v41, v42, &context, &v81);
LABEL_47:
          v1 = v77;
          if (v30 != -12123)
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        if (CFEqual(Value, @"TrackType_Passthrough"))
        {
          v44 = *(DerivedStorage + 16);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v45 = LODWORD(context.value);
          v46 = CFDictionaryGetValue(v8, @"Passthrough_Options");
          v47 = *(*(CMBaseObjectGetVTable() + 16) + 120);
          if (!v47)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (!CFEqual(Value, @"TrackType_TemporalMetadata"))
          {
            fig_log_get_emitter();
            v15 = FigSignalErrorAtGM();
LABEL_61:
            flags = v15;
            goto LABEL_63;
          }

          v44 = *(DerivedStorage + 16);
          LODWORD(context.value) = 0;
          FigCFDictionaryGetInt32IfPresent();
          v45 = LODWORD(context.value);
          v46 = CFDictionaryGetValue(v8, @"TemporalMetadata_Options");
          v47 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (!v47)
          {
            goto LABEL_62;
          }
        }

        v30 = v47(v44, v45, v46, &v81);
        if (v30 != -12123)
        {
LABEL_48:
          flags = v30;
          if (v30)
          {
            goto LABEL_63;
          }
        }
      }

LABEL_21:
      FigCFDictionarySetInt32();
      v17 = CFDictionaryGetValue(v8, @"Common_FormatWriterTrackProperties");
      if (v81)
      {
        if (v17)
        {
          context.value = *(DerivedStorage + 16);
          *&context.timescale = v81;
          CFDictionaryApplyFunction(v17, queuedRemaker_setPendingFormatWriterTrackProperty, &context);
          flags = context.flags;
          if (context.flags)
          {
            goto LABEL_63;
          }
        }
      }

      v19 = FigCFDictionaryGetValue();
      v20 = FigCFDictionaryGetValue();
      v21 = CFStringCreateWithFormat(v79, 0, @"%@", v19);
      CFDictionarySetValue(*(DerivedStorage + 56), v21, v20);
      if (v21)
      {
        CFRelease(v21);
      }

      v7 = ++v6 < v5;
      if (v5 == v6)
      {
        goto LABEL_59;
      }
    }
  }

  v7 = 0;
LABEL_59:
  v48 = *(DerivedStorage + 16);
  v49 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v49)
  {
    v15 = v49(v48);
    goto LABEL_61;
  }

LABEL_62:
  flags = -12782;
LABEL_63:
  if (v78)
  {
    FigSimpleMutexUnlock();
  }

  if (flags != 0 && v7)
  {
    remakerFamily_PostFailureNotificationIfError(*(DerivedStorage + 16), 0, flags, 0, 0);
    remakerQueue_removeRemakerFromQueue(v1);
  }

  CFRelease(v1);
}

CMTime *queuedRemaker_dictionaryGetFigTime@<X0>(const __CFDictionary *a1@<X0>, CMTime *a2@<X8>)
{
  v3 = MEMORY[0x1E6960C70];
  *&a2->value = *MEMORY[0x1E6960C70];
  a2->epoch = *(v3 + 16);
  result = CFDictionaryGetValue(a1, @"Video_FrameDuration");
  if (result)
  {

    return CMTimeMakeFromDictionary(a2, result);
  }

  return result;
}

uint64_t queuedRemaker_setPendingFormatWriterTrackProperty(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!*(a3 + 3))
  {
    v4 = result;
    v5 = *MEMORY[0x1E695E738] == a2 ? 0 : a2;
    v6 = *a3;
    v7 = *(a3 + 2);
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 16);
    result = VTable + 16;
    v10 = *(v9 + 40);
    if (!v10 || ((result = v10(v6, v7, v4, v5), *(a3 + 3) = result, result != -12784) ? (v11 = result == -12630) : (v11 = 1), !v11 ? (v12 = result == -12782) : (v12 = 1), v12))
    {
      *(a3 + 3) = 0;
    }
  }

  return result;
}

uint64_t queuedRemaker_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      FigSimpleMutexLock();
    }

    remakerQueue_removeRemakerFromQueue(a1);
    if (*(v3 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigBaseObject = FigRemakerGetFigBaseObject(*(v3 + 16));
      if (FigBaseObject)
      {
        v6 = FigBaseObject;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }
    }

    if (v4)
    {
      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

void queuedRemaker_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  queuedRemaker_Invalidate(a1);
  if (DerivedStorage[1])
  {
    DerivedStorage[1] = 0;
    FigSimpleMutexDestroy();
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[5];
  if (v6)
  {
    os_release(v6);
    DerivedStorage[5] = 0;
  }
}

__CFString *queuedRemaker_CopyDebugDesc(const void *a1)
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
  CFStringAppendFormat(Mutable, 0, @"<FigRemakerQueued %p retainCount: %ld%s allocator: %p subremaker: %@>", a1, v5, v6, v7, *(DerivedStorage + 16));
  return Mutable;
}

uint64_t queuedRemaker_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_CopyProperty_cold_1(&valuePtr);
    goto LABEL_24;
  }

  if (!a2)
  {
    queuedRemaker_CopyProperty_cold_3(&valuePtr);
    goto LABEL_24;
  }

  if (!a4)
  {
    queuedRemaker_CopyProperty_cold_2(&valuePtr);
LABEL_24:
    v10 = valuePtr;
    if (!v8)
    {
      return v10;
    }

    goto LABEL_19;
  }

  if (CFEqual(@"Remaker_Progress", a2))
  {
    if (*(DerivedStorage + 48) && !*(DerivedStorage + 49))
    {
      valuePtr = 0;
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      goto LABEL_13;
    }
  }

  else if (CFEqual(@"Remaker_FakeTrackIDMapping", a2))
  {
    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

LABEL_13:
    v10 = 0;
    *a4 = v9;
    if (!v8)
    {
      return v10;
    }

    goto LABEL_19;
  }

  FigBaseObject = FigRemakerGetFigBaseObject(*(DerivedStorage + 16));
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v10 = v12(FigBaseObject, a2, a3, a4);
    if (!v8)
    {
      return v10;
    }

    goto LABEL_19;
  }

  v10 = 4294954514;
  if (v8)
  {
LABEL_19:
    FigSimpleMutexUnlock();
  }

  return v10;
}

uint64_t queuedRemaker_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetProperty_cold_1(&v11);
    v9 = v11;
  }

  else if (a2)
  {
    FigBaseObject = FigRemakerGetFigBaseObject(*(DerivedStorage + 16));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = v8(FigBaseObject, a2, a3);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  else
  {
    queuedRemaker_SetProperty_cold_2(&v12);
    v9 = v12;
  }

  if (v6)
  {
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_SetFormatWriterProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetFormatWriterProperty_cold_1(&v11);
    v9 = v11;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v7 = *(DerivedStorage + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v9 = v8(v7, a2, a3);
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 4294954514;
  if (v6)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_SetFormatWriterTrackProperty(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetFormatWriterTrackProperty_cold_1(&v9);
  }

  else if (a3)
  {
    if (CFArrayGetCount(*(DerivedStorage + 24)) <= a2 - 12301)
    {
      queuedRemaker_SetFormatWriterTrackProperty_cold_2(&v9);
    }

    else if (a2 <= 12300)
    {
      queuedRemaker_SetFormatWriterTrackProperty_cold_4(&v9);
    }

    else
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 24), a2 - 12301);
      v9 = 0;
      FigCFDictionaryGetInt32IfPresent();
      queuedRemaker_SetFormatWriterTrackProperty_cold_3(&v9);
    }
  }

  else
  {
    queuedRemaker_SetFormatWriterTrackProperty_cold_5(&v9);
  }

  v8 = v9;
  if (v6)
  {
    FigSimpleMutexUnlock();
  }

  return v8;
}

uint64_t queuedRemaker_SetTimeRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_SetTimeRange_cold_1(&time1);
    goto LABEL_16;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    queuedRemaker_SetTimeRange_cold_2(&time1);
    goto LABEL_16;
  }

  if ((a3->flags & 0x1D) == 1)
  {
    time1 = *a2;
    time2 = *a3;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      queuedRemaker_SetTimeRange_cold_3(&time1);
LABEL_16:
      value_low = LODWORD(time1.value);
      if (!v6)
      {
        return value_low;
      }

      goto LABEL_11;
    }
  }

  v7 = *(DerivedStorage + 16);
  *&v12.value = *&a2->value;
  v12.epoch = a2->epoch;
  *&v11.value = *&a3->value;
  v11.epoch = a3->epoch;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    time1 = v12;
    time2 = v11;
    value_low = v8(v7, &time1, &time2);
    if (!v6)
    {
      return value_low;
    }

    goto LABEL_11;
  }

  value_low = 4294954514;
  if (v6)
  {
LABEL_11:
    FigSimpleMutexUnlock();
  }

  return value_low;
}

uint64_t queuedRemaker_StartOutput(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_StartOutput_cold_1(&v6);
    v4 = v6;
  }

  else if (*(DerivedStorage + 48))
  {
    queuedRemaker_StartOutput_cold_2(&v7);
    v4 = v7;
  }

  else
  {
    MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
    FigSimpleMutexLock();
    CFArrayAppendValue(sRemakerWaitingQueue, a1);
    FigSimpleMutexUnlock();
    MEMORY[0x19A8D3660](&sCreateRemakerQueueMutexOnce, remakerQueue_createMutexAndArray);
    dispatch_async(sRemakerStartQueue, &__block_literal_global_65);
    *(DerivedStorage + 48) = 1;
    if (!*(DerivedStorage + 49))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    v4 = 0;
  }

  if (v3)
  {
    FigSimpleMutexUnlock();
  }

  return v4;
}

uint64_t queuedRemaker_EstimateMaxSegmentDurationForFileSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_EstimateMaxSegmentDurationForFileSize_cold_1(&v11);
    v9 = v11;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v7 = *(DerivedStorage + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = v8(v7, a2, a3);
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 4294954514;
  if (v6)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_GetDefaultSourceAudioTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_GetDefaultSourceAudioTrack_cold_1(&v9);
    v7 = v9;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v6)
  {
    v7 = v6(v5, a2);
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v7 = 4294954514;
  if (v4)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v7;
}

uint64_t queuedRemaker_GetDefaultSourceVideoTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_GetDefaultSourceVideoTrack_cold_1(&v9);
    v7 = v9;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v6)
  {
    v7 = v6(v5, a2);
    if (!v4)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v7 = 4294954514;
  if (v4)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v7;
}

uint64_t queuedRemaker_CanPerformFastFrameRateConversion(uint64_t a1, uint64_t a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_CanPerformFastFrameRateConversion_cold_1(&v13);
    v9 = v13;
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v7 = *(DerivedStorage + 16);
  v11 = *a3;
  v12 = *(a3 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v8)
  {
    v13 = v11;
    v14 = v12;
    v9 = v8(v7, a2, &v13);
    if (!v6)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 4294954514;
  if (v6)
  {
LABEL_8:
    FigSimpleMutexUnlock();
  }

  return v9;
}

uint64_t queuedRemaker_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 8);
  if (v10)
  {
    FigSimpleMutexLock();
  }

  if (*DerivedStorage)
  {
    queuedRemaker_CopyTrackProperty_cold_1(&v15);
    v13 = v15;
  }

  else if (a3)
  {
    if (a5)
    {
      v11 = *(DerivedStorage + 16);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v12)
      {
        v13 = v12(v11, a2, a3, a4, a5);
      }

      else
      {
        v13 = 4294954514;
      }
    }

    else
    {
      queuedRemaker_CopyTrackProperty_cold_2(&v16);
      v13 = v16;
    }
  }

  else
  {
    queuedRemaker_CopyTrackProperty_cold_3(&v17);
    v13 = v17;
  }

  if (v10)
  {
    FigSimpleMutexUnlock();
  }

  return v13;
}

void queuedRemaker_dictionarySetData(__CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, length);
  CFDictionarySetValue(a1, a2, v6);

  CFRelease(v6);
}

void OUTLINED_FUNCTION_8_45(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_10_44()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigTTMLExtensionsCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      return v8;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
    if (v8)
    {
      return v8;
    }

    v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
    if (v8)
    {
      return v8;
    }

    else
    {
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 136) = Mutable;
      if (Mutable)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        FigTTMLParseNode(a2, figTTMLExtensionsConsumeChildNode, a3);
        v12 = v11;
        if (!v11)
        {
          *a4 = 0;
        }
      }

      else
      {
        FigTTMLExtensionsCreate_cold_1(&v14);
        return v14;
      }
    }
  }

  else
  {
    FigTTMLExtensionsCreate_cold_2(&v14);
    return v14;
  }

  return v12;
}

void figTTMLExtensions_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLExtensions_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"extensions: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLExtensions_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = *(DerivedStorage + 136);
    if (v6)
    {
      v7.length = CFArrayGetCount(*(DerivedStorage + 136));
    }

    else
    {
      v7.length = 0;
    }

    v7.location = 0;
    CFArrayAppendArray(Mutable, v6, v7);
    v8 = 0;
    *a2 = Mutable;
  }

  else
  {
    v8 = FigSignalErrorAtGM();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v8;
}

uint64_t figTTMLExtensions_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 17;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLExtensions_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

void WebVTTFormatReaderFinalize()
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

__CFString *WebVTTFormatReaderCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = *(*DerivedStorage + 24);
  if (v2)
  {
    v3 = CFCopyDescription(v2);
    CFStringAppendFormat(Mutable, 0, @"\tWebVTTFormatReader: stream<%@>", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tWebVTTFormatReader: stream<%@>", 0);
  }

  return Mutable;
}

uint64_t WebVTTFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    WebVTTFormatReaderCopyProperty_cold_2(&valuePtr);
    value_low = LODWORD(valuePtr.value);
    goto LABEL_17;
  }

  *a4 = 0;
  if (!CFEqual(a2, @"Duration") && !CFEqual(a2, @"NominalDuration"))
  {
    if (CFEqual(a2, @"Timescale"))
    {
      LODWORD(valuePtr.value) = 1000;
      v11 = *MEMORY[0x1E695E480];
      v12 = kCFNumberSInt32Type;
LABEL_11:
      IdentityMatrixCFArray = CFNumberCreate(v11, v12, &valuePtr);
LABEL_15:
      value_low = 0;
LABEL_16:
      *a4 = IdentityMatrixCFArray;
      goto LABEL_17;
    }

    if (CFEqual(a2, @"Identifier"))
    {
      v14 = kFigFormatReaderIdentifier_WebVTT;
    }

    else
    {
      if (CFEqual(a2, @"AccurateDurationIsKnown"))
      {
        value_low = EnsureWebVTTFileIsParsed(v7);
        if (value_low)
        {
          goto LABEL_17;
        }

        IdentityMatrixCFArray = CFRetain(*MEMORY[0x1E695E4D0]);
        goto LABEL_16;
      }

      if (!CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
      {
        if (!CFEqual(a2, @"PreferredRate") && !CFEqual(a2, @"PreferredVolume"))
        {
          if (!CFEqual(a2, @"MovieMatrix"))
          {
            value_low = 4294954512;
            goto LABEL_17;
          }

          IdentityMatrixCFArray = wvtt_CreateIdentityMatrixCFArray(a3);
          goto LABEL_15;
        }

        LODWORD(valuePtr.value) = 1065353216;
        v11 = *MEMORY[0x1E695E480];
        v12 = kCFNumberFloat32Type;
        goto LABEL_11;
      }

      v14 = MEMORY[0x1E695E4D0];
    }

    IdentityMatrixCFArray = CFRetain(*v14);
    goto LABEL_15;
  }

  if (EnsureWebVTTFileIsParsed(v7) || (v9 = *(v7 + 40)) == 0)
  {
    value_low = 4294954513;
  }

  else
  {
    valuePtr = *(v9 + 12);
    v16 = valuePtr;
    v10 = CMTimeCopyAsDictionary(&v16, a3);
    *a4 = v10;
    if (v10)
    {
      value_low = 0;
    }

    else
    {
      WebVTTFormatReaderCopyProperty_cold_1(&v16);
      value_low = LODWORD(v16.value);
    }
  }

LABEL_17:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t EnsureWebVTTFileIsParsed(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 112))
  {
    goto LABEL_24;
  }

  *(a1 + 116) = 0;
  v16 = -1;
  theBuffer = 0;
  number = 0;
  if (!*(a1 + 24))
  {
    EnsureWebVTTFileIsParsed_cold_2(&v14);
LABEL_29:
    v5 = v14;
    goto LABEL_21;
  }

  if (!*(a1 + 96))
  {
    EnsureWebVTTFileIsParsed_cold_1(&v14);
    goto LABEL_29;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = v3(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = number == 0;
  }

  if (!v6)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, (a1 + 64));
    CFRelease(number);
    *(a1 + 56) = 1;
    v7 = *(a1 + 24);
    v8 = *(a1 + 64);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v10 = v9(v7, v8, 0, &theBuffer, &v16);
      if (!v10)
      {
        IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, 0);
        v12 = theBuffer;
        if (!IsRangeContiguous)
        {
          v14 = 0;
          v10 = CMBlockBufferCreateContiguous(v4, theBuffer, v4, 0, 0, 0, 0, &v14);
          if (v10)
          {
            goto LABEL_26;
          }

          if (theBuffer)
          {
            CFRelease(theBuffer);
          }

          v12 = v14;
          theBuffer = v14;
        }

        v10 = WebVTTParserParseBlockBuffer(*(a1 + 96), v12);
        if (!v10)
        {
          v10 = WebVTTParserFlush(*(a1 + 96), 1, 0);
          if (!v10)
          {
            if (*(a1 + 48))
            {
              v5 = 0;
              goto LABEL_21;
            }

            v10 = WebVTTParserCopyFormatDescription(*(a1 + 96), (a1 + 48));
          }
        }
      }

LABEL_26:
      v5 = v10;
      goto LABEL_21;
    }

LABEL_20:
    v5 = -12782;
  }

LABEL_21:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  *(a1 + 116) = v5;
  *(a1 + 112) = 1;
LABEL_24:
  FigSimpleMutexUnlock();
  return *(a1 + 116);
}

CFArrayRef wvtt_CreateIdentityMatrixCFArray(const __CFAllocator *a1)
{
  values[9] = *MEMORY[0x1E69E9840];
  v7 = 1065353216;
  valuePtr = 0;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &v7);
  values[0] = v4;
  values[1] = v3;
  values[2] = v3;
  values[3] = v3;
  values[4] = v4;
  values[5] = v3;
  values[6] = v3;
  values[7] = v3;
  values[8] = v4;
  v5 = CFArrayCreate(a1, values, 9, MEMORY[0x1E695E9C0]);
  CFRelease(v3);
  CFRelease(v4);
  return v5;
}

uint64_t WebVTTFormatReaderCopyTrackByIndex(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    return 4294954453;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = EnsureWebVTTFileIsParsed(*DerivedStorage);
  if (!result)
  {
    if (a3)
    {
      v10 = DerivedStorage[1];
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *a3 = v10;
    }

    if (a4)
    {
      *a4 = 1952807028;
    }

    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

uint64_t WebVTTFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  if (a2 == 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    result = EnsureWebVTTFileIsParsed(*DerivedStorage);
    if (!result)
    {
      if (a3)
      {
        v8 = DerivedStorage[1];
        if (v8)
        {
          v8 = CFRetain(v8);
        }

        *a3 = v8;
      }

      result = 0;
      if (a4)
      {
        *a4 = 1952807028;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t WebVTTFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = 4294954453;
  if (!a2 && a3 == 1952807028)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    result = EnsureWebVTTFileIsParsed(*DerivedStorage);
    if (!result)
    {
      if (a4)
      {
        v9 = DerivedStorage[1];
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        *a4 = v9;
      }

      result = 0;
      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  return result;
}

void WebVTTTrackReaderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *WebVTTTrackReaderCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (*DerivedStorage)
  {
    v2 = *(*DerivedStorage + 24);
    if (v2)
    {
      v3 = CFCopyDescription(v2);
      CFStringAppendFormat(Mutable, 0, @"\tWebVTTTrackReader: stream<%@> trackID %d", v3, 1);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\tWebVTTTrackReader: stream<%@> trackID %d", 0, 1);
    }
  }

  return Mutable;
}

uint64_t WebVTTTrackReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a4)
  {
    WebVTTTrackReaderCopyProperty_cold_1(&valuePtr);
    value_low = LODWORD(valuePtr.value);
    goto LABEL_19;
  }

  *a4 = 0;
  if (!CFEqual(a2, @"TrackFormatDescriptionArray"))
  {
    if (CFEqual(a2, @"TrackTimescale"))
    {
      LODWORD(valuePtr.value) = *(v7 + 32);
      v9 = *MEMORY[0x1E695E480];
      v10 = kCFNumberSInt32Type;
    }

    else
    {
      if (CFEqual(a2, @"TrackEnabled"))
      {
        IdentityMatrixCFArray = CFRetain(*MEMORY[0x1E695E4D0]);
        goto LABEL_18;
      }

      if (CFEqual(a2, @"TrackMatrix"))
      {
        IdentityMatrixCFArray = wvtt_CreateIdentityMatrixCFArray(a3);
        goto LABEL_18;
      }

      if (CFEqual(a2, @"TrackDuration") || CFEqual(a2, @"UneditedTrackDuration"))
      {
        valuePtr = **&MEMORY[0x1E6960CC0];
        v12 = *(v7 + 40);
        if (v12)
        {
          valuePtr = *(v12 + 12);
        }

        v15 = valuePtr;
        IdentityMatrixCFArray = CMTimeCopyAsDictionary(&v15, a3);
        goto LABEL_18;
      }

      if (!CFEqual(a2, @"UneditedSampleCount"))
      {
        value_low = 4294954512;
        goto LABEL_19;
      }

      valuePtr.value = 0;
      v14 = *(v7 + 40);
      if (v14)
      {
        valuePtr.value = *(v14 + 40);
      }

      v9 = *MEMORY[0x1E695E480];
      v10 = kCFNumberSInt64Type;
    }

    IdentityMatrixCFArray = CFNumberCreate(v9, v10, &valuePtr);
LABEL_18:
    value_low = 0;
    *a4 = IdentityMatrixCFArray;
    goto LABEL_19;
  }

  if (*(v7 + 48))
  {
    IdentityMatrixCFArray = CFArrayCreate(a3, (v7 + 48), 1, MEMORY[0x1E695E9C0]);
    goto LABEL_18;
  }

  value_low = 4294954513;
LABEL_19:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t WebVTTTrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 1952807028;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return 0;
}

uint64_t WebVTTTrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigSampleCursorServiceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    WebVTTTrackReaderCopySampleCursorService_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v3)
    {
      v6 = CFRetain(v3);
    }

    else
    {
      v6 = 0;
    }

    *DerivedStorage = v6;
    *a2 = 0;
  }

  return v4;
}

void WebVTTCursorService_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *WebVTTCursorService_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_WebVTT_CursorService %p>{ timescale %d }", a1, *(*DerivedStorage + 32));
  return Mutable;
}

uint64_t createWebVTTAccessor(uint64_t a1, void *a2)
{
  if (*(a1 + 88))
  {
    if (*(a1 + 80))
    {
      goto LABEL_3;
    }

LABEL_7:
    createWebVTTAccessor_cold_2(&v8);
    return v8;
  }

  v7 = *(*(a1 + 40) + 40);
  *(a1 + 80) = v7;
  *(a1 + 88) = 1;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    createWebVTTAccessor_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a1);
    DerivedStorage[1] = 0;
    *a2 = 0;
  }

  return v4;
}

uint64_t wvtt_moveToSampleAtPTS(void *a1, uint64_t a2, _BYTE *a3, char *a4)
{
  memset(&v20, 0, sizeof(v20));
  v8 = *(*a1 + 32);
  *&time.duration.value = *a2;
  time.duration.epoch = *(a2 + 16);
  CMTimeConvertScale(&v20, &time.duration, v8, kCMTimeRoundingMethod_RoundTowardZero);
  v9 = a1[1];
  v10 = *(*a1 + 40);
  time.duration = v20;
  v25 = v20;
  v11 = *(v10 + 12);
  time2.epoch = *(v10 + 28);
  *&time2.value = v11;
  v12 = CMTimeCompare(&time.duration, &time2);
  if (v12 < 0)
  {
    v15 = 0;
    v14 = 0;
    v13 = *(v10 + 40);
  }

  else
  {
    v25 = *(v10 + 12);
    v13 = *(v10 + 40);
    if (v13 <= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 - 1;
    }

    v15 = 1;
  }

  if (v14 >= v13)
  {
    result = 4294954454;
LABEL_16:
    a1[1] = v9;
  }

  else
  {
    while (1)
    {
      while (1)
      {
        memset(&time, 0, sizeof(time));
        memset(&time2, 0, sizeof(time2));
        ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 48), v14);
        result = CMSampleBufferGetSampleTimingInfo(ValueAtIndex, 0, &time);
        if (!result)
        {
          break;
        }

        if (++v14 >= *(v10 + 40))
        {
          goto LABEL_16;
        }
      }

      lhs = time.presentationTimeStamp;
      rhs = time.duration;
      CMTimeAdd(&time2, &lhs, &rhs);
      lhs = v25;
      rhs = time.presentationTimeStamp;
      if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
      {
        lhs = v25;
        rhs = time2;
        if (CMTimeCompare(&lhs, &rhs) < 0)
        {
          break;
        }
      }

      if (++v14 >= *(v10 + 40))
      {
        goto LABEL_18;
      }
    }

    a1[1] = v14;
LABEL_18:
    if ((*a2 & 0x8000000000000000) != 0)
    {
      a1[1] = 0;
      if (a3)
      {
        *a3 = 1;
      }
    }

    if (v12 < 0)
    {
      return 0;
    }

    v18 = *a1;
    if (*(*a1 + 88))
    {
      v19 = *(v18 + 80);
    }

    else
    {
      v19 = *(*(v18 + 40) + 40);
      *(v18 + 80) = v19;
      *(v18 + 88) = 1;
    }

    a1[1] = v19 - 1;
    if (!a4)
    {
      return 0;
    }

    else
    {
      result = 0;
      *a4 = v15;
    }
  }

  return result;
}

void WebVTTCursor_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *WebVTTCursor_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_WebVTT_SampleCursor %p>{ curSampleNum %lld }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t WebVTTCursor_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    WebVTTCursor_copyProperty_cold_2(&time);
LABEL_12:
    value_low = LODWORD(time.value);
    goto LABEL_9;
  }

  if (!a4)
  {
    WebVTTCursor_copyProperty_cold_1(&time);
    goto LABEL_12;
  }

  *a4 = 0;
  if (CFEqual(a2, @"CursorPlayableHorizon"))
  {
    memset(&time, 0, sizeof(time));
    memset(&v14, 0, sizeof(v14));
    value_low = TimelineCache_MapSampleNumToSampleTime(*(*DerivedStorage + 40), DerivedStorage[1], &time);
    if (!value_low)
    {
      v15 = *(*(*DerivedStorage + 40) + 12);
      lhs = v15;
      rhs = time;
      CMTimeSubtract(&v14, &lhs, &rhs);
      lhs = v14;
      v11 = *MEMORY[0x1E6960CC0];
      *&rhs.value = *MEMORY[0x1E6960CC0];
      v9 = *(MEMORY[0x1E6960CC0] + 16);
      rhs.epoch = v9;
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        *&v14.value = v11;
        v14.epoch = v9;
      }

      time = v14;
      *a4 = CMTimeCopyAsDictionary(&time, a3);
    }
  }

  else
  {
    value_low = 4294954512;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t TimelineCache_MapSampleNumToSampleTime(uint64_t a1, CFIndex a2, CMTime *a3)
{
  if (a2 < 0 || *(a1 + 40) <= a2)
  {
    TimelineCache_MapSampleNumToSampleTime_cold_1(&v6);
    return LODWORD(v6.duration.value);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), a2);
  if (!ValueAtIndex)
  {
    TimelineCache_MapSampleNumToSampleTime_cold_2(&v6);
    return LODWORD(v6.duration.value);
  }

  memset(&v6, 0, sizeof(v6));
  result = CMSampleBufferGetSampleTimingInfo(ValueAtIndex, 0, &v6);
  if (a3)
  {
    if (!result)
    {
      *a3 = v6.presentationTimeStamp;
    }
  }

  return result;
}

uint64_t WebVTTCursor_copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    WebVTTCursor_copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v6 = *v5;
    if (v6)
    {
      CFRetain(v6);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t WebVTTCursor_compareInDecodeOrder()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v3 = *(v1 + 8);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

uint64_t WebVTTCursor_getDependencyInfo(uint64_t a1, _BYTE *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t WebVTTCursor_stepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v11, 0, sizeof(v11));
  v10 = 0;
  FigSimpleMutexLock();
  v5 = *DerivedStorage;
  v4 = DerivedStorage[1];
  memset(&lhs, 0, sizeof(lhs));
  v6 = TimelineCache_MapSampleNumToSampleTime(*(v5 + 40), v4, &lhs);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v12 = lhs;
    v9 = *a2;
    CMTimeAdd(&v11, &lhs, &v9);
    lhs = v11;
    v7 = wvtt_moveToSampleAtPTS(DerivedStorage, &lhs, &v10 + 1, &v10);
    if (!v7)
    {
      if (HIBYTE(v10) | v10)
      {
        v7 = 4294954456;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t WebVTTCursor_copyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  FigSimpleMutexLock();
  v5 = *(v4 + 48);
  if (!v5)
  {
    sbuf = 0;
    SampleBufferContainingSample = TimelineCache_GetSampleBufferContainingSample(*(v4 + 40), DerivedStorage[1], &sbuf);
    if (SampleBufferContainingSample)
    {
      v6 = SampleBufferContainingSample;
      goto LABEL_10;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    if (!FormatDescription)
    {
      WebVTTCursor_copyFormatDescription_cold_1(&v11);
      v6 = v11;
      goto LABEL_10;
    }

    v5 = CFRetain(FormatDescription);
    *(v4 + 48) = v5;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v6 = 0;
  *a2 = v5;
LABEL_10:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t WebVTTCursor_stepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = DerivedStorage[1];
  v7 = v6 + a2;
  if (a2 < 1)
  {
    v7 &= ~(v7 >> 63);
  }

  else
  {
    v8 = *DerivedStorage;
    if (*(*DerivedStorage + 88))
    {
      v9 = *(v8 + 80);
    }

    else
    {
      v9 = *(*(v8 + 40) + 40);
      *(v8 + 80) = v9;
      *(v8 + 88) = 1;
    }

    if (v9 <= v7)
    {
      v7 = v9 - 1;
    }
  }

  DerivedStorage[1] = v7;
  if (a3)
  {
    *a3 = v7 - v6;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t TimelineCache_GetSampleBufferContainingSample(uint64_t a1, CFIndex a2, void *a3)
{
  if (a2 < 0 || *(a1 + 40) <= a2)
  {
    SampleBufferContainingSample_cold_1 = TimelineCache_GetSampleBufferContainingSample_cold_1(a3, &v7);
    result = v7;
    if (SampleBufferContainingSample_cold_1)
    {
      ValueAtIndex = 0;
      goto LABEL_5;
    }
  }

  else
  {
    if (a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), a2);
      result = 0;
LABEL_5:
      *a3 = ValueAtIndex;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t wvtt_headerCallback(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t RegisterWebVTTInfoType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB008 = result;
  return result;
}

double InitWebVTTInfo(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t FinalizeWebVTTInfo(uint64_t a1)
{
  FigFormatDescriptionRelease();
  WebVTTParserDestroy(*(a1 + 96));
  *(a1 + 96) = 0;
  TimelineCache_Destroy(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  if (*(a1 + 104))
  {
    FigSimpleMutexDestroy();
  }

  result = *(a1 + 16);
  if (result)
  {

    return FigSimpleMutexDestroy();
  }

  return result;
}

void TimelineCache_Destroy(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      CFRelease(v2);
      a1[6] = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

__n128 OUTLINED_FUNCTION_2_119(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *(v13 - 96) = a12;
  *(v13 - 80) = a13;
  return result;
}

void sub_1966AF268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51)
{
  objc_destroyWeak((v51 + 40));
  objc_destroyWeak((v51 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a51);
  _Unwind_Resume(a1);
}

void __getDisplayScale_block_invoke_0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v2 = v0;
    [v0 floatValue];
    *&sMaxDisplayScale_0 = v1;
  }
}

CFTypeRef FigVirtualDisplayCopyDefaultTimestampInfo()
{
  if (timestampsGetTimestampNameInfo_once != -1)
  {
    FigVirtualDisplayCopyDefaultTimestampInfo_cold_1();
  }

  result = timestampsGetTimestampNameInfo_timestampInfoArray;
  if (timestampsGetTimestampNameInfo_timestampInfoArray)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t FigVirtualDisplayProcessorCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigVirtualDisplayProcessorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = 0;
    *DerivedStorage = dispatch_queue_create("com.apple.coremedia.vdprocessor.stateq", 0);
    v6 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 8) = v6;
    v7 = MEMORY[0x1E69E9710];
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
    *(DerivedStorage + 456) = v8;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __FigVirtualDisplayProcessorCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_82;
    handler[4] = DerivedStorage;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_source_set_timer(*(DerivedStorage + 456), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 456));
    v9 = dispatch_source_create(v7, 0, 0, *(DerivedStorage + 8));
    *(DerivedStorage + 40) = v9;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = __FigVirtualDisplayProcessorCreate_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_213;
    v18[4] = DerivedStorage;
    dispatch_source_set_event_handler(v9, v18);
    dispatch_source_set_timer(*(DerivedStorage + 40), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 40));
    v10 = dispatch_source_create(v7, 0, 0, *DerivedStorage);
    *(DerivedStorage + 480) = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __FigVirtualDisplayProcessorCreate_block_invoke_3;
    v17[3] = &__block_descriptor_tmp_214_0;
    v17[4] = DerivedStorage;
    dispatch_source_set_event_handler(v10, v17);
    dispatch_source_set_timer(*(DerivedStorage + 480), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 480));
    v11 = dispatch_source_create(v7, 0, 0, *DerivedStorage);
    *(DerivedStorage + 672) = v11;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __FigVirtualDisplayProcessorCreate_block_invoke_4;
    v16[3] = &__block_descriptor_tmp_215_0;
    v16[4] = DerivedStorage;
    dispatch_source_set_event_handler(v11, v16);
    dispatch_source_set_timer(*(DerivedStorage + 672), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 672));
    v12 = malloc_type_calloc(1uLL, 0x60uLL, 0x10600407970C56AuLL);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    *v12 = FigSimpleMutexCreate();
    v12[2] = Mutable;
    *(DerivedStorage + 640) = v12;
    *a3 = cf;
  }

  return v4;
}

void __FigVirtualDisplayProcessorCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  data = dispatch_source_get_data(*(v1 + 456));
  if (data >= 1)
  {
    *(v1 + 424) += *(v1 + 448) * (data & 0x7FFFFFFF);
    if (dword_1EAF17550 >= 3)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(v1 + 56);
    v5 = *(v4 + 168);
    v6 = v5 > 0;
    if (*(v1 + 24) != 2 || (!*v4 ? (v7 = v5 <= 0) : (v7 = 1), !v7 || v5 >= *(v1 + 464)))
    {
      __FigVirtualDisplayProcessorCreate_block_invoke_cold_1((v1 + 456));
      return;
    }

    v8 = *(v1 + 416);
    if (*(v1 + 448) == v8)
    {
      v9 = 0;
    }

    else
    {
      *(v1 + 448) = v8;
      v9 = dispatch_time(0, v8);
    }

    if (fvdp_shouldDropFrame(v1))
    {
      goto LABEL_18;
    }

    if (dword_1EAF17550 >= 2)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ++*(v4 + 168);
    if (fvdp_sendFrameToEncoder(v1, v6))
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (!v9)
      {
        return;
      }
    }

    else
    {
LABEL_18:
      if (!v9)
      {
        return;
      }
    }

    dispatch_source_set_timer(*(v1 + 456), v9, *(v1 + 448), 0xF4240uLL);
  }
}

uint64_t __FigVirtualDisplayProcessorCreate_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 24) == 2)
  {
    if (dword_1EAF17550)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = fvdp_shutdownEncoderAndPools(v1);
    *(v1 + 48) = 1;
  }

  return result;
}

void __FigVirtualDisplayProcessorCreate_block_invoke_3(uint64_t a1)
{
  block[16] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v8 = 0;
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(*(v1 + 64));
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(CMBaseObject, @"networkInfo", *MEMORY[0x1E695E480], &v8);
    if (v4 == -12784)
    {
      if (dword_1EAF17550)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      dispatch_source_set_timer(*(v1 + 480), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }

    else
    {
      if (v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = v8 == 0;
      }

      if (!v6)
      {
        v7 = *(v1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __fvdp_encoderControlTimerFired_block_invoke;
        block[3] = &__block_descriptor_tmp_463;
        block[4] = v1;
        block[5] = v8;
        dispatch_async(v7, block);
      }
    }
  }
}

void __timestampsGetTimestampNameInfo_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  timestampsGetTimestampNameInfo_timestampInfoArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1 = off_1E748F790;
  v2 = 5;
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  do
  {
    v5 = CFDictionaryCreate(v0, kFigVirtualDisplaySinkTimestampInfoKey_Name, v1, 1, v3, v4);
    CFArrayAppendValue(timestampsGetTimestampNameInfo_timestampInfoArray, v5);
    if (v5)
    {
      CFRelease(v5);
    }

    ++v1;
    --v2;
  }

  while (v2);
}

void fvdp_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 24))
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    dispatch_sync(*DerivedStorage, &__block_literal_global_240);
  }

  fvdp_cleanup(DerivedStorage);
  v2 = *(DerivedStorage + 456);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(DerivedStorage + 456));
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(DerivedStorage + 40));
  }

  v4 = *(DerivedStorage + 480);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(DerivedStorage + 480));
  }

  v5 = *(DerivedStorage + 672);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(DerivedStorage + 672));
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
  }

  v7 = *(DerivedStorage + 640);
  if (v7)
  {
    writebackCacheInitWithPool(*(DerivedStorage + 640), 0, 0, 0);
    v8 = v7[2];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = v7[3];
    if (v9)
    {
      CFRelease(v9);
    }

    FigSimpleMutexDestroy();
    free(v7);
  }

  v10 = *(DerivedStorage + 16);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 16) = 0;
  }
}

uint64_t fvdp_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CFEqual(a2, @"processorType"))
  {
    v9 = @"DefaultProcessor";
LABEL_10:
    v12 = CFRetain(v9);
LABEL_11:
    v13 = v12;
LABEL_12:
    result = 0;
    *a4 = v13;
    return result;
  }

  if (CFEqual(a2, @"SupportsRotation"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(DerivedStorage + 80);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"IOMFBUUID"))
  {
    v9 = *(DerivedStorage + 96);
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_12;
  }

  if (CFEqual(a2, @"DisplayEDID"))
  {
    v9 = *(DerivedStorage + 104);
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"DisplayName"))
  {
    v9 = *(DerivedStorage + 88);
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"IsIdle"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(DerivedStorage + 48);
LABEL_7:
    if (!v11)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"SourcePixelFormat"))
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = (DerivedStorage + 636);
    v17 = kCFNumberSInt32Type;
LABEL_28:
    v12 = CFNumberCreate(v15, v17, v16);
    goto LABEL_11;
  }

  if (CFEqual(a2, @"ProtectionFlags"))
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = (DerivedStorage + 392);
    v17 = kCFNumberSInt64Type;
    goto LABEL_28;
  }

  if (CFEqual(a2, @"ColorAttributes"))
  {
    Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v19 = Mutable;
    v20 = *(DerivedStorage + 376);
    if (v20)
    {
      v21 = v20[1];
      if (v21)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], v21);
        v20 = *(DerivedStorage + 376);
      }

      v22 = v20[3];
      if (v22)
      {
        CFDictionarySetValue(v19, *MEMORY[0x1E6965F30], v22);
        v20 = *(DerivedStorage + 376);
      }

      v23 = v20[2];
      if (v23)
      {
        CFDictionarySetValue(v19, *MEMORY[0x1E6965F98], v23);
      }
    }

    result = 0;
    *a4 = v19;
  }

  else
  {
    if (CFEqual(a2, @"DoesScaling"))
    {
      v10 = MEMORY[0x1E695E4C0];
LABEL_9:
      v9 = *v10;
      goto LABEL_10;
    }

    if (!CFEqual(a2, @"DisplayContainerID") && !CFEqual(a2, @"Transport") && !CFEqual(a2, @"DisplayAttributes"))
    {
      if (CFEqual(a2, @"VirtualDisplayMode"))
      {
        v9 = *(DerivedStorage + 400);
        if (v9)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 4294954512;
  }

  return result;
}

uint64_t fvdp_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CFEqual(a2, @"OriginalDisplaySize"))
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_setProperty_block_invoke;
    block[3] = &__block_descriptor_tmp_261;
    block[4] = a3;
    block[5] = DerivedStorage;
    dispatch_async(v8, block);
    return 0;
  }

  if (CFEqual(a2, @"LogPrefix"))
  {
    v9 = *DerivedStorage;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __fvdp_setProperty_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_262;
    v12[4] = a3;
    v12[5] = DerivedStorage;
    v12[6] = a1;
    dispatch_sync(v9, v12);
    return 0;
  }

  v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294954512;
}

void fvdp_cleanup(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v3)
    {
      v3(v2, &__block_literal_global_244);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_cleanup_block_invoke_2;
    block[3] = &__block_descriptor_tmp_245;
    block[4] = a1;
    dispatch_sync(v4, block);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 368);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 368) = 0;
  }

  tapDestroy(*(a1 + 656));
  *(a1 + 656) = 0;
  tapDestroy(*(a1 + 664));
  *(a1 + 664) = 0;
  v7 = *(a1 + 672);
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 672) = v7;
  v8 = *(a1 + 400);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 400) = 0;
  }
}

void __fvdp_cleanup_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[42];
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 336) = 0;
    v2 = *(a1 + 32);
  }

  v4 = v2[41];
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 328) = 0;
    v2 = *(a1 + 32);
  }

  v5 = v2[40];
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 32) + 320) = 0;
    v2 = *(a1 + 32);
  }

  v6 = v2[43];
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 32) + 344) = 0;
    v2 = *(a1 + 32);
  }

  writebackCacheInitWithPool(v2[80], 0, 0, 0);
  v7 = *(a1 + 32);
  v8 = *(v7 + 480);
  v9 = *(v7 + 496);
  if (v9)
  {
    CFRelease(v9);
    *(v7 + 496) = 0;
  }

  v10 = *(v7 + 616);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v7 + 624) = 0;
  *(v7 + 592) = 0u;
  *(v7 + 608) = 0u;
  *(v7 + 560) = 0u;
  *(v7 + 576) = 0u;
  *(v7 + 528) = 0u;
  *(v7 + 544) = 0u;
  *(v7 + 496) = 0u;
  *(v7 + 512) = 0u;
  *(v7 + 480) = 0u;
  *(v7 + 480) = v8;
  *(v7 + 408) = 0;
  v11 = *(a1 + 32);
  *(v11 + 80) = 0;
  v12 = MEMORY[0x1E695F060];
  *(v11 + 160) = 0;
  v13 = *v12;
  *(v11 + 112) = *v12;
  *(v11 + 128) = v13;
  *(v11 + 144) = v13;
  v14 = *(v11 + 184);
  if (v14)
  {
    CFRelease(v14);
    *(v11 + 184) = 0;
  }

  v15 = *(v11 + 192);
  if (v15)
  {
    CFRelease(v15);
    *(v11 + 192) = 0;
  }

  v16 = *(v11 + 200);
  if (v16)
  {
    CFRelease(v16);
    *(v11 + 200) = 0;
  }

  v17 = *(v11 + 88);
  if (v17)
  {
    CFRelease(v17);
    *(v11 + 88) = 0;
  }

  v18 = *(v11 + 96);
  if (v18)
  {
    CFRelease(v18);
    *(v11 + 96) = 0;
  }

  v19 = *(v11 + 104);
  if (v19)
  {
    CFRelease(v19);
    *(v11 + 104) = 0;
  }

  frameDataDestroy(*(*(a1 + 32) + 56));
  *(*(a1 + 32) + 56) = 0;
}

uint64_t writebackCacheInitWithPool(uint64_t result, const void *a2, uint64_t a3, const void *a4)
{
  if (result)
  {
    v7 = result;
    FigSimpleMutexLock();
    v8 = *(v7 + 40);
    *(v7 + 40) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(v7 + 8);
    *(v7 + 8) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(v7 + 32);
    if (v10)
    {
      CFRelease(v10);
      *(v7 + 32) = 0;
    }

    *(v7 + 48) = a3;
    v11 = *MEMORY[0x1E695F060];
    *(v7 + 56) = *MEMORY[0x1E695F060];
    *(v7 + 72) = v11;
    *(v7 + 88) = 0;
    *(v7 + 92) = 0;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void frameDataDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[18];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[19];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void tapDestroy(uint64_t a1)
{
  if (a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = *a1;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3, 0);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

void __fvdp_setProperty_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(*(a1 + 40) + 24) == 2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"originalDisplaySize", *(a1 + 32));
      CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(*(*(a1 + 40) + 64));
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v4)
      {
        v4(CMBaseObject, @"extraInfo", Mutable);
      }

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
  }
}

const void *__fvdp_setProperty_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v3 == result)
    {
      v4 = *(a1 + 40);
      if (!*(v4 + 24) && !*(v4 + 16))
      {
        result = FVDUtilsCreateLogPrefix(*(a1 + 32), *(a1 + 48));
        *(*(a1 + 40) + 16) = result;
      }
    }
  }

  return result;
}

uint64_t fvdp_plugSink(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v6 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_plugSink_block_invoke;
    block[3] = &unk_1E748F860;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v18;
    dispatch_sync(v6, block);
    if (!*(v19 + 6))
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(v19 + 6) = -12070;
  }

  v17 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v8 = v17;
  if (os_log_type_enabled(v7, type))
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFE;
  }

  if (v9)
  {
    v10 = &stru_1F0B1AFB8;
    if (v4)
    {
      v10 = v4;
    }

    v11 = *(v19 + 6);
    v22 = 138412802;
    v23 = v10;
    v24 = 2080;
    v25 = "fvdp_plugSink";
    v26 = 1024;
    LODWORD(v27) = v11;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v12 = *(v19 + 6);
LABEL_14:
  _Block_object_dispose(&v18, 8);
  return v12;
}

uint64_t fvdp_unplugSink(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_unplugSink_block_invoke;
  block[3] = &unk_1E748F888;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = &v17;
  dispatch_sync(v6, block);
  if (*(v18 + 6))
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v16;
    if (os_log_type_enabled(v7, type))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = &stru_1F0B1AFB8;
      if (v4)
      {
        v10 = v4;
      }

      v11 = *(v18 + 6);
      v21 = 138412802;
      v22 = v10;
      v23 = 2080;
      v24 = "fvdp_unplugSink";
      v25 = 1024;
      LODWORD(v26) = v11;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = *(v18 + 6);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t fvdp_start(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_start_block_invoke;
  block[3] = &unk_1E748F8D8;
  block[4] = &v17;
  block[5] = DerivedStorage;
  block[6] = v4;
  block[7] = a2;
  dispatch_sync(v6, block);
  if (*(v18 + 6))
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v16;
    if (os_log_type_enabled(v7, type))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = &stru_1F0B1AFB8;
      if (v4)
      {
        v10 = v4;
      }

      v11 = *(v18 + 6);
      v21 = 138412802;
      v22 = v10;
      v23 = 2080;
      v24 = "fvdp_start";
      v25 = 1024;
      LODWORD(v26) = v11;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = *(v18 + 6);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t fvdp_stop()
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_419;
  block[4] = DerivedStorage;
  block[5] = v1;
  dispatch_sync(v3, block);
  return 0;
}

uint64_t fvdp_suspend()
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_424;
  block[4] = DerivedStorage;
  block[5] = v1;
  dispatch_sync(v3, block);
  return 0;
}

uint64_t fvdp_resume()
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (dword_1EAF17550)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_resume_block_invoke;
  block[3] = &unk_1E748FA78;
  block[5] = DerivedStorage;
  block[6] = v1;
  block[4] = &v9;
  dispatch_sync(v3, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t fvdp_copySupportedDigitalOutModes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_copySupportedDigitalOutModes_block_invoke;
  block[3] = &__block_descriptor_tmp_427;
  block[4] = a2;
  block[5] = DerivedStorage;
  block[6] = a3;
  dispatch_sync(v7, block);
  return 0;
}

uint64_t fvdp_setDigitalOutMode(uint64_t a1, int a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_setDigitalOutMode_block_invoke;
  block[3] = &__block_descriptor_tmp_428;
  block[4] = DerivedStorage;
  v10 = a2;
  v11 = a3;
  dispatch_async(v7, block);
  return 0;
}

uint64_t fvdp_enableMirroring(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 208) = a2 == 0;
  return 0;
}

uint64_t fvdp_submitPixelBuffer(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, __CVBuffer *a10, uint64_t a11, int a12, const void *a13)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = *(DerivedStorage + 208);
  if (dword_1EAF17550 >= 2)
  {
    v43 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 24) == 2)
  {
    if (a10)
    {
      v27 = *(DerivedStorage + 632);
      if (!v27)
      {
        *(DerivedStorage + 632) = 2;
        __dmb(0xBu);
        v27 = *(DerivedStorage + 632);
      }

      if (v27 == 1)
      {
        v28 = CVBufferCopyAttachment(a10, @"FVDWritebackBuffer", 0);
        v29 = FigCFEqual();
        if (v28)
        {
          CFRelease(v28);
        }

        if (!v29)
        {
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          return 4294955226;
        }
      }

      v30 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10E00401916B1CBuLL);
      CFRetain(a10);
    }

    else
    {
      v30 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10E00401916B1CBuLL);
    }

    *v30 = a10;
    v30[1] = a1;
    v30[2] = a2;
    v30[3] = a3;
    v30[4] = a4;
    v30[5] = a5;
    v30[6] = a6;
    v30[7] = a7;
    v30[8] = a8;
    *(v30 + 34) = a12;
    *(v30 + 20) = FigHostTimeToNanoseconds();
    *(v30 + 9) = a11;
    if (a13)
    {
      v31 = CFRetain(a13);
    }

    else
    {
      v31 = 0;
    }

    *(v30 + 18) = v31;
    if (a10)
    {
      v32 = CVBufferCopyAttachment(a10, @"FVDFrameUserData", 0);
    }

    else
    {
      v32 = 0;
    }

    *(v30 + 19) = v32;
    if (*(DerivedStorage + 744) || *(DerivedStorage + 745))
    {
      *(v30 + 12) = mach_absolute_time();
    }

    if (*(DerivedStorage + 746) && *MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if (*(DerivedStorage + 736) || *(DerivedStorage + 737))
    {
      atomic_fetch_add_explicit((DerivedStorage + 688), 1u, memory_order_relaxed);
    }

    if (a10)
    {
      v33 = *(DerivedStorage + 728);
      *(DerivedStorage + 728) = v33 + 1;
      if (!v33)
      {
        v43 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v36 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_submitPixelBuffer_block_invoke;
    block[3] = &__block_descriptor_tmp_430;
    v41 = v26;
    block[4] = DerivedStorage;
    block[5] = v30;
    dispatch_async(v36, block);
    return 0;
  }

  else
  {
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294955224;
  }
}

uint64_t fvdp_copyWritebackPixelBuffer(double a1, double a2, uint64_t a3, int a4, int a5, CVBufferRef *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 208);
  v12 = *(DerivedStorage + 16);
  if (dword_1EAF17550 >= 2)
  {
    v13 = *(DerivedStorage + 16);
    v39 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = v13;
  }

  if (*(DerivedStorage + 24) == 2)
  {
    if (a1 == *MEMORY[0x1E695F060] && a2 == *(MEMORY[0x1E695F060] + 8))
    {
      v39 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = 4294955226;
    }

    else
    {
      v16 = *(DerivedStorage + 632);
      if (!v16)
      {
        *(DerivedStorage + 632) = 1;
        __dmb(0xBu);
        v16 = *(DerivedStorage + 632);
      }

      if (v16 == 1)
      {
        v17 = *(DerivedStorage + 732);
        *(DerivedStorage + 732) = v17 + 1;
        if (!v17)
        {
          v39 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (writebackCacheCopyBuffer(*(DerivedStorage + 640), a4, v11, a6, a1, a2))
        {
          return 0;
        }

        if (a5)
        {
          if (atomic_fetch_add_explicit((DerivedStorage + 648), 1u, memory_order_relaxed) > 29)
          {
            atomic_fetch_add_explicit((DerivedStorage + 648), 0xFFFFFFFF, memory_order_relaxed);
            v39 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v20 = *(DerivedStorage + 8);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = __fvdp_copyWritebackPixelBuffer_block_invoke;
            block[3] = &__block_descriptor_tmp_460;
            block[4] = DerivedStorage;
            *&block[5] = a1;
            *&block[6] = a2;
            v36 = a4;
            v37 = v11;
            dispatch_async(v20, block);
          }
        }

        else
        {
          v21 = *(DerivedStorage + 8);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 0x40000000;
          v32[2] = __fvdp_copyWritebackPixelBuffer_block_invoke_461;
          v32[3] = &__block_descriptor_tmp_462;
          v32[4] = DerivedStorage;
          *&v32[5] = a1;
          *&v32[6] = a2;
          v33 = a4;
          v34 = v11;
          dispatch_sync(v21, v32);
        }

        if (writebackCacheCopyBuffer(*(DerivedStorage + 640), a4, v11, a6, a1, a2))
        {
          v19 = 0;
        }

        else
        {
          v19 = 4294955223;
        }
      }

      else
      {
        v39 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v19 = FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    v39 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = 4294955224;
  }

  if (v19 && dword_1EAF17550 >= 2)
  {
    v39 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v39;
    if (os_log_type_enabled(v23, type))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = &stru_1F0B1AFB8;
      if (v12)
      {
        v26 = v12;
      }

      v40 = 138412802;
      v41 = v26;
      v42 = 2080;
      v43 = "fvdp_copyWritebackPixelBuffer";
      v44 = 1024;
      LODWORD(v45) = v19;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v19;
}

CFTypeRef *__fvdp_plugSink_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[6] || *(v2 + 8))
  {
    *(*(result[4] + 1) + 24) = -12070;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 8) = v1[6];
  }

  return result;
}

void __fvdp_unplugSink_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 24) && (v3 = *(v2 + 64), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 64) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __fvdp_start_block_invoke(void *a1)
{
  v249[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  v236 = 0;
  v2 = a1[5];
  if (*(v2 + 24) || (v4 = *(v2 + 64)) == 0)
  {
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_392:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v215 = *(a1[4] + 8);
    v216 = -12070;
LABEL_393:
    *(v215 + 24) = v216;
    goto LABEL_394;
  }

  allocator = *MEMORY[0x1E695E480];
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(v4);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, @"Type", allocator, v2 + 72);
  }

  if (dword_1EAF17550)
  {
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = a1[5];
  *(v8 + 32) = 65000000000;
  *(v8 + 48) = 0;
  *(v8 + 316) = 875704422;
  *(v8 + 632) = 0x3432306600000000;
  *(v8 + 648) = 0;
  *(v8 + 392) = 0;
  v9 = *(v8 + 640);
  v10 = *(v9 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v9 + 24) = 0;
  *(v8 + 360) = 0;
  *(v8 + 312) = 1718908515;
  *(v8 + 504) = 20;
  *(v8 + 488) = 100000000;
  *(v8 + 508) = 0;
  *(v8 + 353) = 1;
  if (*(v8 + 496))
  {
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v220 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(v8 + 496) = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v11 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(*(v8 + 496), *MEMORY[0x1E6983530], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(*(v8 + 496), *MEMORY[0x1E6983518], *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(*(v8 + 496), *MEMORY[0x1E69837F0], v11);
  fvdp_encoderControlSetBitrate(v8, 0x7A1200u);
  fvdp_encoderControlSetFramerate(v8, 60);
  *(v8 + 440) = 0;
  *(v8 + 464) = 30;
  *(v8 + 168) = 0x3FAEB851EB851EB8;
  *(v8 + 208) = 0;
  *(v8 + 210) = 0;
  *(v8 + 352) = 0;
  *(v8 + 652) = 0;
  *(v8 + 472) = 0;
  if (colorTagForIndex_once != -1)
  {
    __fvdp_start_block_invoke_cold_1();
  }

  *(v8 + 376) = &qword_1EAF19C20;
  v233 = *MEMORY[0x1E6965D30];
  *(v8 + 368) = CFRetain(*MEMORY[0x1E6965D30]);
  *(v8 + 356) = 2;
  *(v8 + 400) = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt();
  FigCFDictionarySetValue();
  *(v8 + 736) = dword_1EAF17550 != 0;
  *(v8 + 744) = 0;
  *(v8 + 746) = FigDebugIsInternalBuild();
  *(v8 + 384) = 0;
  *(v8 + 386) = 1;
  if (CFEqual(*(v8 + 72), @"Octavia"))
  {
    *(v8 + 504) = 37;
    fvdp_encoderControlSetBitrate(v8, 0x1312D00u);
  }

  else if (CFEqual(*(v8 + 72), @"FileWriter"))
  {
    *(v8 + 464) = 0;
  }

  v12 = a1[5];
  v13 = a1[7];
  *v244 = 0;
  *v238 = 0;
  if (v13)
  {
    Value = CFDictionaryGetValue(v13, @"usage");
    v15 = @"AirPlay";
    if (Value)
    {
      v16 = Value;
      v17 = CFGetTypeID(Value);
      if (v17 == CFStringGetTypeID())
      {
        v15 = v16;
      }
    }

    if (CFEqual(v15, @"AirPlay"))
    {
      goto LABEL_54;
    }

    if (CFEqual(v15, @"CarPlay"))
    {
      CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E6983628], v11);
      *(v12 + 504) = 38;
      if (colorTagForIndex_once != -1)
      {
        __fvdp_start_block_invoke_cold_1();
      }

      *(v12 + 376) = &qword_1EAF19B60;
      goto LABEL_55;
    }

    if (CFEqual(v15, @"CarPlayHEVC"))
    {
      CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E6983628], v11);
      *(v12 + 312) = 1718908520;
      *(v12 + 504) = 38;
      if (colorTagForIndex_once != -1)
      {
        __fvdp_start_block_invoke_cold_1();
      }

      *(v12 + 376) = &qword_1EAF19B80;
      *(v12 + 356) = 3;
      if (FVDUtilsAGXPixelFormatsSupported())
      {
        *(v12 + 316) = 641230384;
        *(v12 + 636) = 641230384;
      }

      goto LABEL_55;
    }

    if (CFEqual(v15, @"Stevenote"))
    {
      LOBYTE(v249[0]) = 0;
      buffer[0] = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      *(v12 + 312) = 0x34343466736A7067;
      *(v12 + 636) = 1111970369;
      *(v12 + 464) = 1;
      *(v12 + 356) = 3;
      v20 = v12;
      v21 = 40000000;
    }

    else
    {
      if (!CFEqual(v15, @"AirPlayHEVC"))
      {
        if (CFEqual(v15, @"AirPlayHDR"))
        {
          if (!FVDUtilsHEVCEncoderSupports42010())
          {
            goto LABEL_51;
          }

          *(v12 + 312) = 0x7834323066747668;
          *(v12 + 636) = 2016686640;
          *(v12 + 356) = 3;
          if (colorTagForIndex_once != -1)
          {
            __fvdp_start_block_invoke_cold_1();
          }

          *(v12 + 376) = &qword_1EAF19BC0;
          *(v12 + 384) = 1;
          v217 = *MEMORY[0x1E6983670];
          CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E6983670], *MEMORY[0x1E6983CB0]);
          CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E69837B8], v11);
          fvdp_encoderControlSetBitrate(v12, 0xE4E1C0u);
          v218 = CFDictionaryGetValue(v13, @"HDRInfo");
          if (!v218)
          {
            goto LABEL_51;
          }

          CFDictionaryGetValue(v218, @"HDRMode");
          if (!FigCFEqual())
          {
            if (!FigCFEqual())
            {
              if (FigCFEqual())
              {
                CFDictionarySetValue(*(v12 + 496), v217, *MEMORY[0x1E6983CC0]);
              }

              goto LABEL_54;
            }

            *(v12 + 385) = 1;
            if (colorTagForIndex_once == -1)
            {
              goto LABEL_408;
            }

            goto LABEL_415;
          }

          *(v12 + 385) = 1;
          if (colorTagForIndex_once == -1)
          {
LABEL_376:
            v219 = &qword_1EAF19BE0;
LABEL_409:
            *(v12 + 376) = v219;
            goto LABEL_54;
          }
        }

        else
        {
          if (!CFEqual(v15, @"UncompressedHDR"))
          {
            if (CFEqual(v15, @"Valeria"))
            {
              *(v12 + 504) = 0;
              *(v12 + 464) = 0x7FFFFFFF;
              goto LABEL_55;
            }

            if (!CFEqual(v15, @"Uncompressed"))
            {
              goto LABEL_55;
            }

            *(v12 + 312) = 1852796517;
            *(v12 + 464) = 0;
            *(v12 + 360) = 8;
LABEL_54:
            fvdp_applyProtectionOptions(v12, v13);
LABEL_55:
            *type = 0;
            v240 = OS_LOG_TYPE_DEFAULT;
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            if (FigCFDictionaryGetInt32IfPresent())
            {
              fvdp_encoderControlSetBitrate(v12, *v238);
              *type = 0;
              v240 = OS_LOG_TYPE_DEFAULT;
              v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (FigCFDictionaryGetInt32IfPresent())
            {
              fvdp_encoderControlSetFramerate(v12, *v238);
              *type = 0;
              v240 = OS_LOG_TYPE_DEFAULT;
              v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (FigCFDictionaryGetInt32IfPresent())
            {
              v27 = *v238;
              *(v12 + 316) = *v238;
              *(v12 + 636) = v27;
              *type = 0;
              v240 = OS_LOG_TYPE_DEFAULT;
              v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (FigCFDictionaryGetDoubleIfPresent() && *v244 > 0.0)
            {
              FigCFDictionarySetDouble();
              *type = 0;
              v240 = OS_LOG_TYPE_DEFAULT;
              v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (*(v12 + 360) >= 1)
            {
              FigCFDictionaryGetInt32IfPresent();
              writebackCacheSetPoolCapacity(*(v12 + 640), *(v12 + 360));
            }

            if (CFDictionaryContainsKey(v13, @"colorSpace"))
            {
              *(v12 + 376) = 0;
            }

            if (CFDictionaryContainsKey(v13, @"chromaLocation"))
            {
              v30 = *(v12 + 368);
              v31 = CFDictionaryGetValue(v13, @"chromaLocation");
              *(v12 + 368) = v31;
              if (v31)
              {
                CFRetain(v31);
              }

              if (v30)
              {
                CFRelease(v30);
              }

              *type = 0;
              v240 = OS_LOG_TYPE_DEFAULT;
              v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetBooleanIfPresent();
            FigCFDictionaryGetBooleanIfPresent();
            FigCFDictionaryGetBooleanIfPresent();
            CFDictionaryGetValue(v13, @"MirroringMode");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"DisplayID");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"ContentIDs");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"DisplayLabel");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"clientPID");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"IncludePrivateContent");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"AllowRemoteControlLayers");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"NotifyOnDisallowedCloningLayers");
            FigCFDictionarySetValue();
            CFDictionaryGetValue(v13, @"HDRToneMappingMode");
            FigCFDictionarySetValue();
            if (FigCFDictionaryGetInt32IfPresent())
            {
              LODWORD(v249[0]) = 0;
              FigCFDictionaryGetInt32IfPresent();
            }

            if (*(v12 + 392))
            {
              CFDictionarySetValue(*(v12 + 400), @"IsAOCPProtected", v11);
            }

            v33 = CFDictionaryGetValue(v13, @"encodeSettings");
            if (v33)
            {
              v34 = CFDictionaryGetValue(v33, @"encoderUsage");
              v35 = *(v12 + 504);
              if (prefsGetH264EncoderUsageIfValid(v34, (v12 + 504)))
              {
                if (v35 != *(v12 + 504))
                {
                  *type = 0;
                  v240 = OS_LOG_TYPE_DEFAULT;
                  v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }
              }
            }

            if (*(v12 + 312) != 1852796517 && FigCFDictionaryGetInt32IfPresent())
            {
              if (FVDUtilsEncoderCodecSupported(*v238))
              {
                *(v12 + 312) = *v238;
              }

              *type = 0;
              v240 = OS_LOG_TYPE_DEFAULT;
              v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_87;
          }

          v22 = CFDictionaryGetValue(v13, @"HDRInfo");
          *(v12 + 464) = 0;
          *(v12 + 360) = 8;
          *(v12 + 312) = 0x783432306E6F6E65;
          *(v12 + 636) = 2016686640;
          if (colorTagForIndex_once != -1)
          {
            __fvdp_start_block_invoke_cold_1();
          }

          *(v12 + 376) = &qword_1EAF19BC0;
          *(v12 + 384) = 1;
          if (!v22)
          {
LABEL_51:
            v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_54;
          }

          CFDictionaryGetValue(v22, @"HDRMode");
          if (!FigCFEqual())
          {
            if (!FigCFEqual())
            {
              goto LABEL_54;
            }

            *(v12 + 385) = 1;
            if (colorTagForIndex_once == -1)
            {
              goto LABEL_408;
            }

LABEL_415:
            __fvdp_start_block_invoke_cold_1();
LABEL_408:
            v219 = &qword_1EAF19C00;
            goto LABEL_409;
          }

          *(v12 + 385) = 1;
          if (colorTagForIndex_once == -1)
          {
            goto LABEL_376;
          }
        }

        __fvdp_start_block_invoke_cold_1();
        goto LABEL_376;
      }

      if (FVDUtilsHEVCEncoderSupports4K60())
      {
        if (FVDUtilsLoadVCPEncoder())
        {
          v19 = 1718908520;
        }

        else
        {
          v19 = 1752589105;
        }

        *(v12 + 312) = v19;
        *(v12 + 356) = 3;
      }

      else
      {
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(v12 + 312) = 1718908515;
      }

      v20 = v12;
      v21 = 10000000;
    }

    fvdp_encoderControlSetBitrate(v20, v21);
    goto LABEL_54;
  }

LABEL_87:
  v38 = a1[5];
  v239 = 0;
  v39 = *(v38 + 16);
  v40 = FigVirtualDisplayPrefsCopyValue(@"wirelessdisplay_encoderusage");
  if (v40)
  {
    v41 = v40;
    v42 = *(v38 + 504);
    if (prefsGetH264EncoderUsageIfValid(v40, (v38 + 504)) && v42 != *(v38 + 504))
    {
      *v244 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRelease(v41);
  }

  v239 = 0;
  v44 = FigVirtualDisplayPrefsCopyValue(@"wirelessdisplay_encoderpriority");
  if (v44)
  {
    v45 = v44;
    *v238 = 40;
    FigCFDictionaryGetInt32IfPresent();
    v46 = CFGetTypeID(v45);
    if (v46 == CFStringGetTypeID())
    {
      if (CFStringGetCString(v45, buffer, 32, 0x8000100u))
      {
        v47 = 0;
        while (strcasecmp(buffer, prefsGetEncoderPriorityIfValid_names[v47]))
        {
          if (++v47 == 5)
          {
            *type = 0;
            v240 = OS_LOG_TYPE_DEFAULT;
            v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
            goto LABEL_107;
          }
        }

        v49 = prefsGetEncoderPriorityIfValid_values[v47];
        if (*v238 == v49)
        {
          goto LABEL_108;
        }

        FigCFDictionarySetInt32();
        *v244 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v51 = *v244;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 & 0xFFFFFFFE;
        }

        if (v52)
        {
          v53 = &stru_1F0B1AFB8;
          if (v39)
          {
            v53 = v39;
          }

          *buffer = 138413058;
          *&buffer[4] = v53;
          *&buffer[12] = 2080;
          *&buffer[14] = "fvdp_initFromPrefs";
          *&buffer[22] = 1024;
          *v243 = *v238;
          *&v243[4] = 1024;
          *&v243[6] = v49;
          _os_log_send_and_compose_impl();
        }

LABEL_107:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        __fvdp_start_block_invoke_cold_10();
      }
    }

LABEL_108:
    CFRelease(v45);
  }

  v239 = 0;
  Double = FigVirtualDisplayPrefsGetDouble(@"wirelessdisplay_keyframe_interval", &v239);
  if (v239)
  {
    v55 = Double;
    if (Double > 0.0)
    {
      FigCFDictionarySetDouble();
      *v244 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = *v244;
      if (os_log_type_enabled(v56, type[0]))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        v59 = &stru_1F0B1AFB8;
        if (v39)
        {
          v59 = v39;
        }

        *buffer = 138412802;
        *&buffer[4] = v59;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2048;
        *v243 = v55;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v239 = 0;
  Integer = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_bitrate", &v239);
  if (v239)
  {
    v61 = Integer;
    fvdp_encoderControlSetBitrate(v38, Integer);
    *(v38 + 593) = 1;
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v63 = *v244;
    if (os_log_type_enabled(v62, type[0]))
    {
      v64 = v63;
    }

    else
    {
      v64 = v63 & 0xFFFFFFFE;
    }

    if (v64)
    {
      v65 = &stru_1F0B1AFB8;
      if (v39)
      {
        v65 = v39;
      }

      *buffer = 138412802;
      *&buffer[4] = v65;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_initFromPrefs";
      *&buffer[22] = 1024;
      *v243 = v61;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v239 = 0;
  v66 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_fps", &v239);
  if (v239)
  {
    v67 = v66;
    fvdp_encoderControlSetFramerate(v38, v66);
    *(v38 + 594) = 1;
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v69 = *v244;
    if (os_log_type_enabled(v68, type[0]))
    {
      v70 = v69;
    }

    else
    {
      v70 = v69 & 0xFFFFFFFE;
    }

    if (v70)
    {
      v71 = &stru_1F0B1AFB8;
      if (v39)
      {
        v71 = v39;
      }

      *buffer = 138412802;
      *&buffer[4] = v71;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_initFromPrefs";
      *&buffer[22] = 1024;
      *v243 = v67;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v239 = 0;
  v72 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_inactivity_timeout", &v239);
  if (v239)
  {
    v73 = v72;
    if (v72 >= 1)
    {
      *(v38 + 32) = 1000000000 * v72;
      *v244 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v75 = *v244;
      if (os_log_type_enabled(v74, type[0]))
      {
        v76 = v75;
      }

      else
      {
        v76 = v75 & 0xFFFFFFFE;
      }

      if (v76)
      {
        v77 = &stru_1F0B1AFB8;
        if (v39)
        {
          v77 = v39;
        }

        *buffer = 138412802;
        *&buffer[4] = v77;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 1024;
        *v243 = v73;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*(v38 + 312) != 1852796517)
  {
    v78 = (v38 + 312);
    prefsGetOSTypeIfPresent(@"wirelessdisplay_encoder_codec_type", (v38 + 312));
    if (*(v38 + 392))
    {
      v79 = *v78;
      if (*v78 == 1718908528 || v79 == 1869117027)
      {
LABEL_160:
        v85 = v79 - 1718908515;
        if (v85 <= 0xD && ((1 << v85) & 0x2021) != 0)
        {
          FVDUtilsLoadVCPEncoder();
        }

        goto LABEL_163;
      }

      *(v38 + 392) = 0;
      CFDictionaryRemoveValue(*(v38 + 496), *MEMORY[0x1E6983610]);
      CFDictionaryRemoveValue(*(v38 + 496), *MEMORY[0x1E6983618]);
      *v244 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v81 = *v244;
      if (os_log_type_enabled(v80, type[0]))
      {
        v82 = v81;
      }

      else
      {
        v82 = v81 & 0xFFFFFFFE;
      }

      if (v82)
      {
        v83 = *v78;
        v84 = &stru_1F0B1AFB8;
        if (v39)
        {
          v84 = v39;
        }

        *buffer = 138413570;
        *&buffer[4] = v84;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 1024;
        *v243 = HIBYTE(v83);
        *&v243[4] = 1024;
        *&v243[6] = BYTE2(v83);
        *&v243[10] = 1024;
        *&v243[12] = BYTE1(v83);
        *&v243[16] = 1024;
        *&v243[18] = v83;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v79 = *v78;
    goto LABEL_160;
  }

LABEL_163:
  prefsGetOSTypeIfPresent(@"wirelessdisplay_encoder_input_pixel_format", (v38 + 316));
  prefsGetOSTypeIfPresent(@"wirelessdisplay_writeback_pixel_format", (v38 + 636));
  v86 = *(v38 + 356);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v87 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_encodermaxframes", type);
  if (type[0])
  {
    v88 = v87;
    *(v38 + 356) = v87;
    if (v87 != v86)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v89 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v90 = *v244;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v91 = v90;
      }

      else
      {
        v91 = v90 & 0xFFFFFFFE;
      }

      if (v91)
      {
        v92 = &stru_1F0B1AFB8;
        if (v39)
        {
          v92 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v92;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_encodermaxframes";
        *&v243[8] = 2048;
        *&v243[10] = v86;
        *&v243[18] = 2048;
        *&v243[20] = v88;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v93 = *(v38 + 464);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v94 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_maxtimesreencodeidle", type);
  if (type[0])
  {
    v95 = v94;
    *(v38 + 464) = v94;
    if (v94 != v93)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v97 = *v244;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v98 = v97;
      }

      else
      {
        v98 = v97 & 0xFFFFFFFE;
      }

      if (v98)
      {
        v99 = &stru_1F0B1AFB8;
        if (v39)
        {
          v99 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v99;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_maxtimesreencodeidle";
        *&v243[8] = 2048;
        *&v243[10] = v93;
        *&v243[18] = 2048;
        *&v243[20] = v95;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v100 = *(v38 + 508);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v101 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_minrepeatedframes", type);
  if (type[0])
  {
    v102 = v101;
    *(v38 + 508) = v101;
    if (v101 != v100)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v104 = *v244;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v105 = v104;
      }

      else
      {
        v105 = v104 & 0xFFFFFFFE;
      }

      if (v105)
      {
        v106 = &stru_1F0B1AFB8;
        if (v39)
        {
          v106 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v106;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_minrepeatedframes";
        *&v243[8] = 2048;
        *&v243[10] = v100;
        *&v243[18] = 2048;
        *&v243[20] = v102;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v107 = *(v38 + 652);
  type[0] = OS_LOG_TYPE_DEFAULT;
  Boolean = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_forcebuffercopy", type);
  if (type[0])
  {
    v109 = Boolean;
    *(v38 + 652) = Boolean;
    if (Boolean != v107)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v110 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v111 = *v244;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v111;
      }

      else
      {
        v112 = v111 & 0xFFFFFFFE;
      }

      if (v112)
      {
        v113 = &stru_1F0B1AFB8;
        if (v39)
        {
          v113 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v113;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_forcebuffercopy";
        *&v243[8] = 2048;
        *&v243[10] = v107;
        *&v243[18] = 2048;
        *&v243[20] = v109;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v114 = *(v38 + 353);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v115 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_hw_acc", type);
  if (type[0])
  {
    v116 = v115;
    *(v38 + 353) = v115;
    if (v115 != v114)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v118 = *v244;
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v119 = v118;
      }

      else
      {
        v119 = v118 & 0xFFFFFFFE;
      }

      if (v119)
      {
        v120 = &stru_1F0B1AFB8;
        if (v39)
        {
          v120 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v120;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_enable_hw_acc";
        *&v243[8] = 2048;
        *&v243[10] = v114;
        *&v243[18] = 2048;
        *&v243[20] = v116;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v121 = *(v38 + 210);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v122 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_fill_display", type);
  if (type[0])
  {
    v123 = v122;
    *(v38 + 210) = v122;
    if (v122 != v121)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v124 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v125 = *v244;
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v126 = v125;
      }

      else
      {
        v126 = v125 & 0xFFFFFFFE;
      }

      if (v126)
      {
        v127 = &stru_1F0B1AFB8;
        if (v39)
        {
          v127 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v127;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_fill_display";
        *&v243[8] = 2048;
        *&v243[10] = v121;
        *&v243[18] = 2048;
        *&v243[20] = v123;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v128 = *(v38 + 744);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v129 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_timestamps_logging", type);
  if (type[0])
  {
    v130 = v129;
    *(v38 + 744) = v129;
    if (v129 != v128)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v132 = *v244;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        v133 = v132;
      }

      else
      {
        v133 = v132 & 0xFFFFFFFE;
      }

      if (v133)
      {
        v134 = &stru_1F0B1AFB8;
        if (v39)
        {
          v134 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v134;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_enable_timestamps_logging";
        *&v243[8] = 2048;
        *&v243[10] = v128;
        *&v243[18] = 2048;
        *&v243[20] = v130;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v135 = *(v38 + 745);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v136 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_timestamps_diagnostic", type);
  if (type[0])
  {
    v137 = v136;
    *(v38 + 745) = v136;
    if (v136 != v135)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v138 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v139 = *v244;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        v140 = v139;
      }

      else
      {
        v140 = v139 & 0xFFFFFFFE;
      }

      if (v140)
      {
        v141 = &stru_1F0B1AFB8;
        if (v39)
        {
          v141 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v141;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_enable_timestamps_diagnostic";
        *&v243[8] = 2048;
        *&v243[10] = v135;
        *&v243[18] = 2048;
        *&v243[20] = v137;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v142 = *(v38 + 736);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v143 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_stats_logging", type);
  if (type[0])
  {
    v144 = v143;
    *(v38 + 736) = v143;
    if (v143 != v142)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v145 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v146 = *v244;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v147 = v146;
      }

      else
      {
        v147 = v146 & 0xFFFFFFFE;
      }

      if (v147)
      {
        v148 = &stru_1F0B1AFB8;
        if (v39)
        {
          v148 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v148;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_enable_stats_logging";
        *&v243[8] = 2048;
        *&v243[10] = v142;
        *&v243[18] = 2048;
        *&v243[20] = v144;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*(v38 + 737))
  {
    v149 = 1;
  }

  else
  {
    v149 = *(v38 + 745) != 0;
  }

  *(v38 + 737) = v149;
  v150 = *(v38 + 746);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v151 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_ktrace", type);
  if (type[0])
  {
    v152 = v151;
    *(v38 + 746) = v151;
    if (v151 != v150)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v153 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v154 = *v244;
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
        v155 = v154;
      }

      else
      {
        v155 = v154 & 0xFFFFFFFE;
      }

      if (v155)
      {
        v156 = &stru_1F0B1AFB8;
        if (v39)
        {
          v156 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v156;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_enable_ktrace";
        *&v243[8] = 2048;
        *&v243[10] = v150;
        *&v243[18] = 2048;
        *&v243[20] = v152;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v157 = *(v38 + 360);
  if (v157 >= 1)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    v158 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_imagepool_size", type);
    if (type[0])
    {
      v159 = v158;
      *(v38 + 360) = v158;
      if (v158 != v157)
      {
        *v244 = 0;
        v238[0] = OS_LOG_TYPE_DEFAULT;
        v160 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v161 = *v244;
        if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
        {
          v162 = v161;
        }

        else
        {
          v162 = v161 & 0xFFFFFFFE;
        }

        if (v162)
        {
          v163 = &stru_1F0B1AFB8;
          if (v39)
          {
            v163 = v39;
          }

          *buffer = 138413314;
          *&buffer[4] = v163;
          *&buffer[12] = 2080;
          *&buffer[14] = "fvdp_initFromPrefs";
          *&buffer[22] = 2112;
          *v243 = @"wirelessdisplay_imagepool_size";
          *&v243[8] = 2048;
          *&v243[10] = v157;
          *&v243[18] = 2048;
          *&v243[20] = v159;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v164 = *(v38 + 360);
    if (v164 != v157)
    {
      writebackCacheSetPoolCapacity(*(v38 + 640), v164);
    }
  }

  if (FigVirtualDisplayPrefsGetBooleanWithDefault(@"wirelessdisplay_enable_extended_color", *(v38 + 352)))
  {
    v165 = FVDUtilsMainDisplaySupportsExtendedColor() != 0;
  }

  else
  {
    v165 = 0;
  }

  *(v38 + 352) = v165;
  if (dword_1EAF17550)
  {
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v166 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v167 = *v244;
    if (os_log_type_enabled(v166, type[0]))
    {
      v168 = v167;
    }

    else
    {
      v168 = v167 & 0xFFFFFFFE;
    }

    if (v168)
    {
      v169 = &stru_1F0B1AFB8;
      v170 = *(v38 + 352);
      if (v39)
      {
        v169 = v39;
      }

      *buffer = 138412802;
      *&buffer[4] = v169;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_initFromPrefs";
      if (v170)
      {
        v171 = "";
      }

      else
      {
        v171 = "not ";
      }

      *&buffer[22] = 2080;
      *v243 = v171;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v165 = *(v38 + 352);
  }

  if (v165)
  {
    if (colorTagForIndex_once != -1)
    {
      __fvdp_start_block_invoke_cold_1();
    }

    *(v38 + 376) = &qword_1EAF19BA0;
  }

  v239 = 0;
  v172 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_colortag_index", &v239);
  if (v239)
  {
    v173 = v172;
    if (v172 > 7)
    {
      v174 = 0;
    }

    else
    {
      if (colorTagForIndex_once != -1)
      {
        __fvdp_start_block_invoke_cold_1();
      }

      v174 = &colorTagForIndex_colorTags[4 * v173];
    }

    *(v38 + 376) = v174;
    if (dword_1EAF17550)
    {
      *v244 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v176 = *v244;
      if (os_log_type_enabled(v175, type[0]))
      {
        v177 = v176;
      }

      else
      {
        v177 = v176 & 0xFFFFFFFE;
      }

      if (v177)
      {
        v178 = &stru_1F0B1AFB8;
        if (v39)
        {
          v178 = v39;
        }

        v179 = *(v38 + 376);
        if (v179)
        {
          v180 = *v179;
        }

        else
        {
          v180 = "none";
        }

        *buffer = 138412802;
        *&buffer[4] = v178;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2080;
        *v243 = v180;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v238[0] = OS_LOG_TYPE_DEFAULT;
  v181 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_chromalocation_index", v238);
  if (v238[0])
  {
    v182 = *MEMORY[0x1E6965D20];
    *buffer = v233;
    *&buffer[8] = v182;
    v183 = *MEMORY[0x1E6965D38];
    *&buffer[16] = *MEMORY[0x1E6965D40];
    *v243 = v183;
    v184 = *MEMORY[0x1E6965D08];
    *&v243[8] = *MEMORY[0x1E6965D10];
    *&v243[16] = v184;
    if (v181 >= 6)
    {
      v186 = *(v38 + 368);
      *(v38 + 368) = 0;
    }

    else
    {
      v185 = *&buffer[8 * v181];
      v186 = *(v38 + 368);
      *(v38 + 368) = v185;
      if (v185)
      {
        CFRetain(v185);
        if (!v186)
        {
          goto LABEL_324;
        }

        goto LABEL_323;
      }
    }

    v185 = @"none";
    if (!v186)
    {
LABEL_324:
      *type = 0;
      v240 = OS_LOG_TYPE_DEFAULT;
      v187 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v188 = *type;
      if (os_log_type_enabled(v187, v240))
      {
        v189 = v188;
      }

      else
      {
        v189 = v188 & 0xFFFFFFFE;
      }

      if (v189)
      {
        *v244 = 138412802;
        *&v244[4] = &stru_1F0B1AFB8;
        v245 = 2080;
        v246 = "prefsInitPixelBufferChromaLocation";
        v247 = 2112;
        v248 = v185;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_330;
    }

LABEL_323:
    CFRelease(v186);
    goto LABEL_324;
  }

LABEL_330:
  v190 = *(v38 + 386);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v191 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_encode_in_process", type);
  if (type[0])
  {
    v192 = v191;
    *(v38 + 386) = v191;
    if (v191 != v190)
    {
      *v244 = 0;
      v238[0] = OS_LOG_TYPE_DEFAULT;
      v193 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v194 = *v244;
      if (os_log_type_enabled(v193, v238[0]))
      {
        v195 = v194;
      }

      else
      {
        v195 = v194 & 0xFFFFFFFE;
      }

      if (v195)
      {
        v196 = &stru_1F0B1AFB8;
        if (v39)
        {
          v196 = v39;
        }

        *buffer = 138413314;
        *&buffer[4] = v196;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v243 = @"wirelessdisplay_encode_in_process";
        *&v243[8] = 2048;
        *&v243[10] = v190;
        *&v243[18] = 2048;
        *&v243[20] = v192;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  fvdp_checkForTaps(v38, 1);
  v197 = a1[5];
  v198 = *(v197 + 64);
  v249[0] = MEMORY[0x1E69E9820];
  v249[1] = 0x40000000;
  v249[2] = __fvdp_configureSink_block_invoke;
  v249[3] = &__block_descriptor_tmp_410;
  v249[4] = v197;
  v199 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v199)
  {
    v199(v198, v249);
  }

  if (*(v197 + 744) || *(v197 + 745))
  {
    v200 = FigVirtualDisplaySinkGetCMBaseObject(*(v197 + 64));
    v201 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v201)
    {
      v201(v200, @"anchorTimestampInfo", @"SubSu");
    }

    v202 = *(v197 + 64);
    if (timestampsGetTimestampNameInfo_once != -1)
    {
      __fvdp_start_block_invoke_cold_13();
    }

    v203 = timestampsGetTimestampNameInfo_timestampInfoArray;
    v204 = FigVirtualDisplaySinkGetCMBaseObject(v202);
    v205 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v205)
    {
      v205(v204, @"timestampInfo", v203);
    }
  }

  v206 = FigVirtualDisplaySinkGetCMBaseObject(*(a1[5] + 64));
  v207 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v207)
  {
    v208 = v207(v206, @"displayInfo", allocator, &cf);
  }

  else
  {
    v208 = -12782;
  }

  *(*(a1[4] + 8) + 24) = v208;
  v209 = a1[4];
  v210 = *(*(v209 + 8) + 24);
  if (v210)
  {
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v221 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v222 = *v244;
    if (os_log_type_enabled(v221, type[0]))
    {
      v223 = v222;
    }

    else
    {
      v223 = v222 & 0xFFFFFFFE;
    }

    if (!v223)
    {
      goto LABEL_410;
    }

    v224 = a1[6];
    if (!v224)
    {
      v224 = &stru_1F0B1AFB8;
    }

    *buffer = 138413058;
    *&buffer[4] = v224;
    *&buffer[12] = 2080;
    *&buffer[14] = "fvdp_start_block_invoke";
    *&buffer[22] = 1024;
    *v243 = 4428;
    *&v243[4] = 1024;
    *&v243[6] = v210;
    goto LABEL_406;
  }

  if (!cf)
  {
    *v244 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v225 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v226 = *v244;
    if (os_log_type_enabled(v225, type[0]))
    {
      v227 = v226;
    }

    else
    {
      v227 = v226 & 0xFFFFFFFE;
    }

    if (v227)
    {
      v228 = a1[6];
      if (!v228)
      {
        v228 = &stru_1F0B1AFB8;
      }

      *buffer = 138412802;
      *&buffer[4] = v228;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_start_block_invoke";
      *&buffer[22] = 1024;
      *v243 = 4429;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_392;
  }

  v211 = a1[5];
  v212 = *(v211 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_start_block_invoke_265;
  block[3] = &unk_1E748F8B0;
  block[4] = v209;
  block[5] = v211;
  block[6] = cf;
  dispatch_sync(v212, block);
  v213 = *(*(a1[4] + 8) + 24);
  if (!v213)
  {
    FigCFDictionaryGetBooleanIfPresent();
    v214 = a1[5];
    if (v236)
    {
      *(v214 + 24) = 1;
      goto LABEL_394;
    }

    fvdp_startTimers(v214);
    v215 = a1[5];
    v216 = 2;
    goto LABEL_393;
  }

  *v244 = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v229 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v230 = *v244;
  if (os_log_type_enabled(v229, type[0]))
  {
    v231 = v230;
  }

  else
  {
    v231 = v230 & 0xFFFFFFFE;
  }

  if (v231)
  {
    v232 = a1[6];
    if (!v232)
    {
      v232 = &stru_1F0B1AFB8;
    }

    *buffer = 138413058;
    *&buffer[4] = v232;
    *&buffer[12] = 2080;
    *&buffer[14] = "fvdp_start_block_invoke_2";
    *&buffer[22] = 1024;
    *v243 = 4433;
    *&v243[4] = 1024;
    *&v243[6] = v213;
LABEL_406:
    _os_log_send_and_compose_impl();
  }

LABEL_410:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_394:
  if (cf)
  {
    CFRelease(cf);
  }

  if (*(*(a1[4] + 8) + 24))
  {
    fvdp_cleanup(a1[5]);
  }
}

void __fvdp_start_block_invoke_265(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  Value = CFDictionaryGetValue(v2, @"colorModes");
  v5 = CFDictionaryGetValue(v2, @"timingModes");
  v6 = CFDictionaryGetValue(v2, @"displaySizeInPhysicalUnits");
  FigCFDictionaryGetDoubleIfPresent();
  *(v3 + 176) = 0x3FF0000000000000;
  if (Value)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && CFArrayGetCount(Value) && CFArrayGetCount(v5))
  {
    v8 = &dword_1EAF17000;
    if (dword_1EAF17550 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = &dword_1EAF17000;
      if (dword_1EAF17550 >= 2)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = &dword_1EAF17000;
      }
    }

    v11 = *(v3 + 184);
    *(v3 + 184) = Value;
    CFRetain(Value);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(v3 + 192);
    *(v3 + 192) = v5;
    CFRetain(v5);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v6)
    {
      CGSizeMakeWithDictionaryRepresentation(v6, (v3 + 144));
      FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize(*(v3 + 192), (v3 + 200), *(v3 + 144), *(v3 + 152), *(v3 + 176));
    }

    *(v3 + 80) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v13 = *(v3 + 88);
    v14 = CFDictionaryGetValue(v2, @"displayName");
    *(v3 + 88) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v15 = *(v3 + 96);
    v16 = CFDictionaryGetValue(v2, @"displayUUID");
    *(v3 + 96) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v17 = *(v3 + 104);
    v18 = CFDictionaryGetValue(v2, @"displayEDID");
    *(v3 + 104) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v19 = v8[340];
    if (v19)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = 0;
    }
  }

  else
  {
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = -12070;
  }

  *(*(a1[4] + 8) + 24) = v19;
}

void fvdp_startTimers(uint64_t a1)
{
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 480);
  v4 = dispatch_time(0, *(a1 + 488));
  dispatch_source_set_timer(v3, v4, *(a1 + 488), 0x989680uLL);
  if (*(a1 + 736) || *(a1 + 737))
  {
    *(a1 + 680) = FigGetUpTimeNanoseconds();
    v5 = *(a1 + 672);
    v6 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v5, v6, 0x3B9ACA00uLL, 0x5F5E100uLL);
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 40);
  v8 = dispatch_time(0, *(a1 + 32));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

void writebackCacheSetPoolCapacity(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 24) = Mutable;
}

uint64_t fvdp_encoderControlSetBitrate(uint64_t result, unsigned int a2)
{
  if (*(result + 576) != a2)
  {
    v3 = result;
    if (dword_1EAF17550 <= 1)
    {
      *(result + 568) = 2;
      v5 = vcvtd_n_f64_s32(a2, 3uLL);
      *(result + 520) = v5;
      *(result + 544) = 0x3FF0000000000000;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = dword_1EAF17550;
      *(v3 + 568) = 2;
      v5 = vcvtd_n_f64_s32(a2, 3uLL);
      *(v3 + 520) = v5;
      *(v3 + 544) = 0x3FF0000000000000;
      if (v6 > 1)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = dword_1EAF17550;
        *(v3 + 528) = *(v3 + 520) * 0.2;
        *(v3 + 552) = 0x3FB999999999999ALL;
        if (v8 >= 2)
        {
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_8;
      }
    }

    *(v3 + 528) = v5 * 0.2;
    *(v3 + 552) = 0x3FB999999999999ALL;
LABEL_8:
    *(v3 + 576) = a2;
    *(v3 + 572) = 1;
  }

  return result;
}

double fvdp_encoderControlSetFramerate(uint64_t a1, int a2)
{
  if (*(a1 + 408) != a2)
  {
    if (dword_1EAF17550)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 408) = a2;
    *(a1 + 416) = 0x3B9ACA00uLL / a2;
    result = a2;
    *(a1 + 584) = a2;
    *(a1 + 592) = 1;
  }

  return result;
}

uint64_t __colorTagForIndex_block_invoke()
{
  v0 = *MEMORY[0x1E6965DB8];
  v1 = *MEMORY[0x1E6965FD0];
  v2 = *MEMORY[0x1E6965F50];
  v3 = *MEMORY[0x1E6965FC8];
  v4 = *MEMORY[0x1E6965F88];
  v5 = *MEMORY[0x1E6965DD0];
  v6 = *MEMORY[0x1E6965DB0];
  v7 = *MEMORY[0x1E6965FB0];
  v8 = *MEMORY[0x1E6965F70];
  v9 = *MEMORY[0x1E6965FA8];
  result = *MEMORY[0x1E6965F48];
  colorTagForIndex_colorTags = "AirPlay";
  *algn_1EAF19B48 = v0;
  qword_1EAF19B50 = v1;
  unk_1EAF19B58 = v2;
  qword_1EAF19B60 = "CarPlay";
  unk_1EAF19B68 = v0;
  qword_1EAF19B70 = v3;
  unk_1EAF19B78 = v4;
  qword_1EAF19B80 = "CarPlayHEVC";
  unk_1EAF19B88 = v0;
  qword_1EAF19B90 = v1;
  unk_1EAF19B98 = v4;
  qword_1EAF19BA0 = "ExtendedColor";
  unk_1EAF19BA8 = v5;
  qword_1EAF19BB0 = v1;
  unk_1EAF19BB8 = v2;
  qword_1EAF19BC0 = "HDR10";
  unk_1EAF19BC8 = v6;
  qword_1EAF19BD0 = v7;
  unk_1EAF19BD8 = v8;
  qword_1EAF19BE0 = "DoVi";
  unk_1EAF19BE8 = 0;
  qword_1EAF19BF0 = v9;
  unk_1EAF19BF8 = v8;
  qword_1EAF19C00 = "HLG";
  unk_1EAF19C08 = v6;
  qword_1EAF19C10 = v7;
  unk_1EAF19C18 = result;
  qword_1EAF19C20 = "AirPlaysRGB";
  unk_1EAF19C28 = v0;
  qword_1EAF19C30 = v1;
  unk_1EAF19C38 = v4;
  return result;
}

void fvdp_checkForTaps(uint64_t a1, int a2)
{
  Boolean = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_tap_input", 0);
  v5 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_tap_output", 0);
  if (a2)
  {
    if (Boolean && !*(a1 + 656))
    {
      *(a1 + 656) = tapCreate(@"input");
    }

    if (v5 && !*(a1 + 664))
    {
      if (*(a1 + 312) == 1852796517)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        *(a1 + 664) = tapCreate(@"output");
      }
    }

    if (*(a1 + 656) || *(a1 + 664))
    {
      *(a1 + 440) = 1666666;
    }
  }

  else
  {
    if (!Boolean)
    {
      v7 = *(a1 + 656);
      if (v7)
      {
        tapDestroy(v7);
        *(a1 + 656) = 0;
      }
    }

    if (!v5)
    {
      v8 = *(a1 + 664);
      if (v8)
      {
        tapDestroy(v8);
        *(a1 + 664) = 0;
      }
    }
  }
}

void *tapCreate(const void *a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v2 = *MEMORY[0x1E695E480];
  TempDirectory = FVDUtilsGetTempDirectory();
  v4 = getpid();
  v5 = CFStringCreateWithFormat(v2, 0, @"%@tap-%@-%d-%d.mov", TempDirectory, a1, v4, atomic_fetch_add_explicit(tapCreate_count, 1u, memory_order_relaxed) + 1);
  if (FigVirtualDisplaySinkFileWriterCreate(v2, cf) || (CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(cf[0]), (v7 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v7(CMBaseObject, @"Destination", v5) || (v8 = cf[0], (v9 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v9(v8, 0, 0))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = 0;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004082687C62uLL);
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *v10 = cf[0];
    v10[1] = v11;
    cf[0] = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  CFRelease(v5);
LABEL_15:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v10;
}

void __fvdp_configureSink_block_invoke(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_configureSink_block_invoke_2;
  block[3] = &__block_descriptor_tmp_409;
  block[4] = v6;
  block[5] = cf;
  block[6] = a3;
  dispatch_async(v7, block);
}

void __fvdp_configureSink_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (FigCFEqual())
  {
    if (dword_1EAF17550)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v2 + 595) = 1;
  }

  else if (FigCFEqual())
  {
    if (dword_1EAF17550)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v2 + 596) = 1;
  }

  else if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(v3, @"tokens");
    if (Value)
    {
      v7 = Value;
      if (dword_1EAF17550 >= 2)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Mutable = *(v2 + 616);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        *(v2 + 616) = Mutable;
      }

      v13.length = CFArrayGetCount(v7);
      v13.location = 0;
      CFArrayAppendArray(Mutable, v7, v13);
    }
  }

  else if (FigCFEqual())
  {
    *(v2 + 468) = 1;
    FigCFDictionaryGetInt32IfPresent();
    if (dword_1EAF17550)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v9 = a1[5];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }
}

void __fvdp_stop_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 != 2 && dword_1EAF17550 != 0)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 0;
  __dmb(0xBu);
  fvdp_stopTimers(*(a1 + 32));
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_stop_block_invoke_416;
  block[3] = &__block_descriptor_tmp_417;
  block[4] = v6;
  dispatch_sync(v7, block);
  if (v3)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v17;
    if (os_log_type_enabled(v8, type))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = &stru_1F0B1AFB8;
      v12 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v11 = *(a1 + 40);
      }

      v13 = *(v12 + 728);
      v14 = *(v12 + 732);
      v18 = 138413058;
      v19 = v11;
      v20 = 2080;
      v21 = "fvdp_stop_block_invoke_2";
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fvdp_cleanup(*(a1 + 32));
}

void fvdp_stopTimers(NSObject **a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17550)
  {
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_source_set_timer(a1[60], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_source_set_timer(a1[84], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v3 = a1[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_stopTimers_block_invoke;
  block[3] = &__block_descriptor_tmp_420;
  block[4] = a1;
  dispatch_sync(v3, block);
}

uint64_t fvdp_shutdownEncoderAndPools(uint64_t a1)
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  fvdp_teardownCompressionSession(a1);
  v3 = *(a1 + 328);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 328) = 0;
  }

  v4 = *MEMORY[0x1E695F060];
  *(a1 + 216) = *MEMORY[0x1E695F060];
  *(a1 + 232) = v4;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 248) = *MEMORY[0x1E695F058];
  *(a1 + 264) = v6;
  *(a1 + 280) = v5;
  *(a1 + 296) = v6;
  return writebackCacheInitWithPool(*(a1 + 640), 0, 0, 0);
}

void __fvdp_stopTimers_block_invoke(uint64_t a1)
{
  dispatch_source_set_timer(*(*(a1 + 32) + 456), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_source_set_timer(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  *(*(a1 + 32) + 48) = 0;
}

void fvdp_teardownCompressionSession(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 320) = 0;
  }

  v3 = *(a1 + 336);
  if (v3)
  {
    v5 = **&MEMORY[0x1E6960C70];
    VTCompressionSessionCompleteFrames(v3, &v5);
    v4 = *(a1 + 336);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 336) = 0;
    }

    dispatch_source_set_timer(*(a1 + 456), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

uint64_t __fvdp_suspend_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 24) != 2 && dword_1EAF17550 != 0)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 1;
  __dmb(0xBu);
  fvdp_stopTimers(*(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_suspend_block_invoke_421;
  block[3] = &__block_descriptor_tmp_422;
  block[4] = v5;
  dispatch_sync(v6, block);
  fvdp_checkForTaps(*(a1 + 32), 0);
  if (dword_1EAF17550)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v18;
    if (os_log_type_enabled(v7, type))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = &stru_1F0B1AFB8;
      if (*(a1 + 40))
      {
        v10 = *(a1 + 40);
      }

      v19 = 138412546;
      v20 = v10;
      v21 = 2080;
      v22 = "fvdp_suspend_block_invoke_2";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(*(a1 + 32) + 64);
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 16);
  result = VTable + 16;
  v15 = *(v14 + 56);
  if (v15)
  {
    return v15(v11, @"clearScreen", *MEMORY[0x1E695E4D0], 0);
  }

  return result;
}

void __fvdp_resume_block_invoke(uint64_t a1)
{
  block[26] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (*(v2 + 24) == 1)
  {
    fvdp_checkForTaps(v2, 1);
    v4 = *v3;
    v5 = *(*v3 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_resume_block_invoke_2;
    block[3] = &__block_descriptor_tmp_425;
    block[4] = v4;
    dispatch_sync(v5, block);
    fvdp_startTimers(*v3);
    v6 = 2;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = (*(a1 + 32) + 8);
    v6 = -12070;
  }

  *(*v3 + 24) = v6;
}

CFTypeRef __fvdp_copySupportedDigitalOutModes_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 184);
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  **(a1 + 32) = v2;
  v3 = *(a1 + 40);
  result = *(v3 + 200);
  if (result || (result = *(v3 + 192)) != 0)
  {
    result = CFRetain(result);
  }

  **(a1 + 48) = result;
  return result;
}

void __fvdp_setDigitalOutMode_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  if (FigDisplayModes_ExtractDimensionsFromTimingMode(*(v1 + 192), v2, (v1 + 112)))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF17550)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(v1 + 200);
  if (v5)
  {
    if (FigDisplayModes_ExtractDimensionsFromTimingMode(v5, v2, (v1 + 128)))
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (dword_1EAF17550)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(v1 + 128) = *(v1 + 112);
  }

  if (FigDisplayModes_ExtractOverscanInfoFromTimingMode(*(v1 + 192), v2, (v1 + 160)))
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF17550)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v1 + 64))
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(v1 + 112));
    v11 = *(v1 + 336);
    if (v11)
    {
      completeUntilPresentationTimeStamp = **&MEMORY[0x1E6960C70];
      VTCompressionSessionCompleteFrames(v11, &completeUntilPresentationTimeStamp);
    }

    CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(*(v1 + 64));
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(CMBaseObject, @"virtualDisplayModeSize", DictionaryRepresentation);
    }

    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }
}

void cvPixelBufferSetColorAttachments(CVBufferRef buffer, void *a2, CFTypeRef value)
{
  if (buffer)
  {
    if (a2)
    {
      v6 = a2[1];
      if (v6)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965D88], v6, kCVAttachmentMode_ShouldPropagate);
      }

      v7 = a2[3];
      if (v7)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F30], v7, kCVAttachmentMode_ShouldPropagate);
      }

      v8 = a2[2];
      if (v8)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F98], v8, kCVAttachmentMode_ShouldPropagate);
      }
    }

    if (value)
    {
      CVBufferSetAttachment(buffer, *MEMORY[0x1E6965D00], value, kCVAttachmentMode_ShouldPropagate);
      v9 = *MEMORY[0x1E6965CF0];

      CVBufferSetAttachment(buffer, v9, value, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

uint64_t fvdp_createPixelBufferPool(uint64_t a1, uint64_t a2, CVPixelBufferPoolRef *a3)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v8 = CFDictionaryCreateMutable(v4, 0, v5, v6);
  CFDictionarySetValue(v8, *MEMORY[0x1E696CF98], @"FigVirtualDisplay");
  if (a2)
  {
    FigCFDictionarySetInt64();
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v8);
  v9 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v10 = CVPixelBufferPoolCreate(v4, v9, Mutable, a3);
  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v9)
  {
LABEL_5:
    CFRelease(v9);
  }

LABEL_6:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t vtSessionSetPropertyInt32(const void *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v6 = VTSessionSetProperty(a1, a2, v5);
  CFRelease(v5);
  return v6;
}

void fvdp_encoderControlApply(uint64_t a1, int a2)
{
  v4 = MEMORY[0x1E695E480];
  if (*(a1 + 572) | a2)
  {
    v5 = *(a1 + 312);
    if (v5 > 1752589104)
    {
      if (v5 != 1752589105 && v5 != 1869117027 && v5 != 1836415073)
      {
        goto LABEL_27;
      }
    }

    else if (((v5 - 1718908515) > 0xD || ((1 << (v5 - 99)) & 0x2021) == 0) && v5 != 1635148593)
    {
      goto LABEL_27;
    }

    v10 = *(a1 + 504);
    v11 = v10 > 0x26;
    v12 = (1 << v10) & 0x6000100000;
    if (v11 || v12 == 0)
    {
LABEL_27:
      vtSessionSetPropertyInt32(*(a1 + 336), *MEMORY[0x1E6983558], *(a1 + 576));
      goto LABEL_28;
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (*(a1 + 568) >= 1)
    {
      v15 = 0;
      v16 = a1 + 544;
      do
      {
        FigCFArrayAppendDouble();
        v16 += 8;
        FigCFArrayAppendDouble();
        ++v15;
      }

      while (v15 < *(a1 + 568));
    }

    VTSessionSetProperty(*(a1 + 336), *MEMORY[0x1E69835E0], Mutable);
    CFRelease(Mutable);
  }

LABEL_28:
  if (*(a1 + 592) | a2)
  {
    v17 = *(a1 + 336);
    v18 = *MEMORY[0x1E6983638];
    valuePtr = *(a1 + 584);
    v19 = CFNumberCreate(*v4, kCFNumberDoubleType, &valuePtr);
    VTSessionSetProperty(v17, v18, v19);
    CFRelease(v19);
  }

  *(a1 + 572) = 0;
  *(a1 + 592) = 0;
}

void __fvdp_timestampsReportForFrame_block_invoke()
{
  qword_1ED4CB030 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v0 = 2u;
  do
  {
    CFStringAppendFormat(qword_1ED4CB030, 0, @"  %@", kTimestampNames[v0++]);
  }

  while (v0 != 7);
}

uint64_t fvdp_shouldDropFrame(uint64_t a1)
{
  propertyValueOut[16] = *MEMORY[0x1E69E9840];
  if (!**(a1 + 56))
  {
    return 0;
  }

  v2 = *(a1 + 472);
  if (v2 != 2)
  {
    if (v2 == 1 && *(a1 + 209))
    {
      if (dword_1EAF17550)
      {
        goto LABEL_18;
      }

      return 1;
    }

    goto LABEL_8;
  }

  if (*(a1 + 209))
  {
LABEL_8:
    if (*(a1 + 356) >= 1)
    {
      v3 = *(a1 + 336);
      if (v3)
      {
        v4 = *MEMORY[0x1E6983758];
        valuePtr = 0;
        propertyValueOut[0] = 0;
        VTSessionCopyProperty(v3, v4, *MEMORY[0x1E695E480], propertyValueOut);
        if (propertyValueOut[0])
        {
          v5 = CFGetTypeID(propertyValueOut[0]);
          if (v5 == CFNumberGetTypeID())
          {
            CFNumberGetValue(propertyValueOut[0], kCFNumberSInt32Type, &valuePtr);
          }

          if (propertyValueOut[0])
          {
            CFRelease(propertyValueOut[0]);
          }
        }

        v6 = valuePtr;
        if (dword_1EAF17550 >= 3)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v6 >= *(a1 + 356))
        {
          if (dword_1EAF17550)
          {
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (!*(a1 + 736) && !*(a1 + 737))
          {
            return 1;
          }

          v16 = (a1 + 708);
          goto LABEL_38;
        }
      }
    }

    v10 = *(a1 + 64);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v11 && v11(v10))
    {
      if (dword_1EAF17550)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!*(a1 + 736) && !*(a1 + 737))
      {
        return 1;
      }

      v16 = (a1 + 712);
LABEL_38:
      v9 = 1;
      atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
      return v9;
    }

    v13 = *(a1 + 468);
    if (v13 >= 1)
    {
      if (dword_1EAF17550)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = *(a1 + 468);
      }

      *(a1 + 468) = v13 - 1;
      return 1;
    }

    return 0;
  }

  if (!dword_1EAF17550)
  {
    return 1;
  }

LABEL_18:
  v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  v9 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v9;
}

uint64_t fvdp_createSampleBufferWithPixelBuffer(__CVBuffer *a1, int64_t value, CFTypeRef *a3, CMSampleBufferRef *a4)
{
  formatDescriptionOut[22] = *MEMORY[0x1E69E9840];
  formatDescriptionOut[0] = 0;
  memset(&sampleTiming, 0, sizeof(sampleTiming));
  if (a1 && a3 && a4)
  {
    CMTimeMake(&sampleTiming.presentationTimeStamp, value, 1000000000);
    sampleTiming.decodeTimeStamp = **&MEMORY[0x1E6960C70];
    sampleTiming.duration = sampleTiming.decodeTimeStamp;
    v7 = *a3;
    v8 = *MEMORY[0x1E695E480];
    v9 = 1;
    v10 = *a3;
    while (1)
    {
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v12 = CMVideoFormatDescriptionCreateForImageBuffer(v8, a1, formatDescriptionOut);
        if (v12)
        {
          v16 = v12;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          goto LABEL_25;
        }

        v11 = formatDescriptionOut[0];
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      v14 = CMSampleBufferCreateReadyWithImageBuffer(v8, a1, v13, &sampleTiming, a4);
      v15 = formatDescriptionOut[0];
      if (!v14)
      {
        if (!formatDescriptionOut[0])
        {
          return 0;
        }

        if (*a3)
        {
          CFRelease(*a3);
          v15 = formatDescriptionOut[0];
        }

        v16 = 0;
        *a3 = v15;
        return v16;
      }

      v16 = v14;
      if (v14 != -12743 || formatDescriptionOut[0])
      {
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
LABEL_25:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_26;
      }

      v10 = 0;
      v17 = (v7 == 0) | ~v9;
      v9 = 0;
      if (v17)
      {
        return 0;
      }
    }
  }

  fvdp_createSampleBufferWithPixelBuffer_cold_1();
  v16 = 4294955226;
LABEL_26:
  if (formatDescriptionOut[0])
  {
    CFRelease(formatDescriptionOut[0]);
  }

  return v16;
}

uint64_t writebackCacheCopyBuffer(uint64_t a1, int a2, int a3, CVBufferRef *a4, double a5, double a6)
{
  if (!a1)
  {
    writebackCacheCopyBuffer_cold_1();
    return 0;
  }

  FigSimpleMutexLock();
  v12 = a5 == *(a1 + 56) && a6 == *(a1 + 64);
  if (v12 && *(a1 + 88) == a2 && *(a1 + 92) == a3)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
LABEL_12:
      v15 = v13 != 0;
      if (a4 && v13)
      {
        *a4 = v13;
        *(a1 + 32) = 0;
        v15 = 1;
      }

      goto LABEL_16;
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], v14, *(a1 + 16), (a1 + 32));
      cvPixelBufferSetColorAttachments(*(a1 + 32), *(a1 + 48), *(a1 + 40));
      v13 = *(a1 + 32);
      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  if (a4 && v15)
  {
    CVBufferSetAttachment(*a4, @"FVDWritebackBuffer", *MEMORY[0x1E695E4D0], kCVAttachmentMode_ShouldNotPropagate);
    return 1;
  }

  return v15;
}

uint64_t OUTLINED_FUNCTION_27_19()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_37_18()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_38_14@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 56) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_40_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_46_11()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_47_12()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_51_13(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, os_log_type_t type, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_52_13()
{

  return kdebug_trace();
}

void OUTLINED_FUNCTION_56_12(uint64_t a1@<X8>)
{
  *(v3 - 84) = v1;
  *(a1 + 14) = v2;
  *(v3 - 74) = 1024;
}

uint64_t OUTLINED_FUNCTION_63_8()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_64_9(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v13 = v8[35];
  v14 = v8[36];
  v15 = v8[37];
  v16 = v8[38];
  v17 = v10;
  v18 = v12;
  v19 = v11;

  return CGRectEqualToRect(*&v13, *(&a8 - 3));
}

BOOL OUTLINED_FUNCTION_65_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_66_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, int a14, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_68_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_69_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, os_log_type_t type, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_73_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, os_log_type_t type, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_75_6()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_79_6()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_89_4()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

BOOL OUTLINED_FUNCTION_101_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_102_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_106_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_107_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_108_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder_cold_1(&v8);
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

void figTTMLDocumentWriterWritingDirectionSpanBuilder_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}