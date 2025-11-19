_DWORD *_figApplyNormalizedCGRectToFigGeometryRect@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = a1[1];
  v21 = *a1;
  v22 = v12;
  v13 = a1[3];
  v23 = a1[2];
  v24 = v13;
  CGRect = FigGeometryRectGetCGRect(&v21);
  v18 = a1[1];
  v21 = *a1;
  v22 = v18;
  v19 = a1[3];
  v23 = a1[2];
  v24 = v19;
  return FigGeometryRectMakeFromCGRectAndReferenceUnits(&v21, a2, CGRect + v15 * a3, v16 + v17 * a4, a5 * v15, a6 * v17);
}

size_t FigGeometryMappingCreateInverseMapping(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    FigGeometryMappingCreateInverseMapping_cold_6(&v22);
    return v22;
  }

  if (!a2)
  {
    FigGeometryMappingCreateInverseMapping_cold_5(&v22);
    return v22;
  }

  v5 = CFGetTypeID(a1);
  if (sRegisterFigGeometryMappingTypeOnce != -1)
  {
    FigGeometryMappingGetTypeID_cold_1();
  }

  if (v5 != sFigGeometryMappingID)
  {
    FigGeometryMappingCreateInverseMapping_cold_2(&v22);
    return v22;
  }

  if (*(a1 + 20) != 1)
  {
    FigGeometryMappingCreateInverseMapping_cold_3(&v22);
    return v22;
  }

  *a2 = 0;
  CFGetAllocator(a1);
  if (sRegisterFigGeometryMappingTypeOnce != -1)
  {
    FigGeometryMappingGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    memcpy((Instance + 16), (a1 + 16), 0x348uLL);
    v8 = *(v7 + 128);
    if (v8)
    {
      CFRetain(v8);
    }

    v9 = *(v7 + 136);
    if (v9)
    {
      CFRetain(v9);
    }

    *(v7 + 16) = 1835102313;
    *(v7 + 120) = 1;
    v10 = *(a1 + 24);
    v11 = 1.0 / v10;
    v12 = -*(a1 + 32) / v10;
    *(v7 + 24) = v11;
    *(v7 + 32) = v12;
    v13 = *(a1 + 40);
    v14 = 1.0 / v13;
    v15 = -*(a1 + 48) / v13;
    *(v7 + 40) = v14;
    *(v7 + 48) = v15;
    v16 = *(a1 + 88);
    *(v7 + 72) = *(a1 + 104);
    *(v7 + 56) = v16;
    v17 = *(a1 + 56);
    *(v7 + 104) = *(a1 + 72);
    *(v7 + 88) = v17;
    memcpy((v7 + 144), (a1 + 496), 0x160uLL);
    memcpy((v7 + 496), (a1 + 144), 0x160uLL);
    result = 0;
    *(v7 + 848) = *(a1 + 852);
    *(v7 + 852) = *(a1 + 848);
    *a2 = v7;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC4DuLL, "<<<< FigGeometryMapping >>>>", 0x5F4, v2, v20, v21);
  }

  return result;
}

size_t FigGeometryMappingCreateCEA608Mappings(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v87 = 0;
  v88 = a3;
  v85 = 0;
  v86 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(v80, 0, sizeof(v80));
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  memset(v75, 0, sizeof(v75));
  v73 = 0;
  cf = 0;
  v72 = 0;
  if (!a4)
  {
    FigGeometryMappingCreateCEA608Mappings_cold_10(&v68);
    goto LABEL_30;
  }

  if (!a5)
  {
    FigGeometryMappingCreateCEA608Mappings_cold_9(&v68);
    goto LABEL_30;
  }

  if (!a6)
  {
    FigGeometryMappingCreateCEA608Mappings_cold_8(&v68);
    goto LABEL_30;
  }

  if (*(a2 + 2) != 1886679840 || *(a2 + 6) != 1886679840)
  {
    FigGeometryMappingCreateCEA608Mappings_cold_1(&v68);
LABEL_30:
    v65 = v68;
    goto LABEL_13;
  }

  FigGeometryDimensionMake();
  v12 = v11;
  v14 = v13;
  FigGeometryDimensionMake();
  FigGeometryPointMake(v12, v14, v15, v16, &v68);
  FigGeometryRectMake(v68, *(&v68 + 1), v69, *(&v69 + 1), *a2, a2[1], a2[2], a2[3], &v81);
  FigGeometryDimensionMake();
  v18 = v17;
  v20 = v19;
  FigGeometryDimensionMake();
  v22 = v21;
  v24 = v23;
  FigGeometryDimensionMake();
  v26 = v25;
  v28 = v27;
  FigGeometryDimensionMake();
  FigGeometryRectMake(v22, v24, v26, v28, v18, v20, v29, v30, v80);
  FigGeometryDimensionMake();
  v32 = v31;
  v34 = v33;
  FigGeometryDimensionMake();
  v36 = v35;
  v38 = v37;
  FigGeometryDimensionMake();
  v40 = v39;
  v42 = v41;
  FigGeometryDimensionMake();
  FigGeometryRectMake(v32, v34, v36, v38, v40, v42, v43, v44, &v76);
  FigGeometryDimensionMake();
  v46 = v45;
  v48 = v47;
  FigGeometryDimensionMake();
  v50 = v49;
  v52 = v51;
  FigGeometryDimensionMake();
  v54 = v53;
  v56 = v55;
  FigGeometryDimensionMake();
  FigGeometryMarginsMake(v46, v48, v50, v52, v54, v56, v57, v58, v75);
  v68 = v81;
  v69 = v82;
  v70 = v83;
  v71 = v84;
  v59 = FigGeometryCoordinateSpaceCreate(a1, &v68, v75, v80, &v88, 1918989168, &cf);
  if (v59)
  {
    v65 = v59;
    FigGeometryMappingCreateCEA608Mappings_cold_2(v59);
  }

  else
  {
    v68 = v76;
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v60 = FigGeometryCoordinateSpaceCreate(a1, &v68, 0, 0, 0, 0, &v72);
    if (v60)
    {
      v65 = v60;
      FigGeometryMappingCreateCEA608Mappings_cold_3(v60);
    }

    else
    {
      v68 = v81;
      v69 = v82;
      v70 = v83;
      v71 = v84;
      v61 = FigGeometryCoordinateSpaceCreate(a1, &v68, 0, 0, 0, 0, &v73);
      if (v61)
      {
        v65 = v61;
        FigGeometryMappingCreateCEA608Mappings_cold_4(v61);
      }

      else
      {
        v62 = FigGeometryMappingCreate(a1, cf, 1, v73, 1, &v87);
        if (v62)
        {
          v65 = v62;
          FigGeometryMappingCreateCEA608Mappings_cold_5(v62);
        }

        else
        {
          v63 = FigGeometryMappingCreate(a1, cf, 1, v72, 1, &v86);
          if (v63)
          {
            v65 = v63;
            FigGeometryMappingCreateCEA608Mappings_cold_6(v63);
          }

          else
          {
            v64 = FigGeometryMappingCreate(a1, v72, 1, v73, 1, &v85);
            v65 = v64;
            if (v64)
            {
              FigGeometryMappingCreateCEA608Mappings_cold_7(v64);
            }

            else
            {
              v66 = v86;
              *a4 = v87;
              v86 = 0;
              v87 = 0;
              *a5 = v66;
              *a6 = v85;
              v85 = 0;
            }
          }
        }
      }
    }
  }

LABEL_13:
  if (v87)
  {
    CFRelease(v87);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  return v65;
}

uint64_t FigGeometryMappingConvertDimensionToDimension(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0.0;
  if (!a1)
  {
    FigGeometryMappingConvertDimensionToDimension_cold_1();
    return *&v5;
  }

  if ((BYTE4(a3) & 0x1D) == 1)
  {
    if (a5 == 2)
    {
      v8 = 48;
      v9 = 40;
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
      if (a5 != 1)
      {
        goto LABEL_11;
      }

      v8 = 32;
      v9 = 24;
    }

    v6 = *(a1 + v9);
    v7 = *(a1 + v8);
LABEL_11:
    if (a4)
    {
      v5 = v6 * *&a2;
    }

    else
    {
      v5 = v7 + *&a2 * v6;
    }

    return *&v5;
  }

  if ((~HIDWORD(a3) & 0x11) == 0)
  {
    v5 = *&a2;
  }

  return *&v5;
}

size_t FigGeometryMappingConvertPointToPoint@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = kFigGeometryPointInvalid;
  *(a3 + 16) = unk_197165348;
  if (!a1)
  {
    return FigGeometryMappingConvertPointToPoint_cold_1();
  }

  *a3 = FigGeometryMappingConvertDimensionToDimension(a1, *a2, a2[1], 0, 1);
  *(a3 + 8) = v6;
  result = FigGeometryMappingConvertDimensionToDimension(a1, a2[2], a2[3], 0, 2);
  *(a3 + 16) = result;
  *(a3 + 24) = v8;
  return result;
}

size_t FigGeometryMappingConvertSizeToSize@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = kFigGeometrySizeInvalid;
  *(a3 + 16) = unk_197165368;
  if (!a1)
  {
    return FigGeometryMappingConvertSizeToSize_cold_1();
  }

  *a3 = FigGeometryMappingConvertDimensionToDimension(a1, *a2, a2[1], 1, 1);
  *(a3 + 8) = v6;
  result = FigGeometryMappingConvertDimensionToDimension(a1, a2[2], a2[3], 1, 2);
  *(a3 + 16) = result;
  *(a3 + 24) = v8;
  return result;
}

size_t FigGeometryMappingConvertVectorToVector@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = kFigGeometryVectorInvalid;
  *(a3 + 16) = unk_197165388;
  if (!a1)
  {
    return FigGeometryMappingConvertVectorToVector_cold_1();
  }

  *a3 = FigGeometryMappingConvertDimensionToDimension(a1, *a2, a2[1], 1, 1);
  *(a3 + 8) = v6;
  result = FigGeometryMappingConvertDimensionToDimension(a1, a2[2], a2[3], 1, 2);
  *(a3 + 16) = result;
  *(a3 + 24) = v8;
  return result;
}

size_t FigGeometryMappingConvertRectToRect@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = kFigGeometryRectInvalid;
  a3[1] = unk_1971653A8;
  a3[2] = xmmword_1971653B8;
  a3[3] = unk_1971653C8;
  if (!a1)
  {
    return FigGeometryMappingConvertRectToRect_cold_1();
  }

  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  FigGeometryMappingConvertPointToPoint(a1, &v9, a3);
  v7 = a2[3];
  v9 = a2[2];
  v10 = v7;
  return FigGeometryMappingConvertSizeToSize(a1, &v9, (a3 + 2));
}

void fgFinalize_Mapping(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 136) = 0;
  }
}

__CFString *fgCopyDesc_Mapping(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (a1)
  {
    if (*(a1 + 20) == 1)
    {
      CFStringAppendFormat(Mutable, 0, @"<FigGeometryMappingRef %p> srcSpace:%p srcPart:%d, destSpace: %p, destPart:%d", a1, *(a1 + 128), *(a1 + 848), *(a1 + 136), *(a1 + 852));
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"<FigGeometryMappingRef %p> [UNKNOWN MAPPING TYPE]", a1);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"<FigGeometryMappingRef %p>", 0);
  }

  return v4;
}

CFDictionaryRef FigCaptionGeometryCopyCellBasedDimensionAsDictionary(const __CFAllocator *a1, double a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v9 = 1667591276;
  keys[0] = @"value";
  keys[1] = @"units";
  v8 = 0;
  keys[2] = @"flags";
  v3 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  values[1] = CFNumberCreate(v3, kCFNumberSInt32Type, &v9);
  values[2] = CFNumberCreate(v3, kCFNumberSInt32Type, &v8);
  v4 = CFDictionaryCreate(a1, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 3; ++i)
  {
    v6 = values[i];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v4;
}

uint64_t FigCaptionGeometryGetCellBasedDimensionFromDictionary(const void *a1, double *a2)
{
  v3 = 0.0;
  if (a1 && (v4 = a1, v5 = CFGetTypeID(a1), v5 == CFDictionaryGetTypeID()))
  {
    FigCFDictionaryGetCGFloatIfPresent(v4, @"value", &v23, v6, v7, v8, v9, v10, v22, 0, v24, v25, v26, v27, v28, v29, vars0, vars8);
    v16 = 4294950501;
    if (v17)
    {
      FigCFDictionaryGetInt32IfPresent(v4, @"units", &v22 + 4, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
      v19 = v18 != 0;
      v20 = HIDWORD(v22) == 1667591276;
      if (v19 && v20)
      {
        v16 = 0;
      }

      else
      {
        v16 = 4294950501;
      }

      if (v19 && v20)
      {
        v3 = *&v23;
      }

      else
      {
        v3 = 0.0;
      }
    }
  }

  else
  {
    v16 = 4294950501;
  }

  if (a2)
  {
    *a2 = v3;
  }

  return v16;
}

CFDictionaryRef FigCaptionGeometryCopyCellBasedPointAsDictionary(const __CFAllocator *a1, double a2, double a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v5 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary(a1, a2);
  v6 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary(a1, a3);
  v7 = v6;
  if (v5 && v6)
  {
    keys[0] = @"x";
    keys[1] = @"y";
    values[0] = v5;
    values[1] = v6;
    v8 = CFDictionaryCreate(a1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v5);
  v9 = v8;
LABEL_6:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

__CFDictionary *FigCaptionGeometryCopyCellBasedSizeAsDictionary(const __CFAllocator *a1, double a2, double a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary(a1, a2);
  v8 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary(a1, a3);
  CFDictionaryAddValue(Mutable, @"width", v7);
  CFDictionaryAddValue(Mutable, @"height", v8);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return Mutable;
}

uint64_t FigEndpointActivate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3, 0, 0);
}

uint64_t FigEndpointActivateSync(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = dispatch_semaphore_create(0);
  if (a4)
  {
    v9 = dispatch_time(0, 1000000 * a4);
  }

  else
  {
    v9 = -1;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v11 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v11)
  {
    Mutable = 0;
    goto LABEL_15;
  }

  valuePtr = v11(CMBaseObject, @"IsActivated", *MEMORY[0x1E695E480], &cf);
  if (valuePtr)
  {
    Mutable = 0;
    goto LABEL_17;
  }

  v12 = cf;
  if (cf != *MEMORY[0x1E695E4D0])
  {
    v13 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigEndpointActivateSync_cold_2();
      goto LABEL_17;
    }

    v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (!v15)
    {
      FigEndpointActivateSync_cold_1();
      goto LABEL_17;
    }

    v16 = v15;
    *v15 = v8;
    dispatch_retain(v8);
    v16[1] = CFRetain(Mutable);
    v17 = *(*(CMBaseObjectGetVTable(a1) + 16) + 8);
    if (v17)
    {
      valuePtr = v17(a1, a2, a3, endpointUtil_activationCallback, v16);
      if (valuePtr)
      {
        goto LABEL_17;
      }

      if (!dispatch_semaphore_wait(v8, v9))
      {
        if (CFArrayGetCount(Mutable) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        }

LABEL_17:
        v12 = cf;
        if (!cf)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v19 = -16724;
LABEL_16:
      valuePtr = v19;
      goto LABEL_17;
    }

LABEL_15:
    v19 = -12782;
    goto LABEL_16;
  }

  Mutable = 0;
  if (cf)
  {
LABEL_18:
    CFRelease(v12);
  }

LABEL_19:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  return valuePtr;
}

void endpointUtil_activationCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  valuePtr = a4;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(*(a5 + 8), v6);
  dispatch_semaphore_signal(*a5);
  if (*a5)
  {
    dispatch_release(*a5);
  }

  v7 = *(a5 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  free(a5);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t FigEndpointDeactivate(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable(a1) + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2, 0, 0);
}

uint64_t FigEndpointGetSupportedFeatures(uint64_t a1)
{
  number = 0;
  valuePtr = 0;
  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v2)
  {
    v3 = v2(CMBaseObject, @"SupportedFeatures", 0, &number);
    v4 = number;
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = number == 0;
    }

    if (!v5)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      v4 = number;
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return valuePtr;
}

uint64_t FigEndpointUtility_CopyEndpointType(uint64_t result)
{
  v3 = 0;
  if (result)
  {
    CMBaseObject = FigEndpointGetCMBaseObject(result);
    v2 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (v2)
    {
      if (v2(CMBaseObject, @"Type", *MEMORY[0x1E695E480], &v3))
      {
        return 0;
      }

      else
      {
        return v3;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigEndpointUtility_CopyEndpointTransportType(uint64_t result)
{
  v3 = 0;
  if (result)
  {
    CMBaseObject = FigEndpointGetCMBaseObject(result);
    v2 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (v2)
    {
      if (v2(CMBaseObject, @"TransportType", *MEMORY[0x1E695E480], &v3))
      {
        return 0;
      }

      else
      {
        return v3;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void FigEndpointUtility_SetPropertyOnEndpointStreams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a3 && a4)
  {
    v6 = a2;
    if ((a2 & 2) != 0)
    {
      theArray = 0;
      FigEndpointCopyStreamsForTypeAndSubType(a1, a2, @"Audio", 0, &theArray);
      v8 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
          CMBaseObject = FigEndpointStreamGetCMBaseObject(ValueAtIndex);
          v11 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
          if (v11)
          {
            v11(CMBaseObject, a3, a4);
          }
        }

        CFRelease(v8);
      }
    }

    if ((v6 & 8) != 0)
    {
      theArray = 0;
      FigEndpointCopyStreamsForTypeAndSubType(a1, a2, @"BufferedAudio", 0, &theArray);
      v12 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          v13 = CFArrayGetValueAtIndex(v12, 0);
          v14 = FigEndpointStreamGetCMBaseObject(v13);
          v15 = *(*(CMBaseObjectGetVTable(v14) + 8) + 56);
          if (v15)
          {
            v15(v14, a3, a4);
          }
        }

        CFRelease(v12);
      }
    }

    if (v6)
    {
      theArray = 0;
      FigEndpointCopyStreamsForTypeAndSubType(a1, a2, @"Screen", 0, &theArray);
      v16 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          v17 = CFArrayGetValueAtIndex(v16, 0);
          v18 = FigEndpointStreamGetCMBaseObject(v17);
          v19 = *(*(CMBaseObjectGetVTable(v18) + 8) + 56);
          if (v19)
          {
            v19(v18, a3, a4);
          }
        }

        CFRelease(v16);
      }
    }
  }
}

uint64_t FigEndpointCopyStreamsForTypeAndSubType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFArray **a5)
{
  if (a1)
  {
    *a5 = FigEndpointUtility_CopyMatchingStreamsFromEndpoint(a1, FigEndpointUtility_StreamPredicate_IsOfTypeAndSubType, a3, a4);
  }

  else
  {
    FigEndpointCopyStreamsForTypeAndSubType_cold_1();
  }

  return 0;
}

BOOL FigEndpointUtility_EndpointPredicate_ContainsID(uint64_t a1, const __CFString *a2)
{
  theString = 0;
  if (!a1)
  {
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v4(CMBaseObject, @"ID", *MEMORY[0x1E695E480], &theString);
  v5 = 0;
  v6 = theString;
  if (a2 && theString)
  {
    v7 = CFStringFind(theString, a2, 1uLL);
    v5 = v7.length > 0 && v7.location == 0;
    v6 = theString;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  theArray = 0;
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v5 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v5 && (v5(CMBaseObject, @"Streams", v3, &theArray), theArray))
  {
    Count = CFArrayGetCount(theArray);
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v10 = ValueAtIndex;
        cf = 0;
        if (ValueAtIndex)
        {
          v11 = FigEndpointStreamGetCMBaseObject(ValueAtIndex);
          v12 = *(*(CMBaseObjectGetVTable(v11) + 8) + 48);
          if (v12)
          {
            v12(v11, @"Type", v3, &cf);
          }
        }

        if (FigCFEqual(cf, @"Audio") || FigCFEqual(cf, @"LowLatencyAudio"))
        {
          CFArrayAppendValue(Mutable, v10);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    if (Mutable)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
LABEL_16:
      v13 = CFArrayGetCount(Mutable);
      if (v13 < 1)
      {
LABEL_25:
        v19 = 0;
      }

      else
      {
        v14 = v13;
        v15 = 0;
        while (1)
        {
          cf = 0;
          v16 = CFArrayGetValueAtIndex(Mutable, v15);
          if (v16)
          {
            v17 = FigEndpointStreamGetCMBaseObject(v16);
            v18 = *(*(CMBaseObjectGetVTable(v17) + 8) + 48);
            if (v18)
            {
              v18(v17, @"ID", v3, &cf);
            }
          }

          if (FigCFEqual(cf, a2))
          {
            break;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v14 == ++v15)
          {
            goto LABEL_25;
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v19 = 1;
      }

      CFRelease(Mutable);
      goto LABEL_33;
    }
  }

  v19 = 0;
LABEL_33:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v19;
}

BOOL FigEndpointUtility_EndpointPredicate_IsPropertyTrue(uint64_t a1, uint64_t a2)
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, a2, *MEMORY[0x1E695E480], &cf);
    v5 = cf;
    v6 = *MEMORY[0x1E695E4D0];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
    v6 = *MEMORY[0x1E695E4D0];
  }

  return v5 == v6;
}

BOOL FigEndpointUtility_IsEndpointThirdPartyTVFamily(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, @"SubType", *MEMORY[0x1E695E480], &cf);
    v3 = cf;
  }

  else
  {
    v3 = 0;
  }

  IsSubTypeThirdPartyTVFamily = FigEndpointUtility_IsSubTypeThirdPartyTVFamily(v3);
  if (cf)
  {
    CFRelease(cf);
  }

  return IsSubTypeThirdPartyTVFamily;
}

uint64_t FigCFWeakReferenceTableAddValueAndGetKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 36))
  {
    FigCFWeakReferenceTableAddValueAndGetKey_cold_1(&v11);
    return v11;
  }

  if (!a3)
  {
    FigCFWeakReferenceTableAddValueAndGetKey_cold_4(&v11);
    return v11;
  }

  *a3 = 0;
  if (!a2)
  {
    FigCFWeakReferenceTableAddValueAndGetKey_cold_3(&v11);
    return v11;
  }

  FigSimpleMutexLock(*(a1 + 40));
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040FBFA920DuLL);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 24);
    *(a1 + 24) = v8 + 1;
    *v6 = v8;
    if (*(a1 + 37))
    {
      v8 = v8;
      *v6 = v8;
    }

    *a3 = v8;
    FigCFWeakReferenceInit(v6 + 1, a2);
    v7[2] = -a2;
    CFDictionarySetValue(*(a1 + 16), v7, v7);
    v9 = 0;
  }

  else
  {
    FigCFWeakReferenceTableAddValueAndGetKey_cold_2(&v11);
    v9 = v11;
  }

  FigSimpleMutexUnlock(*(a1 + 40));
  return v9;
}

size_t FigCFWeakReferenceTableAddValueAssociatedWithKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = 0;
  v18[2] = 0;
  if (!a3)
  {
    FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_5(&v19);
    return v19;
  }

  if (!a1)
  {
    FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_4(&v19);
    return v19;
  }

  if (!a2)
  {
    FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_3(&v19);
    return v19;
  }

  if (*(a1 + 36) != 1)
  {
    FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_1(&v19);
    return v19;
  }

  FigSimpleMutexLock(*(a1 + 40));
  v18[0] = a3;
  Value = CFDictionaryGetValue(*(a1 + 16), v18);
  if (!Value)
  {
    v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040FBFA920DuLL);
    if (v15)
    {
      v16 = v15;
      *v15 = a3;
      FigCFWeakReferenceInit(v15 + 1, a2);
      v16[2] = -a2;
      CFDictionarySetValue(*(a1 + 16), v16, v16);
      v14 = 0;
    }

    else
    {
      FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_2(&v19);
      v14 = v19;
    }

    goto LABEL_11;
  }

  v8 = Value;
  v9 = FigCFWeakReferenceLoadAndRetain(Value + 1);
  if (!v9)
  {
    FigCFWeakReferenceStore(v8 + 1, a2);
    v14 = 0;
    v8[2] = -a2;
LABEL_11:
    FigSimpleMutexUnlock(*(a1 + 40));
    return v14;
  }

  v10 = v9;
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0DBuLL, "<<<< WEAKREFTABLE >>>>", 0xD5, v3, v12, v13);
  FigSimpleMutexUnlock(*(a1 + 40));
  CFRelease(v10);
  return v14;
}

uint64_t FigCFWeakReferenceTableRemoveValue(uint64_t a1, uint64_t a2)
{
  v6[1] = 0;
  v6[2] = 0;
  if (!a1)
  {
    FigCFWeakReferenceTableRemoveValue_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    FigCFWeakReferenceTableRemoveValue_cold_1(&v7);
    return v7;
  }

  FigSimpleMutexLock(*(a1 + 40));
  v6[0] = a2;
  if (CFDictionaryContainsKey(*(a1 + 16), v6))
  {
    CFDictionaryRemoveValue(*(a1 + 16), v6);
    v4 = 0;
  }

  else
  {
    v4 = 4294955229;
  }

  figCFWeakReferenceTablePeriodicallyCleanUp(a1);
  FigSimpleMutexUnlock(*(a1 + 40));
  return v4;
}

void figCFWeakReferenceTablePeriodicallyCleanUp(uint64_t a1)
{
  context = 0;
  v1 = *(a1 + 32) + 1;
  *(a1 + 32) = v1;
  if (v1 == 100)
  {
    *(a1 + 32) = 0;
    CFDictionaryApplyFunction(*(a1 + 16), figCFWeakReferenceTableCleanup_ifValueIsNULLAppendToKeyValueEntriesToRemove, &context);
    if (context)
    {
      v4.length = CFArrayGetCount(context);
      v4.location = 0;
      CFArrayApplyFunction(context, v4, figCFWeakReferenceTableCleanup_removeKeyValueEntries, *(a1 + 16));
      CFRelease(context);
    }
  }
}

