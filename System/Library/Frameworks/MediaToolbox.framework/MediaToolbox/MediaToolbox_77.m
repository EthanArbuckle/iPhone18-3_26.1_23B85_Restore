uint64_t figAssetExportSession_isHEVCHDRPreset()
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  result = FigCFEqual();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t figAssetExportSession_computeAudioByteRate(uint64_t a1, CFDictionaryRef theDict, int a3, char a4)
{
  cf = 0;
  Value = CFDictionaryGetValue(theDict, @"audioPreset");
  v37 = 0;
  if (FigCFEqual())
  {
    v9 = 0;
LABEL_3:
    Mutable = 0;
    goto LABEL_4;
  }

  v9 = figAssetExportSession_computeAudioTrackByteRate(theDict, 0);
  if (!a3 && theDict && Value)
  {
    v12 = figAssetExportSession_isAudioMixdownRequired(Value, &cf);
    if (cf)
    {
      CFErrorGetCode(cf);
      goto LABEL_31;
    }

    if (!v12)
    {
      theArray = 0;
      v13 = *MEMORY[0x1E695E4C0];
      v39 = *MEMORY[0x1E695E4C0];
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v14 || v14(a1, 1936684398, &theArray))
      {
        goto LABEL_25;
      }

      if (!theArray)
      {
        v18 = 0;
LABEL_29:
        v9 *= v18;
        goto LABEL_30;
      }

      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
LABEL_25:
        v18 = 0;
      }

      else
      {
        v16 = Count;
        v17 = 0;
        v18 = 0;
        v19 = *MEMORY[0x1E695E480];
        v20 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
          v39 = v13;
          CMBaseObject = FigAssetTrackGetCMBaseObject(ValueAtIndex);
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v23 || v23(CMBaseObject, @"IsEnabled", v19, &v39))
          {
            break;
          }

          if (v39 == v20)
          {
            ++v18;
          }

          ++v17;
        }

        while (v16 != v17);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  if ((a4 & 1) == 0)
  {
LABEL_31:
    Mutable = 0;
    goto LABEL_32;
  }

  v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v24)
  {
    goto LABEL_3;
  }

  v24(a1, 1936684398, &v37);
  if (!v37)
  {
    goto LABEL_3;
  }

  v25 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v26 = CFArrayGetCount(v37);
  if (v26 >= 1)
  {
    v27 = v26;
    v28 = 0;
    v29 = *MEMORY[0x1E695E4C0];
    do
    {
      v30 = CFArrayGetValueAtIndex(v37, v28);
      theArray = v29;
      v31 = FigAssetTrackGetCMBaseObject(v30);
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v32)
      {
        v32(v31, @"IsEnabled", v25, &theArray);
      }

      if (figAssetExportSession_isAlternateTrack(v30) && theArray == v29)
      {
        v39 = 0;
        v34 = FigAssetTrackGetCMBaseObject(v30);
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v35)
        {
          v35(v34, @"EstimatedDataRate", v25, &v39);
        }

        SInt64 = FigCFNumberGetSInt64();
        if (v39)
        {
          CFRelease(v39);
        }

        v9 += SInt64;
      }

      ++v28;
    }

    while (v27 != v28);
  }

LABEL_32:
  if (v37)
  {
    CFRelease(v37);
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

void figAssetExportSession_FilterSPIPresets(void *value, CFSetRef *a2)
{
  if (!CFSetContainsValue(*a2, value) && !CFSetContainsValue(a2[1], value))
  {
    CFArrayAppendValue(a2[2], value);
    v4 = *a2;

    CFSetAddValue(v4, value);
  }
}

void *figAssetExportSessionProperty_AudioMix_CFDictionaryRetainCallBack(uint64_t a1, void *a2)
{
  if (FigAtomicIncrement32() == 1)
  {
    v3 = a2[1];
    if (v3)
    {
      CFRetain(v3);
    }

    v4 = a2[2];
    if (v4)
    {
      CFRetain(v4);
    }

    v5 = a2[3];
    if (v5)
    {
      CFRetain(v5);
    }
  }

  return a2;
}

void figAssetExportSessionProperty_AudioMix_CFDictionaryReleaseCallBack(const __CFAllocator *a1, void *a2)
{
  if (!FigAtomicDecrement32())
  {
    v4 = a2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[3];
    if (v6)
    {
      CFRelease(v6);
    }

    CFAllocatorDeallocate(a1, a2);
  }
}

void OUTLINED_FUNCTION_5_136()
{
  STACK[0x250] = *(v2 - 200);
  LODWORD(STACK[0x258]) = *(v2 - 192);
  LODWORD(STACK[0x25C]) = v1;
  STACK[0x260] = v0;
}

void OUTLINED_FUNCTION_6_122()
{
  STACK[0x210] = *(v2 - 112);
  LODWORD(STACK[0x218]) = *(v2 - 104);
  LODWORD(STACK[0x21C]) = v0;
  STACK[0x220] = v1;
}

void OUTLINED_FUNCTION_9_83()
{
  STACK[0x250] = *(v4 - 112);
  v6 = *(v4 - 104);
  *&STACK[0x268] = *&STACK[0x230];
  STACK[0x278] = STACK[0x240];
  LODWORD(STACK[0x258]) = v6;
  LODWORD(STACK[0x25C]) = v0;
  STACK[0x260] = v2;
  STACK[0x280] = v3;

  CFArrayAppendValue(v1, &STACK[0x250]);
}

__n128 OUTLINED_FUNCTION_11_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a67;
  *(v68 - 208) = a67;
  *(v68 - 192) = a68;
  return result;
}

void OUTLINED_FUNCTION_14_69()
{
  STACK[0x250] = *(v2 - 128);
  LODWORD(STACK[0x258]) = *(v2 - 120);
  LODWORD(STACK[0x25C]) = v0;
  STACK[0x260] = v1;
}

void OUTLINED_FUNCTION_15_59(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  CFArraySortValues(v2, v4, v1, 0);
}

uint64_t OUTLINED_FUNCTION_27_33()
{
  *&STACK[0x210] = *&STACK[0x250];
  STACK[0x220] = STACK[0x260];

  return CMTimeCompare(&STACK[0x210], &STACK[0x230]);
}

CMTime *OUTLINED_FUNCTION_32_28@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeAdd((v1 - 192), (v1 - 224), (v1 - 256));
}

void OUTLINED_FUNCTION_33_31(dispatch_once_t *a1)
{

  dispatch_once_f(a1, a1 + 1, figAssetExportSession_CreateUTTypesForDefaultPassthroughPresetOnce);
}

void OUTLINED_FUNCTION_34_30(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 1, a2, figAssetExportSession_CreateAudioOnlyPresetsOnce);
}

void OUTLINED_FUNCTION_35_26(NSObject *a1)
{

  dispatch_sync_f(a1, 0, figAssetExportSession_EmptyWait);
}

__n128 OUTLINED_FUNCTION_37_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a29, uint64_t a30)
{
  result = a29;
  *(v30 - 192) = a29;
  *(v30 - 176) = a30;
  return result;
}

__n128 OUTLINED_FUNCTION_39_25()
{
  result = *&STACK[0x250];
  *(v0 - 160) = *&STACK[0x250];
  *(v0 - 144) = STACK[0x260];
  return result;
}

__n128 OUTLINED_FUNCTION_40_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a27, uint64_t a28)
{
  result = a27;
  v28[6] = a27;
  *(v29 - 176) = a28;
  return result;
}

__n128 OUTLINED_FUNCTION_42_27()
{
  result = *(v0 - 192);
  *(v0 - 224) = result;
  *(v0 - 208) = *(v0 - 176);
  return result;
}

CMTime *OUTLINED_FUNCTION_43_24@<X0>(CMTime *a1@<X8>)
{

  return CMTimeMake(a1, 1, 1000000000);
}

CMTimeRange *OUTLINED_FUNCTION_44_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTimeRange *a14)
{
  a9 = *v14;
  a10 = *(v14 + 16);
  *(v16 - 112) = *v15;
  *(v16 - 96) = *(v15 + 16);

  return CMTimeRangeMake(&a14, &a9, (v16 - 112));
}

CMTime *OUTLINED_FUNCTION_45_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *&STACK[0x210] = *(v71 - 160);
  STACK[0x220] = *(v71 - 144);
  rhs = *&STACK[0x230];
  STACK[0x200] = STACK[0x240];

  return CMTimeAdd(&STACK[0x250], &STACK[0x210], &rhs);
}

void OUTLINED_FUNCTION_51_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v56 = *(a54 + 16);
  v57 = STACK[0x2FC];
  *(v54 - 208) = STACK[0x2F0];
  *(v54 - 204) = v57;
  *(v54 - 200) = 1936684398;

  CFArrayAppendValue(v56, (v54 - 208));
}

CMTime *OUTLINED_FUNCTION_52_21@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t rhs, int rhs_8, int rhs_12, uint64_t rhs_16)
{
  rhs = a1;
  rhs_8 = *(v63 - 104);
  rhs_12 = v61;
  rhs_16 = v62;

  return CMTimeSubtract((v63 - 224), &STACK[0x250], &rhs);
}

uint64_t OUTLINED_FUNCTION_53_20()
{
  *(v0 - 240) = *(v0 - 176);

  return CMTimeCompare((v0 - 256), (v0 - 224));
}

void OUTLINED_FUNCTION_55_22(uint64_t a1, uint64_t a2)
{
  v4 = LODWORD(STACK[0x2F4]);

  figAssetExportSession_transferTrackProperties(v2, a2, v4);
}

void OUTLINED_FUNCTION_58_14()
{
  STACK[0x258] = 0;
  STACK[0x250] = 0;
  STACK[0x260] = 0;
}

void OUTLINED_FUNCTION_61_18()
{
  STACK[0x238] = 0;
  STACK[0x230] = 0;
  STACK[0x240] = 0;
}

void OUTLINED_FUNCTION_64_14(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 1, a2, v2);
}

__n128 OUTLINED_FUNCTION_65_16()
{
  result = *(v0 + 72);
  *&STACK[0x268] = result;
  STACK[0x278] = *(v0 + 88);
  return result;
}

__n128 OUTLINED_FUNCTION_67_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, __int128 a30, uint64_t a31)
{
  *(v31 + 96) = a30;
  *(v32 - 176) = a31;
  return a27;
}

void OUTLINED_FUNCTION_69_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v25 - 192) = 0;
  *(v25 - 184) = 0;
  *(v25 - 176) = 0;
  *(v25 - 256) = a25;
}

uint64_t OUTLINED_FUNCTION_80_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{

  return FigAssetExportSessionCopyProperty(a58, a2, v58, a4);
}

void OUTLINED_FUNCTION_81_7(void *key, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CFMutableDictionaryRef theDict)
{
  v20 = *(*(v18 + 128) + 8);

  CFDictionarySetValue(theDict, key, v20);
}

void OUTLINED_FUNCTION_82_8(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_83_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(a25 + 104) = v25;

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_84_8()
{

  return CMBaseObjectGetVTable();
}

CMTimeMapping *OUTLINED_FUNCTION_85_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTimeRange *target, CMTimeRange *source, CMTimeMapping *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t targeta, uint64_t target_8, uint64_t target_16, uint64_t target_24, uint64_t target_32, uint64_t target_40, uint64_t sourcea, uint64_t source_8, uint64_t source_16, uint64_t source_24, uint64_t source_32, uint64_t source_40, uint64_t a53)
{

  return CMTimeMappingMake(&a53, &sourcea, &targeta);
}

CMTimeRange *OUTLINED_FUNCTION_86_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTime *duration, uint64_t a34, uint64_t a35, uint64_t a36, CMTimeRange *a37, CMTime *start, uint64_t a39, uint64_t a40, uint64_t durationa, uint64_t duration_8, uint64_t duration_16, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t starta)
{

  return CMTimeRangeMake(&a47, &starta, &durationa);
}

CMTime *OUTLINED_FUNCTION_87_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeSubtract(&STACK[0x230], &STACK[0x210], &rhs);
}

void OUTLINED_FUNCTION_93_6(uint64_t a1@<X8>)
{
  *(v3 + 40) = v2;
  *(v4 - 176) = v1;
  *(v4 - 144) = a1;
}

__n128 OUTLINED_FUNCTION_94_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, __n128 a63)
{
  result = a63;
  *(v64 - 240) = a63;
  *(v64 - 224) = a64;
  return result;
}

__n128 OUTLINED_FUNCTION_96_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __n128 a41, uint64_t a42)
{
  result = a41;
  *(v42 - 224) = a41;
  *(v42 - 208) = a42;
  return result;
}

__n128 OUTLINED_FUNCTION_97_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a71;
  *&STACK[0x250] = a71;
  STACK[0x260] = STACK[0x200];
  return result;
}

void OUTLINED_FUNCTION_104_5()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

__n128 OUTLINED_FUNCTION_110_2@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x230] = *a1;
  STACK[0x240] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_112_2()
{
  result = *&STACK[0x230];
  *&STACK[0x210] = *&STACK[0x230];
  STACK[0x220] = STACK[0x240];
  return result;
}

__n128 OUTLINED_FUNCTION_113_4()
{
  result = *&STACK[0x230];
  *&STACK[0x250] = *&STACK[0x230];
  STACK[0x260] = STACK[0x240];
  return result;
}

__n128 OUTLINED_FUNCTION_115_4()
{
  v2 = *(v0 + 256);
  *(v1 - 208) = *(v0 + 240);
  *(v1 - 192) = v2;
  result = *(v0 + 272);
  *(v1 - 176) = result;
  return result;
}

void *OUTLINED_FUNCTION_116_3(size_t a1)
{

  return malloc_type_malloc(a1, 0xC0040D1025EB5uLL);
}

uint64_t OUTLINED_FUNCTION_117_3()
{
  *(v0 - 240) = 0;

  return FigCFDictionaryGetBooleanIfPresent();
}

void *OUTLINED_FUNCTION_118_2(size_t a1)
{

  return malloc_type_malloc(a1, 0x6004015ECFF41uLL);
}

void *OUTLINED_FUNCTION_119_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__dst, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char __src)
{

  return memcpy(__dst, &__src, 0x60uLL);
}

void OUTLINED_FUNCTION_120_3(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = LODWORD(STACK[0x2F0]);

  figAssetExportSession_transferTrackProperties(v1, v3, v4);
}

uint64_t FigCPEOctaviaReleaseRemoteCryptor(uint64_t result)
{
  if (result)
  {
    return NeroTransportSendAsyncMessage();
  }

  return result;
}

uint64_t FigOctaviaCPECryptorCreate(const void *a1, const void *a2, void *a3, const void *a4, uint64_t a5, const void *a6, void *a7)
{
  NeroCryptor = 4294955146;
  if (a6 && a1 && a2 && a3 && a7)
  {
    MEMORY[0x19A8D3660](&FigOctaviaCPECryptorGetClassID_sRegisterFigOctaviaCPECryptorTypeOnce, RegisterFigOctaviaCPECryptorType);
    v14 = CMDerivedObjectCreate();
    if (v14)
    {
      return v14;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 4294955145;
    }

    v16 = DerivedStorage;
    v17 = FigSimpleMutexCreate();
    v16[7] = v17;
    if (!v17)
    {
      return 4294955145;
    }

    *v16 = CFRetain(a1);
    v16[3] = CFRetain(a2);
    v18 = CFRetain(a6);
    v16[8] = v18;
    v14 = FigCPEOctaviaExternalProtectionMonitorCreate(*MEMORY[0x1E695E480], a3, 0, v18, v16 + 5);
    if (v14)
    {
      return v14;
    }

    else
    {
      FigCPEExternalProtectionMonitorBeginMonitoring(v16[5]);
      NeroCryptor = FigCPEOctaviaCreateNeroCryptor(0, v16[5], a4, v16[8], v16 + 1, v16 + 2);
      if (!NeroCryptor)
      {
        *a7 = 0;
      }
    }
  }

  return NeroCryptor;
}

uint64_t FigOctaviaCPECryptorInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 48) = 1;
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    FigCPEExternalProtectionMonitorEndMonitoring(v1);
    v2 = *(DerivedStorage + 40);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 40) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 64);
  if (*(DerivedStorage + 8))
  {
    NeroTransportSendAsyncMessage();
    v4 = *(DerivedStorage + 64);
  }

  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = 0;
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 64) = 0;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigOctaviaCPECryptorFinalize()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 56))
  {
    v1 = result;
    FigOctaviaCPECryptorInvalidate();
    result = FigSimpleMutexDestroy();
    *(v1 + 56) = 0;
  }

  return result;
}

__CFString *FigOctaviaCPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigOctaviaCPECryptor: protectorParent<%@> >", *DerivedStorage);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t RegisterFigOctaviaCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t OUTLINED_FUNCTION_1_194()
{

  return FigSimpleMutexLock();
}

uint64_t FigDataChannelGroupGetTypeID()
{
  if (FigDataChannelGroupGetTypeID_sRegisterDataChannelGroupTypeOnce != -1)
  {
    FigDataChannelGroupGetTypeID_cold_1();
  }

  return FigDataChannelGroupGetTypeID_sDataChannelGroupTypeID;
}

uint64_t __FigDataChannelGroupGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigDataChannelGroupGetTypeID_sDataChannelGroupTypeID = result;
  return result;
}

void dataChannelGroup_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *dataChannelGroup_copyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigChannelDataGroup %p>: %@", a1, a1[2]);
  return Mutable;
}

uint64_t FigDataChannelGroupCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {

    return dataChannelGroup_createDataChannelGroup(a1, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigDataChannelGroupCreate_cold_1(&v5);
    return v5;
  }
}

uint64_t dataChannelGroup_createDataChannelGroup(const __CFAllocator *a1, void *a2)
{
  if (FigDataChannelGroupGetTypeID_sRegisterDataChannelGroupTypeOnce != -1)
  {
    FigDataChannelGroupGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    v5[2] = Mutable;
    if (Mutable)
    {
      result = 0;
      *a2 = v5;
    }

    else
    {
      dataChannelGroup_createDataChannelGroup_cold_2(v5, &v8);
      return v8;
    }
  }

  else
  {
    dataChannelGroup_createDataChannelGroup_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t FigDataChannelGroupCreateFromDataChannelList(const __CFAllocator *a1, CFArrayRef theArray, void *a3)
{
  cf = 0;
  if (!a3)
  {
    FigDataChannelGroupCreateFromDataChannelList_cold_2(&v12);
    return v12;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    FigDataChannelGroupCreateFromDataChannelList_cold_1(&v12);
    return v12;
  }

  v6 = dataChannelGroup_createDataChannelGroup(a1, &cf);
  v7 = cf;
  if (v6)
  {
    v9 = v6;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v8 = *(cf + 2);
    v13.length = CFArrayGetCount(theArray);
    v13.location = 0;
    CFArrayAppendArray(v8, theArray, v13);
    v9 = 0;
    *a3 = v7;
  }

  return v9;
}

uint64_t FigDataChannelGroupCreateForUseCase(const __CFAllocator *a1, int a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a3)
  {
    FigDataChannelGroupCreateForUseCase_cold_1(&v68);
    v9 = v68;
LABEL_13:
    v6 = cf;
    if (!cf)
    {
      return v9;
    }

    goto LABEL_56;
  }

  LODWORD(v4) = a2;
  v5 = dataChannelGroup_createDataChannelGroup(a1, &cf);
  if (v5)
  {
LABEL_8:
    v9 = v5;
    goto LABEL_13;
  }

  if (!v4)
  {
    v68 = xmmword_196E7BF00;
    v6 = cf;
    v12 = cf;
    v13 = 1;
    goto LABEL_54;
  }

  if (v4 <= 4)
  {
    v6 = cf;
    v4 = v4;
    v7 = MEMORY[0x1E6963150];
    while (v4)
    {
      v68 = *v7;
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v8;
      v5 = FigDataChannelGroupAddDataChannelWithFigTags(v6, &v68, 2);
      --v4;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_60;
  }

  if (v4 <= 0xC)
  {
    v67[0] = xmmword_196E7BF00;
    v6 = cf;
    v14 = FigDataChannelGroupAddDataChannelWithFigTags(cf, v67, 1);
    if (v14)
    {
      goto LABEL_55;
    }

    if (v4 <= 0xB && (((1 << v4) & 0x220) != 0 || ((1 << v4) & 0x440) != 0 || ((1 << v4) & 0x880) != 0))
    {
      *&v68 = FigTagMakeWithOSTypeValue();
      *(&v68 + 1) = v63;
    }

    else
    {
      if ((v4 & 0xB) != 8)
      {
LABEL_60:
        v9 = 0;
        *a3 = v6;
        return v9;
      }

      v68 = *MEMORY[0x1E6963148];
    }

    *&v69 = FigTagMakeWithSInt64Value();
    *(&v69 + 1) = v64;
    v29 = &v68;
LABEL_59:
    v5 = FigDataChannelGroupAddDataChannelWithFigTags(v6, v29, 2);
    if (!v5)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  switch(v4)
  {
    case 'd':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v10;
      v11 = *MEMORY[0x1E69631A0];
      v70 = *MEMORY[0x1E6963168];
      v71 = v11;
      goto LABEL_37;
    case 'e':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v42;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v43;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v44;
LABEL_37:
      v33 = MEMORY[0x1E6963178];
      goto LABEL_38;
    case 'f':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v30;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v31;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v32;
      v33 = MEMORY[0x1E6963188];
LABEL_38:
      v72 = *v33;
      v6 = cf;
      v12 = cf;
      v13 = 5;
      break;
    case 'g':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v36;
      v37 = *MEMORY[0x1E69631A0];
      v70 = *MEMORY[0x1E6963168];
      v71 = v37;
      goto LABEL_34;
    case 'h':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v21;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v22;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v23;
LABEL_34:
      v38 = MEMORY[0x1E6963178];
      goto LABEL_42;
    case 'i':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v48;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v49;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v50;
      v38 = MEMORY[0x1E6963188];
LABEL_42:
      v51 = *v38;
      v52 = MEMORY[0x1E6963190];
      goto LABEL_53;
    case 'j':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v54;
      v55 = *MEMORY[0x1E69631A0];
      v70 = *MEMORY[0x1E6963168];
      v71 = v55;
      goto LABEL_47;
    case 'k':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v39;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v40;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v41;
LABEL_47:
      v56 = MEMORY[0x1E6963178];
      goto LABEL_52;
    case 'l':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v59;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v60;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v61;
      v56 = MEMORY[0x1E6963188];
LABEL_52:
      v51 = *v56;
      v52 = MEMORY[0x1E6963198];
LABEL_53:
      v62 = *v52;
      v72 = v51;
      v73 = v62;
      v6 = cf;
      v12 = cf;
      v13 = 6;
      break;
    case 'm':
      v26 = *MEMORY[0x1E6963158];
      v68 = *MEMORY[0x1E6963150];
      v69 = v26;
      v27 = *MEMORY[0x1E6963178];
      v70 = *MEMORY[0x1E69631A0];
      v71 = v27;
      v28 = *MEMORY[0x1E6963138];
      v67[0] = *MEMORY[0x1E6963148];
      v67[1] = v28;
      v6 = cf;
      v5 = FigDataChannelGroupAddDataChannelWithFigTags(cf, &v68, 4);
      if (v5)
      {
        goto LABEL_8;
      }

      v29 = v67;
      goto LABEL_59;
    case 'n':
      v57 = *MEMORY[0x1E6963158];
      v68 = *MEMORY[0x1E6963150];
      v69 = v57;
      v25 = MEMORY[0x1E69631B0];
      goto LABEL_49;
    case 'o':
      v19 = *MEMORY[0x1E6963168];
      v68 = *MEMORY[0x1E6963150];
      v69 = v19;
      v20 = MEMORY[0x1E69631B0];
      goto LABEL_45;
    case 'p':
      v17 = *MEMORY[0x1E6963150];
      v18 = MEMORY[0x1E6963158];
      goto LABEL_28;
    case 'q':
      v34 = *MEMORY[0x1E6963150];
      v35 = MEMORY[0x1E6963158];
      goto LABEL_44;
    case 'r':
      v17 = *MEMORY[0x1E6963150];
      v18 = MEMORY[0x1E6963160];
LABEL_28:
      v24 = *v18;
      v68 = v17;
      v69 = v24;
      v25 = MEMORY[0x1E69631A0];
LABEL_49:
      v46 = *v25;
      v47 = MEMORY[0x1E6963170];
      goto LABEL_50;
    case 's':
      v34 = *MEMORY[0x1E6963150];
      v35 = MEMORY[0x1E6963168];
LABEL_44:
      v53 = *v35;
      v68 = v34;
      v69 = v53;
      v20 = MEMORY[0x1E69631A0];
LABEL_45:
      v46 = *v20;
      v47 = MEMORY[0x1E6963180];
      goto LABEL_50;
    case 't':
      v15 = *MEMORY[0x1E6960648];
      v68 = *MEMORY[0x1E6960640];
      v69 = v15;
      v16 = MEMORY[0x1E6960698];
      goto LABEL_40;
    case 'u':
      v45 = *MEMORY[0x1E6960648];
      v68 = *MEMORY[0x1E6960640];
      v69 = v45;
      v16 = MEMORY[0x1E6960688];
LABEL_40:
      v46 = *v16;
      v47 = MEMORY[0x1E6960680];
LABEL_50:
      v58 = *v47;
      v70 = v46;
      v71 = v58;
      v6 = cf;
      v12 = cf;
      v13 = 4;
      break;
    default:
      v9 = 4294951536;
      goto LABEL_13;
  }

LABEL_54:
  v14 = FigDataChannelGroupAddDataChannelWithFigTags(v12, &v68, v13);
  if (!v14)
  {
    goto LABEL_60;
  }

LABEL_55:
  v9 = v14;
  if (v6)
  {
LABEL_56:
    CFRelease(v6);
  }

  return v9;
}

uint64_t FigDataChannelGroupCopyDataChannelList(uint64_t a1, CFAllocatorRef allocator, CFArrayRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      Copy = CFArrayCreateCopy(allocator, *(a1 + 16));
      *a3 = Copy;
      if (Copy)
      {
        return 0;
      }

      else
      {
        FigDataChannelGroupCopyDataChannelList_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelGroupCopyDataChannelList_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelGroupCopyDataChannelList_cold_3(&v8);
    return v8;
  }
}

CFIndex FigDataChannelGroupGetCountOfDataChannels(uint64_t a1)
{
  if (!a1)
  {
    FigDataChannelGroupGetCountOfDataChannels_cold_1();
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  return CFArrayGetCount(v2);
}

uint64_t FigDataChannelGroupAddDataChannel(uint64_t a1, const OpaqueCMTagCollection *value)
{
  if (a1)
  {
    if (value)
    {
      v4 = *(a1 + 16);
      if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
      {
        v6 = Count;
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v7);
          if (CMTagCollectionContainsTagsOfCollection(ValueAtIndex, value))
          {
            break;
          }

          if (v6 == ++v7)
          {
            goto LABEL_8;
          }
        }

        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }

      else
      {
LABEL_8:
        CFArrayAppendValue(*(a1 + 16), value);
        return 0;
      }
    }

    else
    {
      FigDataChannelGroupAddDataChannel_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FigDataChannelGroupAddDataChannel_cold_2(&v11);
    return v11;
  }
}

const void *FigDataChannelGroupGetDataChannelByIndex(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    FigDataChannelGroupGetDataChannelByIndex_cold_2();
    return 0;
  }

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
    FigDataChannelGroupGetDataChannelByIndex_cold_1();
    return 0;
  }

  v5 = *(a1 + 16);

  return CFArrayGetValueAtIndex(v5, idx);
}

const OpaqueCMTagCollection *FigDataChannelGroupGetFirstDataChannelWithTag(uint64_t a1, uint64_t a2, CMTagValue a3)
{
  if (!a1)
  {
    FigDataChannelGroupGetFirstDataChannelWithTag_cold_1();
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v9);
    *&v12.category = a2;
    v12.value = a3;
    if (CMTagCollectionContainsTag(ValueAtIndex, v12))
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t FigDataChannelGroupRemoveDataChannelByIndex(uint64_t a1, CFIndex idx)
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
      FigDataChannelGroupRemoveDataChannelByIndex_cold_1(&v6);
      return v6;
    }

    else
    {
      CFArrayRemoveValueAtIndex(*(a1 + 16), idx);
      return 0;
    }
  }

  else
  {
    FigDataChannelGroupRemoveDataChannelByIndex_cold_2(&v7);
    return v7;
  }
}

