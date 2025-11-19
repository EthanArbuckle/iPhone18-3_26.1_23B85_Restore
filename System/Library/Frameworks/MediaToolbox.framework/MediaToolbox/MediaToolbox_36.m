uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_ResetNodeTree()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = *(MEMORY[0x1E695F050] + 16);
  v42 = *MEMORY[0x1E695F050];
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v41;
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
        v7(a1, &rect);
      }
    }
  }

  v8 = *(a2 + 296);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a1);
    if (*(a2 + 336))
    {
      y = rect.origin.y;
      height = rect.size.height;
    }

    else
    {
      v12 = *(MEMORY[0x1E695F058] + 16);
      v43.origin = *MEMORY[0x1E695F058];
      v43.size = v12;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v13 = CMBaseObjectGetProtocolVTable();
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = *(v14 + 72);
          if (v15)
          {
            v15(a1, &v43);
          }
        }
      }

      MidY = CGRectGetMidY(rect);
      v17 = CGRectGetMidY(v43);
      height = rect.size.height;
      y = v17 + v17 - MidY + rect.size.height * -0.5;
      rect.origin.y = y;
    }

    x = rect.origin.x;
    width = rect.size.width;
    MidX = CGRectGetMidX(*(&y - 1));
    v21 = CGRectGetMidY(rect);
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v22 = CMBaseObjectGetProtocolVTable();
    if (v22)
    {
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = *(v23 + 72);
        if (v24)
        {
          v24(Value, MidX, v21);
        }
      }
    }

    v25 = rect.size.width;
    v26 = rect.size.height;
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v27 = CMBaseObjectGetProtocolVTable();
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = *(v28 + 88);
        if (v29)
        {
          v29(Value, v25, v26);
        }
      }
    }
  }

  v30 = *(a2 + 320);
  if (v30 && *(a2 + 754))
  {
    v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    rect = *ymmword_196E771B0;
    v32 = CGColorCreate(v31, &rect.origin.x);
    if (v32)
    {
      CGContextSaveGState(v30);
      v43.origin = v42;
      v43.size = v41;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v33 = CMBaseObjectGetProtocolVTable();
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v34 + 104);
          if (v35)
          {
            v35(a1, &v43);
          }
        }
      }

      CGContextSetRGBStrokeColor(v30, 0.4, 0.8, 1.0, 1.0);
      CGContextSetLineWidth(v30, 3.0);
      CGContextStrokeRect(v30, v43);
      CGContextRestoreGState(v30);
    }

    CGColorRelease(v32);
    CFRelease(v31);
  }

  v36 = *(DerivedStorage + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v37 = CMBaseObjectGetProtocolVTable();
  if (!v37)
  {
    return 4294954508;
  }

  v38 = *(v37 + 16);
  if (!v38)
  {
    return 4294954508;
  }

  v39 = *(v38 + 280);
  if (v39)
  {
    return v39(v36, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 32);
  v5 = *(v3 + 24) * *(v3 + 36);
  v6 = *(v3 + 56);
  v7 = *(v3 + 40);
  if (*(v3 + 64) / 100.0 + *(v3 + 48) / -100.0 * v5 >= 0.0)
  {
    v8 = *(v3 + 64) / 100.0 + *(v3 + 48) / -100.0 * v5;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *(v3 + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v11 = *(ProtocolVTable + 16);
    if (v11)
    {
      v12 = *(v11 + 80);
      if (v12)
      {
        v112[0] = 1;
        *&v112[1] = 0;
        *&v112[4] = 0;
        *&v112[8] = v6 / 100.0 + v7 / -100.0 * (v4 / 100.0);
        v112[16] = 1;
        *&v112[17] = 0;
        *&v112[20] = 0;
        *&v112[24] = v8;
        v112[32] = 1;
        *&v112[33] = 0;
        *&v112[36] = 0;
        *&v112[40] = v4 / 100.0;
        LOBYTE(v113) = 1;
        *(&v113 + 1) = 0;
        DWORD1(v113) = 0;
        *(&v113 + 1) = v5;
        v12(v9, v112);
      }
    }
  }

  v13 = CMBaseObjectGetDerivedStorage();
  *v112 = FCRRectNull;
  *&v112[16] = *&byte_196E76830;
  *&v112[32] = xmmword_196E76840;
  v113 = *&byte_196E76850;
  v100 = *(MEMORY[0x1E695F050] + 16);
  v101 = *MEMORY[0x1E695F050];
  v110 = *MEMORY[0x1E695F050];
  v111 = v100;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v15 + 88);
      if (v16)
      {
        v16(a1, v112);
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
      v19 = *(v18 + 72);
      if (v19)
      {
        v19(a1, &v110);
      }
    }
  }

  v20 = *&v112[40];
  if (*&v112[40] != -1.0)
  {
    v72 = *&v110 + *&v112[8];
    if (v112[0])
    {
      v72 = *&v110 + *&v112[8] * *&v111;
    }

    v73 = *(&v110 + 1) + *&v112[24];
    if (v112[16])
    {
      v73 = *(&v110 + 1) + *&v112[24] * *(&v111 + 1);
    }

    if (v112[32])
    {
      v20 = *&v112[40] * *&v111;
    }

    v74 = *(&v113 + 1);
    if (v113)
    {
      v74 = *(&v111 + 1) * *(&v113 + 1);
    }

    v114 = CGRectIntegral(*(&v20 - 2));
    x = v114.origin.x;
    y = v114.origin.y;
    width = v114.size.width;
    height = v114.size.height;
    v79 = *(v13 + 8);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v80 = CMBaseObjectGetProtocolVTable();
    if (v80)
    {
      v81 = *(v80 + 16);
      if (v81)
      {
        v82 = *(v81 + 96);
        if (v82)
        {
          v82(v79, x, y, width, height);
        }
      }
    }
  }

  theArray = 0;
  v21 = *(DerivedStorage + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v22 = CMBaseObjectGetProtocolVTable();
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v23 + 24);
      if (v24)
      {
        v24(v21, &theArray);
      }
    }
  }

  Count = CFArrayGetCount(theArray);
  v110 = v101;
  v111 = v100;
  v26 = *(DerivedStorage + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v27 = CMBaseObjectGetProtocolVTable();
  if (v27)
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = *(v28 + 104);
      if (v29)
      {
        v29(v26, &v110);
      }
    }
  }

  v31 = *(&v110 + 1);
  v30 = *&v110;
  if (*DerivedStorage)
  {
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1);
      v99 = *MEMORY[0x1E695F060];
      *v112 = *MEMORY[0x1E695F060];
      FigCaptionRendererNodeProtocolGetProtocolID();
      v33 = CMBaseObjectGetProtocolVTable();
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v34 + 120);
          if (v35)
          {
            v35(ValueAtIndex, v112);
          }
        }
      }

      v36 = 0;
      v37 = *&v112[8];
      v38 = Count + 1;
      v98 = *MEMORY[0x1E695EFF8];
      do
      {
        v39 = CFArrayGetValueAtIndex(theArray, v38 - 2);
        *v112 = v101;
        *&v112[16] = v100;
        v107 = v98;
        v108 = v99;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v40 = CMBaseObjectGetProtocolVTable();
        if (v40)
        {
          v41 = *(v40 + 16);
          if (v41)
          {
            v42 = *(v41 + 104);
            if (v42)
            {
              v42(v39, v112);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v43 = CMBaseObjectGetProtocolVTable();
        if (v43)
        {
          v44 = *(v43 + 16);
          if (v44)
          {
            v45 = *(v44 + 120);
            if (v45)
            {
              v45(v39, &v108);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v46 = CMBaseObjectGetProtocolVTable();
        if (v46)
        {
          v47 = *(v46 + 16);
          if (v47)
          {
            v48 = *(v47 + 136);
            if (v48)
            {
              v48(v39, &v107);
            }
          }
        }

        if (*&v112[8] != v31)
        {
          v106 = 0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v49 = CMBaseObjectGetProtocolVTable();
          if (v49)
          {
            v50 = *(v49 + 16);
            if (v50)
            {
              v51 = *(v50 + 248);
              if (v51)
              {
                v51(v39, &v106);
              }
            }
          }

          if (!v106)
          {
            if (*&v107 == -1.0 && *(&v107 + 1) == -1.0)
            {
              *&v107 = v30;
              *(&v107 + 1) = v31 - v37;
              FigCaptionRendererNodeProtocolGetProtocolID();
              v52 = CMBaseObjectGetProtocolVTable();
              if (v52)
              {
                v53 = *(v52 + 16);
                if (v53)
                {
                  v54 = *(v53 + 128);
                  if (v54)
                  {
                    v54(v39, v30, v31 - v37);
                  }
                }
              }
            }

            v105 = 0;
            FigCaptionRendererMoveToActionCreate(&v105);
            v55 = v105;
            FigCaptionRendererActionProtocolGetProtocolID();
            v56 = CMBaseObjectGetProtocolVTable();
            if (v56)
            {
              v57 = *(v56 + 16);
              if (v57)
              {
                v58 = *(v57 + 16);
                if (v58)
                {
                  v58(v55, 450);
                }
              }
            }

            v59 = v105;
            FigCaptionRendererMoveToActionProtocolGetProtocolID();
            v60 = CMBaseObjectGetProtocolVTable();
            if (v60)
            {
              v61 = *(v60 + 16);
              if (v61)
              {
                v62 = *(v61 + 16);
                if (v62)
                {
                  v62(v59, v30, v31);
                }
              }
            }

            v63 = v105;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v64 = CMBaseObjectGetProtocolVTable();
            if (v64)
            {
              v65 = *(v64 + 16);
              if (v65)
              {
                v66 = *(v65 + 320);
                if (v66)
                {
                  v66(v39, v63);
                }
              }
            }

            v36 = 1;
          }
        }

        v31 = v31 + *(&v108 + 1);
        --v38;
      }

      while (v38 > 1);
      if (v36)
      {
        *&v108 = 0;
        v103 = v110;
        v104 = v111;
        v67 = *(DerivedStorage + 8);
        FigCaptionRendererNodeProtocolGetProtocolID();
        v68 = CMBaseObjectGetProtocolVTable();
        if (v68 && (v69 = *(v68 + 16)) != 0 && (v70 = *(v69 + 16)) != 0)
        {
          v70(v67, &v108);
          v71 = v108;
        }

        else
        {
          v71 = 0;
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v94 = CMBaseObjectGetProtocolVTable();
        if (v94)
        {
          v95 = *(v94 + 16);
          if (v95)
          {
            v96 = *(v95 + 312);
            if (v96)
            {
              *v112 = 0x1C200000000;
              *&v112[8] = v103;
              *&v112[24] = v104;
              v96(v71, v112);
            }
          }
        }
      }
    }
  }

  else if (Count >= 1)
  {
    v83 = Count + 1;
    v102 = *MEMORY[0x1E695F060];
    do
    {
      *v112 = v102;
      v84 = CFArrayGetValueAtIndex(theArray, v83 - 2);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v85 = CMBaseObjectGetProtocolVTable();
      if (v85)
      {
        v86 = *(v85 + 16);
        if (v86)
        {
          v87 = *(v86 + 128);
          if (v87)
          {
            v87(v84, v30, v31);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v88 = CMBaseObjectGetProtocolVTable();
      if (v88)
      {
        v89 = *(v88 + 16);
        if (v89)
        {
          v90 = *(v89 + 232);
          if (v90)
          {
            v90(v84, 1);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v91 = CMBaseObjectGetProtocolVTable();
      if (v91)
      {
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = *(v92 + 120);
          if (v93)
          {
            v93(v84, v112);
          }
        }
      }

      v31 = v31 + *&v112[8];
      --v83;
    }

    while (v83 > 1);
  }

  return 0;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
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
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v8 = CMBaseObjectGetProtocolVTable();
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v9 + 240);
      if (v10)
      {
        v10(a1, &v25);
      }
    }
  }

  if (HIBYTE(v25))
  {
    FigCaptionRendererNodeProtocolGetProtocolID();
    v11 = CMBaseObjectGetProtocolVTable();
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v12 + 296);
        if (v13)
        {
          v13(a1, a2);
        }
      }
    }
  }

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

  v20 = *(DerivedStorage + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
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

uint64_t fcrStackLayout_TimeComparator(uint64_t a1, uint64_t a2)
{
  v16[0] = FigBytePumpGetFigBaseObject(a1);
  v16[1] = v4;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    ProtocolVTable += 16;
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        ProtocolVTable = v8(a1, v16);
      }
    }
  }

  FigBaseObject = FigBytePumpGetFigBaseObject(ProtocolVTable);
  *v15 = FigBaseObject;
  v15[1] = v10;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        v13(a2, v15);
        FigBaseObject = *v15;
      }
    }
  }

  if (v16[0] < FigBaseObject)
  {
    return -1;
  }

  else
  {
    return v16[0] > FigBaseObject;
  }
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
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

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a1;
  *(DerivedStorage + 48) = a2;
  return 0;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 56) = a1;
  *(DerivedStorage + 64) = a2;
  return 0;
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererStackLayoutRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererStackLayoutRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t RegisterFigCaptionRendererStackLayoutRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferProcessorCreateForCaptionConverter(uint64_t a1, int a2, int a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    FigSampleBufferProcessorGetClassID();
    v8 = CMDerivedObjectCreate();
    if (!v8)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 20) = a2 == 0;
      *(DerivedStorage + 4) = 0;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a2;
      *(DerivedStorage + 16) = a3;
      *(DerivedStorage + 21) = a3 == 0;
      *(DerivedStorage + 22) = 0;
      *a5 = 0;
    }
  }

  else
  {
    FigSampleBufferProcessorCreateForCaptionConverter_cold_1(&v11);
    return v11;
  }

  return v8;
}

uint64_t captionConverter_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  return 0;
}

void captionConverter_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *captionConverter_copyDebugDesc()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CFGetAllocator(DerivedStorage);
  Mutable = CFStringCreateMutable(v1, 0);
  v3 = CFGetRetainCount(DerivedStorage);
  if (*DerivedStorage)
  {
    v4 = " (invalidated)";
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_CaptionConverter %p> retainCount: %d%s allocator: %p ", DerivedStorage, v3, v4, v5);
  v6 = DerivedStorage[3];
  CFStringAppendFormat(Mutable, 0, @"media type %c%c%c%c sub type %c%c%c%c", HIBYTE(v6), BYTE2(v6), BYTE1(v6), v6, HIBYTE(v6), BYTE2(v6), BYTE1(v6), v6);
  return Mutable;
}

uint64_t captionConverter_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    captionConverter_setOutputCallback_cold_1(&v8);
    return v8;
  }

  else
  {
    v6 = DerivedStorage;
    result = 0;
    *(v6 + 3) = a3;
    *(v6 + 4) = a2;
  }

  return result;
}

uint64_t captionConverter_finishPendingProcessing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    captionConverter_finishPendingProcessing_cold_1(&v6);
    return v6;
  }

  else if (*(DerivedStorage + 32))
  {
    if (*(DerivedStorage + 22))
    {
      return 0;
    }

    v2 = *(DerivedStorage + 48);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v3)
      {
        v4 = v2;

        return v3(v4);
      }
    }

    else
    {
      v5 = *(DerivedStorage + 40);
      if (!v5)
      {
        return 0;
      }

      v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v3)
      {
        v4 = v5;

        return v3(v4);
      }
    }

    return 4294954514;
  }

  else
  {
    captionConverter_finishPendingProcessing_cold_2(&v7);
    return v7;
  }
}

uint64_t captionConverter_ToSbufOutputCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 32))(*(DerivedStorage + 24), 0, a1);
  return 0;
}

uint64_t captionConverter_FromSbufOutputCallback(uint64_t a1, __int128 *a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    v8 = *a2;
    v9 = *(a2 + 2);
    v6 = FigSampleBufferCreateForCaptionGroup();
    if (!v6)
    {
      (*(v5 + 32))(*(v5 + 24), 0, v10);
    }
  }

  else
  {
    captionConverter_FromSbufOutputCallback_cold_1(&v8);
    return v8;
  }

  return v6;
}

BOOL FigFormatReaderIsRemote(_BOOL8 result)
{
  if (result)
  {
    FigFormatReaderGetFigBaseObject(result);
    if (remoteFormatReader_GetClassID_sRegisterRemoteFormatReaderClassOnce != -1)
    {
      FigFormatReaderIsRemote_cold_1();
    }

    return CMBaseObjectIsMemberOfClass() != 0;
  }

  return result;
}

BOOL FigTrackReaderIsRemote(_BOOL8 result)
{
  if (result)
  {
    FigTrackReaderGetFigBaseObject(result);
    if (remoteTrackReader_GetClassID_sRegisterRemoteTrackReaderClassOnce != -1)
    {
      FigTrackReaderIsRemote_cold_1();
    }

    return CMBaseObjectIsMemberOfClass() != 0;
  }

  return result;
}

uint64_t remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(unsigned int a1, void *a2)
{
  v3 = &gFormatReaderRemoteClients + 40 * a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient_block_invoke;
  block[3] = &__block_descriptor_tmp_17_0;
  v7 = a1;
  if (*v3 != -1)
  {
    dispatch_once(&gFormatReaderRemoteClients + 5 * a1, block);
  }

  v4 = *(v3 + 2);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  return *(v3 + 2);
}

