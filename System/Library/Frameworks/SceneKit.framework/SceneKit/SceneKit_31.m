uint64_t C3DFXMetalProgramGetPreprocessorsMacros(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(cf + 14);
}

uint64_t C3DFXMetalProgramGetPreprocessorAllPossibleMacros(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(cf + 15);
}

uint64_t C3DFXMetalProgramGetLanguageVersion(unsigned int *cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return cf[44];
}

uint64_t C3DFXMetalProgramGetConstants(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(cf + 16);
}

uint64_t C3DFXMetalProgramGetBufferBindings(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(cf + 17);
}

void C3DFXMetalProgramSetBufferBinding(void *a1, const void *a2, const void *a3)
{
  v6 = CFGetTypeID(a1);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  if (v6 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  Mutable = a1[17];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a1[17] = Mutable;
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, a2, a3);
  }

  else
  {
    CFDictionaryRemoveValue(Mutable, a2);
  }
}

uint64_t C3DFXMetalProgramGetLinkedFunctionsFamilies(unsigned int *cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v10 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return cf[36];
}

uint64_t C3DFXMetalProgramGetLibraryProviderBlock(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  if (v2 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[20];
}

id _C3DFXMetalProgramCFFinalize(void *a1)
{
  v2 = 0;
  v3 = a1 + 10;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3[v2];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = a1[17];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
    a1[12] = 0;
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
    a1[13] = 0;
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
    a1[14] = 0;
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
    a1[15] = 0;
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
    a1[16] = 0;
  }

  v13 = a1[19];
  if (v13)
  {
    CFRelease(v13);
    a1[19] = 0;
  }

  v14 = a1[20];
  if (v14)
  {
    CFRelease(v14);
    a1[20] = 0;
  }

  return C3DFXProgramCFFinalize(a1);
}

uint64_t __C3DFXPassInputGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXPassInputGetTypeID_typeID = result;
  qword_281744438 = _C3DFXPassInputCopyInstanceVariables;
  return result;
}

uint64_t C3DFXPassInputCreate()
{
  if (C3DFXPassInputGetTypeID_onceToken != -1)
  {
    C3DFXPassInputCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DFXPassInputGetTypeID_typeID, 96);
  *(result + 16) = 0;
  *(result + 40) = -1;
  *(result + 24) = 1;
  return result;
}

void C3DFXPassInputSetSemantic(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 32) = a2;
}

void C3DFXPassInputSetChannelIndex(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 104) = a2;
}

uint64_t C3DFXPassInputGetSymbolName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 56);
}

CFTypeRef C3DFXPassInputSetSymbolName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 56);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

CFTypeRef C3DFXPassInputSetSampler(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

void C3DFXPassInputSetUniformIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 40) = a2;
}

void *C3DFXPassInputSetBindingBlock(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
    v6 = 3;
  }

  else
  {
    result = 0;
    v6 = 2;
  }

  *(a1 + 96) = result;
  *(a1 + 16) = v6;
  return result;
}

void __updateRequireLighting(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 24);
  v11 = v10 > 6;
  v12 = (1 << v10) & 0x4C;
  v13 = v11 || v12 == 0;
  if (v13 || (v14 = *(a1 + 96)) != 0 && ((CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(v14)) == 0 || C3DEffectCommonProfileGetLightingModel(CommonProfileIfNoTechnique) == 4))
  {
    v16 = *(a1 + 184) & 0xFFFF7FFF;
  }

  else
  {
    v16 = *(a1 + 184) | 0x8000;
  }

  *(a1 + 184) = v16;
}

uint64_t __C3DFXPassGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXPassGetTypeID_typeID = result;
  qword_281744520 = _C3DFXPassCopyInstanceVariables;
  return result;
}

uint64_t C3DFXPassCreate()
{
  if (C3DFXPassGetTypeID_onceToken != -1)
  {
    C3DFXPassCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXPassGetTypeID_typeID, 560);
  *(Instance + 536) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v1 = *(Instance + 184);
  *(Instance + 376) = 0x3FF0000000000000;
  *(Instance + 384) = 0x3FF0000000000000;
  *(Instance + 368) = *(Instance + 368) & 0xF8 | 1;
  *(Instance + 480) = 1;
  *(Instance + 32) = 1;
  *(Instance + 180) = 1;
  *(Instance + 184) = v1 | 0x310B;
  return Instance;
}

CFTypeRef C3DFXPassSetProgramName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 48);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 48) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetMetalVertexShaderFunction(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 56);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetMetalFragmentShaderFunction(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetMetalLibraryName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

void C3DFXPassSetClientProgram(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 80) = a2;
}

CFTypeRef C3DFXPassSetProgram(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 88);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 88) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 88) = result;
  }

  return result;
}

uint64_t C3DFXPassGetProgram(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

BOOL C3DFXPassGetProgramIsOpaque(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 180) != 0;
}

void C3DFXPassSetDrawInstruction(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 24) = a2;
  __updateRequireLighting(a1);
}

uint64_t C3DFXPassGetDrawInstruction(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void C3DFXPassSetMaterial(uint64_t a1, CFTypeRef cf)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryAppendMaterial_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 96);
  if (v20 != cf)
  {
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      v21 = CFRetain(cf);
    }

    else
    {
      v21 = 0;
    }

    *(a1 + 96) = v21;
  }

  __updateRequireLighting(a1);
}

uint64_t C3DFXPassGetMaterial(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

void C3DFXPassSetClearBehavior(uint64_t a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 184) = v16 | a2 | v17 | *(a1 + 184) & 0xFFFFFFF8;
}

uint64_t C3DFXPassGetClearColor(uint64_t a1, uint64_t a2)
{
  if ((C3DFXPassGetUsesSceneBackgroundColor(a1) & 1) == 0)
  {
    return *(a1 + 128);
  }

  return a2;
}

uint64_t C3DFXPassGetUsesSceneBackgroundColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 185) >> 1) & 1;
}

CFStringRef C3DFXPassSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (theString)
    {
      goto LABEL_6;
    }
  }

  else if (theString)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 16);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DFXPassGetName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DFXPassIsTopLevel(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 186) >> 5) & 1;
}

void C3DFXPassSetPointOfView(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 448) = a2;
}

uint64_t C3DFXPassGetPointOfView(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 448);
}

void C3DFXPassSetViewport(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      __updateRequireLighting_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[11].n128_u32[2] |= 0x40000u;
  a1[9] = a2;
}

uint64_t C3DFXPassGetSubViewport(float32x4_t *a1, float32x4_t *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[11].u32[2];
  if ((v12 & 0x80000) != 0)
  {
    v13.i64[0] = a2->i64[1];
    v13.i64[1] = v13.i64[0];
    *a2 = vrndaq_f32(vmulq_f32(v13, a1[10]));
  }

  return (v12 >> 19) & 1;
}

uint64_t C3DFXPassGetHasCustomViewport(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 186) >> 2) & 1;
}

__n128 C3DFXPassGetViewport(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1[9];
}

CFTypeRef C3DFXPassSetRootNode(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 456);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 456) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 456) = result;
  }

  return result;
}

uint64_t C3DFXPassGetRootNode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 456);
}

uint64_t C3DFXPassGetNodes(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 464);
}

uint64_t C3DFXPassGetLayerMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 480);
}

CFTypeRef C3DFXPassSetMirrorNode(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 472);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 472) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 472) = result;
  }

  return result;
}

uint64_t C3DFXPassGetMirrorNode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 472);
}

void C3DFXPassSetInstallViewport(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 4096;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 184) = *(a1 + 184) & 0xFFFFEFFF | v12;
}

uint64_t C3DFXPassGetIgnoreInifiniteFloor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 184) >> 5) & 1;
}

uint64_t C3DFXPassGetDrawOnlyShadowCaster(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 185) >> 2) & 1;
}

uint64_t C3DFXPassHasConstantAlpha(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 185) & 1;
}

uint64_t C3DFXPassGetIncludeCategoryMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 200);
}

uint64_t C3DFXPassGetExcludeCategoryMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

uint64_t C3DFXPassRequiresLighting(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 185) >> 7;
}

uint64_t C3DFXPassGetForceJitteringOff(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184) >> 7;
}

BOOL C3DFXPassGetUpdatesMainFrameBuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 184) & 0x40) == 0;
}

void C3DFXPassSetUpdatesMainFrameBuffer(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 64;
  }

  *(a1 + 184) = *(a1 + 184) & 0xFFFFFFBF | v12;
}

uint64_t C3DFXPassGetStorage(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 40);
  if (v10 && (v11 = *(v10 + 96)) != 0)
  {
    return *v11;
  }

  else
  {
    return 0;
  }
}

double C3DFXPassSetupWithPropertyList(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  v5 = a1;
  v112 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = [objc_msgSend(a2 valueForKey:{@"draw", "lowercaseString"}];
  if ([v14 isEqualToString:@"draw_scene"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"draw_node"))
  {
    v15 = 3;
  }

  else if ([v14 isEqualToString:@"draw_main_scene"])
  {
    v15 = 8;
  }

  else if ([v14 isEqualToString:@"draw_nodes"])
  {
    v15 = 6;
  }

  else if ([v14 isEqualToString:@"draw_geometry"])
  {
    v15 = 2;
  }

  else if ([v14 isEqualToString:@"draw_quad"])
  {
    v15 = 4;
  }

  else if ([v14 isEqualToString:@"metal_custom"])
  {
    v15 = 7;
  }

  else if ([v14 isEqualToString:@"draw_none"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"none"))
  {
    v15 = 1;
  }

  else
  {
    v15 = [v14 isEqualToString:@"custom"];
  }

  C3DFXPassSetDrawInstruction(v5, v15);
  v16 = [objc_msgSend(a2 valueForKey:{@"stage", "lowercaseString"}];
  if ([v16 isEqualToString:@"preDraw"])
  {
    v17 = 1;
  }

  else if ([v16 isEqualToString:@"preFX"])
  {
    v17 = 2;
  }

  else if ([v16 isEqualToString:@"preToneMap"])
  {
    v17 = 3;
  }

  else
  {
    [v16 isEqualToString:@"postFX"];
    v17 = 4;
  }

  *(v5 + 28) = v17;
  if ([a2 objectForKey:@"ignoreFloors"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"ignoreFloors", "BOOLValue"}])
    {
      v18 = 32;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFFFDF | v18;
  if ([a2 objectForKey:@"onlyShadowCasters"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"onlyShadowCasters", "BOOLValue"}])
    {
      v19 = 1024;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFFBFF | v19;
  if ([a2 objectForKey:@"onlyMovableNodes"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"onlyMovableNodes", "BOOLValue"}])
    {
      v20 = 2048;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFF7FF | v20;
  v21 = 256;
  if ([a2 objectForKey:@"hasConstantAlpha"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"hasConstantAlpha", "BOOLValue"}])
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFFEFF | v21;
  v22 = 4096;
  if ([a2 objectForKey:@"installViewport"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"installViewport", "BOOLValue"}])
    {
      v22 = 4096;
    }

    else
    {
      v22 = 0;
    }
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFEFFF | v22;
  v23 = 0x2000;
  if ([a2 objectForKey:@"isViewDependant"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"isViewDependant", "BOOLValue"}])
    {
      v23 = 0x2000;
    }

    else
    {
      v23 = 0;
    }
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFDFFF | v23;
  if ([objc_msgSend(a2 objectForKey:{@"overridesCustomProgram", "BOOLValue"}])
  {
    v24 = 0x100000;
  }

  else
  {
    v24 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFEFFFFF | v24;
  v25 = [a2 objectForKey:@"layerMask"];
  if (v25)
  {
    *(v5 + 480) = _maskValue(v25);
  }

  v26 = [a2 objectForKey:@"includeCategoryMask"];
  if (v26)
  {
    v27 = _maskValue(v26);
  }

  else
  {
    v27 = -1;
  }

  *(v5 + 200) = v27;
  v28 = [a2 objectForKey:@"excludeCategoryMask"];
  if (v28)
  {
    v28 = _maskValue(v28);
  }

  *(v5 + 208) = v28;
  v29 = [a2 objectForKey:@"viewport"];
  if (v29)
  {
    *(v5 + 184) |= 0x40000u;
    *context = 0;
    LODWORD(v106[0]) = 0;
    v107 = 0;
    sscanf([v29 UTF8String], "%f %f %f %f", context, v106, &v107 + 4, &v107);
    *&v30 = __PAIR64__(v106[0], *context);
    *(&v30 + 1) = __PAIR64__(v107, HIDWORD(v107));
    *(v5 + 144) = v30;
  }

  v31 = [objc_msgSend(a2 objectForKey:{@"samples", "intValue"}];
  if (!v31)
  {
    LOBYTE(v31) = (*(v5 + 24) & 0xFFFFFFFB) == 0;
  }

  *(v5 + 176) = v31;
  memset(v106, 0, 28);
  v32 = [a2 objectForKey:{@"cullMode", C3DRasterizerStatesDescGetDefault(v106)}];
  v33 = v32 != 0;
  if (v32)
  {
    v34 = v32;
    if ([v32 isEqualToString:@"cullFront"] & 1) != 0 || (objc_msgSend(v34, "isEqualToString:", @"front"))
    {
      v35 = 1;
    }

    else if ([v34 isEqualToString:@"cullNone"] & 1) != 0 || (objc_msgSend(v34, "isEqualToString:", @"none"))
    {
      v35 = 2;
    }

    else
    {
      if (([v34 isEqualToString:@"cullBack"] & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"back") & 1) == 0)
      {
        v102 = scn_default_log();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          C3DFXPassSetupWithPropertyList_cold_2();
        }
      }

      v35 = 0;
    }

    LODWORD(v106[0]) = v35;
  }

  v36 = [a2 objectForKey:@"colorStates"];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 objectForKey:@"clearColor"];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 isEqualToString:@"sceneBackground"];
      v41 = *(v5 + 184);
      if (v40)
      {
        v42 = v41 | 0x200;
      }

      else
      {
        *(v5 + 184) = v41 & 0xFFFFFDFF;
        sscanf([v39 UTF8String], "%f %f %f %f", v5 + 128, v5 + 132, v5 + 136, v5 + 140);
        v42 = *(v5 + 184);
      }

      *(v5 + 184) = v42 | 1;
    }

    v43 = [v37 objectForKey:@"clear"];
    if (v43)
    {
      *(v5 + 184) = *(v5 + 184) & 0xFFFFFFFE | [v43 BOOLValue];
    }
  }

  v44 = [a2 objectForKey:@"depthStates"];
  if (!v44)
  {
    goto LABEL_85;
  }

  v45 = v44;
  v46 = [v44 objectForKey:@"enableWrite"];
  if (v46)
  {
    BYTE9(v106[0]) = [v46 BOOLValue];
    v33 = 1;
  }

  v47 = [v45 objectForKey:@"enableRead"];
  if (v47)
  {
    BYTE8(v106[0]) = [v47 BOOLValue];
    v33 = 1;
  }

  v48 = [v45 objectForKey:@"clear"];
  if (v48)
  {
    if ([v48 BOOLValue])
    {
      v49 = 2;
    }

    else
    {
      v49 = 0;
    }

    *(v5 + 184) = *(v5 + 184) & 0xFFFFFFFD | v49;
  }

  v50 = [v45 objectForKey:@"func"];
  if (!v50)
  {
LABEL_85:
    v51 = [a2 objectForKey:@"stencilStates"];
    if (!v51)
    {
      v52 = 0;
      if (!v33)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    goto LABEL_86;
  }

  BYTE10(v106[0]) = _depthFuncNameToDepthFunc(v50);
  v51 = [a2 objectForKey:@"stencilStates"];
  if (v51)
  {
LABEL_86:
    v53 = v51;
    v54 = [v51 objectForKey:@"enable"];
    if (v54)
    {
      v52 = [v54 BOOLValue];
    }

    else
    {
      v52 = 1;
    }

    BYTE11(v106[0]) = v52;
    v55 = [v53 objectForKey:@"clear"];
    if (v55)
    {
      if ([v55 BOOLValue])
      {
        v56 = 4;
      }

      else
      {
        v56 = 0;
      }

      *(v5 + 184) = *(v5 + 184) & 0xFFFFFFF3 | v56;
    }

    v57 = [v53 objectForKey:@"behavior"];
    if (v57)
    {
      _stencilActionDescrToStencilAction(v57, v106 + 13);
    }

    v58 = [v53 objectForKey:@"backFaceBehavior"];
    if (v58)
    {
      BYTE12(v106[0]) = 1;
      _stencilActionDescrToStencilAction(v58, &v106[1] + 4);
    }

    goto LABEL_99;
  }

  v52 = 0;
LABEL_99:
  *context = v106[0];
  *&context[12] = *(v106 + 12);
  v59 = C3DRasterizerStatesCreate(context);
  C3DFXPassSetRasterizerStates(v5, v59);
  C3DRasterizerStatesRelease(v59);
LABEL_100:
  v60 = [a2 objectForKey:@"blendStates"];
  if (!v60)
  {
    goto LABEL_131;
  }

  v61 = v60;
  objc_opt_class();
  v105 = a3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v61 = [MEMORY[0x277CBEA60] arrayWithObject:v61];
  }

  v62 = [v61 count];
  if (v62 >= 5)
  {
    v63 = scn_default_log();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      C3DFXPassSetupWithPropertyList_cold_3(v63);
    }

    v64 = 4;
    goto LABEL_108;
  }

  v64 = v62;
  if (v62 >= 1)
  {
LABEL_108:
    v103 = v52;
    v104 = v5;
    v65 = 0;
    v66 = &context[3];
    do
    {
      v67 = [v61 objectAtIndex:v65];
      v68 = [v67 objectForKey:@"enable"];
      if (v68)
      {
        v69 = [v68 BOOLValue];
      }

      else
      {
        v69 = 1;
      }

      *(v66 - 3) = v69;
      v70 = [v67 objectForKey:@"colorSrc"];
      if (v70)
      {
        v71 = _blendFactorFromString(v70);
      }

      else
      {
        v71 = 1;
      }

      *(v66 - 1) = v71;
      v72 = [v67 objectForKey:@"colorDst"];
      if (v72)
      {
        v73 = _blendFactorFromString(v72);
      }

      else
      {
        v73 = 5;
      }

      *v66 = v73;
      *(v66 - 2) = 0;
      v74 = [v67 objectForKey:@"alphaSrc"];
      if (v74)
      {
        v75 = _blendFactorFromString(v74);
        *(v66 - 2) = 1;
      }

      else
      {
        v75 = 1;
      }

      v66[2] = v75;
      v76 = [v67 objectForKey:@"alphaDst"];
      if (v76)
      {
        v77 = _blendFactorFromString(v76);
        *(v66 - 2) = 1;
      }

      else
      {
        v77 = 5;
      }

      v66[3] = v77;
      v78 = [v67 objectForKey:@"colorOp"];
      if (v78)
      {
        LOBYTE(v78) = _blendOpFromString(v78);
      }

      v66[1] = v78;
      v79 = [v67 objectForKey:@"alphaOp"];
      if (v79)
      {
        LOBYTE(v79) = _blendOpFromString(v79);
        *(v66 - 2) = 1;
      }

      v66[4] = v79;
      ++v65;
      v66 += 8;
    }

    while (v64 != v65);
    v5 = v104;
    v52 = v103;
  }

  v80 = C3DBlendStatesCreate(context, v64);
  C3DFXPassSetBlendStates(v5, v80);
  CFRelease(v80);
  a3 = v105;
LABEL_131:
  Name = C3DFXPassGetName(v5);
  Value = CFDictionaryGetValue(a3, @"passes");
  v83 = CFDictionaryGetValue(a3, @"targets");
  if (Value)
  {
    v85 = v83;
    v86 = CFDictionaryGetValue(Value, Name);
    if (v86)
    {
      v87 = CFDictionaryGetValue(v86, @"outputs");
      if (v87)
      {
        v88 = v87;
        memset(v110, 0, sizeof(v110));
        *&context[16] = 0u;
        memset(v109, 0, sizeof(v109));
        *&context[8] = v85;
        *context = 0x1003F800000;
        memset_pattern16(v109, &xmmword_21C2814B0, 0x20uLL);
        __asm { FMOV            V0.2S, #1.0 }

        *&v110[12] = _D0;
        v111 = 0;
        v110[22] = v52;
        DrawInstruction = C3DFXPassGetDrawInstruction(v5);
        v95 = 0;
        if (DrawInstruction <= 6 && ((1 << DrawInstruction) & 0x4C) != 0)
        {
          context[4] = 1;
          v95 = 41;
        }

        *&context[24] = 0;
        v110[8] = v95;
        CFDictionaryApplyFunction(v88, _parseTargets, context);
        v96 = 0;
        *(v5 + 363) = *(v5 + 363) & 0xFC | context[4] ^ 1 | (2 * v110[21]);
        *(v5 + 360) = v110[8];
        *(v5 + 424) = *&v110[12];
        v97 = v111;
        v98 = (v5 + 299);
        v99 = ((context[5] & 1) == 0) | (2 * v110[20]);
        do
        {
          if (context[v96 + 24])
          {
            v100 = *v98 & 0xEC | v99;
            *(v98 - 3) = context[v96 + 24];
            *v98 = v100 | (16 * v110[v96]);
            *(v5 + 392 + 4 * v96) = *(v109 + v96);
            *(v98 - 1) = v97;
            *(v5 + 368) = *(v5 + 368) & 0xF8 | (v96 + 1) & 7;
          }

          ++v96;
          v98 += 8;
        }

        while (v96 != 8);
        if (*&context[16] == 0.0 || *&context[20] == 0.0)
        {
          C3DFramebufferDescriptionSetViewportDependant(v5 + 288, 1);
        }

        else
        {
          C3DFramebufferDescriptionSetViewportDependant(v5 + 288, 0);
          *(v5 + 288) = *&context[16];
        }

        result = *context;
        *(v5 + 376) = *context;
        *(v5 + 384) = result;
      }

      else
      {
        *(v5 + 360) = 0;
        *(v5 + 296) = 0;
      }
    }

    else
    {
      v101 = scn_default_log();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *context = 138412546;
        *&context[4] = v5;
        *&context[12] = 2112;
        *&context[14] = Name;
        _os_log_impl(&dword_21BEF7000, v101, OS_LOG_TYPE_DEFAULT, "Warning: can't create a fbo description for pass %@ - can't find pass description with name %@", context, 0x16u);
      }
    }
  }

  return result;
}