id FigCFWeakReferenceTableCopyValue(uint64_t a1, void *a2)
{
  key[1] = 0;
  key[2] = 0;
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      FigSimpleMutexLock(*(a1 + 40));
      key[0] = v2;
      Value = CFDictionaryGetValue(*(a1 + 16), key);
      if (Value)
      {
        v2 = FigCFWeakReferenceLoadAndRetain(Value + 1);
      }

      else
      {
        v2 = 0;
      }

      figCFWeakReferenceTablePeriodicallyCleanUp(a1);
      FigSimpleMutexUnlock(*(a1 + 40));
    }

    else
    {
      FigCFWeakReferenceTableCopyValue_cold_1();
    }
  }

  else
  {
    FigCFWeakReferenceTableCopyValue_cold_2();
    return 0;
  }

  return v2;
}

void figCFWeakReferenceTable_searchForDisguisedValue(uint64_t a1, id *a2, id *a3)
{
  if (a2[2] == a3[1])
  {
    v6 = FigCFWeakReferenceLoadAndRetain(a2 + 1);
    if (v6 == *a3)
    {
      a3[2] = *a2;
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

uint64_t FigCFWeakReferenceTableCopyValues(uint64_t a1, CFMutableDictionaryRef *a2)
{
  context = 0;
  v10 = 0;
  if (!a1)
  {
    FigCFWeakReferenceTableCopyValues_cold_3(&v11);
    return v11;
  }

  if (!a2)
  {
    FigCFWeakReferenceTableCopyValues_cold_2(&v11);
    return v11;
  }

  v4 = (a1 + 40);
  FigSimpleMutexLock(*(a1 + 40));
  Count = CFDictionaryGetCount(*(v4 - 3));
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigCFWeakReferenceTableCopyValues_cold_1(v4, &v11);
    return v11;
  }

  v7 = Mutable;
  if (Count >= 1)
  {
    context = Mutable;
    v10 = 0;
    CFDictionaryApplyFunction(*(a1 + 16), figCFWeakReferenceTableCopyCopiedEntriesApplier, &context);
  }

  figCFWeakReferenceTablePeriodicallyCleanUp(a1);
  FigSimpleMutexUnlock(*(a1 + 40));
  result = 0;
  *a2 = v7;
  return result;
}

void figCFWeakReferenceTableCopyCopiedEntriesApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = FigCFWeakReferenceLoadAndRetain((a2 + 8));
  if (v5)
  {
    v6 = v5;
    UInt64 = FigCFNumberCreateUInt64(*MEMORY[0x1E695E480], *a2);
    CFDictionarySetValue(*a3, UInt64, v6);
    if (UInt64)
    {
      CFRelease(UInt64);
    }

    CFRelease(v6);
  }

  ++*(a3 + 8);
}

uint64_t FigCFWeakReferenceTableApplyFunction(uint64_t a1, void (*a2)(void, CFTypeRef, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    FigCFWeakReferenceTableApplyFunction_cold_3(v13);
    return LODWORD(v13[0]);
  }

  if (!a2)
  {
    FigCFWeakReferenceTableApplyFunction_cold_2(v13);
    return LODWORD(v13[0]);
  }

  FigSimpleMutexLock(*(a1 + 40));
  Count = CFDictionaryGetCount(*(a1 + 16));
  if (!Count)
  {
    v11 = 0;
LABEL_17:
    FigSimpleMutexUnlock(*(a1 + 40));
    return v11;
  }

  v7 = Count;
  v8 = malloc_type_malloc(16 * Count, 0x10C004003E0BC0AuLL);
  if (!v8)
  {
    FigCFWeakReferenceTableApplyFunction_cold_1(v13);
    v11 = LODWORD(v13[0]);
    goto LABEL_17;
  }

  v9 = v8;
  v13[0] = v8;
  v13[1] = 0;
  CFDictionaryApplyFunction(*(a1 + 16), figCFWeakReferenceTableCopiedEntriesApplier, v13);
  figCFWeakReferenceTablePeriodicallyCleanUp(a1);
  FigSimpleMutexUnlock(*(a1 + 40));
  if (v7 >= 1)
  {
    v10 = v9 + 1;
    do
    {
      if (*v10)
      {
        a2(*(v10 - 1), *v10, a3);
        CFRelease(*v10);
      }

      v10 += 2;
      --v7;
    }

    while (v7);
  }

  free(v9);
  return 0;
}

id figCFWeakReferenceTableCopiedEntriesApplier(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*a3 + 16 * a3[1]);
  result = FigCFWeakReferenceLoadAndRetain((a2 + 8));
  *v5 = *a2;
  v5[1] = result;
  ++a3[1];
  return result;
}

uint64_t FigCFWeakReferenceTableGetTypeID()
{
  if (sRegisterFigCFWeakReferenceTableTypeOnce != -1)
  {
    FigCFWeakReferenceTableGetTypeID_cold_1();
  }

  return sFigCFWeakReferenceTableID;
}

uint64_t RegisterFigCFWeakReferenceTableType()
{
  result = _CFRuntimeRegisterClass();
  sFigCFWeakReferenceTableID = result;
  return result;
}

uint64_t FigCFWeakReferenceTableCreate(const void *a1, char a2, uint64_t *a3)
{
  if (!a3)
  {
    FigCFWeakReferenceTableCreate_cold_5(&v14);
    return v14;
  }

  if (sRegisterFigCFWeakReferenceTableTypeOnce != -1)
  {
    FigCFWeakReferenceTableGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigCFWeakReferenceTableCreate_cold_4(&v14);
    return v14;
  }

  v7 = Instance;
  v8 = FigSimpleMutexCreateWithFlags(a1, 0);
  *(v7 + 40) = v8;
  if (!v8)
  {
    FigCFWeakReferenceTableCreate_cold_3(&v14);
LABEL_20:
    v12 = v14;
    CFRelease(v7);
    return v12;
  }

  if (a2)
  {
    *(v7 + 36) = 1;
  }

  if ((a2 & 2) != 0)
  {
    *(v7 + 37) = 1;
  }

  v9 = getpid();
  v10 = v9;
  if (*(v7 + 37))
  {
    v10 = v9 % 0x10C6uLL;
  }

  *(v7 + 24) = 1000000 * v10 + (10000 * FigAtomicIncrement32(FigCFWeakReferenceTableCreate_sTableCount));
  *(v7 + 32) = 0;
  Mutable = CFDictionaryCreateMutable(a1, 0, &figCFWeakReferenceTableKeyCallbacks, &figCFWeakReferenceTableValueCallbacks);
  *(v7 + 16) = Mutable;
  if (!Mutable)
  {
    FigCFWeakReferenceTableCreate_cold_2(&v14);
    goto LABEL_20;
  }

  v12 = 0;
  *a3 = v7;
  return v12;
}

void figCFWeakReferenceTableCleanup_ifValueIsNULLAppendToKeyValueEntriesToRemove(int a1, void *value, __CFArray **a3)
{
  if (!*(value + 1))
  {
    Mutable = *a3;
    if (*a3 || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0), (*a3 = Mutable) != 0))
    {

      CFArrayAppendValue(Mutable, value);
    }

    else
    {
      figCFWeakReferenceTableCleanup_ifValueIsNULLAppendToKeyValueEntriesToRemove_cold_1();
    }
  }
}

double figCFWeakReferenceTableInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

size_t figCFWeakReferenceTableFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  return FigSimpleMutexDestroy(v3);
}

__CFString *figCFWeakReferenceTableCopyDesc(_BYTE *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (a1[36])
  {
    v5 = "Client provides keys ";
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigCFWeakReferenceTable %s%p>", v5, a1);
  return v4;
}

void figCFWeakReferenceTableValueDestroy(uint64_t a1, id *a2)
{
  FigCFWeakReferenceDestroy(a2 + 1);

  free(a2);
}

uint64_t FigReadWriteLockCreateWithFlags(const void *a1, int a2)
{
  v4 = MEMORY[0x19A8D7200](a1, 40, 0x10600406DE50E81, 0);
  v5 = 0;
  if (v4)
  {
    FigReadWriteLockCreateWithFlags_cold_1(v4, a1, a2, &v7);
    return v7;
  }

  return v5;
}

const __CFAllocator *FigReadWriteLockDestroy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = FigSimpleMutexDestroy(*a1);
  if (!v3)
  {
    *a1 = 0;
    v11 = FigSemaphoreDestroy(*(a1 + 8));
    if (v11)
    {
      v4 = v11;
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v8 = v1;
      v9 = v4;
      v10 = 135;
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    *(a1 + 8) = 0;
    CFAllocatorDeallocate(v4, a1);
    if (!v4)
    {
      return v4;
    }

    CFRelease(v4);
    return 0;
  }

  v4 = v3;
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v8 = v1;
  v9 = v4;
  v10 = 138;
LABEL_6:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "(Fig)", v10, v8, v6, v7);
  return v4;
}

dispatch_queue_t FigReadWriteQueue_Create(const char *a1)
{
  v2 = dispatch_queue_attr_make_with_overcommit();

  return dispatch_queue_create(a1, v2);
}

uint64_t NeroTransportStartAcceptingConnections(uint64_t a1)
{
  CMBaseObject = NeroTransportConnectionGetCMBaseObject(*(a1 + 80));
  v3 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
  if (!v3)
  {
    return 4294954514;
  }

  result = v3(CMBaseObject, @"ConnectionMode", @"Server");
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 80);
  v6 = *(*(CMBaseObjectGetVTable(v5) + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5);
}

uint64_t NeroTransportStopAcceptingConnections(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(CMBaseObjectGetVTable(v1) + 16) + 24);
  if (v2)
  {
    v2(v1);
  }

  return 0;
}

uint64_t NeroTransportDisconnectFromReceiver(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(CMBaseObjectGetVTable(v1) + 16) + 24);
  if (v2)
  {
    v2(v1);
  }

  return 0;
}

BOOL NeroTransportIsHiSpeed(uint64_t a1)
{
  cf = 0;
  CMBaseObject = NeroTransportConnectionGetCMBaseObject(*(a1 + 80));
  v2 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, @"IsHiSpeed", *MEMORY[0x1E695E480], &cf);
    v3 = cf;
    v4 = *MEMORY[0x1E695E4D0];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E4D0];
  }

  return v3 == v4;
}

void __NeroTransportRegisterObjectWithFlags_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 16) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void ft_destroyObjectRecord(uint64_t a1)
{
  if (a1)
  {
    dispatch_release(*(a1 + 8));
    _Block_release(*(a1 + 16));
    _Block_release(*(a1 + 24));

    free(a1);
  }
}

void ft_destroyReplyRecord(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t NeroTransportGetTypeID()
{
  if (qword_1ED4CCCC0 != -1)
  {
    NeroTransportGetTypeID_cold_1();
  }

  return qword_1ED4CCCB8;
}

double neroTransport_Init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void neroTransport_Finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  FigSimpleMutexDestroy(*(a1 + 24));
  FigSimpleMutexDestroy(*(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 88) = 0;
  }
}

__CFString *neroTransport_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[NeroTransport %p retainCount:%d]", a1, v4);
  return Mutable;
}

uint64_t __NeroTransportGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCCB8 = result;
  return result;
}

void __NeroTransportCreate_block_invoke(uint64_t a1, int a2, CMBlockBufferRef theBuffer)
{
  if (a2 == 2)
  {
    FigSimpleMutexLock(*(*(a1 + 32) + 24));
    v17 = *(a1 + 32);
    v18 = *(v17 + 88);
    if (v18)
    {
      CFRelease(v18);
      *(*(a1 + 32) + 88) = 0;
      v17 = *(a1 + 32);
    }

    *(v17 + 72) = 0;
    context = 1684628836;
    v40 = v17;
    v41 = 0;
    CFDictionaryApplyFunction(*(v17 + 32), ft_callAsyncHandlerForObjectRecordApplier, &context);
    FigSimpleMutexUnlock(*(*(a1 + 32) + 24));
    FigSimpleMutexLock(*(*(a1 + 32) + 48));
    CFDictionaryApplyFunction(*(*(a1 + 32) + 56), ft_signalReplySemaphoreApplier, *(a1 + 32));
    v19 = *(*(a1 + 32) + 48);
    goto LABEL_26;
  }

  if (a2 == 1)
  {
    FigSimpleMutexLock(*(*(a1 + 32) + 24));
    if (theBuffer)
    {
      v16 = CFRetain(theBuffer);
    }

    else
    {
      v16 = 0;
    }

    *(*(a1 + 32) + 88) = v16;
    v20 = *(a1 + 32);
    *(v20 + 72) = 1;
    context = 1651470958;
    v40 = v20;
    v41 = theBuffer;
    CFDictionaryApplyFunction(*(v20 + 32), ft_callAsyncHandlerForObjectRecordApplier, &context);
    v19 = *(*(a1 + 32) + 24);
LABEL_26:
    FigSimpleMutexUnlock(v19);
    return;
  }

  if (a2)
  {
    return;
  }

  v5 = *(a1 + 32);
  v38 = 0;
  if (CMBlockBufferGetDataLength(theBuffer) < 8)
  {
    return;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
  {
    return;
  }

  if (CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v38))
  {
    return;
  }

  v7 = CMBlockBufferGetDataLength(theBuffer);
  v8 = v38;
  if (v7 != *v38)
  {
    return;
  }

  v9 = *(v38 + 1);
  switch(v9)
  {
    case 1937337955:
      if (*(v38 + 1) == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v38 + 1);
      }

      v28 = *(v38 + 4);
      v29 = *(v38 + 20);
      blockBufferOut = 0;
      v30 = CMBlockBufferGetDataLength(theBuffer);
      FigSimpleMutexLock(*(v5 + 24));
      Value = CFDictionaryGetValue(*(v5 + 32), v27);
      if (Value)
      {
        v32 = Value;
        if (Value[3])
        {
          if (v30 == 28 || !CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], theBuffer, 0x1CuLL, v30 - 28, 0, &blockBufferOut))
          {
            CFRetain(v5);
            if (blockBufferOut)
            {
              CFRetain(blockBufferOut);
              v33 = blockBufferOut;
            }

            else
            {
              v33 = 0;
            }

            v37 = *v32;
            v35 = v32[1];
            context = MEMORY[0x1E69E9820];
            v40 = 0x40000000;
            v41 = __ft_didReceiveSyncPackage_block_invoke;
            v42 = &__block_descriptor_tmp_28_1;
            v43 = v5;
            v44 = v27;
            v48 = v37;
            v49 = v28;
            v45 = v32;
            v46 = v33;
            v47 = v29;
            goto LABEL_51;
          }
        }
      }

      break;
    case 1919970425:
      v21 = *(v38 + 1);
      context = 0;
      v22 = CMBlockBufferGetDataLength(theBuffer);
      blockBufferOut = 0;
      if (v22 == 20 || !CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], theBuffer, 0x14uLL, v22 - 20, 0, &context))
      {
        FigSimpleMutexLock(*(v5 + 48));
        if (!CFDictionaryGetValueIfPresent(*(v5 + 56), v21, &blockBufferOut) || blockBufferOut)
        {
          FigSimpleMutexUnlock(*(v5 + 48));
        }

        else
        {
          v23 = *(v8 + 4);
          v24 = context;
          v25 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
          *v25 = v23;
          if (v24)
          {
            v26 = CFRetain(v24);
          }

          else
          {
            v26 = 0;
          }

          v25[1] = v26;
          CFDictionarySetValue(*(v5 + 56), v21, v25);
          FigSimpleMutexUnlock(*(v5 + 48));
          dispatch_semaphore_signal(v21);
        }
      }

      v36 = context;
      if (context)
      {
        goto LABEL_53;
      }

      return;
    case 1634957678:
      if (*(v38 + 1) == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(v38 + 1);
      }

      v11 = *(v38 + 4);
      blockBufferOut = 0;
      v12 = CMBlockBufferGetDataLength(theBuffer);
      FigSimpleMutexLock(*(v5 + 24));
      v13 = CFDictionaryGetValue(*(v5 + 32), v10);
      if (v13)
      {
        v14 = v13;
        if (v12 == 20 || !CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], theBuffer, 0x14uLL, v12 - 20, 0, &blockBufferOut))
        {
          CFRetain(v5);
          if (blockBufferOut)
          {
            CFRetain(blockBufferOut);
            v15 = blockBufferOut;
          }

          else
          {
            v15 = 0;
          }

          v34 = *v14;
          v35 = *(v14 + 1);
          context = MEMORY[0x1E69E9820];
          v40 = 0x40000000;
          v41 = __ft_didReceiveAsyncPackage_block_invoke;
          v42 = &__block_descriptor_tmp_26_0;
          v43 = v5;
          v44 = v10;
          v47 = __PAIR64__(v11, v34);
          v45 = v14;
          v46 = v15;
LABEL_51:
          dispatch_async(v35, &context);
        }
      }

      break;
    default:
      return;
  }

  FigSimpleMutexUnlock(*(v5 + 24));
  v36 = blockBufferOut;
  if (blockBufferOut)
  {
LABEL_53:
    CFRelease(v36);
  }
}

uint64_t NeroTransportCreateWithNTCXPCConnection(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NeroTransportCreateWithNTCXPCConnection_block_invoke;
  block[3] = &__block_descriptor_tmp_9_2;
  block[4] = a1;
  if (NeroTransportCreateWithNTCXPCConnection_once != -1)
  {
    dispatch_once(&NeroTransportCreateWithNTCXPCConnection_once, block);
  }

  v3 = NeroTransportCreateWithNTCXPCConnection_transport;
  if (NeroTransportCreateWithNTCXPCConnection_transport)
  {
    v3 = CFRetain(NeroTransportCreateWithNTCXPCConnection_transport);
  }

  *a2 = v3;
  return NeroTransportCreateWithNTCXPCConnection_err;
}

