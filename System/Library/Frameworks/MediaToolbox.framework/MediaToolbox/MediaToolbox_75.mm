uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Layout(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(MEMORY[0x1E695F050] + 16);
  v52.origin = *MEMORY[0x1E695F050];
  v52.size = v5;
  v51 = *MEMORY[0x1E695F060];
  v6 = *MEMORY[0x1E695EFF8];
  v49[1] = v5;
  v50 = v6;
  v49[0] = v52.origin;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 72);
      if (v9)
      {
        v9(a1, v49);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v10 = CMBaseObjectGetProtocolVTable();
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        v12(a1, &v52);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v13 = CMBaseObjectGetProtocolVTable();
  if (v13)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v14 + 120);
      if (v15)
      {
        v15(a1, &v51);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v16 = CMBaseObjectGetProtocolVTable();
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v17 + 136);
      if (v18)
      {
        v18(a1, &v50);
      }
    }
  }

  if (v52.origin.x != v50.x || v52.origin.y != v50.y)
  {
    v52.origin = v50;
    v19 = v50;
    size = v52.size;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v21 = CMBaseObjectGetProtocolVTable();
    if (v21)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = *(v22 + 96);
        if (v23)
        {
          v23(a1, v19.x, v19.y, size.width, size.height);
        }
      }
    }
  }

  if (v52.size.width != v51.width || v52.size.height != v51.height)
  {
    v52.size = v51;
    origin = v52.origin;
    v25 = v51;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v26 = CMBaseObjectGetProtocolVTable();
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v27 + 96);
        if (v28)
        {
          v28(a1, origin.x, origin.y, v25.width, v25.height);
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v29 = CMBaseObjectGetProtocolVTable();
    if (v29)
    {
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = *(v30 + 216);
        if (v31)
        {
          v31(a1, 1);
        }
      }
    }
  }

  v32 = *(a2 + 312);
  if (v32)
  {
    theDict = 0;
    FigCaptionRendererLayoutContextGetSubtitleSample(v32, &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"SubtitleContent");
      if (Value)
      {
        v34 = Value;
        Count = CFArrayGetCount(Value);
        v47 = 0;
        FigCaptionRendererLayoutContextGetMapping(*(a2 + 312), a1, &v47);
        if (Count >= 1)
        {
          v36 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v34, v36);
            if (ValueAtIndex)
            {
              v38 = ValueAtIndex;
              if (CFAttributedStringGetLength(ValueAtIndex))
              {
                if (v38 == v47)
                {
                  break;
                }
              }
            }

            if (Count == ++v36)
            {
              goto LABEL_49;
            }
          }

          Length = CFAttributedStringGetLength(v38);
          if (*(DerivedStorage + 88))
          {
            v53.location = 0;
            v53.length = Length;
            CFAttributedStringReplaceAttributedString(v38, v53, *(DerivedStorage + 80));
          }

          else
          {
            v40 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, (DerivedStorage + 24));
            v54.location = 0;
            v54.length = Length;
            CFAttributedStringSetAttribute(v38, v54, @"kFigSubtitleRenderer_FontSizeToUse", v40);
            if (v40)
            {
              CFRelease(v40);
            }
          }

          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v52);
          v55.location = 0;
          v55.length = Length;
          CFAttributedStringSetAttribute(v38, v55, @"kFigSubtitleRenderer_SuggestTextLayout", DictionaryRepresentation);
          if (DictionaryRepresentation)
          {
            CFRelease(DictionaryRepresentation);
          }
        }
      }
    }
  }

LABEL_49:
  v42 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v43 = CMBaseObjectGetProtocolVTable();
  if (!v43)
  {
    return 4294954508;
  }

  v44 = *(v43 + 16);
  if (!v44)
  {
    return 4294954508;
  }

  v45 = *(v44 + 288);
  if (v45)
  {
    return v45(v42, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1)
{
  v40 = *MEMORY[0x1E695EFF8];
  v47 = *MEMORY[0x1E695EFF8];
  __s1 = 0;
  theArray = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v3 = *(ProtocolVTable + 16)) != 0)
  {
    v4 = *(v3 + 344);
    if (v4)
    {
      v5 = v4(a1, &theArray);
      if (v5)
      {
        v22 = v5;
      }

      else
      {
        if (!theArray || !CFArrayGetCount(theArray))
        {
          return 0;
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v6 = CMBaseObjectGetProtocolVTable();
        if (v6)
        {
          v7 = *(v6 + 16);
          if (v7)
          {
            v8 = *(v7 + 136);
            if (v8)
            {
              v8(a1, &v47);
            }
          }
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        FigCaptionRendererBaseProtocolGetProtocolID();
        v10 = CMBaseObjectGetProtocolVTable();
        if (v10 && (v11 = *(v10 + 16)) != 0)
        {
          v12 = *(v11 + 8);
          if (v12)
          {
            v13 = v12(ValueAtIndex, &__s1);
            if (!v13)
            {
              if (__s1 && !strcmp(__s1, "FigCaptionRendererMoveToAction"))
              {
                v44 = v40;
                v43 = 0;
                FigCaptionRendererMoveToActionProtocolGetProtocolID();
                v14 = CMBaseObjectGetProtocolVTable();
                if (v14)
                {
                  v15 = *(v14 + 16);
                  if (v15)
                  {
                    v16 = *(v15 + 8);
                    if (v16)
                    {
                      v16(ValueAtIndex, &v44);
                    }
                  }
                }

                FigCaptionRendererActionProtocolGetProtocolID();
                v17 = CMBaseObjectGetProtocolVTable();
                if (v17)
                {
                  v18 = *(v17 + 16);
                  if (v18)
                  {
                    v19 = *(v18 + 8);
                    if (v19)
                    {
                      v19(ValueAtIndex, &v43);
                    }
                  }
                }

                v20 = v43;
                if (v43 < 33)
                {
                  v21 = vsubq_f64(v44, v47);
                }

                else
                {
                  v21 = vdivq_f64(vsubq_f64(v44, v47), vdupq_lane_s64(COERCE__INT64((v43 / 0x21u + 1)), 0));
                }

                if (v21.f64[0] != 0.0 || v21.f64[1] != 0.0)
                {
                  v41 = vaddq_f64(v21, v47);
                  v47 = v41;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v24 = CMBaseObjectGetProtocolVTable();
                  if (v24)
                  {
                    v25 = *(v24 + 16);
                    if (v25)
                    {
                      v26 = *(v25 + 128);
                      if (v26)
                      {
                        v26(a1, v41, v41.n128_f64[1]);
                      }
                    }
                  }

                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v27 = CMBaseObjectGetProtocolVTable();
                  if (v27)
                  {
                    v28 = *(v27 + 16);
                    if (v28)
                    {
                      v29 = *(v28 + 232);
                      if (v29)
                      {
                        v29(a1, 1);
                      }
                    }
                  }
                }

                CFArrayRemoveValueAtIndex(theArray, 0);
                if (v20 >= 33)
                {
                  v30 = v43;
                  value = 0;
                  FigCaptionRendererMoveToActionCreate(&value);
                  v31 = value;
                  v32 = v44;
                  FigCaptionRendererMoveToActionProtocolGetProtocolID();
                  v33 = CMBaseObjectGetProtocolVTable();
                  if (v33)
                  {
                    v34 = *(v33 + 16);
                    if (v34)
                    {
                      v35 = *(v34 + 16);
                      if (v35)
                      {
                        v35(v31, v32.f64[0], v32.f64[1]);
                      }
                    }
                  }

                  v36 = value;
                  FigCaptionRendererActionProtocolGetProtocolID();
                  v37 = CMBaseObjectGetProtocolVTable();
                  if (v37)
                  {
                    v38 = *(v37 + 16);
                    if (v38)
                    {
                      v39 = *(v38 + 16);
                      if (v39)
                      {
                        v39(v36, (v30 - 33));
                      }
                    }
                  }

                  CFArrayInsertValueAtIndex(theArray, 0, value);
                  if (value)
                  {
                    CFRelease(value);
                  }
                }
              }

              return 0;
            }

            v22 = v13;
          }

          else
          {
            v22 = 4294954514;
          }
        }

        else
        {
          v22 = 4294954508;
        }
      }
    }

    else
    {
      v22 = 4294954514;
    }
  }

  else
  {
    v22 = 4294954508;
  }

  FigSignalErrorAtGM();
  return v22;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    return 0;
  }

  v6 = DerivedStorage;
  v26 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 248);
      if (v9)
      {
        v9(a1, &v26 + 1);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v10 = CMBaseObjectGetProtocolVTable();
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v11 + 240);
      if (v12)
      {
        v12(a1, &v26);
      }
    }
  }

  if (HIBYTE(v26))
  {
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v14 + 296);
        if (v15)
        {
          v15(a1, a2);
        }
      }
    }
  }

  if (v26)
  {
    FigCaptionRendererNodeProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 288);
        if (v18)
        {
          v18(a1, a2);
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v19 = CMBaseObjectGetProtocolVTable();
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v20 + 280);
      if (v21)
      {
        v21(a1, a2);
      }
    }
  }

  v22 = *v6;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v23 = CMBaseObjectGetProtocolVTable();
  if (!v23)
  {
    return 4294954508;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
    return 4294954508;
  }

  v25 = *(v24 + 304);
  if (v25)
  {
    return v25(v22, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_RemoveAllActions()
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_SetPCTContextData(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 392);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererNodeProtocol_GetPCTContextData(uint64_t a1, uint64_t a2)
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

  v6 = *(v5 + 400);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

void updateCMRubyAttributeForCoreTextRender(uint64_t a1, CFAttributedStringRef aStr, int a3)
{
  v62.location = 0;
  v62.length = 0;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(aStr);
  if (Length < 1)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  str = 0;
  v6 = *MEMORY[0x1E6960930];
  key = *MEMORY[0x1E6960938];
  attrName = *MEMORY[0x1E6960948];
  v55 = *MEMORY[0x1E6960B78];
  v54 = *MEMORY[0x1E6960B70];
  v7 = *MEMORY[0x1E695E480];
  v57 = *MEMORY[0x1E6960B38];
  v8 = *MEMORY[0x1E6960958];
  v51 = *MEMORY[0x1E6960998];
  while (1)
  {
    Attributes = CFAttributedStringGetAttributes(aStr, v4, &effectiveRange);
    if (!Attributes)
    {
      goto LABEL_66;
    }

    v10 = Attributes;
    if (CFDictionaryContainsKey(Attributes, v6))
    {
      Value = CFDictionaryGetValue(v10, v6);
      v12 = CFAttributedStringGetAttributes(Value, 0, &v62);
      v13 = CFDictionaryGetValue(v12, key);
      v14 = CFDictionaryGetValue(v12, attrName);
      v15 = CFAttributedStringGetLength(Value);
      if (v14)
      {
        v16 = CFStringCompare(v14, *MEMORY[0x1E6960B88], 0);
        if (!a3 && v16 == kCFCompareEqualTo)
        {
          *(a1 + 89) = 1;
          v17 = v62;
          if (effectiveRange.length + effectiveRange.location <= *(a1 + 104) + *(a1 + 96))
          {
            v18 = v55;
          }

          else
          {
            v18 = v54;
          }

          CFAttributedStringSetAttribute(Value, v17, attrName, v18);
          CFAttributedStringSetAttribute(aStr, effectiveRange, v6, Value);
        }
      }

      if (v13)
      {
        v19 = CFStringCompare(v13, *MEMORY[0x1E6960B50], 0);
        if (a3)
        {
          if (v19 == kCFCompareEqualTo && effectiveRange.length == v15 && effectiveRange.length >= 1)
          {
            break;
          }
        }
      }
    }

LABEL_24:
    v24 = *MEMORY[0x1E6960970];
    if (CFDictionaryContainsKey(v10, *MEMORY[0x1E6960970]))
    {
      v25 = CFDictionaryGetValue(v10, v24);
      v26 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BE8]);
      v27 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BC8]);
      v28 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BA8]);
      v29 = CFDictionaryGetValue(v25, *MEMORY[0x1E6960BE0]);
      v30 = CFAttributedStringGetAttribute(aStr, 0, v51, &v62) ? -443 : 9679;
      chars = v30;
      if (v26)
      {
        v31 = CFStringCompare(v26, *MEMORY[0x1E6960BF0], 0);
        if (a3 && v31 == kCFCompareEqualTo)
        {
          goto LABEL_31;
        }

        v36 = CFStringCompare(v26, *MEMORY[0x1E6960C00], 0);
        if (a3)
        {
          if (v36 == kCFCompareEqualTo)
          {
            if (!v27 || !v28)
            {
              goto LABEL_31;
            }

            v37 = CFStringCompare(v27, *MEMORY[0x1E6960BD0], 0);
            if (CFStringCompare(v28, *MEMORY[0x1E6960BB0], 0))
            {
              if (CFStringCompare(v28, *MEMORY[0x1E6960BB8], 0))
              {
                if (CFStringCompare(v28, *MEMORY[0x1E6960BC0], 0) == kCFCompareEqualTo)
                {
                  if (v37)
                  {
                    v38 = -442;
                  }

                  else
                  {
                    v38 = -443;
                  }

                  goto LABEL_74;
                }

LABEL_31:
                v5 = CFStringCreateWithCharacters(v7, &chars, 1);
                if (!v5)
                {
                  goto LABEL_75;
                }

                if (effectiveRange.length >= 1)
                {
                  v32 = 0;
                  while (1)
                  {
                    v33 = CFAttributedStringCreate(v7, v5, 0);
                    if (!v33)
                    {
                      goto LABEL_75;
                    }

                    v34 = v33;
                    if (v29)
                    {
                      v66.location = 0;
                      v66.length = 1;
                      CFAttributedStringSetAttribute(v33, v66, attrName, v29);
                    }

                    UInt32 = FigCFNumberCreateUInt32();
                    v67.location = 0;
                    v67.length = 1;
                    CFAttributedStringSetAttribute(v34, v67, v8, UInt32);
                    v68.location = v32 + effectiveRange.location;
                    v68.length = 1;
                    CFAttributedStringSetAttribute(aStr, v68, v6, v34);
                    if (UInt32)
                    {
                      CFRelease(UInt32);
                    }

                    CFRelease(v34);
                    if (++v32 >= effectiveRange.length)
                    {
                      goto LABEL_51;
                    }
                  }
                }

                goto LABEL_51;
              }

              if (v37)
              {
                v38 = 9702;
              }

              else
              {
                v38 = 8226;
              }
            }

            else if (v37)
            {
              v38 = 9675;
            }

            else
            {
              v38 = 9679;
            }

LABEL_74:
            chars = v38;
            goto LABEL_31;
          }
        }
      }
    }

LABEL_51:
    v39 = *MEMORY[0x1E6960950];
    if (CFDictionaryContainsKey(v10, *MEMORY[0x1E6960950]))
    {
      v40 = CFDictionaryGetValue(v10, v39);
      v41 = *MEMORY[0x1E6960B90];
      if (CFDictionaryGetValue(v40, *MEMORY[0x1E6960B90]))
      {
        if (!CFDictionaryContainsKey(v10, v6))
        {
          chars = 12288;
          str = CFStringCreateWithCharacters(v7, &chars, 1);
          if (!str)
          {
            goto LABEL_75;
          }

          if (effectiveRange.length >= 1)
          {
            v42 = 0;
            while (1)
            {
              v43 = CFAttributedStringCreate(v7, str, 0);
              if (!v43)
              {
                break;
              }

              v44 = v43;
              v45 = CFDictionaryGetValue(v40, v41);
              v46 = FigCFEqual();
              v47 = v55;
              if (v42)
              {
                v47 = v54;
              }

              if (v46)
              {
                v48 = v47;
              }

              else
              {
                v48 = v45;
              }

              v69.location = 0;
              v69.length = 1;
              CFAttributedStringSetAttribute(v44, v69, attrName, v48);
              v49 = FigCFNumberCreateUInt32();
              v70.location = 0;
              v70.length = 1;
              CFAttributedStringSetAttribute(v44, v70, v8, v49);
              v71.location = v42 + effectiveRange.location;
              v71.length = 1;
              CFAttributedStringSetAttribute(aStr, v71, v6, v44);
              if (v49)
              {
                CFRelease(v49);
              }

              CFRelease(v44);
              if (++v42 >= effectiveRange.length)
              {
                goto LABEL_66;
              }
            }

LABEL_75:
            v22 = 0;
            goto LABEL_76;
          }
        }
      }
    }

