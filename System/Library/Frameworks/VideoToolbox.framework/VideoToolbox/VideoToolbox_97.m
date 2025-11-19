void VTPixelTransferNodeCelesteRotationFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 24);
    if (v2)
    {
      CFRelease(v2);
      v1[3] = 0;
    }

    v3 = v1[5];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v1[11];
    if (v4)
    {
      CFRelease(v4);
      v1[11] = 0;
    }
  }

  VTPixelTransferNodeBaseFinalize();
}

uint64_t VTPixelTransferNodeCelesteRotationDoTransfer(int a1, __CVBuffer *a2, double *a3, __CVBuffer *a4, double *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 96);
  v12 = *(DerivedStorage + 104);
  v13 = *(DerivedStorage + 112);
  v14 = *(DerivedStorage + 116);
  v15 = *(DerivedStorage + 117);
  v16 = a3[2];
  v17 = a3[3];
  v18 = a3[4];
  v19 = a3[5];
  v20 = a5[2];
  v21 = a5[3];
  v22 = a5[4];
  v23 = a5[5];

  return vt_Rotate_Celeste(a1, a2, v11, a4, v16, v17, v18, v19, v20, v21, v22, v23, v12, v13, v14, v15);
}

uint64_t RegisterVTDeghostingSession()
{
  v0 = _CFRuntimeRegisterClass();
  _MergedGlobals_18 = v0;
  sVTDeghostingSessionPropertyCallbacks = 0;
  *algn_1EAD31FD8 = VTDeghostingSessionCopySupportedPropertyDictionary;
  qword_1EAD31FE0 = VTDeghostingSessionSetProperty;
  qword_1EAD31FE8 = VTDeghostingSessionCopyProperty;
  qword_1EAD31FF0 = VTDeghostingSessionSetProperties;
  qword_1EAD31FF8 = VTDeghostingSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTDeghostingSessionPropertyCallbacks, v0);
}

uint64_t VTDeghostingSessionRequestStatistics2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  if (!a1)
  {
    VTDeghostingSessionRequestStatistics2_cold_5(&v14);
    return v14;
  }

  v12 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&_MergedGlobals_2, RegisterVTDeghostingSession);
  if (v12 != _MergedGlobals_18)
  {
    VTDeghostingSessionRequestStatistics2_cold_1(&v14);
    return v14;
  }

  if (*(a1 + 16))
  {
    VTDeghostingSessionRequestStatistics2_cold_2(&v14);
    return v14;
  }

  if (*(a1 + 20) != 1)
  {
    VTDeghostingSessionRequestStatistics2_cold_3(&v14);
    return v14;
  }

  if (!a6)
  {
    VTDeghostingSessionRequestStatistics2_cold_4(&v14);
    return v14;
  }

  return vtDeghostingSessionProcessCommon2(a1, a2, a3, 0, a4, a5, a6, 0);
}

uint64_t vtDeghostingSessionProcessCommon2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, const void *a8)
{
  if (a2)
  {
    v16 = CFGetAllocator(*(a1 + 48));
    v17 = MEMORY[0x193AE0CD0](v16, 32, 0x10A004007F56D72, 0);
    if (v17)
    {
      v18 = v17;
      v19 = *(a1 + 20);
      *v17 = v19;
      *(v17 + 16) = 0;
      v20 = (v17 + 16);
      *(v17 + 24) = 0;
      if (v19 == 1)
      {
        Parameters = VTDeghostingFrameBufferGetParameters(a2);
        if (Parameters)
        {
          v18[1] = CFDictionaryGetValue(Parameters, @"BorderPixels");
        }

        *v20 = _Block_copy(a7);
        v19 = *(a1 + 20);
      }

      if (v19 == 2)
      {
        v18[1] = a4;
        v18[3] = _Block_copy(a8);
      }

      FigSimpleMutexLock();
      CFArrayAppendValue(*(a1 + 48), v18);
      FigSimpleMutexUnlock();
      dispatch_group_enter(*(a1 + 56));
      v21 = *(a1 + 24);
      v22 = *(CMBaseObjectGetVTable() + 16);
      if (*v22 < 2uLL || (v23 = v22[7]) == 0 || (result = v23(v21, v18, a3, a2, a4, a5, a6), result))
      {
        v25 = *(a1 + 20);

        return vtDeghostingSessionEmitCommon(a1 + 40, v25, v18);
      }
    }

    else
    {
      vtDeghostingSessionProcessCommon2_cold_1(&v27);
      return v27;
    }
  }

  else
  {
    vtDeghostingSessionProcessCommon2_cold_2(&v28);
    return v28;
  }

  return result;
}

uint64_t VTDeghostingSessionMitigateGhosts2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  if (!a1)
  {
    VTDeghostingSessionMitigateGhosts2_cold_6(&v16);
    return v16;
  }

  v14 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&_MergedGlobals_2, RegisterVTDeghostingSession);
  if (v14 != _MergedGlobals_18)
  {
    VTDeghostingSessionMitigateGhosts2_cold_1(&v16);
    return v16;
  }

  if (*(a1 + 16))
  {
    VTDeghostingSessionMitigateGhosts2_cold_2(&v16);
    return v16;
  }

  if (*(a1 + 20) != 2)
  {
    VTDeghostingSessionMitigateGhosts2_cold_3(&v16);
    return v16;
  }

  if (!a4)
  {
    VTDeghostingSessionMitigateGhosts2_cold_5(&v16);
    return v16;
  }

  if (!a7)
  {
    VTDeghostingSessionMitigateGhosts2_cold_4(&v16);
    return v16;
  }

  return vtDeghostingSessionProcessCommon2(a1, a2, a3, a4, a5, a6, 0, a7);
}

CFArrayRef VTCreateArrayRepresentationOfHomographyMatrix(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v14[0] = a1;
  v14[1] = a2;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14[2] = a3;
  *values = 0u;
  v4 = *MEMORY[0x1E695E480];
  v5 = values;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      valuePtr = *(&v14[i] & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
      v5[i] = CFNumberCreate(v4, kCFNumberFloatType, &valuePtr);
    }

    ++v3;
    v5 += 3;
  }

  while (v3 != 3);
  v7 = values;
  v8 = CFArrayCreate(v4, values, 9, MEMORY[0x1E695E9C0]);
  for (j = 0; j != 3; ++j)
  {
    for (k = 0; k != 3; ++k)
    {
      v11 = v7[k];
      if (v11)
      {
        CFRelease(v11);
      }
    }

    v7 += 3;
  }

  return v8;
}

double VTCreateHomographyMatrixWithArrayRepresentation(const __CFArray *a1)
{
  memset(v8, 0, sizeof(v8));
  if (!a1)
  {
    return 0.0;
  }

  if (CFArrayGetCount(a1) > 8)
  {
    Count = 9;
  }

  else
  {
    Count = CFArrayGetCount(a1);
    result = 0.0;
    if (Count < 1)
    {
      return result;
    }
  }

  for (i = 0; i != Count; ++i)
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr);
    if (i / 3uLL >= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = i / 3uLL;
    }

    *(&v8[i % 3] | (4 * v6)) = valuePtr;
  }

  return *v8;
}

uint64_t VTDeghostingProcessorSessionEmitStatistics(uint64_t a1, const void **a2)
{
  if (a1)
  {

    return vtDeghostingSessionEmitCommon(a1, 1, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    VTDeghostingProcessorSessionEmitStatistics_cold_1(&v5);
    return v5;
  }
}

uint64_t vtDeghostingSessionEmitCommon(uint64_t a1, int a2, const void **a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 8);
  v13.length = CFArrayGetCount(v6);
  v13.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v13, a3);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 8), FirstIndexOfValue);
    FigSimpleMutexUnlock();
    if (a2 == 2)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = a3 + 3;
      (*(a3[3] + 2))();
    }

    else
    {
      if (a2 != 1)
      {
LABEL_8:
        v11 = CFGetAllocator(*(a1 + 8));
        CFAllocatorDeallocate(v11, a3);
        dispatch_group_leave(*(a1 + 16));
        return 0;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = a3 + 2;
      (*(a3[2] + 2))();
    }

    objc_autoreleasePoolPop(v8);
    _Block_release(*v9);
    goto LABEL_8;
  }

  FigSimpleMutexUnlock();
  v10 = 4294954394;
  FigSignalErrorAtGM();
  return v10;
}

uint64_t VTDeghostingProcessorSessionEmitRepair(uint64_t a1, const void **a2)
{
  if (a1)
  {

    return vtDeghostingSessionEmitCommon(a1, 2, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    VTDeghostingProcessorSessionEmitRepair_cold_1(&v5);
    return v5;
  }
}

uint64_t RegisterVTDeghostingProcessorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t VTDeghostingProcessorGetTypeID()
{
  MEMORY[0x193AE3010](&VTDeghostingProcessorGetClassID_sRegisterVTDeghostingProcessorTypeOnce, RegisterVTDeghostingProcessorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t RegisterVTDeghostingFrameBuffer()
{
  result = _CFRuntimeRegisterClass();
  sVTDeghostingFrameBufferID = result;
  return result;
}

uint64_t VTDeghostingSessionCopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  cf = 0;
  v12[0] = 0;
  v12[1] = 0;
  if (!a1)
  {
    VTDeghostingSessionCopySupportedPropertyDictionary_cold_7(&v11);
    goto LABEL_18;
  }

  v4 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&_MergedGlobals_2, RegisterVTDeghostingSession);
  if (v4 != _MergedGlobals_18)
  {
    VTDeghostingSessionCopySupportedPropertyDictionary_cold_1(&v11);
    goto LABEL_18;
  }

  if (*(a1 + 16))
  {
    VTDeghostingSessionCopySupportedPropertyDictionary_cold_2(&v11);
    goto LABEL_18;
  }

  if (!a2)
  {
    VTDeghostingSessionCopySupportedPropertyDictionary_cold_6(&v11);
    goto LABEL_18;
  }

  MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce_4, vtDeghostingSessionCreateSupportedPropertyDictionary);
  if (!sVTDeghostingSessionSupportedPropertyDictionary)
  {
    VTDeghostingSessionCopySupportedPropertyDictionary_cold_5(&v11);
    goto LABEL_18;
  }

  v5 = *(a1 + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6 || v6(v5, &cf))
  {
    VTDeghostingSessionCopySupportedPropertyDictionary_cold_4(&v11);
LABEL_18:
    v8 = v11;
    goto LABEL_14;
  }

  v7 = sVTDeghostingSessionSupportedPropertyDictionary;
  if (sVTDeghostingSessionSupportedPropertyDictionary)
  {
    v12[0] = sVTDeghostingSessionSupportedPropertyDictionary;
    v7 = 1;
  }

  if (cf)
  {
    v12[v7] = cf;
  }

  v8 = FigCFCreateCombinedDictionary();
  if (v8)
  {
    VTDeghostingSessionCopySupportedPropertyDictionary_cold_3();
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t VTDeghostingSessionSetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    VTDeghostingSessionSetProperty_cold_5(&v10);
    return v10;
  }

  v6 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&_MergedGlobals_2, RegisterVTDeghostingSession);
  if (v6 != _MergedGlobals_18)
  {
    VTDeghostingSessionSetProperty_cold_1(&v10);
    return v10;
  }

  if (*(a1 + 16))
  {
    VTDeghostingSessionSetProperty_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    VTDeghostingSessionSetProperty_cold_4(&v10);
    return v10;
  }

  MEMORY[0x193AE3010](&sCreateSupportedPropertyDictionaryOnce_4, vtDeghostingSessionCreateSupportedPropertyDictionary);
  if (!sVTDeghostingSessionSupportedPropertyDictionary)
  {
    VTDeghostingSessionSetProperty_cold_3(&v10);
    return v10;
  }

  if (CFDictionaryContainsKey(sVTDeghostingSessionSupportedPropertyDictionary, a2))
  {
    return 4294954396;
  }

  v8 = *(a1 + 24);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v9)
  {
    v9(v8, a2, a3);
  }

  return 0;
}

uint64_t VTDeghostingSessionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    VTDeghostingSessionCopyProperty_cold_5(&v12);
    return v12;
  }

  v8 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&_MergedGlobals_2, RegisterVTDeghostingSession);
  if (v8 != _MergedGlobals_18)
  {
    VTDeghostingSessionCopyProperty_cold_1(&v12);
    return v12;
  }

  if (*(a1 + 16))
  {
    VTDeghostingSessionCopyProperty_cold_2(&v12);
    return v12;
  }

  if (!a2)
  {
    VTDeghostingSessionCopyProperty_cold_4(&v12);
    return v12;
  }

  if (!a4)
  {
    VTDeghostingSessionCopyProperty_cold_3(&v12);
    return v12;
  }

  v9 = *(a1 + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4);
}

uint64_t VTDeghostingSessionSetProperties(_BYTE *a1, const void *a2)
{
  context = a1;
  if (!a1)
  {
    VTDeghostingSessionSetProperties_cold_5(&v9);
    return v9;
  }

  v4 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&_MergedGlobals_2, RegisterVTDeghostingSession);
  if (v4 != _MergedGlobals_18)
  {
    VTDeghostingSessionSetProperties_cold_1(&v9);
    return v9;
  }

  if (a1[16])
  {
    VTDeghostingSessionSetProperties_cold_2(&v9);
    return v9;
  }

  if (!a2)
  {
    VTDeghostingSessionSetProperties_cold_4(&v9);
    return v9;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != CFDictionaryGetTypeID())
  {
    VTDeghostingSessionSetProperties_cold_3(&v9);
    return v9;
  }

  v8 = 0;
  CFDictionaryApplyFunction(a2, vtDeghostingSessionSetOneProperty, &context);
  return v8;
}

uint64_t VTDeghostingSessionCopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    VTDeghostingSessionCopySerializableProperties_cold_4(&v10);
    return v10;
  }

  v6 = CFGetTypeID(a1);
  MEMORY[0x193AE3010](&_MergedGlobals_2, RegisterVTDeghostingSession);
  if (v6 != _MergedGlobals_18)
  {
    VTDeghostingSessionCopySerializableProperties_cold_1(&v10);
    return v10;
  }

  if (*(a1 + 16))
  {
    VTDeghostingSessionCopySerializableProperties_cold_2(&v10);
    return v10;
  }

  if (!a3)
  {
    VTDeghostingSessionCopySerializableProperties_cold_3(&v10);
    return v10;
  }

  v7 = *(a1 + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8 || (result = v8(v7, a2, a3), result == -12782))
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

double vtDeghostingSessionInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void vtDeghostingSessionCreateSupportedPropertyDictionary()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  sVTDeghostingSessionSupportedPropertyDictionary = CFDictionaryCreateMutable(v0, 0, v1, v2);
  CFDictionarySetValue(Mutable, @"ReadWriteStatus", @"ReadOnly");
  CFDictionarySetValue(v4, @"ReadWriteStatus", @"ReadWrite");
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t vtDeghostingSessionSetOneProperty(const void *a1, uint64_t a2, uint64_t a3)
{
  result = VTDeghostingSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t vtDeghostingFrameBufferInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void vtDeghostingFrameBufferFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

void OUTLINED_FUNCTION_1_25()
{

  JUMPOUT(0x193AE3010);
}

void OUTLINED_FUNCTION_2_24()
{

  JUMPOUT(0x193AE3010);
}

uint64_t DecodeProgressiveScan(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4408);
  v5 = *(a1 + 4409);
  v6 = *(a1 + 4410);
  v7 = *(a1 + 4411);
  v8 = a1 + 4200;
  v64 = *(a1 + 4200);
  v65 = *(a1 + 4216);
  v62 = *(a1 + 4224);
  v63 = *(a1 + 4240);
  if (v4)
  {
    v9 = v6 == 0;
    v10 = DecodeACRefine;
    v11 = DecodeACFirst;
  }

  else
  {
    if (v5)
    {
      return 101;
    }

    v9 = v6 == 0;
    v10 = DecodeDCRefine;
    v11 = DecodeDCFirst;
  }

  if (v9)
  {
    v10 = v11;
  }

  v61 = v10;
  if (v6 && v6 - 1 != v7)
  {
    return 102;
  }

  *(a1 + 4356) = 0;
  v13 = *(a1 + 4392);
  if (v13 == 1)
  {
    v14 = *(a1 + 4396);
    v15 = a1 + 4 * v14;
    v16 = *(v15 + 4148);
    v17 = v16 & 0xF;
    v49 = (*(a1 + 4388) * (v16 & 0xF) - *(v15 + 4172));
    if (v49 >= 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = v16 >> 4;
      v21 = *(&v64 + v14);
      v22 = (v20 * *(a1 + 4384) - *(a1 + 4 * v14 + 4160));
      v53 = a1 + 4344;
      v55 = v21;
      v59 = v16 << 16;
      v57 = (v16 << 16 == 1114112) << 7;
      v23 = v14;
      while (1)
      {
        v51 = v19;
        if (v22 >= 1)
        {
          break;
        }

LABEL_24:
        v19 = v51 + 1;
        v18 = (v51 + 1);
        if (v49 <= v18)
        {
          goto LABEL_51;
        }
      }

      v24 = 0;
      v25 = 0;
      while (1)
      {
        if (*(a2 + 48))
        {
          v26 = *(a2 + 52);
          v27 = __OFSUB__(v26--, 1);
          *(a2 + 52) = v26;
          if ((v26 < 0) ^ v27 | (v26 == 0))
          {
            v28 = -*(a2 + 12) & 7;
            if (v28)
            {
              popbitsa(a2, v28);
            }

              ;
            }

            *(v53 + 8) = 0;
            *v53 = 0;
            *(a2 + 52) = *(a2 + 48);
          }
        }

        if (v59 != 1114112)
        {
          v21 = v55 + 2 * ((v24 % v20 + (v18 % v17 + ((v18 / v17) * *(a1 + 4384) + (v24 / v20)) * v17) * v20) << 6);
        }

        result = v61(a1, a2, v23, v21);
        if (result)
        {
          return result;
        }

        v21 += v57;
        v24 = ++v25;
        if (v22 <= v25)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_51:
    v46 = (0x200000 - (*(a2 + 12) << 16)) >> 19;
    if (v46 <= 0)
    {
      v47 = *a2;
    }

    else
    {
      v47 = *a2;
      if (*(a2 + 20) == 255 && !*(v47 - 1) && *(v47 - 2) == 255)
      {
        ++v46;
      }
    }

    result = 0;
    *a2 = &v47[-v46];
    *(a2 + 12) = 32;
    return result;
  }

  v56 = *(a1 + 4388);
  if (v56 < 1)
  {
    goto LABEL_51;
  }

  v29 = 0;
  v30 = *(a1 + 4384);
  v48 = a1 + 4344;
  v31 = v13;
  v32 = a1 + 4396;
  v33 = a1 + 4136;
  v50 = v30;
  v52 = a1 + 4136;
  v54 = a1 + 4396;
  while (1)
  {
    v58 = v29;
    if (v30 >= 1)
    {
      break;
    }

LABEL_50:
    v29 = v58 + 1;
    if (v56 <= (v58 + 1))
    {
      goto LABEL_51;
    }
  }

  v34 = 0;
  while (1)
  {
    v60 = v34;
    if (*(a2 + 48))
    {
      v35 = *(a2 + 52);
      v27 = __OFSUB__(v35--, 1);
      *(a2 + 52) = v35;
      if ((v35 < 0) ^ v27 | (v35 == 0))
      {
        v36 = -*(a2 + 12) & 7;
        if (v36)
        {
          popbitsa(a2, v36);
        }

          ;
        }

        *(v48 + 8) = 0;
        *v48 = 0;
        *(a2 + 52) = *(a2 + 48);
      }
    }

    if (v31 >= 1)
    {
      break;
    }

LABEL_49:
    v34 = v60 + 1;
    v30 = v50;
    if (v50 <= (v60 + 1))
    {
      goto LABEL_50;
    }
  }

  v37 = 0;
  while (1)
  {
    v38 = *(v32 + 4 * v37);
    v39 = v38;
    v40 = *(v33 + 4 * v38);
    v41 = *(&v64 + v38);
    if (v40 >= 1)
    {
      break;
    }

LABEL_46:
    v45 = *(v8 + 8 * v39);
    if (v41 - v45 >= *(&v62 + v39))
    {
      *(&v64 + v39) = v45;
    }

    if (v31 <= ++v37)
    {
      goto LABEL_49;
    }
  }

  v42 = v31;
  v43 = 0;
  v44 = v38;
  while (1)
  {
    result = v61(a1, a2, v44, v41);
    if (result)
    {
      break;
    }

    v41 += 128;
    if (v40 <= ++v43)
    {
      *(&v64 + v39) = v41;
      v31 = v42;
      v33 = v52;
      v32 = v54;
      goto LABEL_46;
    }
  }

  *(&v64 + v39) = v41;
  return result;
}

uint64_t DecodeDCFirst(uint64_t a1, unsigned __int8 **a2, int a3, _WORD *a4)
{
  v4 = *(a1 + 8 * a3 + 4320);
  v5 = *(v4 + 1);
  v6 = *v4;
  if (*v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return -1;
  }

  v10 = *(a1 + 4411);
  v12 = *(a2 + 2);
  v11 = *(a2 + 3);
  v13 = *a2;
  v14 = *(a2 + 5);
  v15 = *(v4 + 2);
  v16 = v4[2];
  v17 = v4[1];
  v18 = v11 - 16;
  if (v11 < 0x10)
  {
    v18 = *(a2 + 3);
  }

  else
  {
    v19 = a2[8];
    if ((v13 + 1) >= v19)
    {
      return -1;
    }

    v20 = *v13;
    v21 = v13[1];
    if (v14 == v20 && v21 == 0)
    {
      if ((v13 + 2) >= v19)
      {
        return -1;
      }

      v21 = v13[2];
      v13 += 3;
    }

    else
    {
      v13 += 2;
    }

    if (v14 == v21)
    {
      if (v13 >= v19)
      {
        return -1;
      }

      if (!*v13)
      {
        ++v13;
      }
    }

    v12 = (v12 << 16) | (v20 << 8) | v21;
  }

  v23 = *(v5 + 2 * ((v12 << v18) >> -v6));
  if ((v23 & 0xFC00) == 0x8000)
  {
    v18 += v16;
    v24 = v18 - 16;
    if (v18 >= 0x10)
    {
      v25 = a2[8];
      if ((v13 + 1) >= v25)
      {
        return -1;
      }

      v26 = *v13;
      v27 = v13 + 2;
      v28 = v13[1];
      if (__PAIR64__(v28, v26) == v14)
      {
        if (v27 >= v25)
        {
          return -1;
        }

        v27 = v13 + 3;
        v28 = v13[2];
      }

      if (v14 == v28)
      {
        if (v27 >= v25)
        {
          return -1;
        }

        if (!*v27)
        {
          ++v27;
        }
      }

      v12 = (v12 << 16) | (v26 << 8) | v28;
      v18 = v24;
      v13 = v27;
    }

    v23 = *(v15 + 2 * ((v12 << v18) >> -v17));
    if ((v23 & 0xFC00) == 0x8000)
    {
      return -1;
    }
  }

  v29 = a3;
  v30 = a1 + 4344;
  v31 = v23;
  if (v23 < 0)
  {
    v32 = ((v23 >> 11) & 0xF) + v18;
    v42 = (*(v30 + 4 * a3) + v31);
LABEL_52:
    *(v30 + 4 * v29) = v42;
LABEL_54:
    v8 = 0;
    *a4 = v42 << v10;
    *(a2 + 2) = v12;
    *(a2 + 3) = v32;
    *a2 = v13;
    return v8;
  }

  v32 = v18 + (v23 >> 8);
  v33 = v31 & 0xF;
  if ((v31 & 0xF) == 0)
  {
    v42 = *(v30 + 4 * a3);
    goto LABEL_54;
  }

  v34 = v32 - 16;
  if (v32 < 0x10)
  {
LABEL_47:
    v39 = (v12 << v32) >> -v33;
    v32 += v33;
    v40 = (1 << (v33 - 1));
    if (v40 <= v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = 2 * v40 - 1;
    }

    v42 = v39 - v41 + *(v30 + 4 * v29);
    goto LABEL_52;
  }

  v35 = a2[8];
  if ((v13 + 1) < v35)
  {
    v36 = *v13;
    v37 = v13 + 2;
    v38 = v13[1];
    if (__PAIR64__(v38, v36) == v14)
    {
      if (v37 >= v35)
      {
        return -1;
      }

      v37 = v13 + 3;
      v38 = v13[2];
    }

    if (v14 != v38)
    {
LABEL_46:
      v12 = (v12 << 16) | (v36 << 8) | v38;
      v32 = v34;
      v13 = v37;
      goto LABEL_47;
    }

    if (v37 < v35)
    {
      if (!*v37)
      {
        ++v37;
      }

      goto LABEL_46;
    }
  }

  return -1;
}

uint64_t DecodeDCRefine(uint64_t a1, unsigned __int8 **a2, uint64_t a3, _WORD *a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = *a2;
  v7 = v5 - 16;
  if (v5 >= 0x10)
  {
    v8 = a2[8];
    if ((v6 + 1) < v8)
    {
      v9 = *(a2 + 5);
      v10 = *v6;
      v11 = v6[1];
      if (v9 == v10 && v11 == 0)
      {
        if ((v6 + 2) >= v8)
        {
          return -1;
        }

        v11 = v6[2];
        v6 += 3;
      }

      else
      {
        v6 += 2;
      }

      if (v9 != v11)
      {
LABEL_15:
        v4 = (v4 << 16) | (v10 << 8) | v11;
        goto LABEL_16;
      }

      if (v6 < v8)
      {
        if (!*v6)
        {
          ++v6;
        }

        goto LABEL_15;
      }
    }

    return -1;
  }

  v7 = *(a2 + 3);
LABEL_16:
  v13 = v4 << v7;
  v14 = v7 + 1;
  if (v13 < 0)
  {
    *a4 |= 1 << *(a1 + 4411);
  }

  v15 = 0;
  *(a2 + 2) = v4;
  *(a2 + 3) = v14;
  *a2 = v6;
  return v15;
}