void __NeroTransportCreateWithNTCXPCConnection_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  NeroTransportCreateWithNTCXPCConnection_err = FigTransportConnectionXPCClientCreate(*(a1 + 32), &cf);
  if (!NeroTransportCreateWithNTCXPCConnection_err)
  {
    NeroTransportCreateWithNTCXPCConnection_err = NeroTransportCreate(*(a1 + 32), cf, &NeroTransportCreateWithNTCXPCConnection_transport);
    if (!NeroTransportCreateWithNTCXPCConnection_err)
    {
      *(NeroTransportCreateWithNTCXPCConnection_transport + 72) = 1;
      v8 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v8, &type);
      v3 = v8;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v5 = v3;
      }

      else
      {
        v5 = v3 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v10 = 136315138;
        v11 = "NeroTransportCreateWithNTCXPCConnection_block_invoke";
        v6 = _os_log_send_and_compose_impl();
        LOBYTE(v3) = v8;
      }

      else
      {
        v6 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v6, v6 != &v12, v3, 0, v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ft_destroyReplyRecordApplier(NSObject *a1, void *a2)
{
  if (a1)
  {
    dispatch_semaphore_signal(a1);
  }

  ft_destroyReplyRecord(a2);
}

void FigTransportSetSharedTransport(uint64_t a1)
{
  if (FigTransportSetSharedTransport_sTransportQueueCreateOnce != -1)
  {
    FigTransportSetSharedTransport_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigTransportSetSharedTransport_block_invoke_2;
  block[3] = &__block_descriptor_tmp_14_2;
  block[4] = a1;
  dispatch_sync(sTransportQueue, block);
}

dispatch_queue_t __FigTransportSetSharedTransport_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.transport.init", 0);
  sTransportQueue = result;
  _MergedGlobals_47 = 0;
  qword_1ED4CCCC8 = 0;
  return result;
}

void __FigTransportSetSharedTransport_block_invoke_2(uint64_t a1)
{
  v1 = qword_1ED4CCCC8;
  v2 = *(a1 + 32);
  qword_1ED4CCCC8 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t FigTransportInitializeWithConnection(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  FigTransportSetSharedTransport(0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigTransportInitializeWithConnection_block_invoke;
  v4[3] = &unk_1E74A3BE8;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(sTransportQueue, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

size_t __FigTransportInitializeWithConnection_block_invoke(size_t result)
{
  if (!qword_1ED4CCCC8)
  {
    return __FigTransportInitializeWithConnection_block_invoke_cold_1(result);
  }

  ++_MergedGlobals_47;
  return result;
}

BOOL FigTransportIsHiSpeed()
{
  v0 = ft_copySharedTransport();
  IsHiSpeed = NeroTransportIsHiSpeed(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return IsHiSpeed;
}

uint64_t ft_copySharedTransport()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ft_copySharedTransport_block_invoke;
  block[3] = &unk_1E74A3CB0;
  block[4] = &v3;
  dispatch_sync(sTransportQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __ft_didReceiveAsyncPackage_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock(*(*(a1 + 32) + 24));
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 32), *(a1 + 40));
  if (Value && *Value == *(a1 + 64))
  {
    v3 = _Block_copy(*(*(a1 + 48) + 16));
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock(*(*(a1 + 32) + 24));
  if (v3)
  {
    (*(v3 + 2))(v3, *(a1 + 68), *(a1 + 56));
    _Block_release(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

void __ft_didReceiveSyncPackage_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock(*(*(a1 + 32) + 24));
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 32), *(a1 + 40));
  if (Value && *Value == *(a1 + 72))
  {
    v3 = _Block_copy(*(*(a1 + 48) + 24));
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock(*(*(a1 + 32) + 24));
  if (v3)
  {
    v4 = *(a1 + 76);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __ft_didReceiveSyncPackage_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_27_0;
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v8[4] = *(a1 + 32);
    v8[5] = v6;
    v3[2](v3, v4, v5, v8);
    _Block_release(v3);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(*(a1 + 32));
}

void __ft_callAsyncHandlerForObjectRecordApplier_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock(*(*(a1 + 32) + 24));
  if (CFDictionaryContainsKey(*(*(a1 + 32) + 32), *(a1 + 40)))
  {
    v2 = _Block_copy(*(*(a1 + 48) + 16));
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock(*(*(a1 + 32) + 24));
  if (v2)
  {
    (*(v2 + 2))(v2, *(a1 + 64), *(a1 + 56));
    _Block_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

CFTypeRef __ft_copySharedTransport_block_invoke(uint64_t a1)
{
  result = qword_1ED4CCCC8;
  if (qword_1ED4CCCC8)
  {
    result = CFRetain(qword_1ED4CCCC8);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_46()
{

  return CFDictionaryCreateMutable(v0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_2_32()
{
  v2 = *(v0 + 80);

  return CMBaseObjectGetVTable(v2);
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1)
{
  v2 = *(a1 + 24);

  return FigSimpleMutexLock(v2);
}

uint64_t CMTimeSyncTimeOfDayClockGetTypeID()
{
  if (_MergedGlobals_48 != -1)
  {
    CMTimeSyncTimeOfDayClockGetTypeID_cold_1();
  }

  return qword_1ED4CCCD8;
}

uint64_t RegisterFigTimeSyncTimeOfDayClockIDType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCCD8 = result;
  return result;
}

size_t CMTimeSyncTimeOfDayClockCreate(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (sTimeSyncFunctionsLoadedOnce_1 != -1)
  {
    CMTimeSyncTimeOfDayClockCreate_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = qword_1EAF1CEC0;
    v13 = v8;
    v14 = 4294951466;
    v15 = 309;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (_MergedGlobals_48 != -1)
  {
    CMTimeSyncTimeOfDayClockGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v11 = Instance;
    FigNTPClientCreate(*MEMORY[0x1E695E480], (Instance + 32));
    goto LABEL_12;
  }

  v12 = qword_1EAF1CEC0;
  v13 = v8;
  v14 = 4294951465;
  v15 = 315;
LABEL_10:
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v14, "<<<< TimeSyncTimeOfDayClock >>>>", v15, v13, a7, a8);
  if (result)
  {
    return result;
  }

  v11 = 0;
LABEL_12:
  result = 0;
  *a2 = v11;
  return result;
}

void *LoadTimeSyncFunctions_1()
{
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigTimeSyncTimeOfDayClockTrace[1], @"ts_tod_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v0, 0, gFigTimeSyncTimeOfDayClockTrace);
  fig_note_initialize_category_with_default_work_cf(algn_1EAF1CEC8, @"ts_tod_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CEC0);
  v1 = dlopen("/System/Library/PrivateFrameworks/TimeSync.framework/TimeSync", 4);
  if (!v1)
  {
    v11 = 151;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  sTimeSyncClockDispose_1 = dlsym(v1, "TimeSyncClockDispose");
  if (!sTimeSyncClockDispose_1)
  {
    v11 = 139;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncAddgPTPServices_0 = dlsym(v9, "TimeSyncAddgPTPServices");
  if (!sTimeSyncAddgPTPServices_0)
  {
    v11 = 140;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncgPTPManagerNotifyWhenAvailable_0 = dlsym(v9, "TimeSyncgPTPManagerNotifyWhenAvailable");
  if (!sTimeSyncgPTPManagerNotifyWhenAvailable_0)
  {
    v11 = 141;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  f7037e1403bc4fedb8e5d76c00b0b80a = dlsym(v9, "TimeSyncAddCopresencePTPInstnce");
  if (!f7037e1403bc4fedb8e5d76c00b0b80a)
  {
    v11 = 142;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockCreateWithClockIdentifer_1 = dlsym(v9, "TimeSyncClockCreateWithClockIdentifer");
  if (!sTimeSyncClockCreateWithClockIdentifer_1)
  {
    v11 = 143;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  off_1ED4CCCE0 = dlsym(v9, "TimeSyncClockGetClockTimeForHostTime");
  if (!off_1ED4CCCE0)
  {
    v11 = 144;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  off_1ED4CCCE8 = dlsym(v9, "TimeSyncClockGetHostTimeForClockTime");
  if (!off_1ED4CCCE8)
  {
    v11 = 145;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  result = dlsym(v9, "TimeSyncClockCreateAudioClockDeviceUID");
  sTimeSyncClockCreateAudioClockDeviceUID_0 = result;
  if (!result)
  {
    v11 = 146;
    return LoadTimeSyncFunctions_cold_1_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

size_t CMTimeSyncTimeOfDayClockCopyDeviceIdentifier(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a1 + 24))
  {
    *a2 = sTimeSyncClockCreateAudioClockDeviceUID_0();
    return 0;
  }

  else
  {
    v10 = qword_1EAF1CEC0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFC228uLL, "<<<< TimeSyncTimeOfDayClock >>>>", 0x225, v8, a7, a8);
  }
}

void *figTimeSyncTimeOfDayClock_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figTimeSyncTimeOfDayClock_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sTimeSyncClockDispose_1();
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef figTimeSyncTimeOfDayClock_CopyFormattingDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"CMTimeSyncTimeOfDayClock");
}

CFStringRef figTimeSyncTimeOfDayClock_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"CMTimeSyncTimeOfDayClock");
}

uint64_t OUTLINED_FUNCTION_1_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a23 = 0;
  a24 = 0;
  a25 = 0;
  a20 = 0;
  a21 = 0;
  a22 = 0;
  v27 = *(v25 + 32);

  return figTimeSyncCoPresenceNTPClock_GetCoPresenceNTPAnchorTime(v27, &a20, &a23);
}

CMTime *OUTLINED_FUNCTION_2_33@<X0>(CMTime *a1@<X8>, __int128 a2, uint64_t a3, uint64_t a4, CMTime *lhs, uint64_t lhs_8, CMTime *lhs_16, uint64_t a8, uint64_t a9)
{
  lhs_16 = a1;
  a2 = *v9;
  a3 = *(v9 + 16);

  return CMTimeSubtract(&a9, &lhs, &a2);
}

__n128 OUTLINED_FUNCTION_4_26()
{
  result = *(v1 - 80);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 64);
  return result;
}

CFArrayRef FigTextMarkupCreateARGBColorArrayFromCGColor(CGColor *a1)
{
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  Components = CGColorGetComponents(a1);
  if (NumberOfComponents != 4)
  {
    return 0;
  }

  v5 = *Components;
  v6 = Components[1];
  v8 = Components[2];
  v7 = Components[3];

  return createARGBColorArrayFromComponents(v7, v5, v6, v8);
}

CFArrayRef createARGBColorArrayFromComponents(double a1, double a2, double a3, double a4)
{
  values[4] = *MEMORY[0x1E69E9840];
  v13 = a2;
  valuePtr = a1;
  v11 = a4;
  v12 = a3;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberCGFloatType, &v13);
  v7 = CFNumberCreate(v4, kCFNumberCGFloatType, &v12);
  v8 = CFNumberCreate(v4, kCFNumberCGFloatType, &v11);
  values[0] = v5;
  values[1] = v6;
  values[2] = v7;
  values[3] = v8;
  v9 = CFArrayCreate(v4, values, 4, MEMORY[0x1E695E9C0]);
  CFRelease(v5);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);
  return v9;
}

CFTypeRef FigTextMarkupCreateBlackARGBColorArray()
{
  if (_MergedGlobals_49 != -1)
  {
    FigTextMarkupCreateBlackARGBColorArray_cold_1();
  }

  v1 = qword_1ED4CCCF8;

  return CFRetain(v1);
}

CFArrayRef figTextMarkupCreateBlackARGBColorArrayAndStoreInContextPtr(CFArrayRef *a1)
{
  result = createARGBColorArrayFromComponents(1.0, 0.0, 0.0, 0.0);
  *a1 = result;
  return result;
}

CFTypeRef FigTextMarkupCreateWhiteARGBColorArray()
{
  if (qword_1ED4CCD00 != -1)
  {
    FigTextMarkupCreateWhiteARGBColorArray_cold_1();
  }

  v1 = qword_1ED4CCD08;

  return CFRetain(v1);
}

CFArrayRef figTextMarkupCreateWhiteARGBColorArrayAndStoreInContextPtr(CFArrayRef *a1)
{
  result = createARGBColorArrayFromComponents(1.0, 1.0, 1.0, 1.0);
  *a1 = result;
  return result;
}

CFTypeRef FigTextMarkupCreateClearARGBColorArray()
{
  if (qword_1ED4CCD10 != -1)
  {
    FigTextMarkupCreateClearARGBColorArray_cold_1();
  }

  v1 = qword_1ED4CCD18;

  return CFRetain(v1);
}

CFArrayRef figTextMarkupCreateClearARGBColorArrayAndStoreInContextPtr(CFArrayRef *a1)
{
  result = createARGBColorArrayFromComponents(0.0, 0.0, 0.0, 0.0);
  *a1 = result;
  return result;
}

CFDictionaryRef FigTextMarkupDimensionCopyAsSimplifiedDictionary(uint64_t a1, uint64_t a2, const __CFAllocator *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v14 = a2;
  *keys = xmmword_1E74A42E8;
  v19 = @"isReversed";
  values = 0;
  v16 = 0;
  v17 = 0;
  if ((a2 & 0x100000000) == 0)
  {
    goto LABEL_30;
  }

  v4 = 0;
  if (a2 > 1886920735)
  {
    if (a2 <= 1986879863)
    {
      if (a2 == 1886920736)
      {
        v5 = @"px";
      }

      else
      {
        if (a2 != 1986535456)
        {
          goto LABEL_33;
        }

        v5 = @"vh";
      }
    }

    else
    {
      switch(a2)
      {
        case 0x766D6178:
          v5 = @"vmax";
          break;
        case 0x766D696E:
          v5 = @"vmin";
          break;
        case 0x76772020:
          v5 = @"vw";
          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a2 <= 1701650463)
  {
    if (a2 == 622862368)
    {
      v5 = @"%";
    }

    else
    {
      if (a2 != 1667591276)
      {
        goto LABEL_33;
      }

      v5 = @"c";
    }
  }

  else
  {
    switch(a2)
    {
      case 0x656D2020:
        v5 = @"em";
        break;
      case 0x6C696E65:
        v5 = @"li";
        break;
      case 0x70747320:
        v5 = @"pt";
        break;
      default:
        goto LABEL_33;
    }
  }

  v6 = CFRetain(v5);
  if (!v6)
  {
LABEL_30:
    v4 = 0;
    goto LABEL_33;
  }

  v7 = v6;
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  v16 = CFRetain(v7);
  if ((~HIDWORD(v14) & 0x21) != 0)
  {
    v9 = 2;
  }

  else
  {
    v8 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      v8 = CFRetain(v8);
    }

    v17 = v8;
    v9 = 3;
  }

  v4 = CFDictionaryCreate(a3, keys, &values, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v7);
LABEL_33:
  for (i = 0; i != 24; i += 8)
  {
    v11 = *(&values + i);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  return v4;
}

CFDictionaryRef FigTextMarkupSizeCopyAsSimplifiedDictionary(uint64_t *a1, const __CFAllocator *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = FigTextMarkupDimensionCopyAsSimplifiedDictionary(*a1, a1[1], a2);
  v5 = FigTextMarkupDimensionCopyAsSimplifiedDictionary(a1[2], a1[3], a2);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *keys = xmmword_1E74A4300;
    v11[0] = v4;
    v11[1] = v5;
    v10 = CFDictionaryCreate(a2, keys, v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_10;
  }

  v10 = 0;
  v8 = 0;
  if (v4)
  {
LABEL_10:
    CFRelease(v4);
    v8 = v10;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    CFRelease(v6);
  }

  return v8;
}

CFDictionaryRef FigTextMarkupAspectRatioCopyAsSimplifiedDictionary(uint64_t a1, const __CFAllocator *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  *keys = xmmword_1E74A4310;
  v3 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  p_values = &values;
  v11 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr + 4);
  v5 = CFDictionaryCreate(a2, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = 1;
  do
  {
    v7 = v6;
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    v6 = 0;
    p_values = &v11;
  }

  while ((v7 & 1) != 0);
  return v5;
}

uint64_t FigTextMarkupCreateTextMarkupFromRubyReserve(const void *a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    FigTextMarkupCreateTextMarkupFromRubyReserve_cold_5(&v16);
    return v16;
  }

  if (!a3)
  {
    FigTextMarkupCreateTextMarkupFromRubyReserve_cold_4(&v16);
    return v16;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != FigCaptionRubyReserveGetTypeID())
  {
    FigTextMarkupCreateTextMarkupFromRubyReserve_cold_1(&v16);
    return v16;
  }

  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigTextMarkupCreateTextMarkupFromRubyReserve_cold_3(&v16);
    return v16;
  }

  v8 = Mutable;
  RubyPosition = FigCaptionRubyReserveGetRubyPosition(a1);
  Length = FigCaptionRubyReserveGetLength(a1);
  v12 = FigGeometryDimensionCopyAsDictionary(Length, v11, a2);
  if (!v12)
  {
    FigTextMarkupCreateTextMarkupFromRubyReserve_cold_2(v8, &v16);
    return v16;
  }

  v13 = v12;
  if (RubyPosition)
  {
    if (FigCFEqual(RubyPosition, @"RubyPositionBefore"))
    {
      v14 = @"CMRubyPosition_Before";
LABEL_15:
      CFDictionarySetValue(v8, @"CMRubyReservePosition", v14);
      goto LABEL_16;
    }

    if (FigCFEqual(RubyPosition, @"RubyPositionAfter"))
    {
      v14 = @"CMRubyPosition_After";
      goto LABEL_15;
    }

    if (FigCFEqual(RubyPosition, @"RubyPositionOutside"))
    {
      v14 = @"CMRubyPosition_Outside";
      goto LABEL_15;
    }

    if (FigCFEqual(RubyPosition, @"RubyPositionBoth"))
    {
      v14 = @"CMRubyPosition_Both";
      goto LABEL_15;
    }
  }

LABEL_16:
  CFDictionarySetValue(v8, @"CMRubyReserveLength", v13);
  *a3 = v8;
  CFRelease(v13);
  return 0;
}

uint64_t FigTextMarkupCreateRubyReserveFromTextMarkup(const void *a1, uint64_t a2, void *a3)
{
  v19 = 0;
  if (!a1)
  {
    FigTextMarkupCreateRubyReserveFromTextMarkup_cold_5(&v20);
    return v20;
  }

  if (!a3)
  {
    FigTextMarkupCreateRubyReserveFromTextMarkup_cold_4(&v20);
    return v20;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    FigTextMarkupCreateRubyReserveFromTextMarkup_cold_1(&v20);
    return v20;
  }

  Value = CFDictionaryGetValue(a1, @"CMRubyReservePosition");
  if (!Value || (v8 = Value, v9 = CFGetTypeID(Value), v9 != CFStringGetTypeID()))
  {
    FigTextMarkupCreateRubyReserveFromTextMarkup_cold_3(&v20);
    return v20;
  }

  v10 = CFDictionaryGetValue(a1, @"CMRubyReserveLength");
  if (!v10 || (v11 = v10, v12 = CFGetTypeID(v10), v12 != CFDictionaryGetTypeID()))
  {
    FigTextMarkupCreateRubyReserveFromTextMarkup_cold_2(&v20);
    return v20;
  }

  v13 = FigGeometryDimensionMakeFromDictionary(v11);
  result = FigCaptionRubyReserveCreate(a2, v8, v13, v14, &v19, v15, v16, v17);
  *a3 = v19;
  return result;
}

uint64_t FigTextMarkupCreateTextMarkupFromTextEmphasis(const void *a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  if (!a1)
  {
    FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_4(&v24);
    return v24;
  }

  if (!a3)
  {
    FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_3(&v24);
    return v24;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != FigCaptionTextEmphasisGetTypeID())
  {
    FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_1(&v24);
    return v24;
  }

  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_2(&v24);
    return v24;
  }

  v8 = Mutable;
  EmphasisStyle = FigCaptionTextEmphasisGetEmphasisStyle(a1);
  Color = FigCaptionTextEmphasisGetColor(a1);
  RubyPosition = FigCaptionTextEmphasisGetRubyPosition(a1);
  if (EmphasisStyle > 1)
  {
    if (EmphasisStyle != 2)
    {
      if (EmphasisStyle == 3)
      {
        CFDictionarySetValue(v8, @"CMTextEmphasisType", @"Custom");
        CustomMark = FigCaptionTextEmphasisGetCustomMark(a1);
        if (CustomMark)
        {
          v12 = CustomMark;
          v14 = @"CMTextEmphasisCustomMark";
LABEL_15:
          v15 = v8;
LABEL_16:
          CFDictionarySetValue(v15, v14, v12);
          goto LABEL_17;
        }
      }

      goto LABEL_17;
    }

    CFDictionarySetValue(v8, @"CMTextEmphasisType", @"Predefined");
    MarkingStyle = FigCaptionTextEmphasisGetMarkingStyle(a1);
    PredefinedMark = FigCaptionTextEmphasisGetPredefinedMark(a1);
    v20 = PredefinedMark;
    if (MarkingStyle == 2)
    {
      v21 = 0;
      v22 = @"Stroked";
    }

    else if (MarkingStyle == 1)
    {
      v21 = 0;
      v22 = @"Filled";
    }

    else
    {
      v22 = 0;
      v21 = 1;
    }

    if ((PredefinedMark - 1) > 2)
    {
      v23 = 0;
      if (v21)
      {
LABEL_41:
        if (!v20)
        {
          goto LABEL_17;
        }

        v14 = @"CMTextEmphasisMarkType";
        v15 = v8;
        v12 = v23;
        goto LABEL_16;
      }
    }

    else
    {
      v23 = off_1E74A4380[PredefinedMark - 1];
      if (v21)
      {
        goto LABEL_41;
      }
    }

    CFDictionarySetValue(v8, @"CMTextEmphasisMarkingStyle", v22);
    goto LABEL_41;
  }

  if (!EmphasisStyle)
  {
    v12 = @"None";
    goto LABEL_14;
  }

  if (EmphasisStyle == 1)
  {
    v12 = @"Auto";
LABEL_14:
    v14 = @"CMTextEmphasisType";
    goto LABEL_15;
  }

LABEL_17:
  if (Color)
  {
    Color = FigTextMarkupCreateARGBColorArrayFromCGColor(Color);
    if (Color)
    {
      CFDictionarySetValue(v8, @"CMTextEmphasisColor", Color);
    }
  }

  if (!FigCFEqual(RubyPosition, @"RubyPositionAfter"))
  {
    if (FigCFEqual(RubyPosition, @"RubyPositionOutside"))
    {
      v16 = @"CMRubyPosition_Outside";
    }

    else
    {
      v16 = @"CMRubyPosition_Before";
    }

    if (!RubyPosition)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v16 = @"CMRubyPosition_After";
  if (RubyPosition)
  {
LABEL_22:
    CFDictionarySetValue(v8, @"CMTextEmphasisPosition", v16);
  }

LABEL_23:
  *a3 = v8;
  if (Color)
  {
    CFRelease(Color);
  }

  return 0;
}

uint64_t FigTextMarkupCreateTextMarkupFromAbstractPosition(const void *a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  if (!a1)
  {
    FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_5(&v53);
    return v53;
  }

  if (!a3)
  {
    FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_4(&v53);
    return v53;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != FigCaptionPositionGetTypeID())
  {
    FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_1(&v53);
    return v53;
  }

  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_3(&v53);
    return v53;
  }

  v15 = Mutable;
  HorizontalEdgeReference = FigCaptionPositionGetHorizontalEdgeReference(a1, v8, v9, v10, v11, v12, v13, v14);
  VerticalEdgeReference = FigCaptionPositionGetVerticalEdgeReference(a1, v17, v18, v19, v20, v21, v22, v23);
  HorizontalEdgeOffset = FigCaptionPositionGetHorizontalEdgeOffset(a1, v25, v26, v27, v28, v29, v30, v31);
  v34 = v33;
  VerticalEdgeOffset = FigCaptionPositionGetVerticalEdgeOffset(a1, v33, v35, v36, v37, v38, v39, v40);
  if ((v34 & 0x1D00000000) != 0x100000000)
  {
    v45 = 0;
    v47 = 0;
LABEL_10:
    EdgeReferenceMarkupAttributeValue = ftmarkup_getEdgeReferenceMarkupAttributeValue(HorizontalEdgeReference);
    v49 = ftmarkup_getEdgeReferenceMarkupAttributeValue(VerticalEdgeReference);
    if (EdgeReferenceMarkupAttributeValue)
    {
      CFDictionarySetValue(v15, @"CMHorizontalEdgeReference", EdgeReferenceMarkupAttributeValue);
    }

    if (v49)
    {
      CFDictionarySetValue(v15, @"CMVerticalEdgeReference", v49);
    }

    if (v45)
    {
      CFDictionarySetValue(v15, @"CMHorizontalEdgeOffset", v45);
    }

    if (v47)
    {
      CFDictionarySetValue(v15, @"CMVerticalEdgeOffset", v47);
    }

    v50 = 0;
    *a3 = v15;
    if (!v45)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v43 = VerticalEdgeOffset;
  v44 = v42;
  v45 = FigGeometryDimensionCopyAsDictionary(HorizontalEdgeOffset, v34, a2);
  if (v45)
  {
    v46 = FigGeometryDimensionCopyAsDictionary(v43, v44, a2);
    if (v46)
    {
      v47 = v46;
      goto LABEL_10;
    }

    v52 = 1139;
  }

  else
  {
    v52 = 1132;
  }

  FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_2(v52, v15, &v53);
  v47 = 0;
  v50 = v53;
  if (v45)
  {
LABEL_19:
    CFRelease(v45);
  }

LABEL_20:
  if (v47)
  {
    CFRelease(v47);
  }

  return v50;
}

__CFString *ftmarkup_getEdgeReferenceMarkupAttributeValue(int a1)
{
  if (a1 <= 1701999214)
  {
    if (!a1)
    {
      return 0;
    }

    if (a1 != 1651471476)
    {
      if (a1 == 1667591796)
      {
        return @"CMEdgeReference_Center";
      }

      goto LABEL_13;
    }

    return @"CMEdgeReference_Bottom";
  }

  else
  {
    if (a1 <= 1919510375)
    {
      if (a1 != 1701999215)
      {
        if (a1 == 1818584692)
        {
          return @"CMEdgeReference_Left";
        }

LABEL_13:
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x448, v1, v4, v5);
      }

      return 0;
    }

    if (a1 != 1919510376)
    {
      if (a1 == 1953460256)
      {
        return @"CMEdgeReference_Top";
      }

      goto LABEL_13;
    }

    return @"CMEdgeReference_Right";
  }
}

const __CFArray *FigTextMarkupCreateTextMarkupFromTextShadowList(const void *a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  if (!a1)
  {
    FigTextMarkupCreateTextMarkupFromTextShadowList_cold_7(&v38);
    return v38;
  }

  v3 = a3;
  if (!a3)
  {
    FigTextMarkupCreateTextMarkupFromTextShadowList_cold_6(&v38);
    return v38;
  }

  v5 = CFGetTypeID(a1);
  if (v5 != FigCaptionTextShadowListGetTypeID())
  {
    FigTextMarkupCreateTextMarkupFromTextShadowList_cold_1(&v38);
    return v38;
  }

  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigTextMarkupCreateTextMarkupFromTextShadowList_cold_5(&v38);
    return v38;
  }

  v7 = Mutable;
  TextShadowArray = FigCaptionTextShadowListGetTextShadowArray(a1);
  v9 = TextShadowArray;
  if (!TextShadowArray)
  {
    goto LABEL_48;
  }

  if (!CFArrayGetCount(TextShadowArray))
  {
    v9 = 0;
    goto LABEL_48;
  }

  if (CFArrayGetCount(v9) < 1)
  {
    v11 = 0;
    v12 = 0;
    Color = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_35:
    v9 = 0;
    *v3 = v7;
    v7 = 0;
    if (v16)
    {
LABEL_36:
      CFRelease(v16);
    }

    goto LABEL_37;
  }

  v32 = v3;
  theDict = v7;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  Color = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v34 = *MEMORY[0x1E695E480];
  v35 = v9;
  while (1)
  {
    if (v11)
    {
      CFRelease(v11);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (Color)
    {
      CFRelease(Color);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
    if (!ValueAtIndex)
    {
      FigTextMarkupCreateTextMarkupFromTextShadowList_cold_4(&v38);
      goto LABEL_52;
    }

    v18 = ValueAtIndex;
    v19 = CFGetTypeID(ValueAtIndex);
    if (v19 != FigCaptionTextShadowGetTypeID())
    {
      FigTextMarkupCreateTextMarkupFromTextShadowList_cold_2(&v38);
LABEL_52:
      v9 = v38;
      v7 = theDict;
      if (v12)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    theArray = v12;
    v20 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    HorizontalAxisOffset = FigCaptionTextShadowGetHorizontalAxisOffset(v18);
    v23 = v22;
    VerticalAxisOffset = FigCaptionTextShadowGetVerticalAxisOffset(v18);
    v26 = v25;
    BlurRadius = FigCaptionTextShadowGetBlurRadius(v18);
    v29 = v28;
    Color = FigCaptionTextShadowGetColor(v18);
    v16 = FigGeometryDimensionCopyAsDictionary(HorizontalAxisOffset, v23, v34);
    v15 = FigGeometryDimensionCopyAsDictionary(VerticalAxisOffset, v26, v34);
    v30 = v29;
    v11 = v20;
    v14 = FigGeometryDimensionCopyAsDictionary(BlurRadius, v30, v34);
    if (v16)
    {
      CFDictionarySetValue(v20, @"CMTextShadowHorizontalAxisOffset", v16);
    }

    if (v15)
    {
      CFDictionarySetValue(v20, @"CMTextShadowVerticalAxisOffset", v15);
    }

    v12 = theArray;
    v9 = v35;
    if (v14)
    {
      CFDictionarySetValue(v20, @"CMTextShadowBlurRadius", v14);
    }

    if (Color)
    {
      Color = FigTextMarkupCreateARGBColorArrayFromCGColor(Color);
      if (Color)
      {
        CFDictionarySetValue(v20, @"CMTextShadowColor", Color);
      }
    }

    if (!theArray)
    {
      v12 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
      if (!v12)
      {
        break;
      }
    }

    CFArrayAppendValue(v12, v20);
    if (++v10 >= CFArrayGetCount(v35))
    {
      v7 = theDict;
      CFDictionarySetValue(theDict, @"CMTextShadowList", v12);
      v3 = v32;
      goto LABEL_35;
    }
  }

  FigTextMarkupCreateTextMarkupFromTextShadowList_cold_3(&v38);
  v9 = v38;
  v7 = theDict;
  if (v16)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Color)
  {
    CFRelease(Color);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
LABEL_46:
    CFRelease(v12);
  }

LABEL_47:
  if (v7)
  {
LABEL_48:
    CFRelease(v7);
  }

  return v9;
}

uint64_t FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle(const void *a1, void *a2)
{
  valuePtr = 0;
  FigThreadRunOnce(&gCreateGenericFontNameToMACaptionAppearanceFontStyleMappingDictOnce, figtextmarkup_setUpGenericFontNameToMACaptionAppearanceFontStyleMapping);
  if (!a1)
  {
    FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle_cold_1(&v12);
    v8 = 0;
    v7 = 0;
    v9 = v12;
    if (!a2)
    {
      return v7 & v9;
    }

    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(gGenericFontNameToMACaptionAppearanceFontStyleMappingDict, a1);
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr >= 0;
    v8 = valuePtr & ~(valuePtr >> 31);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = 1;
  if (a2)
  {
LABEL_7:
    *a2 = v8;
  }

  return v7 & v9;
}

void figtextmarkup_setUpGenericFontNameToMACaptionAppearanceFontStyleMapping()
{
  v0 = 0;
  v14 = *MEMORY[0x1E69E9840];
  v10 = xmmword_1E74A4340;
  v11 = *&off_1E74A4350;
  v12 = xmmword_1E74A4360;
  v13 = *off_1E74A4370;
  *keys = xmmword_1E74A4320;
  v9 = *&off_1E74A4330;
  valuePtr[0] = xmmword_1971669B8;
  valuePtr[1] = unk_1971669C8;
  valuePtr[2] = xmmword_1971669D8;
  memset(v6, 0, sizeof(v6));
  v1 = valuePtr;
  v2 = *MEMORY[0x1E695E480];
  do
  {
    *(v6 + v0) = CFNumberCreate(v2, kCFNumberSInt32Type, v1);
    v0 += 8;
    v1 = (v1 + 4);
  }

  while (v0 != 96);
  v3 = CFDictionaryCreate(v2, keys, v6, 12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = 0;
  gGenericFontNameToMACaptionAppearanceFontStyleMappingDict = v3;
  do
  {
    v5 = *(v6 + v4);
    if (v5)
    {
      CFRelease(v5);
      *(v6 + v4) = 0;
    }

    v4 += 8;
  }

  while (v4 != 96);
}

uint64_t FigVMPageAllocateWithOwnershipIdentity(vm_address_t *address, vm_size_t size, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a4;
  v9 = a3;
  sizea = size;
  object_handle = 0;
  if (FigVMPageAllocateWithOwnershipIdentity_sCheckFigVMPageUtilitiesTraceOnce == -1)
  {
    if (address)
    {
      goto LABEL_3;
    }

LABEL_18:
    FigVMPageAllocateWithOwnershipIdentity_cold_3(&v21, size, a3, a4, a5, a6, a7, a8);
    return v21;
  }

  FigVMPageAllocateWithOwnershipIdentity_cold_1();
  if (!address)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (!size)
  {
    FigVMPageAllocateWithOwnershipIdentity_cold_2(&v21, size, a3, a4, a5, a6, a7, a8);
    return v21;
  }

  if (v8 > 5)
  {
    v12 = 1;
  }

  else
  {
    v12 = dword_1971669E8[v8];
  }

  v13 = MEMORY[0x1E69E9A60];
  v14 = *MEMORY[0x1E69E9A60];
  if (v9 - 1 <= 0xFFFFFFFD)
  {
    memory_entry_64 = mach_make_memory_entry_64(v14, &sizea, 0, 139267, &object_handle, 0);
    v16 = object_handle;
    if (memory_entry_64 || (memory_entry_64 = mach_memory_entry_ownership(object_handle, v9, 3, 0), v16 = object_handle, memory_entry_64))
    {
      v17 = memory_entry_64;
    }

    else
    {
      v17 = mach_vm_map(*v13, address, sizea, 0, v12, object_handle, 0, 0, 3, 3, 1u);
      v16 = object_handle;
    }

    if (v16 - 1 <= 0xFFFFFFFD)
    {
      mach_port_deallocate(*v13, v16);
    }

    return v17;
  }

  return vm_allocate(v14, address, size, v12);
}

void __FigVMPageAllocateWithOwnershipIdentity_block_invoke()
{
  fig_note_initialize_category_with_default_work_cf(&gFigVMPageUtilitiesTrace[1], @"vm_page_utilities", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, gFigVMPageUtilitiesTrace);

  fig_note_initialize_category_with_default_work_cf(&unk_1ED4CC320, @"vm_page_utilities", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, &qword_1ED4CC318);
}

uint64_t FigEndpointAggregateGetClassID()
{
  if (_MergedGlobals_50 != -1)
  {
    FigEndpointAggregateGetClassID_cold_1();
  }

  return qword_1ED4CCD30;
}

size_t FigEndpointAggregateGetClassIDCallback(void *a1)
{
  ClassID = FigEndpointExtendedGetClassID();

  return FigBaseClassRegisterClass(&FigEndpointAggregateGetClassIDCallback_sFigEndpointAggregateClassDesc, ClassID, 0, a1, v3, v4, v5, v6);
}

uint64_t FigPixelBufferOriginAppendPixelBufferToIPCMessageData(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3, uint64_t a4, uint64_t a5, unint64_t a6, size_t *a7)
{
  if (a5)
  {
    if (!pixelBuffer)
    {
      goto LABEL_27;
    }

    if (a6 <= 0x2B)
    {
      FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_3(&extraColumnsOnRight + 2);
    }

    else if (a1)
    {
      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      if (IOSurface)
      {
        v13 = IOSurface;
        pixelBufferOrigin_registerPixelBuffer(a1, pixelBuffer);
        *a5 = *(a1 + 32);
        *(a5 + 8) = IOSurfaceGetID(v13);
        extraColumnsOnRight = 0uLL;
        v24 = 0;
        extraRowsOnTop = 0;
        CVPixelBufferGetExtendedPixels(pixelBuffer, &extraColumnsOnRight + 1, &extraColumnsOnRight, &extraRowsOnTop, &v24);
        v14 = extraColumnsOnRight;
        *(a5 + 12) = *(&extraColumnsOnRight + 1);
        *(a5 + 20) = v14;
        v15 = v24;
        *(a5 + 28) = extraRowsOnTop;
        *(a5 + 36) = v15;
        extraColumnsOnRight = 0uLL;
        extraRowsOnTop = 0;
        pixelBufferSharing_copyPixelBufferAttachments(pixelBuffer, a3, &extraColumnsOnRight + 1, &extraColumnsOnRight);
        if (extraColumnsOnRight != 0)
        {
          *(a5 + 44) = 0;
          FigInMemorySerializerAppendCFDictionary();
          v17 = v16;
          v18 = extraRowsOnTop;
          if (!v16)
          {
            *(a5 + 44) = extraRowsOnTop;
            *(a5 + 52) = 0;
            FigInMemorySerializerAppendCFDictionary();
            if (v19)
            {
              v20 = *(a5 + 52);
            }

            else
            {
              v20 = extraRowsOnTop;
              *(a5 + 52) = extraRowsOnTop;
            }

            v21 = *(a5 + 44) + v20;
            extraRowsOnTop = v21;
            if (v21)
            {
              v18 = v21 + 16;
              extraRowsOnTop = v21 + 16;
            }

            else
            {
              v18 = 0;
            }
          }

          if (*(&extraColumnsOnRight + 1))
          {
            CFRelease(*(&extraColumnsOnRight + 1));
          }

          if (extraColumnsOnRight)
          {
            CFRelease(extraColumnsOnRight);
          }

          if (v17)
          {
            pixelBufferOrigin_unregisterPixelBuffer(a1);
            return v17;
          }

          goto LABEL_28;
        }

LABEL_27:
        v18 = 0;
LABEL_28:
        if (!a7)
        {
          return 0;
        }

        goto LABEL_29;
      }

      FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_1(&extraColumnsOnRight + 2);
    }

    else
    {
      FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_2(&extraColumnsOnRight + 2);
    }

LABEL_26:
    v17 = DWORD2(extraColumnsOnRight);
    if (DWORD2(extraColumnsOnRight))
    {
      return v17;
    }

    goto LABEL_27;
  }

  if (!a7)
  {
    FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_4(&extraColumnsOnRight + 2);
    goto LABEL_26;
  }

  v18 = 0;
LABEL_29:
  v17 = 0;
  v22 = v18 + 44;
  if (!pixelBuffer)
  {
    v22 = 0;
  }

  *a7 = v22;
  return v17;
}

uint64_t pixelBufferOrigin_registerPixelBuffer(uint64_t a1, __CVBuffer *a2)
{
  BufferBacking = CVPixelBufferGetBufferBacking();
  IOSurface = CVPixelBufferGetIOSurface(a2);
  FigSimpleMutexLock(*(a1 + 16));
  if (!CFDictionaryContainsKey(*(a1 + 24), -BufferBacking))
  {
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    v6[1] = FigCFWeakReferenceHolderCreateWithReferencedObject(BufferBacking);
    if (IOSurface)
    {
      v7 = CFRetain(IOSurface);
    }

    else
    {
      v7 = 0;
    }

    *v6 = v7;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, a1, pixelBufferOrigin_backingNotificationListener, *MEMORY[0x1E6965C58], BufferBacking, 1028);
    CFDictionarySetValue(*(a1 + 24), -BufferBacking, v6);
  }

  v9 = *(a1 + 16);

  return FigSimpleMutexUnlock(v9);
}

void pixelBufferOrigin_unregisterPixelBuffer(uint64_t a1)
{
  BufferBacking = CVPixelBufferGetBufferBacking();
  FigSimpleMutexLock(*(a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 24), -BufferBacking);
  if (Value)
  {
    CFDictionaryRemoveValue(*(a1 + 24), -BufferBacking);
    FigSimpleMutexUnlock(*(a1 + 16));
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a1, *MEMORY[0x1E6965C58], BufferBacking);
  }

  else
  {
    FigSimpleMutexUnlock(*(a1 + 16));
  }

  pixelBufferOrigin_disposeBufferBackingEntry(Value);
}

uint64_t FigPixelBufferOriginCompleteEstablishingPixelBufferRecipientUsingXPCMessage2(void *a1, CFTypeRef *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, ".objectID");
  v4 = FigXPCServerRetainNeighborObjectFromID(qword_1ED4CCD50, uint64, a2);
  if (v4)
  {
    if (!a2)
    {
      return v4;
    }
  }

  else
  {
    v5 = CFGetTypeID(*a2);
    if (qword_1ED4CCD60 != -1)
    {
      FigPixelBufferOriginCompleteEstablishingPixelBufferRecipientUsingXPCMessage2_cold_1();
    }

    if (v5 == qword_1ED4CCD68)
    {
      return 0;
    }

    FigPixelBufferOriginCompleteEstablishingPixelBufferRecipientUsingXPCMessage2_cold_2(&v7);
    v4 = v7;
    if (!a2)
    {
      return v4;
    }
  }

  if (v4 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v4;
}

uint64_t FigPixelBufferOriginGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 32);
    }

    else
    {
      FigPixelBufferOriginGetObjectID_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigPixelBufferOriginGetObjectID_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID(void *a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a2)
  {
    FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_5(&v7);
    return v7;
  }

  *a2 = 0;
  if (!a1)
  {
    FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_4(&v7);
    return v7;
  }

  if (!qword_1ED4CCD50)
  {
    FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_3(&v7);
    return v7;
  }

  v3 = FigXPCServerRetainNeighborObjectFromID(qword_1ED4CCD50, a1, &cf);
  if (!v3)
  {
    v4 = CFGetTypeID(cf);
    if (qword_1ED4CCD60 != -1)
    {
      FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_1();
    }

    if (v4 != qword_1ED4CCD68)
    {
      FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_2(&cf, &v7);
      return v7;
    }
  }

  *a2 = cf;
  return v3;
}

size_t FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData(uint64_t a1, uint64_t a2, uint64_t a3, __CVBuffer **a4)
{
  v17 = 0;
  if (!a4)
  {
    FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_6(&theAttachments);
    return theAttachments;
  }

  if (!a1)
  {
    FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_5(&theAttachments);
    return theAttachments;
  }

  if (*a2 != *(a1 + 16))
  {
    FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_1(&theAttachments);
    return theAttachments;
  }

  v8 = pixelBufferRecipient_createRecipientPixelBuffer(a1, *(a2 + 8), pixelBufferRecipient_copyCVPixelBufferFromSerializedPixelBufferDescription, a2, &v17);
  v9 = v17;
  if (!v8)
  {
    cf = 0;
    theAttachments = 0;
    if (a3 == 44 || !v17)
    {
      goto LABEL_32;
    }

    if ((a3 - 44) <= 0xF)
    {
      FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_4(&v20);
    }

    else
    {
      v10 = *(a2 + 44);
      v11 = *(a2 + 52);
      if (v11 >= ~v10)
      {
        FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_2(&v20);
      }

      else
      {
        if (v11 + v10 <= a3 - 60)
        {
          v12 = FigXPCRemoteClientCopyMemoryRecipient(*(a1 + 40), &cf);
          if (v12)
          {
            v8 = v12;
            goto LABEL_32;
          }

          v13 = *MEMORY[0x1E695E480];
          v14 = FigInMemoryDeserializerCopyCFDictionary(*MEMORY[0x1E695E480], a2 + 60, *(a2 + 44), cf, &theAttachments);
          v15 = theAttachments;
          if (v14)
          {
            v8 = v14;
          }

          else
          {
            if (theAttachments)
            {
              CVBufferSetAttachments(v9, theAttachments, kCVAttachmentMode_ShouldPropagate);
              if (theAttachments)
              {
                CFRelease(theAttachments);
                theAttachments = 0;
              }
            }

            v8 = FigInMemoryDeserializerCopyCFDictionary(v13, a2 + 60 + *(a2 + 44), *(a2 + 52), cf, &theAttachments);
            v15 = theAttachments;
            if (!v8 && theAttachments)
            {
              CVBufferSetAttachments(v9, theAttachments, kCVAttachmentMode_ShouldNotPropagate);
              if (theAttachments)
              {
                CFRelease(theAttachments);
                v8 = 0;
                theAttachments = 0;
              }

              else
              {
                v8 = 0;
              }

              goto LABEL_32;
            }
          }

          if (v15)
          {
            CFRelease(v15);
          }

LABEL_32:
          if (cf)
          {
            CFRelease(cf);
          }

          if (!v8)
          {
            *a4 = v9;
            return v8;
          }

          goto LABEL_37;
        }

        FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_3(&v20);
      }
    }

    v8 = v20;
    goto LABEL_32;
  }

LABEL_37:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t FigPixelBufferRecipientFlushPixelBufferBackings(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      FigSimpleMutexLock(*(a1 + 24));
      FigCFDictionaryRemoveAllValues(*(a1 + 32));
      FigSimpleMutexUnlock(*(a1 + 24));
      return 0;
    }

    else
    {
      FigPixelBufferRecipientFlushPixelBufferBackings_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigPixelBufferRecipientFlushPixelBufferBackings_cold_2(&v4);
    return v4;
  }
}

size_t FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(void *a1, void *a2, uint64_t **a3)
{
  cf = 0;
  v17 = 0;
  value = xpc_dictionary_get_value(a1, "PixelBufferOriginEndpoint");
  if (!value)
  {
    FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_5(&v19);
LABEL_23:
    v10 = 0;
    v9 = v19;
    goto LABEL_16;
  }

  v6 = value;
  if (MEMORY[0x19A8DA4F0]() != MEMORY[0x1E69E9E90])
  {
    FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_1(&v19);
    goto LABEL_23;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"ServerConnectionDied");
  if (!FigXPCRemoteClientCreateWithXPCEndpoint("FigPixelBufferOriginRemote", v6, PixelBufferRecipientRemoteClientCreateWithXPCEndpoint_sPixelBufferRecipientRemoteClientCallbacks, Mutable, &v17))
  {
    v9 = 0;
    if (!Mutable)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_2(&v19);
  v9 = v19;
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

LABEL_6:
  v10 = v17;
  if (v9)
  {
LABEL_16:
    FigXPCRemoteClientDispose(v10);
    goto LABEL_17;
  }

  v11 = FigXPCRemoteClientCopyMemoryRecipient(v17, &cf);
  v10 = v17;
  if (v11)
  {
    v9 = v11;
    goto LABEL_16;
  }

  xdict = 0;
  v19 = 0;
  v12 = FigXPCCreateBasicMessage(0x63726538u, 0, &v19);
  if (v12 || (v12 = FigXPCRemoteClientSendSyncMessageCreatingReply(v10, v19, &xdict), v12))
  {
    v9 = v12;
  }

  else
  {
    if (pixelBufferRecipient_GetTypeID_sRegisterPixelBufferRecipientTypeOnce != -1)
    {
      FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_3();
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_4(&v20);
      v9 = v20;
      goto LABEL_14;
    }

    Instance[3] = FigSimpleMutexCreate();
    Instance[4] = CFDictionaryCreateMutable(v7, 0, 0, MEMORY[0x1E695E9E8]);
    uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
    Instance[2] = uint64;
    Instance[5] = v10;
    v9 = FigXPCRemoteClientAssociateObject(v10, Instance, uint64);
    if (!v9)
    {
      goto LABEL_14;
    }

    CFRelease(Instance);
  }

  Instance = 0;
LABEL_14:
  FigXPCRelease(v19);
  FigXPCRelease(xdict);
  if (!v9)
  {
    v17 = 0;
    xpc_dictionary_set_uint64(a2, ".objectID", Instance[2]);
    *a3 = Instance;
    v10 = v17;
    goto LABEL_16;
  }

  FigXPCRemoteClientDispose(v17);
  if (Instance)
  {
    CFRelease(Instance);
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t pixelBufferOrigin_backingNotificationListener(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4)
{
  v6 = *MEMORY[0x1E6965C58];
  result = CFEqual(cf1, *MEMORY[0x1E6965C58]);
  if (result)
  {
    FigSimpleMutexLock(*(a2 + 16));
    Value = CFDictionaryGetValue(*(a2 + 24), -a4);
    if (Value)
    {
      v9 = Value;
      ID = IOSurfaceGetID(*Value);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt64(Mutable, @"IOSurfaceID", ID, v12, v13, v14, v15, v16);
      CFDictionaryRemoveValue(*(a2 + 24), -a4);
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterRemoveObserver(LocalCenter, a2, v6, a4);
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification(DefaultLocalCenter, @"ForgetBacking", a2, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      pixelBufferOrigin_disposeOriginEntry(a2, v9);
    }

    v19 = *(a2 + 16);

    return FigSimpleMutexUnlock(v19);
  }

  return result;
}

void pixelBufferOrigin_disposeBufferBackingEntry(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

void pixelBufferOrigin_disposeOriginEntry(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject(*(a2 + 8));
    if (v4)
    {
      v5 = v4;
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterRemoveObserver(LocalCenter, a1, *MEMORY[0x1E6965C58], v5);
      CFRelease(v5);
    }

    pixelBufferOrigin_disposeBufferBackingEntry(a2);
  }
}

void pixelBufferSharing_copyPixelBufferAttachments(CVBufferRef buffer, int a2, const __CFDictionary **a3, CFDictionaryRef *a4)
{
  v4 = a4;
  v5 = a3;
  if (a2)
  {
    v7 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
    v8 = v7;
    if (v7)
    {
      v9 = *MEMORY[0x1E6965CE8];
      if (CFDictionaryGetValue(v7, *MEMORY[0x1E6965CE8]))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
        CFDictionaryRemoveValue(MutableCopy, v9);
        CFRelease(v8);
        v8 = MutableCopy;
      }
    }

    v11 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldNotPropagate);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = v8;
    v8 = 0;
    goto LABEL_7;
  }

  v12 = 0;
  v11 = 0;
  v8 = 0;
  attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
  v13 = *MEMORY[0x1E695E480];
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  while (1)
  {
    v16 = gCVPixelBufferAttachmentKeysToAlwaysSerialize[v12];
    v17 = CVBufferCopyAttachment(buffer, v16, &attachmentMode);
    if (v17)
    {
      break;
    }

LABEL_26:
    if (++v12 == 4)
    {
      goto LABEL_27;
    }
  }

  v18 = v17;
  if (attachmentMode == kCVAttachmentMode_ShouldPropagate)
  {
    if (v8)
    {
      Mutable = v8;
LABEL_25:
      FigCFDictionarySetValue(Mutable, v16, v18);
      CFRelease(v18);
      goto LABEL_26;
    }

    Mutable = CFDictionaryCreateMutable(v13, 0, v14, v15);
    if (Mutable)
    {
      v8 = Mutable;
      goto LABEL_25;
    }

    v8 = v11;
    if (pixelBufferSharing_copyPixelBufferAttachments_cold_2(v11))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v11)
  {
    Mutable = v11;
    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(v13, 0, v14, v15);
  if (Mutable)
  {
    v11 = Mutable;
    goto LABEL_25;
  }

  if (!pixelBufferSharing_copyPixelBufferAttachments_cold_1(v8))
  {
LABEL_30:
    CFRelease(v8);
  }

LABEL_31:
  CFRelease(v18);
  v8 = 0;
  v11 = 0;
LABEL_27:
  v5 = a3;
  v4 = a4;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v4)
  {
    *v4 = v11;
    v11 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

size_t __EnsurePixelBufferOriginServerStarted_block_invoke()
{
  result = FigXPCServerStartWithNewXPCEndpoint("PixelBufferOriginServer", PixelBufferOriginServerStart_callbacks, 0, &qword_1ED4CCD50);
  _MergedGlobals_51 = result;
  return result;
}

double pixelBufferOrigin_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void pixelBufferOrigin_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    FigSimpleMutexLock(*(a1 + 16));
    CFDictionaryApplyFunction(*(a1 + 24), pixelBufferOrigin_disposeEachOriginEntry, a1);
    FigSimpleMutexUnlock(*(a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 24) = 0;
    }
  }

  FigSimpleMutexDestroy(*(a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *pixelBufferOrigin_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigPixelBufferOrigin %p ObjectID %016llx", a1, *(a1 + 32));
  return Mutable;
}

double pixelBufferRecipient_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void pixelBufferRecipient_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    FigSimpleMutexLock(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 32) = 0;
    }

    FigSimpleMutexUnlock(*(a1 + 24));
    FigSimpleMutexDestroy(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 40);

  FigXPCRemoteClientDispose(v4);
}

__CFString *pixelBufferRecipient_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  FigSimpleMutexLock(*(a1 + 24));
  Count = CFDictionaryGetCount(*(a1 + 32));
  CFStringAppendFormat(Mutable, 0, @"FigPixelBufferRecipient %p ObjectID %016llx %ld memory blocks", a1, *(a1 + 16), Count);
  FigSimpleMutexUnlock(*(a1 + 24));
  return Mutable;
}

xpc_object_t OUTLINED_FUNCTION_4_27()
{

  return xpc_dictionary_create(0, 0, 0);
}

uint64_t FigGeometryMarginsMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

BOOL FigGeometryMarginsEqualToMargins(uint64_t a1, uint64_t *a2)
{
  result = FigGeometryDimensionEqualToDimension(*a1, *(a1 + 8), *a2, a2[1]);
  if (result)
  {
    result = FigGeometryDimensionEqualToDimension(*(a1 + 16), *(a1 + 24), a2[2], a2[3]);
    if (result)
    {
      result = FigGeometryDimensionEqualToDimension(*(a1 + 32), *(a1 + 40), a2[4], a2[5]);
      if (result)
      {
        return FigGeometryDimensionEqualToDimension(*(a1 + 48), *(a1 + 56), a2[6], a2[7]);
      }
    }
  }

  return result;
}

unint64_t FigGeometryAspectRatioMake(unsigned int a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return a1 | (a2 << 32);
  }
}

uint64_t FigGeometryAspectRatioEqualToAspectRatio(unint64_t a1, uint64_t a2)
{
  if (a1 == a2 && !((a2 ^ a1) >> 32))
  {
    return 1;
  }

  v4 = a1 < 1 || SHIDWORD(a1) < 1;
  v5 = a2 < 1 || SHIDWORD(a2) < 1;
  v6 = v5;
  v7 = v5 && v4;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = SHIDWORD(a2) * (a1 & 0x7FFFFFFF) == (a2 & 0x7FFFFFFF) * SHIDWORD(a1);
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t FigGeometryDimensionHash(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    if ((a2 & 0x1C00000000) != 0)
    {
      if ((a2 & 0x400000000) != 0)
      {
        v2 = 11141290;
      }

      else
      {
        v2 = 13369548;
      }
    }

    else
    {
      v2 = _CMTagCFHashBytes(&v5, 8);
    }
  }

  else
  {
    v2 = 0x1000000;
  }

  v3 = (_CMTagCFHashBytes(&v6 + 4, 4) + (v2 << 6) + (v2 >> 2) + 2654435769u) ^ v2;
  return (_CMTagCFHashBytes(&v6, 4) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
}

uint64_t FigGeometryRectHash(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7 = v2;
  v3 = FigGeometryPointHash(&v6) + 2654435769;
  v4 = a1[3];
  v6 = a1[2];
  v7 = v4;
  return ((v3 << 6) + (v3 >> 2) + FigGeometrySizeHash(&v6) + 2654435769) ^ v3;
}

uint64_t FigGeometryMarginsHash(uint64_t *a1)
{
  v2 = FigGeometryDimensionHash(*a1, a1[1]) + 2654435769;
  v3 = ((v2 << 6) + (v2 >> 2) + FigGeometryDimensionHash(a1[2], a1[3]) + 2654435769) ^ v2;
  v4 = (FigGeometryDimensionHash(a1[4], a1[5]) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  return (FigGeometryDimensionHash(a1[6], a1[7]) + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

uint64_t FigGeometryCoordinateSpaceGetTypeID()
{
  if (_MergedGlobals_52 != -1)
  {
    FigGeometryCoordinateSpaceGetTypeID_cold_1();
  }

  return qword_1ED4CCD78;
}

uint64_t RegisterFigGeometryCoordinateSpaceType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCD78 = result;
  return result;
}

uint64_t FigGeometryCoordinateSpaceCreate(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  if ((*(a2 + 12) & 0x1D) == 1 && (v7 = a2, (*(a2 + 28) & 0x1D) == 1) && (*(a2 + 44) & 0x1D) == 1 && (*(a2 + 60) & 0x1D) == 1)
  {
    if (*(a2 + 32) != 0.0 && *(a2 + 48) != 0.0)
    {
      if (!a7)
      {
        FigGeometryCoordinateSpaceCreate_cold_5(&v31);
        return v31;
      }

      if (_MergedGlobals_52 != -1)
      {
        FigGeometryCoordinateSpaceGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (!Instance)
      {
        FigGeometryCoordinateSpaceCreate_cold_4(&v31);
        return v31;
      }

      v14 = Instance;
      v15 = *v7;
      v16 = v7[1];
      v17 = v7[2];
      *(Instance + 72) = v7[3];
      *(Instance + 56) = v17;
      *(Instance + 40) = v16;
      *(Instance + 24) = v15;
      v18 = *(Instance + 16);
      v19 = v18 | 1;
      *(Instance + 16) = v18 | 1;
      if (a3)
      {
        if ((*(a3 + 3) & 0x1D) != 1 || (*(a3 + 11) & 0x1D) != 1 || (*(a3 + 7) & 0x1D) != 1 || (*(a3 + 15) & 0x1D) != 1)
        {
          v28 = 513;
          goto LABEL_57;
        }

        v20 = *a3;
        v21 = a3[1];
        v22 = a3[2];
        *(Instance + 136) = a3[3];
        *(Instance + 120) = v22;
        *(Instance + 104) = v21;
        *(Instance + 88) = v20;
        v19 = v18 | 3;
        *(Instance + 16) = v18 | 3;
        if (a4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *(Instance + 88) = kFigGeometryMarginsZero;
        *(Instance + 104) = unk_197166A10;
        *(Instance + 120) = xmmword_197166A20;
        *(Instance + 136) = unk_197166A30;
        if (a4)
        {
LABEL_17:
          if ((*(a4 + 12) & 0x1D) != 1 || (*(a4 + 28) & 0x1D) != 1 || (*(a4 + 44) & 0x1D) != 1 || (*(a4 + 60) & 0x1D) != 1)
          {
            v28 = 524;
            goto LABEL_57;
          }

          if (*(a4 + 32) == 0.0 || *(a4 + 48) == 0.0)
          {
            v28 = 525;
            goto LABEL_57;
          }

          v23 = 4;
          v7 = a4;
          goto LABEL_26;
        }
      }

      v23 = 256;
LABEL_26:
      v24 = *v7;
      v25 = v7[1];
      v26 = v7[2];
      *(Instance + 264) = v7[3];
      *(Instance + 248) = v26;
      *(Instance + 232) = v25;
      *(Instance + 216) = v24;
      v27 = v19 | v23;
      *(Instance + 16) = v27;
      if (!a5)
      {
        *(Instance + 280) = 0;
LABEL_31:
        *(Instance + 288) = a6;
        v28 = 548;
        if (a6 <= 1918989157)
        {
          if (a6 > 1651665254)
          {
            if (a6 == 1651665255 || a6 == 1667591796)
            {
              goto LABEL_49;
            }

            v29 = 1818584692;
          }

          else
          {
            if (!a6)
            {
LABEL_50:
              result = 0;
              *a7 = v14;
              return result;
            }

            if (a6 == 1651271014)
            {
              goto LABEL_49;
            }

            v29 = 1651471476;
          }
        }

        else if (a6 <= 1920166265)
        {
          if (a6 == 1918989158 || a6 == 1918989168)
          {
            goto LABEL_49;
          }

          v29 = 1919510376;
        }

        else
        {
          if (a6 <= 1953460255)
          {
            if (a6 != 1920166266)
            {
              v29 = 1953260902;
              goto LABEL_48;
            }

LABEL_49:
            v14[4] = v27 | 0x10;
            goto LABEL_50;
          }

          if (a6 == 1953655143)
          {
            goto LABEL_49;
          }

          v29 = 1953460256;
        }

LABEL_48:
        if (a6 == v29)
        {
          goto LABEL_49;
        }

        goto LABEL_57;
      }

      if (*a5 && *(a5 + 4))
      {
        *(Instance + 280) = *a5;
        v27 |= 8u;
        *(Instance + 16) = v27;
        goto LABEL_31;
      }

      v28 = 537;
LABEL_57:
      FigGeometryCoordinateSpaceCreate_cold_3(v28, v14, &v31);
      return v31;
    }

    FigGeometryCoordinateSpaceCreate_cold_6(&v31);
  }

  else
  {
    FigGeometryCoordinateSpaceCreate_cold_1(&v31);
  }

  return v31;
}

CFDictionaryRef FigGeometryCoordinateSpaceCopyAsDictionary(uint64_t a1, const __CFAllocator *a2)
{
  v28[8] = *MEMORY[0x1E69E9840];
  memset(v28, 0, 64);
  memset(v26, 0, sizeof(v26));
  valuePtr = *(a1 + 16);
  keys[0] = @"flags";
  v4 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  keys[1] = @"bounds";
  v5 = *(a1 + 40);
  v20 = *(a1 + 24);
  v21 = v5;
  v6 = *(a1 + 72);
  v22 = *(a1 + 56);
  v23 = v6;
  values[1] = FigGeometryRectCopyAsDictionary(&v20, a2);
  v7 = valuePtr;
  if ((valuePtr & 4) != 0)
  {
    v8 = &v28[1];
    v9 = v26 + 1;
    v28[0] = @"contentBounds";
    v11 = *(a1 + 232);
    v20 = *(a1 + 216);
    v21 = v11;
    v12 = *(a1 + 264);
    v22 = *(a1 + 248);
    v23 = v12;
    *&v26[0] = FigGeometryRectCopyAsDictionary(&v20, a2);
    v10 = 3;
    v7 = valuePtr;
    if ((valuePtr & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = v28;
  v9 = v26;
  v10 = 2;
  if ((valuePtr & 2) != 0)
  {
LABEL_5:
    *v8 = @"innerMargins";
    v13 = *(a1 + 104);
    v20 = *(a1 + 88);
    v21 = v13;
    v14 = *(a1 + 136);
    v22 = *(a1 + 120);
    v23 = v14;
    *v9 = FigGeometryMarginsCopyAsDictionary(&v20, a2);
    ++v10;
    v7 = valuePtr;
  }

LABEL_6:
  if ((v7 & 8) != 0)
  {
    keys[v10] = @"contentAspectRatio";
    values[v10++] = FigGeometryAspectRatioCopyAsDictionary(*(a1 + 280), a2);
    if ((valuePtr & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v7 & 0x10) != 0)
  {
LABEL_8:
    keys[v10] = @"contentGravity";
    LODWORD(v20) = *(a1 + 288);
    values[v10++] = CFNumberCreate(v4, kCFNumberSInt32Type, &v20);
  }

LABEL_9:
  v15 = CFDictionaryCreate(a2, keys, values, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = 0;
  v17 = 8 * v10;
  do
  {
    v18 = values[v16 / 8];
    if (v18)
    {
      CFRelease(v18);
    }

    v16 += 8;
  }

  while (v17 != v16);
  return v15;
}

CFDictionaryRef FigGeometryMarginsCopyAsDictionary(uint64_t *a1, const __CFAllocator *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = FigGeometryDimensionCopyAsDictionary(*a1, a1[1], a2);
  v5 = FigGeometryDimensionCopyAsDictionary(a1[2], a1[3], a2);
  v6 = FigGeometryDimensionCopyAsDictionary(a1[4], a1[5], a2);
  v7 = FigGeometryDimensionCopyAsDictionary(a1[6], a1[7], a2);
  v8 = v7;
  *keys = xmmword_1E74A44B0;
  v17 = *&off_1E74A44C0;
  v15[0] = v4;
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  if (v4 && v6 && v5 && v7)
  {
    v9 = CFGetTypeID(v4);
    if (v9 == CFDictionaryGetTypeID() && (v10 = CFGetTypeID(v5), v10 == CFDictionaryGetTypeID()) && (v11 = CFGetTypeID(v6), v11 == CFDictionaryGetTypeID()) && (v12 = CFGetTypeID(v8), v12 == CFDictionaryGetTypeID()))
    {
      v13 = CFDictionaryCreate(a2, keys, v15, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_10;
  }

  v13 = 0;
  if (!FigGeometryMarginsCopyAsDictionary_cold_1(v4))
  {
LABEL_10:
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v13;
}

CFDictionaryRef FigGeometryAspectRatioCopyAsDictionary(uint64_t a1, const __CFAllocator *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  *keys = xmmword_1E74A44D0;
  v3 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  p_values = &values;
  v11 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr + 4);
  v5 = CFDictionaryCreate(a2, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = 1;
  do
  {
    v7 = v6;
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    v6 = 0;
    p_values = &v11;
  }

  while ((v7 & 1) != 0);
  return v5;
}

const __CFDictionary *FigGeometryCoordinateSpaceMakeFromDictionary(const __CFDictionary *result, uint64_t a2)
{
  value = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    FigCFDictionaryGetInt32IfPresent(v4, @"flags", &v35, v6, v7, v8, v9, v10, v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), *&v28[0], *(&v28[0] + 1));
    if (!v11 || !CFDictionaryGetValueIfPresent(v4, @"bounds", &value))
    {
      return 0;
    }

    v31 = kFigGeometryRectZero;
    v32 = unk_1971652F8;
    v33 = xmmword_197165308;
    v34 = unk_197165318;
    memset(v30, 0, sizeof(v30));
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    if ((v35 & 1) != 0 && CFDictionaryGetValueIfPresent(v4, @"bounds", &value))
    {
      FigGeometryRectMakeFromDictionary(value, &v31);
    }

    if ((v35 & 4) != 0 && CFDictionaryGetValueIfPresent(v4, @"contentBounds", &v39))
    {
      FigGeometryRectMakeFromDictionary(v39, v28);
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    if ((v35 & 2) != 0 && CFDictionaryGetValueIfPresent(v4, @"innerMargins", &v38))
    {
      FigGeometryMarginsMakeFromDictionary(v38, v30);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    if ((v35 & 8) != 0 && CFDictionaryGetValueIfPresent(v4, @"contentAspectRatio", &v37))
    {
      v14 = 0;
      v29 = FigGeometryAspectRatioMakeFromDictionary(v37);
    }

    else
    {
      v14 = 1;
    }

    if ((v35 & 0x10) != 0 && CFDictionaryGetValueIfPresent(v4, @"contentGravity", &v36))
    {
      v15 = FigGeometryCoordinateGravityTypeMakeFromCFType(v36);
    }

    else
    {
      v15 = 0;
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v30;
    }

    if (v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = v28;
    }

    if (v14)
    {
      v18 = 0;
    }

    else
    {
      v18 = &v29;
    }

    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v19 = FigGeometryCoordinateSpaceCreate(a2, &v24, v16, v17, v18, v15, &v41);
    if (!v19)
    {
      return v41;
    }

    v20 = v19;
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v20, "<<<< FigGeometry >>>>", 0x2D3, v2, v22, v23);
    result = v41;
    if (v41)
    {
      CFRelease(v41);
      return 0;
    }
  }

  return result;
}

const __CFNumber *FigGeometryCoordinateGravityTypeMakeFromCFType(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableStringRef FigGeometryMarginsCopyDescription(const __CFAllocator *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v5 = FigGeometryDimensionCopyDescription(a1, *a2, *(a2 + 8));
  v6 = FigGeometryDimensionCopyDescription(a1, *(a2 + 32), *(a2 + 40));
  v7 = FigGeometryDimensionCopyDescription(a1, *(a2 + 16), *(a2 + 24));
  v8 = FigGeometryDimensionCopyDescription(a1, *(a2 + 48), *(a2 + 56));
  v9 = v8;
  if (Mutable)
  {
LABEL_7:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v5 || !v6 || !v7 || !v8)
  {
    CFStringAppendFormat(0, 0, @"{leftMargin:%@,topMargin:%@,rightMargin:%@,bottomMargin:%@}", v5, v6, v7, v8);
    goto LABEL_7;
  }

LABEL_8:
  CFRelease(v5);
LABEL_9:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

CFStringRef FigGeometryCoordinateGravityTypeCopyDescription(const __CFAllocator *a1, int a2)
{
  if (a2 <= 1918989157)
  {
    if (a2 > 1651665254)
    {
      switch(a2)
      {
        case 1651665255:
          v2 = @"bottomRight";
          return CFStringCreateCopy(a1, v2);
        case 1667591796:
          v2 = @"center";
          return CFStringCreateCopy(a1, v2);
        case 1818584692:
          v2 = @"left";
          return CFStringCreateCopy(a1, v2);
      }
    }

    else
    {
      switch(a2)
      {
        case 0:
          v2 = @"<unspecified>";
          return CFStringCreateCopy(a1, v2);
        case 1651271014:
          v2 = @"bottomLeft";
          return CFStringCreateCopy(a1, v2);
        case 1651471476:
          v2 = @"bottom";
          return CFStringCreateCopy(a1, v2);
      }
    }
  }

  else if (a2 <= 1920166265)
  {
    switch(a2)
    {
      case 1918989158:
        v2 = @"resizeAspectFill";
        return CFStringCreateCopy(a1, v2);
      case 1918989168:
        v2 = @"resizeAspect";
        return CFStringCreateCopy(a1, v2);
      case 1919510376:
        v2 = @"right";
        return CFStringCreateCopy(a1, v2);
    }
  }

  else if (a2 > 1953460255)
  {
    if (a2 == 1953460256)
    {
      v2 = @"top";
      return CFStringCreateCopy(a1, v2);
    }

    if (a2 == 1953655143)
    {
      v2 = @"topRight";
      return CFStringCreateCopy(a1, v2);
    }
  }

  else
  {
    if (a2 == 1920166266)
    {
      v2 = @"resize";
      return CFStringCreateCopy(a1, v2);
    }

    if (a2 == 1953260902)
    {
      v2 = @"topLeft";
      return CFStringCreateCopy(a1, v2);
    }
  }

  return 0;
}

double fgInit_CoordinateSpace(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t fgEqual_CoordinateSpace(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v34 = v2;
  v35 = v3;
  result = 0;
  if (a1 && a2)
  {
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    if (v7 != v8 || (*(a1 + 16) & 0x10) == 0)
    {
      if (v7 != v8)
      {
        return 0;
      }
    }

    else if (*(a1 + 288) != *(a2 + 288))
    {
      return 0;
    }

    if (v7)
    {
      v10 = *(a1 + 40);
      v30 = *(a1 + 24);
      v31 = v10;
      v11 = *(a1 + 72);
      v32 = *(a1 + 56);
      v33 = v11;
      v12 = *(a2 + 40);
      v26 = *(a2 + 24);
      v27 = v12;
      v13 = *(a2 + 72);
      v28 = *(a2 + 56);
      v29 = v13;
      result = FigGeometryRectEqualToRect(&v30, &v26);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 16);
    }

    if ((v7 & 4) != 0)
    {
      v14 = *(a1 + 232);
      v30 = *(a1 + 216);
      v31 = v14;
      v15 = *(a1 + 264);
      v32 = *(a1 + 248);
      v33 = v15;
      v16 = *(a2 + 232);
      v26 = *(a2 + 216);
      v27 = v16;
      v17 = *(a2 + 264);
      v28 = *(a2 + 248);
      v29 = v17;
      result = FigGeometryRectEqualToRect(&v30, &v26);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 16);
    }

    if ((v7 & 8) == 0 || (result = FigGeometryAspectRatioEqualToAspectRatio(*(a1 + 280), *(a2 + 280)), result))
    {
      if ((v7 & 2) != 0)
      {
        v18 = *(a1 + 104);
        v30 = *(a1 + 88);
        v31 = v18;
        v19 = *(a1 + 136);
        v32 = *(a1 + 120);
        v33 = v19;
        v20 = *(a2 + 104);
        v26 = *(a2 + 88);
        v27 = v20;
        v21 = *(a2 + 136);
        v28 = *(a2 + 120);
        v29 = v21;
        result = FigGeometryMarginsEqualToMargins(&v30, &v26);
        if (!result)
        {
          return result;
        }

        v7 = *(a1 + 16);
      }

      if ((v7 & 0x20) != 0)
      {
        v22 = *(a1 + 168);
        v30 = *(a1 + 152);
        v31 = v22;
        v23 = *(a1 + 200);
        v32 = *(a1 + 184);
        v33 = v23;
        v24 = *(a2 + 168);
        v26 = *(a2 + 152);
        v27 = v24;
        v25 = *(a2 + 200);
        v28 = *(a2 + 184);
        v29 = v25;
        return FigGeometryRectEqualToRect(&v30, &v26);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

__CFString *fgCopyDesc_CoordinateSpace(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (a1)
  {
    v5 = CFGetAllocator(a1);
    v6 = *(a1 + 40);
    v10[0] = *(a1 + 24);
    v10[1] = v6;
    v7 = *(a1 + 72);
    v10[2] = *(a1 + 56);
    v10[3] = v7;
    v8 = FigGeometryRectCopyDescription(v5, v10);
    CFStringAppendFormat(v4, 0, @"<FigGeometryCoordinateSpaceRef %p> bounds:%@", a1, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"<FigGeometryCoordinateSpaceRef %p>", 0);
  }

  return v4;
}

size_t FigRPCCreateRemoteClient(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v9 = malloc_type_calloc(1uLL, 0x38uLL, 0x10F00409625AC60uLL);
    v10 = v9;
    if (v9)
    {
      v9[4] = a3;
      *v9 = a1;
      v9[1] = a2;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
      v10[6] = Mutable;
      if (Mutable)
      {
        v10[5] = dispatch_queue_create("FigRPCServerConnectionQueue", 0);
        v12 = 0;
        v10[2] = FigSimpleMutexCreate();
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD039uLL, "<<<< FigRPCRemoteClient >>>>", 0xBA, v4, v15, v16);
        if (v12)
        {
          v17 = v10[6];
          if (v17)
          {
            CFRelease(v17);
          }

          v18 = v10[5];
          if (v18)
          {
            dispatch_release(v18);
          }

          v19 = *(v10 + 6);
          if (v19)
          {
            FigMachPortReleaseSendRight_(v19, 0, 0, 0, 0);
          }

          FigSimpleMutexDestroy(v10[2]);
          free(v10);
          v10 = 0;
        }
      }
    }

    else
    {
      FigRPCCreateRemoteClient_cold_1(&v20);
      v12 = v20;
    }
  }

  else
  {
    FigRPCCreateRemoteClient_cold_2(&v21);
    v10 = 0;
    v12 = v21;
  }

  *a4 = v10;
  return v12;
}

uint64_t figrpc_createServerConnectionForObjectCommon(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7)
{
  port_info_outCnt = 1;
  port_info_out = 0;
  name = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  if (!a1)
  {
    figrpc_createServerConnectionForObjectCommon_cold_10(&v57);
LABEL_38:
    v15 = 0;
LABEL_39:
    v25 = v57;
    v17 = 0;
    v29 = 0;
    if (v57)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

  if (!a3)
  {
    figrpc_createServerConnectionForObjectCommon_cold_9(&v57);
    goto LABEL_38;
  }

  if (!a7)
  {
    figrpc_createServerConnectionForObjectCommon_cold_8(&v57);
    goto LABEL_38;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  if (!a5)
  {
    figrpc_createServerConnectionForObjectCommon_cold_2(&v57);
    goto LABEL_38;
  }

  if (a6 <= 0)
  {
    figrpc_createServerConnectionForObjectCommon_cold_1(&v57);
    goto LABEL_38;
  }

LABEL_7:
  v14 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E00405D5CAF00uLL);
  v15 = v14;
  if (!v14)
  {
    figrpc_createServerConnectionForObjectCommon_cold_7(&v57);
    goto LABEL_39;
  }

  *(v14 + 7) = a2;
  v16 = MEMORY[0x1E69E9A60];
  if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name))
  {
    figrpc_createServerConnectionForObjectCommon_cold_3(&v57);
    goto LABEL_39;
  }

  if (mach_port_get_attributes(*v16, name, 1, &port_info_out, &port_info_outCnt))
  {
    figrpc_createServerConnectionForObjectCommon_cold_4(&v57);
    goto LABEL_39;
  }

  port_info_out += 10;
  if (MEMORY[0x19A8D93C0](*v16, name, 1, &port_info_out, port_info_outCnt))
  {
    figrpc_createServerConnectionForObjectCommon_cold_5(&v57);
    goto LABEL_39;
  }

  if (mach_port_insert_right(*v16, name, name, 0x14u))
  {
    figrpc_createServerConnectionForObjectCommon_cold_6(&v57);
    goto LABEL_39;
  }

  v17 = name;
  v18 = dispatch_queue_create("RemoteClientNotifyQueue", 0);
  *(v15 + 4) = v18;
  if (a4)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 0x40000000;
    v42 = __figrpc_createServerConnectionForObjectCommon_block_invoke;
    v43 = &unk_1E74A4510;
    v45 = v15;
    v46 = a5;
    v47 = a6;
    v48 = name;
    v49 = v17;
    v44 = &v50;
    v19 = dispatch_mach_create();
    v51[3] = v19;
    *(v15 + 3) = v19;
    v15[3] = name;
    dispatch_mach_connect();
    v20 = 0;
  }

  else
  {
    v20 = dispatch_source_create(MEMORY[0x1E69E96D8], name, 0, v18);
    v21 = name;
    v15[3] = name;
    *(v15 + 2) = v20;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __figrpc_createServerConnectionForObjectCommon_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_11_4;
    v38 = v21;
    v39 = v17;
    handler[4] = v20;
    dispatch_source_set_cancel_handler(v20, handler);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 0x40000000;
    v36[2] = __figrpc_createServerConnectionForObjectCommon_block_invoke_3;
    v36[3] = &__block_descriptor_tmp_12_2;
    v36[4] = a1;
    v36[5] = v20;
    dispatch_source_set_event_handler(v20, v36);
    dispatch_resume(v20);
  }

  FigSimpleMutexLock(*(a1 + 16));
  v23 = (a1 + 24);
  v22 = *(a1 + 24);
  if (!v22)
  {
    goto LABEL_20;
  }

  v24 = (*(a3 + 16))(a3, v22, name, v15 + 2, v15 + 12, v15 + 16);
  if (v24 == -308 || (v25 = v24, v24 == 268435459) || v24 == -303)
  {
    FigMachPortReleaseSendRight_(*v23, 0, 0, 0, 0);
    *v23 = 0;
LABEL_20:
    v26 = bootstrap_look_up(*MEMORY[0x1E69E99F8], *a1, (a1 + 24));
    if (v26)
    {
      v25 = v26;
      FigSimpleMutexUnlock(*(a1 + 16));
      goto LABEL_22;
    }

    FigRemote_LookUpServerTimeoutPort();
    v25 = (*(a3 + 16))(a3, *v23, name, v15 + 2, v15 + 12, v15 + 16);
    goto LABEL_26;
  }

  if (!*v23)
  {
    goto LABEL_20;
  }

LABEL_26:
  FigSimpleMutexUnlock(*(a1 + 16));
  if (v25)
  {
LABEL_22:
    if (v20)
    {
      dispatch_source_cancel(v20);
LABEL_47:
      v30 = v15[2];
      if (v30)
      {
        FigMachPortReleaseSendRight_(v30, 0, 0, 0, 0);
      }

      v31 = *(v15 + 4);
      if (v31)
      {
        dispatch_release(v31);
      }

LABEL_51:
      free(v15);
      v15 = 0;
      v29 = v25;
      goto LABEL_52;
    }

LABEL_40:
    if (v51[3])
    {
      dispatch_mach_cancel();
    }

    else
    {
      if (name)
      {
        FigMachPortReleaseReceiveRight_(name, 0, 0, 0, 0);
      }

      if (v17)
      {
        FigMachPortReleaseSendRight_(v17, 0, 0, 0, 0);
      }
    }

    if (!v15)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v27 = dispatch_source_create(MEMORY[0x1E69E96E0], v15[2], 1uLL, *(a1 + 40));
  *(v15 + 5) = v27;
  v28 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figrpc_createServerConnectionForObjectCommon_block_invoke_4;
  block[3] = &__block_descriptor_tmp_13_3;
  block[4] = a1;
  block[5] = v15;
  dispatch_sync(v28, block);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v34[2] = __figrpc_createServerConnectionForObjectCommon_block_invoke_5;
  v34[3] = &__block_descriptor_tmp_14_3;
  v34[4] = v27;
  dispatch_source_set_cancel_handler(v27, v34);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 0x40000000;
  v33[2] = __figrpc_createServerConnectionForObjectCommon_block_invoke_6;
  v33[3] = &__block_descriptor_tmp_17_5;
  v33[4] = a1;
  v33[5] = v15;
  v33[6] = v27;
  dispatch_source_set_event_handler(v27, v33);
  dispatch_resume(v27);
  v29 = 0;
LABEL_52:
  *a7 = v15;
  _Block_object_dispose(&v50, 8);
  return v29;
}

uint64_t FigRPCGetServerConnectionInfo(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      FigRPCGetServerConnectionInfo_cold_1(&v6);
      return v6;
    }

    else
    {
      if (a2)
      {
        *a2 = *(a1 + 8);
      }

      if (a3)
      {
        *a3 = *(a1 + 48);
      }

      v4 = 0;
      if (a4)
      {
        *a4 = *(a1 + 64);
      }
    }
  }

  else
  {
    FigRPCGetServerConnectionInfo_cold_2(&v7);
    return v7;
  }

  return v4;
}

uint64_t FigRPCDisposeServerConnection(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigRPCDisposeServerConnection_block_invoke;
      block[3] = &__block_descriptor_tmp_53;
      block[4] = a1;
      block[5] = a2;
      dispatch_sync(v3, block);
      v4 = *(a2 + 16);
      if (v4)
      {
        dispatch_source_cancel(v4);
      }

      if (*(a2 + 24))
      {
        dispatch_mach_cancel();
      }

      dispatch_release(*(a2 + 32));
      free(a2);
    }

    return 0;
  }

  else
  {
    FigRPCDisposeServerConnection_cold_1(&v7);
    return v7;
  }
}

void __FigRPCDisposeServerConnection_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(a1 + 32) + 48), *(*(a1 + 40) + 8));
  v2 = *(*(a1 + 40) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    *(*(a1 + 40) + 40) = 0;
  }
}

void FigRPCKillServerOnTimeout(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a2 = *(a2 + 64);
  }

  FigRemote_InterpretMachErrorForTimeout(a3, a2, a4, a5);
}

void __figrpc_createServerConnectionForObjectCommon_block_invoke(uint64_t a1, uint64_t a2, dispatch_object_t object)
{
  if (a2 == 8)
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  if (a2 != 7)
  {
    if (a2 != 2)
    {
      return;
    }

    dispatch_retain(object);
    if ((dispatch_mach_mig_demux() & 1) == 0)
    {
      msg = dispatch_mach_msg_get_msg();
      mach_msg_destroy(msg);
    }

    v6 = object;
LABEL_11:

    dispatch_release(v6);
    return;
  }

  FigMachPortReleaseReceiveRight_(*(a1 + 60), 0, 0, 0, 0);
  v7 = *(a1 + 64);

  FigMachPortReleaseSendRight_(v7, 0, 0, 0, 0);
}

void __figrpc_createServerConnectionForObjectCommon_block_invoke_2(uint64_t a1)
{
  FigMachPortReleaseReceiveRight_(*(a1 + 40), 0, 0, 0, 0);
  FigMachPortReleaseSendRight_(*(a1 + 44), 0, 0, 0, 0);
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

uint64_t __figrpc_createServerConnectionForObjectCommon_block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32))
  {
    return MEMORY[0x1EEE70070](*(result + 40), *(v1 + 8));
  }

  return result;
}

void __figrpc_createServerConnectionForObjectCommon_block_invoke_5(uint64_t a1)
{
  handle = dispatch_source_get_handle(*(a1 + 32));
  FigMachPortReleaseSendRight_(handle, 0, 0, 0, 0);
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

void __figrpc_createServerConnectionForObjectCommon_block_invoke_6(uint64_t a1)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(*(*(a1 + 32) + 48), *(*(a1 + 40) + 8), &value))
  {
    *(value + 72) = 1;
    v2 = *(*(a1 + 40) + 8);
    v3 = *(*(a1 + 32) + 48);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    dispatch_retain(*(a1 + 48));
    global_queue = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __figrpc_createServerConnectionForObjectCommon_block_invoke_7;
    v7[3] = &__block_descriptor_tmp_16_1;
    v7[4] = *(a1 + 32);
    v7[5] = v4;
    v8 = v2;
    v6 = *(a1 + 48);
    v7[6] = value;
    v7[7] = v6;
    dispatch_async(global_queue, v7);
    *(value + 5) = 0;
  }

  else
  {
    dispatch_source_cancel(*(a1 + 48));
  }
}

void __figrpc_createServerConnectionForObjectCommon_block_invoke_7(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v2 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figrpc_createServerConnectionForObjectCommon_block_invoke_8;
  block[3] = &unk_1E74A45B8;
  v3 = *(a1 + 40);
  block[4] = &v8;
  block[5] = v3;
  v7 = *(a1 + 64);
  dispatch_sync(v2, block);
  if (*(v9 + 24))
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification(DefaultLocalCenter, @"rpcNotice_ServerConnectionDied", *(a1 + 48), 0);
  }

  dispatch_source_cancel(*(a1 + 56));
  dispatch_release(*(a1 + 56));
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __figrpc_createServerConnectionForObjectCommon_block_invoke_8(uint64_t a1)
{
  result = CFDictionaryContainsKey(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t flipHapticDescriptionData(int8x8_t *a1, unint64_t a2)
{
  if (a2 <= 0xF)
  {
    v9 = v2;
    v10 = v3;
    flipHapticDescriptionData_cold_1(&v8);
    return v8;
  }

  else
  {
    result = 0;
    v6 = a1[1].u16[2];
    a1[1].i32[0] = bswap32(a1[1].u32[0]);
    v7 = bswap32(a1[1].u16[3]) >> 16;
    *a1 = vrev32_s8(*a1);
    a1[1].i16[2] = bswap32(v6) >> 16;
    a1[1].i16[3] = v7;
  }

  return result;
}

uint64_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData(CFAllocatorRef alloc, unsigned int *a2, unint64_t a3, int a4, CMFormatDescriptionRef *formatDescriptionOut)
{
  if (!a2)
  {
    CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_9(&theDict);
    return theDict;
  }

  if (a3 <= 0xF)
  {
    CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_8(&theDict);
    return theDict;
  }

  v5 = formatDescriptionOut;
  if (!formatDescriptionOut)
  {
    CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_7(&theDict);
    return theDict;
  }

  v6 = bswap32(*a2);
  if (v6 < 0x10 || v6 > a3)
  {
    CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_6(&theDict);
    return theDict;
  }

  v9 = a2[1];
  v10 = v6 - 16;
  theDict = 0;
  if (v10 < 8)
  {
    v23 = 0;
    goto LABEL_36;
  }

  v25 = v9;
  Mutable = 0;
  v12 = a2 + 4;
  v13 = MEMORY[0x1E695E9D8];
  v14 = MEMORY[0x1E695E9E8];
  do
  {
    v16 = *v12;
    v15 = v12[1];
    *bytes = v15;
    v17 = bswap32(v16);
    v18 = v17;
    if (v17 < 8 || v10 < v17)
    {
      CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_5(&v29);
      v23 = 0;
      v24 = 0;
LABEL_41:
      v20 = 0;
      goto LABEL_45;
    }

    if (v15 != 1701147238)
    {
      v24 = CFStringCreateWithBytes(alloc, bytes, 4, 0, 0);
      if (!v24)
      {
        CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_3(&v29);
        v23 = 0;
        goto LABEL_41;
      }

      v20 = CFDataCreate(alloc, v12 + 8, v18 - 8);
      if (!v20)
      {
        CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_2(&v29);
        goto LABEL_44;
      }

      Mutable = theDict;
      if (!theDict)
      {
        Mutable = CFDictionaryCreateMutable(alloc, 0, v13, v14);
        theDict = Mutable;
        if (!Mutable)
        {
          CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_1(&v29);
LABEL_44:
          v23 = 0;
LABEL_45:
          v21 = v29;
LABEL_28:
          v5 = formatDescriptionOut;
          v9 = v25;
          goto LABEL_29;
        }
      }

      CFDictionarySetValue(Mutable, v24, v20);
      CFRelease(v20);
      CFRelease(v24);
    }

    v12 = (v12 + v18);
    v10 -= v18;
  }

  while (v10 > 7);
  if (!Mutable)
  {
    v23 = 0;
    v21 = 0;
    v24 = 0;
    v20 = 0;
    goto LABEL_28;
  }

  v23 = CFDictionaryCreate(alloc, &kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, &theDict, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = v25;
  if (v23)
  {
    v21 = 0;
    v24 = 0;
    v20 = 0;
  }

  else
  {
    CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_4(&v29);
    v24 = 0;
    v20 = 0;
    v21 = v29;
  }

  v5 = formatDescriptionOut;
LABEL_29:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (!v21)
  {
LABEL_36:
    v21 = CMFormatDescriptionCreate(alloc, 0x68617074u, bswap32(v9), v23, v5);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v21;
}

uint64_t CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer(const __CFAllocator *a1, CFTypeRef cf, uint64_t a3, CMBlockBufferRef *a4)
{
  sourceBytes = 0;
  v18 = 0;
  destinationBuffer = 0;
  if (!cf)
  {
    CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_5(context);
LABEL_27:
    Value = 0;
    goto LABEL_28;
  }

  if (!a4)
  {
    CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_4(context);
    goto LABEL_27;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CMFormatDescriptionGetTypeID())
  {
    CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_1(context);
    goto LABEL_27;
  }

  if (CMFormatDescriptionGetMediaType(cf) != 1751216244)
  {
    CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_2(context);
    goto LABEL_27;
  }

  Extensions = CMFormatDescriptionGetExtensions(cf);
  if (Extensions)
  {
    blockBufferOut = 0;
    Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
    if (Value)
    {
      v20 = 0;
      memset(context, 0, sizeof(context));
      v10 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
      if (v10 || (v10 = FigAtomWriterInitWithBlockBuffer(blockBufferOut, context), v10))
      {
        v14 = v10;
        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        Value = 0;
        goto LABEL_29;
      }

      CFDictionaryApplyFunction(Value, hapticBridgeAppendExtensionsFunc, context);
      Value = blockBufferOut;
    }

    DataLength = CMBlockBufferGetDataLength(Value);
    if (DataLength < 0x7FFFFFF0)
    {
      v12 = DataLength;
      goto LABEL_13;
    }

    CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_3(context);
LABEL_28:
    v14 = LODWORD(context[0]);
    goto LABEL_29;
  }

  Value = 0;
  v12 = 0;
LABEL_13:
  sourceBytes = _byteswap_uint64(__PAIR64__(v12 + 16, CMFormatDescriptionGetMediaSubType(cf)));
  v18 = 0xFFFF000000000000;
  DataPointer = CMBlockBufferCreateWithMemoryBlock(a1, 0, (v12 + 16), a1, 0, 0, (v12 + 16), 1u, &destinationBuffer);
  if (!DataPointer)
  {
    DataPointer = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 0x10uLL);
    if (!DataPointer)
    {
      if (!Value || (*&context[0] = 0, DataPointer = CMBlockBufferGetDataPointer(destinationBuffer, 0x10uLL, 0, 0, context), !DataPointer) && (DataPointer = CMBlockBufferCopyDataBytes(Value, 0, v12, *&context[0]), !DataPointer))
      {
        v14 = 0;
        *a4 = destinationBuffer;
        destinationBuffer = 0;
        goto LABEL_19;
      }
    }
  }

  v14 = DataPointer;
LABEL_29:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

LABEL_19:
  if (Value)
  {
    CFRelease(Value);
  }

  return v14;
}

uint64_t FigRPCFetchNextPendingNotificationPackagedForMIG(uint64_t a1, _DWORD *a2, void *a3, char *a4, vm_address_t *a5, unsigned int *a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  if (!a1)
  {
    FigRPCFetchNextPendingNotificationPackagedForMIG_cold_6(&theData, a2, a3, a4, a5, a6, a7, a8);
LABEL_27:
    v18 = theData;
    goto LABEL_20;
  }

  if (!a2)
  {
    FigRPCFetchNextPendingNotificationPackagedForMIG_cold_5(&theData, 0, a3, a4, a5, a6, a7, a8);
    goto LABEL_27;
  }

  if (!a3)
  {
    FigRPCFetchNextPendingNotificationPackagedForMIG_cold_4(&theData, a2, 0, a4, a5, a6, a7, a8);
    goto LABEL_27;
  }

  if (!a4)
  {
    FigRPCFetchNextPendingNotificationPackagedForMIG_cold_3(&theData, a2, a3, 0, a5, a6, a7, a8);
    goto LABEL_27;
  }

  if (!a5)
  {
    FigRPCFetchNextPendingNotificationPackagedForMIG_cold_2(&theData, a2, a3, a4, 0, a6, a7, a8);
    goto LABEL_27;
  }

  if (!a6)
  {
    FigRPCFetchNextPendingNotificationPackagedForMIG_cold_1(&theData, a2, a3, a4, a5, 0, a7, a8);
    goto LABEL_27;
  }

  v14 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigRPCFetchNextPendingNotificationPackagedForMIG_block_invoke;
  block[3] = &unk_1E74A4620;
  block[4] = &v30;
  block[5] = &v26;
  block[6] = a1;
  dispatch_sync(v14, block);
  v15 = v31[3];
  if (v15)
  {
    *a3 = *(a1 + 32);
    CFStringGetCString(*(v15 + 8), a4, 512, 0);
    *a5 = 0;
    *a6 = 0;
    v16 = v31[3];
    v17 = v16[2];
    if (v17)
    {
      theData = 0;
      if (FigRemote_CreateBinaryPListData(v17, *MEMORY[0x1E695E480], &theData))
      {
        v18 = 0;
      }

      else
      {
        v19 = *(v31[3] + 16);
        if (v19)
        {
          CFRelease(v19);
          *(v31[3] + 16) = 0;
        }

        Length = CFDataGetLength(theData);
        *a6 = Length;
        v18 = vm_allocate(*MEMORY[0x1E69E9A60], a5, Length, 1560281089);
        if (!v18)
        {
          v21 = *a5;
          BytePtr = CFDataGetBytePtr(theData);
          memcpy(v21, BytePtr, *a6);
        }

        CFRelease(theData);
      }

      v16 = v31[3];
    }

    else
    {
      v18 = 0;
    }

    *a2 = *(v27 + 6);
    figrpc_freeQueuedNotification(v16);
  }

  else
  {
    v18 = 4294955056;
  }

LABEL_20:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return v18;
}

void figrpc_freeQueuedNotification(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t FigRPCFetchNextPendingNotification(uint64_t a1, _DWORD *a2, void *a3, void *a4, void *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  if (!a1)
  {
    FigRPCFetchNextPendingNotification_cold_5(&v28, a2, a3, a4, a5, a6, a7, a8);
LABEL_15:
    v17 = v28;
    goto LABEL_9;
  }

  if (!a2)
  {
    FigRPCFetchNextPendingNotification_cold_4(&v28, 0, a3, a4, a5, a6, a7, a8);
    goto LABEL_15;
  }

  if (!a3)
  {
    FigRPCFetchNextPendingNotification_cold_3(&v28, a2, 0, a4, a5, a6, a7, a8);
    goto LABEL_15;
  }

  if (!a4)
  {
    FigRPCFetchNextPendingNotification_cold_2(&v28, a2, a3, 0, a5, a6, a7, a8);
    goto LABEL_15;
  }

  if (!a5)
  {
    FigRPCFetchNextPendingNotification_cold_1(&v28, a2, a3, a4, 0, a6, a7, a8);
    goto LABEL_15;
  }

  v13 = *(a1 + 104);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __FigRPCFetchNextPendingNotification_block_invoke;
  v19[3] = &unk_1E74A4648;
  v19[4] = &v24;
  v19[5] = &v20;
  v19[6] = a1;
  dispatch_sync(v13, v19);
  v14 = v25;
  v15 = v25[3];
  if (v15)
  {
    *a3 = *(a1 + 32);
    *a4 = *(v15 + 8);
    *(v14[3] + 8) = 0;
    v16 = v25;
    *a5 = *(v25[3] + 16);
    *(v16[3] + 16) = 0;
    *a2 = *(v21 + 6);
    figrpc_freeQueuedNotification(v16[3]);
    v17 = 0;
  }

  else
  {
    v17 = 4294955056;
  }

LABEL_9:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v17;
}

size_t FigRPCStartServerUsingMachChannel(const char *a1, const char *a2, int a3, const char *a4, int a5, const char *a6, __int128 *a7, const char ***a8)
{
  fig_note_initialize_category_with_default_work_cf(&gFigRPCServerTrace[1], @"RPCServerTrace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, gFigRPCServerTrace);
  fig_note_initialize_category_with_default_work_cf(algn_1EAF1CEE8, @"RPCServerTrace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, &qword_1EAF1CEE0);
  if (!a1)
  {
    FigRPCStartServerUsingMachChannel_cold_7(&v47, v13, v14, v15, v16, v17, v18, v19);
    return v47;
  }

  if (!a2)
  {
    FigRPCStartServerUsingMachChannel_cold_6(&v47, v13, v14, v15, v16, v17, v18, v19);
    return v47;
  }

  if (!a6)
  {
    FigRPCStartServerUsingMachChannel_cold_5(&v47, v13, v14, v15, v16, v17, v18, v19);
    return v47;
  }

  if (!a8)
  {
    FigRPCStartServerUsingMachChannel_cold_4(&v47, v13, v14, v15, v16, v17, v18, v19);
    return v47;
  }

  v20 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F00407292CEEDuLL);
  if (!v20)
  {
    FigRPCStartServerUsingMachChannel_cold_3(&v47, v21, v22, v23, v24, v25, v26, v27);
    return v47;
  }

  v28 = v20;
  if (bootstrap_check_in(*MEMORY[0x1E69E99F8], a1, v20 + 2))
  {
    v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02EuLL, "<<<< FigRPCServer >>>>", 0x318, v8, v29, v30);
LABEL_8:
    if (v28[4])
    {
      dispatch_mach_cancel();
    }

    else
    {
      FigMachPortReleaseReceiveRight_(*(v28 + 2), 0, 0, 0, 0);
      FigMachPortReleaseSendRight_(*(v28 + 2), 0, 0, 0, 0);
    }

    v41 = v28[2];
    if (v41)
    {
      dispatch_release(v41);
    }

    free(v28);
    return v31;
  }

  *v28 = a1;
  v28[7] = a2;
  v28[9] = a6;
  v28[8] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v28[5] = a4;
  *(v28 + 12) = a5;
  *(v28 + 88) = a3;
  if (a7)
  {
    v32 = *a7;
    v28[15] = *(a7 + 2);
    *(v28 + 13) = v32;
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v34 = dispatch_queue_create(a1, initially_inactive);
  v28[2] = v34;
  dispatch_set_qos_class_floor(v34, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v28[2]);
  if (!v28[2])
  {
    FigRPCStartServerUsingMachChannel_cold_2(&v47, 0, v35, v36, v37, v38, v39, v40);
    v31 = v47;
    goto LABEL_8;
  }

  if (a3)
  {
    if (figrpc_getCommonServerTimeoutQueue_once != -1)
    {
      FigRPCStartServerUsingMachChannel_cold_1();
    }

    v28[12] = figrpc_createRPCTimeoutDetector(figrpc_getCommonServerTimeoutQueue_commonServerTimeoutQueue, a1, v28);
  }

  v28[4] = dispatch_mach_create();
  *a8 = v28;
  dispatch_mach_connect();
  return 0;
}

uint64_t figrpc_createRPCTimeoutDetector(NSObject *a1, uint64_t a2, uint64_t a3)
{
  if (figRPCTimeoutDetector_GetTypeID_sRegisterFigRPCTimeoutDetectorTypeOnce != -1)
  {
    figrpc_createRPCTimeoutDetector_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1);
    v14 = FigCFWeakReferenceHolderCreateWithReferencedObject(Instance);
    *(Instance + 560) = a3;
    v15 = *(Instance + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __figrpc_createRPCTimeoutDetector_block_invoke;
    handler[3] = &__block_descriptor_tmp_16_2;
    handler[4] = v14;
    handler[5] = Instance;
    handler[6] = a3;
    handler[7] = a2;
    dispatch_source_set_event_handler(v15, handler);
    v16 = *(Instance + 16);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = __figrpc_createRPCTimeoutDetector_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_17_6;
    v18[4] = v14;
    dispatch_source_set_cancel_handler(v16, v18);
    dispatch_resume(*(Instance + 16));
  }

  else
  {
    figrpc_createRPCTimeoutDetector_cold_2(0, v6, v7, v8, v9, v10, v11, v12);
  }

  return Instance;
}

void __FigRPCStartServerUsingMachChannel_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 7)
  {
    FigMachPortReleaseReceiveRight_(*(*(a1 + 32) + 8), 0, 0, 0, 0);
    v6 = *(*(a1 + 32) + 8);

    FigMachPortReleaseSendRight_(v6, 0, 0, 0, 0);
  }

  else if (a2 == 2)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 96))
    {
      figRPCTimeoutDetector_setTimer(*(v3 + 96), *v3, 0);
    }

    v4 = dispatch_mach_mig_demux();
    v5 = *(*(a1 + 32) + 96);
    if (v5)
    {
      figRPCTimeoutDetector_unsetTimer(v5);
    }

    if ((v4 & 1) == 0)
    {
      msg = dispatch_mach_msg_get_msg();

      mach_msg_destroy(msg);
    }
  }
}

void figRPCTimeoutDetector_setTimer(uint64_t a1, const char *a2, int a3)
{
  if (*(a1 + 16))
  {
    TimeoutNanoseconds = FigRPCServer_GetTimeoutNanoseconds();
    *(a1 + 540) = a3;
    *(a1 + 544) = 0;
    if (TimeoutNanoseconds)
    {
      v7 = FigRPCServer_PickRPCTimeoutForCurrentThread(TimeoutNanoseconds, 90000000000);
      msg = dispatch_mach_msg_get_msg();
      snprintf((a1 + 25), 0x200uLL, "(%s:msgh_id: %d) (timeout: %lld sec)", a2, *(msg + 20), v7 / 0x3B9ACA00);
      v9 = *(a1 + 16);
      v10 = dispatch_time(0, v7);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      *(a1 + 24) = 1;
    }
  }
}

void figRPCTimeoutDetector_unsetTimer(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    dispatch_source_set_timer(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
    if (figrpc_getCommonServerTimeoutQueue_once != -1)
    {
      FigRPCStartServerUsingMachChannel_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __figRPCTimeoutDetector_unsetTimer_block_invoke;
    block[3] = &__block_descriptor_tmp_26_1;
    block[4] = a1;
    dispatch_sync(figrpc_getCommonServerTimeoutQueue_commonServerTimeoutQueue, block);
  }
}

size_t FigRPCStartServer(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, mach_port_t **a5)
{
  fig_note_initialize_category_with_default_work_cf(&gFigRPCServerTrace[1], @"RPCServerTrace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, gFigRPCServerTrace);
  fig_note_initialize_category_with_default_work_cf(algn_1EAF1CEE8, @"RPCServerTrace", @"com.apple.coremedia", "", "com.apple.coremedia", 0, 0, &qword_1EAF1CEE0);
  if (!a1)
  {
    FigRPCStartServer_cold_8(&v53, v10, v11, v12, v13, v14, v15, v16);
    return v53;
  }

  if (!a2)
  {
    FigRPCStartServer_cold_7(&v53, v10, v11, v12, v13, v14, v15, v16);
    return v53;
  }

  if (!a3)
  {
    FigRPCStartServer_cold_6(&v53, v10, v11, v12, v13, v14, v15, v16);
    return v53;
  }

  if (!a4)
  {
    FigRPCStartServer_cold_5(&v53, v10, v11, v12, v13, v14, v15, v16);
    return v53;
  }

  if (!a5)
  {
    FigRPCStartServer_cold_4(&v53, v10, v11, v12, v13, v14, v15, v16);
    return v53;
  }

  v17 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F00407292CEEDuLL);
  if (!v17)
  {
    FigRPCStartServer_cold_3(&v53, v18, v19, v20, v21, v22, v23, v24);
    return v53;
  }

  v25 = v17;
  if (bootstrap_check_in(*MEMORY[0x1E69E99F8], a1, v17 + 2))
  {
    v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02EuLL, "<<<< FigRPCServer >>>>", 0x38B, v50, v26, v27);
  }

  else
  {
    *v25 = a1;
    *(v25 + 7) = a2;
    *(v25 + 9) = a4;
    *(v25 + 10) = a3;
    *(v25 + 8) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    v30 = dispatch_queue_create(a1, 0);
    *(v25 + 2) = v30;
    if (v30)
    {
      v38 = dispatch_source_create(MEMORY[0x1E69E96D8], v25[2], 0, v30);
      *(v25 + 3) = v38;
      if (v38)
      {
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 0x40000000;
        handler[2] = __FigRPCStartServer_block_invoke;
        handler[3] = &__block_descriptor_tmp_12_3;
        handler[4] = v25;
        dispatch_source_set_cancel_handler(v38, handler);
        v46 = *(v25 + 3);
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 0x40000000;
        v51[2] = __FigRPCStartServer_block_invoke_2;
        v51[3] = &__block_descriptor_tmp_13_4;
        v51[4] = v25;
        v51[5] = a2;
        v51[6] = a3;
        dispatch_source_set_event_handler(v46, v51);
        *a5 = v25;
        dispatch_resume(*(v25 + 3));
        return 0;
      }

      FigRPCStartServer_cold_1(&v53, v39, v40, v41, v42, v43, v44, v45);
    }

    else
    {
      FigRPCStartServer_cold_2(&v53, v31, v32, v33, v34, v35, v36, v37);
    }

    v28 = v53;
  }

  v29 = *(v25 + 3);
  if (v29)
  {
    dispatch_source_cancel(v29);
  }

  else
  {
    FigMachPortReleaseReceiveRight_(v25[2], 0, 0, 0, 0);
  }

  v47 = *(v25 + 2);
  if (v47)
  {
    dispatch_release(v47);
  }

  v48 = v25[2];
  if (v48)
  {
    FigMachPortReleaseReceiveRight_(v48, 0, 0, 0, 0);
    FigMachPortReleaseSendRight_(v25[2], 0, 0, 0, 0);
  }

  free(v25);
  return v28;
}

void __FigRPCStartServer_block_invoke(uint64_t a1)
{
  FigMachPortReleaseReceiveRight_(*(*(a1 + 32) + 8), 0, 0, 0, 0);
  FigMachPortReleaseSendRight_(*(*(a1 + 32) + 8), 0, 0, 0, 0);
  v2 = *(*(a1 + 32) + 24);

  dispatch_release(v2);
}

uint64_t figrpc_createClientCommon(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = a5;
  name = 0;
  v68 = 0;
  if (!a1)
  {
    figrpc_createClientCommon_cold_9(&v64, a2, a3, a4, a5, a6, a7, a8);
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  if (!a3)
  {
    figrpc_createClientCommon_cold_8(&v64, a2, 0, a4, a5, a6, a7, a8);
    goto LABEL_28;
  }

  if (!a4)
  {
    figrpc_createClientCommon_cold_7(&v64, a2, a3, 0, a5, a6, a7, a8);
    goto LABEL_28;
  }

  if ((a5 + 1) <= 1)
  {
    figrpc_createClientCommon_cold_6(&v64, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_28;
  }

  if (!a8)
  {
    figrpc_createClientCommon_cold_5(&v64, a2, a3, a4, a5, a6, a7, 0);
    goto LABEL_28;
  }

  v14 = a2;
  FigServer_CopyProcessName(a2, &v68);
  v16 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A0040BCFFF8B3uLL);
  v24 = v16;
  if (v16)
  {
    *v16 = a1;
    v16[3] = v9;
    v16[4] = v14;
    *(v16 + 3) = CFRetain(a3);
    *(v24 + 4) = a4;
    *(v24 + 5) = a6;
    v25 = MEMORY[0x1E69E9A60];
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name))
    {
      figrpc_createClientCommon_cold_1(&v64, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v33 = name;
      v24[2] = name;
      if (!a7)
      {
        v41 = 0;
        goto LABEL_12;
      }

      if (!mach_port_insert_right(*v25, v33, v33, 0x14u))
      {
        v41 = 1;
LABEL_12:
        if (*(a1 + 32))
        {
          v64 = 0;
          v65 = &v64;
          v66 = 0x2000000000;
          v67 = 0;
          if (*(a1 + 88))
          {
            if (figrpc_getCommonServerTimeoutQueue_once != -1)
            {
              figrpc_createClientCommon_cold_3();
            }

            *(v24 + 14) = figrpc_createRPCTimeoutDetector(figrpc_getCommonServerTimeoutQueue_commonServerTimeoutQueue, **v24, a1);
          }

          v56 = MEMORY[0x1E69E9820];
          v57 = 0x40000000;
          v58 = __figrpc_createClientCommon_block_invoke;
          v59 = &unk_1E74A4798;
          v62 = name;
          v63 = v41;
          v60 = &v64;
          v61 = v24;
          v42 = dispatch_mach_create();
          *(v24 + 7) = v42;
          v65[3] = v42;
          dispatch_mach_connect();
          _Block_object_dispose(&v64, 8);
        }

        else
        {
          v43 = dispatch_source_create(MEMORY[0x1E69E96D8], v24[2], 0, *(a1 + 16));
          *(v24 + 6) = v43;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 0x40000000;
          handler[2] = __figrpc_createClientCommon_block_invoke_2;
          handler[3] = &__block_descriptor_tmp_28_2;
          v54 = name;
          v55 = v41;
          handler[4] = v43;
          dispatch_source_set_cancel_handler(v43, handler);
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 0x40000000;
          v52[2] = __figrpc_createClientCommon_block_invoke_3;
          v52[3] = &__block_descriptor_tmp_29_1;
          v52[4] = v43;
          v52[5] = a1;
          dispatch_source_set_event_handler(v43, v52);
          dispatch_resume(*(v24 + 6));
        }

        v44 = dispatch_source_create(MEMORY[0x1E69E96E0], v24[3], 1uLL, *(a1 + 16));
        *(v24 + 8) = v44;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 0x40000000;
        v50[2] = __figrpc_createClientCommon_block_invoke_4;
        v50[3] = &__block_descriptor_tmp_30_2;
        v51 = v9;
        v50[4] = v44;
        dispatch_source_set_cancel_handler(v44, v50);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 0x40000000;
        v47[2] = __figrpc_createClientCommon_block_invoke_5;
        v47[3] = &__block_descriptor_tmp_31_0;
        v48 = v14;
        v49 = name;
        v47[4] = a1;
        v47[5] = v44;
        dispatch_source_set_event_handler(v44, v47);
        dispatch_resume(v44);
        CFDictionaryAddValue(*(a1 + 64), v24[2], v24);
        v45 = 0;
        goto LABEL_20;
      }

      figrpc_createClientCommon_cold_2(&v64, v34, v35, v36, v37, v38, v39, v40);
    }
  }

  else
  {
    figrpc_createClientCommon_cold_4(&v64, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_29:
  v45 = v64;
  if (v64)
  {
    if (v9 - 1 <= 0xFFFFFFFD)
    {
      FigMachPortReleaseSendRight_(v9, 0, 0, 0, 0);
    }

    if (v24 && *(v24 + 7))
    {
      dispatch_mach_cancel();
    }

    else if (name - 1 <= 0xFFFFFFFD)
    {
      FigMachPortReleaseReceiveRight_(name, 0, 0, 0, 0);
    }

    free(v24);
    v24 = 0;
  }

LABEL_20:
  *a8 = v24;
  if (v68)
  {
    CFRelease(v68);
  }

  return v45;
}

void figrpc_reflectServedObjectNotificationToClient(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00406B48E91AuLL);
  if (v8)
  {
    v16 = v8;
    v8[1] = a3;
    CFRetain(a3);
    if (a5)
    {
      v16[2] = CFRetain(a5);
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v17 = *(a2 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __figrpc_enqueueNotificationInternal_block_invoke;
    block[3] = &unk_1E74A4840;
    block[5] = v16;
    block[6] = a2;
    block[4] = &v19;
    dispatch_sync(v17, block);
    if (*(v20 + 24))
    {
      (*(a2 + 72))(*(a2 + 12), *(a2 + 32));
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    figrpc_reflectServedObjectNotificationToClient_cold_1(0, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t FigRPCDisposeClientConnection(uint64_t a1, unsigned int *value, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (!value)
    {
      return 0;
    }

    if (CFDictionaryContainsValue(*(a1 + 64), value))
    {
      if (*(value + 9))
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener(DefaultLocalCenter, value, figrpc_reflectServedObjectNotificationToClient, 0, *(value + 3));
        v17 = *(value + 3);
        v18 = *(CMBaseObjectGetVTable(v17) + 8);
        if (*v18 >= 2uLL)
        {
          v19 = v18[8];
          if (v19)
          {
            v19(v17);
          }
        }

        v20 = *(value + 13);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __figrpc_cancelQueuedNotifications_block_invoke;
        block[3] = &__block_descriptor_tmp_34;
        block[4] = value;
        dispatch_sync(v20, block);
        dispatch_release(*(value + 13));
        *(value + 13) = 0;
      }

      CFDictionaryRemoveValue(*(*value + 64), value[2]);
      v21 = *(value + 6);
      if (v21)
      {
        dispatch_source_cancel(v21);
      }

      if (*(value + 7))
      {
        dispatch_mach_cancel();
      }

      v22 = *(value + 3);
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = *(value + 8);
      if (v23)
      {
        dispatch_source_cancel(v23);
      }

      v24 = *(value + 14);
      if (v24)
      {
        CFRelease(v24);
      }

      *(value + 14) = 0;
      *(value + 5) = 0u;
      *(value + 6) = 0u;
      *(value + 3) = 0u;
      *(value + 4) = 0u;
      *(value + 1) = 0u;
      *(value + 2) = 0u;
      *value = 0u;
      free(value);
      return 0;
    }

    FigRPCDisposeClientConnection_cold_1(block, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    FigRPCDisposeClientConnection_cold_2(block, value, a3, a4, a5, a6, a7, a8);
  }

  return LODWORD(block[0]);
}

uint64_t FigRPCLookupClientConnection(uint64_t a1, uint64_t key, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigRPCLookupClientConnection_cold_4(&v19, key, a3, a4, a5, a6, a7, a8);
LABEL_11:
    Value = 0;
    v17 = v19;
    goto LABEL_6;
  }

  if (!a3)
  {
    FigRPCLookupClientConnection_cold_3(&v19, key, 0, a4, a5, a6, a7, a8);
    goto LABEL_11;
  }

  if ((key + 1) <= 1)
  {
    FigRPCLookupClientConnection_cold_2(&v19, key, a3, a4, a5, a6, a7, a8);
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(*(a1 + 64), key);
  if (!Value)
  {
    FigRPCLookupClientConnection_cold_1(&v19, v10, v11, v12, v13, v14, v15, v16);
    goto LABEL_11;
  }

  v17 = 0;
LABEL_6:
  *a3 = Value;
  return v17;
}

uint64_t FigRPCGetConnectionInfo(uint64_t a1, _DWORD *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 8);
    }

    if (a3)
    {
      *a3 = *(a1 + 40);
    }

    if (a4)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = CFRetain(v9);
      }

      else
      {
        v10 = 0;
      }

      result = 0;
      *a4 = v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigRPCGetConnectionInfo_cold_1(&v12, a2, a3, a4, a5, a6, a7, a8);
    return v12;
  }

  return result;
}

uint64_t FigRPCRetainServedObjectOfConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x2000000000;
  v14 = 0;
  if (!a1)
  {
    FigRPCRetainServedObjectOfConnection_cold_3(v13, &v15, a3, a4, a5, a6, a7, a8);
LABEL_9:
    v9 = v15;
    goto LABEL_5;
  }

  if (!a2)
  {
    FigRPCRetainServedObjectOfConnection_cold_2(v13, &v15, a3, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  if (!a3)
  {
    FigRPCRetainServedObjectOfConnection_cold_1(v13, &v15, 0, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  v8 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigRPCRetainServedObjectOfConnection_block_invoke;
  block[3] = &unk_1E74A46D0;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v12;
  block[5] = a1;
  dispatch_sync(v8, block);
  v9 = *(v13[0] + 24);
LABEL_5:
  _Block_object_dispose(&v12, 8);
  return v9;
}

const void *__FigRPCRetainServedObjectOfConnection_block_invoke(uint64_t a1)
{
  if (CFDictionaryContainsValue(*(*(a1 + 40) + 64), *(a1 + 48)))
  {
    result = *(*(a1 + 48) + 24);
    if (result)
    {
      result = CFRetain(result);
    }

    **(a1 + 56) = result;
  }

  else
  {
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02BuLL, "<<<< FigRPCServer >>>>", 0x5F3, v1, v3, v4);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t FigRPCExecuteByServerSync(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      dispatch_sync(*(a1 + 16), a2);
      return 0;
    }

    else
    {
      FigRPCExecuteByServerSync_cold_1(&v9, 0, a3, a4, a5, a6, a7, a8);
      return v9;
    }
  }

  else
  {
    FigRPCExecuteByServerSync_cold_2(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }
}

uint64_t FigRPCExecuteByServerAsync(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      dispatch_async(*(a1 + 16), a2);
      return 0;
    }

    else
    {
      FigRPCExecuteByServerAsync_cold_1(&v9, 0, a3, a4, a5, a6, a7, a8);
      return v9;
    }
  }

  else
  {
    FigRPCExecuteByServerAsync_cold_2(&v10, a2, a3, a4, a5, a6, a7, a8);
    return v10;
  }
}

void __figrpc_createRPCTimeoutDetector_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 32));
  v3 = *(a1 + 40);
  context = dispatch_get_context(*(v3 + 16));
  if (v2)
  {
    if (*(v3 + 544))
    {
      v7 = *(*(a1 + 48) + 120);
      if (v7)
      {
        v7(context, buffer, 256);
        strnlen(v2 + 25, 0x200uLL);
        __strncat_chk();
      }

      v8 = *(v2 + 135);
      v9 = v2 + 25;
      FigRPCServer_TimeoutCrashReport(v8, v9);
      v10 = getpid();
      memset(v53, 0, sizeof(v53));
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      *&v47[3] = 0u;
      memset(v47, 63, 3);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
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
      memset(buffer, 0, sizeof(buffer));
      proc_name(v10, v47, 0x80u);
      snprintf(buffer, 0x200uLL, "%s: Self-aborting on connection death timeout with reason: %s", v47, v9);
      v17[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CEE0, 0, v17, &type);
      v12 = v17[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v17[1] = 136315394;
        v18 = "figrpc_selfAbortDueToTimeout";
        v19 = 2082;
        v20 = buffer;
        v15 = _os_log_send_and_compose_impl();
        LOBYTE(v12) = v17[0];
      }

      else
      {
        v15 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CEE0, 0, 1, v15, v15 != &v21, v12, 0, v13);
      qword_1EAF1B730 = buffer;
      abort();
    }

    v5 = *(v2 + 135);
    v6 = getpid();
    memset(&buffer[3], 0, 125);
    memset(buffer, 63, 3);
    *v47 = 0;
    proc_name(v6, buffer, 0x80u);
    FigServer_CopyProcessName(v5, v47);
    FigRPCServer_TimeoutCrashReport(v5, v2 + 25);
    if (*v47)
    {
      CFRelease(*v47);
    }

    kill(v6, 9);
    CFRelease(v2);
  }
}

void __figrpc_createRPCTimeoutDetector_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void figRPCTimeoutDetector_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 16) = 0;
    }
  }

  *(a1 + 25) = 0;
}

dispatch_queue_t __figrpc_getCommonServerTimeoutQueue_block_invoke()
{
  result = dispatch_queue_create("FigRPCServerCommonTimeoutQueue", 0);
  figrpc_getCommonServerTimeoutQueue_commonServerTimeoutQueue = result;
  return result;
}

void __figRPCTimeoutDetector_unsetTimer_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 25) = 0;
  v2 = *(a1 + 32);
  *(v2 + 540) = 0;
  v3 = *(v2 + 16);
  if (dispatch_get_context(v3))
  {
    v4 = *(*(v2 + 560) + 112);
    if (v4)
    {
      v4();
      v3 = *(*(a1 + 32) + 16);
    }

    dispatch_set_context(v3, 0);
  }
}

void __figrpc_createClientCommon_block_invoke(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 8:
      v7 = *(*(*(a1 + 32) + 8) + 24);
      if (v7)
      {

        dispatch_release(v7);
      }

      break;
    case 7:
      FigMachPortReleaseReceiveRight_(*(a1 + 48), 0, 0, 0, 0);
      if (*(a1 + 52))
      {
        v6 = *(a1 + 48);

        FigMachPortReleaseSendRight_(v6, 0, 0, 0, 0);
      }

      break;
    case 2:
      v3 = *(a1 + 40);
      if (*(v3 + 112) && (v4 = CFRetain(*(v3 + 112))) != 0)
      {
        figRPCTimeoutDetector_setTimer(v4, ***(a1 + 40), *(*(a1 + 40) + 16));
        v5 = dispatch_mach_mig_demux();
        figRPCTimeoutDetector_unsetTimer(v4);
        CFRelease(v4);
        if (v5)
        {
          return;
        }
      }

      else if (dispatch_mach_mig_demux())
      {
        return;
      }

      msg = dispatch_mach_msg_get_msg();

      mach_msg_destroy(msg);
      break;
    default:
      return;
  }
}

void __figrpc_createClientCommon_block_invoke_2(uint64_t a1)
{
  FigMachPortReleaseReceiveRight_(*(a1 + 40), 0, 0, 0, 0);
  if (*(a1 + 44))
  {
    FigMachPortReleaseSendRight_(*(a1 + 40), 0, 0, 0, 0);
  }

  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void __figrpc_createClientCommon_block_invoke_4(uint64_t a1)
{
  FigMachPortReleaseSendRight_(*(a1 + 40), 0, 0, 0, 0);
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void __figrpc_createClientCommon_block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = CFRetain(v3);
  if (!v4)
  {
    v2 = *(a1 + 32);
LABEL_11:
    (*(v2 + 72))(*(a1 + 52));
    goto LABEL_12;
  }

  v5 = v4;
  v6 = *(a1 + 52);
  if (*(v4 + 2))
  {
    v7 = *(a1 + 48);
    v8 = **(a1 + 32);
    v4[135] = v7;
    *(v4 + 544) = 1;
    cf = 0;
    memset(v15, 0, sizeof(v15));
    FigServer_CopyProcessName(v7, &cf);
    CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(cf, v15, 128, 0x600u);
    snprintf((v5 + 25), 0x200uLL, "(%s:ConnectionDeath: %s PID:%d) ", v8, CStringPtrMaybeUsingPreallocatedBuffer, v7);
    if (cf)
    {
      CFRelease(cf);
    }

    v10 = *(*(v5 + 560) + 104);
    if (v10)
    {
      v11 = v10(v6);
      dispatch_set_context(*(v5 + 16), v11);
    }

    v12 = *(v5 + 16);
    v13 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    *(v5 + 24) = 1;
    v6 = *(a1 + 52);
  }

  (*(*(a1 + 32) + 72))(v6);
  figRPCTimeoutDetector_unsetTimer(v5);
  CFRelease(v5);
LABEL_12:
  dispatch_source_cancel(*(a1 + 40));
}

uint64_t __figrpc_enqueueNotificationInternal_block_invoke(uint64_t result)
{
  **(result + 40) = 0;
  v1 = *(result + 40);
  **(*(result + 48) + 88) = v1;
  *(*(result + 48) + 88) = v1;
  if (!*(*(result + 48) + 96))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *(*(result + 48) + 96) = 1;
  }

  return result;
}

size_t FigRemote_CreateFormatDescriptionFromSerializedDictionary(const __CFAllocator *a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  valuePtr = 0;
  cf = 0;
  if (!theDict)
  {
    FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_4(&v24);
    return v24;
  }

  if (!a3)
  {
    FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_3(&v24);
    return v24;
  }

  Value = CFDictionaryGetValue(theDict, @"MediaType");
  if (!Value)
  {
    FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_2(&v24);
    return v24;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v8 = CFDictionaryGetValue(theDict, @"FormatDescriptionData");
  if (!v8)
  {
    FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_1(&v24);
    return v24;
  }

  v9 = v8;
  v10 = CFDictionaryGetValue(theDict, @"SampleDescriptionFlavor");
  v11 = valuePtr;
  BytePtr = CFDataGetBytePtr(v9);
  Length = CFDataGetLength(v9);
  if (v11 > 1935832171)
  {
    if (v11 > 1952807027)
    {
      if (v11 != 1952807028)
      {
        if (v11 == 1953325924)
        {
          v14 = CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(a1, BytePtr, Length, v10, &cf);
          goto LABEL_31;
        }

        v15 = 1986618469;
        goto LABEL_22;
      }
    }

    else if (v11 != 1935832172)
    {
      if (v11 == 1935893870)
      {
        v14 = CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData(a1, BytePtr, Length, v10, &cf);
        goto LABEL_31;
      }

      if (v11 == 1936684398)
      {
        v14 = CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(a1, BytePtr, Length, v10, &cf);
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v14 = CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(a1, BytePtr, Length, v10, v11, &cf);
    goto LABEL_31;
  }

  if (v11 <= 1835365472)
  {
    if (v11 != 1635088502)
    {
      if (v11 == 1668047728)
      {
        v14 = CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(a1, BytePtr, Length, v10, &cf);
        goto LABEL_31;
      }

      if (v11 == 1751216244)
      {
        v14 = CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData(a1, BytePtr, Length, v10, &cf);
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_23:
    SystemEncoding = CFStringGetSystemEncoding();
    v14 = CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(a1, BytePtr, Length, SystemEncoding, v10, &cf);
    goto LABEL_31;
  }

  if (v11 == 1835365473)
  {
    v14 = CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(a1, BytePtr, Length, v10, &cf);
    goto LABEL_31;
  }

  if (v11 == 1885564004)
  {
    v14 = CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionData(a1, BytePtr, Length, 0x70636C64u, &cf);
    goto LABEL_31;
  }

  v15 = 1885954932;
LABEL_22:
  if (v11 == v15)
  {
    goto LABEL_23;
  }

LABEL_30:
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x2AE, v3, v18, v19);
LABEL_31:
  v20 = v14;
  if (v14)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v20;
}

size_t FigRemote_CreatePListFromFormatDescriptionCollection(const __CFAllocator *a1, CFTypeRef cf, CFArrayRef *a3)
{
  if (!cf)
  {
    v20 = 808;
    goto LABEL_23;
  }

  v6 = CFGetTypeID(cf);
  v21 = a3;
  if (v6 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
    v8 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v9 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v23.location = 0;
    v23.length = Count;
    CFArrayGetValues(cf, v23, v8);
    v10 = 0;
    goto LABEL_6;
  }

  if (v6 != CFDictionaryGetTypeID())
  {
    v20 = 831;
LABEL_23:
    FigRemote_CreatePListFromFormatDescriptionCollection_cold_1(v20, &v22);
    v9 = 0;
    v8 = 0;
    v10 = 0;
    v16 = v22;
    goto LABEL_21;
  }

  Count = CFDictionaryGetCount(cf);
  v10 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  v8 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  v9 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(cf, v10, v8);
LABEL_6:
  if (Count >= 1)
  {
    v11 = v8;
    v12 = v9;
    v13 = Count;
    while (1)
    {
      SerializableDictionaryForFormatDescription = FigRemote_CreateSerializableDictionaryForFormatDescription(a1, *v11, v12);
      if (SerializableDictionaryForFormatDescription)
      {
        break;
      }

      ++v12;
      ++v11;
      if (!--v13)
      {
        goto LABEL_10;
      }
    }

    v16 = SerializableDictionaryForFormatDescription;
    goto LABEL_16;
  }

LABEL_10:
  if (v6 == CFArrayGetTypeID())
  {
    v15 = CFArrayCreate(a1, v9, Count, MEMORY[0x1E695E9C0]);
LABEL_14:
    v16 = 0;
    *v21 = v15;
    goto LABEL_16;
  }

  if (v6 == CFDictionaryGetTypeID())
  {
    v15 = CFDictionaryCreate(a1, v10, v9, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_14;
  }

  v16 = 0;
LABEL_16:
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v18 = v9[i];
      if (v18)
      {
        CFRelease(v18);
      }
    }
  }

LABEL_21:
  free(v10);
  free(v8);
  free(v9);
  return v16;
}

size_t FigRemote_CreateFormatDescriptionCollectionFromPList(const __CFAllocator *a1, CFTypeRef cf, CFArrayRef *a3)
{
  v7 = CFGetTypeID(cf);
  if (v7 == CFArrayGetTypeID())
  {
    v24 = a3;
    Count = CFArrayGetCount(cf);
    v9 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v10 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v25.location = 0;
    v25.length = Count;
    CFArrayGetValues(cf, v25, v9);
    v11 = 0;
  }

  else
  {
    if (v7 != CFDictionaryGetTypeID())
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x37D, v3, v19, v20);
      v10 = 0;
      v9 = 0;
      v11 = 0;
      goto LABEL_21;
    }

    v24 = a3;
    Count = CFDictionaryGetCount(cf);
    v11 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v9 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v10 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(cf, v11, v9);
  }

  if (Count >= 1)
  {
    v12 = v9;
    v13 = v10;
    v14 = Count;
    while (1)
    {
      FormatDescriptionFromSerializedDictionary = FigRemote_CreateFormatDescriptionFromSerializedDictionary(a1, *v12, v13);
      if (FormatDescriptionFromSerializedDictionary)
      {
        break;
      }

      ++v13;
      ++v12;
      if (!--v14)
      {
        goto LABEL_9;
      }
    }

    v17 = FormatDescriptionFromSerializedDictionary;
    goto LABEL_16;
  }

LABEL_9:
  if (v7 == CFArrayGetTypeID())
  {
    v16 = CFArrayCreate(a1, v10, Count, MEMORY[0x1E695E9C0]);
LABEL_13:
    v17 = 0;
    *v24 = v16;
    goto LABEL_16;
  }

  if (v7 == CFDictionaryGetTypeID())
  {
    v16 = CFDictionaryCreate(a1, v11, v10, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_13;
  }

  v17 = 0;
LABEL_16:
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v22 = v10[i];
      if (v22)
      {
        CFRelease(v22);
      }
    }
  }

LABEL_21:
  free(v11);
  free(v9);
  free(v10);
  return v17;
}

__CFString *FigServer_GetEnvironmentName()
{
  if (gServerEnvironment > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E74A49A0 + gServerEnvironment);
  }
}

void FigServer_InitializeWithEnvironment(int a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigServer_InitializeWithEnvironment_block_invoke;
  block[3] = &__block_descriptor_tmp_55;
  v2 = a1;
  if (FigServer_InitializeWithEnvironment_once != -1)
  {
    dispatch_once(&FigServer_InitializeWithEnvironment_once, block);
  }
}

void FigCommonMediaProcessInitialization(int a1)
{
  if (a1 == 10)
  {
    if (in_audio_mx_server_process() && _os_feature_enabled_impl())
    {
      FigServer_InitializeWithEnvironment(6);
      goto LABEL_12;
    }

    FigServer_InitializeWithEnvironment(10);
  }

  else
  {
    FigServer_InitializeWithEnvironment(a1);
    if (a1 == 6)
    {
      goto LABEL_12;
    }
  }

  if (feServer_SetupTERMSignalHandler_onceToken != -1)
  {
    FigCommonMediaProcessInitialization_cold_1();
  }

  if ((a1 & 0xFFFFFFFE) == 2)
  {
    _MergedGlobals_53 = 1;
  }

LABEL_12:
  signal(30, 1);
  signal(31, 1);
  FigNote_OneTimeInitializationForMediaServerd();
  FigSysdiagnoseBlock_OneTimeInitializationForMediaserverd();

  FigKTraceInit();
}

BOOL FigServer_IsServerProcess()
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  return gServerEnvironment != 0;
}

BOOL FigServer_IsMediaserverd()
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  return gServerEnvironment == 1;
}

BOOL FigServer_IsMediaparserd()
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  return gServerEnvironment == 3;
}

BOOL FigServer_IsVideocodecd()
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  return gServerEnvironment == 4;
}

BOOL FigServer_IsCameracaptured()
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  return gServerEnvironment == 7;
}

