uint64_t __C3DProgramHashCodeGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DProgramHashCodeGetTypeID_typeID = result;
  return result;
}

uint64_t __UpdateHashCodeWithTextureType(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6)
{
  v12 = C3DEffectCommonProfileContainsContentForEffectProperty(a3, a4);
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a3, a4, 0);
  HasInterpolationModesPerKey = 0;
  if (a4 != 4 && EffectSlot)
  {
    HasInterpolationModesPerKey = C3DKeyframeControllerHasInterpolationModesPerKey(EffectSlot);
  }

  if (!a3 || a4 == 4)
  {
    v17 = a5 & 0xFFFFFFFE | v12;
    if (!v12)
    {
      return v17;
    }
  }

  else
  {
    UVSet = C3DEffectCommonProfileGetUVSet(a3, a4);
    if (UVSet == -1)
    {
      UVSet = C3DMaterialDefaultUVSetForProperty(a4);
    }

    if (((UVSet != -1) & v12) == 1)
    {
      if (C3DMeshGetSourceWithSemanticAtIndex(a2, 3, UVSet, 0))
      {
        v16 = 1;
        goto LABEL_18;
      }

LABEL_15:
      if (UVSet == -1 || (a6 & 1) == 0)
      {
        return a5 & 0xFFC3FFFE | ((UVSet & 0xF) << 18);
      }

      v16 = 0;
LABEL_18:
      v17 = a5 & 0xFFC3FFFE | v16 & 0xFFC3FFFF | ((__UpdateHashCodeUVSetForEffectProperty(a1, UVSet, HasInterpolationModesPerKey, a4) & 0xF) << 18);
      if ((v16 & 1) == 0)
      {
        return v17;
      }

      goto LABEL_19;
    }

    if (((UVSet == -1) & v12) != 1)
    {
      goto LABEL_15;
    }

    LODWORD(v17) = a5 | 0x3C0001;
  }

LABEL_19:
  v33 = 0;
  v32 = 0;
  v31 = 1;
  v18 = C3DEffectCommonProfileGetEffectSlot(a3, a4, 0);
  if (!v18 || (C3DEffectSlotGetTextureInfo(v18, &v33, &v32, &v31), (v19 = v33) == 0))
  {
    v19 = 2;
    v33 = 2;
  }

  v20 = v17 & 0xFFFFE81F | (32 * v32) | (v31 << 10);
  if (HasInterpolationModesPerKey)
  {
    v21 = 4096;
  }

  else
  {
    v21 = 0;
  }

  if (v19 >= 7)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __UpdateHashCodeWithTextureType_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  return v20 | v21 | (v33 << 6);
}

uint64_t __UpdateHashCodeUVSetForEffectProperty(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v4 = *(a1 + 163);
  if (a3)
  {
LABEL_7:
    LODWORD(v5) = *(a1 + 163);
LABEL_8:
    v7 = (a1 + 164 + 2 * *(a1 + 163));
    *v7 = a2;
    if (!a3)
    {
      a4 = -1;
    }

    v7[1] = a4;
    *(a1 + 163) = v4 + 1;
    return v5;
  }

  if (*(a1 + 163))
  {
    v5 = 0;
    v6 = (a1 + 165);
    while (*(v6 - 1) != a2 || *v6 != 255)
    {
      ++v5;
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v10 = *(a1 + 163);
  }

  else
  {
    v10 = 0;
    LODWORD(v5) = 0;
  }

  if (v5 == v10)
  {
    goto LABEL_8;
  }

  return v5;
}

uint64_t __UpdateShaderModifiersInProgramHashCode(uint64_t a1, uint64_t a2, int a3, _WORD *a4, _WORD *a5)
{
  ShaderModifiers = C3DEntityGetShaderModifiers(a2);
  v11 = a1 + 16;
  v12 = *(a1 + 16 + 8 * a3);
  if (!(ShaderModifiers | v12))
  {
    goto LABEL_25;
  }

  v13 = ShaderModifiers;
  if (ShaderModifiers)
  {
    if (v12 && CFEqual(ShaderModifiers, v12))
    {
      goto LABEL_25;
    }
  }

  Count = CFArrayGetCount(v13);
  if (v13)
  {
    v15 = Count;
    if (Count)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], v13);
      v17 = *(v11 + 8 * a3);
      if (v17 != Copy)
      {
        if (v17)
        {
          CFRelease(v17);
          *(v11 + 8 * a3) = 0;
        }

        if (Copy)
        {
          v18 = CFRetain(Copy);
        }

        else
        {
          v18 = 0;
        }

        *(v11 + 8 * a3) = v18;
      }

      CFRelease(Copy);
      ShadableMinimumMTLLanguageVersion = C3DEntityGetShadableMinimumMTLLanguageVersion(a2);
      if (ShadableMinimumMTLLanguageVersion)
      {
        valuePtr = 0;
        CFNumberGetValue(ShadableMinimumMTLLanguageVersion, kCFNumberNSIntegerType, &valuePtr);
        v22 = *(a1 + 32);
        if (valuePtr > v22)
        {
          LODWORD(v22) = valuePtr;
        }

        *(a1 + 32) = v22;
      }

      if (v15 >= 1)
      {
        v23 = 0;
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v23);
          v20 |= C3DShaderModifierGetFlags(ValueAtIndex);
          *a4 |= C3DShaderModifierGetEffectPropertyMaskForTexcoordsUse(ValueAtIndex);
          *a5 |= C3DShaderModifierGetMappingChannelyMaskForTexcoordsUse(ValueAtIndex);
          ++v23;
        }

        while (v15 != v23);
        return v20;
      }

LABEL_25:
      LOWORD(v20) = 0;
      return v20;
    }
  }

  v19 = *(v11 + 8 * a3);
  if (v19)
  {
    CFRelease(v19);
    *(v11 + 8 * a3) = 0;
  }

  LOWORD(v20) = 0;
  *(a1 + 32) = 0;
  return v20;
}

uint64_t C3DProgramHashCodeGetUVSetInfo(uint64_t a1, uint64_t a2)
{
  if (a2 >= 16)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DProgramHashCodeGetUVSetInfo_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 2 * a2 + 164);
}

__CFString *C3DProgramHashCodeGetCustomSlotSortedName(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 162) > a2)
  {
    return *(a1 + 8 * a2 + 216);
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    C3DProgramHashCodeGetCustomSlotSortedName_cold_1(v3);
  }

  return @"unknown";
}

uint64_t C3DProgramHashCodeGetCustomSlotUVSet(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 162) > a2)
  {
    return *(a1 + a2 + 203);
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    C3DProgramHashCodeGetCustomSlotSortedName_cold_1(v3);
  }

  return -1;
}

uint64_t __dispatchShaderModifiers(uint64_t a1, uint64_t a2)
{
  result = C3DShaderModifierGetEntryPoint(a1);
  if (result == *(a2 + 24))
  {
    result = C3DShaderModifierGetLanguage(a1);
    if (result == *(a2 + 28))
    {
      if (*a2)
      {
        v5 = *(a2 + 16);
        if (v5 < *(a2 + 8))
        {
          *(*a2 + 8 * v5) = a1;
          *(a2 + 16) = v5 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t C3DProgramHashCodeCopyShaderModifiersForEntryPoint(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v11[0] = a4;
  v11[1] = a5;
  v12 = 0;
  v6 = a1 + 16;
  v7 = 1;
  v13 = a2;
  v14 = a3;
  do
  {
    v8 = v7;
    v9 = *(v6 + 8 * v5);
    if (v9)
    {
      v15.length = CFArrayGetCount(*(v6 + 8 * v5));
      v15.location = 0;
      CFArrayApplyFunction(v9, v15, __dispatchShaderModifiers, v11);
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  return v12;
}

BOOL C3DProgramHashCodeMatchLightHashCodesAndLightingContext(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 120);
  if ((v2 & 0xF) == 5)
  {
    v3 = *(a1 + 200);
    v4 = *a2;
    if ((v3 & 0x400) != 0 && (((v4 >> 4) ^ (v3 >> 11)) & 7) != 0)
    {
      return 0;
    }
  }

  else
  {
    v4 = *a2;
    if ((v2 & 0xB) != 0)
    {
      v5 = *(a1 + 200);
      if ((v4 ^ (v5 >> 5)) & 1) == 0 || (((v5 >> 6) ^ (v4 >> 1)))
      {
        return 0;
      }
    }
  }

  if (*(a1 + 160) != (v4 >> 7) || ((v4 >> 3) & 1) != ((*(a1 + 202) >> 4) & 1))
  {
    return 0;
  }

  v6 = (v4 >> 7);
  if (!(v4 >> 7))
  {
    return 1;
  }

  v7 = (a1 + 128);
  v8 = (a2 + 2);
  v9 = v6 - 1;
  do
  {
    v11 = *v7++;
    v10 = v11;
    v12 = *v8++;
    result = v10 == v12;
  }

  while (v10 == v12 && v9-- != 0);
  return result;
}

uint64_t C3DProgramHashCodeCreate(void *a1, __C3DGeometry *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t a7)
{
  v172 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    return 0;
  }

  if (a5)
  {
    v8 = *a5;
    v9 = (v8 >> 1) & 1;
    v131 = (v8 >> 4) & 7;
    v10 = (v8 & 1) == 0;
  }

  else
  {
    LOWORD(v131) = 0;
    LOBYTE(v9) = 0;
    v10 = 0;
  }

  v164 = 0u;
  memset(v165, 0, 88);
  memset(v163, 0, sizeof(v163));
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  WORD4(v164) = 7;
  WORD2(v164) = a7;
  BYTE6(v164) = BYTE2(a7);
  BYTE7(v164) = BYTE3(a7);
  v146 = 0;
  updated = __UpdateShaderModifiersInProgramHashCode(&v153, a6, 0, &v146 + 1, &v146);
  v132 = __UpdateShaderModifiersInProgramHashCode(&v153, a2, 1, &v146 + 1, &v146);
  C3DNodeGetWorldAlpha(a1);
  v13 = v12;
  CommonProfile = C3DMaterialGetCommonProfile(a6);
  TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(CommonProfile);
  if (TransparencyMode == 1)
  {
    v136 = v13 >= 1.0;
    Color = C3DEffectCommonProfileGetColor(CommonProfile, 5);
    v16 = a2;
    v15 = a3;
    if ((C3DEffectCommonProfileContainsContentForEffectProperty(CommonProfile, 5) & 1) != 0 || !C3DColor4IsBlack(Color) && C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18) != 0.0)
    {
      v136 = 0;
    }
  }

  else
  {
    v136 = (v13 * C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18)) >= 1.0;
    v16 = a2;
    v15 = a3;
  }

  LightingModel = C3DEffectCommonProfileGetLightingModel(CommonProfile);
  v19 = LightingModel;
  v20 = LightingModel == 5 || LightingModel != 4 && v10;
  if ((LightingModel | 4) == 4)
  {
    v143 = 0;
  }

  else
  {
    v143 = (LightingModel == 5) | v9;
  }

  v142 = v20;
  if (a1)
  {
    v21 = C3DNodeGetLightmapInfo(a1) != 0;
    if (v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 0;
    if (v15)
    {
LABEL_20:
      if (C3DMeshContainsSourcesWithSemantic(v15, 2))
      {
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }

      if (v16)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  v22 = 0;
  if (v16)
  {
LABEL_24:
    if (C3DGeometryGetWantsHardwareTessellation(v16))
    {
      C3DGeometryGetTessellator(v16, &v145);
      v23 = 8 * v145.n128_u8[12];
      v24 = 4;
      v16 = a2;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v26 = CFGetTypeID(v16);
    v25 = (v26 == C3DBezierCurveGeometryGetTypeID()) << 27;
    goto LABEL_31;
  }

LABEL_28:
  v23 = 0;
  v24 = 0;
  v25 = 0;
LABEL_31:
  if (a1 && (Skinner = C3DNodeGetSkinner(a1), (v28 = Skinner) != 0) && C3DSkinnerGetEffectiveCalculationMode(Skinner, a2) == 1)
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(v28);
    if (!OverrideMaterial)
    {
      v30 = scn_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
      }
    }

    MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
    if (MaxInfluencesPerVertex >= 4)
    {
      LODWORD(v39) = 4;
    }

    else
    {
      LODWORD(v39) = MaxInfluencesPerVertex;
    }

    v39 = v39;
  }

  else
  {
    v39 = 0;
  }

  v129 = v39;
  HIDWORD(v160) = v25 | v23 | ((v21 | (v39 << 28) | v22) + v24);
  WORD4(v160) = C3DEffectCommonProfileGetHashCode(CommonProfile);
  if (C3DGeometryOpenSubdivGPUIsActive(a2))
  {
    memset(&c, 0, 24);
    C3DGeometryGetTessellator(a2, &c);
    v40 = (a7 >> 24) & 7;
    if ((c.hash[2] & 0x100) != 0 && C3DGeometryOpenSubdivGetGPUCanBenefitFromSingleCreasePatches(a2))
    {
      if (C3DSubdivisionGetPathTypeSupportsSingleCrease(v40))
      {
        v41 = 96;
      }

      else
      {
        v41 = 32;
      }
    }

    else
    {
      v41 = 32;
    }

    v43 = BYTE1(c.hash[2]);
    GPUPrimvarDataTypeHash = C3DGeometryOpenSubdivGetGPUPrimvarDataTypeHash(a2);
    HIDWORD(v160) |= v41 | ((GPUPrimvarDataTypeHash & 0x7FFFF) << 8) | (v43 << 6) & 0x80;
    v42 = BYTE10(v164) & 0xF8 | v40;
  }

  else
  {
    v42 = BYTE10(v164) & 0xF8;
  }

  BYTE10(v164) = v42;
  v135 = v132 | updated;
  if (a5)
  {
    v45 = *a5;
    v46 = (*a5 >> 7);
    if ((*a5 >> 7))
    {
      __memcpy_chk();
      bzero(&v161 + 4 * v46, (32 - (4 * v46)) & 0x3FFFFFFFCLL);
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
    }

    v47 = v45 >> 7;
  }

  else
  {
    v47 = 0;
    v161 = 0u;
    v162 = 0u;
  }

  v48 = 0;
  LOBYTE(v163[0]) = v47;
  v49 = HIWORD(v146);
  do
  {
    EffectPropertyHashCode = C3DEffectCommonProfileGetEffectPropertyHashCode(CommonProfile, v48);
    if (EffectPropertyHashCode & 1) != 0 || ((v49 >> v48))
    {
      EffectPropertyHashCode = __UpdateHashCodeWithTextureType(&v153, a3, CommonProfile, v48, EffectPropertyHashCode, v49 != 0);
    }

    v51 = v143;
    if (v48 != 1)
    {
      v51 = v142;
    }

    if (v51)
    {
      v52 = v19;
    }

    else
    {
      v52 = 4;
    }

    if (!C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(v52, v48))
    {
      goto LABEL_125;
    }

    if (v48 > 14)
    {
      if (v48 <= 17)
      {
        if (v48 == 15)
        {
          goto LABEL_109;
        }

        if (v48 != 16)
        {
          goto LABEL_125;
        }

        v53 = (BYTE1(v156) >> 3) & 1;
        if ((EffectPropertyHashCode & 0x2000) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_111;
      }

      switch(v48)
      {
        case 18:
          v53 = C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18) < 1.0;
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        case 19:
          v54 = (EffectPropertyHashCode & 0x10) == 0;
LABEL_99:
          v53 = v54;
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        case 20:
          if ((EffectPropertyHashCode & 0x10) != 0)
          {
            LODWORD(v160) = 0;
LABEL_125:
            *(&v155 + v48 + 1) = 0;
            goto LABEL_126;
          }

LABEL_107:
          v53 = 1;
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
      }
    }

    else
    {
      v53 = 1;
      if (v48 <= 9)
      {
        switch(v48)
        {
          case 2:
            goto LABEL_110;
          case 5:
            if (TransparencyMode == 1)
            {
              if ((EffectPropertyHashCode & 2) != 0)
              {
LABEL_109:
                v53 = EffectPropertyHashCode & 1;
LABEL_110:
                if ((EffectPropertyHashCode & 0x2000) == 0)
                {
                  goto LABEL_117;
                }

                goto LABEL_111;
              }
            }

            else if ((EffectPropertyHashCode & 8) != 0)
            {
              v53 = (EffectPropertyHashCode >> 5) & 1;
              if ((EffectPropertyHashCode & 0x2000) == 0)
              {
                goto LABEL_117;
              }

              goto LABEL_111;
            }

            goto LABEL_107;
          case 6:
            if (EffectPropertyHashCode)
            {
              goto LABEL_110;
            }

            v54 = (EffectPropertyHashCode & 4) == 0;
            goto LABEL_99;
        }
      }

      else
      {
        if ((v48 - 10) < 2)
        {
          goto LABEL_110;
        }

        if (v48 == 13)
        {
          v53 = ((EffectPropertyHashCode & 3) != 2) & (BYTE5(v158) >> 3);
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        }

        if (v48 == 14)
        {
          v53 = EffectPropertyHashCode & ((BYTE5(v158) & 8) >> 3);
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        }
      }
    }

    if (EffectPropertyHashCode)
    {
      goto LABEL_107;
    }

    if ((EffectPropertyHashCode & 2) != 0)
    {
      goto LABEL_125;
    }

    v53 = !((v19 == 4) & C3DEffectCommonProfileGetEnableNormals(CommonProfile));
    if ((EffectPropertyHashCode & 0x2000) == 0)
    {
      goto LABEL_117;
    }

LABEL_111:
    if (v48 != 2 && v53)
    {
      Intensity = C3DEffectCommonProfileGetIntensity(CommonProfile, v48);
      if (Intensity == 0.0)
      {
        goto LABEL_125;
      }

      v56 = EffectPropertyHashCode & 0xFFFFF7FF | ((Intensity != 0.0) << 11);
      goto LABEL_122;
    }

LABEL_117:
    if (v53)
    {
      v57 = 2048;
    }

    else
    {
      v57 = 0;
    }

    if ((v53 & 1) == 0)
    {
      goto LABEL_125;
    }

    v56 = v57 | EffectPropertyHashCode & 0xFFFFF7FF;
LABEL_122:
    *(&v155 + v48 + 1) = v56;
    if (v56 >= 0x400000)
    {
      v58 = scn_default_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        C3DProgramHashCodeCreate_cold_2(buf, &v152, v58);
      }
    }

LABEL_126:
    ++v48;
  }

  while (v48 != 21);
  *c.count = MEMORY[0x277D85DD0];
  *c.hash = 3221225472;
  *&c.hash[2] = ____ComputeCustomSlotsUsage_block_invoke;
  *&c.hash[4] = &__block_descriptor_40_e25_v24__0____CFString__8_v16l;
  *&c.hash[6] = &v153;
  C3DEntityEnumerateKeyValuesWithBlockBySortingKeys(a6, &c);
  *c.count = MEMORY[0x277D85DD0];
  *c.hash = 3221225472;
  *&c.hash[2] = ____ComputeCustomSlotsUsage_block_invoke;
  *&c.hash[4] = &__block_descriptor_40_e25_v24__0____CFString__8_v16l;
  *&c.hash[6] = &v153;
  C3DEntityEnumerateKeyValuesWithBlockBySortingKeys(a2, &c);
  v59 = 0;
  v60 = v146;
  v61 = HIBYTE(v163[1]);
  do
  {
    if ((v60 >> v59))
    {
      if (v61)
      {
        v62 = v61;
        v63 = &v163[2];
        v64 = v61;
        while (1)
        {
          v65 = *v63;
          v63 += 2;
          if (v59 == v65)
          {
            break;
          }

          if (!--v64)
          {
            goto LABEL_135;
          }
        }
      }

      else
      {
        v62 = 0;
LABEL_135:
        v66 = &v163[v62 + 2];
        *v66 = v59;
        v66[1] = -1;
        HIBYTE(v163[1]) = ++v61;
      }
    }

    ++v59;
  }

  while (v59 != 16);
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 7, 0);
  v68 = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 14, 0);
  v69 = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 15, 0);
  if (EffectSlot)
  {
    if (C3DEffectSlotHasImageOrTexture(EffectSlot))
    {
      v70 = 16;
    }

    else
    {
      v70 = 0;
    }

    WORD4(v164) = WORD4(v164) & 0xFFEF | v70;
  }

  if (v69)
  {
    HasImageOrTexture = C3DEffectSlotHasImageOrTexture(v69);
    v72 = BYTE8(v164) & 0x10;
    if (HasImageOrTexture)
    {
      v72 = 16;
    }

    WORD4(v164) = v72 | WORD4(v164) & 0xFFEF;
  }

  if (v68)
  {
    v73 = C3DEffectSlotHasImageOrTexture(v68);
    v74 = BYTE8(v164) & 0x10;
    if (v73)
    {
      v74 = 16;
    }

    v75 = v74 | WORD4(v164) & 0xFFEF;
  }

  else
  {
    v75 = WORD4(v164);
  }

  WORD4(v164) = v75 | (4 * v135) & 0x10;
  if (v75 & 0x10 | (4 * v135) & 0x10)
  {
    v76 = C3DMeshGetSourcesCountForSemantic(a3, 3) > 0;
    WORD4(v164) = WORD4(v164) & 0xFFEF | (16 * v76);
  }

  EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a2);
  if (a3)
  {
    v78 = 8 * (C3DMeshGetSourceWithSemanticAtIndex(a3, 1, 0, EffectiveDataKindForRendering) != 0);
  }

  else
  {
    v78 = 0;
  }

  WORD4(v164) = WORD4(v164) & 0xFFF7 | v78;
  if (a1)
  {
    v79 = C3DGetScene(a1);
    if (v79)
    {
      if (C3DSceneGetFogEndDistance(v79) > 0.0)
      {
        WORD4(v164) |= 0x80u;
      }
    }
  }

  if (v136)
  {
    IsOpaque = C3DEffectCommonProfileIsOpaque(CommonProfile);
  }

  else
  {
    IsOpaque = 0;
  }

  if ((v135 & 2) != 0)
  {
    v82 = 0;
    BlendStatesUseConstantAlpha = 0;
  }

  else
  {
    HasNonOpaqueColorSources = a3;
    if (a3)
    {
      HasNonOpaqueColorSources = C3DMeshHasNonOpaqueColorSources(a3);
    }

    v82 = 0;
    BlendStatesUseConstantAlpha = 0;
    if (v19 != 6 && (HasNonOpaqueColorSources & 1) == 0)
    {
      BlendStatesUseConstantAlpha = C3DMaterialGetBlendStatesUseConstantAlpha(a6, IsOpaque);
      if (IsOpaque)
      {
        v82 = 4;
      }

      else
      {
        v82 = 0;
      }
    }
  }

  if (v19 == 5)
  {
    BlendStatesUseConstantAlpha = !((TransparencyMode != 1) & C3DPBROpacityIsEnabled()) & BlendStatesUseConstantAlpha;
  }

  v84 = C3DWasLinkedBeforeMajorOSYear2017();
  v85 = v142;
  if ((v84 & v142) == 1)
  {
    v85 = C3DMeshGetNormalSource(a3, 0) != 0;
  }

  if (BlendStatesUseConstantAlpha)
  {
    v86 = 2;
  }

  else
  {
    v86 = 0;
  }

  if (v85)
  {
    v87 = 32;
  }

  else
  {
    v87 = 0;
  }

  if (v143)
  {
    v88 = 64;
  }

  else
  {
    v88 = 0;
  }

  WORD4(v164) = v88 | v136 | v82 | v86 | v87 | WORD4(v164) & 0xFF98;
  LOBYTE(v89) = a5;
  if (!a5)
  {
    BYTE10(v164) &= 0xE7u;
LABEL_198:
    v94 = a2;
    goto LABEL_199;
  }

  BYTE10(v164) = (2 * *a5) & 0x18 | BYTE10(v164) & 0xE7;
  CategoryBitMask = C3DNodeGetCategoryBitMask(a1);
  v91 = *a5;
  v92 = (v91 >> 7);
  if (!(v91 >> 7))
  {
    LOBYTE(v89) = 0;
    goto LABEL_198;
  }

  v93 = 0;
  v89 = 0;
  v94 = a2;
  do
  {
    v95 = *&a5[8 * v93 + 40];
    v96 = v89 | (1 << v93);
    if ((v95 & CategoryBitMask) == 0)
    {
      v96 = v89;
    }

    if (v19 != 5)
    {
      v89 |= 1 << v93;
    }

    if (v95 != 0xDEFA017DEFA017)
    {
      v89 = v96;
    }

    ++v93;
  }

  while (v92 != v93);
LABEL_199:
  HIBYTE(v163[0]) = v89;
  v97 = (v131 << 11) | 0x400;
  if (v19 != 5)
  {
    v97 = 0;
  }

  WORD4(v164) = v97 | WORD4(v164) & 0xC3FF;
  IsDynamicBatchingEnabled = C3DGeometryIsDynamicBatchingEnabled(v94);
  if (v129)
  {
    v99 = 0;
  }

  else
  {
    v99 = IsDynamicBatchingEnabled;
  }

  if ((v99 & v136) != 0)
  {
    v100 = 256;
  }

  else
  {
    v100 = 0;
  }

  WORD4(v164) = v100 | WORD4(v164) & 0xFCFF;
  if (a4)
  {
    v101 = C3DMeshElementGetType(a4) == 3;
    WORD4(v164) = WORD4(v164) & 0xFDFF | (v101 << 9);
  }

  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v102 = 0;
  v103 = MEMORY[0x277D85DD0];
  v104 = 1;
  do
  {
    v105 = 0;
    v106 = v104;
    v107 = *(&v154 + v102);
    do
    {
      v148[0] = v103;
      v148[1] = 3221225472;
      v148[2] = ____createHashCode_block_invoke;
      v148[3] = &__block_descriptor_44_e13_v24__0q8r_v16l;
      v149 = v105;
      v148[4] = &c;
      C3DCFArrayApplyBlock(v107, v148);
      ++v105;
    }

    while (v105 != 4);
    v104 = 0;
    v102 = 1;
  }

  while ((v106 & 1) != 0);
  for (i = 216; i != 280; i += 8)
  {
    if (*(&v153 + i))
    {
      CFStringUpdateHash();
    }
  }

  CC_SHA256_Update(&c, &v155 + 4, 0xB4u);
  data = 2;
  CC_SHA256_Update(&c, &data, 4u);
  CC_SHA256_Final(md, &c);
  v109 = 0;
  v110 = cStr;
  v111.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v111.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v112.i64[0] = 0x3737373737373737;
  v112.i64[1] = 0x3737373737373737;
  v113.i64[0] = 0x3030303030303030;
  v113.i64[1] = 0x3030303030303030;
  v114.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v114.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v115.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v115.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v116 = *&md[v109];
    v117.i64[0] = 0x3737373737373737;
    v117.i64[1] = 0x3737373737373737;
    v118.i64[0] = 0x3030303030303030;
    v118.i64[1] = 0x3030303030303030;
    v173.val[0] = vbslq_s8(vcgtq_u8(v111, v116), vsraq_n_u8(v118, v116, 4uLL), vsraq_n_u8(v117, v116, 4uLL));
    v119 = vandq_s8(v116, v114);
    v173.val[1] = vbslq_s8(vcgtq_u8(v115, v119), vorrq_s8(v119, v113), vaddq_s8(v119, v112));
    vst2q_s8(v110, v173);
    v110 += 32;
    v109 += 16;
  }

  while (v109 != 32);
  v170 = 0;
  v120 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x600u);
  if (C3DProgramHashCodeCreate_once != -1)
  {
    C3DProgramHashCodeCreate_cold_3();
  }

  *c.count = 0;
  *c.hash = &c;
  *&c.hash[2] = 0x2020000000;
  *&c.hash[4] = 0;
  *cStr = 0;
  v167 = cStr;
  v168 = 0x2020000000;
  v169 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __C3DProgramHashCodeCreate_block_invoke_2;
  block[3] = &unk_278300438;
  block[4] = cStr;
  block[5] = &c;
  block[6] = v120;
  block[7] = &v153;
  block[8] = a1;
  block[9] = a2;
  block[10] = a3;
  block[11] = a5;
  block[12] = a6;
  dispatch_sync(s_ProgramHashCodeDictionaryQueue, block);
  CFRelease(v120);
  v121 = 0;
  v122 = 1;
  do
  {
    v123 = v122;
    v124 = *(&v154 + v121);
    if (v124)
    {
      CFRelease(v124);
      *(&v154 + v121) = 0;
    }

    v122 = 0;
    v121 = 1;
  }

  while ((v123 & 1) != 0);
  v125 = LOBYTE(v163[1]);
  if (LOBYTE(v163[1]))
  {
    v126 = 0;
    do
    {
      v127 = v165[v126 + 1];
      if (v127)
      {
        CFRelease(v127);
        v165[v126 + 1] = 0;
        v125 = LOBYTE(v163[1]);
      }

      ++v126;
    }

    while (v126 < v125);
  }

  v11 = *(*c.hash + 24);
  _Block_object_dispose(cStr, 8);
  _Block_object_dispose(&c, 8);
  return v11;
}