uint64_t channelgroup_copyAsDictionary(uint64_t a1, CFAllocatorRef allocator, CFDictionaryRef *a3)
{
  cf = 0;
  if (a1)
  {
    if (a3)
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      cf = Mutable;
      if (Mutable)
      {
        v7 = Mutable;
        v8 = *(a1 + 16);
        if (v8 && (Count = CFArrayGetCount(v8), Count >= 1))
        {
          v10 = Count;
          v11 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v11);
            v13 = MEMORY[0x19A8D3280](ValueAtIndex, allocator);
            if (!v13)
            {
              break;
            }

            v14 = v13;
            CFArrayAppendValue(v7, v13);
            CFRelease(v14);
            if (v10 == ++v11)
            {
              goto LABEL_9;
            }
          }

          channelgroup_copyAsDictionary_cold_1(&v19);
        }

        else
        {
LABEL_9:
          v15 = CFDictionaryCreate(allocator, kFigDataChannelGroupKey_ChannelList, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v15)
          {
            v16 = 0;
            *a3 = v15;
            goto LABEL_11;
          }

          channelgroup_copyAsDictionary_cold_2(&v19);
        }
      }

      else
      {
        channelgroup_copyAsDictionary_cold_3(&v19);
      }
    }

    else
    {
      channelgroup_copyAsDictionary_cold_4(&v19);
    }
  }

  else
  {
    channelgroup_copyAsDictionary_cold_5(&v19);
  }

  v16 = v19;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t FigDataChannelGroupsArrayCopyAsDictionary(const __CFArray *a1, CFAllocatorRef allocator, CFDictionaryRef *a3)
{
  values = 0;
  if (!a1)
  {
    FigDataChannelGroupsArrayCopyAsDictionary_cold_4(&value);
LABEL_18:
    v14 = value;
    goto LABEL_10;
  }

  if (!a3)
  {
    FigDataChannelGroupsArrayCopyAsDictionary_cold_3(&value);
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  values = Mutable;
  if (!Mutable)
  {
    FigDataChannelGroupsArrayCopyAsDictionary_cold_2(&value);
    goto LABEL_18;
  }

  v7 = Mutable;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_8:
    v13 = CFDictionaryCreate(allocator, &kFigDataChannelGroupKey_GroupsList, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v13)
    {
      v14 = 0;
      *a3 = v13;
      goto LABEL_10;
    }

    FigDataChannelGroupsArrayCopyAsDictionary_cold_1(&value);
    goto LABEL_18;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    v12 = channelgroup_copyAsDictionary(ValueAtIndex, allocator, &value);
    if (v12)
    {
      break;
    }

    CFArrayAppendValue(v7, value);
    CFRelease(value);
    if (v9 == ++v10)
    {
      goto LABEL_8;
    }
  }

  v14 = v12;
LABEL_10:
  if (values)
  {
    CFRelease(values);
  }

  return v14;
}

uint64_t FigDataChannelGroupsArrayCreateFromDictionary(const __CFAllocator *a1, CFDictionaryRef theDict, __CFArray **a3)
{
  if (!theDict)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_5(&value);
    return value;
  }

  if (!a3)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_4(&value);
    return value;
  }

  v5 = CFDictionaryGetValue(theDict, @"DataChannelGroupsList");
  if (!v5)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_3(&value);
    return value;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count <= 0)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_2(&value);
    return value;
  }

  v8 = Count;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_1(&value);
    return value;
  }

  v10 = Mutable;
  v11 = 0;
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
    v13 = channelgroup_createFromDictionary(a1, ValueAtIndex, &value);
    if (v13)
    {
      break;
    }

    CFArrayAppendValue(v10, value);
    CFRelease(value);
    if (v8 == ++v11)
    {
      v14 = 0;
      *a3 = v10;
      return v14;
    }
  }

  v14 = v13;
  CFRelease(v10);
  return v14;
}

uint64_t FigNetworkInterfaceReporterGetPredictedWirelessThroughput()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v0 = objc_autoreleasePoolPush();
  FigGetUpTimeNanoseconds();
  v1 = objc_alloc_init(getWRM_iRATInterfaceClass[0]());
  if (v1)
  {
    v2 = dispatch_semaphore_create(0);
    if (v2)
    {
      v3 = dispatch_queue_create("com.apple.coremedia.wirelesscoex", 0);
      if (v3)
      {
        FigGetUpTimeNanoseconds();
        [v1 registerClient:34 queue:v3];
        FigGetUpTimeNanoseconds();
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __FigNetworkInterfaceReporterGetPredictedWirelessThroughput_block_invoke;
        v7[3] = &unk_1E74984B8;
        v7[4] = v2;
        v7[5] = &v8;
        [v1 getMLPredictedThroughput:v7 options:0];
        v4 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v2, v4);
        FigGetUpTimeNanoseconds();
        [v1 unregisterClient];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  objc_autoreleasePoolPop(v0);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_196862ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigNetworkInterfaceReporterCopyPhysicalStatistics_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 320) + 32);
  if (v1)
  {
    CFDictionarySetValue(*(a1 + 40), @"freq", v1);
  }
}

void figNetworkMonitorInterfaceIRATEnsureService()
{
  if (qword_1ED4CBBB8 != -1)
  {
    figNetworkMonitorInterfaceIRATEnsureService_cold_1();
  }

  v1 = qword_1ED4CBBA8;
  if (qword_1ED4CBBA8)
  {
    v2 = qword_1ED4CBBB0 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {

    dispatch_async(v1, &__block_literal_global_111_0);
  }
}

uint64_t figNetworkinterfaceMonitorInitOnce()
{
  qword_1ED4CBBA8 = dispatch_queue_create("com.apple.coremedia.FigNetworkInterfaceMonitor", 0);
  qword_1ED4CBBC0 = dispatch_queue_create("com.apple.coremedia.FigNetworkInterfaceMonitor.setup", 0);
  qword_1ED4CBBD0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = FigSimpleMutexCreate();
  qword_1ED4CBBC8 = result;
  return result;
}

Class initWRM_iRATInterface()
{
  if (WirelessCoexLibrary_sOnce != -1)
  {
    initWRM_iRATInterface_cold_1();
  }

  result = objc_getClass("WRM_iRATInterface");
  classWRM_iRATInterface = result;
  getWRM_iRATInterfaceClass[0] = WRM_iRATInterfaceFunction;
  return result;
}

void *__WirelessCoexLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessCoex.framework/WirelessCoex", 2);
  WirelessCoexLibrary_sLib = result;
  return result;
}

const __CFNumber *figNetworkInterfaceMonitorCopyWifiFrequency(const __CFNumber *result, const __CFNumber **a2)
{
  if (result)
  {
    result = off_1ED4CBC28();
    if (result)
    {
      v4 = 0;
      CFNumberGetValue(result, kCFNumberCFIndexType, &v4);
      result = off_1ED4CBC30(v4);
      if (result == 1)
      {
        v3 = 2;
      }

      else
      {
        if (result != 2)
        {
          return result;
        }

        v3 = 5;
      }

      valuePtr = v3;
      result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      *a2 = result;
    }
  }

  return result;
}

void __figNetworkInterfaceMonitorWiFiLQMCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  Value = CFDictionaryGetValue(*(a1 + 40), @"SCALED_RSSI");
  v4 = CFDictionaryGetValue(*(a1 + 40), @"SCALED_LQM");
  v5 = CFDictionaryGetValue(*(a1 + 40), @"CCA");
  v6 = CFDictionaryGetValue(*(a1 + 40), @"NOISE");
  v7 = CFDictionaryGetValue(*(a1 + 40), @"SNR");
  if (Value)
  {
    valuePtr = 0.0;
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    v8 = valuePtr;
    *(v2 + 40) = v8;
  }

  if (v4)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr);
    v9 = valuePtr;
    *(v2 + 52) = v9;
  }

  if (v5)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
    v10 = valuePtr;
    *(v2 + 44) = v10;
  }

  if (v6)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v6, kCFNumberDoubleType, &valuePtr);
    v11 = valuePtr;
    *(v2 + 48) = v11;
  }

  if (v7)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
    *(v2 + 56) = LODWORD(valuePtr);
  }

  CFRelease(*(a1 + 40));
}

void __figNetworkInterfaceMonitorBssidChangedCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  v3 = v5;
  if (v5)
  {
    CFRelease(v3);
    *v4 = 0;
  }

  figNetworkInterfaceMonitorCopyWifiFrequency(*(a1 + 40), v4);
  v6 = *(a1 + 40);

  CFRelease(v6);
}

void __figNetworkMonitorInterfaceIRATEnsureService_block_invoke()
{
  if ((_MergedGlobals_141 & 1) == 0)
  {
    figNetworkMonitorInterfaceIRATInit();
  }
}

void __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke()
{
  v0 = qword_1ED4CBBE0;
  if ((*qword_1ED4CBBE0)-- == 1)
  {
    v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CBBA8);
    *(v0 + 8) = v2;
    v3 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v4 = *(v0 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke_2;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = v0;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(*(v0 + 8));
  }
}

void __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1 <= 0)
  {
    if (*(v1 + 24))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke_3;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v1;
      dispatch_async(qword_1ED4CBBC0, block);
      v1 = *(a1 + 32);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_release(v3);
      *(*(a1 + 32) + 8) = 0;
    }
  }
}

void fni_releasePeriodicBandwidthMonitor()
{
  v0 = qword_1ED4CBC40;
  if ((*qword_1ED4CBC40)-- == 1)
  {
    v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CBC48);
    v0[1] = v2;
    v3 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_set_context(v0[1], v0);
    dispatch_source_set_event_handler_f(v0[1], periodicBandwidthMonitorTimer);
    v4 = v0[1];

    dispatch_resume(v4);
  }
}

void periodicBandwidthMonitorTimer(uint64_t a1)
{
  if (*a1 <= 0)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      dispatch_suspend(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 8) = 0;
    }
  }
}

void figPeriodicBandwidthMonitorTimerCallback()
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v1 = *(qword_1ED4CBC40 + 24);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v2)
  {
    block = 0;
    v15 = 0;
    v16 = 5000000000;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 9;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v3 = v2(v1, UpTimeNanoseconds, &block, v9);
    v4 = (v3 + 17738) < 2 || v3 == 0;
    if (v4 && (_MergedGlobals_141 & 1) == 0)
    {
      if (qword_1ED4CBBA8)
      {
        if (qword_1ED4CBBE0)
        {
          v5 = *&v9[0] / 1000;
          v6 = v10 / 0xF4240;
          v7 = v11 / 0xF4240;
          v8 = v11 / 0xF4240 * (*&v9[0] / 8000);
          figNetworkMonitorInterfaceIRATEnsureService();
          block = MEMORY[0x1E69E9820];
          v15 = 3221225472;
          v16 = __figNetworkInterfaceReporterReportPeriodicDownloadActivity_block_invoke;
          *&v17 = &__block_descriptor_64_e5_v8__0l;
          *(&v17 + 1) = v5;
          *&v18 = v6;
          *(&v18 + 1) = v8;
          *&v19 = v7;
          dispatch_async(qword_1ED4CBBA8, &block);
        }

        else
        {
          figPeriodicBandwidthMonitorTimerCallback_cold_1();
        }
      }

      else
      {
        figPeriodicBandwidthMonitorTimerCallback_cold_2();
      }
    }
  }
}

xpc_object_t OUTLINED_FUNCTION_5_137()
{

  return xpc_dictionary_create(0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_6_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return figNetworkInterfaceAddToCountValue(v8, v9, a3, v7, v6, a6);
}

uint64_t OUTLINED_FUNCTION_7_106()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_8_90(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a11 = v15;
  a12 = v14;
  a13 = v17;
  a14 = v16;

  dispatch_async(a1, &a9);
}

uint64_t OUTLINED_FUNCTION_9_84()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_10_79()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_15_60(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  CFDictionarySetValue(v10, a2, value);
}

uint64_t OUTLINED_FUNCTION_16_56(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  return CFDictionaryGetValueIfPresent(v10, a2, &value);
}

CFComparisonResult OUTLINED_FUNCTION_17_50(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 1uLL);
}

uint64_t FigSessionDataParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSessionDataParserStartServer_block_invoke;
  block[3] = &unk_1E74985A0;
  block[4] = &v3;
  if (FigSessionDataParserStartServer_sFigSessionDataParserServerSetupOnce != -1)
  {
    dispatch_once(&FigSessionDataParserStartServer_sFigSessionDataParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigSessionDataParserStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFString *FigMediaCharacteristicsGetMajorIntrinsicCharacteristicForMediaType(int a1)
{
  result = 0;
  if (a1 > 1936684397)
  {
    if (a1 == 1936684398)
    {
      v3 = kFigStdAssetMediaCharacteristic_Audible;
      return *v3;
    }

    if (a1 != 1952807028)
    {
      if (a1 != 1986618469)
      {
        return result;
      }

      v3 = kFigStdAssetMediaCharacteristic_Visual;
      return *v3;
    }

LABEL_8:
    v3 = kFigStdAssetMediaCharacteristic_Legible;
    return *v3;
  }

  if (a1 == 1668047728 || a1 == 1935832172)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t FigMediaCharacteristicsCopyMediaCharacteristicsForMediaType(const __CFAllocator *a1, int a2, __CFArray **a3)
{
  if (!a3)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    if (a2 <= 1936684397)
    {
      if (a2 != 1668047728 && a2 != 1935832172)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a2 == 1986618469)
      {
        v7 = kFigStdAssetMediaCharacteristic_Visual;
        goto LABEL_13;
      }

      if (a2 != 1952807028)
      {
        if (a2 == 1936684398)
        {
          v7 = kFigStdAssetMediaCharacteristic_Audible;
LABEL_13:
          if (*v7)
          {
            CFArrayAppendValue(Mutable, *v7);
          }

          if (a2 == 1668047728 || a2 == 1952807028 || a2 == 1935832172)
          {
            CFArrayAppendValue(v6, @"public.visual");
            if (a2 == 1668047728)
            {
              CFArrayAppendValue(v6, @"public.accessibility.transcribes-spoken-dialog");
              CFArrayAppendValue(v6, @"public.accessibility.describes-music-and-sound");
            }
          }
        }

LABEL_20:
        result = 0;
        *a3 = v6;
        return result;
      }
    }

    v7 = kFigStdAssetMediaCharacteristic_Legible;
    goto LABEL_13;
  }

  FigMediaCharacteristicsCopyMediaCharacteristicsForMediaType_cold_1(&v9);
  return v9;
}

uint64_t FigMediaCharacteristicsCreateMediaCharacteristicsForMediaOption(const __CFAllocator *a1, const __CFArray *a2, const __CFDictionary *a3, __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    if (a2)
    {
      v15.length = CFArrayGetCount(a2);
      v15.location = 0;
      CFArrayAppendArray(v8, a2, v15);
    }

    Value = CFDictionaryGetValue(a3, @"MediaSelectionOptionsTaggedMediaCharacteristics");
    if (Value)
    {
      v10 = Value;
      v16.length = CFArrayGetCount(Value);
      v16.location = 0;
      CFArrayAppendArray(v8, v10, v16);
    }

    v11 = CFDictionaryGetValue(a3, @"MediaSelectionOptionsIsAuxiliaryContent");
    if (v11 && CFBooleanGetValue(v11))
    {
      v12 = kFigStdAssetMediaCharacteristic_TaggedIsAuxiliaryContent;
    }

    else
    {
      v12 = kFigStdAssetMediaCharacteristic_TaggedIsMainProgramContent;
    }

    CFArrayAppendValue(v8, *v12);
    CFDictionaryGetValue(a3, @"MediaSelectionOptionsMediaType");
    FigCFStringGetOSTypeValue();
    result = 0;
    *a4 = v8;
  }

  else
  {
    FigMediaCharacteristicsCreateMediaCharacteristicsForMediaOption_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForTrackReader(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v8 = 0;
  if (!a3)
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForTrackReader_cold_1(&v9);
    return v9;
  }

  v4 = _produceUserDataAssetTrackProperty(a2, &v8);
  v5 = v8;
  if (!v4 && v8)
  {
    v4 = _createTaggedMediaCharacteristicsFromUserData(v8, &v7);
LABEL_6:
    CFRelease(v5);
    goto LABEL_7;
  }

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  *a3 = v7;
  return v4;
}

uint64_t _createTaggedMediaCharacteristicsFromUserData(const __CFArray *a1, __CFArray **a2)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    v15 = a2;
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; v5 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
        if (!CFEqual(@"udta", Value) && !CFEqual(@"uiso", Value))
        {
          continue;
        }

        v9 = CFDictionaryGetValue(ValueAtIndex, @"key");
        if (!v9)
        {
          continue;
        }

        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 == CFStringGetTypeID())
        {
          if (CFEqual(v10, @"tagc"))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v12 = CFGetTypeID(v10);
          if (v12 != CFNumberGetTypeID() || (v18 = 0, !FigMetadataStringKeyToOSTypeKeyWithKeySpace(Value, @"tagc", &v18)) || (valuePtr = 0, CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr)) && v18 == valuePtr)
          {
LABEL_14:
            v13 = CFDictionaryGetValue(ValueAtIndex, @"value");
            if (v13)
            {
              CFArrayAppendValue(theArray, v13);
            }
          }
        }
      }
    }

    if (v15)
    {
      result = 0;
      *v15 = theArray;
    }

    else
    {
      CFRelease(theArray);
      return 0;
    }
  }

  else
  {
    _createTaggedMediaCharacteristicsFromUserData_cold_1(&v19);
    return v19;
  }

  return result;
}

uint64_t FigTrackReaderGetMediaType(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, 0, a2);
}

uint64_t FigTrackReaderGetIsExcludedFromAutoSelection(uint64_t a1, BOOL *a2)
{
  cf = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(FigBaseObject, @"TrackExcludeFromAutoSelection", *MEMORY[0x1E695E480], &cf);
    v5 = cf;
    *a2 = cf == *MEMORY[0x1E695E4D0];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    *a2 = *MEMORY[0x1E695E4D0] == 0;
  }

  return 0;
}

uint64_t FigTrackReaderCopyFormatDescriptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(FigBaseObject, @"TrackFormatDescriptionArray", a2, a3);
}

uint64_t FigTrackInformationCopyUserData(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  TrackMetadataItemArray = MovieTrackGetTrackMetadataItemArray(a1, @"com.apple.quicktime.udta");
  v6 = MovieTrackGetTrackMetadataItemArray(a1, @"org.mp4ra");
  v7 = v6;
  if (TrackMetadataItemArray)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (TrackMetadataItemArray)
    {
      v6 = TrackMetadataItemArray;
    }

    else if (!v6)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v12 = CFRetain(v6);
LABEL_12:
    result = 0;
    *a3 = v12;
    return result;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v10 = MutableCopy;
    v14.length = CFArrayGetCount(v7);
    v14.location = 0;
    CFArrayAppendArray(v10, v7, v14);
    result = 0;
    *a3 = v10;
  }

  else
  {
    FigTrackInformationCopyUserData_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (_getAPACAudioCharacteristicToTaggedMediaCharacteristicMapping_sOnceToken != -1)
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription_cold_1();
  }

  ArrayValue = FigCFDictionaryGetArrayValue();
  if (ArrayValue)
  {
    Count = CFArrayGetCount(ArrayValue);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      Mutable = 0;
      v9 = *MEMORY[0x1E695E480];
      v10 = MEMORY[0x1E695E9C0];
      while (1)
      {
        FigCFArrayGetValueAtIndex();
        StringValue = FigCFDictionaryGetStringValue();
        if (StringValue)
        {
          v12 = StringValue;
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v9, 0, v10);
            if (!Mutable)
            {
              FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription_cold_2(&v14);
              return v14;
            }
          }

          CFArrayAppendValue(Mutable, v12);
        }

        if (v6 == ++v7)
        {
          goto LABEL_13;
        }
      }
    }
  }

  Mutable = 0;
LABEL_13:
  result = 0;
  *a3 = Mutable;
  return result;
}

uint64_t _copyAllMetadataItems(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  value = 0;
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6 || (v7 = v6(a2, 0, 0)) == 0)
  {
    Mutable = 0;
    goto LABEL_25;
  }

  v8 = v7;
  Mutable = CFArrayCreateMutable(a1, v7, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    _copyAllMetadataItems_cold_1(&v22);
    v18 = v22;
    goto LABEL_26;
  }

  if (v8 < 1)
  {
    goto LABEL_25;
  }

  for (i = 0; i != v8; ++i)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11(a2, 0, 0, i, a1, &value, &cf);
    v13 = cf;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = value == 0;
    }

    if (!v14 && cf != 0)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, cf);
      if (!MutableCopy)
      {
        break;
      }

      v17 = MutableCopy;
      CFDictionaryAddValue(MutableCopy, @"value", value);
      CFArrayAppendValue(Mutable, v17);
      CFRelease(v17);