BOOL FigServer_IsMediaplaybackd()
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  return gServerEnvironment == 2;
}

BOOL FigServer_IsAirplayd()
{
  if (checkFigRemotePrivTrace_onceToken != -1)
  {
    __FigServer_InitializeWithEnvironment_block_invoke_cold_1();
  }

  return gServerEnvironment == 8;
}

uint64_t FigServer_GetClientPIDFromAuditToken(_OWORD *a1)
{
  pidp = 0;
  v1 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v1;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  return pidp;
}

size_t FigProcessInfoCreateWithDetails(uint64_t a1, int a2, const void *a3, void *a4)
{
  if (!a3)
  {
    FigProcessInfoCreateWithDetails_cold_5(&v15);
    return v15;
  }

  if (FigProcessInfoCreateWithDetails_once != -1)
  {
    FigProcessInfoCreateWithDetails_cold_1();
  }

  if (qword_1ED4CCDC8 != -1)
  {
    FigProcessInfoCreateWithDetails_cold_2();
  }

  v7 = qword_1ED4CCDD0;
  FigSimpleMutexLock(FigProcessInfoCreateWithDetails_mutex);
  v8 = a2;
  v9 = FigCFWeakReferenceTableCopyValue(v7, a2);
  if (v9)
  {
    Instance = v9;
    if (!FigCFEqual(a3, *(v9 + 2)))
    {
      v11 = Instance[2];
      Instance[2] = a3;
      CFRetain(a3);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    FigSimpleMutexUnlock(FigProcessInfoCreateWithDetails_mutex);
  }

  else
  {
    if (figProcessInfo_GetTypeID_sRegisterFigProcessInfoTypeOnce != -1)
    {
      FigProcessInfoCreateWithDetails_cold_3();
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance && (FigProcessInfoCreateWithDetails_cold_4(&v14) & 1) == 0)
    {
      return v14;
    }

    Instance[2] = CFRetain(a3);
    v12 = FigCFWeakReferenceTableAddValueAssociatedWithKey(v7, Instance, v8);
    FigSimpleMutexUnlock(FigProcessInfoCreateWithDetails_mutex);
    if (v12)
    {
      goto LABEL_18;
    }
  }

  v12 = 0;
  if (!a4)
  {
LABEL_18:
    CFRelease(Instance);
    return v12;
  }

  *a4 = Instance;
  return v12;
}

uint64_t __FigProcessInfoCreateWithDetails_block_invoke()
{
  result = FigSimpleMutexCreate();
  FigProcessInfoCreateWithDetails_mutex = result;
  return result;
}

size_t __getProcNameWeakTable_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  FigCFWeakReferenceTableCreate(AllocatorForPermanentAllocations, 1, &qword_1ED4CCDD0);
  FigGetAllocatorForPermanentAllocations();
  if (figProcessInfo_GetTypeID_sRegisterFigProcessInfoTypeOnce != -1)
  {
    FigProcessInfoCreateWithDetails_cold_3();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    getProcNameWeakTable_currentProcessInfo = Instance;
  }

  else
  {
    __getProcNameWeakTable_block_invoke_cold_2();
  }

  proc_name(v0, v7, 0x21u);
  v3 = FigGetAllocatorForPermanentAllocations();
  v4 = CFStringCreateWithCString(v3, v7, 0x8000100u);
  v5 = getProcNameWeakTable_currentProcessInfo;
  *(getProcNameWeakTable_currentProcessInfo + 16) = v4;
  return FigCFWeakReferenceTableAddValueAssociatedWithKey(qword_1ED4CCDD0, v5, v0);
}