LABEL_66:
    v4 = effectiveRange.length + effectiveRange.location;
    if (effectiveRange.length + effectiveRange.location >= Length)
    {
      goto LABEL_75;
    }
  }

  v20 = 0;
  while (1)
  {
    v72.location = v20;
    v72.length = 1;
    v21 = CFAttributedStringCreateWithSubstring(v7, Value, v72);
    v22 = v21;
    if (!v6)
    {
      break;
    }

    v63.location = 0;
    v63.length = 1;
    CFAttributedStringSetAttribute(v21, v63, key, v57);
    v23 = FigCFNumberCreateUInt32();
    v64.location = 0;
    v64.length = 1;
    CFAttributedStringSetAttribute(v22, v64, v8, v23);
    v65.location = v20 + effectiveRange.location;
    v65.length = 1;
    CFAttributedStringSetAttribute(aStr, v65, v6, v22);
    if (v23)
    {
      CFRelease(v23);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (++v20 >= effectiveRange.length)
    {
      goto LABEL_24;
    }
  }

LABEL_76:
  if (v5)
  {
    CFRelease(v5);
  }

  if (str)
  {
    CFRelease(str);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

CGColor *copyContentColor_0(uint64_t a1, CGColorRef color, uint64_t a3, const __CFDictionary *a4, void *key, CGFloat a6)
{
  if (a1 || !color)
  {
    v10 = 1;
    if (!a4 || !key || (Copy = createCGColorFromCFArray(a4, key, 0), v10 = Copy == 0, !Copy))
    {
LABEL_8:
      Copy = CGColorCreateCopy(color);
      if (!Copy)
      {
        return Copy;
      }
    }
  }

  else
  {
    Copy = CGColorCreateCopy(color);
    v10 = 1;
    if (!Copy)
    {
      goto LABEL_8;
    }
  }

  if (a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if (a6 >= 0.0)
  {
    if (v11)
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha(Copy, a6);
      if (CopyWithAlpha)
      {
        v13 = CopyWithAlpha;
        CGColorRelease(Copy);
        return v13;
      }
    }
  }

  return Copy;
}

uint64_t ckCaptionSetupText(uint64_t a1, CFAttributedStringRef aStr, int a3, uint64_t a4, double a5)
{
  v6 = a5;
  v7 = aStr;
  v8 = a1;
  keys[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 == 1)
    {
      if (!*(a1 + 89))
      {
        return 0;
      }

      v9 = a4;
      v10 = 0;
    }

    else
    {
      *&valuePtr = 0;
      values[0] = 0;
      Length = CFAttributedStringGetLength(aStr);
      calculateAndCopyStrokeAttributes(a4, &valuePtr, values, v6);
      if (valuePtr)
      {
        v247.location = 0;
        v247.length = Length;
        CFAttributedStringSetAttribute(v7, v247, *MEMORY[0x1E6965A58], valuePtr);
      }

      if (values[0])
      {
        v248.location = 0;
        v248.length = Length;
        CFAttributedStringSetAttribute(v7, v248, *MEMORY[0x1E6965A60], values[0]);
      }

      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      if (values[0])
      {
        CFRelease(values[0]);
      }

      v9 = a4;
      aStr = v7;
      a5 = v6;
      v10 = 2;
    }

    setupRubyAnnotation_0(v9, aStr, v10, a5);
    return 0;
  }

  v176 = FigCFEqual();
  if (!v176)
  {
    v12 = *(a4 + 664);
    v13 = *(v8 + 48);
    *(a4 + 664) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  v14 = CFAttributedStringGetLength(v7);
  String = CFAttributedStringGetString(v7);
  v16 = malloc_type_calloc(v14, 2uLL, 0x1000040BDFB0063uLL);
  v17 = MEMORY[0x1E695E480];
  if (v16)
  {
    v18 = v16;
    LODWORD(valuePtr) = 1;
    v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v19)
    {
      v20 = v19;
      v184 = v8;
      v241.location = 0;
      v241.length = v14;
      CFStringGetCharacters(String, v241, v18);
      v21 = 0;
      v22 = v14 - 1;
      if (v14 >= 1)
      {
        v23 = 0;
LABEL_16:
        v24.location = -1;
        do
        {
          v25 = v18[v23];
          if ((vmaxv_u16(vcgt_u16(0x51C019C0003000C0, vadd_s16(vdup_n_s16(v25), 0xB200CC00CE40CFC0))) & 1) != 0 || (v25 + 1792) < 0x200u || (v25 + 464) < 0x20u || (v25 + 256) < 0xF0u || (v25 & 0xFF80) == 0x2E80 || (v25 & 0xFFC0) == 0x3000 || (v25 & 0xFE00) == 0x3200)
          {
            if (v24.location < 0)
            {
              v24.location = v23;
            }
          }

          else if ((v24.location & 0x8000000000000000) == 0)
          {
            v24.length = v23 - v24.location;
            v26 = v22;
            CFAttributedStringSetAttribute(v7, v24, @"kFCRSubtitleRenderer_LanguageCategory", v20);
            v22 = v26;
            v21 = 1;
            v27 = v22 == v23++;
            if (v27)
            {
              goto LABEL_36;
            }

            goto LABEL_16;
          }

          ++v23;
        }

        while (v14 != v23);
        if ((v24.location & 0x8000000000000000) == 0)
        {
          v24.length = v14 - v24.location;
          CFAttributedStringSetAttribute(v7, v24, @"kFCRSubtitleRenderer_LanguageCategory", v20);
          v21 = 1;
        }
      }

LABEL_36:
      CFRelease(v20);
      v8 = v184;
      v17 = MEMORY[0x1E695E480];
    }

    else
    {
      v21 = 0;
    }

    free(v18);
  }

  else
  {
    v21 = 0;
  }

  effectiveRange.length = 0;
  effectiveRange.location = 0;
  v173 = *MEMORY[0x1E6960998];
  v201 = CFAttributedStringGetAttribute(v7, 0, *MEMORY[0x1E6960998], &effectiveRange);
  v28 = CFAttributedStringGetLength(v7);
  if (v21 && v201)
  {
    if (!*(v8 + 128))
    {
      v242.location = 0;
      v242.length = v28;
      CFAttributedStringSetAttribute(v7, v242, *MEMORY[0x1E6965B50], *MEMORY[0x1E695E4D0]);
    }

    Mutable = CFDictionaryCreateMutable(*v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950093;
    }

    v30 = Mutable;
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965640], *MEMORY[0x1E6965650]);
    v243.location = 0;
    v243.length = v28;
    CFAttributedStringSetAttribute(v7, v243, *MEMORY[0x1E6965648], v30);
    CFRelease(v30);
  }

  v31 = CTParagraphStyleCreate(0, 0);
  if (!v31)
  {
    return 4294950095;
  }

  v32 = v31;
  CTParagraphStyleSetCompositionLanguage();
  v244.location = 0;
  v244.length = v28;
  v178 = *MEMORY[0x1E6965A30];
  CFAttributedStringSetAttribute(v7, v244, *MEMORY[0x1E6965A30], v32);
  CFRelease(v32);
  range.length = 0;
  range.location = 0;
  v209 = *MEMORY[0x1E695E4D0];
  if (v28 < 1)
  {
    cf = 0;
    v157 = 0;
    v73 = 0;
LABEL_350:
    setupRubyAnnotation_0(a4, v7, 0, v6);
    v246.length = CFAttributedStringGetLength(v7);
    range.location = 0;
    range.length = v246.length;
    v246.location = 0;
    CFAttributedStringSetAttribute(v7, v246, @"kFCRSubtitleRenderer_CommonSetupDone", v209);
    v11 = 0;
    if (!v157)
    {
      goto LABEL_352;
    }

    goto LABEL_351;
  }

  v199 = 0;
  v186 = 0;
  cf = 0;
  v206 = *MEMORY[0x1E6965798];
  v195 = *MEMORY[0x1E6960878];
  key = *MEMORY[0x1E6960890];
  allocator = *v17;
  attrName = *MEMORY[0x1E6965A10];
  v180 = *MEMORY[0x1E6960868];
  v190 = *MEMORY[0x1E69608A8];
  v189 = *MEMORY[0x1E69607D0];
  v188 = *MEMORY[0x1E6960990];
  v170 = *MEMORY[0x1E6965B48];
  v187 = *MEMORY[0x1E6960860];
  v215 = *MEMORY[0x1E6961178];
  v181 = *MEMORY[0x1E6965790];
  attribute = *MEMORY[0x1E6965808];
  v182 = *MEMORY[0x1E6965830];
  v167 = *MEMORY[0x1E6960858];
  v161 = *MEMORY[0x1E6960880];
  v207 = *MEMORY[0x1E69608B0];
  v171 = *MEMORY[0x1E6965A20];
  v160 = *MEMORY[0x1E69657C8];
  v169 = *MEMORY[0x1E69657A8];
  v165 = *MEMORY[0x1E6965678];
  v194 = *MEMORY[0x1E69607B0];
  theString2 = *MEMORY[0x1E69607A0];
  v172 = *MEMORY[0x1E6960790];
  v166 = *MEMORY[0x1E6960788];
  v163 = *MEMORY[0x1E6960780];
  v162 = *MEMORY[0x1E6960798];
  v183 = *MEMORY[0x1E6960C18];
  v33 = *MEMORY[0x1E6960930];
  v208 = *MEMORY[0x1E6960948];
  v193 = *MEMORY[0x1E69608B8];
  v174 = *MEMORY[0x1E6960C10];
  v192 = *MEMORY[0x1E6960898];
  v200 = *MEMORY[0x1E69659D8];
  v191 = *MEMORY[0x1E6965658];
  v179 = *MEMORY[0x1E69608A0];
  v198 = (a4 + 208);
  v202 = v28;
  v185 = v8;
  v164 = *MEMORY[0x1E6960930];
  while (1)
  {
    v239[0] = xmmword_196E7BB18;
    v239[1] = unk_196E7BB28;
    v34 = CFRetain(@"Helvetica");
    Attributes = CFAttributedStringGetAttributes(v7, range.length + range.location, &range);
    theDict = Attributes;
    if (!Attributes)
    {
      color = 0;
      v203 = 0;
      LODWORD(v39) = 0;
      LODWORD(v40) = 0;
      v214 = 0;
      v212 = 0;
      v41 = v6;
      v42 = v206;
      goto LABEL_187;
    }

    CGColorFromCFArray = copyContentColor_0(*a4, *(a4 + 144), *(a4 + 24), Attributes, v195, *(a4 + 168));
    if (!CGColorFromCFArray)
    {
      CGColorFromCFArray = createCGColorFromCFArray(0, 0, v239);
    }

    if (!v201 || !CFDictionaryContainsKey(Attributes, key))
    {
      goto LABEL_69;
    }

    v37 = CFDictionaryGetValue(Attributes, key);
    v38 = v37;
    LODWORD(valuePtr) = 0;
    if (!v37)
    {
      goto LABEL_56;
    }

    CFNumberGetValue(v37, kCFNumberIntType, &valuePtr);
    if (valuePtr == -1)
    {
      break;
    }

    if (valuePtr <= 4)
    {
LABEL_56:
      CFAttributedStringSetAttribute(v7, range, attrName, v38);
    }

LABEL_69:
    if (*(a4 + 56) != 1 || !CFDictionaryContainsKey(Attributes, v180))
    {
      LODWORD(valuePtr) = 0;
      checkCJKContent(*(a4 + 664), &valuePtr);
      LOBYTE(values[0]) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v41 = v6;
      v48 = v199;
      if (valuePtr == 4)
      {
        v41 = v6;
        if (!LOBYTE(values[0]))
        {
          MACaptionAppearanceGetRelativeCharacterSizeForLanguage();
          v60 = *(a4 + 200);
          v41 = v6;
          if (v59 != v60)
          {
            v41 = v59 * v6 / v60;
          }
        }
      }

      goto LABEL_103;
    }

    v41 = v6;
    v48 = v199;
    if (!CFDictionaryGetValue(Attributes, v180))
    {
      goto LABEL_103;
    }

    v49 = *(a4 + 376);
    v50 = *(a4 + 384);
    v51 = *(a4 + 344);
    v52 = *(a4 + 352);
    v53 = *(a4 + 360);
    v54 = *(a4 + 368);
    *values = 0u;
    v223 = 0u;
    FigTextMarkupSizeMakeFromSimplifiedDictionary();
    v55 = DWORD2(v223);
    FCRGetVideoPresentationBounds(v49, v50, v51, v52, v53, v54);
    if (v55 <= 1986535455)
    {
      if (v55 > 1886679839)
      {
        if (v55 != 1886679840 && v55 != 1886920736)
        {
          goto LABEL_102;
        }

        FigGeometryDimensionGetCGFloat();
        v62 = v61;
        valuePtr = 0u;
        v225 = 0u;
        v226 = 0u;
        FCRGetTransform(&valuePtr, v49, v50, v53, v54);
        v41 = *(&valuePtr + 1) + v62 * *(&v225 + 1);
      }

      else
      {
        if (v55 == 622862368)
        {
          v58 = *&v223 / 100.0;
        }

        else
        {
          if (v55 != 1701650464)
          {
            goto LABEL_102;
          }

          v58 = *&v223;
        }

        v41 = v58 * v6;
      }

      goto LABEL_101;
    }

    if (v55 > 1986881901)
    {
      if (v55 != 1986881902)
      {
        if (v55 != 1987518496 || v56 <= 0.0)
        {
LABEL_102:
          v41 = v6;
          goto LABEL_103;
        }

        goto LABEL_93;
      }

      if (v57 > v56)
      {
        goto LABEL_85;
      }

      goto LABEL_99;
    }

    if (v55 != 1986535456)
    {
      if (v55 != 1986879864)
      {
        goto LABEL_102;
      }

      if (v57 <= v56)
      {
LABEL_85:
        if (v56 == 0.0)
        {
          goto LABEL_102;
        }

LABEL_93:
        v41 = v56 * (*values / 100.0);
        goto LABEL_101;
      }

LABEL_99:
      if (v57 == 0.0)
      {
        goto LABEL_102;
      }

      goto LABEL_100;
    }

    if (v57 <= 0.0)
    {
      goto LABEL_102;
    }

LABEL_100:
    v41 = v57 * (*&v223 / 100.0);
LABEL_101:
    if (v41 <= 0.0)
    {
      goto LABEL_102;
    }

LABEL_103:
    v63 = v209 == CFDictionaryGetValue(Attributes, v190);
    v214 = v209 == CFDictionaryGetValue(Attributes, v189);
    if (v209 == CFDictionaryGetValue(Attributes, v188))
    {
      LODWORD(valuePtr) = 1;
      v64 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      CFAttributedStringSetAttribute(v7, range, v170, v64);
      if (v64)
      {
        CFRelease(v64);
      }
    }

    value = *(a4 + 656) != v63 || !v176 || *(a4 + 657) != v214;
    v65 = *(v8 + 16);
    v212 = v63;
    color = CGColorFromCFArray;
    if (v65 == 7 || v65 == 4)
    {
      if (CFDictionaryContainsKey(Attributes, v187))
      {
        v66 = CFDictionaryGetValue(Attributes, v187);
        if (v66)
        {
          v67 = v66;
          Count = CFArrayGetCount(v66);
          if (Count >= 1)
          {
            v69 = Count;
            v70 = 0;
            while (1)
            {
              LODWORD(v218) = 0;
              *&valuePtr = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v67, v70);
              values[0] = CFDictionaryGetValue(ValueAtIndex, v215);
              if (FigCFDictionaryGetInt32IfPresent())
              {
                if (LODWORD(v218) == 1)
                {
                  keys[0] = v181;
                  v73 = CFDictionaryCreate(allocator, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!v73)
                  {
                    goto LABEL_371;
                  }

                  v74 = CTFontDescriptorCreateWithAttributesAndOptions();
                  if (!v74)
                  {
                    v186 = 0;
LABEL_371:
                    v11 = 0;
                    goto LABEL_368;
                  }

                  v75 = v74;
                  MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v74, 0);
                  if (MatchingFontDescriptor)
                  {
                    cf = MatchingFontDescriptor;
                    v78 = values[0];
                    if (values[0])
                    {
                      CFRetain(values[0]);
                    }

                    v186 = v75;
                    v199 = v73;
                    if (!v34)
                    {
LABEL_133:
                      v72 = 0;
                      v79 = 1;
                      v80 = 1;
                      v42 = v206;
                      goto LABEL_143;
                    }

LABEL_132:
                    CFRelease(v34);
                    goto LABEL_133;
                  }

                  CFRelease(v75);
                  CFRelease(v73);
                  cf = 0;
                  v186 = 0;
                  v48 = 0;
                }

                else if (!LODWORD(v218))
                {
                  if (FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle())
                  {
                    v72 = v198[valuePtr];
                    if (v72)
                    {
                      v199 = v48;
                      if (v34)
                      {
                        CFRelease(v34);
                      }

                      v78 = CTFontDescriptorCopyAttribute(v72, attribute);
                      v79 = 0;
                      v80 = 1;
                      v42 = v182;
                      goto LABEL_143;
                    }
                  }
                }
              }

              if (v69 == ++v70)
              {
                v199 = v48;
                break;
              }
            }
          }
        }
      }

      else if (CFDictionaryContainsKey(Attributes, v167))
      {
        v77 = CFDictionaryGetValue(Attributes, v167);
        if (v77)
        {
          v78 = v77;
          CFRetain(v77);
          if (!v34)
          {
            goto LABEL_133;
          }

          goto LABEL_132;
        }
      }

      else if (CFDictionaryContainsKey(Attributes, v161) && CFDictionaryGetValue(Attributes, v161))
      {
        *&valuePtr = 0;
        if (FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle() && (v81 = v198[valuePtr]) != 0)
        {
          if (v34)
          {
            CFRelease(v34);
          }

          v34 = CTFontDescriptorCopyAttribute(v81, attribute);
          v80 = 1;
          v42 = v182;
        }

        else
        {
          v80 = 0;
          v42 = v206;
        }

        v79 = 0;
        v72 = 0;
        goto LABEL_142;
      }
    }

    v79 = 0;
    v80 = 0;
    v72 = 0;
    v42 = v206;
LABEL_142:
    v78 = v34;
LABEL_143:
    v82 = *(v8 + 16);
    if (v82 == 3)
    {
      CFRetain(@"Helvetica");
      if (v78)
      {
LABEL_150:
        CFRelease(v78);
      }

      v79 = 1;
      v80 = 1;
      v42 = v206;
      v78 = @"Helvetica";
      goto LABEL_153;
    }

    if (v82 != 1)
    {
      goto LABEL_153;
    }

    CFRetain(@"CourierNewPSMT");
    if (v78)
    {
      CFRelease(v78);
    }

    if (*(v8 + 16) == 3)
    {
      CFRetain(@"Helvetica");
      v78 = @"CourierNewPSMT";
      goto LABEL_150;
    }

    v79 = 1;
    v80 = 1;
    v42 = v182;
    v78 = @"CourierNewPSMT";
LABEL_153:
    v203 = v79;
    if (*(a4 + 64))
    {
      if (v80)
      {
        v40 = v78;
        goto LABEL_162;
      }

      v83 = (a4 + 208);
      v84 = *v198;
      if (v78)
      {
        CFRelease(v78);
      }
    }

    else
    {
      if (v78)
      {
        CFRelease(v78);
      }

      v83 = (a4 + 208);
      v84 = *v198;
    }

    v40 = CTFontDescriptorCopyAttribute(v84, attribute);
    v72 = *v83;
    v42 = v182;
LABEL_162:
    v85 = v207;
    if (v72)
    {
      v86 = *(a4 + 640);
      if (v86)
      {
        CFRelease(v86);
        v85 = v207;
        *(a4 + 640) = 0;
      }

      v39 = *(a4 + 648);
      if (v39 == v72)
      {
        v87 = v40;
        LODWORD(v39) = 0;
        LODWORD(v40) = 0;
        goto LABEL_183;
      }

      *(a4 + 648) = v72;
      CFRetain(v72);
      v87 = v40;
      if (v39)
      {
        CFRelease(v39);
        LODWORD(v39) = 0;
      }

      LODWORD(v40) = 1;
      goto LABEL_178;
    }

    v88 = *(a4 + 648);
    if (v88)
    {
      CFRelease(v88);
      v85 = v207;
      *(a4 + 648) = 0;
    }

    v89 = *(a4 + 640);
    if (!v89)
    {
      *(a4 + 640) = v40;
      v87 = v40;
      if (v40)
      {
        CFRetain(v40);
        v85 = v207;
        LODWORD(v40) = 0;
      }

      LODWORD(v39) = 1;
      goto LABEL_183;
    }

    if (v40)
    {
      if (CFStringCompare(v89, v40, 0))
      {
        v90 = *(a4 + 640);
        *(a4 + 640) = v40;
        CFRetain(v40);
        v87 = v40;
        if (v90)
        {
          CFRelease(v90);
        }

        LODWORD(v40) = 0;
        LODWORD(v39) = 1;
      }

      else
      {
        v87 = v40;
        LODWORD(v39) = 0;
        LODWORD(v40) = 0;
      }

LABEL_178:
      v85 = v207;
      goto LABEL_183;
    }

    v87 = 0;
    LODWORD(v39) = 0;
LABEL_183:
    v91 = v85;
    if (CFDictionaryContainsKey(theDict, v85))
    {
      v92 = CFDictionaryGetValue(theDict, v91);
      if (v92)
      {
        CFAttributedStringSetAttribute(v7, range, v171, v92);
      }
    }

    v34 = v87;
    LODWORD(Attributes) = value;
LABEL_187:
    v93 = *(a4 + 632);
    valuea = v34;
    if (v93)
    {
      Size = CTFontGetSize(v93);
      v95 = v39 | Attributes;
      v96 = *(a4 + 632);
      if (!(v95 | v40) && v41 == Size)
      {
        v28 = v202;
        v97 = v208;
        v98 = theDict;
        if (!v96)
        {
          goto LABEL_191;
        }

        goto LABEL_257;
      }

      if (v96)
      {
        CFRelease(*(a4 + 632));
        *(a4 + 632) = 0;
      }
    }

    v101 = *(a4 + 648);
    v102 = *(v8 + 48);
    values[0] = 0;
    LODWORD(v218) = 0;
    if (!v34)
    {
      v104 = 0;
      v28 = v202;
      v97 = v208;
      v98 = theDict;
      goto LABEL_256;
    }

    checkCJKContent(v102, &v218);
    v97 = v208;
    if (LODWORD(v218) == 1)
    {
      if (*(a4 + 64) == 1)
      {
        v103 = v203;
      }

      else
      {
        v103 = 1;
      }
    }

    else
    {
      v103 = 1;
    }

    v105 = (v209 != CFDictionaryGetValue(*(v8 + 40), @"FigFCRPreview_JapaneseV2")) & v103;
    if ((v105 & 1) == 0)
    {
      *&valuePtr = *(a4 + 64);
      v106 = MACaptionAppearanceCopyFontDescriptorForLanguage();
LABEL_205:
      v107 = v106;
      v204 = 0;
      v108 = v212;
      if (v106)
      {
        goto LABEL_206;
      }

LABEL_330:
      CopyWithAttributes = 0;
      v118 = 0;
      v104 = 0;
      v28 = v202;
      goto LABEL_247;
    }

    if (v101)
    {
      v106 = CFRetain(v101);
      goto LABEL_205;
    }

    v119 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v108 = v212;
    if (v119)
    {
      v120 = v119;
      if (v206 == v42)
      {
        CFDictionaryAddValue(v119, v181, valuea);
      }

      else if (v182 == v42)
      {
        CFDictionaryAddValue(v119, attribute, valuea);
        if (CFStringCompare(valuea, @"CourierNewPSMT", 1uLL) == kCFCompareEqualTo)
        {
          v121 = *(a4 + 720);
          *&valuePtr = v121;
          if (v121 > 0.0)
          {
            v122 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            if (v122)
            {
              v123 = v122;
              CFDictionaryAddValue(v120, v160, v122);
              CFRelease(v123);
            }
          }
        }
      }

      v204 = v120;
      v107 = CTFontDescriptorCreateWithAttributes(v120);
      if (!v107)
      {
        goto LABEL_330;
      }

LABEL_206:
      v109 = v108 | (2 * v214);
      CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v107, v109, 3u);
      if (!CopyWithSymbolicTraits)
      {
        if (!v108)
        {
          goto LABEL_220;
        }

        SInt32 = FigCFNumberCreateSInt32();
        UInt32 = FigCFNumberCreateUInt32();
        CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v107, SInt32, UInt32);
        CopyWithSymbolicTraits = CopyWithFeature;
        if (!v214)
        {
          goto LABEL_212;
        }

        if (CopyWithFeature)
        {
          v114 = CTFontDescriptorCreateCopyWithSymbolicTraits(CopyWithFeature, v109, 2u);
          if (v114)
          {
            v115 = v114;
            CFRelease(CopyWithSymbolicTraits);
            CopyWithSymbolicTraits = v115;
          }

LABEL_212:
          if (SInt32)
          {
LABEL_213:
            CFRelease(SInt32);
          }
        }

        else
        {
          CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v107, v109, 2u);
          if (SInt32)
          {
            goto LABEL_213;
          }
        }

        if (UInt32)
        {
          CFRelease(UInt32);
        }

        if (!CopyWithSymbolicTraits)
        {
LABEL_220:
          CopyWithSymbolicTraits = CFRetain(v107);
          if ((v105 & 1) == 0)
          {
            goto LABEL_221;
          }

LABEL_218:
          v28 = v202;
          if (CopyWithSymbolicTraits)
          {
            CopyWithAttributes = CFRetain(CopyWithSymbolicTraits);
          }

          else
          {
            CopyWithAttributes = 0;
          }

          v118 = 0;
LABEL_235:
          v104 = CTFontCreateWithFontDescriptor(CopyWithAttributes, v41, 0);
          if (!v104 || !v204 || (LODWORD(v218) & 0xFFFFFFFE) != 2)
          {
            goto LABEL_243;
          }

          *&valuePtr = qword_1E7497700[LODWORD(v218)];
          v124 = CFArrayCreate(allocator, &valuePtr, 1, MEMORY[0x1E695E9C0]);
          if (v124)
          {
            v125 = v124;
            v126 = CTFontCopyDefaultCascadeListForLanguages(v104, v124);
            if (v126)
            {
              v127 = v126;
              CFDictionarySetValue(v204, v165, v126);
              CFRelease(v107);
              CFRelease(v104);
              v128 = CTFontDescriptorCreateWithAttributes(v204);
              v107 = v128;
              if (v128)
              {
                v104 = CTFontCreateWithFontDescriptor(v128, v41, 0);
              }

              else
              {
                v104 = 0;
              }

              v33 = v164;
              CFRelease(v127);
              CFRelease(v125);
              v28 = v202;
              if (v107)
              {
                goto LABEL_243;
              }

              goto LABEL_244;
            }

            CFRelease(v125);
          }

          v28 = v202;
          goto LABEL_243;
        }
      }

      if (v105)
      {
        goto LABEL_218;
      }

LABEL_221:
      valuePtr = xmmword_1E7497720;
      keys[0] = v169;
      values[0] = CFArrayCreate(0, &valuePtr, 2, MEMORY[0x1E695E9C0]);
      v28 = v202;
      if (values[0])
      {
        v117 = CFDictionaryCreate(allocator, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v117)
        {
          v118 = v117;
          CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(CopyWithSymbolicTraits, v117);
          if (!CopyWithAttributes)
          {
            if (CopyWithSymbolicTraits)
            {
              CopyWithAttributes = CFRetain(CopyWithSymbolicTraits);
            }

            else
            {
              CopyWithAttributes = 0;
            }
          }

          goto LABEL_235;
        }
      }

      v104 = 0;
      v118 = 0;
      CopyWithAttributes = 0;
LABEL_243:
      CFRelease(v107);
LABEL_244:
      if (CopyWithSymbolicTraits)
      {
        CFRelease(CopyWithSymbolicTraits);
      }

      v97 = v208;
LABEL_247:
      v98 = theDict;
      if (v204)
      {
        CFRelease(v204);
      }

      goto LABEL_249;
    }

    v104 = 0;
    v118 = 0;
    CopyWithAttributes = 0;
    v28 = v202;
    v98 = theDict;
LABEL_249:
    if (values[0])
    {
      CFRelease(values[0]);
    }

    if (v118)
    {
      CFRelease(v118);
    }

    if (CopyWithAttributes)
    {
      CFRelease(CopyWithAttributes);
    }

    v8 = v185;
LABEL_256:
    *(a4 + 632) = v104;
    *(a4 + 656) = v212;
    *(a4 + 657) = v214;
    if (!v104)
    {
LABEL_191:
      v11 = 4294950093;
      v99 = color;
      v100 = valuea;
      goto LABEL_319;
    }

LABEL_257:
    v129 = *(v8 + 16);
    v130 = *(v8 + 64);
    valuePtr = 0uLL;
    v131 = CFAttributedStringGetAttribute(v7, 0, v194, &valuePtr);
    if (v131)
    {
      v132 = v131;
      if (CFStringCompare(v131, theString2, 0))
      {
        if (CFStringCompare(v132, v172, 0))
        {
          if (CFStringCompare(v132, v166, 0))
          {
            if (CFStringCompare(v132, v163, 0))
            {
              if (CFStringCompare(v132, v162, 0))
              {
                v133 = 2 * (v129 != 7);
              }

              else
              {
                v133 = 1;
              }
            }

            else
            {
              v133 = 1;
            }
          }

          else
          {
            v133 = 0;
          }
        }

        else
        {
          v133 = 2;
        }
      }

      else
      {
        v133 = 4;
      }
    }

    else if (CFAttributedStringGetAttribute(v7, 0, v173, &valuePtr))
    {
      v133 = 0;
    }

    else
    {
      v133 = 2 * (v129 != 7);
    }

    v99 = color;
    if (v129 == 7 && v130 && CFStringCompare(v130, v183, 1uLL) == kCFCompareEqualTo)
    {
      if (v133)
      {
        if (v133 == 1)
        {
          LOBYTE(v133) = 0;
        }
      }

      else
      {
        LOBYTE(v133) = 1;
      }
    }

    v219 = v133;
    Ascent = CTFontGetAscent(*(a4 + 632));
    Descent = CTFontGetDescent(*(a4 + 632));
    keys[0] = 0;
    Leading = 0.0;
    if (*(v8 + 16) != 1)
    {
      v137 = *(a4 + 632);
      v138 = CTFontGetAscent(v137);
      v139 = CTFontGetDescent(v137);
      Leading = CTFontGetLeading(v137);
      if (Leading <= (v138 + v139) * 0.2)
      {
        Leading = (v138 + v139) * 0.2;
      }
    }

    keys[0] = *&Leading;
    v218 = Ascent + Descent;
    v217 = Ascent + Descent + Leading;
    valuePtr = 0uLL;
    v140 = CFAttributedStringGetLength(v7);
    if (v140 >= 1)
    {
      v141 = v140;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      do
      {
        v145 = CFAttributedStringGetAttributes(v7, v142, &valuePtr);
        if (v145)
        {
          v146 = v145;
          if (CFDictionaryContainsKey(v145, v33))
          {
            v147 = CFDictionaryGetValue(v146, v33);
            values[1] = 0;
            values[0] = 0;
            v148 = CFAttributedStringGetAttributes(v147, 0, values);
            CFDictionaryGetValue(v148, v97);
            if (FigCFEqual())
            {
              v144 = 1;
            }

            else if (FigCFEqual())
            {
              v143 = 1;
            }
          }
        }

        v142 = *(&valuePtr + 1) + valuePtr;
      }

      while (*(&valuePtr + 1) + valuePtr < v141);
      v27 = (v143 & v144) == 0;
      v99 = color;
      if (!v27)
      {
        goto LABEL_295;
      }
    }

    if (*(v8 + 16) == 7)
    {
LABEL_295:
      v217 = 0.0;
    }

    v98 = theDict;
    v100 = valuea;
    if (!CFDictionaryGetValue(theDict, v193))
    {
      goto LABEL_307;
    }

    FigTextMarkupDimensionMakeFromSimplifiedDictionary();
    v150 = 0.0;
    if (v149 > 1886679839)
    {
      if (v149 == 1886679840 || v149 == 1886920736)
      {
        FigGeometryDimensionGetCGFloat();
      }

      goto LABEL_306;
    }

    if (v149 == 622862368)
    {
      FigGeometryDimensionGetCGFloat();
      v151 = v152 / 100.0;
      goto LABEL_305;
    }

    if (v149 == 1701650464)
    {
      FigGeometryDimensionGetCGFloat();
LABEL_305:
      v150 = v41 * v151;
    }