uint64_t DecodeACFirst(uint64_t a1, unsigned __int8 **a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 4356);
  if (v4 >= 1)
  {
    LOWORD(v4) = v4 - 1;
LABEL_3:
    v5 = 0;
    *(a1 + 4356) = v4;
    return v5;
  }

  v6 = *(a1 + 8 * a3 + 4296);
  v7 = *(v6 + 8);
  if (*v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return -1;
  }

  v10 = *(a1 + 4409);
  v12 = *(a2 + 2);
  v11 = *(a2 + 3);
  v13 = *a2;
  v14 = *(a1 + 4408);
  if (v14 > v10)
  {
LABEL_12:
    *(a2 + 2) = v12;
    *(a2 + 3) = v11;
    *a2 = v13;
    goto LABEL_3;
  }

  v15 = *(a1 + 4411);
  v16 = *(a2 + 5);
  v17 = *(v6 + 16);
  v18 = *(v6 + 4);
  v19 = 32 - *v6;
  v20 = 32 - *(v6 + 2);
  while (1)
  {
    v21 = v11 - 16;
    if (v11 >= 0x10)
    {
      v22 = a2[8];
      if ((v13 + 1) >= v22)
      {
        return -1;
      }

      v23 = *v13;
      v24 = v13[1];
      if (v16 == v23 && v24 == 0)
      {
        if ((v13 + 2) >= v22)
        {
          return -1;
        }

        v24 = v13[2];
        v13 += 3;
      }

      else
      {
        v13 += 2;
      }

      if (v16 == v24)
      {
        if (v13 >= v22)
        {
          return -1;
        }

        if (!*v13)
        {
          ++v13;
        }
      }

      v12 = (v12 << 16) | (v23 << 8) | v24;
      v11 = v21;
    }

    LOWORD(v26) = *(v7 + 2 * ((v12 << v11) >> v19));
    if ((v26 & 0xFC00) == 0x8000)
    {
      v11 += v18;
      v27 = v11 - 16;
      if (v11 >= 0x10)
      {
        v28 = a2[8];
        if ((v13 + 1) >= v28)
        {
          return -1;
        }

        v29 = *v13;
        v30 = v13 + 2;
        v31 = v13[1];
        if (__PAIR64__(v31, v29) == v16)
        {
          if (v30 >= v28)
          {
            return -1;
          }

          v30 = v13 + 3;
          v31 = v13[2];
        }

        if (v16 == v31)
        {
          if (v30 >= v28)
          {
            return -1;
          }

          if (!*v30)
          {
            ++v30;
          }
        }

        v12 = (v12 << 16) | (v29 << 8) | v31;
        v11 = v27;
        v13 = v30;
      }

      LOWORD(v26) = *(v17 + 2 * ((v12 << v11) >> v20));
      if ((v26 & 0xFC00) == 0x8000)
      {
        return -3;
      }
    }

    v32 = v26;
    if ((v26 & 0x8000) == 0)
    {
      break;
    }

    v14 += (v26 >> 8) & 7;
    if ((v14 & 0xFFC0) != 0)
    {
      return -1;
    }

    v11 += (v26 >> 11) & 0xF;
    v26 = v26;
LABEL_59:
    *(a4 + 2 * (v14 & 0x3F)) = v26 << v15;
LABEL_62:
    v14 = (v14 + 1);
    if (v14 > v10)
    {
      goto LABEL_12;
    }
  }

  v11 += v26 >> 8;
  v33 = v26;
  v34 = v26 & 0xF;
  if ((v32 & 0xF) != 0)
  {
    v14 += v33 >> 4;
    if ((v14 & 0xFFC0) != 0)
    {
      return -5;
    }

    v35 = v11 - 16;
    if (v11 >= 0x10)
    {
      v36 = a2[8];
      if ((v13 + 1) >= v36)
      {
        return -1;
      }

      v37 = *v13;
      v38 = v13 + 2;
      v39 = v13[1];
      if (__PAIR64__(v39, v37) == v16)
      {
        if (v38 >= v36)
        {
          return -1;
        }

        v38 = v13 + 3;
        v39 = v13[2];
      }

      if (v16 == v39)
      {
        if (v38 >= v36)
        {
          return -1;
        }

        if (!*v38)
        {
          ++v38;
        }
      }

      v12 = (v12 << 16) | (v37 << 8) | v39;
      v11 = v35;
      v13 = v38;
    }

    v40 = (v12 << v11) >> -v34;
    v11 += v34;
    v41 = 1 << (v34 - 1);
    if (v40 >= v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = 2 * v41 - 1;
    }

    v26 = v40 - v42;
    goto LABEL_59;
  }

  if (v33 == 240)
  {
    LOWORD(v14) = v14 + 15;
    goto LABEL_62;
  }

  v43 = v33 >> 4;
  v4 = 1 << (v33 >> 4);
  if (!v33)
  {
LABEL_78:
    LOWORD(v4) = v4 - 1;
    goto LABEL_12;
  }

  if (v11 < 0x10)
  {
LABEL_77:
    v48 = (v12 << v11) >> -v43;
    v11 += v43;
    LOWORD(v4) = v4 + v48;
    goto LABEL_78;
  }

  v44 = a2[8];
  if ((v13 + 1) >= v44)
  {
    return -1;
  }

  v45 = *v13;
  v46 = v13 + 2;
  v47 = v13[1];
  if (__PAIR64__(v47, v45) != v16)
  {
    goto LABEL_72;
  }

  if (v46 >= v44)
  {
    return -1;
  }

  v46 = v13 + 3;
  v47 = v13[2];
LABEL_72:
  if (v16 != v47)
  {
LABEL_76:
    v12 = (v12 << 16) | (v45 << 8) | v47;
    v11 -= 16;
    v13 = v46;
    goto LABEL_77;
  }

  if (v46 < v44)
  {
    if (!*v46)
    {
      ++v46;
    }

    goto LABEL_76;
  }

  return -1;
}

uint64_t DecodeACRefine(uint64_t a1, unsigned __int8 **a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 8 * a3 + 4296);
  v5 = *(v4 + 1);
  v6 = *v4;
  if (*v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = *(a1 + 4409);
    v10 = *(a1 + 4411);
    v11 = 1 << v10;
    v12 = *(a2 + 5);
    v13 = *a2;
    v14 = *(a2 + 2);
    v15 = *(a2 + 3);
    LODWORD(v16) = *(a1 + 4408);
    v17 = *(a1 + 4356);
    if (v17 || v16 > v9)
    {
LABEL_9:
      LOWORD(v18) = v17;
      if (v17 < 1)
      {
LABEL_34:
        v8 = 0;
        *(a1 + 4356) = v18;
        *(a2 + 2) = v14;
        *(a2 + 3) = v15;
        *a2 = v13;
        return v8;
      }

LABEL_10:
      if (v9 >= v16)
      {
        v19 = 0xFFFF << v10;
        do
        {
          v16 = v16;
          v20 = *(a4 + 2 * v16);
          if (*(a4 + 2 * v16))
          {
            if (v15 >= 0x10)
            {
              v21 = a2[8];
              if ((v13 + 1) >= v21)
              {
                return -1;
              }

              v22 = *v13;
              v23 = v13[1];
              if (v12 == v22 && v23 == 0)
              {
                if ((v13 + 2) >= v21)
                {
                  return -1;
                }

                v23 = v13[2];
                v13 += 3;
              }

              else
              {
                v13 += 2;
              }

              if (v12 == v23)
              {
                if (v13 >= v21)
                {
                  return -1;
                }

                if (!*v13)
                {
                  ++v13;
                }
              }

              v14 = (v14 << 16) | (v22 << 8) | v23;
              v15 -= 16;
            }

            v25 = v14 << v15++;
            if (v25 < 0)
            {
              if (v20 >= 0)
              {
                v26 = v11;
              }

              else
              {
                v26 = v19;
              }

              *(a4 + 2 * v16) = v20 + v26;
            }
          }

          LOWORD(v16) = v16 + 1;
        }

        while (v9 >= v16);
      }

      LOWORD(v18) = v18 - 1;
      goto LABEL_34;
    }

    LOWORD(v28) = 0;
    v29 = *(v4 + 2);
    v30 = v4[2];
    v31 = v4[1];
    while (1)
    {
      v32 = v15 - 16;
      if (v15 >= 0x10)
      {
        v33 = a2[8];
        if ((v13 + 1) >= v33)
        {
          return -1;
        }

        v34 = *v13;
        v35 = v13[1];
        if (v12 == v34 && v35 == 0)
        {
          if ((v13 + 2) >= v33)
          {
            return -1;
          }

          v35 = v13[2];
          v13 += 3;
        }

        else
        {
          v13 += 2;
        }

        if (v12 == v35)
        {
          if (v13 >= v33)
          {
            return -1;
          }

          if (!*v13)
          {
            ++v13;
          }
        }

        v14 = (v14 << 16) | (v34 << 8) | v35;
        v15 = v32;
      }

      v37 = *(v5 + 2 * ((v14 << v15) >> (32 - v6)));
      if (v29 && (v37 & 0xFC00) == 0x8000)
      {
        v15 += v30;
        v38 = v15 - 16;
        if (v15 >= 0x10)
        {
          v39 = a2[8];
          if ((v13 + 1) >= v39)
          {
            return -1;
          }

          v40 = *v13;
          v41 = v13 + 2;
          v42 = v13[1];
          if (__PAIR64__(v42, v40) == v12)
          {
            if (v41 >= v39)
            {
              return -1;
            }

            v41 = v13 + 3;
            v42 = v13[2];
          }

          if (v12 == v42)
          {
            if (v41 >= v39)
            {
              return -1;
            }

            if (!*v41)
            {
              ++v41;
            }
          }

          v14 = (v14 << 16) | (v40 << 8) | v42;
          v15 = v38;
          v13 = v41;
        }

        v37 = *(v29 + 2 * ((v14 << v15) >> (32 - v31)));
        if ((v37 & 0xFC00) == 0x8000)
        {
          return -4;
        }
      }

      v43 = v37;
      if (v37 < 0)
      {
        LOBYTE(v18) = 0;
        v15 += (v43 >> 11) & 0xF;
        v44 = (v43 >> 8) & 7;
        v28 = v43 << v10;
        goto LABEL_82;
      }

      v44 = v37 >> 4;
      v15 += v37 >> 8;
      v45 = v37 & 0xF;
      if ((v43 & 0xF) == 0)
      {
        break;
      }

      if (v45 != 1)
      {
        return -1;
      }

      v46 = v15 - 16;
      if (v15 >= 0x10)
      {
        v47 = a2[8];
        if ((v13 + 1) >= v47)
        {
          return -1;
        }

        v48 = *v13;
        v49 = v13 + 2;
        v50 = v13[1];
        if (__PAIR64__(v50, v48) == v12)
        {
          if (v49 >= v47)
          {
            return -1;
          }

          v49 = v13 + 3;
          v50 = v13[2];
        }

        if (v12 == v50)
        {
          if (v49 >= v47)
          {
            return -1;
          }

          if (!*v49)
          {
            ++v49;
          }
        }

        v14 = (v14 << 16) | (v48 << 8) | v50;
        v15 = v46;
        v13 = v49;
      }

      LOBYTE(v18) = 0;
      v51 = v14 << v15++;
      if (v51 >= 0)
      {
        LOWORD(v28) = -1 << v10;
      }

      else
      {
        LOWORD(v28) = 1 << v10;
      }

      do
      {
LABEL_82:
        v52 = *(a4 + 2 * v16);
        if (*(a4 + 2 * v16))
        {
          v53 = v15 - 16;
          if (v15 >= 0x10)
          {
            v54 = a2[8];
            if ((v13 + 1) >= v54)
            {
              return -1;
            }

            v55 = *v13;
            v56 = v13[1];
            if (v12 == v55 && v56 == 0)
            {
              if ((v13 + 2) >= v54)
              {
                return -1;
              }

              v56 = v13[2];
              v13 += 3;
            }

            else
            {
              v13 += 2;
            }

            if (v12 == v56)
            {
              if (v13 >= v54)
              {
                return -1;
              }

              if (!*v13)
              {
                ++v13;
              }
            }

            v14 = (v14 << 16) | (v55 << 8) | v56;
            v15 = v53;
          }

          v58 = v14 << v15++;
          if (v58 < 0)
          {
            if (v52 >= 0)
            {
              v59 = 1 << v10;
            }

            else
            {
              v59 = 0xFFFF << v10;
            }

            *(a4 + 2 * v16) = v52 + v59;
          }
        }

        else
        {
          LOWORD(v44) = v44 - 1;
          if ((v44 & 0x8000) != 0)
          {
            break;
          }
        }

        LODWORD(v16) = v16 + 1;
      }

      while (v9 >= v16);
      if ((v18 & 1) == 0)
      {
        if (v9 < v16)
        {
          return -1;
        }

        *(a4 + 2 * v16) = v28;
      }

      LODWORD(v16) = v16 + 1;
      if (v9 < v16)
      {
        goto LABEL_9;
      }
    }

    LOWORD(v18) = 1;
    if (v44 == 15)
    {
      goto LABEL_82;
    }

    if (!v44)
    {
      goto LABEL_10;
    }

    if (v15 < 0x10)
    {
LABEL_122:
      v64 = (v14 << v15) >> -v44;
      v15 += v44;
      v18 = (1 << v44) + v64;
      goto LABEL_10;
    }

    v60 = a2[8];
    if ((v13 + 1) < v60)
    {
      v61 = *v13;
      v62 = v13 + 2;
      v63 = v13[1];
      if (__PAIR64__(v63, v61) == v12)
      {
        if (v62 >= v60)
        {
          return -1;
        }

        v62 = v13 + 3;
        v63 = v13[2];
      }

      if (v12 != v63)
      {
LABEL_121:
        v14 = (v14 << 16) | (v61 << 8) | v63;
        v15 -= 16;
        v13 = v62;
        goto LABEL_122;
      }

      if (v62 < v60)
      {
        if (!*v62)
        {
          ++v62;
        }

        goto LABEL_121;
      }
    }
  }

  return -1;
}

uint64_t ExtractBufferedBlocks(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(a1 + 4132);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a1 + 4248;
    v7 = a1 + 4136;
    do
    {
      v8 = *(v6 + 8 * v5);
      if (*(v7 + 4 * v5) >= 1)
      {
        v9 = 0;
        v10 = *(a1 + 4360 + 8 * v5);
        v11 = *(v10 + 128);
        while (2)
        {
          for (i = 0; i != 64; ++i)
          {
            v13 = tables[i];
            v14 = ((1 << (v11 - 1)) + *(v10 + v13) * *(v8 + 2 * i)) >> v11;
            if (v14 != v14)
            {
              return -6;
            }

            *(a3 + v13) = v14;
          }

          a3 += 128;
          v8 += 128;
          *a4++ = 8;
          if (*(v7 + 4 * v5) > ++v9)
          {
            continue;
          }

          break;
        }

        v4 = *(a1 + 4132);
      }

      *(v6 + 8 * v5++) = v8;
    }

    while (v4 > v5);
  }

  v15 = 0;
  *a4 = 0;
  return v15;
}

uint64_t vtdcrb_Register()
{
  result = _CFRuntimeRegisterClass();
  sVTDecompressionSessionXPCRemoteBridgeID = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteBridge_Create(uint64_t a1, uint64_t a2, void *a3, const __CFDictionary *a4, const __CFDictionary *a5, _OWORD *a6, uint64_t a7, uint64_t *a8)
{
  MEMORY[0x193AE3010](&VTDecompressionSessionRemoteBridgeGetTypeID_sRegisterVTDecompressionSessionRemoteOnce, vtdcrb_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTDecompressionSessionRemoteBridge_Create_cold_2(&v24);
    return v24;
  }

  v17 = Instance;
  ShouldUseXPCRemoteDecompressionSession = VTVideoCodecService_ShouldUseXPCRemoteDecompressionSession();
  *(v17 + 32) = ShouldUseXPCRemoteDecompressionSession;
  if (!ShouldUseXPCRemoteDecompressionSession)
  {
    v19 = VTDecompressionSessionRemote_Create(a1, a2, a3, a4, a5, a6, (v17 + 16));
    if (!v19)
    {
      if (*(v17 + 16))
      {
        goto LABEL_8;
      }

      v22 = 198;
      goto LABEL_14;
    }

LABEL_11:
    v20 = v19;
    goto LABEL_17;
  }

  v19 = VTDecompressionSessionRemoteXPC_Create(a1, a2, a3, a4, a5, a6, a7, (v17 + 24));
  if (v19)
  {
    goto LABEL_11;
  }

  if (!*(v17 + 24))
  {
    v22 = 189;
LABEL_14:
    if (VTDecompressionSessionRemoteBridge_Create_cold_1(v22, &v23))
    {
      return 0;
    }

    v20 = v23;
LABEL_17:
    CFRelease(v17);
    return v20;
  }

  FigStartForwardingMediaServicesProcessDeathNotification();
LABEL_8:
  v20 = 0;
  *a8 = v17;
  return v20;
}

uint64_t VTDecompressionSessionRemoteBridge_Invalidate(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_Invalidate(*(a1 + 24));
  }

  else
  {
    return VTDecompressionSessionRemote_Invalidate(*(a1 + 16));
  }
}

uint64_t VTDecompressionSessionRemoteBridge_CopySupportedPropertyDictionary(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary(*(a1 + 24));
  }

  else
  {
    return VTDecompressionSessionRemote_CopySupportedPropertyDictionary(*(a1 + 16));
  }
}