void figProcessInfo_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFTypeRef figProcessInfo_CopyDebugDesc(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, UInt8 buffer)
{

  return CFURLGetFileSystemRepresentation(v34, 1u, &buffer, 1024);
}

uint64_t FigTransportGetClassID()
{
  if (_MergedGlobals_54 != -1)
  {
    FigTransportGetClassID_cold_1();
  }

  return qword_1ED4CCDE0;
}

size_t transport_getClassID(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&transport_getClassID_sClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigTransportGetTypeID()
{
  if (_MergedGlobals_54 != -1)
  {
    FigTransportGetClassID_cold_1();
  }

  v1 = qword_1ED4CCDE0;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t FigTimelineCoordinatorGetTypeID()
{
  if (FigTimelineCoordinatorGetTypeID_sRegisterFigTimelineCoordinatorTypeOnce != -1)
  {
    FigTimelineCoordinatorGetTypeID_cold_1();
  }

  return sFigTimelineCoordinatorID;
}

uint64_t registerFigTimelineCoordinatorType()
{
  result = _CFRuntimeRegisterClass();
  sFigTimelineCoordinatorID = result;
  return result;
}

uint64_t FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary(int a1, CFDictionaryRef theDict, uint64_t a3, CMTime *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v43 = *MEMORY[0x1E69E9840];
  memset(&v35, 0, sizeof(v35));
  if (!theDict)
  {
    FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary_cold_4(&v42, 0, a3, a4, a5, a6, a7, a8);
    return LODWORD(v42.value);
  }

  if (!a4)
  {
    FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary_cold_3(&v42, theDict, a3, 0, a5, a6, a7, a8);
    return LODWORD(v42.value);
  }

  if (!a3)
  {
    v42.value = 0;
    ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"HostTime", &v42);
    if (ValueIfPresent)
    {
      UInt64 = FigCFNumberGetUInt64(v42.value);
    }

    else
    {
      FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary_cold_2(ValueIfPresent, v23, v24, v25, v26, v27, v28, v29);
      UInt64 = 0;
    }

    memset(&v42, 0, sizeof(v42));
    CMTimeMake(&v42, bswap64(UInt64), 1000000);
    HostTimeForClockTime = 0;
    *a4 = v42;
    return HostTimeForClockTime;
  }

  v36 = 0;
  value = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"Seconds", &value))
  {
    if (CFDictionaryGetValueIfPresent(theDict, @"Subsecs", &v36))
    {
      v14 = FigCFNumberGetUInt64(value);
      v15 = v14 | (FigCFNumberGetUInt64(v36) << 32);
      goto LABEL_7;
    }

    v32 = 901;
  }

  else
  {
    v32 = 900;
  }

  if ((FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary_cold_1(v32, &v36, &value, &v42, v10, v11, v12, v13) & 1) == 0)
  {
    return LODWORD(v42.value);
  }

  v15 = 0;