void sub_21C14295C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose((v43 - 224), 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t __C3DProgramHashCodeCreate_block_invoke()
{
  s_ProgramHashCodeDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  result = dispatch_queue_create("com.apple.scenekit.programHashCodeQueue", 0);
  s_ProgramHashCodeDictionaryQueue = result;
  return result;
}

void __C3DProgramHashCodeCreate_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(s_ProgramHashCodeDictionary, *(a1 + 48));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFRetain(v2);
  }

  else
  {
    if (C3DProgramHashCodeGetTypeID_onceToken != -1)
    {
      __C3DProgramHashCodeCreate_block_invoke_2_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = C3DTypeCreateInstance_(C3DProgramHashCodeGetTypeID_typeID, 280);
    memcpy((*(*(*(a1 + 40) + 8) + 24) + 16), (*(a1 + 56) + 16), 0x108uLL);
    v3 = *(a1 + 56);
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0u;
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 224) = 0u;
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
    *(v3 + 272) = 0;
    v4 = *(a1 + 48);
    v5 = *(*(*(*(a1 + 40) + 8) + 24) + 280);
    if (v5 != v4)
    {
      if (v5)
      {
        CFRelease(*(*(*(*(a1 + 40) + 8) + 24) + 280));
        *(*(*(*(a1 + 40) + 8) + 24) + 280) = 0;
        v4 = *(a1 + 48);
      }

      if (v4)
      {
        v4 = CFRetain(v4);
      }

      *(*(*(*(a1 + 40) + 8) + 24) + 280) = v4;
    }

    if (C3DStandardShadersUseFunctionConstants())
    {
      v6 = SCNCreateFuntionConstants(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88) + 4, (**(a1 + 88) >> 7), *(a1 + 88), *(a1 + 96));
      v7 = *(*(*(*(a1 + 40) + 8) + 24) + 288);
      if (v7 != v6)
      {
        if (v7)
        {
          CFRelease(v7);
          *(*(*(*(a1 + 40) + 8) + 24) + 288) = 0;
        }

        if (v6)
        {
          v8 = CFRetain(v6);
        }

        else
        {
          v8 = 0;
        }

        *(*(*(*(a1 + 40) + 8) + 24) + 288) = v8;
      }

      CFRelease(v6);
    }

    v9 = s_ProgramHashCodeDictionary;
    v10 = *(a1 + 48);
    v11 = *(*(*(a1 + 40) + 8) + 24);

    CFDictionarySetValue(v9, v10, v11);
  }
}

void C3DProgramHashCodeRelease(uint64_t a1)
{
  if (a1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __C3DProgramHashCodeRelease_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(s_ProgramHashCodeDictionaryQueue, block);
  }
}

uint64_t ____createShaderModifierHashCode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DShaderModifierGetEntryPoint(a3);
  if (result == *(a1 + 40))
  {
    v6 = *(a1 + 32);

    return C3DShaderModifierUpdateHashCode(a3, v6);
  }

  return result;
}

uint64_t ____createHashCode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DShaderModifierGetEntryPoint(a3);
  if (result == *(a1 + 40))
  {
    v6 = *(a1 + 32);

    return C3DShaderModifierUpdateHashCode(a3, v6);
  }

  return result;
}

const void *C3DResourceManagerRegistryGetResourceManagerForContext(const void *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  _C3DResourceManagerRegistryLock();
  v4 = CFDictionaryGetValue(_registry, a1);
  if (!v4)
  {
    context = a1;
    value = 0;
    CFDictionaryApplyFunction(_registry, __findSharedContext, &context);
    v4 = value;
    if (value)
    {
      CFDictionarySetValue(_registry, a1, value);
    }

    else if (a2)
    {
      v4 = C3DResourceManagerCreate();
      CFDictionarySetValue(_registry, a1, v4);
      CFRelease(v4);
    }

    else
    {
      v4 = 0;
    }
  }

  pthread_mutex_unlock(&_registryLock);
  return v4;
}

CFMutableBagRef _C3DResourceManagerRegistryLock()
{
  result = pthread_mutex_lock(&_registryLock);
  if (!_registry)
  {
    _registry = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    result = CFBagCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    _registryRetainCount = result;
  }

  return result;
}

BOOL __findSharedContext(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    result = C3DEAGLContextAreShared(result, *a3);
    if (result)
    {
      *(a3 + 8) = a2;
    }
  }

  return result;
}

uint64_t C3DResourceManagerRegistryRetainContext(const void *a1)
{
  _C3DResourceManagerRegistryLock();
  CFBagAddValue(_registryRetainCount, a1);

  return pthread_mutex_unlock(&_registryLock);
}

uint64_t C3DResourceManagerRegistryReleaseContext(uint64_t a1, const void *a2)
{
  _C3DResourceManagerRegistryLock();
  CFBagRemoveValue(_registryRetainCount, a2);
  v3 = MEMORY[0x21CF06000](_registryRetainCount, a2);
  if (v3 < 0)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerRegistryReleaseContext_cold_1(v4);
    }
  }

  else if (!v3)
  {
    CFDictionaryRemoveValue(_registry, a2);
  }

  return pthread_mutex_unlock(&_registryLock);
}

void SCNCActionSequence::SCNCActionSequence(SCNCActionSequence *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC7380;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 144) = 0;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 81) = a2->var11;
  *(v3 + 80) = a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 144) = 0;
  *(v3 + 32) = 1;
}

void SCNCActionSequence::~SCNCActionSequence(SCNCAction *this)
{
  SCNCActionSequence::~SCNCActionSequence(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC7380;
  var0 = this[1].var0;
  *&this[1].var1 = var0;
  if (var0)
  {
    operator delete(var0);
  }

  SCNCAction::~SCNCAction(this);
}

void SCNCActionSequence::setBaseSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setBaseSpeed(this, a2);
  var0 = this[1].var0;
  if (var0 != *&this[1].var1)
  {
    v4 = this->var16 * this->var17;
    do
    {
      v5 = *var0++;
      (*(*v5 + 40))(v5, v4);
    }

    while (var0 != *&this[1].var1);
  }
}

void SCNCActionSequence::setSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setSpeed(this, a2);
  var0 = this[1].var0;
  if (var0 != *&this[1].var1)
  {
    v4 = this->var16 * this->var17;
    do
    {
      v5 = *var0++;
      (*(*v5 + 40))(v5, v4);
    }

    while (var0 != *&this[1].var1);
  }
}

void SCNCActionSequence::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
LABEL_18:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];
  if (C3DIsRunningInEditor() && *&this[1].var4 > a3 && this[1].var3)
  {
    do
    {
      if (v8->var5 <= a3)
      {
        break;
      }

      (*(v8->var0 + 16))(v8, a2);
      v10 = this[1].var3 - 1;
      this[1].var3 = v10;
      v11 = this[1].var0;
      if (v10 >= (*&this[1].var1 - v11) >> 3)
      {
        goto LABEL_18;
      }

      v8 = v11[v10];
      *&v8->var10 = 0;
    }

    while (v10);
  }

  *&this[1].var4 = a3;
  while (1)
  {
    v12 = SCNCAction::cpp_timeByApplyingTimingfunction(this, a3, v9);
    SCNCAction::updateWithTargetForTime(v8, a2, v12);
    if (v8->var4)
    {
      if (!v8->var10)
      {
        return;
      }
    }

    else if (![v8->var3 finished])
    {
      return;
    }

    v13 = this[1].var3 + 1;
    this[1].var3 = v13;
    v14 = ((*&this[1].var1 - this[1].var0) >> 3) - 1;
    (*(v8->var0 + 2))(v8);
    if (v13 > v14)
    {
      break;
    }

    v16 = this[1].var3;
    v17 = this[1].var0;
    if (v16 >= (*&this[1].var1 - v17) >> 3)
    {
      goto LABEL_18;
    }

    v18 = fmin(v12, v15.n128_f64[0]);
    v8 = v17[v16];
    SCNCAction::wasAddedToTargetAtTime(v8, a2, v18);
    SCNCAction::willStartWithTargetAtTime(v8, a2, v18);
  }

  SCNCAction::didFinishWithTargetAtTime(this, a2, v15);
  this->var9 = (*(v8->var0 + 2))(v8);
  this[1].var3 = (((*&this[1].var1 - this[1].var0) >> 3) - 1);
}

uint64_t SCNCActionSequence::cpp_wasRemovedFromTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::wasRemovedFromTargetAtTime(v8, a2, a3);
}

uint64_t SCNCActionSequence::cpp_willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this[1].var3 = 0;
  var0 = this[1].var0;
  if (*&this[1].var1 == var0 || (SCNCAction::wasAddedToTargetAtTime(*var0, a2, a3), var3 = this[1].var3, v8 = this[1].var0, var3 >= (*&this[1].var1 - v8) >> 3))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v8[var3];

  return SCNCAction::willStartWithTargetAtTime(v9, a2, a3);
}

uint64_t SCNCActionSequence::cpp_wasPausedWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::wasPausedWithTargetAtTime(v8, a2, a3);
}

uint64_t SCNCActionSequence::cpp_willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::willResumeWithTargetAtTime(v8, a2, a3);
}

uint64_t SCNCActionSequence::cpp_timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_timeJumpWithTarget(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::timeJumpWithTarget(v8, a2, a3);
}

SCNCAction *SCNCActionSequence::cpp_reset(SCNCAction *this)
{
  result = SCNCAction::cpp_reset(this);
  *&this[1].var4 = 0;
  for (i = this[1].var0; i != *&this[1].var1; ++i)
  {
    v4 = *i;
    result = (*(*v4 + 120))(v4);
  }

  return result;
}

C3D::RenderPass *C3D::BoxBlurPass::BoxBlurPass(C3D::BoxBlurPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC7418;
  *(result + 30) = *&a4->var0;
  *(result + 20) = *&a4->var2;
  v6 = *&a4->var6 + *&a4->var4;
  if (v6 <= 1)
  {
    LOWORD(v6) = 1;
  }

  *(result + 21) = v6;
  return result;
}

void C3D::BoxBlurPass::setup(C3D::BoxBlurPass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

uint64_t C3D::BoxBlurPass::compile(C3D::BoxBlurPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  v3 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  [-[SCNMTLResourceManager libraryManager](v3) frameworkLibrary];
  v4 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ (*(this + 241) << 8) ^ *(this + 240) ^ 0x8D494F26B7A3D32ALL);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47));
  *(this + 31) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::BoxBlurPass::execute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v6 = v5;
  if (*(a2 + 18))
  {
    v6 = [v5 newTextureViewWithPixelFormat:objc_msgSend(v5 textureType:"pixelFormat") levels:objc_msgSend(v5 slices:"textureType"), *(a2 + 18), 1, 0, 1];
  }

  SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v6, 0);
  v7 = *(a1 + 248);
  if (*(a1 + 244) + *(a1 + 242) <= *(a2 + 18))
  {
    v8 = v7 + 16;
  }

  else
  {
    v8 = v7 + 24;
  }

  v9 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v8) :"state" detail:? :?NSRetainFct];
  if (*(v4 + 3376) != v9)
  {
    *(v4 + 3376) = v9;
    [*(v4 + 3392) setRenderPipelineState:v9];
  }

  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4);
}

void C3D::BoxBlurPass::Resource::~Resource(C3D::BoxBlurPass::Resource *this)
{
  *this = &unk_282DC7488;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC7488;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

id SCNUIKitSourceNotifyViewWasRemoved(id result)
{
  if (gCurrentSCNViewEvent == result)
  {
    return SCNUIKitSourceSetCurrentViewEvent(0);
  }

  return result;
}

void SCNCActionMove::SCNCActionMove(SCNCActionMove *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC74C8;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
}

void SCNCActionMove::~SCNCActionMove(SCNCActionMove *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

SCNCAction *SCNCActionMove::cpp_updateWithTargetForTime(SCNCActionMove *this, SCNNode *a2, double a3)
{
  v6 = SCNCAction::cpp_ratioForTime(this, a3, a2);
  *&v6 = v6;
  v17 = v6;
  result = [[(SCNNode *)a2 presentationNode] position];
  v10.n128_u32[1] = v9;
  v10.n128_u32[2] = LODWORD(v8);
  v11 = *&v17;
  if (BYTE1(this[1].var6) == 1)
  {
    v12 = v11 - this->var19;
    v15 = vmulq_n_f32(*&this[1].var2, v12);
    v16 = vaddq_f32(v10, v15);
    result = [(SCNNode *)a2 setPosition:?];
    v10 = vsubq_f32(*&this[1].var0, v15);
    *&this[1].var0 = v10;
  }

  else
  {
    v16 = v10;
    if ((LOBYTE(this[1].var6) & 1) == 0)
    {
      v16 = vmlaq_n_f32(vmulq_n_f32(*&this[1].var2, *&v17), *&this[1].var0, 1.0 - *&v17);
      result = [(SCNNode *)a2 setPosition:?];
    }
  }

  this->var19 = v11;
  HIDWORD(v13) = HIDWORD(v17);
  if ((COERCE_UNSIGNED_INT(*&v17 + -1.0) & 0x60000000) == 0)
  {
    if (BYTE1(this[1].var6) == 1)
    {
      v14 = vaddq_f32(v16, *&this[1].var0);
      LODWORD(v8) = v14.i32[2];
      [(SCNNode *)a2 setPosition:*v14.i64, COERCE_DOUBLE(__PAIR64__(v16.u32[1], v14.u32[1])), v8];
      v10.n128_u64[1] = 0;
      *&this[1].var0 = 0u;
    }

    else if ((LOBYTE(this[1].var6) & 1) == 0)
    {
      LODWORD(v13) = HIDWORD(this[1].var2);
      LODWORD(v8) = this[1].var3;
      [(SCNNode *)a2 setPosition:*&this[1].var2, v13, v8];
    }

    v10.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v10);
  }

  return result;
}

SCNCAction *SCNCActionMove::cpp_willStartWithTargetAtTime(SCNCActionMove *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var19 = 0.0;
  if (BYTE1(this[1].var6) == 1)
  {
    v6 = *&this[1].var2;
  }

  else
  {
    result = [[(SCNNode *)a2 presentationNode] position];
    DWORD1(v6) = v7;
    DWORD2(v6) = v8;
  }

  *&this[1].var0 = v6;
  return result;
}

void __C3DParticleModifierGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DParticleModifierGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DParticleModifierCreate()
{
  if (C3DParticleModifierGetTypeID_onceToken != -1)
  {
    C3DParticleModifierCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DParticleModifierGetTypeID_typeID, 72);
  *(result + 80) = 1;
  return result;
}

CFTypeRef C3DParticleModifierSetProperties(uint64_t a1, CFTypeRef cf)
{
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

void *C3DParticleModifierSetBlock(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 64) = result;
  return result;
}

void _C3DParticleModifierCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    _Block_release(v3);
  }
}

CFStringRef _C3DParticleModifierCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleModifierRef>");
}

CFStringRef _C3DParticleModifierCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleModifierRef>");
}

id SCNEnclosingURLForSceneDecoder(void *a1)
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 documentEnclosingURL];
  }

  else
  {
    result = objc_getAssociatedObject(a1, @"SCNSourceURLForCurrentlyUnarchivedScene");
    if (result)
    {

      return [result URLByDeletingLastPathComponent];
    }
  }

  return result;
}

void _C3DTransactionCFFinalize(void *a1)
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

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[10];
  if (v6)
  {

    _Block_release(v6);
  }
}

CFStringRef _C3DTransactionCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTransaction>");
}

CFStringRef _C3DTransactionCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTransaction>");
}

void C3DTransactionCheckUncommitted()
{
  Stack = C3DTransactionGetStack();
  Count = CFArrayGetCount(Stack[2]);
  v2 = Count;
  if (Count < 2)
  {
    if (Count == 1)
    {
      return;
    }
  }

  else
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      C3DTransactionCheckUncommitted_cold_1();
    }

    if (*(CFArrayGetValueAtIndex(Stack[2], v2 - 1) + 5) == 0.0)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        C3DTransactionCheckUncommitted_cold_2();
      }
    }
  }

  v5 = scn_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    C3DTransactionCheckUncommitted_cold_3(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

void C3DTransactionUpdateModelValueForKeypathIfNeeded(uint64_t a1, float32x4_t *a2, const __CFString *a3)
{
  if (a1)
  {
    if (!_canSafelySkipModelValueUpdate(a1, a2))
    {
      v6 = C3DCFTypeCopyModelInfoAtPath(a2, a3, 0);
      if (v6)
      {
        v7 = v6;
        if (v6->length)
        {
          _C3DTransactionUpdateModelValueForTarget(a1, v6);
        }

        CFRelease(v7);
      }
    }
  }
}

BOOL _canSafelySkipModelValueUpdate(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  result = 0;
  if (v4 == C3DNodeGetTypeID())
  {
    AnimationManager = C3DSceneGetAnimationManager(a1);
    if (!C3DAnimationManagerContainsAnimationForObject(AnimationManager, cf) && !C3DNodeHasConstraints(cf))
    {
      return 1;
    }
  }

  return result;
}

void _C3DTransactionUpdateModelValueForTarget(uint64_t a1, uint64_t a2)
{
  TargetAddress = C3DModelTargetGetTargetAddress(a2);
  ModelValueStorage = C3DSceneGetModelValueStorage(a1);
  if (C3DModelValueStorageGetModelValueIfAny(ModelValueStorage, a2))
  {
    v6 = C3DValueCreate(*(a2 + 32), 1);
    v7 = *(a2 + 16);
    Bytes = C3DValueGetBytes(v6);
    Length = C3DValueGetLength(v6);
    C3DGetValue(v7, TargetAddress, Bytes, Length, *(a2 + 34), *(a2 + 35));
    C3DModelValueStorageUpdateModelValueWithValue(ModelValueStorage, a2, v6);

    CFRelease(v6);
  }
}

void C3DTransactionUpdateModelValueForKeyAndSubscriptIndexIfNeeded(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4)
{
  if (a1)
  {
    if (!_canSafelySkipModelValueUpdate(a1, a2))
    {
      v8 = C3DCFTypeCopyModelInfoForKeyAndSubscriptIndex(a2, a3, a4, 0);
      if (v8)
      {
        v9 = v8;
        if (*(v8 + 24))
        {
          _C3DTransactionUpdateModelValueForTarget(a1, v8);
        }

        CFRelease(v9);
      }
    }
  }
}

void C3DTransactionUpdateModelValueForKeyAndSubscriptKeyIfNeeded(uint64_t a1, const void *a2, const __CFString *a3, void *a4)
{
  if (a1)
  {
    if (!_canSafelySkipModelValueUpdate(a1, a2))
    {
      v8 = C3DCFTypeCopyModelInfoForKeyAndSubscriptKey(a2, a3, a4, 0);
      if (v8)
      {
        v9 = v8;
        if (*(v8 + 24))
        {
          _C3DTransactionUpdateModelValueForTarget(a1, v8);
        }

        CFRelease(v9);
      }
    }
  }
}

void C3DTransactionUpdateModelValueForKeyIfNeeded(uint64_t a1, float32x4_t *a2, const __CFString *a3)
{
  if (!_canSafelySkipModelValueUpdate(a1, a2))
  {
    AddressForKey = C3DCFTypeGetAddressForKey(a2, a3);
    if (AddressForKey)
    {
      v7 = AddressForKey;
      ModelValueStorage = C3DSceneGetModelValueStorage(a1);
      if (C3DModelValueStorageGetModelValueForAddressIfAny(ModelValueStorage, v7))
      {

        C3DTransactionUpdateModelValueForKeypathIfNeeded(a1, a2, a3);
      }
    }
  }
}

void C3DTransactionCommit(char a1)
{
  Stack = C3DTransactionGetStack();
  v3 = *(Stack + 2);
  Count = CFArrayGetCount(v3);
  ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
  if (ValueAtIndex[5] == 0.0)
  {
    v7 = ValueAtIndex;
    v8 = CACurrentMediaTime();
    os_unfair_lock_lock(&gCommandQueueLock);
    *(v7 + 40) = v8;
    if (a1)
    {
      *(v7 + 60) |= 1u;
      C3DTransactionTestForDidComplete(v7);
    }

    else
    {
      v9 = C3DAllocatorNew(gCommandAllocator);
      *v9 = 0u;
      *(v9 + 1) = 0u;
      *(v9 + 2) = 0u;
      v10 = *(Stack + 5);
      if (!v10)
      {
        v10 = (Stack + 32);
      }

      *v10 = v9;
      *(Stack + 5) = v9;
      *(v9 + 4) = CFRetain(v7);
    }

    os_unfair_lock_unlock(&gCommandQueueLock);
    os_unfair_lock_lock(&gCommandQueueLock);
    v11 = C3DTransactionGetStack();
    v12 = CFArrayGetCount(v11[2]);
    if (v12 <= 1)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        C3DTransactionCommit_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        C3DTransactionCommit_cold_2();
      }
    }

    else
    {
      CFArrayRemoveValueAtIndex(v11[2], v12 - 1);
    }

    os_unfair_lock_unlock(&gCommandQueueLock);
    if (CFArrayGetCount(*(Stack + 2)) <= 1 && (a1 & 1) == 0)
    {
      C3DTransactionFlush();
    }
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      C3DTransactionCommit_cold_3();
    }
  }
}

void C3DTransactionTestForDidComplete(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 60) & 1) != 0 && !*(a1 + 56))
  {
    v10 = *(a1 + 64);
    if (!v10 || !CFArrayGetCount(v10))
    {
      CFRetain(a1);
      v11 = *(a1 + 72);
      if (v11)
      {
        CFRetain(*(a1 + 72));
        if (!v11[8])
        {
          v12 = scn_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            C3DTransactionTestForDidComplete_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
          }
        }

        v31.length = CFArrayGetCount(v11[8]);
        v31.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11[8], v31, a1);
        if (FirstIndexOfValue == -1)
        {
          v30 = scn_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            C3DTransactionTestForDidComplete_cold_4();
          }
        }

        else
        {
          v21 = FirstIndexOfValue;
          CFRetain(a1);
          CFArrayRemoveValueAtIndex(v11[8], v21);
          if (*(a1 + 72) != v11)
          {
            v22 = scn_default_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              C3DTransactionTestForDidComplete_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
            }
          }

          CFRelease(*(a1 + 72));
          *(a1 + 72) = 0;
          CFRelease(a1);
        }

        C3DTransactionDidComplete(a1);
        if (!CFArrayGetCount(v11[8]))
        {
          C3DTransactionTestForDidComplete(v11);
        }

        CFRelease(v11);
      }

      else
      {
        C3DTransactionDidComplete(a1);
      }

      CFRelease(a1);
    }
  }
}

void *C3DTransactionLock()
{
  result = C3DTransactionGetStack();
  v1 = result;
  v2 = *(result + 12);
  if (!v2)
  {
    result = pthread_rwlock_rdlock(&gCommandQueueFlushLock);
    v2 = v1[12];
  }

  v1[12] = v2 + 1;
  return result;
}

uint64_t C3DTransactionUnlock()
{
  result = C3DTransactionGetStack();
  v1 = *(result + 48) - 1;
  *(result + 48) = v1;
  if (!v1)
  {
    v2 = result;
    result = pthread_rwlock_unlock(&gCommandQueueFlushLock);
    if ((*(v2 + 52) & 2) != 0)
    {
      *(v2 + 52) &= ~2u;

      return C3DTransactionFlush();
    }
  }

  return result;
}

void C3DTransactionSetValue(const void *a1, const void *a2)
{
  Current = C3DTransactionGetCurrent();
  Mutable = *(Current + 2);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(Current + 2) = Mutable;
  }

  if (a2)
  {

    CFDictionarySetValue(Mutable, a1, a2);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, a1);
  }
}

const __CFDictionary *C3DTransactionGetValue(const void *a1)
{
  result = *(C3DTransactionGetCurrent() + 2);
  if (result)
  {

    return CFDictionaryGetValue(result, a1);
  }

  return result;
}

void *C3DTransactionSetCompletionBlock(const void *a1)
{
  Current = C3DTransactionGetCurrent();
  v3 = Current[10];
  if (v3)
  {
    _Block_release(v3);
  }

  result = _Block_copy(a1);
  Current[10] = result;
  return result;
}

_BYTE *C3DTransactionSetDisableActions(int a1)
{
  result = C3DTransactionGetCurrent();
  if (a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  result[60] = result[60] & 0xFB | v3;
  return result;
}

CFTypeRef C3DTransactionSetTimingFunction(CFTypeRef a1)
{
  Current = C3DTransactionGetCurrent();
  result = Current[3];
  if (result != a1)
  {
    if (result)
    {
      CFRelease(result);
      Current[3] = 0;
    }

    if (a1)
    {
      result = CFRetain(a1);
    }

    else
    {
      result = 0;
    }

    Current[3] = result;
  }

  return result;
}

double *C3DTransactionSetDuration(double a1)
{
  result = C3DTransactionGetCurrent();
  result[4] = a1;
  return result;
}

void C3DTransactionSetImmediateMode(int a1)
{
  Current = C3DTransactionGetCurrent();
  if (a1)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  Current[60] = Current[60] & 0xF7 | v3;
  if (a1)
  {
    gAtomicTime = CACurrentMediaTime();
  }
}

void *C3DTransactionSetImmediateModeRestrictedContext(uint64_t a1)
{
  result = C3DTransactionGetCurrent();
  result[6] = a1;
  return result;
}

void *C3DTransactionAddAnimationNode(void *result)
{
  v1 = gCurrentlyCommittedTransaction;
  if (gCurrentlyCommittedTransaction)
  {
    v2 = result;
    C3DAnimationNodeSetCompletionItem(result, gCurrentlyCommittedTransaction);
    result = C3DAnimationNodeGetCompletionCallbacks(v2);
    *result = C3DTransactionAnimationDidComplete;
    result[1] = C3DTransactionAnimationDidInterrupt;
    ++*(v1 + 56);
  }

  return result;
}

void C3DTransactionAnimationDidComplete(uint64_t a1)
{
  CompletionItem = C3DAnimationNodeGetCompletionItem(a1);
  if (!CompletionItem)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  os_unfair_lock_lock(&gCommandQueueLock);
  if (!*(CompletionItem + 56))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DTransactionAnimationDidComplete_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(CompletionItem + 56) - 1;
  *(CompletionItem + 56) = v19;
  if (!v19)
  {
    C3DTransactionTestForDidComplete(CompletionItem);
  }

  C3DAnimationNodeSetCompletionItem(a1, 0);
  CompletionCallbacks = C3DAnimationNodeGetCompletionCallbacks(a1);
  *CompletionCallbacks = 0;
  CompletionCallbacks[1] = 0;
  os_unfair_lock_unlock(&gCommandQueueLock);
}

void C3DTransactionAnimationDidInterrupt(uint64_t a1)
{
  CompletionItem = C3DAnimationNodeGetCompletionItem(a1);
  if (!CompletionItem)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  os_unfair_lock_lock(&gCommandQueueLock);
  if (!*(CompletionItem + 56))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DTransactionAnimationDidInterrupt_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(CompletionItem + 56) - 1;
  *(CompletionItem + 56) = v19;
  if (!v19)
  {
    C3DTransactionTestForDidComplete(CompletionItem);
  }

  C3DAnimationNodeSetCompletionItem(a1, 0);
  CompletionCallbacks = C3DAnimationNodeGetCompletionCallbacks(a1);
  *CompletionCallbacks = 0;
  CompletionCallbacks[1] = 0;
  os_unfair_lock_unlock(&gCommandQueueLock);
}

void C3DTransactionGetCurrentlyCommittedTimingFunction()
{
  if (gCurrentlyCommittedTransaction)
  {
    if (!*(gCurrentlyCommittedTransaction + 24))
    {
      C3DTimingFunctionGetDefaultFunction();
    }
  }
}

double C3DTransactionGetCurrentlyCommittedDuration()
{
  result = 0.0;
  if (gCurrentlyCommittedTransaction)
  {
    if ((*(gCurrentlyCommittedTransaction + 60) & 4) == 0)
    {
      return *(gCurrentlyCommittedTransaction + 32);
    }
  }

  return result;
}

void C3DTransactionThreadDied(void *a1)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      C3DTransactionFlush();
    }

    os_unfair_lock_lock(&gCommandQueueLock);
    v2 = *(a1 + 1);
    if (*a1)
    {
      v3 = (*a1 + 8);
    }

    else
    {
      v3 = &gTransactionStacks;
    }

    *v3 = v2;
    if (v2)
    {
      *v2 = *a1;
    }

    os_unfair_lock_unlock(&gCommandQueueLock);
    v4 = *(a1 + 3);
    if (v4)
    {
      CFRunLoopObserverInvalidate(v4);
      CFRelease(*(a1 + 3));
    }

    CFRelease(*(a1 + 2));
  }

  free(a1);
}

dispatch_queue_t ___commitImplicitTransaction_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  result = dispatch_queue_create("com.apple.scenekit.main-thread-implicit-transaction-flush", v1);
  _commitImplicitTransaction_queue = result;
  return result;
}

void C3DTransactionDidComplete(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

__CFString *SCNGeometrySemanticForMeshSourceSemantic(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_2783006F8[a1];
  }
}

uint64_t SCNGeometrySourceSemanticToMeshSourceSemantic(void *a1)
{
  if ([a1 isEqualToString:@"kGeometrySourceSemanticVertex"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticNormal"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticColor"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticTexcoord"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticTangent"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticVertexCrease"])
  {
    return 7;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticEdgeCrease"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticBoneIndices"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"kGeometrySourceSemanticBoneWeights"])
  {
    return 6;
  }

  return 0;
}

uint64_t SCNGeometrySourceSemanticIsValid(void *a1)
{
  if ([a1 isEqualToString:@"kGeometrySourceSemanticVertex"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"kGeometrySourceSemanticNormal") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"kGeometrySourceSemanticColor") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"kGeometrySourceSemanticTexcoord") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"kGeometrySourceSemanticTangent") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"kGeometrySourceSemanticVertexCrease") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"kGeometrySourceSemanticEdgeCrease") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"kGeometrySourceSemanticBoneIndices"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"kGeometrySourceSemanticBoneWeights"];
}

void __C3DMeshElementSetPrimitiveRanges(uint64_t a1, void *a2)
{
  v4 = [a2 count];
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_malloc(16 * v4, 0x1000040451B5BE8uLL);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ____C3DMeshElementSetPrimitiveRanges_block_invoke;
    v7[3] = &__block_descriptor_40_e24_v32__0__NSValue_8Q16_B24l;
    v7[4] = v6;
    [a2 enumerateObjectsUsingBlock:v7];
  }

  else
  {
    v6 = 0;
  }

  C3DMeshElementSetPrimitiveRangesNoCopy(a1, v6, v5);
}