uint64_t _maskValue(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a1 unsignedIntegerValue];
  }

  else if ([a1 hasPrefix:@"0x"])
  {
    v3 = 0;
    sscanf([a1 cStringUsingEncoding:4], "%lu", &v3);
    return v3;
  }

  else
  {

    return [a1 integerValue];
  }
}

uint64_t _depthFuncNameToDepthFunc(void *a1)
{
  if ([a1 isEqualToString:@"never"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"always"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"equal"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"notEqual"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"less"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"lessEqual"])
  {
    return 5;
  }

  if (([a1 isEqualToString:@"greater"] & 1) == 0)
  {
    if ([a1 isEqualToString:@"greaterEqual"])
    {
      return 7;
    }

    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _depthFuncNameToDepthFunc_cold_1();
    }
  }

  return 6;
}

void *_stencilActionDescrToStencilAction(void *a1, _BYTE *a2)
{
  v4 = [a1 valueForKey:@"depthFail"];
  if (v4)
  {
    a2[5] = _stencilOpNameToOp(v4);
  }

  v5 = [a1 valueForKey:@"fail"];
  if (v5)
  {
    a2[6] = _stencilOpNameToOp(v5);
  }

  v6 = [a1 valueForKey:@"pass"];
  if (v6)
  {
    a2[4] = _stencilOpNameToOp(v6);
  }

  v7 = [a1 valueForKey:@"function"];
  if (v7)
  {
    *a2 = _depthFuncNameToDepthFunc(v7);
  }

  v8 = [a1 valueForKey:@"readMask"];
  if (v8)
  {
    a2[1] = [v8 unsignedCharValue];
  }

  v9 = [a1 valueForKey:@"writeMask"];
  if (v9)
  {
    a2[2] = [v9 unsignedCharValue];
  }

  result = [a1 valueForKey:@"referenceValue"];
  if (result)
  {
    result = [result unsignedCharValue];
    a2[3] = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetRasterizerStates(uint64_t a1, CFTypeRef a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 112);
  if (result != a2)
  {
    C3DRasterizerStatesRelease(result);
    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 112) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetBlendStates(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 104);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 104) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 104) = result;
  }

  return result;
}

void _parseTargets(const void *a1, const void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, a2);
  }

  else
  {
    Value = 0;
  }

  if (CFEqual(a1, @"color") || CFEqual(a1, @"color0"))
  {
    v7 = 1;
LABEL_7:
    *(a3 + 5) = 0;
    if (Value)
    {
      v8 = CFDictionaryGetValue(Value, @"format");
      if (v8)
      {
        v9 = v8;
        v10 = C3DRenderBufferFormatFromString();
        if (v10)
        {
LABEL_13:
          v12 = (v7 - 1);
          *(a3 + v12 + 24) = v10;
          *(a3 + v12 + 64) = [-[__CFDictionary objectForKeyedSubscript:](Value objectForKeyedSubscript:{@"mipmapped", "BOOLValue"}];
          if (!Value)
          {
            return;
          }

          v13 = CFDictionaryGetValue(Value, @"scaleFactor");
          if (v13)
          {
            CFNumberGetValue(v13, kCFNumberFloatType, (a3 + 4 * v12 + 32));
          }

          goto LABEL_16;
        }

        v11 = scn_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v9;
          _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, "Warning: unknown texture format : %@", buf, 0xCu);
        }
      }
    }

    LOBYTE(v10) = 1;
    goto LABEL_13;
  }

  if (CFEqual(a1, @"color1"))
  {
    v7 = 2;
    goto LABEL_7;
  }

  if (CFEqual(a1, @"color2"))
  {
    v7 = 3;
    goto LABEL_7;
  }

  if (CFEqual(a1, @"color3"))
  {
    v7 = 4;
    goto LABEL_7;
  }

  if (!CFEqual(a1, @"depth"))
  {
    if (CFEqual(a1, @"stencil"))
    {
      *(a3 + 4) = 0;
      *(a3 + 72) = 44;
      if (!Value)
      {
        return;
      }

      v24 = CFDictionaryGetValue(Value, @"scaleFactor");
      if (v24)
      {
        CFNumberGetValue(v24, kCFNumberFloatType, (a3 + 80));
      }

      v7 = 5;
      goto LABEL_16;
    }

    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _parseTargets_cold_1();
    }
  }

  *(a3 + 4) = 0;
  if (!Value)
  {
    if (*(a3 + 86))
    {
      v25 = 44;
    }

    else
    {
      v25 = 41;
    }

    *(a3 + 72) = v25;
    return;
  }

  v19 = CFDictionaryGetValue(Value, @"format");
  if (!v19)
  {
    goto LABEL_40;
  }

  v20 = v19;
  v21 = C3DRenderBufferFormatFromString();
  if (!v21)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v20;
      _os_log_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_DEFAULT, "Warning: unknown depth texture format : %@", buf, 0xCu);
    }

LABEL_40:
    if (*(a3 + 86))
    {
      LOBYTE(v21) = 44;
    }

    else
    {
      LOBYTE(v21) = 41;
    }
  }

  *(a3 + 72) = v21;
  v23 = CFDictionaryGetValue(Value, @"scaleFactor");
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberFloatType, (a3 + 76));
  }

  v7 = 0;
LABEL_16:
  v14 = CFDictionaryGetValue(Value, @"scaleFactor");
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberFloatType, a3);
  }

  v15 = CFDictionaryGetValue(Value, @"size");
  if (v15)
  {
    v27 = 0;
    *buf = 0;
    CString = SCNStringGetCString(v15);
    sscanf(CString, "%fx%f", buf, &v27);
    *(a3 + 16) = __PAIR64__(v27, *buf);
  }

  v17 = CFDictionaryGetValue(Value, @"target");
  if (v17 && CFEqual(v17, @"texture_rectangle"))
  {
    if (v7 == 1)
    {
      *(a3 + 84) = 1;
    }

    else
    {
      *(a3 + 85) = 1;
    }
  }

  v18 = CFDictionaryGetValue(Value, @"usage");
  if (v18)
  {
    *(a3 + 88) = SCNTextureUsageFromStrings(v18);
  }
}

void C3DFXPassBindInputWithSymbol(uint64_t a1, const void *a2, void *a3)
{
  v6 = C3DFXPassAddInputWithName(a1, a2);
  C3DFXPassInputSetSymbolName(v6, a3);
  v7 = *(a1 + 40);
  v12 = 0;
  ValueOffsetForSymbol = C3DFXTechniqueGetValueOffsetForSymbol(v7, a3, &v12, 0);
  *(v6 + 4) = 2;
  *(v6 + 10) = v12;
  v6[3] = 1;
  v6[11] = ValueOffsetForSymbol;
  v9 = CFGetTypeID(*(a1 + 88));
  if (v9 == C3DFXGLSLProgramGetTypeID())
  {
    UniformIndex = C3DFXGLSLProgramGetUniformIndex(*(a1 + 88), a2);
    if (UniformIndex == -1)
    {
      NextUniformIndex = C3DFXGLSLProgramGetNextUniformIndex(*(a1 + 88));
      v6[5] = NextUniformIndex;
      C3DFXGLSLProgramSetUniformIndex(*(a1 + 88), a2, NextUniformIndex);
    }

    else
    {
      v6[5] = UniformIndex;
    }
  }
}

void *C3DFXPassAddInputWithName(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextIsMainPass_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXPassAddInputWithName_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 520);
  if (v20 == *(a1 + 528))
  {
    v21 = 2 * v20;
    if (v21 <= 1)
    {
      v21 = 1;
    }

    *(a1 + 528) = v21;
    *(a1 + 512) = malloc_type_realloc(*(a1 + 512), 8 * v21, 0x2004093837F09uLL);
  }

  v22 = C3DFXPassInputCreate();
  v23 = *(a1 + 512);
  v24 = *(a1 + 520);
  *(a1 + 520) = v24 + 1;
  *(v23 + 8 * v24) = v22;
  v22[6] = CFRetain(a2);
  CFDictionaryAddValue(*(a1 + 536), a2, v22);
  return v22;
}

void C3DFXPassBindInputWithSemantic(uint64_t a1, const void *a2, int a3)
{
  v6 = C3DFXPassAddInputWithName(a1, a2);
  C3DFXPassInputSetSymbolName(v6, a2);
  *(v6 + 8) = a3;
  if ((a3 - 20) <= 8)
  {
    *(v6 + 4) = 1;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 == C3DFXGLSLProgramGetTypeID())
    {
      UniformIndex = C3DFXGLSLProgramGetUniformIndex(*(a1 + 88), a2);
      if (UniformIndex == -1)
      {
        NextUniformIndex = C3DFXGLSLProgramGetNextUniformIndex(*(a1 + 88));
        v6[5] = NextUniformIndex;
        v11 = *(a1 + 88);

        C3DFXGLSLProgramSetUniformIndex(v11, a2, NextUniformIndex);
      }

      else
      {
        v6[5] = UniformIndex;
      }
    }
  }
}

const void *C3DFXPassGetInputWithName(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextIsMainPass_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      return CFDictionaryGetValue(*(a1 + 536), key);
    }
  }

  else if (key)
  {
    return CFDictionaryGetValue(*(a1 + 536), key);
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXPassAddInputWithName_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  return CFDictionaryGetValue(*(a1 + 536), key);
}

void C3DFXPassInitialize(uint64_t *a1, uint64_t a2)
{
  v108 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 187) & 8) != 0)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassInitialize_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *a1;
  v13 = *(*a1 + 48);
  if (a2 == 1 && v13 || !a2 && *(v12 + 56))
  {
    v14 = C3DFXPassGetDrawInstruction(v12) == 3 || C3DFXPassGetDrawInstruction(*a1) == 6;
    Program = C3DFXPassGetProgram(*a1);
    if (!Program && v14)
    {
      Material = C3DFXPassGetMaterial(*a1);
      if (!Material)
      {
        goto LABEL_19;
      }

      Technique = C3DMaterialGetTechnique(Material);
      if (!Technique)
      {
        goto LABEL_19;
      }

      v18 = Technique;
      if (C3DFXTechniqueGetPassCount(Technique) != 1)
      {
        goto LABEL_19;
      }

      PassAtIndex = C3DFXTechniqueGetPassAtIndex(v18, 0);
      Program = C3DFXPassGetProgram(PassAtIndex);
    }

    if (Program)
    {
      goto LABEL_76;
    }

LABEL_19:
    if (a2 == 1)
    {
      if (!v13 || (v20 = C3DFXGLSLProgramCreateWithName(v13)) == 0)
      {
        v21 = scn_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          C3DFXPassInitialize_cold_4();
        }

        goto LABEL_76;
      }

      goto LABEL_29;
    }

    v22 = *(*a1 + 40);
    if (!v22)
    {
LABEL_55:
      v53 = *a1;
      v54 = *(*a1 + 72);
      if (v54)
      {
        v55 = C3DGetTextResourceWithNameAllowingHotReload(v54);
        v53 = *a1;
      }

      else
      {
        v55 = 0;
      }

      v56 = *(v53 + 56);
      v57 = *(v53 + 64);
      v58 = SCNMetalLanguageVersion();
      v31 = C3DFXMetalProgramCreateFromSource(v56, v57, 0, v55, 0, 0, 0, v58, 1);
      C3DFXProgramSetClientProgram(v31, *(*a1 + 80));
      if (!v31)
      {
        v79 = scn_default_log();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          C3DFXPassInitialize_cold_2(a1, v79);
        }

        goto LABEL_76;
      }

LABEL_59:
      if (v14)
      {
        v59 = C3DMaterialCreate();
        C3DMaterialSetDoubleSided(v59, 1);
        C3DFXProgramSetOpaque(v31, 1);
        C3DMaterialSetupSinglePassTechniqueWithProgram(v59, v31);
        v60 = C3DMaterialGetTechnique(v59);
        if (C3DFXTechniqueGetPassCount(v60) != 1)
        {
          v61 = scn_default_log();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            C3DFXPassInitialize_cold_3(v61, v62, v63, v64, v65, v66, v67, v68);
          }
        }

        v69 = C3DFXTechniqueGetPassAtIndex(v60, 0);
        RenderContext = C3DEngineContextGetRenderContext(a1[3]);
        v71 = *a1;
        if (RenderContext)
        {
          v72 = v71[65];
          v69[66] = v72;
          v69[65] = v72;
          v73 = 8 * v72;
          v74 = malloc_type_malloc(8 * v72, 0x33BE6EF2uLL);
          v69[64] = v74;
          memcpy(v74, *(*a1 + 512), v73);
          v75 = v69[65];
          if (v75 >= 1)
          {
            for (i = 0; i < v75; ++i)
            {
              v77 = *(v69[64] + 8 * i);
              if (v77)
              {
                CFRetain(v77);
                v75 = v69[65];
              }
            }
          }
        }

        else
        {
          *(v69 + 65) = *(v71 + 65);
          v69[64] = v71[64];
          v71[66] = 0;
          *(v71 + 32) = 0u;
        }

        C3DFXTechniqueSetParentTechnique(v60, a1[1]);
        C3DFXPassSetMaterial(*a1, v59);
        CFRelease(v59);
      }

      else
      {
        C3DFXPassSetProgram(*a1, v31);
        IsOpaque = C3DFXPassGetProgramIsOpaque(*a1);
        C3DFXProgramSetOpaque(v31, IsOpaque);
      }

      CFRelease(v31);
      goto LABEL_76;
    }

    v23 = v22[17];
    if (!v23)
    {
      if (!v22[18] && !v22[19])
      {
        goto LABEL_55;
      }

      v32 = C3DEngineContextGetRenderContext(a1[3]);
      if (!v32)
      {
        goto LABEL_55;
      }

      v33 = v32;
      if (v22[18])
      {
        v34 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
      }

      else
      {
        v34 = [MEMORY[0x277CCA8D8] mainBundle];
      }

      v47 = v34;
      v48 = v22[19];
      if (v48)
      {
        v49 = [v34 URLForResource:v48 withExtension:@"metallib"];
        if (!v49)
        {
          v51 = scn_default_log();
          if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          v52 = v22[19];
          *buf = 138412546;
          v103 = v52;
          v104 = 2112;
          v105 = v47;
          v39 = "Warning: Unable to find metal library named %@ in bundle %@";
          v42 = v51;
          goto LABEL_42;
        }

        v50 = [-[SCNMTLRenderContext device](v33) newLibraryWithURL:v49 error:0];
      }

      else
      {
        v50 = [-[SCNMTLRenderContext device](v33) newDefaultLibraryWithBundle:v34 error:0];
      }

      v23 = v50;
      if (!v23)
      {
        goto LABEL_55;
      }
    }

    v24 = [v23 functionNames];
    v25 = [v24 containsObject:*(*a1 + 56)];
    v26 = [v24 containsObject:*(*a1 + 64)];
    v27 = v26;
    if (v25 && (v26 & 1) != 0)
    {
      v28 = CFHash(v23);
      v30 = *(*a1 + 56);
      v29 = *(*a1 + 64);
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __C3DFXPassInitialize_block_invoke;
      v101[3] = &__block_descriptor_40_e5_Q8__0l;
      v101[4] = v28;
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __C3DFXPassInitialize_block_invoke_2;
      v100[3] = &unk_278301E10;
      v100[4] = v23;
      v20 = C3DFXMetalProgramCreateFromLibrary(v30, v29, 0, v101, v100);
      if (v20)
      {
LABEL_29:
        v31 = v20;
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v35 = scn_default_log();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (!v36)
      {
        goto LABEL_55;
      }

      v37 = *(*a1 + 16);
      v38 = *(*a1 + 64);
      *buf = 138412546;
      v103 = v37;
      v104 = 2112;
      v105 = v38;
      v39 = "Warning: Technique for pass %@ has a custom Metal library, but the %@ fragment function is missing";
    }

    else
    {
      if (!v27)
      {
        if (!v36)
        {
          goto LABEL_55;
        }

        v44 = *(*a1 + 16);
        v46 = *(*a1 + 56);
        v45 = *(*a1 + 64);
        *buf = 138412802;
        v103 = v44;
        v104 = 2112;
        v105 = v46;
        v106 = 2112;
        v107 = v45;
        v39 = "Warning: Technique for pass %@ has a custom Metal library, but the %@ and %@ vertex and fragment functions are missing";
        v42 = v35;
        v43 = 32;
        goto LABEL_45;
      }

      if (!v36)
      {
        goto LABEL_55;
      }

      v40 = *(*a1 + 16);
      v41 = *(*a1 + 56);
      *buf = 138412546;
      v103 = v40;
      v104 = 2112;
      v105 = v41;
      v39 = "Warning: Technique for pass %@ has a custom Metal library, but the %@ vertex function is missing";
    }

    v42 = v35;
LABEL_42:
    v43 = 22;
LABEL_45:
    _os_log_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_DEFAULT, v39, buf, v43);
    goto LABEL_55;
  }

LABEL_76:
  v80 = *a1;
  v81 = *(*a1 + 216);
  if (v81)
  {
    v81(a1, a2);
    v80 = *a1;
  }

  v82 = C3DFXPassGetProgram(v80);
  if (a2 == 1)
  {
    v83 = v82;
    if (v82)
    {
      v84 = *a1;
      v85 = CFGetTypeID(v82);
      if (v85 == C3DFXGLSLProgramGetTypeID())
      {
        if (*(v84 + 520) >= 1)
        {
          v86 = 0;
          do
          {
            v87 = *(*(v84 + 512) + 8 * v86);
            if ((*(v87 + 80) & 4) != 0)
            {
              if (!*(v87 + 32))
              {
                v89 = scn_default_log();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
                {
                  C3DFXPassInitialize_cold_6(buf, &v103, v89);
                }
              }

              v90 = C3DVertexAttribFromParameterSemantic(*(v87 + 32), *(v87 + 104));
              if (v90 != 14)
              {
                C3DFXGLSLProgramSetAttributeIndex(v83, *(v87 + 48), v90);
              }
            }

            else
            {
              UniformIndex = C3DFXGLSLProgramGetUniformIndex(v83, *(v87 + 48));
              if (UniformIndex == -1)
              {
                NextUniformIndex = C3DFXGLSLProgramGetNextUniformIndex(v83);
                *(v87 + 40) = NextUniformIndex;
                C3DFXGLSLProgramSetUniformIndex(v83, *(v87 + 48), NextUniformIndex);
              }

              else
              {
                *(v87 + 40) = UniformIndex;
              }
            }

            ++v86;
          }

          while (v86 < *(v84 + 520));
        }
      }

      else
      {
        v92 = scn_default_log();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
        {
          C3DFXPassInitialize_cold_5(v92, v93, v94, v95, v96, v97, v98, v99);
        }
      }
    }
  }
}