LABEL_7:
  FigTimeOfDayTimeFromNTPTimestamp(v15, &v35);
  v42 = v35;
  HostTimeForClockTime = CMTimeSyncCoPresenceNTPClockGetHostTimeForClockTime();
  if (HostTimeForClockTime)
  {
    v34 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 0, &v34, &type);
    v18 = v34;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v38 = 136315394;
      v39 = "FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary";
      v40 = 1024;
      v41 = HostTimeForClockTime;
      v21 = _os_log_send_and_compose_impl();
      LOBYTE(v18) = v34;
    }

    else
    {
      v21 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 0, 1, v21, v21 != &v42, v18, 0, v19);
  }

  return HostTimeForClockTime;
}

size_t FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime(uint64_t a1, CMTime *a2, uint64_t a3, CFDictionaryRef *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v65 = *MEMORY[0x1E69E9840];
  memset(&v62[1], 0, 24);
  if (!a4)
  {
    FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime_cold_4(&v64, a2, a3, 0, a5, a6, a7, a8);
    return LODWORD(v64.value);
  }

  if (a3)
  {
    v64 = *a2;
    ClockTimeForHostTime = CMTimeSyncCoPresenceNTPClockGetClockTimeForHostTime();
    if (ClockTimeForHostTime)
    {
      v34 = ClockTimeForHostTime;
      v62[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 0, v62, &type);
      v57 = v62[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v59 = v57;
      }

      else
      {
        v59 = v57 & 0xFFFFFFFE;
      }

      if (v59)
      {
        LODWORD(time.value) = 136315394;
        *(&time.value + 4) = "FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime";
        LOWORD(time.flags) = 1024;
        *(&time.flags + 2) = v34;
        v60 = _os_log_send_and_compose_impl();
        LOBYTE(v57) = v62[0];
      }

      else
      {
        v60 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 0, 1, v60, v60 != &v64, v57, 0, v58);
      return v34;
    }

    v64 = *&v62[1];
    v11 = FigNTPTimestampFromTimeOfDayTime(&v64);
    v12 = v11;
    v13 = HIDWORD(v11);
    v14 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    UInt32 = FigCFNumberCreateUInt32(v14, v12);
    v17 = FigCFNumberCreateUInt32(v14, v13);
    v20 = v17;
    if (Mutable)
    {
      v21 = UInt32 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21 || v17 == 0)
    {
      value_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x36F, v8, v18, v19);
      if (!Mutable)
      {
        goto LABEL_14;
      }
    }

    else
    {
      CFDictionarySetValue(Mutable, @"Seconds", UInt32);
      CFDictionarySetValue(Mutable, @"Subsecs", v20);
      Copy = CFDictionaryCreateCopy(v14, Mutable);
      *a4 = Copy;
      if (Copy)
      {
        value_low = 0;
      }

      else
      {
        FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime_cold_1(&v64, v24, v25, v26, v27, v28, v29, v30);
        value_low = LODWORD(v64.value);
      }
    }

    CFRelease(Mutable);
LABEL_14:
    if (UInt32)
    {
      CFRelease(UInt32);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (value_low)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, value_low, "<<<< FigTimelineCoordinator >>>>", 0x3D6, v8, v32, v33);
    }

    else
    {
      return 0;
    }
  }

  memset(&v64, 0, sizeof(v64));
  time = *a2;
  CMTimeConvertScale(&v64, &time, 1000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  value = v64.value;
  v36 = *MEMORY[0x1E695E480];
  v37 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v37)
  {
    FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime_cold_3(0, v38, v39, v40, v41, v42, v43, v44);
  }

  v45 = v37;
  UInt64 = FigCFNumberCreateUInt64(v36, bswap64(value));
  CFDictionarySetValue(v45, @"HostTime", UInt64);
  v47 = CFDictionaryCreateCopy(v36, v45);
  *a4 = v47;
  if (v47)
  {
    v34 = 0;
  }

  else
  {
    FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime_cold_2(&time, v48, v49, v50, v51, v52, v53, v54);
    v34 = LODWORD(time.value);
  }

  CFRelease(v45);
  if (UInt64)
  {
    CFRelease(UInt64);
  }

  return v34;
}