void CPP3DAudioContext::~CPP3DAudioContext(id *this)
{
  [this[2] reset];
  [objc_msgSend(this[2] "engine")];
  [objc_msgSend(this[2] "engine")];
  [objc_msgSend(this[2] "engine")];

  v2 = this[4];
  if (v2 != (this + 5))
  {
    do
    {
      v3 = *(v2 + 4);
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (this + 5));
  }

  std::__tree<char>::destroy((this + 4), this[5]);
}

void *CPP3DAudioContext::Init(void *this)
{
  if (!this[2])
  {
    v1 = this;
    [*(*this + 8) lock];
    v2 = *v1;
    if (v1[2])
    {
      v3 = *(v2 + 8);

      return [v3 unlock];
    }

    else
    {
      AVEngine = CPP3DAudioEngine::GetAVEngine(v2);
      if ([AVEngine mainMixerNode])
      {
        v5 = objc_alloc_init(MEMORY[0x277CB8390]);
        v1[2] = v5;
        [AVEngine attachNode:v5];
        v6 = [objc_alloc(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:2 channels:44100.0];
        [AVEngine connect:v1[2] to:objc_msgSend(AVEngine format:{"mainMixerNode"), v6}];
      }

      else
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          CPP3DAudioContext::Init(v7);
        }
      }

      return [*(*v1 + 8) unlock];
    }
  }

  return this;
}

id CPP3DAudioEngine::GetAVEngine(id *this)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN16CPP3DAudioEngine11GetAVEngineEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  if (CPP3DAudioEngine::GetAVEngine(void)::onceToken != -1)
  {
    dispatch_once(&CPP3DAudioEngine::GetAVEngine(void)::onceToken, block);
  }

  [this[1] lock];
  if (([*this isRunning] & 1) == 0)
  {
    v4 = 0;
    if (([*this startAndReturnError:&v4] & 1) == 0)
    {
      v2 = scn_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        CPP3DAudioEngine::GetAVEngine(&v4, v2);
      }

      *this = 0;
    }
  }

  [this[1] unlock];
  return *this;
}

uint64_t CPP3DAudioContext::AddVoice(id **this, void *a2)
{
  CPP3DAudioContext::Init(this);
  v4 = [a2 audioPlayer];
  if (([a2 customAudioNode] & 1) == 0)
  {
    AVEngine = CPP3DAudioEngine::GetAVEngine(*this);
    if ([v4 engine] != AVEngine)
    {
      [objc_msgSend(v4 "engine")];
      [AVEngine attachNode:v4];
    }

    [AVEngine connect:v4 to:this[2] format:{objc_msgSend(a2, "audioBufferFormat")}];
    if (v4)
    {
      [a2 play];
    }
  }

  v6 = [a2 nodeRef];
  v8 = v6;
  [(*this)[1] lock];
  if (v6)
  {
    CFRetain(v6);
  }

  std::__tree<__C3DNode *>::__emplace_unique_key_args<__C3DNode *,__C3DNode * const&>((this + 4), &v8);
  return [(*this)[1] unlock];
}

uint64_t CPP3DAudioContext::RemoveVoice(CPP3DAudioContext *this, void *a2)
{
  cf = [a2 nodeRef];
  result = [CPP3DAudioEngine::GetAVEngine(*this) detachNode:{objc_msgSend(a2, "audioNode")}];
  if (cf)
  {
    [*(*this + 8) lock];
    std::__tree<__C3DNode *>::__erase_unique<__C3DNode *>(this + 4, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    return [*(*this + 8) unlock];
  }

  return result;
}

uint64_t CPP3DAudioContext::UpdateVoices(uint64_t this)
{
  if (*(this + 16))
  {
    v1 = this;
    v17.n128_u32[2] = 0;
    v17.n128_u64[0] = 0;
    PointOfViewForCulling = *(this + 24);
    if (PointOfViewForCulling || (PointOfViewForCulling = C3DEngineContextGetPointOfViewForCulling(v1[1])) != 0)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(PointOfViewForCulling);
      C3DMatrix4x4GetTranslation(WorldMatrix, &v17);
      v4 = v1[2];
      LODWORD(v6) = v17.n128_u32[2];
      LODWORD(v5) = v17.n128_u32[1];
      [v4 setListenerPosition:{v17.n128_f64[0], v5, v6}];
      v7 = WorldMatrix[1];
      v8 = -COERCE_FLOAT(WorldMatrix[2].i64[1]);
      v13 = vneg_f32(*WorldMatrix[2].f32);
      v14 = v8;
      v15 = v7.i64[0];
      v16 = v7.i32[2];
      [v4 setListenerVectorOrientation:&v13];
    }

    [*(*v1 + 8) lock];
    v9 = v1[4];
    if (v9 != v1 + 5)
    {
      do
      {
        if (v9[4])
        {
          C3DNodeUpdateAudioPlayers();
        }

        v10 = v9[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v9[2];
            v12 = *v11 == v9;
            v9 = v11;
          }

          while (!v12);
        }

        v9 = v11;
      }

      while (v11 != v1 + 5);
    }

    return [*(*v1 + 8) unlock];
  }

  return this;
}

void CPP3DAudioEngine::CPP3DAudioEngine(CPP3DAudioEngine *this)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 1) = objc_alloc_init(MEMORY[0x277CCAC60]);
}

void sub_21C14BA1C(_Unwind_Exception *a1)
{
  std::__tree<char>::destroy(v2, *v4);
  std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(v1, *v3);
  _Unwind_Resume(a1);
}

unint64_t CPP3DAudioEngine::GetContext(id *this, __C3DEngineContext *a2)
{
  Scene = C3DEngineContextGetScene(a2);
  if (Scene)
  {
    [this[1] lock];
    v5 = this[3];
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = this + 3;
    do
    {
      v7 = v5[4];
      v8 = v7 >= Scene;
      v9 = v7 < Scene;
      if (v8)
      {
        v6 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v6 == this + 3)
    {
      goto LABEL_18;
    }

    if (Scene < v6[4])
    {
      goto LABEL_18;
    }

    v12 = v6[6];
    v10 = v6 + 6;
    v11 = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = v10;
    do
    {
      v14 = v11[4];
      v8 = v14 >= a2;
      v15 = v14 < a2;
      if (v8)
      {
        v13 = v11;
      }

      v11 = v11[v15];
    }

    while (v11);
    if (v13 == v10 || v13[4] > a2)
    {
LABEL_18:
      operator new();
    }

    Scene = v13[5];
    [this[1] unlock];
  }

  return Scene;
}

uint64_t CPP3DAudioEngine::RemoveContext(CPP3DAudioEngine *this, __C3DEngineContext *a2)
{
  Scene = C3DEngineContextGetScene(a2);
  [*(this + 1) lock];
  if (Scene)
  {
    v5 = *(this + 3);
    if (v5)
    {
      v6 = this + 24;
      do
      {
        v7 = *(v5 + 4);
        v8 = v7 >= Scene;
        v9 = v7 < Scene;
        if (v8)
        {
          v6 = v5;
        }

        v5 = *&v5[8 * v9];
      }

      while (v5);
      if (v6 != this + 24 && Scene >= *(v6 + 4))
      {
        v10 = *(v6 + 6);
        if (v10)
        {
          v11 = (v6 + 48);
          do
          {
            v12 = *(v10 + 32);
            v8 = v12 >= a2;
            v13 = v12 < a2;
            if (v8)
            {
              v11 = v10;
            }

            v10 = *(v10 + 8 * v13);
          }

          while (v10);
          if (v11 != (v6 + 48) && v11[4] <= a2)
          {
            v14 = v11[5];
            if (v14)
            {
              CPP3DAudioContext::~CPP3DAudioContext(v14);
              MEMORY[0x21CF07610]();
            }

            std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(v6 + 5, v11);
            operator delete(v11);
          }
        }

        if (!*(v6 + 7))
        {
          std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::erase(this + 2, v6);
        }
      }
    }
  }

  else
  {
    v15 = *(this + 2);
    if (v15 != (this + 24))
    {
      do
      {
        v16 = *(v15 + 48);
        if (v16)
        {
          v17 = (v15 + 48);
          do
          {
            v18 = *(v16 + 32);
            v8 = v18 >= a2;
            v19 = v18 < a2;
            if (v8)
            {
              v17 = v16;
            }

            v16 = *(v16 + 8 * v19);
          }

          while (v16);
          if (v17 != (v15 + 48) && v17[4] <= a2)
          {
            v20 = v17[5];
            if (v20)
            {
              CPP3DAudioContext::~CPP3DAudioContext(v20);
              MEMORY[0x21CF07610]();
            }

            std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer((v15 + 40), v17);
            operator delete(v17);
          }
        }

        if (*(v15 + 56))
        {
          v21 = *(v15 + 8);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = *(v15 + 16);
              v23 = *v22 == v15;
              v15 = v22;
            }

            while (!v23);
          }
        }

        else
        {
          v22 = std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::erase(this + 2, v15);
        }

        v15 = v22;
      }

      while (v22 != (this + 24));
    }
  }

  v24 = *(this + 1);

  return [v24 unlock];
}

void ___ZN16CPP3DAudioEngine11GetAVEngineEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = objc_alloc_init(MEMORY[0x277CB8388]);
  v2 = objc_alloc_init(MEMORY[0x277CB83E0]);
  [*v1 attachNode:v2];
  [*v1 connect:v2 to:objc_msgSend(*v1 format:{"mainMixerNode"), 0}];
}

uint64_t CPP3DAudioEngine::AddVoice(id *this, void *a2)
{
  [a2 audioPlayer];
  result = [a2 customAudioNode];
  if ((result & 1) == 0)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      [this[1] lock];
      v11[0] = [a2 scene];
      v11[2] = v11;
      v5 = std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::__emplace_unique_key_args<__C3DScene *,std::piecewise_construct_t const&,std::tuple<__C3DScene * const&>,std::tuple<>>((this + 2), v11);
      v6 = v5[5];
      v7 = v5 + 6;
      if (v6 != v5 + 6)
      {
        do
        {
          CPP3DAudioContext::AddVoice(v6[5], a2);
          v8 = v6[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
        }

        while (v9 != v7);
      }

      return [this[1] unlock];
    }
  }

  return result;
}

uint64_t CPP3DAudioEngine::RemoveVoice(id *this, void *a2)
{
  result = [a2 customAudioNode];
  if ((result & 1) == 0)
  {
    [this[1] lock];
    v11[0] = [a2 scene];
    v11[2] = v11;
    v5 = std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::__emplace_unique_key_args<__C3DScene *,std::piecewise_construct_t const&,std::tuple<__C3DScene * const&>,std::tuple<>>((this + 2), v11);
    v6 = v5[5];
    v7 = v5 + 6;
    if (v6 != v5 + 6)
    {
      do
      {
        CPP3DAudioContext::RemoveVoice(v6[5], a2);
        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
    }

    return [this[1] unlock];
  }

  return result;
}

uint64_t C3DAudioPlayerSetTransform(void *a1, __n128 *a2)
{
  v6.n128_u32[2] = 0;
  v6.n128_u64[0] = 0;
  v2 = [a1 audioNode];
  result = [v2 conformsToProtocol:&unk_282E58078];
  if (result)
  {
    LODWORD(v5) = v6.n128_u32[2];
    LODWORD(v4) = v6.n128_u32[1];
    return [v2 setPosition:{v6.n128_f64[0], v4, v5}];
  }

  return result;
}

uint64_t C3DAudioPlayerPlay(void *a1)
{
  [a1 audioPlayer];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = [a1 audioPlayer];
    result = [v3 engine];
    if (result)
    {
      return [v3 play];
    }
  }

  return result;
}

uint64_t C3DAudioManagerAddVoice(void *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::AddVoice(v2, a1);
}

uint64_t C3DAudioManagerRemoveVoice(void *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::RemoveVoice(v2, a1);
}

unint64_t C3DAudioManagerSetListener(__C3DEngineContext *a1, uint64_t a2)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  result = CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1);
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t C3DAudioManagerGetListener(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  return *(CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1) + 24);
}

unint64_t C3DAudioManagerUpdateNodes(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  result = CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1);
  if (result)
  {

    return CPP3DAudioContext::UpdateVoices(result);
  }

  return result;
}

void *C3DAudioManagerGetAudioEnvironmentNode(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  result = CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1);
  if (result)
  {
    v3 = result;
    CPP3DAudioContext::Init(result);
    return v3[2];
  }

  return result;
}

unint64_t C3DAudioManagerUpdateEngineContext(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::GetContext(v2, a1);
}

uint64_t C3DAudioManagerRemoveEngineContext(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::RemoveContext(v2, a1);
}

void *std::__tree<__C3DNode *>::__emplace_unique_key_args<__C3DNode *,__C3DNode * const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<__C3DNode *>::__erase_unique<__C3DNode *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(a1, a2[1]);
    std::__tree<char>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::__emplace_unique_key_args<__C3DScene *,std::piecewise_construct_t const&,std::tuple<__C3DScene * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(a1, a2);
  std::__tree<char>::destroy(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t C3D::getBlueNoise32(int a1, int a2, C3D::RenderGraphResourceManager *this)
{
  v3 = C3D::RenderGraphResourceManager::get(this, 0xD877AC05CAC46D3ELL);
  if (!v3)
  {
    operator new();
  }

  return C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v3 + 16);
}

uint64_t SCNMTLBlitCommandEncoder::copyBufferToTexture(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  [a4 pixelFormat];
  v12 = SCNMTLPixelFormatGetBitSize() >> 3;
  v13 = [a4 width] * v12;
  v14 = [a4 height] * v13;
  v15 = [a4 width];
  v16 = [a4 height];
  v17 = [a4 depth];
  memset(v20, 0, sizeof(v20));
  v21[0] = v15;
  v18 = *a1;
  v21[1] = v16;
  v21[2] = v17;
  return [v18 copyFromBuffer:a2 sourceOffset:a3 sourceBytesPerRow:v13 sourceBytesPerImage:v14 sourceSize:v21 toTexture:a4 destinationSlice:a5 destinationLevel:a6 destinationOrigin:v20];
}

uint64_t C3D::getGrainNoise256(int a1, int a2, C3D::RenderGraphResourceManager *this)
{
  v3 = C3D::RenderGraphResourceManager::get(this, 0x2D6F9F4D8FCEC7B4);
  if (!v3)
  {
    operator new();
  }

  return C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v3 + 16);
}

void C3D::SingleTextureResource::~SingleTextureResource(C3D::SingleTextureResource *this)
{
  *this = &unk_282DC7620;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC7620;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void C3DAuthoringEnvironmentAppendWireframeMesh(void *a1, __C3DMesh *a2, C3DColor4 *a3, uint64_t a4)
{
  v8 = a1[1];
  RendererContextGL = C3DEngineContextGetRendererContextGL(v8);
  v10 = a1[8];
  if (RendererContextGL)
  {
    if (v10)
    {
      goto LABEL_7;
    }

    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-wireframe");
  }

  else
  {
    if (v10)
    {
      goto LABEL_7;
    }

    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorWireframe_vert", @"ManipulatorWireframe_frag");
  }

  a1[8] = BuiltInProgramWithName;
LABEL_7:
  v23 = 0uLL;
  if (a3)
  {
    v23 = *a3;
  }

  else
  {
    C3DColor4Make(&v23, 1.0, 1.0, 1.0, 1.0);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (a4)
  {
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    Matrix4x4 = C3DEngineContextGetMatrix4x4(v8, 1);
    v13 = C3DEngineContextGetMatrix4x4(v8, 0);
    C3DMatrix4x4Mult(Matrix4x4, v13, &v15);
    C3DMatrix4x4Mult(a4, &v15, &v19);
  }

  else
  {
    C3DMatrix4x4MakeIdentity(&v19);
  }

  v14 = a1[8226];
  v15 = v19;
  v16 = v20;
  v17 = v21;
  v18 = v22;
  C3DWireframeAddInstance(v14, a2, v23, &v15);
}

uint64_t C3DAuthoringEnvironmentCreate(uint64_t a1)
{
  v2 = [SCNAuthoringEnvironment alloc];

  return [(SCNAuthoringEnvironment *)v2 _initWithEngineContext:a1];
}

uint64_t C3DAuthoringEnvironmentCopySettings(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 0x10000);
  v3 = a1 + 0x10000;
  *(a2 + 65712) = *(a2 + 65712) & 0xFE | *(a1 + 65712) & 1;
  *(a2 + 65800) = [*(a1 + 65800) mutableCopyWithZone:0];
  v2[21] = *(v3 + 168);
  v2[30] = [*(v3 + 240) copy];
  result = [*(v3 + 232) mutableCopy];
  v2[29] = result;
  return result;
}

uint64_t C3DAuthoringEnvironmentRegisterProcessedJoint(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1632);
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    *(a1 + 1632) = v4;
  }

  return [v4 addObject:a2];
}

uint64_t C3DAuthoringEnvironmentGetDisplayMask(void *a1)
{
  objc_sync_enter(a1);
  v2 = [a1 authoringDisplayMask];
  objc_sync_exit(a1);
  return v2;
}

void __appendVerticesAndIndices(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4, unsigned int a5, uint64_t a6, int a7)
{
  if (*(a6 + 12) + a3 <= *(a6 + 20) && *(a6 + 8) + a5 <= *(a6 + 24))
  {
    goto LABEL_6;
  }

  if (a7)
  {
    if (*(a6 + 8))
    {
      __flush(a1, a6);
    }

LABEL_6:
    if (*(a6 + 56))
    {
LABEL_76:
      v70 = *(a6 + 72);
      v71 = *(a6 + 96);
      v73 = *(a6 + 12);
      v72 = *(a6 + 16);
      v74 = v70 * v73;
      if (v72 == 12)
      {
        if (a3)
        {
          v86 = a3;
          v87 = (a2 + 8);
          v88 = (v74 + v71 + 8);
          do
          {
            *(v88 - 2) = *(v87 - 2);
            *(v88 - 1) = *(v87 - 1);
            v89 = *v87;
            v87 += 3;
            *v88 = v89;
            v88 = (v88 + v70);
            --v86;
          }

          while (v86);
        }
      }

      else
      {
        v75 = *(a6 + 80);
        v76 = (*(a6 + 104) + v75 * v73);
        if (v72 == 16)
        {
          if (a3)
          {
            v83 = a3;
            v84 = (a2 + 8);
            v85 = (v74 + v71 + 8);
            do
            {
              *(v85 - 2) = *(v84 - 2);
              *(v85 - 1) = *(v84 - 1);
              *v85 = *v84;
              *v76 = v84[1];
              v84 += 4;
              v85 = (v85 + v70);
              v76 = (v76 + v75);
              --v83;
            }

            while (v83);
          }
        }

        else if (v72 == 20 && a3)
        {
          v77 = *(a6 + 88);
          v78 = v77 * v73;
          v79 = a3;
          v80 = (v74 + v71 + 4);
          v81 = (a2 + 8);
          v82 = (v78 + *(a6 + 112) + 4);
          do
          {
            *(v80 - 1) = *(v81 - 2);
            *v80 = *(v81 - 1);
            *v76 = v81[2];
            *(v82 - 1) = *v81;
            v80 = (v80 + v70);
            *v82 = v81[1];
            v76 = (v76 + v75);
            v81 += 5;
            v82 = (v82 + v77);
            --v79;
          }

          while (v79);
        }
      }

      VolatileDataPtr = C3DMeshElementGetVolatileDataPtr(*(a6 + 64));
      v91 = *(a6 + 8);
      if (VolatileDataPtr)
      {
        v92 = *(a6 + 12);
        if (a5)
        {
          v93 = (VolatileDataPtr + 2 * v91);
          v94 = a5;
          do
          {
            v95 = *a4++;
            *v93++ = v95 + v92;
            --v94;
          }

          while (v94);
        }
      }

      else
      {
        v92 = *(a6 + 12);
      }

      *(a6 + 8) = v91 + a5;
      *(a6 + 12) = v92 + a3;
      return;
    }

    if (*(a6 + 53) != 1)
    {
      goto LABEL_73;
    }

    v13 = *(a1 + 8);
    RenderContext = C3DEngineContextGetRenderContext(v13);
    if ([*(a6 + 128) count])
    {
      Volatile = [*(a6 + 128) anyObject];
      [*(a6 + 120) addObject:Volatile];
      [*(a6 + 128) removeObject:Volatile];
    }

    else
    {
      Volatile = C3DMeshCreateVolatile();
      [*(a6 + 120) addObject:Volatile];
      CFRelease(Volatile);
      v18 = a1 + 88 == a6 || a1 + 240 == a6 || a1 + 1152 == a6;
      v19 = 1;
      if (a1 + 392 != a6 && a1 + 544 != a6 && a1 + 848 != a6)
      {
        v19 = a1 + 696 == a6 || a1 + 1000 == a6;
      }

      v96 = v18;
      if (v18)
      {
        v21 = 2;
      }

      else
      {
        v21 = 3;
      }

      v22 = C3DMeshSourceCreateVolatile(0, v21, 1u);
      C3DMeshAddSource(Volatile, v22, 0, 0);
      if (v22)
      {
        CFRelease(v22);
      }

      v23 = v96;
      if (v19 || v96 || a1 + 1304 == a6)
      {
        v24 = C3DMeshSourceCreateVolatile(2, 4, 0x15u);
        C3DMeshAddSource(Volatile, v24, 0, 0);
        v23 = v96;
        if (v24)
        {
          CFRelease(v24);
          v23 = v96;
        }
      }

      if (v23)
      {
        v25 = C3DMeshSourceCreateVolatile(3, 2, 1u);
        C3DMeshAddSource(Volatile, v25, 0, 0);
        if (v25)
        {
          CFRelease(v25);
        }
      }

      *(a6 + 20) = 0x200000002000;
    }

    RendererContextGL = C3DEngineContextGetRendererContextGL(v13);
    if (RendererContextGL)
    {
      if (C3DMeshIsVolatile(Volatile))
      {
        ResourceManager = C3DEngineContextGetResourceManager(*(a1 + 8));
        if (!C3DRendererContextMapVolatileMesh(RendererContextGL, ResourceManager, Volatile, 0x2000, 1))
        {
LABEL_73:
          if (!*(a6 + 56))
          {
            v62 = scn_default_log();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
            {
              __appendVerticesAndIndices_cold_5(v62, v63, v64, v65, v66, v67, v68, v69);
            }
          }

          goto LABEL_76;
        }
      }
    }

    if (*(a6 + 48) == 1)
    {
      v28 = 2;
      v29 = 4096;
      if (!RendererContextGL)
      {
LABEL_56:
        v39 = RenderContext;
        v30 = [(SCNMTLRenderContext *)RenderContext createVolatileMeshElementOfType:v28 primitiveCount:v29 bytesPerIndex:2];
LABEL_59:
        *(a6 + 56) = Volatile;
        *(a6 + 64) = v30;
        if (v39)
        {
          [(SCNMTLRenderContext *)v39 mapVolatileMesh:0x2000 verticesCount:?];
        }

        if (*(a6 + 12))
        {
          v40 = scn_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            __appendVerticesAndIndices_cold_3(v40, v41, v42, v43, v44, v45, v46, v47);
          }
        }

        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(a6 + 56), 0, 0, 1);
        Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
        *(a6 + 72) = C3DSceneSourceGetLibrary(Accessor);
        *(a6 + 96) = C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0);
        VolatileValuePtrAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(a6 + 56), 3, 0, 1);
        if (VolatileValuePtrAtIndex)
        {
          v51 = C3DMeshSourceGetAccessor(VolatileValuePtrAtIndex);
          *(a6 + 88) = C3DSceneSourceGetLibrary(v51);
          VolatileValuePtrAtIndex = C3DSourceAccessorGetVolatileValuePtrAtIndex(v51, 0);
        }

        else
        {
          *(a6 + 88) = 0;
        }

        *(a6 + 112) = VolatileValuePtrAtIndex;
        v52 = C3DMeshGetSourceWithSemanticAtIndex(*(a6 + 56), 2, 0, 1);
        if (v52)
        {
          v53 = C3DMeshSourceGetAccessor(v52);
          *(a6 + 80) = C3DSceneSourceGetLibrary(v53);
          v52 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v53, 0);
        }

        else
        {
          *(a6 + 80) = 0;
        }

        *(a6 + 104) = v52;
        if (*(a6 + 8))
        {
          v54 = scn_default_log();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
          {
            __appendVerticesAndIndices_cold_4(v54, v55, v56, v57, v58, v59, v60, v61);
          }
        }

        goto LABEL_73;
      }
    }

    else if (*(a6 + 48))
    {
      v31 = scn_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        __appendVerticesAndIndices_cold_2(v31, v32, v33, v34, v35, v36, v37, v38);
      }

      v28 = 0;
      v29 = 0x2000;
      if (!RendererContextGL)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = 0;
      v29 = 2730;
      if (!RendererContextGL)
      {
        goto LABEL_56;
      }
    }

    if ([*(a6 + 144) count])
    {
      v30 = [*(a6 + 144) anyObject];
      [*(a6 + 136) addObject:v30];
      [*(a6 + 144) removeObject:v30];
    }

    else
    {
      v30 = C3DMeshElementCreateVolatile();
      [*(a6 + 136) addObject:v30];
      C3DMeshElementSetType(v30, v28);
      C3DMeshElementSetPrimitives(v30, 0, 0, 2);
      C3DMeshAppendElement(Volatile, v30);
      CFRelease(v30);
    }

    C3DRendererContextMapVolatileMeshElement(RendererContextGL, v30, v29, 1);
    v39 = RenderContext;
    goto LABEL_59;
  }

  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __appendVerticesAndIndices_cold_1();
  }
}

void __flush(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  RenderContext = C3DEngineContextGetRenderContext(v4);
  if (RenderContext)
  {
    v6 = RenderContext;
    v7 = *(a2 + 56);
    if (v7)
    {
      [(SCNMTLRenderContext *)RenderContext unmapVolatileMesh:v7 modifiedVerticesCount:*(a2 + 12)];
    }

    v8 = *(a2 + 64);
    if (v8)
    {
      [(SCNMTLRenderContext *)v6 unmapVolatileMeshElement:v8];
    }
  }

  v9 = (a2 + 56);
  if (*(a2 + 56))
  {
    if (*(a2 + 53) != 1)
    {
      goto LABEL_14;
    }

    if (!*(a2 + 12))
    {
      goto LABEL_51;
    }

    if (*(a2 + 48) == 1)
    {
      v10 = *(a2 + 8) >> 1;
    }

    else
    {
      if (*(a2 + 48))
      {
        goto LABEL_14;
      }

      v10 = *(a2 + 8) / 3u;
    }

    C3DMeshElementSetPrimitiveRange(*(a2 + 64), 0, v10);
LABEL_14:
    v11 = *(a1 + 8);
    v12 = C3DEngineContextGetRenderContext(v11);
    v13 = [(SCNMTLRenderContext *)v12 contentScaleFactor];
    RendererContextGL = C3DEngineContextGetRendererContextGL(v11);
    v15 = RendererContextGL;
    if (RendererContextGL)
    {
      ContentScaleFactor = C3DRendererContextGetContentScaleFactor(RendererContextGL);
    }

    else
    {
      ContentScaleFactor = v13;
    }

    v55 = 0u;
    v56 = 0u;
    *value = 0u;
    v54 = 0u;
    if (*(a2 + 49))
    {
      v46 = ContentScaleFactor;
      v47[0] = xmmword_21C2A39A0;
      C3DMatrix4x4MakeTranslation(value, v47);
      Viewport = C3DEngineContextGetViewport(v11);
      __asm { FMOV            V1.2S, #1.0 }

      v52 = HIDWORD(_D1);
      v51 = 1065353216;
      v50 = vmul_n_f32(vdiv_f32(0x4000000040000000, *&vextq_s8(Viewport, Viewport, 8uLL)), v46);
      C3DMatrix4x4Scale(value, &v50);
      if (!v15)
      {
        goto LABEL_41;
      }
    }

    else
    {
      Matrix4x4 = C3DEngineContextGetMatrix4x4(v11, 1);
      v24 = C3DEngineContextGetMatrix4x4(v11, 0);
      C3DMatrix4x4Mult(Matrix4x4, v24, value);
      if (!v15)
      {
LABEL_41:
        if (v12)
        {
          v37 = *a2;
          if (*a2)
          {
            v38 = 1616;
            if (*(a2 + 52))
            {
              v38 = 1600;
            }

            v39 = 1624;
            if (*(a2 + 52))
            {
              v39 = 1608;
            }

            if (*(a2 + 51))
            {
              v40 = v38;
            }

            else
            {
              v40 = v39;
            }

            v41 = *(a1 + v40);
            v47[0] = *value;
            v47[1] = v54;
            v47[2] = v55;
            v47[3] = v56;
            v48 = 0;
            v49 = 0;
            v42 = *(a2 + 56);
            v43 = *(a2 + 64);
            v44 = C3DBlendStatesDefaultOver();
            [(SCNMTLRenderContext *)v12 authoring_renderMesh:v42 meshElement:v43 withProgram:v37 uniforms:v47 uniformsLength:80 rasterizerStates:v41 blendStates:v44 texture:*(a2 + 32) depthBias:0];
          }
        }

        goto LABEL_51;
      }
    }

    glPushGroupMarkerEXT(0, "AuthEnvDraw");
    ResourceManager = C3DEngineContextGetResourceManager(v11);
    if (*(a2 + 50) == 1)
    {
      C3DRendererContextClear(v15, 0x100u, 0);
    }

    ProgramResident = C3DResourceManagerMakeProgramResident(ResourceManager, *a2, v15);
    if (ProgramResident)
    {
      v27 = ProgramResident;
      C3DRendererContextBindProgramObject(v15, ProgramResident);
      v28 = C3DBlendStatesDefaultOver();
      C3DRendererContextSetBlendStates(v15, v28);
      C3DRendererContextSetEnableReadsFromDepth(v15, *(a2 + 51));
      UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v27, @"u_modelViewProjectionTransform");
      C3DRendererContextSetMatrix4x4UniformAtLocation(v15, UniformLocationOfSymbolNamed, value, 1);
      C3DRendererContextSetEnable(v15, 2, *(a2 + 52));
      if (*(a2 + 32))
      {
        Default = C3DTextureSamplerGetDefault();
        v31 = *(a2 + 40);
        if (!v31)
        {
          ImageResident = C3DResourceManagerMakeImageResident(ResourceManager, *(a2 + 32), Default, v15);
          v31 = *(a2 + 40);
          if (v31 != ImageResident)
          {
            v33 = ImageResident;
            if (v31)
            {
              CFRelease(*(a2 + 40));
              *(a2 + 40) = 0;
            }

            if (v33)
            {
              v31 = CFRetain(v33);
            }

            else
            {
              v31 = 0;
            }

            *(a2 + 40) = v31;
          }
        }

        if (v31 && Default)
        {
          C3DRendererContextBindTexture(v15, v31, Default, 0, 0);
          v34 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v27, @"u_sampler");
          C3DRendererContextSetIntUniformAtLocation(v15, v34, 0);
          C3DFXGLSLProgramObjectSetUniformValueAtIndex(v27, 0, 0);
        }
      }

      v36 = *(a2 + 56);
      v35 = *(a2 + 64);
      if (*(a2 + 53) == 1)
      {
        C3DRendererContextUnmapVolatileMesh(v15, *(a2 + 56));
        C3DRendererContextUnmapVolatileMeshElement(v15, v35);
      }

      C3DRendererContextBindMesh(v15, ResourceManager, v36);
      C3DRendererContextBindMeshElement(v15, ResourceManager, v35);
      C3DRendererContextRenderResidentMeshElement(v15);
      C3DRendererContextUnbindProgramObject(v15);
      if (*(a2 + 53) == 1)
      {
        *v9 = 0;
        *(a2 + 64) = 0;
      }
    }

    glPopGroupMarkerEXT();
    goto LABEL_41;
  }