LABEL_16:
      v13 = cf;
    }

    if (v13)
    {
      CFRelease(v13);
      cf = 0;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    v18 = 0;
    cf = 0;
    goto LABEL_26;
  }

LABEL_25:
  v18 = 0;
LABEL_26:
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v18 && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  *a3 = Mutable;
  return v18;
}

CFDictionaryRef _createAPACCharacteristicToTaggedMediaCharacteristicMappingOnce()
{
  keys[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6962868];
  keys[0] = *MEMORY[0x1E6962860];
  keys[1] = v0;
  v1 = *MEMORY[0x1E6962880];
  keys[2] = *MEMORY[0x1E6962888];
  keys[3] = v1;
  v2 = *MEMORY[0x1E6962890];
  keys[4] = *MEMORY[0x1E6962870];
  keys[5] = v2;
  keys[6] = *MEMORY[0x1E6962878];
  values[0] = @"public.accessibility.describes-video";
  values[1] = @"public.auxiliary-content";
  values[2] = @"public.original-content";
  values[3] = @"public.translation";
  values[4] = @"public.translation.dubbed";
  values[5] = @"public.translation.voice-over";
  values[6] = @"public.accessibility.enhances-speech-intelligibility";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sAPACAudioCharacteristicToTaggedMediaCharacteristicMapping = result;
  return result;
}

uint64_t FigClosedCaptionStringConformerNew(void *a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004045F868BCuLL);
    if (v2)
    {
      v3 = v2;
      v2[2] = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
      goto LABEL_4;
    }

    FigClosedCaptionStringConformerNew_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    FigClosedCaptionStringConformerNew_cold_2(&v7);
    v4 = v7;
  }

  if (v4)
  {
    keyManager_releaseCallbackContext(0);
    return v4;
  }

  v3 = 0;
LABEL_4:
  v4 = 0;
  *a1 = v3;
  return v4;
}

const __CFArray *FigClosedCaptionStringConformerPushCommand(uint64_t a1, int a2, const __CFDictionary *a3, int a4, char *a5, double a6, double a7)
{
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  if (!a1)
  {
    FigClosedCaptionStringConformerPushCommand_cold_1(value);
    v15 = 0;
    v14 = LODWORD(value[0]);
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  FigCaptionLayoutGetMAXSettingsForPreferringContentAsAuthored(value);
  v81 = v68;
  v82 = v69;
  v83 = v70;
  v77 = v64;
  v78 = v65;
  v79 = v66;
  v80 = v67;
  v73 = v60;
  v74 = v61;
  v75 = v62;
  v76 = v63;
  v71 = *value;
  v72 = v59;
  if (a2 == 1)
  {
    v49 = a5;
    v17 = ccstringconformer_copyFontDescriptorAttributeForMediaAccessibilityFontStyle(*MEMORY[0x1E6965808]);
    if (!a4)
    {
      FigCaptionLayoutCopyMAXCaptionSystemSettings(&v71);
    }

    v19 = *a1;
    v18 = *(a1 + 8);
    v84 = 0;
    *value = *MEMORY[0x1E695F060];
    valuePtr[0] = 0;
    v20 = FigCaptionLayoutCopyEffectiveFontNamePlusInfoAndCreateElementGeometryArrays(v17, 1, v18, v19, 0, 0, 0, 1, 0.0, 0.0, a6, a7, &v71, 0, valuePtr, 0, 0, 0, 0, &v84, value, 0);
    CFRelease(v20);
    allocator = *MEMORY[0x1E695E480];
    theArray = v84;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v21 = 0;
        v47 = *MEMORY[0x1E6960780];
        v48 = *MEMORY[0x1E6960790];
        v22 = *MEMORY[0x1E69607A0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
          v24 = ValueAtIndex;
          if ((ValueAtIndex[18] & 0xFFFFFFFD) == 1)
          {
            v54 = v21;
            v25 = ValueAtIndex[14];
            v26 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            if (CFArrayGetCount(v25) >= 1)
            {
              v27 = 0;
              v55 = v25;
              do
              {
                v56 = v27;
                v28 = CFArrayGetValueAtIndex(v25, v27);
                v29 = CFGetTypeID(v28);
                if (v29 == CFArrayGetTypeID() && CFArrayGetCount(v28) >= 1)
                {
                  v30 = 0;
                  do
                  {
                    value[0] = 0;
                    v31 = CFArrayGetValueAtIndex(v28, v30);
                    v32 = CFGetTypeID(v31);
                    if (v32 == CFDictionaryGetTypeID())
                    {
                      v33 = CFDictionaryGetValue(v31, @"S");
                      v34 = CFGetTypeID(v33);
                      if (v34 == CFAttributedStringGetTypeID())
                      {
                        Length = CFAttributedStringGetLength(v33);
                        valuePtr[0] = 0;
                        v36 = CFDictionaryGetValue(v31, @"OffsetXKey");
                        if (v36)
                        {
                          v37 = v36;
                          v38 = CFGetTypeID(v36);
                          if (v38 == CFNumberGetTypeID())
                          {
                            CFNumberGetValue(v37, kCFNumberCGFloatType, valuePtr);
                            v39 = CTLineCreateWithAttributedString(v33);
                            FigCaptionLayoutGetLineWidthWithRange(v39, 0, Length);
                            if (v39)
                            {
                              CFRelease(v39);
                            }

                            if (ccstringConformer_getFontSizeForAnnotatedElementAttributedString(v33) > 0.0)
                            {
                              ConformedAttributedStringFromCommandDataStringAndSuggestedAlignment = ccstringconformer_c608_createConformedAttributedStringFromCommandDataStringAndSuggestedAlignment(v33, v22, a4, value);
                              v41 = value[0];
                              if (!ConformedAttributedStringFromCommandDataStringAndSuggestedAlignment)
                              {
                                CFArrayAppendValue(v26, value[0]);
                              }

                              if (v41)
                              {
                                CFRelease(v41);
                              }
                            }
                          }
                        }
                      }
                    }

                    ++v30;
                  }

                  while (v30 < CFArrayGetCount(v28));
                }

                v25 = v55;
                v27 = v56 + 1;
              }

              while (v56 + 1 < CFArrayGetCount(v55));
            }

            v86.length = CFArrayGetCount(v26);
            v86.location = 0;
            CFArrayAppendArray(Mutable, v26, v86);
            CFRelease(v26);
            v21 = v54;
          }

          else
          {
            value[0] = 0;
            JoinedStringFromElementWithSeparator = FigCaptionLayoutCreateJoinedStringFromElementWithSeparator(ValueAtIndex[14], @" ");
            v43 = FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(v24[13]);
            if (v43 == 4)
            {
              v44 = v47;
            }

            else
            {
              v44 = v48;
              if (v43 != 2)
              {
                v44 = 0;
                if (v43 == 1)
                {
                  v44 = v22;
                }
              }
            }

            if (ccstringConformer_getFontSizeForAnnotatedElementAttributedString(JoinedStringFromElementWithSeparator) > 0.0)
            {
              ccstringconformer_c608_createConformedAttributedStringFromCommandDataStringAndSuggestedAlignment(JoinedStringFromElementWithSeparator, v44, a4, value);
            }

            if (JoinedStringFromElementWithSeparator)
            {
              CFRelease(JoinedStringFromElementWithSeparator);
            }

            v45 = value[0];
            if (value[0])
            {
              CFArrayAppendValue(Mutable, value[0]);
              CFRelease(v45);
            }
          }

          ++v21;
        }

        while (v21 != Count);
      }
    }

    FigCaptionLayoutReleaseCaptionElementArray(v84);
    v46 = *(a1 + 16);
    if (v46)
    {
      CFRelease(v46);
    }

    *(a1 + 16) = Mutable;
    a5 = v49;
    if (v17)
    {
      CFRelease(v17);
    }

    v14 = 0;
    v15 = 1;
    if (v49)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a2 == 7)
  {
    v13 = CFDictionaryGetValue(a3, @"C");
    v14 = *(a1 + 8);
    *(a1 + 8) = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    CFRetain(v13);
    goto LABEL_9;
  }

  if (a2 != 6)
  {
    goto LABEL_11;
  }

  v13 = CFDictionaryGetValue(a3, @"W");
  v14 = *a1;
  *a1 = v13;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!v14)
  {
    goto LABEL_12;
  }

  CFRelease(v14);
LABEL_11:
  v14 = 0;
LABEL_12:
  v15 = 0;
  if (a5)
  {
LABEL_13:
    *a5 = v15;
  }

LABEL_14:
  FigCaptionLayoutClearMAXCaptionSettings(&v71);
  return v14;
}

CFTypeRef ccstringconformer_copyFontDescriptorAttributeForMediaAccessibilityFontStyle(const __CFString *a1)
{
  v2 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainDefault, 0, kMACaptionAppearanceFontStyleMonospacedWithSerif);
  v3 = CTFontDescriptorCopyAttribute(v2, a1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t FigNetworkPredictionArbiterCreate(const void *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    FigNetworkPredictionArbiterCreate_cold_2(v19);
    return v19[0];
  }

  FigNetworkPredictorGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = a2 ? CFRetain(a2) : 0;
  *DerivedStorage = v10;
  v8 = FigNetworkHistoryCopySharedPredictor();
  if (v8)
  {
    return v8;
  }

  FigNetworkHistoryGetGlobal();
  v8 = FigNetworkHistoryCopySharedPredictor();
  if (v8)
  {
    return v8;
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"NetworkPredictorCreateOption_StoreBag");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 48) = Value;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = CMBaseObjectGetDerivedStorage();
    if (!CelestialIs1GBAudioAccessory() || !FigRCLGetNumberWithDefault(*(v12 + 48), @"disableMLOn1GBAudioAccessory"))
    {
      v8 = FigMLBandwidthPredictorCreate(a1, (DerivedStorage + 40));
      if (v8)
      {
        return v8;
      }

      v13 = *(DerivedStorage + 40);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        return 4294954514;
      }

      v8 = v14(v13, *MEMORY[0x1E6962A18], a2);
      if (v8)
      {
        return v8;
      }
    }
  }

  v15 = FigSimpleMutexCreate();
  *(DerivedStorage + 56) = v15;
  if (!v15)
  {
    FigNetworkPredictionArbiterCreate_cold_1(v19);
    return v19[0];
  }

  *(DerivedStorage + 64) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 48), @"mlMixingWindowSize");
  *(DerivedStorage + 72) = 0;
  *(DerivedStorage + 80) = 0;
  *(DerivedStorage + 84) = 0;
  *(DerivedStorage + 32) = 0;
  if (dword_1EAF17B78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = 0;
  *a4 = 0;
  return v17;
}

void fnpa_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

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

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 120);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t fnpa_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *MEMORY[0x1E6962A18];
  if (CFEqual(a2, *MEMORY[0x1E6962A18]))
  {
    v8 = *(DerivedStorage + 8);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v8, v7, *MEMORY[0x1E695E480], a4);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else if (CFEqual(a2, @"NetworkPredictorProperty_GroupBandwidthWeight"))
  {
    v10 = 0;
    *a4 = FigCFNumberCreateFloat32();
  }

  else
  {
    v10 = 4294949566;
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fnpa_makePrediction(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v143 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!FigRCLGetNumberWithDefault(*(DerivedStorage + 48), @"useAdaptiveBayesianNetworkPrediction") || (*(a3 + 21) & 0xFLL) == 1)
  {
    v9 = *(a3 + 21);
    if (*(DerivedStorage + 84))
    {
      v10 = 1;
    }

    else
    {
      v10 = (*(a3 + 21) & 0xFLL) == 2;
    }

    if (!v10)
    {
      v22 = a3[11];
      *&v128[96] = a3[10];
      *v129 = v22;
      v23 = a3[13];
      *&v129[16] = a3[12];
      v130 = v23;
      v24 = a3[7];
      *&v128[32] = a3[6];
      *&v128[48] = v24;
      v25 = a3[9];
      *&v128[64] = a3[8];
      *&v128[80] = v25;
      v26 = a3[3];
      *&v127[32] = a3[2];
      *&v127[48] = v26;
      v27 = a3[5];
      *v128 = a3[4];
      *&v128[16] = v27;
      v28 = a3[1];
      *v127 = *a3;
      *&v127[16] = v28;
      v29 = a1;
LABEL_94:
      HeuristicPrediction = fnpa_makeHeuristicPrediction(v29, a2, v127, a4);
      goto LABEL_95;
    }

    v109 = a3[8];
    v110 = a3[9];
    v111 = *(a3 + 20);
    v105 = a3[4];
    v106 = a3[5];
    v107 = a3[6];
    v108 = a3[7];
    v101 = *a3;
    v102 = a3[1];
    v103 = a3[2];
    v104 = a3[3];
    v11 = a3[12];
    v132 = a3[11];
    v133 = v11;
    v134 = a3[13];
    v126 = 0.0;
    v124 = 0u;
    v125 = 0u;
    v123 = 0u;
    memset(v122, 0, sizeof(v122));
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v118 = 0u;
    memset(v117, 0, sizeof(v117));
    v12 = CMBaseObjectGetDerivedStorage();
    if ((v9 & 0xC) == 0xC)
    {
      fnpa_makePrediction_cold_2(v127);
      HeuristicPrediction = *v127;
      goto LABEL_95;
    }

    v13 = v12;
    if ((v9 & 0xC) != 0)
    {
      *&v128[64] = v109;
      *&v128[80] = v110;
      *v128 = v105;
      *&v128[16] = v106;
      *&v128[32] = v107;
      *&v128[48] = v108;
      *v127 = v101;
      *&v127[16] = v102;
      *&v127[32] = v103;
      *&v127[48] = v104;
      *&v128[96] = v111;
      *&v128[104] = v9;
      *v129 = v132;
      *&v129[16] = v133;
      v130 = v134;
      HeuristicPrediction = fnpa_makeHeuristicPrediction(a1, a2, v127, v122);
      v15 = (HeuristicPrediction + 17736) < 0xFFFFFFFE;
      v16 = *&v122[0];
      if ((v9 & 2) == 0)
      {
LABEL_11:
        v17 = 0;
        v116 = *(v122 + 8);
        v18 = *(&v122[1] + 1);
        v19 = v123;
        v20 = 0.0;
        v21 = *(&v123 + 1);
        goto LABEL_62;
      }
    }

    else
    {
      HeuristicPrediction = 0;
      v15 = 0;
      v16 = 0.0;
      if ((v9 & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v44 = *(v13 + 40);
    if (v44)
    {
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      v20 = 0.0;
      if (v45)
      {
        *&v128[64] = v109;
        *&v128[80] = v110;
        *v128 = v105;
        *&v128[16] = v106;
        *&v128[32] = v107;
        *&v128[48] = v108;
        *v127 = v101;
        *&v127[16] = v102;
        *&v127[32] = v103;
        *&v127[48] = v104;
        *&v128[96] = v111;
        *&v128[104] = v9;
        *v129 = v132;
        *&v129[16] = v133;
        v130 = v134;
        v46 = v45(v44, a2, v127, v117);
        v20 = *&v117[0];
      }

      else
      {
        v46 = 4294954514;
      }

      v59 = v46 == 0;
      if ((v9 & 4) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v59 = 0;
      v20 = 0.0;
      v46 = 4294948281;
      if ((v9 & 4) == 0)
      {
        goto LABEL_52;
      }
    }

    if (!v15)
    {
      FigNetworkHistoryGetGlobal();
      *(v13 + 72) = FigNetworkHistoryGetFirstActiveTimestamp();
      v17 = 1;
      *(v13 + 80) = 1;
      if (v59)
      {
LABEL_57:
        v63 = 1.0;
        v62 = 0.0;
        goto LABEL_59;
      }

LABEL_58:
      v17 = 0;
      v63 = 0.0;
      v62 = 1.0;
LABEL_59:
      v116 = *(v117 + 8);
      *v127 = v119;
      *&v127[16] = v120;
      *&v127[32] = v121;
      v21 = *(&v123 + 1);
      v19 = v123;
      v18 = 0x3FECCCCCCCCCCCCDLL;
      if ((v9 & 1) == 0 || v46 != -19015)
      {
        HeuristicPrediction = v46;
LABEL_64:
        v64 = (v20 * (v63 * (1.0 / (v63 + v62))) + v62 * (1.0 / (v63 + v62)) * v16);
        *a4 = v64;
        *(a4 + 8) = v116;
        *(a4 + 24) = v18;
        *(a4 + 32) = v19;
        *(a4 + 40) = v21;
        v65 = *&v127[16];
        *(a4 + 48) = *v127;
        *(a4 + 64) = v65;
        *(a4 + 80) = *&v127[32];
        if (v17)
        {
          fnpa_makePrediction_cold_1(v13, a2, v64, HeuristicPrediction, &v131);
          HeuristicPrediction = v131;
        }

        goto LABEL_95;
      }

      v116 = *(v122 + 8);
      v18 = *(&v122[1] + 1);
LABEL_62:
      *v127 = v124;
      *&v127[16] = v125;
      *&v127[32] = v126;
      v62 = 1.0;
      v63 = 0.0;
      goto LABEL_64;
    }

LABEL_52:
    if (v15 && v59)
    {
      v60 = a2 - *(v13 + 72);
      v61 = CMBaseObjectGetDerivedStorage();
      v62 = 1.0 / (exp((v60 + *(v61 + 64) * -0.5) / -1000000000.0) + 1.0);
      v63 = 1.0 - v62;
      v17 = 1;
      goto LABEL_59;
    }

    if (v59)
    {
      v17 = 1;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v93 = a4;
  v112 = *(a3 + 8);
  v113 = *(a3 + 24);
  v114 = *(a3 + 40);
  v92 = a2;
  v30 = *(a3 + 8);
  v115 = *(a3 + 7);
  v31 = *(a3 + 120);
  v32 = *(a3 + 152);
  v140 = *(a3 + 136);
  v141 = v32;
  v142 = *(a3 + 21);
  v33 = *(a3 + 88);
  v136 = *(a3 + 72);
  v137 = v33;
  v138 = *(a3 + 104);
  v139 = v31;
  v34 = *(a3 + 176);
  v35 = *(a3 + 177);
  v98 = *(a3 + 185);
  v135[0] = *(a3 + 187);
  v36 = a1;
  v37 = *(a3 + 25);
  *(v135 + 5) = *(a3 + 24);
  v38 = *(a3 + 27);
  v95 = *(a3 + 26);
  v39 = CMBaseObjectGetDerivedStorage();
  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  v119 = 0u;
  v120 = 0u;
  v118 = 0u;
  memset(v117, 0, sizeof(v117));
  *&v127[8] = v112;
  *&v127[24] = v113;
  *&v127[40] = v114;
  *&v128[56] = v139;
  *&v128[72] = v140;
  *&v128[88] = v141;
  *&v128[8] = v136;
  *&v128[24] = v137;
  v126 = 0.0;
  v121 = 0;
  *v127 = 7;
  *&v127[56] = v115;
  v100 = v30;
  *v128 = v30;
  a2 = v92;
  *&v128[104] = v142;
  *&v128[40] = v138;
  v91 = v34;
  v129[0] = v34;
  *&v129[1] = v35;
  *&v129[9] = v98;
  *&v129[16] = *(v135 + 5);
  *&v129[11] = v135[0];
  v97 = v35;
  v99 = v37;
  *&v129[24] = v37;
  *&v130 = v95;
  v96 = v38;
  *(&v130 + 1) = v38;
  v40 = fnpa_makeHeuristicPrediction(v36, v92, v127, v122) + 17736;
  v94 = v40 < 0xFFFFFFFE;
  FirstActiveTimestamp = FigNetworkHistoryGetFirstActiveTimestamp();
  v42 = *(v39 + 80);
  if (v42 == 2 || v42 == 3)
  {
    v43 = *(v39 + 72);
    *(v39 + 104) = v43;
    a4 = v93;
  }

  else
  {
    a4 = v93;
    if (v42 == 4)
    {
      v43 = *(v39 + 72);
      *(v39 + 104) = v43;
    }

    else
    {
      v43 = *(v39 + 104);
    }
  }

  if (FirstActiveTimestamp <= v43)
  {
    v47 = v43;
  }

  else
  {
    v47 = FirstActiveTimestamp;
  }

  v48 = v92 - v47;
  if (v92 - v47 < v100 && v40 <= 0xFFFFFFFD)
  {
    *&v127[8] = v112;
    *&v127[24] = v113;
    *&v127[40] = v114;
    *&v128[56] = v139;
    *&v128[72] = v140;
    *&v128[88] = v141;
    *&v128[8] = v136;
    *&v128[24] = v137;
    *v127 = 7;
    *&v127[56] = v115;
    *v128 = v100;
    *&v128[104] = v142;
    *&v128[40] = v138;
    v129[0] = v91;
    *&v129[1] = v97;
    v129[9] = 0;
    v129[10] = v40 < 0xFFFFFFFE;
    *&v129[11] = v135[0];
    *&v129[16] = *(v135 + 5);
    *&v129[24] = v37;
    *&v130 = 0;
    *(&v130 + 1) = v96;
    if (!fnpa_makeHeuristicPrediction(v36, v92, v127, v122))
    {
      v49 = 0;
      v47 = 0;
      v50 = (((((5 * v48) >> 8) & 0x7FFFFFFFFFFFFFLL) * 0x44B82FA09B5A53uLL) >> 64) >> 11;
LABEL_33:
      v51 = v50;
      goto LABEL_34;
    }

    goto LABEL_93;
  }

  if (v48 <= 0xDF84757FFLL && v40 <= 0xFFFFFFFD)
  {
    *&v127[8] = v112;
    *&v127[24] = v113;
    *&v127[40] = v114;
    *&v128[56] = v139;
    *&v128[72] = v140;
    *&v128[88] = v141;
    *&v128[8] = v136;
    *&v128[24] = v137;
    *v127 = 7;
    *&v127[56] = v115;
    *v128 = v100;
    *&v128[104] = v142;
    *&v128[40] = v138;
    v129[0] = v91;
    *&v129[1] = v97;
    v129[9] = 0;
    v129[10] = v40 < 0xFFFFFFFE;
    *&v129[11] = v135[0];
    *&v129[16] = *(v135 + 5);
    *&v129[24] = v37;
    *&v130 = v47;
    *(&v130 + 1) = v96;
    if (!fnpa_makeHeuristicPrediction(v36, v92, v127, v122))
    {
      v49 = 0;
      v50 = v48 / 0x5F5E100;
      goto LABEL_33;
    }

LABEL_93:
    v83 = a3[11];
    *&v128[96] = a3[10];
    *v129 = v83;
    v84 = a3[13];
    *&v129[16] = a3[12];
    v130 = v84;
    v85 = a3[7];
    *&v128[32] = a3[6];
    *&v128[48] = v85;
    v86 = a3[9];
    *&v128[64] = a3[8];
    *&v128[80] = v86;
    v87 = a3[3];
    *&v127[32] = a3[2];
    *&v127[48] = v87;
    v88 = a3[5];
    *v128 = a3[4];
    *&v128[16] = v88;
    v89 = a3[1];
    *v127 = *a3;
    *&v127[16] = v89;
    v29 = v36;
    goto LABEL_94;
  }

  if (v40 > 0xFFFFFFFD)
  {
    v49 = 0;
    v51 = 0.0;
  }

  else
  {
    v57 = *(v39 + 112);
    if (v57 && (v92 - v57) < 0x45D964B801)
    {
      v58 = 0;
    }

    else
    {
      *(v39 + 112) = v92;
      v58 = 1;
    }

    *&v127[8] = v112;
    *&v127[24] = v113;
    *&v127[40] = v114;
    *&v128[56] = v139;
    *&v128[72] = v140;
    *&v128[88] = v141;
    *&v128[8] = v136;
    *&v128[24] = v137;
    *v127 = 7;
    *&v127[56] = v115;
    *v128 = v100;
    *&v128[104] = v142;
    *&v128[40] = v138;
    v129[0] = v91;
    *&v129[1] = v97;
    v49 = v58;
    v129[9] = v58;
    v129[10] = v40 < 0xFFFFFFFE;
    *&v129[16] = *(v135 + 5);
    *&v129[11] = v135[0];
    *&v129[24] = v99;
    *&v130 = v47;
    *(&v130 + 1) = v96;
    if (fnpa_makeHeuristicPrediction(v36, v92, v127, v122))
    {
      goto LABEL_93;
    }

    v51 = ((((((5 * v48) >> 8) & 0x7FFFFFFFFFFFFFLL) * 0x44B82FA09B5A53uLL) >> 64) >> 11);
    v99 = v125;
  }

LABEL_34:
  v52 = *(v39 + 40);
  v53 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v53)
  {
    goto LABEL_93;
  }

  *&v127[8] = v112;
  *&v127[24] = v113;
  *&v127[40] = v114;
  *&v128[56] = v139;
  *&v128[72] = v140;
  *&v128[88] = v141;
  *&v128[8] = v136;
  *&v128[24] = v137;
  *v127 = 7;
  *&v127[56] = v115;
  *v128 = v100;
  *&v128[104] = v142;
  *&v128[40] = v138;
  v129[0] = 1;
  *&v129[1] = v97;
  v129[9] = v49;
  v129[10] = v94;
  *&v129[11] = v135[0];
  *&v129[16] = *(v135 + 5);
  *&v129[24] = v99;
  *&v130 = v47;
  *(&v130 + 1) = v96;
  if (v53(v52, v92, v127, v117))
  {
    goto LABEL_93;
  }

  v54 = *&v117[0];
  if (!*&v117[0] || *(v117 + 1) == 2.22044605e-16)
  {
    v56 = 0.0;
    v55 = v126;
  }

  else
  {
    v55 = v126;
    if (*(v117 + 1) != 1.0 || v126 == 0.0)
    {
      v56 = 1.0 / *(v117 + 1);
    }

    else
    {
      v56 = v126;
    }
  }

  v66 = *(&v125 + 1);
  v67 = ((v56 * *&v117[0] + v51 * v55 * *(&v125 + 1)) / (v56 + v51 * v55));
  *a4 = v67;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  v68 = *(v39 + 96);
  if (v68)
  {
    v69 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v69)
    {
      v69(v68, 0x1F0B64558, 0x1F0B67D18, v51);
    }

    v70 = *(v39 + 96);
    if (v70)
    {
      v71 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v71)
      {
        v71(v70, 0x1F0B64558, 0x1F0B67D38, v66);
      }

      v72 = *(v39 + 96);
      if (v72)
      {
        v73 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v73)
        {
          v73(v72, 0x1F0B64558, 0x1F0B67D58, v55);
        }

        v74 = *(v39 + 96);
        if (v74)
        {
          v75 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v75)
          {
            v75(v74, 0x1F0B64558, 0x1F0B67D78, v54);
          }

          v76 = *(v39 + 96);
          if (v76)
          {
            v77 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v77)
            {
              v77(v76, 0x1F0B64558, 0x1F0B67D98, v56);
            }

            v78 = *(v39 + 96);
            if (v78)
            {
              v79 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v79)
              {
                v79(v78, 0x1F0B64558, 0x1F0B67DB8, v67);
              }

              v80 = *(v39 + 96);
              if (v80)
              {
                v81 = v125;
                v82 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v82)
                {
                  v82(v80, 0x1F0B64558, 0x1F0B67DD8, v81);
                }
              }
            }
          }
        }
      }
    }
  }

  HeuristicPrediction = 0;