uint64_t remoteFormatReaderClient_CopyConnection(uint64_t a1, int a2, void *a3)
{
  if (a2 == 1)
  {
    result = FigXPCRemoteClientCreateSecondaryConnection();
  }

  else
  {
    result = FigXPCRemoteClientCopyPrimaryConnection();
  }

  if (!result)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t FigFormatReaderXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteFormatReader_GetObjectID(a1, a2);
    }

    else
    {
      FigFormatReaderXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigFormatReaderXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t CreateRemoteFormatReader(uint64_t a1, void *a2)
{
  if (remoteFormatReader_GetClassID_sRegisterRemoteFormatReaderClassOnce != -1)
  {
    FigFormatReaderIsRemote_cold_1();
  }

  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  inited = InitCommonFormatReaderPropertyCacheMutex(DerivedStorage + 24);
  if (!inited)
  {
    *a2 = 0;
  }

  return inited;
}

uint64_t CommonFormatReaderObjectCompleteObjectSetup(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[1] = CFRetain(a3);

  return FigXPCConnectionAssociateObject();
}

uint64_t SetupCommonFormatReaderPropertyCache(CFMutableDictionaryRef *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a1 = Mutable;
  if (Mutable)
  {
    return 0;
  }

  SetupCommonFormatReaderPropertyCache_cold_1(&v4);
  return v4;
}

uint64_t remoteFormatReader_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteFormatReader_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteTrackReader_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteTrackReader_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread(uint64_t a1, void *a2)
{
  if (!a2)
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread_cold_3(&v14);
    return v14;
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  if (qword_1EAF19468 != -1)
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread_cold_1();
  }

  if (!remoteSampleCursor_useEventLink_prefersEventLink)
  {
    v4 = 0;
LABEL_20:
    v10 = 0;
    *a2 = v4;
    return v10;
  }

  if (remoteFigSampleCursor_prepareForEventLinkCallsFromConsistentThread_onceToken != -1)
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread_cold_2();
  }

  v3 = MEMORY[0x19A8D3620](_MergedGlobals_157);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote();
  v8 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v12);
  v5 = v12;
  if (v8)
  {
    v10 = v8;
    v4 = 0;
  }

  else
  {
    AssociatedEventLink = remoteFormatReaderClient_CopyConnection(v12, 0, &v14);
    v6 = v14;
    if (!AssociatedEventLink)
    {
      AssociatedEventLink = FigXPCConnectionCreateAssociatedEventLink();
      if (!AssociatedEventLink)
      {
        AssociatedEventLink = MEMORY[0x19A8D3680](_MergedGlobals_157, v13);
        if (!AssociatedEventLink)
        {
          v4 = v13;
LABEL_15:
          v10 = 0;
          v13 = 0;
          if (!v6)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }

    v10 = AssociatedEventLink;
    v4 = 0;
    if (v6)
    {
LABEL_16:
      CFRelease(v6);
      v5 = v12;
    }
  }

LABEL_17:
  if (v5)
  {
    CFRelease(v5);
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v10;
}

uint64_t remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote()
{
  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    return 1;
  }

  result = FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t FigTrackReaderXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteTrackReader_GetObjectID(a1, a2);
    }

    else
    {
      FigTrackReaderXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigTrackReaderXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteSampleCursor_GetObjectID(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    if (*(v3 + 24))
    {
      remoteSampleCursor_GetObjectID_cold_1(&v5);
      return v5;
    }

    else
    {
      result = 0;
      *a2 = *(v3 + 16);
    }
  }

  else
  {
    remoteSampleCursor_GetObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

void CommonFormatReaderObjectDeadConnectionCallback(char *cf)
{
  if (!cf)
  {
    goto LABEL_6;
  }

  v2 = CFGetTypeID(cf);
  if (FigServerSampleCursorSubscriptionGetTypeID_sRegisterFigServerSampleCursorSubscriptionTypeOnce != -1)
  {
    CommonFormatReaderObjectDeadConnectionCallback_cold_1();
  }

  if (v2 == sFigServerSampleCursorSubscriptionID)
  {
    v3 = cf + 24;
  }

  else
  {
LABEL_6:
    v3 = (CMBaseObjectGetDerivedStorage() + 16);
  }

  *v3 = 1;
}

uint64_t CommonFormatReaderObjectNotificationFilter(const void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, __CFDictionary **a5)
{
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == FigFormatReaderGetTypeID())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (FigCFEqual())
      {
        v10 = FigCFDictionaryCopyArrayOfKeys();
        if (v10)
        {
          v11 = v10;
          Count = CFArrayGetCount(v10);
          if (Count >= 1)
          {
            v13 = Count;
            for (i = 0; i != v13; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
              CommonFormatReaderObjectRemovePropertyFromCache((DerivedStorage + 24), ValueAtIndex);
            }
          }

          CFRelease(v11);
        }
      }

      else if (FigCFEqual())
      {
        CommonFormatReaderObjectRemovePropertyFromCache((DerivedStorage + 24), @"Cache_Tracks");
      }

      return 0;
    }

    v16 = CFGetTypeID(a1);
    if (v16 == FigTrackReaderGetTypeID())
    {
      v17 = CMBaseObjectGetDerivedStorage();
      if (FigCFEqual())
      {
        v18 = FigCFDictionaryCopyArrayOfKeys();
        if (v18)
        {
          v19 = v18;
          v20 = CFArrayGetCount(v18);
          if (v20 < 1)
          {
            v22 = 0;
          }

          else
          {
            v21 = v20;
            v22 = 0;
            v23 = 0;
            v24 = 0;
            theDict = 0;
            value = *MEMORY[0x1E695E4D0];
            do
            {
              v25 = CFArrayGetValueAtIndex(v19, v23);
              CommonFormatReaderObjectRemovePropertyFromCache((v17 + 40), v25);
              v26 = CFEqual(v25, @"ISOUserDataReader");
              v27 = kFigTrackProperty_ISOUserDataArray;
              if (v26 || (v28 = CFEqual(v25, @"QuickTimeMetadataReader"), v27 = kFigTrackProperty_QuickTimeMetadataArray, v28) || (v29 = CFEqual(v25, @"QuickTimeUserDataReader"), v27 = kFigTrackProperty_QuickTimeUserDataArray, v29))
              {
                v30 = *v27;
                if (*v27 && !CFDictionaryContainsKey(a4, *v27))
                {
                  CommonFormatReaderObjectRemovePropertyFromCache((v17 + 40), v30);
                  MutableCopy = theDict;
                  if (!theDict)
                  {
                    MutableCopy = FigCFDictionaryCreateMutableCopy();
                    v22 = 4;
                  }

                  theDict = MutableCopy;
                  CFDictionarySetValue(MutableCopy, v30, value);
                }

                v24 = 1;
              }

              ++v23;
            }

            while (v21 != v23);
            if (v24 && !CFDictionaryContainsKey(a4, @"CommonMetadataArray"))
            {
              CommonFormatReaderObjectRemovePropertyFromCache((v17 + 40), @"CommonMetadataArray");
              v33 = theDict;
              if (!theDict)
              {
                v33 = FigCFDictionaryCreateMutableCopy();
                v22 = 4;
              }

              CFDictionarySetValue(v33, @"CommonMetadataArray", value);
            }

            else
            {
              v33 = theDict;
            }

            if (v22 != 4)
            {
              CFRelease(v19);
              if (!v33)
              {
                return v22;
              }

              v34 = v33;
LABEL_38:
              CFRelease(v34);
              return v22;
            }

            *a5 = v33;
          }

          v34 = v19;
          goto LABEL_38;
        }
      }
    }
  }

  return 0;
}

uint64_t remoteFormatReaderClient_PlaybackServerDeadServerConnectionCallback()
{
  FigSimpleMutexLock();
  byte_1ED4CA9C8 = 0;

  return FigSimpleMutexUnlock();
}

uint64_t remoteFormatReaderClient_MediaParserDeadServerConnectionCallback()
{
  FigSimpleMutexLock();
  byte_1ED4CA9F0 = 0;

  return FigSimpleMutexUnlock();
}

uint64_t registerFigServerSampleCursorSubscriptionType()
{
  result = _CFRuntimeRegisterClass();
  sFigServerSampleCursorSubscriptionID = result;
  return result;
}

double FigServerSampleCursorSubscription_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigServerSampleCursorSubscription_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }
}

__CFString *FigServerSampleCursorSubscription_CopyFormattingDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = "-DEAD";
  if (!*(a1 + 24))
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"[%016llx]@%d%s", *(a1 + 16), *(a1 + 40), v5);
  return v4;
}

__CFString *FigServerSampleCursorSubscription_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigServerSampleCursorSubscription %p - %@>", a1, a1);
  return Mutable;
}

uint64_t InitCommonFormatReaderPropertyCacheMutex(uint64_t a1)
{
  v2 = FigSimpleMutexCreate();
  *(a1 + 8) = v2;
  if (v2)
  {
    return 0;
  }

  InitCommonFormatReaderPropertyCacheMutex_cold_1(&v4);
  return v4;
}

__CFString *remoteFormatReader_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v5 = " SERVER DIED";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigFormatReaderRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v4, *DerivedStorage, v5);
  return Mutable;
}

uint64_t TeardownCommonFormatReaderPropertyCache(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  result = FigSimpleMutexDestroy();
  *(a1 + 8) = 0;
  return result;
}

uint64_t CreateRemoteMetadataReader(uint64_t a1, void *a2)
{
  FigMetadataReaderGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    *a2 = 0;
  }

  return v3;
}

__CFString *remoteMetadataReader_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  if (*(DerivedStorage + 16))
  {
    v7 = " SERVER DIED";
  }

  else
  {
    v7 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigMetadataReaderRemote(XPC) %p retainCount: %ld allocator: %p ObjectID:%016llx%s>", a1, v5, v6, *DerivedStorage, v7);
  return Mutable;
}

uint64_t remoteMetadataReader_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteMetadataReader_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteSampleCursor_copyByteStreamTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v10 = 0;
  v9 = 0;
  DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote();
  ServerPID = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v9);
  if (ServerPID)
  {
    goto LABEL_8;
  }

  ServerPID = FigXPCRemoteClientGetServerPID();
  if (ServerPID)
  {
    goto LABEL_8;
  }

  if (FigServer_IsServerProcess())
  {
    ServerPID = FigByteStreamServerCopyByteStreamForID(a2, v10, &cf);
    if (!ServerPID)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = ServerPID;
    goto LABEL_9;
  }

  ServerPID = FigByteStreamRemoteCreateWithPlaybackProcessObjectID(a2, v10, &cf);
  if (ServerPID)
  {
    goto LABEL_8;
  }

LABEL_5:
  v7 = 0;
  if (a3)
  {
    *a3 = cf;
    cf = 0;
    goto LABEL_11;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t remoteFormatReader_CopyTrackByID(const void *a1, int a2, CFTypeRef *a3, _DWORD *a4)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 24))
  {
    v24 = 0;
    xdict = 0;
    cf = 0;
    v23 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    ObjectID = remoteFormatReader_GetObjectID(a1, &v23);
    if (ObjectID)
    {
      v13 = ObjectID;
LABEL_12:
      FigXPCRelease();
      FigXPCRelease();
      FigXPCConnectionKillServerOnTimeout();
      return v13;
    }

    v10 = FigXPCCreateBasicMessage();
    if (!v10)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", a2);
      if (!a3 || (xpc_dictionary_set_BOOL(xdict, "TrackReaderDesired", 1), v11 = CFGetAllocator(a1), v10 = CreateRemoteTrackReader(v11, *(DerivedStorage + 40), &cf), !v10))
      {
        v10 = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!v10)
        {
          uint64 = xpc_dictionary_get_uint64(v24, "MediaType");
          xpc_dictionary_get_BOOL(v24, "AllowsPropertyCaching");
          if (!a3)
          {
            goto LABEL_8;
          }

          xpc_dictionary_get_uint64(v24, *MEMORY[0x1E69615A0]);
          CompleteTrackReaderCopy();
          if (!v10)
          {
            *a3 = cf;
            cf = 0;
LABEL_8:
            v13 = 0;
            if (a4)
            {
              *a4 = uint64;
            }

            goto LABEL_10;
          }
        }
      }
    }

    v13 = v10;
LABEL_10:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_12;
  }

  xdict = 0;
  v15 = remoteFormatReader_ensureAndCopyCachedTrackArray(a1, &xdict);
  if (v15)
  {
    v13 = v15;
  }

  else
  {
    Count = CFArrayGetCount(xdict);
    if (Count < 1)
    {
LABEL_19:
      v13 = 4294954453;
    }

    else
    {
      v17 = Count;
      v18 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(xdict, v18);
        v19 = CMBaseObjectGetDerivedStorage();
        if (*(v19 + 24) == a2)
        {
          break;
        }

        if (v17 == ++v18)
        {
          goto LABEL_19;
        }
      }

      v20 = v19;
      ValueAtIndex = CFArrayGetValueAtIndex(xdict, v18);
      if (a3)
      {
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *a3 = ValueAtIndex;
      }

      v13 = 0;
      if (a4)
      {
        *a4 = *(v20 + 28);
      }
    }
  }

  if (xdict)
  {
    CFRelease(xdict);
  }

  return v13;
}

uint64_t remoteFormatReader_CopyTrackByType(const void *a1, int64_t a2, unsigned int a3, CFTypeRef *a4, _DWORD *a5)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 24))
  {
    v28 = 0;
    xdict = 0;
    cf = 0;
    v27 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    ObjectID = remoteFormatReader_GetObjectID(a1, &v27);
    if (ObjectID)
    {
      v15 = ObjectID;
LABEL_12:
      FigXPCRelease();
      FigXPCRelease();
      FigXPCConnectionKillServerOnTimeout();
      return v15;
    }

    v12 = FigXPCCreateBasicMessage();
    if (!v12)
    {
      xpc_dictionary_set_int64(xdict, "TrackIndex", a2);
      xpc_dictionary_set_uint64(xdict, "MediaType", a3);
      if (!a4 || (xpc_dictionary_set_BOOL(xdict, "TrackReaderDesired", 1), v13 = CFGetAllocator(a1), v12 = CreateRemoteTrackReader(v13, *(DerivedStorage + 40), &cf), !v12))
      {
        v12 = FigXPCConnectionSendSyncMessageCreatingReply();
        if (!v12)
        {
          int64 = xpc_dictionary_get_int64(v28, "TrackID");
          xpc_dictionary_get_BOOL(v28, "AllowsPropertyCaching");
          if (!a4)
          {
            goto LABEL_8;
          }

          xpc_dictionary_get_uint64(v28, *MEMORY[0x1E69615A0]);
          CompleteTrackReaderCopy();
          if (!v12)
          {
            *a4 = cf;
            cf = 0;
LABEL_8:
            v15 = 0;
            if (a5)
            {
              *a5 = int64;
            }

            goto LABEL_10;
          }
        }
      }
    }

    v15 = v12;
LABEL_10:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_12;
  }

  xdict = 0;
  v17 = remoteFormatReader_ensureAndCopyCachedTrackArray(a1, &xdict);
  if (v17)
  {
    v15 = v17;
    goto LABEL_22;
  }

  Count = CFArrayGetCount(xdict);
  if (Count < 1)
  {
LABEL_21:
    v15 = 4294954453;
    goto LABEL_22;
  }

  v19 = Count;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(xdict, v20);
    v23 = CMBaseObjectGetDerivedStorage();
    if (*(v23 + 28) == a3)
    {
      break;
    }

LABEL_20:
    if (v19 == ++v20)
    {
      goto LABEL_21;
    }
  }

  if (v21 != a2)
  {
    ++v21;
    goto LABEL_20;
  }

  v24 = v23;
  if (a4)
  {
    if (ValueAtIndex)
    {
      v25 = CFRetain(ValueAtIndex);
    }

    else
    {
      v25 = 0;
    }

    *a4 = v25;
  }

  v15 = 0;
  if (a5)
  {
    *a5 = *(v24 + 24);
  }

LABEL_22:
  if (xdict)
  {
    CFRelease(xdict);
  }

  return v15;
}

uint64_t remoteFormatReader_CopyFormatReaderWithSecondaryConnection(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  cf = 0;
  if (*(DerivedStorage + 16))
  {
    remoteFormatReader_CopyFormatReaderWithSecondaryConnection_cold_1(&v22);
    v15 = v22;
  }

  else
  {
    v5 = DerivedStorage;
    DefaultRemoteClientSelector_PrefersRemote = remoteFormatReaderClient_GetDefaultRemoteClientSelector_PrefersRemote();
    v7 = remoteFormatReaderClient_EnsureClientEstablishedAndCopyRemoteClient(DefaultRemoteClientSelector_PrefersRemote, &v18);
    v8 = v18;
    if (v7 || (v7 = remoteFormatReaderClient_CopyConnection(v18, 1, &cf), v7) || (v7 = FigXPCCreateBasicMessage(), v7) || (v9 = cf, v7 = FigXPCConnectionSendSyncMessageCreatingReply(), v7) || (uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]), v11 = CFGetAllocator(a1), v7 = CreateRemoteFormatReader(v11, &v19), v7) || (v12 = v19, v7 = CommonFormatReaderObjectCompleteObjectSetup(v19, uint64, v9), v7))
    {
      v15 = v7;
      if (v8)
      {
LABEL_11:
        CFRelease(v8);
      }
    }

    else
    {
      v13 = CMBaseObjectGetDerivedStorage();
      v14 = *(v5 + 40);
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      v15 = 0;
      *(v13 + 40) = v14;
      *a2 = v12;
      v19 = 0;
      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v19)
  {
    CFRelease(v19);
  }

  return v15;
}

uint64_t CreateRemoteTrackReader(uint64_t a1, const void *a2, void *a3)
{
  if (remoteTrackReader_GetClassID_sRegisterRemoteTrackReaderClassOnce != -1)
  {
    FigTrackReaderIsRemote_cold_1();
  }

  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = a2 ? CFRetain(a2) : 0;
  *(DerivedStorage + 32) = v8;
  v6 = FigPartialSampleTableOutOfBandObjectRegistryCreate(a1, (DerivedStorage + 56));
  if (v6)
  {
    return v6;
  }

  inited = InitCommonFormatReaderPropertyCacheMutex(DerivedStorage + 40);
  if (!inited)
  {
    *a3 = 0;
  }

  return inited;
}

__CFString *remoteTrackReader_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v5 = " SERVER DIED";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigTrackReaderRemote(XPC) %p retainCount: %ld trackID %d mediaType %c%c%c%c ObjectID: %016llx%s>", a1, v4, *(DerivedStorage + 24), HIBYTE(*(DerivedStorage + 28)), BYTE2(*(DerivedStorage + 28)), BYTE1(*(DerivedStorage + 28)), *(DerivedStorage + 28), *DerivedStorage, v5);
  return Mutable;
}

__CFString *remoteEditCursorService_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigEditCursorServiceRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteEditCursorService_CreateCursorAtTrackTime(const void *a1, __int128 *a2, void *a3)
{
  v16 = 0;
  v17 = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteEditCursorService_CreateCursorAtTrackTime_cold_2(&v13);
LABEL_13:
    v11 = v13;
    goto LABEL_14;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 16) && !remoteEditCursorService_CreateCursorAtTrackTime_cold_1(&v13))
  {
    goto LABEL_13;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7 || (v13 = *a2, v14 = *(a2 + 2), v7 = FigXPCMessageSetCMTime(), v7) || (v8 = CFGetAllocator(a1), v7 = CreateRemoteEditCursor(v8, &v17), v7) || (v7 = FigXPCConnectionSendSyncMessageCreatingReply(), v7))
  {
    v11 = v7;
LABEL_14:
    v10 = v17;
    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v10 = v17;
  v11 = CommonFormatReaderObjectCompleteObjectSetup(v17, uint64, *(DerivedStorage + 8));
  if (!v11)
  {
    *a3 = v10;
    goto LABEL_9;
  }

LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v11;
}

uint64_t CreateRemoteEditCursor(uint64_t a1, void *a2)
{
  FigEditCursorGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    *a2 = 0;
  }

  return v3;
}

__CFString *remoteEditCursor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigEditCursorRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteEditCursor_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteEditCursor_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteEditCursor_Copy(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = 0;
  v11 = 0;
  xdict = 0;
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    remoteEditCursor_Copy_cold_1(&v15);
    v9 = v15;
    goto LABEL_11;
  }

  ObjectID = remoteEditCursor_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (v6 = CFGetAllocator(a1), ObjectID = CreateRemoteEditCursor(v6, &v11), ObjectID) || (ObjectID = FigXPCConnectionSendSyncMessageCreatingReply(), ObjectID))
  {
    v9 = ObjectID;
LABEL_11:
    v8 = v11;
    goto LABEL_12;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v8 = v11;
  v9 = CommonFormatReaderObjectCompleteObjectSetup(v11, uint64, *(DerivedStorage + 8));
  if (!v9)
  {
    *a2 = v8;
    goto LABEL_8;
  }

LABEL_12:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCConnectionKillServerOnTimeout();
  return v9;
}

__CFString *remoteSampleCursorService_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSampleCursorServiceRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteSampleCursorService_CreateCursorAtPresentationTimeStamp(const void *a1, __int128 *a2, void *a3, BOOL *a4, BOOL *a5)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  return CreateCursorWithPresentationTimeStamp(a1, &v6, 1396732020, 0, a3, a4, a5);
}

uint64_t remoteSampleCursorService_CreateCursorNearPresentationTimeStamp(const void *a1, __int128 *a2, int a3, void *a4, BOOL *a5, BOOL *a6)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  return CreateCursorWithPresentationTimeStamp(a1, &v7, 1400795252, a3, a4, a5, a6);
}