uint64_t C3DFXPassSetup(uint64_t result)
{
  v1 = *(*result + 224);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t C3DFXPassWillExecute(uint64_t *a1)
{
  result = C3DEngineContextGetFXContext(a1[3]);
  *(result + 120) = a1[9];
  v3 = *(*a1 + 240);
  if (v3)
  {

    return v3(a1);
  }

  return result;
}

uint64_t C3DFXPassExecute(uint64_t result)
{
  v1 = *(*result + 248);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t C3DFXPassDidExecute(uint64_t result)
{
  v1 = *(*result + 256);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t C3DFXPassReshape(uint64_t result)
{
  v1 = *(*result + 264);
  if (v1)
  {
    return v1();
  }

  return result;
}

void C3DFXPassAddInputsWithDescription(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  context[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      if (theDict)
      {
        goto LABEL_4;
      }

LABEL_11:
      *(a1 + 520) = 0;
      return;
    }
  }

  if (!theDict)
  {
    goto LABEL_11;
  }

LABEL_4:
  Count = CFDictionaryGetCount(theDict);
  v15 = Count;
  *(a1 + 520) = 0;
  if (Count < 1)
  {
    v16 = 0;
  }

  else
  {
    *(a1 + 512) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    context[0] = a1;
    context[1] = a3;
    CFDictionaryApplyFunction(theDict, _convertInputsDescriptionToInputs, context);
    v16 = *(a1 + 520);
  }

  if (v16 != v15)
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassAddInputsWithDescription_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

void _convertInputsDescriptionToInputs(const void *a1, void *a2, uint64_t *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v5 = a3[1];
  v7 = C3DFXPassAddInputWithName(*a3, a1);
  v8 = CFGetTypeID(a2);
  if (v8 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a2, @"target");
    v10 = CFDictionaryGetValue(a2, @"sampler");
    if (!v10)
    {
      v10 = a2;
    }

    v7[9] = C3DTextureSamplerCreateWithPropertyList(v10);
    a2 = Value;
  }

  if (!a2)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      _convertInputsDescriptionToInputs_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  C3DFXPassInputSetSymbolName(v7, a2);
  if (CFEqual(a2, @"COLOR"))
  {
    v19 = 0;
    *(v7 + 80) |= 1u;
    v20 = *(v6 + 184) | 0x2000000;
LABEL_12:
    *(v6 + 184) = v20;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"DEPTH"))
  {
    v19 = 0;
    *(v7 + 80) |= 2u;
    v20 = *(v6 + 184) | 0x4000000;
    goto LABEL_12;
  }

  Description = C3DFXTechniqueGetDescription(v5);
  if (!Description)
  {
    goto LABEL_22;
  }

  v22 = Description;
  v23 = CFDictionaryGetValue(Description, @"targets");
  if (!v23 || (v19 = CFDictionaryGetValue(v23, a2)) == 0)
  {
    v24 = CFDictionaryGetValue(v22, @"symbols");
    if (v24)
    {
      v25 = CFDictionaryGetValue(v24, a2);
LABEL_21:
      v19 = v25;
      goto LABEL_13;
    }

    if (_convertSemanticStringToSemantic(a2))
    {
      v26 = @"semantic";
      v27[0] = a2;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      goto LABEL_21;
    }

LABEL_22:
    v19 = 0;
  }

LABEL_13:
  _setupInput(v6, v7, a1, v5, v19);
}

void C3DFXPassAddOutputsWithDescription(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      if (theDict)
      {
        goto LABEL_4;
      }

LABEL_11:
      *(a1 + 440) = 0;
      return;
    }
  }

  if (!theDict)
  {
    goto LABEL_11;
  }

LABEL_4:
  Count = CFDictionaryGetCount(theDict);
  v15 = Count;
  *(a1 + 440) = 0;
  if (Count < 1)
  {
    v16 = 0;
  }

  else
  {
    *(a1 + 432) = malloc_type_malloc(Count << 6, 0x1060040C031C1FFuLL);
    v25[1] = a3;
    v25[2] = 0;
    v25[0] = a1;
    CFDictionaryApplyFunction(theDict, _convertOutputsDescriptionToOutputs, v25);
    v16 = *(a1 + 440);
  }

  if (v15 < v16)
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassAddOutputsWithDescription_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

void _convertOutputsDescriptionToOutputs(const void *a1, CFTypeRef cf1, uint64_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v5 = a3[1];
  if (CFEqual(cf1, @"COLOR"))
  {
    *(v6 + 184) |= 0xA00000u;
    if (!CFEqual(cf1, @"DEPTH"))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!CFEqual(cf1, @"DEPTH"))
  {
    Description = C3DFXTechniqueGetDescription(v5);
    if (Description)
    {
      v13 = Description;
      Value = CFDictionaryGetValue(Description, @"targets");
      if (Value)
      {
        v15 = CFDictionaryGetValue(Value, cf1);
        if (v15)
        {
LABEL_22:
          v8 = *(v6 + 432) + (*(v6 + 440) << 6);
          *(v8 + 48) = 0;
          *(v8 + 20) = 0;
          *v8 = 1065353216;
          v19 = CFDictionaryGetValue(v15, @"global");
          if (v19 && CFBooleanGetValue(v19))
          {
            *(v8 + 20) = 2147483646;
          }

          v7 = (v6 + 440);
          v20 = CFDictionaryGetValue(v15, @"persistent");
          if (v20 && CFBooleanGetValue(v20))
          {
            *(v8 + 20) = 0x7FFFFFFF;
          }

          v21 = CFDictionaryGetValue(v15, @"clearColor");
          if (v21)
          {
            sscanf([v21 UTF8String], "%f %f %f %f", v8 + 32, v8 + 36, v8 + 40, v8 + 44);
            v9 = 0;
            *(v8 + 48) = 1;
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_7;
        }
      }

      v16 = CFDictionaryGetValue(v13, @"symbols");
      if (v16)
      {
        v17 = CFDictionaryGetValue(v16, cf1);
        if (v17)
        {
          v15 = v17;
          v18 = scn_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = cf1;
            _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: symbol named %@ should be in targets not symbols", buf, 0xCu);
          }

          goto LABEL_22;
        }
      }
    }

    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = cf1;
      _os_log_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_DEFAULT, "Warning: _convertOutputsDescriptionToOutputs - can't find output named %@", buf, 0xCu);
    }

    return;
  }

LABEL_5:
  *(v6 + 184) |= 0x1200000u;
LABEL_6:
  v7 = (v6 + 440);
  v8 = *(v6 + 432) + (*(v6 + 440) << 6);
  *(v8 + 48) = 0;
  *(v8 + 20) = 0;
  *v8 = 1065353216;
  v9 = 1;
LABEL_7:
  if (CFEqual(a1, @"color") || CFEqual(a1, @"color0"))
  {
    v10 = 1;
LABEL_10:
    *(v8 + 16) = v10;
    *(v6 + 184) |= 0x200000u;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = CFRetain(cf1);
    }

    *(v8 + 8) = v11;
    ++*v7;
    return;
  }

  if (CFEqual(a1, @"color1"))
  {
    v10 = 2;
    goto LABEL_10;
  }

  if (CFEqual(a1, @"color2"))
  {
    v10 = 3;
    goto LABEL_10;
  }

  if (CFEqual(a1, @"color3"))
  {
    v10 = 4;
    goto LABEL_10;
  }

  if (CFEqual(a1, @"depth"))
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (CFEqual(a1, @"stencil"))
  {
    v10 = 5;
    goto LABEL_10;
  }

  v23 = scn_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    _convertOutputsDescriptionToOutputs_cold_1();
  }
}

uint64_t C3DFXPassRequireFBO(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 184);
  if ((v3 & 0x400000) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = (a3 ^ 1) & (v3 >> 21);
  }

  if (*(a1 + 24))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL C3DFXPassIsOverridingPrograms(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextIsMainPass_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96) != 0;
}

const void *C3DFXPassGetOverridingProgramHashCode(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  if (!C3DFXPassIsOverridingPrograms(a2))
  {
    return 0;
  }

  v6 = a2[70];
  if (!v6)
  {
    v7 = *(MEMORY[0x277CBF150] + 16);
    *&v45.version = *MEMORY[0x277CBF150];
    *&v45.release = v7;
    v45.equal = *(MEMORY[0x277CBF150] + 32);
    v45.release = C3DProgramHashCodeReleaseCallBack;
    a2[70] = CFDictionaryCreateMutable(0, 0, 0, &v45);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, a2, __RendererElementWillDie, @"kC3DNotificationRendererElementWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = a2[70];
  }

  Value = CFDictionaryGetValue(v6, a3);
  if (!Value)
  {
    Material = C3DFXPassGetMaterial(a2);
    if (Material)
    {
      v11 = Material;
      if (C3DMaterialGetCommonProfileIfNoTechnique(Material))
      {
        Node = C3DRendererElementGetNode(a3);
        if (a1)
        {
          RenderContext = C3DEngineContextGetRenderContext(a1);
          v15 = (a3 + 36);
          v14 = a3[36];
          if (RenderContext)
          {
            if ([(SCNMTLRenderContext *)RenderContext reverseZ])
            {
              v16 = -128;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v21 = (v14 >> 11) & 7;
          CommonProfileConditioners = C3DEngineContextGetCommonProfileConditioners(a1);
          PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(a1);
          v23 = 8 * (PreferredRenderMode & 3);
          if ((PreferredRenderMode & 3) != 0)
          {
            v24 = 32 * (C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(a1) & 3);
          }

          else
          {
            v24 = 0;
          }

          v19 = v16 | v21 | v23 | v24;
          v20 = C3DEngineContextGetEyeCount(a1) << 16;
        }

        else
        {
          CommonProfileConditioners = 0;
          v15 = (a3 + 36);
          v19 = (a3[36] >> 11) & 7;
          v20 = 0x10000;
        }

        v25 = C3DRendererElementGetMaterial(a3);
        Geometry = C3DRendererElementGetGeometry(a3);
        if (!C3DRendererElementIsOpaque(a3) || (v19 & 0x18) != 0) && (C3DFXPassGetDrawOnlyShadowCaster(a2) & 1) != 0 || v25 && (C3DEntityHasShaderModifiers(v25, 0))
        {
          v27 = *v15;
LABEL_35:
          a3[36] = v27 | 0x400;
          v40 = CommonProfileConditioners | (v19 << 24);
          v41 = C3DRendererElementGetGeometry(a3);
          Mesh = C3DRendererElementGetMesh(a3);
          MeshElement = C3DRendererElementGetMeshElement(a3);
          v39 = C3DRendererElementGetMaterial(a3);
          v35 = v40 | v20 | 0x20;
          v36 = Node;
          v37 = v41;
          v38 = Mesh;
          v34 = MeshElement;
LABEL_36:
          Value = C3DProgramHashCodeCreate(v36, v37, v38, v34, 0, v39, v35);
          v44 = a2[70];
          if (Value)
          {
            CFDictionarySetValue(v44, a3, Value);
            CFRelease(Value);
          }

          else
          {
            CFDictionaryRemoveValue(v44, a3);
          }

          return Value;
        }

        if (Geometry)
        {
          v28 = C3DEntityHasShaderModifiers(Geometry, 0) ^ 1;
        }

        else
        {
          v28 = 1;
        }

        if (v25 && v28 && (CommonProfile = C3DMaterialGetCommonProfile(v25), (EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 15, 0)) != 0))
        {
          HasImageOrTexture = C3DEffectSlotHasImageOrTexture(EffectSlot);
          v27 = *v15;
          if (HasImageOrTexture)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v27 = *v15;
          if (!v28)
          {
            goto LABEL_35;
          }
        }

        a3[36] = v27 & 0xFBFF;
        v32 = C3DRendererElementGetGeometry(a3);
        v33 = C3DRendererElementGetMesh(a3);
        v34 = C3DRendererElementGetMeshElement(a3);
        v35 = v20 | (v19 << 24) | CommonProfileConditioners;
        v36 = Node;
        v37 = v32;
        v38 = v33;
        v39 = v11;
        goto LABEL_36;
      }
    }

    return 0;
  }

  return Value;
}

void __RendererElementWillDie(int a1, uint64_t a2, int a3, void *key)
{
  if (!*(a2 + 560))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __RendererElementWillDie_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFDictionaryRemoveValue(*(a2 + 560), key);
}

const char *C3DFXPassGetCStringName(uint64_t a1)
{
  result = CFStringGetCStringPtr(*(a1 + 16), 0x8000100u);
  if (!result)
  {
    if (CFStringGetCString(*(a1 + 16), C3DFXPassGetCStringName_cstr, 99, 0x8000100u))
    {
      return C3DFXPassGetCStringName_cstr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DFXPassGetBlendStates(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

uint64_t C3DFXPassGetRasterizerStates(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

void *C3DFXPassSetInitializeBlock(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = _Block_copy(aBlock);
  *(a1 + 544) = result;
  return result;
}

void *C3DFXPassSetExecuteBlock(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = _Block_copy(aBlock);
  *(a1 + 552) = result;
  return result;
}

uint64_t C3DFXPassInstanceGetPass(uint64_t a1)
{
  if (a1)
  {
    return *a1;
  }

  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextRenderSubTechnique_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

void _C3DFXPassInputCFFinalize(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[12];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }
}

__CFArray *_C3DFXPassInputCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 72;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v3, @"name", @"sampler");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 56;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v7, @"name", @"symbolName");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 48;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v11, @"name", @"uniformName");
  CFDictionarySetValue(v11, @"type", v12);
  CFDictionarySetValue(v11, @"address", v14);
  CFDictionarySetValue(v11, @"semantic", v13);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v13);
  CFRelease(v11);
  CFRelease(v14);
  CFRelease(v12);
  return Mutable;
}

void _C3DFXPassCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    v27 = a1;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    v31 = 0xBFF0000000000000;
    v3 = *(a1 + 280);
    v34 = 0;
    v32 = v3;
    v33 = 0;
    v35 = 0;
    v2(&v27);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationPassWillDie", a1, 0, 1u);
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 536);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 536) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 72) = 0;
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 88) = 0;
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 96) = 0;
  }

  v13 = *(a1 + 104);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 104) = 0;
  }

  C3DRasterizerStatesRelease(*(a1 + 112));
  v14 = *(a1 + 456);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 456) = 0;
  }

  v15 = *(a1 + 472);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 472) = 0;
  }

  v16 = *(a1 + 464);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 464) = 0;
  }

  if (*(a1 + 560))
  {
    v17 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v17, a1, @"kC3DNotificationRendererElementWillDie", 0);
    v18 = *(a1 + 560);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 560) = 0;
    }
  }

  if (*(a1 + 520) >= 1)
  {
    v19 = 0;
    do
    {
      CFRelease(*(*(a1 + 512) + 8 * v19++));
    }

    while (*(a1 + 520) > v19);
  }

  v20 = *(a1 + 440);
  if (v20)
  {
    v21 = 0;
    v22 = *(a1 + 432);
    v23 = 8;
    do
    {
      v24 = *(v22 + v23);
      if (v24)
      {
        CFRelease(v24);
        v22 = *(a1 + 432);
        *(v22 + v23) = 0;
        v20 = *(a1 + 440);
      }

      ++v21;
      v23 += 64;
    }

    while (v21 < v20);
  }

  free(*(a1 + 512));
  free(*(a1 + 432));
  v25 = *(a1 + 544);
  if (v25)
  {
    _Block_release(v25);
  }

  v26 = *(a1 + 552);
  if (v26)
  {
    _Block_release(v26);
  }
}

__CFArray *_C3DFXPassCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 16;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 88;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v9, @"name", @"program");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v39 = 0;
  valuePtr = 2;
  v38 = a1 + 24;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v13, @"name", @"draw");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 448;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v17, @"name", @"pointOfView");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 456;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v21, @"name", @"rootNode");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 472;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v25, @"name", @"mirrorNode");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 96;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v32 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v29, @"name", @"material");
  CFDictionarySetValue(v29, @"type", v30);
  CFDictionarySetValue(v29, @"address", v32);
  CFDictionarySetValue(v29, @"semantic", v31);
  CFArrayAppendValue(Mutable, v29);
  CFRelease(v31);
  CFRelease(v29);
  CFRelease(v32);
  CFRelease(v30);
  v33 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 536;
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v36 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v33, @"name", @"nameToInput");
  CFDictionarySetValue(v33, @"type", v34);
  CFDictionarySetValue(v33, @"address", v36);
  CFDictionarySetValue(v33, @"semantic", v35);
  CFArrayAppendValue(Mutable, v33);
  CFRelease(v35);
  CFRelease(v33);
  CFRelease(v36);
  CFRelease(v34);
  return Mutable;
}

uint64_t _stencilOpNameToOp(void *a1)
{
  if ([a1 isEqualToString:@"keep"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"zero"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"replace"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"increment"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"decrement"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"invert"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"incrementWrap"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"decrementWrap"])
  {
    return 7;
  }

  v3 = scn_default_log();
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _depthFuncNameToDepthFunc_cold_1();
    return 0;
  }

  return result;
}

uint64_t _blendFactorFromString(void *a1)
{
  if ([a1 isEqualToString:@"zero"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"one"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"srcColor"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"oneMinusSrcColor"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"srcAlpha"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"oneMinusSrcAlpha"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"dstColor"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"oneMinusDstColor"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"dstAlpha"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"oneMinusDstAlpha"])
  {
    return 9;
  }

  if ([a1 isEqualToString:@"constantColor"])
  {
    return 10;
  }

  if ([a1 isEqualToString:@"oneMinusConstantColor"])
  {
    return 11;
  }

  if ([a1 isEqualToString:@"constantAlpha"])
  {
    return 12;
  }

  if ([a1 isEqualToString:@"oneMinusConstantAlpha"])
  {
    return 13;
  }

  if (([a1 isEqualToString:@"alphaSaturate"] & 1) == 0)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _blendFactorFromString_cold_1();
    }

    return 1;
  }

  return 14;
}

uint64_t _blendOpFromString(void *a1)
{
  if ([a1 isEqualToString:@"add"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"substract"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"reverseSubstract"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"min"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"max"])
  {
    return 4;
  }

  v3 = scn_default_log();
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _blendOpFromString_cold_1();
    return 0;
  }

  return result;
}

void _setupInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextIsMainPass_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCreateCopy_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  *(a2 + 16) = 0;
  v24 = [a5 valueForKey:@"semantic"];
  if (v24)
  {
    v25 = _convertSemanticStringToSemantic(v24);
    if (v25)
    {
      v26 = v25;
      *(a2 + 32) = v25;
      v27 = [objc_msgSend(a5 valueForKey:{@"channel", "intValue"}];
      *(a2 + 104) = v27;
      if (C3DVertexAttribFromParameterSemantic(v26, v27) != 14)
      {
        *(a2 + 80) |= 4u;
      }
    }

    return;
  }

  if ((*(a2 + 80) & 3) != 0)
  {
LABEL_11:
    *(a2 + 16) = 1;
    return;
  }

  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"type");
    if (Value)
    {
      v29 = Value;
      if (CFEqual(Value, @"color") || CFEqual(v29, @"depth") || CFEqual(v29, @"stencil"))
      {
        goto LABEL_11;
      }

      *(a2 + 16) = 2;
      *(a2 + 24) = C3DBaseTypeArraySizeFromString(v29);
      *(a2 + 20) = C3DBaseTypeFromMetalOrGLSLString(v29);
      v46 = 0;
      ValueOffsetForSymbol = C3DFXTechniqueGetValueOffsetForSymbol(a4, *(a2 + 56), &v46, 0);
      *(a2 + 88) = ValueOffsetForSymbol;
      if (ValueOffsetForSymbol == -1)
      {
        *(a2 + 16) = 0;
      }

      else
      {
        v31 = v46;
        if (v46 != *(a2 + 20))
        {
          v32 = scn_default_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            _setupInput_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
          }

          v31 = *(a2 + 20);
        }

        if (v31 == 5)
        {
          v40 = [a5 valueForKey:@"image"];
          if (v40)
          {
            v41 = C3DImageCreateWithName(v40);
            if (v41)
            {
              v42 = v41;
              v43 = C3DFXSamplerCreate();
              C3DFXSamplerSetImage(v43, v42);
              CFRelease(v42);
              C3DFXTechniqueSetValueForSymbol(a4, *(a2 + 56), v43);
              CFRelease(v43);
            }
          }
        }
      }
    }

    else
    {
      v45 = scn_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        _setupInput_cold_4();
      }
    }
  }

  else
  {
    v44 = scn_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      _setupInput_cold_5();
    }
  }
}

uint64_t _convertSemanticStringToSemantic(void *a1)
{
  if ([a1 isEqualToString:@"vertex"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"normal"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"color"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"texcoord"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"tangent"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"modelViewProjectionTransform"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"modelViewTransform"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"modelTransform"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"viewTransform"])
  {
    return 9;
  }

  if ([a1 isEqualToString:@"projectionTransform"])
  {
    return 10;
  }

  if ([a1 isEqualToString:@"normalTransform"])
  {
    return 11;
  }

  if ([a1 isEqualToString:@"modelViewProjectionInverseTransform"])
  {
    return 12;
  }

  if ([a1 isEqualToString:@"modelViewInverseTransform"])
  {
    return 13;
  }

  if ([a1 isEqualToString:@"modelInverseTransform"])
  {
    return 14;
  }

  if ([a1 isEqualToString:@"viewInverseTransform"])
  {
    return 15;
  }

  if ([a1 isEqualToString:@"projectionInverseTransform"])
  {
    return 16;
  }

  if ([a1 isEqualToString:@"normalInverseTransform"])
  {
    return 17;
  }

  return 0;
}

__CFString *C3DBlendFactorToString(unsigned int a1)
{
  if (a1 >= 0xF)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DBlendFactorToString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return str_BlendModes[a1];
}