LABEL_95:
  FigSimpleMutexUnlock();
  return HeuristicPrediction;
}

uint64_t fnpa_makeHeuristicPrediction(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  v9 = *(a3 + 21);
  if ((v9 & 4) != 0)
  {
    v14 = *(DerivedStorage + 16);
    v50 = a3[10];
    v53 = a3[11];
    v56 = a3[12];
    v59 = a3[13];
    v38 = a3[6];
    v41 = a3[7];
    v44 = a3[8];
    v47 = a3[9];
    v26 = a3[2];
    v29 = a3[3];
    v32 = a3[4];
    v35 = a3[5];
    v20 = *a3;
    v23 = a3[1];
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v71 = v50;
      v72 = v53;
      v73 = v56;
      v74 = v59;
      v67 = v38;
      v68 = v41;
      v69 = v44;
      v70 = v47;
      v63 = v26;
      v64 = v29;
      v65 = v32;
      v66 = v35;
      v61 = v20;
      v62 = v23;
      result = v15(v14, a2, &v61, a4);
    }

    else
    {
      result = 4294954514;
    }

    v16 = *(v8 + 32);
    if (v16 != 0.0)
    {
      *a4 = (v16 * *a4);
    }
  }

  else
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if ((v9 & 0x10) != 0 && *(v10 + 24) && *(v10 + 32) != 0.0)
    {
      v11 = *(v8 + 24);
      v49 = a3[10];
      v52 = a3[11];
      v55 = a3[12];
      v58 = a3[13];
      v37 = a3[6];
      v40 = a3[7];
      v43 = a3[8];
      v46 = a3[9];
      v25 = a3[2];
      v28 = a3[3];
      v31 = a3[4];
      v34 = a3[5];
      v19 = *a3;
      v22 = a3[1];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v71 = v49;
        v72 = v52;
        v73 = v55;
        v74 = v58;
        v67 = v37;
        v68 = v40;
        v69 = v43;
        v70 = v46;
        v63 = v25;
        v64 = v28;
        v65 = v31;
        v66 = v34;
        v61 = v19;
        v62 = v22;
        result = v12(v11, a2, &v61, a4);
        *a4 = (*(v8 + 32) * *a4);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        *a4 = (*(v8 + 32) * *a4);
      }
    }

    v17 = *(v8 + 8);
    v51 = a3[10];
    v54 = a3[11];
    v57 = a3[12];
    v60 = a3[13];
    v39 = a3[6];
    v42 = a3[7];
    v45 = a3[8];
    v48 = a3[9];
    v27 = a3[2];
    v30 = a3[3];
    v33 = a3[4];
    v36 = a3[5];
    v21 = *a3;
    v24 = a3[1];
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v18)
    {
      v71 = v51;
      v72 = v54;
      v73 = v57;
      v74 = v60;
      v67 = v39;
      v68 = v42;
      v69 = v45;
      v70 = v48;
      v63 = v27;
      v64 = v30;
      v65 = v33;
      v66 = v36;
      v61 = v21;
      v62 = v24;
      return v18(v17, a2, &v61, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t figCSSTokenRegisterFigCSSToken()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSTokenID = result;
  return result;
}

uint64_t FigCSSTokenGetTokenType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = *(a1 + 16);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigCSSTokenGetTokenType_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigCSSTokenCopyAttributes(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    FigCSSTokenCopyAttributes_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigCSSBaseTokenCreate(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    MEMORY[0x19A8D3660](&FigCSSTokenGetTypeID_sRegisterFigCSSTokenOnce, figCSSTokenRegisterFigCSSToken);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = a2;
      *(Instance + 32) = FigCFDictionaryCreateMutableCopy();
      v8 = FigCSSTokenMapTokenTypeToName(a2);
      if (v8)
      {
        v9 = CFRetain(v8);
      }

      else
      {
        v9 = 0;
      }

      result = 0;
      *(v7 + 24) = v9;
      *a4 = v7;
    }

    else
    {
      FigCSSBaseTokenCreate_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSBaseTokenCreate_cold_2(&v12);
    return v12;
  }

  return result;
}

void *figCSSToken_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figCSSToken_Finalize(uint64_t a1)
{
  *(a1 + 16) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

CFStringRef figCSSToken_CopyFormattingDesc(uint64_t a1)
{
  if (FigCFDictionaryGetCount() <= 0)
  {
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
  }

  else
  {
    v2 = FigCFCopyCompactDescription();
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
    if (v2)
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ %@ attributesDict = <%p>", a1, v3, v2, *(a1 + 32));
      CFRelease(v2);
      return v4;
    }
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ attributesDict = <%p>", a1, v3, *(a1 + 32));
}

CFStringRef figCSSToken_CopyDebugDesc(uint64_t a1)
{
  if (FigCFDictionaryGetCount() <= 0)
  {
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
  }

  else
  {
    v2 = FigCFCopyCompactDescription();
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
    if (v2)
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ %@ attributesDict = <%p>", a1, v3, v2, *(a1 + 32));
      CFRelease(v2);
      return v4;
    }
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ attributesDict = <%p>", a1, v3, *(a1 + 32));
}

uint64_t FigReportingAgentOfflineAirPlayGetTypeID()
{
  if (FigReportingAgentOfflineAirPlayGetTypeID_sRegisterFigReportingAgentOfflineAirPlayTypeOnce != -1)
  {
    FigReportingAgentOfflineAirPlayGetTypeID_cold_1();
  }

  return sFigReportingAgentOfflineAirPlayID;
}

uint64_t registerFigReportingAgentOfflineAirPlayType()
{
  result = _CFRuntimeRegisterClass();
  sFigReportingAgentOfflineAirPlayID = result;
  return result;
}

uint64_t fraoa_CreateOfflineAirPlayReportingPayload(uint64_t a1, __CFDictionary **a2)
{
  v12 = 0;
  v3 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v5 = MutableCopy;
    if (a2)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(&FigReportingAgentOffilineAirplay_RTCJSMetadataKeys + v6);
        if (FigCFDictionaryGetValueIfPresent())
        {
          v8 = CFStringCreateWithFormat(v3, 0, @"%@%@", v7, @"_OA", v12);
          if (!v8)
          {
            fraoa_CreateOfflineAirPlayReportingPayload_cold_1(&v13);
            goto LABEL_11;
          }

          v9 = v8;
          CFDictionaryRemoveValue(v5, v7);
          FigCFDictionarySetValue();
          CFRelease(v9);
        }

        v6 += 8;
        if (v6 == 184)
        {
          v10 = 0;
          *a2 = v5;
          return v10;
        }
      }
    }

    fraoa_CreateOfflineAirPlayReportingPayload_cold_2(&v13);
LABEL_11:
    v10 = v13;
    CFRelease(v5);
  }

  else
  {
    fraoa_CreateOfflineAirPlayReportingPayload_cold_3(&v13);
    return v13;
  }

  return v10;
}

uint64_t FigReportingAgentOfflineAirPlayIssueReportingEvent(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigReportingAgentOfflineAirPlayIssueReportingEvent_cold_2(&v9);
    return v9;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigReportingAgentOfflineAirPlayIssueReportingEvent_cold_1(&v9);
    return v9;
  }

  OfflineAirPlayReportingPayload = fraoa_CreateOfflineAirPlayReportingPayload(a2, &cf);
  v5 = cf;
  if (OfflineAirPlayReportingPayload)
  {
    v6 = OfflineAirPlayReportingPayload;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = FigRTCReportingSendMsgWithErrors(*(a1 + 16));
  v5 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

uint64_t FigReportingAgentOfflineAirPlayCreate(void *a1)
{
  v2 = arc4random();
  v3 = *MEMORY[0x1E695E480];
  v4 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v4)
  {
    FigReportingAgentOfflineAirPlayCreate_cold_5();
  }

  v5 = v4;
  v6 = CFUUIDCreateString(v3, v4);
  if (v6)
  {
    v7 = v6;
    if (a1)
    {
      if (FigReportingAgentOfflineAirPlayGetTypeID_sRegisterFigReportingAgentOfflineAirPlayTypeOnce != -1)
      {
        FigReportingAgentOfflineAirPlayGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v9 = Instance;
        v10 = FigRTCReportingCreate(v2, v7, 0, 5, @"OfflineAirPlay", @"com.apple.hlsjs.offline", 0, 0, 0, 1u, 0, (Instance + 16));
        if (v10)
        {
          CFRelease(v9);
        }

        else
        {
          *a1 = v9;
        }
      }

      else
      {
        FigReportingAgentOfflineAirPlayCreate_cold_2(&v12);
        v10 = v12;
      }
    }

    else
    {
      FigReportingAgentOfflineAirPlayCreate_cold_3(&v13);
      v10 = v13;
    }

    CFRelease(v5);
  }

  else
  {
    FigReportingAgentOfflineAirPlayCreate_cold_4(&v14);
    v10 = v14;
    v7 = v5;
  }

  CFRelease(v7);
  return v10;
}

void FigReportingAgentOfflineAirPlay_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigPlayerResourceArbiterRegisterConsumer(uint64_t a1, const void *a2, const void *a3, const void *a4, int a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_5(v35);
    return v35[0];
  }

  if (!a6)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_4(v35);
    return v35[0];
  }

  FigSimpleMutexLock();
  v10 = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v11 + 1;
  while (1)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v10 >= Count)
    {
      break;
    }

    FigCFArrayGetValueAtIndex();
    BytePtr = FigStorageRefGetBytePtr();
    ++v10;
    if (FigCFEqual())
    {
      v14 = 0;
      goto LABEL_16;
    }
  }

  v15 = FigStorageCreate();
  if (v15)
  {
    v31 = v15;
    FigSimpleMutexUnlock();
    return v31;
  }

  BytePtr = FigStorageRefGetBytePtr();
  if (a2)
  {
    v16 = CFRetain(a2);
  }

  else
  {
    v16 = 0;
  }

  *BytePtr = v16;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v14 = CFUUIDCreate(AllocatorForMedia);
  v18 = FigGetAllocatorForMedia();
  v19 = CFUUIDCreateString(v18, v14);
  *(BytePtr + 8) = v19;
  if (!v19)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_2(v35);
LABEL_39:
    v31 = v35[0];
    goto LABEL_35;
  }

  v20 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
  *(BytePtr + 16) = Mutable;
  if (!Mutable)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_1(v35);
    goto LABEL_39;
  }

  CFArrayAppendValue(*(a1 + 32), 0);
LABEL_16:
  v22 = FigStorageCreate();
  if (v22)
  {
    v31 = v22;
  }

  else
  {
    v23 = FigStorageRefGetBytePtr();
    if (a3)
    {
      v24 = CFRetain(a3);
    }

    else
    {
      v24 = 0;
    }

    *v23 = v24;
    v25 = a4;
    if (a4)
    {
      v25 = CFRetain(a4);
    }

    v23[1] = v25;
    v23[2] = v11;
    if (a5 == 1)
    {
      for (i = 0; ; ++i)
      {
        v27 = *(BytePtr + 16);
        if (v27)
        {
          v27 = CFArrayGetCount(v27);
        }

        if (i >= v27)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(BytePtr + 16), i);
        v29 = FigStorageRefGetBytePtr();
        if (FigCFEqual() && !*(v29 + 32))
        {
          if (ValueAtIndex)
          {
            v23[4] = CFRetain(ValueAtIndex);
            goto LABEL_32;
          }

          break;
        }
      }

      FigPlayerResourceArbiterRegisterConsumer_cold_3(v35);
      goto LABEL_39;
    }

LABEL_32:
    CFArrayAppendValue(*(a1 + 40), 0);
    CFArrayAppendValue(*(BytePtr + 16), 0);
    *a6 = v11;
    if (dword_1EAF17BB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v31 = 0;
  }

LABEL_35:
  FigSimpleMutexUnlock();
  if (v14)
  {
    CFRelease(v14);
  }

  return v31;
}

uint64_t FigPlayerResourceArbiterUnregisterConsumer(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FigSimpleMutexLock();
    if (dword_1EAF17BB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ConsumerInfoIndex = fpra_getConsumerInfoIndex(a1, a2);
    if (ConsumerInfoIndex != -1)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 40), ConsumerInfoIndex);
    }

    FigGetAllocatorForMedia();
    UInt64 = FigCFNumberCreateUInt64();
    for (i = 0; ; ++i)
    {
      Count = *(a1 + 32);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      FigCFArrayGetValueAtIndex();
      BytePtr = FigStorageRefGetBytePtr();
      for (j = 0; ; ++j)
      {
        v11 = *(BytePtr + 16);
        if (v11)
        {
          v11 = CFArrayGetCount(v11);
        }

        if (j >= v11)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(BytePtr + 16), j);
        if (*(FigStorageRefGetBytePtr() + 16) == a2)
        {
          CFArrayRemoveValueAtIndex(*(BytePtr + 16), j);
          if (!CFArrayGetCount(*(BytePtr + 16)))
          {
            CFArrayRemoveValueAtIndex(*(a1 + 32), i);
          }

          break;
        }
      }
    }

    if (UInt64)
    {
      CFRelease(UInt64);
    }

    fpra_determineAndDistributeBudgetToConsumers(a1);
    fpra_determineAndDistributeNetworkBudgetToConsumers(a1);
    fpra_unlockAndNotifyClients(a1);
    return 0;
  }

  else
  {
    FigPlayerResourceArbiterUnregisterConsumer_cold_1(v13);
    return v13[0];
  }
}

uint64_t fpra_getConsumerInfoIndex(uint64_t a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 40), i);
    if (*(FigStorageRefGetBytePtr() + 16) == a2)
    {
      return i;
    }
  }

  return -1;
}

void fpra_unlockAndNotifyClients(unsigned __int8 *a1)
{
  v2 = a1[96];
  v3 = a1[97];
  *(a1 + 48) = 0;
  FigSimpleMutexUnlock();
  if (v2 | v3)
  {
    v4 = CFCopyDescription(a1);
    if (dword_1EAF17BB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (v3)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }
}

uint64_t FigPlayerResourceArbiterSetSpecifierForConsumer(unsigned __int8 *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a3);
    if (ConsumerInfo)
    {
      FigPlayerResourceArbiterSetSpecifierForConsumer_cold_1(ConsumerInfo, a2, a1);
      v7 = 0;
    }

    else
    {
      FigPlayerResourceArbiterSetSpecifierForConsumer_cold_2(&v9);
      v7 = v9;
    }

    fpra_unlockAndNotifyClients(a1);
  }

  else
  {
    FigPlayerResourceArbiterSetSpecifierForConsumer_cold_3(&v10);
    return v10;
  }

  return v7;
}

uint64_t fpra_getConsumerInfo(uint64_t a1, uint64_t a2)
{
  ConsumerInfoIndex = fpra_getConsumerInfoIndex(a1, a2);
  if (ConsumerInfoIndex == -1)
  {
    return 0;
  }

  CFArrayGetValueAtIndex(*(a1 + 40), ConsumerInfoIndex);

  return FigStorageRefGetBytePtr();
}

uint64_t FigPlayerResourceArbiterSetNetworkSpecifierForConsumer(unsigned __int8 *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a3);
    if (ConsumerInfo)
    {
      FigPlayerResourceArbiterSetNetworkSpecifierForConsumer_cold_1(ConsumerInfo, a2, a1);
      v7 = 0;
    }

    else
    {
      FigPlayerResourceArbiterSetNetworkSpecifierForConsumer_cold_2(&v9);
      v7 = v9;
    }

    fpra_unlockAndNotifyClients(a1);
  }

  else
  {
    FigPlayerResourceArbiterSetNetworkSpecifierForConsumer_cold_3(&v10);
    return v10;
  }

  return v7;
}

uint64_t FigPlayerResourceArbiterGetBudgetForConsumer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    PrimaryConsumerInfo = fpra_getPrimaryConsumerInfo(a1, a2);
    if (PrimaryConsumerInfo)
    {
      v9 = PrimaryConsumerInfo;
      if (a3)
      {
        if (_os_feature_enabled_impl())
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v9 + 56);
        }

        *a3 = v10;
      }

      if (a4)
      {
        v11 = 0;
        if (_os_feature_enabled_impl())
        {
          *a4 = *(v9 + 56);
        }

        else
        {
          *a4 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      FigPlayerResourceArbiterGetBudgetForConsumer_cold_1(&v13);
      v11 = v13;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigPlayerResourceArbiterGetBudgetForConsumer_cold_2(&v14);
    return v14;
  }

  return v11;
}

uint64_t fpra_getPrimaryConsumerInfo(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    Count = *(a1 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      return 0;
    }

    CFArrayGetValueAtIndex(*(a1 + 40), v4);
    result = FigStorageRefGetBytePtr();
    ++v4;
  }

  while (*(result + 16) != a2);
  if (*(result + 32))
  {

    return FigStorageRefGetBytePtr();
  }

  return result;
}

uint64_t FigPlayerResourceArbiterGetNetworkBudgetForConsumer(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    FigPlayerResourceArbiterGetNetworkBudgetForConsumer_cold_1(a1, a2, a3, &v4);
    return v4;
  }

  else
  {
    FigPlayerResourceArbiterGetNetworkBudgetForConsumer_cold_2(&v5);
    return v5;
  }
}

uint64_t fpra_getGroupInfoForConsumer(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  BytePtr = 0;
  while (1)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (BytePtr || v4 >= Count)
    {
      return BytePtr;
    }

    FigCFArrayGetValueAtIndex();
    BytePtr = FigStorageRefGetBytePtr();
    v7 = 0;
    while (1)
    {
      v8 = *(BytePtr + 16);
      if (v8)
      {
        v8 = CFArrayGetCount(v8);
      }

      if (v7 >= v8)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(BytePtr + 16), v7++);
      if (*(FigStorageRefGetBytePtr() + 16) == a2)
      {
        goto LABEL_13;
      }
    }

    BytePtr = 0;
LABEL_13:
    ++v4;
  }
}

uint64_t FigPlayerResourceArbiterSetStorebagForConsumer(unsigned __int8 *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a2);
    if (ConsumerInfo)
    {
      FigPlayerResourceArbiterSetStorebagForConsumer_cold_1(ConsumerInfo, a3, a1);
      v7 = 0;
    }

    else
    {
      FigPlayerResourceArbiterSetStorebagForConsumer_cold_2(&v9);
      v7 = v9;
    }

    fpra_unlockAndNotifyClients(a1);
  }

  else
  {
    FigPlayerResourceArbiterSetStorebagForConsumer_cold_3(&v10);
    return v10;
  }

  return v7;
}

uint64_t FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      if (_os_feature_enabled_impl())
      {
        if (fpra_getNumberOfActiveConsumers(a1) < 4)
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 0;
      }

      *a3 = v5;
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer_cold_2(&v8);
    return v8;
  }
}

uint64_t FigPlayerResourceArbiterAssignReportingAgentForConsumer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a2);
    if (ConsumerInfo)
    {
      v7 = ConsumerInfo;
      GroupInfoForConsumer = fpra_getGroupInfoForConsumer(a1, a2);
      if (GroupInfoForConsumer)
      {
        v9 = GroupInfoForConsumer;
        v10 = *(v7 + 88);
        *(v7 + 88) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (a3)
        {
          v11 = *(v9 + 8);
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v12)
          {
            v12(a3, 0x1F0B65618, 0x1F0B43C58, v11, 0);
          }

          a3 = 0;
        }
      }

      else
      {
        FigPlayerResourceArbiterAssignReportingAgentForConsumer_cold_1(&v14);
        a3 = v14;
      }
    }

    else
    {
      a3 = 4294947686;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigPlayerResourceArbiterAssignReportingAgentForConsumer_cold_2(&v15);
    return v15;
  }

  return a3;
}

uint64_t FigPlayerResourceArbiterGetGlobalSingleton(void *a1)
{
  if (a1)
  {
    if (_MergedGlobals_142 != -1)
    {
      FigPlayerResourceArbiterGetGlobalSingleton_cold_1();
    }

    *a1 = qword_1ED4CBC60;
    return dword_1ED4CBC68;
  }

  else
  {
    FigPlayerResourceArbiterGetGlobalSingleton_cold_2(&v3);
    return v3;
  }
}

uint64_t fpra_getGlobalSingleton(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = MGCopyAnswer();
    SInt64 = FigCFNumberGetSInt64();
    if (v2)
    {
      CFRelease(v2);
    }

    if (SInt64)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      LODWORD(v11) = 0;
      v16 = 0.0;
      FigGetDecoderMaxPixelsPerSecondFromPlist(1635148593, &v11);
      FigGetDecoderMaxPixelsPerSecondFromPlist(1752589105, &v16);
      v5 = *&v11;
      v6 = v16;
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  CFPreferenceLongNumberWithDefault = FigGetCFPreferenceLongNumberWithDefault();
  v8 = FigGetCFPreferenceLongNumberWithDefault();
  v9 = FigGetCFPreferenceLongNumberWithDefault();
  *&v11 = CFPreferenceLongNumberWithDefault;
  BYTE8(v11) = v4;
  *(&v11 + 9) = 0;
  HIDWORD(v11) = 0;
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = v9;
  result = FigPlayerResourceArbiterCreate(&v11, a1);
  *(a1 + 8) = result;
  return result;
}

uint64_t FigPlayerResourceArbiterCreateForTestOnly(__int128 *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return FigPlayerResourceArbiterCreate(v4, a2);
}