uint64_t remoteSampleCursorService_CreateCursorAtFirstSampleInDecodeOrder(const void *a1, void *a2)
{
  if (a2)
  {

    return CreateCursorAtSampleInDecodeOrder(a1, 1399222900, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    remoteSampleCursorService_CreateCursorAtFirstSampleInDecodeOrder_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteSampleCursorService_CreateCursorAtLastSampleInDecodeOrder(const void *a1, void *a2)
{
  if (a2)
  {

    return CreateCursorAtSampleInDecodeOrder(a1, 1399616372, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    remoteSampleCursorService_CreateCursorAtLastSampleInDecodeOrder_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteSampleCursorService_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteSampleCursorService_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t FigServerSampleCursorSubscriptionCreate(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t *a5)
{
  if (a5)
  {
    if (FigServerSampleCursorSubscriptionGetTypeID_sRegisterFigServerSampleCursorSubscriptionTypeOnce != -1)
    {
      CommonFormatReaderObjectDeadConnectionCallback_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      v11 = FigXPCConnectionAssociateObject();
      if (v11)
      {
        v14 = v11;
        CFRelease(v10);
      }

      else
      {
        *(v10 + 16) = a3;
        *(v10 + 40) = 0;
        if (a2)
        {
          v12 = CFRetain(a2);
        }

        else
        {
          v12 = 0;
        }

        *(v10 + 32) = v12;
        if (a4)
        {
          v13 = CFRetain(a4);
        }

        else
        {
          v13 = 0;
        }

        v14 = 0;
        *(v10 + 48) = v13;
        *a5 = v10;
      }
    }

    else
    {
      FigServerSampleCursorSubscriptionCreate_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    FigServerSampleCursorSubscriptionCreate_cold_3(&v17);
    return v17;
  }

  return v14;
}

uint64_t CreateRemoteSampleCursor(uint64_t a1, const void *a2, int a3, uint64_t a4, const void *a5, const void *a6, const void *a7, void *a8)
{
  if (remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableSetupOnce != -1)
  {
    CreateRemoteSampleCursor_cold_1();
  }

  v12 = 0;
  while (1)
  {
    if (v12)
    {
      pthread_rwlock_wrlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
    }

    else
    {
      pthread_rwlock_rdlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
    }

    Value = CFDictionaryGetValue(remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableDictionary, a3);
    v14 = Value;
    if (v12)
    {
      if (!Value)
      {
        break;
      }
    }

    if (!Value)
    {
      v12 = 1;
    }

    pthread_rwlock_unlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
    if (v14)
    {
      goto LABEL_28;
    }
  }

  v15 = malloc_type_malloc(0xF0uLL, 0x10C004098B2CDEBuLL);
  v16 = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  __copy_assignment_4_8_t0w8_pa0_51792_8_t16w16_pa0_52214_32_pa0_24028_40_pa0_18179_48_pa0_57859_56_pa0_13550_64_pa0_54719_72_pa0_1935_80_t88w24_pa0_12_112_pa0_25791_120_pa0_51134_128_t136w8_pa0_25053_144_pa0_46486_152_pa0_25009_160_pa0_20936_168_pa0_50495_176_pa0_49003_184_pa0_11258_192_pa0_17621_200_pa0_49302_208_pa0_26204_216_pa0_58389_224_pa0_36478_232(v15, &kFigSampleCursorRemote_FigSampleCursorClass);
  *v16 = 0;
  v16[1] = &kFigSampleCursorRemote_BaseClass;
  if ((a3 & 2) != 0)
  {
    if ((a3 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15[8] = 0;
    if ((a3 & 4) != 0)
    {
LABEL_15:
      if ((a3 & 8) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  v15[10] = 0;
  if ((a3 & 8) != 0)
  {
LABEL_16:
    if ((a3 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15[18] = 0;
  if ((a3 & 0x10) != 0)
  {
LABEL_17:
    if ((a3 & 0x20) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v15[14] = 0;
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_23:
  v15[19] = 0;
  if ((a3 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((a3 & 0x40) == 0)
  {
LABEL_19:
    v15[9] = 0;
    goto LABEL_26;
  }

LABEL_25:
  if (!v15)
  {
    v17 = 0;
    goto LABEL_27;
  }

LABEL_26:
  v17 = v15;
LABEL_27:
  v16[2] = v17;
  CFDictionarySetValue(remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableDictionary, a3, v16);
  pthread_rwlock_unlock(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock);
LABEL_28:
  if (remoteSampleCursor_GetClassID_sRegisterRemoteSampleCursorClassOnce != -1)
  {
    CreateRemoteSampleCursor_cold_2();
  }

  v18 = CMDerivedObjectCreate();
  if (v18)
  {
    return v18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 72) = FigSimpleMutexCreate();
  v20 = a2 ? CFRetain(a2) : 0;
  *(DerivedStorage + 64) = v20;
  v21 = a5 ? CFRetain(a5) : 0;
  *DerivedStorage = v21;
  v18 = FigServerSampleCursorSubscriptionSubscribe(a5);
  if (v18)
  {
    return v18;
  }

  if (!a4)
  {
    v31 = 5912;
LABEL_59:
    CreateRemoteSampleCursor_cold_3(v31, &v35);
    return v35;
  }

  v22 = *(a4 + 24);
  if (!v22)
  {
    v31 = 5915;
    goto LABEL_59;
  }

  *(DerivedStorage + 40) = CFRetain(v22);
  v23 = *a4;
  if (*a4)
  {
    v23 = CFRetain(v23);
  }

  *(DerivedStorage + 16) = v23;
  v24 = *(a4 + 40);
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  *(DerivedStorage + 56) = v24;
  v25 = *(a4 + 8);
  if (v25)
  {
    v18 = FigPartialSampleTableAccessorCopy(v25, (DerivedStorage + 24));
    if (v18)
    {
      return v18;
    }
  }

  v26 = *(a4 + 32);
  if (v26)
  {
    v26 = CFRetain(v26);
  }

  *(DerivedStorage + 48) = v26;
  *(DerivedStorage + 32) = *(a4 + 16);
  *(DerivedStorage + 360) = FigCopyCommonMemoryPool();
  v27 = a6;
  if (a6)
  {
    v27 = CFRetain(a6);
  }

  *(DerivedStorage + 376) = v27;
  if (a7)
  {
    v28 = CFRetain(a7);
  }

  else
  {
    v28 = 0;
  }

  v29 = 0;
  *(DerivedStorage + 368) = v28;
  *a8 = 0;
  return v29;
}

uint64_t __remoteSampleCursor_useEventLink_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  remoteSampleCursor_useEventLink_prefersEventLink = result;
  return result;
}

uint64_t FigServerSampleCursorSubscriptionSubscribe(uint64_t a1)
{
  if (*(a1 + 16))
  {
    FigAtomicIncrement32();
    if (remoteSampleCursor_alwaysEnsureIndependentSubscription_alwaysEnsureIndependentSubscriptionOnce == -1)
    {
      return 0;
    }

    else
    {
      FigServerSampleCursorSubscriptionSubscribe_cold_1();
      return 0;
    }
  }

  else
  {
    FigServerSampleCursorSubscriptionSubscribe_cold_2(&v2);
    return v2;
  }
}

CFMutableDictionaryRef __remoteFigSampleCursor_getVTableWithOptionalMethods_block_invoke()
{
  pthread_rwlock_init(&remoteFigSampleCursor_getVTableWithOptionalMethods_sReadWriteLock, 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  remoteFigSampleCursor_getVTableWithOptionalMethods_sRemoteFigSampleCursorVTableDictionary = result;
  return result;
}

uint64_t __copy_assignment_4_8_t0w8_pa0_51792_8_t16w16_pa0_52214_32_pa0_24028_40_pa0_18179_48_pa0_57859_56_pa0_13550_64_pa0_54719_72_pa0_1935_80_t88w24_pa0_12_112_pa0_25791_120_pa0_51134_128_t136w8_pa0_25053_144_pa0_46486_152_pa0_25009_160_pa0_20936_168_pa0_50495_176_pa0_49003_184_pa0_11258_192_pa0_17621_200_pa0_49302_208_pa0_26204_216_pa0_58389_224_pa0_36478_232(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = *(a2 + 80);
  v2 = *(a2 + 88);
  *(result + 104) = *(a2 + 104);
  *(result + 88) = v2;
  *(result + 112) = *(a2 + 112);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = *(a2 + 128);
  *(result + 136) = *(a2 + 136);
  *(result + 144) = *(a2 + 144);
  *(result + 152) = *(a2 + 152);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = *(a2 + 176);
  *(result + 184) = *(a2 + 184);
  *(result + 192) = *(a2 + 192);
  *(result + 200) = *(a2 + 200);
  *(result + 208) = *(a2 + 208);
  *(result + 216) = *(a2 + 216);
  *(result + 224) = *(a2 + 224);
  *(result + 232) = *(a2 + 232);
  return result;
}

uint64_t __remoteSampleCursor_alwaysEnsureIndependentSubscription_block_invoke()
{
  if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  }

  result = FigGetCFPreferenceBooleanWithDefault();
  remoteSampleCursor_alwaysEnsureIndependentSubscription_alwaysEnsureIndependentSubscription = result;
  return result;
}

double __FigServerSampleCursorSubscriptionUnsubscribeViaEventLink_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1935893113;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

uint64_t __remoteSampleCursor_usePartialSampleTable_block_invoke()
{
  if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  }

  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_4 = result;
  return result;
}

uint64_t remoteSampleCursor_maybeCreateCopiedCursorViaEventLink(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(a2 + 328);
  if (!v5)
  {
    return 0;
  }

  v7 = *(*DerivedStorage + 32);

  return remoteSampleCursor_finishCopy(a1, v5, v7);
}

double __remoteSampleCursor_copySampleLocationFromEventLinkServer_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1936944227;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

double __remoteSampleCursor_copySampleChunkInfoFromEventLinkServer_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1935894635;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

double __remoteSampleCursor_copyFormatDescriptionFromEventLinkServer_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      result = 0.0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *(dataPointerOut + 4) = 1935962979;
      *v5 = *(a1 + 32);
      *(v5 + 1) = 0;
    }
  }

  return result;
}

uint64_t remoteSampleCursor_stepInCacheAndReportStepsTaken(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  if (a3 >= 1)
  {
    v9 = 1;
  }

  v42 = v9;
  v43 = DerivedStorage;
  while (1)
  {
    v10 = v6[3];
    if (!v10)
    {
      break;
    }

    v48 = 0;
    v11 = v10[18];
    v46 = *MEMORY[0x1E6960C70];
    *&v47.value = *MEMORY[0x1E6960C70];
    v12 = *(MEMORY[0x1E6960C70] + 16);
    v47.epoch = v12;
    if (a2)
    {
      DecodeTimeRange = FigPartialSampleTableAccessorStepInDecodeOrder(v10, a3, &v48);
      if (DecodeTimeRange)
      {
        return DecodeTimeRange;
      }

      if (a3 != v48)
      {
        v14 = *(MEMORY[0x1E6960C98] + 32);
        *&v50[16] = *(MEMORY[0x1E6960C98] + 16);
        *&v50[32] = v14;
        *v50 = *MEMORY[0x1E6960C98];
        DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v6[2], v50, 0);
        if (DecodeTimeRange)
        {
          return DecodeTimeRange;
        }

        if (a3 < 1)
        {
          *&v47.value = *v50;
          epoch = *&v50[16];
        }

        else
        {
          range = *v50;
          CMTimeRangeGetEnd(&v54.start, &range);
          *&v47.value = *&v54.start.value;
          epoch = v54.start.epoch;
        }

        v47.epoch = epoch;
      }
    }

    else
    {
      DecodeTimeRange = FigPartialSampleTableAccessorStepInPresentationOrder(v10, a3, &v48, &v47);
      if (DecodeTimeRange)
      {
        return DecodeTimeRange;
      }
    }

    v16 = v48;
    v17 = &v7[*(v6[3] + 144) - v11];
    if (a3 == v48)
    {
      v8 += a3;
      v6[4] += v17;
      break;
    }

    value = v47.value;
    flags = v47.flags;
    timescale = v47.timescale;
    v19 = v47.epoch;
    v20 = CMBaseObjectGetDerivedStorage();
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v21 = *(MEMORY[0x1E6960C98] + 16);
    *&range.start.value = *MEMORY[0x1E6960C98];
    *&range.start.epoch = v21;
    *&range.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    *&v54.start.value = *&range.start.value;
    *&v54.start.epoch = v21;
    *&v54.duration.timescale = *&range.duration.timescale;
    *&start.value = v46;
    start.epoch = v12;
    v45 = v17;
    if (!*(v20 + 48))
    {
LABEL_55:
      v39 = 0;
      v38 = 0;
      value_low = 0;
      goto LABEL_47;
    }

    v22 = v20;
    v23 = *(v20 + 16);
    if (v23)
    {
      if (*(v22 + 24))
      {
        if ((flags & 1) == 0)
        {
          goto LABEL_55;
        }

        SampleCount = FigPartialSampleTableGetDecodeTimeRange(v23, &range, 0);
        if (SampleCount)
        {
          goto LABEL_56;
        }

        v51 = range;
        CMTimeRangeGetEnd(&time2, &v51);
        v51.start.value = value;
        v51.start.timescale = timescale;
        v51.start.flags = flags;
        v51.start.epoch = v19;
        if ((CMTimeCompare(&v51.start, &time2) & 0x80000000) == 0)
        {
          SampleCount = FigPartialSampleTableGetSampleCount(*(v22 + 16), &v56);
          if (!SampleCount)
          {
            v51 = range;
            CMTimeRangeGetEnd(&time2, &v51);
            v51.start.value = value;
            v51.start.timescale = timescale;
            v51.start.flags = flags;
            v51.start.epoch = v19;
            CMTimeRangeFromTimeToTime(&v54, &time2, &v51.start);
            v51 = range;
            CMTimeRangeGetEnd(&start, &v51);
LABEL_26:
            v25 = v56;
            v26 = *(*(v22 + 24) + 144);
            v27 = *(v22 + 48);
            v51 = v54;
            SampleTiming = FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime(v27, &v51, &v59);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            if (!v59)
            {
              v39 = 0;
              v38 = 0;
              value_low = 0;
              v6 = v43;
              goto LABEL_49;
            }

            memset(v50, 0, sizeof(v50));
            SampleTiming = FigPartialSampleTableCreateAccessorAtIndex(v59, 0, &v57);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v57, v50);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            v29 = v57;
            time2 = start;
            rhs = *&v50[48];
            CMTimeSubtract(&v51.start, &time2, &rhs);
            SampleTiming = FigPartialSampleTableAccessorStepByDecodeTime(v29, &v51.start, 0);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v57, v50);
            if (SampleTiming)
            {
              goto LABEL_54;
            }

            v51.start = *&v50[48];
            time2 = start;
            if (CMTimeCompare(&v51.start, &time2))
            {
              remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_2(&v51);
            }

            else
            {
              v30 = v57;
              v31 = v57[18];
              time2.value = value;
              time2.timescale = timescale;
              time2.flags = flags;
              time2.epoch = v19;
              rhs = *&v50[48];
              CMTimeSubtract(&v51.start, &time2, &rhs);
              SampleTiming = FigPartialSampleTableAccessorStepByDecodeTime(v30, &v51.start, 0);
              if (SampleTiming)
              {
                goto LABEL_54;
              }

              SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v57, v50);
              if (SampleTiming)
              {
                goto LABEL_54;
              }

              v51.start = *&v50[48];
              time2.value = value;
              time2.timescale = timescale;
              time2.flags = flags;
              time2.epoch = v19;
              if (!CMTimeCompare(&v51.start, &time2))
              {
                v32 = v57[18];
                SampleTiming = FigPartialSampleTableBrokerCopyInterestTokenForAdjacentTables(*(v22 + 48), v59, &v58);
                if (!SampleTiming)
                {
                  v33 = *(v22 + 56);
                  v34 = v58;
                  *(v22 + 56) = v58;
                  if (v34)
                  {
                    CFRetain(v34);
                  }

                  if (v33)
                  {
                    CFRelease(v33);
                  }

                  v35 = *(v22 + 16);
                  v36 = v59;
                  *(v22 + 16) = v59;
                  if (v36)
                  {
                    CFRetain(v36);
                  }

                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  FigPartialSampleTableAccessorDestroy(*(v22 + 24));
                  value_low = 0;
                  *(v22 + 24) = v57;
                  v57 = 0;
                  v38 = &v32[v25 - v31 - v26];
                  v39 = 1;
                  goto LABEL_46;
                }

LABEL_54:
                value_low = SampleTiming;
                v39 = 0;
                v38 = 0;
LABEL_46:
                v6 = v43;
                goto LABEL_47;
              }

              remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_3(&v51);
            }

            v39 = 0;
            v38 = 0;
            value_low = LODWORD(v51.start.value);
            goto LABEL_46;
          }

LABEL_56:
          value_low = SampleCount;
          v39 = 0;
          v38 = 0;
          goto LABEL_47;
        }

        v51.start.value = value;
        v51.start.timescale = timescale;
        v51.start.flags = flags;
        v51.start.epoch = v19;
        time2 = range.start;
        if (CMTimeCompare(&v51.start, &time2) < 0)
        {
          v56 = 0;
          v51.start.value = value;
          v51.start.timescale = timescale;
          v51.start.flags = flags;
          v51.start.epoch = v19;
          time2 = range.start;
          CMTimeRangeFromTimeToTime(&v54, &v51.start, &time2);
          start = range.start;
          goto LABEL_26;
        }

        remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_1(&v51);
      }

      else
      {
        remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_4(&v51);
      }
    }

    else
    {
      remoteSampleCursor_stepInCacheAndReportStepsTaken_cold_5(&v51);
    }

    v39 = 0;
    v38 = 0;
    value_low = LODWORD(v51.start.value);
LABEL_47:
    if (v59)
    {
      CFRelease(v59);
    }

LABEL_49:
    if (v58)
    {
      CFRelease(v58);
    }

    FigPartialSampleTableAccessorDestroy(v57);
    if (value_low)
    {
      return value_low;
    }

    v8 += v16;
    if (!v39)
    {
      break;
    }

    v7 = &v45[v38];
    a3 = a3 - v42 - v16;
    v8 += v42;
  }

  value_low = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return value_low;
}

uint64_t __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke(void *a1, CMBlockBufferRef theBuffer)
{
  v7 = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &v7, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    result = 4294949526;
    if ((dataPointerOut & 7) == 0 && v7 > 0x197)
    {
      result = 0;
      *(dataPointerOut + 50) = 0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = a1[4];
      v6 = a1[6];
      *(v5 + 1) = a1[5];
      *(v5 + 4) = 1936941671;
      *(v5 + 42) = v6;
      v5[345] = a1[7] != 0;
      v5[344] = a1[8] != 0;
    }
  }

  return result;
}

uint64_t __remoteSampleCursor_getBatchSampleTimingAndSizes_block_invoke_3(int64_t *a1, xpc_object_t xdict)
{
  xpc_dictionary_set_int64(xdict, "SampleCursorBatchMaxSamplesToInclude", a1[4]);
  xpc_dictionary_set_BOOL(xdict, "SampleCursorBatchRequiresSampleSizeEntries", a1[5] != 0);
  xpc_dictionary_set_BOOL(xdict, "SampleCursorBatchRequiresSampleTimingEntries", a1[6] != 0);
  return 0;
}

__CFString *remoteSampleCursor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = FigCFCopyCompactDescription();
  v6 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<FigSampleCursorRemote %p ~> %@/+%lld\n\tcache=%@>", a1, v5, *(DerivedStorage + 32), v6);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

uint64_t __remoteSampleCursor_copyPropertyViaEventLink_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    result = 4294949526;
    if ((dataPointerOut & 7) == 0 && v6 > 0x197)
    {
      *(dataPointerOut + 50) = 0;
      *(v4 + 23) = 0u;
      *(v4 + 24) = 0u;
      *(v4 + 21) = 0u;
      *(v4 + 22) = 0u;
      *(v4 + 19) = 0u;
      *(v4 + 20) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 18) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 11) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 10) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 8) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = *(a1 + 32);
      *(v5 + 1) = 0;
      *(v5 + 4) = 1935896697;
      return FigInMemorySerializerAppendCFString();
    }
  }

  return result;
}

uint64_t __remoteSampleCursor_copyPropertyViaEventLink_block_invoke_2(uint64_t a1, CMBlockBufferRef theBuffer)
{
  dataPointerOut.start.value = 0;
  lengthAtOffsetOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (result)
  {
    return result;
  }

  value = dataPointerOut.start.value;
  result = 4294949526;
  if ((dataPointerOut.start.value & 7) != 0 || lengthAtOffsetOut <= 0x197)
  {
    return result;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      __remoteSampleCursor_copyPropertyViaEventLink_block_invoke_2_cold_1(a1, value);
      return LODWORD(dataPointerOut.start.value);
    }

    if (*(value + 344))
    {
      return FigInMemoryDeserializerCopyCFType();
    }

    return 0;
  }

  v5 = *(value + 188);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  result = 0;
  v6 = *(value + 212);
  if ((v6 & 1) != 0 && !*(value + 216))
  {
    v7 = *(value + 200);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = *(value + 192);
      v9 = *(value + 208);
      v10 = *MEMORY[0x1E695E480];
      dataPointerOut.start.value = *(value + 176);
      dataPointerOut.start.timescale = *(value + 184);
      dataPointerOut.start.flags = v5;
      dataPointerOut.start.epoch = v8;
      dataPointerOut.duration.value = v7;
      dataPointerOut.duration.timescale = v9;
      dataPointerOut.duration.flags = v6;
      dataPointerOut.duration.epoch = 0;
      v11 = CMTimeRangeCopyAsDictionary(&dataPointerOut, v10);
      result = 0;
      *(*(*(a1 + 32) + 8) + 24) = v11;
    }
  }

  return result;
}

uint64_t remoteSampleCursor_copyDataSourceTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(a1 + 16), @"DataSourceURL", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CFURLGetTypeID()))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = cf;
      return v6;
    }
  }

  else
  {
    remoteSampleCursor_copyDataSourceTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t remoteSampleCursor_copyFormatDescriptionTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(*(a1 + 16), @"FormatDescription", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CMFormatDescriptionGetTypeID()))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = cf;
      return v6;
    }
  }

  else
  {
    remoteSampleCursor_copyFormatDescriptionTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t remoteSampleCursor_copySampleDependencyAttributesFromOutOfBandID(uint64_t a1, uint64_t a2, void *a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), a2 - 1);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  *a3 = ValueAtIndex;
  return 0;
}