__CFString *C3DBlendOpToString(unsigned int a1)
{
  if (a1 >= 5)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DBlendOpToString_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return str_BlendOps[a1];
}

__CFString *_C3DBlendStatesCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DBlendStates %p targetCount:%d needsBlendColor:%d\n", a1, *(a1 + 48), *(a1 + 56));
  if (*(a1 + 48) >= 1)
  {
    v3 = 0;
    v4 = (a1 + 23);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      if (*(v4 - 6))
      {
        v8 = *v4;
        v9 = a1;
        v10 = Mutable;
        v11 = *(v4 - 1);
        v12 = *(v4 - 2);
        v13 = "true";
        if ((*(v4 - 7) & 1) == 0)
        {
          v13 = "false";
        }

        v29 = v13;
        v14 = C3DBlendFactorToString(v5);
        v15 = C3DBlendOpToString(v7);
        v16 = C3DBlendFactorToString(v6);
        v17 = C3DBlendFactorToString(v12);
        v18 = C3DBlendOpToString(v8);
        v19 = v11;
        Mutable = v10;
        a1 = v9;
        v28 = C3DBlendFactorToString(v19);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)] alpha[(src * %@) %@ (dst * %@)]\n", v29, v14, v15, v16, v17, v18, v28);
      }

      else
      {
        if (*(v4 - 7))
        {
          v20 = "true";
        }

        else
        {
          v20 = "false";
        }

        v21 = C3DBlendFactorToString(v5);
        v22 = C3DBlendOpToString(v7);
        v24 = C3DBlendFactorToString(v6);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)]\n", v20, v21, v22, v24, v25, v26, v27);
      }

      ++v3;
      v4 += 8;
    }

    while (v3 < *(a1 + 48));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t __C3DBlendStatesGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DBlendStatesGetTypeID_typeID = result;
  return result;
}

uint64_t C3DBlendStatesCreate(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesGetTypeID_onceToken != -1)
  {
    C3DBlendStatesCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DBlendStatesGetTypeID_typeID, 48);
  if (a2 > 3)
  {
    return 0;
  }

  *(result + 48) = a2;
  if (a2 < 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    v7 = (result + 16);
    v8 = (a1 + 2);
    do
    {
      *v7 = *(v8 - 1);
      if (*(v8 - 2) == 1)
      {
        v5.i16[0] = *v8;
        v5.i64[1] = v5.i64[0];
        *v5.i8 = vceq_s8(vqtbl1_s8(v5, 0x101000000000101), 0xC0A0D0B0C0A0D0BLL);
        v5.i8[0] = vmaxv_u8(*v5.i8);
        v6 |= v5.i32[0];
        if (*(v8 - 1) == 1)
        {
          v5.i16[0] = *(v8 + 3);
          v5.i64[1] = v5.i64[0];
          *v5.i8 = vceq_s8(vqtbl1_s8(v5, 16843009), 0xC0A0D0B0C0A0D0BLL);
          v5.i8[0] = vmaxv_u8(*v5.i8);
          v6 |= v5.i32[0];
        }
      }

      v8 += 4;
      ++v7;
      --a2;
    }

    while (a2);
  }

  *(result + 56) = v6 & 1;
  return result;
}

uint64_t C3DBlendStatesGetDesc(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DBlendStatesGetDesc_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 48) <= a2)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DBlendStatesGetDesc_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return *(a1 + 8 * a2 + 16);
}

uint64_t C3DBlendStatesNeedsConstantColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DBlendStatesGetDesc_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 56);
}

uint64_t C3DBlendStatesDefaultAdditive()
{
  if (C3DBlendStatesDefaultAdditive_onceToken != -1)
  {
    C3DBlendStatesDefaultAdditive_cold_1();
  }

  return C3DBlendStatesDefaultAdditive_states;
}

uint64_t __C3DBlendStatesDefaultAdditive_block_invoke()
{
  v1 = 0x1010001010001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultAdditive_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultMultiplicative()
{
  if (C3DBlendStatesDefaultMultiplicative_onceToken != -1)
  {
    C3DBlendStatesDefaultMultiplicative_cold_1();
  }

  return C3DBlendStatesDefaultMultiplicative_states;
}

uint64_t __C3DBlendStatesDefaultMultiplicative_block_invoke()
{
  v1 = 0x2000002000001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultMultiplicative_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultMultiplicativeSeparate()
{
  if (C3DBlendStatesDefaultMultiplicativeSeparate_onceToken != -1)
  {
    C3DBlendStatesDefaultMultiplicativeSeparate_cold_1();
  }

  return C3DBlendStatesDefaultMultiplicativeSeparate_states;
}

uint64_t __C3DBlendStatesDefaultMultiplicativeSeparate_block_invoke()
{
  v1 = 0x10002000101;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultMultiplicativeSeparate_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultOver()
{
  if (C3DBlendStatesDefaultOver_onceToken != -1)
  {
    C3DBlendStatesDefaultOver_cold_1();
  }

  return C3DBlendStatesDefaultOver_states;
}

uint64_t __C3DBlendStatesDefaultOver_block_invoke()
{
  v1 = 0x5010005010001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultOver_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultOverBlack()
{
  if (C3DBlendStatesDefaultOverBlack_onceToken != -1)
  {
    C3DBlendStatesDefaultOverBlack_cold_1();
  }

  return C3DBlendStatesDefaultOverBlack_states;
}

uint64_t __C3DBlendStatesDefaultOverBlack_block_invoke()
{
  v1 = 0x5000005000001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultOverBlack_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultReplace()
{
  if (C3DBlendStatesDefaultReplace_onceToken != -1)
  {
    C3DBlendStatesDefaultReplace_cold_1();
  }

  return C3DBlendStatesDefaultReplace_states;
}

uint64_t __C3DBlendStatesDefaultReplace_block_invoke()
{
  v1 = 0x10000010000;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultReplace_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultSubtract()
{
  if (C3DBlendStatesDefaultSubtract_onceToken != -1)
  {
    C3DBlendStatesDefaultSubtract_cold_1();
  }

  return C3DBlendStatesDefaultSubtract_states;
}

uint64_t __C3DBlendStatesDefaultSubtract_block_invoke()
{
  v1 = 0x1000201010101;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultSubtract_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultMax()
{
  if (C3DBlendStatesDefaultMax_onceToken != -1)
  {
    C3DBlendStatesDefaultMax_cold_1();
  }

  return C3DBlendStatesDefaultMax_states;
}

uint64_t __C3DBlendStatesDefaultMax_block_invoke()
{
  v1 = 0x401010401010001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultMax_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultScreen()
{
  if (C3DBlendStatesDefaultScreen_onceToken != -1)
  {
    C3DBlendStatesDefaultScreen_cold_1();
  }

  return C3DBlendStatesDefaultScreen_states;
}

uint64_t __C3DBlendStatesDefaultScreen_block_invoke()
{
  v1 = 0x5010003010101;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultScreen_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultConstantAlpha()
{
  if (C3DBlendStatesDefaultConstantAlpha_onceToken != -1)
  {
    C3DBlendStatesDefaultConstantAlpha_cold_1();
  }

  return C3DBlendStatesDefaultConstantAlpha_states;
}

uint64_t __C3DBlendStatesDefaultConstantAlpha_block_invoke()
{
  v1 = 0xD0C000D0C0001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultConstantAlpha_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultConstantColor()
{
  if (C3DBlendStatesDefaultConstantColor_onceToken != -1)
  {
    C3DBlendStatesDefaultConstantColor_cold_1();
  }

  return C3DBlendStatesDefaultConstantColor_states;
}

uint64_t __C3DBlendStatesDefaultConstantColor_block_invoke()
{
  v1 = 0xB0A000B0A0001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultConstantColor_states = result;
  return result;
}

__n128 C3DTransformSetMatrix(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 92) = 8;
  return result;
}

__n128 C3DTransformGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 92) & 8) == 0)
  {
    _updateMatrix(a1);
  }

  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

float32x4_t _updateMatrix(float32x4_t *a1)
{
  if ((a1[5].i8[12] & 4) == 0)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _updateMatrix_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((a1[5].i8[12] & 8) != 0)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _updateMatrix_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = MEMORY[0x277D860B8];
  if ((a1[5].i32[3] & 3) == 2)
  {
    v20 = a1[4];
    v21 = vmulq_f32(v20, v20);
    v22 = v21.f32[2] + vaddv_f32(*v21.f32);
    if (v22 <= 0.000000001)
    {
      v19 = *(MEMORY[0x277D860B8] + 48);
    }

    else
    {
      v40 = v22;
      v41 = a1[4];
      v23 = __sincosf_stret(vmuls_lane_f32(0.5, v20, 3));
      v24 = vrsqrte_f32(LODWORD(v40));
      v25 = vmul_f32(v24, vrsqrts_f32(LODWORD(v40), vmul_f32(v24, v24)));
      v19 = vmulq_n_f32(vmulq_n_f32(v41, vmul_f32(v25, vrsqrts_f32(LODWORD(v40), vmul_f32(v25, v25))).f32[0]), v23.__sinval);
      v19.i32[3] = LODWORD(v23.__cosval);
    }
  }

  else if ((a1[5].i32[3] & 3) != 0)
  {
    v42 = a1[4];
    v26 = __sincosf_stret(0.5 * v42.f32[0]);
    v27 = __sincosf_stret(vmuls_lane_f32(0.5, *v42.f32, 1));
    v28 = __sincosf_stret(vmuls_lane_f32(0.5, v42, 2));
    v19.f32[0] = (v26.__sinval * (v27.__cosval * v28.__cosval)) - (v26.__cosval * (v27.__sinval * v28.__sinval));
    v19.f32[1] = (v28.__sinval * (v26.__sinval * v27.__cosval)) + ((v26.__cosval * v27.__sinval) * v28.__cosval);
    v19.f32[2] = (v28.__cosval * -(v26.__sinval * v27.__sinval)) + ((v26.__cosval * v27.__cosval) * v28.__sinval);
    v19.f32[3] = (v26.__sinval * (v27.__sinval * v28.__sinval)) + (v26.__cosval * (v27.__cosval * v28.__cosval));
  }

  else
  {
    v19 = a1[4];
  }

  v29 = *v18;
  v30 = v18[1];
  v31 = v18[2];
  v32 = vmulq_f32(v19, v19);
  v33 = vaddq_f32(v32, v32);
  v34 = vmulq_laneq_f32(v19, v19, 3);
  v35 = vmuls_lane_f32(v19.f32[0], *v19.f32, 1);
  v36 = vmuls_lane_f32(v19.f32[1], v19, 2);
  v37 = vmuls_lane_f32(v19.f32[0], v19, 2);
  v29.f32[0] = (1.0 - v33.f32[1]) - v33.f32[2];
  v29.f32[1] = (v35 + v34.f32[2]) + (v35 + v34.f32[2]);
  v29.f32[2] = (v37 - v34.f32[1]) + (v37 - v34.f32[1]);
  v30.f32[0] = (v35 - v34.f32[2]) + (v35 - v34.f32[2]);
  v33.f32[0] = 1.0 - v33.f32[0];
  v30.f32[1] = v33.f32[0] - v33.f32[2];
  v30.f32[2] = (v36 + v34.f32[0]) + (v36 + v34.f32[0]);
  v31.f32[0] = (v37 + v34.f32[1]) + (v37 + v34.f32[1]);
  v31.f32[1] = (v36 - v34.f32[0]) + (v36 - v34.f32[0]);
  v38 = a1[5];
  v31.f32[2] = v33.f32[0] - v33.f32[1];
  result = vaddq_f32(a1[3], v18[3]);
  result.i32[3] = HIDWORD(*&v18[3]);
  *a1 = vmulq_n_f32(v29, v38.f32[0]);
  a1[1] = vmulq_lane_f32(v30, *v38.f32, 1);
  a1[2] = vmulq_laneq_f32(v31, v38, 2);
  a1[3] = result;
  a1[5].i32[3] = v38.i32[3] | 8;
  return result;
}

float32x4_t *C3DTransformGetMatrixPtr(float32x4_t *a1)
{
  if ((a1[5].i8[12] & 8) == 0)
  {
    _updateMatrix(a1);
  }

  return a1;
}

void C3DTransformGetQuaternion(uint64_t a1)
{
  v2 = *(a1 + 92);
  if ((v2 & 4) == 0)
  {
    _updateAffine(a1);
    v2 = *(a1 + 92);
  }

  v3 = v2 & 3;
  if (v3 == 2)
  {
    v4 = *(a1 + 64);
    v5 = vmulq_f32(v4, v4);
    if ((v5.f32[2] + vaddv_f32(*v5.f32)) > 0.000000001)
    {
      __sincosf_stret(vmuls_lane_f32(0.5, v4, 3));
    }
  }

  else if (v3)
  {
    v6 = *(a1 + 64);
    __sincosf_stret(0.5 * v6.f32[0]);
    __sincosf_stret(vmuls_lane_f32(0.5, *v6.f32, 1));
    __sincosf_stret(vmuls_lane_f32(0.5, v6, 2));
  }
}

BOOL _updateAffine(uint64_t a1)
{
  if ((*(a1 + 92) & 8) == 0)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _updateAffine_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 92) & 4) != 0)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _updateAffine_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  result = C3DMatrix4x4GetAffineTransforms(a1, 0, (a1 + 64), (a1 + 80));
  *(a1 + 92) = *(a1 + 92) & 0xFFFFFFF8 | 4;
  return result;
}

void C3DTransformSetQuaternion(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 92);
  if ((v3 & 4) == 0)
  {
    v4 = a2;
    _updateAffineScale(a1);
    a2 = v4;
    v3 = *(a1 + 92);
  }

  *(a1 + 92) = v3 & 0xFFFFFFF4;
  *(a1 + 64) = a2;
}

void _updateAffineScale(float32x4_t *a1)
{
  if ((a1[5].i8[12] & 8) == 0)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _updateAffineScale_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((a1[5].i8[12] & 4) != 0)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _updateAffineScale_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  C3DMatrix4x4GetScale(a1, a1 + 5);
  a1[5].i32[3] |= 4u;
}

__n128 C3DTransformGetEuler(float32x4_t *a1)
{
  v2 = a1[5].i32[3];
  if ((v2 & 4) == 0)
  {
    _updateAffine(a1);
    v2 = a1[5].i32[3];
  }

  DWORD2(v7) = 0;
  *&v7 = 0;
  v3 = v2 & 3;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      C3DVector3MakeEulerFromAxisAngle(a1[4]);
      v7 = v5;
    }

    v4 = &v7;
  }

  else if (v3)
  {
    v4 = &a1[4];
  }

  else
  {
    v4 = &v7;
    C3DQuaternionGetEuler(a1 + 4, &v7);
  }

  return *v4;
}

void C3DTransformSetEuler(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 92);
  if ((v3 & 4) == 0)
  {
    v4 = a2;
    _updateAffineScale(a1);
    a2 = v4;
    v3 = *(a1 + 92);
  }

  *(a1 + 92) = v3 & 0xFFFFFFF4 | 1;
  *(a1 + 64) = a2;
}

void C3DTransformGetAxisAngle(float32x4_t *a1)
{
  v2 = a1[5].i32[3];
  if ((v2 & 4) == 0)
  {
    _updateAffine(a1);
    v2 = a1[5].i32[3];
  }

  v3 = 0uLL;
  v5 = 0u;
  v4 = v2 & 3;
  if (v4 <= 1)
  {
    if (v4)
    {
      *v3.i64 = C3DVector4MakeAxisAngleFromEuler(a1[4]);
    }

    else
    {
      C3DQuaternionGetAxisAngle(a1 + 4, &v5);
      v3 = v5;
    }

    goto LABEL_9;
  }

  if (v4 != 2)
  {
LABEL_9:
    a1[4] = v3;
    a1[5].i32[3] = a1[5].i32[3] & 0xFFFFFFFC | 2;
  }
}

void C3DTransformSetAxisAngle(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 92);
  if ((v3 & 4) == 0)
  {
    v4 = a2;
    _updateAffineScale(a1);
    a2 = v4;
    v3 = *(a1 + 92);
  }

  *(a1 + 92) = v3 & 0xFFFFFFF4 | 2;
  *(a1 + 64) = a2;
}

__n128 C3DTransformSetPosition(__n128 *a1, __n128 result)
{
  result.n128_u32[3] = 1.0;
  a1[3] = result;
  return result;
}

__n128 C3DTransformGetScale(__n128 *a1)
{
  if ((a1[5].n128_u8[12] & 4) == 0)
  {
    _updateAffine(a1);
  }

  return a1[5];
}

void C3DTransformSetScale(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 92);
  if ((v3 & 4) == 0)
  {
    v23 = a2;
    if ((v3 & 8) == 0)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        C3DTransformSetScale_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    if ((*(a1 + 92) & 4) != 0)
    {
      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DTransformSetScale_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v20;
    v21 = *(a1 + 48);
    v24[2] = *(a1 + 32);
    v24[3] = v21;
    *&v22 = C3DMatrix4x4GetRotation(v24);
    *(a1 + 64) = v22;
    v3 = *(a1 + 92) & 0xFFFFFFF8 | 4;
    a2 = v23;
  }

  *(a1 + 92) = v3 & 0xFFFFFFF7;
  *(a1 + 88) = a2.n128_u32[2];
  *(a1 + 80) = a2.n128_u64[0];
}

double C3DTransformInit(uint64_t a1)
{
  *(a1 + 92) = *(a1 + 92) & 0xFFFFFFF3 | 8;
  *&result = C3DMatrix4x4MakeIdentity(a1).n128_u64[0];
  return result;
}

void C3DTransformGetValue(uint64_t a1, void *__dst, size_t __n, int a4, unsigned int a5)
{
  if (a5 >= 4)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DTransformGetValue_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (a4 > 5)
  {
    switch(a4)
    {
      case 6:
        Euler = *(a1 + 48);
        goto LABEL_23;
      case 7:
        if ((*(a1 + 92) & 4) == 0)
        {
          _updateAffine(a1);
        }

        Euler = *(a1 + 80);
        goto LABEL_23;
      case 8:
        if ((*(a1 + 92) & 8) == 0)
        {
          _updateMatrix(a1);
        }

        v19 = *(a1 + 16);
        v22[0] = *a1;
        v22[1] = v19;
        v20 = *(a1 + 48);
        v22[2] = *(a1 + 32);
        v22[3] = v20;
        goto LABEL_24;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        C3DTransformGetQuaternion(a1);
        goto LABEL_23;
      case 4:
        C3DTransformGetAxisAngle(a1);
        goto LABEL_23;
      case 5:
        Euler = C3DTransformGetEuler(a1);
LABEL_23:
        v22[0] = Euler;
LABEL_24:
        memcpy(__dst, v22 + 4 * a5, __n);
        return;
    }
  }

  v21 = scn_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    C3DTransformGetValue_cold_2(v21);
  }
}

void __setQuaternionValue(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v7 = *a2;
      goto LABEL_18;
    }

    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __setQuaternionValue_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  C3DTransformGetQuaternion(a1);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      DWORD2(v7) = *a2;
      goto LABEL_18;
    }

    if (a4 == 3)
    {
      HIDWORD(v7) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!a4)
    {
      LODWORD(v7) = *a2;
      goto LABEL_18;
    }

    if (a4 == 1)
    {
      DWORD1(v7) = *a2;
      goto LABEL_18;
    }
  }

  v18 = v7;
  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __setQuaternionValue_cold_2();
  }

  v7 = v18;
LABEL_18:
  v17 = *(a1 + 92);
  if ((v17 & 4) == 0)
  {
    v19 = v7;
    _updateAffineScale(a1);
    v17 = *(a1 + 92);
    v7 = v19;
  }

  *(a1 + 92) = v17 & 0xFFFFFFF4;
  *(a1 + 64) = v7;
}

void __setAxisAngleValue(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v7 = *a2;
      goto LABEL_18;
    }

    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __setQuaternionValue_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  C3DTransformGetAxisAngle(a1);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      DWORD2(v7) = *a2;
      goto LABEL_18;
    }

    if (a4 == 3)
    {
      HIDWORD(v7) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!a4)
    {
      LODWORD(v7) = *a2;
      goto LABEL_18;
    }

    if (a4 == 1)
    {
      DWORD1(v7) = *a2;
      goto LABEL_18;
    }
  }

  v18 = v7;
  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __setQuaternionValue_cold_2();
  }

  v7 = v18;
LABEL_18:
  v17 = *(a1 + 92);
  if ((v17 & 4) == 0)
  {
    v19 = v7;
    _updateAffineScale(a1);
    v17 = *(a1 + 92);
    v7 = v19;
  }

  *(a1 + 92) = v17 & 0xFFFFFFF4 | 2;
  *(a1 + 64) = v7;
}