uint64_t FigPlayerResourceArbiterCreate(__int128 *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigPlayerResourceArbiterCreate_cold_3(v17);
    return v17[0];
  }

  FigGetAllocatorForMedia();
  MEMORY[0x19A8D3660](&FigPlayerResourceArbiterGetTypeID_sFigPlayerResourceArbiterRegisterOnce, FigPlayerResourceArbiter_initOnce_0);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerResourceArbiterCreate_cold_2(v17);
    return v17[0];
  }

  v5 = Instance;
  v6 = FigReentrantMutexCreate();
  *(v5 + 16) = v6;
  if (!v6)
  {
    v16 = 1448;
LABEL_16:
    FigPlayerResourceArbiterCreate_cold_1(v16, v5, v17);
    return v17[0];
  }

  *(v5 + 24) = 1;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  *(v5 + 32) = Mutable;
  if (!Mutable)
  {
    v16 = 1454;
    goto LABEL_16;
  }

  v9 = FigGetAllocatorForMedia();
  v10 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  *(v5 + 40) = v10;
  if (!v10)
  {
    v16 = 1457;
    goto LABEL_16;
  }

  v11 = *a1;
  v12 = a1[2];
  *(v5 + 64) = a1[1];
  *(v5 + 80) = v12;
  *(v5 + 48) = v11;
  v13 = CFCopyDescription(v5);
  if (dword_1EAF17BB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a2 = v5;
  if (v13)
  {
    CFRelease(v13);
  }

  return 0;
}

void groupInfoDeallocateCallback(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }
}

void consumerInfoDeallocateCallback(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 88) = 0;
  }
}

unint64_t fpra_sumPlayerNeedsAndAllocateFloor(uint64_t a1, int64x2_t *a2)
{
  BytePtr = FigStorageRefGetBytePtr();
  BytePtr[5] = BytePtr[7];
  BytePtr[7] = 0;
  result = fpra_isActiveConsumer(BytePtr);
  if (result)
  {
    v5 = fpra_consumerInfoMaxDisplayPixelsNeeded(BytePtr);
    a2[2] = vaddq_s64(a2[2], vdupq_n_s64(v5));
    v6 = _os_feature_enabled_impl();
    v7 = BytePtr[9];
    if (v6)
    {
      IsMVStereo = FigPlayerResourceArbiterPlayerSpecifierGetIsMVStereo(v7);
      FrameRateFloor = FigPlayerResourceArbiterPlayerSpecifierGetFrameRateFloor(BytePtr[9]);
      ResolutionFloor = FigPlayerResourceArbiterPlayerSpecifierGetResolutionFloor(BytePtr[9]);
      v12 = FrameRateFloor * (ResolutionFloor * v11);
      v13 = 2.0;
      if (!IsMVStereo)
      {
        v13 = 1.0;
      }

      v14 = (v13 * v12);
    }

    else
    {
      v15 = FigPlayerResourceArbiterPlayerSpecifierGetResolutionFloor(v7);
      v14 = (v15 * v16);
    }

    v17 = a2[1].u64[1];
    v18 = v17 >= v14;
    v19 = v17 > v14;
    v20 = v17 - v14;
    if (!v19)
    {
      v14 = 1;
    }

    if (!v18)
    {
      v20 = 0;
    }

    BytePtr[7] = v14;
    a2[1].i64[1] = v20;
    result = a2->u64[1];
    if (!result || (result = fpra_consumerInfoMaxDisplayPixelsNeeded(result), v5 > result))
    {
      a2->i64[1] = BytePtr;
    }
  }

  return result;
}

unint64_t fpra_allocateBudgetToConsumerByWeight(uint64_t a1, void *a2, void *a3, float a4)
{
  if (_os_feature_enabled_impl())
  {
    IsMVStereo = FigPlayerResourceArbiterPlayerSpecifierGetIsMVStereo(a3[9]);
    FrameRateCeiling = FigPlayerResourceArbiterPlayerSpecifierGetFrameRateCeiling(a3[9]);
    if (FrameRateCeiling == 0.0)
    {
      FrameRateCeiling = FigPlayerResourceArbiterPlayerSpecifierGetFrameRateFloor(a3[9]);
    }

    v10 = FrameRateCeiling;
    v11 = fpra_consumerInfoMaxDisplayPixelsNeeded(a3);
    v12 = 2.0;
    if (!IsMVStereo)
    {
      v12 = 1.0;
    }

    v13 = (v12 * (v10 * v11));
  }

  else
  {
    v13 = fpra_consumerInfoMaxDisplayPixelsNeeded(a3);
  }

  v14 = v13 - a3[7];
  result = fpra_consumerInfoAdjustedDisplayPixelsNeeded(a2, a3);
  v16 = a2[3];
  v17 = (v16 * a4);
  if (v14 < v17)
  {
    v17 = v14;
  }

  v18 = v17 + a3[7];
  if (v18 <= 1)
  {
    v18 = 1;
  }

  a3[7] = v18;
  if (a3[5] != v18)
  {
    *(a1 + 96) = 1;
  }

  a2[5] -= result;
  a2[3] = v16 - v17;
  return result;
}

uint64_t fpra_consumerInfoMaxDisplayPixelsNeeded(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    DisplaySize = FigPlayerResourceArbiterPlayerSpecifierGetDisplaySize(result);
    v5 = (DisplaySize * v4);
    ResolutionCeiling = FigPlayerResourceArbiterPlayerSpecifierGetResolutionCeiling(*(a1 + 72));
    v8 = (ResolutionCeiling * v7);
    ResolutionFloor = FigPlayerResourceArbiterPlayerSpecifierGetResolutionFloor(*(a1 + 72));
    v11 = ResolutionFloor * v10;
    if (v8 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v8;
    }

    if (!v5)
    {
      v12 = v8;
    }

    if (v12 <= v11)
    {
      return v11;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

unint64_t fpra_adjustTotalRunningDisplayPixels(uint64_t a1, void *a2)
{
  BytePtr = FigStorageRefGetBytePtr();
  result = fpra_isActiveConsumer(BytePtr);
  if (result)
  {
    if (BytePtr != a2[1])
    {
      v5 = fpra_consumerInfoMaxDisplayPixelsNeeded(BytePtr);
      result = fpra_consumerInfoAdjustedDisplayPixelsNeeded(a2, BytePtr);
      a2[5] += result - v5;
    }
  }

  return result;
}

unint64_t fpra_allocateBudgetToEachConsumerByWeight(uint64_t a1, uint64_t *a2)
{
  BytePtr = FigStorageRefGetBytePtr();
  result = fpra_isActiveConsumer(BytePtr);
  if (result && BytePtr != a2[1])
  {
    v5 = fpra_consumerInfoAdjustedDisplayPixelsNeeded(a2, BytePtr);
    v6 = a2[5];
    if (v6)
    {
      v7 = v5 / v6;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = *a2;

    return fpra_allocateBudgetToConsumerByWeight(v8, a2, BytePtr, v7);
  }

  return result;
}

uint64_t fpra_isActiveConsumer(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    FigPlayerResourceArbiterPlayerSpecifierGetPlayerRole(result);
    if (FigCFEqual())
    {
      return 0;
    }

    else
    {
      result = FigPlayerResourceArbiterPlayerSpecifierGetIsFullyActive(*(a1 + 72));
      if (result)
      {
        if (FigPlayerResourceArbiterPlayerSpecifierGetDesiredRate(*(a1 + 72)) != 0.0)
        {
          return *(a1 + 32) == 0;
        }

        result = FigPlayerResourceArbiterPlayerSpecifierGetIsBuffering(*(a1 + 72));
        if (result)
        {
          return *(a1 + 32) == 0;
        }
      }
    }
  }

  return result;
}

unint64_t fpra_consumerInfoAdjustedDisplayPixelsNeeded(void *a1, uint64_t a2)
{
  v4 = fpra_consumerInfoMaxDisplayPixelsNeeded(a2);
  v5 = fpra_consumerInfoMaxDisplayPixelsNeeded(a2);
  if (v5)
  {
    v6 = *(a2 + 56) / v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (a1[1] == a2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 1.0 - fmin(((a1[4] / a1[2]) * v6), 1.0);
  }

  return (v7 * v4);
}

uint64_t fpra_consumerRequiresNetworkArbitration(uint64_t a1)
{
  result = fpra_isActiveConsumer(a1);
  if (result)
  {
    return *(a1 + 80) && FigPlayerResourceArbiterPlayerSpecifierGetIsFullyOffline(*(a1 + 72)) == 0;
  }

  return result;
}

const __CFArray *fpra_moreThanOneActiveConsumerWithoutBandwidthBudget(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v4 = Count;
      v5 = 0;
      v6 = 1;
      do
      {
        CFArrayGetValueAtIndex(*(a1 + 16), v6 - 1);
        BytePtr = FigStorageRefGetBytePtr();
        if (fpra_consumerRequiresNetworkArbitration(BytePtr) && *(BytePtr + 64) == 0.0)
        {
          ++v5;
        }

        if (v6 >= v4)
        {
          break;
        }

        ++v6;
      }

      while (v5 < 2);
      return (v5 > 1);
    }
  }

  return result;
}

float fpra_getPriorTierToMeasuredBWWeight(uint64_t a1, uint64_t a2)
{
  PriorBitrate = FigPlayerResourceArbiterNetworkSpecifierGetPriorBitrate(*(a2 + 80));
  if (!PriorBitrate)
  {
    PriorBitrate = FigPlayerResourceArbiterNetworkSpecifierGetLowestBitrate(*(a2 + 80));
  }

  return PriorBitrate * 1.1 / *(a1 + 48);
}

const __CFArray *fpra_setupNetworkPredictionInput@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 216) = 0;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v5 = 1;
  while (1)
  {
    v6 = v4;
    result = *(a1 + 16);
    if (result)
    {
      result = CFArrayGetCount(result);
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    if (v6 >= v8)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 16), v6);
    result = *(FigStorageRefGetBytePtr() + 24);
    if (result)
    {
      result = FigRCLGetNumberWithDefault(result, @"disableWeightBWPredictionByResponseSize");
      v4 = v6 + 1;
      if (result)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v5 = v6;
LABEL_10:
  *a2 = 5;
  *(a2 + 168) = 16;
  *(a2 + 40) = xmmword_196E72850;
  *(a2 + 16) = 60000000000;
  if (v6 < v8 || !v5)
  {
    *(a2 + 8) = 4;
  }

  return result;
}

uint64_t FigPlayerResourceArbiter_initOnce_0()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerResourceArbiterID = result;
  return result;
}

double fpra_init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fpra_finalize(uint64_t a1)
{
  FigSimpleMutexDestroy();
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }
}

__CFString *fpra_copyFormattingDesc(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  FigSimpleMutexLock();
  v4 = *(a1 + 40);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  if (*(a1 + 56))
  {
    CFStringAppendFormat(Mutable, 0, @"%p: [DeviceBudget: %llu/%llu]", a1, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"%p: [DeviceBudget: %llu]", a1, *(a1 + 48));
  }

  CFStringAppendFormat(Mutable, 0, @" [Budget: %llu] [StepCost: %llu] {", *(a1 + 80), *(a1 + 88));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(*(a1 + 40), i);
      BytePtr = FigStorageRefGetBytePtr();
      if (fpra_isActiveConsumer(BytePtr))
      {
        CFStringAppendFormat(Mutable, 0, @"\n\t%lld: ", *(BytePtr + 16));
        if (*(BytePtr + 8))
        {
          CFStringAppendFormat(Mutable, 0, @"%@: ", *(BytePtr + 8));
        }

        v8 = *(BytePtr + 72);
        if (v8)
        {
          v9 = CFCopyDescription(v8);
          CFStringAppendFormat(Mutable, 0, @"%@", v9);
          if (v9)
          {
            CFRelease(v9);
          }
        }

        v10 = *(BytePtr + 80);
        if (v10)
        {
          v11 = CFCopyDescription(v10);
          CFStringAppendFormat(Mutable, 0, @"%@", v11);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        CFStringAppendFormat(Mutable, 0, @"[Budget: %llu] [Network Weight: %.3f]", *(BytePtr + 56), *(BytePtr + 64));
      }
    }
  }

  CFStringAppendFormat(Mutable, 0, @"\n Groups: ");
  for (j = 0; ; ++j)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = CFArrayGetCount(v13);
    }

    if (j >= v13)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 32), j);
    v14 = FigStorageRefGetBytePtr();
    CFStringAppendFormat(Mutable, 0, @"\n\t%@: [Bandwidth: %lld]", *v14, v14[6]);
  }

  CFStringAppendFormat(Mutable, 0, @"\n}");
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t FigPartialSampleTableGetTypeID()
{
  if (_MergedGlobals_143 != -1)
  {
    FigPartialSampleTableGetTypeID_cold_1();
  }

  return qword_1ED4CBC88;
}

uint64_t fpst_registerFigPartialSampleTableType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBC88 = result;
  return result;
}