BOOL __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "SampleCursorDataSourceOutOfBandID");
  if (uint64)
  {
    v6 = uint64;
    if (xpc_dictionary_get_value(xdict, "SampleCursorDataSourceURL"))
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
      if (v7)
      {
        v8 = v7;
        *(*(*(a1 + 32) + 8) + 24) = FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID(*(*(a1 + 40) + 40), @"DataSourceURL", v6, v7);
        CFRelease(v8);
      }

      else
      {
        __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke_cold_1();
      }
    }

    else
    {
      __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke_cold_2();
    }
  }

  else
  {
    __remoteSampleCursor_registerNewDataSourcesFromMessage_block_invoke_cold_3();
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t registerRemoteSampleCursorOutOfBandStorageType()
{
  result = _CFRuntimeRegisterClass();
  qword_1EAF19480 = result;
  return result;
}

uint64_t RemoteSampleCursorOutOfBandStorage_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void RemoteSampleCursorOutOfBandStorage_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

__CFString *RemoteSampleCursorOutOfBandStorage_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<RemoteSampleCursorOutOfBandStorage %p>", a1);
  return Mutable;
}

uint64_t __remoteSampleCursor_useSampleTableBroker_block_invoke()
{
  if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigRemote_ShouldConnectToMediaparserdFile_OptIn();
  }

  result = FigGetCFPreferenceNumberWithDefault();
  byte_1ED4CA101 = result;
  return result;
}

uint64_t remoteTrackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 24);
  }

  if (a3)
  {
    *a3 = *(DerivedStorage + 28);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_3_57(int a1, CMBlockBufferRef theBuffer, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *dataPointerOut)
{
  a9 = 0;
  dataPointerOut = 0;

  return CMBlockBufferGetDataPointer(theBuffer, 0, &a9, 0, &dataPointerOut);
}

uint64_t OUTLINED_FUNCTION_12_28()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_28_15()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return FigXPCMessageSetCMTimeRange();
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return FigXPCConnectionSendAsyncMessage();
}

uint64_t OUTLINED_FUNCTION_53_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return remoteFigSampleCursor_getEventLinkAssertionFromCurrentThread(&a9);
}

void *OUTLINED_FUNCTION_54_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char __dst)
{

  return memcpy(&__dst, (v14 + 80), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return FigXPCConnectionKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_61_6()
{

  return FigXPCConnectionSendSyncMessageCreatingReply();
}

__n128 OUTLINED_FUNCTION_67_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  *v17 = a17;
  return result;
}

__n128 OUTLINED_FUNCTION_75_4@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_3()
{

  return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return FigXPCCreateBasicMessage();
}

uint64_t FigTTMLCaptionWriterCreateForDocument(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLCaptionWriterCreateForDocument_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigTTMLCaptionWriterCreateForDocument_cold_2(&v11);
    return v11;
  }

  FigTTMLCaptionWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigTTMLCaptionWriterCreateForDocument_cold_1(&v11);
    return v11;
  }

  v7 = Mutable;
  FigBytePumpGetFigBaseObject(0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[2] = v7;
  *a3 = 0;
  return v9;
}

void figTTMLCaptionWriterForDocument_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }
}

uint64_t FigMetadataReaderCreateForUserDataBlockBuffer(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    FigMetadataReaderCreateForUserDataBlockBuffer_cold_2(&v9);
    return v9;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForUserDataBlockBuffer_cold_1(&v9);
    return v9;
  }

  FigMetadataReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (!v6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFGetAllocator(0);
    v6 = CMByteStreamCreateForBlockBuffer();
    if (!v6)
    {
      *DerivedStorage = CFRetain(0);
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 16) = a2;
      *a4 = 0;
    }
  }

  return v6;
}

uint64_t FigMetadataReaderCreateForUserDataArray(uint64_t a1, char a2, const void *a3, void *a4)
{
  if (!a3)
  {
    FigMetadataReaderCreateForUserDataArray_cold_2(&v10);
    return v10;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForUserDataArray_cold_1(&v10);
    return v10;
  }

  FigMetadataReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a3);
    *(DerivedStorage + 8) = a2;
    *a4 = 0;
  }

  return v7;
}

void FigUserDataFinalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (v0)
  {

    CFRelease(v0);
  }
}

__CFString *FigUserDataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigUserDataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*DerivedStorage);
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, userdataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigUserDataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    v7 = MEMORY[0x1E695E4D0];
LABEL_7:
    v8 = CFRetain(*v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"format"))
  {
    if (*(DerivedStorage + 16))
    {
      v7 = &kFigMetadataFormat_QuickTimeUserData;
    }

    else
    {
      v7 = &kFigMetadataFormat_ISOUserData;
    }

    goto LABEL_7;
  }

  return 4294954512;
}

void userdataPropertiesCallback(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v9 = 0;
    valuePtr = 0;
    *__str = 0;
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = bswap32(valuePtr);
        snprintf(__str, 5uLL, "%c%c%c%c", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
        CFStringAppendFormat(a3, 0, @"     Key = %s\n", __str);
      }
    }
  }

  else if (CFEqual(a1, @"keyspace"))
  {
    CFStringAppendFormat(a3, 0, @"     Keyspace = %@\n", a2);
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"languageCode"))
  {
    CFStringAppendFormat(a3, 0, @"     Language code = %@\n", a2);
  }
}

uint64_t FigUserDataCopyValue(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = *(CMBaseObjectGetDerivedStorage() + 16);

  return UserDataCopyValueCommon(a1, v14, a2, a3, a4, a5, a6, a7);
}

uint64_t FigUserDataHasKey(uint64_t a1, const void *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v9.location = 0;
  v9.length = 0;
  if (CMBaseObjectGetDerivedStorage() && a3 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!UserDataCopyKeysInfoCommon(*(DerivedStorage + 16), a2, a3, &v11, &v10, &v9) && !FigAtomStreamInitWithByteStream() && !FigAtomStreamInitWithParent())
    {
      while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
      {
        if (HIDWORD(v11) != 1718773093 && HIDWORD(v11) != 1936419184)
        {
          if (v10)
          {
            if (CFArrayContainsValue(v10, v9, HIDWORD(v11)))
            {
              v8 = 1;
              goto LABEL_18;
            }
          }

          else if (HIDWORD(v11) == v11)
          {
            return 1;
          }
        }

        if (FigAtomStreamAdvanceToNextAtom())
        {
          break;
        }
      }
    }
  }

  else
  {
    FigUserDataHasKey_cold_1();
  }

  v8 = 0;
LABEL_18:
  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

uint64_t UserDataCopyValueCommon(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (!a1)
  {
    UserDataCopyValueCommon_cold_5(&cf);
    goto LABEL_58;
  }

  v9 = a4;
  if (!a4)
  {
    UserDataCopyValueCommon_cold_4(&cf);
    goto LABEL_58;
  }

  v10 = cf1;
  if (!cf1)
  {
    UserDataCopyValueCommon_cold_3(&cf);
    goto LABEL_58;
  }

  if (!a7)
  {
    UserDataCopyValueCommon_cold_2(&cf);
    goto LABEL_58;
  }

  if (!CFEqual(cf1, @"comn"))
  {
    v16 = a2 ? @"udta" : @"uiso";
    if (!CFEqual(v10, v16))
    {
      UserDataCopyValueCommon_cold_1(&cf);
LABEL_58:
      v33 = 0;
      v32 = cf;
      goto LABEL_41;
    }
  }

  v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v17 && (v43 = v17(a1, v10, v9), v43 >= 1))
  {
    v37 = a7;
    v38 = a8;
    v18 = 0;
    v40 = 0;
    v41 = 0;
    key = *MEMORY[0x1E695E6F0];
    v39 = v10;
    v19 = 1;
    while (1)
    {
      v44 = 0;
      cf = 0;
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v20)
      {
        v32 = -12782;
        goto LABEL_52;
      }

      v21 = v20(a1, v10, v9, v19 - 1, a6, &cf, &v44);
      if (v21)
      {
        break;
      }

      if (!a5 || CFGetTypeID(cf) == a5)
      {
        v22 = v9;
        v23 = a5;
        v24 = a6;
        v25 = v44;
        v26 = CFLocaleCopyCurrent();
        Value = CFLocaleGetValue(v26, key);
        v28 = 0;
        if (v25)
        {
          v29 = Value;
          if (Value)
          {
            v30 = CFDictionaryGetValue(v25, @"locale");
            v28 = v30 && (v31 = CFLocaleGetValue(v30, key)) != 0 && CFStringCompare(v31, v29, 0) == kCFCompareEqualTo;
          }
        }

        if (v26)
        {
          CFRelease(v26);
        }

        a6 = v24;
        if (v28 >= v18)
        {
          if (v40)
          {
            CFRelease(v40);
          }

          a5 = v23;
          if (v41)
          {
            CFRelease(v41);
          }

          v18 = v28 + 1;
          v40 = CFRetain(cf);
          v41 = CFRetain(v44);
        }

        else
        {
          v18 = 1;
          a5 = v23;
        }

        v9 = v22;
        v10 = v39;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v44)
      {
        CFRelease(v44);
      }

      v32 = 0;
      if (v19 < v43)
      {
        ++v19;
        if (v18 < 2)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    v32 = v21;
LABEL_52:
    v33 = v40 != 0;
    if (v40 && (*v37 = v40, v38))
    {
      *v38 = v41;
      v33 = 1;
    }

    else if (v41)
    {
      CFRelease(v41);
    }
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

LABEL_41:
  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (a5)
  {
    v35 = -12608;
  }

  else
  {
    v35 = -12607;
  }

  if (v34)
  {
    return v32;
  }

  else
  {
    return v35;
  }
}

uint64_t UserDataCopyKeysInfoCommon(int a1, CFTypeRef cf1, uint64_t a3, _DWORD *a4, CFTypeRef *a5, void *a6)
{
  v9 = a3;
  valuePtr = 0;
  cf = 0;
  if (!cf1)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    UserDataCopyKeysInfoCommon_cold_4(&v21);
    goto LABEL_46;
  }

  if (!CFEqual(cf1, @"comn"))
  {
    if (a1)
    {
      if (!CFEqual(cf1, @"udta"))
      {
        goto LABEL_32;
      }

      if (!v9)
      {
        goto LABEL_7;
      }

      v15 = CFGetTypeID(v9);
      if (v15 == CFStringGetTypeID())
      {
        if (!FigUserDataStringKeyToOSTypeKey(v9, &valuePtr))
        {
          UserDataCopyKeysInfoCommon_cold_2(&v21);
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      v17 = CFGetTypeID(v9);
      if (v17 != CFNumberGetTypeID())
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!CFEqual(cf1, @"uiso"))
      {
        goto LABEL_32;
      }

      if (!v9)
      {
        goto LABEL_7;
      }

      v16 = CFGetTypeID(v9);
      if (v16 == CFStringGetTypeID())
      {
        if (!FigISOUserDataStringKeyToOSTypeKey(v9, &valuePtr))
        {
          UserDataCopyKeysInfoCommon_cold_3(&v21);
          goto LABEL_46;
        }

LABEL_39:
        v9 = 0;
        goto LABEL_7;
      }

      v18 = CFGetTypeID(v9);
      if (v18 != CFNumberGetTypeID())
      {
LABEL_32:
        fig_log_get_emitter();
        v9 = FigSignalErrorAtGM();
        if (v9)
        {
          goto LABEL_33;
        }

        goto LABEL_7;
      }
    }

    CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
    goto LABEL_39;
  }

  if (!v9)
  {
    UserDataCopyKeysInfoCommon_cold_1(&v21);
LABEL_46:
    v9 = v21;
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_7:
    Count = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1)
  {
    v12 = FigUserDataCopyOSTypeKeysFromCommonKey(v9, &cf);
  }

  else
  {
    v12 = FigISOUserDataCopyOSTypeKeysFromCommonKey(v9, &cf);
  }

  v9 = v12;
  if (v12)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    if (cf)
    {
      Count = CFArrayGetCount(cf);
      v9 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }

LABEL_8:
      *a5 = cf;
      cf = 0;
      goto LABEL_9;
    }

    v9 = 4294954691;
  }

LABEL_33:
  Count = 0;
  valuePtr = 0;
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a6)
  {
    *a6 = 0;
    a6[1] = Count;
  }

  if (a4)
  {
    *a4 = valuePtr;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

CFMutableDictionaryRef FigISOUserDataCreateItemTextFromLocation(const __CFAllocator *a1, CFDataRef theData, CFStringRef *a3, __CFDictionary **a4)
{
  if (!theData)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_6(&v27);
    return v27;
  }

  if (!(a3 | a4))
  {
    FigISOUserDataCreateItemTextFromLocation_cold_5(&v27);
    return v27;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr || Length <= 0x13)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_4(&v27);
    return v27;
  }

  v10 = bswap32(*(BytePtr + 2));
  v11 = HIWORD(v10);
  valuePtr = HIWORD(v10);
  if (HIWORD(v10) <= 0x3FFu)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_3(&v27);
    return v27;
  }

  if (!a3)
  {
    goto LABEL_27;
  }

  if (Length - 6 < 2)
  {
    goto LABEL_22;
  }

  v12 = &BytePtr[Length];
  v13 = BytePtr + 6;
  v14 = BytePtr[6];
  if (v14 == 255)
  {
    if (BytePtr[7] != 254)
    {
      goto LABEL_11;
    }
  }

  else if (v14 != 254 || BytePtr[7] != 255)
  {
LABEL_11:
    if (Length >= 7)
    {
      v15 = (BytePtr + 6);
      while (*v15++)
      {
        v13 = v15;
        if (v15 >= v12)
        {
          goto LABEL_22;
        }
      }

      v17 = v13 + 1;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (Length < 8)
  {
LABEL_22:
    FigISOUserDataCreateItemTextFromLocation_cold_1(&v27);
    return v27;
  }

  while (*v13 || v13[1])
  {
    v13 += 2;
    if (v13 >= v12 - 1)
    {
      goto LABEL_22;
    }
  }

  v17 = v13 + 2;
LABEL_25:
  if ((v17 + 12) > v12)
  {
    FigISOUserDataCreateItemTextFromLocation_cold_2(&v27);
    return v27;
  }

  *a3 = CFStringCreateWithFormat(a1, 0, @"%+08.4f%+09.4f%+08.3f/", vcvts_n_f32_s32(bswap32(*(v17 + 5)), 0x10uLL), vcvts_n_f32_s32(bswap32(*(v17 + 1)), 0x10uLL), vcvts_n_f32_s32(bswap32(*(v17 + 9)), 0x10uLL));
LABEL_27:
  if (!a4)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v19 = result;
    v20 = FigCFLocaleCreateWithMovieLangCode();
    if (v20)
    {
      v21 = v20;
      CFDictionaryAddValue(v19, @"locale", v20);
      CFRelease(v21);
    }

    v22 = FigUserDataExtendedLanguageTagCreateWithMovieLangCode(a1, v11);
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(v19, @"extendedLanguageTag", v22);
      CFRelease(v23);
    }

    v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    if (v24)
    {
      v25 = v24;
      CFDictionaryAddValue(v19, @"languageCode", v24);
      CFRelease(v25);
    }

    result = 0;
    *a4 = v19;
  }

  return result;
}

CFMutableDictionaryRef FigISOUserDataCreateItemTextFromData(const __CFAllocator *a1, CFDataRef theData, CFStringEncoding *a3, CFStringRef *a4, __CFDictionary **a5)
{
  if (!theData)
  {
    FigISOUserDataCreateItemTextFromData_cold_9(&v29);
    return v29;
  }

  if (!(a4 | a5))
  {
    FigISOUserDataCreateItemTextFromData_cold_8(&v29);
    return v29;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr || Length <= 5)
  {
    FigISOUserDataCreateItemTextFromData_cold_7(&v29);
    return v29;
  }

  v12 = bswap32(*(BytePtr + 2));
  v13 = HIWORD(v12);
  valuePtr = HIWORD(v12);
  if (HIWORD(v12) <= 0x3FFu)
  {
    FigISOUserDataCreateItemTextFromData_cold_6(&v29);
    return v29;
  }

  v14 = Length - 8;
  if (Length < 8)
  {
    if (Length != 7)
    {
      FigISOUserDataCreateItemTextFromData_cold_1(&v29);
      return v29;
    }

    goto LABEL_12;
  }

  v15 = BytePtr + 6;
  v16 = BytePtr[6];
  if (v16 == 255)
  {
    if (BytePtr[7] == 254)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  if (v16 != 254 || BytePtr[7] != 255)
  {
LABEL_12:
    v14 = Length - 7;
    if (!BytePtr[Length - 1])
    {
      v17 = 0;
      v18 = 134217984;
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    FigISOUserDataCreateItemTextFromData_cold_4(&v29);
    return v29;
  }

LABEL_30:
  if (Length <= 9)
  {
    FigISOUserDataCreateItemTextFromData_cold_3(&v29);
    return v29;
  }

  if (v15[Length - 7] || v15[v14])
  {
    FigISOUserDataCreateItemTextFromData_cold_2(&v29);
    return v29;
  }

  v17 = 1;
  v18 = 256;
  if (a3)
  {
LABEL_14:
    *a3 = v18;
  }

LABEL_15:
  if (!a4)
  {
    goto LABEL_18;
  }

  v19 = CFStringCreateWithBytes(a1, BytePtr + 6, v14, v18, v17);
  if (!v19)
  {
    FigISOUserDataCreateItemTextFromData_cold_5(&v29);
    return v29;
  }

  *a4 = v19;
LABEL_18:
  if (!a5)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v21 = result;
    v22 = FigCFLocaleCreateWithMovieLangCode();
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(v21, @"locale", v22);
      CFRelease(v23);
    }

    v24 = FigUserDataExtendedLanguageTagCreateWithMovieLangCode(a1, v13);
    if (v24)
    {
      v25 = v24;
      CFDictionaryAddValue(v21, @"extendedLanguageTag", v24);
      CFRelease(v25);
    }

    v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    if (v26)
    {
      v27 = v26;
      CFDictionaryAddValue(v21, @"languageCode", v26);
      CFRelease(v27);
    }

    result = 0;
    *a5 = v21;
  }

  return result;
}

uint64_t FigISOUserDataCreateItemFromRecordingYear(const __CFData *a1, CFNumberRef *a2)
{
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    if (BytePtr && Length == 6)
    {
      valuePtr = bswap32(*(BytePtr + 2)) >> 16;
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
      result = 0;
      *a2 = v6;
    }

    else
    {
      FigISOUserDataCreateItemFromRecordingYear_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigISOUserDataCreateItemFromRecordingYear_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigISOUserDataCreateItemFromDate(const __CFAllocator *a1, const __CFData *a2, CFStringRef *a3)
{
  if (a2)
  {
    v4 = CFStringCreateFromExternalRepresentation(a1, a2, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      result = 0;
      *a3 = v5;
    }

    else
    {
      FigISOUserDataCreateItemFromDate_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigISOUserDataCreateItemFromDate_cold_2(&v8);
    return v8;
  }

  return result;
}

uint64_t FigISOUserDataCreateItemFromUserRating(const __CFData *a1, CFNumberRef *a2)
{
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    if (BytePtr && Length == 8)
    {
      valuePtr = BytePtr[7];
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
      result = 0;
      *a2 = v6;
    }

    else
    {
      FigISOUserDataCreateItemFromUserRating_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigISOUserDataCreateItemFromUserRating_cold_2(&v10);
    return v10;
  }

  return result;
}

__CFDictionary *FigISOUserDataCreateItemFromThumbnailData(const __CFAllocator *a1, CFDataRef theData, CFDataRef *a3, __CFDictionary **a4)
{
  if (!theData)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_4(&v12);
    return v12;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr || Length <= 7)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_3(&v12);
    return v12;
  }

  if (*(BytePtr + 1) != 1734701162)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_1(&v12);
    return v12;
  }

  if ((Length - 8) <= 0)
  {
    FigISOUserDataCreateItemFromThumbnailData_cold_2(&v12);
    return v12;
  }

  *a3 = CFDataCreate(a1, BytePtr + 8, Length - 8);
  if (!a4)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v11 = result;
    CFDictionaryAddValue(result, @"dataType", *MEMORY[0x1E6963808]);
    CFDictionaryAddValue(v11, @"dataTypeNamespace", @"com.apple.uti");
    result = 0;
    *a4 = v11;
  }

  return result;
}