void __setEulerAngleValue(uint64_t a1, uint64_t a2, unint64_t a3, int a4, __n128 a5)
{
  if (a3 >= 0xC)
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = *(a2 + 8);
    goto LABEL_17;
  }

  if (a3 != 4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __setQuaternionValue_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Euler = C3DTransformGetEuler(a1);
  switch(a4)
  {
    case 2:
      v17.n128_u64[0] = Euler.n128_u64[0];
      v17.n128_u32[2] = *a2;
      goto LABEL_13;
    case 1:
      v17.n128_u32[0] = Euler.n128_u32[0];
      v17.n128_u32[1] = *a2;
      goto LABEL_11;
    case 0:
      v17.n128_u32[0] = *a2;
      v17.n128_u32[1] = Euler.n128_u32[1];
LABEL_11:
      v17.n128_u32[2] = Euler.n128_u32[2];
LABEL_13:
      v17.n128_u32[3] = Euler.n128_u32[3];
      a5 = v17;
      goto LABEL_17;
  }

  v20 = Euler;
  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __setQuaternionValue_cold_2();
  }

  a5 = v20;
LABEL_17:
  v19 = *(a1 + 92);
  if ((v19 & 4) == 0)
  {
    v21 = a5;
    _updateAffineScale(a1);
    a5 = v21;
    v19 = *(a1 + 92);
  }

  *(a1 + 92) = v19 & 0xFFFFFFF4 | 1;
  *(a1 + 64) = a5;
}

float __setPositionValue(__n128 *a1, unsigned __int32 *a2, unint64_t a3, int a4, __n128 a5)
{
  if (a3 < 0xC)
  {
    if (a3 != 4)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __setQuaternionValue_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v17 = a1[3];
    if (a4 == 2)
    {
      v17.n128_u32[2] = *a2;
    }

    else
    {
      if (a4 == 1)
      {
        a5 = a1[3];
        a5.n128_u32[1] = *a2;
      }

      else
      {
        if (a4)
        {
          v20 = a1[3];
          v18 = scn_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __setQuaternionValue_cold_2();
          }

          v17 = v20;
          goto LABEL_16;
        }

        a5.n128_u32[0] = *a2;
        a5.n128_u32[1] = HIDWORD(a1[3].n128_u64[0]);
      }

      a5.n128_u32[2] = a1[3].n128_u64[1];
      v17 = a5;
    }

LABEL_16:
    v7.n128_u32[0] = 1.0;
    v17.n128_u32[3] = 1.0;
    a1[3] = v17;
    return v7.n128_f32[0];
  }

  v7.n128_u64[0] = *a2;
  v7.n128_u32[2] = a2[2];
  v7.n128_u32[3] = 1.0;
  a1[3] = v7;
  return v7.n128_f32[0];
}

void __setScaleValue(uint64_t a1, _DWORD *a2, unint64_t a3, int a4, __n128 a5)
{
  if (a3 < 0xC)
  {
    if (a3 != 4)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __setQuaternionValue_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    if ((*(a1 + 92) & 4) == 0)
    {
      _updateAffine(a1);
    }

    if (a4 == 2)
    {
      *(a1 + 88) = *a2;
    }

    else if (a4 == 1)
    {
      *(a1 + 84) = *a2;
    }

    else if (a4)
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __setQuaternionValue_cold_2();
      }
    }

    else
    {
      *(a1 + 80) = *a2;
    }

    *(a1 + 92) &= ~8u;
  }

  else
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = a2[2];

    C3DTransformSetScale(a1, a5);
  }
}

_OWORD *__setTransformValue(_OWORD *result, _OWORD *a2, size_t a3, unsigned int a4)
{
  v4 = result;
  if (a3 == 96)
  {
    v8 = a2[1];
    *result = *a2;
    result[1] = v8;
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[5];
    result[4] = a2[4];
    result[5] = v11;
    result[2] = v9;
    result[3] = v10;
  }

  else
  {
    if (a3 == 64)
    {
      v5 = a2[1];
      v6 = a2[2];
      v7 = a2[3];
      *result = *a2;
      result[1] = v5;
      result[2] = v6;
      result[3] = v7;
    }

    else
    {
      result = memcpy(result + 4 * a4, a2, a3);
    }

    *(v4 + 23) = 8;
  }

  return result;
}

void __setValueError()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __setValueError_cold_1(v0);
  }
}

void C3DTransformSetValue(__n128 *a1, unsigned __int32 *a2, unint64_t a3, int a4, unsigned int a5, __n128 a6)
{
  if (a5 >= 4)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DTransformSetValue_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (a4 > 5)
  {
    if (a4 == 6)
    {
      __setPositionValue(a1, a2, a3, a5, a6);
      return;
    }

    if (a4 != 7)
    {
      if (a4 == 8)
      {
        __setTransformValue(a1, a2, a3, a5);
        return;
      }

      goto LABEL_15;
    }

    __setScaleValue(a1, a2, a3, a5, a6);
  }

  else
  {
    if (a4 == 3)
    {
      __setQuaternionValue(a1, a2, a3, a5);
      return;
    }

    if (a4 != 4)
    {
      if (a4 == 5)
      {
        __setEulerAngleValue(a1, a2, a3, a5, a6);
        return;
      }

LABEL_15:
      __setValueError();
      return;
    }

    __setAxisAngleValue(a1, a2, a3, a5);
  }
}

uint64_t _fxSemanticFromSemanticString(void *a1)
{
  if ([a1 isEqualToString:@"kGeometrySourceSemanticVertex"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticNormal"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticColor"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticTexcoord"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticTangent"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"kModelViewProjectionTransform"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"kModelViewTransform"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"kModelTransform"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"kViewTransform"])
  {
    return 9;
  }

  if ([a1 isEqualToString:@"kProjectionTransform"])
  {
    return 10;
  }

  if ([a1 isEqualToString:@"kNormalTransform"])
  {
    return 11;
  }

  return 0;
}

uint64_t _programBindValueForSymbolCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a6 _technique];
  if (v12)
  {
    PassAtIndex = C3DFXTechniqueGetPassAtIndex(v12, 0);
    if (C3DFXPassGetInputWithName(PassAtIndex, a2))
    {
      return 1;
    }
  }

  UserInfo = C3DEngineContextGetUserInfo(a1);
  v16 = [SCNNode nodeWithNodeRef:a5];

  return [a6 _bindValueForSymbol:a2 atLocation:a4 programID:a3 node:v16 renderer:UserInfo];
}

const void *_programDelegateUnbindValueForSymbolCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a6 _technique];
  if (!v12 || (PassAtIndex = C3DFXTechniqueGetPassAtIndex(v12, 0), (result = C3DFXPassGetInputWithName(PassAtIndex, a2)) == 0))
  {
    UserInfo = C3DEngineContextGetUserInfo(a1);
    v16 = [SCNNode nodeWithNodeRef:a5];

    return [a6 _unbindValueForSymbol:a2 atLocation:a4 programID:a3 node:v16 renderer:UserInfo];
  }

  return result;
}

void _programDelegateHandleErrorCallback(uint64_t a1, __CFError *a2, void *a3)
{
  v4 = [a3 program];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = CFErrorCopyUserInfo(a2);
    [v5 program:v4 handleError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"SCNErrorDomain", 1, v6)}];

    CFRelease(v6);
  }
}

void ____arrayOfC3DModifiersFromDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqualToString:@"SCNShaderModifierEntryPointGeometry"] & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", @"SCNShaderModifierEntryPointSurface") & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", @"SCNShaderModifierEntryPointFragment") & 1) != 0 || (objc_msgSend(a2, "isEqualToString:", @"SCNShaderModifierEntryPointLightingModel"))
  {
    [a3 rangeOfString:@";"];
    if (v5 != 1)
    {
      v6 = [SCNGetResourceBundle() pathForResource:objc_msgSend(objc_msgSend(a3 ofType:"lastPathComponent") inDirectory:{"stringByDeletingPathExtension"), objc_msgSend(a3, "pathExtension"), objc_msgSend(a3, "stringByDeletingLastPathComponent")}];
      if (v6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v6 encoding:4 error:0];
        if (v7)
        {
          a3 = v7;
        }
      }
    }

    C3DGetShadingLanguageFromSource(a3);
  }

  v8 = scn_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    ____arrayOfC3DModifiersFromDictionary_block_invoke_cold_1();
  }
}

void __setupDefaultArguments(void *a1, __int16 *a2, uint64_t a3)
{
  if (!C3DEntityGetValueForKey(a3, a1))
  {

    C3DEntitySetValueForKey(a3, a1, a2);
  }
}

float C3D::OverlayPass::setup(C3D::OverlayPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  *(v2 + 66) = *(v2 + 66) & 0xFFFC | 1;
  C3D::Pass::parentColorDesc(this, &v8);
  *(v2 + 16) = v8;
  *(v2 + 32) = v9;
  *(v2 + 66) |= 0x80u;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  *(v3 + 65) = 0;
  *(v3 + 66) = *(v3 + 66) & 0xFFFC | 1;
  C3D::Pass::parentColorDesc(this, &v8);
  HIWORD(v4) = WORD1(v8);
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(this + 19) = 1;
  *(this + 121) = 1;
  LOWORD(v4) = *(v2 + 16);
  result = v4;
  LOWORD(v6) = *(v2 + 18);
  *&v7 = 0;
  *(&v7 + 1) = __PAIR64__(v6, LODWORD(result));
  *(this + 8) = v7;
  return result;
}

void C3D::OverlayPass::execute(__n128 *a1)
{
  v2 = *(C3DEngineContextGetRenderCallbacks(a1[1].n128_i64[0]) + 16);
  if (v2)
  {
    v2(a1[1].n128_u64[0]);
  }

  Viewport = 0u;
  if (C3DEngineContextGetEyeCount(a1[1].n128_i64[0]) >= 2)
  {
    Viewport = C3DEngineContextGetViewport(a1[1].n128_u64[0]);
    C3DEngineContextSetViewport(a1[8], a1[1].n128_u64[0]);
  }

  UserInfo = C3DEngineContextGetUserInfo(a1[1].n128_i64[0]);
  if (UserInfo)
  {
    if ([UserInfo showsStatistics])
    {
      AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a1[1].n128_i64[0], 0);
      if (AuthoringEnvironment)
      {
        v5 = AuthoringEnvironment;
        C3DAuthoringEnvironmentDrawStats(AuthoringEnvironment);
        C3DAuthoringEnvironmentEndFrame(v5);
      }
    }
  }

  if (C3DEngineContextGetEyeCount(a1[1].n128_i64[0]) >= 2)
  {
    v6 = a1[1].n128_u64[0];

    C3DEngineContextSetViewport(Viewport, v6);
  }
}

uint64_t C3DArrayGetCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DArrayGetCapacity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 28);
}

uint64_t C3DArrayGetValuePtrAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DArrayGetCount(a1) <= a2)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetValuePtrAtIndex_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return *(a1 + 16) + *(a1 + 32) * a2;
}

uint64_t C3DArrayGetValuesPtr(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

void C3DArraySetCapacity(uint64_t a1, int a2)
{
  v3 = *(a1 + 28);
  if (v3 != a2)
  {
    __allocate(a1, *(a1 + 32) * v3, (*(a1 + 32) * a2));
    *(a1 + 28) = a2;
  }
}

void C3DArraySetCount(_DWORD *a1, unsigned int a2)
{
  if (a1[6] != a2)
  {
    v4 = a1[7];
    if (v4 < a2)
    {
      __allocate(a1, a1[8] * v4, a1[8] * a2);
      a1[7] = a2;
    }

    a1[6] = a2;
  }
}

uint64_t C3DArrayAppendValue(uint64_t a1, void *__src)
{
  v4 = *(a1 + 24);
  if (v4 == *(a1 + 28))
  {
    v5 = v4 ? 2 * v4 : 4;
    if (v4 != v5)
    {
      __allocate(a1, *(a1 + 32) * v4, (*(a1 + 32) * v5));
      *(a1 + 28) = v5;
      v4 = *(a1 + 24);
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = (v7 * v4);
  v9 = (v6 + v8);
  if (__src)
  {
    memcpy(v9, __src, v7);
  }

  else
  {
    bzero(v9, *(a1 + 32));
  }

  ++*(a1 + 24);
  return v6 + v8;
}

void C3DArrayApply(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 24))
  {
    v12 = 0;
    do
    {
      (*(a2 + 16))(a2, v12, *(a1 + 16) + (*(a1 + 32) * v12));
      ++v12;
    }

    while (v12 < *(a1 + 24));
  }
}

void __allocate(uint64_t a1, unsigned int a2, size_t size)
{
  v4 = *(a1 + 16);
  if (size)
  {
    v5 = size;
    v6 = size;
    if (v4)
    {
      v8 = malloc_type_realloc(v4, size, 0xB5AD05CDuLL);
      *(a1 + 16) = v8;
      v9 = v5 - a2;
      if (v5 <= a2)
      {
        return;
      }

      v10 = &v8[a2];
    }

    else
    {
      v10 = C3DMallocWithName(size);
      *(a1 + 16) = v10;
      v9 = v6;
    }

    bzero(v10, v9);
  }

  else
  {
    free(v4);
    *(a1 + 16) = 0;
  }
}

uint64_t CATextTruncationModeFromC3DTextTruncationMode(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = MEMORY[0x277CDA968];
      return *v1;
    }

    if (a1 == 3)
    {
      v1 = MEMORY[0x277CDA970];
      return *v1;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = MEMORY[0x277CDA978];
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = MEMORY[0x277CDA980];
      return *v1;
    }
  }

  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    CATextTruncationModeFromC3DTextTruncationMode_cold_1(v2);
  }

  return 0;
}

uint64_t CATextAlignmentModeFromC3DTextAlignmentMode(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = MEMORY[0x277CDA038];
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = MEMORY[0x277CDA030];
      return *v1;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v1 = MEMORY[0x277CDA040];
        return *v1;
      case 3:
        v1 = MEMORY[0x277CDA020];
        return *v1;
      case 4:
        v1 = MEMORY[0x277CDA028];
        return *v1;
    }
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    CATextTruncationModeFromC3DTextTruncationMode_cold_1(v3);
  }

  return 0;
}

uint64_t __C3DSpanAllocatorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DSpanAllocatorGetTypeID_typeID = result;
  return result;
}

uint64_t C3DSpanAllocatorCreate(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (C3DSpanAllocatorGetTypeID_onceToken != -1)
  {
    C3DSpanAllocatorCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSpanAllocatorGetTypeID_typeID, 40);
  *(Instance + 40) = a1;
  *(Instance + 48) = a2;
  *v7 = 0x1000000006;
  v6 = 4;
  if (sysctl(v7, 2u, (Instance + 32), &v6, 0, 0) < 0)
  {
    *(Instance + 32) = 64;
  }

  return Instance;
}

void __DestructPage(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  v3 = v5;
  if (v5)
  {
    free(v3);
    *v4 = 0;
    v4[1] = 0;
  }
}

void C3DSpanAllocatorFree(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      __DestructPage(*(a1 + 16) + v2);
      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 24));
  }

  free(*(a1 + 16));
  *(a1 + 36) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

_DWORD *__RemoveFromFreeList(_DWORD *result, uint64_t a2)
{
  v2 = (result[6] - 1);
  result[6] = v2;
  if (v2 != a2)
  {
    return memmove((*(result + 2) + 8 * a2), (*(result + 2) + 8 * a2 + 8), 8 * (v2 - a2));
  }

  return result;
}

void __AddToFreeList(uint64_t a1, unint64_t a2)
{
  v2 = WORD1(a2);
  *&v42[5] = *MEMORY[0x277D85DE8];
  v40 = a2;
  if (!HIDWORD(a2))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __AddToFreeList_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v39 = *(a1 + 24);
  if (!v39)
  {
    v17 = 0;
    v14 = 0;
LABEL_22:
    v28 = *(a1 + 28);
    if (v28 < *(a1 + 24) + 1)
    {
      if (*(a1 + 16))
      {
        v29 = 2 * v28;
        *(a1 + 28) = v29;
        if (!v29)
        {
          v30 = scn_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            __AddToFreeList_cold_3(v30, v31, v32, v33, v34, v35, v36, v37);
          }
        }

        v38 = malloc_type_realloc(*(a1 + 16), 8 * *(a1 + 28), 0x100004000313F17uLL);
      }

      else
      {
        *(a1 + 28) = 8;
        v38 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
      }

      *(a1 + 16) = v38;
    }

    if (HIDWORD(v40) > *(a1 + 32))
    {
      *(a1 + 32) = HIDWORD(v40);
    }

    if (v17)
    {
      memmove((*(a1 + 16) + 8 * v14 + 8), (*(a1 + 16) + 8 * v14), 8 * (v39 - v14));
    }

    *(*(a1 + 16) + 8 * v14) = v40;
    ++*(a1 + 24);
    return;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v2;
  v16 = &v40;
  v17 = 1;
  while (1)
  {
    v18 = (*(a1 + 16) + v12);
    v19 = *(v18 + 1);
    v20 = v18[1];
    v21 = *(v16 + 1);
    v22 = *(v16 + 1);
    v23 = v18;
    if (v20 + v19 == v21 || (v23 = v16, v22 + v21 == v19))
    {
      v24 = *v23;
      if (v13 == 1)
      {
        __RemoveFromFreeList(a1, v14);
        v18 = v16;
      }

      v25 = v22 + v20;
      *v18 = v24 | (v25 << 32);
      if (v25 + WORD1(v24) > *(a1 + 8))
      {
        v26 = scn_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          __AddToFreeList_cold_2(buf, v42, v26);
        }
      }

      v27 = v18[1];
      if (v27 > *(a1 + 32))
      {
        *(a1 + 32) = v27;
      }

      if (++v13 == 2)
      {
        return;
      }

      v19 = *(v18 + 1);
      v15 = WORD1(v40);
      v16 = v18;
    }

    if (v19 > v15)
    {
      break;
    }

    v17 = ++v14 < v39;
    v12 += 8;
    if (v39 == v14)
    {
      v14 = v39;
      break;
    }
  }

  if (!v13)
  {
    goto LABEL_22;
  }
}

unint64_t __AllocateNewSpanInPage(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 32) < a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __AllocateNewSpanInPage_cold_1(v2, v4);
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = 2;
    while (1)
    {
      v9 = (v7 + v8);
      v10 = *(v7 + v8 + 2);
      if (v10 >= v2)
      {
        break;
      }

      ++v6;
      v8 += 8;
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v9 - 1);
    v19 = *v9;
    if (v19 + v2 > *(a1 + 8))
    {
      v22 = scn_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        __AllocateNewSpanInPage_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v30 = *(a1 + 16) + v8;
    v31 = *(v30 + 2) - v2;
    if (v31)
    {
      *v30 += v2;
      *(v30 + 2) = v31;
    }

    else
    {
      __RemoveFromFreeList(a1, v6);
    }

    if (*(a1 + 32) == v10)
    {
      v32 = *(a1 + 24);
      if (v32)
      {
        v33 = 0;
        v34 = (*(a1 + 16) + 4);
        do
        {
          v36 = *v34;
          v34 += 2;
          v35 = v36;
          if (v36 > v33)
          {
            v33 = v35;
          }

          --v32;
        }

        while (v32);
        *(a1 + 32) = v33;
      }

      else
      {
        *(a1 + 32) = 0;
      }
    }
  }

  else
  {
LABEL_8:
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassInitialize_cold_5(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v2 = 0;
    v19 = 0xFFFF;
    v20 = 0xFFFF;
  }

  return (v2 << 32) | (v19 << 16) | v20;
}

void __AllocatePage(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v7 = a4;
  v8 = *(a1 + 40) * a4;
  v9 = malloc_type_malloc(v8, 0xDA7382B5uLL);
  *a2 = v9;
  bzero(v9, v8);
  *(a2 + 8) = a4;
  *(a2 + 12) = a3;

  __AddToFreeList(a2, a3 | (v7 << 32));
}