LABEL_306:
    v218 = v150;
    v217 = v150;
LABEL_307:
    LOBYTE(values[0]) = -1;
    v153 = *(v8 + 64);
    if (v153)
    {
      if (CFStringCompare(v153, v174, 1uLL))
      {
        if (CFStringCompare(*(v8 + 64), v183, 1uLL) == kCFCompareEqualTo)
        {
          LOBYTE(values[0]) = 1;
        }
      }

      else
      {
        LOBYTE(values[0]) = 0;
      }
    }

    v154 = CFDictionaryGetValue(theDict, v192);
    if (v154)
    {
      if (CFArrayGetCount(v154) >= 1)
      {
        LODWORD(valuePtr) = 0;
        if (FigCFArrayGetInt32AtIndex())
        {
          LOBYTE(values[0]) = valuePtr & 1;
        }
      }
    }

    LODWORD(valuePtr) = 0;
    *(&valuePtr + 1) = 1;
    *&v225 = &v219;
    DWORD2(v225) = 15;
    *&v226 = 8;
    *(&v226 + 1) = keys;
    v227 = 14;
    v228 = 8;
    v229 = keys;
    v230 = 9;
    v231 = 8;
    v232 = &v218;
    v233 = 8;
    v234 = 8;
    v235 = &v217;
    v236 = 13;
    v237 = 1;
    v238 = values;
    v155 = CTParagraphStyleCreate(&valuePtr, 6uLL);
    CFAttributedStringSetAttribute(v7, range, v200, v99);
    CFAttributedStringSetAttribute(v7, range, v191, *(a4 + 632));
    if (v155)
    {
      CFAttributedStringSetAttribute(v7, range, v178, v155);
      CFRelease(v155);
      v11 = 0;
    }

    else
    {
      v11 = 4294950093;
    }

LABEL_319:
    CGColorRelease(v99);
    if (v100)
    {
      CFRelease(v100);
    }

    if (*(v8 + 16) == 7 && v209 == CFDictionaryGetValue(v98, v179))
    {
      valuePtr = 0u;
      v225 = 0u;
      v156 = createCGColorFromCFArray(0, 0, &valuePtr);
      CFAttributedStringRemoveAttribute(v7, range, v200);
      CFAttributedStringSetAttribute(v7, range, v200, v156);
      CGColorRelease(v156);
    }

    if (v11)
    {
      goto LABEL_367;
    }

    if (range.length + range.location >= v28)
    {
      v73 = v199;
      v157 = v186;
      goto LABEL_350;
    }
  }

  v43 = CFAttributedStringGetString(v7);
  v44 = malloc_type_calloc(v28, 2uLL, 0x1000040BDFB0063uLL);
  if (v44)
  {
    v45 = v44;
    v245.location = 0;
    v245.length = v28;
    CFStringGetCharacters(v43, v245, v44);
    if (range.length >= 1)
    {
      v46 = 0;
      while (v45[range.location + v46] - 48 < 0xA)
      {
        if (range.length == ++v46)
        {
          if (range.length >= 5uLL)
          {
            goto LABEL_68;
          }

          goto LABEL_66;
        }
      }

      if ((range.length - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_68;
      }

LABEL_66:
      v47 = FigCFNumberCreateSInt32();
      CFAttributedStringSetAttribute(v7, range, attrName, v47);
      if (v47)
      {
        CFRelease(v47);
      }
    }

LABEL_68:
    free(v45);
    goto LABEL_69;
  }

  v11 = 4294950095;
LABEL_367:
  v73 = v199;
LABEL_368:
  v157 = v186;
  if (v186)
  {
LABEL_351:
    CFRelease(v157);
  }

LABEL_352:
  if (v73)
  {
    CFRelease(v73);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void setupHighlight_0(void *a1, const __CFAttributedString *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"fcr_custom_background_render", @"com.apple.coremedia", 0);
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(a2);
  if (Length >= 1)
  {
    v5 = Length;
    v6 = 0;
    v7 = *MEMORY[0x1E695F1C0];
    v8 = *MEMORY[0x1E6960810];
    v9 = *MEMORY[0x1E69607C0];
    attrName = *MEMORY[0x1E6965630];
    v29 = *MEMORY[0x1E6965A90];
    v28 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(a2, v6, &effectiveRange);
      if (Attributes)
      {
        break;
      }

LABEL_27:
      v6 = effectiveRange.length + effectiveRange.location;
      if (effectiveRange.length + effectiveRange.location >= v5)
      {
        return;
      }
    }

    v11 = Attributes;
    v12 = CGColorSpaceCreateWithName(v7);
    *components = 0u;
    *v33 = 0u;
    v13 = CFDictionaryContainsKey(v11, v8);
    v14 = v8;
    if ((v13 || (v15 = CFDictionaryContainsKey(v11, v9), v14 = v9, v15)) && (CGColorFromCFArray = createCGColorFromCFArray(v11, v14, 0)) != 0)
    {
      v17 = CGColorFromCFArray;
      if (a1[1])
      {
        v18 = CGColorGetComponents(CGColorFromCFArray);
        *components = *v18;
        v33[0] = v18[2];
        goto LABEL_14;
      }

      v19 = a1[19];
      if (!v19)
      {
LABEL_14:
        if (a1[4])
        {
          v22 = CGColorGetComponents(v17) + 3;
          goto LABEL_17;
        }

LABEL_16:
        v22 = (a1 + 22);
LABEL_17:
        v33[1] = *v22;
        v23 = CGColorCreate(v12, components);
        CGColorRelease(v17);
        if (v12)
        {
          CFRelease(v12);
        }

        if (!v23)
        {
          goto LABEL_26;
        }

        if (AppBooleanValue)
        {
          if (CGColorGetAlpha(v23) == 0.0)
          {
LABEL_25:
            CFAttributedStringSetAttribute(a2, effectiveRange, v29, v28);
LABEL_26:
            CGColorRelease(v23);
            goto LABEL_27;
          }

          v24 = effectiveRange;
          v25 = a2;
          v26 = @"kFCRSubtitleRenderer_CharacterBackgroundColor";
        }

        else
        {
          v24 = effectiveRange;
          v25 = a2;
          v26 = attrName;
        }

        CFAttributedStringSetAttribute(v25, v24, v26, v23);
        goto LABEL_25;
      }

      v20 = 0;
    }

    else
    {
      v17 = 0;
      v19 = a1[19];
      if (!v19)
      {
        goto LABEL_16;
      }

      v20 = 1;
    }

    v21 = CGColorGetComponents(v19);
    *components = *v21;
    v33[0] = v21[2];
    v22 = (a1 + 22);
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }
}

CFDictionaryRef createFrameAttributesDictionary_0(uint64_t a1, CFStringRef theString1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = *MEMORY[0x1E6965A08];
  valuePtr = 0;
  if (theString1)
  {
    if (CFStringCompare(theString1, *MEMORY[0x1E6960C38], 0))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    valuePtr = v3;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    if (CFStringCompare(v4, *MEMORY[0x1E6960C10], 1uLL) && CFStringCompare(*(a1 + 64), *MEMORY[0x1E6960C18], 1uLL))
    {
      if (CFStringCompare(*(a1 + 64), *MEMORY[0x1E6960C28], 1uLL))
      {
        if (CFStringCompare(*(a1 + 64), *MEMORY[0x1E6960C20], 1uLL) == kCFCompareEqualTo)
        {
          valuePtr = 2;
        }
      }

      else
      {
        valuePtr = 1;
      }
    }

    else
    {
      valuePtr = 0;
    }
  }

  v5 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  return CFDictionaryCreate(v5, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

const __CFString *checkCJKContent(const __CFString *theString2, int *a2)
{
  if (theString2)
  {
    v3 = theString2;
    theString2 = CFStringCompare(@"yue", theString2, 1uLL);
    if (theString2 && (theString2 = CFStringCompare(@"yue-Hant", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"cmn-Hant", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-cmn-Hant", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-Hant", v3, 1uLL)) != 0)
    {
      theString2 = CFStringCompare(@"cmn-Hans", v3, 1uLL);
      if (theString2 && (theString2 = CFStringCompare(@"zh-cmn-Hans", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-cmn", v3, 1uLL)) != 0 && (theString2 = CFStringCompare(@"zh-Hans", v3, 1uLL)) != 0)
      {
        v4 = 1;
        theString2 = CFStringCompare(@"ja", v3, 1uLL);
        if (theString2)
        {
          v4 = 1;
          theString2 = CFStringCompare(@"ja-JP", v3, 1uLL);
          if (theString2)
          {
            theString2 = CFStringCompare(@"ko", v3, 1uLL);
            if (theString2 && (theString2 = CFStringCompare(@"ko-KR", v3, 1uLL)) != 0)
            {
              v4 = 0;
            }

            else
            {
              v4 = 4;
            }
          }
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 3;
    }

    if (a2)
    {
      *a2 = v4;
    }
  }

  return theString2;
}

void setupRubyAnnotation_0(uint64_t a1, CFAttributedStringRef aStr, int a3, double a4)
{
  v5 = aStr;
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Length = CFAttributedStringGetLength(aStr);
  if (Length >= 1)
  {
    v7 = Length;
    v8 = 0;
    v9 = *MEMORY[0x1E69659D8];
    v10 = *MEMORY[0x1E6960930];
    key = *MEMORY[0x1E6960938];
    theString2 = *MEMORY[0x1E6960B68];
    v40 = *MEMORY[0x1E6960B58];
    v41 = *MEMORY[0x1E6960B38];
    v39 = *MEMORY[0x1E6960B40];
    v37 = *MEMORY[0x1E6960B48];
    v35 = *MEMORY[0x1E6960B30];
    v36 = *MEMORY[0x1E6960B60];
    v51 = *MEMORY[0x1E6960940];
    attrName = *MEMORY[0x1E6965638];
    v11 = *MEMORY[0x1E695E480];
    v48 = *MEMORY[0x1E6965A48];
    v47 = *MEMORY[0x1E6965A40];
    v46 = *MEMORY[0x1E695E4D0];
    v43 = *MEMORY[0x1E6965A58];
    v42 = *MEMORY[0x1E6965A60];
    v50 = *MEMORY[0x1E6960948];
    v49 = *MEMORY[0x1E6965A38];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(v5, v8, &effectiveRange);
      if (Attributes)
      {
        v13 = Attributes;
        v14 = CFDictionaryContainsKey(Attributes, v9) ? CFDictionaryGetValue(v13, v9) : 0;
        if (CFDictionaryContainsKey(v13, v10))
        {
          break;
        }
      }

LABEL_43:
      v8 = effectiveRange.length + effectiveRange.location;
      if (effectiveRange.length + effectiveRange.location >= v7)
      {
        return;
      }
    }

    Value = CFDictionaryGetValue(v13, v10);
    String = CFAttributedStringGetString(Value);
    v55.location = 0;
    v55.length = 0;
    v17 = CFAttributedStringGetAttributes(Value, 0, &v55);
    v18 = CFDictionaryGetValue(v17, key);
    if (v18)
    {
      v19 = v18;
      if (CFStringCompare(v18, theString2, 0) == kCFCompareEqualTo)
      {
        v20 = kCTRubyAlignmentStart;
        goto LABEL_22;
      }

      if (CFStringCompare(v19, v41, 0))
      {
        if (CFStringCompare(v19, v40, 0))
        {
          if (CFStringCompare(v19, v39, 0))
          {
            if (CFStringCompare(v19, v37, 0))
            {
              if (CFStringCompare(v19, v36, 0))
              {
                v20 = 2 * (CFStringCompare(v19, v35, 0) != kCFCompareEqualTo);
              }

              else
              {
                v20 = kCTRubyAlignmentLineEdge;
              }
            }

            else
            {
              v20 = kCTRubyAlignmentDistributeSpace;
            }
          }

          else
          {
            v20 = kCTRubyAlignmentDistributeLetter;
          }
        }

        else
        {
          v20 = kCTRubyAlignmentEnd;
        }

        goto LABEL_22;
      }
    }

    v20 = kCTRubyAlignmentCenter;
LABEL_22:
    v21 = CFDictionaryGetValue(v17, v51);
    if (v21)
    {
      CFAttributedStringSetAttribute(v5, effectiveRange, attrName, v21);
    }

    v58 = 0;
    valuePtr = 0x3FE0000000000000;
    v57 = 0;
    if (a3 == 2)
    {
      if (*(a1 + 688))
      {
        v34 = a4 * 0.5;
      }

      else
      {
        v34 = a4;
      }

      calculateAndCopyStrokeAttributes(a1, &v58, &v57, v34);
    }

    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = v11;
    v24 = Mutable;
    if (Mutable)
    {
      v25 = v20;
      v26 = v5;
      v27 = String;
      v28 = v7;
      v29 = v10;
      v30 = CFNumberCreate(v23, kCFNumberCGFloatType, &valuePtr);
      CFDictionaryAddValue(v24, v48, v30);
      if (v30)
      {
        CFRelease(v30);
      }

      CFDictionaryAddValue(v24, v47, v46);
      CFDictionaryAddValue(v24, v9, v14);
      if (v58)
      {
        CFDictionaryAddValue(v24, v43, v58);
      }

      v10 = v29;
      if (v57)
      {
        CFDictionaryAddValue(v24, v42, v57);
      }

      Copy = CFDictionaryCreateCopy(allocator, v24);
      v7 = v28;
      String = v27;
      v5 = v26;
      v20 = v25;
    }

    else
    {
      setupRubyAnnotation_cold_1_0();
      Copy = 0;
    }

    if (v58)
    {
      CFRelease(v58);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    CFDictionaryGetValue(v17, v50);
    v32 = FigCFEqual() != 0;
    v33 = CTRubyAnnotationCreateWithAttributes(v20, kCTRubyOverhangNone, v32, String, Copy);
    CFAttributedStringSetAttribute(v5, effectiveRange, v49, v33);
    if (v33)
    {
      CFRelease(v33);
    }

    v11 = allocator;
    if (Copy)
    {
      CFRelease(Copy);
    }

    goto LABEL_43;
  }
}

void fillRoundedRect(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGContextBeginPath(a1);
  if (a6 <= 1.0)
  {
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    CGContextAddRect(a1, v21);
  }

  else
  {
    CGContextSaveGState(a1);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    MinX = CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    MinY = CGRectGetMinY(v18);
    CGContextTranslateCTM(a1, MinX, MinY);
    CGContextScaleCTM(a1, a6, a6);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    v14 = CGRectGetWidth(v19) / a6;
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    v15 = CGRectGetHeight(v20) / a6;
    CGContextMoveToPoint(a1, v14, v15 * 0.5);
    CGContextAddArcToPoint(a1, v14, v15, v14 * 0.5, v15, 1.0);
    CGContextAddArcToPoint(a1, 0.0, v15, 0.0, v15 * 0.5, 1.0);
    CGContextAddArcToPoint(a1, 0.0, 0.0, v14 * 0.5, 0.0, 1.0);
    CGContextAddArcToPoint(a1, v14, 0.0, v14, v15 * 0.5, 1.0);
    CGContextClosePath(a1);
    CGContextRestoreGState(a1);
  }

  CGContextFillPath(a1);
}

uint64_t ckCaptionDrawText(uint64_t a1, const __CFAttributedString *a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10)
{
  v125 = *MEMORY[0x1E69E9840];
  v20 = *(a3 + 320);
  v21 = *(a3 + 328);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"fcr_custom_background_render", @"com.apple.coremedia", 0);
  v114 = a4;
  if (a4 == 1)
  {
    CGContextSetLineJoin(v20, kCGLineJoinRound);
    if (v21)
    {
      CGContextSetLineJoin(v21, kCGLineJoinRound);
    }

    v23 = 0.0;
    v24 = 0.0;
  }

  else
  {
    if (a6 <= 60.0)
    {
      v24 = a6 * 0.0882352941;
    }

    else
    {
      v24 = a6 * 0.0882352941 / 1.5;
    }

    if (*(a3 + 336))
    {
      v24 = -v24;
    }

    v23 = 0.0;
  }

  effectiveRange.location = 0;
  effectiveRange.length = 0;
  Attributes = CFAttributedStringGetAttributes(a2, 0, &effectiveRange);
  EdgeStyle = getEdgeStyle(*(a3 + 128), *(a3 + 272), Attributes, *MEMORY[0x1E6960818]);
  if (EdgeStyle > 2)
  {
    if (EdgeStyle == 3)
    {
      if (a6 <= 60.0)
      {
        v23 = a6 * 0.0882352941;
      }

      else
      {
        v23 = a6 * 0.0882352941 / 1.5;
      }

      v24 = -v23;
    }

    else if (EdgeStyle == 4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (EdgeStyle == 1)
    {
      goto LABEL_30;
    }

    if (EdgeStyle == 2)
    {
      if (a6 <= 60.0)
      {
        v23 = a6 * -0.0882352941;
        v24 = a6 * 0.0882352941;
      }

      else
      {
        v23 = a6 * 0.0882352941 / -1.5;
        v24 = a6 * 0.0882352941 / 1.5;
      }
    }
  }

  v27 = *(a3 + 340);
  v28 = v23 * v27;
  v29 = v24 * v27;
  effectiveRange = xmmword_196E7BB38;
  v124 = *algn_196E7BB48;
  v30 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (v30)
  {
    v31 = v30;
    v32 = CGColorCreate(v30, &effectiveRange.location);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v32, *(a3 + 168));
    CGColorRelease(v32);
    CGColorSpaceRelease(v31);
  }

  else
  {
    CopyWithAlpha = 0;
  }

  v129.width = v28;
  v129.height = v29;
  CGContextSetShadowWithColor(*(a3 + 320), v129, *(a3 + 340) * 4.0, CopyWithAlpha);
  v34 = *(a3 + 328);
  if (v34)
  {
    v130.width = v28;
    v130.height = v29;
    CGContextSetShadowWithColor(v34, v130, *(a3 + 340) * 4.0, CopyWithAlpha);
  }

  CGColorRelease(CopyWithAlpha);
LABEL_30:
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v36 = Mutable;
    v121.location = 0;
    v121.length = 0;
    theString1 = CFAttributedStringGetAttribute(a2, 0, *MEMORY[0x1E6960998], &v121);
    if (theString1 && *(a1 + 128))
    {
      v37 = *MEMORY[0x1E6965AA8];
      values = *MEMORY[0x1E695E4D0];
      effectiveRange.location = v37;
      v38 = CFDictionaryCreate(*MEMORY[0x1E695E480], &effectiveRange, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v38)
      {
        return 0;
      }

      v39 = v38;
      v40 = CTTypesetterCreateWithAttributedStringAndOptions(a2, v38);
      if (!v40)
      {
        return 0;
      }

      v41 = v40;
      v42 = CTFramesetterCreateWithTypesetter(v40);
      if (!v42)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v42 = CTFramesetterCreateWithAttributedString(a2);
      v41 = 0;
      v39 = 0;
      if (!v42)
      {
LABEL_36:
        v43 = 4294950093;
LABEL_118:
        CFRelease(v36);
        return v43;
      }
    }

    framesetter = v42;
    FrameAttributesDictionary_0 = createFrameAttributesDictionary_0(a1, theString1);
    effectiveRange.location = 0;
    Attribute = CFAttributedStringGetAttribute(a2, 0, @"kFigSubtitleRenderer_CompensationInTextLayout", &v121);
    if (Attribute)
    {
      CFNumberGetValue(Attribute, kCFNumberCGFloatType, &effectiveRange);
    }

    v131.origin.x = a7 + *&effectiveRange.location;
    v131.origin.y = a8 + *&effectiveRange.location;
    v131.size.width = a9 - *&effectiveRange.location * 2.0;
    v131.size.height = a10 - *&effectiveRange.location * 2.0;
    v116 = a8 + *&effectiveRange.location;
    v117 = a7 + *&effectiveRange.location;
    CGPathAddRect(v36, 0, v131);
    v126.location = 0;
    v126.length = 0;
    v46 = CTFramesetterCreateFrame(framesetter, v126, v36, FrameAttributesDictionary_0);
    if (FrameAttributesDictionary_0)
    {
      CFRelease(FrameAttributesDictionary_0);
    }

    if (v46)
    {
      if (!a5)
      {
        goto LABEL_109;
      }

      if (!AppBooleanValue)
      {
        goto LABEL_109;
      }

      Lines = CTFrameGetLines(v46);
      if (!Lines)
      {
        goto LABEL_109;
      }

      v48 = Lines;
      Count = CFArrayGetCount(Lines);
      if (Count < 1)
      {
        goto LABEL_109;
      }

      frame = v46;
      v102 = v41;
      v103 = v39;
      v104 = v36;
      v105 = v21;
      v49 = 0;
      v50 = 0;
      allocator = *MEMORY[0x1E695E480];
      dx = a6 / -10.0;
      v108 = *MEMORY[0x1E695EFF8];
      v113 = a6 / -40.0;
      v51 = theString1;
      v107 = v48;
LABEL_48:
      effectiveRange = v108;
      v127.location = v50;
      v127.length = 1;
      CTFrameGetLineOrigins(frame, v127, &effectiveRange);
      ValueAtIndex = CFArrayGetValueAtIndex(v48, v50);
      GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
      v54 = CFArrayGetCount(GlyphRuns);
      v55 = MEMORY[0x19A8CC770](allocator, v49, 24 * v54, 0x102004024DAA5DELL, 0);
      if (v55)
      {
        v49 = v55;
        TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(ValueAtIndex);
        IsRightToLeft = CTLineIsRightToLeft();
        if (v54 < 1)
        {
          goto LABEL_106;
        }

        v57 = IsRightToLeft;
        v58 = 0;
        v59 = 0;
        v118 = -INFINITY;
        rect = INFINITY;
        while (1)
        {
          v60 = CFArrayGetValueAtIndex(GlyphRuns, v59);
          CTRunGetBackgroundBounds();
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v128.location = 0;
          v128.length = 0;
          ImageBounds = CTRunGetImageBounds(v60, 0, v128);
          x = ImageBounds.origin.x;
          y = ImageBounds.origin.y;
          width = ImageBounds.size.width;
          height = ImageBounds.size.height;
          v73 = CTRunGetAttributes(v60);
          if (v66 < 0.0 || v68 < 0.0 || width < 0.0 || height < 0.0)
          {
            goto LABEL_94;
          }

          v74 = v73;
          if (TrailingWhitespaceWidth > 0.0)
          {
            v75 = v57 ^ 1;
            if (v59)
            {
              v75 = 1;
            }

            if (v75)
            {
              if (v59 == v54 - 1)
              {
                v77 = v57;
              }

              else
              {
                v77 = 1;
              }

              if (v77)
              {
                goto LABEL_69;
              }

              v76 = TrailingWhitespaceWidth;
              if (TrailingWhitespaceWidth >= v66)
              {
                v76 = v66;
              }
            }

            else
            {
              v76 = TrailingWhitespaceWidth;
              if (TrailingWhitespaceWidth >= v66)
              {
                v76 = v66;
              }

              v62 = v62 + v76;
            }

            v66 = v66 - v76;
          }

LABEL_69:
          if (v66 == 0.0)
          {
LABEL_94:
            if (++v59 == v54)
            {
              v91 = v58;
              if (v58 < 1)
              {
                goto LABEL_106;
              }

LABEL_99:
              v92 = v49;
              do
              {
                if (*v92)
                {
                  v93 = v92[1];
                  v94 = v92[2] - v93;
                  if (v51)
                  {
                    v95 = -v93;
                    v96 = -v94;
                    v93 = rect;
                    v94 = v118 - rect;
                  }

                  else
                  {
                    v95 = rect;
                    v96 = v118 - rect;
                  }

                  v137 = CGRectOffset(*&v93, v117 + *&effectiveRange.location, v116 + *&effectiveRange.length);
                  v97 = v137.origin.x;
                  v98 = v137.origin.y;
                  v99 = v137.size.width;
                  v100 = v137.size.height;
                  CGContextSetFillColorWithColor(v20, *v92);
                  v138.origin.x = v97;
                  v138.origin.y = v98;
                  v138.size.width = v99;
                  v138.size.height = v100;
                  CGContextAddRect(v20, v138);
                  CGContextFillPath(v20);
                }

                v92 += 3;
                --v91;
              }

              while (v91);
LABEL_106:
              ++v50;
              v48 = v107;
              if (v50 == Count)
              {
                CFAllocatorDeallocate(allocator, v49);
                goto LABEL_108;
              }

              goto LABEL_48;
            }
          }

          else
          {
            if (v114 == 1)
            {
              v133.origin.x = x;
              v133.origin.y = y;
              v133.size.width = width;
              v133.size.height = height;
              v134 = CGRectInset(v133, dx, dx);
              x = v134.origin.x;
              y = v134.origin.y;
              width = v134.size.width;
              height = v134.size.height;
            }

            v135.origin.x = x;
            v135.origin.y = y;
            v135.size.width = width;
            v135.size.height = height;
            v136 = CGRectInset(v135, v113, v113);
            if (v62 >= v136.origin.x)
            {
              v78 = v136.origin.x;
            }

            else
            {
              v78 = v62;
            }

            v79 = v136.origin.x + v136.size.width;
            if (v66 + v62 <= v79)
            {
              v80 = v79;
            }

            else
            {
              v80 = v66 + v62;
            }

            if (v64 >= v136.origin.y)
            {
              v81 = v136.origin.y;
            }

            else
            {
              v81 = v64;
            }

            v82 = v136.origin.y + v136.size.height;
            if (v64 + v68 > v82)
            {
              v82 = v64 + v68;
            }

            v83 = rect;
            if (rect >= v81)
            {
              v83 = v81;
            }

            rect = v83;
            v84 = v118;
            if (v118 <= v82)
            {
              v84 = v82;
            }

            v118 = v84;
            Value = CFDictionaryGetValue(v74, @"kFCRSubtitleRenderer_CharacterBackgroundColor");
            v86 = Value;
            if (v58)
            {
              v87 = &v49[3 * v58];
              v88 = CGColorEqualToColor(Value, *(v87 - 3));
              v89 = *(v87 - 1);
              if (v88)
              {
                if (v89 <= v80)
                {
                  v89 = v80;
                }

                *(v87 - 1) = v89;
              }

              else
              {
                v90 = (v78 + v89) * 0.5;
                *(v87 - 1) = v90;
                *v87 = v86;
                v87[1] = v90;
                v87[2] = v80;
                ++v58;
              }

              v51 = theString1;
              goto LABEL_94;
            }

            *v49 = Value;
            v49[1] = v78;
            v49[2] = v80;
            ++v59;
            v91 = 1;
            v58 = 1;
            v51 = theString1;
            if (v59 == v54)
            {
              goto LABEL_99;
            }
          }
        }
      }

      ckCaptionDrawText_cold_1();
LABEL_108:
      v36 = v104;
      v21 = v105;
      v41 = v102;
      v39 = v103;
      v46 = frame;
LABEL_109:
      CTFrameDraw(v46, v20);
      if (v21)
      {
        CTFrameDraw(v46, v21);
      }

      CFRelease(v46);
      v43 = 0;
    }

    else
    {
      v43 = 4294950093;
    }

    CFRelease(framesetter);
    if (v41)
    {
      CFRelease(v41);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    goto LABEL_118;
  }

  return 4294950093;
}

__CFString *FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCaption <FigCaptionRendererCaptionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetAttributes(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = 0;
  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 40) = v5;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetContent(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = 0;
  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = 0;
  }

  *(DerivedStorage + 32) = v6;
  if (v5)
  {
    CFRelease(v5);
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 232);
      if (v9)
      {
        v9(a1, 1);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v10 = CMBaseObjectGetProtocolVTable();
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v11 + 216);
      if (v12)
      {
        v12(a1, 1);
      }
    }
  }

  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetExtendedLanguageTagString(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = a2;
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetTextHighlightArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a2;
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_GetInvisible_0(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695E4D0];
  if (!*(DerivedStorage + 72))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a2 = *v4;
  return 0;
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetWritingMode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = a2;
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

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetLayoutSampleWithCTAttributes(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 88) = CFEqual(a2, *MEMORY[0x1E695E4D0]) != 0;
  return 0;
}

uint64_t RegisterFigCaptionRendererCaptionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double ftu_Init(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void ftu_Finalize(uint64_t a1)
{
  if (*(a1 + 72))
  {
    RunLoopSource = IOSurfaceAcceleratorGetRunLoopSource();
    CFRunLoopRemoveSource(*(a1 + 96), RunLoopSource, *MEMORY[0x1E695E8D0]);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRunLoopStop(v3);
    FigThreadJoin();
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }
}

__CFString *ftu_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigTransformUtility %p retainCount:%ld", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"]\n");
  return Mutable;
}

uint64_t __FigTransformUtilityGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigTransformUtilityGetTypeID_sTypeID = result;
  return result;
}

uint64_t FigTransformUtilityCreate(uint64_t a1, const void *a2)
{
  if (FigTransformUtilityGetTypeID_sRegisterOnce != -1)
  {
    FigTransformUtilityCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    FigTransformUtilityCreate_cold_2(Instance, a2, &v5, &v6);
    return v6;
  }

  else
  {
    FigTransformUtilityCreate_cold_3();
    return 0;
  }
}

uint64_t ftu_callbackThread(uint64_t a1)
{
  *(a1 + 96) = CFRunLoopGetCurrent();
  memset(&v4, 0, 72);
  v4.perform = ftu_noop;
  v2 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v4);
  CFRunLoopAddSource(*(a1 + 96), v2, *MEMORY[0x1E695E8D0]);
  CFRelease(v2);
  dispatch_semaphore_signal(*(a1 + 112));
  CFRunLoopRun();
  return 0;
}

CFTypeRef __FigTransformUtilityGenerateReplacementImageBufferAsync_block_invoke(void *a1)
{
  v2 = a1[11];
  *(*(a1[4] + 8) + 24) = *(v2 + 40);
  *(*(a1[5] + 8) + 24) = *(v2 + 48);
  *(*(a1[6] + 8) + 24) = *(v2 + 56);
  *(*(a1[7] + 8) + 24) = *(v2 + 64);
  v4 = *(v2 + 32);
  v3 = (v2 + 32);
  *(*(a1[8] + 8) + 24) = v4;
  *(*(a1[9] + 8) + 24) = v3[1];
  result = *(v3 + 7);
  if (!result)
  {
    if (!*v3)
    {
      result = 0;
      goto LABEL_3;
    }

    v6 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v3);
    *(a1[11] + 88) = CFDictionaryCreate(v6, MEMORY[0x1E69A85C0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
    result = *(a1[11] + 88);
    if (!result)
    {
      goto LABEL_3;
    }
  }

  result = CFRetain(result);
LABEL_3:
  *(*(a1[10] + 8) + 24) = result;
  return result;
}

double ftu_computeSourceImageRectForCroppedDimensions(unint64_t a1, double result, double a3, double a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a6)
  {
    return result + a4 / a1 * vcvtd_n_f64_u64(a1 - a6, 1uLL);
  }

  return result;
}

void ftu_blitComplete(NSObject *a1, uint64_t a2, void *a3)
{
  dispatch_semaphore_signal(a1);
  if (*a3)
  {
    (*a3)(*(a3 + 1), *(a3 + 2));
  }

  CFRelease(*(a3 + 2));
  dispatch_release(a1);

  free(a3);
}

void FigTransformUtilityRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigTransformUtilitySetRotation(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  if (valuePtr == 180)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (valuePtr == 270)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __FigTransformUtilitySetRotation_block_invoke;
  v8[3] = &__block_descriptor_tmp_9_4;
  if (valuePtr == 90)
  {
    v6 = 4;
  }

  else
  {
    v6 = v4;
  }

  v9 = v6;
  v8[4] = a1;
  dispatch_sync(v5, v8);
  return 0;
}

void __FigTransformUtilitySetRotation_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 32))
  {
    v4 = *(v2 + 88);
    if (v4)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 88) = 0;
      v1 = *(a1 + 40);
      v2 = *(a1 + 32);
    }

    *(v2 + 32) = v1;
  }
}