uint64_t FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, void *a3, const void *a4, uint64_t *a5)
{
  dataPointerOut = 0;
  blockBufferOut = 0;
  if (!a5)
  {
    FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks_cold_3(&v24);
    v20 = v24;
    goto LABEL_24;
  }

  if (_MergedGlobals_143 != -1)
  {
    FigPartialSampleTableGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  DataLength = CMBlockBufferGetDataLength(a2);
  if (CMBlockBufferIsRangeContiguous(a2, 0, DataLength))
  {
    blockBufferOut = a2;
    CFRetain(a2);
  }

  else
  {
    v12 = CMBlockBufferGetDataLength(a2);
    DataPointer = CMBlockBufferCreateContiguous(a1, a2, a1, 0, 0, v12, 0, &blockBufferOut);
    if (DataPointer)
    {
LABEL_27:
      v20 = DataPointer;
      goto LABEL_30;
    }

    a2 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(a2, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_27;
  }

  if ((dataPointerOut & 3) == 0)
  {
    v14 = blockBufferOut;
    *(Instance + 16) = dataPointerOut;
    *(Instance + 24) = v14;
    CFRetain(v14);
    if (a3)
    {
      if (a4)
      {
        v15 = CFRetain(a4);
      }

      else
      {
        v15 = 0;
      }

      *(Instance + 72) = v15;
      __copy_assignment_8_8_t0w8_pa0_7864_8_pa0_3127_16_pa0_23876_24_pa0_18371_32((Instance + 32), a3);
    }

    v16 = CMBlockBufferGetDataLength(*(Instance + 24));
    v17 = *(Instance + 16);
    if (v17[1] >= 1 && *v17 <= 0x3FFuLL)
    {
      v18 = 2;
      while (1)
      {
        v19 = v17[v18];
        if (v19 < 0 || v19 > (v16 - 9))
        {
          break;
        }

        if (++v18 == 19)
        {
          goto LABEL_23;
        }
      }
    }

    fig_log_get_emitter();
    DataPointer = FigSignalErrorAtGM();
    if (!DataPointer)
    {
LABEL_23:
      v20 = 0;
      *a5 = Instance;
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks_cold_2(&v24);
  v20 = v24;
LABEL_30:
  if (Instance)
  {
    CFRelease(Instance);
  }

LABEL_24:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v20;
}

void *__copy_assignment_8_8_t0w8_pa0_7864_8_pa0_3127_16_pa0_23876_24_pa0_18371_32(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  return result;
}

uint64_t FigPartialSampleTableCreateFromBlockBufferUsingOutOfBandObjectRegistry(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t *a4)
{
  v5[0] = 0;
  v5[1] = fpst_outOfBandRegistry_copyByteStreamTranslatedFromOutOfBandID;
  v5[2] = fpst_outOfBandRegistry_copyDataSourceTranslatedFromOutOfBandID;
  v5[3] = fpst_outOfBandRegistry_copyFormatDescriptionTranslatedFromOutOfBandID;
  v5[4] = 0;
  return FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks(a1, a2, v5, a3, a4);
}

uint64_t fpst_outOfBandRegistry_copyByteStreamTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(a1, @"ByteStream", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CMByteStreamBaseGetTypeID()))
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
    fpst_outOfBandRegistry_copyByteStreamTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpst_outOfBandRegistry_copyDataSourceTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(a1, @"DataSourceURL", a2, &cf);
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
    fpst_outOfBandRegistry_copyDataSourceTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpst_outOfBandRegistry_copyFormatDescriptionTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(a1, @"FormatDescription", a2, &cf);
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
    fpst_outOfBandRegistry_copyFormatDescriptionTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpst_accessor_stepByDecodeTimeInternal(uint64_t *a1, CMTime *a2, int a3, char *a4)
{
  if (!a1)
  {
    fpst_accessor_stepByDecodeTimeInternal_cold_3(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a2;
  v31 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v8;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    v32 = *a2;
    v39[0] = 0;
    time1 = *a2;
    *&time2.value = v31;
    time2.epoch = v8;
    result = CMTimeCompare(&time1, &time2);
    if (!result)
    {
      return result;
    }

    time1 = v32;
    *&time2.value = v31;
    time2.epoch = v8;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      v10 = a1[18];
      v11 = a1[10];
      result = fpst_reading_runSegmentAtIndex(*a1, 10, v11, v39);
      if (result)
      {
        return result;
      }

      v12 = *a1;
      dataPointerOut = 0;
      v13 = *(*(v12 + 16) + 88);
      if (v13 >= 1)
      {
        result = CMBlockBufferGetDataPointer(*(v12 + 24), v13, 0, 0, &dataPointerOut);
        if (result)
        {
          return result;
        }

        v14 = v39[0];
        if (!v39[0])
        {
          v20 = 0;
          v21 = 0;
LABEL_33:
          result = fpst_accessor_moveToSampleIndex(a1, v20);
          if (a4)
          {
            if (!result)
            {
              *a4 = v21;
            }
          }

          return result;
        }

        v15 = v11 + 1;
        while (1)
        {
          v35 = 0;
          v16 = *a1;
          if (v15 >= *dataPointerOut)
          {
            v17 = 0;
            v18 = (*(v16 + 16) + 8);
          }

          else
          {
            result = fpst_reading_runSegmentAtIndex(v16, 10, v15, &v35);
            if (result)
            {
              return result;
            }

            v17 = v35;
            v18 = v35;
          }

          v19 = *v18;
          memset(&time1, 0, sizeof(time1));
          time2 = *(v14 + 4);
          CMTimeMultiply(&time1, &time2, v19 - v10);
          time2 = time1;
          rhs = v32;
          if (CMTimeCompare(&time2, &rhs) >= 1)
          {
            break;
          }

          time2 = v32;
          rhs = time1;
          CMTimeSubtract(&v32, &time2, &rhs);
          ++v15;
          v10 = v19;
          v14 = v17;
          if (!v17)
          {
            v20 = v19 - 1;
            v21 = 1;
            goto LABEL_33;
          }
        }

        time2 = **&MEMORY[0x1E6960C70];
        rhs = v32;
        v33 = *(v14 + 4);
        v28 = CMTimeDivide();
        if (!a3 || (rhs = time2, *&v33.value = v31, v33.epoch = v8, !CMTimeCompare(&rhs, &v33)))
        {
          v21 = 0;
          v20 = v28 + v10;
          goto LABEL_33;
        }

LABEL_47:
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      return 4294949584;
    }

    fpst_accessor_stepByDecodeTimeInternal_cold_2(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a2;
  CMTimeAbsoluteValue(&v32, &time1);
  v39[0] = 0;
  time1 = v32;
  *&time2.value = v31;
  time2.epoch = v8;
  result = CMTimeCompare(&time1, &time2);
  if (!result)
  {
    return result;
  }

  time1 = v32;
  *&time2.value = v31;
  time2.epoch = v8;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    fpst_accessor_stepByDecodeTimeInternal_cold_1(&time1);
    return LODWORD(time1.value);
  }

  v22 = a1[18];
  v23 = a1[10];
  result = fpst_reading_runSegmentAtIndex(*a1, 10, v23, v39);
  if (result)
  {
    return result;
  }

  v24 = *a1;
  dataPointerOut = 0;
  v25 = *(*(v24 + 16) + 88);
  if (v25 < 1)
  {
    return 4294949584;
  }

  result = CMBlockBufferGetDataPointer(*(v24 + 24), v25, 0, 0, &dataPointerOut);
  if (result)
  {
    return result;
  }

  v26 = v39[0];
  if (v39[0])
  {
    while (1)
    {
      v35 = 0;
      v27 = *v26;
      memset(&time1, 0, sizeof(time1));
      time2 = *(v26 + 4);
      CMTimeMultiply(&time1, &time2, v22 - v27);
      time2 = time1;
      rhs = v32;
      if ((CMTimeCompare(&time2, &rhs) & 0x80000000) == 0)
      {
        break;
      }

      v22 = v27;
      rhs = v32;
      v33 = time1;
      CMTimeSubtract(&time2, &rhs, &v33);
      v32 = time2;
      if (v23 > 0)
      {
        result = fpst_reading_runSegmentAtIndex(*a1, 10, --v23, &v35);
        if (result)
        {
          return result;
        }

        v26 = v35;
        if (v35)
        {
          continue;
        }
      }

      result = fpst_accessor_moveToSampleIndex(a1, v27);
      if (!result)
      {
        *a4 = 1;
      }

      return result;
    }

    time2 = **&MEMORY[0x1E6960C70];
    rhs = v32;
    v33 = *(v26 + 4);
    v29 = CMTimeDivide();
    if (!a3 || (rhs = time2, *&v33.value = v31, v33.epoch = v8, !CMTimeCompare(&rhs, &v33)))
    {
      v30 = v22 - v29;
      return fpst_accessor_moveToSampleIndex(a1, v30);
    }

    goto LABEL_47;
  }

  v30 = 0;
  return fpst_accessor_moveToSampleIndex(a1, v30);
}

uint64_t FigPartialSampleTableAccessorStepInPresentationOrder(uint64_t *a1, uint64_t a2, void *a3, CMTime *a4)
{
  v5 = *MEMORY[0x1E6960C70];
  *&v25.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v25.epoch = v6;
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&v24.start.value = *MEMORY[0x1E6960C98];
  *&v24.start.epoch = v7;
  *&v24.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (a1)
  {
    v15 = v5;
    FigPartialSampleTableGetDecodeTimeRange(*a1, &v24, 0);
    v11 = 0;
    if (a2)
    {
      if (a2 > 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (a2 <= 0)
      {
        v13 = 32;
      }

      else
      {
        v13 = 8;
      }

      while (1)
      {
        v23 = 0;
        v22 = 0u;
        memset(v21, 0, sizeof(v21));
        v20 = 0;
        v18 = 0;
        result = fpst_reading_runSegmentAtIndex(*a1, 14, a1[14], &v20);
        if (result)
        {
          break;
        }

        v19 = *(v20 + v13);
        result = FigPartialSampleTableAccessorGetSampleTiming(a1, v21);
        if (result)
        {
          break;
        }

        *&lhs.start.value = v22;
        lhs.start.epoch = v23;
        rhs = v19;
        CMTimeAdd(&v25, &lhs.start, &rhs);
        lhs = v24;
        rhs = v25;
        if (!CMTimeRangeContainsTime(&lhs, &rhs))
        {
          if (!a4)
          {
            goto LABEL_19;
          }

          result = 0;
          *a4 = v25;
          break;
        }

        lhs.start = v19;
        result = fpst_accessor_stepByDecodeTimeInternal(a1, &lhs.start, 1, &v18);
        if (result)
        {
          break;
        }

        if (v18)
        {
          FigPartialSampleTableAccessorStepInPresentationOrder_cold_1(&lhs);
          result = LODWORD(lhs.start.value);
          break;
        }

        v11 += v12;
        if (a2 == v11)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      if (a4)
      {
        result = 0;
        *&a4->value = v15;
        a4->epoch = v6;
      }

      else
      {
LABEL_19:
        result = 0;
      }
    }
  }

  else
  {
    FigPartialSampleTableAccessorStepInPresentationOrder_cold_2(v21);
    v11 = 0;
    result = LODWORD(v21[0]);
  }

  if (a3)
  {
    if (!result)
    {
      *a3 = v11;
    }
  }

  return result;
}

uint64_t FigPartialSampleTableGetDecodeTimeRange(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v22.start.value = *MEMORY[0x1E6960C98];
  *&v22.start.epoch = v3;
  *&v22.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v20 = *MEMORY[0x1E6960C70];
  v21 = *(MEMORY[0x1E6960C70] + 16);
  if (!a2)
  {
    FigPartialSampleTableGetDecodeTimeRange_cold_3(v17);
LABEL_22:
    v7 = 0;
    value_low = LODWORD(v17[0].value);
    goto LABEL_10;
  }

  if (!a1)
  {
    FigPartialSampleTableGetDecodeTimeRange_cold_2(v17);
    goto LABEL_22;
  }

  if ((*(a1 + 116) & 1) == 0 || (*(a1 + 140) & 1) == 0 || *(a1 + 144) || (*(a1 + 128) & 0x8000000000000000) != 0)
  {
    memset(v17, 0, sizeof(v17));
    SampleTiming = FigPartialSampleTableCreateAccessorAtIndex(a1, 0, &v25);
    v7 = v25;
    if (SampleTiming)
    {
      goto LABEL_19;
    }

    SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v25, v17);
    if (SampleTiming)
    {
      goto LABEL_19;
    }

    v19 = v17[2];
    SampleTiming = FigPartialSampleTableAccessorStepInDecodeOrder(v7, *(*(a1 + 16) + 8) - 1, &v24);
    if (SampleTiming)
    {
      goto LABEL_19;
    }

    if (v24 != *(*(a1 + 16) + 8) - 1)
    {
      FigPartialSampleTableGetDecodeTimeRange_cold_1(&lhs);
      value_low = LODWORD(lhs.value);
      goto LABEL_10;
    }

    SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v7, v17);
    if (SampleTiming || (v18 = v17[2], SampleTiming = fpst_reading_runSegmentAtIndex(*v7, 10, v7[10], &v23), SampleTiming))
    {
LABEL_19:
      value_low = SampleTiming;
      goto LABEL_10;
    }

    v13 = v23;
    lhs = v18;
    v15 = *(v23 + 32);
    CMTimeAdd(&v18, &lhs, &v15);
    lhs = v19;
    v15 = v18;
    CMTimeRangeFromTimeToTime(&v22, &lhs, &v15);
    v20 = *(v13 + 32);
    v21 = *(v13 + 48);
    if (!*(a1 + 176))
    {
      v14 = *&v22.start.epoch;
      *(a1 + 104) = *&v22.start.value;
      *(a1 + 120) = v14;
      *(a1 + 136) = *&v22.duration.timescale;
      *(a1 + 80) = v20;
      *(a1 + 96) = v21;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 120);
    *&v22.start.value = *(a1 + 104);
    *&v22.start.epoch = v8;
    *&v22.duration.timescale = *(a1 + 136);
    v20 = *(a1 + 80);
    v21 = *(a1 + 96);
  }

  v9 = *&v22.start.epoch;
  *a2 = *&v22.start.value;
  a2[1] = v9;
  a2[2] = *&v22.duration.timescale;
  value_low = 0;
  if (a3)
  {
    *a3 = v20;
    *(a3 + 16) = v21;
  }

LABEL_10:
  FigPartialSampleTableAccessorDestroy(v7);
  return value_low;
}

uint64_t FigPartialSampleTableAccessorGetSampleTiming(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  if (a1)
  {
    if (a2)
    {
      v13 = *MEMORY[0x1E6960C70];
      *&v17.value = *MEMORY[0x1E6960C70];
      v4 = *(MEMORY[0x1E6960C70] + 16);
      v17.epoch = v4;
      v5 = fpst_reading_runSegmentAtIndex(*a1, 10, a1[10], &v18);
      if (v5)
      {
        return v5;
      }

      v6 = v18;
      v7 = a1[18] - *v18;
      if (v7 >= 0x80000000)
      {
        FigPartialSampleTableAccessorGetSampleTiming_cold_1(&rhs);
        return LODWORD(rhs.value);
      }

      time = *(v18 + 32);
      CMTimeMultiply(&rhs, &time, v7);
      v8 = *(v6 + 8);
      time.epoch = *(v6 + 24);
      *&time.value = v8;
      CMTimeAdd(&v17, &time, &rhs);
      *(a2 + 48) = v17;
      v5 = fpst_reading_runSegmentAtIndex(*a1, 11, a1[11], &v18);
      if (v5)
      {
        return v5;
      }

      else
      {
        v9 = *(v18 + 24);
        *a2 = *(v18 + 8);
        *(a2 + 16) = v9;
        *&rhs.value = v13;
        rhs.epoch = v4;
        v10 = fpst_reading_runSegmentAtIndex(*a1, 12, a1[12], &v18);
        if (!v10)
        {
          time = v17;
          v11 = *(v18 + 8);
          v14.epoch = *(v18 + 24);
          *&v14.value = v11;
          CMTimeAdd(&rhs, &time, &v14);
          *(a2 + 24) = rhs;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigPartialSampleTableAccessorGetSampleTiming_cold_2(&v17);
    return LODWORD(v17.value);
  }

  return v10;
}

uint64_t FigPartialSampleTableAccessorGetMinimumUpcomingPresentationTime(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!a1)
  {
    FigPartialSampleTableAccessorGetMinimumUpcomingPresentationTime_cold_1(v17);
    return LODWORD(v17[0].value);
  }

  if ((*(*(*a1 + 16) + 1) & 2) == 0)
  {
    return 4294949584;
  }

  if (!a3)
  {
    return 0;
  }

  result = fpst_reading_runSegmentAtIndex(*a1, 16, a1[16], &v18);
  if (!result)
  {
    v8 = v18;
    v9 = *(v18 + 24);
    *a3 = *(v18 + 8);
    *(a3 + 16) = v9;
    v19 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v8 + 44);
    v12 = *(v8 + 48);
    *a4 = v19;
    v20 = v10;
    *(a4 + 8) = v10;
    *(a4 + 12) = v11;
    *(a4 + 16) = v12;
    if (a2)
    {
      if (v11)
      {
        memset(v17, 0, sizeof(v17));
        FigPartialSampleTableAccessorGetSampleTiming(a2, v17);
        time1.timescale = v20;
        time1.flags = v11;
        time1.epoch = v12;
        v15 = v17[2];
        time1.value = v19;
        if (CMTimeCompare(&time1, &v15) >= 1)
        {
          v13 = MEMORY[0x1E6960C88];
          *a3 = *MEMORY[0x1E6960C88];
          v14 = MEMORY[0x1E6960C70];
          *(a3 + 16) = *(v13 + 16);
          *a4 = *v14;
          *(a4 + 16) = *(v14 + 16);
          return 4294949584;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t FigPartialSampleTableAccessorGetPresentationTimeRange(uint64_t *a1, _OWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!a1)
  {
    FigPartialSampleTableAccessorGetPresentationTimeRange_cold_1(v13);
    return LODWORD(v13[0].value);
  }

  if (!a2)
  {
    return 0;
  }

  v4 = MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v5;
  a2[2] = *(v4 + 32);
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  result = FigPartialSampleTableAccessorGetSampleTiming(a1, v13);
  if (!result)
  {
    result = fpst_reading_runSegmentAtIndex(*a1, 12, a1[12], &v16);
    if (!result)
    {
      v17 = *(v16 + 32);
      v7 = *(v16 + 44);
      v18 = *(v16 + 40);
      if ((v7 & 0x1D) == 1)
      {
        v8 = *(v16 + 48);
        time1.start.value = *(v16 + 32);
        time1.start.timescale = *(v16 + 40);
        time1.start.flags = v7;
        time1.start.epoch = v8;
        time2 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&time1.start, &time2))
        {
          time2 = v13[1];
          duration.value = v17;
          duration.timescale = v18;
          duration.flags = v7;
          duration.epoch = v8;
          CMTimeRangeMake(&time1, &time2, &duration);
          v9 = *&time1.start.epoch;
          *a2 = *&time1.start.value;
          a2[1] = v9;
          a2[2] = *&time1.duration.timescale;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t FigPartialSampleTableAccessorCopy(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*a1)
      {
        v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x102004019573705uLL);
        v5 = *(a1 + 16);
        *v4 = *a1;
        v4[1] = v5;
        v6 = *(a1 + 80);
        v8 = *(a1 + 32);
        v7 = *(a1 + 48);
        v4[4] = *(a1 + 64);
        v4[5] = v6;
        v4[2] = v8;
        v4[3] = v7;
        v10 = *(a1 + 112);
        v9 = *(a1 + 128);
        v11 = *(a1 + 96);
        *(v4 + 18) = *(a1 + 144);
        v4[7] = v10;
        v4[8] = v9;
        v4[6] = v11;
        CFRetain(*v4);
        result = 0;
        *a2 = v4;
      }

      else
      {
        FigPartialSampleTableAccessorCopy_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      FigPartialSampleTableAccessorCopy_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    FigPartialSampleTableAccessorCopy_cold_3(&v15);
    return v15;
  }

  return result;
}

void FigPartialSampleTableAccessorDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t FigPartialSampleTableGetSampleCount(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (a1)
    {
      result = 0;
      *a2 = *(*(a1 + 16) + 8);
    }

    else
    {
      FigPartialSampleTableGetSampleCount_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigPartialSampleTableGetSampleCount_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigPartialSampleTableRecommendSampleTableFlagsForCursor(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a3)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFFBFLL;
    if ((a1 & 8) != 0)
    {
      if ((a1 & 0x10) != 0 && !*(*(CMBaseObjectGetVTable() + 16) + 192))
      {
        v5 = a1 & 0xFFFFFFFFFFFFFFAFLL;
      }

      if ((v5 & 0x10) == 0 && !*(*(CMBaseObjectGetVTable() + 16) + 144))
      {
        v5 &= 0xFFFFFFFFFFFFFFA7;
      }
    }

    else if ((a1 & 0x10) != 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFFFA7;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFDLL;
    if ((v5 & 4) != 0 && !*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFF9;
    }

    if ((v6 & 0x100) != 0 && !*(*(CMBaseObjectGetVTable() + 16) + 200))
    {
      v6 &= 0xFFFFFFFFFFFFFEFDLL;
    }

    result = 0;
    *a3 = v6 & 0xFFFFFFFFFFFFFFDFLL;
  }

  else
  {
    FigPartialSampleTableRecommendSampleTableFlagsForCursor_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes(void *a1, void *a2)
{
  if (!a1)
  {
    FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes_cold_2(&v6);
    return v6;
  }

  result = 0;
  if (a2 && a1[18] != -1)
  {
    v5 = *(*a1 + 64);
    if (v5)
    {
      result = v5(*(*a1 + 72));
      if (!result)
      {
        *a2 = 0;
      }

      return result;
    }

    FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer(const void *a1, OpaqueCMBlockBuffer *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned __int8 a8, int a9, int a10, CMTimeValue *a11, _DWORD *a12, char *a13)
{
  v190 = *MEMORY[0x1E69E9840];
  v162 = 0;
  v163 = 0;
  cf = 0;
  v161 = 0;
  v13 = MEMORY[0x1E6960C70];
  v159 = 0;
  v178 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (a10 > 0)
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    v147 = *(MEMORY[0x1E6960C70] + 16);
    if (a10 >= a9)
    {
      v17 = a9;
    }

    else
    {
      v17 = a10;
    }

    v140 = v17;
    v139 = *MEMORY[0x1E695E480];
    v152 = a10;
    v142 = a8;
    if (a6 && a8 >= 1 && (dictionaryRepresentation = 0, FigBaseObject = FigSampleCursorGetFigBaseObject(a1), (v19 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v19(FigBaseObject, @"CursorPlayableHorizon", v139, &dictionaryRepresentation);
      v137 = v147;
      if (!dictionaryRepresentation)
      {
LABEL_14:
        v22 = 0;
        v153 = 0;
        v150 = 0;
        v23 = 0;
        v136 = a3 + 3;
        v154 = -1;
        v145 = (a3 + 1);
        v146 = 1;
        v24 = *v13;
        v144 = (a3 + 2);
        v149 = *v13;
LABEL_15:
        *&v158.value = v24;
        v158.epoch = v147;
        v25 = FigPartialSampleTableCreateForWriting(v139, a2, a5, &v163);
        if (v25)
        {
          goto LABEL_334;
        }

        v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v26)
        {
          goto LABEL_318;
        }

        v25 = v26(a1, &v162);
        if (v25)
        {
          goto LABEL_334;
        }

        v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        v28 = v152;
        if (!v27)
        {
          goto LABEL_318;
        }

        v25 = v27(a1, &v158);
        if (v25)
        {
LABEL_334:
          value_low = v25;
          goto LABEL_319;
        }

        v29 = v142;
        if ((v142 & 0x80) != 0)
        {
          v30 = a7;
          if ((*(a7 + 12) & 1) == 0)
          {
            goto LABEL_53;
          }

          if ((*(a7 + 36) & 1) == 0)
          {
            goto LABEL_53;
          }

          if (*(a7 + 40))
          {
            goto LABEL_53;
          }

          if ((*(a7 + 24) & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v134 = *(a7 + 16);
          *&range.start.value = *a7;
          *&range.start.epoch = v134;
          *&range.duration.timescale = *(a7 + 32);
          CMTimeRangeGetEnd(time1, &range);
          range.start = v158;
          if (CMTimeCompare(&range.start, time1) < 0)
          {
            goto LABEL_53;
          }

          v29 = 1;
        }

        else
        {
          v30 = a7;
          if (!v142)
          {
            if (a1)
            {
              v60 = CFRetain(a1);
            }

            else
            {
              v60 = 0;
            }

            v142 = 0;
LABEL_106:
            cf = v60;
LABEL_107:
            v64 = v162;
            v65 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v65)
            {
              goto LABEL_318;
            }

            v25 = v65(v64, &v161);
            if (!v25)
            {
              v66 = v161;
              v67 = *(*(CMBaseObjectGetVTable() + 16) + 168);
              if (v67)
              {
                v25 = v67(v66, 1, &v159);
                if (v28 == 1 && v25 == -12840)
                {
                  v23 = 1;
                }

                if (v25)
                {
                  v69 = v25 == -12840;
                }

                else
                {
                  v69 = 1;
                }

                if (!v69)
                {
                  goto LABEL_334;
                }

                if (v159 != 1 && v161)
                {
                  CFRelease(v161);
                  v161 = 0;
                }

                v151 = 0;
                v70 = 0;
                while (1)
                {
                  v71 = v22;
                  v155 = 0;
                  v72 = v161;
                  if (!v161)
                  {
                    if (v150)
                    {
                      FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_1(&range);
                      goto LABEL_337;
                    }

                    v150 = 1;
                  }

                  v74 = v162;
                  v73 = v163;
                  v189 = 0u;
                  memset(v188, 0, sizeof(v188));
                  memset(v187, 0, sizeof(v187));
                  memset(v186, 0, sizeof(v186));
                  memset(v185, 0, sizeof(v185));
                  memset(v184, 0, sizeof(v184));
                  v182 = 0u;
                  memset(v183, 0, sizeof(v183));
                  v181 = 0u;
                  memset(&range, 0, sizeof(range));
                  lhs.value = 0;
                  rhs.value = 0;
                  v175 = 0;
                  dictionaryRepresentation = 0;
                  v173 = 0;
                  v174 = 0;
                  if ((a5 & 8) != 0)
                  {
                    v75 = 0;
                    v76 = 0;
                    *time1 = 0;
                    v172 = 0;
                    if ((a5 & 0x10) == 0)
                    {
                      v77 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                      if (!v77)
                      {
                        goto LABEL_206;
                      }

                      v78 = v77(v74, time1, &v172, &lhs, &rhs);
                      if (v78)
                      {
                        goto LABEL_176;
                      }

                      v76 = *time1;
                      v75 = v172;
                    }

                    range.start.value = v76;
                    *&range.start.timescale = v75;
                    range.start.epoch = 0;
                    range.duration.value = 0;
                  }

                  if ((a5 & 4) != 0)
                  {
                    *time1 = 0;
                    v171 = 0;
                    v172 = 0;
                    v170 = 0;
                    v169 = 0;
                    v168 = 0;
                    v80 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                    if (!v80)
                    {
                      goto LABEL_206;
                    }

                    v78 = v80(v74, &v175, &v174, time1, &v172, &v171, &v170, &v169 + 1, &v169, &v168);
                    if (v78)
                    {
                      goto LABEL_176;
                    }

                    BYTE10(v181) = v168;
                    BYTE8(v181) = HIBYTE(v169);
                    BYTE9(v181) = v169;
                    *&v181 = v171;
                    *&range.duration.timescale = *time1;
                    range.duration.epoch = v172;
                    *&v182 = v170;
                    if (rhs.value)
                    {
                      if (rhs.value != v174)
                      {
                        v81 = 3538;
LABEL_181:
                        FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_2(v81, &v177);
                        value_low = v177;
                        goto LABEL_207;
                      }
                    }

                    else
                    {
                      rhs.value = v174;
                      v174 = 0;
                    }

                    value = lhs.value;
                    v90 = v175;
                    if (lhs.value)
                    {
                      if (lhs.value != v175)
                      {
                        v81 = 3546;
                        goto LABEL_181;
                      }
                    }

                    else
                    {
                      lhs.value = v175;
                      v175 = 0;
                      value = v90;
                    }
                  }

                  else
                  {
                    value = lhs.value;
                  }

                  if (value)
                  {
                    *time1 = 0;
                    if (!*v145)
                    {
                      FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_3(&v172);
LABEL_185:
                      value_low = v172;
                      goto LABEL_207;
                    }

                    v78 = (*v145)(a4);
                    if (v78)
                    {
                      goto LABEL_176;
                    }

                    *(&v182 + 1) = *time1;
                  }

                  else
                  {
                    *(&v182 + 1) = 0;
                  }

                  if (rhs.value)
                  {
                    *time1 = 0;
                    if (!*v144)
                    {
                      FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_4(&v172);
                      goto LABEL_185;
                    }

                    v78 = (*v144)(a4);
                    if (v78)
                    {
                      goto LABEL_176;
                    }

                    v183[0] = *time1;
                  }

                  else
                  {
                    v183[0] = 0;
                  }

                  v167 = 0;
                  v165 = 0u;
                  v166 = 0u;
                  memset(time1, 0, sizeof(time1));
                  v82 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                  if (!v82)
                  {
                    goto LABEL_206;
                  }

                  v78 = v82(v74, &v166);
                  if (!v78)
                  {
                    v83 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (!v83)
                    {
                      goto LABEL_206;
                    }

                    v78 = v83(v74, &time1[24]);
                    if (!v78)
                    {
                      v84 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                      if (!v84)
                      {
                        goto LABEL_206;
                      }

                      v78 = v84(v74, time1);
                      if (!v78)
                      {
                        *&v183[3] = *&time1[16];
                        *&v183[5] = v165;
                        *&v183[7] = v166;
                        v183[9] = v167;
                        *&v183[1] = *time1;
                        if ((a5 & 0x100) == 0 || !*(*(CMBaseObjectGetVTable() + 16) + 200))
                        {
                          goto LABEL_161;
                        }

                        v85 = *(*(CMBaseObjectGetVTable() + 16) + 200);
                        if (!v85)
                        {
                          goto LABEL_206;
                        }

                        v78 = v85(v74, v186, &v186[1] + 8);
                        if (!v78)
                        {
LABEL_161:
                          if ((a5 & 0x200) != 0)
                          {
                            FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(v74, 0, v187, &v187[1]);
                          }

                          if (!v72)
                          {
                            goto LABEL_166;
                          }

                          v86 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                          if (!v86)
                          {
                            goto LABEL_206;
                          }

                          v78 = v86(v72, v185);
                          if (!v78)
                          {
LABEL_166:
                            if ((a5 & 0x80) == 0)
                            {
                              goto LABEL_167;
                            }

                            v172 = 0;
                            v91 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                            if (!v91)
                            {
                              goto LABEL_206;
                            }

                            v78 = v91(v74, &v173);
                            if (!v78)
                            {
                              v92 = v173;
                              v93 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                              if (!v93 || v93(v92, 1, &v172) || v172 != 1)
                              {
                                goto LABEL_341;
                              }

                              v94 = v173;
                              v95 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                              if (!v95)
                              {
                                goto LABEL_206;
                              }

                              v78 = v95(v94, v184);
                              if (!v78)
                              {
                                v96 = v173;
                                v97 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                                if (!v97)
                                {
                                  goto LABEL_206;
                                }

                                v78 = v97(v96, &v185[1] + 8);
                                if (!v78)
                                {
LABEL_341:
                                  if (v173)
                                  {
                                    CFRelease(v173);
                                    v173 = 0;
                                  }

                                  v98 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                  if (!v98)
                                  {
LABEL_206:
                                    value_low = 4294954514;
                                    goto LABEL_207;
                                  }

                                  v78 = v98(v74, &v173);
                                  if (!v78)
                                  {
                                    v99 = v173;
                                    v100 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                                    if (!v100 || v100(v99, -1, &v172) || v172 != -1)
                                    {
                                      goto LABEL_204;
                                    }

                                    v101 = v173;
                                    v102 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                                    if (!v102)
                                    {
                                      goto LABEL_206;
                                    }

                                    v78 = v102(v101, &v184[1] + 8);
                                    if (!v78)
                                    {
LABEL_204:
                                      if (v173)
                                      {
                                        CFRelease(v173);
                                        v173 = 0;
                                      }

LABEL_167:
                                      if (a5)
                                      {
                                        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                                        {
                                          v87 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                          if (v87)
                                          {
                                            v87(v74, v188, &v188[1], &v188[4], &v188[2]);
                                          }
                                        }
                                      }

                                      *time1 = 0;
                                      if (!*v136)
                                      {
                                        FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_5(&v172);
                                        goto LABEL_185;
                                      }

                                      v88 = *(*(CMBaseObjectGetVTable() + 16) + 160);
                                      if (!v88)
                                      {
                                        goto LABEL_206;
                                      }

                                      v78 = v88(v74, &dictionaryRepresentation);
                                      if (!v78)
                                      {
                                        v78 = (*v136)(a4, dictionaryRepresentation, time1);
                                        if (!v78)
                                        {
                                          *(&v189 + 1) = *time1;
                                          FigPartialSampleTableTryAppendSampleInformation(v73, &range, &v155);
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
                  }

LABEL_176:
                  value_low = v78;
LABEL_207:
                  if (lhs.value)
                  {
                    CFRelease(lhs.value);
                  }

                  if (v175)
                  {
                    CFRelease(v175);
                  }

                  if (rhs.value)
                  {
                    CFRelease(rhs.value);
                  }

                  if (v174)
                  {
                    CFRelease(v174);
                  }

                  if (dictionaryRepresentation)
                  {
                    CFRelease(dictionaryRepresentation);
                  }

                  if (v173)
                  {
                    CFRelease(v173);
                  }

                  if (value_low)
                  {
                    goto LABEL_319;
                  }

                  v103 = v155;
                  v104 = v161;
                  if (v155 < 2)
                  {
                    goto LABEL_229;
                  }

                  if (!v161)
                  {
                    v146 = 0;
                    goto LABEL_236;
                  }

                  v105 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                  if (!v105)
                  {
                    break;
                  }

                  v106 = v105(v104, v103 - 1, &v159);
                  if (v106)
                  {
                    value_low = v106;
                    if (v106 != -12840)
                    {
                      goto LABEL_319;
                    }
                  }

                  v146 = 0;
                  v104 = v161;
                  if (v159 == v103 - 1 || !v161)
                  {
LABEL_229:
                    if (v104 && (flags & 0x1D) == 1)
                    {
                      *&range.start.value = v149;
                      range.start.epoch = v147;
                      v107 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                      if (v107)
                      {
                        v107(v104, &range);
                      }

                      if ((range.start.flags & 0x1D) == 1)
                      {
                        *time1 = *&range.start.value;
                        *&time1[16] = range.start.epoch;
                        lhs.value = v178;
                        lhs.timescale = timescale;
                        lhs.flags = flags;
                        lhs.epoch = v137;
                        v153 = CMTimeCompare(time1, &lhs) >= 0;
                      }

                      else
                      {
                        v153 = 0;
                      }
                    }
                  }

                  else
                  {
                    CFRelease(v161);
                    v146 = 0;
                    v161 = 0;
                  }

LABEL_236:
                  if (v154 != -1 || v155 < 1)
                  {
                    goto LABEL_247;
                  }

                  v108 = v162;
                  v109 = *(CMBaseObjectGetVTable() + 16);
                  if (v109)
                  {
                    v110 = v109;
                    if (!a1)
                    {
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    v110 = 0;
                    if (!a1)
                    {
                      goto LABEL_244;
                    }
                  }

                  v111 = *(CMBaseObjectGetVTable() + 16);
                  if (!v111)
                  {
LABEL_244:
                    v112 = 0;
                    goto LABEL_245;
                  }

                  v112 = v111;
LABEL_245:
                  if (v110 == v112 && *(v110 + 32) && (*(v112 + 32))(v108, a1))
                  {
                    if (v155 >= 2)
                    {
                      v125 = v161;
                      if (!v161)
                      {
                        goto LABEL_290;
                      }

                      v126 = *(CMBaseObjectGetVTable() + 16);
                      if (v126)
                      {
                        v127 = v126;
                        if (!a1)
                        {
LABEL_285:
                          v129 = 0;
                          goto LABEL_286;
                        }
                      }

                      else
                      {
                        v127 = 0;
                        if (!a1)
                        {
                          goto LABEL_285;
                        }
                      }

                      v128 = *(CMBaseObjectGetVTable() + 16);
                      if (!v128)
                      {
                        goto LABEL_285;
                      }

                      v129 = v128;
LABEL_286:
                      if (v127 == v129 && *(v127 + 32) && (*(v129 + 32))(v125, a1) == 1)
                      {
LABEL_290:
                        range.start.value = 0;
                        *time1 = 0;
                        lhs.value = 0;
                        rhs.value = 0;
                        v130 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                        if (!v130)
                        {
                          break;
                        }

                        v25 = v130(a1, 0, 0, &lhs, 0, 0, &range, 0, 0, 0);
                        if (v25)
                        {
                          goto LABEL_334;
                        }

                        v131 = v162;
                        v132 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                        if (!v132)
                        {
                          break;
                        }

                        v25 = v132(v131, 0, 0, &rhs, 0, 0, time1, 0, 0, 0);
                        if (v25)
                        {
                          goto LABEL_334;
                        }

                        if (rhs.value != lhs.value)
                        {
                          FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_6(&dictionaryRepresentation);
                          value_low = dictionaryRepresentation;
                          goto LABEL_319;
                        }

                        v154 = range.start.value + v70 - *time1;
                        v151 = 1;
                        goto LABEL_247;
                      }
                    }

                    v154 = -1;
                    goto LABEL_247;
                  }

                  v151 = 1;
                  v154 = v70;
LABEL_247:
                  if (v23)
                  {
                    v154 = v155 - 1;
                    goto LABEL_316;
                  }

                  if (v153 && v151)
                  {
                    goto LABEL_316;
                  }

                  v113 = v161;
                  if (v161)
                  {
                    v114 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                    if (!v114)
                    {
                      break;
                    }

                    v115 = v114(v113, 1, &v159);
                    if (v115)
                    {
                      value_low = v115;
                      if (v115 != -12840)
                      {
                        goto LABEL_319;
                      }
                    }

                    if (v159 != 1 && v161)
                    {
                      CFRelease(v161);
                      v161 = 0;
                    }
                  }

                  v116 = cf;
                  if (cf)
                  {
                    v117 = v162;
                    v118 = *(CMBaseObjectGetVTable() + 16);
                    if (v118)
                    {
                      v119 = v118;
                    }

                    else
                    {
                      v119 = 0;
                    }

                    v121 = *(CMBaseObjectGetVTable() + 16);
                    if (v121)
                    {
                      v122 = v121;
                    }

                    else
                    {
                      v122 = 0;
                    }

                    v120 = v119 == v122 && *(v119 + 32) && (*(v122 + 32))(v117, v116) == -1;
                  }

                  else
                  {
                    v120 = 1;
                  }

                  v123 = v162;
                  v124 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                  if (v124)
                  {
                    LOBYTE(v124) = v124(v123, v103, &v159) == 0;
                  }

                  if (v103 > 0 && v120 && ((v71 < v152) & v124) == 1)
                  {
                    v70 += v103;
                    v22 = v71 + 1;
                    if (v159 == v103)
                    {
                      continue;
                    }
                  }

                  if (!v151)
                  {
                    v133 = 0;
                    v140 = 0;
                    v152 = 1;
                    goto LABEL_299;
                  }

LABEL_316:
                  FigPartialSampleTableFinishWriting(v163);
                  if (v25)
                  {
                    goto LABEL_334;
                  }

                  v133 = 1;
LABEL_299:
                  if (v162)
                  {
                    CFRelease(v162);
                    v162 = 0;
                  }

                  if (v161)
                  {
                    CFRelease(v161);
                    v161 = 0;
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v163)
                  {
                    CFRelease(v163);
                    v163 = 0;
                  }

                  v22 = v71 + 1;
                  v24 = v149;
                  if (v133)
                  {
                    if (a12)
                    {
                      *a12 = v71 + 1;
                    }

                    if (a11)
                    {
                      *a11 = v154;
                    }

                    value_low = 0;
                    if (a13)
                    {
                      *a13 = v146;
                    }

                    goto LABEL_319;
                  }

                  goto LABEL_15;
                }
              }

LABEL_318:
              value_low = 4294954514;
              goto LABEL_319;
            }

            goto LABEL_334;
          }
        }

        v142 = v29;
        if ((*(v30 + 12) & 1) != 0 && (*(v30 + 36) & 1) != 0 && !*(v30 + 40) && (*(v30 + 24) & 0x8000000000000000) == 0)
        {
          range.start = v158;
          *time1 = *v30;
          *&time1[16] = *(v30 + 16);
          if (CMTimeCompare(&range.start, time1) <= 0)
          {
            v142 = 255;
LABEL_53:
            v43 = v162;
            v44 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (v44)
            {
              v44(v43, -15, 0);
            }

            v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v45)
            {
              goto LABEL_318;
            }

            v25 = v45(a1, &cf);
            if (v25)
            {
              goto LABEL_334;
            }

            v46 = a7;
            if (v140 >= 1)
            {
              v47 = 1;
              while ((*(v46 + 12) & 1) != 0 && (*(v46 + 36) & 1) != 0 && !*(v46 + 40) && (*(v46 + 24) & 0x8000000000000000) == 0)
              {
                v55 = cf;
                v56 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (!v56)
                {
                  goto LABEL_318;
                }

                v25 = v56(v55, &v158);
                if (v25)
                {
                  goto LABEL_334;
                }

                v46 = a7;
                *&range.start.value = *a7;
                range.start.epoch = *(a7 + 16);
                *time1 = v158;
                if (CMTimeCompare(&range.start, time1) < 1)
                {
                  goto LABEL_81;
                }

LABEL_69:
                v52 = cf;
                v53 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                if (v53)
                {
                  v53(v52, 1, &v159);
                }

                if (v159 == 1)
                {
                  v38 = v47++ < v140;
                  if (v38)
                  {
                    continue;
                  }
                }

                goto LABEL_84;
              }

              if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
              {
                goto LABEL_84;
              }

              v48 = cf;
              v49 = *(CMBaseObjectGetVTable() + 16);
              if (v49)
              {
                v50 = v49;
                if (a1)
                {
LABEL_65:
                  v51 = *(CMBaseObjectGetVTable() + 16);
LABEL_68:
                  if (v50 == v51)
                  {
                    v54 = *(v50 + 80);
                    if (v54)
                    {
                      if (v54(v48, a1, 1))
                      {
                        goto LABEL_81;
                      }
                    }
                  }

                  goto LABEL_69;
                }
              }

              else
              {
                v50 = 0;
                if (a1)
                {
                  goto LABEL_65;
                }
              }

              v51 = 0;
              goto LABEL_68;
            }

LABEL_84:
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v28 = v152;
            if (a1)
            {
              v60 = CFRetain(a1);
            }

            else
            {
              v60 = 0;
            }

            goto LABEL_106;
          }
        }

        if (v140 < 1)
        {
LABEL_82:
          v57 = v162;
          v58 = *(CMBaseObjectGetVTable() + 16);
          if (v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0;
          }

          v28 = v152;
          if (v57 && (v61 = *(CMBaseObjectGetVTable() + 16)) != 0)
          {
            v62 = v61;
          }

          else
          {
            v62 = 0;
          }

          if (v59 == v62 && *(v59 + 32) && (*(v62 + 32))(a1, v57))
          {
            if (v162)
            {
              CFRelease(v162);
              v162 = 0;
            }

            v63 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v63)
            {
              goto LABEL_318;
            }

            v25 = v63(a1, &v162);
            if (v25)
            {
              goto LABEL_334;
            }
          }

          goto LABEL_107;
        }

        v31 = 1;
        while (1)
        {
          if ((*(v30 + 12) & 1) != 0 && (*(v30 + 36) & 1) != 0 && !*(v30 + 40) && (*(v30 + 24) & 0x8000000000000000) == 0)
          {
            v40 = v162;
            v41 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (!v41)
            {
              goto LABEL_318;
            }

            v25 = v41(v40, &v158);
            if (v25)
            {
              goto LABEL_334;
            }

            v30 = a7;
            v42 = *(a7 + 16);
            *&range.start.value = *a7;
            *&range.start.epoch = v42;
            *&range.duration.timescale = *(a7 + 32);
            CMTimeRangeGetEnd(time1, &range);
            range.start = v158;
            if ((CMTimeCompare(time1, &range.start) & 0x80000000) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_37;
          }

          if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
          {
            goto LABEL_82;
          }

          v32 = v162;
          v33 = *(CMBaseObjectGetVTable() + 16);
          if (v33)
          {
            v34 = v33;
            if (!a1)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v34 = 0;
            if (!a1)
            {
LABEL_35:
              v35 = 0;
              goto LABEL_36;
            }
          }

          v35 = *(CMBaseObjectGetVTable() + 16);
LABEL_36:
          if (v34 == v35)
          {
            v39 = *(v34 + 80);
            if (v39)
            {
              if (v39(v32, a1, 0))
              {
LABEL_81:
                v28 = v152;
                goto LABEL_107;
              }
            }
          }

LABEL_37:
          v36 = v162;
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (v37)
          {
            v37(v36, -1, &v159);
          }

          if (v159 == -1)
          {
            v38 = v31++ < v140;
            if (v38)
            {
              continue;
            }
          }

          goto LABEL_82;
        }
      }

      *&range.start.value = *v13;
      range.start.epoch = v147;
      memset(time1, 0, 24);
      CMTimeMakeFromDictionary(time1, dictionaryRepresentation);
      CFRelease(dictionaryRepresentation);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v20)
      {
        v20(a1, &range);
      }

      lhs = range.start;
      rhs = *time1;
      CMTimeAdd(&v158, &lhs, &rhs);
      v178 = v158.value;
      flags = v158.flags;
      timescale = v158.timescale;
      epoch = v158.epoch;
    }

    else
    {
      epoch = v147;
    }

    v137 = epoch;
    goto LABEL_14;
  }

  FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_7(&range);
LABEL_337:
  value_low = LODWORD(range.start.value);
LABEL_319:
  if (v162)
  {
    CFRelease(v162);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v163)
  {
    CFRelease(v163);
  }

  return value_low;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryGetTypeID()
{
  if (FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_sRegisterFigPartialSampleTableOutOfBandObjectRegistryTypeOnce != -1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_cold_1();
  }

  return sFigPartialSampleTableOutOfBandObjectRegistryID;
}

uint64_t registerFigPartialSampleTableOutOfBandObjectRegistryType()
{
  result = _CFRuntimeRegisterClass();
  sFigPartialSampleTableOutOfBandObjectRegistryID = result;
  return result;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_sRegisterFigPartialSampleTableOutOfBandObjectRegistryTypeOnce != -1)
    {
      FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v4[3] = Mutable;
      if (Mutable)
      {
        v6 = FigSimpleMutexCreate();
        v4[2] = v6;
        if (v6)
        {
          result = 0;
          *a2 = v4;
          return result;
        }

        v8 = 4520;
      }

      else
      {
        v8 = 4517;
      }

      FigPartialSampleTableOutOfBandObjectRegistryCreate_cold_2(v8, v4, &v9);
      return v9;
    }

    else
    {
      FigPartialSampleTableOutOfBandObjectRegistryCreate_cold_3(&v10);
      return v10;
    }
  }

  else
  {
    FigPartialSampleTableOutOfBandObjectRegistryCreate_cold_4(&v11);
    return v11;
  }
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_6(&v14);
    return v14;
  }

  if (!a2)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_5(&v14);
    return v14;
  }

  if (!a3)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_4(&v14);
    return v14;
  }

  if (!a4)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_3(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v9 = Value;
    v10 = a3 - 1;
    if (CFArrayGetCount(Value) > v10)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      v12 = 0;
      *a4 = ValueAtIndex;
      goto LABEL_10;
    }

    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_1(&v14);
  }

  else
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_2(&v14);
  }

  v12 = v14;
LABEL_10:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef cf)
{
  if (!a1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_7(&v17);
    return v17;
  }

  if (!a2)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_6(&v17);
    return v17;
  }

  if (!a3)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_5(&v17);
    return v17;
  }

  if (!cf)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_4(&v17);
    return v17;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFNullGetTypeID())
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_3(&v17);
    return v17;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_2(&v17);
      goto LABEL_28;
    }

    Value = Mutable;
    CFDictionarySetValue(*(a1 + 24), a2, Mutable);
    CFRelease(Value);
  }

  v11 = a3 - 1;
  if (CFArrayGetCount(Value) <= v11)
  {
    if (CFArrayGetCount(Value) < v11)
    {
      v14 = *MEMORY[0x1E695E738];
      do
      {
        CFArrayAppendValue(Value, v14);
      }

      while (CFArrayGetCount(Value) < v11);
    }

    CFArrayAppendValue(Value, cf);
    goto LABEL_17;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, v11);
  if (!ValueAtIndex || (v13 = CFGetTypeID(ValueAtIndex), v13 != CFNullGetTypeID()))
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_1(&v17);
LABEL_28:
    v15 = v17;
    goto LABEL_18;
  }

  CFArraySetValueAtIndex(Value, v11, cf);
LABEL_17:
  v15 = 0;
LABEL_18:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(uint64_t a1, const void *a2, CFTypeRef cf, void *a4, char *a5)
{
  if (!a1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_7(&v18);
    return v18;
  }

  if (!a2)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_6(&v18);
    return v18;
  }

  if (!cf)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_5(&v18);
    return v18;
  }

  if (!a4)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_4(&v18);
    return v18;
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFNullGetTypeID())
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_3(&v18);
    return v18;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v12 = Value;
    v19.length = CFArrayGetCount(Value);
    v19.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v12, v19, cf);
    if (FirstIndexOfValue != -1)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_2(&v18);
      goto LABEL_25;
    }

    v12 = Mutable;
    CFDictionarySetValue(*(a1 + 24), a2, Mutable);
    CFRelease(v12);
  }

  if (CFArrayGetCount(v12) != -2)
  {
    CFArrayAppendValue(v12, cf);
    FirstIndexOfValue = CFArrayGetCount(v12) - 1;
    v14 = 1;
LABEL_13:
    *a4 = FirstIndexOfValue + 1;
    v16 = 0;
    if (a5)
    {
      *a5 = v14;
    }

    goto LABEL_15;
  }

  FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_1(&v18);
LABEL_25:
  v16 = v18;
LABEL_15:
  FigSimpleMutexUnlock();
  return v16;
}

void fpst_finalize(void *a1)
{
  for (i = 26; i != 111; i += 5)
  {
    v3 = a1[i];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = a1[22];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {

    CFRelease(v6);
  }
}

__CFString *fpst_copyFormattingDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTable %p", a1);
  v4 = *(a1 + 16);
  if (!v4)
  {
    CFStringAppendFormat(Mutable, 0, @"NO header>");
    return Mutable;
  }

  if (*(a1 + 176))
  {
    v5 = *(a1 + 584);
    dataPointerOut = v5;
    if (!v5)
    {
LABEL_9:
      v8 = CFRetain(@"-");
      goto LABEL_10;
    }
  }

  else
  {
    dataPointerOut = 0;
    v6 = *(v4 + 88);
    if (v6 < 1)
    {
      goto LABEL_9;
    }

    CMBlockBufferGetDataPointer(*(a1 + 24), v6, 0, 0, &dataPointerOut);
    v5 = dataPointerOut;
    if (!dataPointerOut)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v5 + 16);
  v7 = CFGetAllocator(Mutable);
  time = v13;
  v8 = CMTimeCopyDescription(v7, &time);
LABEL_10:
  v9 = v8;
  v10 = "WRITING";
  if (!*(a1 + 176))
  {
    v10 = "READING";
  }

  CFStringAppendFormat(Mutable, 0, @" (%s) (flags=0x%llx) - %lld samples - first DTS: %@>", v10, **(a1 + 16), *(*(a1 + 16) + 8), v8);
  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

__CFString *fpst_copyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTable %p", a1);
  v4 = *(a1 + 16);
  if (!v4)
  {
    CFStringAppendFormat(Mutable, 0, @"\tNO header");
    return Mutable;
  }

  if (*(a1 + 176))
  {
    v5 = *(a1 + 584);
    dataPointerOut = v5;
    if (!v5)
    {
LABEL_9:
      v8 = CFRetain(@"-");
      goto LABEL_10;
    }
  }

  else
  {
    dataPointerOut = 0;
    v6 = *(v4 + 88);
    if (v6 < 1)
    {
      goto LABEL_9;
    }

    CMBlockBufferGetDataPointer(*(a1 + 24), v6, 0, 0, &dataPointerOut);
    v5 = dataPointerOut;
    if (!dataPointerOut)
    {
      goto LABEL_9;
    }
  }

  v31 = *(v5 + 16);
  v7 = CFGetAllocator(Mutable);
  time = v31;
  v8 = CMTimeCopyDescription(v7, &time);
LABEL_10:
  v9 = v8;
  if (*(a1 + 176))
  {
    v10 = "WRITING";
  }

  else
  {
    v10 = "READING";
  }

  CFStringAppendFormat(Mutable, 0, @" (%s) (flags=0x%llx) - first DTS: %@", v10, **(a1 + 16), v8);
  if (v9)
  {
    CFRelease(v9);
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(*(a1 + 16) + 8);
    if (v12 <= 0)
    {
      v15 = *(a1 + 160);
      v16 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v13 = CMBlockBufferGetDataLength(v11) / *(*(a1 + 16) + 8);
      DataLength = CMBlockBufferGetDataLength(*(a1 + 176));
      v15 = *(a1 + 160);
      v12 = *(*(a1 + 16) + 8);
      v16 = (DataLength - v15) / v12;
    }

    v21 = "samples";
    if (v12 == 1)
    {
      v21 = "sample";
    }

    CFStringAppendFormat(Mutable, 0, @"\n\t%lld %s - %.2f used bytes per sample / %.2f bbuf bytes per sample - %zu bytes available", v12, v21, *&v16, *&v13, v15);
  }

  else
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = *(*(a1 + 16) + 8);
      if (v18 < 1)
      {
        v20 = 0.0;
      }

      else
      {
        v19 = CMBlockBufferGetDataLength(v17);
        v18 = *(*(a1 + 16) + 8);
        v20 = v19 / v18;
      }

      CFStringAppendFormat(Mutable, 0, @"\n\t%lld samples - %.2f bbuf bytes per sample", v18, *&v20, v29);
    }
  }

  v22 = 1;
  v23 = 224;
  do
  {
    v31.value = 0;
    if (*(a1 + 176))
    {
      value = *(a1 + v23);
      v31.value = value;
    }

    else
    {
      fpst_reading_runForType(a1, v22, &v31);
      value = v31.value;
    }

    v25 = fpst_descriptionForChangeType(v22);
    if (value)
    {
      if (*value == 1)
      {
        v26 = "segment";
      }

      else
      {
        v26 = "segments";
      }

      CFStringAppendFormat(Mutable, 0, @"\n\t\t[%s] run - %lld %s", v25, *value, v26);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\n\t\t[%s] run - no segments", v25, v28, v29);
    }

    ++v22;
    v23 += 40;
  }

  while (v22 != 18);
  return Mutable;
}

uint64_t fpst_reading_runForType(uint64_t a1, int a2, char **dataPointerOut)
{
  *dataPointerOut = 0;
  v3 = *(*(a1 + 16) + 8 * a2 + 8);
  if (v3 < 1)
  {
    return 4294949584;
  }

  else
  {
    return CMBlockBufferGetDataPointer(*(a1 + 24), v3, 0, 0, dataPointerOut);
  }
}

const char *fpst_descriptionForChangeType(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74987D0[(a1 - 1)];
  }
}

uint64_t fpst_sizeForChangeType(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return qword_196E7BF20[(a1 - 1)];
  }
}

uint64_t fpst_reading_runSegmentAtIndex(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v10 = 0;
  result = fpst_reading_runForType(a1, a2, &v10);
  if (!result)
  {
    v8 = v10;
    if (*v10 <= a3)
    {
      fpst_reading_runSegmentAtIndex_cold_1(&v11);
      return v11;
    }

    else
    {
      v9 = fpst_sizeForChangeType(a2);
      result = 0;
      *a4 = &v8[(v9 + 8) * a3 + 8];
    }
  }

  return result;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistry_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void FigPartialSampleTableOutOfBandObjectRegistry_Finalize(uint64_t a1)
{
  FigSimpleMutexDestroy();
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

__CFString *FigPartialSampleTableOutOfBandObjectRegistry_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTableOutOfBandObjectRegistry %p>", a1);
  return Mutable;
}

CMTime *OUTLINED_FUNCTION_1_196@<X0>(uint64_t a1@<X8>, CMTime *rhs, uint64_t a3, CMTime *lhs, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 rhsa, uint64_t rhs_16, uint64_t a12, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16)
{
  lhs_16 = a1;
  rhsa = *(v15 + 136);
  rhs_16 = *(v15 + 152);

  return CMTimeSubtract((v16 - 96), &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_7_107@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time2, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 time2a, uint64_t time2_16)
{
  v17 = *(a1 + 8);
  time2_16 = *(a1 + 24);
  time2a = v17;

  return CMTimeCompare((v15 - 96), &time2a);
}

uint64_t OUTLINED_FUNCTION_13_61@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time2, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 time2a, uint64_t time2_16)
{
  *(v16 - 80) = a1;
  time2a = *(v15 + 32);
  time2_16 = *(v15 + 48);

  return CMTimeCompare((v16 - 96), &time2a);
}

__n128 OUTLINED_FUNCTION_20_40@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[2] = *v1;
  a1[3].n128_u64[0] = v2;
  a1->n128_u64[0] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_48(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *v1;
  v4 = v1[4];

  return fpst_reading_runSegmentAtIndex(v3, 4, v4, va);
}

uint64_t OUTLINED_FUNCTION_24_37(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *v1;
  v4 = v1[7];

  return fpst_reading_runSegmentAtIndex(v3, 7, v4, va);
}

uint64_t OUTLINED_FUNCTION_25_38(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *v1;
  v4 = v1[5];

  return fpst_reading_runSegmentAtIndex(v3, 5, v4, va);
}

uint64_t FigAgglomeratorNew(const void ***a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v2)
  {
    v3 = FigReadWriteLockCreate();
    v2[1] = v3;
    if (v3)
    {
      *v2 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      goto LABEL_4;
    }

    v5 = 63;
  }

  else
  {
    v5 = 60;
  }

  if ((FigAgglomeratorNew_cold_1(v2, v5, &v6) & 1) == 0)
  {
    return v6;
  }

LABEL_4:
  result = 0;
  *a1 = v2;
  return result;
}

void FigAgglomeratorDispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[1])
    {
      FigReadWriteLockDestroy();
    }

    free(a1);
  }
}

uint64_t FigAgglomeratorSetObjectForKey(__CFDictionary **a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      FigReadWriteLockLockForWrite();
      v6 = *a1;
      if (a2)
      {
        CFDictionarySetValue(v6, a3, a2);
      }

      else
      {
        CFDictionaryRemoveValue(v6, a3);
      }

      FigReadWriteLockUnlockForWrite();
      return 0;
    }

    else
    {
      FigAgglomeratorSetObjectForKey_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigAgglomeratorSetObjectForKey_cold_2(&v9);
    return v9;
  }
}

CFMutableArrayRef FigAgglomeratorCopyCurrentAgglomeration(CFDictionaryRef *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigReadWriteLockLockForRead();
  CFDictionaryApplyFunction(*a1, agglomerator_addDictionaryValueToMutableArray, Mutable);
  FigReadWriteLockUnlockForRead();
  return Mutable;
}

uint64_t FigSampleBufferAudioRendererCreateWithOptions(const __CFAllocator *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  theString = 0;
  v53 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    v44 = 0;
    v30 = 4294950916;
    goto LABEL_76;
  }

  v50 = a3;
  v6 = *MEMORY[0x1E695E480];
  FigSampleBufferAudioRendererGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_71;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 488) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (DerivedStorage + 488), 10, 0x600u);
  }

  v9 = FigReentrantMutexCreate();
  *DerivedStorage = v9;
  if (!v9)
  {
    goto LABEL_70;
  }

  snprintf(__str, 0x80uLL, "com.apple.coremedia.audiorenderer.notification[%p]", v53);
  v10 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 8) = v10;
  if (!v10)
  {
    goto LABEL_70;
  }

  snprintf(__str, 0x80uLL, "com.apple.coremedia.audiorenderer.task[%p]", v53);
  v11 = dispatch_queue_create(__str, 0);
  *(DerivedStorage + 16) = v11;
  if (!v11)
  {
    goto LABEL_70;
  }

  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 100) = 0;
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 108) = 1065353216;
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 120) = 0;
  v12 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 220) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 236) = *(v12 + 16);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 80) = Mutable;
  if (!Mutable)
  {
    goto LABEL_70;
  }

  *(DerivedStorage + 136) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 136))
  {
    v14 = 0;
  }

  else
  {
    v14 = @"TimeDomain";
  }

  *(DerivedStorage + 128) = v14;
  v49 = *MEMORY[0x1E695E4D0];
  *(DerivedStorage + 176) = CFRetain(*MEMORY[0x1E695E4D0]);
  v15 = *MEMORY[0x1E695E4C0];
  *(DerivedStorage + 184) = CFRetain(*MEMORY[0x1E695E4C0]);
  *(DerivedStorage + 192) = 0;
  *(DerivedStorage + 200) = CFRetain(v15);
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(DerivedStorage + 168) = Value;
  if (FPSupport_GetAudioSpatializationPreferencesMonitor())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FPSupport_GetAudioSpatializationPreferencesMonitor();
    FigNotificationCenterAddWeakListener();
  }

  v7 = FigTimeRangeSetCreateMutable();
  if (v7)
  {
LABEL_71:
    v30 = v7;
    v44 = 0;
    goto LABEL_76;
  }

  v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 16));
  *(DerivedStorage + 352) = v17;
  if (!v17 || (v18 = FigCFWeakReferenceHolderCreateWithReferencedObject()) == 0)
  {
LABEL_70:
    v44 = 0;
    v30 = 4294950914;
    goto LABEL_76;
  }

  v19 = *(DerivedStorage + 352);
  cf = v18;
  v20 = CFRetain(v18);
  dispatch_set_context(v19, v20);
  dispatch_source_set_event_handler_f(*(DerivedStorage + 352), audioRenderer_underrunTimerFire);
  dispatch_source_set_cancel_handler_f(*(DerivedStorage + 352), MEMORY[0x1E695D7C0]);
  dispatch_resume(*(DerivedStorage + 352));
  clockOut = 0;
  CMBaseObjectGetDerivedStorage();
  if (!FigPreferAudioSessionClock())
  {
    CMAudioDeviceClockCreate(a1, @"VirtualAudioDevice_Default", &clockOut);
    if (!dword_1EAF17BD8)
    {
LABEL_25:
      v24 = clockOut;
      goto LABEL_26;
    }

    v47 = v6;
    v21 = a2;
    valuePtr = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_24:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = v21;
    v6 = v47;
    goto LABEL_25;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v24 = CFRetain(HostTimeClock);
  clockOut = v24;
  if (dword_1EAF17BD8)
  {
    v47 = v6;
    v21 = a2;
    valuePtr = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    goto LABEL_24;
  }

LABEL_26:
  if (!v24)
  {
    v26 = CMClockGetHostTimeClock();
    v24 = CFRetain(v26);
  }

  *(DerivedStorage + 64) = v24;
  *(DerivedStorage + 32) = 1;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    v27 = v49;
  }

  else
  {
    v27 = v15;
  }

  audioRenderer_setPropertyOnAudioRenderPipeline(v53, @"IsTimebaseStarter", v27, 1);
  FigSimpleMutexUnlock();
  v28 = CMBaseObjectGetDerivedStorage();
  timebaseOut[0] = 0;
  FigSimpleMutexLock();
  if (*(v28 + 473))
  {
    v30 = 0;
  }

  else
  {
    v29 = CMTimebaseCreateWithSourceClock(0, *(v28 + 64), timebaseOut);
    if (!v29)
    {
      v29 = audioRenderer_setMasterTimebase();
    }

    v30 = v29;
  }

  FigSimpleMutexUnlock();
  if (timebaseOut[0])
  {
    CFRelease(timebaseOut[0]);
  }

  if (!v30)
  {
    *(DerivedStorage + 101) = 0;
    *(DerivedStorage + 103) = 1;
    *(DerivedStorage + 144) = 0;
    valuePtr = 500;
    *type = 1000;
    clockOut = 0;
    if (a2)
    {
      if (CFDictionaryGetValueIfPresent(a2, @"LowWaterMarkMs", &clockOut))
      {
        if (clockOut)
        {
          v31 = CFGetTypeID(clockOut);
          if (v31 == CFNumberGetTypeID())
          {
            CFNumberGetValue(clockOut, kCFNumberIntType, &valuePtr);
          }
        }
      }

      if (CFDictionaryGetValueIfPresent(a2, @"HighWaterMarkMs", &clockOut))
      {
        if (clockOut)
        {
          v32 = CFGetTypeID(clockOut);
          if (v32 == CFNumberGetTypeID())
          {
            CFNumberGetValue(clockOut, kCFNumberIntType, type);
          }
        }
      }
    }

    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(timebaseOut, CFPreferenceNumberWithDefault, 1000);
    *(DerivedStorage + 268) = *timebaseOut;
    v34 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(timebaseOut, v34, 1000);
    *(DerivedStorage + 244) = *timebaseOut;
    if (dword_1EAF17BD8)
    {
      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 292) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v36 = CFStringCreateWithFormat(v6, 0, @"SBAR-%p", v53);
    *(DerivedStorage + 480) = v36;
    if (v36)
    {
      if (dword_1EAF17BD8)
      {
        LODWORD(clockOut) = 0;
        LOBYTE(valuePtr) = 0;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v38 = clockOut;
        if (os_log_type_enabled(v37, valuePtr))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (v39)
        {
          v40 = v53;
          if (v53)
          {
            v41 = (CMBaseObjectGetDerivedStorage() + 488);
          }

          else
          {
            v41 = "";
          }

          if (*(DerivedStorage + 292))
          {
            v42 = 84;
          }

          else
          {
            v42 = 70;
          }

          if (*(DerivedStorage + 136))
          {
            v43 = 84;
          }

          else
          {
            v43 = 70;
          }

          v56 = 136316162;
          v57 = "FigSampleBufferAudioRendererCreateWithOptions";
          v58 = 2048;
          v59 = v40;
          v60 = 2082;
          v61 = v41;
          v62 = 1024;
          v63 = v42;
          v64 = 1024;
          v65 = v43;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v30 = 0;
      *v50 = v53;
      v53 = 0;
      v44 = cf;
LABEL_68:
      CFRelease(v44);
      return v30;
    }

    v30 = 4294950914;
  }

  v44 = cf;
LABEL_76:
  if (v53)
  {
    v46 = v44;
    CFRelease(v53);
    v44 = v46;
  }

  if (v44)
  {
    goto LABEL_68;
  }

  return v30;
}

__CFString *audioRenderer_copyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 473))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRenderer=%p retainCount=%d%s allocator=%p", a1, v5, v6, v7);
  if (*(DerivedStorage + 32))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" timebaseStarter=%s", v8);
  CFStringAppendFormat(Mutable, 0, @" masterControlTimebase=%@", *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @" synchronizerWeakReference=%@", *(DerivedStorage + 88));
  CFStringAppendFormat(Mutable, 0, @" audioOutputDeviceUniqueID=%@", *(DerivedStorage + 120));
  CFStringAppendFormat(Mutable, 0, @" audioTimePitchAlgorithm=%@", *(DerivedStorage + 128));
  CFStringAppendFormat(Mutable, 0, @" volume=%1.3f", *(DerivedStorage + 108));
  if (*(DerivedStorage + 104))
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" muted=%s", v9);
  if (*(DerivedStorage + 472))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" silentMuted=%s", v10);
  if (*(DerivedStorage + 464))
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" ducked=%s", v11);
  CFStringAppendFormat(Mutable, 0, @" volumeCurvesDictionary=%@", *(DerivedStorage + 112));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t audioRenderer_removeNotificationListenerFromTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v5 = *(v4 + 352);

    return CMTimebaseRemoveTimerDispatchSource(a2, v5);
  }

  return result;
}