uint64_t __CreateNewPage(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = v4 + 1;
    v5 = malloc_type_realloc(*(a1 + 16), 40 * (v4 + 1), 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
  }

  else
  {
    v5 = malloc_type_malloc(0x28uLL, 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
    *(a1 + 24) = 1;
  }

  ++*(a1 + 28);
  v6 = v5 + 40 * v4;
  __AllocatePage(a1, v6, v4, a2);
  return v6;
}

unint64_t __AllocateNewSpan(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    NewPage = *(a1 + 16);
    v8 = v6;
    while (!*NewPage || *(NewPage + 32) < a2)
    {
      NewPage += 40;
      if (!--v8)
      {
        v9 = 0;
        NewPage = 0;
        v10 = 40 * v6;
        do
        {
          v11 = *(a1 + 16);
          v12 = (v11 + v9);
          v13 = *(v11 + v9 + 32);
          if (v13 >= a2)
          {
            if (!*v12)
            {
              __AllocatePage(a1, v12, *(v11 + v9 + 12), v13);
            }

            NewPage = v12;
          }

          v9 += 40;
        }

        while (v10 != v9);
        if (NewPage)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_18;
  }

LABEL_13:
  if (*(a1 + 48) >= a2)
  {
    v14 = *(a1 + 48);
  }

  else
  {
    v14 = a2;
  }

  if (v14 <= 0x10000)
  {
    NewPage = __CreateNewPage(a1, v14);
LABEL_18:
    if (a3)
    {
      *a3 = NewPage;
    }

    *(a1 + 36) += a2;

    return __AllocateNewSpanInPage(NewPage, a2);
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __AllocateNewSpan_cold_1(v16);
  }

  return 0xFFFFFFFFLL;
}

void __DeallocateSpan(uint64_t a1, unint64_t a2)
{
  v4 = (*(a1 + 16) + 40 * a2);
  if (v4[3] != a2)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __DeallocateSpan_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  __AddToFreeList(v4, a2);
  if (v4[8] == v4[2] && *(a1 + 28) >= 2u)
  {
    __DestructPage(v4);
    --*(a1 + 28);
  }
}

uint64_t C3DSpanAllocatorGetElementInSpanAtIndex(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAllocatorNew_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a2 >= *(a1 + 24))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DSpanAllocatorGetElementInSpanAtIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = *(a1 + 16) + 40 * a2;
  if (*(v22 + 12) != a2 || *(v22 + 8) <= HIWORD(a2))
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DSpanAllocatorGetElementInSpanAtIndex_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  return *v22 + *(a1 + 40) * (a3 + HIWORD(a2));
}

uint64_t C3DSpanAllocatorEnumerate(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      v6 = *(v4 + 16) + 40 * i;
      if (*(v6 + 24))
      {
        v7 = *(*(v6 + 16) + 2);
        v8 = *(v6 + 8);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *(v6 + 8);
        v7 = v8;
        if (v8)
        {
LABEL_7:
          v9 = 0;
          for (j = 0; j < v8; ++j)
          {
            if (j == v7)
            {
              v11 = *(v6 + 16);
              j = v7 + *(v11 + 8 * v9++ + 4) - 1;
              if (v9 >= *(v6 + 24))
              {
                v7 = v8;
              }

              else
              {
                v7 = *(v11 + 8 * v9 + 2);
              }
            }

            else
            {
              result = (*(a2 + 16))(a2, *v6 + *(v4 + 40) * j);
            }

            v8 = *(v6 + 8);
          }
        }
      }
    }
  }

  return result;
}

void fillPositions(std::vector<int> *a1, uint64_t a2, void *a3, int __e, int a5)
{
  v9 = ldexp(1.0, __e);
  v25 = 0u;
  v26 = 0u;
  C3DMeshSourceGetContent(a2, &v25);
  Count = C3DMeshSourceGetCount(a2);
  if (Count != 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      fillPositions(v11);
    }
  }

  v12 = 3 * Count;
  v13 = a1->__end_ - a1->__begin_;
  v14 = v25;
  std::vector<float>::resize(a1, 3 * Count + (v13 >> 2));
  if (Count >= 1)
  {
    v18 = 0;
    v19 = 0;
    v15.f32[0] = v9;
    v22 = v15.f32[0];
    do
    {
      *v15.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v26), v14, v15, v16, *v17.i32);
      if (a5)
      {
        v20 = (a1->__begin_ + v13);
        v16 = v22;
        v17 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(*v15.f32, v22)));
        *v20 = v17;
        v15.f32[0] = vmuls_lane_f32(v22, v15, 2);
      }

      else
      {
        v21 = v15;
        AnimCodec::Mesh<float>::point(a3, v18, &v23);
        v20 = (a1->__begin_ + v13);
        *v17.i32 = v22;
        *v15.f32 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vsub_f32(*v21.f32, v23), v22)));
        *v20 = *v15.f32;
        v16 = v24;
        v15.f32[0] = (v21.f32[2] - v24) * v22;
      }

      v20[1].i32[0] = llroundf(v15.f32[0]);
      v14 = (v14 + BYTE6(v26));
      ++v18;
      v19 += 3;
      v13 += 12;
    }

    while (v19 < v12);
  }
}

float AnimCodec::Mesh<float>::point@<S0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) <= a2)
  {
    AnimCodec::Mesh<float>::point();
  }

  v3 = *a1 + 12 * a2;
  *a3 = *v3;
  result = *(v3 + 8);
  *(a3 + 8) = result;
  return result;
}

uint64_t fillMesh(std::vector<int> *a1, uint64_t a2)
{
  PositionSource = C3DMeshGetPositionSource(a2, 0);
  Count = C3DMeshSourceGetCount(PositionSource);
  std::vector<AnimCodec::Vector3<float>>::resize(a1, Count);
  v40 = 0u;
  v41 = 0u;
  C3DMeshSourceGetContent(PositionSource, &v40);
  if (Count >= 1)
  {
    v9 = 0;
    for (i = 0; i != Count; ++i)
    {
      *v6.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v41), (v40 + i * BYTE6(v41)), v6, v7, v8);
      if (0xAAAAAAAAAAAAAAABLL * (a1->__end_ - a1->__begin_) <= i)
      {
        fillMesh();
      }

      v11 = &a1->__begin_[v9];
      *v11 = v6.i64[0];
      v11[2] = v6.i32[2];
      v9 += 3;
    }
  }

  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 0, 0);
  ElementsCount = C3DMeshGetElementsCount(a2);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v14 = &off_21C27F000;
  if (ElementsCount < 1)
  {
    v17 = 0;
  }

  else
  {
    for (j = 0; j != ElementsCount; ++j)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a2, j, 0);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v28);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke;
      v23[3] = &unk_278302158;
      v23[4] = &v36;
      v23[5] = &v32;
      C3DIndicesContentEnumeratePrimitives(&v24, v23, v30);
    }

    v17 = v37[3];
    v14 = &off_21C27F000;
  }

  std::vector<float>::resize(a1 + 1, v17);
  std::vector<float>::resize(a1 + 2, v33[3]);
  v37[3] = 0;
  v33[3] = 0;
  if (ElementsCount >= 1)
  {
    v18 = 0;
    v19 = *(v14 + 189);
    do
    {
      v20 = C3DMeshGetElementAtIndex(a2, v18, 0);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      C3DMeshElementGetContent(v20, ChannelForSourceWithSemanticAtIndex, &v28);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = v19;
      v22[2] = ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2;
      v22[3] = &unk_278302180;
      v22[5] = &v32;
      v22[6] = a1;
      v22[4] = &v36;
      C3DIndicesContentEnumeratePrimitives(&v24, v22, v30);
      ++v18;
    }

    while (ElementsCount != v18);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  return 1;
}

void sub_21C1B0DB4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    ++*(*(*(result + 32) + 8) + 24);
    *(*(*(result + 40) + 8) + 24) += a4;
  }

  return result;
}

void *___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2(void *result, uint64_t a2, int *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = result[6];
    v5 = *(result[4] + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = v6 + 1;
    v7 = v4[3];
    if (v6 >= (v4[4] - v7) >> 2)
    {
      ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2_cold_1();
    }

    *(v7 + 4 * v6) = a4;
    v9 = v4 + 6;
    v8 = v4[6];
    v10 = (v9[1] - v8) >> 2;
    v11 = a4;
    do
    {
      v12 = *(result[5] + 8);
      v13 = *(v12 + 24);
      *(v12 + 24) = v13 + 1;
      if (v10 <= v13)
      {
        ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2_cold_2();
      }

      v14 = *a3++;
      *(v8 + 4 * v13) = v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

BOOL SCNEncodeMorpherUsingAnimCodec(void *a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  Morpher = C3DNodeGetMorpher([a2 nodeRef]);
  BaseGeometry = C3DMorpherGetBaseGeometry(Morpher);
  if (C3DGeometryUsesDeformerBasedDynamicMesh(BaseGeometry))
  {
    return 0;
  }

  v38 = a1;
  Mesh = C3DGeometryGetMesh(BaseGeometry);
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
  PositionSource = C3DMeshGetPositionSource(Mesh, 0);
  Count = C3DMeshSourceGetCount(PositionSource);
  v50 = 0;
  v48 = 0u;
  *__p = 0u;
  *v46 = 0u;
  *v47 = 0u;
  fillMesh(v46, Mesh);
  OverrideMaterial = C3DGeometryGetOverrideMaterial(Morpher);
  v11 = C3DGeometryGetOverrideMaterial(OverrideMaterial);
  v12 = CFArrayGetCount(v11);
  v45 = 5;
  v37 = v46[1] - v46[0];
  v44 = C3DMorphGetCalculationMode(OverrideMaterial) == 1;
  memset(&v43, 0, sizeof(v43));
  std::vector<unsigned int>::reserve(&v43, 3 * v12 * 0xAAAAAAAAAAAAAAABLL * (v37 >> 2));
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
      v15 = C3DGeometryGetMesh(ValueAtIndex);
      v16 = C3DMeshGetPositionSource(v15, 0);
      v17 = v16;
      if (v16)
      {
        if (C3DMeshSourceGetCount(v16) == Count)
        {
          fillPositions(&v43, v17, v46, 5, v44);
        }

        else
        {
          if ((C3DMorphIsUsingSparseTargets(OverrideMaterial) & 1) == 0)
          {
            v20 = scn_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              v23 = [a2 name];
              *buf = 136315906;
              v52 = "C3DMorphIsUsingSparseTargets(morph) == true";
              v53 = 2112;
              v54 = v23;
              v55 = 2048;
              v56 = a2;
              v57 = 2048;
              v58 = OverrideMaterial;
              _os_log_fault_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Internal consistency error, %@'s (%p) morph %p is not sparse", buf, 0x2Au);
            }
          }

          ElementAtIndex = C3DMeshGetElementAtIndex(v15, 0, 0);
          UnpackedCopy = C3DMeshSourceCreateUnpackedCopy(v17, ElementAtIndex, Count, ChannelForSourceWithSemanticAtIndex);
          fillPositions(&v43, UnpackedCopy, v46, 5, v44);
          if (UnpackedCopy)
          {
            CFRelease(UnpackedCopy);
          }
        }
      }

      else
      {
        v18 = v43.__end_ - v43.__begin_;
        std::vector<float>::resize(&v43, (v37 >> 2) + v43.__end_ - v43.__begin_);
        v19 = v43.__end_ - (v43.__begin_ + v18);
        if (v19 >= 1)
        {
          bzero(v43.__begin_ + v18, v19);
        }
      }
    }
  }

  v24 = v47[1];
  v25 = v48;
  v26 = __p[0];
  v27 = __p[1];
  v28 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v37 * v12 + 1024];
  v29 = [v28 mutableBytes];
  v40 = 0;
  v41 = 0;
  v30 = AnimCodec::AnimEncoder::compress(&v42, v24, v26, v43.__begin_, 3, (0xAAAAAAAAAAAAAAABLL * (v37 >> 2)), ((v25 - v24) >> 2), (v27 - v26) >> 2, v12, v29, v37 * v12 + 1024, &v41, &v40);
  v6 = v30 == 0;
  if (v30)
  {
    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      SCNEncodeMorpherUsingAnimCodec_cold_1();
    }
  }

  else
  {
    [v28 setLength:v41];
    [v38 encodeObject:v28 forKey:@"morpherCompressedData"];

    v32 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:32 * v12];
    [v32 appendBytes:&v45 length:1];
    [v32 appendBytes:&v44 length:1];
    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        v34 = CFArrayGetValueAtIndex(v11, j);
        Name = C3DEntityGetName(v34);
        CFStringGetCString(Name, buf, 512, 0x600u);
        [v32 appendBytes:buf length:strlen(buf) + 1];
      }
    }

    [v38 encodeObject:v32 forKey:@"morpherMetaData"];
  }

  if (v43.__begin_)
  {
    v43.__end_ = v43.__begin_;
    operator delete(v43.__begin_);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v47[1])
  {
    *&v48 = v47[1];
    operator delete(v47[1]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  return v6;
}

SCNGeometry *targetGeometryFromAnimation(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v11 = a2[1];
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 2);
  v14 = v13 * a4;
  v15 = ldexp(1.0, -a5);
  v30 = v15;
  v16 = 4 * v14;
  v29 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  if (a6)
  {
    if (v11 != v12)
    {
      if (v13 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v13;
      }

      v18 = (*a1 + 4 * v14 * a3 + 8);
      v19 = 4 * a4;
      v20 = (v29 + 8);
      do
      {
        *(v20 - 1) = vmul_n_f32(vcvt_f32_s32(*(v18 - 2)), v30);
        *v20 = v30 * *v18;
        v18 = (v18 + v19);
        v20 = (v20 + v19);
        --v17;
      }

      while (v17);
    }
  }

  else if (v11 != v12)
  {
    v21 = 0;
    if (v13 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v13;
    }

    v23 = 4 * v14 * a3;
    v24 = 4 * a4;
    v25 = (v29 + 8);
    do
    {
      AnimCodec::Mesh<float>::point(a2, v21, v31);
      v26 = (*a1 + v23);
      *(v25 - 2) = v31[0] + (*v26 * v30);
      *(v25 - 1) = v31[1] + (v26[1] * v30);
      *v25 = v31[2] + (v26[2] * v30);
      ++v21;
      v23 += v24;
      v25 = (v25 + v24);
    }

    while (v22 != v21);
  }

  v32[0] = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v29 length:v16 freeWhenDone:1], @"kGeometrySourceSemanticVertex", v13, 1, a4, 4, 0, 0);
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  return [SCNGeometry geometryWithSources:v27 elements:MEMORY[0x277CBEBF8]];
}

void *SCNDecodeMorpherUsingAnimCodec(void *a1, void *a2)
{
  v4 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"morpherCompressedData"];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v38 = 0;
  v36 = 0u;
  *__p = 0u;
  *v34 = 0u;
  *v35 = 0u;
  Mesh = C3DGeometryGetMesh([objc_msgSend(a2 "geometry")]);
  fillMesh(v34, Mesh);
  if (!AnimCodec::AnimDecoder::getInfo([v5 bytes], objc_msgSend(v5, "length"), v31))
  {
    v9 = (0xAAAAAAAAAAAAAAABLL * ((v34[1] - v34[0]) >> 2));
    v10 = v35[1];
    v11 = v36;
    v12 = __p[0];
    v13 = __p[1];
    v14 = v32;
    memset(&v30, 0, sizeof(v30));
    std::vector<float>::resize(&v30, 3 * v9 * v32);
    v15 = [v5 bytes];
    v16 = [v5 length];
    if (AnimCodec::AnimDecoder::decompress(&v33, v15, v16, v10, v12, 3, v9, (v11 - v10) >> 2, (v13 - v12) >> 2, v30.__begin_))
    {
      v17 = scn_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        SCNDecodeMorpherUsingAnimCodec_cold_2();
      }
    }

    else
    {
      v19 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"morpherMetaData"];
      v20 = v19;
      if (v19)
      {
        if ([v19 length] < (v14 + 2))
        {
          __assert_rtn("SCNDecodeMorpherUsingAnimCodec", "SCNMorpherAnimCodecSupport.mm", 351, "morpherMetaData.length >= (2+targetCount)");
        }

        v21 = [v20 bytes];
        v22 = *v21;
        v23 = v21[1];
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v14];
        if (v14)
        {
          v24 = 0;
          v25 = v21 + 2;
          v26 = *MEMORY[0x277CBECE8];
          do
          {
            v27 = targetGeometryFromAnimation(&v30, v34, v24, 3, v22, v23);
            [v8 addObject:v27];
            v28 = CFStringCreateWithCString(v26, v25, 0x8000100u);
            [(SCNGeometry *)v27 setName:v28];
            if (v28)
            {
              CFRelease(v28);
            }

            v25 += strlen(v25) + 1;
            ++v24;
          }

          while (v14 != v24);
        }

        goto LABEL_11;
      }

      v29 = scn_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        SCNDecodeMorpherUsingAnimCodec_cold_3();
      }
    }

    v8 = 0;
LABEL_11:
    if (v30.__begin_)
    {
      v30.__end_ = v30.__begin_;
      operator delete(v30.__begin_);
    }

    goto LABEL_13;
  }

  v7 = scn_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    SCNDecodeMorpherUsingAnimCodec_cold_1();
  }

  v8 = 0;
LABEL_13:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v35[1])
  {
    *&v36 = v35[1];
    operator delete(v35[1]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  return v8;
}

void sub_21C1B1940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(&a17);
  _Unwind_Resume(a1);
}

void std::vector<AnimCodec::Vector3<float>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<AnimCodec::Vector3<float>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void std::vector<AnimCodec::Vector3<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v9);
    }

    __p = 0;
    v13 = 12 * v6;
    v15 = 0;
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero((12 * v6), v11);
    v14 = 12 * v6 + v11;
    std::vector<AnimCodec::Vector3<float>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xC + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_21C1B1B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<AnimCodec::Vector3<float>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t C3DGLSLGetUniformType(int a1, GLuint program, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *params = 0;
  *size = 0;
  glGetProgramiv(program, 0x8B86u, params);
  if (params[0] < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    glGetActiveUniform(program, v5, 256, &size[1], size, &params[1], name);
    if (glGetUniformLocation(program, name) == a3)
    {
      break;
    }

    if (++v5 >= params[0])
    {
      return 0;
    }
  }

  if (params[1] <= 35667)
  {
    if (params[1] <= 35664)
    {
      switch(params[1])
      {
        case 5124:
          return 2;
        case 5126:
          return 1;
        case 35664:
          return 8;
      }

      return 0;
    }

    if (params[1] == 35665)
    {
      return 9;
    }

    else if (params[1] == 35666)
    {
      return 10;
    }

    else
    {
      return 18;
    }
  }

  else
  {
    if (params[1] <= 35675)
    {
      switch(params[1])
      {
        case 35668:
          return 19;
        case 35669:
          return 20;
        case 35675:
          return 12;
      }

      return 0;
    }

    result = 5;
    if (params[1] > 35679)
    {
      if (params[1] == 35680)
      {
        return result;
      }

      v7 = 35682;
    }

    else
    {
      if (params[1] == 35676)
      {
        return 11;
      }

      v7 = 35678;
    }

    if (params[1] != v7)
    {
      return 0;
    }
  }

  return result;
}

double C3DGeometryInitSubdivision(uint64_t a1)
{
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 137) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *&result = 17105153;
  *(a1 + 138) = 17105153;
  return result;
}

void C3DGeometryFinalizeSubdivision(__C3DGeometry *a1)
{
  C3DSubdivisionOsdGPUContextDestroy(a1);
  C3DGeometryDestroySubdivTopologyInfo(a1);
  var5 = a1->var10.var5;
  if (var5)
  {
    CFRelease(var5);
    a1->var10.var5 = 0;
  }

  var4 = a1->var10.var4;
  if (var4)
  {
    CFRelease(var4);
    a1->var10.var4 = 0;
  }

  var3 = a1->var10.var3;
  if (var3)
  {
    CFRelease(var3);
    a1->var10.var3 = 0;
  }
}

__C3DMeshElement *C3DGeometryCopySubdivision(uint64_t a1, __C3DGeometry *a2)
{
  a2->var10.var2.var3 = *(a1 + 141);
  *&a2->var10.var0 = *(a1 + 136);
  a2->var10.var2.var2 = *(a1 + 140);
  C3DSubdivisionOsdGPUContextDestroy(a2);
  C3DGeometryDestroySubdivTopologyInfo(a2);
  var5 = a2->var10.var5;
  if (var5)
  {
    CFRelease(var5);
    a2->var10.var5 = 0;
  }

  var4 = a2->var10.var4;
  v6 = *(a1 + 152);
  if (var4 != v6)
  {
    if (var4)
    {
      CFRelease(a2->var10.var4);
      a2->var10.var4 = 0;
      v6 = *(a1 + 152);
    }

    if (v6)
    {
      v6 = CFRetain(v6);
    }

    a2->var10.var4 = v6;
  }

  var3 = a2->var10.var3;
  result = *(a1 + 144);
  if (var3 != result)
  {
    if (var3)
    {
      CFRelease(a2->var10.var3);
      a2->var10.var3 = 0;
      result = *(a1 + 144);
    }

    if (result)
    {
      result = CFRetain(result);
    }

    a2->var10.var3 = result;
  }

  return result;
}

BOOL C3DGeometryMeshElementsSupportsSubdivision(__C3DGeometry *a1)
{
  var12 = a1->var12;
  v2 = var12 & 0xC;
  if ((var12 & 0xC) == 0)
  {
    Mesh = C3DGeometryGetMesh(a1);
    MeshElements = C3DMeshGetMeshElements(Mesh, 0);
    Count = CFArrayGetCount(MeshElements);
    if (Count < 1)
    {
LABEL_6:
      v2 = 4;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MeshElements, v8);
        Type = C3DMeshElementGetType(ValueAtIndex);
        if (!C3DMeshElementTypeDefinesSurface(Type))
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_6;
        }
      }

      v2 = 8;
    }

    a1->var12 = v2 | var12;
  }

  return v2 == 4;
}

void C3DGeometryOsdSetSubdivisionLevel(__C3DGeometry *a1, int a2)
{
  var0 = a1->var10.var0;
  if (var0 != a2)
  {
    a1->var10.var0 = a2;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  v6 = a1->var11.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, v6, v6, var0, a2);
}