uint64_t FigTimelineCoordinatorSuspensionGetTypeID()
{
  if (FigTimelineCoordinatorSuspensionGetTypeID_sRegisterFigTimelineCoordinatorSuspensionTypeOnce != -1)
  {
    FigTimelineCoordinatorSuspensionGetTypeID_cold_1();
  }

  return sFigTimelineCoordinatorSuspensionID;
}

uint64_t registerFigTimelineCoordinatorSuspensionType()
{
  result = _CFRuntimeRegisterClass();
  sFigTimelineCoordinatorSuspensionID = result;
  return result;
}

CFTypeRef FigTimelineCoordinatorSuspensionCopyReason(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  if (result)
  {
    result = CFRetain(result);
  }

  *a2 = result;
  return result;
}

uint64_t FigTimelineCoordinatorSuspensionCreate(uint64_t a1, const void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a3)
  {
    if (a2)
    {
      if (FigTimelineCoordinatorSuspensionGetTypeID_sRegisterFigTimelineCoordinatorSuspensionTypeOnce != -1)
      {
        FigTimelineCoordinatorSuspensionGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v18 = Instance;
        v19 = CFRetain(a2);
        result = 0;
        *(v18 + 16) = v19;
        *a3 = v18;
      }

      else
      {
        FigTimelineCoordinatorSuspensionCreate_cold_2(&v21, v11, v12, v13, v14, v15, v16, v17);
        return v21;
      }
    }

    else
    {
      FigTimelineCoordinatorSuspensionCreate_cold_3(&v22, 0, a3, a4, a5, a6, a7, a8);
      return v22;
    }
  }

  else
  {
    FigTimelineCoordinatorSuspensionCreate_cold_4(&v23, a2, 0, a4, a5, a6, a7, a8);
    return v23;
  }

  return result;
}