LABEL_51:
  *(a2 + 8) = 0;
  if (C3DEngineContextGetRendererContextGL(v4))
  {
    v45 = *(a2 + 64);
    if (v45)
    {
      CFRelease(v45);
      *(a2 + 64) = 0;
    }

    if (*v9)
    {
      CFRelease(*v9);
    }
  }

  *v9 = 0;
  *(a2 + 64) = 0;
}

uint64_t C3DAuthoringEnvironmentSceneDidChange(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 0x10000;
  if ((*(a1 + 65752) & 1) != 0 || C3DAuthoringEnvironmentHasSelectedNodes(a1) || *(v4 + 248) == 1)
  {
    v5 = *(a1 + 8);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    Scene = C3DEngineContextGetScene(v5);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", Scene, 0, 1u);
  }

  return [a1 sceneDidChange:a2];
}

uint64_t C3DAuthoringEnvironmentBeginFrame(id *a1)
{
  v2 = a1 + 0x2000;
  objc_sync_enter(a1);
  *(v2 + 70) = 0;
  [a1 update];
  v3 = v2[33];
  if (v3)
  {
    [v3 removeAllObjects];
  }

  else
  {
    v2[33] = [MEMORY[0x277CBEB18] array];
  }

  [a1[204] removeAllObjects];

  return objc_sync_exit(a1);
}

void C3DAuthoringEnvironmentEndFrame(uint64_t a1)
{
  __flush(a1, a1 + 88);
  __flush(a1, a1 + 240);
  __flush(a1, a1 + 392);
  __flush(a1, a1 + 544);
  __flush(a1, a1 + 696);
  __flush(a1, a1 + 848);
  __flush(a1, a1 + 1000);
  __flush(a1, a1 + 1152);
  __flush(a1, a1 + 1304);
  __recycleMeshes(a1, a1 + 88);
  __recycleMeshes(a1, a1 + 240);
  __recycleMeshes(a1, a1 + 392);
  __recycleMeshes(a1, a1 + 544);
  __recycleMeshes(a1, a1 + 696);
  __recycleMeshes(a1, a1 + 848);
  __recycleMeshes(a1, a1 + 1000);
  __recycleMeshes(a1, a1 + 1152);

  __recycleMeshes(a1, a1 + 1304);
}

void __recycleMeshes(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a2 + 53) == 1)
  {
    v3 = *(a1 + 8);
    RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = *(a2 + 120);
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          if (RendererContextGL)
          {
            SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(*(&v28 + 1) + 8 * i), 0, 0, 1);
            Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
            if (C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0))
            {
              C3DRendererContextUnmapVolatileMesh(RendererContextGL, *(a2 + 56));
            }
          }

          [*(a2 + 128) addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = *(a2 + 136);
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(a2 + 144) addObject:*(*(&v24 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    [*(a2 + 120) removeAllObjects];
    [*(a2 + 136) removeAllObjects];
    RenderContext = C3DEngineContextGetRenderContext(v3);
    if (RenderContext)
    {
      v19 = RenderContext;
      v20 = *(a2 + 56);
      if (v20)
      {
        [(SCNMTLRenderContext *)RenderContext unmapVolatileMesh:v20 modifiedVerticesCount:*(a2 + 12)];
      }

      v21 = *(a2 + 64);
      if (v21)
      {
        [(SCNMTLRenderContext *)v19 unmapVolatileMeshElement:v21];
      }
    }

    if (RendererContextGL)
    {
      v22 = *(a2 + 64);
      if (v22)
      {
        CFRelease(v22);
        *(a2 + 64) = 0;
      }

      v23 = *(a2 + 56);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }
}

void C3DAuthoringEnvironmentDrawOrigin(uint64_t a1)
{
  if ((*(a1 + 65705) & 0x80) == 0)
  {
    return;
  }

  __createGLInfoIfNeeded(a1, a1 + 392);
  for (i = 0; ; ++i)
  {
    v4 = &C3DAuthoringEnvironmentColorRed;
    v5 = xmmword_21C27F910;
    if (!i)
    {
      goto LABEL_6;
    }

    if (i != 1)
    {
      break;
    }

    v4 = &C3DAuthoringEnvironmentColorGreen;
    v5 = xmmword_21C27F8C0;
LABEL_6:
    __appendSegment(a1, 0, v4, v4, a1 + 392, 0, v5);
  }

  __appendSegment(a1, 0, C3DAuthoringEnvironmentColorBlue, C3DAuthoringEnvironmentColorBlue, a1 + 392, 0, xmmword_21C27F600);

  __flush(a1, a1 + 696);
}

void __createGLInfoIfNeeded(uint64_t *a1, uint64_t a2)
{
  if (*a2)
  {
    return;
  }

  v4 = a1 + 11 == a2 || a1 + 30 == a2;
  v5 = a1 + 49;
  v7 = v4 || a1 + 144 == a2;
  v44 = v7;
  v8 = a1 + 68;
  v9 = a1 + 106;
  v10 = a1 + 125;
  v11 = a1 + 87;
  v16 = v5 == a2 || v8 == a2 || v9 == a2 || v11 == a2 || v10 == a2;
  if (!*(a2 + 120))
  {
    *(a2 + 120) = [MEMORY[0x277CBEB58] set];
  }

  if (!*(a2 + 128))
  {
    *(a2 + 128) = [MEMORY[0x277CBEB58] set];
  }

  if (!*(a2 + 136))
  {
    *(a2 + 136) = [MEMORY[0x277CBEB58] set];
  }

  if (!*(a2 + 144))
  {
    *(a2 + 144) = [MEMORY[0x277CBEB58] set];
  }

  v43 = a1 + 163;
  v17 = a1[1];
  RenderContext = C3DEngineContextGetRenderContext(v17);
  RendererContextGL = C3DEngineContextGetRendererContextGL(v17);
  if (RendererContextGL)
  {
    if (v44)
    {
      BuiltInProgramWithName = a1[6];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3DManipulatorColorAndTexture");
LABEL_42:
        a1[6] = BuiltInProgramWithName;
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (v16)
    {
      BuiltInProgramWithName = a1[5];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3DManipulatorColorOnly");
LABEL_55:
        a1[5] = BuiltInProgramWithName;
        goto LABEL_58;
      }

      goto LABEL_58;
    }

    if (v43 == a2)
    {
      BuiltInProgramWithName = a1[7];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3DManipulatorLightProbe");
        a1[7] = BuiltInProgramWithName;
      }

      goto LABEL_58;
    }

    v22 = scn_default_log();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

  if (RenderContext)
  {
    if (v44)
    {
      BuiltInProgramWithName = a1[6];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorColorAndTexture_vert", @"ManipulatorColorAndTexture_frag");
        goto LABEL_42;
      }

LABEL_43:
      v21 = 20;
LABEL_59:
      *(a2 + 16) = v21;
      *a2 = BuiltInProgramWithName;
      goto LABEL_60;
    }

    if (v16)
    {
      BuiltInProgramWithName = a1[5];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorColorOnly_vert", @"ManipulatorColorOnly_frag");
        goto LABEL_55;
      }

LABEL_58:
      v21 = 16;
      goto LABEL_59;
    }

    if (v43 == a2)
    {
      BuiltInProgramWithName = a1[7];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorLightProbe_vert", @"ManipulatorLightProbe_frag");
        a1[7] = BuiltInProgramWithName;
      }

      v21 = 12;
      goto LABEL_59;
    }

    v41 = scn_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
LABEL_49:
      __createGLInfoIfNeeded_cold_1();
    }
  }

  else
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      __createGLInfoIfNeeded_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

LABEL_60:
  if (v5 == a2)
  {
    *(a2 + 48) = 1;
  }

  else
  {
    if (v8 == a2)
    {
      *(a2 + 48) = 1;
      *(a2 + 51) = 0;
      goto LABEL_70;
    }

    if (v9 == a2)
    {
      v31 = 257;
      goto LABEL_72;
    }

    if (v10 == a2)
    {
LABEL_66:
      v31 = 256;
LABEL_72:
      *(a2 + 48) = v31;
      *(a2 + 52) = 256;
      goto LABEL_73;
    }

    if (v11 != a2)
    {
      if (v44)
      {
        goto LABEL_66;
      }

      if (v43 != a2)
      {
        v42 = scn_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          __createGLInfoIfNeeded_cold_1();
        }

        goto LABEL_73;
      }
    }

    *(a2 + 48) = 0;
  }

  *(a2 + 51) = 1;
LABEL_70:
  *(a2 + 53) = 1;
LABEL_73:
  if (RendererContextGL)
  {
    ResourceManager = C3DEngineContextGetResourceManager(a1[1]);
    C3DResourceManagerMakeProgramResident(ResourceManager, *a2, RendererContextGL);
  }

  if (!*a2)
  {
    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      __createGLInfoIfNeeded_cold_5(v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }
}

void __appendSegment(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t a5, float32x4_t a6, __n128 a7)
{
  v10 = a6;
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v13 = *(a2 + 16);
    v30 = *a2;
    v31 = v13;
    v14 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v14;
    v28 = a7;
    *v15.i64 = C3DVector3MultMatrix4x4(&v30, a6);
    v27 = v15;
    v16 = *(a2 + 16);
    v30 = *a2;
    v31 = v16;
    v17 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v17;
    v18.n128_f64[0] = C3DVector3MultMatrix4x4(&v30, v28);
    v10 = v27;
    a7 = v18;
  }

  v30.i64[0] = v10.i64[0];
  v30.i32[2] = v10.i32[2];
  v19 = (a3[3] * 255.0);
  v20 = (fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0);
  v21 = (fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0);
  v22 = (fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
  v23 = (a4[3] * 255.0);
  v24 = (fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0);
  v25 = *a4;
  v26 = fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0;
  DWORD2(v31) = a7.n128_u32[2];
  *&v31 = a7.n128_u64[0];
  v30.i32[3] = (v19 << 24) | (v20 << 16) | (v21 << 8) | v22;
  HIDWORD(v31) = (v23 << 24) | (v24 << 16) | (v26 << 8) | (fminf(fmaxf(v25, 0.0), 1.0) * 255.0);
  v29 = 0x10000;
  __appendVerticesAndIndices(a1, &v30, 2u, &v29, 2u, a5, 1);
}

void C3DAuthoringEnvironmentDrawTarget(uint64_t a1)
{
  if (*(a1 + 65784) == 1 && (*(a1 + 65706) & 1) != 0)
  {
    v42 = v10;
    v43 = v9;
    v44 = v8;
    v45 = v7;
    v46 = v6;
    v47 = v5;
    v48 = v4;
    v49 = v3;
    v50 = v1;
    v51 = v2;
    if (*(a1 + 24) == 1)
    {
      v12 = *(a1 + 16);
      if (([objc_msgSend(v12 "defaultCameraController")] - 1) <= 3)
      {
        [objc_msgSend(v12 "defaultCameraController")];
        v35 = v13;
        Matrix4x4 = C3DEngineContextGetMatrix4x4(*(a1 + 8), 1);
        v15 = C3DEngineContextGetMatrix4x4(*(a1 + 8), 0);
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        C3DMatrix4x4Mult(Matrix4x4, v15, &v38);
        v16 = vaddq_f32(v41, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v35.f32[0]), v39, *v35.f32, 1), v40, v35, 2));
        if (v16.f32[3] > 0.001)
        {
          v36 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3)).u64[0];
          RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8));
          v18 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
          RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8));
          if (RendererContextGL)
          {
            *v20.i32 = C3DRendererContextGetContentScaleFactor(RendererContextGL);
          }

          else
          {
            *v20.i32 = v18;
          }

          v34 = v20;
          Viewport = C3DEngineContextGetViewport(*(a1 + 8));
          __asm
          {
            FMOV            V2.2D, #1.0
            FMOV            V1.2D, #0.5
          }

          v28 = vmulq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(v36), _Q2), vcvt_hight_f64_f32(Viewport)), _Q1);
          v29 = vdivq_f32(vrndmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v28), v28)), vdupq_lane_s32(v34, 0));
          v37 = vaddq_f32(v29, xmmword_21C2A39B0);
          v30 = v29.f32[0] + -5.0;
          v31 = v29.f32[1] + -1.0;
          v32 = v29.f32[0] + 5.0;
          v33 = v29.f32[1] + 1.0;
          __createGLInfoIfNeeded(a1, a1 + 1000);
          __appendRect2D(a1, 0x3F8000003F800000, 0x3F8000003F800000, 0, a1 + 1000, 1, v37.f32[0], v37.f32[1], v37.f32[2], v37.f32[3]);
          __appendRect2D(a1, 0x3F8000003F800000, 0x3F8000003F800000, 0, a1 + 1000, 1, v30, v31, v32, v33);
          __appendRect2D(a1, 0, 0x3F80000000000000, 0, a1 + 1000, 1, v37.f32[0] + 0.5, v37.f32[1] + 0.5, v37.f32[2] + -0.5, v37.f32[3] + -0.5);
          __appendRect2D(a1, 0, 0x3F80000000000000, 0, a1 + 1000, 1, v30 + 0.5, v31 + 0.5, v32 + -0.5, v33 + -0.5);
          __flush(a1, a1 + 1000);
        }
      }
    }
  }
}

void __appendRect2D(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, int a6, float a7, float a8, float a9, float a10)
{
  v59 = *MEMORY[0x277D85DE8];
  v19 = *(a5 + 32);
  if (a4)
  {
    if (!v19)
    {
      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        __appendRect2D_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    v39 = a7;
    v40 = a8;
    v29 = a4[1];
    v41 = *a4;
    *&v42 = v29;
    v43 = ((*(&a3 + 1) * 255.0) << 24) | ((fminf(fmaxf(*&a3, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(*(&a2 + 1), 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*&a2, 0.0), 1.0) * 255.0);
    v44 = a9;
    v45 = a8;
    v30 = a4[3];
    v46 = a4[2];
    v47 = v29;
    v48 = *&v43;
    v49 = a9;
    v50 = a10;
    v51 = v46;
    v52 = v30;
    v53 = v43;
    v54 = a7;
    v55 = a10;
    v56 = v41;
    v57 = v30;
    v58 = v43;
  }

  else
  {
    if (v19)
    {
      v31 = scn_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        __appendRect2D_cold_2(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    v39 = a7;
    v40 = a8;
    v41 = 0.0;
    v42 = ((*(&a3 + 1) * 255.0) << 24) | ((fminf(fmaxf(*&a3, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(*(&a2 + 1), 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*&a2, 0.0), 1.0) * 255.0);
    *&v43 = a9;
    v44 = a8;
    v45 = 0.0;
    v46 = *&v42;
    v47 = a9;
    v48 = a10;
    v49 = 0.0;
    v50 = *&v42;
    v51 = a7;
    v52 = a10;
    v53 = 0;
    v54 = *&v42;
  }

  __appendVerticesAndIndices(a1, &v39, 4u, word_21C2A3C10, 6u, a5, a6);
}

void C3DAuthoringEnvironmentDrawGrid(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  *&v46[1924] = *MEMORY[0x277D85DE8];
  if (!C3DEngineContextGetRenderContext(*(v1 + 8)) && (*(v2 + 65705) & 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(*(v2 + 16) "pointOfView")];
      [objc_msgSend(*(v2 + 16) "pointOfView")];
    }

    Matrix4x4 = C3DEngineContextGetMatrix4x4(*(v2 + 8), 1);
    v4 = *Matrix4x4;
    v5 = Matrix4x4[1];
    v6 = Matrix4x4[3];
    v41.columns[2] = Matrix4x4[2];
    v41.columns[3] = v6;
    v41.columns[0] = v4;
    v41.columns[1] = v5;
    C3DMatrix4x4Invert(&v41, &v41);
    v7 = sqrtf((((0.0 - v41.columns[3].f32[1]) * (0.0 - v41.columns[3].f32[1])) + ((0.0 - v41.columns[3].f32[0]) * (0.0 - v41.columns[3].f32[0]))) + ((0.0 - v41.columns[3].f32[2]) * (0.0 - v41.columns[3].f32[2])));
    *(v2 + 65788) = v7;
    v8 = v7 / 0.001;
    v9 = log10f((v8 + 1.0) + (v8 + 1.0));
    v10 = fmaxf(floorf(v9), 1.0);
    v11 = __exp10(v10);
    v12 = 0;
    *&v11 = v11;
    v13 = *&v11;
    v14 = *&v11;
    *(v2 + 65792) = v14 * 0.001 / 10.0;
    v15 = v14 * 0.003;
    v16 = v13 / 10;
    v17 = vcvtmd_s64_f64(0.0 / ((v13 / 10) * 0.001));
    v18 = (v9 - v10);
    v19 = vcvtd_n_u64_f64(v18 * -0.5 + 1.0, 7uLL) << 24;
    v20 = vcvtd_n_u64_f64(1.0 - v18, 6uLL) << 24;
    v21 = -v15;
    v22 = (v16 * v17);
    v23 = -v15 + v22 * 0.001;
    v24 = v15 + v22 * 0.001;
    v25 = &v45;
    v26 = 1;
    v27 = v15 + v15;
    v28 = v17;
    do
    {
      v29 = v21 + ((v28 / 60.0) * v27);
      *(v25 - 4) = v29;
      *(v25 - 3) = 0.0;
      *(v25 - 2) = v23;
      *v25 = v29;
      v25[1] = 0.0;
      HIDWORD(v30) = 429496728 - 858993459 * v28;
      LODWORD(v30) = HIDWORD(v30);
      if ((v30 >> 1) >= 0x19999999)
      {
        v31 = v20;
      }

      else
      {
        v31 = v19;
      }

      if (v28 == 30)
      {
        v31 = -1442840576;
      }

      *(v25 - 1) = v31;
      *(v25 + 3) = v31;
      v32 = &v42[v26];
      *(v32 - 1) = v12;
      v33 = v12 + 1;
      v12 += 2;
      v25[2] = v24;
      *v32 = v33;
      ++v28;
      v25 += 8;
      v26 += 2;
    }

    while (v12 != 122);
    v34 = v46;
    v35 = &v43;
    v36 = 122;
    do
    {
      v37 = v21 + ((v17 / 60.0) * v27);
      *(v34 - 7) = v23;
      *(v34 - 6) = 0;
      *(v34 - 5) = v37;
      *(v34 - 3) = v24;
      *(v34 - 2) = 0;
      HIDWORD(v38) = 429496728 - 858993459 * v17;
      LODWORD(v38) = HIDWORD(v38);
      if ((v38 >> 1) >= 0x19999999)
      {
        v39 = v20;
      }

      else
      {
        v39 = v19;
      }

      if (v17 == 30)
      {
        v39 = -1442840576;
      }

      *(v34 - 4) = v39;
      *v34 = v39;
      *(v35 - 1) = v36;
      v40 = v36 + 1;
      v36 += 2;
      *(v34 - 1) = v37;
      *v35 = v40;
      v35 += 2;
      ++v17;
      v34 += 8;
    }

    while (v36 != 244);
    __createGLInfoIfNeeded(v2, v2 + 392);
    __appendVerticesAndIndices(v2, v44, 0xF4u, v42, 0xF4u, v2 + 392, 1);
    __flush(v2, v2 + 392);
  }
}

double C3DAuthoringEnvironmentBeginTimedRecord(uint64_t a1, float a2)
{
  if (*(a1 + 1688) != 0.0)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAuthoringEnvironmentBeginTimedRecord_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEngineContextGetSystemTime(*(a1 + 8)) + a2;
  *(a1 + 1688) = result;
  return result;
}

void __appendTimedRecord(uint64_t a1, int a2, void *__src, size_t __n)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a1 + 0x10000;
  v5 = (__n + 31) & 0xFFFFFFF0;
  v6 = *(a1 + 65700);
  v7 = v6 + v5;
  if ((v6 + v5) >> 9 >= 0x7D)
  {
    if (v7 == 64000)
    {
      v8 = 64000 - v6;
      v9 = *(a1 + 1688);
      v10 = a1 + v6;
      *(v10 + 1696) = -1;
      *(v10 + 1700) = v8;
      *(v10 + 1704) = v9;
    }

    LODWORD(v6) = 0;
    *(a1 + 65700) = 0;
    v7 = (__n + 31) & 0xFFFFFFF0;
  }

  v11 = *(a1 + 65696);
  if (v6 < v11 && v7 > v11)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v4 + 160);
      v17 = *(v4 + 164);
      v18[0] = 67109376;
      v18[1] = v16;
      v19 = 1024;
      v20 = v17;
      _os_log_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_DEFAULT, "Warning: ring buffer is full [%d/%d]", v18, 0xEu);
    }
  }

  else
  {
    v13 = *(a1 + 1688);
    v14 = a1 + 1696 + v6;
    *v14 = a2;
    *(v14 + 4) = v5;
    *(v14 + 8) = v13;
    memcpy((a1 + 1696 + *(a1 + 65700) + 16), __src, __n);
    *(v4 + 164) = v7;
  }
}

void __displayRangeTimeRecord(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5, double a6)
{
  v9 = a2;
  if (a2 == a3)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __displayRangeTimeRecord_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_5;
  }

  if (a2 >> 4 > 0xF9E)
  {
LABEL_5:
    v18 = a3;
    goto LABEL_6;
  }

  v22 = a1 + 1696;
  v18 = a3;
  v23 = a2;
  do
  {
    v24 = v22 + v23;
    v25 = *(v24 + 4);
    if (!v25)
    {
      break;
    }

    if (*(v24 + 8) <= a6)
    {
      v23 += v25;
    }

    else
    {
      v26 = *v24;
      if (*v24 == 3)
      {
        C3DAuthoringEnvironmentAppendDebugBoundingSphere(a1, *(v24 + 16), *(v24 + 24), (v24 + 32), (v24 + 96));
      }

      else if (v26 == 1)
      {
        C3DAuthoringEnvironmentAppendDebugSegment(a1, 0, (v24 + 48), 0, *(v24 + 16), *(v24 + 32));
      }

      else if (!v26)
      {
        C3DAuthoringEnvironmentAppendDebugRay(a1, 0, (v24 + 48), *(v24 + 16), *(v24 + 32));
      }

      if (v18 >= v23)
      {
        v18 = v23;
      }

      v23 += *(v24 + 4);
      if (v9 <= v23)
      {
        v9 = v23;
      }
    }
  }

  while (v23 != a3 && v23 >> 4 < 0xF9F);
LABEL_6:
  *a4 = v18;
  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  *a5 = v19;
}

double C3DAuthoringEnvironmentAppendDebugRay(uint64_t a1, uint64_t a2, float *a3, float32x4_t a4, float32x4_t a5)
{
  if (*(a1 + 1688) > 0.0)
  {
    __src = a4;
    v16 = a5;
    v17 = *a3;
    if (a2)
    {
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
      v10 = *(a2 + 48);
      v11 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *a5.f32, 1), *a2, a5.f32[0]), v9, a5, 2));
      __src = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *a4.f32, 1), *a2, a4.f32[0]), v9, a4, 2));
      v16 = v11;
    }

    __appendTimedRecord(a1, 0, &__src, 0x30uLL);
  }

  __createGLInfoIfNeeded(a1, a1 + 392);

  *&result = __appendRay(a1, a2, a3, a3, a1 + 392, a4, a5).n128_u64[0];
  return result;
}

void C3DAuthoringEnvironmentAppendDebugSegment(uint64_t a1, uint64_t a2, float *a3, int a4, float32x4_t a5, float32x4_t a6)
{
  if (*(a1 + 1688) > 0.0)
  {
    __src = a5;
    v18 = a6;
    v19 = *a3;
    if (a2)
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 32);
      v12 = *(a2 + 48);
      v13 = vaddq_f32(v12, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *a6.f32, 1), *a2, a6.f32[0]), v11, a6, 2));
      __src = vaddq_f32(v12, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *a5.f32, 1), *a2, a5.f32[0]), v11, a5, 2));
      v18 = v13;
    }

    __appendTimedRecord(a1, 1, &__src, 0x30uLL);
  }

  if (a4)
  {
    v14 = 544;
  }

  else
  {
    v14 = 392;
  }

  __createGLInfoIfNeeded(a1, a1 + v14);

  __appendSegment(a1, a2, a3, a3, a1 + v14, a5, a6);
}

void C3DAuthoringEnvironmentAppendDebugBoundingSphere(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, __int128 *a5)
{
  if (*(a1 + 1688) > 0.0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13[0] = a2;
    v13[1] = a3;
    Identity = a4;
    if (!a4)
    {
      Identity = C3DMatrix4x4GetIdentity();
    }

    v11 = Identity[1];
    v14 = *Identity;
    v15 = v11;
    v12 = Identity[3];
    v16 = Identity[2];
    v17 = v12;
    v18 = *a5;
    __appendTimedRecord(a1, 3, v13, 0x60uLL);
  }

  __createGLInfoIfNeeded(a1, a1 + 392);

  __appendSphereWithSubdivisionCount(a1, a2, a3, a4, a5, a1 + 392, 3u);
}

void __displayTimeRecord(uint64_t a1, double a2)
{
  v2 = a1 + 0x10000;
  v3 = *(a1 + 65696);
  v4 = *(a1 + 65700);
  if (v3 != v4)
  {
    v7 = 0;
    if (v3 < v4)
    {
      __displayRangeTimeRecord(a1, v3, v4, &v7 + 1, &v7, a2);
      *(v2 + 160) = HIDWORD(v7);
LABEL_8:
      *(v2 + 164) = v7;
      return;
    }

    if (v3 >> 9 <= 0x7C)
    {
      __displayRangeTimeRecord(a1, v3, 0xFA00u, &v7 + 1, &v7, a2);
      *(v2 + 160) = HIDWORD(v7);
      v4 = *(v2 + 164);
    }

    if (v4)
    {
      __displayRangeTimeRecord(a1, 0, v4, &v7 + 1, &v7, a2);
      goto LABEL_8;
    }
  }
}