uint64_t FigTransformUtilitySetVideoGravity(uint64_t a1)
{
  if (FigCFEqual())
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (FigCFEqual() != 0);
  }

  v3 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __FigTransformUtilitySetVideoGravity_block_invoke;
  v5[3] = &__block_descriptor_tmp_16_9;
  v5[4] = a1;
  v6 = v2;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t FigTransformUtilitySetMinImageBounds(uint64_t a1, CFDictionaryRef dict)
{
  size.width = 0.0;
  size.height = 0.0;
  CGSizeMakeWithDictionaryRepresentation(dict, &size);
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigTransformUtilitySetMinImageBounds_block_invoke;
  block[3] = &__block_descriptor_tmp_17_6;
  block[4] = a1;
  v6 = size;
  dispatch_sync(v3, block);
  return 0;
}

uint64x2_t __FigTransformUtilitySetMinImageBounds_block_invoke(uint64_t a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  result = vcvtq_u64_f64(vaddq_f64(*(a1 + 40), _Q1));
  *(*(a1 + 32) + 40) = result;
  return result;
}

uint64_t FigTransformUtilitySetMaxImageBounds(uint64_t a1, CFDictionaryRef dict)
{
  size.width = 0.0;
  size.height = 0.0;
  CGSizeMakeWithDictionaryRepresentation(dict, &size);
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigTransformUtilitySetMaxImageBounds_block_invoke;
  block[3] = &__block_descriptor_tmp_18_5;
  block[4] = a1;
  v6 = size;
  dispatch_sync(v3, block);
  return 0;
}

uint64x2_t __FigTransformUtilitySetMaxImageBounds_block_invoke(uint64_t a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  result = vcvtq_u64_f64(vaddq_f64(*(a1 + 40), _Q1));
  *(*(a1 + 32) + 56) = result;
  return result;
}

BOOL OUTLINED_FUNCTION_2_187(double a1, double a2, double a3, double a4)
{
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  return CGRectEqualToRect(*&a1, *&v9);
}

uint64_t RegisterFigItemIntegratedTimelineType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigItemIntegratedTimelineCreate(const void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v6 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigItemIntegratedTimelineGetClassID_sRegisterFigItemIntegratedTimelineTypeOnce, RegisterFigItemIntegratedTimelineType);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v26 = 2914;
LABEL_21:
    FigItemIntegratedTimelineCreate_cold_3(v26, v27);
    return v27[0];
  }

  v9 = DerivedStorage;
  v10 = FigReentrantMutexCreate();
  *v9 = v10;
  if (!v10)
  {
    v26 = 2917;
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  if (dword_1EAF17A98)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1E6960C98];
  v14 = *(MEMORY[0x1E6960C98] + 16);
  *(v9 + 104) = *MEMORY[0x1E6960C98];
  *(v9 + 8) = v12;
  *(v9 + 120) = v14;
  *(v9 + 136) = *(v13 + 32);
  v15 = MEMORY[0x1E6960C70];
  *(v9 + 208) = *MEMORY[0x1E6960C70];
  *(v9 + 224) = *(v15 + 16);
  *(v9 + 80) = *a2;
  *(v9 + 88) = a2[1];
  *(v9 + 96) = a2[2];
  *(v9 + 64) = FigDispatchQueueCreateWithPriority();
  *(v9 + 352) = FPSupport_InitialSeekIDForSource(5);
  *(v9 + 72) = FigDispatchQueueCreateWithPriority();
  CMBaseObjectGetDerivedStorage();
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
  v16 = CMBaseObjectGetDerivedStorage();
  if (!*(v16 + 320))
  {
    v17 = v16;
    v18 = FigDispatchQueueCreateWithPriority();
    *(v17 + 320) = v18;
    if (!v18)
    {
      FigItemIntegratedTimelineCreate_cold_1();
    }
  }

  v19 = CMBaseObjectGetDerivedStorage();
  v20 = CFArrayCreate(v6, 0, 0, MEMORY[0x1E695E9C0]);
  if (v20)
  {
    v21 = v20;
    FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v19 + 8));
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v23(FigBaseObject, @"IntegratedTimelineTimeOffsets", v21);
    }

    CFRelease(v21);
  }

  else
  {
    FigItemIntegratedTimelineCreate_cold_2();
  }

  fiit_checkAndUpdateIfPrimaryIsReadyForInspection(0);
  fiit_updatePrimaryItemSeekableTimeRange(0, 0);
  fiit_updatePrimaryItemStartMoment();
  fiit_rebuildSegmentList(0);
  fiit_unlockAndPostSnapshotOutOfSyncNotification(0);
  v24 = 0;
  *a3 = 0;
  return v24;
}

void FigCFRelease_15(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fiit_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(CMBaseObjectGetDerivedStorage() + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  fiit_cancelScanTracking();
  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  fiit_setCoordinator(a1, 0);
  v5 = DerivedStorage[4];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[4] = 0;
  }

  v6 = DerivedStorage[7];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[7] = 0;
  }

  v7 = DerivedStorage[5];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[5] = 0;
  }

  v8 = DerivedStorage[8];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[8] = 0;
  }

  v9 = DerivedStorage[9];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[9] = 0;
  }

  v10 = DerivedStorage[19];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[19] = 0;
  }

  v11 = DerivedStorage[6];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[6] = 0;
  }

  v12 = DerivedStorage[30];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[30] = 0;
  }

  v13 = DerivedStorage[40];
  if (v13)
  {
    dispatch_release(v13);
    DerivedStorage[40] = 0;
  }

  return FigSimpleMutexDestroy();
}

void fiit_cancelScanTracking()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 304);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 304) = 0;
  }

  v2 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 328) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 344) = *(v2 + 16);
  v3 = *(DerivedStorage + 312);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(DerivedStorage + 312));
    *(DerivedStorage + 312) = 0;
    if (dword_1EAF17A98)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 356) = 0;
  }
}

BOOL fiit_isTrackingScan()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 356);
  return (v1 > 2.0 || v1 < 0.0) && *(DerivedStorage + 304) && *(DerivedStorage + 312) != 0;
}

void fiit_clearPendingSeekState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 232) = 0;
  v1 = MEMORY[0x1E6960C70];
  v2 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 248) = *MEMORY[0x1E6960C70];
  v3 = *(v1 + 16);
  *(DerivedStorage + 264) = v3;
  *(DerivedStorage + 272) = v2;
  *(DerivedStorage + 288) = v3;
  v4 = *(DerivedStorage + 240);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 240) = 0;
  }
}

void fiit_postNotification(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v8 = malloc_type_malloc(0x18uLL, 0xE004074F98F5AuLL);
  if (v8)
  {
    v9 = v8;
    *v8 = a2;
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    v9[1] = v10;
    if (a4)
    {
      v11 = CFRetain(a4);
    }

    else
    {
      v11 = 0;
    }

    v9[2] = v11;
    v12 = *(a1 + 64);

    dispatch_async_f(v12, v9, fiit_postNotificationFromDispatch);
  }

  else
  {
    fiit_postNotification_cold_1();
  }
}

void fiit_postNotificationFromDispatch(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

CFDateRef fiit_MakeCFDateFromTime(CMTime *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return 0;
  }

  if (!*(a2 + 33))
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = *(a2 + 24);
  v8 = *a1;
  v5 = v4 + CMTimeGetSeconds(&v8);
  v8 = *a2;
  Seconds = CMTimeGetSeconds(&v8);
  return CFDateCreate(v3, v5 - Seconds);
}

CMTime *fiit_distanceFromRange@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  v6 = MEMORY[0x1E6960CC0];
  v11 = *MEMORY[0x1E6960CC0];
  *&a3->value = *MEMORY[0x1E6960CC0];
  v7 = *(v6 + 16);
  a3->epoch = v7;
  v8 = *(a1 + 16);
  *&range.start.value = *a1;
  *&range.start.epoch = v8;
  *&range.duration.timescale = *(a1 + 32);
  time = *a2;
  result = CMTimeRangeContainsTime(&range, &time);
  if (result)
  {
    *&a3->value = v11;
    a3->epoch = v7;
  }

  else
  {
    *&range.start.value = *&a2->value;
    range.start.epoch = a2->epoch;
    time = *a1;
    if (CMTimeCompare(&range.start, &time) <= 0)
    {
      *&range.start.value = *a1;
      range.start.epoch = *(a1 + 16);
      time = *a2;
    }

    else
    {
      v10 = *(a1 + 16);
      *&range.start.value = *a1;
      *&range.start.epoch = v10;
      *&range.duration.timescale = *(a1 + 32);
      CMTimeRangeGetEnd(&time, &range);
      *&range.start.value = *&a2->value;
      range.start.epoch = a2->epoch;
    }

    return CMTimeSubtract(a3, &range.start, &time);
  }

  return result;
}

uint64_t fiit_mapTimeToSegmentAndOffset(uint64_t a1, CMTime *a2, const __CFArray *a3, uint64_t *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v27, 0, sizeof(v27));
  if (!a4)
  {
    fiit_mapTimeToSegmentAndOffset_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (!a5)
  {
    fiit_mapTimeToSegmentAndOffset_cold_1(&range);
    return LODWORD(range.start.value);
  }

  v24 = a4;
  v10 = 0;
  ValueAtIndex = 0;
  v12 = 0;
  v13 = (DerivedStorage + 96);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = CFArrayGetCount(a3); v12 < i; i = 0)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v10 = (*v13)();
    FigPlaybackItemSegmentGetTimeMapping(v10, v27);
    if ((~a2->flags & 5) != 0)
    {
      range = v27[1];
      time = *a2;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        goto LABEL_17;
      }
    }

    else if (!FigPlaybackItemSegmentGetType(v10))
    {
      goto LABEL_17;
    }

    ++v12;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  memset(&start, 0, sizeof(start));
  v25 = **&MEMORY[0x1E6960C70];
  v15 = CMBaseObjectGetDerivedStorage();
  if (CFArrayGetCount(a3) >= 1)
  {
    FirstValue = FigCFArrayGetFirstValue();
    LastValue = FigCFArrayGetLastValue();
    v18 = (*(v15 + 96))(FirstValue);
    v19 = (*(v15 + 96))(LastValue);
    FigPlaybackItemSegmentGetTimeMapping(v18, &range);
    start = v32.start;
    FigPlaybackItemSegmentGetTimeMapping(v19, &time);
    v30 = v29;
    CMTimeRangeGetEnd(&v25, &v30);
  }

  *&range.start.value = *&a2->value;
  range.start.epoch = a2->epoch;
  time = v25;
  if ((CMTimeCompare(&range.start, &time) & 0x80000000) == 0)
  {
    *a2 = v25;
LABEL_17:
    v20 = v24;
    goto LABEL_18;
  }

  *&range.start.value = *&a2->value;
  range.start.epoch = a2->epoch;
  time = start;
  v20 = v24;
  if (CMTimeCompare(&range.start, &time) < 0)
  {
    *a2 = start;
    ValueAtIndex = FigCFArrayGetFirstValue();
    (*v13)();
    FigPlaybackItemSegmentGetTimeMapping(v10, &range);
    v27[0] = range;
    v27[1] = v32;
  }

LABEL_18:
  *v20 = ValueAtIndex;
  if ((~a2->flags & 5) != 0)
  {
    time = *a2;
    *&v30.start.value = *&v27[1].start.value;
    v30.start.epoch = v27[1].start.epoch;
    CMTimeSubtract(&range.start, &time, &v30.start);
    result = 0;
    *a5 = *&range.start.value;
    epoch = range.start.epoch;
  }

  else
  {
    result = 0;
    v22 = MEMORY[0x1E6960C88];
    *a5 = *MEMORY[0x1E6960C88];
    epoch = *(v22 + 16);
  }

  *(a5 + 16) = epoch;
  return result;
}

BOOL fiit_AreSegmentWrappersDifferent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    return 0;
  }

  v7 = (*(DerivedStorage + 96))(a2);
  v8 = (*(DerivedStorage + 96))(a3);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1;
  }

  v10 = v8;
  Type = FigPlaybackItemSegmentGetType(v7);
  if (Type != FigPlaybackItemSegmentGetType(v10))
  {
    return 1;
  }

  if (FigPlaybackItemSegmentGetType(v7))
  {
    v12 = *(DerivedStorage + 24);
    InterstitialEvent = FigPlaybackItemSegmentGetInterstitialEvent(v7);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v14)
    {
      v15 = v14(v12, InterstitialEvent);
    }

    else
    {
      v15 = 0;
    }

    v17 = *(DerivedStorage + 24);
    v18 = FigPlaybackItemSegmentGetInterstitialEvent(v10);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v19)
    {
      v20 = v19(v17, v18);
    }

    else
    {
      v20 = 0;
    }

    v21 = FigPlayerInterstitialEventCopyIdentifier(v15);
    v22 = FigPlayerInterstitialEventCopyIdentifier(v20);
    v6 = FigCFEqual() == 0;
    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(&v30, 0, sizeof(v30));
    FigPlaybackItemSegmentGetTimeMapping(v7, &v30);
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    memset(&v26, 0, sizeof(v26));
    FigPlaybackItemSegmentGetTimeMapping(v10, &v26);
    range = v30;
    memset(&v25, 0, sizeof(v25));
    v23 = v26;
    CMTimeRangeGetIntersection(&v25, &range, &v23);
    if ((v25.start.flags & 1) == 0)
    {
      return 0;
    }

    v6 = 0;
    if ((v25.duration.flags & 1) != 0 && !v25.duration.epoch && (v25.duration.value & 0x8000000000000000) == 0)
    {
      range.start = v25.duration;
      *&v23.start.value = *MEMORY[0x1E6960CC0];
      v23.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      return CMTimeCompare(&range.start, &v23.start) == 0;
    }
  }

  return v6;
}

uint64_t fiit_CopyEvent(uint64_t a1)
{
  v5 = 0;
  v2 = FigPlayerInterstitialEventCopyPrimaryItem();
  v3 = FigPlayerInterstitialEventCopyAsDictionary(a1, 1);
  FigPlayerInterstitialEventCreateFromDictionary(v2, v3, &v5);
  FigPlayerInterstitialEventSetImmutable(v5);
  CFRelease(v2);
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t fiit_CopySnapshot(const void *a1, uint64_t *a2, uint64_t a3, CMTime *a4, CFDateRef *a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fiit_CopySnapshot_cold_5(&v17);
    return LODWORD(v17.value);
  }

  if (!a3)
  {
    fiit_CopySnapshot_cold_4(&v17);
    return LODWORD(v17.value);
  }

  if (!a4)
  {
    fiit_CopySnapshot_cold_3(&v17);
    return LODWORD(v17.value);
  }

  if (!a5)
  {
    fiit_CopySnapshot_cold_2(&v17);
    return LODWORD(v17.value);
  }

  if (!a6)
  {
    fiit_CopySnapshot_cold_1(&v17);
    return LODWORD(v17.value);
  }

  v13 = DerivedStorage;
  FigSimpleMutexLock();
  fiit_currentTime(a1, a5, &v17);
  *a4 = v17;
  fiit_ensureSegmentListContainsCurrentTime(a1);
  *a2 = FigCFArrayCreateCopy();
  v14 = *(v13 + 224);
  *a3 = *(v13 + 208);
  *(a3 + 16) = v14;
  v15 = *(v13 + 48);
  if (v15)
  {
    v15 = CFRetain(v15);
  }

  *a6 = v15;
  fiit_unlockAndPostSnapshotOutOfSyncNotification(a1);
  return 0;
}

uint64_t fiit_GetCurrentTime(const void *a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    fiit_GetCurrentTime_cold_1(DerivedStorage, a1, a2);
    return 0;
  }

  else
  {
    fiit_GetCurrentTime_cold_2(&v6);
    return v6;
  }
}