uint64_t VTDecompressionSessionRemoteBridge_CopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_CopySerializableProperties(*(a1 + 24), a2, a3);
  }

  else
  {
    return VTDecompressionSessionRemote_CopySerializableProperties(*(a1 + 16), a2, a3);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_CopyProperty(*(a1 + 24), a2, a3, a4);
  }

  else
  {
    return VTDecompressionSessionRemote_CopyProperty(*(a1 + 16), a2, a3, a4);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_SetProperty(*(a1 + 24), a2, a3);
  }

  else
  {
    return VTDecompressionSessionRemote_SetProperty(*(a1 + 16), a2, a3);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_SetProperties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_SetProperties();
  }

  else
  {
    return VTDecompressionSessionRemote_SetProperties(*(a1 + 16), a2);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_SetMultiImageCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_SetMultiImageCallback(*(a1 + 24), a2, a3);
  }

  else
  {
    return VTDecompressionSessionRemote_SetMultiImageCallback(*(a1 + 16), a2, a3);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_DecodeFrame(uint64_t a1, opaqueCMSampleBuffer *a2, unsigned int a3, const __CFDictionary *a4, uint64_t a5, _DWORD *a6)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_DecodeFrame(*(a1 + 24), a2, a3, a4, a5, a6);
  }

  else
  {
    return VTDecompressionSessionRemote_DecodeFrame(*(a1 + 16), a2, a3, a4, a5, a6);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler(uint64_t a1, opaqueCMSampleBuffer *a2, unsigned int a3, const __CFDictionary *a4, _DWORD *a5, unint64_t a6, unint64_t a7)
{
  if (a6 | a7)
  {
    if (*(a1 + 32))
    {
      v9 = *(a1 + 24);

      return VTDecompressionSessionRemoteXPC_DecodeFrameWithOutputHandler(v9, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      v11 = *(a1 + 16);

      return VTDecompressionSessionRemote_DecodeFrameWithOutputHandler(v11, a2, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    v13 = v7;
    v14 = v8;
    VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler_cold_1(&v12);
    return v12;
  }
}

uint64_t VTDecompressionSessionRemoteBridge_FinishDelayedFrames(uint64_t a1)
{
  if (*(a1 + 32))
  {
    VTDecompressionSessionRemoteXPC_FinishDelayedFrames(*(a1 + 24));
  }

  else
  {
    VTDecompressionSessionRemote_FinishDelayedFrames(*(a1 + 16));
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteBridge_PreferHighPriorityQueueForAllDecompression()
{
  result = VTVideoCodecService_ShouldUseXPCRemoteDecompressionSession();
  if (result)
  {

    return VTDecompressionSessionRemoteXPC_PreferHighPriorityQueueForAllDecompression();
  }

  return result;
}

uint64_t VTDecompressionSessionRemoteBridge_FlushPixelBufferPool(uint64_t a1)
{
  if (*(a1 + 32))
  {
    VTDecompressionSessionRemoteXPC_FlushPixelBufferPool(*(a1 + 24));
  }

  else
  {
    VTDecompressionSessionRemote_FlushPixelBufferPool(*(a1 + 16));
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteBridge_CanAcceptFormatDescription(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_CanAcceptFormatDescription();
  }

  else
  {
    return VTDecompressionSessionRemote_CanAcceptFormatDescription(*(a1 + 16), a2);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_WaitForAsynchronousFrames(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_WaitForAsynchronousFrames(*(a1 + 24));
  }

  else
  {
    return VTDecompressionSessionRemote_WaitForAsynchronousFrames(*(a1 + 16));
  }
}

uint64_t VTDecompressionSessionRemoteBridge_CopyBlackPixelBuffer(uint64_t a1, CFTypeRef *a2)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_CopyBlackPixelBuffer();
  }

  else
  {
    return VTDecompressionSessionRemote_CopyBlackPixelBuffer(*(a1 + 16), a2);
  }
}

void VTDecompressionSessionRemoteBridge_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(void *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(a2 + 32))
  {
    VTDecompressionSessionRemoteXPC_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(a1);
  }

  else
  {
    VTDecompressionSessionRemote_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(*(a2 + 16), a1);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, CMTime *a2, CMTime *a3)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(*(a1 + 24), a2, a3);
  }

  else
  {
    return VTDecompressionSessionRemote_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(*(a1 + 16), a2, a3);
  }
}

uint64_t VTTileDecompressionSessionRemoteBridge_Create(uint64_t a1, uint64_t a2, void *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  MEMORY[0x193AE3010](&VTDecompressionSessionRemoteBridgeGetTypeID_sRegisterVTDecompressionSessionRemoteOnce, vtdcrb_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTTileDecompressionSessionRemoteBridge_Create_cold_3(&v22);
    return v22;
  }

  v15 = Instance;
  ShouldUseXPCRemoteTileDecompressionSession = VTVideoCodecService_ShouldUseXPCRemoteTileDecompressionSession();
  *(v15 + 32) = ShouldUseXPCRemoteTileDecompressionSession;
  if (ShouldUseXPCRemoteTileDecompressionSession)
  {
    v17 = VTTileDecompressionSessionRemoteXPC_Create(a1, a2, a3, a4, a5, a6, (v15 + 24));
    if (!*(v15 + 24))
    {
      VTTileDecompressionSessionRemoteBridge_Create_cold_1(&v20);
      v18 = v20;
      if (!v20)
      {
        return v18;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v17 = VTTileDecompressionSessionRemote_Create(a1, a2, a3, a4, a5, a6, (v15 + 16));
    if (!*(v15 + 16))
    {
      VTTileDecompressionSessionRemoteBridge_Create_cold_2(&v21);
      v18 = v21;
      if (!v21)
      {
        return v18;
      }

      goto LABEL_8;
    }
  }

  v18 = v17;
  *a7 = v15;
  if (v17)
  {
LABEL_8:
    CFRelease(v15);
  }

  return v18;
}

uint64_t VTDecompressionSessionRemoteBridge_DecodeTile(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned int a7, uint64_t a8, _DWORD *a9)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_DecodeTile(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    return VTDecompressionSessionRemote_DecodeTile(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t VTDecompressionSessionRemoteBridge_FinishDelayedTiles(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return VTDecompressionSessionRemoteXPC_FinishDelayedTiles(*(a1 + 24));
  }

  else
  {
    return VTDecompressionSessionRemote_FinishDelayedTiles(*(a1 + 16));
  }
}

void *vtdsrb_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void vtdsrb_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

CFStringRef vtdsrb_CopyFormattingDesc(uint64_t a1)
{
  v1 = 24;
  if (!*(a1 + 32))
  {
    v1 = 16;
  }

  v2 = "xpc based";
  if (!*(a1 + 32))
  {
    v2 = "mig based";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[VTDecompressionSessionRemoteBridge %p] concreteSession: (type: %s) %@", a1, v2, *(a1 + v1));
}

CFStringRef vtdsrb_CopyDebugDesc(uint64_t a1)
{
  v1 = 24;
  if (!*(a1 + 32))
  {
    v1 = 16;
  }

  v2 = "xpc based";
  if (!*(a1 + 32))
  {
    v2 = "mig based";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[VTDecompressionSessionRemoteBridge %p] concreteSession: (type: %s) %@", a1, v2, *(a1 + v1));
}

void sub_18FE31110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VTParavirtualizedHostJPEGSupportHandleMessage(int a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, unint64_t a5, CFTypeRef *a6, void *a7)
{
  v33 = 0;
  v34 = 0;
  v31 = 0;
  cf = 0;
  MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateReplyAndByteStream(a2, 4, &v34, &cf);
  if (MessageBoxToRelinquishSurfaceMappingIDs || a4 && a5 && (MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(0, a4, a5, &v33), MessageBoxToRelinquishSurfaceMappingIDs))
  {
    appended = MessageBoxToRelinquishSurfaceMappingIDs;
    goto LABEL_40;
  }

  if (a1 == 1785032291 || a1 == 1784964451)
  {
    if (VTParavirtualizationMessageCopyCFDictionary(a2, 745172847, &v31))
    {
      goto LABEL_32;
    }

    if (a5 != 2)
    {
      goto LABEL_32;
    }

    if (!*a3)
    {
      goto LABEL_32;
    }

    v15 = CFGetTypeID(*a3);
    if (v15 != IOSurfaceGetTypeID())
    {
      goto LABEL_32;
    }

    v16 = *(a3 + 8);
    if (!v16)
    {
      goto LABEL_32;
    }

    v17 = CFGetTypeID(v16);
    if (v17 != IOSurfaceGetTypeID())
    {
      goto LABEL_32;
    }
  }

  else if (a5)
  {
    goto LABEL_32;
  }

  if (a1 == 1784897904)
  {
    if (!CMPhotoLibraryCore() || !getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc())
    {
      goto LABEL_39;
    }

    v30 = 0;
    CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc = getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc();
    if (CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc)
    {
      VTParavirtualizedHostJPEGSupportHandleMessage_cold_1(&v30, CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc, &cf, &v35);
      goto LABEL_32;
    }

    goto LABEL_46;
  }

  if (a1 == 1784964451)
  {
    if (!CMPhotoLibraryCore() || !getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc())
    {
      goto LABEL_39;
    }

    v23 = *a3;
    v22 = *(a3 + 8);
    v24 = v31;
    CMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc = getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc();
    if (CMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc)
    {
      CMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc(v23, v22, v24);
      goto LABEL_32;
    }

    VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_2();
LABEL_46:
    VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_2();
    goto LABEL_47;
  }

  if (a1 != 1785032291 || !CMPhotoLibraryCore() || !getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc())
  {
LABEL_39:
    appended = 0;
    goto LABEL_40;
  }

  LODWORD(v30) = 0;
  v19 = *a3;
  v18 = *(a3 + 8);
  v20 = v31;
  CMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc = getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc();
  if (!CMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc)
  {
LABEL_47:
    VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_2();
    return CMPhotoLibraryCore();
  }

  if (!CMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc(v19, v18, v20, &v30))
  {
    VTParavirtualizationMessageAppendUInt32();
  }

LABEL_32:
  appended = VTParavirtualizationMessageAppendSInt32();
  if (appended)
  {
LABEL_40:
    if (v33)
    {
      CFRelease(v33);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    goto LABEL_34;
  }

  v28 = v33;
  *a6 = v34;
  v33 = 0;
  v34 = 0;
  *a7 = v28;
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return appended;
}

uint64_t CMPhotoLibraryCore()
{
  if (!CMPhotoLibraryCore_frameworkLibrary)
  {
    CMPhotoLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CMPhotoLibraryCore_frameworkLibrary;
}

uint64_t getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc_ptr;
  v6 = getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc_ptr;
  if (!getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc_ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "CMPhotoParavirtualizedHostJPEGHardwareEncode");
    getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __CMPhotoLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CMPhotoLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoParavirtualizedHostJPEGHardwareEncode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoParavirtualizedHostJPEGHardwareEncodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CMPhotoLibrary()
{
  v0 = CMPhotoLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc_ptr;
  v6 = getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc_ptr;
  if (!getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc_ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "CMPhotoParavirtualizedHostJPEGHardwareDecode");
    getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void *__getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoParavirtualizedHostJPEGHardwareDecode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoParavirtualizedHostJPEGHardwareDecodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc_ptr;
  v6 = getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc_ptr;
  if (!getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc_ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities");
    getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void *__getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoParavirtualizedHostJPEGHardwareCopyCapabilitiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VTBlackFillGetPixelFormatPixelBlockInfo(OSType pixelFormat, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10, _BYTE *a11, char *a12)
{
  v64 = 1;
  v65 = 1;
  v62 = 1;
  valuePtr = 0;
  v60 = 0;
  v61 = 1;
  v20 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, pixelFormat);
  if (v20)
  {
    v21 = v20;
    if (a2 || (v31 = CFDictionaryGetValue(v20, *MEMORY[0x1E6966210])) == 0)
    {
      Value = CFDictionaryGetValue(v21, *MEMORY[0x1E69662D8]);
      if (!Value)
      {
        goto LABEL_30;
      }

      v23 = Value;
      v58 = a8;
      v59 = a7;
      TypeID = CFArrayGetTypeID();
      v25 = CFGetTypeID(v23);
      v26 = 4294954391;
      if ((a2 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      if (TypeID != v25)
      {
        goto LABEL_31;
      }

      if (CFArrayGetCount(v23) <= a2)
      {
        goto LABEL_31;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v23, a2);
      if (!ValueAtIndex)
      {
        goto LABEL_31;
      }

      v28 = ValueAtIndex;
      v29 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6966210]);
      if (!v29)
      {
        goto LABEL_30;
      }

      v30 = v29;
    }

    else
    {
      v30 = v31;
      v58 = a8;
      v59 = a7;
      v28 = v21;
    }

    v32 = CFNumberGetTypeID();
    if (v32 == CFGetTypeID(v30))
    {
      CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
      v33 = CFDictionaryGetValue(v28, *MEMORY[0x1E6966230]);
      if (!v33 || (v34 = v33, v35 = CFNumberGetTypeID(), v35 != CFGetTypeID(v34)) || (CFNumberGetValue(v34, kCFNumberIntType, &v65), v65))
      {
        v36 = CFDictionaryGetValue(v28, *MEMORY[0x1E6966228]);
        if (!v36 || (v37 = v36, v38 = CFNumberGetTypeID(), v38 != CFGetTypeID(v37)) || (CFNumberGetValue(v37, kCFNumberIntType, &v64), v64))
        {
          v39 = CFDictionaryGetValue(v28, *MEMORY[0x1E69662C8]);
          if (!v39 || (v40 = v39, v41 = CFNumberGetTypeID(), v41 != CFGetTypeID(v40)) || (CFNumberGetValue(v40, kCFNumberIntType, &v62), v62))
          {
            v42 = CFDictionaryGetValue(v28, *MEMORY[0x1E69662E0]);
            if (!v42 || (v43 = v42, v44 = CFNumberGetTypeID(), v44 != CFGetTypeID(v43)) || (CFNumberGetValue(v43, kCFNumberIntType, &v61), v61))
            {
              v45 = CFDictionaryGetValue(v28, *MEMORY[0x1E6966220]);
              if (v45 && (v46 = v45, v47 = CFDataGetTypeID(), v47 == CFGetTypeID(v46)))
              {
                Length = CFDataGetLength(v46);
                if (Length > 64)
                {
                  goto LABEL_30;
                }

                BytePtr = CFDataGetBytePtr(v46);
                memcpy(a9, BytePtr, Length);
              }

              else
              {
                *a9 = 0;
                LOBYTE(Length) = 1;
              }

              v50 = CFDictionaryGetValue(v28, *MEMORY[0x1E6966280]);
              if (v50)
              {
                v51 = v50;
                v52 = CFNumberGetTypeID();
                if (v52 == CFGetTypeID(v51))
                {
                  CFNumberGetValue(v51, kCFNumberIntType, &v60);
                }
              }

              v53 = CFDictionaryGetValue(v28, *MEMORY[0x1E6966278]);
              if (v53)
              {
                v54 = 1;
                CFNumberGetValue(v53, kCFNumberSInt8Type, a11);
                if (!*a11)
                {
                  VTBlackFillGetPixelFormatPixelBlockInfo_cold_1(&v66);
                  v26 = v66;
                  goto LABEL_31;
                }
              }

              else
              {
                v54 = 0;
              }

              v26 = 0;
              v55 = v64;
              *a3 = v65;
              *a4 = v55;
              v56 = v62;
              *a5 = valuePtr;
              *a6 = v56;
              *v59 = v61;
              *v58 = v60;
              *a12 = v54;
              *a10 = Length;
              goto LABEL_31;
            }
          }
        }
      }
    }

LABEL_30:
    v26 = 4294954391;
LABEL_31:
    CFRelease(v21);
    return v26;
  }

  if (pixelFormat != 1380401729)
  {
    return 4294954391;
  }

  v26 = 0;
  *a3 = 1;
  *a4 = 1;
  *a5 = 32;
  *a6 = 1;
  *a7 = 1;
  *a9 = -16777216;
  return v26;
}

void vtFillPlanePixelsWithBlack(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8)
{
  v9 = *a8;
  v10 = a8[1];
  if (a7)
  {
    v9 *= a8[3];
    v10 *= a8[4];
  }

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return;
  }

  v12 = a8[2];
  v13 = v12 >> 3;
  v14 = ~(a3 / v9 * v9) + a3 + a5 + v9;
  v15 = ~(a4 / v10 * v10) + a4 + a6 + v10;
  v16 = (a1 + a4 / v10 * a2 + a3 / v9 * (v12 >> 3));
  v17 = (a8 + 5);
  v18 = v14 / v9 * (v12 >> 3);
  v19 = v15 / v10;
  if (v12 >> 3 <= 3)
  {
    if (v13 == 1)
    {
      if (v10 <= v15)
      {
        do
        {
          memset(v16, *v17, v18);
          v16 += a2;
          --v19;
        }

        while (v19);
      }

      return;
    }

    if (v13 != 2)
    {
LABEL_28:
      if (v10 <= v15)
      {
        v20 = 0;
        do
        {
          if (v9 <= v14)
          {
            v21 = 0;
            v22 = v16;
            do
            {
              if (v12 >= 8)
              {
                v23 = (a8 + 5);
                v24 = v12 >> 3;
                do
                {
                  v25 = *v23++;
                  *v22++ = v25;
                  --v24;
                }

                while (v24);
              }

              ++v21;
            }

            while (v21 != v14 / v9);
          }

          v16 += a2;
          ++v20;
        }

        while (v20 != v19);
      }

      return;
    }

    *(a8 + 21) = *(a8 + 20);
LABEL_19:
    if (v10 <= v15)
    {
      do
      {
        memset_pattern4(v16, v17, v18);
        v16 += a2;
        --v19;
      }

      while (v19);
    }

    return;
  }

  if (v13 == 4)
  {
    goto LABEL_19;
  }

  if (v13 != 8)
  {
    if (v13 == 16)
    {
      if (v10 <= v15)
      {
        do
        {
          memset_pattern16(v16, v17, v18);
          v16 += a2;
          --v19;
        }

        while (v19);
      }

      return;
    }

    goto LABEL_28;
  }

  if (v10 <= v15)
  {
    do
    {
      memset_pattern8(v16, v17, v18);
      v16 += a2;
      --v19;
    }

    while (v19);
  }
}

uint64_t VTFillPixelBufferWithBlack(__CVBuffer *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  if (a1)
  {
    if (CVPixelBufferLockBaseAddress(a1, 0))
    {
      v5 = 0;
      v6 = 4294954394;
      goto LABEL_18;
    }

    if (CVPixelBufferIsPlanar(a1))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(a1);
      v3 = PlaneCount;
      if (PlaneCount < 5)
      {
        v5 = 0;
        v4 = v14;
        if (!PlaneCount)
        {
LABEL_15:
          Width = CVPixelBufferGetWidth(a1);
          Height = CVPixelBufferGetHeight(a1);
          PixelFormatPixelBlockInfo = VTFillBufferPixelsWithBlack(a1, 0, 0, Width, Height, v4);
LABEL_16:
          v6 = PixelFormatPixelBlockInfo;
          goto LABEL_17;
        }
      }

      else
      {
        v4 = malloc_type_calloc(PlaneCount, 0x70uLL, 0x100004081F0E799uLL);
        v5 = v4;
        if (!v4)
        {
          v6 = 4294954392;
LABEL_17:
          CVPixelBufferUnlockBaseAddress(a1, 0);
LABEL_18:
          free(v5);
          return v6;
        }
      }
    }

    else
    {
      v5 = 0;
      v4 = v14;
      v3 = 1;
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      PixelFormatPixelBlockInfo = VTBlackFillGetPixelFormatPixelBlockInfo(PixelFormatType, v9, &v4[v8], &v4[v8 + 1], &v4[v8 + 2], &v4[v8 + 3], &v4[v8 + 4], &v4[v8 + 13] + 1, &v4[v8 + 5], &v4[v8 + 13], &v4[v8 + 13] + 2, &v4[v8 + 13] + 6);
      if (PixelFormatPixelBlockInfo)
      {
        goto LABEL_16;
      }

      ++v9;
      v8 += 14;
      if (v3 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTFillPixelBufferBorderWithBlack(__CVBuffer *a1, double a2, double a3, double a4, double a5)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, sizeof(v23));
  if (a1)
  {
    if (CVPixelBufferLockBaseAddress(a1, 0))
    {
      v13 = 0;
      v14 = 4294954394;
      goto LABEL_24;
    }

    if (CVPixelBufferIsPlanar(a1))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(a1);
      v11 = PlaneCount;
      if (PlaneCount < 5)
      {
        v12 = v23;
        v13 = 0;
        if (!PlaneCount)
        {
LABEL_15:
          Width = CVPixelBufferGetWidth(a1);
          Height = CVPixelBufferGetHeight(a1);
          if (BYTE1(v12[14 * v11 + 13]))
          {
            fig_log_get_emitter();
            PixelFormatPixelBlockInfo = FigSignalErrorAtGM();
          }

          else
          {
            v22 = Height;
            if (a3 <= 0.0 || (PixelFormatPixelBlockInfo = VTFillBufferPixelsWithBlack(a1, 0, 0, Width, a3, v12), !PixelFormatPixelBlockInfo))
            {
              if (a2 <= 0.0 || (PixelFormatPixelBlockInfo = VTFillBufferPixelsWithBlack(a1, 0, a3, a2, a5, v12), !PixelFormatPixelBlockInfo))
              {
                if (a2 + a4 >= Width || (PixelFormatPixelBlockInfo = VTFillBufferPixelsWithBlack(a1, (a2 + a4), a3, (Width - (a2 + a4)), a5, v12), !PixelFormatPixelBlockInfo))
                {
                  if (a3 + a5 >= v22)
                  {
                    v14 = 0;
                    goto LABEL_23;
                  }

                  PixelFormatPixelBlockInfo = VTFillBufferPixelsWithBlack(a1, 0, (a3 + a5), Width, (v22 - (a3 + a5)), v12);
                }
              }
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
        v12 = malloc_type_calloc(PlaneCount, 0x70uLL, 0x100004081F0E799uLL);
        v13 = v12;
        if (!v12)
        {
          v14 = 4294954392;
LABEL_23:
          CVPixelBufferUnlockBaseAddress(a1, 0);
LABEL_24:
          free(v13);
          return v14;
        }
      }
    }

    else
    {
      v13 = 0;
      v12 = v23;
      v11 = 1;
    }

    v16 = 0;
    v17 = 0;
    while (1)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      PixelFormatPixelBlockInfo = VTBlackFillGetPixelFormatPixelBlockInfo(PixelFormatType, v17, &v12[v16], &v12[v16 + 1], &v12[v16 + 2], &v12[v16 + 3], &v12[v16 + 4], &v12[v16 + 13] + 1, &v12[v16 + 5], &v12[v16 + 13], &v12[v16 + 13] + 2, &v12[v16 + 13] + 6);
      if (PixelFormatPixelBlockInfo)
      {
        break;
      }

      ++v17;
      v16 += 14;
      if (v11 == v17)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v14 = PixelFormatPixelBlockInfo;
    goto LABEL_23;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtWritePatternToMemory(_BYTE *a1, char *p_pattern4, uint64_t a3, size_t __len)
{
  v4 = 4294954394;
  if (a1 && p_pattern4)
  {
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        memset(a1, *p_pattern4, __len);
        return 0;
      }

      if (a3 != 2)
      {
        goto LABEL_14;
      }

      __pattern4 = *p_pattern4;
      v9 = p_pattern4[1];
      v10 = __pattern4;
      v11 = v9;
      p_pattern4 = &__pattern4;
    }

    else if (a3 != 4)
    {
      if (a3 == 8)
      {
        memset_pattern8(a1, p_pattern4, __len);
        return 0;
      }

      if (a3 == 16)
      {
        memset_pattern16(a1, p_pattern4, __len);
        return 0;
      }

LABEL_14:
      if (__len)
      {
        v5 = 0;
        do
        {
          if (v5 >= a3)
          {
            v6 = 0;
          }

          else
          {
            v6 = v5;
          }

          v5 = v6 + 1;
          *a1++ = p_pattern4[v6];
          --__len;
        }

        while (__len);
      }

      return 0;
    }

    memset_pattern4(a1, p_pattern4, __len);
    return 0;
  }

  return v4;
}

uint64_t vtPopulateTemporalFilterRegistry()
{
  MEMORY[0x193AE3010](&sCreateTemporalFiltersRegistryOnce, vtCreateTemporalFilterRegistry);
  MEMORY[0x193AE3010](&sInitializeTemporalFiltersRegistryOnce, vtInitializeTemporalFilterRegistry);
  FigSimpleMutexLock();

  return FigSimpleMutexUnlock();
}

CFComparisonResult vtCompareClassNameThenTemporalFilterName(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"ClassName");
  v5 = CFDictionaryGetValue(a2, @"ClassName");
  result = CFStringCompare(Value, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFDictionaryGetValue(a1, @"TemporalFilterName");
    v8 = CFDictionaryGetValue(a2, @"TemporalFilterName");

    return CFStringCompare(v7, v8, 0);
  }

  return result;
}

uint64_t VTSelectAndCreateTemporalFilterInstance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  cf = 0;
  theArray = 0;
  if (a4)
  {
    vtPopulateTemporalFilterRegistry();
    if (_MergedGlobals_17)
    {
      v11 = a1;
      v12 = a3;
      FigRegistryCopyFilteredItemList();
      VTSelectAndCreateTemporalFilterInstance_cold_1(&v8);
    }

    else
    {
      VTSelectAndCreateTemporalFilterInstance_cold_2(&v8);
    }
  }

  else
  {
    VTSelectAndCreateTemporalFilterInstance_cold_3(&v8);
  }

  v7 = v8;
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t __vtTemporalFilterShouldUseSeparateProcess_block_invoke()
{
  result = _os_feature_enabled_impl();
  vtTemporalFilterShouldUseSeparateProcess_featureEnabled = result;
  return result;
}

void vtInitializeTemporalFilterRegistry()
{
  keys[7] = *MEMORY[0x1E69E9840];
  sTemporalFilterRegistryMutex = FigSimpleMutexCreate();
  vtLoadTemporalFilterPluginsFromPath("/System/Library/Video/Plug-Ins");
  vtLoadTemporalFilterPluginsFromPath("/Library/Video/Plug-Ins");
  FigRegistryRescan();
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v2 = Mutable;
    v3 = CFArrayCreateMutable(v0, 2, MEMORY[0x1E695E9C0]);
    FigCFArrayAppendDouble();
    FigCFArrayAppendDouble();
    CFDictionaryAddValue(v2, @"VTTemporalFilterClass", @"Enhancement");
    CFDictionaryAddValue(v2, @"SupportedScaleFactors", v3);
    valuePtr = 1;
    keys[0] = @"CMClassID";
    keys[1] = @"CMClassImplementationName";
    keys[2] = @"VTTemporalFilterClassName";
    keys[3] = @"VTTemporalFilterName";
    keys[4] = @"CMClassImplementationVersion";
    keys[5] = @"CMClassImplementationID";
    keys[6] = @"CMMatchingInfo";
    v4 = CFNumberCreate(v0, kCFNumberIntType, &valuePtr);
    if (v4)
    {
      v5 = v4;
      values[0] = @"com.apple.videotoolbox.temporalfilter";
      values[1] = @"SRS Enhancement Filter";
      values[2] = @"SRSEnhancementFilter";
      values[3] = @"SRSEnhancementFilter";
      values[4] = v4;
      values[5] = @"com.apple.videotoolbox.temporalfilter.SRSEnhancementFilter";
      values[6] = v2;
      v6 = CFDictionaryCreate(v0, keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v6)
      {
        v7 = v6;
        FigRegistryAddItem();
        CFRelease(v5);
        v8 = v7;
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        v8 = v5;
      }

      CFRelease(v8);
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v3);
LABEL_10:
    CFRelease(v2);
  }
}

const __CFDictionary *vtCheckRequiredTemporalFilterSpecificationKey(void *key, const void *a2, uint64_t a3)
{
  result = *a3;
  if (!*a3 || (result = CFDictionaryGetValue(result, key), !a2) || !result || (result = CFEqual(result, a2), !result))
  {
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t vt_Copy_32BGRA_444vITU601(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v10 = *a4 + 2;
    v12 = *a6;
    v11 = a6[1];
    do
    {
      if (a1)
      {
        v13 = 0;
        v14 = v10;
        v15 = v11;
        do
        {
          v16 = *v14;
          v17 = *(v14 - 1);
          v18 = *(v14 - 2);
          *(v12 + v13) = (8414 * v16 + 540672 + 16519 * v17 + 3208 * v18) >> 15;
          *v15 = (((8383752 * v16) ^ 0x400000u) + 8379074 * v17 + 14392 * v18 + 0x4000) >> 15;
          v15[1] = (14392 * v16 + 540672 + 8376557 * v17 + 8386268 * v18 + 3670016) >> 15;
          v15 += 2;
          ++v13;
          v14 += 4;
        }

        while (a1 != v13);
      }

      v12 += v8;
      v11 += v9;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_444fITU601(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v10 = *a4 + 2;
    v11 = *a6;
    v12 = a6[1];
    do
    {
      if (a1)
      {
        v13 = 0;
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v14;
          v17 = *(v14 - 1);
          v18 = *(v14 - 2);
          v19 = (19235 * v17 + 9798 * v16 + 3736 * v18 + 0x4000) >> 15;
          v20 = -10854 * v17 - 5528 * v16 + (v18 << 14);
          v21 = v20 + 0x400000;
          v22 = (v20 + 4210688) >> 15;
          if (v21 > 0x7FBFFF)
          {
            LOBYTE(v22) = -1;
          }

          v23 = -13719 * v17 + (v16 << 14) - 2663 * v18;
          v24 = v23 + 0x400000;
          v25 = (v23 + 4210688) >> 15;
          if (v24 > 0x7FBFFF)
          {
            LOBYTE(v25) = -1;
          }

          *(v11 + v13) = v19;
          *v15 = v22;
          v15[1] = v25;
          v15 += 2;
          ++v13;
          v14 += 4;
        }

        while (a1 != v13);
      }

      v11 += v8;
      v12 += v9;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_444vITU709(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v10 = *a4 + 2;
    v12 = *a6;
    v11 = a6[1];
    do
    {
      if (a1)
      {
        v13 = 0;
        v14 = v10;
        v15 = v11;
        do
        {
          v16 = *v14;
          v17 = *(v14 - 1);
          v18 = *(v14 - 2);
          *(v12 + v13) = (5983 * v16 + 540672 + 20127 * v17 + 2032 * v18) >> 15;
          *v15 = (((8385311 * v16) ^ 0x400000u) + 8377515 * v17 + 14392 * v18 + 0x4000) >> 15;
          v15[1] = (14392 * v16 + 540672 + 8375536 * v17 + 8387289 * v18 + 3670016) >> 15;
          v15 += 2;
          ++v13;
          v14 += 4;
        }

        while (a1 != v13);
      }

      v12 += v8;
      v11 += v9;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_444fITU709(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v10 = *a4 + 2;
    v11 = *a6;
    v12 = a6[1];
    do
    {
      if (a1)
      {
        v13 = 0;
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v14;
          v17 = *(v14 - 1);
          v18 = *(v14 - 2);
          v19 = (23436 * v17 + 6966 * v16 + 2366 * v18 + 0x4000) >> 15;
          v20 = -12629 * v17 - 3753 * v16 + (v18 << 14);
          v21 = v20 + 0x400000;
          v22 = (v20 + 4210688) >> 15;
          if (v21 > 0x7FBFFF)
          {
            LOBYTE(v22) = -1;
          }

          v23 = -14881 * v17 + (v16 << 14) - 1501 * v18;
          v24 = v23 + 0x400000;
          v25 = (v23 + 4210688) >> 15;
          if (v24 > 0x7FBFFF)
          {
            LOBYTE(v25) = -1;
          }

          *(v11 + v13) = v19;
          *v15 = v22;
          v15[1] = v25;
          v15 += 2;
          ++v13;
          v14 += 4;
        }

        while (a1 != v13);
      }

      v11 += v8;
      v12 += v9;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_444vITU2020(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v10 = *a4 + 2;
    v12 = *a6;
    v11 = a6[1];
    do
    {
      if (a1)
      {
        v13 = 0;
        v14 = v10;
        v15 = v11;
        do
        {
          v16 = *v14;
          v17 = *(v14 - 1);
          v18 = *(v14 - 2);
          *(v12 + v13) = (7371 * v16 + 540672 + 19024 * v17 + 1664 * v18) >> 15;
          *v15 = (((8384602 * v16) ^ 0x400000u) + 8378266 * v17 + 14350 * v18 + 0x4000) >> 15;
          v15[1] = (14350 * v16 + 540672 + 8375413 * v17 + 8387455 * v18 + 3670016) >> 15;
          v15 += 2;
          ++v13;
          v14 += 4;
        }

        while (a1 != v13);
      }

      v12 += v8;
      v11 += v9;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_444fITU2020(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = a5[1];
    v10 = *a4 + 2;
    v11 = *a6;
    v12 = a6[1];
    do
    {
      if (a1)
      {
        v13 = 0;
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v14;
          v17 = *(v14 - 1);
          v18 = *(v14 - 2);
          v19 = (22217 * v17 + 8608 * v16 + 1943 * v18 + 0x4000) >> 15;
          v20 = -11808 * v17 - 4574 * v16 + (v18 << 14);
          v21 = v20 + 0x400000;
          v22 = (v20 + 4210688) >> 15;
          if (v21 > 0x7FBFFF)
          {
            LOBYTE(v22) = -1;
          }

          v23 = -15065 * v17 + (v16 << 14) - 1317 * v18;
          v24 = v23 + 0x400000;
          v25 = (v23 + 4210688) >> 15;
          if (v24 > 0x7FBFFF)
          {
            LOBYTE(v25) = -1;
          }

          *(v11 + v13) = v19;
          *v15 = v22;
          v15[1] = v25;
          v15 += 2;
          ++v13;
          v14 += 4;
        }

        while (a1 != v13);
      }

      v11 += v8;
      v12 += v9;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t VTPixelBufferConformerGetTypeID()
{
  if (sRegisterVTPixelBufferConformerTypeOnce != -1)
  {
    VTPixelBufferConformerGetTypeID_cold_1();
  }

  return sVTPixelBufferConformerID;
}

uint64_t RegisterVTPixelBufferConformerIDType()
{
  result = _CFRuntimeRegisterClass();
  sVTPixelBufferConformerID = result;
  return result;
}

uint64_t VTPixelBufferConformerCreateWithAttributes(uint64_t a1, const void *a2, uint64_t *a3)
{
  v5 = *MEMORY[0x1E695E480];
  if (sRegisterVTPixelBufferConformerTypeOnce != -1)
  {
    VTPixelBufferConformerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v7 = Instance;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v7 + 32) = a2;
    v8 = VTPixelTransferSessionCreate(v5, (v7 + 24));
    if (v8 || !*(v7 + 24))
    {
      CFRelease(v7);
    }

    else
    {
      v8 = 0;
      *a3 = v7;
    }

    return v8;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t VTPixelBufferConformerGetAttributes(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void VTPixelBufferConformerSetAttributes(uint64_t a1, const void *a2)
{
  if (!FigCFEqual())
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 32) = a2;
  }
}

uint64_t VTPixelBufferConformerGetColorProperties(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t VTPixelBufferConformerCopyBlackPixelBuffer(uint64_t a1, const opaqueCMFormatDescription *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a3)
  {
    VTPixelBufferConformerCopyBlackPixelBuffer_cold_4(&v25);
    return v25;
  }

  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E695E480];
    goto LABEL_23;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    goto LABEL_16;
  }

  v11 = CFDictionaryContainsKey(v10, *MEMORY[0x1E69660B8]);
  v12 = CFDictionaryContainsKey(*(a1 + 32), *MEMORY[0x1E6966208]);
  v13 = CFDictionaryContainsKey(*(a1 + 32), *MEMORY[0x1E6966130]);
  v14 = v11 != 0;
  v15 = v12 != 0;
  v16 = v13 != 0;
  if (v11)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v13 == 0)
  {
LABEL_16:
    CMVideoFormatDescriptionGetDimensions(a2);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      VTPixelBufferConformerCopyBlackPixelBuffer_cold_2();
LABEL_37:
      VTPixelBufferConformerCopyBlackPixelBuffer_cold_3(&v25);
      return v25;
    }

    v8 = MutableCopy;
    if (v14)
    {
      if (v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      FigCFDictionarySetInt32();
      if (v15)
      {
LABEL_19:
        if (v16)
        {
          goto LABEL_21;
        }

LABEL_20:
        FigCFDictionarySetInt32();
        goto LABEL_21;
      }
    }

    FigCFDictionarySetInt32();
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = *(a1 + 32);
  if (!v19)
  {
    goto LABEL_37;
  }

  v8 = CFRetain(v19);
  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_21:
  v9 = *MEMORY[0x1E695E480];
  if (CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v8, v7) || (v6 = *v7) == 0)
  {
    VTPixelBufferConformerCopyBlackPixelBuffer_cold_1(&v25);
    PixelBuffer = v25;
LABEL_27:
    CFRelease(v8);
    return PixelBuffer;
  }

LABEL_23:
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v9, v6, &cf);
  v22 = cf;
  if (PixelBuffer || (PixelBuffer = VTFillPixelBufferWithBlack(cf), v22 = cf, PixelBuffer))
  {
    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    *a3 = cf;
    cf = 0;
  }

  if (v8)
  {
    goto LABEL_27;
  }

  return PixelBuffer;
}

uint64_t VTPixelBufferConformerCopyConformedPixelBuffer(uint64_t a1, void *cf, int a3, CFTypeRef *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  cfa = 0;
  if (!a4)
  {
    fig_log_get_emitter();
    v16 = FigSignalErrorAtGM();
    Mutable = 0;
    goto LABEL_105;
  }

  v4 = cf;
  if (!cf)
  {
    Mutable = 0;
    v16 = 0;
    *a4 = 0;
    goto LABEL_105;
  }

  v5 = a1;
  if (!a3 && VTPixelBufferConformerIsConformantPixelBuffer(a1, cf))
  {
    *a4 = v4;
    CFRetain(v4);
    Mutable = 0;
    v16 = 0;
    goto LABEL_105;
  }

  resolvedDictionaryOut = 0;
  values[0] = *(v5 + 32);
  Attributes = CVPixelBufferGetAttributes();
  v7 = *MEMORY[0x1E6966130];
  v8 = *MEMORY[0x1E6966208];
  pixelBufferOut[0] = *MEMORY[0x1E6966130];
  pixelBufferOut[1] = v8;
  v9 = *MEMORY[0x1E6966020];
  pixelBufferOut[2] = *MEMORY[0x1E69660B8];
  pixelBufferOut[3] = v9;
  v10 = *MEMORY[0x1E6966100];
  pixelBufferOut[4] = *MEMORY[0x1E69660D8];
  pixelBufferOut[5] = v10;
  v11 = *MEMORY[0x1E695E480];
  if (!*(v5 + 32))
  {
    v12 = 0;
    goto LABEL_11;
  }

  v12 = CFArrayCreate(v11, values, 1, MEMORY[0x1E695E9C0]);
  CVPixelBufferCreateResolvedAttributesDictionary(v11, v12, &resolvedDictionaryOut);
  if (!resolvedDictionaryOut || (Count = CFDictionaryGetCount(resolvedDictionaryOut), (MutableCopy = CFDictionaryCreateMutableCopy(v11, Count + 6, resolvedDictionaryOut)) == 0))
  {
LABEL_11:
    Mutable = CFDictionaryCreateMutable(v11, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v16 = 4294954392;
      goto LABEL_100;
    }

    goto LABEL_12;
  }

  Mutable = MutableCopy;
LABEL_12:
  v48 = v12;
  v49 = v5;
  v17 = 0;
  allocator = v11;
  v53 = v4;
  v50 = v7;
  v51 = Attributes;
  while (1)
  {
    value = 0;
    v18 = pixelBufferOut[v17];
    if (!CFDictionaryGetValueIfPresent(Mutable, v18, &value))
    {
      break;
    }

    v19 = CFGetTypeID(value);
    if (v19 != CFArrayGetTypeID())
    {
      goto LABEL_96;
    }

    if (v18 != v7)
    {
      value = CFArrayGetValueAtIndex(value, 0);
      CFDictionarySetValue(Mutable, v18, value);
      goto LABEL_96;
    }

    v55 = 0;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
    v23 = value;
    v24 = CFArrayGetCount(value);
    if (v24 < 1)
    {
      v26 = 0;
      goto LABEL_95;
    }

    v25 = 0;
    v26 = 0;
    v27 = v24 & 0x7FFFFFFF;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v23, v25);
      if (!ValueAtIndex)
      {
        goto LABEL_90;
      }

      v29 = ValueAtIndex;
      v30 = CFGetTypeID(ValueAtIndex);
      if (v30 != CFNumberGetTypeID())
      {
        goto LABEL_90;
      }

      CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr);
      v31 = valuePtr;
      if (valuePtr == PixelFormatType)
      {
        break;
      }

      if (PixelFormatType > 1380401728)
      {
        if (PixelFormatType <= 1983131703)
        {
          if (PixelFormatType == 1380401729)
          {
            goto LABEL_59;
          }

          if (PixelFormatType == 1916022840)
          {
LABEL_55:
            if (valuePtr > 1380401728)
            {
              if (valuePtr == 1380401729 || valuePtr == 1916022840)
              {
                goto LABEL_94;
              }

              v32 = 1983131704;
            }

            else
            {
              if (valuePtr == 32)
              {
                goto LABEL_94;
              }

LABEL_57:
              if (valuePtr == 1094862674)
              {
                goto LABEL_94;
              }

              v32 = 1111970369;
            }

            goto LABEL_76;
          }
        }

        else
        {
          switch(PixelFormatType)
          {
            case 1983131704:
              goto LABEL_55;
            case 2037741171:
              goto LABEL_49;
            case 2033463856:
LABEL_43:
              if (valuePtr <= 1380401728)
              {
                if (valuePtr > 875704437)
                {
                  if (valuePtr == 875704438)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_57;
                }

LABEL_51:
                if (valuePtr == 32)
                {
                  goto LABEL_94;
                }

                v32 = 846624121;
LABEL_76:
                if (valuePtr == v32)
                {
                  goto LABEL_94;
                }

                break;
              }

              if (valuePtr > 1983131703)
              {
                if (valuePtr == 1983131704)
                {
                  goto LABEL_94;
                }

                v33 = 2033463856;
                goto LABEL_72;
              }

LABEL_74:
              if (valuePtr == 1380401729)
              {
                goto LABEL_94;
              }

              v32 = 1916022840;
              goto LABEL_76;
          }
        }
      }

      else if (PixelFormatType <= 875704437)
      {
        if (PixelFormatType == 32)
        {
          goto LABEL_59;
        }

        if (PixelFormatType == 846624121)
        {
LABEL_49:
          if (valuePtr <= 1380401728)
          {
            if (valuePtr > 1094862673)
            {
              goto LABEL_57;
            }

            goto LABEL_51;
          }

          if (valuePtr > 1983131703)
          {
            v33 = 1983131704;
LABEL_72:
            if (valuePtr == v33)
            {
              goto LABEL_94;
            }

            v32 = 2037741171;
            goto LABEL_76;
          }

          goto LABEL_74;
        }
      }

      else
      {
        if (PixelFormatType == 875704438)
        {
          goto LABEL_43;
        }

        if (PixelFormatType == 1094862674 || PixelFormatType == 1111970369)
        {
LABEL_59:
          if (valuePtr > 1111970368)
          {
            if (valuePtr == 1111970369)
            {
              goto LABEL_94;
            }

            v32 = 1380401729;
          }

          else
          {
            if (valuePtr == 32)
            {
              goto LABEL_94;
            }

            v32 = 1094862674;
          }

          goto LABEL_76;
        }
      }

      v35 = PixelFormatType == 1983000880 && valuePtr == 2016686640;
      v36 = valuePtr == 1111970369 && PixelFormatType == 1378955371;
      if (v36 || v35)
      {
        goto LABEL_94;
      }

      if (!v26)
      {
        v26 = valuePtr;
      }

LABEL_90:
      if (v27 == ++v25)
      {
        goto LABEL_95;
      }
    }

    v31 = PixelFormatType;
LABEL_94:
    v26 = v31;
LABEL_95:
    v55 = v26;
    v11 = allocator;
    v37 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v55);
    CFDictionarySetValue(Mutable, v18, v37);
    CFRelease(v37);
    v4 = v53;
    v7 = v50;
    Attributes = v51;
LABEL_96:
    if (++v17 == 6)
    {
      v16 = 0;
      goto LABEL_98;
    }
  }

  v20 = CFDictionaryGetValue(Attributes, v18);
  value = v20;
  if (v20)
  {
    CFRetain(v20);
    v21 = value;
    if (value)
    {
LABEL_19:
      CFDictionarySetValue(Mutable, v18, v21);
      CFRelease(value);
      goto LABEL_96;
    }
  }

  else if (v17 != 3 && v17 != 5)
  {
    if (vtCreateCompletePixelBufferAttributesFromSourceBufferAttributes_fallbacks[v17])
    {
      v21 = (vtCreateCompletePixelBufferAttributesFromSourceBufferAttributes_fallbacks[v17])(v4);
      value = v21;
      if (v21)
      {
        goto LABEL_19;
      }
    }
  }

  if (v17 == 3 || v17 == 5 || !vtCreateCompletePixelBufferAttributesFromSourceBufferAttributes_fallbacks[v17])
  {
    goto LABEL_96;
  }

  fig_log_get_emitter();
  v16 = FigSignalErrorAtGM();
  CFRelease(Mutable);
  Mutable = 0;
LABEL_98:
  v12 = v48;
  v5 = v49;
LABEL_100:
  if (resolvedDictionaryOut)
  {
    CFRelease(resolvedDictionaryOut);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (!v16)
  {
    v40 = (v5 + 16);
    v39 = *(v5 + 16);
    pixelBufferOut[0] = 0;
    if (v39)
    {
      PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(v11, v39, pixelBufferOut);
      if (PixelBuffer)
      {
        v16 = PixelBuffer;
LABEL_113:
        cfa = 0;
        goto LABEL_107;
      }

      if (!pixelBufferOut[0])
      {
        fig_log_get_emitter();
        v44 = FigSignalErrorAtGM();
        cfa = 0;
        if (v44)
        {
          v16 = v44;
          goto LABEL_107;
        }

        goto LABEL_125;
      }

      IsCompatibleWithAttributes = CVPixelBufferIsCompatibleWithAttributes();
      v43 = pixelBufferOut[0];
      if (IsCompatibleWithAttributes)
      {
        cfa = pixelBufferOut[0];
        if (!pixelBufferOut[0])
        {
          v16 = 4294954392;
          goto LABEL_107;
        }

        goto LABEL_132;
      }

      if (pixelBufferOut[0])
      {
        CFRelease(pixelBufferOut[0]);
      }
    }

    cfa = 0;
LABEL_125:
    CVPixelBufferPoolRelease(*v40);
    *v40 = 0;
    v45 = CVPixelBufferPoolCreate(v11, 0, Mutable, (v5 + 16));
    if (v45)
    {
      v16 = v45;
      goto LABEL_105;
    }

    if (!*v40)
    {
      v16 = 4294954392;
      goto LABEL_105;
    }

    v46 = CVPixelBufferPoolCreatePixelBuffer(v11, *v40, &cfa);
    if (v46)
    {
      v16 = v46;
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      goto LABEL_105;
    }

    v43 = cfa;
LABEL_132:
    v16 = VTPixelTransferSessionTransferImage(*(v5 + 24), v4, v43);
    if (v16)
    {
      goto LABEL_105;
    }

    *a4 = cfa;
    goto LABEL_113;
  }

LABEL_105:
  if (cfa)
  {
    CFRelease(cfa);
  }

LABEL_107:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

double vtPixelBufferConformerInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void vtPixelBufferConformerFinalize(uint64_t a1)
{
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

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  CVPixelBufferPoolRelease(*(a1 + 16));
  *(a1 + 16) = 0;
}

__CFString *vtPixelBufferConformerCopyDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = FigCFCopyCompactDescription();
  v5 = FigCFCopyCompactDescription();
  v6 = v5;
  v7 = @"<No attributes, conformer is pass thru>";
  if (a1[4])
  {
    v7 = v4;
  }

  v8 = @"<No color properties>";
  if (a1[5])
  {
    v8 = v5;
  }

  CFStringAppendFormat(Mutable, 0, @"<VTPixelBufferConformerRef %p>\n\tTarget Attributes:\n\t\t%@\nColor Properties:\n\t\t%@", a1, v7, v8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

CFNumberRef vtCopyWidthFromPixelBuffer(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  if (Width >> 31)
  {
    return 0;
  }

  valuePtr = Width;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

CFNumberRef vtCopyHeightFromPixelBuffer(__CVBuffer *a1)
{
  Height = CVPixelBufferGetHeight(a1);
  if (Height >> 31)
  {
    return 0;
  }

  valuePtr = Height;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

uint64_t VTParavirtualizationHostSessionGetTypeID()
{
  if (qword_1ED6D4528 != -1)
  {
    VTParavirtualizationHostSessionGetTypeID_cold_1();
  }

  return qword_1ED6D4530;
}

uint64_t vtParavirtualizationHostSession_RegisterType(uint64_t *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostSessionCreate(const void *a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E695E480];
    if (qword_1ED6D4528 != -1)
    {
      VTParavirtualizationHostSessionGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      *(Instance + 16) = _Block_copy(a1);
      Mutable = CFDictionaryCreateMutable(v4, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v6 + 24) = Mutable;
      if (Mutable)
      {
        v8 = CFDictionaryCreateMutable(v4, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(v6 + 32) = v8;
        if (v8)
        {
          v9 = CFDictionaryCreateMutable(v4, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(v6 + 48) = v9;
          if (v9)
          {
            result = 0;
            *(v6 + 40) = 0;
            *(v6 + 56) = 0;
            *(v6 + 64) = 0;
            *a2 = v6;
            return result;
          }

          v11 = 405;
        }

        else
        {
          v11 = 400;
        }
      }

      else
      {
        v11 = 397;
      }

      VTParavirtualizationHostSessionCreate_cold_2(v11, v6, &v12);
      return v12;
    }

    else
    {
      VTParavirtualizationHostSessionCreate_cold_3(&v13);
      return v13;
    }
  }

  else
  {
    VTParavirtualizationHostSessionCreate_cold_4(&v14);
    return v14;
  }
}

void VTParavirtualizationHostSessionInvalidate(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 64));
  *(a1 + 60) = 1;
  os_unfair_lock_unlock((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 16) = 0;
  }

  os_unfair_lock_lock((a1 + 40));
  FigCFDictionaryApplyBlock();
  os_unfair_lock_unlock((a1 + 40));
  os_unfair_lock_lock((a1 + 44));
  FigCFDictionaryApplyBlock();

  os_unfair_lock_unlock((a1 + 44));
}

void VTParavirtualizationHostSessionCompleteInvalidate(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 40));
  FigCFDictionaryApplyBlock();
  CFDictionaryRemoveAllValues(*(a1 + 24));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  os_unfair_lock_unlock((a1 + 40));
  os_unfair_lock_lock((a1 + 44));
  FigCFDictionaryApplyBlock();
  CFDictionaryRemoveAllValues(*(a1 + 32));
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  os_unfair_lock_unlock((a1 + 44));
  os_unfair_lock_lock((a1 + 56));
  FigCFDictionaryApplyBlock();
  CFDictionaryRemoveAllValues(*(a1 + 48));
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  os_unfair_lock_unlock((a1 + 56));
}

uint64_t vtParavirtualizationHostSession_callMessageToGuestHandler(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  os_unfair_lock_lock((a1 + 64));
  if (*(a1 + 60))
  {
    VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v6, 0, 0);
    v4 = 4294948198;
  }

  else
  {
    (*(*(a1 + 16) + 16))();
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 64));
  return v4;
}

void vtParavirtualizationInvalidateHostDecoderSessionAndRemoveItFromHostSession(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 40));
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    os_unfair_lock_unlock((a1 + 40));
    VTParavirtualizationHostDecoderSessionInvalidate(v5);
    VTParavirtualizationHostDecoderSessionCompleteInvalidate(v5);
    os_unfair_lock_lock((a1 + 40));
    CFDictionaryRemoveValue(*(a1 + 24), a2);
    os_unfair_lock_unlock((a1 + 40));

    CFRelease(v5);
  }

  else
  {

    os_unfair_lock_unlock((a1 + 40));
  }
}

void vtParavirtualizationInvalidateHostEncoderSessionAndRemoveItFromHostSession(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 44));
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    os_unfair_lock_unlock((a1 + 44));
    VTParavirtualizationHostEncoderSessionInvalidate(v5);
    VTParavirtualizationHostEncoderSessionCompleteInvalidate(v5);
    os_unfair_lock_lock((a1 + 44));
    CFDictionaryRemoveValue(*(a1 + 32), a2);
    os_unfair_lock_unlock((a1 + 44));

    CFRelease(v5);
  }

  else
  {

    os_unfair_lock_unlock((a1 + 44));
  }
}

uint64_t VTParavirtualizationHostSessionCreateTerminateAllSessionsMessage(CMBlockBufferRef *a1)
{
  destinationBuffer = 0;
  v2 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x30uLL, *MEMORY[0x1E695E480], 0, 0, 0x30uLL, 1u, &destinationBuffer);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = CMBlockBufferReplaceDataBytes(&VTParavirtualizationHostSessionCreateTerminateAllSessionsMessage_kTerminateAllSessionsMessage, destinationBuffer, 0, 0x30uLL);
    if (!v3)
    {
      *a1 = destinationBuffer;
      return v3;
    }
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v3;
}

uint64_t VTParavirtualizationReplyClerkCreate(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E695E480];
  if (qword_1ED6D4540 != -1)
  {
    VTParavirtualizationReplyClerkCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    v9.version = 0;
    v9.retain = vtCloneParavirtualizationPendingReply;
    v9.copyDescription = 0;
    v9.equal = 0;
    v9.release = vtFreeParavirtualizationPendingReply;
    v7 = CFDictionaryCreateMutable(v4, 10, 0, &v9);
    v6[5] = v7;
    if (v7)
    {
      result = 0;
      v6[2] = a1;
      v6[4] = 100;
      *a2 = v6;
      return result;
    }

    VTParavirtualizationReplyClerkCreate_cold_2(v6, &v10);
  }

  else
  {
    VTParavirtualizationReplyClerkCreate_cold_3(&v10);
  }

  return v10;
}

void vtParavirtualizationGuestFinalize(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      _Block_release(v2);
      *a1 = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
      a1[2] = 0;
    }

    v4 = a1[3];
    if (v4)
    {
      dispatch_release(v4);
      a1[3] = 0;
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
      a1[1] = 0;
    }

    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

uint64_t VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(OpaqueCMBlockBuffer *a1, uint64_t a2, void *a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  return VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(a1, 0, 0, &v4, a3);
}

uint64_t VTParavirtualizationReplyClerkWaitForReply(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, NSObject **a6, void *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (vParavirtualizationGetReplyTimeoutInNanoSeconds_sCheckDefaultsWriteOnce != -1)
  {
    VTParavirtualizationReplyClerkWaitForReply_cold_1();
  }

  v13 = vParavirtualizationGetReplyTimeoutInNanoSeconds_sReplyTimeoutInNanoSeconds;
  if (*(a4 + 12))
  {
    time1 = *a4;
    *&time2.value = kVTParavirtualizationDefaultReplyTimeout;
    time2.epoch = 0;
    if (CMTimeCompare(&time1, &time2))
    {
      time1 = *a4;
      v13 = (CMTimeGetSeconds(&time1) * 1000000000.0);
    }
  }

  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 48))
  {
    os_unfair_lock_unlock((a1 + 24));
    return 4294948201;
  }

  Value = CFDictionaryGetValue(*(a1 + 40), a3);
  os_unfair_lock_unlock((a1 + 24));
  if (!Value)
  {
    VTParavirtualizationReplyClerkWaitForReply_cold_2(&time1);
    return LODWORD(time1.value);
  }

  v16 = *Value;
  v17 = dispatch_time(0, v13);
  if (dispatch_semaphore_wait(v16, v17))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294948204;
  }

  if (*(Value + 40))
  {
    return FigSignalErrorAtGM();
  }

  *a5 = Value[1];
  Value[1] = 0;
  v19 = Value[3];
  if (a6)
  {
    *a6 = v19;
LABEL_17:
    Value[3] = 0;
    goto LABEL_18;
  }

  if (v19)
  {
    CFRelease(v19);
    goto LABEL_17;
  }

LABEL_18:
  if (a7)
  {
    *a7 = Value[4];
  }

  result = 0;
  Value[4] = 0;
  return result;
}

uint64_t VTParavirtualizationReplyClerkCleanUpReply(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 24));
  CFDictionaryRemoveValue(*(a1 + 40), a2);
  os_unfair_lock_unlock((a1 + 24));
  return 0;
}

uint64_t VTParavirtualizationCopyNotificationQueueForGuestUUID(CFUUIDBytes *a1)
{
  v1 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], *a1);
  os_unfair_lock_lock(&_MergedGlobals_18);
  Value = CFDictionaryGetValue(qword_1ED6D4538, v1);
  if (Value)
  {
    v3 = *(Value + 3);
    if (v3)
    {
      dispatch_retain(*(Value + 3));
    }
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_18);
  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

BOOL VTParavirtualizationIsRunningInGuest()
{
  if (qword_1ED6D4550 != -1)
  {
    VTParavirtualizationIsRunningInGuest_cold_1();
  }

  return dword_1ED6D4524 == 0;
}

uint64_t VTParavirtualizationCreateMessageAndByteStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMBlockBufferRef *a5, void *a6)
{
  blockBufferOut = 0;
  WritableForBlockBuffer = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, &blockBufferOut);
  if (WritableForBlockBuffer || (WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterInitWithByteStream(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterBeginAtom(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterAppendData(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterAppendData(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterAppendData(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterAppendData(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterAppendData(), WritableForBlockBuffer) || (WritableForBlockBuffer = FigAtomWriterEndAtom(), WritableForBlockBuffer))
  {
    v9 = WritableForBlockBuffer;
  }

  else
  {
    *a5 = blockBufferOut;
    blockBufferOut = 0;
    v9 = 0;
    if (!a6)
    {
      return v9;
    }

    *a6 = 0;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v9;
}

uint64_t vtpvScanForTopLevelBoxWithType(CMBlockBufferRef theSourceBuffer, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  if (a3 < 8)
  {
    return 4294948203;
  }

  v20 = v5;
  v21 = v6;
  v13 = 0;
  while (1)
  {
    destination = 0;
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, v13 + a2, 4uLL, &destination);
    if (result)
    {
      break;
    }

    v14 = bswap32(destination);
    destination = v14;
    if (v14 < 8 || a3 - v13 < v14)
    {
      return FigSignalErrorAtGM();
    }

    v17 = 0;
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, v13 + a2 + 4, 4uLL, &v17);
    if (result)
    {
      return result;
    }

    v15 = v17;
    v17 = bswap32(v17);
    v16 = destination;
    if (v15 == 1987081334)
    {
      if (destination <= 0x2F)
      {
        vtpvScanForTopLevelBoxWithType_cold_1(&v19);
        return v19;
      }

      else
      {
        result = 0;
        *a4 = v13;
        *a5 = v16;
      }

      return result;
    }

    v13 += destination;
    if (v13 + 8 > a3)
    {
      return 4294948203;
    }
  }

  return result;
}

BOOL VTParavirtualizationMessageContainsParameter(OpaqueCMBlockBuffer *a1, int a2, int a3)
{
  v9 = 0;
  DataLength = CMBlockBufferGetDataLength(a1);
  if (vtpvScanForParameterBoxWithType(a1, 0, DataLength, a2, a3, &v10, &v9))
  {
    v7 = 1;
  }

  else
  {
    v7 = v9 == 0;
  }

  return !v7;
}

uint64_t vtpvScanForParameterBoxWithType(CMBlockBufferRef theSourceBuffer, uint64_t a2, unint64_t a3, int a4, int a5, void *a6, void *a7)
{
  if (a3 < 0x10)
  {
    return 0;
  }

  v25 = v7;
  v26 = v8;
  v15 = 0;
  while (1)
  {
    destination = 0;
    v16 = v15 + a2;
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, v15 + a2, 4uLL, &destination);
    if (result)
    {
      break;
    }

    v17 = bswap32(destination);
    destination = v17;
    if (v17 < 8 || a3 - v15 < v17)
    {
      return FigSignalErrorAtGM();
    }

    v23 = 0;
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, v16 + 4, 4uLL, &v23);
    if (result)
    {
      return result;
    }

    v18 = v23;
    v23 = bswap32(v23);
    if (v18 == 1634886000)
    {
      v22 = 0;
      result = CMBlockBufferCopyDataBytes(theSourceBuffer, v16 + 8, 4uLL, &v22);
      if (result)
      {
        return result;
      }

      v22 = bswap32(v22);
      if (v22 == a4)
      {
        v21 = 0;
        result = CMBlockBufferCopyDataBytes(theSourceBuffer, v16 + 12, 4uLL, &v21);
        if (!result)
        {
          v21 = bswap32(v21);
          if (v21 != a5)
          {
            return FigSignalErrorAtGM();
          }

          result = 0;
          *a6 = v15;
          *a7 = destination;
        }

        return result;
      }
    }

    v15 += destination;
    if (v15 + 16 > a3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t VTParavirtualizationMessageCopyCFPropertyList(OpaqueCMBlockBuffer *a1, int a2, CFTypeRef *a3)
{
  v16 = 0;
  v17 = 0;
  cf = 0;
  DataLength = CMBlockBufferGetDataLength(a1);
  DataPointer = vtpvScanForParameterBoxWithType(a1, 0, DataLength, a2, 1030777971, &v17, &v16);
  if (DataPointer)
  {
LABEL_14:
    v12 = DataPointer;
    v10 = 0;
    goto LABEL_18;
  }

  if (v16)
  {
    v8 = v16 - 16;
    if (v16 == 16)
    {
      v10 = 0;
      cf = 0;
      goto LABEL_12;
    }

    v9 = v17;
    if (CMBlockBufferIsRangeContiguous(a1, v17 + 16, v16 - 16))
    {
      v14 = 0;
      DataPointer = CMBlockBufferGetDataPointer(a1, v9 + 16, 0, 0, &v14);
      if (!DataPointer)
      {
        DataPointer = FigCreateCFPropertyListFromData();
        if (!DataPointer)
        {
          v10 = 0;
LABEL_12:
          v12 = 0;
          *a3 = cf;
          cf = 0;
          goto LABEL_13;
        }
      }

      goto LABEL_14;
    }

    v10 = malloc_type_malloc(v8, 0xF1ECE846uLL);
    if (v10)
    {
      CFPropertyListFromData = CMBlockBufferCopyDataBytes(a1, v9 + 16, v8, v10);
      if (!CFPropertyListFromData)
      {
        CFPropertyListFromData = FigCreateCFPropertyListFromData();
        if (!CFPropertyListFromData)
        {
          goto LABEL_12;
        }
      }

      v12 = CFPropertyListFromData;
    }

    else
    {
      VTParavirtualizationMessageCopyCFPropertyList_cold_1(&v14);
      v12 = v14;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
    *a3 = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  free(v10);
  return v12;
}

uint64_t VTParavirtualizationMessageCopyCFData(OpaqueCMBlockBuffer *a1, int a2, __CFData **a3)
{
  v22 = 0;
  v23 = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v7 = 0;
  v8 = 0;
  v21 = 0;
  while (1)
  {
    vtParavirtualizationMessageGetMessageFlagsStartingAtOffset(a1, v8, &v21);
    if (v9)
    {
      goto LABEL_16;
    }

    DataLength = CMBlockBufferGetDataLength(a1);
    v9 = vtpvScanForParameterBoxWithType(a1, v8, DataLength, a2, 1029988724, &v23, &v22);
    if (v9)
    {
      goto LABEL_16;
    }

    if (!v22)
    {
LABEL_17:
      v19 = 0;
      *a3 = 0;
      goto LABEL_21;
    }

    if (v22 <= 0x10)
    {
      break;
    }

    v7 = v7 + v22 - 16;
    v8 += v22 + v23;
    if ((v21 & 0x10) == 0)
    {
      CFDataSetLength(Mutable, v7);
      v11 = 0;
      v12 = 0;
      while (1)
      {
        vtParavirtualizationMessageGetMessageFlagsStartingAtOffset(a1, v11, &v21);
        if (v9)
        {
          break;
        }

        v13 = CMBlockBufferGetDataLength(a1);
        v9 = vtpvScanForParameterBoxWithType(a1, v11, v13, a2, 1029988724, &v23, &v22);
        if (v9)
        {
          break;
        }

        v14 = v22;
        if (!v22)
        {
          goto LABEL_17;
        }

        v15 = v22 - 16;
        if (v22 <= 0x10)
        {
          VTParavirtualizationMessageCopyCFData_cold_1(&v24);
          goto LABEL_20;
        }

        v16 = v23;
        v17 = v11 + v23;
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        v9 = CMBlockBufferCopyDataBytes(a1, v17 + 16, v14 - 16, &MutableBytePtr[v12]);
        if (v9)
        {
          break;
        }

        v12 += v15;
        v11 += v14 + v16;
        if ((v21 & 0x10) == 0)
        {
          v19 = 0;
          *a3 = Mutable;
          return v19;
        }
      }

LABEL_16:
      v19 = v9;
      goto LABEL_21;
    }
  }

  VTParavirtualizationMessageCopyCFData_cold_2(&v24);
LABEL_20:
  v19 = v24;
LABEL_21:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v19;
}

uint64_t VTParavirtualizationMessageCopyCFDictionary(OpaqueCMBlockBuffer *a1, int a2, void *a3)
{
  cf = 0;
  v4 = VTParavirtualizationMessageCopyCFPropertyList(a1, a2, &cf);
  v5 = cf;
  if (v4)
  {
    v7 = v4;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_9;
  }

  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 != CFDictionaryGetTypeID())
    {
      VTParavirtualizationMessageCopyCFDictionary_cold_1(&v10);
      v7 = v10;
LABEL_9:
      CFRelease(v5);
      return v7;
    }
  }

  v7 = 0;
  *a3 = v5;
  return v7;
}

uint64_t VTParavirtualizationMessageCopyFigTagCollectionArray(OpaqueCMBlockBuffer *a1, int a2, void *a3)
{
  v29 = 0;
  v30 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  value = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    DataLength = CMBlockBufferGetDataLength(a1);
    CurrentAtomTypeAndDataLength = vtpvScanForParameterBoxWithType(a1, 0, DataLength, a2, 1031037739, &v30, &v29);
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_9;
    }

    if (!v29)
    {
      v11 = 0;
      *a3 = 0;
      goto LABEL_13;
    }

    if (v29 <= 0xF)
    {
      VTParavirtualizationMessageCopyFigTagCollectionArray_cold_4(&capacity);
      v11 = capacity;
      goto LABEL_13;
    }

    CurrentAtomTypeAndDataLength = FigAtomStreamInitWithBBuf();
    if (CurrentAtomTypeAndDataLength || (CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent(), CurrentAtomTypeAndDataLength) || (v13 = 0, capacity = 0, CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(), CurrentAtomTypeAndDataLength))
    {
LABEL_9:
      v11 = CurrentAtomTypeAndDataLength;
    }

    else
    {
      VTParavirtualizationMessageCopyFigTagCollectionArray_cold_1(&v31);
      v11 = v31;
    }

LABEL_13:
    CFRelease(v7);
    goto LABEL_10;
  }

  VTParavirtualizationMessageCopyFigTagCollectionArray_cold_5(&capacity);
  v11 = capacity;
LABEL_10:
  if (value)
  {
    CFRelease(value);
  }

  return v11;
}

uint64_t VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(uint64_t a1, uint64_t a2, int a3, unint64_t a4, opaqueCMSampleBuffer *a5, CFTypeRef *a6, CMBlockBufferRef *a7)
{
  cf = 0;
  if (a3)
  {
    SerializedAtomDataBlockBufferForSampleBuffer = VTParavirtualizationCreateSerializedAtomDataBlockBufferForSampleBuffer(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480], a5, a6, &cf);
    v12 = cf;
    if (SerializedAtomDataBlockBufferForSampleBuffer)
    {
      appended = SerializedAtomDataBlockBufferForSampleBuffer;
      if (!cf)
      {
        return appended;
      }
    }

    else
    {
      appended = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(a1, a2, a4, cf, a7);
      v12 = cf;
      if (!cf)
      {
        return appended;
      }
    }

    CFRelease(v12);
    return appended;
  }

  return FigSignalErrorAtGM();
}

uint64_t VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments(uint64_t a1, CVBufferRef buffer)
{
  v4 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
  CVPixelBufferGetIOSurface(buffer);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  __src = 0u;
  v28 = 0u;
  v26 = 132;
  v5 = MEMORY[0x1E695E480];
  if (v4 && CFDictionaryGetCount(v4) >= 1)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*v5, 0, v4);
    v6 = MutableCopy;
    if (!MutableCopy)
    {
      VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments_cold_1(capacity);
      v13 = LODWORD(capacity[0]);
      goto LABEL_18;
    }

    CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965CE8]);
    appended = VTParavirtualizationMessageAppendCFPropertyList();
    if (appended)
    {
      v13 = appended;
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!IOSurfaceGetBulkAttachments())
  {
    v23 = v33;
    v24 = v34;
    v25 = v35;
    *capacity = __src;
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    if (__src)
    {
LABEL_22:
      if (!VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments_cold_2(&__src, a1, capacity))
      {
        v13 = LODWORD(capacity[0]);
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 1;
      while (v7 != 132)
      {
        if (*(capacity + v7++))
        {
          if ((v7 - 2) < 0x83)
          {
            goto LABEL_22;
          }

          break;
        }
      }
    }
  }

  v9 = 0;
  v10 = *v5;
  while (1)
  {
    capacity[0] = 0;
    if (!IOSurfaceGetDataProperty())
    {
      if (capacity[0])
      {
        break;
      }
    }

LABEL_15:
    if (++v9 == 4)
    {
      v13 = 0;
      goto LABEL_17;
    }
  }

  Mutable = CFDataCreateMutable(v10, capacity[0]);
  if (Mutable)
  {
    v12 = Mutable;
    CFDataSetLength(Mutable, capacity[0]);
    CFDataGetMutableBytePtr(v12);
    IOSurfaceGetDataProperty();
    v13 = VTParavirtualizationMessageAppendCFData();
    CFRelease(v12);
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v13 = FigSignalErrorAtGM();
LABEL_17:
  if (v4)
  {
LABEL_18:
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v13;
}

uint64_t VTParavirtualizationReplyClerkGetTypeID()
{
  if (qword_1ED6D4540 != -1)
  {
    VTParavirtualizationReplyClerkCreate_cold_1();
  }

  return qword_1ED6D4548;
}

uint64_t vtParavirtualizationReplyClerk_RegisterType(uint64_t *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t vtCloneParavirtualizationPendingReply(uint64_t a1)
{
  v1 = MEMORY[0x193AE0CD0](a1, 48, 0x102004058C4FA7CLL, 0);
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *v1 = dispatch_semaphore_create(0);
  *(v1 + 40) = 0;
  return v1;
}

void vtFreeParavirtualizationPendingReply(CFAllocatorRef allocator, dispatch_object_t *ptr)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  v6 = ptr[3];
  if (v6)
  {
    CFRelease(v6);
    ptr[3] = 0;
  }

  if (*ptr)
  {
    dispatch_release(*ptr);
    *ptr = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

void VTParavirtualizationReplyClerkInvalidate(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  *(a1 + 48) = 1;
  Count = FigCFDictionaryGetCount();
  v3 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  CFDictionaryGetKeysAndValues(*(a1 + 40), 0, v3);
  if (Count >= 1)
  {
    v4 = v3;
    do
    {
      v5 = *v4++;
      *(v5 + 40) = 1;
      dispatch_semaphore_signal(*v5);
      --Count;
    }

    while (Count);
  }

  os_unfair_lock_unlock((a1 + 24));

  free(v3);
}

uint64_t VTParavirtualizationPixelBufferAttributesContainIOSurfaceProtectionOptions()
{
  FigCFDictionaryGetValue();
  FigCFDictionaryGetIntIfPresent();
  return 0;
}

uint64_t VTParavirtualizationCopyFilteredPixelBufferAttributes(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E6966130];
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID())
    {
      FigCFNumberGetSInt32();
      if (vtParavirtualizationIsPixelFormatCompressed())
      {
        VTParavirtualizationCopyFilteredPixelBufferAttributes_cold_1(&v15);
        return v15;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v8 = 0;
      if (!MutableCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v11 = CFGetTypeID(v5);
    if (v11 == CFArrayGetTypeID())
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v8 = FigCFArrayCreateMutableCopy();
      Count = CFArrayGetCount(v8);
      if (Count < 1)
      {
        goto LABEL_24;
      }

      v13 = Count;
      v14 = 0;
      do
      {
        FigCFArrayGetInt32AtIndex();
        if (vtParavirtualizationIsPixelFormatCompressed())
        {
          CFArrayRemoveValueAtIndex(v8, v14);
          --v13;
        }

        else
        {
          ++v14;
        }
      }

      while (v14 < v13);
      if (v13 < 1)
      {
LABEL_24:
        v9 = FigSignalErrorAtGM();
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_7;
      }

      CFDictionarySetValue(MutableCopy, v3, v8);
      if (!MutableCopy)
      {
LABEL_6:
        v9 = 0;
        *a2 = MutableCopy;
LABEL_7:
        if (v8)
        {
          CFRelease(v8);
        }

        return v9;
      }

LABEL_5:
      CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6966050]);
      CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E69660F8]);
      goto LABEL_6;
    }
  }

  return FigSignalErrorAtGM();
}