uint64_t audioRenderer_bapOutputRemoveWeakListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListeners();
  }

  return result;
}

uint64_t audioRenderer_setRateAndTimeWithoutFARP(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v17, 0, sizeof(v17));
  if (!*(DerivedStorage + 32))
  {
    return 0;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 24);
  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 12))
  {
    v12 = CMTimebaseCopySource(v9);
    v10 = v12;
    if (*(a4 + 12))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      time = *a4;
      CMSyncConvertTime(&v17, &time, HostTimeClock, v10);
    }

    else
    {
      CMSyncGetTime(&v17, v12);
    }
  }

  else
  {
    v10 = 0;
    v17 = **&MEMORY[0x1E6960C70];
  }

  if (dword_1EAF17BD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *(v8 + 24);
  time = *a3;
  immediateSourceTime = v17;
  v11 = CMTimebaseSetRateAndAnchorTime(v15, a1, &time, &immediateSourceTime);
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

void audioRenderer_postWasFlushedAutomaticallyNotificationForTime(uint64_t a1, CMTime *a2)
{
  v2 = *MEMORY[0x1E695E480];
  v5 = *a2;
  v3 = CMTimeCopyAsDictionary(&v5, v2);
  Mutable = CFDictionaryCreateMutable(v2, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"FlushMediaTime", v3);
  audioRenderer_postNotification();
  if (v3)
  {
    CFRelease(v3);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t audioRenderer_flushWithType(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17BD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 473))
  {
    FigSimpleMutexUnlock();
    return 4294954511;
  }

  else
  {
    audioRenderer_flushWithType_cold_1(DerivedStorage, a1, a2);
    return 0;
  }
}

uint64_t audioRenderer_updateUnderrunState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMTimebaseGetTime(&v4, *(DerivedStorage + 24));
  return audioRenderer_updateUnderrunStateExplicit(a1, &v4, *(DerivedStorage + 96) != 0.0);
}