uint64_t fiit_CopyCurrentDate(const void *a1, CFDateRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    fiit_currentTime(a1, a2, &v5);
    fiit_unlockAndPostSnapshotOutOfSyncNotification(a1);
    return 0;
  }

  else
  {
    fiit_CopyCurrentDate_cold_1(&v5);
    return LODWORD(v5.value);
  }
}

__CFArray *fiit_createLoadedTimeRangesForTimeMapping(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  Mutable = 0;
  v7 = 0;
  allocator = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E6960CC0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    memset(&v23, 0, sizeof(v23));
    Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
    CMTimeMakeFromDictionary(&v23, Value);
    memset(&v22, 0, sizeof(v22));
    v11 = CFDictionaryGetValue(ValueAtIndex, @"endTime");
    CMTimeMakeFromDictionary(&v22, v11);
    memset(&v21, 0, sizeof(v21));
    start.start = v23;
    end.start = v22;
    CMTimeRangeFromTimeToTime(&v21, &start.start, &end.start);
    end = v21;
    memset(&start, 0, sizeof(start));
    v12 = *(a2 + 16);
    *&otherRange.start.value = *a2;
    *&otherRange.start.epoch = v12;
    *&otherRange.duration.timescale = *(a2 + 32);
    CMTimeRangeGetIntersection(&start, &end, &otherRange);
    if ((start.start.flags & 1) != 0 && (start.duration.flags & 1) != 0 && !start.duration.epoch && (start.duration.value & 0x8000000000000000) == 0)
    {
      end.start = start.duration;
      *&otherRange.start.value = *v8;
      otherRange.start.epoch = *(v8 + 16);
      if (CMTimeCompare(&end.start, &otherRange.start))
      {
        memset(&end, 0, sizeof(end));
        lhs = *(a2 + 48);
        rhs = *a2;
        CMTimeSubtract(&otherRange.start, &lhs, &rhs);
        lhs = start.start;
        CMTimeAdd(&end.start, &otherRange.start, &lhs);
        end.duration = start.duration;
        otherRange = end;
        v13 = CMTimeRangeCopyAsDictionary(&otherRange, allocator);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(allocator, v5, MEMORY[0x1E695E9C0]);
        }

        CFArrayAppendValue(Mutable, v13);
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }

    ++v7;
  }

  while (v5 != v7);
  return Mutable;
}

__n128 OUTLINED_FUNCTION_7_104()
{
  result = *(v0 + 136);
  *&STACK[0x200] = result;
  return result;
}

void OUTLINED_FUNCTION_9_81(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v3 + 196) = a1;
  *(v4 - 164) = 2048;
  *(v3 + 206) = v2;
  *(v4 - 154) = 2048;
  *(v4 - 152) = v5;
  *(v4 - 144) = 2048;
  *(v3 + 226) = a2;
}

uint64_t OUTLINED_FUNCTION_14_67@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *time1, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t time1a)
{
  *(v26 - 208) = a1;

  return CMTimeCompare(&time1a, (v26 - 224));
}

CMTime *OUTLINED_FUNCTION_18_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CMTime *rhs, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 rhsa, CMTime *lhs, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, __int128 lhsa, uint64_t lhs_16, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int128 a55, CMTime *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  lhsa = *(v66 - 256);
  lhs_16 = *(v66 - 240);
  rhsa = a55;
  lhs = a56;

  return CMTimeSubtract(&a66, &lhsa, &rhsa);
}

__n128 OUTLINED_FUNCTION_19_47()
{
  result = *v0;
  *&STACK[0x270] = *v0;
  STACK[0x280] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_20_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a29)
{
  result = a29;
  v29[4] = a29;
  return result;
}

__n128 OUTLINED_FUNCTION_23_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25)
{
  result = a25;
  *v25 = a25;
  return result;
}

CMTime *OUTLINED_FUNCTION_25_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = *(v70 + 120);
  a69 = *(v70 + 104);
  a70 = v72;
  *&STACK[0x200] = *(v70 + 136);

  return fiit_distanceFromRange(&a69, &a45, &a57);
}

void *OUTLINED_FUNCTION_26_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t __dst, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_30_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeCompare((v1 - 224), (v1 - 256));
}

Float64 OUTLINED_FUNCTION_35_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTime *time, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  *(v43 + 64) = *v44;
  time_16 = *(v44 + 16);

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_36_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11)
{
  *(v12 + 104) = a9;
  *(v12 + 120) = a10;
  *(v12 + 136) = a11;

  fiit_rebuildSegmentList(v11);
}

uint64_t OUTLINED_FUNCTION_38_24(__n128 a1)
{
  *(v1 - 240) = a1;
  *(v1 - 224) = 0;
  return v1 - 112;
}

void *OUTLINED_FUNCTION_41_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t __dst, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_42_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CMTime *time2, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, __n128 time2a, uint64_t time2_16, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, CMTime *time1, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  time2a = a9;
  time2_16 = a17;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_44_26()
{

  return FigNotificationCenterAddWeakListener();
}

__n128 OUTLINED_FUNCTION_45_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, uint64_t a22)
{
  result = a21;
  *(v22 - 112) = a21;
  *(v22 - 96) = a22;
  return result;
}

__n128 OUTLINED_FUNCTION_47_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25, unint64_t a26)
{
  result = a25;
  *&STACK[0x210] = a25;
  STACK[0x220] = a26;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_17()
{
  *(v1 - 256) = 0;
  *(v1 - 248) = 0;
  *(v1 - 240) = 0;
  return v0;
}

__n128 OUTLINED_FUNCTION_53_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27, uint64_t a28)
{
  result = a27;
  *(v28 - 112) = a27;
  *(v28 - 96) = a28;
  return result;
}

__n128 OUTLINED_FUNCTION_55_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a69;
  *(v70 - 256) = a69;
  *(v70 - 240) = a70;
  return result;
}

__n128 OUTLINED_FUNCTION_57_16()
{
  v0 = *&STACK[0x280];
  *&STACK[0x210] = *&STACK[0x270];
  *&STACK[0x220] = v0;
  result = *&STACK[0x290];
  *&STACK[0x230] = *&STACK[0x290];
  return result;
}

double OUTLINED_FUNCTION_65_15()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  return result;
}

double OUTLINED_FUNCTION_66_14()
{
  result = 0.0;
  *&STACK[0x220] = 0u;
  *&STACK[0x230] = 0u;
  *&STACK[0x200] = 0u;
  *&STACK[0x210] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_13()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void OUTLINED_FUNCTION_74_13()
{

  fiit_updateCurrentSegmentWrapper(v0, 0);
}

uint64_t RegisterFigCaptionFormatConformerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionFormatConformerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionFormatConformerGetClassID_sRegisterFigCaptionFormatConformerBaseTypeOnce, RegisterFigCaptionFormatConformerBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigNeroidCreateLocal(uint64_t a1, CFTypeRef *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = 0;
  v17 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  FigNeroidGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    goto LABEL_4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigNeroCreate(a1, (DerivedStorage + 32));
  if (v5)
  {
    goto LABEL_4;
  }

  v5 = FigNeroidLayerViewCreate(a1, (DerivedStorage + 40));
  if (v5)
  {
    goto LABEL_4;
  }

  CMBaseObject = FigLayerViewGetCMBaseObject(*(DerivedStorage + 40));
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v5 = v10(CMBaseObject, @"ImageQueue", a1, &cf);
    if (v5)
    {
LABEL_4:
      v7 = v5;
      goto LABEL_5;
    }

    v11 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:{1, v14, v15}];
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    *(DerivedStorage + 24) = v12;
    [v12 setName:@"neroid-internal-videolayer"];
    [*(DerivedStorage + 24) setContents:cf];
    [*(DerivedStorage + 24) setContentsGravity:*MEMORY[0x1E6979DE8]];
    [*(DerivedStorage + 24) setEdgeAntialiasingMask:0];
    [*(DerivedStorage + 24) setAllowsDisplayCompositing:1];
    if (FigServer_IsMediaplaybackd() && (v13 = FigOSTransactionCreate(), (*(DerivedStorage + 48) = v13) == 0))
    {
      FigNeroidCreateLocal_cold_1(v11, v18);
      v7 = v18[0];
    }

    else
    {
      [MEMORY[0x1E6979518] commit];
      objc_autoreleasePoolPop(v11);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      v7 = 0;
      *a2 = v17;
      v17 = 0;
    }
  }

  else
  {
    v7 = 4294954514;
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v7;
}

uint64_t neroid_handleNeroNotification(int a1, int a2, CFTypeRef cf1)
{
  if (!CFEqual(cf1, @"Nero_Connected") && !CFEqual(cf1, @"Nero_Disconnected"))
  {
    result = CFEqual(cf1, @"Nero_FirstVideoFrameEnqueued");
    if (!result)
    {
      return result;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

__CFString *neroid_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroid %p>", a1);
  return Mutable;
}

uint64_t neroid_Start()
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v3 = *MEMORY[0x1E695E480];
  if (CFPreferenceNumberWithDefault)
  {
    v4 = FigTransportConnectionTCPCreate();
    if (v4)
    {
LABEL_3:
      v5 = v4;
      goto LABEL_13;
    }
  }

  else
  {
    v4 = FigTransportConnectionIDSCreate();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RenderDestination", *(DerivedStorage + 40));
  CFDictionarySetValue(Mutable, @"TransportConnection", value);
  v7 = FigNeroSetup(*(DerivedStorage + 32), Mutable);
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    CMBaseObject = FigLayerViewGetCMBaseObject(*(DerivedStorage + 40));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v5 = v9(CMBaseObject, @"DisplayInfo", v3, &cf);
      if (!v5)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    else
    {
      v5 = 4294954514;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t FigCPEProtectorXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteXPCCPEProtector_GetObjectID(a1, a2);
    }

    else
    {
      FigCPEProtectorXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigCPEProtectorXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteXPCCPEProtector_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCCPEProtector_GetObjectID_cold_1(&v6);
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

uint64_t remoteXPCCPEProtectorClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

__CFString *remoteXPCCPEProtector_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigCPEProtectorRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_2_189()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t FigMetricEventInitialLikelyToKeepUpSubscriberCreate(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    FigMetricEventInitialLikelyToKeepUpSubscriberCreate_cold_3();
    return 0;
  }

  if (!a3)
  {
    FigMetricEventInitialLikelyToKeepUpSubscriberCreate_cold_2();
    return 0;
  }

  v21 = xmmword_1E74978A8;
  if (ilktu_getTypeID_once != -1)
  {
    dispatch_once_f(&ilktu_getTypeID_once, &v21, subUtil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetricEventInitialLikelyToKeepUpSubscriberCreate_cold_1(&v21);
    return v21;
  }

  v7 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v7 + 16) = Mutable;
  if (!Mutable || (v9 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]), (*(v7 + 24) = v9) == 0) || (v10 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]), (*(v7 + 32) = v10) == 0) || (v11 = dispatch_queue_create("FigMetricIntialLTKUSubscriber.queue", 0), (*(v7 + 48) = v11) == 0))
  {
    v19 = 4294947525;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v13)
  {
    v19 = 4294954514;
LABEL_22:
    CFRelease(v7);
    return v19;
  }

  v14 = v13(a2, v7, &FigMetricEventInitialLikelyToKeepUpSubscriberCreate_subscriberCallbacks, v12);
  if (v14)
  {
    v19 = v14;
    goto LABEL_22;
  }

  *(v7 + 40) = 0;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v15)
  {
    v15(a2, v7, 2);
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v16)
  {
    v16(a2, v7, 3);
  }

  v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v17)
  {
    v17(a2, v7, 1);
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    v18(a2, v7, 4);
  }

  v19 = 0;
  *a3 = v7;
  return v19;
}

uint64_t FigMetricEventPlaybackSummarySubscriberCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ensureMetricEventTrace();
  if (!a2)
  {
    FigMetricEventPlaybackSummarySubscriberCreate_cold_3();
    return 0;
  }

  if (!a3)
  {
    FigMetricEventPlaybackSummarySubscriberCreate_cold_2();
    return 0;
  }

  v14 = xmmword_1E74978B8;
  if (pss_getTypeID_once != -1)
  {
    dispatch_once_f(&pss_getTypeID_once, &v14, subUtil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetricEventPlaybackSummarySubscriberCreate_cold_1(&v14);
    return v14;
  }

  v6 = Instance;
  v7 = dispatch_queue_create("FigMetricEventPlaybackSummarySubscriber.queue", 0);
  *(v6 + 152) = v7;
  if (!v7)
  {
    v12 = 4294947525;
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    v12 = 4294954514;
LABEL_13:
    CFRelease(v6);
    return v12;
  }

  v10 = v9(a2, v6, &FigMetricEventPlaybackSummarySubscriberCreate_subscriberCallbacks, v8);
  if (v10)
  {
    v12 = v10;
    goto LABEL_13;
  }

  *(v6 + 160) = 0;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v11)
  {
    v11(a2, v6);
  }

  v12 = 0;
  *a3 = v6;
  return v12;
}

void pss_didReceiveEvent(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v44 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    goto LABEL_82;
  }

  v8 = v7(a4);
  if (v8 <= 6)
  {
    if (v8 < 4)
    {
      ++*(a1 + 56);
      goto LABEL_82;
    }

    if (v8 != 4)
    {
      if (v8 == 6)
      {
        v13 = *(a1 + 160);
        if (v13 == 1)
        {
          *(a1 + 80) = 0;
          v40 = *(*(CMBaseObjectGetVTable() + 40) + 48);
          v41.n128_u64[0] = 0;
          if (v40)
          {
            v41.n128_f64[0] = v40(a4, v41);
          }

          *(a1 + 64) = v41.n128_f64[0] + *(a1 + 64);
        }

        else if (!v13)
        {
          v14 = *(*(CMBaseObjectGetVTable() + 40) + 48);
          v15.n128_u64[0] = 0;
          if (v14)
          {
            v15.n128_f64[0] = v14(a4, v15);
          }

          *(a1 + 72) = v15.n128_u64[0];
        }

        *(a1 + 160) = 2;
      }

      goto LABEL_82;
    }

    v20 = *(*(CMBaseObjectGetVTable() + 40) + 48);
    v21.n128_u64[0] = 0;
    if (v20)
    {
      v21.n128_f64[0] = v20(a4, v21);
    }

    *(a1 + 72) = v21.n128_u64[0];
    v22 = *(*(CMBaseObjectGetVTable() + 40) + 8);
    if (!v22 || (v23 = v22(a4)) == 0)
    {
      pss_didReceiveEvent_cold_1();
      goto LABEL_82;
    }

    v24 = *(a1 + 128);
    *(a1 + 128) = v23;
    CFRetain(v23);
    if (!v24)
    {
      goto LABEL_82;
    }

    v25 = v24;
LABEL_77:
    CFRelease(v25);
    goto LABEL_82;
  }

  if (v8 <= 9)
  {
    if (v8 != 7)
    {
      if (v8 == 9)
      {
        ++*(a1 + 32);
        *(a1 + 160) = 1;
        *(a1 + 80) = CFAbsoluteTimeGetCurrent();
      }

      goto LABEL_82;
    }

    ++*(a1 + 48);
    v16 = *(*(CMBaseObjectGetVTable() + 56) + 8);
    if (v16)
    {
      a4 = v16(a4);
    }

    else
    {
      a4 = 0;
    }

    if (*(a1 + 128))
    {
      pss_updateStatsWithCurrentVariant(a1);
      *(a1 + 136) = CFAbsoluteTimeGetCurrent();
      v30 = *(a1 + 128);
    }

    else
    {
      v30 = 0;
    }

    *(a1 + 144) = 0;
    *(a1 + 128) = a4;
    if (!a4)
    {
LABEL_75:
      if (!v30)
      {
        goto LABEL_82;
      }

      v25 = v30;
      goto LABEL_77;
    }

LABEL_74:
    CFRetain(a4);
    goto LABEL_75;
  }

  switch(v8)
  {
    case 10:
      v18 = *(*(CMBaseObjectGetVTable() + 48) + 16);
      if (!v18 || v18(a4) == 0.0 || (v19 = *(*(CMBaseObjectGetVTable() + 48) + 24)) != 0 && v19(a4) != 0.0)
      {
        v26 = *(*(CMBaseObjectGetVTable() + 48) + 16);
        if (!v26 || v26(a4) == 0.0)
        {
          v27 = *(*(CMBaseObjectGetVTable() + 48) + 24);
          if (v27)
          {
            if (v27(a4) != 0.0)
            {
              *(a1 + 144) = *(a1 + 144) + CFAbsoluteTimeGetCurrent() - *(a1 + 136);
            }
          }
        }
      }

      else
      {
        *(a1 + 136) = CFAbsoluteTimeGetCurrent();
      }

      v28 = *(*(CMBaseObjectGetVTable() + 48) + 16);
      v29.n128_u64[0] = 0;
      if (v28)
      {
        v29.n128_f64[0] = v28(a4, v29);
      }

      *(a1 + 120) = v29.n128_u64[0];
      break;
    case 13:
      v17 = *(*(CMBaseObjectGetVTable() + 24) + 16);
      if (v17 && v17(a4))
      {
        ++*(a1 + 40);
        break;
      }

      v30 = *(a1 + 16);
      *(a1 + 16) = a4;
      if (!a4)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    case 14:
      pss_updateStatsWithCurrentVariant(a1);
      v9 = *(a1 + 24);
      if (*&v9 > 0.0)
      {
        v10 = vcvtq_s64_f64(vdivq_f64(vcvtq_f64_s64(*(a1 + 104)), vdupq_lane_s64(v9, 0)));
        *(a1 + 88) = vextq_s8(v10, v10, 8uLL);
      }

      if (*(a1 + 160) == 1 && *(a1 + 80) != 0.0)
      {
        *(a1 + 64) = CFAbsoluteTimeGetCurrent() - *(a1 + 80);
      }

      v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v11)
      {
        v12 = v11(a4);
      }

      else
      {
        v12 = 0;
      }

      v31 = *(*(CMBaseObjectGetVTable() + 64) + 8);
      if (v31)
      {
        v32 = v31(a4);
      }

      else
      {
        v32 = 0;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v34)
      {
        v34(&v42, a4);
      }

      else
      {
        v42 = *MEMORY[0x1E6960C70];
        v43 = *(MEMORY[0x1E6960C70] + 16);
      }

      v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v35)
      {
        v36 = v35(a4);
      }

      else
      {
        v36 = 0;
      }

      v37 = v32;
      if (!v32)
      {
        v32 = *(a1 + 88);
        v37 = *(a1 + 96);
      }

      if (!FigMetricItemPlaybackSummaryEventCreate(AllocatorForMedia, &v42, v36, v12, *(a1 + 16), *(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 24), *(a1 + 56), v32, v37, &v44))
      {
        v38 = v44;
        v39 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v39)
        {
          v39(a2, 0, v38);
        }
      }

      if (v12)
      {
        v25 = v12;
        goto LABEL_77;
      }

      break;
  }

LABEL_82:
  if (v44)
  {
    CFRelease(v44);
  }
}

uint64_t FigMetricEventDownloadSummarySubscriberGetRecoverableErrorCount(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 24);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigMetricEventDownloadSummarySubscriberGetMediaResourceRequestCount(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigMetricEventDownloadSummarySubscriberCreate(uint64_t a1, uint64_t a2, void *a3)
{
  ensureMetricEventTrace();
  if (!a2)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_4();
    return 0;
  }

  if (!a3)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_3();
    return 0;
  }

  v17 = xmmword_1E74978C8;
  if (dss_getTypeID_once != -1)
  {
    dispatch_once_f(&dss_getTypeID_once, &v17, subUtil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_2(&v17);
    return v17;
  }

  v6 = Instance;
  v7 = FigSimpleMutexCreate();
  v6[2] = v7;
  if (!v7)
  {
    FigMetricEventDownloadSummarySubscriberCreate_cold_1(&v17);
    v15 = v17;
    goto LABEL_19;
  }

  GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    v15 = 4294954514;
LABEL_19:
    CFRelease(v6);
    return v15;
  }

  v10 = v9(a2, v6, &FigMetricEventDownloadSummarySubscriberCreate_subscriberCallbacks, GlobalNetworkBufferingQueue);
  if (v10)
  {
    v15 = v10;
    goto LABEL_19;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v11(a2, v6, 1);
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v12)
  {
    v12(a2, v6, 2);
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v13)
  {
    v13(a2, v6, 3);
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v14)
  {
    v14(a2, v6, 13);
  }

  v15 = 0;
  *a3 = v6;
  return v15;
}

uint64_t dss_didReceiveEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v7 = v6(a4);
    if ((v7 - 1) < 3)
    {
      v8 = 32;
LABEL_4:
      ++*(a1 + v8);
      goto LABEL_9;
    }

    if (v7 == 13)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 24) + 16);
      if (v9)
      {
        if (v9(a4))
        {
          v8 = 24;
          goto LABEL_4;
        }
      }
    }
  }

LABEL_9:

  return FigSimpleMutexUnlock();
}

void ilktu_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    dispatch_release(v5);
  }
}

uint64_t subUtil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

double pss_updateStatsWithCurrentVariant(uint64_t a1)
{
  if (*(a1 + 120) != 0.0)
  {
    *(a1 + 144) = *(a1 + 144) + CFAbsoluteTimeGetCurrent() - *(a1 + 136);
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 104) = (*(a1 + 104) + FigAlternateGetPeakBitRate(v2) * *(a1 + 144));
    AverageBitRate = FigAlternateGetAverageBitRate(*(a1 + 128));
    v4 = *(a1 + 144);
    *(a1 + 112) = (*(a1 + 112) + AverageBitRate * v4);
  }

  else
  {
    v4 = *(a1 + 144);
  }

  result = v4 + *(a1 + 24);
  *(a1 + 24) = result;
  return result;
}

void pss_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
    a1[16] = 0;
  }

  v4 = a1[19];
  if (v4)
  {
    dispatch_release(v4);
    a1[19] = 0;
  }
}

uint64_t FigLoopingEditCursorServiceCreate(uint64_t a1, __int128 *a2, void *a3)
{
  v16 = 0;
  FigEditCursorServiceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *a2;
    v8 = a2[2];
    *(DerivedStorage + 16) = a2[1];
    *(DerivedStorage + 32) = v8;
    *DerivedStorage = v7;
    if ((*(a2 + 3) & 0x1D) == 1 && (time1 = *a2, v13 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v9 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v9, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (*(a2 + 9) & 0x1D) == 1)
    {
      time1 = *(a2 + 1);
      *&time2.value = v13;
      time2.epoch = v9;
      v10 = CMTimeCompare(&time1, &time2);
      *(DerivedStorage + 48) = v10 > 0;
      if (v10 < 1)
      {
        v11 = 0;
      }

      else
      {
        time1 = *a2;
        *&time2.value = v13;
        time2.epoch = v9;
        v11 = CMTimeCompare(&time1, &time2) > 0;
      }
    }

    else
    {
      v11 = 0;
      *(DerivedStorage + 48) = 0;
    }

    *(DerivedStorage + 49) = v11;
    *a3 = v16;
  }

  return v5;
}

__CFString *loopingCursorService_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLoopingEditCursorService %p>", a1);
  if (*(DerivedStorage + 48))
  {
    v4 = "looping";
  }

  else
  {
    v4 = "pass-through";
  }

  CFStringAppendFormat(Mutable, 0, @"{ %s", v4);
  if (*(DerivedStorage + 48))
  {
    v5 = *DerivedStorage;
    time.epoch = *(DerivedStorage + 16);
    *&time.value = v5;
    Seconds = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 24);
    v7 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @" time range [%1.3f,+%1.3f]", *&Seconds, *&v7);
  }

  CFStringAppendFormat(Mutable, 0, @" }");
  return Mutable;
}

uint64_t loopingCursorService_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v6 = DerivedStorage;
    if (FigCFEqual())
    {
      v7 = MEMORY[0x1E695E4D0];
      if (!*(v6 + 48))
      {
        v7 = MEMORY[0x1E695E4C0];
      }

      v8 = CFRetain(*v7);
      result = 0;
      *a4 = v8;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    loopingCursorService_CopyProperty_cold_1(&v10);
    return v10;
  }

  return result;
}