void C3DGeometryOpenSubdivGPUParameterDidChange(__C3DGeometry *a1, int a2, int a3, int a4, int a5)
{
  if ((C3DSubdivisionOsdGPUContextInvalidateIfNeeded(a1) & 1) == 0 && (a3 == 4 ? (v10 = a5 == 0) : (v10 = 1), v10 ? (v11 = 0) : (v11 = 1), a2 == 4 ? (v12 = a4 == 0) : (v12 = 1), v12 ? (v13 = 0) : (v13 = 1), v13 == v11))
  {
    if ((a2 != 0) != (a3 == 0))
    {
      return;
    }

    v14 = 6;
  }

  else
  {
    v14 = 7;
  }

  v15 = C3DGetScene(a1);

  C3DScenePostPipelineEvent(v15, v14, a1, 0);
}

void C3DGeometryOsdSetWantsAdaptiveSubdivision(__C3DGeometry *a1, _BOOL4 a2)
{
  if (a1->var10.var1 != a2)
  {
    a1->var10.var1 = a2;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  var0 = a1->var11.var0;
  v5 = a1->var10.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, var0, var0, v5, v5);
}

void C3DGeometryOsdSetSubdivisionSettings(uint64_t a1, int a2)
{
  if (a2 != *(a1 + 138))
  {
    *(a1 + 138) = a2;
    v3 = *(a1 + 160);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 160) = 0;
    }

    C3DNotifyGeometryDidChange(a1);
    v4 = *(a1 + 184);
    v5 = *(a1 + 136);

    C3DGeometryOpenSubdivGPUParameterDidChange(a1, v4, v4, v5, v5);
  }
}

void C3DGeometryOsdSetEdgeCreasesSource(__C3DGeometry *a1, __C3DMeshSource *cf)
{
  var4 = a1->var10.var4;
  if (var4 != cf)
  {
    if (var4)
    {
      CFRelease(var4);
      a1->var10.var4 = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1->var10.var4 = v5;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  C3DGeometryInvalidateSubdivCreaseAndCornerTopologyInfo(a1);
  var0 = a1->var11.var0;
  v8 = a1->var10.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, var0, var0, v8, v8);
}

void C3DGeometryOsdSetEdgeCreasesElement(__C3DGeometry *a1, __C3DMeshElement *cf)
{
  var3 = a1->var10.var3;
  if (var3 != cf)
  {
    if (var3)
    {
      CFRelease(var3);
      a1->var10.var3 = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1->var10.var3 = v5;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  C3DGeometryInvalidateSubdivCreaseAndCornerTopologyInfo(a1);
  var0 = a1->var11.var0;
  v8 = a1->var10.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, var0, var0, v8, v8);
}

unint64_t C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(float a1)
{
  v1 = a1 * 0.5;
  if ((a1 * 0.5) > 1.0)
  {
    v1 = 1.0;
  }

  v2 = 2.0 - (a1 * 0.5);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  return LODWORD(v1) | (LODWORD(v2) << 32);
}

void C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases(uint64_t a1, uint64_t a2)
{
  Mesh = C3DGeometryGetMesh(a1);
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
  v8 = a1 + 144;
  v6 = *(a1 + 144);
  v7 = *(v8 + 8);
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = ChannelForSourceWithSemanticAtIndex;
    if (C3DMeshElementGetIndicesChannelCount(v6) != 1)
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_cold_1(v11);
      }
    }

    Accessor = C3DMeshSourceGetAccessor(v7);
    PrimitiveCount = C3DMeshElementGetPrimitiveCount(v6);
    ElementsCount = C3DMeshGetElementsCount(Mesh);
    if (ElementsCount >= 1)
    {
      v15 = ElementsCount;
      for (i = 0; i != v15; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 0);
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        C3DMeshElementGetContent(ElementAtIndex, v10, &v20);
        v19[0] = v20;
        v19[1] = v21;
        v19[2] = v22;
        v19[3] = v23;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 0x40000000;
        v18[2] = __C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_block_invoke;
        v18[3] = &unk_2783021A8;
        v18[6] = v6;
        v18[7] = 0;
        v18[8] = Accessor;
        v18[4] = a2;
        v18[5] = PrimitiveCount;
        C3DIndicesContentEnumeratePrimitives(v19, v18, v22);
      }
    }
  }
}

uint64_t __C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v5 = result;
    v6 = 0;
    v7 = a4;
    do
    {
      v8 = *(a3 + 4 * v6++);
      v9 = v6;
      if (v6 == v7)
      {
        v9 = 0;
      }

      v10 = *(a3 + 4 * v9);
      v11 = 0.0;
      if (*(v5 + 40) >= 1)
      {
        v12 = 0;
        while (1)
        {
          Index = C3DMeshElementGetIndex(*(v5 + 48), v12, 0, *(v5 + 56));
          v14 = C3DMeshElementGetIndex(*(v5 + 48), v12, 1, *(v5 + 56));
          if (v8 == Index && v10 == v14)
          {
            break;
          }

          if (v8 == v14 && v10 == Index)
          {
            break;
          }

          if (++v12 >= *(v5 + 40))
          {
            goto LABEL_18;
          }
        }

        v11 = *C3DSourceAccessorGetValuePtrAtIndex(*(v5 + 64), v12);
      }

LABEL_18:
      result = (*(*(v5 + 32) + 16))(v11);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCorners(uint64_t a1, uint64_t a2)
{
  Mesh = C3DGeometryGetMesh(a1);
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, 0);
  result = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 7, 0, 0);
  if (result)
  {
    Accessor = C3DMeshSourceGetAccessor(result);
    result = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    if (result >= 1)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, i);
        result = (*(a2 + 16))(a2, i, *ValuePtrAtIndex);
      }
    }
  }

  return result;
}

uint64_t __C3DShapeGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DShapeGetTypeID_typeID = result;
  return result;
}

uint64_t C3DShapeCreate(uint64_t a1)
{
  if (C3DShapeGetTypeID_onceToken != -1)
  {
    C3DShapeCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DShapeGetTypeID_typeID, 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  C3DShapeInit(Instance, v5);
  return Instance;
}

void C3DShapeInit(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = CGPathRetain(*(a2 + 24));
  v4 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v4;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  C3DShapeBuildConnectedComponents(a1, v5);
  C3DShapeBuildDelaunayTriangulation(a1);
}

void C3DShapeFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      free(v2);
    }

    if (*(a1 + 48))
    {
      v3 = 0;
      do
      {
        v4 = *(a1 + 40) + 32 * v3;
        if (*(v4 + 8))
        {
          v5 = 0;
          v6 = 0;
          do
          {
            free(*(*v4 + v5));
            ++v6;
            v4 = *(a1 + 40) + 32 * v3;
            v5 += 56;
          }

          while (v6 < *(v4 + 8));
        }

        free(*v4);
        free(*(*(a1 + 40) + 32 * v3++ + 16));
      }

      while (v3 < *(a1 + 48));
    }

    free(*(a1 + 40));
    v7 = *(a1 + 16);

    CGPathRelease(v7);
  }
}

const void *C3DShapeGeometryGetMeshForC3DKitNeeds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = *(a1 + 64);
  if (!result || (*a2 == *a3 ? (v8 = *(a2 + 8) == a3[1]) : (v8 = 0), !v8))
  {
    result = *(a1 + 272);
    if (*a2 != *(a1 + 280) || *(a2 + 8) != *(a1 + 288))
    {
      if (result)
      {
        CFRelease(result);
      }

      *(a1 + 280) = *a2;
      result = (*(a4 + 16))(a4);
      *(a1 + 272) = result;
    }
  }

  return result;
}

void C3DShapeGeometryResolveMeshForC3DKitNeeds(void *a1, void *a2)
{
  if (!a1[8])
  {
    v3 = a1[34];
    if (v3)
    {
      if (*a2 == a1[35] && a2[1] == a1[36])
      {
        a1[8] = CFRetain(v3);
        v3 = a1[34];
      }

      CFRelease(v3);
      a1[35] = 0;
      a1[36] = 0;
      a1[34] = 0;
    }
  }
}

void C3DShapeGeometryValidate(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v2 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryValidate_cold_2();
  }

  *md = 0;
  v27 = 0;
  C3DShapeGeometryGetC3DKitParameters(a1, &data);
  CC_MD5(&data, 0x38u, md);
  C3DShapeGeometryResolveMeshForC3DKitNeeds(a1, md);
  if (!*(a1 + 64))
  {
    v3 = *(a1 + 216);
    v4 = *(a1 + 224);
    v19 = *(a1 + 232);
    v20 = *(a1 + 248);
    v21 = *(a1 + 264);
    v5 = v4 * 0.5;
    if (v5 <= *(a1 + 228))
    {
      v6 = v5;
    }

    else
    {
      v6 = *(a1 + 228);
    }

    *&data = *(a1 + 216);
    *(&data + 1) = __PAIR64__(LODWORD(v6), LODWORD(v4));
    v7 = *(a1 + 248);
    v23 = *(a1 + 232);
    v24 = v7;
    v25 = *(a1 + 264);
    v8 = C3DShapeCreate(&data);
    *&data = v3;
    *(&data + 1) = __PAIR64__(LODWORD(v6), LODWORD(v4));
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v9 = C3DMeshCreateShape(v8, &data);
    if (v9)
    {
      v10 = v9;
      C3DGeometrySetMesh(a1, v9);
      CFRelease(v10);
      if (!v8)
      {
        return;
      }

      goto LABEL_10;
    }

    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryValidate_cold_3(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    C3DGeometrySetMesh(a1, 0);
    if (v8)
    {
LABEL_10:
      CFRelease(v8);
    }
  }
}

uint64_t C3DShapeGeometryGetTypeID()
{
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  return C3DShapeGeometryGetTypeID_typeID;
}

void C3DShapeGeometryGetC3DKitParameters(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = C3DShapeGeometryGetPrimitiveType(a1);
  *(a2 + 8) = C3DShapeGeometryGetExtrusionDepth(a1);
  *(a2 + 16) = C3DShapeGeometryGetChamferRadius(a1);
  *(a2 + 32) = C3DShapeGeometryGetDiscretizedStraightLineMaxLength(a1);
  v4 = *(a1 + 264);
  *(a2 + 40) = *(a1 + 248);
  *(a2 + 48) = v4;
}

void C3DTextGeometryValidate(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  *md = 0;
  v37 = 0;
  C3DTextGeometryGetC3DKitParameters(a1, &data);
  CC_MD5(&data, 0x80u, md);
  C3DShapeGeometryResolveMeshForC3DKitNeeds(a1, md);
  if (!*(a1 + 64))
  {
    C3DTextGeometryComputeCTFrameIfNeeded(a1);
    v2 = (a1 + 336);
    if (*(a1 + 329))
    {
      v3 = (a1 + 344);
    }

    else
    {
      v3 = (MEMORY[0x277CBF348] + 8);
    }

    if (!*(a1 + 329))
    {
      v2 = MEMORY[0x277CBF348];
    }

    v4 = *v2;
    v5 = *v3;
    v6 = *(a1 + 216);
    v8 = *(a1 + 224);
    v7 = *(a1 + 228);
    v9 = *(a1 + 248);
    v28 = *(a1 + 232);
    v29 = v9;
    v30 = *(a1 + 264);
    v10 = v8 * 0.5;
    if (v10 <= v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    v12 = *(a1 + 296);
    *&data = v6;
    *(&data + 1) = __PAIR64__(LODWORD(v11), LODWORD(v8));
    v32 = *(a1 + 232);
    v33 = *(a1 + 248);
    *&v34 = *(a1 + 264);
    v13 = C3DTextFrameCreate(v12, &data);
    *&v26[0] = v6;
    *(&v26[0] + 1) = __PAIR64__(LODWORD(v11), LODWORD(v8));
    v26[1] = v28;
    v26[2] = v29;
    v27 = v30;
    v14 = *(a1 + 344);
    v33 = *(a1 + 328);
    v34 = v14;
    v35 = *(a1 + 360);
    v15 = *(a1 + 312);
    data = *(a1 + 296);
    v32 = v15;
    Text = C3DMeshCreateText(v13, v26, &data, v4, v5);
    if (Text)
    {
      v17 = Text;
      C3DGeometrySetMesh(a1, Text);
      CFRelease(v17);
      if (!v13)
      {
        return;
      }

      goto LABEL_12;
    }

    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryValidate_cold_3(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    C3DGeometrySetMesh(a1, 0);
    if (v13)
    {
LABEL_12:
      CFRelease(v13);
    }
  }
}

double C3DTextGeometryGetC3DKitParameters@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  C3DShapeGeometryGetC3DKitParameters(a1, a2);
  *(a2 + 80) = 0;
  *(a2 + 56) = *(a1 + 304);
  *(a2 + 72) = *(a1 + 320);
  *(a2 + 80) = *(a1 + 328);
  v4 = *(a1 + 352);
  *(a2 + 88) = *(a1 + 336);
  *(a2 + 104) = v4;
  result = *(a1 + 220);
  *(a2 + 120) = result;
  return result;
}

void C3DTextGeometryComputeCTFrameIfNeeded(uint64_t a1)
{
  if (*(a1 + 296))
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277D74240]);
    v5 = v4;
    if (*(a1 + 328) == 1)
    {
      if (*(a1 + 329))
      {
        v6 = *(a1 + 320) - 1;
        if (v6 > 3)
        {
          v7 = 4;
        }

        else
        {
          v7 = qword_21C2A3F98[v6];
        }
      }

      else
      {
        v7 = 4;
      }

      [v4 setAlignment:v7];
    }

    else
    {
      if (*(a1 + 329))
      {
        v8 = (*(a1 + 324) - 1);
        if (v8 >= 3)
        {
          v9 = 2;
        }

        else
        {
          v9 = v8 + 3;
        }
      }

      else
      {
        v9 = 2;
      }

      [v4 setLineBreakMode:v9];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = MEMORY[0x277D740A8];
    if (isKindOfClass)
    {
      v12 = [*(a1 + 304) attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
    }

    else
    {
      v13 = *(a1 + 312);
      if (v13)
      {
LABEL_23:
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, *v11, v5, *MEMORY[0x277D74118], 0}];
        v15 = objc_alloc(MEMORY[0x277CCA898]);
        if (*(a1 + 304))
        {
          v16 = *(a1 + 304);
        }

        else
        {
          v16 = &stru_282DCC058;
        }

        v3 = [v15 initWithString:v16 attributes:v14];
        goto LABEL_27;
      }

      v12 = [MEMORY[0x277D74300] fontWithName:@"Helvetica" size:12.0];
    }

    v13 = v12;
    goto LABEL_23;
  }

  v3 = *(a1 + 304);
LABEL_27:
  v17 = CTFramesetterCreateWithAttributedString(v3);
  v30.width = 1.79769313e308;
  v28.location = 0;
  v28.length = 0;
  v30.height = 1.79769313e308;
  v18 = CTFramesetterSuggestFrameSizeWithConstraints(v17, v28, 0, v30, 0);
  width = v18.width;
  height = v18.height;
  Mutable = CGPathCreateMutable();
  v22 = Mutable;
  if (*(a1 + 329) == 1)
  {
    v23 = *(a1 + 336);
    v24 = *(a1 + 344);
    width = *(a1 + 352);
    height = *(a1 + 360);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = width;
  v26 = height;
  CGPathAddRect(Mutable, 0, *&v23);
  v29.location = 0;
  v29.length = 0;
  Frame = CTFramesetterCreateFrame(v17, v29, v22, 0);
  C3DTextGeometrySetCTFrame(a1, Frame);
  CFRelease(v17);
  CFRelease(Frame);

  CFRelease(v22);
}

uint64_t C3DShapeGeometryGetChamferMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 232);
}

void C3DShapeGeometrySetChamferMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 232) != a2)
  {
    *(a1 + 232) = a2;
    C3DGeometrySetMesh(a1, 0);
  }
}

double C3DShapeGeometryGetChamferRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 228);
}

void C3DShapeGeometrySetChamferRadius(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 228) != a2)
  {
    v12 = a2;
    *(a1 + 228) = v12;
    C3DGeometrySetMesh(a1, 0);
  }
}

double C3DShapeGeometryGetDiscretizedStraightLineMaxLength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 236);
}

void C3DShapeGeometrySetDiscretizedStraightLineMaxLength(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 236) != a2)
  {
    v12 = a2;
    *(a1 + 236) = v12;
    C3DGeometrySetMesh(a1, 0);
  }
}

double C3DShapeGeometryGetExtrusionDepth(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void C3DShapeGeometrySetExtrusionDepth(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 224) != a2)
  {
    v12 = a2;
    *(a1 + 224) = v12;
    C3DGeometrySetMesh(a1, 0);
  }
}

uint64_t C3DShapeGeometryGetPrimitiveType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

void C3DShapeGeometrySetPrimitiveType(uint64_t a1, unsigned __int8 a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 216) != a2)
  {
    *(a1 + 216) = a2;
    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DShapeGeometrySetC3DKitParameters(uint64_t a1, uint64_t a2)
{
  C3DShapeGeometrySetPrimitiveType(a1, *a2);
  C3DShapeGeometrySetExtrusionDepth(a1, *(a2 + 8));
  C3DShapeGeometrySetChamferRadius(a1, *(a2 + 16));
  C3DShapeGeometrySetDiscretizedStraightLineMaxLength(a1, *(a2 + 32));
  C3DShapeGeometrySetObjCPath(a1, *(a2 + 40));
  v4 = *(a2 + 48);

  C3DShapeGeometrySetObjCChamferProfile(a1, v4);
}

void C3DShapeGeometrySetObjCPath(uint64_t a1, void *a2)
{
  v8 = *(a1 + 248);
  if (v8 != a2)
  {
    v15 = v4;
    v16 = v3;
    v17 = v2;

    *(a1 + 248) = a2;
    [a2 flatness];
    *&v11 = v11;
    *(a1 + 220) = LODWORD(v11);
    v12 = *(a1 + 240);
    if (v12 != [a2 CGPath])
    {
      v13 = *(a1 + 240);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 240) = 0;
      }

      v14 = [a2 CGPath];
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      *(a1 + 240) = v14;
    }

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DShapeGeometrySetObjCChamferProfile(uint64_t a1, void *a2)
{
  v8 = *(a1 + 264);
  if (v8 != a2)
  {
    v14 = v4;
    v15 = v3;
    v16 = v2;

    *(a1 + 264) = a2;
    v11 = *(a1 + 256);
    if (v11 != [a2 CGPath])
    {
      v12 = *(a1 + 256);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 256) = 0;
      }

      v13 = [a2 CGPath];
      if (v13)
      {
        v13 = CFRetain(v13);
      }

      *(a1 + 256) = v13;
    }

    C3DGeometrySetMesh(a1, 0);
  }
}

float C3DShapeGeometrySetFlatness(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    a2 = 0.001;
  }

  if (a2 != *(a1 + 220))
  {
    v2 = a2;
    *(a1 + 220) = v2;
    C3DGeometrySetMesh(a1, 0);
  }

  return *&a2;
}