CFLocaleIdentifier FigUserDataExtendedLanguageTagCreateWithMovieLangCode(const __CFAllocator *a1, unsigned int a2)
{
  value = 0;
  if (a2 == 0x7FFF)
  {
    return @"und";
  }

  if (a2 <= 0x3FF)
  {
    return CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(a1, a2, -1);
  }

  ISO639_1Mapping = FigMetadataGetISO639_1Mapping();
  if (!CFDictionaryGetValueIfPresent(ISO639_1Mapping, a2, &value))
  {
    ISO639_1NonCanonicalMapping = FigMetadataGetISO639_1NonCanonicalMapping();
    if (!CFDictionaryGetValueIfPresent(ISO639_1NonCanonicalMapping, a2, &value))
    {
      bytes[0] = (a2 >> 10) | 0x60;
      bytes[1] = (a2 >> 5) & 0x1F | 0x60;
      bytes[2] = a2 & 0x1F | 0x60;
      return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 3, 0x600u, 0);
    }
  }

  return value;
}

void ArrayUserDataFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ArrayUserDataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" Fig(Array)UserDataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, userdataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t ArrayUserDataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    v7 = MEMORY[0x1E695E4D0];
LABEL_7:
    v8 = CFRetain(*v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"format"))
  {
    if (*(DerivedStorage + 8))
    {
      v7 = &kFigMetadataFormat_QuickTimeUserData;
    }

    else
    {
      v7 = &kFigMetadataFormat_ISOUserData;
    }

    goto LABEL_7;
  }

  return 4294954512;
}

uint64_t ArrayUserDataCopyValue(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = *(CMBaseObjectGetDerivedStorage() + 8);

  return UserDataCopyValueCommon(a1, v14, a2, a3, a4, a5, a6, a7);
}

const void *ArrayUserDataHasKey(uint64_t a1, const void *a2, const void *HasKey)
{
  cf = 0;
  v10 = 0;
  v11 = 0uLL;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataHasKey_cold_3();
LABEL_15:
    HasKey = 0;
    goto LABEL_9;
  }

  if (!HasKey)
  {
    ArrayUserDataHasKey_cold_2();
    goto LABEL_9;
  }

  if (!a2)
  {
    ArrayUserDataHasKey_cold_1();
    goto LABEL_15;
  }

  v6 = DerivedStorage;
  v7 = FigUserDataCopyKeysInfoAsCFNumber(a2, HasKey, *(DerivedStorage + 8), &v10, &cf, &v11);
  v8 = cf;
  if (!v7)
  {
    HasKey = FigMetadataArrayHasKey(*v6, v10, 0, cf, v11, *(&v11 + 1));
    v8 = cf;
    if (!cf)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  HasKey = 0;
  if (cf)
  {
LABEL_8:
    CFRelease(v8);
  }

LABEL_9:
  if (v10)
  {
    CFRelease(v10);
  }

  return HasKey;
}

CFIndex ArrayUserDataGetKeyCount(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataGetKeyCount_cold_2();
    return 0;
  }

  v4 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_7;
  }

  if (*(DerivedStorage + 8))
  {
    if (CFEqual(a2, @"udta"))
    {
      goto LABEL_7;
    }

    if (*(v4 + 8))
    {
      goto LABEL_10;
    }
  }

  if (!CFEqual(a2, @"uiso"))
  {
LABEL_10:
    ArrayUserDataGetKeyCount_cold_1();
    return 0;
  }

LABEL_7:
  if (*(v4 + 24))
  {
    return *(v4 + 16);
  }

  result = FigMetadataArrayGetKeyCount(*v4, 0);
  *(v4 + 16) = result;
  *(v4 + 24) = 1;
  return result;
}

uint64_t ArrayUserDataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataCopyKeyAtIndex_cold_4(&v12);
    return v12;
  }

  if (!a5)
  {
    ArrayUserDataCopyKeyAtIndex_cold_3(&v12);
    return v12;
  }

  v9 = DerivedStorage;
  if (a2)
  {
    if (!*(DerivedStorage + 8))
    {
      goto LABEL_7;
    }

    if (!CFEqual(a2, @"udta"))
    {
      if (*(v9 + 8))
      {
LABEL_13:
        ArrayUserDataCopyKeyAtIndex_cold_1(&v12);
        return v12;
      }

LABEL_7:
      if (CFEqual(a2, @"uiso"))
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

LABEL_8:
  if (*(v9 + 24) && *(v9 + 16) <= a3)
  {
    ArrayUserDataCopyKeyAtIndex_cold_2(&v12);
    return v12;
  }

  v10 = *v9;

  return FigMetadataArrayCopyKeyAtIndex(v10, a3, 0, a5);
}

uint64_t ArrayUserDataGetItemCount(uint64_t a1, const void *a2, const void *a3)
{
  cf = 0;
  v11 = 0;
  v12 = 0uLL;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataGetItemCount_cold_1();
    ItemCount = 0;
    goto LABEL_7;
  }

  v6 = DerivedStorage;
  v7 = FigUserDataCopyKeysInfoAsCFNumber(a2, a3, *(DerivedStorage + 8), &v11, &cf, &v12);
  v8 = cf;
  if (!v7)
  {
    ItemCount = FigMetadataArrayGetItemCount(*v6, v11, 0, cf, v12, *(&v12 + 1));
    v8 = cf;
    if (!cf)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  ItemCount = 0;
  if (cf)
  {
LABEL_6:
    CFRelease(v8);
  }

LABEL_7:
  if (v11)
  {
    CFRelease(v11);
  }

  return ItemCount;
}

uint64_t ArrayUserDataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, unint64_t a6, __CFDictionary **a7)
{
  cf = 0;
  v17 = 0;
  v18 = 0uLL;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayUserDataCopyItemWithKeyAndIndex_cold_2(&v20);
LABEL_14:
    v15 = v20;
    goto LABEL_7;
  }

  if (!(a6 | a7))
  {
    ArrayUserDataCopyItemWithKeyAndIndex_cold_1(&v20);
    goto LABEL_14;
  }

  v13 = DerivedStorage;
  v14 = FigUserDataCopyKeysInfoAsCFNumber(a2, a3, *(DerivedStorage + 8), &v17, &cf, &v18);
  if (v14 == -12605)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
    if (!v14)
    {
      v15 = FigMetadataArrayCopyItemWithKeyAndIndex(*v13, v17, a4, 0, cf, v18, *(&v18 + 1), a6, a7);
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v15;
}

CFNumberRef FigUserDataCopyKeyAsCFNumber(unsigned int a1)
{
  valuePtr = a1;
  OSTypeKeyToCFNumberMapping = FigUserDataGetOSTypeKeyToCFNumberMapping();
  Value = CFDictionaryGetValue(OSTypeKeyToCFNumberMapping, a1);
  if (!Value)
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  v4 = Value;
  CFRetain(Value);
  return v4;
}

CFNumberRef OUTLINED_FUNCTION_10_30(int a1, int a2, const void *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFAllocatorRef allocator)
{

  return CFNumberCreate(allocator, kCFNumberSInt32Type, a3);
}

uint64_t FAIGCommon_createRenderPipelineOptions(const __CFAllocator *a1, CFTypeRef cf, int a3, CMTime *a4, CMTime *a5, CFDictionaryRef *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *keys = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *values = 0u;
  v20 = 0u;
  if (cf)
  {
    keys[0] = @"FormatDescription";
    values[0] = CFRetain(cf);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if ((a4->flags & 0x1D) == 1)
  {
    *(keys | (8 * v11)) = @"PreparedQueueLowWaterLevel";
    v17 = *a4;
    *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v11++ & 1))) = CMTimeCopyAsDictionary(&v17, a1);
  }

  if ((a5->flags & 0x1D) == 1)
  {
    keys[v11] = @"PreparedQueueHighWaterLevel";
    v17 = *a5;
    values[v11++] = CMTimeCopyAsDictionary(&v17, a1);
  }

  if (a3)
  {
    keys[v11] = @"EarlyDumpStage";
    values[v11] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v12 = v11 + 1;
    v13 = CFDictionaryCreate(a1, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v12 = v11;
    v13 = CFDictionaryCreate(a1, keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v14 = values;
  do
  {
    v15 = *v14++;
    CFRelease(v15);
    --v12;
  }

  while (v12);
LABEL_13:
  *a6 = v13;
  return 0;
}

uint64_t FAIGCommon_createImageRequest(__int128 *a1, const void *a2, const void *a3, int a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040DCD8CE1AuLL);
  if (v10)
  {
    v11 = v10;
    v12 = *a1;
    *(v10 + 28) = *(a1 + 2);
    *(v10 + 12) = v12;
    if (a2)
    {
      v13 = CFRetain(a2);
    }

    else
    {
      v13 = 0;
    }

    *(v11 + 5) = v13;
    if (a3)
    {
      v14 = CFRetain(a3);
    }

    else
    {
      v14 = 0;
    }

    result = 0;
    *(v11 + 6) = v14;
    *(v11 + 14) = a4;
    *a5 = v11;
  }

  else
  {
    FAIGCommon_createImageRequest_cold_1(&v16);
    return v16;
  }

  return result;
}

void FAIGCommon_releaseImageRequest(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      CFRelease(v2);
      a1[5] = 0;
    }

    v3 = a1[6];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

__n128 FAIGCommon_decodedImageBecameAvailable(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *a2;
  *(a4 + 24) = a2[1].n128_u64[0];
  *(a4 + 8) = result;
  *(a4 + 32) = 0;
  return result;
}

void FAIGCommon_handleRenderPipelineDecodeErrorNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  *(a2 + 32) = -12911;
  v5 = (a2 + 32);
  if (a5)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a5))
    {
      Value = CFDictionaryGetValue(a5, @"OSStatus");
      if (Value)
      {
        v9 = Value;
        v10 = CFNumberGetTypeID();
        if (v10 == CFGetTypeID(v9))
        {

          CFNumberGetValue(v9, kCFNumberSInt32Type, v5);
        }
      }
    }
  }
}

uint64_t FAIGCommon_handleBufferConsumedNotification(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      *(a2 + 32) = -12911;
    }

    return FigSemaphoreSignal();
  }

  return result;
}

uint64_t FAIGCommon_getOutputImagePropertiesForImageRetrieval(CMVideoFormatDescriptionRef videoDesc, CFDictionaryRef theDict, int a3, _DWORD *a4, CFDictionaryRef *a5)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    v12 = 1;
    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, 1u, 1u);
    height = PresentationDimensions.height;
    width = PresentationDimensions.width;
    valuePtr = PresentationDimensions.height;
    v27 = PresentationDimensions.width;
    v13 = 1;
    if (!a4)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(theDict, @"ApertureMode");
  if (Value)
  {
    v11 = Value;
    v12 = CFEqual(Value, @"CleanAperture");
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = CFEqual(v11, @"ProductionAperture") != 0;
    }
  }

  else
  {
    v13 = 1;
    v12 = 1;
  }

  v17 = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, v13, v12);
  valuePtr = v17.height;
  v27 = v17.width;
  v18 = CFDictionaryGetValue(theDict, @"MaxWidth");
  if (v18)
  {
    if (!a3)
    {
      CFNumberGetValue(v18, kCFNumberCGFloatType, &v27);
      v19 = CFDictionaryGetValue(theDict, @"MaxHeight");
      if (!v19)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    CFNumberGetValue(v18, kCFNumberCGFloatType, &valuePtr);
  }

  v19 = CFDictionaryGetValue(theDict, @"MaxHeight");
  if (!v19)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_16:
    p_valuePtr = &valuePtr;
    goto LABEL_17;
  }

  p_valuePtr = &v27;
LABEL_17:
  CFNumberGetValue(v19, kCFNumberCGFloatType, p_valuePtr);
LABEL_18:
  height = valuePtr;
  width = v27;
  if (v27 < v17.width || valuePtr < v17.height)
  {
    v22 = v27 / v17.width;
    v23 = valuePtr / v17.height;
    if (v22 >= v23)
    {
      width = v17.width * v23;
      v27 = width;
      if (!a4)
      {
        goto LABEL_28;
      }
    }

    else
    {
      height = v17.height * v22;
      valuePtr = height;
      if (!a4)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  valuePtr = v17.height;
  v27 = v17.width;
  height = v17.height;
  width = v17.width;
  if (a4)
  {
LABEL_27:
    *a4 = width;
    a4[1] = height;
  }

LABEL_28:
  if (a5 && v12 && v13)
  {
    v24 = *MEMORY[0x1E6983E30];
    values = *MEMORY[0x1E69840E0];
    keys[0] = v24;
    *a5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return 0;
}

void FAIGCommon_checkAndUpdateOutputImagePropertiesForImageRetrieval(_DWORD *a1, uint64_t a2, CFDictionaryRef *a3, CFTypeRef cf, _BYTE *a5)
{
  if (a1)
  {
    v8 = *a1 != a2 || a1[1] != HIDWORD(a2);
    *a1 = a2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *a3;
  v10 = cf | *a3;
  if (v10)
  {
    if (cf && v9)
    {
      v11 = *MEMORY[0x1E6983E30];
      CFDictionaryGetValue(*a3, *MEMORY[0x1E6983E30]);
      CFDictionaryGetValue(cf, v11);
      if (FigCFEqual())
      {
        LOBYTE(v10) = 0;
        goto LABEL_16;
      }

      v9 = *a3;
      *a3 = cf;
    }

    else
    {
      *a3 = cf;
      if (!cf)
      {
        if (!v9)
        {
LABEL_15:
          LOBYTE(v10) = 1;
          goto LABEL_16;
        }

LABEL_14:
        CFRelease(v9);
        goto LABEL_15;
      }
    }

    CFRetain(cf);
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  if (a5)
  {
    *a5 = v8 | v10;
  }
}

BOOL FAIGCommon_standardDynamicRangeIsPreferred(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  FigCFDictionaryGetStringValue();
  return FigCFEqual() == 0;
}

uint64_t RegisterFigAssetImageGeneratorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetImageGeneratorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetImageGeneratorGetClassID_sRegisterFigAssetImageGeneratorBaseTypeOnce, RegisterFigAssetImageGeneratorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigActivitySchedulerCreateForCFRunLoop(const __CFAllocator *a1, const void *a2, void *a3)
{
  v12 = 0;
  if (a2 && a3)
  {
    memset(&v11, 0, sizeof(v11));
    FigActivitySchedulerGetClassID();
    v6 = CMDerivedObjectCreate();
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 8) = a2;
      CFRetain(a2);
      v8 = FigSimpleMutexCreate();
      *(DerivedStorage + 40) = v8;
      if (v8)
      {
        v11.version = 0;
        v11.info = DerivedStorage;
        memset(&v11.retain, 0, 56);
        v11.perform = activityOnRunLoop_perform;
        v9 = CFRunLoopSourceCreate(a1, 0, &v11);
        *(DerivedStorage + 16) = v9;
        if (v9)
        {
          CFRunLoopAddSource(*(DerivedStorage + 8), v9, *MEMORY[0x1E695E8E0]);
          CFRunLoopAddSource(*(DerivedStorage + 8), *(DerivedStorage + 16), *MEMORY[0x1E695E8D0]);
          v6 = 0;
          *a3 = v12;
          return v6;
        }
      }

      v6 = FigSignalErrorAtGM();
    }

    if (v12)
    {
      CFRelease(v12);
    }

    return v6;
  }

  return FigSignalErrorAtGM();
}

_BYTE *activityOnRunLoop_perform(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      FigSimpleMutexLock();
      v2 = *(v1 + 4);
      if (v2)
      {
        v2(*(v1 + 3));
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t activityOnRunLoop_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  *DerivedStorage = 1;
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRunLoopRemoveSource(*(DerivedStorage + 8), v2, *MEMORY[0x1E695E8E0]);
    CFRunLoopRemoveSource(*(v1 + 8), *(v1 + 16), *MEMORY[0x1E695E8D0]);
    CFRunLoopSourceInvalidate(*(v1 + 16));
    CFRelease(*(v1 + 16));
    *(v1 + 16) = 0;
  }

  if (*(v1 + 40))
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    *(v1 + 40) = 0;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 8) = 0;
  }

  return 0;
}

uint64_t activityOnRunLoop_finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

__CFString *activityOnRunLoop_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigActivityScheduler_OnRunLoop %p>", a1);
  return Mutable;
}

uint64_t activityOnRunLoop_setProcessingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    *(v7 + 3) = a3;
    *(v7 + 4) = a2;
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t activityOnRunLoop_triggerScheduling()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v2 = *(DerivedStorage + 16);
    if (v2)
    {
      CFRunLoopSourceSignal(v2);
    }

    return 0;
  }
}

uint64_t FigMetadataReaderCreateForGenericMetadataArray(uint64_t a1, const void *a2, const void *a3, const void *a4, void *a5)
{
  if (!a2)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_3(&v12);
    return v12;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_2(&v12);
    return v12;
  }

  if (!a5)
  {
    FigMetadataReaderCreateForGenericMetadataArray_cold_1(&v12);
    return v12;
  }

  FigMetadataReaderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (!v9)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = CFRetain(a2);
    DerivedStorage[1] = CFRetain(a3);
    *DerivedStorage = CFRetain(a4);
    *a5 = 0;
  }

  return v9;
}

void GenericMetadataArrayFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *GenericMetadataArrayCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigGenericMetadataArrayReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_1, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t GenericMetadataArrayCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      if (CFEqual(a2, @"complete"))
      {
        Copy = CFRetain(*MEMORY[0x1E695E4D0]);
      }

      else
      {
        if (!CFEqual(a2, @"format"))
        {
          return 4294954512;
        }

        Copy = CFStringCreateCopy(a3, *(v8 + 8));
      }

      v10 = Copy;
      result = 0;
      *a4 = v10;
    }

    else
    {
      GenericMetadataArrayCopyProperty_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    GenericMetadataArrayCopyProperty_cold_2(&v13);
    return v13;
  }

  return result;
}

void metadataPropertiesCallback_1(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = bswap32(valuePtr);
        CFStringAppendFormat(a3, 0, @"     Key = %c%c%c%c\n", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
      }
    }

    else
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFStringGetTypeID())
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"dataType"))
  {
    CFStringAppendFormat(a3, 0, @"     DataType = %@ (basic type)\n", a2);
  }
}

uint64_t GenericMetadataArrayCopyValue(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (!a1)
  {
    GenericMetadataArrayCopyValue_cold_5(&cf);
LABEL_62:
    v33 = 0;
    v32 = cf;
    goto LABEL_41;
  }

  v8 = a3;
  if (!a3)
  {
    GenericMetadataArrayCopyValue_cold_4(&cf);
    goto LABEL_62;
  }

  if (!theString)
  {
    GenericMetadataArrayCopyValue_cold_3(&cf);
    goto LABEL_62;
  }

  if (!a6)
  {
    GenericMetadataArrayCopyValue_cold_2(&cf);
    goto LABEL_62;
  }

  v13 = a1;
  if (CFStringGetLength(theString) != 4)
  {
    GenericMetadataArrayCopyValue_cold_1(&cf);
    goto LABEL_62;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14 || (v45 = v14(v13, theString, v8), v45 < 1))
  {
    v33 = 0;
    v32 = 0;
    goto LABEL_41;
  }

  v37 = a6;
  v38 = a7;
  v15 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *MEMORY[0x1E695E6D0];
  key = *MEMORY[0x1E695E6F0];
  v39 = a5;
  v16 = 1;
  v40 = v13;
  while (1)
  {
    v46 = 0;
    cf = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v17)
    {
      v32 = -12782;
      goto LABEL_52;
    }

    v18 = v17(v13, theString, v8, v16 - 1, a5, &cf, &v46);
    if (v18)
    {
      break;
    }

    if (!a4 || CFGetTypeID(cf) == a4)
    {
      v19 = v15;
      v20 = v8;
      v21 = a4;
      v22 = v46;
      v23 = CFLocaleCopyCurrent();
      Value = CFLocaleGetValue(v23, key);
      v25 = CFLocaleGetValue(v23, v43);
      if (v22 && (v26 = v25, (v27 = CFDictionaryGetValue(v22, @"locale")) != 0))
      {
        v28 = v27;
        v29 = CFLocaleGetValue(v27, key);
        v30 = 0;
        if (v29 && Value)
        {
          v30 = CFStringCompare(v29, Value, 0) == kCFCompareEqualTo;
        }

        v31 = CFLocaleGetValue(v28, v43);
        if (v31)
        {
          v8 = v20;
          v15 = v19;
          if (v26 && CFStringCompare(v31, v26, 0) == kCFCompareEqualTo)
          {
            ++v30;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v30 = 0;
      }

      v8 = v20;
      v15 = v19;
LABEL_25:
      v13 = v40;
      a4 = v21;
      if (v23)
      {
        CFRelease(v23);
      }

      a5 = v39;
      if (v30 >= v15)
      {
        if (v41)
        {
          CFRelease(v41);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        v15 = v30 + 1;
        v41 = CFRetain(cf);
        v42 = CFRetain(v46);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v46)
    {
      CFRelease(v46);
    }

    v32 = 0;
    if (v16 < v45)
    {
      ++v16;
      if (v15 < 3)
      {
        continue;
      }
    }

    goto LABEL_52;
  }

  v32 = v18;
LABEL_52:
  v33 = v41 != 0;
  if (v41 && (*v37 = v41, v38))
  {
    *v38 = v42;
    v33 = 1;
  }

  else if (v42)
  {
    CFRelease(v42);
  }

LABEL_41:
  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (a4)
  {
    v35 = -12608;
  }

  else
  {
    v35 = -12607;
  }

  if (v34)
  {
    return v32;
  }

  else
  {
    return v35;
  }
}

uint64_t GenericMetadataArrayHasKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    GenericMetadataArrayHasKey_cold_2();
    return 0;
  }

  if (!a3)
  {
    GenericMetadataArrayHasKey_cold_1();
    return 0;
  }

  v6 = *(DerivedStorage + 16);

  return FigMetadataArrayHasKey(v6, a3, a2, 0, 0, 0);
}

CFIndex GenericMetadataArrayGetKeyCount(uint64_t a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (CFStringGetLength(a2) == 4)
    {
      if (CFEqual(a2, *DerivedStorage))
      {
        goto LABEL_4;
      }

      GenericMetadataArrayGetKeyCount_cold_2();
    }

    else
    {
      GenericMetadataArrayGetKeyCount_cold_1();
    }

    return 0;
  }

LABEL_4:
  v4 = *(DerivedStorage + 16);

  return FigMetadataArrayGetKeyCount(v4, a2);
}