const __CFDictionary *vtParavirtualizationIsPixelFormatCompressed()
{
  result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (result)
  {
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E69662D8]);
    if (Value)
    {
      v2 = Value;
      v3 = CFGetTypeID(Value);
      if (v3 == CFArrayGetTypeID())
      {
        CFArrayGetValueAtIndex(v2, 0);
        FigCFDictionaryGetInt32IfPresent();
      }
    }

    return 0;
  }

  return result;
}

uint64_t VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(CFArrayRef theArray, uint64_t a2, unint64_t a3, CMBlockBufferRef *a4)
{
  v5 = a3;
  destinationBuffer = 0;
  if (theArray && a2)
  {
    v15 = 4562;
LABEL_23:
    VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs_cold_1(v15, &v17);
    v13 = v17;
    goto LABEL_18;
  }

  if (!(theArray | a2))
  {
    v15 = 4563;
    goto LABEL_23;
  }

  if (theArray && CFArrayGetCount(theArray) < a3)
  {
    v13 = 4294954394;
  }

  else
  {
    v8 = 8 * v5 + 8;
    v18 = 1936483698;
    sourceBytes = bswap32(v8);
    v9 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v8, *MEMORY[0x1E695E480], 0, 0, v8, 1u, &destinationBuffer);
    if (!v9)
    {
      v9 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL);
      if (!v9)
      {
        v9 = CMBlockBufferReplaceDataBytes(&v18, destinationBuffer, 4uLL, 4uLL);
        if (!v9)
        {
          if (v5 < 1)
          {
LABEL_16:
            v13 = 0;
            *a4 = destinationBuffer;
            return v13;
          }

          v10 = 0;
          v11 = 0;
          while (1)
          {
            v16 = 0;
            v17 = 0;
            if (theArray)
            {
              FigCFArrayGetInt64AtIndex();
              v12 = v17;
            }

            else
            {
              v12 = *(a2 + v10);
              v17 = v12;
            }

            v16 = bswap64(v12);
            v10 += 8;
            v9 = CMBlockBufferReplaceDataBytes(&v16, destinationBuffer, v10, 8uLL);
            if (v9)
            {
              break;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_16;
            }
          }
        }
      }
    }

    v13 = v9;
  }