dispatch_queue_t audioRenderer_setupTimebaseRateChangedListenerAsyncQueue(dispatch_queue_t *a1)
{
  result = dispatch_queue_create("com.apple.coremedia.audiorenderer.timebaselistener", 0);
  *a1 = result;
  return result;
}

void audioRenderer_timebaseRateChangedListenerAsync(const void **a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[1];
  FigSimpleMutexLock();
  if (v4 == *(DerivedStorage + 24))
  {
    if (dword_1EAF17BD8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 296) = 0;
    if (*(DerivedStorage + 297))
    {
      audioRenderer_resynchronize(v2);
      *(DerivedStorage + 297) = 0;
    }
  }

  FigSimpleMutexUnlock();
  CFRelease(v2);
  CFRelease(v4);
  free(a1);
}

uint64_t audioRenderer_setAudioProcessingTap(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 473))
  {
    return audioRenderer_setAudioProcessingTap_cold_1(DerivedStorage, a1, a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t audioRenderer_applySoftwareVolume(uint64_t a1, CFTypeRef cf1, int a3, float a4, float a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a5;
  valuePtr = a4;
  if (dword_1EAF17BD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CFEqual(cf1, @"SoftwareVolume1"))
  {
    v12 = 0;
    v13 = kFigAudioRenderPipelineProperty_SoftwareVolume1RampDuration;
LABEL_10:
    v14 = *v13;
    goto LABEL_12;
  }

  if (CFEqual(cf1, @"SoftwareVolume2"))
  {
    v12 = 0;
    v13 = kFigAudioRenderPipelineProperty_SoftwareVolume2RampDuration;
    goto LABEL_10;
  }

  if (!CFEqual(cf1, @"SoftwareVolume5"))
  {
    return FigSignalErrorAtGM();
  }

  v14 = 0;
  v12 = 1;
LABEL_12:
  if (a5 < 0.0)
  {
    v20 = 0.0;
  }

  v15 = *MEMORY[0x1E695E480];
  v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v17 = CFNumberCreate(v15, kCFNumberFloatType, &v20);
  if ((v12 & 1) != 0 || (v18 = audioRenderer_setPropertyOnAudioRenderPipeline(a1, v14, v17, 0), !v18))
  {
    v19 = audioRenderer_setPropertyOnAudioRenderPipeline(a1, cf1, v16, 1);
    v10 = v19;
    if (a3 == 1 && !v19)
    {
      if (v20 > 0.0)
      {
        usleep((v20 * 1000.0 * 1000.0));
      }

      v10 = 0;
    }

    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = v18;
  if (v17)
  {
LABEL_22:
    CFRelease(v17);
  }

LABEL_23:
  if (v16)
  {
    CFRelease(v16);
  }

  return v10;
}

__CFString *audioRenderer_deviceRendererProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferAudioRenderer <FigSampleBufferAudioDeviceRendererProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioRenderer_flushFromMediaTime(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00407482C56DuLL);
  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  v10 = *(a2 + 16);
  *(v8 + 8) = *a2;
  *(v8 + 3) = v10;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async_f(global_queue, v8, audioRenderer_flushFromMediaTimeDispatchAsync);
  return 0;
}

uint64_t audioRenderer_setRateAndAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3, float a4)
{
  v104 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v77 = **&MEMORY[0x1E6960C70];
  v76 = v77;
  v75 = v77;
  v74 = v77;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 473))
  {
    v24 = 0;
    value_low = 0;
    goto LABEL_77;
  }

  if (dword_1EAF17BD8)
  {
    LODWORD(valuePtr) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4 != 0.0 && !*(DerivedStorage + 72) && *(DerivedStorage + 101))
  {
    if (dword_1EAF17BD8)
    {
      LODWORD(valuePtr) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v24 = 0;
    value_low = 4294950909;
    goto LABEL_77;
  }

  *(DerivedStorage + 296) = 0;
  CMTimebaseGetTime(&v77, *(DerivedStorage + 24));
  if (*(DerivedStorage + 56))
  {
    v87 = a2->value;
    flags = a2->flags;
    timescale = a2->timescale;
    epoch = a2->epoch;
    v85 = a3->value;
    v13 = a3->flags;
    v86 = a3->timescale;
    v73 = a3->epoch;
    v14 = CMBaseObjectGetDerivedStorage();
    valuePtr = a4;
    value = 0;
    *type = 0;
    cf = 0;
    target = 0;
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v14 + 56));
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = v16(FigBaseObject, @"SourceSampleBufferQueue", 0, type);
      if (v17)
      {
        value_low = v17;
        v18 = 0;
        goto LABEL_121;
      }

      if (a4 == 0.0)
      {
        v18 = 0;
        v72 = 0;
      }

      else
      {
        v32 = MEMORY[0x1E695E480];
        if (!*(v14 + 296) && CMTimebaseGetRate(*(v14 + 24)) == 0.0)
        {
          v72 = 0;
          v18 = 0;
        }

        else
        {
          v33 = *(v14 + 216);
          *(v14 + 216) = v33 + 1;
          LODWORD(time.value) = v33;
          value = CFNumberCreate(0, kCFNumberIntType, &time);
          if (!value || (v34 = CFDictionaryCreate(*v32, MEMORY[0x1E6960580], &value, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
LABEL_123:
            value_low = 4294950914;
            goto LABEL_17;
          }

          v18 = v34;
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          v72 = 1;
        }

        if (*(v14 + 100))
        {
          Ready = CMSampleBufferCreateReady(*v32, 0, 0, 0, 0, 0, 0, 0, &cf);
          if (Ready || (CMSetAttachment(cf, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u), Ready = CMBufferQueueEnqueue(*type, cf), Ready))
          {
LABEL_120:
            value_low = Ready;
LABEL_121:
            v19 = 0;
            v20 = 0;
            goto LABEL_17;
          }
        }
      }

      if (!*(v14 + 32))
      {
        v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
        if (!v20)
        {
LABEL_122:
          v19 = 0;
          goto LABEL_123;
        }

        v40 = FigRenderPipelineGetFigBaseObject(*(v14 + 56));
        v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v41)
        {
          v19 = 0;
          goto LABEL_16;
        }

        v42 = v41(v40, @"PipelineRate", v20);
        v19 = 0;
        if (v42)
        {
          goto LABEL_117;
        }

LABEL_91:
        if (!v72)
        {
          value_low = 0;
          goto LABEL_17;
        }

        value_low = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
        if (target)
        {
          CMSetAttachment(target, *MEMORY[0x1E6960518], value, 1u);
          CMBufferQueueEnqueue(*type, target);
          goto LABEL_17;
        }

        goto LABEL_123;
      }

      v70 = v13;
      v71 = flags;
      if ((v13 & 1) != 0 && a4 != 0.0 && (flags & 1) != 0 && !*(v14 + 296) && CMTimebaseGetRate(*(v14 + 24)) == 0.0)
      {
        if (dword_1EAF17BD8)
        {
          v69 = epoch;
          v79 = 0;
          v78 = OS_LOG_TYPE_DEFAULT;
          v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v53 = v79;
          if (os_log_type_enabled(v52, v78))
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
              v55 = (CMBaseObjectGetDerivedStorage() + 488);
            }

            else
            {
              v55 = "";
            }

            time.value = v87;
            time.timescale = timescale;
            time.flags = flags;
            time.epoch = v69;
            Seconds = CMTimeGetSeconds(&time);
            time.value = v85;
            time.timescale = v86;
            time.flags = v13;
            time.epoch = v73;
            v57 = CMTimeGetSeconds(&time);
            v58 = *(v14 + 296);
            Rate = CMTimebaseGetRate(*(v14 + 24));
            v60 = *(v14 + 24);
            LODWORD(timebaseTime.value) = 136317186;
            *(&timebaseTime.value + 4) = "audioRenderer_setRateAndTimeWithFARP";
            LOWORD(timebaseTime.flags) = 2048;
            *(&timebaseTime.flags + 2) = a1;
            HIWORD(timebaseTime.epoch) = 2082;
            v90 = v55;
            v91 = 2048;
            v92 = a4;
            v93 = 2048;
            v94 = Seconds;
            v95 = 2048;
            v96 = v57;
            v97 = 1024;
            v98 = v58;
            v99 = 2048;
            v100 = Rate;
            v101 = 2048;
            v102 = v60;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          epoch = v69;
        }

        v61 = epoch;
        v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
        if (v20)
        {
          v19 = CMTimebaseCopySource(*(v14 + 24));
          if (!v19)
          {
            audioRenderer_setRateAndAnchorTime_cold_1(&time);
            value_low = LODWORD(time.value);
LABEL_17:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (*type)
            {
              CFRelease(*type);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (target)
            {
              CFRelease(target);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            if (value)
            {
              CFRelease(value);
            }

            if (value_low)
            {
              goto LABEL_106;
            }

            goto LABEL_34;
          }

          v62 = *(v14 + 24);
          HostTimeClock = CMClockGetHostTimeClock();
          timebaseTime.value = v85;
          timebaseTime.timescale = v86;
          timebaseTime.flags = v70;
          timebaseTime.epoch = v73;
          CMSyncConvertTime(&time, &timebaseTime, HostTimeClock, v19);
          timebaseTime.value = v87;
          timebaseTime.timescale = timescale;
          timebaseTime.flags = v71;
          timebaseTime.epoch = v61;
          v42 = CMTimebaseSetRateAndAnchorTime(v62, a4, &timebaseTime, &time);
          if (v42)
          {
            goto LABEL_117;
          }

          v64 = FigRenderPipelineGetFigBaseObject(*(v14 + 56));
          v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v65)
          {
            goto LABEL_16;
          }

          v42 = v65(v64, @"PipelineRate", v20);
          if (v42)
          {
LABEL_117:
            value_low = v42;
            goto LABEL_17;
          }

          v66 = *(v14 + 56);
          v67 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v67)
          {
            v42 = v67(v66);
            if (v42)
            {
              goto LABEL_117;
            }

            goto LABEL_91;
          }

LABEL_16:
          value_low = 4294954514;
          goto LABEL_17;
        }

        goto LABEL_122;
      }

      if (dword_1EAF17BD8)
      {
        v68 = epoch;
        v79 = 0;
        v78 = OS_LOG_TYPE_DEFAULT;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v37 = v79;
        if (os_log_type_enabled(v36, v78))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFE;
        }

        if (v38)
        {
          if (a1)
          {
            v39 = (CMBaseObjectGetDerivedStorage() + 488);
          }

          else
          {
            v39 = "";
          }

          time.value = v87;
          time.timescale = timescale;
          time.flags = flags;
          time.epoch = v68;
          v44 = CMTimeGetSeconds(&time);
          time.value = v85;
          time.timescale = v86;
          time.flags = v13;
          time.epoch = v73;
          v45 = CMTimeGetSeconds(&time);
          v46 = *(v14 + 296);
          v47 = CMTimebaseGetRate(*(v14 + 24));
          LODWORD(timebaseTime.value) = 136316930;
          *(&timebaseTime.value + 4) = "audioRenderer_setRateAndTimeWithFARP";
          LOWORD(timebaseTime.flags) = 2048;
          *(&timebaseTime.flags + 2) = a1;
          HIWORD(timebaseTime.epoch) = 2082;
          v90 = v39;
          v91 = 2048;
          v92 = a4;
          v93 = 2048;
          v94 = v44;
          v95 = 2048;
          v96 = v45;
          v97 = 1024;
          v98 = v46;
          v99 = 2048;
          v100 = v47;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        epoch = v68;
      }

      v48 = *(v14 + 56);
      v49 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v49)
      {
        time.value = v87;
        time.timescale = timescale;
        time.flags = v71;
        time.epoch = epoch;
        timebaseTime.value = v85;
        timebaseTime.timescale = v86;
        timebaseTime.flags = v70;
        timebaseTime.epoch = v73;
        Ready = v49(v48, &time, &timebaseTime, a4, a4);
        if (!Ready)
        {
          if (a4 == 0.0)
          {
            v19 = 0;
            v20 = 0;
          }

          else
          {
            v50 = epoch;
            v19 = 0;
            v20 = 0;
            *(v14 + 296) = 1;
            *(v14 + 304) = v87;
            *(v14 + 312) = timescale;
            *(v14 + 300) = a4;
            *(v14 + 316) = v71;
            v51 = v85;
            *(v14 + 320) = v50;
            *(v14 + 328) = v51;
            *(v14 + 336) = v86;
            *(v14 + 340) = v70;
            *(v14 + 344) = v73;
          }

          goto LABEL_91;
        }

        goto LABEL_120;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  time = *a2;
  timebaseTime = *a3;
  updated = audioRenderer_setRateAndTimeWithoutFARP(a4, a1, &time, &timebaseTime);
  if (updated)
  {
LABEL_105:
    value_low = updated;
LABEL_106:
    v24 = 0;
    goto LABEL_77;
  }

LABEL_34:
  if (a2->flags)
  {
    v76 = *a2;
  }

  else
  {
    CMTimebaseGetTime(&v76, *(DerivedStorage + 24));
  }

  v23 = *(DerivedStorage + 96) != 0.0;
  time = v77;
  updated = audioRenderer_updateUnderrunStateExplicit(a1, &time, v23);
  if (updated)
  {
    goto LABEL_105;
  }

  time = v77;
  updated = audioRenderer_updateUnderrunStateExplicit(a1, &time, 0);
  if (updated)
  {
    goto LABEL_105;
  }

  time = v76;
  updated = audioRenderer_updateUnderrunStateExplicit(a1, &time, a4 != 0.0);
  if (updated)
  {
    goto LABEL_105;
  }

  if (!*(DerivedStorage + 48))
  {
    v24 = 0;
    v28 = 0;
LABEL_48:
    value_low = 0;
    *(DerivedStorage + 96) = a4;
    goto LABEL_50;
  }

  audioRenderer_getLowWaterDurationScaledForRate(&v75, a4);
  time = v75;
  v24 = CMTimeCopyAsDictionary(&time, 0);
  v25 = *(DerivedStorage + 48);
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v26)
  {
    value_low = 4294954514;
LABEL_77:
    FigSimpleMutexUnlock();
    goto LABEL_78;
  }

  v27 = v26(v25, @"LowWaterDuration", v24);
  if (v27)
  {
    value_low = v27;
    goto LABEL_77;
  }

  audioRenderer_getHighWaterDurationScaledForRate(&v74, a4);
  time = v74;
  v28 = CMTimeCopyAsDictionary(&time, 0);
  v29 = *(DerivedStorage + 48);
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v30)
  {
    v31 = v30(v29, @"HighWaterDuration", v28);
    if (v31)
    {
      value_low = v31;
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  value_low = 4294954514;
LABEL_50:
  FigSimpleMutexUnlock();
  if (v28)
  {
    CFRelease(v28);
  }

LABEL_78:
  if (v24)
  {
    CFRelease(v24);
  }

  return value_low;
}