__CFString *loopingCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLoopingEditCursor %p>", a1);
  if (*(DerivedStorage + 48))
  {
    v4 = "looping";
  }

  else
  {
    v4 = "pass-through";
  }

  CFStringAppendFormat(Mutable, 0, @"{ %s", v4);
  if (*(DerivedStorage + 48))
  {
    v5 = *DerivedStorage;
    time.epoch = *(DerivedStorage + 16);
    *&time.value = v5;
    Seconds = CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 24);
    v7 = CMTimeGetSeconds(&time);
    CFStringAppendFormat(Mutable, 0, @" time range [%1.3f,+%1.3f]", *&Seconds, *&v7);
  }

  CFStringAppendFormat(Mutable, 0, @", editIndex %d }", *(DerivedStorage + 56));
  return Mutable;
}

uint64_t loopingCursor_Step(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56) + a2;
  *(DerivedStorage + 56) = v4 & ~(v4 >> 63);
  return (v4 >> 63) & 0xFFFFCF18;
}

uint64_t loopingCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 56);
    if (v5)
    {
      if (*(DerivedStorage + 49))
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      if (*(DerivedStorage + 49))
      {
        v17 = MEMORY[0x1E6960CC0];
        v18 = *MEMORY[0x1E6960CC0];
        *(a2 + 48) = *MEMORY[0x1E6960CC0];
        v19 = *(v17 + 16);
        *(a2 + 64) = v19;
        v20 = *(DerivedStorage + 16);
        *(a2 + 72) = *DerivedStorage;
        *(a2 + 88) = v20;
        *(a2 + 16) = v19;
        *a2 = v18;
        v21 = *(DerivedStorage + 16);
        *(a2 + 24) = *DerivedStorage;
        *(a2 + 40) = v21;
        return 0;
      }

      v6 = 0;
    }

    time = *(DerivedStorage + 24);
    CMTimeMultiply(&rhs, &time, v5 + v6);
    v7 = *v4;
    v23.epoch = *(v4 + 16);
    *&v23.value = v7;
    CMTimeAdd(&time, &v23, &rhs);
    *(a2 + 48) = time;
    v8 = *(v4 + 24);
    *(a2 + 88) = *(v4 + 40);
    *(a2 + 72) = v8;
    v9 = *v4;
    v10 = *(v4 + 32);
    *(a2 + 16) = *(v4 + 16);
    *(a2 + 32) = v10;
    *a2 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E6960CC0];
    v12 = *MEMORY[0x1E6960CC0];
    *(a2 + 48) = *MEMORY[0x1E6960CC0];
    v13 = *(v11 + 16);
    *(a2 + 64) = v13;
    v14 = MEMORY[0x1E6960C88];
    v15 = *MEMORY[0x1E6960C88];
    *(a2 + 72) = *MEMORY[0x1E6960C88];
    v16 = *(v14 + 16);
    *(a2 + 88) = v16;
    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 40) = v16;
  }

  return 0;
}

__n128 OUTLINED_FUNCTION_0_210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, unint64_t a18)
{
  result = a17;
  *v18 = a17;
  v18[1].n128_u64[0] = a18;
  return result;
}

__CFString *FigGetNotifyingObjectForSelectionCriteriaChanged()
{
  if (_ensureAutomaticMediaSelectionInitialized_gSetupAutomaticMediaSelectionOnce != -1)
  {
    FigGetNotifyingObjectForSelectionCriteriaChanged_cold_1();
  }

  return @"AutomaticMediaSelectionNotification_DefaultsChanged";
}

__CFDictionary *FigAutomaticMediaSelectionCopyDefaultCriteria()
{
  if (_ensureAutomaticMediaSelectionInitialized_gSetupAutomaticMediaSelectionOnce != -1)
  {
    FigGetNotifyingObjectForSelectionCriteriaChanged_cold_1();
  }

  FigSimpleMutexLock();
  DefaultMediaSelectionCriteria = qword_1ED4CBB60;
  if (qword_1ED4CBB60 || (DefaultMediaSelectionCriteria = _createDefaultMediaSelectionCriteria(*MEMORY[0x1E695E480]), (qword_1ED4CBB60 = DefaultMediaSelectionCriteria) != 0))
  {
    CFRetain(DefaultMediaSelectionCriteria);
  }

  FigSimpleMutexUnlock();
  return DefaultMediaSelectionCriteria;
}

void _mergeMediaPresentationArray(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFDictionaryRef theDict)
{
  if (a3 && theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v9 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    v16 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    v17 = v9;
    CFDictionaryGetKeysAndValues(theDict, v9, v16);
    if (Count >= 1)
    {
      v10 = v16;
      do
      {
        v11 = *v9;
        MutableCopy = FigCFArrayCreateMutableCopy();
        if (MutableCopy)
        {
          v13 = MutableCopy;
          Value = FigCFDictionaryGetValue();
          if (Value)
          {
            Mutable = CFDictionaryCreateMutableCopy(a1, 0, Value);
            FigCFDictionaryGetValue();
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          FigCFArrayAppendArray();
          if (Mutable)
          {
            CFDictionarySetValue(Mutable, a3, v13);
            CFDictionarySetValue(a2, v11, Mutable);
            CFRelease(Mutable);
          }

          CFRelease(v13);
        }

        ++v10;
        ++v9;
        --Count;
      }

      while (Count);
    }

    free(v17);

    free(v16);
  }
}

uint64_t FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(uint64_t theArray, const __CFDictionary **a2, const __CFDictionary **a3, const __CFDictionary **a4)
{
  v7 = theArray;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
    v8 = theArray;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = 0;
  }

LABEL_4:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
      theArray = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaCharacteristics");
      if (theArray)
      {
        v11 = theArray;
        theArray = CFArrayGetCount(theArray);
        v12 = theArray;
        if (a2)
        {
          if (!*a2)
          {
            v13.location = 0;
            v13.length = theArray;
            theArray = CFArrayContainsValue(v11, v13, @"public.visual");
            if (theArray)
            {
              *a2 = ValueAtIndex;
            }
          }
        }

        if (a3)
        {
          if (!*a3)
          {
            v14.location = 0;
            v14.length = v12;
            theArray = CFArrayContainsValue(v11, v14, @"public.audible");
            if (theArray)
            {
              *a3 = ValueAtIndex;
            }
          }
        }

        if (a4 && !*a4)
        {
          v15.location = 0;
          v15.length = v12;
          theArray = CFArrayContainsValue(v11, v15, @"public.legible");
          if (theArray)
          {
            *a4 = ValueAtIndex;
          }
        }
      }
    }
  }

  return theArray;
}

const __CFDictionary *FigAutomaticMediaSelectionGetOptionFromMediaSelectionGroupAssociatedWithOption(const __CFDictionary *a1, int a2, int a3, int a4, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"MediaSelectionGroupOptions");
  if (!a1)
  {
    return 0;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsAssociatedPersistentIDs");
  v39 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsExtendedLanguageTag");
  if (!v8 || (v9 = CFArrayGetCount(v8), v9 < 1))
  {
LABEL_19:
    v16 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
    if (v16)
    {
      if (!v7)
      {
        return 0;
      }

      v17 = v16;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v19 = Count;
        v43 = 0;
        v20 = 0;
        allocator = *MEMORY[0x1E695E480];
        theDicta = v17;
        v42 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v20);
          CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType");
          v50 = 0;
          v22 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
          FigCFStringGetOSTypeValue();
          if (!v22 || v50 == 1668047728)
          {
            goto LABEL_47;
          }

          if (v17 == v22)
          {
            v26 = 0;
            v27 = 0;
            v24 = 0;
            ComponentsFromLocaleIdentifier = 0;
            v31 = 0;
            goto LABEL_36;
          }

          ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(allocator, v17);
          if (!ComponentsFromLocaleIdentifier)
          {
            break;
          }

          v24 = CFLocaleCreateComponentsFromLocaleIdentifier(allocator, v22);
          if (!v24)
          {
            v26 = 0;
            v27 = 0;
            goto LABEL_51;
          }

          v25 = CFDictionaryGetCount(ComponentsFromLocaleIdentifier);
          v26 = malloc_type_calloc(v25, 8uLL, 0x80040B8603338uLL);
          v27 = malloc_type_calloc(v25, 8uLL, 0x80040B8603338uLL);
          CFDictionaryGetKeysAndValues(ComponentsFromLocaleIdentifier, v26, v27);
          if (v25 < 1)
          {
LABEL_33:
            v31 = 0;
          }

          else
          {
            v28 = 0;
            while (1)
            {
              v29 = v27[v28];
              v30 = CFDictionaryGetValue(v24, v26[v28]);
              if (!v30 || CFStringCompare(v30, v29, 0))
              {
                break;
              }

              if (v25 == ++v28)
              {
                goto LABEL_33;
              }
            }

            v31 = 1;
          }

LABEL_36:
          free(v26);
          free(v27);
          if (ComponentsFromLocaleIdentifier)
          {
            CFRelease(ComponentsFromLocaleIdentifier);
          }

          v19 = v42;
          if (v24)
          {
            CFRelease(v24);
          }

          if (v31)
          {
            v17 = theDicta;
          }

          else
          {
            if (v50 != 1952807028 && v50 != 1935832172)
            {
LABEL_69:
              v43 = ValueAtIndex;
              goto LABEL_53;
            }

            v49 = 0;
            v17 = theDicta;
            if (_legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(ValueAtIndex, a2, a3, a4, &v49))
            {
              if (v49)
              {
                goto LABEL_69;
              }

              v43 = ValueAtIndex;
            }
          }

LABEL_47:
          if (++v20 == v19)
          {
            goto LABEL_53;
          }
        }

        v26 = 0;
        v27 = 0;
        v24 = 0;
LABEL_51:
        v31 = 1;
        goto LABEL_36;
      }
    }

    v43 = 0;
LABEL_53:
    if (v43 || !v39)
    {
      return v43;
    }

    if (v7)
    {
      v32 = CFArrayGetCount(v7);
      if (v32 >= 1)
      {
        v33 = v32;
        v43 = 0;
        v34 = 0;
        while (1)
        {
          v35 = CFArrayGetValueAtIndex(v7, v34);
          CFDictionaryGetValue(v35, @"MediaSelectionOptionsAssociatedExtendedLanguageTag");
          CFDictionaryGetValue(v35, @"MediaSelectionOptionsMediaType");
          v48 = 0;
          FigCFStringGetOSTypeValue();
          if (v48 != 1668047728 && FigCFEqual())
          {
            if (v48 != 1952807028 && v48 != 1935832172)
            {
              return v35;
            }

            v47 = 0;
            if (_legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(v35, a2, a3, a4, &v47))
            {
              if (v47)
              {
                return v35;
              }

              v43 = v35;
            }
          }

          if (v33 == ++v34)
          {
            return v43;
          }
        }
      }
    }

    return 0;
  }

  v10 = v9;
  v11 = 0;
  v40 = v9;
  v41 = v8;
  while (2)
  {
    CFArrayGetValueAtIndex(v8, v11);
    if (!v7)
    {
      goto LABEL_18;
    }

    v12 = CFArrayGetCount(v7);
    if (v12 < 1)
    {
      goto LABEL_18;
    }

    v13 = v12;
    v43 = 0;
    v14 = 0;
    while (1)
    {
      v15 = CFArrayGetValueAtIndex(v7, v14);
      CFDictionaryGetValue(v15, @"MediaSelectionOptionsPersistentID");
      CFDictionaryGetValue(v15, @"MediaSelectionOptionsMediaType");
      v52 = 0;
      FigCFStringGetOSTypeValue();
      if (!FigCFEqual())
      {
        goto LABEL_14;
      }

      if (v52 != 1952807028 && v52 != 1935832172)
      {
        break;
      }

      v51 = 0;
      if (_legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(v15, a2, a3, a4, &v51))
      {
        if (v51)
        {
          break;
        }

        v43 = v15;
      }

LABEL_14:
      if (v13 == ++v14)
      {
        goto LABEL_17;
      }
    }

    v43 = v15;
LABEL_17:
    v8 = v41;
    v10 = v40;
    if (!v43)
    {
LABEL_18:
      if (++v11 == v10)
      {
        goto LABEL_19;
      }

      continue;
    }

    return v43;
  }
}

uint64_t _legibleOptionMeetsMainProgramContentAndForcedOnlyCriteria(const __CFDictionary *a1, int a2, int a3, int a4, BOOL *a5)
{
  Value = CFDictionaryGetValue(a1, @"MediaSelectionOptionsDisplaysForcedSubtitlesOnly");
  v11 = *MEMORY[0x1E695E4D0];
  if (a5)
  {
    *a5 = Value == v11;
  }

  if (a3 && Value != v11 || a2 && CFDictionaryGetValue(a1, @"MediaSelectionOptionsIsAuxiliaryContent") == v11)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  CFDictionaryGetValue(a1, @"MediaSelectionOptionsTaggedMediaCharacteristics");
  result = FigCFArrayContainsValue();
  if (result)
  {
    return 1;
  }

  return result;
}

CFTypeRef FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(CFArrayRef theArray, const __CFDictionary *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (a2)
  {
    CFDictionaryGetValue(a2, @"MediaSelectionGroupID");
    CFDictionaryGetValue(a2, @"MediaSelectionGroupMediaType");
  }

  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupID");
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    if (FigCFEqual())
    {
      if (FigCFEqual())
      {
        break;
      }
    }

    if (Count == ++v5)
    {
      return 0;
    }
  }

  if (!ValueAtIndex)
  {
    return 0;
  }

  return CFRetain(ValueAtIndex);
}

uint64_t FigAutomaticMediaSelectionCreateSecondaryForcedSubtitlesSelectedMediaDictionary(const __CFArray *a1, const __CFDictionary *a2)
{
  v3 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a1, a2);
  OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(a2, v3);
  if (OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles && CFDictionaryGetValue(OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles, @"MediaSelectionOptionsMediaType"))
  {
    FigCFStringGetOSTypeValue();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

const __CFDictionary *_getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"MediaSelectionGroupOptions");
    v4 = Value;
    if (Value)
    {
      Count = CFArrayGetCount(Value);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  Count = 0;
LABEL_6:
  v6 = MEMORY[0x1E695E4D0];
  if (a2)
  {
    CFDictionaryGetValue(a2, @"MediaSelectionOptionsPersistentID");
    v12 = *v6 == CFDictionaryGetValue(a2, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
  }

  else
  {
    v12 = 0;
  }

  if (Count < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = *v6;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    v10 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
    if (FigCFEqual())
    {
      if (v12 == (v8 == v10))
      {
        break;
      }
    }

    if (Count == ++v7)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

__CFDictionary *_createSelectedMediaDictionaryForOptionInGroup(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a2)
  {
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a2, @"MediaSelectionOptionsPersistentID");
  v7 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsUniqueOutOfBandID");
  if (Value)
  {
    v8 = Mutable;
    v9 = @"MediaSelectionOptionsPersistentID";
    v10 = Value;
LABEL_6:
    CFDictionarySetValue(v8, v9, v10);
    goto LABEL_7;
  }

  v10 = v7;
  if (v7)
  {
    v8 = Mutable;
    v9 = @"MediaSelectionOptionsUniqueOutOfBandID";
    goto LABEL_6;
  }

LABEL_7:
  v11 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsDisplaysNonForcedSubtitles");
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"MediaSelectionOptionsDisplaysNonForcedSubtitles", v11);
  }

  v12 = CFDictionaryGetValue(a2, @"MediaSelectionOptionsAudioCompositionPresetIndex");
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"MediaSelectionOptionsAudioCompositionPresetIndex", v12);
  }

LABEL_11:
  v13 = CFDictionaryGetValue(a3, @"MediaSelectionGroupID");
  v14 = CFDictionaryGetValue(a3, @"MediaSelectionGroupMediaType");
  if (v13)
  {
    v15 = Mutable;
    v16 = @"MediaSelectionGroupID";
    v17 = v13;
LABEL_15:
    CFDictionarySetValue(v15, v16, v17);
    goto LABEL_16;
  }

  v17 = v14;
  if (v14)
  {
    v15 = Mutable;
    v16 = @"MediaSelectionGroupMediaType";
    goto LABEL_15;
  }

LABEL_16:
  CFDictionarySetValue(Mutable, @"AutomaticallySelected", *MEMORY[0x1E695E4D0]);
  return Mutable;
}