void C3DAuthoringEnvironmentDrawZbufferDependant(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = a1 + 0x10000;
  C3DAuthoringEnvironmentDrawGrid(a1);
  C3DAuthoringEnvironmentDrawOrigin(a1);
  if ((*(v2 + 168) & 0x40) != 0)
  {
    Scene = C3DEngineContextGetScene(*(a1 + 8));
    if (Scene)
    {
      v4 = [[SCNScene sceneWithSceneRef:?]];
      if (v4)
      {
        v5 = v4;
        v6 = v4;
        [(SCNPhysicsWorld *)v5 _drawDebugInAuthoringEnvironment:a1];
      }
    }
  }

  C3DWireframeDrawInstances(*(v2 + 272), *(a1 + 8), *(a1 + 64));
  v7 = [a1 manipulator];
  if ([v7 isDragging])
  {
    v9 = 0uLL;
    v58 = 0u;
    memset(&v57[4], 0, 48);
    if (v7)
    {
      [v7 transform];
      v9 = 0uLL;
      v8.n128_u64[0] = v58;
      v54 = v8;
      v8.n128_u32[0] = DWORD2(v58);
    }

    else
    {
      v8.n128_u64[0] = 0;
      v54 = v8;
    }

    v52 = v8.n128_u32[0];
    v57[2] = v9;
    v57[3] = v9;
    v57[0] = v9;
    v57[1] = v9;
    v10 = [v7 snapGuideIndexesOnAxis:{1, C3DMatrix4x4MakeIdentity(v57).n128_f64[0]}];
    v11 = [v10 firstIndex];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v11; i != 0x7FFFFFFFFFFFFFFFLL; i = [v10 indexGreaterThanIndex:i])
      {
        v13 = [v7 snapInfoAtIndex:i axis:{1, *&v47}];
        v55 = 0u;
        v56 = 0u;
        WorldMatrix = C3DNodeGetWorldMatrix(*(v13 + 8));
        C3DNodeGetLocalBoundingBox(*(v13 + 8), &v55);
        v15.f32[0] = *v13 - *(v13 + 16);
        v16 = v54;
        v16.n128_f32[0] = v15.f32[0];
        v15.i32[1] = WorldMatrix[3].i32[1];
        v15.i32[2] = WorldMatrix[3].i32[2];
        v17 = v16;
        v17.n128_u32[2] = v15.u32[2];
        v16.n128_u32[2] = v52;
        v47 = v17;
        v49 = v16;
        __appendSegment(a1, v57, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v15, v17);
        __appendSegment(a1, v57, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v47, v49);
        v18 = vaddq_f32(v56, v56);
        v19 = vdupq_laneq_s32(v18, 3);
        v19.i32[0] = v18.i32[0];
        v59 = vsubq_f32(v55, v56);
        v60 = vaddq_f32(v59, v19);
        v61 = vaddq_f32(v59, vextq_s8(v18, vuzp2q_s32(v18, v18), 0xCuLL));
        v62 = vaddq_f32(v19, v61);
        v20 = vzip2q_s32(v18, v18);
        v21 = vextq_s8(v20, v20, 8uLL);
        v63 = vaddq_f32(v59, v21);
        v64 = vaddq_f32(v21, v60);
        v65 = vaddq_f32(v21, v61);
        v66 = vaddq_f32(v21, v62);
        __appendAsymetricBox(a1, &v59, WorldMatrix, C3DAuthoringEnvironmentColorCyan, a1 + 392);
      }
    }

    v22 = [v7 snapGuideIndexesOnAxis:{2, *&v47}];
    v23 = [v22 firstIndex];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (j = v23; j != 0x7FFFFFFFFFFFFFFFLL; j = [v22 indexGreaterThanIndex:j])
      {
        v25 = [v7 snapInfoAtIndex:j axis:{2, *&v48}];
        v55 = 0u;
        v56 = 0u;
        v26 = C3DNodeGetWorldMatrix(*(v25 + 8));
        C3DNodeGetLocalBoundingBox(*(v25 + 8), &v55);
        v27.i32[0] = v26[3].i32[0];
        v27.f32[1] = *v25 - *(v25 + 16);
        v27.i32[2] = v26[3].i32[2];
        v28 = v54;
        v28.n128_f32[1] = v27.f32[1];
        v29 = v28;
        v29.n128_u32[2] = v27.u32[2];
        v48 = v29;
        v28.n128_u32[2] = v52;
        v50 = v28;
        __appendSegment(a1, v57, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v27, v29);
        __appendSegment(a1, v57, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v48, v50);
        v30 = vaddq_f32(v56, v56);
        v31 = vdupq_laneq_s32(v30, 3);
        v31.i32[0] = v30.i32[0];
        v59 = vsubq_f32(v55, v56);
        v60 = vaddq_f32(v59, v31);
        v61 = vaddq_f32(v59, vextq_s8(v30, vuzp2q_s32(v30, v30), 0xCuLL));
        v62 = vaddq_f32(v31, v61);
        v32 = vzip2q_s32(v30, v30);
        v33 = vextq_s8(v32, v32, 8uLL);
        v63 = vaddq_f32(v59, v33);
        v64 = vaddq_f32(v33, v60);
        v65 = vaddq_f32(v33, v61);
        v66 = vaddq_f32(v33, v62);
        __appendAsymetricBox(a1, &v59, v26, C3DAuthoringEnvironmentColorCyan, a1 + 392);
      }
    }

    v34 = [v7 snapGuideIndexesOnAxis:{4, *&v48}];
    v35 = [v34 firstIndex];
    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (k = v35; k != 0x7FFFFFFFFFFFFFFFLL; k = [v34 indexGreaterThanIndex:k])
      {
        v37 = [v7 snapInfoAtIndex:k axis:4];
        v55 = 0u;
        v56 = 0u;
        v38 = C3DNodeGetWorldMatrix(*(v37 + 8));
        C3DNodeGetLocalBoundingBox(*(v37 + 8), &v55);
        v39.i64[0] = v38[3].i64[0];
        v40 = v54;
        v41 = v54;
        v41.n128_u32[0] = v39.i32[0];
        v39.f32[2] = *v37 - *(v37 + 16);
        v41.n128_f32[2] = v39.f32[2];
        v40.n128_f32[2] = v39.f32[2];
        v51 = v41;
        v53 = v40;
        __appendSegment(a1, v57, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v39, v41);
        __appendSegment(a1, v57, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v51, v53);
        v42 = vaddq_f32(v56, v56);
        v43 = vdupq_laneq_s32(v42, 3);
        v43.i32[0] = v42.i32[0];
        v59 = vsubq_f32(v55, v56);
        v60 = vaddq_f32(v59, v43);
        v61 = vaddq_f32(v59, vextq_s8(v42, vuzp2q_s32(v42, v42), 0xCuLL));
        v62 = vaddq_f32(v43, v61);
        v44 = vzip2q_s32(v42, v42);
        v45 = vextq_s8(v44, v44, 8uLL);
        v63 = vaddq_f32(v59, v45);
        v64 = vaddq_f32(v45, v60);
        v65 = vaddq_f32(v45, v61);
        v66 = vaddq_f32(v45, v62);
        __appendAsymetricBox(a1, &v59, v38, C3DAuthoringEnvironmentColorCyan, a1 + 392);
      }
    }

    __flush(a1, a1 + 392);
  }

  SystemTime = C3DEngineContextGetSystemTime(*(a1 + 8));
  __displayTimeRecord(a1, SystemTime);
}

void C3DAuthoringEnvironmentDrawZbufferIndependant(uint64_t a1, __n128 a2)
{
  if (*(a1 + 65752) == 1)
  {
    a2.n128_u64[0] = vadd_f32(vrndx_f32(*(a1 + 65736)), 0x3F0000003F000000);
    v11 = a2;
    a2.n128_u64[0] = vadd_f32(vrndx_f32(*(a1 + 65744)), 0x3F0000003F000000);
    v17 = a2;
    __createGLInfoIfNeeded(a1, a1 + 1000);
    __appendRect2D(a1, 0x3E00000000000000, 0x3E8000003E800000, 0, a1 + 1000, 1, v11.n128_f32[0], v11.n128_f32[1], v17.n128_f32[0], v17.n128_f32[1]);
    __createGLInfoIfNeeded(a1, a1 + 848);
    v3 = v11;
    v3.n128_u32[2] = 0;
    v15 = v3;
    v4 = v3;
    v4.i32[1] = v11.n128_i32[1];
    v5 = v4;
    v10 = v4;
    v6 = v17;
    v6.n128_u32[2] = 0;
    v13 = v6;
    v7 = v6;
    v7.n128_u32[1] = v11.n128_u32[1];
    v12 = v7;
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite, C3DAuthoringEnvironmentColorWhite, a1 + 848, v5, v7);
    v8 = v13;
    v8.n128_u32[1] = v17.n128_u32[1];
    v14 = v8;
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite, C3DAuthoringEnvironmentColorWhite, a1 + 848, v12, v8);
    v9 = v15;
    v9.n128_u32[1] = v17.n128_u32[1];
    v16 = v9;
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite, C3DAuthoringEnvironmentColorWhite, a1 + 848, v14, v9);
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite, C3DAuthoringEnvironmentColorWhite, a1 + 848, v16, v10);
  }

  C3DAuthoringEnvironmentDrawTarget(a1);
}

void C3DAuthoringEnvironmentDrawPending(uint64_t a1)
{
  __flush(a1, a1 + 1304);
  __flush(a1, a1 + 1152);
  __flush(a1, a1 + 392);
  __flush(a1, a1 + 544);
  __flush(a1, a1 + 696);
  __flush(a1, a1 + 1000);

  __flush(a1, a1 + 848);
}

__n128 __appendRay(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t a5, float32x4_t a6, float32x4_t a7)
{
  v10 = a6;
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v26 = a7;
    v13 = *(a2 + 16);
    v30 = *a2;
    v31 = v13;
    v14 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v14;
    *v15.i64 = C3DVector3MultMatrix4x4(&v30, a6);
    v24 = v15;
    v16 = *(a2 + 16);
    v30 = *a2;
    v31 = v16;
    v17 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v17;
    *v18.i64 = C3DVector3MultMatrix4x4(&v30, v26);
    v10 = v24;
    a7 = v18;
  }

  v25 = v10;
  v27 = a7;
  v23 = vsubq_f32(a7, v10);
  v29.i32[2] = 0;
  v29.i64[0] = 0;
  v28.i32[2] = 0;
  v28.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v29, &v28, v23);
  v29 = vmulq_f32(v29, vdupq_n_s32(0x3E4CCCCDu));
  v19 = vaddq_f32(v27, vmulq_f32(v23, vdupq_n_s32(0xBE99999A)));
  v20 = vaddq_f32(v19, v29);
  v21 = vsubq_f32(v19, v29);
  v30.i64[0] = v25.i64[0];
  v30.i32[2] = v25.i32[2];
  *&v31 = v27.i64[0];
  DWORD2(v31) = v27.i32[2];
  DWORD2(v32) = v20.i32[2];
  *&v32 = v20.i64[0];
  *&v33 = v21.i64[0];
  DWORD2(v33) = v21.i32[2];
  v30.i32[3] = ((a3[3] * 255.0) << 24) | ((fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
  HIDWORD(v31) = ((a4[3] * 255.0) << 24) | ((fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a4, 0.0), 1.0) * 255.0);
  __appendVerticesAndIndices(a1, &v30, 4u, word_21C2A3C1C, 6u, a5, 1);
  return result;
}

void C3DAuthoringEnvironmentAppendDebugSegment2(uint64_t *a1, uint64_t a2, float *a3, float *a4, int a5, float32x4_t a6, __n128 a7)
{
  if (a5)
  {
    v11 = 68;
  }

  else
  {
    v11 = 49;
  }

  __createGLInfoIfNeeded(a1, &a1[v11]);

  __appendSegment(a1, a2, a3, a4, &a1[v11], a6, a7);
}

__n128 C3DAuthoringEnvironmentAppendDebugBoundingBox(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1688) > 0.0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = a2[1];
    v19 = *a2;
    v20 = v8;
    Identity = a3;
    if (!a3)
    {
      Identity = C3DMatrix4x4GetIdentity();
    }

    v10 = *(Identity + 16);
    v21 = *Identity;
    v22 = v10;
    v11 = *(Identity + 48);
    v23 = *(Identity + 32);
    v24 = v11;
    v25 = *a4;
    __appendTimedRecord(a1, 4, &v19, 0x70uLL);
  }

  __createGLInfoIfNeeded(a1, a1 + 392);
  v12 = a2[1];
  v13 = vsubq_f32(*a2, v12);
  v14 = vaddq_f32(v12, v12);
  v15 = vdupq_laneq_s32(v14, 3);
  v15.i32[0] = v14.i32[0];
  v19 = v13;
  v20 = vaddq_f32(v13, v15);
  v21 = vaddq_f32(v13, vextq_s8(v14, vuzp2q_s32(v14, v14), 0xCuLL));
  v22 = vaddq_f32(v15, v21);
  v16 = vzip2q_s32(v14, v14);
  v17 = vextq_s8(v16, v16, 8uLL);
  v23 = vaddq_f32(v13, v17);
  v24 = vaddq_f32(v17, v20);
  v25 = vaddq_f32(v17, v21);
  v26 = vaddq_f32(v17, v22);
  __appendAsymetricBox(a1, &v19, a3, a4, a1 + 392);
  return result;
}

__n128 __appendBox(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float *a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v6 = vsubq_f32(*a2, v5);
  v7 = vaddq_f32(v5, v5);
  v8 = vdupq_laneq_s32(v7, 3);
  v8.i32[0] = v7.i32[0];
  v12 = v6;
  v13 = vaddq_f32(v6, v8);
  v14 = vaddq_f32(v6, vextq_s8(v7, vuzp2q_s32(v7, v7), 0xCuLL));
  v15 = vaddq_f32(v8, v14);
  v9 = vzip2q_s32(v7, v7);
  v10 = vextq_s8(v9, v9, 8uLL);
  v16 = vaddq_f32(v6, v10);
  v17 = vaddq_f32(v10, v13);
  v18 = vaddq_f32(v10, v14);
  v19 = vaddq_f32(v10, v15);
  __appendAsymetricBox(a1, &v12, a3, a4, a5);
  return result;
}

double C3DAuthoringEnvironmentAppendDebugFrustum(uint64_t *a1, float32x4_t *a2, int32x4_t *a3, float *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  __createGLInfoIfNeeded(a1, (a1 + 49));
  if (a3)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = a2[3];
    v54 = a2[2];
    v55 = v10;
    v11 = a2[5];
    v56 = a2[4];
    v57 = v11;
    v12 = vzip1q_s32(v6, v8);
    v13 = vzip2q_s32(v6, v8);
    v14 = vzip1q_s32(v7, v9);
    v15 = vzip2q_s32(v7, v9);
    v61.columns[0] = vzip1q_s32(v12, v14);
    v61.columns[1] = vzip2q_s32(v12, v14);
    v61.columns[2] = vzip1q_s32(v13, v15);
    v61.columns[3] = vzip2q_s32(v13, v15);
    v16 = a2[1];
    v52 = *a2;
    v53 = v16;
    v62 = __invert_f4(v61);
    for (i = 0; i != 96; i += 16)
    {
      *(&v52 + i) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62.columns[0], COERCE_FLOAT(*(&v52 + i))), v62.columns[1], *&v52.f32[i / 4], 1), v62.columns[2], *(&v52 + i), 2), v62.columns[3], *(&v52 + i), 3);
    }

    v18 = v53;
    v19 = v54;
    v48 = v52;
    v50 = v55;
    v21 = v56;
    v20 = v57;
  }

  else
  {
    v18 = a2[1];
    v19 = a2[2];
    v48 = *a2;
    v50 = a2[3];
    v21 = a2[4];
    v20 = a2[5];
  }

  v46 = v21;
  v41 = v20;
  v43 = v18;
  v44 = v19;
  v22 = v20;
  v23 = v19;
  v24 = v18;
  scn_plane_intersect_3_planes(v20.i64[0], v20.i64[1], v19.i64[0], v19.i64[1], v18.i64[0], v18.i64[1], &v52);
  scn_plane_intersect_3_planes(v22.i64[0], v22.i64[1], v48.i64[0], v48.i64[1], v23.i64[0], v23.i64[1], &v53);
  scn_plane_intersect_3_planes(v22.i64[0], v22.i64[1], v24.i64[0], v24.i64[1], v50.i64[0], v50.i64[1], &v54);
  scn_plane_intersect_3_planes(v22.i64[0], v22.i64[1], v50.i64[0], v50.i64[1], v48.i64[0], v48.i64[1], &v55);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v23.i64[0], v23.i64[1], v24.i64[0], v24.i64[1], &v56);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v48.i64[0], v48.i64[1], v23.i64[0], v23.i64[1], &v57);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v24.i64[0], v24.i64[1], v50.i64[0], v50.i64[1], &v58);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v50.i64[0], v50.i64[1], v48.i64[0], v48.i64[1], &v59);
  v25 = a1;
  v26 = a4;
  __appendAsymetricBox(a1, &v52, 0, a4, (a1 + 49));
  v27 = vsubq_f32(v52, v59);
  v28 = vmulq_f32(v27, v27);
  v51 = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32)) * 0.05;
  v29.i64[0] = 0x3F0000003F000000;
  v29.i64[1] = 0x3F0000003F000000;
  v30 = vmulq_f32(vaddq_f32(v52, v55), v29);
  v38 = vmulq_f32(vaddq_f32(v59, v56), v29);
  __appendRay(v25, 0, v26, v26, v25 + 392, v30, vmlaq_n_f32(v30, v41, v51));
  __appendRay(v25, 0, v26, v26, v25 + 392, v38, vmlaq_n_f32(v38, v46, v51));
  v31.i64[0] = 0x3F0000003F000000;
  v31.i64[1] = 0x3F0000003F000000;
  v37 = vmulq_f32(vaddq_f32(v55, v59), v31);
  v39 = vmulq_f32(vaddq_f32(v54, v58), v31);
  v47 = vmulq_f32(vaddq_f32(v52, v56), v31);
  v42 = vmulq_f32(vaddq_f32(v53, v57), v31);
  v32 = vmulq_f32(vaddq_f32(v39, v47), v31);
  v36 = vmulq_f32(vaddq_f32(v37, v42), v31);
  __appendRay(v25, 0, v26, v26, v25 + 392, v32, vmlaq_n_f32(v32, v43, v51));
  __appendRay(v25, 0, v26, v26, v25 + 392, v36, vmlaq_n_f32(v36, v48, v51));
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  v34 = vmulq_f32(vaddq_f32(v39, v37), v33);
  v49 = vmulq_f32(vaddq_f32(v47, v42), v33);
  __appendRay(v25, 0, v26, v26, v25 + 392, v34, vmlaq_n_f32(v34, v50, v51));
  *&result = __appendRay(v25, 0, v26, v26, v25 + 392, v49, vmlaq_n_f32(v49, v44, v51)).n128_u64[0];
  return result;
}

void C3DAuthoringEnvironmentAppendDebugAsymetricBox(uint64_t *a1, uint64_t a2, float32x4_t *a3, float *a4)
{
  __createGLInfoIfNeeded(a1, (a1 + 49));

  __appendAsymetricBox(a1, a2, a3, a4, (a1 + 49));
}

void __appendAsymetricBox(uint64_t a1, uint64_t a2, float32x4_t *a3, float *a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    for (i = 0; i != 128; i += 16)
    {
      *(a2 + i) = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a3[1], *(a2 + i), 1), *a3, COERCE_FLOAT(*(a2 + i))), a3[2], *(a2 + i), 2));
    }
  }

  for (j = 0; j != 128; j += 16)
  {
    v7 = *(a2 + j);
    *&v10[j] = v7;
    *&v10[j + 8] = DWORD2(v7);
  }

  v8 = ((a4[3] * 255.0) << 24) | ((fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a4, 0.0), 1.0) * 255.0);
  for (k = 12; k != 140; k += 16)
  {
    *&v10[k] = v8;
  }

  __appendVerticesAndIndices(a1, v10, 8u, word_21C2A3C28, 0x18u, a5, 1);
}

void C3DAuthoringEnvironmentAppendDebugPolyhedron(uint64_t *a1, uint64_t a2, uint64_t a3, float *a4)
{
  __createGLInfoIfNeeded(a1, (a1 + 49));
  if (C3DConvexPolyhedronGetVerticesCount(a2))
  {
    URL = C3DSceneSourceGetURL(a2);
    Library = C3DSceneSourceGetLibrary(a2);
    EdgeCount = C3DConvexPolyhedronGetEdgeCount(a2);
    if (EdgeCount >= 1)
    {
      v11 = EdgeCount;
      v12 = (Library + 4);
      do
      {
        __appendSegment(a1, a3, a4, a4, (a1 + 49), *(URL + 16 * *(v12 - 1)), *(URL + 16 * *v12));
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }
}

void C3DAuthoringEnvironmentAppendDebugNode(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v6 = (a1 + 65704);
  if ((*(a1 + 65705) & 8) != 0)
  {
    Skinner = C3DNodeGetSkinner(a2);
    if (Skinner)
    {
      v8 = Skinner;
      C3DNodeGetWorldMatrix(a2);
      C3DSizeForScreenSpaceSizeAndTransform(*(a1 + 8));
      C3DSkinnerAppendDebugBones(v8, a1, a2, v9);
    }
  }

  if ((v6[1] & 0x40) != 0)
  {
    C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases(a1, a2);
  }

  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8));
  [(SCNMTLRenderContext *)RenderContext authoring_drawDeformersForNode:a2 authoringEnvironment:a1];
  if (*v6)
  {
    v11 = C3DNodeGetSkinner(a2);
    if (v11)
    {
      C3DSkinnerAppendDebugBoundingBoxes(v11, a1, a2);
    }

    if ((*(a3 + 72) & 7) == 2)
    {
      WorldBoundingBox = C3DParticleSystemInstanceGetWorldBoundingBox(*(a3 + 48));
      v27 = v12;
      v25 = 0uLL;
      C3DColor4Make(&v25, 1.0, 0.9, 0.9, 1.0);
      v13 = a1;
      v14 = 0;
    }

    else
    {
      IsAlwaysRendered = C3DNodeIsAlwaysRendered(a2);
      WorldBoundingBox = 0u;
      v27 = 0u;
      if (!C3DNodeComputeHierarchicalBoundingBox(a2, 1, &WorldBoundingBox))
      {
        goto LABEL_16;
      }

      WorldMatrix = C3DNodeGetWorldMatrix(a2);
      v25 = 0uLL;
      v17 = 0.0;
      if (!IsAlwaysRendered)
      {
        v17 = 1.0;
      }

      C3DColor4Make(&v25, 1.0, v17, 0.9, 1.0);
      v13 = a1;
      v14 = WorldMatrix;
    }

    C3DAuthoringEnvironmentAppendDebugBoundingBox(v13, &WorldBoundingBox, v14, &v25);
  }

LABEL_16:
  v18 = *v6;
  if ((*v6 & 2) != 0)
  {
    v19 = C3DNodeIsAlwaysRendered(a2);
    WorldBoundingBox = 0uLL;
    if (C3DGetBoundingSphere(a2, 1, &WorldBoundingBox))
    {
      v20 = C3DNodeGetWorldMatrix(a2);
      v25 = 0uLL;
      v21 = 0.0;
      if (!v19)
      {
        v21 = 1.0;
      }

      C3DColor4Make(&v25, 1.0, v21, 0.9, 1.0);
      C3DAuthoringEnvironmentAppendDebugBoundingSphere(a1, WorldBoundingBox.n128_i64[0], WorldBoundingBox.n128_i64[1], v20, &v25);
    }

    v18 = *v6;
  }

  if ((v18 & 0x400) != 0)
  {
    v22 = C3DNodeGetWorldMatrix(a2);
    Geometry = C3DNodeGetGeometry(a2);
    if (Geometry)
    {
      Mesh = C3DGeometryGetMesh(Geometry);
      if (Mesh)
      {
        C3DAuthoringEnvironmentAppendWireframeMesh(a1, Mesh, 0, v22);
      }
    }
  }
}

uint64_t C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases(uint64_t a1, float32x4_t *a2)
{
  result = C3DNodeGetGeometry(a2);
  if (result)
  {
    v5 = result;
    result = C3DGeometryGetMesh(result);
    if (result)
    {
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(result, 0, 0, 0);
      v7 = *(a1 + 8);
      WorldMatrix = C3DNodeGetWorldMatrix(a2);
      v38 = WorldMatrix[1];
      v40 = *WorldMatrix;
      v34 = WorldMatrix[3];
      v36 = WorldMatrix[2];
      Skinner = C3DNodeGetSkinner(a2);
      if (Skinner)
      {
        v10 = Skinner;
        EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(Skinner, v5);
        *v12.i64 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v10, EffectiveCalculationMode, v40, v38, v36, v34);
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
      }

      else
      {
        v15 = v38;
        v13 = v40;
        v19 = v34;
        v17 = v36;
      }

      v39 = v15;
      v41 = v13;
      v35 = v19;
      v37 = v17;
      C3DSizeForScreenSpaceSizeAndTransform(v7);
      v21 = v20;
      if (C3DGeometryOsdGetWantsGPUSubdivision(v5))
      {
        Matrix4x4 = C3DEngineContextGetMatrix4x4(v7, 1);
        v23 = C3DEngineContextGetMatrix4x4(v7, 0);
        v24 = 0;
        v25 = *Matrix4x4;
        v26 = Matrix4x4[1];
        v27 = Matrix4x4[2];
        v28 = Matrix4x4[3];
        v57 = v41;
        v58 = v39;
        v59 = v37;
        v60 = v35;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        do
        {
          *(&v61 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v57 + v24))), v26, v57.n128_u64[v24 / 8], 1), v27, *(&v57 + v24), 2), v28, *(&v57 + v24), 3);
          v24 += 16;
        }

        while (v24 != 64);
        v29 = 0;
        v30 = *v23;
        v31 = v23[1];
        v32 = v23[2];
        v33 = v23[3];
        v57 = v61;
        v58 = v62;
        v59 = v63;
        v60 = v64;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        do
        {
          *(&v61 + v29) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v57 + v29))), v31, v57.n128_u64[v29 / 8], 1), v32, *(&v57 + v29), 2), v33, *(&v57 + v29), 3);
          v29 += 16;
        }

        while (v29 != 64);
        C3DGeometryOpenSubdivGPUDrawAuthoringEnvironment(a1, v5, v61, v62, v63, v64);
      }

      else
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke;
        v50[3] = &__block_descriptor_112_e14_v20__0I8I12f16l;
        v55 = SourceWithSemanticAtIndex;
        v56 = a1;
        v51 = v41;
        v52 = v39;
        v53 = v37;
        v54 = v35;
        C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases(v5, v50);
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke_2;
      v42[3] = &__block_descriptor_116_e11_v16__0I8f12l;
      v49 = v21;
      v47 = SourceWithSemanticAtIndex;
      v48 = a1;
      v43 = v41;
      v44 = v39;
      v45 = v37;
      v46 = v35;
      return C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCorners(v5, v42);
    }
  }

  return result;
}

uint64_t C3DAuthoringEnvironmentGetProgramDerivedFromVertexDescriptor(uint64_t a1, void *a2)
{
  if ([objc_msgSend(objc_msgSend(a2 "attributes")])
  {
    result = *(a1 + 40);
    if (!result)
    {
      result = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorColorOnly_vert", @"ManipulatorColorOnly_frag");
      *(a1 + 40) = result;
    }
  }

  else
  {
    result = *(a1 + 32);
    if (!result)
    {
      result = C3DFXMetalProgramCreateFromDefaultLibrary(@"Manipulator_vert", @"Manipulator_frag");
      *(a1 + 32) = result;
    }
  }

  return result;
}

void C3DAuthoringEnvironmentDrawPrimitives(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, void *a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, char a14)
{
  *v29 = a7;
  *&v25[16] = a10;
  *&v25[32] = a11;
  *v25 = a9;
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8));
  ProgramDerivedFromVertexDescriptor = C3DAuthoringEnvironmentGetProgramDerivedFromVertexDescriptor(a1, a8);
  if (a14)
  {
    v23 = *(a1 + 1608);
  }

  else
  {
    v23 = 0;
  }

  *&v29[4] = *v25;
  *&v29[12] = *&v25[16];
  v24 = C3DBlendStatesDefaultOver();
  [(SCNMTLRenderContext *)RenderContext authoring_drawPrimitives:a2 vertexCount:a3 instanceCount:1 vertexBuffers:a4 offsets:a5 range:a6 vertexDescriptor:*v29 withProgram:a8 uniforms:ProgramDerivedFromVertexDescriptor uniformsLength:&v29[4] rasterizerStates:&v29[4] >> 32 blendStates:80, v23, v24, *v25, *&v25[8], *&v25[24], *&v25[40], a12.n128_i64[0], a12.n128_i16[4], a12.n128_i8[10], a12.n128_i8[11], a12.n128_i32[3], a13.n128_i64[0], a13.n128_i64[1], v28, *v29, *&v29[8], *&v25[24], *&v25[32], *&v25[40], a12.n128_i64[0], a12.n128_i64[1], a13.n128_i64[0], a13.n128_i64[1], v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41];
}

void __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3, float a4)
{
  *v7.i64 = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 96), a2);
  v11 = v7;
  *v8.i64 = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 96), a3);
  v10 = v8;
  v12[0] = C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(a4);
  v12[1] = v9;
  C3DAuthoringEnvironmentAppendDebugSegment(*(a1 + 104), a1 + 32, v12, 0, v11, v10);
}

void __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke_2(float32x4_t *a1, unsigned int a2, float a3)
{
  *&v5 = C3DMeshSourceGetValueAtIndexAsVector3(a1[6].i64[0], a2);
  v7 = v5;
  *&v8 = C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(a3);
  *(&v8 + 1) = v6;
  C3DAuthoringEnvironmentAppendDebugBoundingSphere(a1[6].i64[1], v7 | (DWORD1(v7) << 32), DWORD2(v7) | (a1[7].u32[0] << 32), a1 + 2, &v8);
}