LABEL_18:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v13;
}

double vtParavirtualizationHostSession_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void vtParavirtualizationHostSession_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 16) = 0;
  }

  os_unfair_lock_lock((a1 + 40));
  v3 = *(a1 + 24);
  if (v3)
  {
    CFDictionaryRemoveAllValues(v3);
    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 24) = 0;
    }
  }

  os_unfair_lock_unlock((a1 + 40));
  os_unfair_lock_lock((a1 + 44));
  v5 = *(a1 + 32);
  if (v5)
  {
    CFDictionaryRemoveAllValues(v5);
    v6 = *(a1 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 32) = 0;
    }
  }

  os_unfair_lock_unlock((a1 + 44));
}

__CFString *vtParavirtualizationHostSession_CopyDebugDesc(os_unfair_lock_s *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  os_unfair_lock_lock(a1 + 10);
  Count = FigCFDictionaryGetCount();
  os_unfair_lock_unlock(a1 + 10);
  os_unfair_lock_lock(a1 + 11);
  v5 = FigCFDictionaryGetCount();
  os_unfair_lock_unlock(a1 + 11);
  v6 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"VTParavirtualizationHostSession %p RC: %d  %d decoder sessions %d, encoder sessions", a1, v6, Count, v5);
  return Mutable;
}

void __vtParavirtualizationGuestSetup_block_invoke()
{
  if (!MEMORY[0x1EEE97A70])
  {
    v0 = -19090;
LABEL_6:
    dword_1ED6D4524 = v0;
    return;
  }

  dword_1ED6D4524 = VTParavirtualizationGuestSupportSetUpWithHandlers();
  qword_1ED6D4538 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 10, MEMORY[0x1E695E9D8], 0);
  if (!qword_1ED6D4538)
  {
    __vtParavirtualizationGuestSetup_block_invoke_cold_1(&v1);
    v0 = v1;
    goto LABEL_6;
  }
}

uint64_t __vtParavirtualizationGuestSetup_block_invoke_4(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void __vtParavirtualizationGuestDispatchOneMessageFromHost_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  _Block_release(v2);
}

double vtParavirtualizationReplyClerk_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  return result;
}

void vtParavirtualizationReplyClerk_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }
  }
}

__CFString *vtParavirtualizationReplyClerk_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  Count = FigCFDictionaryGetCount();
  CFStringAppendFormat(Mutable, 0, @"VTParavirtualizationReplyClerk %p RC: %d  %d pending replies", a1, v4, Count);
  return Mutable;
}

float __vParavirtualizationGetReplyTimeoutInNanoSeconds_block_invoke()
{
  v1.epoch = 0;
  *&v1.value = kVTParavirtualizationDefaultReplyTimeout;
  CMTimeConvertScale(&v2, &v1, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  result = SLODWORD(v2.value) * 1000000.0;
  vParavirtualizationGetReplyTimeoutInNanoSeconds_sReplyTimeoutInNanoSeconds = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return FigAtomWriterBeginAtom();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return FigAtomWriterBeginAtom();
}

uint64_t OUTLINED_FUNCTION_11_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char destination, uint64_t a11, uint64_t a12)
{
  v14 = a12 + 16;

  return CMBlockBufferCopyDataBytes(v12, v14, 8uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_18_5(int a1, size_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char destination)
{

  return CMBlockBufferCopyDataBytes(v11, a2, 4uLL, &destination);
}

int8x8_t OUTLINED_FUNCTION_24_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int8x8_t a10)
{
  result = vrev32_s8(a10);
  *v10 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_3()
{
  result = 0;
  *v0 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return FigAtomWriterAppendData();
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return FigAtomWriterAppendBlockBufferData();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return FigAtomWriterAppendData();
}

void VTFigAudioSessionInitialize(uint64_t a1)
{
  if (a1)
  {
    if (sFigAudioSessionFunctionsHasBeenSet == 1)
    {
      VTFigAudioSessionInitialize_cold_1();
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTFigAudioSessionInitialize_block_invoke;
      block[3] = &__block_descriptor_tmp_32;
      block[4] = a1;
      if (VTFigAudioSessionInitialize_once != -1)
      {
        dispatch_once(&VTFigAudioSessionInitialize_once, block);
      }
    }
  }

  else
  {
    VTFigAudioSessionInitialize_cold_2();
  }
}

uint64_t __VTFigAudioSessionInitialize_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*v1)
  {
    return __VTFigAudioSessionInitialize_block_invoke_cold_5();
  }

  if (!v1[1])
  {
    return __VTFigAudioSessionInitialize_block_invoke_cold_4();
  }

  if (!v1[2])
  {
    return __VTFigAudioSessionInitialize_block_invoke_cold_3();
  }

  if (!v1[3])
  {
    return __VTFigAudioSessionInitialize_block_invoke_cold_2();
  }

  if (!v1[4])
  {
    return __VTFigAudioSessionInitialize_block_invoke_cold_1();
  }

  v2 = *v1;
  v3 = *(v1 + 1);
  qword_1EAD32080 = v1[4];
  sFigAudioSessionFunctions = v2;
  *&off_1EAD32070 = v3;
  kVTFigAudioSessionNotification_ApplicationStateDidChange = *(&v3 + 1);
  kVTFigAudioSessionNotification_Interruption = qword_1EAD32080;
  sFigAudioSessionFunctionsHasBeenSet = 1;
  return result;
}

uint64_t VTFigAudioSessionCreateWithCMSession()
{
  if (sFigAudioSessionFunctionsHasBeenSet)
  {
    v2 = sFigAudioSessionFunctions;
    if (sFigAudioSessionFunctions)
    {

      return v2();
    }

    else
    {
      return 4294947943;
    }
  }

  else
  {
    v5 = v0;
    v6 = v1;
    VTFigAudioSessionCreateWithCMSession_cold_1(&v4);
    return v4;
  }
}

uint64_t VTFigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(uint64_t a1, _OWORD *a2)
{
  if (sFigAudioSessionFunctionsHasBeenSet)
  {
    if (*(&sFigAudioSessionFunctions + 1))
    {
      v2 = a2[1];
      v4[0] = *a2;
      v4[1] = v2;
      return (*(&sFigAudioSessionFunctions + 1))(a1, v4);
    }

    else
    {
      return 4294947943;
    }
  }

  else
  {
    VTFigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken_cold_1(v4);
    return LODWORD(v4[0]);
  }
}