void C3DTextGeometrySetC3DKitParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  C3DShapeGeometrySetC3DKitParameters(a1, v8);
  C3DTextGeometrySetString(a1, *(a2 + 56));
  C3DTextGeometrySetFont(a1, *(a2 + 64));
  C3DTextGeometrySetAlignmentMode(a1, *(a2 + 72));
  C3DTextGeometrySetTruncationMode(a1, *(a2 + 76));
  C3DTextGeometrySetWrapped(a1, *(a2 + 80));
  v5 = *(a2 + 81);
  if (*(a1 + 329) != v5)
  {
    *(a1 + 329) = v5;
    C3DGeometrySetMesh(a1, 0);
  }

  C3DTextGeometrySetCustomContainerFrame(a1, *(a2 + 88), *(a2 + 96), *(a2 + 104), *(a2 + 112));
  v6 = *(a2 + 120);
  if (v6 <= 0.0)
  {
    v6 = 0.001;
  }

  if (v6 != *(a1 + 220))
  {
    v7 = v6;
    *(a1 + 220) = v7;

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetString(uint64_t a1, void *a2)
{
  v3 = *(a1 + 304);
  if (v3 != a2)
  {

    *(a1 + 304) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetFont(uint64_t a1, void *a2)
{
  v3 = *(a1 + 312);
  if (v3 != a2)
  {

    *(a1 + 312) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetAlignmentMode(uint64_t a1, int a2)
{
  if (*(a1 + 320) != a2)
  {
    *(a1 + 320) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetTruncationMode(uint64_t a1, int a2)
{
  if (*(a1 + 324) != a2)
  {
    *(a1 + 324) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetWrapped(uint64_t a1, int a2)
{
  if (*(a1 + 328) != a2)
  {
    *(a1 + 328) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetUseCustomContainerFrame(uint64_t a1, int a2)
{
  if (*(a1 + 329) != a2)
  {
    *(a1 + 329) = a2;
    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetCustomContainerFrame(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  if (!CGRectEqualToRect(*(a1 + 336), v11))
  {
    *(a1 + 336) = a2;
    *(a1 + 344) = a3;
    *(a1 + 352) = a4;
    *(a1 + 360) = a5;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetCTFrame(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 296);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 296) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 296) = v5;

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetUseSeparateGeometryElements(uint64_t a1, int a2)
{
  if (*(a1 + 330) != a2)
  {
    *(a1 + 330) = a2;
    C3DGeometrySetMesh(a1, 0);
  }
}

double __C3DShapeGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DShapeGeometryGetTypeID_typeID = v0;
  TypeID = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"chamferRadius", 0xE4u, 7, 0);
  C3DModelPathResolverRegisterProperty(@"extrusionDepth", 0xE0u, 7, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281740548 = kC3DC3DShapeGeometryContextClassSerializable;
  unk_281740558 = *&off_282DC8850;
  unk_281740508 = kC3DC3DShapeGeometryContextClassBoundingVolumes;
  xmmword_2817404F0 = kC3DC3DShapeGeometryContextClassAnimatable;
  result = *&kC3DC3DShapeGeometryContextClassSceneLink;
  unk_281740518 = kC3DC3DShapeGeometryContextClassSceneLink;
  unk_281740528 = *algn_282DC8890;
  qword_281740538 = qword_282DC88A0;
  qword_281740568 = _C3DShapeGeometryCreateCopy;
  return result;
}

uint64_t C3DTextGeometryGetTypeID()
{
  if (C3DTextGeometryGetTypeID_onceToken != -1)
  {
    C3DTextGeometryGetTypeID_cold_1();
  }

  return C3DTextGeometryGetTypeID_typeID;
}

double __C3DTextGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DTextGeometryGetTypeID_typeID = v0;
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DShapeGeometryGetTypeID_typeID);
  C3DModelPathResolverRegisterClassEnd();
  unk_2817401A8 = kC3DC3DTextGeometryContextClassSerializable;
  unk_2817401B8 = *&off_282DC88B8;
  unk_281740168 = kC3DC3DTextGeometryContextClassBoundingVolumes;
  xmmword_281740150 = kC3DC3DTextGeometryContextClassAnimatable;
  result = *&kC3DC3DTextGeometryContextClassSceneLink;
  unk_281740178 = kC3DC3DTextGeometryContextClassSceneLink;
  unk_281740188 = unk_282DC88F8;
  qword_281740198 = qword_282DC8908;
  qword_2817401C8 = _C3DTextGeometryCreateCopy;
  return result;
}

double C3DShapeGeometryInit(uint64_t a1)
{
  v2 = C3DGeometryInit(a1);
  Default = C3DMaterialCreateDefault(v2);
  C3DGeometryAppendMaterial(a1, Default);
  CFRelease(Default);
  *(a1 + 216) = 0;
  *(a1 + 220) = 1065353216;
  *(a1 + 228) = 0;
  *(a1 + 236) = 2139095039;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 120) = kC3DShapeGeometryValidationCallBacks;
  return result;
}

uint64_t C3DShapeGeometryCreate()
{
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DShapeGeometryGetTypeID_typeID, 280);
  C3DShapeGeometryInit(Instance);
  return Instance;
}

void C3DShapeGeometryCopy(uint64_t a1, uint64_t a2)
{
  C3DGeometryCopy(a1, a2);
  PrimitiveType = C3DShapeGeometryGetPrimitiveType(a1);
  C3DShapeGeometrySetPrimitiveType(a2, PrimitiveType);
  v5 = *(a1 + 220);
  v6 = v5;
  v7 = v5 > 0.0;
  v8 = 0.001;
  if (v7)
  {
    v8 = v6;
  }

  if (v8 != *(a2 + 220))
  {
    v9 = v8;
    *(a2 + 220) = v9;
    C3DGeometrySetMesh(a2, 0);
  }

  ExtrusionDepth = C3DShapeGeometryGetExtrusionDepth(a1);
  C3DShapeGeometrySetExtrusionDepth(a2, ExtrusionDepth);
  ChamferRadius = C3DShapeGeometryGetChamferRadius(a1);
  C3DShapeGeometrySetChamferRadius(a2, ChamferRadius);
  DiscretizedStraightLineMaxLength = C3DShapeGeometryGetDiscretizedStraightLineMaxLength(a1);
  C3DShapeGeometrySetDiscretizedStraightLineMaxLength(a2, DiscretizedStraightLineMaxLength);
  C3DShapeGeometrySetObjCPath(a2, *(a1 + 248));
  v13 = *(a1 + 264);

  C3DShapeGeometrySetObjCChamferProfile(a2, v13);
}

void C3DShapeGeometryFinalize(uint64_t a1)
{
  C3DShapeGeometrySetObjCPath(a1, 0);
  C3DShapeGeometrySetObjCChamferProfile(a1, 0);
  v2 = *(a1 + 272);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 272) = 0;
  }
}

uint64_t C3DTextGeometryCreate()
{
  if (C3DTextGeometryGetTypeID_onceToken != -1)
  {
    C3DTextGeometryGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextGeometryGetTypeID_typeID, 352);
  C3DShapeGeometryInit(Instance);
  *(Instance + 328) = 0;
  *(Instance + 296) = 0u;
  *(Instance + 312) = 0u;
  v1 = *(MEMORY[0x277CBF3A0] + 16);
  *(Instance + 336) = *MEMORY[0x277CBF3A0];
  *(Instance + 352) = v1;
  *(Instance + 330) = 0;
  *(Instance + 120) = &kC3DTextGeometryValidationCallBacks;
  return Instance;
}

void C3DTextGeometryCopy(uint64_t a1, uint64_t a2)
{
  C3DShapeGeometryCopy(a1, a2);
  C3DTextGeometrySetCTFrame(a2, *(a1 + 296));
  C3DTextGeometrySetString(a2, *(a1 + 304));
  C3DTextGeometrySetFont(a2, *(a1 + 312));
  C3DTextGeometrySetAlignmentMode(a2, *(a1 + 320));
  C3DTextGeometrySetTruncationMode(a2, *(a1 + 324));
  C3DTextGeometrySetWrapped(a2, *(a1 + 328));
  v4 = *(a1 + 329);
  if (*(a2 + 329) != v4)
  {
    *(a2 + 329) = v4;
    C3DGeometrySetMesh(a2, 0);
  }

  v5 = *(a1 + 336);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  v8 = *(a1 + 360);

  C3DTextGeometrySetCustomContainerFrame(a2, v5, v6, v7, v8);
}

void C3DTextGeometryFinalize(uint64_t a1)
{
  C3DTextGeometrySetCTFrame(a1, 0);
  C3DTextGeometrySetString(a1, 0);
  C3DTextGeometrySetFont(a1, 0);

  C3DShapeGeometryFinalize(a1);
}

const void *C3DShapeGeometryMeshForBoundingBox(const void *a1, __int128 *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v4 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryMeshForBoundingBox_cold_2();
  }

  *md = 0;
  v18 = 0;
  *v15 = 0;
  v16 = 0;
  C3DShapeGeometryGetC3DKitParameters(a1, data);
  CC_MD5(data, 0x38u, md);
  v5 = a2[1];
  data[0] = *a2;
  data[1] = v5;
  data[2] = a2[2];
  v14 = *(a2 + 6);
  CC_MD5(data, 0x38u, v15);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __C3DShapeGeometryMeshForBoundingBox_block_invoke;
  v8[3] = &__block_descriptor_88_e17_____C3DMesh__8__0l;
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  v11 = a2[2];
  v12 = *(a2 + 6);
  return C3DShapeGeometryGetMeshForC3DKitNeeds(a1, v15, md, v8);
}

const void *__C3DShapeGeometryMeshForBoundingBox_block_invoke(uint64_t a1)
{
  v2 = C3DShapeGeometryCreate();
  v3 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v3;
  v6[2] = *(a1 + 64);
  v7 = *(a1 + 80);
  C3DShapeGeometrySetC3DKitParameters(v2, v6);
  Mesh = C3DGeometryGetMesh(v2);
  CFRetain(Mesh);
  CFRelease(v2);
  return Mesh;
}

uint64_t C3DShapeGeometryGetBoundingBox(const void *a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v8 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v8 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryGetBoundingBox_cold_2();
  }

  v9 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v9;
  v12[2] = *(a4 + 32);
  v13 = *(a4 + 48);
  v10 = C3DShapeGeometryMeshForBoundingBox(a1, v12);

  return C3DMeshGetBoundingBox(v10, a2, a3);
}

uint64_t C3DShapeGeometryGetBoundingSphere(const void *a1, _OWORD *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v6 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryGetBoundingSphere_cold_2();
  }

  v7 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v7;
  v10[2] = *(a3 + 32);
  v11 = *(a3 + 48);
  v8 = C3DShapeGeometryMeshForBoundingBox(a1, v10);

  return C3DMeshGetBoundingSphere(v8, a2);
}

const void *C3DTextGeometryMeshForBoundingBox(uint64_t a1, _OWORD *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  *md = 0;
  v26 = 0;
  *v23 = 0;
  v24 = 0;
  C3DTextGeometryGetC3DKitParameters(a1, data);
  CC_MD5(data, 0x80u, md);
  v4 = a2[5];
  data[4] = a2[4];
  data[5] = v4;
  v5 = a2[7];
  data[6] = a2[6];
  data[7] = v5;
  v6 = a2[1];
  data[0] = *a2;
  data[1] = v6;
  v7 = a2[3];
  data[2] = a2[2];
  data[3] = v7;
  CC_MD5(data, 0x80u, v23);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __C3DTextGeometryMeshForBoundingBox_block_invoke;
  v13[3] = &__block_descriptor_160_e17_____C3DMesh__8__0l;
  v8 = a2[5];
  v18 = a2[4];
  v19 = v8;
  v9 = a2[7];
  v20 = a2[6];
  v21 = v9;
  v10 = a2[1];
  v14 = *a2;
  v15 = v10;
  v11 = a2[3];
  v16 = a2[2];
  v17 = v11;
  return C3DShapeGeometryGetMeshForC3DKitNeeds(a1, v23, md, v13);
}

const void *__C3DTextGeometryMeshForBoundingBox_block_invoke(_OWORD *a1)
{
  v2 = C3DTextGeometryCreate();
  v3 = a1[7];
  v9[4] = a1[6];
  v9[5] = v3;
  v4 = a1[9];
  v9[6] = a1[8];
  v9[7] = v4;
  v5 = a1[3];
  v9[0] = a1[2];
  v9[1] = v5;
  v6 = a1[5];
  v9[2] = a1[4];
  v9[3] = v6;
  C3DTextGeometrySetC3DKitParameters(v2, v9);
  Mesh = C3DGeometryGetMesh(v2);
  CFRetain(Mesh);
  CFRelease(v2);
  return Mesh;
}

uint64_t C3DTextGeometryGetBoundingBox(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v6 = a4[5];
  v12[4] = a4[4];
  v12[5] = v6;
  v7 = a4[7];
  v12[6] = a4[6];
  v12[7] = v7;
  v8 = a4[1];
  v12[0] = *a4;
  v12[1] = v8;
  v9 = a4[3];
  v12[2] = a4[2];
  v12[3] = v9;
  v10 = C3DTextGeometryMeshForBoundingBox(a1, v12);

  return C3DMeshGetBoundingBox(v10, a2, a3);
}

uint64_t C3DTextGeometryGetBoundingSphere(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a3[5];
  v10[4] = a3[4];
  v10[5] = v4;
  v5 = a3[7];
  v10[6] = a3[6];
  v10[7] = v5;
  v6 = a3[1];
  v10[0] = *a3;
  v10[1] = v6;
  v7 = a3[3];
  v10[2] = a3[2];
  v10[3] = v7;
  v8 = C3DTextGeometryMeshForBoundingBox(a1, v10);

  return C3DMeshGetBoundingSphere(v8, a2);
}

id _C3DShapeGeometryCFFinalize(__C3DGeometry *a1)
{
  C3DShapeGeometryFinalize(a1);

  return _C3DGeometryCFFinalize(a1);
}

id _C3DTextGeometryCFFinalize(__C3DGeometry *a1)
{
  C3DTextGeometryFinalize(a1);

  return _C3DGeometryCFFinalize(a1);
}

uint64_t _C3DShapeGeometryGetBoundingBox(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = C3DGeometryGetMesh(a1);
  if (result)
  {

    return C3DMeshGetBoundingBox(result, a3, a4);
  }

  return result;
}

uint64_t _C3DShapeGeometryGetBoundingSphere(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = C3DGeometryGetMesh(a1);
  if (result)
  {

    return C3DMeshGetBoundingSphere(result, a3);
  }

  return result;
}

void _C3DShapeGeometrySetValue(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  C3DGeometrySetMesh(a1, 0);
}

uint64_t _C3DShapeGeometryCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DShapeGeometryCreate();
  C3DShapeGeometryCopy(a1, v10);
  return v10;
}

uint64_t _C3DTextGeometryGetBoundingBox(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = C3DGeometryGetMesh(a1);
  if (result)
  {

    return C3DMeshGetBoundingBox(result, a3, a4);
  }

  return result;
}

uint64_t _C3DTextGeometryGetBoundingSphere(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = C3DGeometryGetMesh(a1);
  if (result)
  {

    return C3DMeshGetBoundingSphere(result, a3);
  }

  return result;
}

void _C3DTextGeometrySetValue(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  C3DGeometrySetMesh(a1, 0);
}

uint64_t _C3DTextGeometryCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DTextGeometryCreate();
  C3DTextGeometryCopy(a1, v10);
  return v10;
}

uint64_t C3D::ShouldShowOutline(C3D *this, const void *a2)
{
  if ((C3DAuthoringEnvironmentGetDisplayMask(this) & 0x20000) != 0)
  {
    SelectedNodes = C3DAuthoringEnvironmentGetSelectedNodes(this);
    v5 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    while (v5 < [SelectedNodes count])
    {
      v6 = [SelectedNodes objectAtIndexedSubscript:v5];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = ___ZN3C3D17ShouldShowOutlineEPKv_block_invoke;
      v8[3] = &unk_2782FCA90;
      v8[4] = &v9;
      C3DNodeApplyHierarchy(v6, v8);
      ++v5;
      if (v10[3])
      {
        v3 = 1;
        goto LABEL_8;
      }
    }

    v3 = *(v10 + 24);
LABEL_8:
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_21C1B50AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3C3D17ShouldShowOutlineEPKv_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (C3DNodeIsHiddenOrTransparent(a2))
  {
    return 1;
  }

  result = C3DNodeGetGeometry(a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 2;
  }

  return result;
}

double C3D::AdaptCullingContextForAuthoring(C3D *this, __n128 **a2, const Parameters *a3, __C3DCullingContext *a4)
{
  v4 = a4;
  Scene = C3DEngineContextGetScene(this);
  StackAllocator = C3DEngineContextGetStackAllocator(this);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v28, StackAllocator);
  LayerRootNode = C3DSceneGetLayerRootNode(Scene, v4);
  v31.i64[0] = MEMORY[0x277D85DD0];
  v31.i64[1] = 3321888768;
  v32 = ___ZZN3C3D31AdaptCullingContextForAuthoringEP18__C3DEngineContextRKNS_13DrawNodesPass10ParametersER19__C3DCullingContexthENK3__0cvU13block_pointerF18C3DNodeApplyStatusP9__C3DNodeEEv_block_invoke;
  v33 = &__block_descriptor_40_e8_32c127_ZTSKZN3C3D31AdaptCullingContextForAuthoringEP18__C3DEngineContextRKNS_13DrawNodesPass10ParametersER19__C3DCullingContexthE3__0_e20_q16__0____C3DNode__8l;
  v34 = &v28;
  C3DNodeApplyHierarchySkippingHiddenNodes(LayerRootNode, [objc_msgSend(&v31 "copy")]);
  if (v29)
  {
    v11 = 0;
    v12 = v30;
    v13 = 8 * v29;
    v14 = 0uLL;
    do
    {
      v26 = v14;
      v15 = *v12;
      if (C3DGetBoundingSphere(*v12, 0, &v31))
      {
        WorldMatrix = C3DNodeGetWorldMatrix(v15);
        C3DSphereXFormMatrix4x4(&v31, WorldMatrix, &v31);
        v17 = v31;
        if ((v11 & 1) != 0 && (v18 = v26, v19 = vsubq_f32(v26, v31), v20 = vmulq_f32(v19, v19), v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)), (v26.f32[3] + v21) >= v31.f32[3]))
        {
          if ((v31.f32[3] + v21) > v26.f32[3])
          {
            v18 = vmlaq_n_f32(v26, v19, (v26.f32[3] - (((v26.f32[3] + v31.f32[3]) + v21) * 0.5)) / v21);
            v18.f32[3] = ((v26.f32[3] + v31.f32[3]) + v21) * 0.5;
          }

          v11 = 1;
          v17 = v18;
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v17 = v26;
      }

      ++v12;
      v14 = v17;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v17 = 0uLL;
  }

  v27 = v17;
  *v22.i64 = C3DNodeGetPosition(a2[1]);
  a3[469].var4 = 1;
  *&a3[474].var4 = 0x3F847AE147AE147BLL;
  v23 = vsubq_f32(v22, v27);
  v24 = vmulq_f32(v23, v23);
  result = (v27.f32[3] + sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)));
  *&a3[475].var2 = result;
  return result;
}

double C3D::AuthoringPass::AuthoringPass(C3D::AuthoringPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v6 = 0;
  v8 = 0u;
  v9 = 0x20000;
  memset(v5, 0, sizeof(v5));
  v7 = -1;
  BYTE8(v8) = 1;
  v3 = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v5);
  *v3 = &unk_282DC8920;
  *(v3 + 2692) = 0;
  result = 0.0;
  *(v3 + 335) = 0u;
  return result;
}

void C3D::AuthoringPass::setup(C3D::AuthoringPass *this)
{
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(*(this + 2), 0);
  *(this + 5384) = C3D::ShouldShowOutline(AuthoringEnvironment, v3);
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 2u);
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v5 = v4;
  if ((*(this + 5384) & 1) == 0)
  {
    *(v4 + 8) = "COLOR";
    C3D::Pass::parentColorDesc(this, &v16);
    *(v5 + 16) = v16;
    *(v5 + 32) = v17;
    *(v5 + 66) = *(v5 + 66) & 0xFF78 | 0x85;
  }

  v6 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  *(v6 + 8) = "DEPTH";
  *(v6 + 64) = 2;
  C3D::Pass::parentDepthDesc(this, &v16);
  *(v6 + 16) = v16;
  *(v6 + 32) = v17;
  *(v6 + 66) = *(v6 + 66) & 0xFF78 | 0x85;
  v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v7 + 8) = "COLOR";
  *(v7 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v16);
  *(v7 + 16) = v16;
  *(v7 + 32) = v17;
  *(v7 + 66) = *(v7 + 66) & 0xFFFC | ((*(this + 5384) & 1) == 0);
  v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v8 + 8) = "DEPTH";
  v9 = *(v8 + 66) & 0xFFFD;
  *(v8 + 64) = 2;
  *(v8 + 66) = v9 | 9;
  *(this + 296) = 0;
  *(this + 31) = C3DEngineContextGetPointOfView(*(this + 2));
  *(this + 303) = 256;
  *(this + 119) = 1;
  *(this + 11) = 2;
  if (*(this + 5384) == 1)
  {
    v10 = *(this + 3);
    *&v16 = this;
    v11 = C3D::RenderGraph::createPass<C3D::OutlinePass,C3D::AuthoringPass *>(v10, &v16);
    *(this + 671) = v11;
    v12 = C3D::PassDescriptor::outputAtIndex((v11 + 32), 0);
    *v5 = *v12;
    v13 = v12[4];
    v15 = v12[1];
    v14 = v12[2];
    *(v5 + 48) = v12[3];
    *(v5 + 64) = v13;
    *(v5 + 16) = v15;
    *(v5 + 32) = v14;
    C3D::Pass::addDependency(this, *(this + 671));
  }

  C3D::DrawNodesPass::setup(this);
}

C3D::OutlinePass *C3D::RenderGraph::createPass<C3D::OutlinePass,C3D::AuthoringPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::OutlinePass::OutlinePass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void C3D::AuthoringPass::compile(C3D::AuthoringPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v4 = *(v3 + 28);
  v5 = C3D::Pass::resource(this);
  v6 = [*C3D::PassResource::outputAtIndex(v5 1u)];
  v7 = [(SCNMTLRenderContext *)RenderContext reverseZ]| (2 * *(v3 + 31));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ *(this + 5384));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v4)));
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47))) ^ v6)));
  v12 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xF05FE8936EBFFF1DLL * (v11 ^ (v11 >> 47))) ^ ((0xF05FE8936EBFFF1DLL * (v11 ^ (v11 >> 47))) >> 47))));
  v13 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47));
  *(this + 672) = v13;
  if (!v13)
  {
    operator new();
  }

  C3D::DrawNodesPass::compile(this);
}