uint64_t C3DAuthoringEnvironmentAppendDebugNodeAttributes(uint64_t a1, float32x4_t *a2)
{
  objc_sync_enter(a1);
  v4 = [SCNNode nodeWithNodeRef:a2];
  v5 = [objc_msgSend(a1 "selectedItems")];
  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(a1 + 65704);
  }

  WorldMatrix = C3DNodeGetWorldMatrix(a2);
  *(v124.n128_u64 + 4) = 0;
  v124.n128_u32[0] = 0;
  C3DMatrix4x4GetTranslation(WorldMatrix, &v124);
  *(v123.i64 + 4) = 0;
  v123.i32[0] = 0;
  C3DMatrix4x4GetScale(WorldMatrix, &v123);
  C3DSizeForScreenSpaceSizeAndTransform(*(a1 + 8));
  v102 = v8;
  if (*&v8 > 0.0)
  {
    [*(a1 + 65800) addObject:{+[SCNNodeManipulableItem nodeManipulatorItemWithNode:screenSize:](SCNNodeManipulableItem, "nodeManipulatorItemWithNode:screenSize:", v4, 0.0)}];
    if (v6)
    {
      __createGLInfoIfNeeded(a1, a1 + 392);
      __createGLInfoIfNeeded(a1, a1 + 848);
      __createGLInfoIfNeeded(a1, a1 + 696);
      __createGLInfoIfNeeded(a1, a1 + 1304);
      v101 = v5;
      *(&v9 + 1) = *(&v102 + 1);
      *&v9 = *&v102;
      v100 = v9;
      if ((v6 & 0x80) != 0)
      {
        if (C3DNodeGetHasPhysicsField(a2))
        {
          v10 = C3DGetScene(a2);
          v11 = [C3DSceneGetPhysicsWorld(v10 0)];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 isActive];
            v14 = &C3DAuthoringEnvironmentColorPaleBlue;
            if (v5)
            {
              v14 = &C3DAuthoringEnvironmentColorPink;
            }

            if (v13)
            {
              v15 = v14;
            }

            else
            {
              v15 = &C3DAuthoringEnvironmentColorGrayMedium;
            }

            [v12 halfExtent];
            if (*&v16 != 3.4028e38)
            {
              if ([v12 usesEllipsoidalExtent])
              {
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                [v12 halfExtent];
                DWORD1(v18) = v17;
                DWORD2(v18) = v19;
                v118[0] = v18;
                C3DMatrix4x4MakeScale(&v119, v118);
                C3DMatrix4x4Mult(&v119, WorldMatrix, &v119);
                if (v5)
                {
                  v20 = 7;
                }

                else
                {
                  v20 = 3;
                }

                __appendSphereWithSubdivisionCount(a1, 0, 0x3F80000000000000, &v119, v15, a1 + 392, v20);
              }

              else
              {
                [v12 halfExtent];
                v23.i64[0] = __PAIR64__(v22, v21);
                v23.i64[1] = v24;
                v119 = xmmword_21C27F610;
                v120 = v23;
                *&v16 = __appendBox(a1, &v119, WorldMatrix, v15, a1 + 392).n128_u64[0];
              }
            }

            [v12 offset];
            v105 = v25;
            v107 = v27;
            v109 = v26;
            v111 = -*&v102;
            if ([v12 supportsOffset])
            {
              v28 = v109;
              v28.n128_u32[1] = v105;
              v28.n128_u32[2] = v107;
              v29 = v28;
              v29.f32[0] = v109.n128_f32[0] + (v111 * 0.5);
              v28.n128_f32[0] = v109.n128_f32[0] + (*&v102 * 0.5);
              __appendSegment(a1, WorldMatrix, v15, v15, a1 + 392, v29, v28);
              [v12 offset];
              v32.n128_u64[0] = __PAIR64__(LODWORD(v31), v30);
              v32.n128_u32[2] = v33;
              v34 = v32;
              v34.f32[1] = v31 + (v111 * 0.5);
              v32.n128_f32[1] = v31 + (*&v102 * 0.5);
              __appendSegment(a1, WorldMatrix, v15, v15, a1 + 392, v34, v32);
              [v12 offset];
              v37.n128_u64[0] = __PAIR64__(v36, v35);
              v37.n128_f32[2] = v38;
              v39 = v37;
              v39.f32[2] = v38 + (v111 * 0.5);
              v37.n128_f32[2] = v38 + (*&v102 * 0.5);
              __appendSegment(a1, WorldMatrix, v15, v15, a1 + 392, v39, v37);
            }

            __appendSegment(a1, WorldMatrix, v15, v15, a1 + 392, LODWORD(v111), v102);
            LODWORD(v40) = 0;
            *(&v40 + 1) = -*&v102;
            LODWORD(v41) = 0;
            HIDWORD(v41) = v102;
            __appendSegment(a1, WorldMatrix, v15, v15, a1 + 392, v40, v41);
            v42.n128_u64[0] = 0;
            v43.i64[0] = 0;
            v43.i64[1] = LODWORD(v111);
            v42.n128_u64[1] = v102;
            __appendSegment(a1, WorldMatrix, v15, v15, a1 + 392, v43, v42);
            [*(a1 + 65800) addObject:{+[SCNNodeManipulableItem nodeManipulatorItemWithNode:screenSize:](SCNNodeManipulableItem, "nodeManipulatorItemWithNode:screenSize:", v4, *&v100)}];
            if ([v12 supportsDirection])
            {
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              memset(v118, 0, sizeof(v118));
              memset(v117, 0, sizeof(v117));
              [v12 offset];
              v45.n128_u32[1] = v44;
              v45.n128_u32[2] = v46;
              v116 = v45;
              v45.n128_u64[0] = 0x3F0000003F000000;
              v45.n128_u64[1] = 0x3F0000003F000000;
              v115 = v45;
              [v12 direction];
              v48.i32[1] = v47;
              v48.i32[2] = v49;
              v50 = vmulq_f32(v48, v48);
              *&v51 = v50.f32[2] + vaddv_f32(*v50.f32);
              *v50.f32 = vrsqrte_f32(v51);
              *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
              AxisAngleRotationBetweenVectors = C3DVector4GetAxisAngleRotationBetweenVectors(xmmword_21C27F900, vmulq_n_f32(v48, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]));
              C3DMatrix4x4MakeAxisAngleRotation(v117, &AxisAngleRotationBetweenVectors, AxisAngleRotationBetweenVectors.n128_f32[3]);
              C3DMatrix4x4MakeScale(v118, &v115);
              C3DMatrix4x4MakeTranslation(&v119, &v116);
              memset(v113, 0, sizeof(v113));
              C3DMatrix4x4Mult(v117, WorldMatrix, v113);
              C3DMatrix4x4Mult(v118, v113, v113);
              C3DMatrix4x4Mult(v113, &v119, v113);
              __createGLInfoIfNeeded(a1, a1 + 392);
              __appendSegment(a1, v113, v15, v15, a1 + 392, 0, xmmword_21C27F600);
            }

            if ([v12 isActive])
            {
              +[SCNPhysicsField _displayScaleFactor];
              v53 = v52;
              [v12 halfExtent];
              v54 = 0;
              v56 = v55;
              v56.i32[1] = v57;
              v56.i32[2] = v58;
              v59.i32[0] = 2139095039;
              __asm { FMOV            V5.4S, #10.0 }

              v65 = _Q5;
              v65.i32[1] = v57;
              v65.i32[2] = v58;
              v66 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v55, v59), 0), v65, v56);
              v67 = _Q5;
              v67.i32[0] = v66.i32[0];
              v67.i32[2] = v66.i32[2];
              v68 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(vdupq_lane_s32(*v66.i8, 1), v59), 0), v67, v66);
              v69 = v53 * 0.1;
              v104 = v69;
              _Q5.i64[0] = v68.i64[0];
              v108 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(vdupq_laneq_s32(v68, 2), v59), 0), _Q5, v68);
              v70 = vdupq_n_s32(0x3F7FF972u);
              v106 = v70;
              do
              {
                v71 = 0;
                *v70.i32 = ((2 * v54) / 9.0) + -1.0;
                v103 = v70;
                do
                {
                  v72 = 0;
                  v73 = v103;
                  v73.f32[1] = ((2 * v71) / 9.0) + -1.0;
                  v73.i32[2] = v103.i32[2];
                  v110 = v73;
                  do
                  {
                    v74 = v110;
                    v74.f32[2] = (v72 / 9.0) + -1.0;
                    v75 = *WorldMatrix;
                    v76 = WorldMatrix[1];
                    v77 = WorldMatrix[3];
                    v121 = WorldMatrix[2];
                    v122 = v77;
                    v119 = v75;
                    v120 = v76;
                    *v78.i64 = C3DVector3MultMatrix4x4(&v119, vmulq_f32(vmulq_f32(v108, v74), v106));
                    LODWORD(v79) = v78.i32[1];
                    LODWORD(v80) = v78.i32[2];
                    v112 = v78;
                    [v12 evalAtLocation:{*v78.i64, v79, v80}];
                    v82.i32[1] = v81;
                    v82.i32[2] = v83;
                    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorPaleGreen, C3DAuthoringEnvironmentColorYellow, a1 + 392, v112, vaddq_f32(v112, vmulq_n_f32(v82, v104)));
                    v72 += 2;
                  }

                  while (v72 != 20);
                  ++v71;
                }

                while (v71 != 10);
                ++v54;
              }

              while (v54 != 10);
            }
          }
        }
      }

      if ((v6 & 0x28) != 0)
      {
        ParticleSystems = C3DNodeGetParticleSystems(a2);
        if (ParticleSystems)
        {
          Count = CFArrayGetCount(ParticleSystems);
          if ((v6 & 0x20) != 0 && Count >= 1)
          {
            [*(a1 + 65800) addObject:{+[SCNNodeManipulableItem nodeManipulatorItemWithNode:screenSize:](SCNNodeManipulableItem, "nodeManipulatorItemWithNode:screenSize:", v4, *&v100 * 0.75)}];
            v86 = -*&v102;
            *&v87 = v86 * 0.03;
            v88 = v87;
            v89 = COERCE_UNSIGNED_INT(*&v102 * 0.2);
            v90 = vcvt_f32_f64(vmulq_n_f64(xmmword_21C2A39C0, *&v100));
            if (v101)
            {
              v91 = &C3DAuthoringEnvironmentColorPink;
            }

            else
            {
              v91 = &C3DAuthoringEnvironmentColorGrayMedium;
            }

            __appendSphereWithSubdivisionCount(a1, v88 | (v90.u32[1] << 32), v90.u32[0] | (v89 << 32), WorldMatrix, v91, a1 + 392, 3u);
            v92 = v89 << 32;
            *&v93 = v86 * 0.2;
            *&v94 = v86 * 0.23;
            *&v95 = *&v100 * 0.37;
            v96 = v94;
            __appendSphereWithSubdivisionCount(a1, v93 | (v94 << 32), v95 | v92, WorldMatrix, v91, a1 + 392, 3u);
            *&v97 = *&v100 * 0.3;
            *&v98 = v86 * 0.37;
            __appendSphereWithSubdivisionCount(a1, v97 | (v96 << 32), v98 | v92, WorldMatrix, v91, a1 + 392, 3u);
          }
        }
      }
    }
  }

  return objc_sync_exit(a1);
}

void __appendSphereWithSubdivisionCount(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v85 = *MEMORY[0x277D85DE8];
  v10 = 48 * a7;
  v11 = (MEMORY[0x28223BE20])();
  v12 = &v75[-16 * v10];
  v14 = *(v13 + 48);
  v15 = MEMORY[0x28223BE20](v11);
  v20 = &v75[-2 * v19];
  if (v21)
  {
    v77 = &v75[-2 * v19];
    v78 = v19;
    v79 = v15;
    v80 = a6;
    v22 = 0;
    v23 = ((v18[3] * 255.0) << 24) | ((fminf(fmaxf(v18[2], 0.0), 1.0) * 255.0) << 16);
    v76 = 2 * a7;
    v24.i64[0] = v16;
    v24.i64[1] = v17;
    v25 = v23 | ((fminf(fmaxf(v18[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*v18, 0.0), 1.0) * 255.0);
    v83 = v24;
    v82 = vdupq_laneq_s32(v24, 3);
    v26 = v12 + 396;
    v27 = &v75[-16 * v10];
    do
    {
      v28 = v26;
      v29 = ++v22 * 3.14159265 / (a7 + 1);
      v31 = __sincosf_stret(v29);
      *&v30 = v31.__cosval;
      v81 = v30;
      v32 = 0;
      v33 = 0.0;
      do
      {
        v34 = __sincosf_stret(v33);
        v35.f32[0] = v31.__sinval * v34.__cosval;
        v35.i32[1] = v81;
        v35.f32[2] = v31.__sinval * v34.__sinval;
        v36 = &v27[v32];
        v37 = vmlaq_f32(v83, v35, v82);
        *v36 = v37.i64[0];
        *&v27[v32 + 8] = v37.i32[2];
        *(v36 + 3) = v25;
        v33 = v33 + 0.2618;
        v32 += 16;
      }

      while (v32 != 384);
      v27 += 384;
      v26 = v28 + 96;
    }

    while (v22 != a7);
    v38 = 0;
    v39 = 0.0;
    do
    {
      v40 = v39 * 3.14159265 / a7;
      v41 = __sincosf_stret(v40);
      v42 = 0.0;
      v43 = 24;
      v44 = v28;
      do
      {
        v45 = __sincosf_stret(v42);
        v46.f32[0] = v41.__cosval * v45.__cosval;
        v46.i32[1] = LODWORD(v45.__sinval);
        v46.f32[2] = v41.__sinval * v45.__cosval;
        v47 = vmlaq_f32(v83, v46, v82);
        *(v44 - 3) = v47.i64[0];
        *(v44 - 1) = v47.i32[2];
        *v44 = v25;
        v44 += 4;
        v42 = v42 + 0.2618;
        --v43;
      }

      while (v43);
      v39 = v39 + 1.0;
      ++v38;
      v28 += 96;
    }

    while (v38 != a7);
    a6 = v80;
    if (a4)
    {
      if (v10 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v10;
      }

      v49 = v12 + 8;
      do
      {
        v47.i64[0] = *(v49 - 1);
        v47.i32[2] = *v49;
        v50 = a4[1];
        v84[0] = *a4;
        v84[1] = v50;
        v51 = a4[3];
        v84[2] = a4[2];
        v84[3] = v51;
        *(v49 - 1) = C3DVector3MultMatrix4x4(v84, v47);
        *v49 = v47.i32[2];
        v49 += 4;
        --v48;
      }

      while (v48);
      v14 = *(a6 + 48);
    }

    v52 = v76;
    if (v76 <= 1)
    {
      v52 = 1;
    }

    if (v14)
    {
      v53 = 0;
      v54.i64[0] = 0x100000001;
      v54.i64[1] = 0x100000001;
      v55.i64[0] = 0x1800000018;
      v55.i64[1] = 0x1800000018;
      v56.i64[0] = 0x800000008;
      v56.i64[1] = 0x800000008;
      v20 = v77;
      v57 = v77;
      v15 = v79;
      LODWORD(v19) = v78;
      do
      {
        v58 = 0;
        v59 = vdupq_lane_s32(v53, 1);
        v60 = xmmword_21C280330;
        v61 = xmmword_21C2A27F0;
        do
        {
          v62 = &v57[v58];
          v86.val[0] = vuzp1q_s16(vaddq_s32(v60, v59), vaddq_s32(v61, v59));
          v63 = vaddq_s32(v61, v54);
          v64 = vaddq_s32(v60, v54);
          v86.val[1] = vuzp1q_s16(vaddq_s32(vbicq_s8(v64, vceqq_s32(v64, v55)), v59), vaddq_s32(vbicq_s8(v63, vceqq_s32(v63, v55)), v59));
          vst2q_s16(v62, v86);
          v60 = vaddq_s32(v60, v56);
          v61 = vaddq_s32(v61, v56);
          v58 += 16;
        }

        while (v58 != 48);
        v53 = vadd_s32(v53, 0x1800000001);
        v57 += 48;
      }

      while (v53.i32[0] != v52);
    }

    else
    {
      v65 = 0;
      v66 = 0;
      v20 = v77;
      v67 = v77;
      v15 = v79;
      LODWORD(v19) = v78;
      do
      {
        v68 = 0;
        do
        {
          v69 = v66 + v68;
          *v67 = v66 + v68;
          if (v68 == 23)
          {
            v70 = 0;
          }

          else
          {
            v70 = v68 + 1;
          }

          v71 = v68 + 1;
          v72 = v70 + v66;
          v73 = v67 + 3;
          v74 = v69 >= v10 || v72 >= v10;
          v67[1] = v72;
          v67[2] = (v69 + 24) % v10;
          if (v74)
          {
            ++v66;
          }

          v68 = v71;
          v67 += 3;
        }

        while (v71 != 24);
        v66 += 24;
        ++v65;
        v67 = v73;
      }

      while (v65 != v52);
    }
  }

  __appendVerticesAndIndices(v15, &v75[-16 * v10], v10, v20, v19, a6, 1);
}

void C3DAuthoringEnvironmentAppendDebugCone(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, int a6, float a7, float32_t a8)
{
  if (a6)
  {
    v15 = 68;
  }

  else
  {
    v15 = 49;
  }

  __createGLInfoIfNeeded(a1, &a1[v15]);
  *&v16 = a7;
  v17.f32[0] = a8;

  __appendCone(a1, v16, v17, a2, a3, a4, a5, &a1[v15]);
}

void __appendCone(uint64_t a1, double a2, float32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, uint64_t a8)
{
  v54 = a3;
  v62 = *MEMORY[0x277D85DE8];
  if (*(a8 + 48))
  {
    v12 = 51;
  }

  else
  {
    v12 = 52;
  }

  MEMORY[0x28223BE20](a1);
  v13 = &v53.f32[-4 * v12];
  v15 = *v14;
  v17 = *v16;
  v56 = vmlaq_n_f32(*v14, *v16, v18);
  if (v19)
  {
    v55 = v17;
    v20 = *(a6 + 16);
    v58 = *a6;
    v59 = v20;
    v21 = *(a6 + 48);
    v60 = *(a6 + 32);
    v61 = v21;
    *v22.i64 = C3DVector3MultMatrix4x4(&v58, v15);
    v53 = v22;
    v23 = *(a6 + 16);
    v58 = *a6;
    v59 = v23;
    v24 = *(a6 + 48);
    v60 = *(a6 + 32);
    v61 = v24;
    *v25.i64 = C3DVector3Rotate(&v58, v55);
    v55 = v25;
    v26 = *(a6 + 16);
    v58 = *a6;
    v59 = v26;
    v27 = *(a6 + 48);
    v60 = *(a6 + 32);
    v61 = v27;
    *v28.i64 = C3DVector3MultMatrix4x4(&v58, v56);
    v17 = v55;
    v56 = v28;
  }

  else
  {
    v53 = v15;
  }

  v58.i32[2] = 0;
  v58.i64[0] = 0;
  v57.i32[2] = 0;
  v57.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v58, &v57, v17);
  v29 = 0;
  v30 = vmulq_n_f32(v58, v54.f32[0]);
  v31 = 0.0;
  v32 = *a7;
  v33 = (fminf(fmaxf(a7[1], 0.0), 1.0) * 255.0);
  v34 = ((a7[3] * 255.0) << 24) | ((fminf(fmaxf(a7[2], 0.0), 1.0) * 255.0) << 16);
  v54 = vmulq_n_f32(v57, v54.f32[0]);
  v55 = v30;
  v57 = v54;
  v58 = v30;
  v35 = v34 | (v33 << 8) | (fminf(fmaxf(v32, 0.0), 1.0) * 255.0);
  do
  {
    v37 = __sincosf_stret(v31);
    v38 = vmlaq_n_f32(vmlaq_n_f32(v56, v55, v37.__cosval), v54, v37.__sinval);
    v39 = &v13[v29];
    *v39 = v38.i64[0];
    DWORD2(v13[v29]) = v38.i32[2];
    *(v39 + 3) = v35;
    v31 = v31 + 0.12566;
    ++v29;
  }

  while (v29 != 50);
  v40 = v53.i32[2];
  *(v13 + 100) = v53.i64[0];
  *(v13 + 202) = v40;
  *(v13 + 203) = v35;
  if (!*(a8 + 48))
  {
    v41 = v56.i32[2];
    *(v13 + 102) = v56.i64[0];
    *(v13 + 206) = v41;
    *(v13 + 207) = v35;
  }

  (MEMORY[0x28223BE20])(v36);
  v45 = (&v53 - v44);
  v46 = 0;
  v47 = (&v53 - v44);
  do
  {
    while (1)
    {
      v48 = v46 == 49 ? 0 : v46 + 1;
      if (!v43)
      {
        break;
      }

      v49 = &v47->i32[1];
      v47->i16[0] = v46;
      v47->i16[1] = v48;
      ++v46;
      v47 = (v47 + 4);
      if (v46 == 50)
      {
        *v49 = xmmword_21C2A39D0;
        goto LABEL_24;
      }
    }

    v50 = &v47->i16[3];
    v47->i16[2] = v48;
    v47->i16[0] = 51;
    v47->i16[1] = v46++;
    v47 = (v47 + 6);
  }

  while (v46 != 50);
  for (i = 1; i != 51; ++i)
  {
    *v50 = 50;
    v50[1] = i - 1;
    if (i == 50)
    {
      v52 = 0;
    }

    else
    {
      v52 = i;
    }

    v50[2] = v52;
    v50 += 3;
  }

LABEL_24:
  __appendVerticesAndIndices(a1, (&v53 - v12), v12, v45, v42, a8, 1);
}

void C3DAuthoringEnvironmentAppendDebugPyramid(uint64_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float *a5, int a6, float a7, float a8)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = 68;
  }

  else
  {
    v14 = 49;
  }

  __createGLInfoIfNeeded(a1, &a1[v14]);
  v46.i32[2] = 0;
  v46.i64[0] = 0;
  v45.i32[2] = 0;
  v45.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v46, &v45, *a3);
  v15 = vmulq_n_f32(*a3, a7);
  v16 = vmlaq_n_f32(v15, vaddq_f32(v46, v45), a8 * 0.5);
  v17 = vmlaq_n_f32(v15, vsubq_f32(v46, v45), a8 * 0.5);
  v18 = vmlaq_n_f32(v15, vsubq_f32(vnegq_f32(v46), v45), a8 * 0.5);
  v19 = vmlaq_n_f32(v15, vsubq_f32(v45, v46), a8 * 0.5);
  v20 = *a2;
  if (a4)
  {
    v21 = *(a4 + 16);
    v47 = *a4;
    v48 = v21;
    v22 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v22;
    v37 = v19;
    v38 = v17;
    v40 = v16;
    v43 = v18;
    *v23.i64 = C3DVector3MultMatrix4x4(&v47, v20);
    v36 = v23;
    v24 = *(a4 + 16);
    v47 = *a4;
    v48 = v24;
    v25 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v25;
    *v26.i64 = C3DVector3MultMatrix4x4(&v47, v40);
    v41 = v26;
    v27 = *(a4 + 16);
    v47 = *a4;
    v48 = v27;
    v28 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v28;
    *v29.i64 = C3DVector3MultMatrix4x4(&v47, v38);
    v39 = v29;
    v30 = *(a4 + 16);
    v47 = *a4;
    v48 = v30;
    v31 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v31;
    *v32.i64 = C3DVector3MultMatrix4x4(&v47, v43);
    v44 = v32;
    v33 = *(a4 + 16);
    v47 = *a4;
    v48 = v33;
    v34 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v34;
    *v35.i64 = C3DVector3MultMatrix4x4(&v47, v37);
    v20 = v36;
    v17 = v39;
    v16 = v41;
    v18 = v44;
    v19 = v35;
  }

  v47.i64[0] = v20.i64[0];
  v47.i32[2] = v20.i32[2];
  DWORD2(v48) = v16.i32[2];
  *&v48 = v16.i64[0];
  *&v49 = v17.i64[0];
  DWORD2(v49) = v17.i32[2];
  *&v50 = v18.i64[0];
  DWORD2(v50) = v18.i32[2];
  v52 = v19.i32[2];
  v51 = v19.i64[0];
  v53 = ((a5[3] * 255.0) << 24) | ((fminf(fmaxf(a5[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a5[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a5, 0.0), 1.0) * 255.0);
  HIDWORD(v50) = v53;
  HIDWORD(v49) = v53;
  HIDWORD(v48) = v53;
  v47.i32[3] = v53;
  __appendVerticesAndIndices(a1, &v47, 5u, word_21C2A3C58, 0x10u, &a1[v14], 1);
}

void C3DAuthoringEnvironmentAppendDebugString(uint64_t a1, const __CFString *a2, uint64_t *a3, double a4)
{
  __createGLInfoIfNeeded(a1, a1 + 1152);
  __createAlphabetTextureIfNeeded(a1, a1 + 1456, __statisticsFont, 0, 0);
  v8 = *(a1 + 1184);
  v9 = *(a1 + 1456);
  if (v8 != v9)
  {
    if (v8)
    {
      CFRelease(*(a1 + 1184));
      *(a1 + 1184) = 0;
      v9 = *(a1 + 1456);
    }

    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *(a1 + 1184) = v9;
  }

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = C3DAuthoringEnvironmentColorWhite;
  }

  v11 = a4;
  __appendText_(a1, &v11, v10, a2, a1 + 1152, a1 + 1456, 1, 1);
}

void __createAlphabetTextureIfNeeded(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8));
  v11 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8));
  if (RendererContextGL)
  {
    ContentScaleFactor = C3DRendererContextGetContentScaleFactor(RendererContextGL);
  }

  else
  {
    ContentScaleFactor = v11;
  }

  v14 = ContentScaleFactor > 1.0;
  if (*a2)
  {
    if (*(a2 + 24) == v14)
    {
      return;
    }

    CFRelease(*a2);
    *a2 = 0;
  }

  v56 = 0;
  v54 = *MEMORY[0x277CBF3A8];
  *v55 = v54;
  if (a4)
  {
    v15 = *(a2 + 64);
    if (v15)
    {
      free(v15);
    }

    (*(a4 + 16))(a4, &v56, v55, a2 + 64);
    if (!v56)
    {
      *(a2 + 64) = 0;
      *v55 = v54;
    }
  }

  v16 = a3();
  MEMORY[0x28223BE20](Length);
  v18 = (2 * Length + 15) & 0xFFFFFFFFFFFFFFF0;
  v60.location = 0;
  v60.length = Length;
  MEMORY[0x28223BE20](v19);
  v20 = (&v55[-2] - v18);
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v16, (&v55[-2] - v18), (&v55[-2] - v18), Length);
  MEMORY[0x28223BE20](GlyphsForCharacters);
  v22 = &v55[-2 * Length - 2];
  CTFontGetAdvancesForGlyphs(v16, kCTFontOrientationHorizontal, (&v55[-2] - v18), v22, Length);
  *(a2 + 48) = malloc_type_realloc(*(a2 + 48), 8 * Length, 0x100004000313F17uLL);
  *(a2 + 40) = 0;
  BoundingBox = CTFontGetBoundingBox(v16);
  *(a2 + 56) = vcvtpd_s64_f64(BoundingBox.size.height);
  if (Length >= 1)
  {
    v23 = *(a2 + 48);
    LOWORD(v24) = *(a2 + 40);
    v25 = Length;
    do
    {
      width = v22->width;
      ++v22;
      *v23++ = width;
      v27 = ceil(width);
      if (v27 <= v24)
      {
        v27 = v24;
      }

      v24 = v27;
      --v25;
    }

    while (v25);
    *(a2 + 40) = v24;
  }

  v28 = ContentScaleFactor;
  Descent = CTFontGetDescent(v16);
  Ascent = CTFontGetAscent(v16);
  v31 = Ascent + CTFontGetDescent(v16);
  *(a2 + 32) = v31 + CTFontGetLeading(v16);
  MEMORY[0x28223BE20](v32);
  v33 = *(a2 + 40);
  if (Length >= 1)
  {
    v34 = 0;
    v35 = &v55[-2 * Length - 1];
    v36 = Length;
    do
    {
      *(v35 - 1) = v34;
      *v35 = Descent;
      v35 += 2;
      v34 += v33;
      --v36;
    }

    while (v36);
  }

  v37 = *(a2 + 56);
  v38 = ceil(v55[0]) + v33 + (Length * v33);
  v39 = ceil(v55[1]);
  if (v39 <= v37)
  {
    v40 = v37;
  }

  else
  {
    v40 = v39;
  }

  *(a2 + 8) = v38;
  *(a2 + 16) = v40;
  *(a2 + 24) = v14;
  v41 = v38 * v28;
  v42 = v40 * v28;
  v43 = vcvtms_u32_f32(v41);
  v44 = vcvtd_n_u64_f64(floorf(v41), 2uLL);
  v45 = C3DColorSpaceLinearSRGB();
  v46 = CGBitmapContextCreate(0, v43, vcvtms_u32_f32(v42), 8uLL, v44, v45, 0x4001u);
  if (v46)
  {
    v47 = v46;
    v48 = C3DColorSpaceLinearSRGB();
    CGContextSetFillColorSpace(v47, v48);
    *components = xmmword_21C2A3C78;
    v58 = unk_21C2A3C88;
    CGContextSetFillColor(v47, components);
    CGContextTranslateCTM(v47, 0.0, floorf(v42));
    CGContextScaleCTM(v47, ContentScaleFactor, -ContentScaleFactor);
    CTFontDrawGlyphs(v16, v20, &v55[-2 * Length - 2], Length, v47);
    v62.size.width = *(a2 + 40);
    v62.origin.x = v38 - v62.size.width;
    v62.size.height = *(a2 + 56);
    v62.origin.y = 0.0;
    CGContextFillRect(v47, v62);
    if (a5)
    {
      v49 = v56;
      if (v56)
      {
        v50 = Length * *(a2 + 40);
        if (v56 >= 1)
        {
          v51 = *(a2 + 64);
          do
          {
            *v51 = *v51 + v50;
            v51 += 4;
            --v49;
          }

          while (v49);
        }

        CGContextTranslateCTM(v47, v50, 0.0);
        UIGraphicsPushContext(v47);
        (*(a5 + 16))(a5, v38, v40);
        UIGraphicsPopContext();
      }
    }

    Image = CGBitmapContextCreateImage(v47);
    *a2 = C3DImageCreateWithCGImage(Image);
    CFRelease(Image);
    CFRelease(v47);
  }

  else
  {
    v53 = scn_default_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      __createAlphabetTextureIfNeeded_cold_1();
    }
  }
}

uint64_t __statisticsFont()
{
  SceneCount = C3DSceneSourceGetSceneCount();
  v1 = MEMORY[0x277D74300];
  if (SceneCount)
  {
    v2 = *MEMORY[0x277D74418];

    return [v1 monospacedSystemFontOfSize:11.0 weight:v2];
  }

  else
  {

    return [v1 fontWithName:@"Menlo" size:12.0];
  }
}