uint64_t VTInAudioMXServerProcess()
{
  if (sFigAudioSessionFunctionsHasBeenSet)
  {
    if (off_1EAD32070)
    {
      return off_1EAD32070();
    }
  }

  else
  {
    VTInAudioMXServerProcess_cold_1();
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_y420ITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a1 >> 1;
    v41 = a2 >> 1;
    v8 = *a5;
    v40 = a5[1];
    v39 = a5[2];
    v9 = a6[1];
    v38 = 2 * *a5;
    v37 = 2 * *a3;
    v46 = *a6 + 1;
    v44 = *a4 + 3 + *a3;
    v45 = *a4 + 3;
    v10 = a6[2];
    do
    {
      v43 = v6;
      if (a1 >= 2)
      {
        v11 = 0;
        v13 = v44;
        v12 = v45;
        v14 = v46;
        do
        {
          v15 = &v14[v8];
          v16 = v8;
          v17 = v7;
          v18 = *(v12 - 2);
          v19 = *(v12 - 1);
          v20 = *v12;
          v21 = v12[2];
          v22 = v12[3];
          v23 = v12[4];
          v24 = *(v13 - 2);
          v25 = *(v13 - 1);
          v26 = *v13;
          v27 = v13[2];
          v28 = v13[3];
          v29 = v13[4];
          *(v14 - 1) = (8414 * v18 + 540672 + 16519 * v19 + 3208 * v20) >> 15;
          *v14 = (8414 * v21 + 540672 + 16519 * v22 + 3208 * v23) >> 15;
          v14 += 2;
          *(v15 - 1) = (8414 * v24 + 540672 + 16519 * v25 + 3208 * v26) >> 15;
          *v15 = (8414 * v27 + 540672 + 16519 * v28 + 3208 * v29) >> 15;
          v30 = v23 + v20 + v26;
          v31 = v21 + v18 + v24 + v27;
          v32 = v22 + v19 + v25;
          v33 = 33544898 * v28 - 9534 * v32 + 33549576 * v31 + 14392 * (v30 + v29);
          v34 = 33542381 * v28 - 12051 * v32 + 33552092 * v30 + 33552092 * v29 + 14392 * v31;
          v35 = v33 + 16842752;
          v7 = v17;
          v8 = v16;
          *(v9 + v11) = v35 >> 17;
          *(v10 + v11++) = (v34 + 16842752) >> 17;
          v13 += 8;
          v12 += 8;
        }

        while (v7 != v11);
      }

      v9 += v40;
      v10 += v39;
      v6 = v43 + 1;
      v46 += v38;
      v44 += v37;
      v45 += v37;
    }

    while (v43 + 1 != v41);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_y420ITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a1 >> 1;
    v42 = a2 >> 1;
    v8 = *a5;
    v41 = a5[1];
    v40 = a5[2];
    v9 = a6[1];
    v39 = 2 * *a5;
    v38 = 2 * *a3;
    v47 = *a6 + 1;
    v45 = *a4 + 4 + *a3;
    v46 = *a4 + 4;
    v10 = a6[2];
    do
    {
      v44 = v6;
      if (a1 >= 2)
      {
        v11 = 0;
        v13 = v45;
        v12 = v46;
        v14 = v47;
        do
        {
          v15 = &v14[v8];
          v16 = v8;
          v17 = v7;
          v18 = *(v12 - 2);
          v19 = *(v12 - 3);
          v20 = *(v12 - 4);
          v21 = v12[2];
          v22 = v12[1];
          v24 = *v12;
          v12 += 8;
          v23 = v24;
          v25 = *(v13 - 2);
          v26 = *(v13 - 3);
          v27 = *(v13 - 4);
          v28 = v13[2];
          v29 = v13[1];
          v30 = *v13;
          v13 += 8;
          *(v14 - 1) = (8414 * v18 + 540672 + 16519 * v19 + 3208 * v20) >> 15;
          *v14 = (8414 * v21 + 540672 + 16519 * v22 + 3208 * v23) >> 15;
          v14 += 2;
          *(v15 - 1) = (8414 * v25 + 540672 + 16519 * v26 + 3208 * v27) >> 15;
          *v15 = (8414 * v28 + 540672 + 16519 * v29 + 3208 * v30) >> 15;
          v31 = v23 + v20 + v27;
          v32 = v21 + v18 + v25 + v28;
          v33 = v22 + v19 + v26;
          v34 = 33544898 * v29 - 9534 * v33 + 33549576 * v32 + 14392 * (v31 + v30);
          v35 = 33542381 * v29 - 12051 * v33 + 33552092 * v31 + 33552092 * v30 + 14392 * v32;
          v36 = v34 + 16842752;
          v7 = v17;
          v8 = v16;
          *(v9 + v11) = v36 >> 17;
          *(v10 + v11++) = (v35 + 16842752) >> 17;
        }

        while (v7 != v11);
      }

      v9 += v41;
      v10 += v40;
      v6 = v44 + 1;
      v47 += v39;
      v45 += v38;
      v46 += v38;
    }

    while (v44 + 1 != v42);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_420vITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v30 = a1 >> 1;
    v34 = a2 >> 1;
    v7 = *a5;
    v33 = a5[1];
    v40 = a6[1];
    v32 = 2 * *a5;
    v31 = 2 * *a3;
    v39 = *a6 + 1;
    v37 = *a4 + 3 + *a3;
    v38 = *a4 + 3;
    do
    {
      v36 = v6;
      if (a1 >= 2)
      {
        v8 = v37;
        v9 = v38;
        v10 = v39;
        v11 = v40;
        v12 = v30;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 1);
          v16 = *v9;
          v17 = v9[2];
          v18 = v9[3];
          v19 = v9[4];
          v20 = *(v8 - 2);
          v21 = *(v8 - 1);
          v22 = *v8;
          v23 = v8[2];
          v24 = v8[3];
          v25 = v8[4];
          *(v10 - 1) = (8414 * v14 + 540672 + 16519 * v15 + 3208 * v16) >> 15;
          *v10 = (8414 * v17 + 540672 + 16519 * v18 + 3208 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (8414 * v20 + 540672 + 16519 * v21 + 3208 * v22) >> 15;
          *v13 = (8414 * v23 + 540672 + 16519 * v24 + 3208 * v25) >> 15;
          v26 = v19 + v16 + v22;
          v27 = v17 + v14 + v20 + v23;
          v28 = v18 + v15 + v21;
          *v11 = (33544898 * v24 - 9534 * v28 + 33549576 * v27 + 14392 * (v26 + v25) + 16842752) >> 17;
          v11[1] = (33542381 * v24 - 12051 * v28 + 33552092 * v26 + 33552092 * v25 + 14392 * v27 + 16842752) >> 17;
          v9 += 8;
          v8 += 8;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v40 += v33;
      v6 = v36 + 1;
      v39 += v32;
      v38 += v31;
      v37 += v31;
    }

    while (v36 + 1 != v34);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_420vITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v31 = a1 >> 1;
    v35 = a2 >> 1;
    v7 = *a5;
    v34 = a5[1];
    v41 = a6[1];
    v33 = 2 * *a5;
    v32 = 2 * *a3;
    v40 = *a6 + 1;
    v38 = *a4 + 4 + *a3;
    v39 = *a4 + 4;
    do
    {
      v37 = v6;
      if (a1 >= 2)
      {
        v8 = v38;
        v9 = v39;
        v10 = v40;
        v11 = v41;
        v12 = v31;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 3);
          v16 = *(v9 - 4);
          v17 = v9[2];
          v18 = v9[1];
          v20 = *v9;
          v9 += 8;
          v19 = v20;
          v21 = *(v8 - 2);
          v22 = *(v8 - 3);
          v23 = *(v8 - 4);
          v24 = v8[2];
          v25 = v8[1];
          v26 = *v8;
          v8 += 8;
          *(v10 - 1) = (8414 * v14 + 540672 + 16519 * v15 + 3208 * v16) >> 15;
          *v10 = (8414 * v17 + 540672 + 16519 * v18 + 3208 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (8414 * v21 + 540672 + 16519 * v22 + 3208 * v23) >> 15;
          *v13 = (8414 * v24 + 540672 + 16519 * v25 + 3208 * v26) >> 15;
          v27 = v19 + v16 + v23;
          v28 = v17 + v14 + v21 + v24;
          v29 = v18 + v15 + v22;
          *v11 = (33544898 * v25 - 9534 * v29 + 33549576 * v28 + 14392 * (v27 + v26) + 16842752) >> 17;
          v11[1] = (33542381 * v25 - 12051 * v29 + 33552092 * v27 + 33552092 * v26 + 14392 * v28 + 16842752) >> 17;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v41 += v34;
      v6 = v37 + 1;
      v40 += v33;
      v39 += v32;
      v38 += v32;
    }

    while (v37 + 1 != v35);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_420vITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v30 = a1 >> 1;
    v34 = a2 >> 1;
    v7 = *a5;
    v33 = a5[1];
    v40 = a6[1];
    v32 = 2 * *a5;
    v31 = 2 * *a3;
    v39 = *a6 + 1;
    v37 = *a4 + 2 + *a3;
    v38 = *a4 + 2;
    do
    {
      v36 = v6;
      if (a1 >= 2)
      {
        v8 = v37;
        v9 = v38;
        v10 = v39;
        v11 = v40;
        v12 = v30;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 1);
          v16 = *v9;
          v17 = v9[1];
          v18 = v9[2];
          v19 = v9[3];
          v20 = *(v8 - 2);
          v21 = *(v8 - 1);
          v22 = *v8;
          v23 = v8[1];
          v24 = v8[2];
          v25 = v8[3];
          *(v10 - 1) = (8414 * v14 + 540672 + 16519 * v15 + 3208 * v16) >> 15;
          *v10 = (8414 * v17 + 540672 + 16519 * v18 + 3208 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (8414 * v20 + 540672 + 16519 * v21 + 3208 * v22) >> 15;
          *v13 = (8414 * v23 + 540672 + 16519 * v24 + 3208 * v25) >> 15;
          v26 = v19 + v16 + v22;
          v27 = v17 + v14 + v20 + v23;
          v28 = v18 + v15 + v21;
          *v11 = (33544898 * v24 - 9534 * v28 + 33549576 * v27 + 14392 * (v26 + v25) + 16842752) >> 17;
          v11[1] = (33542381 * v24 - 12051 * v28 + 33552092 * v26 + 33552092 * v25 + 14392 * v27 + 16842752) >> 17;
          v9 += 6;
          v8 += 6;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v40 += v33;
      v6 = v36 + 1;
      v39 += v32;
      v38 += v31;
      v37 += v31;
    }

    while (v36 + 1 != v34);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_420fITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v35 = a1 >> 1;
    v39 = a2 >> 1;
    v7 = *a5;
    v38 = a5[1];
    v45 = a6[1];
    v36 = 2 * *a3;
    v37 = 2 * *a5;
    v44 = *a6 + 1;
    v42 = *a4 + 4 + *a3;
    v43 = *a4 + 4;
    do
    {
      v41 = v6;
      if (a1 >= 2)
      {
        v8 = v42;
        v9 = v43;
        v10 = v44;
        v11 = v45;
        v12 = v35;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 3);
          v15 = *(v9 - 4);
          v16 = v9[2];
          v17 = v9[1];
          v19 = *v9;
          v9 += 8;
          v18 = v19;
          v20 = *(v8 - 2);
          v21 = *(v8 - 3);
          v22 = *(v8 - 4);
          v23 = v8[2];
          v24 = v8[1];
          v25 = v17 + v14 + v21 + v24;
          v26 = *v8;
          v8 += 8;
          *(v10 - 1) = (19235 * v14 + 9798 * v13 + 3736 * v15 + 0x4000) >> 15;
          *v10 = (19235 * v17 + 9798 * v16 + 3736 * v18 + 0x4000) >> 15;
          v27 = &v10[v7];
          *(v27 - 1) = (19235 * v21 + 9798 * v20 + 3736 * v22 + 0x4000) >> 15;
          *v27 = (19235 * v24 + 9798 * v23 + 3736 * v26 + 0x4000) >> 15;
          v28 = v18 + v15 + v22 + v26;
          LODWORD(v27) = -5528 * (v16 + v13 + v20 + v23) + (v28 << 14) - 10854 * v25;
          v29 = v27 + 0x1000000;
          v30 = -13719 * v25 + ((v20 + v16 + v23 + v13) << 14);
          v31 = (v27 + 16842752) >> 17;
          if (v29 > 0x1FEFFFF)
          {
            LOBYTE(v31) = -1;
          }

          v32 = v30 - 2663 * v28;
          *v11 = v31;
          v33 = (v32 + 16842752) >> 17;
          if ((v32 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v33) = -1;
          }

          v11[1] = v33;
          v10 += 2;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v45 += v38;
      v6 = v41 + 1;
      v44 += v37;
      v43 += v36;
      v42 += v36;
    }

    while (v41 + 1 != v39);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_420fITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v34 = a1 >> 1;
    v38 = a2 >> 1;
    v7 = *a5;
    v37 = a5[1];
    v44 = a6[1];
    v35 = 2 * *a3;
    v36 = 2 * *a5;
    v43 = *a6 + 1;
    v41 = *a4 + 3 + *a3;
    v42 = *a4 + 3;
    do
    {
      v40 = v6;
      if (a1 >= 2)
      {
        v8 = v41;
        v9 = v42;
        v10 = v43;
        v11 = v44;
        v12 = v34;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 1);
          v15 = *v9;
          v16 = v9[2];
          v17 = v9[3];
          v18 = v9[4];
          v19 = *(v8 - 2);
          v20 = *(v8 - 1);
          v21 = *v8;
          v22 = v8[2];
          v23 = v8[3];
          v24 = v17 + v14 + v20 + v23;
          v25 = v8[4];
          *(v10 - 1) = (19235 * v14 + 9798 * v13 + 3736 * v15 + 0x4000) >> 15;
          *v10 = (19235 * v17 + 9798 * v16 + 3736 * v18 + 0x4000) >> 15;
          v26 = &v10[v7];
          *(v26 - 1) = (19235 * v20 + 9798 * v19 + 3736 * v21 + 0x4000) >> 15;
          *v26 = (19235 * v23 + 9798 * v22 + 3736 * v25 + 0x4000) >> 15;
          v27 = v18 + v15 + v21 + v25;
          LODWORD(v26) = -5528 * (v16 + v13 + v19 + v22) + (v27 << 14) - 10854 * v24;
          v28 = v26 + 0x1000000;
          v29 = -13719 * v24 + ((v19 + v16 + v22 + v13) << 14);
          v30 = (v26 + 16842752) >> 17;
          if (v28 > 0x1FEFFFF)
          {
            LOBYTE(v30) = -1;
          }

          v31 = v29 - 2663 * v27;
          *v11 = v30;
          v32 = (v31 + 16842752) >> 17;
          if ((v31 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v32) = -1;
          }

          v11[1] = v32;
          v10 += 2;
          v9 += 8;
          v8 += 8;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v44 += v37;
      v6 = v40 + 1;
      v43 += v36;
      v42 += v35;
      v41 += v35;
    }

    while (v40 + 1 != v38);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_420fITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v34 = a1 >> 1;
    v38 = a2 >> 1;
    v7 = *a5;
    v37 = a5[1];
    v44 = a6[1];
    v35 = 2 * *a3;
    v36 = 2 * *a5;
    v43 = *a6 + 1;
    v41 = *a4 + 2 + *a3;
    v42 = *a4 + 2;
    do
    {
      v40 = v6;
      if (a1 >= 2)
      {
        v8 = v41;
        v9 = v42;
        v10 = v43;
        v11 = v44;
        v12 = v34;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 1);
          v15 = *v9;
          v16 = v9[1];
          v17 = v9[2];
          v18 = v9[3];
          v19 = *(v8 - 2);
          v20 = *(v8 - 1);
          v21 = *v8;
          v22 = v8[1];
          v23 = v8[2];
          v24 = v17 + v14 + v20 + v23;
          v25 = v8[3];
          *(v10 - 1) = (19235 * v14 + 9798 * v13 + 3736 * v15 + 0x4000) >> 15;
          *v10 = (19235 * v17 + 9798 * v16 + 3736 * v18 + 0x4000) >> 15;
          v26 = &v10[v7];
          *(v26 - 1) = (19235 * v20 + 9798 * v19 + 3736 * v21 + 0x4000) >> 15;
          *v26 = (19235 * v23 + 9798 * v22 + 3736 * v25 + 0x4000) >> 15;
          v27 = v18 + v15 + v21 + v25;
          LODWORD(v26) = -5528 * (v16 + v13 + v19 + v22) + (v27 << 14) - 10854 * v24;
          v28 = v26 + 0x1000000;
          v29 = -13719 * v24 + ((v19 + v16 + v22 + v13) << 14);
          v30 = (v26 + 16842752) >> 17;
          if (v28 > 0x1FEFFFF)
          {
            LOBYTE(v30) = -1;
          }

          v31 = v29 - 2663 * v27;
          *v11 = v30;
          v32 = (v31 + 16842752) >> 17;
          if ((v31 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v32) = -1;
          }

          v11[1] = v32;
          v10 += 2;
          v9 += 6;
          v8 += 6;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v44 += v37;
      v6 = v40 + 1;
      v43 += v36;
      v42 += v35;
      v41 += v35;
    }

    while (v40 + 1 != v38);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_OneComponentITU601(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = 2 * *a5;
    v9 = 2 * *a3;
    v10 = *a6 + 1;
    v11 = *a4 + 4;
    v12 = (v11 + *a3);
    do
    {
      if (a1 >= 2)
      {
        v13 = v12;
        v14 = v11;
        v15 = v10;
        v16 = a1 >> 1;
        do
        {
          v17 = &v15[v7];
          v18 = *(v14 - 2);
          v19 = *(v14 - 3);
          v20 = *(v14 - 4);
          v21 = v14[2];
          v22 = v14[1];
          v24 = *v14;
          v14 += 8;
          v23 = v24;
          v25 = *(v13 - 2);
          v26 = *(v13 - 3);
          v27 = *(v13 - 4);
          v28 = v13[2];
          v29 = v13[1];
          v30 = *v13;
          v13 += 8;
          *(v15 - 1) = (19235 * v19 + 9798 * v18 + 3736 * v20 + 0x4000) >> 15;
          *v15 = (19235 * v22 + 9798 * v21 + 3736 * v23 + 0x4000) >> 15;
          v15 += 2;
          *(v17 - 1) = (19235 * v26 + 9798 * v25 + 3736 * v27 + 0x4000) >> 15;
          *v17 = (19235 * v29 + 9798 * v28 + 3736 * v30 + 0x4000) >> 15;
          --v16;
        }

        while (v16);
      }

      ++v6;
      v10 += v8;
      v11 += v9;
      v12 += v9;
    }

    while (v6 != a2 >> 1);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_y420ITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a1 >> 1;
    v41 = a2 >> 1;
    v8 = *a5;
    v40 = a5[1];
    v39 = a5[2];
    v9 = a6[1];
    v38 = 2 * *a5;
    v37 = 2 * *a3;
    v46 = *a6 + 1;
    v44 = *a4 + 3 + *a3;
    v45 = *a4 + 3;
    v10 = a6[2];
    do
    {
      v43 = v6;
      if (a1 >= 2)
      {
        v11 = 0;
        v13 = v44;
        v12 = v45;
        v14 = v46;
        do
        {
          v15 = &v14[v8];
          v16 = v8;
          v17 = v7;
          v18 = *(v12 - 2);
          v19 = *(v12 - 1);
          v20 = *v12;
          v21 = v12[2];
          v22 = v12[3];
          v23 = v12[4];
          v24 = *(v13 - 2);
          v25 = *(v13 - 1);
          v26 = *v13;
          v27 = v13[2];
          v28 = v13[3];
          v29 = v13[4];
          *(v14 - 1) = (5983 * v18 + 540672 + 20127 * v19 + 2032 * v20) >> 15;
          *v14 = (5983 * v21 + 540672 + 20127 * v22 + 2032 * v23) >> 15;
          v14 += 2;
          *(v15 - 1) = (5983 * v24 + 540672 + 20127 * v25 + 2032 * v26) >> 15;
          *v15 = (5983 * v27 + 540672 + 20127 * v28 + 2032 * v29) >> 15;
          v30 = v23 + v20 + v26;
          v31 = v21 + v18 + v24 + v27;
          v32 = v22 + v19 + v25;
          v33 = 33543339 * v28 - 11093 * v32 + 33551135 * v31 + 14392 * (v30 + v29);
          v34 = 33541360 * v28 - 13072 * v32 + 33553113 * v30 + 33553113 * v29 + 14392 * v31;
          v35 = v33 + 16842752;
          v7 = v17;
          v8 = v16;
          *(v9 + v11) = v35 >> 17;
          *(v10 + v11++) = (v34 + 16842752) >> 17;
          v13 += 8;
          v12 += 8;
        }

        while (v7 != v11);
      }

      v9 += v40;
      v10 += v39;
      v6 = v43 + 1;
      v46 += v38;
      v44 += v37;
      v45 += v37;
    }

    while (v43 + 1 != v41);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_y420ITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a1 >> 1;
    v42 = a2 >> 1;
    v8 = *a5;
    v41 = a5[1];
    v40 = a5[2];
    v9 = a6[1];
    v39 = 2 * *a5;
    v38 = 2 * *a3;
    v47 = *a6 + 1;
    v45 = *a4 + 4 + *a3;
    v46 = *a4 + 4;
    v10 = a6[2];
    do
    {
      v44 = v6;
      if (a1 >= 2)
      {
        v11 = 0;
        v13 = v45;
        v12 = v46;
        v14 = v47;
        do
        {
          v15 = &v14[v8];
          v16 = v8;
          v17 = v7;
          v18 = *(v12 - 2);
          v19 = *(v12 - 3);
          v20 = *(v12 - 4);
          v21 = v12[2];
          v22 = v12[1];
          v24 = *v12;
          v12 += 8;
          v23 = v24;
          v25 = *(v13 - 2);
          v26 = *(v13 - 3);
          v27 = *(v13 - 4);
          v28 = v13[2];
          v29 = v13[1];
          v30 = *v13;
          v13 += 8;
          *(v14 - 1) = (5983 * v18 + 540672 + 20127 * v19 + 2032 * v20) >> 15;
          *v14 = (5983 * v21 + 540672 + 20127 * v22 + 2032 * v23) >> 15;
          v14 += 2;
          *(v15 - 1) = (5983 * v25 + 540672 + 20127 * v26 + 2032 * v27) >> 15;
          *v15 = (5983 * v28 + 540672 + 20127 * v29 + 2032 * v30) >> 15;
          v31 = v23 + v20 + v27;
          v32 = v21 + v18 + v25 + v28;
          v33 = v22 + v19 + v26;
          v34 = 33543339 * v29 - 11093 * v33 + 33551135 * v32 + 14392 * (v31 + v30);
          v35 = 33541360 * v29 - 13072 * v33 + 33553113 * v31 + 33553113 * v30 + 14392 * v32;
          v36 = v34 + 16842752;
          v7 = v17;
          v8 = v16;
          *(v9 + v11) = v36 >> 17;
          *(v10 + v11++) = (v35 + 16842752) >> 17;
        }

        while (v7 != v11);
      }

      v9 += v41;
      v10 += v40;
      v6 = v44 + 1;
      v47 += v39;
      v45 += v38;
      v46 += v38;
    }

    while (v44 + 1 != v42);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_420vITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v30 = a1 >> 1;
    v34 = a2 >> 1;
    v7 = *a5;
    v33 = a5[1];
    v40 = a6[1];
    v32 = 2 * *a5;
    v31 = 2 * *a3;
    v39 = *a6 + 1;
    v37 = *a4 + 3 + *a3;
    v38 = *a4 + 3;
    do
    {
      v36 = v6;
      if (a1 >= 2)
      {
        v8 = v37;
        v9 = v38;
        v10 = v39;
        v11 = v40;
        v12 = v30;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 1);
          v16 = *v9;
          v17 = v9[2];
          v18 = v9[3];
          v19 = v9[4];
          v20 = *(v8 - 2);
          v21 = *(v8 - 1);
          v22 = *v8;
          v23 = v8[2];
          v24 = v8[3];
          v25 = v8[4];
          *(v10 - 1) = (5983 * v14 + 540672 + 20127 * v15 + 2032 * v16) >> 15;
          *v10 = (5983 * v17 + 540672 + 20127 * v18 + 2032 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (5983 * v20 + 540672 + 20127 * v21 + 2032 * v22) >> 15;
          *v13 = (5983 * v23 + 540672 + 20127 * v24 + 2032 * v25) >> 15;
          v26 = v19 + v16 + v22;
          v27 = v17 + v14 + v20 + v23;
          v28 = v18 + v15 + v21;
          *v11 = (33543339 * v24 - 11093 * v28 + 33551135 * v27 + 14392 * (v26 + v25) + 16842752) >> 17;
          v11[1] = (33541360 * v24 - 13072 * v28 + 33553113 * v26 + 33553113 * v25 + 14392 * v27 + 16842752) >> 17;
          v9 += 8;
          v8 += 8;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v40 += v33;
      v6 = v36 + 1;
      v39 += v32;
      v38 += v31;
      v37 += v31;
    }

    while (v36 + 1 != v34);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_420vITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v31 = a1 >> 1;
    v35 = a2 >> 1;
    v7 = *a5;
    v34 = a5[1];
    v41 = a6[1];
    v33 = 2 * *a5;
    v32 = 2 * *a3;
    v40 = *a6 + 1;
    v38 = *a4 + 4 + *a3;
    v39 = *a4 + 4;
    do
    {
      v37 = v6;
      if (a1 >= 2)
      {
        v8 = v38;
        v9 = v39;
        v10 = v40;
        v11 = v41;
        v12 = v31;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 3);
          v16 = *(v9 - 4);
          v17 = v9[2];
          v18 = v9[1];
          v20 = *v9;
          v9 += 8;
          v19 = v20;
          v21 = *(v8 - 2);
          v22 = *(v8 - 3);
          v23 = *(v8 - 4);
          v24 = v8[2];
          v25 = v8[1];
          v26 = *v8;
          v8 += 8;
          *(v10 - 1) = (5983 * v14 + 540672 + 20127 * v15 + 2032 * v16) >> 15;
          *v10 = (5983 * v17 + 540672 + 20127 * v18 + 2032 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (5983 * v21 + 540672 + 20127 * v22 + 2032 * v23) >> 15;
          *v13 = (5983 * v24 + 540672 + 20127 * v25 + 2032 * v26) >> 15;
          v27 = v19 + v16 + v23;
          v28 = v17 + v14 + v21 + v24;
          v29 = v18 + v15 + v22;
          *v11 = (33543339 * v25 - 11093 * v29 + 33551135 * v28 + 14392 * (v27 + v26) + 16842752) >> 17;
          v11[1] = (33541360 * v25 - 13072 * v29 + 33553113 * v27 + 33553113 * v26 + 14392 * v28 + 16842752) >> 17;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v41 += v34;
      v6 = v37 + 1;
      v40 += v33;
      v39 += v32;
      v38 += v32;
    }

    while (v37 + 1 != v35);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_420vITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v30 = a1 >> 1;
    v34 = a2 >> 1;
    v7 = *a5;
    v33 = a5[1];
    v40 = a6[1];
    v32 = 2 * *a5;
    v31 = 2 * *a3;
    v39 = *a6 + 1;
    v37 = *a4 + 2 + *a3;
    v38 = *a4 + 2;
    do
    {
      v36 = v6;
      if (a1 >= 2)
      {
        v8 = v37;
        v9 = v38;
        v10 = v39;
        v11 = v40;
        v12 = v30;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 1);
          v16 = *v9;
          v17 = v9[1];
          v18 = v9[2];
          v19 = v9[3];
          v20 = *(v8 - 2);
          v21 = *(v8 - 1);
          v22 = *v8;
          v23 = v8[1];
          v24 = v8[2];
          v25 = v8[3];
          *(v10 - 1) = (5983 * v14 + 540672 + 20127 * v15 + 2032 * v16) >> 15;
          *v10 = (5983 * v17 + 540672 + 20127 * v18 + 2032 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (5983 * v20 + 540672 + 20127 * v21 + 2032 * v22) >> 15;
          *v13 = (5983 * v23 + 540672 + 20127 * v24 + 2032 * v25) >> 15;
          v26 = v19 + v16 + v22;
          v27 = v17 + v14 + v20 + v23;
          v28 = v18 + v15 + v21;
          *v11 = (33543339 * v24 - 11093 * v28 + 33551135 * v27 + 14392 * (v26 + v25) + 16842752) >> 17;
          v11[1] = (33541360 * v24 - 13072 * v28 + 33553113 * v26 + 33553113 * v25 + 14392 * v27 + 16842752) >> 17;
          v9 += 6;
          v8 += 6;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v40 += v33;
      v6 = v36 + 1;
      v39 += v32;
      v38 += v31;
      v37 += v31;
    }

    while (v36 + 1 != v34);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_420fITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v35 = a1 >> 1;
    v39 = a2 >> 1;
    v7 = *a5;
    v38 = a5[1];
    v45 = a6[1];
    v36 = 2 * *a3;
    v37 = 2 * *a5;
    v44 = *a6 + 1;
    v42 = *a4 + 4 + *a3;
    v43 = *a4 + 4;
    do
    {
      v41 = v6;
      if (a1 >= 2)
      {
        v8 = v42;
        v9 = v43;
        v10 = v44;
        v11 = v45;
        v12 = v35;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 3);
          v15 = *(v9 - 4);
          v16 = v9[2];
          v17 = v9[1];
          v19 = *v9;
          v9 += 8;
          v18 = v19;
          v20 = *(v8 - 2);
          v21 = *(v8 - 3);
          v22 = *(v8 - 4);
          v23 = v8[2];
          v24 = v8[1];
          v25 = v17 + v14 + v21 + v24;
          v26 = *v8;
          v8 += 8;
          *(v10 - 1) = (23436 * v14 + 6966 * v13 + 2366 * v15 + 0x4000) >> 15;
          *v10 = (23436 * v17 + 6966 * v16 + 2366 * v18 + 0x4000) >> 15;
          v27 = &v10[v7];
          *(v27 - 1) = (23436 * v21 + 6966 * v20 + 2366 * v22 + 0x4000) >> 15;
          *v27 = (23436 * v24 + 6966 * v23 + 2366 * v26 + 0x4000) >> 15;
          v28 = v18 + v15 + v22 + v26;
          LODWORD(v27) = -3753 * (v16 + v13 + v20 + v23) + (v28 << 14) - 12629 * v25;
          v29 = v27 + 0x1000000;
          v30 = -14881 * v25 + ((v20 + v16 + v23 + v13) << 14);
          v31 = (v27 + 16842752) >> 17;
          if (v29 > 0x1FEFFFF)
          {
            LOBYTE(v31) = -1;
          }

          v32 = v30 - 1501 * v28;
          *v11 = v31;
          v33 = (v32 + 16842752) >> 17;
          if ((v32 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v33) = -1;
          }

          v11[1] = v33;
          v10 += 2;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v45 += v38;
      v6 = v41 + 1;
      v44 += v37;
      v43 += v36;
      v42 += v36;
    }

    while (v41 + 1 != v39);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_420fITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v34 = a1 >> 1;
    v38 = a2 >> 1;
    v7 = *a5;
    v37 = a5[1];
    v44 = a6[1];
    v35 = 2 * *a3;
    v36 = 2 * *a5;
    v43 = *a6 + 1;
    v41 = *a4 + 3 + *a3;
    v42 = *a4 + 3;
    do
    {
      v40 = v6;
      if (a1 >= 2)
      {
        v8 = v41;
        v9 = v42;
        v10 = v43;
        v11 = v44;
        v12 = v34;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 1);
          v15 = *v9;
          v16 = v9[2];
          v17 = v9[3];
          v18 = v9[4];
          v19 = *(v8 - 2);
          v20 = *(v8 - 1);
          v21 = *v8;
          v22 = v8[2];
          v23 = v8[3];
          v24 = v17 + v14 + v20 + v23;
          v25 = v8[4];
          *(v10 - 1) = (23436 * v14 + 6966 * v13 + 2366 * v15 + 0x4000) >> 15;
          *v10 = (23436 * v17 + 6966 * v16 + 2366 * v18 + 0x4000) >> 15;
          v26 = &v10[v7];
          *(v26 - 1) = (23436 * v20 + 6966 * v19 + 2366 * v21 + 0x4000) >> 15;
          *v26 = (23436 * v23 + 6966 * v22 + 2366 * v25 + 0x4000) >> 15;
          v27 = v18 + v15 + v21 + v25;
          LODWORD(v26) = -3753 * (v16 + v13 + v19 + v22) + (v27 << 14) - 12629 * v24;
          v28 = v26 + 0x1000000;
          v29 = -14881 * v24 + ((v19 + v16 + v22 + v13) << 14);
          v30 = (v26 + 16842752) >> 17;
          if (v28 > 0x1FEFFFF)
          {
            LOBYTE(v30) = -1;
          }

          v31 = v29 - 1501 * v27;
          *v11 = v30;
          v32 = (v31 + 16842752) >> 17;
          if ((v31 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v32) = -1;
          }

          v11[1] = v32;
          v10 += 2;
          v9 += 8;
          v8 += 8;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v44 += v37;
      v6 = v40 + 1;
      v43 += v36;
      v42 += v35;
      v41 += v35;
    }

    while (v40 + 1 != v38);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_420fITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v34 = a1 >> 1;
    v38 = a2 >> 1;
    v7 = *a5;
    v37 = a5[1];
    v44 = a6[1];
    v35 = 2 * *a3;
    v36 = 2 * *a5;
    v43 = *a6 + 1;
    v41 = *a4 + 2 + *a3;
    v42 = *a4 + 2;
    do
    {
      v40 = v6;
      if (a1 >= 2)
      {
        v8 = v41;
        v9 = v42;
        v10 = v43;
        v11 = v44;
        v12 = v34;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 1);
          v15 = *v9;
          v16 = v9[1];
          v17 = v9[2];
          v18 = v9[3];
          v19 = *(v8 - 2);
          v20 = *(v8 - 1);
          v21 = *v8;
          v22 = v8[1];
          v23 = v8[2];
          v24 = v17 + v14 + v20 + v23;
          v25 = v8[3];
          *(v10 - 1) = (23436 * v14 + 6966 * v13 + 2366 * v15 + 0x4000) >> 15;
          *v10 = (23436 * v17 + 6966 * v16 + 2366 * v18 + 0x4000) >> 15;
          v26 = &v10[v7];
          *(v26 - 1) = (23436 * v20 + 6966 * v19 + 2366 * v21 + 0x4000) >> 15;
          *v26 = (23436 * v23 + 6966 * v22 + 2366 * v25 + 0x4000) >> 15;
          v27 = v18 + v15 + v21 + v25;
          LODWORD(v26) = -3753 * (v16 + v13 + v19 + v22) + (v27 << 14) - 12629 * v24;
          v28 = v26 + 0x1000000;
          v29 = -14881 * v24 + ((v19 + v16 + v22 + v13) << 14);
          v30 = (v26 + 16842752) >> 17;
          if (v28 > 0x1FEFFFF)
          {
            LOBYTE(v30) = -1;
          }

          v31 = v29 - 1501 * v27;
          *v11 = v30;
          v32 = (v31 + 16842752) >> 17;
          if ((v31 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v32) = -1;
          }

          v11[1] = v32;
          v10 += 2;
          v9 += 6;
          v8 += 6;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v44 += v37;
      v6 = v40 + 1;
      v43 += v36;
      v42 += v35;
      v41 += v35;
    }

    while (v40 + 1 != v38);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_OneComponentITU709(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = 2 * *a5;
    v9 = 2 * *a3;
    v10 = *a6 + 1;
    v11 = *a4 + 4;
    v12 = (v11 + *a3);
    do
    {
      if (a1 >= 2)
      {
        v13 = v12;
        v14 = v11;
        v15 = v10;
        v16 = a1 >> 1;
        do
        {
          v17 = &v15[v7];
          v18 = *(v14 - 2);
          v19 = *(v14 - 3);
          v20 = *(v14 - 4);
          v21 = v14[2];
          v22 = v14[1];
          v24 = *v14;
          v14 += 8;
          v23 = v24;
          v25 = *(v13 - 2);
          v26 = *(v13 - 3);
          v27 = *(v13 - 4);
          v28 = v13[2];
          v29 = v13[1];
          v30 = *v13;
          v13 += 8;
          *(v15 - 1) = (23436 * v19 + 6966 * v18 + 2366 * v20 + 0x4000) >> 15;
          *v15 = (23436 * v22 + 6966 * v21 + 2366 * v23 + 0x4000) >> 15;
          v15 += 2;
          *(v17 - 1) = (23436 * v26 + 6966 * v25 + 2366 * v27 + 0x4000) >> 15;
          *v17 = (23436 * v29 + 6966 * v28 + 2366 * v30 + 0x4000) >> 15;
          --v16;
        }

        while (v16);
      }

      ++v6;
      v10 += v8;
      v11 += v9;
      v12 += v9;
    }

    while (v6 != a2 >> 1);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_y420ITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a1 >> 1;
    v41 = a2 >> 1;
    v8 = *a5;
    v40 = a5[1];
    v39 = a5[2];
    v9 = a6[1];
    v38 = 2 * *a5;
    v37 = 2 * *a3;
    v46 = *a6 + 1;
    v44 = *a4 + 3 + *a3;
    v45 = *a4 + 3;
    v10 = a6[2];
    do
    {
      v43 = v6;
      if (a1 >= 2)
      {
        v11 = 0;
        v13 = v44;
        v12 = v45;
        v14 = v46;
        do
        {
          v15 = &v14[v8];
          v16 = v8;
          v17 = v7;
          v18 = *(v12 - 2);
          v19 = *(v12 - 1);
          v20 = *v12;
          v21 = v12[2];
          v22 = v12[3];
          v23 = v12[4];
          v24 = *(v13 - 2);
          v25 = *(v13 - 1);
          v26 = *v13;
          v27 = v13[2];
          v28 = v13[3];
          v29 = v13[4];
          *(v14 - 1) = (7371 * v18 + 540672 + 19024 * v19 + 1664 * v20) >> 15;
          *v14 = (7371 * v21 + 540672 + 19024 * v22 + 1664 * v23) >> 15;
          v14 += 2;
          *(v15 - 1) = (7371 * v24 + 540672 + 19024 * v25 + 1664 * v26) >> 15;
          *v15 = (7371 * v27 + 540672 + 19024 * v28 + 1664 * v29) >> 15;
          v30 = v23 + v20 + v26;
          v31 = v21 + v18 + v24 + v27;
          v32 = v22 + v19 + v25;
          v33 = 33544090 * v28 - 10342 * v32 + 33550426 * v31 + 14350 * (v30 + v29);
          v34 = 33541237 * v28 - 13195 * v32 + 33553279 * v30 + 33553279 * v29 + 14350 * v31;
          v35 = v33 + 16842752;
          v7 = v17;
          v8 = v16;
          *(v9 + v11) = v35 >> 17;
          *(v10 + v11++) = (v34 + 16842752) >> 17;
          v13 += 8;
          v12 += 8;
        }

        while (v7 != v11);
      }

      v9 += v40;
      v10 += v39;
      v6 = v43 + 1;
      v46 += v38;
      v44 += v37;
      v45 += v37;
    }

    while (v43 + 1 != v41);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_y420ITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = a1 >> 1;
    v42 = a2 >> 1;
    v8 = *a5;
    v41 = a5[1];
    v40 = a5[2];
    v9 = a6[1];
    v39 = 2 * *a5;
    v38 = 2 * *a3;
    v47 = *a6 + 1;
    v45 = *a4 + 4 + *a3;
    v46 = *a4 + 4;
    v10 = a6[2];
    do
    {
      v44 = v6;
      if (a1 >= 2)
      {
        v11 = 0;
        v13 = v45;
        v12 = v46;
        v14 = v47;
        do
        {
          v15 = &v14[v8];
          v16 = v8;
          v17 = v7;
          v18 = *(v12 - 2);
          v19 = *(v12 - 3);
          v20 = *(v12 - 4);
          v21 = v12[2];
          v22 = v12[1];
          v24 = *v12;
          v12 += 8;
          v23 = v24;
          v25 = *(v13 - 2);
          v26 = *(v13 - 3);
          v27 = *(v13 - 4);
          v28 = v13[2];
          v29 = v13[1];
          v30 = *v13;
          v13 += 8;
          *(v14 - 1) = (7371 * v18 + 540672 + 19024 * v19 + 1664 * v20) >> 15;
          *v14 = (7371 * v21 + 540672 + 19024 * v22 + 1664 * v23) >> 15;
          v14 += 2;
          *(v15 - 1) = (7371 * v25 + 540672 + 19024 * v26 + 1664 * v27) >> 15;
          *v15 = (7371 * v28 + 540672 + 19024 * v29 + 1664 * v30) >> 15;
          v31 = v23 + v20 + v27;
          v32 = v21 + v18 + v25 + v28;
          v33 = v22 + v19 + v26;
          v34 = 33544090 * v29 - 10342 * v33 + 33550426 * v32 + 14350 * (v31 + v30);
          v35 = 33541237 * v29 - 13195 * v33 + 33553279 * v31 + 33553279 * v30 + 14350 * v32;
          v36 = v34 + 16842752;
          v7 = v17;
          v8 = v16;
          *(v9 + v11) = v36 >> 17;
          *(v10 + v11++) = (v35 + 16842752) >> 17;
        }

        while (v7 != v11);
      }

      v9 += v41;
      v10 += v40;
      v6 = v44 + 1;
      v47 += v39;
      v45 += v38;
      v46 += v38;
    }

    while (v44 + 1 != v42);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_420vITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v30 = a1 >> 1;
    v34 = a2 >> 1;
    v7 = *a5;
    v33 = a5[1];
    v40 = a6[1];
    v32 = 2 * *a5;
    v31 = 2 * *a3;
    v39 = *a6 + 1;
    v37 = *a4 + 3 + *a3;
    v38 = *a4 + 3;
    do
    {
      v36 = v6;
      if (a1 >= 2)
      {
        v8 = v37;
        v9 = v38;
        v10 = v39;
        v11 = v40;
        v12 = v30;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 1);
          v16 = *v9;
          v17 = v9[2];
          v18 = v9[3];
          v19 = v9[4];
          v20 = *(v8 - 2);
          v21 = *(v8 - 1);
          v22 = *v8;
          v23 = v8[2];
          v24 = v8[3];
          v25 = v8[4];
          *(v10 - 1) = (7371 * v14 + 540672 + 19024 * v15 + 1664 * v16) >> 15;
          *v10 = (7371 * v17 + 540672 + 19024 * v18 + 1664 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (7371 * v20 + 540672 + 19024 * v21 + 1664 * v22) >> 15;
          *v13 = (7371 * v23 + 540672 + 19024 * v24 + 1664 * v25) >> 15;
          v26 = v19 + v16 + v22;
          v27 = v17 + v14 + v20 + v23;
          v28 = v18 + v15 + v21;
          *v11 = (33544090 * v24 - 10342 * v28 + 33550426 * v27 + 14350 * (v26 + v25) + 16842752) >> 17;
          v11[1] = (33541237 * v24 - 13195 * v28 + 33553279 * v26 + 33553279 * v25 + 14350 * v27 + 16842752) >> 17;
          v9 += 8;
          v8 += 8;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v40 += v33;
      v6 = v36 + 1;
      v39 += v32;
      v38 += v31;
      v37 += v31;
    }

    while (v36 + 1 != v34);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_420vITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v31 = a1 >> 1;
    v35 = a2 >> 1;
    v7 = *a5;
    v34 = a5[1];
    v41 = a6[1];
    v33 = 2 * *a5;
    v32 = 2 * *a3;
    v40 = *a6 + 1;
    v38 = *a4 + 4 + *a3;
    v39 = *a4 + 4;
    do
    {
      v37 = v6;
      if (a1 >= 2)
      {
        v8 = v38;
        v9 = v39;
        v10 = v40;
        v11 = v41;
        v12 = v31;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 3);
          v16 = *(v9 - 4);
          v17 = v9[2];
          v18 = v9[1];
          v20 = *v9;
          v9 += 8;
          v19 = v20;
          v21 = *(v8 - 2);
          v22 = *(v8 - 3);
          v23 = *(v8 - 4);
          v24 = v8[2];
          v25 = v8[1];
          v26 = *v8;
          v8 += 8;
          *(v10 - 1) = (7371 * v14 + 540672 + 19024 * v15 + 1664 * v16) >> 15;
          *v10 = (7371 * v17 + 540672 + 19024 * v18 + 1664 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (7371 * v21 + 540672 + 19024 * v22 + 1664 * v23) >> 15;
          *v13 = (7371 * v24 + 540672 + 19024 * v25 + 1664 * v26) >> 15;
          v27 = v19 + v16 + v23;
          v28 = v17 + v14 + v21 + v24;
          v29 = v18 + v15 + v22;
          *v11 = (33544090 * v25 - 10342 * v29 + 33550426 * v28 + 14350 * (v27 + v26) + 16842752) >> 17;
          v11[1] = (33541237 * v25 - 13195 * v29 + 33553279 * v27 + 33553279 * v26 + 14350 * v28 + 16842752) >> 17;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v41 += v34;
      v6 = v37 + 1;
      v40 += v33;
      v39 += v32;
      v38 += v32;
    }

    while (v37 + 1 != v35);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_420vITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v30 = a1 >> 1;
    v34 = a2 >> 1;
    v7 = *a5;
    v33 = a5[1];
    v40 = a6[1];
    v32 = 2 * *a5;
    v31 = 2 * *a3;
    v39 = *a6 + 1;
    v37 = *a4 + 2 + *a3;
    v38 = *a4 + 2;
    do
    {
      v36 = v6;
      if (a1 >= 2)
      {
        v8 = v37;
        v9 = v38;
        v10 = v39;
        v11 = v40;
        v12 = v30;
        do
        {
          v13 = &v10[v7];
          v14 = *(v9 - 2);
          v15 = *(v9 - 1);
          v16 = *v9;
          v17 = v9[1];
          v18 = v9[2];
          v19 = v9[3];
          v20 = *(v8 - 2);
          v21 = *(v8 - 1);
          v22 = *v8;
          v23 = v8[1];
          v24 = v8[2];
          v25 = v8[3];
          *(v10 - 1) = (7371 * v14 + 540672 + 19024 * v15 + 1664 * v16) >> 15;
          *v10 = (7371 * v17 + 540672 + 19024 * v18 + 1664 * v19) >> 15;
          v10 += 2;
          *(v13 - 1) = (7371 * v20 + 540672 + 19024 * v21 + 1664 * v22) >> 15;
          *v13 = (7371 * v23 + 540672 + 19024 * v24 + 1664 * v25) >> 15;
          v26 = v19 + v16 + v22;
          v27 = v17 + v14 + v20 + v23;
          v28 = v18 + v15 + v21;
          *v11 = (33544090 * v24 - 10342 * v28 + 33550426 * v27 + 14350 * (v26 + v25) + 16842752) >> 17;
          v11[1] = (33541237 * v24 - 13195 * v28 + 33553279 * v26 + 33553279 * v25 + 14350 * v27 + 16842752) >> 17;
          v9 += 6;
          v8 += 6;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v40 += v33;
      v6 = v36 + 1;
      v39 += v32;
      v38 += v31;
      v37 += v31;
    }

    while (v36 + 1 != v34);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_420fITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v35 = a1 >> 1;
    v39 = a2 >> 1;
    v7 = *a5;
    v38 = a5[1];
    v45 = a6[1];
    v36 = 2 * *a3;
    v37 = 2 * *a5;
    v44 = *a6 + 1;
    v42 = *a4 + 4 + *a3;
    v43 = *a4 + 4;
    do
    {
      v41 = v6;
      if (a1 >= 2)
      {
        v8 = v42;
        v9 = v43;
        v10 = v44;
        v11 = v45;
        v12 = v35;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 3);
          v15 = *(v9 - 4);
          v16 = v9[2];
          v17 = v9[1];
          v19 = *v9;
          v9 += 8;
          v18 = v19;
          v20 = *(v8 - 2);
          v21 = *(v8 - 3);
          v22 = *(v8 - 4);
          v23 = v8[2];
          v24 = v8[1];
          v25 = v17 + v14 + v21 + v24;
          v26 = *v8;
          v8 += 8;
          *(v10 - 1) = (22217 * v14 + 8608 * v13 + 1943 * v15 + 0x4000) >> 15;
          *v10 = (22217 * v17 + 8608 * v16 + 1943 * v18 + 0x4000) >> 15;
          v27 = &v10[v7];
          *(v27 - 1) = (22217 * v21 + 8608 * v20 + 1943 * v22 + 0x4000) >> 15;
          *v27 = (22217 * v24 + 8608 * v23 + 1943 * v26 + 0x4000) >> 15;
          v28 = v18 + v15 + v22 + v26;
          LODWORD(v27) = -4574 * (v16 + v13 + v20 + v23) + (v28 << 14) - 11808 * v25;
          v29 = v27 + 0x1000000;
          v30 = -15065 * v25 + ((v20 + v16 + v23 + v13) << 14);
          v31 = (v27 + 16842752) >> 17;
          if (v29 > 0x1FEFFFF)
          {
            LOBYTE(v31) = -1;
          }

          v32 = v30 - 1317 * v28;
          *v11 = v31;
          v33 = (v32 + 16842752) >> 17;
          if ((v32 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v33) = -1;
          }

          v11[1] = v33;
          v10 += 2;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v45 += v38;
      v6 = v41 + 1;
      v44 += v37;
      v43 += v36;
      v42 += v36;
    }

    while (v41 + 1 != v39);
  }

  return 0;
}

uint64_t vt_Copy_32ARGB_420fITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v34 = a1 >> 1;
    v38 = a2 >> 1;
    v7 = *a5;
    v37 = a5[1];
    v44 = a6[1];
    v35 = 2 * *a3;
    v36 = 2 * *a5;
    v43 = *a6 + 1;
    v41 = *a4 + 3 + *a3;
    v42 = *a4 + 3;
    do
    {
      v40 = v6;
      if (a1 >= 2)
      {
        v8 = v41;
        v9 = v42;
        v10 = v43;
        v11 = v44;
        v12 = v34;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 1);
          v15 = *v9;
          v16 = v9[2];
          v17 = v9[3];
          v18 = v9[4];
          v19 = *(v8 - 2);
          v20 = *(v8 - 1);
          v21 = *v8;
          v22 = v8[2];
          v23 = v8[3];
          v24 = v17 + v14 + v20 + v23;
          v25 = v8[4];
          *(v10 - 1) = (22217 * v14 + 8608 * v13 + 1943 * v15 + 0x4000) >> 15;
          *v10 = (22217 * v17 + 8608 * v16 + 1943 * v18 + 0x4000) >> 15;
          v26 = &v10[v7];
          *(v26 - 1) = (22217 * v20 + 8608 * v19 + 1943 * v21 + 0x4000) >> 15;
          *v26 = (22217 * v23 + 8608 * v22 + 1943 * v25 + 0x4000) >> 15;
          v27 = v18 + v15 + v21 + v25;
          LODWORD(v26) = -4574 * (v16 + v13 + v19 + v22) + (v27 << 14) - 11808 * v24;
          v28 = v26 + 0x1000000;
          v29 = -15065 * v24 + ((v19 + v16 + v22 + v13) << 14);
          v30 = (v26 + 16842752) >> 17;
          if (v28 > 0x1FEFFFF)
          {
            LOBYTE(v30) = -1;
          }

          v31 = v29 - 1317 * v27;
          *v11 = v30;
          v32 = (v31 + 16842752) >> 17;
          if ((v31 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v32) = -1;
          }

          v11[1] = v32;
          v10 += 2;
          v9 += 8;
          v8 += 8;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v44 += v37;
      v6 = v40 + 1;
      v43 += v36;
      v42 += v35;
      v41 += v35;
    }

    while (v40 + 1 != v38);
  }

  return 0;
}

uint64_t vt_Copy_24RGB_420fITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v34 = a1 >> 1;
    v38 = a2 >> 1;
    v7 = *a5;
    v37 = a5[1];
    v44 = a6[1];
    v35 = 2 * *a3;
    v36 = 2 * *a5;
    v43 = *a6 + 1;
    v41 = *a4 + 2 + *a3;
    v42 = *a4 + 2;
    do
    {
      v40 = v6;
      if (a1 >= 2)
      {
        v8 = v41;
        v9 = v42;
        v10 = v43;
        v11 = v44;
        v12 = v34;
        do
        {
          v13 = *(v9 - 2);
          v14 = *(v9 - 1);
          v15 = *v9;
          v16 = v9[1];
          v17 = v9[2];
          v18 = v9[3];
          v19 = *(v8 - 2);
          v20 = *(v8 - 1);
          v21 = *v8;
          v22 = v8[1];
          v23 = v8[2];
          v24 = v17 + v14 + v20 + v23;
          v25 = v8[3];
          *(v10 - 1) = (22217 * v14 + 8608 * v13 + 1943 * v15 + 0x4000) >> 15;
          *v10 = (22217 * v17 + 8608 * v16 + 1943 * v18 + 0x4000) >> 15;
          v26 = &v10[v7];
          *(v26 - 1) = (22217 * v20 + 8608 * v19 + 1943 * v21 + 0x4000) >> 15;
          *v26 = (22217 * v23 + 8608 * v22 + 1943 * v25 + 0x4000) >> 15;
          v27 = v18 + v15 + v21 + v25;
          LODWORD(v26) = -4574 * (v16 + v13 + v19 + v22) + (v27 << 14) - 11808 * v24;
          v28 = v26 + 0x1000000;
          v29 = -15065 * v24 + ((v19 + v16 + v22 + v13) << 14);
          v30 = (v26 + 16842752) >> 17;
          if (v28 > 0x1FEFFFF)
          {
            LOBYTE(v30) = -1;
          }

          v31 = v29 - 1317 * v27;
          *v11 = v30;
          v32 = (v31 + 16842752) >> 17;
          if ((v31 + 0x1000000) > 0x1FEFFFF)
          {
            LOBYTE(v32) = -1;
          }

          v11[1] = v32;
          v10 += 2;
          v9 += 6;
          v8 += 6;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      v44 += v37;
      v6 = v40 + 1;
      v43 += v36;
      v42 += v35;
      v41 += v35;
    }

    while (v40 + 1 != v38);
  }

  return 0;
}

uint64_t vt_Copy_32BGRA_OneComponentITU2020(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2 >= 2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = 2 * *a5;
    v9 = 2 * *a3;
    v10 = *a6 + 1;
    v11 = *a4 + 4;
    v12 = (v11 + *a3);
    do
    {
      if (a1 >= 2)
      {
        v13 = v12;
        v14 = v11;
        v15 = v10;
        v16 = a1 >> 1;
        do
        {
          v17 = &v15[v7];
          v18 = *(v14 - 2);
          v19 = *(v14 - 3);
          v20 = *(v14 - 4);
          v21 = v14[2];
          v22 = v14[1];
          v24 = *v14;
          v14 += 8;
          v23 = v24;
          v25 = *(v13 - 2);
          v26 = *(v13 - 3);
          v27 = *(v13 - 4);
          v28 = v13[2];
          v29 = v13[1];
          v30 = *v13;
          v13 += 8;
          *(v15 - 1) = (22217 * v19 + 8608 * v18 + 1943 * v20 + 0x4000) >> 15;
          *v15 = (22217 * v22 + 8608 * v21 + 1943 * v23 + 0x4000) >> 15;
          v15 += 2;
          *(v17 - 1) = (22217 * v26 + 8608 * v25 + 1943 * v27 + 0x4000) >> 15;
          *v17 = (22217 * v29 + 8608 * v28 + 1943 * v30 + 0x4000) >> 15;
          --v16;
        }

        while (v16);
      }

      ++v6;
      v10 += v8;
      v11 += v9;
      v12 += v9;
    }

    while (v6 != a2 >> 1);
  }

  return 0;
}

uint64_t vt_Copy_y420ITU601_32ARGB_vec(unint64_t a1, unint64_t a2, uint64_t *a3, uint8x8_t **a4, uint64_t *a5, char **a6)
{
  v6 = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a1 >> 1;
  v11 = *a6;
  v137 = a2;
  if (a2 >= 2)
  {
    v12 = 0;
    v144 = a2 >> 1;
    v13 = *a3;
    v143 = a3[1];
    v142 = a3[2];
    v14 = *a5;
    v15 = 4 * (a1 >> 3);
    v141 = 2 * *a3;
    v16 = v10 - v15;
    v17.i64[0] = 0x7F0000007FLL;
    v17.i64[1] = 0x7F0000007FLL;
    v18 = vdupq_n_s32(0xFFFFCDDC);
    v19 = vdupq_n_s32(0xFFFF97F2);
    v20 = vdupq_n_s32(0x10235u);
    v21 = vdupq_n_s32(0xCC4Bu);
    v22 = vdupq_n_s16(0x950Bu);
    v23 = vdupq_n_s32(0xFFF6AF50);
    v24 = -1;
    v138 = a1 >> 1;
    do
    {
      if (v6 >= 8)
      {
        v31 = 0;
        v30 = v7;
        v27 = v11;
        do
        {
          v32 = &v27[v14];
          v33 = vaddw_u16(v17, *&vmovl_u8(v8->u32[v31 / 4]));
          v34 = vaddw_u16(v17, *&vmovl_u8(v9->u32[v31 / 4]));
          v35 = vmlaq_s32(vmulq_s32(v33, v18), v34, v19);
          v36 = vmulq_s32(v33, v20);
          v37 = vmulq_s32(v34, v21);
          v38 = vzip1q_s32(v36, v36);
          v39 = vzip2q_s32(v36, v36);
          v40 = vzip1q_s32(v37, v37);
          v41 = vmovl_u8(*v30);
          v42 = vmovl_u8(*(v30 + v13));
          v43 = vzip2q_s32(v37, v37);
          v44 = vmlal_u16(v23, *v41.i8, *v22.i8);
          v45 = vmlal_high_u16(v23, v41, v22);
          v46 = vzip1q_s32(v35, v35);
          v47 = vmlal_u16(v23, *v42.i8, *v22.i8);
          v48 = vmlal_high_u16(v23, v42, v22);
          v49 = vzip2q_s32(v35, v35);
          v145.val[1] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v40, v44), 0xFuLL), vaddq_s32(v43, v45), 0xFuLL));
          v145.val[2] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v46, v44), 0xFuLL), vaddq_s32(v49, v45), 0xFuLL));
          v50 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v40, v47), 0xFuLL), vaddq_s32(v43, v48), 0xFuLL));
          v145.val[3] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v38, v44), 0xFuLL), vaddq_s32(v39, v45), 0xFuLL));
          v51 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v46, v47), 0xFuLL), vaddq_s32(v49, v48), 0xFuLL));
          v52 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v38, v47), 0xFuLL), vaddq_s32(v39, v48), 0xFuLL));
          v145.val[0] = -1;
          vst4_s8(v27, v145);
          v27 += 32;
          vst4_s8(v32, *&v24);
          ++v30;
          v31 += 4;
        }

        while (v15 != v31);
        v25 = v30 + v13;
        v29 = v8 + v31;
        v28 = v9 + v31;
        v26 = &v27[v14];
      }

      else
      {
        v25 = v7 + v13;
        v26 = &v11[v14];
        v27 = v11;
        v28 = v9;
        v29 = v8;
        v30 = v7;
      }

      if (v10 > v15)
      {
        v140 = v12;
        v53 = 0;
        do
        {
          v54 = v29[v53] - 128;
          v55 = v30->u8[0];
          v56 = v30->u8[1];
          v30 = (v30 + 2);
          v57 = 38155 * v55 - 610480;
          v58 = v28[v53] - 128;
          v59 = -12836 * v54 - 26638 * v58;
          v60 = 66101 * v54;
          v61 = 52299 * v58;
          v62 = (v57 + 52299 * v58) >> 15;
          if (v62 >= 255)
          {
            v62 = 255;
          }

          v63 = v62 & ~(v62 >> 31);
          v64 = (v59 + v57) >> 15;
          if (v64 >= 255)
          {
            v64 = 255;
          }

          v65 = v64 & ~(v64 >> 31);
          v66 = (v57 + v60) >> 15;
          if (v66 >= 255)
          {
            v66 = 255;
          }

          v67 = v66 & ~(v66 >> 31);
          v68 = 38155 * v56 - 610480;
          v69 = (v68 + v61) >> 15;
          if (v69 >= 255)
          {
            v69 = 255;
          }

          v70 = v69 & ~(v69 >> 31);
          v71 = (v68 + v59) >> 15;
          if (v71 >= 255)
          {
            v71 = 255;
          }

          v72 = v71 & ~(v71 >> 31);
          v73 = (v68 + v60) >> 15;
          if (v73 >= 255)
          {
            v73 = 255;
          }

          *v27 = -1;
          v27[1] = v63;
          v27[2] = v65;
          v27[3] = v67;
          v27[4] = -1;
          v27[5] = v70;
          v27[6] = v72;
          v27[7] = v73 & ~(v73 >> 31);
          v27 += 8;
          v74 = v25[1];
          v75 = 38155 * *v25 - 610480;
          v25 += 2;
          v76 = (v75 + v61) >> 15;
          if (v76 >= 255)
          {
            v76 = 255;
          }

          v77 = v76 & ~(v76 >> 31);
          v78 = (v75 + v59) >> 15;
          if (v78 >= 255)
          {
            v78 = 255;
          }

          v79 = (v75 + v60) >> 15;
          v80 = v78 & ~(v78 >> 31);
          if (v79 >= 255)
          {
            v79 = 255;
          }

          v81 = 38155 * v74 - 610480;
          v82 = (v81 + v61) >> 15;
          v83 = v79 & ~(v79 >> 31);
          if (v82 >= 255)
          {
            v82 = 255;
          }

          v84 = (v81 + v59) >> 15;
          v85 = v82 & ~(v82 >> 31);
          if (v84 >= 255)
          {
            v84 = 255;
          }

          v86 = (v81 + v60) >> 15;
          *v26 = -1;
          v87 = v84 & ~(v84 >> 31);
          v26[1] = v77;
          if (v86 >= 255)
          {
            v86 = 255;
          }

          v26[2] = v80;
          v26[4] = -1;
          v26[3] = v83;
          v26[5] = v85;
          v26[6] = v87;
          v26[7] = v86 & ~(v86 >> 31);
          v26 += 8;
          ++v53;
        }

        while (v16 != v53);
        v29 += v53;
        v28 += v53;
        v10 = v138;
        v6 = a1;
        v12 = v140;
      }

      if (v6)
      {
        v88 = *v29 - 128;
        v89 = *v28 - 128;
        v90 = 38155 * v30->u8[0] - 610480;
        v91 = -12836 * v88 - 26638 * v89;
        v92 = 66101 * v88;
        v93 = 52299 * v89;
        v94 = (v90 + v93) >> 15;
        if (v94 >= 255)
        {
          v94 = 255;
        }

        v95 = v94 & ~(v94 >> 31);
        v96 = (v91 + v90) >> 15;
        if (v96 >= 255)
        {
          v96 = 255;
        }

        v97 = v96 & ~(v96 >> 31);
        v98 = (v90 + v92) >> 15;
        if (v98 >= 255)
        {
          v98 = 255;
        }

        *v27 = -1;
        v27[1] = v95;
        v27[2] = v97;
        v27[3] = v98 & ~(v98 >> 31);
        v99 = 38155 * *v25 - 610480;
        v100 = (v99 + v93) >> 15;
        if (v100 >= 255)
        {
          v100 = 255;
        }

        v101 = v100 & ~(v100 >> 31);
        v102 = (v99 + v91) >> 15;
        if (v102 >= 255)
        {
          v102 = 255;
        }

        v103 = v102 & ~(v102 >> 31);
        v104 = (v99 + v92) >> 15;
        if (v104 >= 255)
        {
          v104 = 255;
        }

        *v26 = -1;
        v26[1] = v101;
        v26[2] = v103;
        v26[3] = v104 & ~(v104 >> 31);
      }

      v7 = (v7 + v141);
      v8 = (v8 + v143);
      v9 = (v9 + v142);
      v11 += 2 * v14;
      ++v12;
    }

    while (v12 != v144);
  }

  if (v137)
  {
    if (v6 >= 2)
    {
      do
      {
        v105 = v8->u8[0];
        v8 = (v8 + 1);
        v106 = v105 - 128;
        v107 = v9->u8[0];
        v9 = (v9 + 1);
        v108 = v7->u8[0];
        v109 = v10;
        v110 = v7->u8[1];
        v7 = (v7 + 2);
        v111 = 38155 * v108 - 610480;
        v112 = -12836 * v106 - 26638 * (v107 - 128);
        v113 = 66101 * v106;
        v114 = 52299 * (v107 - 128);
        v115 = (v111 + v114) >> 15;
        if (v115 >= 255)
        {
          v115 = 255;
        }

        v116 = v115 & ~(v115 >> 31);
        v117 = (v112 + v111) >> 15;
        if (v117 >= 255)
        {
          v117 = 255;
        }

        v118 = v117 & ~(v117 >> 31);
        v119 = (v111 + v113) >> 15;
        if (v119 >= 255)
        {
          v119 = 255;
        }

        v120 = v119 & ~(v119 >> 31);
        v121 = 38155 * v110 - 610480;
        v122 = (v121 + v114) >> 15;
        if (v122 >= 255)
        {
          v122 = 255;
        }

        v123 = v122 & ~(v122 >> 31);
        v124 = (v121 + v112) >> 15;
        if (v124 >= 255)
        {
          v124 = 255;
        }

        v125 = v124 & ~(v124 >> 31);
        v126 = (v121 + v113) >> 15;
        *v11 = -1;
        v11[1] = v116;
        if (v126 >= 255)
        {
          v126 = 255;
        }

        v11[2] = v118;
        v11[3] = v120;
        v11[4] = -1;
        v11[5] = v123;
        v11[6] = v125;
        v11[7] = v126 & ~(v126 >> 31);
        v11 += 8;
        v10 = v109 - 1;
      }

      while (v109 != 1);
    }

    if (v6)
    {
      v127 = v8->u8[0] - 128;
      v128 = v9->u8[0] - 128;
      v129 = 38155 * v7->u8[0] - 610480;
      v130 = -12836 * v127 - 26638 * v128;
      v131 = (v129 + 52299 * v128) >> 15;
      if (v131 >= 255)
      {
        v131 = 255;
      }

      v132 = v131 & ~(v131 >> 31);
      v133 = (v130 + v129) >> 15;
      if (v133 >= 255)
      {
        v133 = 255;
      }

      v134 = v133 & ~(v133 >> 31);
      v135 = (v129 + 66101 * v127) >> 15;
      if (v135 >= 255)
      {
        v135 = 255;
      }

      *v11 = -1;
      v11[1] = v132;
      v11[2] = v134;
      v11[3] = v135 & ~(v135 >> 31);
    }
  }

  return 0;
}