uint64_t FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria(uint64_t a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, unsigned __int8 a8, unsigned __int8 a9, void *a10)
{
  cf = 0;
  *a10 = 0;
  v15 = *MEMORY[0x1E695E480];
  if (a2)
  {
    MutableCopy = FigCFArrayCreateMutableCopy();
    if (MutableCopy)
    {
      v18 = MutableCopy;
      AutomaticSelectedMediaArrayForCriteria = _createAutomaticSelectedMediaArrayForCriteria(v15, a1, a2, a3, a4, a5, a6, a7, a8, a9, &cf);
      if (AutomaticSelectedMediaArrayForCriteria)
      {
        v20 = AutomaticSelectedMediaArrayForCriteria;
      }

      else
      {
        v20 = FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(v18, cf, 0);
        if (!v20)
        {
          *a10 = v18;
          goto LABEL_6;
        }
      }

      CFRelease(v18);
    }

    else
    {
      FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteriaWithLegibleFallbackCriteria_cold_1(&v25);
      v20 = v25;
    }
  }

  else
  {
    v20 = _createAutomaticSelectedMediaArrayForCriteria(v15, a1, 0, a3, a4, a5, a6, a7, a8, a9, &cf);
    if (!v20)
    {
      *a10 = cf;
      return v20;
    }
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t _createAutomaticSelectedMediaArrayForCriteria(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3, const __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7, const __CFDictionary *a8, unsigned __int8 a9, unsigned __int8 a10, __CFArray **a11)
{
  v118 = *MEMORY[0x1E69E9840];
  v114 = 0;
  v115[0] = 0;
  cf = 0;
  v113 = 0;
  SelectedMediaDictionaryForOptionInGroup = 0;
  theDict = 0;
  v109 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v16 = a1;
  fig_note_initialize_category_with_default_work_cf();
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v18 = MEMORY[0x1E695E480];
    v19 = FigAutomaticMediaSelectionCopyDefaultCriteria();
    MergedCriteria = FigAutomaticMediaSelectionCreateMergedCriteria(v16, v19, a4, a5, a6, a8);
    if (v19)
    {
      CFRelease(v19);
    }

    v102 = *v18;
    allocator = v16;
    if (a10)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v103 = MergedCriteria;
        v115[3] = @"public.audible";
        v115[2] = @"public.legible";
        v22 = 1;
        do
        {
          v23 = v22;
          v115[1] = 0;
          v24 = MutableCopy;
          FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent();
          v25 = FigCFDictionaryCreateMutableCopy();
          v26 = CFArrayCreate(v16, kFigStdAssetMediaCharacteristic_HLSAvailableOffline, 1, MEMORY[0x1E695E9C0]);
          if (v26)
          {
            FigCFDictionarySetValue();
            CFRelease(v26);
          }

          MutableCopy = v24;
          FigCFDictionarySetValue();
          if (v25)
          {
            CFRelease(v25);
          }

          v22 = 0;
        }

        while ((v23 & 1) != 0);
        MergedCriteria = v103;
      }

      if (MergedCriteria)
      {
        CFRelease(MergedCriteria);
      }
    }

    else
    {
      MutableCopy = MergedCriteria;
    }

    FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(a2, v115, &v113, &theDict);
    Value = CFDictionaryGetValue(MutableCopy, @"public.audible");
    v28 = Value;
    v29 = 0;
    if (v113 && theDict && Value)
    {
      v30 = CFDictionaryGetValue(Value, @"preferredLanguages");
      if (v30)
      {
        theArray = v30;
        v90 = MutableCopy;
        v92 = v28;
        if (!theDict)
        {
          goto LABEL_57;
        }

        v31 = v113;
        v32 = CFDictionaryGetValue(theDict, @"MediaSelectionGroupOptions");
        if (!v32)
        {
          goto LABEL_57;
        }

        v33 = v32;
        Count = CFArrayGetCount(v32);
        if (v31)
        {
          v35 = CFDictionaryGetValue(v31, @"MediaSelectionGroupOptions");
          v36 = v35;
          v31 = v35 ? CFArrayGetCount(v35) : 0;
        }

        else
        {
          v36 = 0;
        }

        if (Count < 1)
        {
          goto LABEL_57;
        }

        v104 = 0;
        v38 = 0;
        v96 = Count;
        v97 = v33;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v33, v38);
          v40 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
          if (v40)
          {
            if ((v41 = v40, v42 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID"), v104) && (v43 = CFDictionaryGetValue(v104, v41)) != 0 && (v44 = CFRetain(v43)) != 0 || (v44 = CFArrayCreateMutable(v102, 0, MEMORY[0x1E695E9C0])) != 0)
            {
              v45 = v44;
              _addToMutableArrayIfNotPresent(v41, v44);
              v46 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsAssociatedUnicodeLanguageIdentifier");
              if (v46)
              {
                _addToMutableArrayIfNotPresent(v46, v45);
              }

              if (v42 && v31 >= 1)
              {
                for (i = 0; i != v31; ++i)
                {
                  v48 = CFArrayGetValueAtIndex(v36, i);
                  if (v48)
                  {
                    v49 = v48;
                    v50 = CFDictionaryGetValue(v48, @"MediaSelectionOptionsAssociatedPersistentIDs");
                    if (v50)
                    {
                      v51 = v50;
                      v119.length = CFArrayGetCount(v50);
                      v119.location = 0;
                      if (CFArrayContainsValue(v51, v119, v42))
                      {
                        v52 = CFDictionaryGetValue(v49, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
                        if (v52)
                        {
                          _addToMutableArrayIfNotPresent(v52, v45);
                        }
                      }
                    }
                  }
                }
              }

              v53 = v104;
              if (v104 || (v53 = CFDictionaryCreateMutable(v102, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
              {
                v104 = v53;
                CFDictionarySetValue(v53, v41, v45);
              }

              else
              {
                v104 = 0;
              }

              Count = v96;
              v33 = v97;
              CFRelease(v45);
            }
          }

          ++v38;
        }

        while (v38 != Count);
        context = v104;
        v117 = 0;
        v16 = allocator;
        if (v104)
        {
          v117 = CFArrayCreateMutable(v102, 0, MEMORY[0x1E695E9C0]);
          v120.length = CFArrayGetCount(theArray);
          v120.location = 0;
          CFArrayApplyFunction(theArray, v120, _addToAssociatedLanguages, &context);
          v29 = v117;
          if (context)
          {
            CFRelease(context);
          }
        }

        else
        {
LABEL_57:
          v29 = CFRetain(theArray);
        }

        MutableCopy = v90;
        v28 = v92;
        if (v29)
        {
          v54 = FigCFDictionaryCreateMutableCopy();
          v37 = v54;
          if (!v54)
          {
            _createAutomaticSelectedMediaArrayForCriteria_cold_1(&context);
            SelectedMediaDictionaryForGroupUsingCriteria = context;
LABEL_72:
            CFRelease(v29);
            goto LABEL_73;
          }

          CFDictionarySetValue(v54, @"preferredLanguages", v29);
          v28 = v37;
LABEL_62:
          if (v115[0])
          {
            v114 = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a3, v115[0]);
            if (!v114)
            {
              v79 = CFDictionaryGetValue(MutableCopy, @"public.visual");
              v80 = _createSelectedMediaDictionaryForGroupUsingCriteria(v16, v115[0], v79, 1, &v114, 0);
              if (v80)
              {
                goto LABEL_159;
              }

              if (v114)
              {
                CFArrayAppendValue(Mutable, v114);
              }
            }
          }

          if (!v113)
          {
            goto LABEL_66;
          }

          cf = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a3, v113);
          if (cf)
          {
            goto LABEL_66;
          }

          v80 = _createSelectedMediaDictionaryForGroupUsingCriteria(v16, v113, v28, 1, &cf, &v109);
          if (!v80)
          {
            if (cf)
            {
              CFArrayAppendValue(Mutable, cf);
              v55 = 1;
              goto LABEL_67;
            }

LABEL_66:
            v55 = 0;
LABEL_67:
            if (!theDict)
            {
              goto LABEL_69;
            }

            SelectedMediaDictionaryForOptionInGroup = FigAutomaticMediaSelectionCopySelectedMediaDictionaryMatchingGroupIDAndMediaType(a3, theDict);
            if (SelectedMediaDictionaryForOptionInGroup)
            {
              goto LABEL_69;
            }

            v58 = CFDictionaryGetValue(MutableCopy, @"public.legible");
            SelectedMediaDictionaryForGroupUsingCriteria = cf;
            SelectedMediaDictionaryForOptionInGroup = 0;
            if (!theDict)
            {
              goto LABEL_69;
            }

            v59 = v58;
            v99 = v109;
            v101 = v113;
            v105 = theDict;
            keya = cf;
            if (v58)
            {
              v93 = v28;
              v60 = MutableCopy;
              v61 = CFDictionaryGetCount(v58);
              CountOfKey = CFDictionaryGetCountOfKey(v59, @"captionAppearanceDisplayType");
              v63 = CFDictionaryGetCountOfKey(v59, @"fallbackPreferredLanguages");
              v64 = CFDictionaryGetCountOfKey(v59, @"fallbackPreferredCharacteristics");
              v65 = v61 - (CountOfKey + v63 + v64 + CFDictionaryGetCountOfKey(v59, @"precludedMediaCharacteristics"));
              v66 = CFDictionaryGetValue(v59, @"requiredMediaCharacteristics");
              if (v66)
              {
                v67 = CFArrayGetCount(v66);
                v65 -= v67 == (FigCFArrayContainsValue() != 0);
              }

              v68 = v65 < 1;
              MutableCopy = v60;
              SelectedMediaDictionaryForGroupUsingCriteria = keya;
              v28 = v93;
              if (!v68)
              {
                SelectedMediaDictionaryForGroupUsingCriteria = _createSelectedMediaDictionaryForGroupUsingCriteria(allocator, v105, v59, 0, &SelectedMediaDictionaryForOptionInGroup, 0);
LABEL_120:
                v76 = 0;
                v77 = 0;
                MediaSelectionCriteria = 0;
                goto LABEL_121;
              }
            }

            if (!SelectedMediaDictionaryForGroupUsingCriteria)
            {
              goto LABEL_120;
            }

            if (v55 | a9 && _getCaptionAppearanceDisplayType() == kMACaptionAppearanceDisplayTypeAutomatic)
            {
              OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(v101, SelectedMediaDictionaryForGroupUsingCriteria);
              SelectedMediaDictionaryForGroupUsingCriteria = OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles;
              if (!OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles)
              {
                v76 = 0;
                v77 = 0;
                MediaSelectionCriteria = 0;
                goto LABEL_121;
              }

              v91 = MutableCopy;
              v94 = v28;
              v98 = CFDictionaryGetValue(OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles, @"MediaSelectionOptionsLanguageCode");
              v70 = CFLocaleCopyPreferredLanguages();
              v71 = SelectedMediaDictionaryForGroupUsingCriteria;
              v72 = CFArrayCreateMutable(v102, 0, MEMORY[0x1E695E9C0]);
              _appendOptionLanguages(SelectedMediaDictionaryForGroupUsingCriteria, v72);
              v73 = FigCopyRankedLanguagesAccordingToPreferredLanguages();
              v74 = v71;
              v75 = _optionLanguageMatchesLanguageList(v71, v73);
              if (v72)
              {
                CFRelease(v72);
              }

              if (v70)
              {
                CFRelease(v70);
              }

              v76 = v74;
              if (v73)
              {
                CFRelease(v73);
              }

              MutableCopy = v91;
              if (v99 | a9)
              {
                SelectedMediaDictionaryForGroupUsingCriteria = 0;
                v77 = 0;
                if (!a9 || v75 || !v98)
                {
                  MediaSelectionCriteria = 0;
LABEL_121:
                  if (!SelectedMediaDictionaryForOptionInGroup)
                  {
LABEL_126:
                    if (!v76)
                    {
                      v76 = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(v101, keya);
                    }

                    OptionFromMediaSelectionGroupAssociatedWithOption = FigAutomaticMediaSelectionGetOptionFromMediaSelectionGroupAssociatedWithOption(v76, 1, 1, a10, v105);
                    SelectedMediaDictionaryForOptionInGroup = _createSelectedMediaDictionaryForOptionInGroup(allocator, OptionFromMediaSelectionGroupAssociatedWithOption, v105);
                    if (!SelectedMediaDictionaryForOptionInGroup)
                    {
                      _createAutomaticSelectedMediaArrayForCriteria_cold_2(&context);
                      SelectedMediaDictionaryForGroupUsingCriteria = context;
                    }

                    goto LABEL_130;
                  }

                  if (!CFDictionaryContainsKey(SelectedMediaDictionaryForOptionInGroup, @"MediaSelectionOptionsPersistentID") && !CFDictionaryContainsKey(SelectedMediaDictionaryForOptionInGroup, @"MediaSelectionOptionsUniqueOutOfBandID"))
                  {
                    if (SelectedMediaDictionaryForOptionInGroup)
                    {
                      CFRelease(SelectedMediaDictionaryForOptionInGroup);
                      SelectedMediaDictionaryForOptionInGroup = 0;
                    }

                    goto LABEL_126;
                  }

LABEL_130:
                  if (v77)
                  {
                    CFRelease(v77);
                  }

                  if (MediaSelectionCriteria)
                  {
                    CFRelease(MediaSelectionCriteria);
                  }

                  if (SelectedMediaDictionaryForGroupUsingCriteria)
                  {
LABEL_71:
                    if (!v29)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_72;
                  }

                  if (SelectedMediaDictionaryForOptionInGroup)
                  {
                    CFArrayAppendValue(Mutable, SelectedMediaDictionaryForOptionInGroup);
                  }

LABEL_69:
                  SelectedMediaDictionaryForGroupUsingCriteria = 0;
                  if (a11)
                  {
                    *a11 = Mutable;
                    Mutable = 0;
                  }

                  goto LABEL_71;
                }
              }

              else if (!v98)
              {
                goto LABEL_108;
              }

              if (!FigCFEqual())
              {
                if (v94)
                {
                  v81 = CFDictionaryGetValue(v94, @"preferredLanguages");
                }

                else
                {
                  v81 = 0;
                }

                context = @"public.auxiliary-content";
                v117 = @"public.subtitles.forced-only";
                v77 = CFArrayCreateMutable(v102, 0, MEMORY[0x1E695E9C0]);
                if (!v77)
                {
                  MediaSelectionCriteria = 0;
                  goto LABEL_161;
                }

                if (a7 && (v83 = CFDictionaryGetValue(a7, @"preferredLanguages")) != 0)
                {
                  v84 = v83;
                  v121.length = CFArrayGetCount(v83);
                  v121.location = 0;
                  CFArrayAppendArray(v77, v84, v121);
                  MutableCopy = v91;
                }

                else
                {
                  if (!a9 && v81)
                  {
                    v122.length = CFArrayGetCount(v81);
                    v122.location = 0;
                    CFArrayAppendArray(v77, v81, v122);
                  }

                  MutableCopy = v91;
                  if (v59)
                  {
                    v85 = CFDictionaryGetValue(v59, @"fallbackPreferredLanguages");
                    if (v85)
                    {
                      v86 = v85;
                      v123.length = CFArrayGetCount(v85);
                      v123.location = 0;
                      CFArrayAppendArray(v77, v86, v123);
                    }
                  }

                  if (!a7)
                  {
                    v87 = 0;
                    v88 = 0;
                    goto LABEL_151;
                  }
                }

                v87 = CFDictionaryGetValue(a7, @"requiredMediaCharacteristics");
                v88 = CFDictionaryGetValue(a7, @"preferredMediaCharacteristics");
LABEL_151:
                if (v59 && !v88)
                {
                  v88 = CFDictionaryGetValue(v59, @"fallbackPreferredCharacteristics");
                }

                MediaSelectionCriteria = _createMediaSelectionCriteria(allocator, 0, v77, v87, v88, &context, 2);
                if (MediaSelectionCriteria)
                {
                  SelectedMediaDictionaryForGroupUsingCriteria = _createSelectedMediaDictionaryForGroupUsingCriteria(allocator, v105, MediaSelectionCriteria, 0, &SelectedMediaDictionaryForOptionInGroup, 0);
                  if (!SelectedMediaDictionaryForGroupUsingCriteria)
                  {
                    goto LABEL_121;
                  }

LABEL_162:
                  MutableCopy = v91;
                  goto LABEL_130;
                }

LABEL_161:
                SelectedMediaDictionaryForGroupUsingCriteria = 0;
                goto LABEL_162;
              }
            }

            else
            {
              v76 = 0;
            }

LABEL_108:
            v77 = 0;
            MediaSelectionCriteria = 0;
            SelectedMediaDictionaryForGroupUsingCriteria = 0;
            goto LABEL_121;
          }

LABEL_159:
          SelectedMediaDictionaryForGroupUsingCriteria = v80;
          goto LABEL_71;
        }
      }

      else
      {
        v29 = 0;
      }

      v37 = 0;
      goto LABEL_62;
    }

    v37 = 0;
    goto LABEL_62;
  }

  _createAutomaticSelectedMediaArrayForCriteria_cold_3(&context);
  MutableCopy = 0;
  v37 = 0;
  SelectedMediaDictionaryForGroupUsingCriteria = context;
LABEL_73:
  if (v114)
  {
    CFRelease(v114);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SelectedMediaDictionaryForOptionInGroup)
  {
    CFRelease(SelectedMediaDictionaryForOptionInGroup);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return SelectedMediaDictionaryForGroupUsingCriteria;
}

uint64_t FigAutomaticMediaSelectionCoalesceSelectedMediaArrays(const __CFArray *a1, CFArrayRef theArray, int a3)
{
  v3 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a1)
    {
LABEL_3:
      v6 = CFArrayGetCount(a1);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  if (Count < 1)
  {
    return 0;
  }

  v7 = 0;
  v17 = *MEMORY[0x1E695E4D0];
  v18 = Count;
  v19 = v3;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
    if (!ValueAtIndex)
    {
      break;
    }

    v9 = ValueAtIndex;
    v10 = CFGetTypeID(ValueAtIndex);
    if (v10 != CFDictionaryGetTypeID())
    {
      break;
    }

    v21 = v7;
    CFDictionaryGetValue(v9, @"MediaSelectionGroupID");
    CFDictionaryGetValue(v9, @"MediaSelectionGroupMediaType");
    Value = CFDictionaryGetValue(v9, @"AutomaticSelection");
    if (v6 >= 1)
    {
      v11 = 0;
      do
      {
        v12 = CFArrayGetValueAtIndex(a1, v11);
        if (!v12)
        {
          goto LABEL_25;
        }

        v13 = v12;
        v14 = CFGetTypeID(v12);
        if (v14 != CFDictionaryGetTypeID())
        {
          goto LABEL_25;
        }

        CFDictionaryGetValue(v13, @"MediaSelectionGroupID");
        CFDictionaryGetValue(v13, @"MediaSelectionGroupMediaType");
        v15 = FigCFEqual();
        if (a3)
        {
          if (v15 && FigCFEqual())
          {
            CFArrayRemoveValueAtIndex(a1, v11);
            --v6;
            --v11;
          }
        }

        else if (v15 && FigCFEqual())
        {
          goto LABEL_23;
        }
      }

      while (++v11 < v6);
    }

    if (Value != v17)
    {
      CFArrayAppendValue(a1, v9);
      ++v6;
    }

LABEL_23:
    ++v7;
    v3 = v19;
    if (v21 + 1 == v18)
    {
      return 0;
    }
  }

LABEL_25:

  return FigSignalErrorAtGM();
}

__CFArray *FigCopyMediaSelectionArrayAndMarkOptionsAvailableOffline(const void *a1, const void *a2, uint64_t a3)
{
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_17;
  }

  v13 = 0;
  v4 = *MEMORY[0x1E695E480];
  FigAssetCacheInspectorCreate(*MEMORY[0x1E695E480], a2, &v13);
  if (!v13)
  {
    return CFRetain(a1);
  }

  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a1) >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, ValueAtIndex);
      CFArrayAppendValue(Mutable, MutableCopy);
      CFDictionaryGetValue(MutableCopy, @"MediaSelectionGroupOptions");
      cf = 0;
      v9 = v13;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        v10(v9, ValueAtIndex, 0, &cf);
      }

      FigCFArrayApplyFunction();
      if (cf)
      {
        CFRelease(cf);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(a1));
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (!Mutable)
  {
LABEL_17:
    if (!a1)
    {
      return 0;
    }

    return CFRetain(a1);
  }

  return Mutable;
}

void figAddOfflineCharacteristic(const __CFDictionary *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"MediaSelectionGroupOptions");
      if (Value)
      {
        v5 = Value;
        v6 = *MEMORY[0x1E695E480];
        MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, Value);
        CFRetain(v5);
        CFDictionarySetValue(theDict, @"MediaSelectionGroupOptions", MutableCopy);
        OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles = _getOptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles(theDict, a1);
        if (OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles)
        {
          v9 = OptionMatchingSelectionOptionIDAndDisplaysNonForcedSubtitles;
          v17.length = CFArrayGetCount(v5);
          v17.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v17, v9);
          if (FirstIndexOfValue != -1)
          {
            v11 = FirstIndexOfValue;
            v12 = CFDictionaryGetValue(a1, @"MediaSelectionOptionsTaggedMediaCharacteristics");
            v13 = v12;
            if (!v12 || (v18.length = CFArrayGetCount(v12), v18.location = 0, !CFArrayContainsValue(v13, v18, @"com.apple.HLS.available-offline")))
            {
              v14 = CFDictionaryCreateMutableCopy(v6, 0, a1);
              v15 = FigCFArrayCreateMutableCopy();
              CFArrayAppendValue(v15, @"com.apple.HLS.available-offline");
              CFDictionarySetValue(v14, @"MediaSelectionOptionsTaggedMediaCharacteristics", v15);
              CFArraySetValueAtIndex(MutableCopy, v11, v14);
              if (v15)
              {
                CFRelease(v15);
              }

              if (v14)
              {
                CFRelease(v14);
              }
            }
          }
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        CFRelease(v5);
      }
    }
  }
}

uint64_t FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia(int a1, CFArrayRef theArray, const __CFArray *a3, const __CFArray *a4, void *a5, void *a6)
{
  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia_cold_3(&v12);
    return v12;
  }

  if (!a3 || CFArrayGetCount(a3) <= 0)
  {
    FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia_cold_2(&v12);
    return v12;
  }

  if (!a4 || CFArrayGetCount(a4) <= 0)
  {
    FigAutomaticMediaSelectionCopyMediaPresentationSettingsForSelectedMedia_cold_1(&v12);
    return v12;
  }

  FigCFArrayApplyFunction();
  if (a5)
  {
    *a5 = 0;
  }

  v10 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  return v10;
}

void famsAddMediaPresentationSettings(const __CFDictionary *a1)
{
  theDict = 0;
  v2 = 0;
  Value = CFDictionaryGetValue(a1, @"MediaSelectionGroupMediaType");
  v4 = CFDictionaryGetValue(a1, @"CustomMediaSelectionSchemeGroupID");
  if (_getMajorCharacteristicForMediaSelectionGroup(a1))
  {
    FigCFArrayApplyFunction();
  }
}

uint64_t _deferredLocaleOrMediaAccessibilityDidChangeNotificationCallback()
{
  FigSimpleMutexLock();
  if (qword_1ED4CBB60)
  {
    CFRelease(qword_1ED4CBB60);
    qword_1ED4CBB60 = 0;
  }

  v0 = FigSimpleMutexUnlock();
  if (_ensureAutomaticMediaSelectionInitialized_gSetupAutomaticMediaSelectionOnce != -1)
  {
    FigGetNotifyingObjectForSelectionCriteriaChanged_cold_1(v0);
  }

  return CMNotificationCenterPostNotification();
}

__CFDictionary *_createMediaSelectionCriteria(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void **a6, CFIndex a7)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v14 = MutableCopy;
  if (MutableCopy)
  {
    if (a3)
    {
      CFDictionarySetValue(MutableCopy, @"preferredLanguages", a3);
    }

    if (a4)
    {
      CFDictionarySetValue(v14, @"requiredMediaCharacteristics", a4);
    }

    if (a5)
    {
      CFDictionarySetValue(v14, @"preferredMediaCharacteristics", a5);
    }

    if (a6)
    {
      v15 = CFArrayCreate(a1, a6, a7, MEMORY[0x1E695E9C0]);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(v14, @"precludedMediaCharacteristics", v15);
        CFRelease(v16);
      }
    }
  }

  return v14;
}

MACaptionAppearanceDisplayType _getCaptionAppearanceDisplayType()
{
  if (FigCFDictionaryGetInt32IfPresent())
  {
    return 0;
  }

  else
  {
    return FigMediaAccessibilityCaptionsDisplayType();
  }
}

void _addToAssociatedLanguages(void *key, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, key);
  if (Value)
  {
    v5 = Value;
    v7.length = CFArrayGetCount(Value);
    v6 = a2[1];
    v7.location = 0;

    CFArrayApplyFunction(v5, v7, _addToMutableArrayIfNotPresent, v6);
  }

  else
  {
    v8 = a2[1];

    _addToMutableArrayIfNotPresent(key, v8);
  }
}

void _addToMutableArrayIfNotPresent(const void *a1, CFArrayRef theArray)
{
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  if (!CFArrayContainsValue(theArray, v5, a1))
  {

    CFArrayAppendValue(theArray, a1);
  }
}

__CFString *_getMajorCharacteristicForMediaSelectionGroup(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"MediaSelectionGroupMediaCharacteristics");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  Count = CFArrayGetCount(Value);
  v4 = @"public.visual";
  v6.location = 0;
  v6.length = Count;
  if (!CFArrayContainsValue(v2, v6, @"public.visual"))
  {
    v4 = @"public.audible";
    v7.location = 0;
    v7.length = Count;
    if (!CFArrayContainsValue(v2, v7, @"public.audible"))
    {
      v4 = @"public.legible";
      v8.location = 0;
      v8.length = Count;
      if (!CFArrayContainsValue(v2, v8, @"public.legible"))
      {
        return 0;
      }
    }
  }

  return v4;
}

void _appendOptionLanguages(const __CFDictionary *a1, const __CFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
      if (Value || (Value = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageCode")) != 0)
      {
        v5 = Value;
        v7.length = CFArrayGetCount(a2);
        v7.location = 0;
        if (!CFArrayContainsValue(a2, v7, v5))
        {

          CFArrayAppendValue(a2, v5);
        }
      }
    }
  }
}

const void *_optionLanguageMatchesLanguageList(const __CFDictionary *a1, const __CFArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageIdentifier");
  if (result || (result = CFDictionaryGetValue(a1, @"MediaSelectionOptionsUnicodeLanguageCode")) != 0)
  {
    v5 = result;
    v6.length = CFArrayGetCount(a2);
    v6.location = 0;
    return (CFArrayContainsValue(a2, v6, v5) != 0);
  }

  return result;
}

const __CFDictionary *famsMatchCustomMediaSelectionScheme(const __CFDictionary *result, void *a2)
{
  if (!a2[2])
  {
    if ((v3 = result, CFDictionaryGetValue(result, @"CustomMediaSelectionSchemeGroupMediaType"), CFDictionaryGetValue(v3, @"CustomMediaSelectionSchemeGroupID"), *a2) && (result = FigCFEqual(), result) || (result = a2[1]) != 0 && (result = FigCFEqual(), result))
    {
      a2[2] = v3;
    }
  }

  return result;
}

const __CFDictionary *famsMatchSelectedMediaOption(const __CFDictionary *result, void *a2)
{
  if (!a2[2])
  {
    if ((v3 = result, CFDictionaryGetValue(result, @"MediaSelectionGroupMediaType"), CFDictionaryGetValue(v3, @"MediaSelectionGroupID"), *a2) && (result = FigCFEqual(), result) || (result = a2[1]) != 0 && (result = FigCFEqual(), result))
    {
      a2[2] = v3;
    }
  }

  return result;
}

const __CFDictionary *famsGetMatchingMediaCharacteristic(const __CFDictionary *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    Value = CFDictionaryGetValue(result, @"CustomMediaSelectionSchemeSettingMediaCharacteristic");
    CFDictionaryGetValue(*a2, @"MediaSelectionOptionsTaggedMediaCharacteristics");
    result = FigCFArrayContainsValue();
    if (result)
    {
      *(a2 + 8) = Value;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_191()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_12_73(void *value)
{
  v4.location = 0;
  v4.length = v2;

  return CFArrayContainsValue(v1, v4, value);
}

BOOL OUTLINED_FUNCTION_13_58(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, os_log_type_t type, int a31)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_14_68(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, os_log_type_t type, int a31)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigHapticRenderPipelineCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    FigHapticRenderPipelineCreate_cold_1(&v12);
    return LODWORD(v12.value);
  }

  FigRenderPipelineGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = cf;
  if (v7 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 8) = FigSimpleMutexCreate(), CMTimeMakeWithSeconds(&v12, 0.5, 100), *(DerivedStorage + 28) = v12, v7 = FigHapticQueueCreate(a1, a3, (DerivedStorage + 64)), v8 = cf, v7))
  {
    v10 = v7;
  }

  else
  {
    v12 = *(DerivedStorage + 28);
    v10 = FigSimpleRenderPipelineCreateWithCallback(a1, figHapticRenderPipelineOutputCallback, figHapticRenderPipelineResetOutputCallback, cf, &v12, 0, (DerivedStorage + 56));
    v8 = cf;
    if (!v10)
    {
      *a4 = cf;
      return v10;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t figHapticRenderPipelineOutputCallback(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 64);

  return FigHapticQueueEnqueueSamples(v3, a2);
}

uint64_t figHapticRenderPipelineResetOutputCallback()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 64);

  return FigHapticQueueStop(v0);
}

__CFString *FigHapticRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigHapticRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t FigHapticRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigHapticRenderPipelineCopyProperty_cold_4(&v15);
    return LODWORD(v15.value);
  }

  v8 = DerivedStorage;
  if (*DerivedStorage)
  {
    FigHapticRenderPipelineCopyProperty_cold_1(&v15);
    return LODWORD(v15.value);
  }

  if (!a2)
  {
    FigHapticRenderPipelineCopyProperty_cold_3(&v15);
    return LODWORD(v15.value);
  }

  if (!a4)
  {
    FigHapticRenderPipelineCopyProperty_cold_2(&v15);
    return LODWORD(v15.value);
  }

  if (CFEqual(a2, @"Timebase"))
  {
    FigSimpleMutexLock();
    v9 = *(v8 + 2);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *a4 = v9;
    FigSimpleMutexUnlock();
    return 0;
  }

  else if (CFEqual(a2, @"PipelineLatency"))
  {
    v11 = *MEMORY[0x1E695E480];
    v15 = *(v8 + 28);
    v12 = CMTimeCopyAsDictionary(&v15, v11);
    result = 0;
    *a4 = v12;
  }

  else
  {
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v8 + 7));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {

      return v14(FigBaseObject, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t bufferQueueSource_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    bufferQueueSource_CopyProperty_cold_1(&v11);
    return v11;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"BufferQueue"))
  {
    if (!CFEqual(a2, *MEMORY[0x1E69616A0]))
    {
      return 4294954512;
    }

    v8 = *(v7 + 11);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = *(v7 + 15);
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = CFRetain(v8);
LABEL_8:
  result = 0;
  *a4 = v9;
  return result;
}

opaqueCMBufferQueue *bufferQueueSource_setupStats(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 128) = result;
  if (result)
  {
    result = *(DerivedStorage + 120);
    if (result)
    {

      return CMBufferQueueSetValidationCallback(result, bufferQueueSource_queueStats, a1);
    }
  }

  return result;
}

uint64_t bufferQueueSource_queueStats()
{
  if (*(CMBaseObjectGetDerivedStorage() + 128))
  {
    ++bufferQueueSource_queueStats_count;
  }

  return 0;
}