void __appendStatInfo(uint64_t a1, uint64_t *a2, const __CFString *a3, float64x2_t a4, float64_t a5, float a6)
{
  a4.f64[1] = a5;
  v16 = vcvt_f32_f64(vaddq_f64(a4, xmmword_21C2A39E0));
  C3DSceneSourcePerformConsistencyCheck(a1);
  v18 = xmmword_21C2A3AD0;
  __appendRect2D(a1, *a2, a2[1], &v18, a1 + 88, 1, v10, v11, v12, v13);
  v19 = v16;
  __appendText_(a1, &v19, &C3DAuthoringEnvironmentColorWhite, a3, a1 + 88, a1 + 1456, 1, 1);
  if (a6 > 0.000001)
  {
    v14.i32[1] = v16.i32[1];
    v14.f32[0] = v16.f32[0] + 90.0;
    v17 = v14;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%2.1fms", (a6 * 1000.0)];
    v19 = v17;
    __appendText_(a1, &v19, &C3DAuthoringEnvironmentColorWhite, v15, a1 + 88, a1 + 1456, 1, 1);
  }
}

void C3DAuthoringEnvironmentDrawStats(uint64_t a1)
{
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8));
  Viewport = C3DEngineContextGetViewport(*(a1 + 8));
  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8));
  if (RendererContextGL)
  {
    ContentScaleFactor = C3DRendererContextGetContentScaleFactor(RendererContextGL);
    glPushGroupMarkerEXT(0, "SceneKit - Draw Statistics");
  }

  else
  {
    ContentScaleFactor = [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
    [(SCNMTLRenderContext *)RenderContext pushDebugGroup:?];
  }

  DrawableSafeAreaInsets = C3DEngineContextGetDrawableSafeAreaInsets(*(a1 + 8));
  __createGLInfoIfNeeded(a1, a1 + 88);
  __createGLInfoIfNeeded(a1, a1 + 240);
  v165[0] = 0;
  v165[1] = v165;
  v165[2] = 0x3052000000;
  v165[3] = __Block_byref_object_copy__10;
  v165[4] = __Block_byref_object_dispose__10;
  v165[5] = 0;
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __C3DAuthoringEnvironmentDrawStats_block_invoke;
  v164[3] = &unk_278300800;
  v164[4] = v165;
  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = __C3DAuthoringEnvironmentDrawStats_block_invoke_2;
  v163[3] = &unk_278300828;
  v163[4] = v165;
  __createAlphabetTextureIfNeeded(a1, a1 + 1528, __statisticsBoldFont, v164, v163);
  __createAlphabetTextureIfNeeded(a1, a1 + 1456, __statisticsFont, 0, 0);
  v5 = *(a1 + 120);
  v6 = *(a1 + 1456);
  if (v5 != v6)
  {
    if (v5)
    {
      CFRelease(*(a1 + 120));
      *(a1 + 120) = 0;
      v6 = *(a1 + 1456);
    }

    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(a1 + 120) = v6;
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 128) = 0;
  }

  v8 = *(a1 + 272);
  v9 = *(a1 + 1528);
  if (v8 != v9)
  {
    if (v8)
    {
      CFRelease(*(a1 + 272));
      *(a1 + 272) = 0;
      v9 = *(a1 + 1528);
    }

    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *(a1 + 272) = v9;
  }

  v10 = *(a1 + 280);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 280) = 0;
  }

  v11 = 0.0;
  if (*(a1 + 65825) == 1)
  {
    v11 = *(a1 + 1488) * 7.0 + 14.0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [*(a1 + 16) preferredFramesPerSecond];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 60;
    }
  }

  else
  {
    v13 = 60;
  }

  v14 = DrawableSafeAreaInsets.n128_f32[1] + v11;
  v15 = Viewport.n128_f32[2] / ContentScaleFactor;
  if (*(a1 + 65825) == 1)
  {
    v162 = xmmword_21C2A3AD0;
    if (v15 < 400.0)
    {
      v16 = 225.0;
    }

    else
    {
      v16 = 280.0;
    }

    v17 = *(a1 + 66008);
    v18 = *(a1 + 66096);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [*(a1 + 16) preferredFramesPerSecond];
      if (v19)
      {
        v13 = v19;
      }

      else
      {
        v13 = 60;
      }
    }

    v20 = v17 - v18;
    if ((1.0 / v13) > v20)
    {
      v20 = 1.0 / v13;
    }

    v158 = v20;
    __appendRect2D(a1, 0x3E19999A3E19999ALL, 0x3F4000003E19999ALL, &v162, a1 + 88, 1, 0.0, 0.0, v15, v14);
    v150 = v11;
    v152 = v16;
    v149 = vadd_f32(DrawableSafeAreaInsets.n128_u64[0], vdup_n_s32(0x425C0000u));
    v21 = vcvtq_f64_f32(v149);
    v161 = xmmword_21C2A3AB0;
    v22 = v21.f64[1];
    v23 = 0.0;
    v154 = v21.f64[0];
    __appendChartArc(a1, &v161, a1 + 88, v21.f64[0], v21.f64[1], 0.0, 6.2832);
    v24 = DrawableSafeAreaInsets.n128_f32[0] + 110.0;
    v25 = *(a1 + 66040);
    if (v25 >= 0.0)
    {
      v23 = v25 * 6.28318531 / v158 + 0.0;
      v161 = xmmword_21C2A39F0;
      __appendChartArc(a1, &v161, a1 + 88, v154, v22, 0.0, v23);
      v27 = v25;
      if (v15 < 400.0)
      {
        v27 = 0.0;
      }

      v26.f64[0] = v24;
      __appendStatInfo(a1, &v161, @"Animations", v26, (DrawableSafeAreaInsets.n128_f32[1] + 80.0), v27);
    }

    v28 = *(a1 + 66024);
    if (v28 >= 0.0)
    {
      v29 = v28 * 6.28318531 / v158 + v23;
      v161 = xmmword_21C2A3A00;
      __appendChartArc(a1, &v161, a1 + 88, v154, v22, v23, v29);
      v32 = v28;
      if (v15 < 400.0)
      {
        v32 = 0.0;
      }

      v31.f64[0] = v24;
      __appendStatInfo(a1, &v161, @"Physics", v31, (DrawableSafeAreaInsets.n128_f32[1] + 60.0), v32);
    }

    else
    {
      v29 = v23;
    }

    v33 = *(a1 + 66016);
    if (v33 >= 0.0)
    {
      v34 = v33 * 6.28318531 / v158 + v29;
      v161 = xmmword_21C2A3A10;
      __appendChartArc(a1, &v161, a1 + 88, v154, v22, v29, v34);
      v36 = v33;
      if (v15 < 400.0)
      {
        v36 = 0.0;
      }

      v35.f64[0] = v24;
      __appendStatInfo(a1, &v161, @"Constraints", v35, (DrawableSafeAreaInsets.n128_f32[1] + 40.0), v36);
    }

    else
    {
      v34 = v29;
    }

    v37 = *(a1 + 66032);
    if (v37 >= 0.0)
    {
      v38 = v37 * 6.28318531 / v158 + v34;
      v161 = xmmword_21C2A3A20;
      __appendChartArc(a1, &v161, a1 + 88, v154, v22, v34, v38);
      v40 = v37;
      if (v15 < 400.0)
      {
        v40 = 0.0;
      }

      v39.f64[0] = v24;
      __appendStatInfo(a1, &v161, @"Particles", v39, (DrawableSafeAreaInsets.n128_f32[1] + 20.0), v40);
    }

    else
    {
      v38 = v34;
    }

    v41 = v152 + DrawableSafeAreaInsets.n128_f32[0];
    v42 = *(a1 + 66080);
    if (v42 >= 0.0)
    {
      v43 = v42 * 6.28318531 / v158 + v38;
      v161 = xmmword_21C2A3A30;
      __appendChartArc(a1, &v161, a1 + 88, v154, v22, v38, v43);
      v45 = v42;
      if (v15 < 400.0)
      {
        v45 = 0.0;
      }

      v44.f64[0] = v41;
      __appendStatInfo(a1, &v161, @"Delegate", v44, (DrawableSafeAreaInsets.n128_f32[1] + 80.0), v45);
    }

    else
    {
      v43 = v38;
    }

    v46 = *(a1 + 66064);
    if (v46 >= 0.0)
    {
      v47 = v46 * 6.28318531 / v158 + v43;
      v161 = xmmword_21C2A3A40;
      __appendChartArc(a1, &v161, a1 + 88, v154, v22, v43, v47);
      v49 = v46;
      if (v15 < 400.0)
      {
        v49 = 0.0;
      }

      v48.f64[0] = v41;
      __appendStatInfo(a1, &v161, @"Rendering", v48, (DrawableSafeAreaInsets.n128_f32[1] + 60.0), v49);
    }

    else
    {
      v47 = v43;
    }

    if (C3DEngineContextGetRenderContext(*(a1 + 8)))
    {
      v50 = *(a1 + 66112);
      if (v50 >= 0.0)
      {
        v51.f64[1] = 0.00781250185;
        v161 = xmmword_21C2A3A50;
        v52 = v50;
        if (v15 < 400.0)
        {
          v52 = 0.0;
        }

        v51.f64[0] = v41;
        __appendStatInfo(a1, &v161, @"GPU", v51, (DrawableSafeAreaInsets.n128_f32[1] + 40.0), v52);
      }
    }

    else
    {
      v53 = *(a1 + 66088);
      if (v53 >= 0.0)
      {
        v54 = v53 * 6.28318531 / v158 + v47;
        v161 = xmmword_21C2A3A50;
        __appendChartArc(a1, &v161, a1 + 88, v154, v22, v47, v54);
        v56 = v53;
        if (v15 < 400.0)
        {
          v56 = 0.0;
        }

        v55.f64[0] = v41;
        __appendStatInfo(a1, &v161, @"GL flush", v55, (DrawableSafeAreaInsets.n128_f32[1] + 40.0), v56);
        v47 = v53 * 6.28318531 / v158 + v47;
      }
    }

    v57 = *(a1 + 66072);
    if (v57 >= 0.0)
    {
      v58 = v57 * 6.28318531 / v158 + v47;
      v161 = xmmword_21C2A3A60;
      __appendChartArc(a1, &v161, a1 + 88, v154, v22, v47, v58);
      v60 = v57;
      if (v15 < 400.0)
      {
        v60 = 0.0;
      }

      v59.f64[0] = v41;
      __appendStatInfo(a1, &v161, @"2D", v59, (DrawableSafeAreaInsets.n128_f32[1] + 20.0), v60);
    }

    v61 = *(a1 + 66008) - fmax(*(a1 + 66096), 0.0);
    if (v61 < 0.0 || v61 >= 100.0)
    {
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"--- ms"];
      v11 = v150;
    }

    else
    {
      v62 = v61;
      v63 = v62;
      if (v61 >= 0.1)
      {
        v64 = @"%2.1f s";
      }

      else
      {
        v64 = @"%2.1f ms";
      }

      if (v61 >= 0.1)
      {
        v65 = v63;
      }

      else
      {
        v65 = v63 * 1000.0;
      }

      v66 = [MEMORY[0x277CCACA8] stringWithFormat:v64, *&v65];
      v11 = v150;
    }

    v67 = v66;
    v68 = [(__CFString *)v66 length];
    v69 = vadd_f32(v149, 0xC0C00000C1C80000);
    v70.i32[1] = v69.i32[1];
    *v70.i32 = *v69.i32 + 5.0;
    v166 = vbsl_s8(vcgtd_u64(7uLL, v68), v70, v69);
    __appendText_(a1, &v166, &C3DAuthoringEnvironmentColorWhite, v67, a1 + 240, a1 + 1528, 1, 1);
    v30 = *(a1 + 65825);
  }

  else
  {
    v30 = 0;
  }

  v71 = *(a1 + 1488) + 6.0;
  if (v30)
  {
    v72 = v14;
  }

  else
  {
    v72 = 0.0;
  }

  if (v30)
  {
    v73 = v14;
  }

  else
  {
    v73 = DrawableSafeAreaInsets.n128_f32[1];
  }

  v74 = v73 + v71;
  v162 = xmmword_21C2A3AD0;
  __appendRect2D(a1, 0, 0x3F40000000000000, &v162, a1 + 240, 1, 0.0, v72, v15, v73 + v71);
  *&v161 = 0;
  __appendText_(0, &v161, 0, @"$1$", 0, a1 + 1528, 0, 0);
  __asm { FMOV            V1.2S, #7.0 }

  _D1.f32[1] = v11 + 3.0;
  v80 = vadd_f32(DrawableSafeAreaInsets.n128_u64[0], _D1);
  v155 = *&v161;
  v159 = v80;
  if (*(a1 + 65825))
  {
    v81 = @"$1$";
  }

  else
  {
    v81 = @"$0$";
  }

  if (*(a1 + 65840))
  {
    v82 = &C3DAuthoringEnvironmentColorWhite;
  }

  else
  {
    v82 = &unk_21C2A3AC0;
  }

  *&v161 = v80;
  __appendText_(a1, &v161, v82, v81, a1 + 240, a1 + 1528, 1, 1);
  if ((*(a1 + 65828) / v13) <= 1.0)
  {
    v83 = *(a1 + 65828) / v13;
  }

  else
  {
    v83 = 1.0;
  }

  if (*(a1 + 65832) * 60.0 <= 1.0)
  {
    v84 = *(a1 + 65832) * 60.0;
  }

  else
  {
    v84 = 1.0;
  }

  *&v85 = v83 * 0.33;
  v86 = C3DColor4HSB2RGB(v85 | 0x3F80000000000000, 1065353216);
  v88 = v86;
  v89 = v87;
  v146 = v84;
  v144 = v15;
  v90 = ceilf(v159.f32[0] + (v155 + 5.0));
  v91 = 0x3F8000003F000000;
  v92 = 0x3F0000003F000000;
  v93 = (v74 - v71) + (v71 + -10.0) * 0.5;
  v94 = *(a1 + 1592);
  v95 = v94[8];
  DWORD2(v161) = 0;
  *&v161 = 0;
  v96 = v94[10];
  v97 = v94[11] / *(a1 + 1544);
  *(&v161 + 3) = v97;
  v156 = v90;
  v151 = v96;
  v153 = v95;
  v147 = v83;
  if (v83 >= 0.083333)
  {
    v110 = *(a1 + 1536);
    v111 = v95 / v110;
    *&v161 = v111;
    v107 = (v95 + v96 * 0.5) / v110;
    v98 = v90;
    v108 = v86;
    v109 = v89;
  }

  else
  {
    v98 = v90 + v83 * 60.0;
    v99 = v95;
    v100 = *(a1 + 1536);
    v101 = v96;
    v102 = v95 + (v83 / 0.083333) * (v96 * 0.5);
    v103 = v95 / v100;
    *&v100 = v102 / v100;
    *&v161 = v103;
    DWORD2(v161) = LODWORD(v100);
    v104 = v90;
    __appendRect2D(a1, v86, v87, &v161, a1 + 240, 1, v90, v93, v98, v93 + 10.0);
    v105 = *(a1 + 1536);
    v106 = v102 / v105;
    *&v161 = v106;
    v107 = (v99 + v101 * 0.5) / v105;
    v108 = 0x3F0000003F000000;
    v109 = 0x3F8000003F000000;
    v90 = v104;
  }

  v145 = v90;
  v112 = v90 + 5.0;
  v113 = v107;
  *(&v161 + 2) = v113;
  __appendRect2D(a1, v108, v109, &v161, a1 + 240, 1, v98, v93, v112, v93 + 10.0);
  LODWORD(v161) = 1065351538;
  DWORD2(v161) = 1065353216;
  if (v83 <= 0.083333 || v83 >= 0.91667)
  {
    if (v83 >= 0.91667)
    {
      v91 = v89;
      v92 = v88;
    }

    v114 = v112;
  }

  else
  {
    v114 = v156 + v147 * 60.0 + -5.0;
    __appendRect2D(a1, v88, v89, &v161, a1 + 240, 1, v112, v93, v114, v93 + 10.0);
  }

  v115 = v156 + 60.0;
  v116 = v156 + 60.0 + -5.0;
  v148 = v116;
  __appendRect2D(a1, v92, v91, &v161, a1 + 240, 1, v114, v93, v116, v93 + 10.0);
  if (v83 <= 0.91667)
  {
    v120 = v153 + v151 * 0.5;
    v117 = v148;
  }

  else
  {
    v117 = v156 + v147 * 60.0;
    v118 = *(a1 + 1536);
    v119 = (v153 + v151 * 0.5) / v118;
    v120 = v153 + ((v83 + -0.91667) / 0.0833333135 + 1.0) * v151 * 0.5;
    v121 = v120 / v118;
    *&v161 = v119;
    *(&v161 + 2) = v121;
    __appendRect2D(a1, v88, v89, &v161, a1 + 240, 1, v148, v93, v117, v93 + 10.0);
  }

  v122 = *(a1 + 1536);
  v123 = v115;
  v124 = v120 / v122;
  *&v122 = (v153 + v151) / v122;
  *&v161 = v124;
  DWORD2(v161) = LODWORD(v122);
  __appendRect2D(a1, 0x3F0000003F000000, 0x3F8000003F000000, &v161, a1 + 240, 1, v117, v93, v123, v93 + 10.0);
  v125 = v146;
  *(&v161 + 3) = *(&v161 + 3) * 0.25;
  if (v125 >= 0.083333)
  {
    v130 = *(a1 + 1536);
    v131 = v153 / v130;
    *&v161 = v131;
    v129 = (v153 + v151 * 0.5) / v130;
    v126 = v112;
  }

  else
  {
    v126 = v156 + v125 * 60.0;
    v127 = *(a1 + 1536);
    v128 = v153 / v127;
    *&v161 = v128;
    v129 = (v153 + (v125 / 0.083333) * (v151 * 0.5)) / v127;
  }

  v132 = v129;
  *(&v161 + 2) = v132;
  __appendRect2D(a1, 0x3F00000000000000, 0x3F8000003F800000, &v161, a1 + 240, 1, v145, v93, v126, v93 + 2.5);
  if (v125 <= 0.083333 || v125 >= 0.91667)
  {
    v133 = v156 + 60.0;
    if (v125 <= 0.91667)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v133 = v156 + v125 * 60.0;
  }

  v134 = v133 + -5.0;
  LODWORD(v161) = 1065351538;
  DWORD2(v161) = 1065353216;
  __appendRect2D(a1, 0x3F00000000000000, 0x3F8000003F800000, &v161, a1 + 240, 1, v112, v93, v134, v93 + 2.5);
LABEL_129:
  if (v125 > 0.91667)
  {
    v135 = v156 + v125 * 60.0;
    v136 = *(a1 + 1536);
    v137 = (v153 + v151 * 0.5) / v136;
    v138 = (v153 + ((v125 + -0.91667) / 0.0833333135 + 1.0) * v151 * 0.5) / v136;
    *&v161 = v137;
    *(&v161 + 2) = v138;
    __appendRect2D(a1, 0x3F00000000000000, 0x3F8000003F800000, &v161, a1 + 240, 1, v148, v93, v135, v93 + 2.5);
  }

  *&v139 = v115 + 7.0;
  v140 = *(a1 + 65848);
  v166 = __PAIR64__(v159.u32[1], v139);
  __appendText_(a1, &v166, &C3DAuthoringEnvironmentColorWhite, v140, a1 + 240, a1 + 1528, 1, 1);
  v141 = *(a1 + 65856);
  v166 = 0;
  __appendText_(0, &v166, 0, v141, 0, a1 + 1528, 0, 0);
  HIDWORD(v142) = v159.i32[1];
  *&v142 = ceilf((v144 + -7.0) - *&v166) - DrawableSafeAreaInsets.n128_f32[2];
  v143 = *(a1 + 65856);
  v166 = v142;
  __appendText_(a1, &v166, &C3DAuthoringEnvironmentColorWhite, v143, a1 + 240, a1 + 1528, 1, 1);
  __flush(a1, a1 + 240);
  __flush(a1, a1 + 88);
  *(a1 + 65824) = 1;
  if (RenderContext)
  {
    [(SCNMTLRenderContext *)RenderContext popDebugGroup];
  }

  else
  {
    glPopGroupMarkerEXT();
  }

  _Block_object_dispose(v165, 8);
}

uint64_t __C3DAuthoringEnvironmentDrawStats_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v44[2] = *MEMORY[0x277D85DE8];
  *a2 = 7;
  v7 = malloc_type_malloc(0x70uLL, 0x1000040451B5BE8uLL);
  *a4 = v7;
  *v7 = xmmword_21C2A3A70;
  v7[1] = xmmword_21C2A3A80;
  v7[2] = xmmword_21C2A3A90;
  v8 = __statisticsFont();
  v9 = *MEMORY[0x277D740C0];
  v43[0] = *MEMORY[0x277D740A8];
  v43[1] = v9;
  v44[0] = v8;
  v44[1] = [MEMORY[0x277D75348] whiteColor];
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  [@"◆" boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v11.f64[0] = v10 + 1.0;
  v12 = *a4;
  v11.f64[1] = v13;
  *&v11.f64[0] = vcvt_f32_f64(vaddq_f64(v11, xmmword_21C2A3AA0));
  *(v12 + 48) = v11.f64[0];
  *&v13 = v14;
  *&v14 = v15;
  *(v12 + 56) = LODWORD(v13);
  *(v12 + 60) = LODWORD(v14);
  v39 = (*v11.f64 + *&v13);
  [@"▲" boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v16 = *a4;
  v18.f64[1] = v17;
  __asm { FMOV            V1.2D, #-1.0 }

  v42 = _Q1.f64[1];
  _Q1.f64[0] = v39;
  *&v18.f64[0] = vcvt_f32_f64(vaddq_f64(v18, _Q1));
  *(v16 + 64) = v18.f64[0];
  *_Q1.f64 = v24;
  *&v24 = v25;
  *(v16 + 72) = LODWORD(_Q1.f64[0]);
  *(v16 + 76) = LODWORD(v24);
  v40 = (*v18.f64 + *_Q1.f64);
  [@"." boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v26 = *a4;
  v28.f64[1] = v27;
  __asm { FMOV            V1.2D, #-3.0 }

  _Q1.f64[0] = v40;
  *&v28.f64[0] = vcvt_f32_f64(vaddq_f64(v28, _Q1));
  *(v26 + 80) = v28.f64[0];
  *_Q1.f64 = v30;
  *&v30 = v31;
  *(v26 + 88) = LODWORD(_Q1.f64[0]);
  *(v26 + 92) = LODWORD(v30);
  v41 = (*v28.f64 + *_Q1.f64);
  result = [@"✸" boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v33 = *a4;
  v35.f64[1] = v34;
  v36.f64[1] = v42;
  v36.f64[0] = v41;
  *&v35.f64[0] = vcvt_f32_f64(vaddq_f64(v35, v36));
  *(v33 + 96) = v35.f64[0];
  *v36.f64 = v37;
  *&v37 = v38;
  *(v33 + 104) = LODWORD(v36.f64[0]);
  *(v33 + 108) = LODWORD(v37);
  *a3 = (*v35.f64 + *v36.f64) + 32.0;
  *(a3 + 8) = 0x4030000000000000;
  return result;
}

void __C3DAuthoringEnvironmentDrawStats_block_invoke_2(uint64_t a1, double a2, double a3)
{
  v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"+" attributes:*(*(*(a1 + 32) + 8) + 40)];
  [v5 drawAtPoint:{0.0, 0.0}];

  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"-" attributes:*(*(*(a1 + 32) + 8) + 40)];
  [v6 drawAtPoint:{16.0, 0.0}];

  [objc_msgSend(MEMORY[0x277D75208] bezierPathWithOvalInRect:{33.0, 0.0, 10.0, 10.0), "fill"}];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, 4.0 - a3);
  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"◆▲.✸" attributes:*(*(*(a1 + 32) + 8) + 40)];
  [v8 drawAtPoint:{44.0, 0.0}];
}

uint64_t __statisticsBoldFont()
{
  SceneCount = C3DSceneSourceGetSceneCount();
  v1 = MEMORY[0x277D74300];
  if (SceneCount)
  {
    v2 = *MEMORY[0x277D743F8];

    return [v1 monospacedSystemFontOfSize:11.0 weight:v2];
  }

  else
  {

    return [v1 fontWithName:@"Menlo-Bold" size:12.0];
  }
}

void __appendChartArc(uint64_t a1, float *a2, uint64_t a3, float64_t a4, float64_t a5, float a6, float a7)
{
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a2;
  v11 = a2[1];
  v12 = a7 - a6;
  v13 = fmax((a7 - a6) / 6.28318531 * 100.0, 1.0);
  v14 = 6 * v13;
  v38 = 2 * v13 + 2;
  v15 = malloc_type_malloc(20 * v38, 0x1000040A86A77D5uLL);
  v16 = malloc_type_malloc(12 * v13, 0x1000040BDFB0063uLL);
  v17 = v16;
  if ((v13 & 0x80000000) == 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = ((v9 * 255.0) << 24) | ((fminf(fmaxf(v8, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(v11, 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(v10, 0.0), 1.0) * 255.0);
    v21 = v12 / v13;
    v22 = 1.57079633 - a6;
    v23.f64[0] = a4;
    v23.f64[1] = a5;
    v42 = v23;
    v24 = 2 * v13;
    v25 = 2 * (v13 + 1);
    v26 = (v15 + 20);
    v27 = vdup_n_s32(0x42200000u);
    v28 = vdup_n_s32(0x3F7FBE77u);
    v29 = v16 + 3;
    __asm
    {
      FMOV            V12.2S, #1.0
      FMOV            V13.2S, #30.0
    }

    do
    {
      v36 = __sincosf_stret(v22 - (v18 * v21));
      *(v26 - 20) = vcvt_f32_f64(vaddq_f64(v42, vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval)), v27))));
      v26[-1].i32[1] = v20;
      *(v26 - 12) = _D12;
      v26[2].i32[0] = v20;
      *v26 = vcvt_f32_f64(vaddq_f64(v42, vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval)), _D13))));
      v26[1] = v28;
      if (v24 != v19)
      {
        *(v29 - 3) = v19;
        *(v29 - 2) = v19 + 2;
        *(v29 - 1) = v19 + 1;
        *v29 = v19 + 1;
        v29[1] = v19 + 2;
        v29[2] = v19 + 3;
      }

      v19 += 2;
      v26 += 5;
      v29 += 6;
      ++v18;
    }

    while (v25 != v19);
  }

  __appendVerticesAndIndices(a1, v15, v38, v17, v14, a3, 1);
  free(v17);

  free(v15);
}

char *C3DAuthoringEnvironmentUpdateLightingStats(char *result, const void *a2, unsigned int a3)
{
  if (a3 <= 9)
  {
    return memcpy(result + 65872, a2, 4 * a3);
  }

  return result;
}

void C3DAuthoringEnvironmentUpdateStats(uint64_t a1, double *__src, uint64_t a3)
{
  if (a1)
  {
    v6 = a1 + 0x10000;
    v7 = *(a1 + 65864);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 328) = 0;
    }

    v8 = *(v6 + 320);
    if (v8)
    {
      CFRelease(v8);
      *(v6 + 320) = 0;
    }

    v9 = *(v6 + 312);
    if (v9)
    {
      CFRelease(v9);
      *(v6 + 312) = 0;
    }

    if (*(__src + 4))
    {
      memcpy((a1 + 65912), __src, 0x358uLL);
      if (a3)
      {
        v10 = *(a3 + 216);
        v11 = *(a3 + 248);
        *(a1 + 66144) = *(a3 + 232);
        *(a1 + 66160) = v11;
        *(a1 + 66128) = v10;
        v12 = *(a3 + 264);
        v13 = *(a3 + 280);
        v14 = *(a3 + 296);
        *(a1 + 66224) = *(a3 + 312);
        *(a1 + 66192) = v13;
        *(a1 + 66208) = v14;
        *(a1 + 66176) = v12;
      }

      v15 = __src[41];
      v16 = 0.0;
      if (v15 != 0.0)
      {
        v16 = 1.0 / v15;
      }

      *(v6 + 292) = v16;
      v17 = __src[23];
      *(v6 + 296) = v17;
      StringForCount = __createStringForCount(*(__src + 2));
      v19 = __createStringForCount(*(__src + 1));
      v20 = __createStringForCount(*__src);
      if (*(v6 + 336))
      {
        v21 = 1;
      }

      else
      {
        v22 = 0;
        do
        {
          v23 = v22;
          if (v22 == 8)
          {
            break;
          }
        }

        while (!*(a1 + 65876 + 4 * v22++));
        v21 = v23 < 8;
      }

      *(v6 + 176) = *(v6 + 176) & 0xFE | v21;
      v25 = *MEMORY[0x277CBECE8];
      *(v6 + 320) = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"$3$%@ $4$%@", StringForCount, v19);
      CFRelease(StringForCount);
      CFRelease(v19);
      CFRelease(v20);
      RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8));
      LODWORD(v27) = llroundf(*(v6 + 292));
      if (RenderContext)
      {
        v28 = CFStringCreateWithFormat(v25, 0, @"%dfps", v27);
      }

      else
      {
        v28 = CFStringCreateWithFormat(v25, 0, @"GL %dfps", v27);
      }

      *(v6 + 312) = v28;
    }
  }
}

__CFString *__createStringForCount(unint64_t a1)
{
  if (!a1)
  {
    return @"0";
  }

  if (a1 <= 0x3E7)
  {
    return CFStringCreateWithFormat(0, 0, @"%zu", a1);
  }

  v2 = a1;
  v3 = a1 / 1000.0;
  if (v3 < 1000.0)
  {
    return CFStringCreateWithFormat(0, 0, @"%.3gK", v3);
  }

  v4 = v2 / 1000000.0;
  if (v4 < 1000.0)
  {
    return CFStringCreateWithFormat(0, 0, @"%.3gM", v4);
  }

  v5 = v2 / 1000000000.0;
  return CFStringCreateWithFormat(0, 0, @"%.3gG", v5);
}