uint64_t vt_Copy_420vITU601_32ARGB_vec(unint64_t a1, unint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, char **a6)
{
  v6 = a1 >> 1;
  v7 = *a4;
  v8 = a4[1];
  v9 = v8 + 1;
  v10 = *a6;
  v138 = a2;
  if (a2 >= 2)
  {
    v11 = a2 >> 1;
    v12 = 0;
    v14 = *a3;
    v13 = a3[1];
    v15 = *a5;
    v146 = 2 * v14;
    v147 = 4 * (a1 >> 3);
    v145 = a1;
    v141 = v14;
    v142 = v11;
    v16 = &v7[v14];
    v143 = a1 >> 3;
    v144 = a1 >> 1;
    v139 = v6 - v147;
    v140 = v13;
    v17 = vdupq_n_s32(0xFFFFCDDC);
    v18 = vdupq_n_s32(0xFFFF97F2);
    v19 = vdupq_n_s32(0x10235u);
    v20 = vdupq_n_s32(0xCC4Bu);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vdupq_n_s16(0x950Bu);
    v23 = vdupq_n_s32(0xFFF6AF50);
    v24 = -1;
    do
    {
      if (a1 >= 8)
      {
        v31 = 0;
        v32 = v143;
        v27 = v10;
        do
        {
          v33 = &v27[v15];
          v34 = *&v8[v31];
          v35 = vaddw_u16(v21, *&vmovl_u8(vuzp1_s8(v34, *v17.i8)));
          v36 = vaddw_u16(v21, *&vmovl_u8(vuzp2_s8(v34, *v17.i8)));
          v37 = vmlaq_s32(vmulq_s32(v35, v17), v36, v18);
          v38 = vmulq_s32(v35, v19);
          v39 = vmulq_s32(v36, v20);
          v40 = vzip1q_s32(v38, v38);
          v41 = vzip2q_s32(v38, v38);
          v42 = vzip1q_s32(v39, v39);
          v43 = vmovl_u8(*&v7[v31]);
          v44 = vmovl_u8(*&v16[v31]);
          v45 = vzip1q_s32(v37, v37);
          v46 = vmlal_u16(v23, *v43.i8, *v22.i8);
          v47 = vmlal_high_u16(v23, v43, v22);
          v48 = vzip2q_s32(v39, v39);
          v49 = vmlal_u16(v23, *v44.i8, *v22.i8);
          v50 = vmlal_high_u16(v23, v44, v22);
          v51 = vzip2q_s32(v37, v37);
          v52 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v42, v46), 0xFuLL), vaddq_s32(v48, v47), 0xFuLL));
          v53 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v45, v46), 0xFuLL), vaddq_s32(v51, v47), 0xFuLL));
          v148.val[1] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v42, v49), 0xFuLL), vaddq_s32(v48, v50), 0xFuLL));
          v54 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v40, v46), 0xFuLL), vaddq_s32(v41, v47), 0xFuLL));
          v148.val[2] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v45, v49), 0xFuLL), vaddq_s32(v51, v50), 0xFuLL));
          vst4_s8(v27, *&v24);
          v27 += 32;
          v148.val[3] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v40, v49), 0xFuLL), vaddq_s32(v41, v50), 0xFuLL));
          v148.val[0] = -1;
          vst4_s8(v33, v148);
          v31 += 8;
          --v32;
        }

        while (v32);
        v30 = &v7[v31];
        v25 = &v16[v31];
        v29 = &v8[v31];
        v28 = &v8[v31 + 1];
        v26 = &v27[v15];
      }

      else
      {
        v25 = &v7[v141];
        v26 = &v10[v15];
        v27 = v10;
        v28 = v9;
        v29 = v8;
        v30 = v7;
      }

      if (v6 > v147)
      {
        v55 = v139;
        do
        {
          v56 = *v29;
          v29 += 2;
          v57 = v56 - 128;
          v58 = *v28;
          v28 += 2;
          v59 = 38155 * *v30 - 610480;
          v60 = -12836 * v57 - 26638 * (v58 - 128);
          v61 = 66101 * v57;
          v62 = 52299 * (v58 - 128);
          v63 = (v59 + v62) >> 15;
          if (v63 >= 255)
          {
            v63 = 255;
          }

          v64 = v63 & ~(v63 >> 31);
          v65 = (v60 + v59) >> 15;
          if (v65 >= 255)
          {
            v65 = 255;
          }

          v66 = v65 & ~(v65 >> 31);
          v67 = (v59 + v61) >> 15;
          if (v67 >= 255)
          {
            v67 = 255;
          }

          v68 = v67 & ~(v67 >> 31);
          v69 = 38155 * v30[1] - 610480;
          v70 = (v69 + v62) >> 15;
          if (v70 >= 255)
          {
            v70 = 255;
          }

          v71 = v70 & ~(v70 >> 31);
          v72 = (v69 + v60) >> 15;
          if (v72 >= 255)
          {
            v72 = 255;
          }

          v73 = v72 & ~(v72 >> 31);
          v74 = (v69 + v61) >> 15;
          if (v74 >= 255)
          {
            v74 = 255;
          }

          v30 += 2;
          *v27 = -1;
          v27[1] = v64;
          v27[2] = v66;
          v27[3] = v68;
          v27[4] = -1;
          v27[5] = v71;
          v27[6] = v73;
          v27[7] = v74 & ~(v74 >> 31);
          v27 += 8;
          v75 = *v25;
          v76 = v25[1];
          v25 += 2;
          v77 = 38155 * v75 - 610480;
          v78 = (v77 + v62) >> 15;
          if (v78 >= 255)
          {
            v78 = 255;
          }

          v79 = v78 & ~(v78 >> 31);
          v80 = (v77 + v60) >> 15;
          if (v80 >= 255)
          {
            v80 = 255;
          }

          v81 = v80 & ~(v80 >> 31);
          v82 = (v77 + v61) >> 15;
          if (v82 >= 255)
          {
            v82 = 255;
          }

          v83 = 38155 * v76 - 610480;
          v84 = v82 & ~(v82 >> 31);
          v85 = (v83 + v62) >> 15;
          if (v85 >= 255)
          {
            v85 = 255;
          }

          v86 = (v83 + v60) >> 15;
          v87 = v85 & ~(v85 >> 31);
          if (v86 >= 255)
          {
            v86 = 255;
          }

          v88 = (v83 + v61) >> 15;
          *v26 = -1;
          v26[1] = v79;
          if (v88 >= 255)
          {
            v88 = 255;
          }

          v26[2] = v81;
          v26[4] = -1;
          v26[3] = v84;
          v26[5] = v87;
          v26[6] = v86 & ~(v86 >> 31);
          v26[7] = v88 & ~(v88 >> 31);
          v26 += 8;
          --v55;
        }

        while (v55);
        v6 = v144;
        a1 = v145;
        v11 = v142;
        v13 = v140;
      }

      if (a1)
      {
        v89 = *v29 - 128;
        v90 = *v28 - 128;
        v91 = 38155 * *v30 - 610480;
        v92 = -12836 * v89 - 26638 * v90;
        v93 = 66101 * v89;
        v94 = 52299 * v90;
        v95 = (v91 + v94) >> 15;
        if (v95 >= 255)
        {
          v95 = 255;
        }

        v96 = v95 & ~(v95 >> 31);
        v97 = (v92 + v91) >> 15;
        if (v97 >= 255)
        {
          v97 = 255;
        }

        v98 = v97 & ~(v97 >> 31);
        v99 = (v91 + v93) >> 15;
        if (v99 >= 255)
        {
          v99 = 255;
        }

        *v27 = -1;
        v27[1] = v96;
        v27[2] = v98;
        v27[3] = v99 & ~(v99 >> 31);
        v100 = 38155 * *v25 - 610480;
        v101 = (v100 + v94) >> 15;
        if (v101 >= 255)
        {
          v101 = 255;
        }

        v102 = v101 & ~(v101 >> 31);
        v103 = (v100 + v92) >> 15;
        if (v103 >= 255)
        {
          v103 = 255;
        }

        v104 = v103 & ~(v103 >> 31);
        v105 = (v100 + v93) >> 15;
        if (v105 >= 255)
        {
          v105 = 255;
        }

        *v26 = -1;
        v26[1] = v102;
        v26[2] = v104;
        v26[3] = v105 & ~(v105 >> 31);
      }

      v7 += v146;
      v8 += v13;
      v9 += v13;
      v10 += 2 * v15;
      ++v12;
      v16 += v146;
    }

    while (v12 != v11);
  }

  if (v138)
  {
    if (a1 >= 2)
    {
      do
      {
        v106 = *v8;
        v8 += 2;
        v107 = v106 - 128;
        v108 = *v9;
        v9 += 2;
        v109 = *v7;
        v110 = v7[1];
        v7 += 2;
        v111 = v6;
        v112 = 38155 * v109 - 610480;
        v113 = -12836 * v107 - 26638 * (v108 - 128);
        v114 = 66101 * v107;
        v115 = 52299 * (v108 - 128);
        v116 = (v112 + v115) >> 15;
        if (v116 >= 255)
        {
          v116 = 255;
        }

        v117 = v116 & ~(v116 >> 31);
        v118 = (v113 + v112) >> 15;
        if (v118 >= 255)
        {
          v118 = 255;
        }

        v119 = v118 & ~(v118 >> 31);
        v120 = (v112 + v114) >> 15;
        if (v120 >= 255)
        {
          v120 = 255;
        }

        v121 = v120 & ~(v120 >> 31);
        v122 = 38155 * v110 - 610480;
        v123 = (v122 + v115) >> 15;
        if (v123 >= 255)
        {
          v123 = 255;
        }

        v124 = v123 & ~(v123 >> 31);
        v125 = (v122 + v113) >> 15;
        if (v125 >= 255)
        {
          v125 = 255;
        }

        v126 = v125 & ~(v125 >> 31);
        v127 = (v122 + v114) >> 15;
        *v10 = -1;
        v10[1] = v117;
        if (v127 >= 255)
        {
          v127 = 255;
        }

        v10[2] = v119;
        v10[3] = v121;
        v10[4] = -1;
        v10[5] = v124;
        v10[6] = v126;
        v10[7] = v127 & ~(v127 >> 31);
        v10 += 8;
        v6 = v111 - 1;
      }

      while (v111 != 1);
    }

    if (a1)
    {
      v128 = *v8 - 128;
      v129 = *v9 - 128;
      v130 = 38155 * *v7 - 610480;
      v131 = -12836 * v128 - 26638 * v129;
      v132 = (v130 + 52299 * v129) >> 15;
      if (v132 >= 255)
      {
        v132 = 255;
      }

      v133 = v132 & ~(v132 >> 31);
      v134 = (v131 + v130) >> 15;
      if (v134 >= 255)
      {
        v134 = 255;
      }

      v135 = v134 & ~(v134 >> 31);
      v136 = (v130 + 66101 * v128) >> 15;
      if (v136 >= 255)
      {
        v136 = 255;
      }

      *v10 = -1;
      v10[1] = v133;
      v10[2] = v135;
      v10[3] = v136 & ~(v136 >> 31);
    }
  }

  return 0;
}