uint64_t GenericMetadataArrayCopyKeyAtIndex(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    GenericMetadataArrayCopyKeyAtIndex_cold_3(&v14);
    return v14;
  }

  v9 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (CFStringGetLength(a2) != 4)
  {
    GenericMetadataArrayCopyKeyAtIndex_cold_1(&v12);
    return v12;
  }

  if (!CFEqual(a2, *v9))
  {
    GenericMetadataArrayCopyKeyAtIndex_cold_2(&v13);
    return v13;
  }

  else
  {
LABEL_5:
    v10 = *(v9 + 16);

    return FigMetadataArrayCopyKeyAtIndex(v10, a3, a2, a5);
  }
}

uint64_t GenericMetadataArrayGetItemCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 && a3)
  {
    GenericMetadataArrayGetItemCount_cold_1();
    return 0;
  }

  else
  {
    v6 = *(DerivedStorage + 16);

    return FigMetadataArrayGetItemCount(v6, a3, a2, 0, 0, 0);
  }
}

uint64_t GenericMetadataArrayCopyItemWithKeyAndIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  cf = 0;
  if (a6 | a7)
  {
    if (!a2 && a3)
    {
      GenericMetadataArrayCopyItemWithKeyAndIndex_cold_3(&v17);
    }

    else
    {
      v13 = FigMetadataArrayCopyItemWithKeyAndIndex(*(DerivedStorage + 16), a3, a4, a2, 0, 0, 0, &cf, &v15);
      if (a6)
      {
        if (!cf)
        {
          GenericMetadataArrayCopyItemWithKeyAndIndex_cold_1(&v17);
          goto LABEL_19;
        }

        *a6 = CFRetain(cf);
      }

      if (!a7)
      {
        goto LABEL_10;
      }

      if (v15)
      {
        *a7 = CFRetain(v15);
        goto LABEL_10;
      }

      GenericMetadataArrayCopyItemWithKeyAndIndex_cold_2(&v17);
    }
  }

  else
  {
    GenericMetadataArrayCopyItemWithKeyAndIndex_cold_4(&v17);
  }

LABEL_19:
  v13 = v17;
LABEL_10:
  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

CFArrayRef playeroverlap_copyPendingArray()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 40);
  v1 = *MEMORY[0x1E695E480];

  return CFArrayCreateCopy(v1, v0);
}

CFIndex playeroverlap_playQueueCountTest()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(DerivedStorage[3]);
  v2 = CFArrayGetCount(DerivedStorage[4]) + Count;
  return v2 + CFArrayGetCount(DerivedStorage[5]);
}

BOOL playeroverlap_hasAdvanceTimerTest()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 64);

  return FigPlaybackTimerIsScheduled(v0);
}

uint64_t FigPlayerOverlapCreateWithOptions(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, void *a5)
{
  if (a2 && a3 && a5)
  {
    FigPlayerGetClassID();
    if (CMDerivedObjectCreate())
    {
      return FigSignalErrorAtGM();
    }

    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    *(DerivedStorage + 129) = 0;
    if (a4 && FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(0, (DerivedStorage + 129), 16, 0x600u);
    }

    v11 = playeroverlap_setTheSameDispatchQueueOnSubPlayers(a2, a3);
    if (!v11)
    {
      *(DerivedStorage + 4) = 0;
      *(DerivedStorage + 8) = a2;
      CFRetain(a2);
      *(DerivedStorage + 16) = a3;
      CFRetain(a3);
      v12 = MEMORY[0x1E695E9C0];
      *(DerivedStorage + 24) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 32) = CFArrayCreateMutable(a1, 0, v12);
      *(DerivedStorage + 40) = CFArrayCreateMutable(a1, 0, v12);
      *(DerivedStorage + 48) = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 88) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
      *(DerivedStorage + 96) = FigSimpleMutexCreate();
      v11 = FigPlaybackTimerCreate((DerivedStorage + 64));
      if (!v11)
      {
        v11 = FigPlaybackTimerCreate((DerivedStorage + 72));
        if (!v11)
        {
          FigCFDictionaryGetBooleanIfPresent();
          CMNotificationCenterGetDefaultLocalCenter();
          v11 = FigNotificationCenterAddWeakListener();
          if (!v11)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            v11 = FigNotificationCenterAddWeakListener();
            if (!v11)
            {
              if (dword_1EAF17080)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v15 = 0;
              *a5 = 0;
              return v15;
            }
          }
        }
      }
    }

    return v11;
  }

  return FigSignalErrorAtGM();
}

uint64_t playeroverlap_subPlayerNotificationWeakCallback(uint64_t a1, void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  v10 = atomic_load(result);
  if (v10)
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    result = CMBaseObjectGetDerivedStorage();
    if (*(result + 8 * *(result + 4) + 8) != a4)
    {
      return result;
    }

    if (CFEqual(a3, @"CurrentItemDidChange"))
    {
      CFDictionaryGetValue(a5, @"ReasonForCurrentItemDidChange");
      if (FigCFEqual() || FigCFEqual())
      {
        if (playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a2))
        {
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (FigCFEqual())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (FigPlaybackTimerIsScheduled(*(DerivedStorage + 64)))
        {
          playeroverlap_cancelScheduledOverlap(a2);
        }
      }
    }

    if (CFEqual(a3, @"PlaybackStateDidChange"))
    {
      FigCFDictionaryGetInt32IfPresent();
    }

    if (FigCFEqual())
    {
      CFDictionaryGetValue(a5, @"ReasonForCurrentItemDidChange");
      v13 = CMBaseObjectGetDerivedStorage();
      if (*(v13 + 80) && (v14 = v13, FigCFEqual()))
      {
        *(v14 + 80) = 0;
      }

      else
      {
        result = FigCFEqual();
        if (result)
        {
          return result;
        }
      }
    }

    return playeroverlap_dispatchAsyncPostNotification(a2);
  }

  return result;
}

uint64_t playeroverlap_dispatchAsyncPostNotification(uint64_t a1)
{
  if (!a1)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (qword_1ED4CAA08 != -1)
  {
    playeroverlap_dispatchAsyncPostNotification_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

const void *playeroverlap_itemAtIndex(uint64_t a1, CFIndex a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 8 * *(DerivedStorage + 4) + 24));
  v5 = a2 - Count;
  if (a2 >= Count)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *(v8 + 4);
    v10 = __OFADD__(v9++, 1);
    v11 = (v9 < 0) ^ v10;
    v12 = v9 & 1;
    if (v11)
    {
      v12 = -v12;
    }

    v13 = CFArrayGetCount(*(v8 + 8 * v12 + 24));
    if (*(CMBaseObjectGetDerivedStorage() + 56))
    {
      v14 = CMBaseObjectGetDerivedStorage();
      v15 = *(v14 + 4);
      v10 = __OFADD__(v15++, 1);
      v11 = (v15 < 0) ^ v10;
      v16 = v15 & 1;
      if (v11)
      {
        v16 = -v16;
      }

      CFArrayGetValueAtIndex(*(v14 + 8 * v16 + 24), 0);
      v13 = 0;
    }

    else if (v5 < v13)
    {
      v17 = CMBaseObjectGetDerivedStorage();
      v18 = *(v17 + 4);
      v10 = __OFADD__(v18++, 1);
      v11 = (v18 < 0) ^ v10;
      v19 = v18 & 1;
      if (v11)
      {
        v19 = -v19;
      }

      v7 = (v17 + 8 * v19 + 24);
      a2 = v5;
      goto LABEL_14;
    }

    a2 = v5 - v13;
    v7 = (CMBaseObjectGetDerivedStorage() + 40);
    if (a2 >= CFArrayGetCount(*v7))
    {
      return 0;
    }
  }

  else
  {
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = (v6 + 8 * *(v6 + 4) + 24);
  }

LABEL_14:
  v20 = *v7;

  return CFArrayGetValueAtIndex(v20, a2);
}

CFIndex playeroverlap_playQueueCount()
{
  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    Count = 0;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = *(DerivedStorage + 4);
    v3 = __OFADD__(v2++, 1);
    v4 = (v2 < 0) ^ v3;
    v5 = v2 & 1;
    if (v4)
    {
      v5 = -v5;
    }

    Count = CFArrayGetCount(*(DerivedStorage + 8 * v5 + 24));
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v7 = CFArrayGetCount(*(v6 + 8 * *(v6 + 4) + 24));
  v8 = CMBaseObjectGetDerivedStorage();
  return v7 + Count + CFArrayGetCount(*(v8 + 40));
}

BOOL itemoverlap_hasAdvanceTime(_BOOL8 result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((DerivedStorage[1].flags & 0x1D) == 1)
    {
      time1 = DerivedStorage[1];
      v2 = **&MEMORY[0x1E6960CC0];
      return CMTimeCompare(&time1, &v2) > 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t itemoverlap_addTimebaseListener(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 96);
  if (*(DerivedStorage + 96))
  {
    return 0;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], DerivedStorage + 96);
    if (!v8)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v4 = FigNotificationCenterAddWeakListener();
      if (!v4)
      {
        EffectiveRate = CMTimebaseGetEffectiveRate(*(DerivedStorage + 96));
        *(DerivedStorage + 104) = EffectiveRate;
        return v4;
      }

      itemoverlap_addTimebaseListener_cold_1();
      goto LABEL_10;
    }

    v4 = v8;
  }

  else
  {
    v4 = 4294954514;
  }

  FigSignalErrorAtGM();
LABEL_10:
  if (*v3)
  {
    CFRelease(*v3);
    *v3 = 0;
  }

  return v4;
}

uint64_t playeroverlap_scheduleAdvanceTimerAndAnchorTime(void *a1)
{
  v89 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = playeroverlap_itemAtIndex(a1, 0);
  v4 = CMBaseObjectGetDerivedStorage();
  v67 = 0;
  v66 = 0.0;
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(v5 + 8 * *(v5 + 4) + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v7)
  {
    value_low = 4294954514;
LABEL_27:
    FigSignalErrorAtGM();
    goto LABEL_28;
  }

  v8 = v7(v6, &v66);
  if (v8)
  {
    value_low = v8;
    goto LABEL_27;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(v3);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    value_low = 4294954514;
    goto LABEL_27;
  }

  v11 = v10(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &v67);
  if (v11)
  {
    value_low = v11;
    goto LABEL_27;
  }

  v12 = *(DerivedStorage + 64);
  v13 = *(DerivedStorage + 48);
  time = v4[1];
  v14 = FigPlaybackTimerScheduleForTimebaseTime(v12, v67, v13, a1, playeroverlap_advanceTimeReached, &time);
  if (v14)
  {
    value_low = v14;
    playeroverlap_scheduleAdvanceTimerAndAnchorTime_cold_1();
    goto LABEL_28;
  }

  memset(&v65, 0, sizeof(v65));
  v15 = v67;
  HostTimeClock = CMClockGetHostTimeClock();
  time = v4[1];
  CMSyncConvertTime(&v65, &time, v15, HostTimeClock);
  if ((v65.flags & 0x1D) == 1)
  {
    memset(&v64, 0, sizeof(v64));
    v17 = CMClockGetHostTimeClock();
    CMClockGetTime(&v64, v17);
    time = v65;
    time2 = v64;
    v18 = CMTimeCompare(&time, &time2);
    v19 = MEMORY[0x1E6960C70];
    if (v18 < 0)
    {
      v65 = **&MEMORY[0x1E6960C70];
    }

    v20 = playeroverlap_itemAtIndex(a1, 1);
    v21 = playeroverlap_setOverlapRangeProperty(a1, v3, v20);
    if (v21)
    {
      value_low = v21;
      goto LABEL_28;
    }

    *&v63.value = *v19;
    v58 = *&v63.value;
    v22 = *(v19 + 16);
    v63.epoch = v22;
    if (itemoverlap_GetCurrentTimeInPlayerQueue(v20, &v63))
    {
      *&v63.value = v58;
      v63.epoch = v22;
    }

    v23 = CMBaseObjectGetDerivedStorage();
    v24 = *(v23 + 4);
    v25 = __OFADD__(v24++, 1);
    v26 = (v24 < 0) ^ v25;
    v27 = v24 & 1;
    if (v26)
    {
      v27 = -v27;
    }

    v28 = *(v23 + 8 * v27 + 8);
    v29 = v66;
    rhs = v63;
    v61 = v65;
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v30)
    {
      time = rhs;
      time2 = v61;
      v31 = v30(v28, &time, &time2, 0, v29);
      if (!v31)
      {
        *&v60.value = v58;
        v60.epoch = v22;
        *&v59.value = v58;
        v59.epoch = v22;
        v32 = CMTimebaseCopySourceClock(v67);
        v33 = CMClockGetHostTimeClock();
        time = v65;
        CMSyncConvertTime(&v60, &time, v33, v32);
        CMClockGetTime(&v59, v32);
        if (v32)
        {
          CFRelease(v32);
        }

        if (dword_1EAF17080)
        {
          LODWORD(v61.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = v61.value;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
          {
            v36 = value;
          }

          else
          {
            v36 = value & 0xFFFFFFFE;
          }

          if (v36)
          {
            if (a1)
            {
              v37 = (CMBaseObjectGetDerivedStorage() + 129);
            }

            else
            {
              v37 = "";
            }

            time = v4[1];
            Seconds = CMTimeGetSeconds(&time);
            time = v65;
            v47 = CMTimeGetSeconds(&time);
            time = v64;
            v48 = CMTimeGetSeconds(&time);
            time2 = v65;
            rhs = v64;
            CMTimeSubtract(&time, &time2, &rhs);
            v49 = CMTimeGetSeconds(&time);
            time = v60;
            v50 = CMTimeGetSeconds(&time);
            time = v59;
            v51 = CMTimeGetSeconds(&time);
            time2 = v60;
            rhs = v59;
            CMTimeSubtract(&time, &time2, &rhs);
            v52 = CMTimeGetSeconds(&time);
            v53 = CMBaseObjectGetDerivedStorage();
            v54 = *(v53 + 4);
            v25 = __OFADD__(v54++, 1);
            v26 = (v54 < 0) ^ v25;
            v55 = v54 & 1;
            if (v26)
            {
              v55 = -v55;
            }

            v56 = *(v53 + 8 * v55 + 8);
            CMTimebaseGetTime(&time, v67);
            v57 = CMTimeGetSeconds(&time);
            LODWORD(time2.value) = 136317954;
            *(&time2.value + 4) = "playeroverlap_scheduleAdvanceTimerAndAnchorTime";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = a1;
            HIWORD(time2.epoch) = 2082;
            v69 = v37;
            v70 = 2048;
            v71 = Seconds;
            v72 = 2048;
            v73 = v47;
            v74 = 2048;
            v75 = v48;
            v76 = 2048;
            v77 = v49;
            v78 = 2048;
            v79 = v50;
            v80 = 2048;
            v81 = v51;
            v82 = 2048;
            v83 = v52;
            v84 = 2048;
            v85 = v56;
            v86 = 2048;
            v87 = v57;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_42;
      }

      value_low = v31;
    }

    else
    {
      value_low = 4294954514;
    }

    playeroverlap_resetOverlapRangeProperty(a1);
    goto LABEL_27;
  }

  if (playeroverlap_scheduleAdvanceTimerAndAnchorTime_cold_2(&time))
  {
LABEL_42:
    value_low = 0;
    goto LABEL_33;
  }

  value_low = LODWORD(time.value);
LABEL_28:
  playeroverlap_removeAdvanceTimer();
  v39 = CMBaseObjectGetDerivedStorage();
  v40 = *(v39 + 4);
  v25 = __OFADD__(v40++, 1);
  v26 = (v40 < 0) ^ v25;
  v41 = v40 & 1;
  if (v26)
  {
    v41 = -v41;
  }

  v42 = *(v39 + 8 * v41 + 8);
  v43 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v43 || v43(v42, 0.0))
  {
    LODWORD(rhs.value) = 0;
    LOBYTE(v61.value) = 0;
    v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_33:
  if (v67)
  {
    CFRelease(v67);
  }

  return value_low;
}

void playeroverlap_timebaseNotificationWeakCallback(uint64_t a1, const void *a2, uint64_t a3, OpaqueCMTimebase *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 8);
  CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96))
  {
    EffectiveRate = CMTimebaseGetEffectiveRate(a4);
    if (*(DerivedStorage + 104) != EffectiveRate)
    {
      v30 = 0;
      memset(&v29, 0, sizeof(v29));
      CMTimebaseGetTimeClampedAboveAnchorTime();
      memset(&v28, 0, sizeof(v28));
      HostTimeClock = CMClockGetHostTimeClock();
      memset(&time, 0, sizeof(time));
      CMSyncConvertTime(&v28, &time, a4, HostTimeClock);
      memset(&v27, 0, sizeof(v27));
      v10 = CMClockGetHostTimeClock();
      CMClockGetTime(&v27, v10);
      v26 = **&MEMORY[0x1E6960C70];
      v25 = v26;
      v11 = CMTimebaseCopySourceClock(a4);
      time = v29;
      CMSyncConvertTime(&v26, &time, a4, v11);
      CMClockGetTime(&v25, v11);
      if (v11)
      {
        CFRelease(v11);
      }

      if (dword_1EAF17080)
      {
        *v24 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(CMBaseObjectGetDerivedStorage() + 56))
      {
        if (EffectiveRate != 0.0 && *(DerivedStorage + 104) == 0.0)
        {
          if (dword_1EAF17080)
          {
            LODWORD(rhs.value) = 0;
            v24[0] = OS_LOG_TYPE_DEFAULT;
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            if (os_log_type_enabled(v13, v24[0]))
            {
              v15 = value;
            }

            else
            {
              v15 = value & 0xFFFFFFFE;
            }

            if (v15)
            {
              if (v7)
              {
                v21 = (CMBaseObjectGetDerivedStorage() + 129);
              }

              else
              {
                v21 = "";
              }

              LODWORD(lhs.value) = 136315650;
              *(&lhs.value + 4) = "playeroverlap_timebaseNotificationWeakCallback";
              LOWORD(lhs.flags) = 2048;
              *(&lhs.flags + 2) = v7;
              HIWORD(lhs.epoch) = 2082;
              v33 = v21;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (!playeroverlap_removeOutroItem(v7, 1))
          {
            playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v7);
          }
        }
      }

      else if (playeroverlap_itemAtIndex(v7, 0) == a2)
      {
        v16 = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v7);
        if (v16)
        {
          v17 = v16;
          LODWORD(rhs.value) = 0;
          v24[0] = OS_LOG_TYPE_DEFAULT;
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = rhs.value;
          if (os_log_type_enabled(v18, v24[0]))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            LODWORD(lhs.value) = 136315394;
            *(&lhs.value + 4) = "playeroverlap_timebaseNotificationWeakCallback";
            LOWORD(lhs.flags) = 1024;
            *(&lhs.flags + 2) = v17;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      *(DerivedStorage + 104) = EffectiveRate;
    }
  }
}

uint64_t playeroverlap_reInsertPendingQueue(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Copy = CFArrayCreateCopy(v3, *(DerivedStorage + 40));
  CFArrayRemoveAllValues(*(DerivedStorage + 40));
  if (CFArrayGetCount(Copy) < 1)
  {
LABEL_5:
    v8 = 0;
    if (!Copy)
    {
      return v8;
    }

LABEL_6:
    CFRelease(Copy);
    return v8;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Copy, v5);
    v7 = playeroverlap_AppendToPlayQueueInPlayerQueue(a1, ValueAtIndex, 0);
    if (v7)
    {
      break;
    }

    if (CFArrayGetCount(Copy) <= ++v5)
    {
      goto LABEL_5;
    }
  }

  v8 = v7;
  if (Copy)
  {
    goto LABEL_6;
  }

  return v8;
}