BOOL C3DAuthoringEnvironmentHasSelectedNodes(void *a1)
{
  objc_sync_enter(a1);
  v2 = [objc_msgSend(a1 "selectedNodes")] != 0;
  objc_sync_exit(a1);
  return v2;
}

uint64_t C3DAuthoringEnvironmentGetSelectedNodes(void *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  objc_sync_enter(a1);
  v3 = [a1 selectedNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __C3DAuthoringEnvironmentGetSelectedNodes_block_invoke;
  v5[3] = &unk_2782FB9F0;
  v5[4] = v2;
  [v3 enumerateObjectsUsingBlock:v5];
  objc_sync_exit(a1);
  return v2;
}

uint64_t __C3DAuthoringEnvironmentGetSelectedNodes_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [a2 authoringEnvironmentCompanionNode];
  v5 = *(a1 + 32);
  if (v4)
  {
    v2 = [v2 authoringEnvironmentCompanionNode];
  }

  v6 = [v2 nodeRef];

  return [v5 addObject:v6];
}

void __destroyGLInfo(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  __recycleMeshes(a1, a2);
  v4 = *(a2 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 32) = 0;
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 40) = 0;
  }

  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8));
  if (*(a2 + 53) == 1)
  {
    v7 = RendererContextGL;
    if (RendererContextGL)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = *(a2 + 136);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v14 + 1) + 8 * i);
            if (C3DMeshElementGetVolatileDataPtr(v13))
            {
              C3DRendererContextUnmapVolatileMeshElement(v7, v13);
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }
  }
}

void __appendText_(uint64_t a1, void *a2, uint64_t *a3, CFStringRef theString, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v48 = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v46 = v43;
    MEMORY[0x28223BE20](Length);
    v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v49.location = 0;
    v49.length = Length;
    CFStringGetCharacters(theString, v49, v18);
    if (Length >= 1)
    {
      v20 = 1;
      v21 = v18;
      v22 = Length;
      do
      {
        v23 = *v21++;
        if (v23 == 10)
        {
          ++v20;
        }

        --v22;
      }

      while (v22);
      *&v19 = *a2;
      v44 = a7;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *(&v19 + 1) + (v20 - 1) * *(a6 + 32);
      while (1)
      {
        v29 = *v18++;
        v28 = v29;
        if (v29 == 32)
        {
          *&v19 = **(a6 + 48) + *&v19;
        }

        else if (v28 == 10)
        {
          *&v19 = *a2;
          v27 = v27 - *(a6 + 32);
        }

        else if (v26)
        {
          if (v28 == 36)
          {
            v30 = *(a6 + 8);
            if ((v25 & 1) == 0)
            {
              goto LABEL_21;
            }

            v47 = 0uLL;
            v31 = *(a6 + 64) + 16 * v24;
            v47 = *v31;
            v47 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v47.f32), v30)), vdivq_f64(vcvtq_f64_f32(vadd_f32(*v47.f32, *&v47.u32[2])), v30));
            v32 = *(v31 + 8);
            if (a8)
            {
              v33 = *&v19 + v32;
              __appendRect2D(a1, *a3, a3[1], v47.f32, a5, v44, roundf(*&v19), roundf(v27), roundf(*&v19 + v32), roundf(v27 + *(v31 + 12)));
              *&v19 = v33;
            }

            else
            {
              *&v19 = *&v19 + v32;
            }

            v26 = 0;
          }

          else
          {
            v24 = v28 + 10 * v24 - 48;
            v26 = 1;
          }

          v25 = 1;
        }

        else
        {
          if (v28 != 36)
          {
            v30 = *(a6 + 8);
LABEL_21:
            v34 = v28 - 32;
            v35 = (v34 * *(a6 + 40));
            v36 = *(a6 + 40);
            v37 = *(a6 + 56);
            v38.f64[0] = (v36 + v35);
            v38.f64[1] = v37;
            v47 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(COERCE_UNSIGNED_INT64(v35), v30)), vdivq_f64(v38, v30));
            v39 = *(*(a6 + 48) + 8 * v34);
            if (a8)
            {
              v40 = *a3;
              v41 = a3[1];
              v45 = v19;
              __appendRect2D(a1, v40, v41, v47.f32, a5, v44, roundf(*&v19), roundf(v27), roundf(*&v19 + v36), roundf(v27 + v37));
              v19 = v45;
            }

            v26 = 0;
            v42 = v39;
            *&v19 = *&v19 + v42;
            goto LABEL_27;
          }

          v25 = 0;
          v24 = 0;
          v26 = 1;
        }

LABEL_27:
        if (!--Length)
        {
          goto LABEL_30;
        }
      }
    }

    *&v19 = *a2;
LABEL_30:
    *a2 = v19;
  }
}

void SCNCActionRotate::SCNCActionRotate(SCNCActionRotate *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v4 = &unk_282DC7640;
  *(v4 + 56) = a2->var7;
  *(v4 + 40) = *&a2->var5;
  *(v4 + 80) = *&a2->var10;
  *(v4 + 64) = a2->var8;
  *(v4 + 104) = a2->var14;
  BYTE4(this[1].var15) = C3DWasLinkedBeforeMajorOSYear2015();
  this->var4 = 1;
}

void SCNCActionRotate::~SCNCActionRotate(SCNCActionRotate *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

void SCNCActionRotate::cpp_updateWithTargetForTime(SCNCActionRotate *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  *&_D3 = v6.n128_f64[0];
  if (LOBYTE(this[1].var15) == 1)
  {
    if (BYTE2(this[1].var15))
    {
      _Q0 = *&this[1].var6;
      v14 = -((_Q0.f32[3] * *&_D3) - *&this[1].var8);
      v36 = *&_D3;
      __asm { FMLA            S2, S3, V0.S[3] }

      _Q0.f32[3] = _S2;
      v48 = _Q0;
      if (BYTE4(this[1].var15))
      {
        v20 = _S2;
      }

      else
      {
        v20 = v14;
      }

      C3DMatrix4x4MakeAxisAngleRotation(&v47, &v48, v20);
      if (a2)
      {
        [(SCNNode *)a2 transform];
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
      }

      v39 = v43;
      v40 = v44;
      v41 = v45;
      v42 = v46;
      C3DMatrix4x4FromSCNMatrix4(&v43, &v39);
      C3DMatrix4x4Mult3x3(&v43, &v47, &v43);
      C3DMatrix4x4ToSCNMatrix4(&v43, &v39);
      v38[0] = v39;
      v38[1] = v40;
      v38[2] = v41;
      v38[3] = v42;
      [(SCNNode *)a2 setTransform:v38];
      *&this[1].var8 = *&this[1].var8 + v48.f32[3];
    }

    else
    {
      if (BYTE1(this[1].var15))
      {
        goto LABEL_18;
      }

      v26 = *&this[1].var6;
      v27 = vsubq_f32(*&this[1].var4, v26);
      v28 = vmlaq_n_f32(v26, v27, *&_D3);
      v27.i32[0] = v28.i32[1];
      LODWORD(v8) = v28.i32[2];
      v36 = *&_D3;
      LODWORD(_D3) = v28.i32[3];
      [(SCNNode *)a2 setRotation:*v28.i64, *v27.i64, v8, _D3];
    }

    goto LABEL_17;
  }

  if (BYTE2(this[1].var15))
  {
    v35 = vmlaq_n_f32(vnegq_f32(*&this[1].var2), *&this[1].var0, *&_D3);
    v37 = v6.n128_f64[0];
    [(SCNNode *)a2 eulerAngles];
    v22.i32[1] = v21;
    v22.i32[2] = v23;
    v24 = vaddq_f32(v35, v22);
    LODWORD(v25) = v24.i32[2];
    [(SCNNode *)a2 setEulerAngles:*v24.i64, COERCE_DOUBLE(__PAIR64__(v35.u32[1], v24.u32[1])), v25];
    *&_D3 = v37;
    v6 = vaddq_f32(v35, *&this[1].var2);
    *&this[1].var2 = v6;
    goto LABEL_18;
  }

  if ((BYTE1(this[1].var15) & 1) == 0)
  {
    v36 = v6.n128_f64[0];
    if (BYTE3(this[1].var15) == 1)
    {
      v47 = 0uLL;
      v29 = v6.n128_f64[0];
      C3DQuaternionSlerp(&this[1].var13, &this[1].var10, &v47, v29, v7, v8, _D3, v9, v10, v11);
      LODWORD(v31) = v47.i32[2];
      LODWORD(v30) = v47.i32[1];
      LODWORD(v32) = v47.i32[3];
      [(SCNNode *)a2 setOrientation:*v47.i64, v30, v31, v32];
    }

    else
    {
      v33 = *&this[1].var0;
      v34 = vmlaq_n_f32(vmulq_n_f32(*&this->var19, *&_D3), v33, 1.0 - *&_D3);
      LODWORD(v7) = v34.i32[1];
      v33.i32[0] = v34.i32[2];
      [(SCNNode *)a2 setEulerAngles:*v34.i64, v7, *v33.i64];
    }

LABEL_17:
    *&_D3 = v36;
  }

LABEL_18:
  if ((COERCE_UNSIGNED_INT(*&_D3 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;
    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SCNCAction *SCNCActionRotate::cpp_willStartWithTargetAtTime(SCNCActionRotate *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  if (LOBYTE(this[1].var15) == 1)
  {
    LODWORD(this[1].var8) = 0;
    if (BYTE2(this[1].var15) == 1)
    {
      v6 = *&this[1].var4;
    }

    else
    {
      result = [(SCNNode *)a2 rotation];
      DWORD1(v6) = v8;
      *(&v6 + 1) = __PAIR64__(v10, v9);
    }

    *&this[1].var6 = v6;
  }

  else
  {
    LODWORD(this[1].var3) = 0;
    this[1].var2 = 0;
    if (BYTE2(this[1].var15) == 1)
    {
      v7 = *&this->var19;
    }

    else
    {
      if (BYTE3(this[1].var15) == 1)
      {
        result = [(SCNNode *)a2 orientation];
        DWORD1(v12) = v11;
        *(&v12 + 1) = __PAIR64__(v14, v13);
        *&this[1].var13 = v12;
        return result;
      }

      result = [(SCNNode *)a2 eulerAngles];
      DWORD1(v7) = v15;
      DWORD2(v7) = v16;
    }

    *&this[1].var0 = v7;
  }

  return result;
}

uint64_t __AppendArgument(uint64_t a1, int a2, uint64_t a3, void *a4, int a5)
{
  if ([a4 hasPrefix:@"texture"] & 1) != 0 || (objc_msgSend(a4, "hasPrefix:", @"depth"))
  {
    v10 = 176;
    if (a2)
    {
      v10 = 184;
    }

    v11 = *(a1 + v10);
    if ([a4 hasSuffix:@">"])
    {
      result = [v11 appendFormat:@", %@ %@\n", a4, a3];
    }

    else
    {
      result = [v11 appendFormat:@", %@<float> %@\n", a4, a3];
    }

    v13 = 1;
  }

  else
  {
    v16 = [a4 hasPrefix:@"sampler"];
    v17 = 176;
    if (a2)
    {
      v17 = 184;
    }

    v18 = *(a1 + v17);
    if (v16)
    {
      result = [v18 appendFormat:@", %@ %@\n", a4, a3];
      v13 = 2;
    }

    else
    {
      if ([a4 hasSuffix:@"*"])
      {
        result = [v18 appendFormat:@", device %@ %@\n", a4, a3];
      }

      else
      {
        result = [v18 appendFormat:@", constant %@& %@\n", a4, a3];
      }

      v13 = 0;
    }
  }

  if (a5 == 3)
  {
    [*(a1 + 168) appendFormat:@"_lightingContribution.%@=%@;\n", a3, a3];
    if (v13 == 1)
    {
      v14 = [a4 hasSuffix:@">"];
      v15 = *(a1 + 160);
      if (!v14)
      {
        return [v15 appendFormat:@"%@<float> %@;\n", a4, a3];
      }
    }

    else
    {
      v15 = *(a1 + 160);
    }

    return [v15 appendFormat:@"%@ %@;\n", a4, a3];
  }

  return result;
}

uint64_t __UnifyModifierVaryings(uint64_t result, uint64_t *a2, uint64_t a3)
{
  *&v9[5] = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (!*a2)
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          __UnifyModifierVaryings_cold_1(v8, v9, v7);
        }
      }

      result = C3DShaderModifierGetVaryings(v6);
      if (result)
      {
        result = [v5 addEntriesFromDictionary:result];
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t __AppendModifierArguments(uint64_t result, uint64_t *a2, uint64_t a3)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (!*a2)
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          __UnifyModifierVaryings_cold_1(v14, v15, v7);
        }
      }

      result = C3DShaderModifierGetArguments(v6);
      if (result)
      {
        v8 = result;
        EntryPoint = C3DShaderModifierGetEntryPoint(*a2);
        v10 = EntryPoint && (EntryPoint != 3 || (*(v5 + 203) & 1) != 0);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = ____AppendModifierArguments_block_invoke;
        v11[3] = &__block_descriptor_45_e35_v32__0__NSString_8__NSString_16_B24l;
        v11[4] = v5;
        v13 = v10;
        v12 = EntryPoint;
        result = [v8 enumerateKeysAndObjectsUsingBlock:v11];
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

__CFString *__configureOpenSubdivSupport(uint64_t a1, int a2, uint64_t a3)
{
  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(a3);
  v7 = C3DProgramHashCodeOpenSubdivPatchType(a3);
  if ((NodeHashCode & 0x20) != 0 && a2)
  {
    v8 = v7;
    v9 = 0x2000010000;
    if ((NodeHashCode & 0x80) == 0)
    {
      v9 = 0x2000000000;
    }

    *(a1 + 208) = C3DSubdivisionOsdGPUGetProgramGeneratorResources(v7 & 0xFFFFFEFF | (((NodeHashCode >> 6) & 1) << 8) | v9, (NodeHashCode >> 8) & 0x7FFFF, *(a1 + 8));
    *(a1 + 216) = C3DSubdivisionOsdGPUGetPerPatchTypeSources(v8);
    v10 = MEMORY[0x277CCACA8];
    v11 = C3DSubdivisionOsdGPUGetSharedSources();
    v12 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-OpenSubdiv-Utils.h");
    result = [v10 stringWithFormat:@"%@%@%@", v11, v12, C3DGetTextResourceWithNameAllowingHotReload(@"C3D-OpenSubdiv-Utils.metal")];
  }

  else
  {
    result = &stru_282DCC058;
    *(a1 + 208) = &stru_282DCC058;
    *(a1 + 216) = &stru_282DCC058;
  }

  *(a1 + 224) = result;
  return result;
}

uint64_t __InjectAllModifiersIfNeeded(uint64_t a1)
{
  v23[33] = *MEMORY[0x277D85DE8];
  memset(v23, 0, 256);
  v2 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 0, 0, v23, 32);
  memset(v22, 0, sizeof(v22));
  v3 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 1, 0, v22, 32);
  memset(v21, 0, sizeof(v21));
  v4 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 2, 0, v21, 32);
  *(a1 + 152) = 0;
  v5 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 3, 0, a1 + 152, 1);
  if (v5 >= 2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v5 = 1;
  }

  if (v2 >= 2)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v2 = 1;
  }

  if (v3 >= 2)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v3 = 1;
  }

  if (v4 >= 2)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v4 = 1;
  }

  __AppendModifierDefines(*(a1 + 8), v23, v2);
  __AppendModifierDefines(*(a1 + 8), v22, v3);
  __AppendModifierDefines(*(a1 + 8), v21, v4);
  __AppendModifierDefines(*(a1 + 8), (a1 + 152), v5);
  __AppendModifierArguments(a1, v23, v2);
  __AppendModifierArguments(a1, v22, v3);
  __AppendModifierArguments(a1, v21, v4);
  __AppendModifierArguments(a1, (a1 + 152), v5);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  __UnifyModifierVaryings(v10, v23, v2);
  __UnifyModifierVaryings(v10, v22, v3);
  __UnifyModifierVaryings(v10, v21, v4);
  __UnifyModifierVaryings(v10, (a1 + 152), v5);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ____InjectAllModifiersIfNeeded_block_invoke;
  v20[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v20[4] = a1;
  [v10 enumerateKeysAndObjectsUsingBlock:v20];

  ModifierFlag = __GetModifierFlag(v21, v4);
  v12 = __GetModifierFlag(v22, v3);
  v13 = __GetModifierFlag(v23, v2);
  v14 = __GetModifierFlag((a1 + 152), v5);
  if (v2)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_GEOMETRY_MODIFIER"];
    __InjectModifiers(a1, 0, v23);
  }

  if (v3)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SURFACE_MODIFIER"];
    __InjectModifiers(a1, 1u, v22);
  }

  if (v4)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRAGMENT_MODIFIER"];
    __InjectModifiers(a1, 2u, v21);
  }

  if (v5)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_LIGHT_MODIFIER"];
    __InjectModifiers(a1, 3u, (a1 + 152));
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    [v15 addObject:@"USE_GEOMETRY_MODIFIER"];
    [*(a1 + 16) addObject:@"USE_SURFACE_MODIFIER"];
    [*(a1 + 16) addObject:@"USE_FRAGMENT_MODIFIER"];
    [*(a1 + 16) addObject:@"USE_LIGHT_MODIFIER"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ____InjectAllModifiersIfNeeded_block_invoke_2;
    v19[3] = &__block_descriptor_40_e21_v16__0____CFString__8l;
    v19[4] = a1;
    C3DShaderModifierEnumeratePossibleDefinesUsingBlock(v19);
    StandardUniforms = C3DShaderGetStandardUniforms();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ____InjectAllModifiersIfNeeded_block_invoke_3;
    v18[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    v18[4] = a1;
    C3DCFDictionaryApplyBlock(StandardUniforms, v18);
  }

  return v12 | ModifierFlag | v13 | v14;
}

uint64_t __AddProperty(uint64_t a1, unsigned int a2, int a3, int a4)
{
  DefineForPropertyAndSuffix = __GetDefineForPropertyAndSuffix(a3, 0);
  v9 = __GetDefineForPropertyAndSuffix(a3, 1);
  result = __GetDefineForPropertyAndSuffix(a3, 5);
  v11 = result;
  *(a1 + 24) = 0;
  if (a4)
  {
    result = C3DProgramHashCodeGetEffectPropertyIsEnabled(*a1, a2);
    if (result)
    {
      if (a3 == 7)
      {
        v12 = &unk_282E0F8D0;
      }

      else
      {
        v12 = &stru_282DCC058;
      }

      [*(a1 + 8) setObject:v12 forKeyedSubscript:v9];
      if (!C3DProgramHashCodeGetEffectPropertyHasTexture(*a1, a2))
      {
        v19 = __GetDefineForPropertyAndSuffix(a3, 2);
        v18 = *(a1 + 8);
        v17 = &stru_282DCC058;
        goto LABEL_16;
      }

      if (C3DProgramHashCodeGetEffectPropertyTextureType(*a1, a2) == 4)
      {
        v13 = 7;
      }

      else
      {
        v13 = 6;
      }

      [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:{__GetDefineForPropertyAndSuffix(a3, v13)}];
      *(a1 + 24) = 1;
      [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:v11];
      result = C3DProgramHashCodeGetEffectPropertyHashCode(*a1, a2);
      v14 = result;
      if ((result & 0x2000) != 0)
      {
        result = [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:{__GetDefineForPropertyAndSuffix(a3, 3)}];
      }

      v15 = (v14 >> 14) & 0xF;
      if (v15 && v15 != 15)
      {
        v16 = __GetDefineForPropertyAndSuffix(a3, 4);
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v15];
        v18 = *(a1 + 8);
        v19 = v16;
LABEL_16:
        result = [v18 setObject:v17 forKeyedSubscript:v19];
      }
    }
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    [v20 addObject:{__GetDefineForPropertyAndSuffix(a3, 1)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 2)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 3)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 4)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 5)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 6)}];
    result = [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 7)}];
  }

  if (a3 != 4)
  {
    result = [*(a1 + 8) objectForKeyedSubscript:v11];
    if (result)
    {
      result = C3DProgramHashCodeGetEffectPropertyHashCode(*a1, a2);
      v21 = (result >> 18) & 0xF;
      if (v21 != 15)
      {
        if (a3 == 15)
        {
          UVSetInfo = C3DProgramHashCodeGetUVSetInfo(*a1, v21);
          v23 = UVSetInfo;
          v24 = HIBYTE(UVSetInfo);
          v25 = *(a1 + 112);
          if (v24 <= 0xFE)
          {
            return [v25 appendFormat:@"float2 _%@Texcoord = (scn_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", DefineForPropertyAndSuffix, (*(a1 + 128) - 1), v23];
          }

          else
          {
            return [v25 appendFormat:@"float2 _%@Texcoord = _geometry.texcoords[%d].xy;\n", DefineForPropertyAndSuffix, v23, v26];
          }
        }

        else
        {
          return [*(a1 + 120) appendFormat:@"    _surface.%@Texcoord = in.texcoord%d;\n", DefineForPropertyAndSuffix, v21, v26];
        }
      }
    }
  }

  return result;
}

void sub_21C15E714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__InjectModifiers(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v5 = *a3;
  if (C3DShaderModifierGetEntryPoint(*a3) != a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __InjectModifiers_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Declaration = C3DShaderModifierGetDeclaration(v5);
  if (Declaration)
  {
    [*(a1 + 32) appendString:Declaration];
  }

  Code = C3DShaderModifierGetCode(v5);
  if (Code)
  {
    *(a1 + 8 * a2 + 48) = Code;
  }

  else
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __InjectModifiers_cold_2();
    }
  }

  Defines = C3DShaderModifierGetDefines(v5);
  if (Defines)
  {
    CFDictionaryApplyFunction(Defines, __appendDictionary_1, *(a1 + 8));
  }

  result = C3DShaderModifierGetStandardUniformsUsed(v5);
  if (result)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ____InjectModifiers_block_invoke;
    v19[3] = &__block_descriptor_40_e25_v32__0__NSString_8_16_B24l;
    v19[4] = a1;
    return [result enumerateKeysAndObjectsUsingBlock:v19];
  }

  return result;
}

uint64_t __DefineForShaderModifierStandardUniformPerNode(void *a1)
{
  if (![a1 hasPrefix:@"scn_node."])
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 substringFromIndex:{objc_msgSend(@"scn_node.", "length")), "uppercaseString"}];

  return [@"USE_" stringByAppendingString:v2];
}

const void *SCNCopyCGImageFromImage(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 CGImage];
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

const char *C3DIOCreateCFStringFromCString(const char *cStr)
{
  if (cStr)
  {
    return CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  return cStr;
}

BOOL _IsFileAvailableAtURL(const __CFURL *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = CFURLCopyScheme(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFStringCompare(v4, @"file", 0) == kCFCompareEqualTo)
  {
    CFRelease(v5);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      memset(&v7, 0, sizeof(v7));
      if (!stat(buffer, &v7) && (v7.st_mode & 0xF000) == 0x8000)
      {
        return access(buffer, 4) == 0;
      }
    }

    return 0;
  }

  CFStringCompare(v5, @"http", 0);
  CFRelease(v5);
  return a2;
}

const __CFURL *C3DIOCopyURLForInitialURL(CFURLRef url, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, char a6)
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  if ((a6 & 1) == 0)
  {
    v11 = __CopyAvailableFileURLOrWithPreferredExtensions(url, a3);
    if (v11)
    {
      v12 = v11;
      if (_checkURLPermissions(url, a4, a5))
      {
        return v12;
      }

      CFRelease(v12);
    }
  }

  if (a2)
  {
    isAbsolute = 0;
    v13 = CFURLCopyStrictPath(url, &isAbsolute);
    if (v13)
    {
      CFRelease(v13);
    }

    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v15 = Count;
      for (i = 0; v15 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v18 = ValueAtIndex;
        if (isAbsolute)
        {
          PathComponent = CFURLCopyLastPathComponent(url);
          if (PathComponent)
          {
            v20 = PathComponent;
            v21 = CFStringGetLength(PathComponent) < 1 ? 0 : CFURLCreateCopyAppendingPathComponent(0, v18, v20, 0);
            CFRelease(v20);
            if (v21)
            {
LABEL_19:
              v12 = __CopyAvailableFileURLOrWithPreferredExtensions(v21, a3);
              CFRelease(v21);
              if (_checkURLPermissions(v12, a4, a5))
              {
                return v12;
              }

              if (v12)
              {
                CFRelease(v12);
              }

              continue;
            }
          }
        }

        else
        {
          v21 = _C3DURLCreateCopyByAppendingURL(ValueAtIndex, url, 0);
          if (v21)
          {
            goto LABEL_19;
          }
        }

        v22 = scn_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          C3DIOCopyURLForInitialURL_cold_1(buf, v26, v22);
        }
      }
    }
  }

  return 0;
}

const __CFURL *__CopyAvailableFileURLOrWithPreferredExtensions(CFURLRef url, const __CFArray *a2)
{
  if (a2)
  {
    v4 = CFURLCreateCopyDeletingPathExtension(0, url);
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x277CBECE8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
        v10 = CFURLCreateCopyAppendingPathExtension(v8, v4, ValueAtIndex);
        if (_IsFileAvailableAtURL(v10, 0))
        {
          break;
        }

        CFRelease(v10);
        if (v6 == ++v7)
        {
          goto LABEL_6;
        }
      }

      CFRelease(v4);
      return v10;
    }

LABEL_6:
    CFRelease(v4);
  }

  if (!_IsFileAvailableAtURL(url, 1))
  {
    return 0;
  }

  return CFRetain(url);
}

uint64_t _checkURLPermissions(const __CFURL *a1, CFArrayRef theArray, const __CFArray *a3)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v6 = __FileURLHasPrefixInArray(a1, theArray);
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!a3)
    {
LABEL_8:
      v7 = 1;
      return v6 & v7;
    }
  }

  if (CFArrayGetCount(a3) < 1)
  {
    goto LABEL_8;
  }

  v7 = __FileURLHasPrefixInArray(a1, a3) ^ 1;
  return v6 & v7;
}

char *__FileURLHasPrefixInArray(const __CFURL *a1, const __CFArray *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
  if (result)
  {
    result = realpath_DARWIN_EXTSN(buffer, __s1);
    if (result)
    {
      if (CFArrayGetCount(a2) < 1 || CFArrayGetCount(a2) < 1)
      {
        return 0;
      }

      else
      {
        v4 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
          if (CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v7, 1024))
          {
            v6 = strlen(v7);
            if (!strncmp(__s1, v7, v6))
            {
              break;
            }
          }

          if (++v4 >= CFArrayGetCount(a2))
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

CFURLRef _C3DURLCreateCopyByAppendingURL(const __CFURL *a1, const __CFURL *a2, Boolean a3)
{
  v3 = a1;
  if (!a2)
  {
    CFRetain(a1);
    return v3;
  }

  PathComponent = CFURLCopyLastPathComponent(a2);
  if (PathComponent)
  {
    v7 = PathComponent;
    if (CFEqual(PathComponent, @".") || CFEqual(v7, @".."))
    {
      CFRelease(v7);
      goto LABEL_6;
    }

    v9 = CFURLCreateCopyDeletingLastPathComponent(0, a2);
    v10 = _C3DURLCreateCopyByAppendingURL(v3, v9, 1);
    v3 = CFURLCreateCopyAppendingPathComponent(0, v10, v7, a3);
    CFRelease(v10);
    CFRelease(v7);
    if (v9)
    {
      CFRelease(v9);
    }

    return v3;
  }

LABEL_6:

  return CFRetain(v3);
}

void C3D::DOFBlurCoCYPass::DOFBlurCoCYPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC76D8;
  v5[14] = a4;
}

uint64_t C3D::DOFBlurCoCYPass::setup(C3D::DOFBlurCoCYPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (*(*this + 88))(this);
  v3 = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 16) = v3;
  v4 = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 18) = v4;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 28) = 115;
  v5 = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16) = v5;
  LODWORD(v2) = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18) = v2;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28) = 115;
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 8) = "DOFCoCBlurred";
  return result;
}

uint64_t C3D::DOFBlurCoCYPass::compile(C3D::DOFBlurCoCYPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::DOFBlurCoCYPass::execute(C3D::Pass *this, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = *(this + 14);
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  if ((*a2)->_buffers[0] == v6)
  {
    if (v3->_offsets[0] == v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3->_buffers[0] = v6;
  }

  v3->_offsets[0] = v5;
  v3->_buffersToBind[0] |= 1uLL;
LABEL_5:
  v7 = C3D::Pass::inputTextureAtIndex(this, 0);
  if (v3->_textures[0] != v7)
  {
    v3->_textures[0] = v7;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v8 = C3D::Pass::outputTextureAtIndex(this, 0);
  if (v3->_textures[1] != v8)
  {
    v3->_textures[1] = v8;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v9 = C3D::Pass::outputTextureAtIndex(this, 0);
  v10 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(this + 15) + 16);
  v11 = [(SCNMTLOpenSubdivComputeEvaluator *)v10 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v9, v11);
}

void C3D::DOFBlurCoCYPassResource::~DOFBlurCoCYPassResource(C3D::DOFBlurCoCYPassResource *this)
{
  *this = &unk_282DC7748;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC7748;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t __C3DAvoidOccluderConstraintDelegateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DAvoidOccluderConstraintDelegateGetTypeID_typeID = result;
  return result;
}

void *C3DAvoidOccluderConstraintDelegateCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAvoidOccluderConstraintDelegateCreate_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (C3DAvoidOccluderConstraintDelegateGetTypeID_onceToken != -1)
  {
    C3DAvoidOccluderConstraintDelegateCreate_cold_2();
  }

  result = C3DTypeCreateInstance_(C3DAvoidOccluderConstraintDelegateGetTypeID_typeID, 24);
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}