uint64_t vt_Copy_y420ITU601_32BGRA_vec(unint64_t a1, unint64_t a2, uint64_t *a3, uint8x8_t **a4, uint64_t *a5, char **a6)
{
  v6 = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a1 >> 1;
  v11 = *a6;
  v136 = a2;
  if (a2 >= 2)
  {
    v12 = 0;
    v142 = a2 >> 1;
    v13 = *a3;
    v141 = a3[1];
    v14 = a3[2];
    v15 = *a5;
    v16 = 4 * (a1 >> 3);
    v17 = v10 - v16;
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vdupq_n_s32(0xFFFFCDDC);
    v20 = vdupq_n_s32(0xFFFF97F2);
    v21 = vdupq_n_s32(0x10235u);
    v22 = vdupq_n_s32(0xCC4Bu);
    v23 = vdupq_n_s16(0x950Bu);
    v24 = vdupq_n_s32(0xFFF6AF50);
    v25 = -1;
    v138 = a1 >> 1;
    v137 = v14;
    do
    {
      if (v6 >= 8)
      {
        v32 = 0;
        v31 = v7;
        v28 = v11;
        do
        {
          v33 = &v28[v15];
          v34 = vaddw_u16(v18, *&vmovl_u8(v8->u32[v32 / 4]));
          v35 = vaddw_u16(v18, *&vmovl_u8(v9->u32[v32 / 4]));
          v36 = vmlaq_s32(vmulq_s32(v34, v19), v35, v20);
          v37 = vmulq_s32(v34, v21);
          v38 = vmulq_s32(v35, v22);
          v39 = vzip1q_s32(v37, v37);
          v40 = vzip2q_s32(v37, v37);
          v41 = vzip1q_s32(v38, v38);
          v42 = vmovl_u8(*v31);
          v43 = vmovl_u8(*(v31 + v13));
          v44 = vzip1q_s32(v36, v36);
          v45 = vmlal_u16(v24, *v42.i8, *v23.i8);
          v46 = vmlal_high_u16(v24, v42, v23);
          v47 = vzip2q_s32(v38, v38);
          v48 = vmlal_u16(v24, *v43.i8, *v23.i8);
          v49 = vmlal_high_u16(v24, v43, v23);
          v50 = vzip2q_s32(v36, v36);
          v51 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v41, v45), 0xFuLL), vaddq_s32(v47, v46), 0xFuLL));
          v52 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v44, v45), 0xFuLL), vaddq_s32(v50, v46), 0xFuLL));
          v143.val[2] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v41, v48), 0xFuLL), vaddq_s32(v47, v49), 0xFuLL));
          v53 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v39, v45), 0xFuLL), vaddq_s32(v40, v46), 0xFuLL));
          v143.val[1] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v44, v48), 0xFuLL), vaddq_s32(v50, v49), 0xFuLL));
          vst4_s8(v28, *(&v25 - 3));
          v28 += 32;
          v143.val[0] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v39, v48), 0xFuLL), vaddq_s32(v40, v49), 0xFuLL));
          v143.val[3] = -1;
          vst4_s8(v33, v143);
          ++v31;
          v32 += 4;
        }

        while (v16 != v32);
        v26 = v31 + v13;
        v30 = v8 + v32;
        v29 = v9 + v32;
        v27 = &v28[v15];
      }

      else
      {
        v26 = v7 + v13;
        v27 = &v11[v15];
        v28 = v11;
        v29 = v9;
        v30 = v8;
        v31 = v7;
      }

      if (v10 > v16)
      {
        v140 = v12;
        v54 = 0;
        do
        {
          v55 = v30[v54] - 128;
          v56 = v31->u8[0];
          v57 = v31->u8[1];
          v31 = (v31 + 2);
          v58 = 38155 * v56 - 610480;
          v59 = v29[v54] - 128;
          v60 = -12836 * v55 - 26638 * v59;
          v61 = 66101 * v55;
          v62 = 52299 * v59;
          v63 = (v58 + 52299 * v59) >> 15;
          if (v63 >= 255)
          {
            v63 = 255;
          }

          v64 = v63 & ~(v63 >> 31);
          v65 = (v60 + v58) >> 15;
          if (v65 >= 255)
          {
            v65 = 255;
          }

          v66 = v65 & ~(v65 >> 31);
          v67 = (v58 + v61) >> 15;
          if (v67 >= 255)
          {
            v67 = 255;
          }

          v68 = v67 & ~(v67 >> 31);
          v69 = 38155 * v57 - 610480;
          v70 = (v69 + v62) >> 15;
          if (v70 >= 255)
          {
            v70 = 255;
          }

          v71 = v70 & ~(v70 >> 31);
          v72 = (v69 + v60) >> 15;
          if (v72 >= 255)
          {
            v72 = 255;
          }

          v73 = v72 & ~(v72 >> 31);
          v74 = (v69 + v61) >> 15;
          if (v74 >= 255)
          {
            v74 = 255;
          }

          *v28 = v68;
          v28[1] = v66;
          v28[2] = v64;
          v28[3] = -1;
          v28[5] = v73;
          v28[6] = v71;
          v28[4] = v74 & ~(v74 >> 31);
          v28[7] = -1;
          v28 += 8;
          v75 = v26[1];
          v76 = 38155 * *v26 - 610480;
          v26 += 2;
          v77 = (v76 + v62) >> 15;
          if (v77 >= 255)
          {
            v77 = 255;
          }

          v78 = v77 & ~(v77 >> 31);
          v79 = (v76 + v60) >> 15;
          if (v79 >= 255)
          {
            v79 = 255;
          }

          v80 = (v76 + v61) >> 15;
          v81 = v79 & ~(v79 >> 31);
          if (v80 >= 255)
          {
            v80 = 255;
          }

          v82 = 38155 * v75 - 610480;
          v83 = (v82 + v62) >> 15;
          v84 = v80 & ~(v80 >> 31);
          if (v83 >= 255)
          {
            v83 = 255;
          }

          v85 = (v82 + v60) >> 15;
          v86 = v83 & ~(v83 >> 31);
          if (v85 >= 255)
          {
            v85 = 255;
          }

          v87 = v85 & ~(v85 >> 31);
          v88 = (v82 + v61) >> 15;
          *v27 = v84;
          v27[1] = v81;
          if (v88 >= 255)
          {
            v89 = 255;
          }

          else
          {
            v89 = v88;
          }

          v27[2] = v78;
          v27[3] = -1;
          v27[4] = v89 & ~(v89 >> 31);
          v27[5] = v87;
          v27[6] = v86;
          v27[7] = -1;
          v27 += 8;
          ++v54;
        }

        while (v17 != v54);
        v30 += v54;
        v29 += v54;
        v10 = v138;
        v6 = a1;
        v12 = v140;
        v14 = v137;
      }

      if (v6)
      {
        v90 = *v30 - 128;
        v91 = *v29 - 128;
        v92 = 38155 * v31->u8[0] - 610480;
        v93 = -12836 * v90 - 26638 * v91;
        v94 = 66101 * v90;
        v95 = 52299 * v91;
        v96 = (v92 + v95) >> 15;
        if (v96 >= 255)
        {
          v96 = 255;
        }

        v97 = v96 & ~(v96 >> 31);
        v98 = (v93 + v92) >> 15;
        if (v98 >= 255)
        {
          v98 = 255;
        }

        v99 = v98 & ~(v98 >> 31);
        v100 = (v92 + v94) >> 15;
        if (v100 >= 255)
        {
          v100 = 255;
        }

        *v28 = v100 & ~(v100 >> 31);
        v28[1] = v99;
        v28[2] = v97;
        v28[3] = -1;
        v101 = 38155 * *v26 - 610480;
        v102 = (v101 + v95) >> 15;
        if (v102 >= 255)
        {
          v102 = 255;
        }

        v103 = (v101 + v93) >> 15;
        if (v103 >= 255)
        {
          v103 = 255;
        }

        v104 = v103 & ~(v103 >> 31);
        v105 = (v101 + v94) >> 15;
        if (v105 >= 255)
        {
          v105 = 255;
        }

        *v27 = v105 & ~(v105 >> 31);
        v27[1] = v104;
        v27[2] = v102 & ~(v102 >> 31);
        v27[3] = -1;
      }

      v7 = (v7 + 2 * v13);
      v8 = (v8 + v141);
      v9 = (v9 + v14);
      v11 += 2 * v15;
      ++v12;
    }

    while (v12 != v142);
  }

  if (v136)
  {
    if (v6 >= 2)
    {
      do
      {
        v106 = v8->u8[0];
        v8 = (v8 + 1);
        v107 = v106 - 128;
        v108 = v9->u8[0];
        v9 = (v9 + 1);
        v109 = v7->u8[0];
        v110 = v10;
        v111 = v7->u8[1];
        v7 = (v7 + 2);
        v112 = 38155 * v109 - 610480;
        v113 = -12836 * v107 - 26638 * (v108 - 128);
        v114 = 66101 * v107;
        v115 = 52299 * (v108 - 128);
        v116 = (v112 + v115) >> 15;
        if (v116 >= 255)
        {
          v116 = 255;
        }

        v117 = v116 & ~(v116 >> 31);
        v118 = (v113 + v112) >> 15;
        if (v118 >= 255)
        {
          v118 = 255;
        }

        v119 = v118 & ~(v118 >> 31);
        v120 = (v112 + v114) >> 15;
        if (v120 >= 255)
        {
          v120 = 255;
        }

        v121 = v120 & ~(v120 >> 31);
        v122 = 38155 * v111 - 610480;
        v123 = (v122 + v115) >> 15;
        if (v123 >= 255)
        {
          v123 = 255;
        }

        v124 = (v122 + v113) >> 15;
        if (v124 >= 255)
        {
          v124 = 255;
        }

        v125 = v124 & ~(v124 >> 31);
        v126 = (v122 + v114) >> 15;
        *v11 = v121;
        v11[1] = v119;
        if (v126 >= 255)
        {
          v126 = 255;
        }

        v11[2] = v117;
        v11[3] = -1;
        v11[4] = v126 & ~(v126 >> 31);
        v11[5] = v125;
        v11[6] = v123 & ~(v123 >> 31);
        v11[7] = -1;
        v11 += 8;
        v10 = v110 - 1;
      }

      while (v110 != 1);
    }

    if (v6)
    {
      v127 = v8->u8[0] - 128;
      v128 = v9->u8[0] - 128;
      v129 = 38155 * v7->u8[0] - 610480;
      v130 = -12836 * v127 - 26638 * v128;
      v131 = (v129 + 52299 * v128) >> 15;
      if (v131 >= 255)
      {
        v131 = 255;
      }

      v132 = (v130 + v129) >> 15;
      if (v132 >= 255)
      {
        v132 = 255;
      }

      v133 = v132 & ~(v132 >> 31);
      v134 = (v129 + 66101 * v127) >> 15;
      if (v134 >= 255)
      {
        v134 = 255;
      }

      *v11 = v134 & ~(v134 >> 31);
      v11[1] = v133;
      v11[2] = v131 & ~(v131 >> 31);
      v11[3] = -1;
    }
  }

  return 0;
}

uint64_t vt_Copy_420vITU601_32BGRA_vec(unint64_t a1, unint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, char **a6)
{
  v6 = a1 >> 1;
  v7 = *a4;
  v8 = a4[1];
  v9 = v8 + 1;
  v10 = *a6;
  v136 = a2;
  if (a2 >= 2)
  {
    v11 = a2 >> 1;
    v12 = 0;
    v14 = *a3;
    v13 = a3[1];
    v15 = *a5;
    v144 = 2 * v14;
    v145 = 4 * (a1 >> 3);
    v143 = a1;
    v139 = v14;
    v140 = v11;
    v16 = &v7[v14];
    v141 = a1 >> 3;
    v142 = a1 >> 1;
    v137 = v6 - v145;
    v138 = v13;
    v17 = vdupq_n_s32(0xFFFFCDDC);
    v18 = vdupq_n_s32(0xFFFF97F2);
    v19 = vdupq_n_s32(0x10235u);
    v20 = vdupq_n_s32(0xCC4Bu);
    v21.i64[0] = 0x7F0000007FLL;
    v21.i64[1] = 0x7F0000007FLL;
    v22 = vdupq_n_s16(0x950Bu);
    v23 = vdupq_n_s32(0xFFF6AF50);
    v24 = -1;
    do
    {
      if (a1 >= 8)
      {
        v31 = 0;
        v32 = v141;
        v27 = v10;
        do
        {
          v33 = &v27[v15];
          v34 = *&v8[v31];
          v35 = vaddw_u16(v21, *&vmovl_u8(vuzp1_s8(v34, *v17.i8)));
          v36 = vaddw_u16(v21, *&vmovl_u8(vuzp2_s8(v34, *v17.i8)));
          v37 = vmlaq_s32(vmulq_s32(v35, v17), v36, v18);
          v38 = vmulq_s32(v35, v19);
          v39 = vmulq_s32(v36, v20);
          v40 = vzip1q_s32(v38, v38);
          v41 = vzip2q_s32(v38, v38);
          v42 = vzip1q_s32(v39, v39);
          v43 = vmovl_u8(*&v7[v31]);
          v44 = vmovl_u8(*&v16[v31]);
          v45 = vzip1q_s32(v37, v37);
          v46 = vmlal_u16(v23, *v43.i8, *v22.i8);
          v47 = vmlal_high_u16(v23, v43, v22);
          v48 = vzip2q_s32(v39, v39);
          v49 = vmlal_u16(v23, *v44.i8, *v22.i8);
          v50 = vmlal_high_u16(v23, v44, v22);
          v51 = vzip2q_s32(v37, v37);
          v52 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v42, v46), 0xFuLL), vaddq_s32(v48, v47), 0xFuLL));
          v53 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v45, v46), 0xFuLL), vaddq_s32(v51, v47), 0xFuLL));
          v146.val[2] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v42, v49), 0xFuLL), vaddq_s32(v48, v50), 0xFuLL));
          v54 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v40, v46), 0xFuLL), vaddq_s32(v41, v47), 0xFuLL));
          v146.val[1] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v45, v49), 0xFuLL), vaddq_s32(v51, v50), 0xFuLL));
          vst4_s8(v27, *(&v24 - 3));
          v27 += 32;
          v146.val[0] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v40, v49), 0xFuLL), vaddq_s32(v41, v50), 0xFuLL));
          v146.val[3] = -1;
          vst4_s8(v33, v146);
          v31 += 8;
          --v32;
        }

        while (v32);
        v30 = &v7[v31];
        v25 = &v16[v31];
        v29 = &v8[v31];
        v28 = &v8[v31 + 1];
        v26 = &v27[v15];
      }

      else
      {
        v25 = &v7[v139];
        v26 = &v10[v15];
        v27 = v10;
        v28 = v9;
        v29 = v8;
        v30 = v7;
      }

      if (v6 > v145)
      {
        v55 = v137;
        do
        {
          v56 = *v29;
          v29 += 2;
          v57 = v56 - 128;
          v58 = *v28;
          v28 += 2;
          v59 = 38155 * *v30 - 610480;
          v60 = -12836 * v57 - 26638 * (v58 - 128);
          v61 = 66101 * v57;
          v62 = 52299 * (v58 - 128);
          v63 = (v59 + v62) >> 15;
          if (v63 >= 255)
          {
            v63 = 255;
          }

          v64 = v63 & ~(v63 >> 31);
          v65 = (v60 + v59) >> 15;
          if (v65 >= 255)
          {
            v65 = 255;
          }

          v66 = v65 & ~(v65 >> 31);
          v67 = (v59 + v61) >> 15;
          if (v67 >= 255)
          {
            v67 = 255;
          }

          v68 = v67 & ~(v67 >> 31);
          v69 = 38155 * v30[1] - 610480;
          v70 = (v69 + v62) >> 15;
          if (v70 >= 255)
          {
            v70 = 255;
          }

          v71 = v70 & ~(v70 >> 31);
          v72 = (v69 + v60) >> 15;
          if (v72 >= 255)
          {
            v72 = 255;
          }

          v73 = v72 & ~(v72 >> 31);
          v74 = (v69 + v61) >> 15;
          if (v74 >= 255)
          {
            v74 = 255;
          }

          v30 += 2;
          *v27 = v68;
          v27[1] = v66;
          v27[2] = v64;
          v27[3] = -1;
          v27[5] = v73;
          v27[4] = v74 & ~(v74 >> 31);
          v27[6] = v71;
          v27[7] = -1;
          v27 += 8;
          v75 = *v25;
          v76 = v25[1];
          v25 += 2;
          v77 = 38155 * v75 - 610480;
          v78 = (v77 + v62) >> 15;
          if (v78 >= 255)
          {
            v78 = 255;
          }

          v79 = v78 & ~(v78 >> 31);
          v80 = (v77 + v60) >> 15;
          if (v80 >= 255)
          {
            v80 = 255;
          }

          v81 = v80 & ~(v80 >> 31);
          v82 = (v77 + v61) >> 15;
          if (v82 >= 255)
          {
            v82 = 255;
          }

          v83 = 38155 * v76 - 610480;
          v84 = v82 & ~(v82 >> 31);
          v85 = (v83 + v62) >> 15;
          if (v85 >= 255)
          {
            v85 = 255;
          }

          v86 = (v83 + v60) >> 15;
          if (v86 >= 255)
          {
            v86 = 255;
          }

          v87 = v86 & ~(v86 >> 31);
          v88 = (v83 + v61) >> 15;
          *v26 = v84;
          v26[1] = v81;
          if (v88 >= 255)
          {
            v89 = 255;
          }

          else
          {
            v89 = v88;
          }

          v26[2] = v79;
          v26[3] = -1;
          v26[4] = v89 & ~(v89 >> 31);
          v26[5] = v87;
          v26[6] = v85 & ~(v85 >> 31);
          v26[7] = -1;
          v26 += 8;
          --v55;
        }

        while (v55);
        v6 = v142;
        a1 = v143;
        v11 = v140;
        v13 = v138;
      }

      if (a1)
      {
        v90 = *v29 - 128;
        v91 = *v28 - 128;
        v92 = 38155 * *v30 - 610480;
        v93 = -12836 * v90 - 26638 * v91;
        v94 = 66101 * v90;
        v95 = 52299 * v91;
        v96 = (v92 + v95) >> 15;
        if (v96 >= 255)
        {
          v96 = 255;
        }

        v97 = v96 & ~(v96 >> 31);
        v98 = (v93 + v92) >> 15;
        if (v98 >= 255)
        {
          v98 = 255;
        }

        v99 = v98 & ~(v98 >> 31);
        v100 = (v92 + v94) >> 15;
        if (v100 >= 255)
        {
          v100 = 255;
        }

        *v27 = v100 & ~(v100 >> 31);
        v27[1] = v99;
        v27[2] = v97;
        v27[3] = -1;
        v101 = 38155 * *v25 - 610480;
        v102 = (v101 + v95) >> 15;
        if (v102 >= 255)
        {
          v102 = 255;
        }

        v103 = (v101 + v93) >> 15;
        if (v103 >= 255)
        {
          v103 = 255;
        }

        v104 = v103 & ~(v103 >> 31);
        v105 = (v101 + v94) >> 15;
        if (v105 >= 255)
        {
          v105 = 255;
        }

        *v26 = v105 & ~(v105 >> 31);
        v26[1] = v104;
        v26[2] = v102 & ~(v102 >> 31);
        v26[3] = -1;
      }

      v7 += v144;
      v8 += v13;
      v9 += v13;
      v10 += 2 * v15;
      ++v12;
      v16 += v144;
    }

    while (v12 != v11);
  }

  if (v136)
  {
    if (a1 >= 2)
    {
      do
      {
        v106 = *v8;
        v8 += 2;
        v107 = v106 - 128;
        v108 = *v9;
        v9 += 2;
        v109 = *v7;
        v110 = v7[1];
        v7 += 2;
        v111 = v6;
        v112 = 38155 * v109 - 610480;
        v113 = -12836 * v107 - 26638 * (v108 - 128);
        v114 = 66101 * v107;
        v115 = 52299 * (v108 - 128);
        v116 = (v112 + v115) >> 15;
        if (v116 >= 255)
        {
          v116 = 255;
        }

        v117 = v116 & ~(v116 >> 31);
        v118 = (v113 + v112) >> 15;
        if (v118 >= 255)
        {
          v118 = 255;
        }

        v119 = v118 & ~(v118 >> 31);
        v120 = (v112 + v114) >> 15;
        if (v120 >= 255)
        {
          v120 = 255;
        }

        v121 = v120 & ~(v120 >> 31);
        v122 = 38155 * v110 - 610480;
        v123 = (v122 + v115) >> 15;
        if (v123 >= 255)
        {
          v123 = 255;
        }

        v124 = (v122 + v113) >> 15;
        if (v124 >= 255)
        {
          v124 = 255;
        }

        v125 = v124 & ~(v124 >> 31);
        v126 = (v122 + v114) >> 15;
        *v10 = v121;
        v10[1] = v119;
        if (v126 >= 255)
        {
          v126 = 255;
        }

        v10[2] = v117;
        v10[3] = -1;
        v10[4] = v126 & ~(v126 >> 31);
        v10[5] = v125;
        v10[6] = v123 & ~(v123 >> 31);
        v10[7] = -1;
        v10 += 8;
        v6 = v111 - 1;
      }

      while (v111 != 1);
    }

    if (a1)
    {
      v127 = *v8 - 128;
      v128 = *v9 - 128;
      v129 = 38155 * *v7 - 610480;
      v130 = -12836 * v127 - 26638 * v128;
      v131 = (v129 + 52299 * v128) >> 15;
      if (v131 >= 255)
      {
        v131 = 255;
      }

      v132 = (v130 + v129) >> 15;
      if (v132 >= 255)
      {
        v132 = 255;
      }

      v133 = v132 & ~(v132 >> 31);
      v134 = (v129 + 66101 * v127) >> 15;
      if (v134 >= 255)
      {
        v134 = 255;
      }

      *v10 = v134 & ~(v134 >> 31);
      v10[1] = v133;
      v10[2] = v131 & ~(v131 >> 31);
      v10[3] = -1;
    }
  }

  return 0;
}