uint64_t FigTimelineCoordinatorTimelineStateGetTypeID()
{
  if (FigTimelineCoordinatorTimelineStateGetTypeID_sRegisterFigTimelineCoordinatorTimelineStateTypeOnce != -1)
  {
    FigTimelineCoordinatorTimelineStateGetTypeID_cold_1();
  }

  return sFigTimelineCoordinatorTimelineStateID;
}

uint64_t registerFigTimelineCoordinatorTimelineStateType()
{
  result = _CFRuntimeRegisterClass();
  sFigTimelineCoordinatorTimelineStateID = result;
  return result;
}

uint64_t FigTimelineCoordinationParticipantSnapshotGetTypeID()
{
  if (_MergedGlobals_55 != -1)
  {
    FigTimelineCoordinationParticipantSnapshotGetTypeID_cold_1();
  }

  return qword_1ED4CCDF0;
}

uint64_t registerFigTimelineCoordinationParticipantSnapshotType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCDF0 = result;
  return result;
}

const void *participantState_timelineIdentifier(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"CurrentIdentifier");
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFStringGetTypeID())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *participantState_isSuspended(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"SuspensionReasons");
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFArrayGetTypeID())
    {
      return (CFArrayGetCount(v2) > 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons(uint64_t a1)
{
  Mutable = *(a1 + 40);
  if (!Mutable)
  {
    Value = CFDictionaryGetValue(*(a1 + 16), @"SuspensionReasons");
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Value)
    {
      v4 = CFGetTypeID(Value);
      if (v4 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(Value) >= 1)
        {
          v5 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, v5);
            if (ValueAtIndex)
            {
              v7 = ValueAtIndex;
              v8 = CFGetTypeID(ValueAtIndex);
              if (v8 == CFStringGetTypeID())
              {
                v11.length = CFArrayGetCount(Mutable);
                v11.location = 0;
                if (!CFArrayContainsValue(Mutable, v11, v7))
                {
                  CFArrayAppendValue(Mutable, v7);
                }
              }
            }

            ++v5;
          }

          while (v5 < CFArrayGetCount(Value));
        }

        v12.length = CFArrayGetCount(Mutable);
        v12.location = 0;
        CFArraySortValues(Mutable, v12, MEMORY[0x1E695D7F0], 0);
      }
    }

    *(a1 + 40) = Mutable;
    if (!Mutable)
    {
      return 0;
    }
  }

  return CFRetain(Mutable);
}

uint64_t FigTimelineCoordinatorHandleUpdatedTimelineStateFromMedium(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a2)
  {
    FigSimpleMutexLock(*(a1 + 16));
    v10 = *(a1 + 24);
    *(a1 + 24) = v10 + 1;
    v11 = malloc_type_malloc(0x18uLL, 0x1060040E60A0C5AuLL);
    *v11 = CFRetain(a1);
    v11[1] = CFRetain(a2);
    v11[2] = v10;
    dispatch_async_f(*(a1 + 88), v11, figTimelineCoordinator_applyRemoteTimelineStateOnQueue);
    v12 = 0;
  }

  else
  {
    FigTimelineCoordinatorHandleUpdatedTimelineStateFromMedium_cold_1(&v14, 0, a3, a4, a5, a6, a7, a8);
    v12 = v14;
  }

  FigSimpleMutexUnlock(*(a1 + 16));
  return v12;
}

void figTimelineCoordinator_applyRemoteTimelineStateOnQueue(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a1;
  v162 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v157 = 0;
  cf = 0;
  value = 0;
  seconds = 0.0;
  memset(&v161, 0, sizeof(v161));
  memset(&v159, 0, sizeof(v159));
  v153 = -1;
  v154 = 0;
  v152 = 0;
  if (v9 && (v12 = CFGetTypeID(v9), a1 = CFDictionaryGetTypeID(), v12 == a1))
  {
    v13 = CFDictionaryGetValue(v9, @"Identifier");
    if (v13 && (v21 = v13, v22 = CFGetTypeID(v13), v13 = CFStringGetTypeID(), v22 == v13))
    {
      FigCFDictionaryGetFloat32IfPresent(v9, @"Rate", &v157 + 4, v16, v17, v18, v19, v20, v136, v142, type.value, *&type.timescale, type.epoch, v149, v150.value, *&v150.timescale, v150.epoch, v151);
      if (v23)
      {
        FigCFDictionaryGetDoubleIfPresent(v9, @"Time", &seconds, v26, v27, v28, v29, v30, v137, v143, type.value, *&type.timescale, type.epoch, v149, v150.value, *&v150.timescale, v150.epoch, v151);
        if (v31)
        {
          CMTimeMakeWithSeconds(&v161, seconds, 1000000);
          if (!CFDictionaryGetValueIfPresent(v9, @"NetworkTime", &value) || !value || (v44 = CFGetTypeID(value), v44 != CFDictionaryGetTypeID()) || !FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary(*(v10 + 176), value, *(v10 + 544) == 0, &v159, v40, v41, v42, v43))
          {
            FigCFDictionaryGetInt32IfPresent(v9, @"SeekPrecision", &v154, v39, v40, v41, v42, v43, v138, v144, type.value, *&type.timescale, type.epoch, v149, v150.value, *&v150.timescale, v150.epoch, v151);
            if (v50 && v154 >= 2)
            {
              v154 = 0;
            }

            FigCFDictionaryGetFloat32IfPresent(v9, @"PrerollRate", &v157, v45, v46, v47, v48, v49, v139, v145, type.value, *&type.timescale, type.epoch, v149, v150.value, *&v150.timescale, v150.epoch, v151);
            FigCFDictionaryGetBooleanIfPresent(v9, @"IsAuthoritative", &v152, v51, v52, v53, v54, v55, v140, v146, type.value, *&type.timescale, type.epoch, v149, v150.value, *&v150.timescale, v150.epoch, v151);
            FigCFDictionaryGetInt32IfPresent(v9, @"LamportTimestamp", &v153, v56, v57, v58, v59, v60, v141, v147, type.value, *&type.timescale, type.epoch, v149, v150.value, *&v150.timescale, v150.epoch, v151);
            if (v61 && v152 && CFStringCompare(v21, *(v10 + 352), 0) == kCFCompareEqualTo)
            {
              v67 = v153;
              *(v10 + 456) = v153;
              FigCFDictionarySetInt32(*(v10 + 464), *(v10 + 352), v67, v62, v63, v64, v65, v66);
            }

            TypeID = CFDictionaryGetValue(v9, @"OriginatorUUID");
            if (TypeID && (v76 = TypeID, v77 = CFGetTypeID(TypeID), TypeID = CFStringGetTypeID(), v77 == TypeID))
            {
              v78 = *MEMORY[0x1E695E480];
              v79 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v76);
              if (v79)
              {
                v87 = v79;
                v150 = v161;
                type = v159;
                Internal = figTimelineCoordinatorTimelineStateCreateInternal(*&v157, *(&v157 + 1), v78, v21, &v150, &type, v154, v79, v11, v153, v152, 1, &cf);
                if (Internal)
                {
                  v90 = 0;
                }

                else
                {
                  StateLoggingIdentifier = FigTimelineStateDictionaryGetStateLoggingIdentifier(v9);
                  v90 = cf;
                  *(cf + 14) = StateLoggingIdentifier;
                  if (StateLoggingIdentifier)
                  {
                    CFRetain(StateLoggingIdentifier);
                    v90 = cf;
                  }

                  cf = 0;
                }

                CFRelease(v87);
                if (cf)
                {
                  CFRelease(cf);
                }

                if (!Internal && v90)
                {
                  v91 = *v8;
                  v92 = *(*v8 + 288);
                  if (v92)
                  {
                    if (FigCFEqual(*(v92 + 88), *(v90 + 11)))
                    {
                      v93 = *(v91 + 288);
                      if (v93)
                      {
                        CFRelease(v93);
                        *(v91 + 288) = 0;
                      }
                    }
                  }

                  if (!FigCFEqual(*(v91 + 352), *(v90 + 11)))
                  {
                    if (!CFDictionaryContainsKey(*(v91 + 216), *(v90 + 11)))
                    {
                      v105 = FigCFCopyCompactDescription(v90);
                      if (dword_1EAF1CF08)
                      {
                        LODWORD(v150.value) = 0;
                        LOBYTE(type.value) = 0;
                        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v150, &type);
                        v107 = v150.value;
                        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
                        {
                          v109 = v107;
                        }

                        else
                        {
                          v109 = v107 & 0xFFFFFFFE;
                        }

                        if (v109)
                        {
                          LODWORD(v159.value) = 136315650;
                          *(&v159.value + 4) = "figTimelineCoordinator_applyRemoteTimelineStateOnQueueInternal";
                          LOWORD(v159.flags) = 2112;
                          *(&v159.flags + 2) = v91;
                          HIWORD(v159.epoch) = 2114;
                          v160 = v105;
                          v110 = _os_log_send_and_compose_impl();
                          LOBYTE(v107) = v150.value;
                        }

                        else
                        {
                          v110 = 0;
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v110, v110 != &v161, v107, 0, v108);
                      }

                      if (v105)
                      {
                        CFRelease(v105);
                      }
                    }

                    v116 = *(v91 + 216);
                    v117 = CFDictionaryGetValue(v116, *(v90 + 11));
                    if (!v117 || figTimelineCoordinator_newTimelineStateShouldOverrideExistingState(v91, v117, v90))
                    {
                      CFDictionarySetValue(v116, *(v90 + 11), v90);
                      FigCFDictionarySetInt32(*(v91 + 464), *(v90 + 11), *(v90 + 25), v118, v119, v120, v121, v122);
                    }

                    goto LABEL_71;
                  }

                  LOBYTE(type.value) = 0;
                  if (!figTimelineCoordinator_newTimelineStateShouldOverrideExistingState(v91, *(v91 + 200), v90))
                  {
                    if (dword_1EAF1CF08)
                    {
                      v99 = FigCFCopyCompactDescription(v90);
                      if (dword_1EAF1CF08)
                      {
                        LODWORD(v150.value) = 0;
                        LOBYTE(cf) = 0;
                        v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v150, &cf);
                        v101 = v150.value;
                        if (os_log_type_enabled(v100, cf))
                        {
                          v103 = v101;
                        }

                        else
                        {
                          v103 = v101 & 0xFFFFFFFE;
                        }

                        if (v103)
                        {
                          LODWORD(v159.value) = 136315650;
                          *(&v159.value + 4) = "figTimelineCoordinator_applyRemoteTimelineStateOnQueueInternal";
                          LOWORD(v159.flags) = 2112;
                          *(&v159.flags + 2) = v91;
                          HIWORD(v159.epoch) = 2114;
                          v160 = v99;
                          v104 = _os_log_send_and_compose_impl();
                          LOBYTE(v101) = v150.value;
                        }

                        else
                        {
                          v104 = 0;
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v104, v104 != &v161, v101, 0, v102);
                      }

                      if (v99)
                      {
                        CFRelease(v99);
                      }
                    }

                    goto LABEL_71;
                  }

                  v111 = *(v90 + 25);
                  *(v91 + 456) = v111;
                  FigCFDictionarySetInt32(*(v91 + 464), *(v90 + 11), v111, v94, v95, v96, v97, v98);
                  v112 = *(v91 + 208);
                  if (v112)
                  {
                    CFRelease(v112);
                    *(v91 + 208) = 0;
                  }

                  if (*(v91 + 224))
                  {
                    v124 = 0;
                    v125 = 0;
                    v126 = *(v90 + 9);
LABEL_87:
                    if (v126 == 0.0)
                    {
                      v126 = *(v90 + 8);
                    }

                    v128 = *(v91 + 192);
                    v129 = *(v128 + 36);
                    if (v129 == 0.0)
                    {
                      v129 = *(v128 + 32);
                    }

                    figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(v91, v90, 0, 1, 1, v125, v124, v129 == v126);
                    if (!*(v91 + 280))
                    {
                      if (dword_1EAF1CF08)
                      {
                        LODWORD(v150.value) = 0;
                        LOBYTE(cf) = 0;
                        v130 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v150, &cf);
                        v131 = v150.value;
                        if (os_log_type_enabled(v130, cf))
                        {
                          v133 = v131;
                        }

                        else
                        {
                          v133 = v131 & 0xFFFFFFFE;
                        }

                        if (v133)
                        {
                          v134 = *(v90 + 11);
                          LODWORD(v159.value) = 136315650;
                          *(&v159.value + 4) = "figTimelineCoordinator_applyRemoteTimelineStateOnQueueInternal";
                          LOWORD(v159.flags) = 2112;
                          *(&v159.flags + 2) = v91;
                          HIWORD(v159.epoch) = 2114;
                          v160 = v134;
                          v135 = _os_log_send_and_compose_impl();
                          LOBYTE(v131) = v150.value;
                        }

                        else
                        {
                          v135 = 0;
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 1u, 1, v135, v135 != &v161, v131, 0, v132);
                      }

                      *(v91 + 280) = 1;
                    }

                    goto LABEL_71;
                  }

                  memset(&v159, 0, sizeof(v159));
                  CMTimeMake(&v159, 1, 10);
                  v113 = *(v91 + 200);
                  if (v113 && *(v113 + 36) != 0.0 && *(v90 + 9) == 0.0)
                  {
                    v114 = *(v90 + 24);
                    if (*(v91 + 544) && !v114)
                    {
                      v115 = 0;
LABEL_85:
                      CMTimeMake(&v161, v115, 1);
                      v159 = v161;
                      goto LABEL_86;
                    }

                    if (v114 == 1)
                    {
                      v115 = 5;
                      goto LABEL_85;
                    }
                  }

LABEL_86:
                  v127 = *(v91 + 192);
                  v161 = v159;
                  figTimelineCoordinator_timelinesMatch(v90, v127, &v161, &type);
                  v125 = type.value;
                  v126 = *(v90 + 9);
                  v124 = *(*(v91 + 192) + 36) == v126;
                  goto LABEL_87;
                }

                if (v90)
                {
LABEL_71:
                  CFRelease(v90);
                }
              }

              else
              {
                figTimelineCoordinator_applyRemoteTimelineStateOnQueue_cold_1(0, v80, v81, v82, v83, v84, v85, v86);
              }
            }

            else
            {
              figTimelineCoordinator_applyRemoteTimelineStateOnQueue_cold_2(TypeID, v69, v70, v71, v72, v73, v74, v75);
            }
          }
        }

        else
        {
          figTimelineCoordinator_applyRemoteTimelineStateOnQueue_cold_3(v31, v32, v33, v34, v35, v36, v37, v38);
        }
      }

      else
      {
        figTimelineCoordinator_applyRemoteTimelineStateOnQueue_cold_4(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }

    else
    {
      figTimelineCoordinator_applyRemoteTimelineStateOnQueue_cold_5(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    figTimelineCoordinator_applyRemoteTimelineStateOnQueue_cold_6(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*v8)
  {
    CFRelease(*v8);
  }

  v123 = v8[1];
  if (v123)
  {
    CFRelease(v123);
  }

  free(v8);
}

uint64_t FigTimelineCoordinatorHandleUpdatedParticipantStateFromMedium(dispatch_queue_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a2)
  {
    v10 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *v10 = v11;
    v10[1] = CFRetain(a2);
    dispatch_async_f(a1[11], v10, figTimelineCoordinator_handleUpdatedParticipantStateFromMediumOnQueue);
    return 0;
  }

  else
  {
    FigTimelineCoordinatorHandleUpdatedParticipantStateFromMedium_cold_1(&v13, 0, a3, a4, a5, a6, a7, a8);
    return v13;
  }
}

uint64_t FigTimelineCoordinatorHandleReplacementOfAllParticipantStatesFromMedium(dispatch_queue_t *a1, const void *a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (a2)
  {
    v12 = v4;
    if (a1)
    {
      v13 = CFRetain(a1);
    }

    else
    {
      v13 = 0;
    }

    *v12 = v13;
    v12[1] = CFRetain(a2);
    dispatch_async_f(a1[11], v12, figTimelineCoordinator_replaceParticipantStatesOnQueue);
    return 0;
  }

  else
  {
    FigTimelineCoordinatorHandleReplacementOfAllParticipantStatesFromMedium_cold_1(&v15, v5, v6, v7, v8, v9, v10, v11);
    return v15;
  }
}

void figTimelineCoordinator_replaceParticipantStatesOnQueue(uint64_t a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = FigCFDictionaryCopyArrayOfKeys(*(v2 + 41));
  MutableCopy = FigCFArrayCreateMutableCopy(v3, v5);
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 8);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    v21 = 0;
    cf = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
    if (!figTimelineCoordinatorParticipantCreateFromDictionary(v3, ValueAtIndex, *(v2 + 44), &cf))
    {
      v15 = *(cf + 4);
      figTimelineCoordinator_integrateParticipantStateOnQueue(v2, cf, &v21, v10, v11, v12, v13, v14);
      if (v21)
      {
        CFArrayAppendValue(Mutable, v15);
      }

      v22.length = CFArrayGetCount(MutableCopy);
      v22.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v22, v15);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  FigSimpleMutexLock(*(v2 + 40));
  if (CFArrayGetCount(MutableCopy) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = CFArrayGetValueAtIndex(MutableCopy, v17);
      CFDictionaryRemoveValue(*(v2 + 41), v18);
      ++v17;
    }

    while (v17 < CFArrayGetCount(MutableCopy));
  }

  FigSimpleMutexUnlock(*(v2 + 40));
  if ((!Mutable || CFArrayGetCount(Mutable) <= 0) && (!MutableCopy || CFArrayGetCount(MutableCopy) < 1))
  {
    if (!Mutable)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  figTimelineCoordinator_postParticipantsDidChange(v2);
  figTimelineCoordinator_triggerTimelineChangesAfterParticipantChangeOnQueue(v2);
  if (Mutable)
  {
LABEL_21:
    CFRelease(Mutable);
  }

LABEL_22:
  if (v5)
  {
    CFRelease(v5);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    CFRelease(v19);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigTimelineCoordinatorCoordinateRateChange(uint64_t a1, void *a2, const void *a3, float a4)
{
  v8 = malloc_type_malloc(0x20uLL, 0x106004058A0E50EuLL);
  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  if (a3)
  {
    v10 = CFRetain(a3);
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 2) = v10;
  v8[2] = a4;
  FigSimpleMutexLock(*(a1 + 16));
  v11 = *(a1 + 24);
  *(a1 + 24) = v11 + 1;
  *(v8 + 3) = v11;
  dispatch_async_f(*(a1 + 88), v8, figTimelineCoordinator_coordinateRateChangeOnQueue);
  FigSimpleMutexUnlock(*(a1 + 16));
  if (a2)
  {
    *a2 = v11;
  }

  return 0;
}

uint64_t FigTimelineCoordinatorCoordinateJumpToTime(uint64_t a1, __int128 *a2, void *a3, const void *a4)
{
  v8 = malloc_type_malloc(0x40uLL, 0x1060040C2398F4EuLL);
  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  if (a4)
  {
    v10 = CFRetain(a4);
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 4) = v10;
  v11 = *a2;
  *(v8 + 3) = *(a2 + 2);
  *(v8 + 8) = v11;
  v8[48] = 0;
  FigSimpleMutexLock(*(a1 + 16));
  v12 = *(a1 + 24);
  *(a1 + 24) = v12 + 1;
  *(v8 + 5) = v12;
  dispatch_async_f(*(a1 + 88), v8, figTimelineCoordinator_coordinateTimeJumpDispatch);
  FigSimpleMutexUnlock(*(a1 + 16));
  if (a3)
  {
    *a3 = v12;
  }

  return 0;
}

void figTimelineCoordinator_coordinateTimeJumpDispatch(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = *a1;
  if (!a1[48])
  {
    v10 = 0;
LABEL_5:
    v12 = *(a1 + 4);
    v13 = *(a1 + 5);
    v15 = *(a1 + 8);
    v16 = *(a1 + 3);
    figTimelineCoordinator_coordinateTimeJumpOnQueue(v9, &v15, 0, v12, v13, v10, a7, a8);
    goto LABEL_6;
  }

  v11 = *(a1 + 7);
  if (v11)
  {
    v9[96] = 1;
    figTimelineCoordinator_startTimeoutForTimelineControlCommandOnQueue(v9, a2, a3, a4, a5, a6, a7, a8);
    v10 = (v11 + 8);
    *v11 = CFRetain(v9);
    *(v11 + 20) = 1;
    goto LABEL_5;
  }

  figTimelineCoordinator_coordinateTimeJumpDispatch_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_6:
  v14 = *(a1 + 4);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  free(a1);
}