void itemoverlap_addToBlockNextNotifications(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFSetAddValue(*(DerivedStorage + 80), a2);
}

uint64_t itemoverlap_findAndDiscardFromBlockNextNotifications(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFSetContainsValue(*(DerivedStorage + 80), a2);
  if (result)
  {
    if (dword_1EAF17080 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFSetRemoveValue(*(DerivedStorage + 80), a2);
    return 1;
  }

  return result;
}

BOOL playeroverlap_isPlayQueueFull(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, Count - 1);

  return itemoverlap_hasAdvanceTime(ValueAtIndex);
}

uint64_t playeroverlap_advanceTimeReached(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  playeroverlap_removeAdvanceTimer();
  v2 = playeroverlap_itemAtIndex(a1, 0);
  if (dword_1EAF17080)
  {
    LODWORD(v38.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 56))
  {
    CMBaseObjectGetDerivedStorage();
    LODWORD(v38.value) = 0;
    LOBYTE(type.value) = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (itemoverlap_hasAdvanceTime(v2))
  {
    v7 = 1;
  }

  else
  {
    if (dword_1EAF17080)
    {
      LODWORD(v38.value) = 0;
      LOBYTE(type.value) = 0;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = 0;
  }

  if (!playeroverlap_itemAtIndex(a1, 1))
  {
    if (dword_1EAF17080)
    {
      LODWORD(v38.value) = 0;
      LOBYTE(type.value) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = 0;
  }

  if (!playeroverlap_isActionAtEnd())
  {
    if (dword_1EAF17080)
    {
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return playeroverlap_advanceTimeReached_cold_1(a1);
  }

  if (!v7)
  {
    return playeroverlap_advanceTimeReached_cold_1(a1);
  }

  v9 = playeroverlap_itemAtIndex(a1, 1);
  if (itemoverlap_addTimebaseListener(v9))
  {
    LODWORD(v38.value) = 0;
    LOBYTE(type.value) = 0;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (itemoverlap_addTimebaseListener(v2))
  {
    LODWORD(v38.value) = 0;
    LOBYTE(type.value) = 0;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    *(v13 + 104) = 1065353216;
  }

  cf = 0;
  v14 = *MEMORY[0x1E695E480];
  FigBaseObject = FigPlaybackItemGetFigBaseObject(v9);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(FigBaseObject, @"Timebase", v14, &cf);
    v17 = cf;
  }

  else
  {
    v17 = 0;
  }

  memset(&v38, 0, sizeof(v38));
  CMTimebaseGetTime(&v38, v17);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  memset(&type, 0, sizeof(type));
  if ((*(v13 + 144) & 0x1D) == 1)
  {
    lhs = v38;
    rhs = *(v13 + 132);
    CMTimeSubtract(&type, &lhs, &rhs);
  }

  else
  {
    type = v38;
  }

  v35 = *MEMORY[0x1E6960C70];
  v30 = v35;
  v36 = *(MEMORY[0x1E6960C70] + 16);
  v18 = v36;
  itemoverlap_GetCurrentTimeInPlayerQueue(v2, &v35);
  memset(&v34, 0, sizeof(v34));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v34, HostTimeClock);
  *&v33.value = v30;
  v33.epoch = v18;
  v20 = CMTimebaseCopyUltimateSourceClock(cf);
  CMClockGetTime(&v33, v20);
  if (v20)
  {
    CFRelease(v20);
  }

  if (dword_1EAF17080)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  playeroverlap_dispatchAsyncPostNotification(0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v23 = CMBaseObjectGetDerivedStorage();
  v24 = *(v23 + 4);
  v25 = __OFADD__(v24++, 1);
  v26 = (v24 < 0) ^ v25;
  v27 = v24 & 1;
  if (v26)
  {
    v27 = -v27;
  }

  *(v23 + 4) = v27;
  playeroverlap_postUpdateActiveIndex();
  *(DerivedStorage + 56) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  playeroverlap_dispatchAsyncPostNotification(0);
  itemoverlap_addToBlockNextNotifications(v2, @"ItemStoppedBeingCurrent");
  playeroverlap_dispatchAsyncPostNotification(0);
  playeroverlap_dispatchAsyncPostNotification(0);
  itemoverlap_addToBlockNextNotifications(v2, @"ItemWasRemovedFromPlayQueue");
  v28 = playeroverlap_createCurrentItemDidChangePayload(@"ReasonAdvanceForOverlappedPlayback");
  playeroverlap_dispatchAsyncPostNotification(a1);
  if (v28)
  {
    CFRelease(v28);
  }

  return playeroverlap_maybeScheduleOverlappedPlaybackEndTime(a1, v2);
}

uint64_t itemoverlap_GetCurrentTimeInPlayerQueue(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if ((v3 & 1) == 0)
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 16);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v7 = v6(v5, a2);
      if (!v7)
      {
        if (dword_1EAF17080)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }

      v9 = v7;
    }

    else
    {
      v9 = 4294954514;
    }

    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v9;
  }

  return FigSignalErrorAtGM();
}

uint64_t playeroverlap_removeAdvanceTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  result = FigPlaybackTimerIsScheduled(*(v1 + 64));
  if (result)
  {
    result = FigPlaybackTimerCancel(*(DerivedStorage + 64));
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t playeroverlap_postUpdateActiveIndex()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 120))
  {
    v1 = result;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = *(DerivedStorage + 4);
    v4 = __OFADD__(v3++, 1);
    v5 = (v3 < 0) ^ v4;
    v6 = v3 & 1;
    if (v5)
    {
      v6 = -v6;
    }

    FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 8 * v6 + 8));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(FigBaseObject, @"VideoTargetArray", 0);
    }

    v9 = CMBaseObjectGetDerivedStorage();
    v10 = *(v9 + 4);
    v4 = __OFADD__(v10++, 1);
    v5 = (v10 < 0) ^ v4;
    v11 = v10 & 1;
    if (v5)
    {
      v11 = -v11;
    }

    v12 = *MEMORY[0x1E695E4C0];
    v13 = FigPlayerGetFigBaseObject(*(v9 + 8 * v11 + 8));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, @"ShouldWaitForVideoTarget", v12);
    }

    v15 = CMBaseObjectGetDerivedStorage();
    v16 = *(v1 + 120);
    v17 = FigPlayerGetFigBaseObject(*(v15 + 8 * *(v15 + 4) + 8));
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v18(v17, @"VideoTargetArray", v16);
    }

    v19 = CMBaseObjectGetDerivedStorage();
    v20 = FigPlayerGetFigBaseObject(*(v19 + 8 * *(v19 + 4) + 8));
    VTable = CMBaseObjectGetVTable();
    v22 = *(VTable + 8);
    result = VTable + 8;
    v23 = *(v22 + 56);
    if (v23)
    {

      return v23(v20, @"ShouldWaitForVideoTarget", v12);
    }
  }

  return result;
}

__CFDictionary *playeroverlap_createCurrentItemDidChangePayload(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (Mutable)
  {
    if (a1)
    {
      CFDictionarySetValue(Mutable, @"ReasonForCurrentItemDidChange", a1);
    }
  }

  else
  {
    playeroverlap_createCurrentItemDidChangePayload_cold_1();
  }

  return v3;
}

uint64_t playeroverlap_maybeScheduleOverlappedPlaybackEndTime(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  memset(&v17, 0, sizeof(v17));
  itemoverlap_getEffectiveOverlappedPlaybackEndTime(a2, &v17);
  if ((v17.flags & 0x1D) != 1)
  {
    if (!dword_1EAF17080)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(a2);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v9 = 4294954514;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_16;
  }

  v7 = v6(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &cf);
  if (v7)
  {
    v9 = v7;
    goto LABEL_7;
  }

  if (!FigPlaybackTimerIsScheduled(*(DerivedStorage + 72)) || (v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), v11 = FigPlaybackTimerCancel(*(DerivedStorage + 72)), !v11))
  {
    v12 = *(DerivedStorage + 72);
    v13 = *(DerivedStorage + 48);
    time = v17;
    v11 = FigPlaybackTimerScheduleForTimebaseTime(v12, cf, v13, a1, playeroverlap_overlappedPlaybackEndTimeReached, &time);
    if (!v11)
    {
      if (!dword_1EAF17080)
      {
LABEL_12:
        v9 = 0;
        goto LABEL_17;
      }

LABEL_11:
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_12;
    }
  }

  v9 = v11;
  v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
LABEL_16:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void playeroverlap_overlappedPlaybackEndTimeReached(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigPlaybackTimerCancel(*(DerivedStorage + 72));
  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    playeroverlap_overlappedPlaybackEndTimeReached_cold_1(v4, a1);
  }

  else
  {
    playeroverlap_overlappedPlaybackEndTimeReached_cold_2();
  }
}

uint64_t playeroverlap_initNotificationQueueOnce(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

const void *playeroverlap_Invalidate(void *a1)
{
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    return FigSignalErrorAtGM();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 48), a1, playeroverlap_cancelOverlap_fun);
  FigSimpleMutexLock();
  CFSetApplyFunction(*(DerivedStorage + 88), itemoverlap_forEachItemInvalidate, 0);
  CFSetRemoveAllValues(*(DerivedStorage + 88));
  FigSimpleMutexUnlock();
  dispatch_sync_f(*(DerivedStorage + 48), a1, playeroverlap_flipInvalid);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    FigBaseObject = FigPlayerGetFigBaseObject(v6);
    if (FigBaseObject)
    {
      v8 = FigBaseObject;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }
  }

  v10 = *(DerivedStorage + 16);
  if (v10)
  {
    v11 = FigPlayerGetFigBaseObject(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v13)
      {
        v13(v12);
      }
    }
  }

  dispatch_sync_f(*(DerivedStorage + 48), 0, playeroverlap_noopToFlushTheQueue);
  CFArrayRemoveAllValues(*(DerivedStorage + 40));
  CFArrayRemoveAllValues(*(DerivedStorage + 24));
  CFArrayRemoveAllValues(*(DerivedStorage + 32));
  v14 = *(DerivedStorage + 112);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 112) = 0;
  }

  v15 = *(DerivedStorage + 120);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 120) = 0;
  }

  *(DerivedStorage + 4) = -1;
  result = *(DerivedStorage + 56);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(DerivedStorage + 56) = 0;
  }

  return result;
}

uint64_t playeroverlap_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = atomic_load(DerivedStorage);
  if ((v4 & 1) == 0)
  {
    playeroverlap_Invalidate(a1);
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 24) = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 64) = 0;
  }

  v12 = *(DerivedStorage + 72);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 72) = 0;
  }

  FigSimpleMutexLock();
  v13 = *(DerivedStorage + 88);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 88) = 0;
  }

  FigSimpleMutexUnlock();
  return FigSimpleMutexDestroy();
}

__CFString *playeroverlap_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = playeroverlap_itemAtIndex(a1, 0);
  v4 = playeroverlap_itemAtIndex(a1, 1);
  v5 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v5, 0);
  if (a1)
  {
    v7 = (CMBaseObjectGetDerivedStorage() + 129);
  }

  else
  {
    v7 = "";
  }

  v16 = v7;
  v8 = *(DerivedStorage + 8);
  v9 = *(DerivedStorage + 16);
  v10 = *(DerivedStorage + 4);
  if (v3)
  {
    v11 = (CMBaseObjectGetDerivedStorage() + 156);
    if (v4)
    {
LABEL_6:
      v12 = (CMBaseObjectGetDerivedStorage() + 156);
      goto LABEL_9;
    }
  }

  else
  {
    v11 = "";
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v12 = "";
LABEL_9:
  v13 = *(DerivedStorage + 56);
  if (v13)
  {
    v14 = (CMBaseObjectGetDerivedStorage() + 156);
  }

  else
  {
    v14 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlayerOverlap %p %s sub-players: [%p, %p] active index: %d, current item %p %s, next item %p %s, outro item %p %s>", a1, v16, v8, v9, v10, v3, v11, v4, v12, v13, v14);
  return Mutable;
}

uint64_t playeroverlap_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
LABEL_10:

    return FigSignalErrorAtGM();
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v10 & 1) == 0)
    {
      context[3] = a4;
      v16 = 0;
      context[0] = a1;
      context[1] = a3;
      context[2] = a2;
      dispatch_sync_f(*(DerivedStorage + 48), context, playeroverlap_copyPropertyFromActiveSubPlayer_fun);
      return v16;
    }

    goto LABEL_10;
  }

  if (FigCFEqual())
  {

    return playeroverlap_copyVideoTargetArray(a1, a4);
  }

  else if (FigCFEqual())
  {

    return playeroverlap_copyPerformanceHistoryArray(a1, a3, a4);
  }

  else if (CFEqual(a2, @"FigAudioSession2"))
  {
    return 4294954436;
  }

  else if (FigCFEqual())
  {

    return playeroverlap_copyItemsToPrebuffer(a1, a4);
  }

  else if (FigCFEqual())
  {
    v12 = *(CMBaseObjectGetDerivedStorage() + 8);

    return FPSupport_CreatePlayerTopology(a3, @"Overlap", v12, a4);
  }

  else
  {
    v13 = CMBaseObjectGetDerivedStorage();
    FigBaseObject = FigPlayerGetFigBaseObject(*(v13 + 8));

    return CMBaseObjectCopyProperty(FigBaseObject, a2, a3, a4);
  }
}

uint64_t playeroverlap_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = FigCFCopyCompactDescription();
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return FPSupport_HandlePlayerSetPropertyAndCopyModification(a1, a2, a3, 0, playeroverlap_handleSetProperty, 0, 0, 0);
  }
}

uint64_t playeroverlap_cancelOverlap_fun(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigPlaybackTimerIsScheduled(*(DerivedStorage + 64));
  if (result)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = *(v4 + 4);
    v6 = __OFADD__(v5++, 1);
    v7 = (v5 < 0) ^ v6;
    v8 = v5 & 1;
    if (v7)
    {
      v8 = -v8;
    }

    v9 = *(v4 + 8 * v8 + 8);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v10)
    {
      v10(v9, 0.0);
    }

    playeroverlap_removeAdvanceTimer();
    if (playeroverlap_itemAtIndex(a1, 0))
    {
      v11 = CMBaseObjectGetDerivedStorage();
      FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v11 + 16));
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(FigBaseObject, @"OverlapRange", 0);
      }
    }

    result = playeroverlap_itemAtIndex(a1, 1);
    if (result)
    {
      v14 = CMBaseObjectGetDerivedStorage();
      v15 = FigPlaybackItemGetFigBaseObject(*(v14 + 16));
      VTable = CMBaseObjectGetVTable();
      v17 = *(VTable + 8);
      result = VTable + 8;
      v18 = *(v17 + 56);
      if (v18)
      {

        return v18(v15, @"OverlapRange", 0);
      }
    }
  }

  return result;
}

unsigned __int8 *playeroverlap_flipInvalid()
{
  result = CMBaseObjectGetDerivedStorage();
  atomic_store(1u, result);
  return result;
}

uint64_t itemoverlap_invalidateDispatchSync(uint64_t a1)
{
  v2 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v2 & 1) != 0 || (CMBaseObjectGetDerivedStorage(), DerivedStorage = CMBaseObjectGetDerivedStorage(), v4 = atomic_load(CMBaseObjectGetDerivedStorage()), (v4))
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = a1;
    v7 = 0;
    dispatch_sync_f(*(DerivedStorage + 48), &v6, itemoverlap_invalidateDispatchSync_fun);
    return v7;
  }
}

uint64_t itemoverlap_invalidateDispatchSync_fun(uint64_t a1)
{
  v2 = *a1;
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v3)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8);
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = playeroverlap_itemAtIndex(v6, 0);
    if (*(CMBaseObjectGetDerivedStorage() + 56) && (v8 == v2 || *(v7 + 56) == v2))
    {
      itemoverlap_invalidateDispatchSync_fun_cold_1(v6);
    }

    atomic_store(1u, DerivedStorage);
    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterRemoveWeakListener())
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (itemoverlap_removeTimebaseListener())
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 16));
    if (FigBaseObject)
    {
      v12 = FigBaseObject;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v13)
      {
        v13(v12);
      }
    }

    CFSetRemoveAllValues(*(DerivedStorage + 80));
    result = 0;
  }

  *(a1 + 8) = result;
  return result;
}

unsigned __int8 *itemoverlap_subItemNotificationWeakCallback(uint64_t a1, const void *a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = atomic_load(result);
  if (v6)
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v8 = result;
    if (dword_1EAF17080)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(v8 + 8);
    if (playeroverlap_indexForItem() != -1 && (FigCFEqual() || FigCFEqual()))
    {
      *(v8 + 88) = 3;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = FigCFEqual();
    if ((v11 & 1) != 0 || v12)
    {
      itemoverlap_subItemNotificationWeakCallback_cold_1(v10, v8, a2);
    }

    if (FigCFEqual() && *(v8 + 88))
    {
      playeroverlap_removeFinishedItem(v10, a2);
    }

    if (FigCFEqual())
    {
      v13 = playeroverlap_itemAtIndex(v10, 0);
      if (itemoverlap_hasAdvanceTime(v13) && (playeroverlap_itemAtIndex(v10, 1) == a2 || playeroverlap_itemAtIndex(v10, 0) == a2))
      {
        itemoverlap_subItemNotificationWeakCallback_cold_2(v10);
      }
    }

    result = itemoverlap_findAndDiscardFromBlockNextNotifications(a2, a3);
    if (!result)
    {
      return playeroverlap_dispatchAsyncPostNotification(0);
    }
  }

  return result;
}

uint64_t playeroverlap_indexForItem()
{
  CMBaseObjectGetDerivedStorage();
  result = FigCFArrayGetFirstIndexOfValue();
  if (result == -1)
  {
    if (*(CMBaseObjectGetDerivedStorage() + 56))
    {
      Count = 0;
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v6 = DerivedStorage + 24;
      v7 = *(DerivedStorage + 4);
      if (FirstIndexOfValue != -1)
      {
        return CFArrayGetCount(*(v6 + 8 * v7)) + FirstIndexOfValue;
      }

      v8 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      v9 = (v10 < 0) ^ v8;
      v11 = v10 & 1;
      if (v9)
      {
        v11 = -v11;
      }

      Count = CFArrayGetCount(*(v6 + 8 * v11));
    }

    CMBaseObjectGetDerivedStorage();
    result = FigCFArrayGetFirstIndexOfValue();
    if (result != -1)
    {
      v2 = result;
      v3 = CMBaseObjectGetDerivedStorage();
      return v2 + Count + CFArrayGetCount(*(v3 + 8 * *(v3 + 4) + 24));
    }
  }

  return result;
}

BOOL playeroverlap_isLastItem(uint64_t a1, const void *a2)
{
  v4 = playeroverlap_playQueueCount();
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = playeroverlap_itemAtIndex(a1, v4 - 1);
  }

  return v5 == a2;
}