uint64_t bufferQueueSource_GetAudioFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    bufferQueueSource_GetAudioFormat_cold_1(&v8);
    return v8;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    v6 = *(v4 + 8);
    v7 = *(v4 + 24);
    *(a2 + 32) = *(v4 + 5);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_213@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  *(a1 + 128) = 0;
  result = *a2;
  *(a1 + 140) = *a2;
  *(a1 + 156) = a2[1].n128_u64[0];
  *(a1 + 168) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_3_160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a33, uint64_t a34)
{
  result = a33;
  *(v34 - 240) = a33;
  *(v34 - 224) = a34;
  return result;
}

uint64_t virtualDisplayProcessorRegisterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplayProcessorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualDisplayProcessorGetClassID_once, virtualDisplayProcessorRegisterType);

  return CMBaseClassGetCFTypeID();
}

CGColorRef figHUDCGColorCreateWithRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  DeviceRGB = figHUDCGColorSpaceGetRGB_sColorSpace;
  if (!figHUDCGColorSpaceGetRGB_sColorSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    figHUDCGColorSpaceGetRGB_sColorSpace = DeviceRGB;
  }

  return CGColorCreate(DeviceRGB, components);
}

CGColorRef figHUDCGColorCreateWithIndex(int a1)
{
  DeviceRGB = figHUDCGColorSpaceGetRGB_sColorSpace;
  if (!figHUDCGColorSpaceGetRGB_sColorSpace)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    figHUDCGColorSpaceGetRGB_sColorSpace = DeviceRGB;
  }

  return CGColorCreate(DeviceRGB, &gHudColors[4 * a1]);
}

uint64_t RegisterFigSampleAttachmentCollectorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleAttachmentCollectorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectorGetClassID_sRegisterFigSampleAttachmentCollectorBaseTypeOnce, RegisterFigSampleAttachmentCollectorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSampleAttachmentCollectorCreateSynchronous(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    MEMORY[0x19A8D3660](&FigSampleAttachmentCollectorGetClassID_sRegisterFigSampleAttachmentCollectorBaseTypeOnce, RegisterFigSampleAttachmentCollectorBaseType);
    v6 = CMDerivedObjectCreate();
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 72) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      v6 = 0;
      *(DerivedStorage + 8) = v8;
      *DerivedStorage = 0;
      *a4 = 0;
    }
  }

  else
  {
    FigSampleAttachmentCollectorCreateSynchronous_cold_1(&v10);
    return v10;
  }

  return v6;
}

uint64_t FigSampleAttachmentCollectorCreateAsynchronous(const __CFAllocator *a1, const void *a2, void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  refcon = 0;
  v46 = 0;
  if (!a9)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_4(&time);
LABEL_44:
    value_low = LODWORD(time.value);
    goto LABEL_36;
  }

  if (!a3)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_3(&time);
    goto LABEL_44;
  }

  if (!a5)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_2(&time);
    goto LABEL_44;
  }

  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectorGetClassID_sRegisterFigSampleAttachmentCollectorBaseTypeOnce, RegisterFigSampleAttachmentCollectorBaseType);
  v16 = CMDerivedObjectCreate();
  if (v16)
  {
    goto LABEL_39;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = FigReentrantMutexCreate();
  *(DerivedStorage + 136) = v18;
  if (!v18)
  {
    FigSampleAttachmentCollectorCreateAsynchronous_cold_1(&time);
    goto LABEL_44;
  }

  if (a2)
  {
    v19 = CFRetain(a2);
  }

  else
  {
    v19 = 0;
  }

  *(DerivedStorage + 8) = v19;
  *DerivedStorage = 0;
  *(DerivedStorage + 48) = CFRetain(a3);
  FigSimpleMutexLock();
  if (a4)
  {
    v20 = CFRetain(a4);
  }

  else
  {
    v20 = 0;
  }

  *(DerivedStorage + 208) = v20;
  value_low = collector_createMetadataBufferProvidersAndInstallTriggers(refcon);
  FigSimpleMutexUnlock();
  if (value_low)
  {
    goto LABEL_36;
  }

  v22 = CFRetain(a5);
  *(DerivedStorage + 24) = v22;
  v23 = *(a6 + 16);
  *(DerivedStorage + 84) = *a6;
  *(DerivedStorage + 100) = v23;
  v24 = *a7;
  *(DerivedStorage + 124) = *(a7 + 16);
  *(DerivedStorage + 108) = v24;
  time = *(DerivedStorage + 84);
  v43 = *a7;
  v44 = *(a7 + 16);
  v16 = FigSampleBufferConsumerCreateForBufferQueue(v22, &time.value, &v43, (DerivedStorage + 32));
  if (v16)
  {
    goto LABEL_39;
  }

  v25 = *(DerivedStorage + 32);
  v26 = refcon;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v27)
  {
LABEL_35:
    value_low = 4294954514;
    goto LABEL_36;
  }

  v16 = v27(v25, collector_handleOutputVideoQueueLowWaterTrigger, v26, DerivedStorage + 40);
  if (v16 || (v16 = FigSampleBufferProviderCreateForBufferQueue(a1, *(DerivedStorage + 48), (DerivedStorage + 64)), v16))
  {
LABEL_39:
    value_low = v16;
    goto LABEL_36;
  }

  time = **&MEMORY[0x1E6960CC0];
  CMBufferQueueInstallTrigger(a3, collector_handleInputQueueBecomesNonEmptyTrigger, refcon, 7, &time, (DerivedStorage + 56));
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (HIBYTE(v46))
  {
    v29 = 1;
  }

  else
  {
    v29 = BooleanIfPresent == 0;
  }

  if (v29)
  {
    v30 = 3;
  }

  else
  {
    v30 = 31;
  }

  v31 = FigCFDictionaryGetBooleanIfPresent();
  if (v46)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v30 = 16;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v42 = 0;
  FigActivitySchedulerCreateForNewThread(a1, v30, @"com.apple.coremedia.figsampleattachmentcollector", &v42);
  *(DerivedStorage + 16) = v42;
  LODWORD(time.value) = 0;
  v33 = CFNumberCreate(a1, kCFNumberSInt32Type, &time);
  FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(DerivedStorage + 16));
  v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v35)
  {
    v35(FigBaseObject, @"ClientPID", v33);
  }

  CFRelease(v33);
  v36 = FigActivitySchedulerGetFigBaseObject(*(DerivedStorage + 16));
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v37)
  {
    v37(v36, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
  }

  v38 = *(DerivedStorage + 16);
  v39 = refcon;
  v40 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v40)
  {
    goto LABEL_35;
  }

  value_low = v40(v38, collector_processAsynchronouslyUntilHighWaterMet, v39);
  if (!value_low)
  {
    *a9 = refcon;
    return value_low;
  }

LABEL_36:
  if (refcon)
  {
    CFRelease(refcon);
  }

  return value_low;
}

uint64_t collector_createMetadataBufferProvidersAndInstallTriggers(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 208);
  if (!v3)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
LABEL_22:
    value_low = 0;
    if (!Mutable)
    {
      return value_low;
    }

    goto LABEL_28;
  }

  Count = CFArrayGetCount(v3);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Count)
  {
    goto LABEL_22;
  }

  if (Count < 1)
  {
LABEL_9:
    v10 = *(DerivedStorage + 216);
    *(DerivedStorage + 216) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFGetAllocator(a1);
    v12 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      v13 = v12;
      if (Count < 1)
      {
LABEL_18:
        v18 = *(DerivedStorage + 224);
        *(DerivedStorage + 224) = v13;
        CFRetain(v13);
        if (v18)
        {
          CFRelease(v18);
        }

        value_low = 0;
      }

      else
      {
        v14 = 0;
        v21 = *MEMORY[0x1E6960CC0];
        v15 = *(MEMORY[0x1E6960CC0] + 16);
        while (1)
        {
          ValueAtIndex = FigCFArrayGetValueAtIndex();
          value.epoch = v15;
          triggerTokenOut = 0;
          *&value.value = v21;
          v17 = CMBufferQueueInstallTrigger(ValueAtIndex, collector_handleInputQueueBecomesNonEmptyTrigger, a1, 7, &value, &triggerTokenOut);
          if (v17)
          {
            break;
          }

          FigCFArrayAppendInt64();
          if (Count == ++v14)
          {
            goto LABEL_18;
          }
        }

        value_low = v17;
        fig_log_get_emitter();
        FigSignalErrorAtGM();
      }

      CFRelease(v13);
      if (!Mutable)
      {
        return value_low;
      }
    }

    else
    {
      collector_createMetadataBufferProvidersAndInstallTriggers_cold_1(&value);
      value_low = LODWORD(value.value);
      if (!Mutable)
      {
        return value_low;
      }
    }

LABEL_28:
    CFRelease(Mutable);
    return value_low;
  }

  v7 = 0;
  while (1)
  {
    value.value = 0;
    v8 = CFArrayGetValueAtIndex(*(DerivedStorage + 208), v7);
    v9 = FigSampleBufferProviderCreateForBufferQueue(v5, v8, &value);
    if (v9)
    {
      break;
    }

    CFArrayAppendValue(Mutable, value.value);
    if (value.value)
    {
      CFRelease(value.value);
    }

    if (Count == ++v7)
    {
      goto LABEL_9;
    }
  }

  value_low = v9;
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  if (Mutable)
  {
    goto LABEL_28;
  }

  return value_low;
}

uint64_t collector_processAsynchronouslyUntilHighWaterMet(uint64_t a1)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return collector_processAsynchronouslyUntilHighWaterMet_cold_2();
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 136))
  {
    return collector_processAsynchronouslyUntilHighWaterMet_cold_1();
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 200);
  v75 = a1;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 0;
  }

  if (!*(DerivedStorage + 80))
  {
    return FigSimpleMutexUnlock();
  }

  key = *MEMORY[0x1E6960518];
  v82 = *MEMORY[0x1E69604B0];
  v83 = *MEMORY[0x1E695E4D0];
  v76 = *MEMORY[0x1E69604F8];
  while (1)
  {
    memset(&v85, 0, sizeof(v85));
    CMBufferQueueGetDuration(&v85, *(DerivedStorage + 24));
    v95.value = v85.value;
    flags = v85.flags;
    v95.timescale = v85.timescale;
    epoch = v85.epoch;
    v94.value = *(DerivedStorage + 84);
    v6 = *(DerivedStorage + 96);
    v94.timescale = *(DerivedStorage + 92);
    v7 = *(DerivedStorage + 100);
    if ((v85.flags & 0x1F) == 3 || (v6 & 0x1F) == 3)
    {
      memset(&time1, 0, sizeof(time1));
      lhs = v85;
      rhs.value = *(DerivedStorage + 84);
      rhs.timescale = *(DerivedStorage + 92);
      rhs.flags = v6;
      rhs.epoch = v7;
      CMTimeSubtract(&time, &lhs, &rhs);
      CMTimeAbsoluteValue(&time1, &time);
      CMTimeMake(&time, 1, 1000000000);
      lhs = time1;
      if (CMTimeCompare(&lhs, &time) <= 0)
      {
        return FigSimpleMutexUnlock();
      }
    }

    time1.value = v95.value;
    time1.timescale = v95.timescale;
    time1.flags = flags;
    time1.epoch = epoch;
    time.value = v94.value;
    time.timescale = v94.timescale;
    time.flags = v6;
    time.epoch = v7;
    if ((CMTimeCompare(&time1, &time) & 0x80000000) == 0)
    {
      return FigSimpleMutexUnlock();
    }

    *(DerivedStorage + 144) = *(DerivedStorage + 232);
    v8 = *(DerivedStorage + 152);
    if (!v8 || !CFArrayGetCount(v8))
    {
      v9 = *(DerivedStorage + 344) == 0;
      v10 = *(DerivedStorage + 64);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v11)
      {
        v12 = v11(v10);
        if (v12)
        {
          v13 = v12;
          if (*(DerivedStorage + 160))
          {
            CMGetAttachment(v12, key, 0);
            if (FigCFEqual())
            {
              v14 = *(DerivedStorage + 160);
              if (v14)
              {
                CFRelease(v14);
                *(DerivedStorage + 160) = 0;
              }
            }
          }

          appended = collectorPendingSampleArray_appendSampleBuffer(*(DerivedStorage + 152), v13, v9);
          CFRelease(v13);
          if (appended)
          {
            return FigSimpleMutexUnlock();
          }
        }
      }
    }

    FirstValue = FigCFArrayGetFirstValue();
    if (!FirstValue)
    {
      return FigSimpleMutexUnlock();
    }

    v17 = FirstValue;
    if (!*(FirstValue + 58) && !*(DerivedStorage + 160) && !*(FirstValue + 56))
    {
      break;
    }

    v18 = *(DerivedStorage + 32);
    v19 = *FirstValue;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      v20(v18, v19);
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 152), 0);
LABEL_28:
    if (!*(DerivedStorage + 80))
    {
      return FigSimpleMutexUnlock();
    }
  }

  if (Count < 1)
  {
LABEL_84:
    if (CMSampleBufferGetSampleAttachmentsArray(*v17, 0))
    {
      FigCFArrayGetFirstValue();
      FigCFDictionaryGetValue();
    }

    v50 = *(DerivedStorage + 32);
    v51 = *v17;
    v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v52)
    {
      v52(v50, v51);
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 152), 0);
    if (Count >= 1)
    {
      v53 = 0;
      do
      {
        v80 = v53;
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        v78 = ValueAtIndex;
        v55 = *ValueAtIndex;
        if (*ValueAtIndex)
        {
          v56 = CFArrayGetCount(*ValueAtIndex);
        }

        else
        {
          v56 = 0;
        }

        v95 = **&MEMORY[0x1E6960C70];
        v94 = v95;
        v84 = 0;
        v57 = *(DerivedStorage + 64);
        v58 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v58)
        {
          v58(v57, &v84, &v95, &v94);
        }

        if ((v95.flags & 1) == 0)
        {
          v95 = **&MEMORY[0x1E6960C80];
        }

        if ((v94.flags & 1) == 0)
        {
          v94 = **&MEMORY[0x1E6960C88];
        }

        if (v56 >= 1)
        {
          do
          {
            v59 = v56 - 1;
            v60 = CFArrayGetValueAtIndex(v55, v56 - 1);
            v61 = v60;
            v62 = *(DerivedStorage + 144);
            if (v62 <= 1)
            {
              v92 = *(v60 + 1);
              v63 = *(v60 + 5);
              v93 = *(v60 + 4);
              v64 = *(v60 + 3);
              value = v95.value;
              v65 = v95.flags;
              timescale = v95.timescale;
              v66 = v95.epoch;
              v67 = (v63 & 0x1F) == 3 || (v95.flags & 0x1F) == 3;
              if (v67 && (memset(&time1, 0, sizeof(time1)), lhs.value = v92, lhs.timescale = v93, lhs.flags = v63, lhs.epoch = v64, rhs = v95, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) <= 0) || (time1.value = v92, time1.timescale = v93, time1.flags = v63, time1.epoch = v64, time.value = value, time.timescale = timescale, time.flags = v65, time.epoch = v66, CMTimeCompare(&time1, &time) < 1))
              {
LABEL_119:
                v73 = v56 - 2;
                if (v56 >= 2)
                {
                  do
                  {
                    CFArrayRemoveValueAtIndex(v55, v73--);
                  }

                  while (v73 != -1);
                }

                break;
              }

              v62 = *(DerivedStorage + 144);
            }

            if (v62 == -1)
            {
              v92 = *(v61 + 1);
              v68 = *(v61 + 5);
              v93 = *(v61 + 4);
              v69 = *(v61 + 3);
              value = v94.value;
              v70 = v94.flags;
              timescale = v94.timescale;
              v71 = v94.epoch;
              if ((v68 & 0x1F) == 3 || (v94.flags & 0x1F) == 3)
              {
                memset(&time1, 0, sizeof(time1));
                lhs.value = v92;
                lhs.timescale = v93;
                lhs.flags = v68;
                lhs.epoch = v69;
                rhs = v94;
                CMTimeSubtract(&time, &lhs, &rhs);
                CMTimeAbsoluteValue(&time1, &time);
                CMTimeMake(&time, 1, 1000000000);
                lhs = time1;
                if (CMTimeCompare(&lhs, &time) <= 0)
                {
                  goto LABEL_119;
                }
              }

              time1.value = v92;
              time1.timescale = v93;
              time1.flags = v68;
              time1.epoch = v69;
              time.value = value;
              time.timescale = timescale;
              time.flags = v70;
              time.epoch = v71;
              if ((CMTimeCompare(&time1, &time) & 0x80000000) == 0)
              {
                goto LABEL_119;
              }
            }

            --v56;
          }

          while ((v59 + 1) > 1);
        }

        v78[3] = 0;
        v78[4] = 0;
        *(v78 + 40) = 0;
        v53 = v80 + 1;
      }

      while (v80 + 1 != Count);
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 1;
  do
  {
    v23 = FigCFArrayGetValueAtIndex();
    v24 = FigCFArrayGetValueAtIndex();
    if (*(v23 + 40))
    {
      goto LABEL_73;
    }

    v25 = v24;
    v26 = *(DerivedStorage + 144);
    rhs = *(v17 + 8);
    for (i = *(*(CMBaseObjectGetVTable() + 16) + 24); i; i = *(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v28 = i(v25);
      if (!v28)
      {
        break;
      }

      v29 = v28;
      memset(&time1, 0, sizeof(time1));
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v28);
      NumSamples = CMSampleBufferGetNumSamples(v29);
      if (*(v23 + 8))
      {
        CMGetAttachment(v29, key, 0);
        if (!FigCFEqual())
        {
          goto LABEL_44;
        }

        v31 = *(v23 + 8);
        if (v31)
        {
          CFRelease(v31);
          *(v23 + 8) = 0;
        }
      }

      if (NumSamples || CMGetAttachment(v29, v82, 0) == v83 && CMGetAttachment(v29, v76, 0) != v83 || CMGetAttachment(v29, v82, 0) == v83 && CMGetAttachment(v29, v76, 0) == v83)
      {
        if (collectorPendingSampleArray_appendSampleBuffer(*v23, v29, 0))
        {
          CFRelease(v29);
          return FigSimpleMutexUnlock();
        }

        memset(&time1, 0, sizeof(time1));
        CMSampleBufferGetOutputPresentationTimeStamp(&time1, v29);
        switch(v26)
        {
          case -1:
            time = time1;
            lhs = rhs;
            if (CMTimeCompare(&time, &lhs) <= 0)
            {
LABEL_54:
              CFRelease(v29);
              goto LABEL_55;
            }

            break;
          case 1:
            time = time1;
            lhs = rhs;
            if ((CMTimeCompare(&time, &lhs) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            break;
          case 0:
            goto LABEL_54;
        }
      }

LABEL_44:
      CFRelease(v29);
    }

LABEL_55:
    if (!*v23 || !CFArrayGetCount(*v23))
    {
      v22 = 0;
      goto LABEL_73;
    }

    if (*(v23 + 16) != *(DerivedStorage + 168))
    {
      v22 = 0;
      *(v23 + 40) = 0;
      goto LABEL_73;
    }

    v32 = *v23;
    v33 = *(v23 + 24);
    v34 = *(DerivedStorage + 144);
    time1 = *(v17 + 8);
    time = *(v17 + 32);
    v35 = collectorPendingSampleArray_searchForPendingSampleAtPTSWithDuration(v32, &time1, &time, v33, v34);
    if (!v35)
    {
      LastValue = FigCFArrayGetLastValue();
      if (*(LastValue + 60))
      {
        goto LABEL_72;
      }

      v37 = LastValue;
      v38 = *(DerivedStorage + 144);
      if (v38 == 1)
      {
        v95.value = *(LastValue + 8);
        v39 = *(LastValue + 20);
        v95.timescale = *(LastValue + 16);
        v40 = *(LastValue + 24);
        v94.value = *(v17 + 8);
        v41 = *(v17 + 20);
        v94.timescale = *(v17 + 16);
        v42 = *(v17 + 24);
        if ((v39 & 0x1F) != 3 && (v41 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), lhs.value = v95.value, lhs.timescale = v95.timescale, lhs.flags = v39, lhs.epoch = v40, rhs.value = v94.value, rhs.timescale = v94.timescale, rhs.flags = v41, rhs.epoch = v42, v79 = v40, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, v43 = CMTimeCompare(&lhs, &time), v40 = v79, v43 > 0))
        {
          time1.value = v95.value;
          time1.timescale = v95.timescale;
          time1.flags = v39;
          time1.epoch = v40;
          time.value = v94.value;
          time.timescale = v94.timescale;
          time.flags = v41;
          time.epoch = v42;
          if (CMTimeCompare(&time1, &time) < 0)
          {
LABEL_79:
            if (*v23)
            {
              v48 = CFArrayGetCount(*v23);
              v49 = v48 - (v48 > 0);
            }

            else
            {
              v49 = 0;
            }

            v22 = 0;
            *(v23 + 24) = v49;
            goto LABEL_73;
          }
        }

        v38 = *(DerivedStorage + 144);
      }

      if (v38 != -1 || ((v95.value = *(v37 + 8), v44 = *(v37 + 20), v95.timescale = *(v37 + 16), v45 = *(v37 + 24), v94.value = *(v17 + 8), v46 = *(v17 + 20), v94.timescale = *(v17 + 16), v47 = *(v17 + 24), (v44 & 0x1F) == 3) || (v46 & 0x1F) == 3) && (memset(&time1, 0, sizeof(time1)), lhs.value = v95.value, lhs.timescale = v95.timescale, lhs.flags = v44, lhs.epoch = v45, rhs.value = v94.value, rhs.timescale = v94.timescale, rhs.flags = v46, rhs.epoch = v47, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) <= 0) || (time1.value = v95.value, time1.timescale = v95.timescale, time1.flags = v44, time1.epoch = v45, time.value = v94.value, time.timescale = v94.timescale, time.flags = v46, time.epoch = v47, CMTimeCompare(&time1, &time) < 1))
      {
LABEL_72:
        *(v23 + 40) = 1;
        goto LABEL_73;
      }

      goto LABEL_79;
    }

    *(v23 + 40) = 1;
    *(v23 + 32) = v35;
    if (!v35[59] && *(DerivedStorage + 8))
    {
      collector_updateVideoSampleAttachmentsWithMetadataSample(v75, *v17, *v35);
    }

LABEL_73:
    ++v21;
  }

  while (v21 != Count);
  if (v22)
  {
    goto LABEL_84;
  }

  return FigSimpleMutexUnlock();
}

CFTypeRef collector_CopyFormattingDesc()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v0 = @"[FSAC (invalidated)]";
  }

  else
  {
    v0 = @"[FSAC]";
  }

  return CFRetain(v0);
}

uint64_t collector_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v3)
    {
      v3(a1);
    }

    if (*(DerivedStorage + 136))
    {
      FigSimpleMutexLock();
      collector_tearDownAsyncProcessState(a1);
      FigSimpleMutexUnlock();
    }

    collector_tearDownSyncProcessState(a1);
  }

  *DerivedStorage = 1;
  return 0;
}

void collector_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  collector_Invalidate(a1);
  v3 = DerivedStorage[4];
  if (v3)
  {
    v4 = DerivedStorage[5];
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v5)
      {
        v5(v3, v4);
      }
    }
  }

  v6 = DerivedStorage[6];
  if (v6)
  {
    v7 = DerivedStorage[7];
    if (v7)
    {
      CMBufferQueueRemoveTrigger(v6, v7);
    }
  }

  v8 = DerivedStorage[26];
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        FigCFArrayGetValueAtIndex();
        FigCFArrayGetInt64AtIndex();
      }
    }
  }

  v12 = DerivedStorage[2];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[2] = 0;
  }

  v13 = DerivedStorage[27];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[27] = 0;
  }

  v14 = DerivedStorage[8];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[8] = 0;
  }

  if (DerivedStorage[17])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[17] = 0;
  }

  v15 = DerivedStorage[9];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[9] = 0;
  }

  v16 = DerivedStorage[1];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[1] = 0;
  }

  v17 = DerivedStorage[26];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[26] = 0;
  }

  v18 = DerivedStorage[6];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[6] = 0;
  }

  v19 = DerivedStorage[3];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[3] = 0;
  }

  v20 = DerivedStorage[4];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[4] = 0;
  }

  v21 = DerivedStorage[28];
  if (v21)
  {
    CFRelease(v21);
    DerivedStorage[28] = 0;
  }
}