uint64_t playeroverlap_removeFinishedItem(void *a1, uint64_t a2)
{
  v2 = a2;
  v49 = *MEMORY[0x1E69E9840];
  if (*(CMBaseObjectGetDerivedStorage() + 56) == a2)
  {
    if (playeroverlap_removeOutroItem(a1, 0) || playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(a1))
    {
      goto LABEL_6;
    }
  }

  else
  {
    playeroverlap_removeItemAndRefreshPlayQueue(a1, v2, 0, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23, SWORD2(v23), SBYTE6(v23), HIBYTE(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    if (v17)
    {
LABEL_6:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  result = itemoverlap_removeTimebaseListener();
  if (result)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF17080)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t playeroverlap_removeFromInternalPlayQueue(uint64_t a1, uint64_t a2, int a3)
{
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = *(v8 + 72);
  if (v9 == -1)
  {
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    if (FirstIndexOfValue == -1)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), FirstIndexOfValue);
    }

    return 0;
  }

  v10 = v8;
  v11 = FigCFArrayGetFirstIndexOfValue();
  v12 = v11;
  v13 = 0;
  if (!a3)
  {
LABEL_23:
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 24 + 8 * v9), v12);
    v35 = CMBaseObjectGetDerivedStorage();
    *(v35 + 88) = 0;
    *(v35 + 72) = -1;
    if (v13)
    {
      v36 = CMBaseObjectGetDerivedStorage();
      if (FigPlaybackTimerIsScheduled(*(v36 + 64)))
      {
        v34 = playeroverlap_rescheduleAdvanceTimerAndAnchorTime(a1);
        if (v34)
        {
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return v34;
      }
    }

    return 0;
  }

  if (v9 != *(DerivedStorage + 4) && !v11)
  {
    itemoverlap_addToBlockNextNotifications(a2, @"ItemStoppedBeingCurrent");
    v14 = CMBaseObjectGetDerivedStorage();
    v15 = *(v14 + 4);
    v16 = __OFADD__(v15++, 1);
    v17 = (v15 < 0) ^ v16;
    v18 = v15 & 1;
    if (v17)
    {
      v18 = -v18;
    }

    if (CFArrayGetCount(*(v14 + 8 * v18 + 24)) < 2)
    {
      v13 = 0;
    }

    else
    {
      v19 = CMBaseObjectGetDerivedStorage();
      v20 = *(v19 + 4);
      v16 = __OFADD__(v20++, 1);
      v17 = (v20 < 0) ^ v16;
      v21 = v20 & 1;
      if (v17)
      {
        v21 = -v21;
      }

      v13 = 1;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v19 + 8 * v21 + 24), 1);
      itemoverlap_addToBlockNextNotifications(ValueAtIndex, @"ItemBecameCurrent");
    }
  }

  if (a3 == 1)
  {
    v25 = *(DerivedStorage + 8 * v9 + 8);
    v26 = *(v10 + 16);
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v27)
    {
      v28 = v27(v25, v26);
      goto LABEL_22;
    }

LABEL_27:
    v34 = 4294954514;
    goto LABEL_28;
  }

  v29 = CMBaseObjectGetDerivedStorage();
  v30 = CMBaseObjectGetDerivedStorage();
  v31 = *(v29 + 8 * *(v30 + 72) + 8);
  v32 = *(v30 + 16);
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v33)
  {
    goto LABEL_27;
  }

  v28 = v33(v31, v32, v31);
LABEL_22:
  v34 = v28;
  if (!v28)
  {
    goto LABEL_23;
  }

LABEL_28:
  if (v9 != *(DerivedStorage + 4) && !v12)
  {
    itemoverlap_findAndDiscardFromBlockNextNotifications(a2, @"ItemStoppedBeingCurrent");
    v38 = CMBaseObjectGetDerivedStorage();
    v39 = *(v38 + 4);
    v16 = __OFADD__(v39++, 1);
    v17 = (v39 < 0) ^ v16;
    v40 = v39 & 1;
    if (v17)
    {
      v40 = -v40;
    }

    if (CFArrayGetCount(*(v38 + 8 * v40 + 24)) >= 2)
    {
      v41 = CMBaseObjectGetDerivedStorage();
      v42 = *(v41 + 4);
      v16 = __OFADD__(v42++, 1);
      v17 = (v42 < 0) ^ v16;
      v43 = v42 & 1;
      if (v17)
      {
        v43 = -v43;
      }

      v44 = CFArrayGetValueAtIndex(*(v41 + 8 * v43 + 24), 1);
      itemoverlap_findAndDiscardFromBlockNextNotifications(v44, @"ItemBecameCurrent");
    }
  }

  return v34;
}

uint64_t playeroverlap_setItemsToPrebufferInPlayerQueue(uint64_t a1, const __CFArray *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  cf = 0;
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    playeroverlap_setItemsToPrebufferInPlayerQueue_cold_6(&v52, &v51);
    v39 = 0;
    v8 = v51;
    if (v51)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v52 = Mutable;
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      cf = v9;
      if (!v9)
      {
        playeroverlap_setItemsToPrebufferInPlayerQueue_cold_4(&v51);
        v39 = v51;
        goto LABEL_44;
      }

      if (!a2)
      {
        goto LABEL_32;
      }

      v10 = v9;
      Count = CFArrayGetCount(a2);
      v12 = Count;
      v13 = Count > 0;
      if (Count >= 1)
      {
        v50 = v8;
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
          if (!ValueAtIndex || (v16 = CFGetTypeID(ValueAtIndex), v16 != FigPlaybackItemGetTypeID()))
          {
            playeroverlap_setItemsToPrebufferInPlayerQueue_cold_3(&v51);
            goto LABEL_51;
          }

          if (CMBaseObjectGetVTable() != &kFigPlaybackItemOverlapVTable)
          {
            playeroverlap_setItemsToPrebufferInPlayerQueue_cold_1(&v51);
            goto LABEL_51;
          }

          if (*(CMBaseObjectGetDerivedStorage() + 8) != a1)
          {
            break;
          }

          if (v12 == ++v14)
          {
            goto LABEL_15;
          }
        }

        playeroverlap_setItemsToPrebufferInPlayerQueue_cold_2(&v51);
LABEL_51:
        v39 = v51;
        goto LABEL_43;
      }

      if (!Count)
      {
LABEL_32:
        v40 = CMBaseObjectGetDerivedStorage();
        FigBaseObject = FigPlayerGetFigBaseObject(*(v40 + 8 * *(v40 + 4) + 8));
        v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v42)
        {
          v42(FigBaseObject, @"ItemsToPrebuffer", 0);
        }

        v43 = CMBaseObjectGetDerivedStorage();
        v44 = *(v43 + 4);
        v29 = __OFADD__(v44++, 1);
        v30 = (v44 < 0) ^ v29;
        v45 = v44 & 1;
        if (v30)
        {
          v45 = -v45;
        }

        v46 = FigPlayerGetFigBaseObject(*(v43 + 8 * v45 + 8));
        v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v47)
        {
          v39 = v47(v46, @"ItemsToPrebuffer", 0);
        }

        else
        {
          v39 = 4294954514;
        }

        v48 = *(DerivedStorage + 112);
        if (v48)
        {
          CFRelease(v48);
          *(DerivedStorage + 112) = 0;
        }

        goto LABEL_44;
      }

      v50 = v8;
      v13 = 0;
LABEL_15:
      v17 = *(DerivedStorage + 112);
      *(DerivedStorage + 112) = a2;
      CFRetain(a2);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v13)
      {
        v18 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 112), v18);
          v19 = CMBaseObjectGetDerivedStorage();
          v20 = v19;
          v21 = *(v19 + 72);
          if (v21 == -1)
          {
            v23 = CMBaseObjectGetDerivedStorage();
            v24 = *(v23 + 8 * *(v23 + 4) + 8);
            v26 = *(v20 + 16);
            v22 = (v20 + 16);
            v25 = v26;
            v27 = CMBaseObjectGetDerivedStorage();
            v28 = *(v27 + 4);
            v29 = __OFADD__(v28++, 1);
            v30 = (v28 < 0) ^ v29;
            v31 = v28 & 1;
            if (v30)
            {
              v31 = -v31;
            }

            v32 = *(v27 + 8 * v31 + 8);
            v33 = *(*(CMBaseObjectGetVTable() + 16) + 144);
            if (v33)
            {
              v33(v24, v25, v32);
            }

            v21 = *(DerivedStorage + 4);
          }

          else
          {
            v22 = (v19 + 16);
          }

          CFArrayAppendValue(*(&v52 + v21), *v22);
          ++v18;
        }

        while (v12 != v18);
      }

      v34 = FigPlayerGetFigBaseObject(*(DerivedStorage + 8));
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v35)
      {
        v39 = 4294954514;
LABEL_43:
        v8 = v50;
        goto LABEL_44;
      }

      v8 = v50;
      v36 = v35(v34, @"ItemsToPrebuffer", v50);
      if (!v36)
      {
        v37 = FigPlayerGetFigBaseObject(*(DerivedStorage + 16));
        v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v38)
        {
          v39 = 4294954514;
          goto LABEL_44;
        }

        v36 = v38(v37, @"ItemsToPrebuffer", v10);
      }

      v39 = v36;
LABEL_44:
      CFRelease(v8);
      goto LABEL_45;
    }

    playeroverlap_setItemsToPrebufferInPlayerQueue_cold_5(&v51);
    v39 = v51;
  }

LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  return v39;
}

uint64_t playeroverlap_refreshPlayQueueFromIndex(const void *a1, CFIndex a2)
{
  v4 = playeroverlap_playQueueCount();
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4 <= a2)
  {
    return 0;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  do
  {
    v8 = playeroverlap_itemAtIndex(a1, --v4);
    if (*(CMBaseObjectGetDerivedStorage() + 72) != -1)
    {
      itemoverlap_addToBlockNextNotifications(v8, @"ItemWasRemovedFromPlayQueue");
    }

    v9 = playeroverlap_removeFromInternalPlayQueue(a1, v8, 2);
    if (v9)
    {
      goto LABEL_19;
    }

    CFArrayInsertValueAtIndex(Mutable, 0, v8);
  }

  while (v4 > a2);
  if (CFArrayGetCount(Mutable) < 1)
  {
LABEL_13:
    v12 = *(CMBaseObjectGetDerivedStorage() + 112);
    if (v12)
    {
      playeroverlap_setItemsToPrebufferInPlayerQueue(a1, v12);
    }

    v13 = 0;
    if (!Mutable)
    {
      return v13;
    }

LABEL_16:
    CFRelease(Mutable);
    return v13;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v10);
    v9 = playeroverlap_AppendToPlayQueueInPlayerQueue(a1, ValueAtIndex, 0);
    if (v9)
    {
      break;
    }

    if (++v10 >= CFArrayGetCount(Mutable))
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  v13 = v9;
  if (Mutable)
  {
    goto LABEL_16;
  }

  return v13;
}

uint64_t playeroverlap_GetRateInPlayerQueue(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load(CMBaseObjectGetDerivedStorage());
  if ((v3 & 1) == 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8 * *(DerivedStorage + 4) + 8);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v7)
    {
      v8 = v7(v6, a2);
      if (!v8)
      {
        if (dword_1EAF17080)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }

      v10 = v8;
    }

    else
    {
      v10 = 4294954514;
    }

    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v10;
  }

  return FigSignalErrorAtGM();
}

uint64_t playeroverlap_SetRateInPlayerQueue(const void *a1, float a2)
{
  v7[16] = *MEMORY[0x1E69E9840];
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    memset(v7, 0, 24);
    return playeroverlap_SetRateCommon(a1, v7, a2);
  }
}

uint64_t itemoverlap_Invalidate(const void *a1)
{
  v2 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v2)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = itemoverlap_invalidateDispatchSync(a1);
    CMBaseObjectGetDerivedStorage();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    CFSetRemoveValue(*(DerivedStorage + 88), a1);
    FigSimpleMutexUnlock();
    return v5;
  }
}

void itemoverlap_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = atomic_load(DerivedStorage);
  if ((v4 & 1) == 0)
  {
    itemoverlap_Invalidate(a1);
  }

  *(DerivedStorage + 8) = 0;
  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 80);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 80) = 0;
  }
}

__CFString *itemoverlap_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 156);
  }

  else
  {
    v5 = "";
  }

  epoch = DerivedStorage->epoch;
  time = DerivedStorage[1];
  Seconds = CMTimeGetSeconds(&time);
  time = DerivedStorage[2];
  v8 = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackItemOverlap %p %s sub-item %p advanceTime %1.3f overlappedPlaybackEndTime %1.3f>", a1, v5, epoch, *&Seconds, *&v8);
  return Mutable;
}

uint64_t itemoverlap_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v8)
  {
    goto LABEL_9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"AdvanceTimeForOverlappedPlayback"))
  {
    v10 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v10)
    {
      goto LABEL_9;
    }

    CMBaseObjectGetDerivedStorage();
    v11 = CMBaseObjectGetDerivedStorage();
    v12 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v12)
    {
      goto LABEL_9;
    }

    v21 = a1;
    v22 = a3;
    v23 = a4;
    v24 = 0;
    v17 = *(v11 + 48);
    v18 = playeroverlap_copyAdvanceTimeForOverlappedPlayback_fun;
LABEL_19:
    dispatch_sync_f(v17, &v21, v18);
    return v24;
  }

  if (CFEqual(a2, @"OverlappedPlaybackEndTime"))
  {
    v13 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v13 & 1) == 0)
    {
      CMBaseObjectGetDerivedStorage();
      v14 = CMBaseObjectGetDerivedStorage();
      v15 = atomic_load(CMBaseObjectGetDerivedStorage());
      if ((v15 & 1) == 0)
      {
        v21 = a1;
        v22 = a3;
        v23 = a4;
        v24 = 0;
        v17 = *(v14 + 48);
        v18 = playeroverlap_copyOverlappedPlaybackEndTime_fun;
        goto LABEL_19;
      }
    }

LABEL_9:

    return FigSignalErrorAtGM();
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 16));
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    return 4294954514;
  }

  return v20(FigBaseObject, a2, a3, a4);
}

uint64_t itemoverlap_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v6)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v8 = FigCFCopyCompactDescription();
    if (dword_1EAF17080)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, itemoverlap_handleSetProperty, 0, 0, 0);
  }
}

uint64_t playeroverlap_copyAdvanceTimeForOverlappedPlayback_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((*(DerivedStorage + 36) & 0x1D) == 1)
    {
      v8 = *(DerivedStorage + 24);
      v7 = CMTimeCopyAsDictionary(&v8, v2);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *v3 = v7;
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t playeroverlap_copyOverlappedPlaybackEndTime_fun(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v4)
  {
    result = FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((*(DerivedStorage + 60) & 0x1D) == 1)
    {
      v8 = *(DerivedStorage + 48);
      v7 = CMTimeCopyAsDictionary(&v8, v2);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *v3 = v7;
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t itemoverlap_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v9)
  {
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a5 = 1;
  if (CFEqual(a3, @"AdvanceTimeForOverlappedPlayback"))
  {
    v11 = *(DerivedStorage + 8);
    v12 = CMBaseObjectGetDerivedStorage();
    v13 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v13)
    {
      goto LABEL_11;
    }

    v25 = v11;
    v26 = a1;
    v27 = a4;
    v28 = 0;
    v17 = *(v12 + 48);
    v18 = playeroverlap_setAdvanceTimeForOverlappedPlayback_fun;
LABEL_20:
    dispatch_sync_f(v17, &v25, v18);
    return v28;
  }

  if (CFEqual(a3, @"OverlappedPlaybackEndTime"))
  {
    v14 = *(DerivedStorage + 8);
    v15 = CMBaseObjectGetDerivedStorage();
    v16 = atomic_load(CMBaseObjectGetDerivedStorage());
    if (v16)
    {
      goto LABEL_11;
    }

    v25 = v14;
    v26 = a1;
    v27 = a4;
    v28 = 0;
    v17 = *(v15 + 48);
    v18 = playeroverlap_setOverlappedPlaybackEndTime_fun;
    goto LABEL_20;
  }

  if (CFEqual(a3, @"EndTime"))
  {
    v19 = *(DerivedStorage + 8);
    v20 = CMBaseObjectGetDerivedStorage();
    v21 = atomic_load(CMBaseObjectGetDerivedStorage());
    if ((v21 & 1) == 0)
    {
      v25 = v19;
      v26 = a1;
      v27 = a4;
      v28 = 0;
      v17 = *(v20 + 48);
      v18 = playeroverlap_setEndTime_fun;
      goto LABEL_20;
    }

LABEL_11:

    return FigSignalErrorAtGM();
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 16));
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v24)
  {
    return 4294954514;
  }

  return v24(FigBaseObject, a3, a4);
}

uint64_t playeroverlap_setAdvanceTimeForOverlappedPlayback_fun(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    goto LABEL_25;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 56) == v2)
  {
    LODWORD(value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_25:
    result = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  hasAdvanceTime = itemoverlap_hasAdvanceTime(v2);
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (v4)
  {
    CMTimeMakeFromDictionary(&time, v4);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  if (dword_1EAF17080)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (flags & 0x1D) != 1 && (flags)
  {
    playeroverlap_setAdvanceTimeForOverlappedPlayback_fun_cold_2(&time);
LABEL_31:
    result = LODWORD(time.value);
    goto LABEL_26;
  }

  if ((flags & 0x1D) == 1)
  {
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time, &time2) <= 0)
    {
      playeroverlap_setAdvanceTimeForOverlappedPlayback_fun_cold_1(&time);
      goto LABEL_31;
    }
  }

  time = *(DerivedStorage + 24);
  time2.value = value;
  time2.timescale = timescale;
  time2.flags = flags;
  time2.epoch = epoch;
  result = CMTimeCompare(&time, &time2);
  if (result)
  {
    *(DerivedStorage + 24) = value;
    *(DerivedStorage + 32) = timescale;
    *(DerivedStorage + 36) = flags;
    *(DerivedStorage + 40) = epoch;
    if (*(DerivedStorage + 72) == -1)
    {
LABEL_24:
      result = 0;
      goto LABEL_26;
    }

    if (playeroverlap_itemAtIndex(v3, 0) != v2 || !hasAdvanceTime || (v14 = CMBaseObjectGetDerivedStorage(), !FigPlaybackTimerIsScheduled(*(v14 + 64))) || (result = playeroverlap_cancelScheduledOverlap(v3), !result))
    {
      if (hasAdvanceTime == itemoverlap_hasAdvanceTime(v2) || (v15 = playeroverlap_indexForItem(), result = playeroverlap_refreshPlayQueueFromIndex(v3, v15 + 1), !result))
      {
        if (playeroverlap_itemAtIndex(v3, 0) == v2)
        {
          result = playeroverlap_maybeScheduleAdvanceTimerAndAnchorTime(v3);
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }
  }

LABEL_26:
  *(a1 + 24) = result;
  return result;
}

uint64_t playeroverlap_setOverlappedPlaybackEndTime_fun(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = atomic_load(CMBaseObjectGetDerivedStorage());
  if (v5)
  {
    result = FigSignalErrorAtGM();
    v7 = result;
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = v2;
  v18 = CMBaseObjectGetDerivedStorage();
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (v4)
  {
    CMTimeMakeFromDictionary(&time, v4);
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  if (dword_1EAF17080)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (flags & 0x1D) != 1 && (flags)
  {
    result = playeroverlap_setOverlappedPlaybackEndTime_fun_cold_5(&time);
LABEL_29:
    v7 = time.value;
    goto LABEL_27;
  }

  if ((flags & 0x1D) == 1)
  {
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time, &time2) <= 0)
    {
      result = playeroverlap_setOverlappedPlaybackEndTime_fun_cold_1(&time);
      goto LABEL_29;
    }
  }

  if ((DerivedStorage[1].flags & 0x1D) == 1)
  {
    time = DerivedStorage[1];
    time2.value = value;
    time2.timescale = timescale;
    time2.flags = flags;
    time2.epoch = epoch;
    if (CMTimeCompare(&time, &time2) >= 1)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  time = DerivedStorage[2];
  time2.value = value;
  time2.timescale = timescale;
  time2.flags = flags;
  time2.epoch = epoch;
  result = CMTimeCompare(&time, &time2);
  if (result)
  {
    if (*(v18 + 56) == v3)
    {
      if ((DerivedStorage[2].flags & 0x1D) == 1)
      {
        v15 = FigPlaybackTimerCancel(*(v18 + 72));
        if (v15)
        {
          v7 = v15;
          result = playeroverlap_setOverlappedPlaybackEndTime_fun_cold_2();
          goto LABEL_27;
        }
      }

      DerivedStorage[2].value = value;
      DerivedStorage[2].timescale = timescale;
      DerivedStorage[2].flags = flags;
      DerivedStorage[2].epoch = epoch;
      v14 = v17;
      v16 = playeroverlap_maybeScheduleOverlappedPlaybackEndTime(v17, v3);
      if (v16)
      {
        v7 = v16;
        result = playeroverlap_setOverlappedPlaybackEndTime_fun_cold_3();
        goto LABEL_27;
      }
    }

    else
    {
      DerivedStorage[2].value = value;
      DerivedStorage[2].timescale = timescale;
      DerivedStorage[2].flags = flags;
      DerivedStorage[2].epoch = epoch;
      v14 = v17;
    }

    result = playeroverlap_maybeSetOverlapRangeProperty(v14);
    v7 = result;
    if (result)
    {
      result = playeroverlap_setOverlappedPlaybackEndTime_fun_cold_4();
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_27:
  *(a1 + 24) = v7;
  return result;
}