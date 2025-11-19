uint64_t C3DEffectCommonProfileGetEffectSlot(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DEffectCommonProfileReleaseSlot_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a2 > 0xF)
  {
    return 0;
  }

  v14 = qword_21C2A1B18[a2];
  result = *(a1 + v14);
  if (a3)
  {
    if (!result)
    {
      v16 = C3DEffectSlotCreate(a1, a2);
      *(a1 + v14) = v16;
      v17 = C3DEffectCommonProfileDefaultColorForEffectProperty(a2);
      C3DEffectSlotSetColor(v16, v17);
      return *(a1 + v14);
    }
  }

  return result;
}

uint64_t C3DEffectSlotCreate(uint64_t a1, int a2)
{
  if (C3DEffectSlotGetTypeID_onceToken != -1)
  {
    C3DEffectSlotCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DEffectSlotGetTypeID_typeID, 80);
  *(result + 50) = a2;
  *(result + 72) = 0xFFFFFFFE3F800000;
  *(result + 80) = a1;
  if ((a2 - 5) > 0x15)
  {
    v5 = 1024;
  }

  else
  {
    v5 = word_21C2A1B98[(a2 - 5)];
  }

  if (a2 == 15)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = 30720;
  }

  *(result + 48) = v5 | v6 | *(result + 48) & 0x83FF;
  return result;
}

void C3DEffectSlotSetColor(uint64_t a1, float *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v16[0] = 0;
  v16[1] = 0;
  *(a1 + 48) &= ~0x200u;
  if (!a2)
  {
    a2 = v16;
    C3DColor4Make(v16, 0.0, 0.0, 0.0, 1.0);
  }

  if (!C3DColor4IsEqualToColor4(a2, (a1 + 16)))
  {
    v12 = *(a1 + 28);
    IsBlack = C3DColor4IsBlack((a1 + 16));
    v14 = C3DColor4IsBlack(a2);
    *(a1 + 16) = *a2;
    if (v12 != 0.0 || a2[3] == 0.0)
    {
      v15 = v12 == 1.0 && a2[3] != 1.0;
    }

    else
    {
      v15 = 1;
    }

    __PostParentDidChangeNotification(a1, v15 | (*(a1 + 50) == 5) & (IsBlack ^ v14), 0);
  }
}

__CFString *C3DEffectCommonProfileNameForLightingModel(int a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = kC3DLightingModelLambert;
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        v3 = kC3DLightingModelPhong;
      }
    }

    else
    {
      v3 = kC3DLightingModelConstant;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v3 = kC3DLightingModelPhysicallyBased;
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      v3 = kC3DLightingModelShadowOnly;
    }
  }

  else if (a1 == 3)
  {
    v3 = kC3DLightingModelBlinn;
  }

  else
  {
    v3 = kC3DLightingModelNone;
  }

  return *v3;
}

CFComparisonResult C3DEffectCommonProfileLightingModelForName(const __CFString *a1)
{
  if (CFStringCompare(a1, @"physicallyBased", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  result = CFStringCompare(a1, @"constant", 0);
  if (result)
  {
    if (CFStringCompare(a1, @"lambert", 0))
    {
      if (CFStringCompare(a1, @"phong", 0))
      {
        if (CFStringCompare(a1, @"blinn", 0))
        {
          if (CFStringCompare(a1, @"none", 0))
          {
            if (CFStringCompare(a1, @"shadowOnly", 0))
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *C3DLightingModelGetDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"SCNLightingModelInvalid";
  }

  else
  {
    return *(&off_2782FDDD8 + a1);
  }
}

void C3DEffectCommonProfileCopy(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DGeometryCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  LightingModel = C3DEffectCommonProfileGetLightingModel(a1);
  C3DEffectCommonProfileSetLightingModel(a2, LightingModel);
  for (i = 0; i != 5; ++i)
  {
    v22 = byte_21C2A1B10[i];
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(a1, v22);
    C3DEffectCommonProfileSetFloatProperty(a2, v22, FloatProperty);
  }

  v24 = 0;
  do
  {
    EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, v24, 0);
    if (EffectSlot)
    {
      v26 = EffectSlot;
      v27 = C3DEffectCommonProfileGetEffectSlot(a2, v24, 1);
      C3DEffectSlotCopy(v26, v27);
    }

    v28 = v24++;
  }

  while (v28 < 0x10);
  *(a2 + 194) = *(a2 + 194) & 0xFFFFFFFE | *(a1 + 194) & 1;
  *(a2 + 193) = *(a1 + 193);
  C3DEffectCommonProfileSetTransparencyMode(a2, *(a1 + 180));
  *(a2 + 194) = *(a2 + 194) & 0xFFFFFFEF | (16 * ((*(a1 + 194) >> 4) & 1));
}

void C3DEffectCommonProfileSetLightingModel(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 24) != a2)
  {
    *(a1 + 24) = a2;
    __PostCommonProfileDidChangeNotification(a1);
  }
}

uint64_t C3DEffectCommonProfileGetLightingModel(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void C3DEffectCommonProfileSetFloatProperty(uint64_t a1, int a2, float a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a2 > 18)
  {
    if (a2 != 19)
    {
      if (a2 == 20)
      {
        v18 = *(a1 + 172);
        if (v18 != a3)
        {
          *(a1 + 172) = a3;
          if (a3 != 0.0 && v18 != 0.0)
          {
            C3DMaterialTouchValueStorageModificationCount(*(a1 + 16));
            return;
          }

          goto LABEL_24;
        }
      }

      return;
    }

    v19 = *(a1 + 168);
    if (v19 == a3)
    {
      return;
    }

    *(a1 + 168) = a3;
    if (a3 != 0.0 && v19 != 0.0)
    {
      return;
    }

LABEL_24:
    __PostCommonProfileDidChangeNotification(a1);
    return;
  }

  if (a2 == 16)
  {
    *(a1 + 160) = a3;
    goto LABEL_24;
  }

  if (a2 == 18)
  {
    v14 = *(a1 + 164);
    if (v14 != a3)
    {
      *(a1 + 164) = a3;
      v16 = v14 == 1.0 || v14 == 0.0 || a3 == 0.0;
      v17 = (a3 != 1.0) << 7;
      if (v16)
      {
        v17 = 0;
      }

      *(a1 + 194) = *(a1 + 194) & 0xFFFFFF7F | v17;
      goto LABEL_24;
    }
  }
}

float C3DEffectCommonProfileGetFloatProperty(float *a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = 0.0;
  if (a2 > 18)
  {
    if (a2 == 19)
    {
      return a1[42];
    }

    else if (a2 == 20)
    {
      return a1[43];
    }
  }

  else if (a2 == 16)
  {
    return a1[40];
  }

  else if (a2 == 18)
  {
    return a1[41];
  }

  return result;
}

void C3DEffectSlotCopy(uint64_t a1, uint64_t a2)
{
  C3DEffectSlotSetColor(a2, (a1 + 16));
  Image = C3DEffectSlotGetImage(a1);
  C3DEffectSlotSetImage(a2, Image);
  ImageProxy = C3DEffectSlotGetImageProxy(a1);
  C3DEffectSlotSetImageProxy(a2, ImageProxy);
  C3DEffectSlotSetTextureSampler(a2, *(a1 + 56));
  if (*(a1 + 64))
  {
    v6 = C3DMalloc(0x40uLL);
    *(a2 + 64) = v6;
    v7 = *(a1 + 64);
    v9 = v7[2];
    v8 = v7[3];
    v10 = v7[1];
    *v6 = *v7;
    v6[1] = v10;
    v6[2] = v9;
    v6[3] = v8;
  }

  Texture = C3DEffectSlotGetTexture(a1);
  C3DEffectSlotSetTexture(a2, Texture);
  MTLTexture = C3DEffectSlotGetMTLTexture(a1);
  C3DEffectSlotSetMTLTexture(a2, MTLTexture);
  UVSet = C3DEffectSlotGetUVSet(a1);
  C3DEffectSlotSetUVSet(a2, UVSet);
  TextureComponents = C3DEffectSlotGetTextureComponents(a1);
  C3DEffectSlotSetTextureComponents(a2, TextureComponents);
  Intensity = C3DEffectSlotGetIntensity(a1);
  C3DEffectSlotSetIntensity(a2, Intensity);
  *(a2 + 48) = *(a2 + 48) & 0xFDFF | *(a1 + 48) & 0x200;
}

void C3DEffectCommonProfileSetTransparencyMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 180) != a2)
  {
    *(a1 + 194) &= ~0x80u;
    *(a1 + 180) = a2;
    __PostCommonProfileDidChangeNotification(a1);
  }
}

uint64_t _C3DEffectCommonProfileSetDefaultValues(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  C3DEffectCommonProfileSetLightingModel(a1, 3);
  for (i = 0; i != 16; ++i)
  {
    _C3DEffectCommonProfileReleaseSlot(a1, byte_21C2A1B00[i]);
  }

  for (j = 0; j != 5; ++j)
  {
    if (j == 4)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    C3DEffectCommonProfileSetFloatProperty(a1, byte_21C2A1B10[j], v12);
  }

  C3DEffectCommonProfileSetImageProxy(a1, 2, 0);
  *(a1 + 180) = 0;
  v13 = *(a1 + 194);
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 1;
  *(a1 + 194) = v13 & 0xFFFFFE2C;
  result = C3DWasLinkedBeforeMajorOSYear2014();
  *(a1 + 193) = result ^ 1;
  return result;
}

void C3DEffectCommonProfileSetImageProxy(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetImageProxy(EffectSlot, a3);
  }

  *(a1 + 194) &= 0xE000FFFF;
}

double __C3DEffectCommonProfileGetTypeID_block_invoke()
{
  C3DEffectCommonProfileGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281741B08 = kC3DC3DEffectCommonProfileContextClassSerializable;
  unk_281741B18 = *&off_282DC4AB0;
  qword_281741AC0 = _C3DEffectCommonProfileCopyInstanceVariables;
  result = *&kC3DC3DEffectCommonProfileContextClassAnimatable;
  xmmword_281741AB0 = kC3DC3DEffectCommonProfileContextClassAnimatable;
  return result;
}

uint64_t C3DEffectCommonProfileCreate(uint64_t a1)
{
  if (C3DEffectCommonProfileGetTypeID_onceToken != -1)
  {
    C3DEffectCommonProfileCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEffectCommonProfileGetTypeID_typeID, 184);
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    _C3DEffectCommonProfileSetDefaultValues(Instance);
  }

  return v3;
}

void __PostCommonProfileDidChangeNotification(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = C3DGetScene(v2);
    C3DScenePostPipelineEvent(v3, 3, *(a1 + 16), 0);
  }

  else
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __PostCommonProfileDidChangeNotification_cold_1(v4);
    }
  }

  C3DMaterialTouchValueStorageModificationCount(*(a1 + 16));
}

void *C3DEffectCommonProfileGetColor(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (EffectSlot)
  {
    return (EffectSlot + 16);
  }

  else
  {
    return C3DEffectCommonProfileDefaultColorForEffectProperty(a2);
  }
}

uint64_t C3DEffectSlotGetColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 16;
}

uint64_t C3DEffectCommonProfileGetColorModulatedByIntensity(uint64_t a1, int a2)
{
  v9 = *C3DEffectCommonProfileGetColor(a1, a2);
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (EffectSlot && C3DEffectSlotHasImageOrTexture(EffectSlot))
  {
    C3DColor4Make(&v9, 1.0, 1.0, 1.0, 1.0);
  }

  Intensity = C3DEffectCommonProfileGetIntensity(a1, a2);
  if (Intensity != 1.0)
  {
    v7.i32[0] = v9;
    if (a2 == 6)
    {
      *v6.i32 = 1.0 - Intensity;
      *&v9 = (1.0 - Intensity) + (Intensity * *&v9);
      *(&v9 + 4) = vmla_n_f32(vdup_lane_s32(v6, 0), *(&v9 + 4), Intensity);
    }

    else if (a2 == 5)
    {
      v7.i32[1] = DWORD1(v9);
      v7.i64[1] = *(&v9 + 1);
      return vmulq_n_f32(v7, Intensity).i64[0];
    }

    else
    {
      *&v9 = Intensity * *&v9;
      *(&v9 + 4) = vmul_n_f32(*(&v9 + 4), Intensity);
    }
  }

  return v9;
}

BOOL C3DEffectSlotHasImageOrTexture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Image = C3DEffectSlotGetImage(a1);
  return Image && (C3DImageIsValid(Image) & 1) != 0 || C3DEffectSlotGetImageProxy(a1) || C3DEffectSlotGetTexture(a1) || C3DEffectSlotGetMTLTexture(a1) != 0;
}

float C3DEffectCommonProfileGetIntensity(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (EffectSlot)
  {
    return *(EffectSlot + 72);
  }

  else
  {
    return 1.0;
  }
}

void C3DEffectCommonProfileSetColor(uint64_t a1, int a2, float *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 1);
  if (EffectSlot)
  {
    C3DEffectSlotSetColor(EffectSlot, a3);
  }
}

uint64_t C3DEffectCommonProfileGetImage(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    if (*(result + 48))
    {
      return 0;
    }

    else
    {
      return *(result + 40);
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetImage(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  else
  {
    return *(a1 + 40);
  }
}

void C3DEffectCommonProfileSetImage(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetImage(EffectSlot, a3);
  }
}

void C3DEffectSlotSetImage(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (cf || !*(a1 + 48))
  {
    *(a1 + 48) &= 0xFF00u;
    v12 = *(a1 + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 40) = v13;
      __PostParentDidChangeNotification(a1, 1, 1);
    }
  }
}

float C3DEffectSlotGetIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

void C3DEffectSlotSetIntensity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 72) != a2)
  {
    *(a1 + 72) = a2;
    __PostParentDidChangeNotification(a1, 0, 0);
  }
}

uint64_t C3DEffectCommonProfileUVSetIsSet(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    return *(result + 76) != -2;
  }

  return result;
}

uint64_t C3DEffectCommonProfileGetUVSet(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (!EffectSlot)
  {
    return -1;
  }

  v13 = EffectSlot;
  result = *(EffectSlot + 76);
  if (result == -2)
  {
    if (*(v13 + 50) == 4)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetUVSet(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 76);
  if (result == -2)
  {
    if (*(a1 + 50) == 4)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void C3DEffectCommonProfileSetUVSet(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != -1);
  if (EffectSlot)
  {
    if (*(EffectSlot + 76) != a3)
    {
      *(EffectSlot + 76) = a3;
      __PostParentDidChangeNotification(EffectSlot, 0, 0);
    }
  }
}

void C3DEffectSlotSetUVSet(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 76) != a2)
  {
    *(a1 + 76) = a2;
    __PostParentDidChangeNotification(a1, 0, 0);
  }
}

uint64_t C3DEffectCommonProfileGetTextureSampler(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t C3DEffectSlotGetTextureSampler(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 56);
}

void C3DEffectCommonProfileSetTextureSampler(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetTextureSampler(EffectSlot, a3);
  }
}

void C3DEffectSlotSetTextureSampler(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 56);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 56) = v13;
    __PostParentDidChangeNotification(a1, 0, 0);
  }
}

uint64_t C3DEffectCommonProfileGetHashCode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 24) >= 7)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DEffectCommonProfileGetHashCode_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 24) | (16 * *(a1 + 192));
  if (C3DMaterialIsDoubleSided(*(a1 + 16)))
  {
    v19 = 32;
  }

  else
  {
    v19 = 0;
  }

  return (v18 | ((*(a1 + 194) & 1) << 6) | v19 | (32 * *(a1 + 194)) & 0x780 | ((*(a1 + 180) & 0xF) << 11) | (*(a1 + 193) << 15));
}

uint64_t C3DEffectCommonProfileGetEffectPropertyHashCode(float *a1, unsigned int a2)
{
  v4 = 0;
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (a2 >= 0x10)
  {
    if (a2 <= 0x14 && ((1 << a2) & 0x1D0000) != 0)
    {
      return 16 * (C3DEffectCommonProfileGetFloatProperty(a1, a2) == 0.0);
    }

    return v4;
  }

  else
  {

    return _C3DEffectSlotGetHashCode(EffectSlot, a2);
  }
}

uint64_t _C3DEffectSlotGetHashCode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v7 = C3DEffectCommonProfileDefaultColorForEffectProperty(a2);
    goto LABEL_9;
  }

  if (!C3DEffectSlotHasImageOrTexture(a1))
  {
    v8 = *(a1 + 50) - 7;
    if (v8 < 9 && ((0x119u >> v8) & 1) != 0)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = (a1 + 16);
LABEL_9:
    IsBlack = C3DColor4IsBlack(v7);
    IsWhite = C3DColor4IsWhite(v7);
    v6 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (IsBlack)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (IsWhite)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    v5 = 8 * (v7[3] >= 1.0);
    if (!a1)
    {
      return v12 | v11 | v4 | v3 | v13 | v5;
    }

    goto LABEL_16;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 1;
LABEL_16:
  v11 = (*(a1 + 72) != 1.0) << 13;
  v14 = (*(a1 + 48) >> 11) & 0xF;
  v15 = v14 == 15;
  v13 = v14 << 14;
  if (v15)
  {
    v13 = 0;
  }

  v12 = v6;
  return v12 | v11 | v4 | v3 | v13 | v5;
}

uint64_t C3DEffectSlotGetTexture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (v10 == 2)
  {
    return *(a1 + 32);
  }

  if (v10 == 1)
  {
    return *(a1 + 40);
  }

  return 0;
}

CFTypeRef _C3DEffectCommonProfileSetTextureForTextureProxy(uint64_t a1, int a2, const void *a3)
{
  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (result)
  {

    return C3DEffectSlotSetTextureFromImageProxy(result, a3);
  }

  return result;
}

CFTypeRef C3DEffectSlotSetTextureFromImageProxy(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

void C3DEffectCommonProfileSetTexture(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetTexture(EffectSlot, a3);
    *(a1 + 194) &= ~0x80u;
    __PostCommonProfileDidChangeNotification(a1);
  }
}

void C3DEffectSlotSetTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (cf || *(a1 + 48) == 1)
  {
    *(a1 + 48) = *(a1 + 48) & 0xFF00 | 1;
    v12 = *(a1 + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 40) = v13;
      __PostParentDidChangeNotification(a1, 1, 1);
    }
  }
}

void C3DEffectCommonProfileSetMTLTexture(uint64_t a1, int a2, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, a3 != 0);
  if (EffectSlot)
  {
    C3DEffectSlotSetMTLTexture(EffectSlot, a3);
    *(a1 + 194) &= ~0x80u;
    __PostCommonProfileDidChangeNotification(a1);
  }
}

void C3DEffectSlotSetMTLTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (cf || *(a1 + 48) == 3)
  {
    *(a1 + 48) = *(a1 + 48) & 0xFE00 | 3;
    v12 = *(a1 + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 40) = v13;
    }

    __PostParentDidChangeNotification(a1, 1, 1);
  }
}

uint64_t C3DEffectCommonProfileGetImageProxy(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {
    if (*(result + 48) == 2)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetImageProxy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 48) == 2)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void C3DEffectSlotSetImageProxy(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (cf || *(a1 + 48) == 2)
  {
    *(a1 + 48) = *(a1 + 48) & 0xFF00 | 2;
    v12 = *(a1 + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 40) = v13;
      CommonProfile = _C3DEffectSlotGetCommonProfile(a1);
      if (CommonProfile)
      {
        *(CommonProfile + 194) &= 0xE000FFFF;
      }

      __PostParentDidChangeNotification(a1, 1, 1);
    }
  }
}

void C3DEffectCommonProfileSetAvoidsOverLighting(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 194) & 1) != a2)
  {
    *(a1 + 194) = *(a1 + 194) & 0xFFFFFFFE | a2;
    __PostCommonProfileDidChangeNotification(a1);
  }
}

uint64_t C3DEffectCommonProfileGetAvoidsOverLighting(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 194) & 1;
}

void C3DEffectCommonProfileSetPerPixelLit(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 192) != a2)
  {
    *(a1 + 192) = a2;
    *(a1 + 194) |= 2u;
    __PostCommonProfileDidChangeNotification(a1);
  }
}

uint64_t C3DEffectCommonProfileIsPerPixelLit(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 192);
}

uint64_t C3DEffectCommonProfileGetTransparencyMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 180);
}

uint64_t C3DEffectCommonProfileIsOpaque(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 194);
  if ((v10 & 0x80) == 0)
  {
    v11 = *(a1 + 180);
    *(a1 + 194) = v10 | 0x80;
    if (*(a1 + 164) >= 1.0 && __imageSlotIsOpaque(a1, 5) && __imageSlotIsOpaque(a1, 2))
    {
      Color = C3DEffectCommonProfileGetColor(a1, 5);
      v13 = *(a1 + 180);
      if ((v13 - 2) < 2)
      {
        goto LABEL_11;
      }

      if (v13 != 1)
      {
        if (*(a1 + 180))
        {
          v18 = scn_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20[0] = 67109120;
            v20[1] = v13;
            _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: __OpacityFromColorSlot:unexpected transparency mode %d", v20, 8u);
          }

          v14 = 1;
LABEL_21:
          if (!v14 || v11 == 1)
          {
            v16 = *(a1 + 194);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v19 = C3DEffectCommonProfileGetColor(a1, 2);
            v16 = *(a1 + 194);
            if (v19[3] >= 1.0)
            {
LABEL_24:
              v15 = 256;
              goto LABEL_15;
            }
          }

          v15 = 0;
          goto LABEL_15;
        }

LABEL_11:
        v14 = Color[3] >= 1.0;
        goto LABEL_21;
      }

      if (*Color <= 0.0 && Color[1] <= 0.0)
      {
        v14 = Color[2] <= 0.0;
        goto LABEL_21;
      }
    }

    v15 = 0;
    v16 = *(a1 + 194);
LABEL_15:
    v10 = v16 & 0xFFFFFEFF | v15;
    *(a1 + 194) = v10;
  }

  return (v10 >> 8) & 1;
}

uint64_t __imageSlotIsOpaque(uint64_t a1, int a2)
{
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  v5 = EffectSlot;
  if (a2 == 5)
  {
    if (*(a1 + 180) == 1)
    {
      if (!C3DEffectCommonProfileGetImageProxy(a1, 5) && !C3DEffectCommonProfileGetImage(a1, 5))
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!EffectSlot)
      {
        return 1;
      }

      if ((*(EffectSlot + 48) & 0x800) != 0)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

LABEL_6:

  return C3DEffectSlotIsOpaque(v5);
}

uint64_t C3DEffectCommonProfileContainsContentForEffectProperty(uint64_t a1, int a2)
{
  result = C3DEffectCommonProfileGetEffectSlot(a1, a2, 0);
  if (result)
  {

    return C3DEffectSlotHasImageOrTexture(result);
  }

  return result;
}

uint64_t C3DEffectCommonProfileGetEnableNormals(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 194) >> 2) & 1;
}

void C3DEffectCommonProfileSetEnableLockAmbientWithDiffuse(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 193) != a2)
  {
    *(a1 + 193) = a2;
    __PostCommonProfileDidChangeNotification(a1);
  }
}

uint64_t C3DEffectCommonProfileGetEnableLockAmbientWithDiffuse(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 193);
}

float C3DEffectCommonProfileGetConstantAlpha(float *a1)
{
  FloatProperty = C3DEffectCommonProfileGetFloatProperty(a1, 18);
  v3 = C3DEffectCommonProfileContainsContentForEffectProperty(a1, 5);
  Color = C3DEffectCommonProfileGetColor(a1, 5);
  if ((v3 & 1) == 0)
  {
    FloatProperty = FloatProperty * Color[3];
  }

  v5 = C3DEffectCommonProfileContainsContentForEffectProperty(a1, 2);
  v6 = C3DEffectCommonProfileGetColor(a1, 2);
  if ((v5 & 1) == 0)
  {
    return FloatProperty * v6[3];
  }

  return FloatProperty;
}

uint64_t C3DEffectCommonProfileHasConstantAlpha(float *a1, float *a2)
{
  if (C3DEffectCommonProfileContainsContentForEffectProperty(a1, 5))
  {
    return 0;
  }

  v5 = C3DEffectCommonProfileContainsContentForEffectProperty(a1, 2);
  v6 = v5;
  if (!v5 || (result = __imageSlotIsOpaque(a1, 2), result))
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(a1, 18);
    v8 = FloatProperty * *(C3DEffectCommonProfileGetColor(a1, 5) + 3);
    Color = C3DEffectCommonProfileGetColor(a1, 2);
    if ((v6 & 1) == 0)
    {
      v8 = v8 * Color[3];
    }

    *a2 = v8;
    return 1;
  }

  return result;
}

BOOL C3DEffectCommonProfileIsUsingSelfIllumination(uint64_t a1)
{
  if (C3DEffectCommonProfileContainsContentForEffectProperty(a1, 9))
  {
    return 1;
  }

  Color = C3DEffectCommonProfileGetColor(a1, 9);
  return !C3DColor4IsBlack(Color);
}

void C3DEffectCommonProfileSetSelfIlluminationOcclusion(uint64_t a1, float a2)
{
  if (*(a1 + 176) != a2)
  {
    *(a1 + 176) = a2;
    C3DMaterialTouchValueStorageModificationCount(*(a1 + 16));
  }
}

uint64_t C3DEffectCommonProfileIsUsingMappingChannel(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 0;
  while (1)
  {
    EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, v12, 0);
    if (EffectSlot)
    {
      v14 = *(EffectSlot + 76);
      if (v14 == -2)
      {
        if (*(EffectSlot + 50) == 4)
        {
          v14 = -1;
        }

        else
        {
          v14 = 0;
        }
      }

      if (v14 == a2)
      {
        break;
      }
    }

    v15 = v12++;
    if (v15 >= 0xF)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _C3DEffectSlotGetCommonProfile(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 50) > 20)
  {
    return 0;
  }

  else
  {
    return *(a1 + 80);
  }
}

uint64_t C3DEffectSlotIsOpaque(uint64_t a1)
{
  ImageProxy = C3DEffectSlotGetImageProxy(a1);
  if (!ImageProxy)
  {
    Image = C3DEffectSlotGetImage(a1);
    if (Image)
    {
      HasAlpha = C3DImageHasAlpha(Image);
    }

    else
    {
      Texture = C3DEffectSlotGetTexture(a1);
      if (!Texture)
      {
        if (C3DEffectSlotGetMTLTexture(a1))
        {
          return HIBYTE(*(a1 + 48)) & 1;
        }

        else
        {
          return 1;
        }
      }

      HasAlpha = C3DTextureHasAlpha(Texture);
    }

    return HasAlpha ^ 1u;
  }

  return C3DImageProxyIsOpaque(ImageProxy);
}

uint64_t C3DEffectSlotGetMTLTexture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 48) == 3)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void __PostParentDidChangeNotification(uint64_t a1, int a2, int a3)
{
  CommonProfile = _C3DEffectSlotGetCommonProfile(a1);
  if (CommonProfile)
  {
    if (a2)
    {
      *(CommonProfile + 194) &= ~0x80u;
    }

    if (a3)
    {
      *(CommonProfile + 194) &= ~0x40u;
    }

    __PostCommonProfileDidChangeNotification(CommonProfile);
  }

  else
  {
    v7 = *(a1 + 50);
    if (v7 > 0x19)
    {
      if (v7 == 26)
      {
        v13 = *(a1 + 80);
        if (v13)
        {

          _C3DCameraInvalidatePasses(v13);
        }
      }

      else if (v7 == 27)
      {
        v9 = *(a1 + 80);
        if (v9)
        {
          v10 = CFGetTypeID(v9);
          if (v10 == C3DGeometryGetTypeID())
          {

            _C3DGeometryShadingDidUpdate(v9);
          }

          else if (v10 == C3DMaterialGetTypeID())
          {

            _C3DMaterialShadingDidUpdate(v9);
          }
        }
      }
    }

    else if (v7 - 22 >= 2)
    {
      if (v7 == 25)
      {
        v11 = *(a1 + 80);
        if (v11)
        {
          if (a3)
          {
            v12 = CFGetTypeID(v11);
            if (v12 == C3DLightGetTypeID())
            {

              __C3DLightProbeEnvironmentDidChange(v11);
            }

            else
            {
              if (v12 != C3DSceneGetTypeID())
              {
                v14 = scn_default_log();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
                {
                  __PostParentDidChangeNotification_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
                }
              }

              __C3DSceneLightEnvironmentDidChange(v11);
            }
          }
        }
      }
    }

    else
    {
      v8 = *(a1 + 80);
      if (v8)
      {

        __C3DLightDidChange(v8);
      }
    }
  }
}

BOOL C3DEffectSlotIsValid(uint64_t a1)
{
  if ((*(a1 + 48) & 0x200) != 0)
  {
    return 0;
  }

  if (C3DEffectSlotHasImageOrTexture(a1))
  {
    return 1;
  }

  v3 = C3DEffectCommonProfileDefaultColorForEffectProperty(*(a1 + 50));
  return !C3DColor4IsEqualToColor4((a1 + 16), v3);
}

uint64_t C3DEffectSlotGetColorIfApplicable(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 48) & 0x200) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    return 0;
  }

  return a1 + 16;
}

uint64_t C3DEffectSlotGetImageTransform(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

void C3DEffectSlotSetImageTransform(uint64_t a1, __int128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  if (a2)
  {
    if (!v12)
    {
      v12 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
      *(a1 + 64) = v12;
    }

    v13 = *a2;
    v14 = a2[1];
    v15 = a2[3];
    v12[2] = a2[2];
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
  }

  else
  {
    if (!v12)
    {
      return;
    }

    C3DMatrix4x4MakeIdentity(v12);
  }

  __PostParentDidChangeNotification(a1, 0, 0);
}

BOOL C3DEffectSlotHasPrecomputedLightingEnvironment(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEffectSlotGetPrecomputedLightingEnvironment(a1) != 0;
}

uint64_t C3DEffectSlotGetPrecomputedLightingEnvironment(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 48) == 4)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void C3DEffectSlotSetHasNoContents(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEffectSlotSetHasNoContents_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 48) |= 0x200u;
}

uint64_t C3DEffectSlotGetTextureInfo(uint64_t a1, int *a2, _BYTE *a3, _BYTE *a4)
{
  if (!C3DEffectSlotGetTextureSampler(a1))
  {
    C3DTextureSamplerGetDefault();
  }

  MTLTexture = C3DEffectSlotGetMTLTexture(a1);
  if (MTLTexture)
  {
    *a2 = SCNMTLTextureToC3DTextureType(MTLTexture);
    result = C3DEffectSlotIsOpaque(a1);
    *a3 = result ^ 1;
    *a4 = 0;
    return result;
  }

  ImageProxy = C3DEffectSlotGetImageProxy(a1);
  if (ImageProxy)
  {
    v11 = ImageProxy;
    *a2 = C3DEngineContextInferTextureTypeForImageTypeAndTextureSampler(1u);
    *a3 = C3DImageProxyIsOpaque(v11) ^ 1;
    result = C3DImageProxyIsPremultiplied(v11);
    *a4 = result;
    return result;
  }

  result = C3DEffectSlotGetImage(a1);
  if (result)
  {
    v12 = result;
    result = C3DImageIsValid(result);
    if (result)
    {
      Attribute = C3DImageGetAttribute(v12, @"isAttachment");
      if (Attribute)
      {
        result = CFBooleanGetValue(Attribute);
        if (result)
        {
          *a2 = 2;
          *a3 = 1;
          return result;
        }
      }

      TextureOptions = C3DEffectSlotGetTextureOptions(a1);
      if (C3DMetalIsUsed() && (TextureOptions & 2) != 0 && C3DImageIsConvertibleToCubeMap(v12))
      {
        v15 = 4;
      }

      else
      {
        ImageType = C3DImageGetImageType(v12);
        if (ImageType > 7)
        {
LABEL_20:
          result = C3DImageHasAlpha(v12);
          *a3 = result;
          if (result)
          {
            result = C3DImageNeedsUnpremultiply(v12);
            v17 = result ^ 1;
          }

          else
          {
            v17 = 0;
          }

          *a4 = v17;
          return result;
        }

        v15 = dword_21C2A1BC4[ImageType];
      }

      *a2 = v15;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t C3DEffectSlotGetTextureOptions(uint64_t a1)
{
  v1 = *(a1 + 50);
  v2 = v1 - 24;
  if (v1 == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (v1 == 26)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if (v2 < 2)
  {
    v4 = 6;
  }

  if ((*(a1 + 48) & 0x400) != 0)
  {
    return v4;
  }

  else
  {
    return v4 + 1;
  }
}

void C3DEffectSlotSetPrecomputedLightingEnvironment(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 50) == 25 && (cf || *(a1 + 48) == 4))
  {
    *(a1 + 48) = *(a1 + 48) & 0xFF00 | 4;
    v12 = *(a1 + 40);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 40) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 40) = v13;
      CommonProfile = _C3DEffectSlotGetCommonProfile(a1);
      if (CommonProfile)
      {
        *(CommonProfile + 194) &= 0xE000FFFF;
      }

      __PostParentDidChangeNotification(a1, 0, 1);
    }
  }
}

uint64_t C3DEffectSlotGetTextureComponents(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 48) >> 11) & 0xF;
}

void C3DEffectSlotSetTextureComponents(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextExecuteSlotTextureProxy_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 48);
  if (((v12 >> 11) & 0xF) != a2)
  {
    *(a1 + 48) = v12 & 0x87FF | ((a2 & 0xF) << 11);
    __PostParentDidChangeNotification(a1, 0, 0);
  }
}

uint64_t C3DEffectSlotGetTypeID()
{
  if (C3DEffectSlotGetTypeID_onceToken != -1)
  {
    C3DEffectSlotCreate_cold_1();
  }

  return C3DEffectSlotGetTypeID_typeID;
}

double __C3DEffectSlotGetTypeID_block_invoke()
{
  C3DEffectSlotGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DEffectSlotContextClassAnimatable;
  xmmword_2817419C8 = kC3DC3DEffectSlotContextClassAnimatable;
  qword_2817419D8 = _C3DEffectSlotCopyInstanceVariables;
  return result;
}

void C3DEffectSlotSetSRGB(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  if (((((v2 & 0x400) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v3 = 1024;
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 48) = v2 & 0xFBFF | v3;
    __PostParentDidChangeNotification(a1, 0, 0);
  }
}

uint64_t C3DEffectSlotGetDefaultTextureOptions(int a1, int a2)
{
  if (a1 == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 26)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 - 24) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  return v4 | a2 ^ 1u;
}

char *C3DEffectPropertyGetNameStr(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return off_2782FDE10[a1];
  }
}

void _C3DEffectCommonProfileCFFinalize(void *a1)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationProfileWillDie", a1, 0, 1u);
  if (a1)
  {
    v3 = a1[4];
    if (v3)
    {
      v3[10] = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      v4[10] = 0;
    }

    v5 = a1[6];
    if (v5)
    {
      *(v5 + 80) = 0;
    }

    v6 = a1[7];
    if (v6)
    {
      *(v6 + 80) = 0;
    }

    v7 = a1[8];
    if (v7)
    {
      *(v7 + 80) = 0;
    }

    v8 = a1[9];
    if (v8)
    {
      *(v8 + 80) = 0;
    }

    v9 = a1[10];
    if (v9)
    {
      *(v9 + 80) = 0;
    }

    v10 = a1[11];
    if (v10)
    {
      *(v10 + 80) = 0;
    }

    v11 = a1[13];
    if (v11)
    {
      *(v11 + 80) = 0;
    }

    v12 = a1[12];
    if (v12)
    {
      *(v12 + 80) = 0;
    }

    v13 = a1[14];
    if (v13)
    {
      *(v13 + 80) = 0;
    }

    v14 = a1[15];
    if (v14)
    {
      *(v14 + 80) = 0;
    }

    v15 = a1[16];
    if (v15)
    {
      *(v15 + 80) = 0;
    }

    v16 = a1[17];
    if (v16)
    {
      *(v16 + 80) = 0;
    }

    v17 = a1[18];
    if (v17)
    {
      *(v17 + 80) = 0;
    }

    v18 = a1[19];
    if (v18)
    {
      *(v18 + 80) = 0;
    }

    if (v3)
    {
      CFRelease(v3);
      a1[4] = 0;
      v4 = a1[5];
    }

    if (v4)
    {
      CFRelease(v4);
      a1[5] = 0;
    }

    v19 = a1[6];
    if (v19)
    {
      CFRelease(v19);
      a1[6] = 0;
    }

    v20 = a1[7];
    if (v20)
    {
      CFRelease(v20);
      a1[7] = 0;
    }

    v21 = a1[8];
    if (v21)
    {
      CFRelease(v21);
      a1[8] = 0;
    }

    v22 = a1[9];
    if (v22)
    {
      CFRelease(v22);
      a1[9] = 0;
    }

    v23 = a1[10];
    if (v23)
    {
      CFRelease(v23);
      a1[10] = 0;
    }

    v24 = a1[11];
    if (v24)
    {
      CFRelease(v24);
      a1[11] = 0;
    }

    v25 = a1[13];
    if (v25)
    {
      CFRelease(v25);
      a1[13] = 0;
    }

    v26 = a1[12];
    if (v26)
    {
      CFRelease(v26);
      a1[12] = 0;
    }

    v27 = a1[14];
    if (v27)
    {
      CFRelease(v27);
      a1[14] = 0;
    }

    v28 = a1[15];
    if (v28)
    {
      CFRelease(v28);
      a1[15] = 0;
    }

    v29 = a1[17];
    if (v29)
    {
      CFRelease(v29);
      a1[17] = 0;
    }

    v30 = a1[18];
    if (v30)
    {
      CFRelease(v30);
      a1[18] = 0;
    }

    v31 = a1[19];
    if (v31)
    {
      CFRelease(v31);
      a1[19] = 0;
    }

    v32 = a1[16];
    if (v32)
    {
      CFRelease(v32);
      a1[16] = 0;
    }
  }
}

__CFString *_C3DEffectCommonProfileCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DEffectCommonProfile %p :", a1);
  LightingModel = C3DEffectCommonProfileGetLightingModel(a1);
  Description = C3DLightingModelGetDescription(LightingModel);
  CFStringAppendFormat(Mutable, 0, @" lightingModel:%@", Description);
  IsPerPixelLit = C3DEffectCommonProfileIsPerPixelLit(a1);
  CFStringAppendFormat(Mutable, 0, @" perPixelLit:%d", IsPerPixelLit);
  IsOpaque = C3DEffectCommonProfileIsOpaque(a1);
  CFStringAppendFormat(Mutable, 0, @" isOpaque:%d", IsOpaque);
  TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(a1);
  CFStringAppendFormat(Mutable, 0, @" transparencyMode:%d", TransparencyMode);
  for (i = 0; i != 21; ++i)
  {
    v9 = C3DEffectCommonProfileGetLightingModel(a1);
    if (C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(v9, i))
    {
      EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, i, 0);
      if (EffectSlot)
      {
        v11 = EffectSlot;
        v12 = _C3DEffectCommonProfileCFCopyDebugDescription_propertyNames[i];
        HasImageOrTexture = C3DEffectSlotHasImageOrTexture(EffectSlot);
        CFStringAppendFormat(Mutable, 0, @"[%@] texture:%d xform:%d", v12, HasImageOrTexture, *(v11 + 64) != 0);
      }
    }
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t _C3DEffectCommonProfileInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (C3DCFTypeIsDictionary())
  {
    if (!a2 && (v22 = scn_default_log(), os_log_type_enabled(v22, OS_LOG_TYPE_FAULT)))
    {
      _C3DTextureSamplerInitWithPropertyList_cold_4(v22, v23, v24, v25, v26, v27, v28, v29);
      if (!@"function")
      {
LABEL_10:
        v30 = scn_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v30, v31, v32, v33, v34, v35, v36, v37);
        }
      }
    }

    else if (!@"function")
    {
      goto LABEL_10;
    }

    if (!a1)
    {
      v38 = scn_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v38, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    Value = CFDictionaryGetValue(a2, @"function");
    if (Value)
    {
      v47 = C3DEffectCommonProfileLightingModelForName(Value);
      C3DEffectCommonProfileSetLightingModel(a1, v47);
      v48 = 1;
    }

    else
    {
      v58 = scn_default_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        _C3DEffectCommonProfileInitWithPropertyList_cold_7();
      }

      v48 = 0;
    }

    v59 = __DeserializeColor(a1, a2, @"emissionColor") & v48;
    v60 = __DeserializeColor(a1, a2, @"ambientColor");
    v61 = v59 & v60 & __DeserializeColor(a1, a2, @"diffuseColor");
    v62 = __DeserializeColor(a1, a2, @"filterColor");
    v63 = v61 & v62 & __DeserializeColor(a1, a2, @"specularColor");
    valuePtr = 0.0;
    v64 = CFDictionaryGetValue(a3, @"versionNumber");
    if (v64)
    {
      CFNumberGetValue(v64, kCFNumberDoubleType, &valuePtr);
    }

    if (valuePtr >= 0.12)
    {
      v63 &= __DeserializeColor(a1, a2, @"reflectiveColor");
    }

    v65 = __DeserializeColor(a1, a2, @"transparentColor");
    v66 = v65 & __DeserializeColor(a1, a2, @"normalColor");
    v67 = v66 & __DeserializeUVSet(a1, a2, @"emissionUVSet");
    v68 = v67 & __DeserializeUVSet(a1, a2, @"ambientUVSet") & v63;
    v69 = __DeserializeUVSet(a1, a2, @"diffuseUVSet");
    v70 = v69 & __DeserializeUVSet(a1, a2, @"filterUVSet");
    v71 = v70 & __DeserializeUVSet(a1, a2, @"specularUVSet");
    v72 = v71 & __DeserializeUVSet(a1, a2, @"reflectiveUVSet");
    v73 = v68 & v72 & __DeserializeUVSet(a1, a2, @"transparentUVSet");
    v74 = __DeserializeUVSet(a1, a2, @"normalUVSet");
    v75 = v74 & __DeserializeUVSet(a1, a2, @"shininessUVSet");
    v76 = v75 & __DeserializeTextureSampler(a1, a2, @"emissionTextureSampler");
    v77 = v76 & __DeserializeTextureSampler(a1, a2, @"ambientTextureSampler");
    v78 = v77 & __DeserializeTextureSampler(a1, a2, @"diffuseTextureSampler");
    v79 = v73 & v78 & __DeserializeTextureSampler(a1, a2, @"specularTextureSampler");
    v80 = __DeserializeTextureSampler(a1, a2, @"reflectiveTextureSampler");
    v81 = v80 & __DeserializeTextureSampler(a1, a2, @"transparentTextureSampler");
    v82 = v81 & __DeserializeTextureSampler(a1, a2, @"filterTextureSampler");
    v83 = v82 & __DeserializeTextureSampler(a1, a2, @"normalTextureSampler");
    v84 = v83 & __DeserializeTextureSampler(a1, a2, @"shininessTextureSampler");
    v85 = v84 & __DeserializeFloat(a1, a2, @"shininess");
    v86 = v79 & v85 & __DeserializeFloat(a1, a2, @"reflectivity");
    v57 = v86 & __DeserializeFloat(a1, a2, @"transparency");
    if (__DeserializeFloat(a1, a2, @"fresnelExponent"))
    {
      LOBYTE(v57) = __DeserializeFloat(a1, a2, @"indexOfRefraction") & v57;
    }

    v87 = CFDictionaryGetValue(a2, @"ambientIntensity");
    if (v87)
    {
      v129 = 0;
      CFNumberGetValue(v87, kCFNumberFloatType, &v129);
      EffectSlot = C3DEffectCommonProfileGetEffectSlot(a1, 1, 1);
      *(EffectSlot + 72) = v129;
    }

    v89 = CFDictionaryGetValue(a2, @"diffuseIntensity");
    if (v89)
    {
      v129 = 0;
      CFNumberGetValue(v89, kCFNumberFloatType, &v129);
      v90 = C3DEffectCommonProfileGetEffectSlot(a1, 2, 1);
      *(v90 + 72) = v129;
    }

    v91 = CFDictionaryGetValue(a2, @"specularIntensity");
    if (v91)
    {
      v129 = 0;
      CFNumberGetValue(v91, kCFNumberFloatType, &v129);
      v92 = C3DEffectCommonProfileGetEffectSlot(a1, 3, 1);
      *(v92 + 72) = v129;
    }

    v93 = CFDictionaryGetValue(a2, @"emissionIntensity");
    if (v93)
    {
      v129 = 0;
      CFNumberGetValue(v93, kCFNumberFloatType, &v129);
      v94 = C3DEffectCommonProfileGetEffectSlot(a1, 0, 1);
      *(v94 + 72) = v129;
    }

    v95 = CFDictionaryGetValue(a2, @"multiplyIntensity");
    if (v95)
    {
      v129 = 0;
      CFNumberGetValue(v95, kCFNumberFloatType, &v129);
      v96 = C3DEffectCommonProfileGetEffectSlot(a1, 6, 1);
      *(v96 + 72) = v129;
    }

    v97 = CFDictionaryGetValue(a2, @"transparentIntensity");
    if (v97)
    {
      v129 = 0;
      CFNumberGetValue(v97, kCFNumberFloatType, &v129);
      v98 = C3DEffectCommonProfileGetEffectSlot(a1, 5, 1);
      *(v98 + 72) = v129;
    }

    v99 = CFDictionaryGetValue(a2, @"normalIntensity");
    if (v99)
    {
      v129 = 0;
      CFNumberGetValue(v99, kCFNumberFloatType, &v129);
      v100 = C3DEffectCommonProfileGetEffectSlot(a1, 7, 1);
      *(v100 + 72) = v129;
    }

    v101 = CFDictionaryGetValue(a2, @"ambientOcclusionIntensity");
    if (v101)
    {
      v129 = 0;
      CFNumberGetValue(v101, kCFNumberFloatType, &v129);
      v102 = C3DEffectCommonProfileGetEffectSlot(a1, 8, 1);
      *(v102 + 72) = v129;
    }

    v103 = CFDictionaryGetValue(a2, @"selfIlluminationIntensity");
    if (v103)
    {
      v129 = 0;
      CFNumberGetValue(v103, kCFNumberFloatType, &v129);
      v104 = C3DEffectCommonProfileGetEffectSlot(a1, 9, 1);
      *(v104 + 72) = v129;
    }

    v105 = CFDictionaryGetValue(a2, @"metalness");
    if (v105)
    {
      v129 = 0;
      CFNumberGetValue(v105, kCFNumberFloatType, &v129);
      v106 = C3DEffectCommonProfileGetEffectSlot(a1, 10, 1);
      *(v106 + 72) = v129;
    }

    v107 = CFDictionaryGetValue(a2, @"roughness");
    if (v107)
    {
      v129 = 0;
      CFNumberGetValue(v107, kCFNumberFloatType, &v129);
      v108 = C3DEffectCommonProfileGetEffectSlot(a1, 11, 1);
      *(v108 + 72) = v129;
    }

    v109 = CFDictionaryGetValue(a2, @"displacementIntensity");
    if (v109)
    {
      v129 = 0;
      CFNumberGetValue(v109, kCFNumberFloatType, &v129);
      v110 = C3DEffectCommonProfileGetEffectSlot(a1, 15, 1);
      *(v110 + 72) = v129;
    }

    v111 = CFDictionaryGetValue(a2, @"reflectiveIntensity");
    if (v111)
    {
      v129 = 0;
      CFNumberGetValue(v111, kCFNumberFloatType, &v129);
      v112 = C3DEffectCommonProfileGetEffectSlot(a1, 4, 1);
      *(v112 + 72) = v129;
    }

    v113 = CFDictionaryGetValue(a2, @"double sided");
    v114 = CFDictionaryGetValue(a2, @"cullMode");
    v115 = CFDictionaryGetValue(a2, @"avoidsOverlighting");
    v116 = CFDictionaryGetValue(a2, @"locksAmbientWithDiffuse");
    v117 = CFDictionaryGetValue(a2, @"litPerPixel");
    v118 = *(a1 + 16);
    v119 = MEMORY[0x277CBED28];
    if (v118)
    {
      if (v113)
      {
        v120 = CFEqual(v113, *MEMORY[0x277CBED28]) != 0;
      }

      else
      {
        v120 = 0;
      }

      C3DMaterialSetDoubleSided(v118, v120);
      v121 = *(a1 + 16);
      if (v114)
      {
        v122 = CFEqual(v114, @"cullFront") != 0;
      }

      else
      {
        v122 = 0;
      }

      C3DMaterialSetCullMode(v121, v122);
    }

    if (v115)
    {
      v123 = CFEqual(v115, *v119) != 0;
    }

    else
    {
      v123 = 0;
    }

    *(a1 + 194) = *(a1 + 194) & 0xFFFFFFFE | v123;
    if (v116)
    {
      v124 = CFEqual(v116, *v119) != 0;
    }

    else
    {
      v124 = C3DWasLinkedBeforeMajorOSYear2014() ^ 1;
    }

    *(a1 + 193) = v124;
    if (v117)
    {
      v125 = CFEqual(v117, *v119) != 0;
      C3DEffectCommonProfileSetPerPixelLit(a1, v125);
    }

    v126 = CFDictionaryGetValue(a2, @"transparencyMode");
    if (v126)
    {
      v127 = CFEqual(v126, @"A_ONE") == 0;
    }

    else
    {
      v127 = 0;
    }

    C3DEffectCommonProfileSetTransparencyMode(a1, v127);
    return v57 & 1;
  }

  v49 = scn_default_log();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    _C3DEffectCommonProfileInitWithPropertyList_cold_3(v49, v50, v51, v52, v53, v54, v55, v56);
  }

  LOBYTE(v57) = 0;
  return v57 & 1;
}

__CFDictionary *_C3DEffectCommonProfileCopyPropertyList(uint64_t *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v101[1] + 4) = *MEMORY[0x277D85DE8];
  v95[0] = @"emissionColor";
  v95[1] = @"ambientColor";
  v95[2] = @"diffuseColor";
  v95[3] = @"specularColor";
  v95[4] = @"reflectiveColor";
  v95[5] = @"transparentColor";
  v95[6] = @"filterColor";
  v95[7] = @"normalColor";
  v94[0] = @"emissionImageID";
  v94[1] = @"ambientImageID";
  v94[2] = @"diffuseImageID";
  v94[3] = @"specularImageID";
  v94[4] = @"reflectiveImageID";
  v94[5] = @"transparentImageID";
  v94[6] = @"filterImageID";
  v94[7] = @"normalImageID";
  v94[8] = @"shininessImageID";
  v93[0] = @"emissionUVSet";
  v93[1] = @"ambientUVSet";
  v93[2] = @"diffuseUVSet";
  v93[3] = @"specularUVSet";
  v93[4] = @"reflectiveUVSet";
  v93[5] = @"transparentUVSet";
  v93[6] = @"filterUVSet";
  v93[7] = @"normalUVSet";
  v93[8] = @"shininessUVSet";
  v92[0] = @"shininess";
  v92[1] = @"reflectivity";
  v92[2] = @"transparency";
  v92[3] = @"indexOfRefraction";
  v92[4] = @"fresnelExponent";
  v91[0] = @"emissionTextureSampler";
  v91[1] = @"ambientTextureSampler";
  v91[2] = @"diffuseTextureSampler";
  v91[3] = @"specularTextureSampler";
  v91[4] = @"reflectiveTextureSampler";
  v91[5] = @"transparentTextureSampler";
  v91[6] = @"filterTextureSampler";
  v91[7] = @"normalTextureSampler";
  v91[8] = @"shininessTextureSampler";
  if (!cf)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v24 = Mutable;
    v25 = cf[2];
    if (v25)
    {
      if (C3DMaterialIsDoubleSided(cf[2]))
      {
        CFDictionarySetValue(v24, @"double sided", *MEMORY[0x277CBED28]);
      }

      CullMode = C3DMaterialGetCullMode(v25);
      v27 = kC3DCullBackValue;
      if (CullMode)
      {
        v27 = kC3DCullFrontValue;
      }

      CFDictionarySetValue(v24, @"cullMode", *v27);
    }

    if (*(cf + 194))
    {
      CFDictionarySetValue(v24, @"avoidsOverlighting", *MEMORY[0x277CBED28]);
    }

    if (*(cf + 193) == 1)
    {
      CFDictionarySetValue(v24, @"locksAmbientWithDiffuse", *MEMORY[0x277CBED28]);
    }

    if ((*(cf + 194) & 2) != 0)
    {
      v28 = MEMORY[0x277CBED28];
      if (!*(cf + 192))
      {
        v28 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v24, @"litPerPixel", *v28);
    }

    LightingModel = C3DEffectCommonProfileGetLightingModel(cf);
    if (!@"function")
    {
      v30 = scn_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v30, v31, v32, v33, v34, v35, v36, v37);
      }
    }

    v38 = C3DEffectCommonProfileNameForLightingModel(LightingModel);
    if (v38)
    {
      CFDictionarySetValue(v24, @"function", v38);
    }

    v88 = v38;
    v39 = 0;
    while (1)
    {
      v40 = v95[v39];
      Property = __GetProperty(v40);
      if (Property != -1)
      {
        break;
      }

LABEL_40:
      if (++v39 == 8)
      {
        for (i = 0; i != 9; ++i)
        {
          v51 = v94[i];
          v52 = __GetProperty(v51);
          if (v52 != -1)
          {
            v53 = v52;
            Image = C3DEffectCommonProfileGetImage(cf, v52);
            if (Image)
            {
              v55 = Image;
              if (!v51)
              {
                v56 = scn_default_log();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                {
                  _C3DEffectCommonProfileCopyPropertyList_cold_4(v100, v101, v56);
                }
              }

              EntryID = C3DLibraryGetEntryID(a2, v55);
              if (EntryID)
              {
                v58 = EntryID;
                if (EntryID >= 0x7FFFFFFF)
                {
                  v59 = scn_default_log();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
                  {
                    _C3DEffectCommonProfileCopyPropertyList_cold_6(v98, &v99, v59);
                  }
                }

                *cStr = v58;
                v60 = CFGetAllocator(v24);
                v61 = CFNumberCreate(v60, kCFNumberIntType, cStr);
                if (v61)
                {
                  v62 = v61;
                  CFDictionarySetValue(v24, v51, v61);
                  CFRelease(v62);
                }
              }
            }

            EffectSlot = C3DEffectCommonProfileGetEffectSlot(cf, v53, 0);
            if (EffectSlot)
            {
              v64 = *(EffectSlot + 76);
              if (v64 == -2)
              {
                if (*(EffectSlot + 50) == 4)
                {
                  v64 = -1;
                }

                else
                {
                  v64 = 0;
                }
              }

              *cStr = v64;
              if (v64 != -1)
              {
                v65 = CFNumberCreate(0, kCFNumberLongType, cStr);
                CFDictionarySetValue(v24, v93[i], v65);
                CFRelease(v65);
              }
            }
          }
        }

        for (j = 0; j != 9; ++j)
        {
          v67 = v91[j];
          v68 = __GetProperty(v67);
          if (v68 != -1)
          {
            TextureSampler = C3DEffectCommonProfileGetTextureSampler(cf, v68);
            if (TextureSampler)
            {
              v70 = TextureSampler;
              if (!v67)
              {
                v71 = scn_default_log();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
                {
                  _C3DEffectCommonProfileCopyPropertyList_cold_4(cStr, &cStr[4], v71);
                }
              }

              v72 = C3DCopyPropertyList(v70, 0, 0, a4);
              if (v72)
              {
                v73 = v72;
                CFDictionarySetValue(v24, v67, v72);
                CFRelease(v73);
              }
            }
          }
        }

        for (k = 0; k != 5; ++k)
        {
          v75 = v92[k];
          v76 = __GetProperty(v75);
          if (v76 != -1)
          {
            FloatProperty = C3DEffectCommonProfileGetFloatProperty(cf, v76);
            C3DSerializeFloatAsNumber(v24, v75, FloatProperty);
          }
        }

        if (*(cf + 180))
        {
          v78 = kC3DTransparency_RGB_ZEROValue;
        }

        else
        {
          v78 = kC3DTransparency_A_ONEValue;
        }

        CFDictionarySetValue(v24, @"transparencyMode", *v78);
        if (!v88)
        {
          CFRelease(v24);
          return 0;
        }

        return v24;
      }
    }

    v42 = Property;
    *cStr = *C3DEffectCommonProfileGetColor(cf, Property);
    if (C3DLinearRenderingIsEnabled())
    {
      C3DColor4ConvertToNonLinear(cStr);
    }

    v43 = C3DColor4CopyPropertyList(cStr);
    if (!v40 && (v44 = scn_default_log(), os_log_type_enabled(v44, OS_LOG_TYPE_FAULT)))
    {
      _C3DEffectCommonProfileCopyPropertyList_cold_4(v96, &v97, v44);
      if (!v43)
      {
        goto LABEL_34;
      }
    }

    else if (!v43)
    {
LABEL_34:
      v45 = C3DEffectCommonProfileGetEffectSlot(cf, v42, 0);
      if (v45)
      {
        v46 = *(v45 + 72);
        if (v46 != 1.0)
        {
          if (v42 == 6)
          {
            strcpy(cStr, "multiplyIntensity");
          }

          else
          {
            NameStr = C3DEffectPropertyGetNameStr(v42);
            v48 = strlen(NameStr);
            __strcpy_chk();
            strcpy(&cStr[v48], "Intensity");
          }

          v49 = CFStringCreateWithCString(0, cStr, 0x8000100u);
          C3DSerializeFloatAsNumber(v24, v49, v46);
          CFRelease(v49);
        }
      }

      goto LABEL_40;
    }

    CFDictionarySetValue(v24, v40, v43);
    CFRelease(v43);
    goto LABEL_34;
  }

  v79 = scn_default_log();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
  {
    _C3DGeometryFinalizeDeserialization_cold_2(v79, v80, v81, v82, v83, v84, v85, v86);
  }

  return 0;
}

uint64_t _C3DEffectCommonProfileFinalizeDeserialization(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  result = __DeserializeImage(a1, a2, a3, @"emissionImageID", a4);
  if (result)
  {
    result = __DeserializeImage(a1, a2, a3, @"ambientImageID", a4);
    if (result)
    {
      result = __DeserializeImage(a1, a2, a3, @"diffuseImageID", a4);
      if (result)
      {
        result = __DeserializeImage(a1, a2, a3, @"specularImageID", a4);
        if (result)
        {
          result = __DeserializeImage(a1, a2, a3, @"reflectiveImageID", a4);
          if (result)
          {
            result = __DeserializeImage(a1, a2, a3, @"transparentImageID", a4);
            if (result)
            {
              result = __DeserializeImage(a1, a2, a3, @"normalImageID", a4);
              if (result)
              {
                result = __DeserializeImage(a1, a2, a3, @"shininessImageID", a4);
                if (result)
                {
                  return __DeserializeImage(a1, a2, a3, @"filterImageID", a4);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const void *_C3DEffectCommonProfileFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = 0;
  do
  {
    result = C3DEffectCommonProfileGetImage(a1, v14);
    if (result)
    {
      v16 = result;
      C3DLibraryAddEntry(a2, result);
      result = C3DFillLibraryForSerialization(v16, a2, a3);
    }

    v17 = v14++;
  }

  while (v17 < 0x14);
  return result;
}

BOOL __DeserializeColor(uint64_t a1, CFDictionaryRef theDict, const __CFString *key)
{
  v35[0] = 0;
  v35[1] = 0;
  if (!theDict && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a1)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  if (!C3DColor4InitWithPropertyList(v35, Value, 0, 0))
  {
    v33 = scn_default_log();
    result = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __DeserializeColor_cold_4();
    return 0;
  }

  if (C3DLinearRenderingIsEnabled())
  {
    C3DColor4ConvertToLinear(v35);
  }

  Property = __GetProperty(key);
  if (Property != -1)
  {
    C3DEffectCommonProfileSetColor(a1, Property, v35);
    return 1;
  }

  v34 = scn_default_log();
  result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
  if (result)
  {
    __DeserializeColor_cold_5();
    return 0;
  }

  return result;
}

BOOL __DeserializeUVSet(uint64_t a1, CFDictionaryRef theDict, const __CFString *key)
{
  valuePtr = 0;
  if (!theDict && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a1)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  if (!CFNumberGetValue(Value, kCFNumberLongType, &valuePtr))
  {
    v33 = scn_default_log();
    result = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __DeserializeUVSet_cold_5();
    return 0;
  }

  Property = __GetProperty(key);
  if (Property != -1)
  {
    C3DEffectCommonProfileSetUVSet(a1, Property, valuePtr);
    return 1;
  }

  v34 = scn_default_log();
  result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
  if (result)
  {
    __DeserializeUVSet_cold_4();
    return 0;
  }

  return result;
}

uint64_t __DeserializeTextureSampler(uint64_t a1, const __CFDictionary *a2, const __CFString *a3)
{
  Property = __GetProperty(a3);
  if (!a2 && (v7 = scn_default_log(), os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v7, v8, v9, v10, v11, v12, v13, v14);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!a1)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  Value = CFDictionaryGetValue(a2, a3);
  if (!Value)
  {
    return 1;
  }

  v32 = Value;
  v33 = C3DTextureSamplerCreate();
  if (C3DInitWithPropertyList(v33, v32, 0, 0))
  {
    C3DEffectCommonProfileSetTextureSampler(a1, Property, v33);
    v34 = 1;
  }

  else
  {
    v35 = scn_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __DeserializeTextureSampler_cold_4();
    }

    v34 = 0;
  }

  CFRelease(v33);
  return v34;
}

uint64_t __DeserializeFloat(uint64_t a1, CFDictionaryRef theDict, const __CFString *key)
{
  valuePtr = 0.0;
  if (!theDict && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a1)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  result = CFDictionaryGetValue(theDict, key);
  if (!result)
  {
    return result;
  }

  if (!CFNumberGetValue(result, kCFNumberFloatType, &valuePtr))
  {
    v32 = scn_default_log();
    result = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __DeserializeUVSet_cold_5();
    return 0;
  }

  Property = __GetProperty(key);
  if (Property != -1)
  {
    C3DEffectCommonProfileSetFloatProperty(a1, Property, valuePtr);
    return 1;
  }

  v33 = scn_default_log();
  result = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
  if (result)
  {
    __DeserializeUVSet_cold_4();
    return 0;
  }

  return result;
}

uint64_t __GetProperty(const __CFString *a1)
{
  v4.length = CFStringGetLength(@"emission");
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"emission", v4, 0))
  {
    v5.length = CFStringGetLength(@"ambient");
    v5.location = 0;
    if (CFStringCompareWithOptions(a1, @"ambient", v5, 0))
    {
      v6.length = CFStringGetLength(@"diffuse");
      v6.location = 0;
      if (CFStringCompareWithOptions(a1, @"diffuse", v6, 0))
      {
        v7.length = CFStringGetLength(@"specular");
        v7.location = 0;
        if (CFStringCompareWithOptions(a1, @"specular", v7, 0))
        {
          v8.length = CFStringGetLength(@"reflective");
          v8.location = 0;
          if (CFStringCompareWithOptions(a1, @"reflective", v8, 0))
          {
            v9.length = CFStringGetLength(@"transparent");
            v9.location = 0;
            if (CFStringCompareWithOptions(a1, @"transparent", v9, 0))
            {
              v10.length = CFStringGetLength(@"filter");
              v10.location = 0;
              if (CFStringCompareWithOptions(a1, @"filter", v10, 0))
              {
                v11.length = CFStringGetLength(@"normal");
                v11.location = 0;
                if (CFStringCompareWithOptions(a1, @"normal", v11, 0))
                {
                  v12.length = CFStringGetLength(@"ambientOcclusion");
                  v12.location = 0;
                  if (CFStringCompareWithOptions(a1, @"ambientOcclusion", v12, 0))
                  {
                    v13.length = CFStringGetLength(@"selfIllumination");
                    v13.location = 0;
                    if (CFStringCompareWithOptions(a1, @"selfIllumination", v13, 0))
                    {
                      v14.length = CFStringGetLength(@"shininess");
                      v14.location = 0;
                      if (CFStringCompareWithOptions(a1, @"shininess", v14, 0))
                      {
                        if (CFStringCompare(a1, @"reflectivity", 0) && CFStringCompare(a1, @"reflectivity", 0))
                        {
                          if (CFStringCompare(a1, @"transparency", 0))
                          {
                            if (CFStringCompare(a1, @"indexOfRefraction", 0))
                            {
                              if (CFStringCompare(a1, @"fresnelExponent", 0))
                              {
                                return -1;
                              }

                              else
                              {
                                return 20;
                              }
                            }

                            else
                            {
                              return 19;
                            }
                          }

                          else
                          {
                            return 18;
                          }
                        }

                        else
                        {
                          return 17;
                        }
                      }

                      else
                      {
                        return 16;
                      }
                    }

                    else
                    {
                      return 9;
                    }
                  }

                  else
                  {
                    return 8;
                  }
                }

                else
                {
                  return 7;
                }
              }

              else
              {
                return 6;
              }
            }

            else
            {
              return 5;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __DeserializeImage(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, const __CFString *key, CFErrorRef *a5)
{
  if (!theDict && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    _C3DTextureSamplerInitWithPropertyList_cold_4(v10, v11, v12, v13, v14, v15, v16, v17);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (!a1)
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineGetRenderComponentsForRenderPass_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    return 1;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    v50 = scn_default_log();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      __DeserializeImage_cold_6();
      if (!a5)
      {
        return 1;
      }
    }

    else if (!a5)
    {
      return 1;
    }

    if (!*a5)
    {
      *a5 = C3DSceneSourceCreateMalformedDocumentError(0);
    }

    return 1;
  }

  v35 = valuePtr;
  if (!valuePtr)
  {
    return 1;
  }

  TypeID = C3DImageGetTypeID();
  RemappedID = C3DLibraryGetRemappedID(a2, v35, TypeID);
  if (!RemappedID)
  {
    v38 = scn_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      __DeserializeImage_cold_4(v38, v39, v40, v41, v42, v43, v44, v45);
    }
  }

  v46 = C3DImageGetTypeID();
  Entry = C3DLibraryGetEntry(a2, v46, RemappedID);
  if (Entry)
  {
    v48 = Entry;
    Property = __GetProperty(key);
    if (Property != -1)
    {
      C3DEffectCommonProfileSetImage(a1, Property, v48);
    }

    return 1;
  }

  v52 = scn_default_log();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    __DeserializeImage_cold_5(v52);
    if (!a5)
    {
      return 0;
    }
  }

  else if (!a5)
  {
    return 0;
  }

  if (*a5)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a5 = MalformedDocumentError;
  return result;
}

__CFArray *_C3DEffectCommonProfileCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 32;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v5, @"name", @"emission");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 40;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v9, @"name", @"ambient");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = MEMORY[0x277CBF150];
  v14 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 48;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v14, @"name", @"diffuse");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 56;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v18, @"name", @"specular");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 64;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v22, @"name", @"reflective");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 72;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v26, @"name", @"transparent");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = MEMORY[0x277CBF138];
  v31 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 80;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v34 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v31, @"name", @"filter");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = v30;
  v36 = MEMORY[0x277CBF150];
  v37 = CFDictionaryCreateMutable(0, 4, v35, MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 88;
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v40 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v37, @"name", @"normal");
  CFDictionarySetValue(v37, @"type", v38);
  CFDictionarySetValue(v37, @"address", v40);
  CFDictionarySetValue(v37, @"semantic", v39);
  CFArrayAppendValue(Mutable, v37);
  CFRelease(v39);
  CFRelease(v37);
  CFRelease(v40);
  CFRelease(v38);
  v41 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v36);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 112;
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v44 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v41, @"name", @"metalness");
  CFDictionarySetValue(v41, @"type", v42);
  CFDictionarySetValue(v41, @"address", v44);
  CFDictionarySetValue(v41, @"semantic", v43);
  CFArrayAppendValue(Mutable, v41);
  CFRelease(v43);
  CFRelease(v41);
  CFRelease(v44);
  CFRelease(v42);
  v45 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 120;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v48 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v45, @"name", @"roughness");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = MEMORY[0x277CBF150];
  v50 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 128;
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v52 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v53 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v50, @"name", @"displacement");
  CFDictionarySetValue(v50, @"type", v51);
  CFDictionarySetValue(v50, @"address", v53);
  CFDictionarySetValue(v50, @"semantic", v52);
  CFArrayAppendValue(Mutable, v50);
  CFRelease(v52);
  CFRelease(v50);
  CFRelease(v53);
  CFRelease(v51);
  v54 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v49);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 136;
  v55 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v56 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v57 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v54, @"name", @"clearCoat");
  CFDictionarySetValue(v54, @"type", v55);
  CFDictionarySetValue(v54, @"address", v57);
  CFDictionarySetValue(v54, @"semantic", v56);
  CFArrayAppendValue(Mutable, v54);
  CFRelease(v56);
  CFRelease(v54);
  CFRelease(v57);
  CFRelease(v55);
  v58 = MEMORY[0x277CBF138];
  v59 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 144;
  v60 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v62 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v59, @"name", @"clearCoatRoughness");
  CFDictionarySetValue(v59, @"type", v60);
  CFDictionarySetValue(v59, @"address", v62);
  CFDictionarySetValue(v59, @"semantic", v61);
  CFArrayAppendValue(Mutable, v59);
  CFRelease(v61);
  CFRelease(v59);
  CFRelease(v62);
  CFRelease(v60);
  v63 = v58;
  v64 = MEMORY[0x277CBF150];
  v65 = CFDictionaryCreateMutable(0, 4, v63, MEMORY[0x277CBF150]);
  v105 = 2;
  valuePtr = 5;
  v104 = a1 + 152;
  v66 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v67 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v68 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v65, @"name", @"clearCoatNormal");
  CFDictionarySetValue(v65, @"type", v66);
  CFDictionarySetValue(v65, @"address", v68);
  CFDictionarySetValue(v65, @"semantic", v67);
  CFArrayAppendValue(Mutable, v65);
  CFRelease(v67);
  CFRelease(v65);
  CFRelease(v68);
  CFRelease(v66);
  v69 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v64);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 160;
  v70 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v71 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v72 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v69, @"name", @"shininess");
  CFDictionarySetValue(v69, @"type", v70);
  CFDictionarySetValue(v69, @"address", v72);
  CFDictionarySetValue(v69, @"semantic", v71);
  CFArrayAppendValue(Mutable, v69);
  CFRelease(v71);
  CFRelease(v69);
  CFRelease(v72);
  CFRelease(v70);
  v73 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 164;
  v74 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v75 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v76 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v73, @"name", @"transparency");
  CFDictionarySetValue(v73, @"type", v74);
  CFDictionarySetValue(v73, @"address", v76);
  CFDictionarySetValue(v73, @"semantic", v75);
  CFArrayAppendValue(Mutable, v73);
  CFRelease(v75);
  CFRelease(v73);
  CFRelease(v76);
  CFRelease(v74);
  v77 = MEMORY[0x277CBF150];
  v78 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 168;
  v79 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v80 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v81 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v78, @"name", @"indexOfRefraction");
  CFDictionarySetValue(v78, @"type", v79);
  CFDictionarySetValue(v78, @"address", v81);
  CFDictionarySetValue(v78, @"semantic", v80);
  CFArrayAppendValue(Mutable, v78);
  CFRelease(v80);
  CFRelease(v78);
  CFRelease(v81);
  CFRelease(v79);
  v82 = MEMORY[0x277CBF138];
  v83 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v77);
  v105 = 0;
  valuePtr = 1;
  v104 = a1 + 172;
  v84 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v85 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v86 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v83, @"name", @"fresnelExponent");
  CFDictionarySetValue(v83, @"type", v84);
  CFDictionarySetValue(v83, @"address", v86);
  CFDictionarySetValue(v83, @"semantic", v85);
  CFArrayAppendValue(Mutable, v83);
  CFRelease(v85);
  CFRelease(v83);
  CFRelease(v86);
  CFRelease(v84);
  v87 = CFDictionaryCreateMutable(0, 4, v82, v77);
  v105 = 0;
  valuePtr = 3;
  v104 = a1 + 193;
  v88 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v89 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v90 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v87, @"name", @"locksAmbientWithDiffuse");
  CFDictionarySetValue(v87, @"type", v88);
  CFDictionarySetValue(v87, @"address", v90);
  CFDictionarySetValue(v87, @"semantic", v89);
  CFArrayAppendValue(Mutable, v87);
  CFRelease(v89);
  CFRelease(v87);
  CFRelease(v90);
  CFRelease(v88);
  v91 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v77);
  v105 = 0;
  valuePtr = 2;
  v104 = a1 + 24;
  v92 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v93 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v94 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v91, @"name", @"lightingModel");
  CFDictionarySetValue(v91, @"type", v92);
  CFDictionarySetValue(v91, @"address", v94);
  CFDictionarySetValue(v91, @"semantic", v93);
  CFArrayAppendValue(Mutable, v91);
  CFRelease(v93);
  CFRelease(v91);
  CFRelease(v94);
  CFRelease(v92);
  v95 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 2;
  v104 = a1 + 180;
  v96 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v97 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v98 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v95, @"name", @"transparencyMode");
  CFDictionarySetValue(v95, @"type", v96);
  CFDictionarySetValue(v95, @"address", v98);
  CFDictionarySetValue(v95, @"semantic", v97);
  CFArrayAppendValue(Mutable, v95);
  CFRelease(v97);
  CFRelease(v95);
  CFRelease(v98);
  CFRelease(v96);
  v99 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v105 = 0;
  valuePtr = 2;
  v104 = a1 + 184;
  v100 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v101 = CFNumberCreate(0, kCFNumberSInt32Type, &v105);
  v102 = CFNumberCreate(0, kCFNumberLongType, &v104);
  CFDictionarySetValue(v99, @"name", @"imagesCount");
  CFDictionarySetValue(v99, @"type", v100);
  CFDictionarySetValue(v99, @"address", v102);
  CFDictionarySetValue(v99, @"semantic", v101);
  CFArrayAppendValue(Mutable, v99);
  CFRelease(v101);
  CFRelease(v99);
  CFRelease(v102);
  CFRelease(v100);
  return Mutable;
}

void _C3DEffectCommonProfileSetValue(uint64_t a1, float *a2, float *a3, size_t a4)
{
  v8 = (a1 + 164);
  v9 = 0.0;
  v10 = 0.0;
  if ((a1 + 164) == a2)
  {
    v10 = *a2;
    v9 = *a3;
  }

  HashCode = C3DEffectCommonProfileGetHashCode(a1);
  memcpy(a2, a3, a4);
  v12 = C3DEffectCommonProfileGetHashCode(a1);
  if (v8 == a2)
  {
    v13 = v10 != 1.0 || v9 == 1.0;
    if (v13 && (v10 == 1.0 || v9 != 1.0))
    {
      goto LABEL_15;
    }

    *(a1 + 194) &= ~0x80u;
    goto LABEL_14;
  }

  if (HashCode != v12)
  {
LABEL_14:
    __PostCommonProfileDidChangeNotification(a1);
  }

LABEL_15:
  v14 = *(a1 + 16);

  C3DMaterialTouchValueStorageModificationCount(v14);
}

void _C3DEffectSlotCFFinalize(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }
}

CFStringRef _C3DEffectSlotCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DEffectSlot>");
}

CFStringRef _C3DEffectSlotCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DEffectSlot>");
}

void _C3DEffectSlotSetValue(uint64_t a1, void *__s1, void *__s2, size_t __n)
{
  if (!memcmp(__s1, __s2, __n))
  {
    return;
  }

  memcpy(__s1, __s2, __n);
  CommonProfile = _C3DEffectSlotGetCommonProfile(a1);
  if (!CommonProfile)
  {
    return;
  }

  if ((a1 + 40) == __s2)
  {
    v9 = -193;
    goto LABEL_8;
  }

  if ((a1 + 16) == __s2)
  {
    v9 = -129;
LABEL_8:
    *(CommonProfile + 194) &= v9;
  }

  __PostCommonProfileDidChangeNotification(CommonProfile);
}

__CFArray *_C3DEffectSlotCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 0;
  valuePtr = 13;
  v45 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v3, @"name", @"color");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  if (!*(a1 + 48))
  {
    v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v10 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v7, @"name", @"image");
    CFDictionarySetValue(v7, @"type", v8);
    CFDictionarySetValue(v7, @"address", v10);
    CFDictionarySetValue(v7, @"semantic", v9);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v9);
    CFRelease(v7);
    CFRelease(v10);
    CFRelease(v8);
  }

  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 2;
  valuePtr = 5;
  v45 = a1 + 56;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v11, @"name", @"sampler");
  CFDictionarySetValue(v11, @"type", v12);
  CFDictionarySetValue(v11, @"address", v14);
  CFDictionarySetValue(v11, @"semantic", v13);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v13);
  CFRelease(v11);
  CFRelease(v14);
  CFRelease(v12);
  v15 = *(a1 + 48);
  if (v15 == 1)
  {
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v19 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v16, @"name", @"texture");
    CFDictionarySetValue(v16, @"type", v17);
    CFDictionarySetValue(v16, @"address", v19);
    CFDictionarySetValue(v16, @"semantic", v18);
    CFArrayAppendValue(Mutable, v16);
    CFRelease(v18);
    CFRelease(v16);
    CFRelease(v19);
    CFRelease(v17);
    v15 = *(a1 + 48);
  }

  if (v15 == 3)
  {
    v20 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v22 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v23 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v20, @"name", @"mtltexture");
    CFDictionarySetValue(v20, @"type", v21);
    CFDictionarySetValue(v20, @"address", v23);
    CFDictionarySetValue(v20, @"semantic", v22);
    CFArrayAppendValue(Mutable, v20);
    CFRelease(v22);
    CFRelease(v20);
    CFRelease(v23);
    CFRelease(v21);
    v15 = *(a1 + 48);
  }

  if (v15 == 2)
  {
    v24 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v27 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v24, @"name", @"imageProxy");
    CFDictionarySetValue(v24, @"type", v25);
    CFDictionarySetValue(v24, @"address", v27);
    CFDictionarySetValue(v24, @"semantic", v26);
    CFArrayAppendValue(Mutable, v24);
    CFRelease(v26);
    CFRelease(v24);
    CFRelease(v27);
    CFRelease(v25);
    v15 = *(a1 + 48);
  }

  if (v15 == 4)
  {
    v28 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v46 = 2;
    valuePtr = 5;
    v45 = a1 + 40;
    v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
    v31 = CFNumberCreate(0, kCFNumberLongType, &v45);
    CFDictionarySetValue(v28, @"name", @"precomputedLightingEnvironment");
    CFDictionarySetValue(v28, @"type", v29);
    CFDictionarySetValue(v28, @"address", v31);
    CFDictionarySetValue(v28, @"semantic", v30);
    CFArrayAppendValue(Mutable, v28);
    CFRelease(v30);
    CFRelease(v28);
    CFRelease(v31);
    CFRelease(v29);
  }

  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 2;
  valuePtr = 5;
  v45 = a1 + 64;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v32, @"name", @"transforms");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 0;
  valuePtr = 2;
  v45 = a1 + 76;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v36, @"name", @"uvSet");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  v40 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v46 = 0;
  valuePtr = 1;
  v45 = a1 + 72;
  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &v46);
  v43 = CFNumberCreate(0, kCFNumberLongType, &v45);
  CFDictionarySetValue(v40, @"name", @"intensity");
  CFDictionarySetValue(v40, @"type", v41);
  CFDictionarySetValue(v40, @"address", v43);
  CFDictionarySetValue(v40, @"semantic", v42);
  CFArrayAppendValue(Mutable, v40);
  CFRelease(v42);
  CFRelease(v40);
  CFRelease(v43);
  CFRelease(v41);
  return Mutable;
}

void *C3D::PostProcessPassesCreateIfNeeded(C3D *this, C3D::RenderGraph *a2, C3D::MainPass *a3, C3D::Pass **a4)
{
  v88 = a2;
  v8 = *(this + 1);
  v7 = *(this + 2);
  RenderContext = C3DEngineContextGetRenderContext(v8);
  result = C3DEngineContextGetPointOfView(v8);
  if (!result)
  {
    return result;
  }

  result = C3DNodeGetCamera(result);
  if (!result)
  {
    return result;
  }

  v11 = result;
  Aligned = C3DScratchAllocatorAllocateAligned(v7, 72, 8, 0);
  *Aligned = 0u;
  *(Aligned + 16) = 0u;
  *(Aligned + 32) = 0u;
  *(Aligned + 48) = 0u;
  *(Aligned + 64) = 0;
  v87 = Aligned;
  v13 = (*(*a2 + 88))(a2);
  v14 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor]<= 1.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = 1.0;
  }

  *Aligned = v15 + 1.0;
  ColorGradingEffectSlot = C3DCameraGetColorGradingEffectSlot(v11, 0);
  WantsHDR = C3DCameraGetWantsHDR(v11);
  *(Aligned + 8) = WantsHDR;
  if (WantsHDR)
  {
    *(Aligned + 9) = C3DCameraGetWantsExposureAdaptation(v11);
    v18 = (Aligned + 9);
    v19 = (*(Aligned + 8) & 1) != 0 && C3DCameraGetBloomIntensity(v11) > 0.0;
  }

  else
  {
    v19 = 0;
    *(Aligned + 9) = 0;
    v18 = (Aligned + 9);
  }

  *(Aligned + 10) = v19;
  *(Aligned + 11) = C3DCameraGetMotionBlurIntensity(v11) > 0.0;
  if (C3DCameraGetDepthOfFieldIntensity(v11) <= 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  }

  *(Aligned + 12) = v20;
  v21 = C3DCameraGetColorFringeStrength(v11) > 0.0 && C3DCameraGetColorFringeIntensity(v11) != 0.0;
  *(Aligned + 13) = v21;
  *(Aligned + 14) = C3DCameraGetSaturation(v11) != 1.0;
  *(Aligned + 15) = C3DCameraGetContrast(v11) != 0.0;
  v22 = C3DCameraGetVignettingPower(v11) > 0.0 && C3DCameraGetVignettingIntensity(v11) > 0.0;
  *(Aligned + 16) = v22;
  v23 = ColorGradingEffectSlot && C3DEffectSlotHasImageOrTexture(ColorGradingEffectSlot) && C3DEffectSlotGetIntensity(ColorGradingEffectSlot) > 0.0;
  *(Aligned + 17) = v23;
  BloomIteration = C3DCameraGetBloomIteration(v11);
  v25 = fmax(((*(v13 + 8) * 0.5) / *Aligned), ((*(v13 + 12) * 0.5) / *Aligned));
  v26 = (floorf(log2f(v25)) + 1.0);
  if (BloomIteration < v26)
  {
    v26 = BloomIteration;
  }

  *(Aligned + 24) = v26;
  *(Aligned + 28) = fminf(fmaxf(C3DCameraGetBloomIterationSpread(v11), 0.0), 10.0) + 1.0;
  *(Aligned + 18) = C3DCameraGetGrainIntensity(v11) > 0.0;
  *(Aligned + 19) = C3DCameraGetGrainIsColored(v11);
  *(Aligned + 21) = [(SCNMTLRenderContext *)RenderContext enableARMode];
  v27 = C3DCameraGetWhiteBalanceTemperature(v11) != 0.0 || C3DCameraGetWhiteBalanceTint(v11) != 0.0;
  *(Aligned + 22) = v27;
  if (C3DEngineContextIsTemporalAntialiasingEnabled(v8) & 1) != 0 || (*(Aligned + 8) & 1) != 0 || (*v18 & 1) != 0 || (*(Aligned + 10) & 1) != 0 || (*(Aligned + 12) & 1) != 0 || (*(Aligned + 13) & 1) != 0 || (*(Aligned + 14) & 1) != 0 || (*(Aligned + 15) & 1) != 0 || (*(Aligned + 16) & 1) != 0 || (*(Aligned + 17) & 1) != 0 || (*(Aligned + 18) & 1) != 0 || (*(Aligned + 22))
  {
    v28 = 1;
  }

  else
  {
    if ((*(Aligned + 11) & 1) == 0 && *(Aligned + 21) != 1)
    {
      return 0;
    }

    v28 = 0;
  }

  Pass = C3D::ScenePass::lastPass(a2);
  StackAllocator = C3DEngineContextGetStackAllocator(v8);
  C3D::RenderGraph::getSuccessors(this, Pass, StackAllocator, v84);
  if (v28)
  {
    v31 = C3D::RenderGraph::createPass<C3D::CompositePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
    C3D::Pass::addDependency(v31, Pass);
    v32 = v87;
    if (*(v87 + 8) == 1)
    {
      v33 = C3D::RenderGraph::createPass<C3D::HDRAverageLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
      C3D::Pass::addDependency(v31, v33);
      v32 = v87;
    }

    else
    {
      v33 = 0;
    }

    if (v32[9] == 1)
    {
      v34 = C3D::RenderGraph::createPass<C3D::HDRFrameLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
      v35 = C3D::RenderGraph::createPass<C3D::GenerateMipmapPass,C3D::DrawNodesPass *&>(this, &v88);
      C3D::Pass::addDependency(v34, Pass);
      C3D::Pass::addDependency(v35, v34);
      C3D::Pass::addDependency(v33, v35);
      v32 = v87;
    }

    v83 = 0;
    if ((v32[10] & 1) != 0 || v32[12] == 1)
    {
      v36 = C3D::RenderGraph::createPass<C3D::DownSampleBloomCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
      v37 = v36;
      v83 = v36;
      v38 = v88;
      if (v88 != Pass)
      {
        C3D::Pass::addDependency(v36, Pass);
        v38 = v88;
      }

      C3D::Pass::addDependency(v37, v38);
      v32 = v87;
      v39 = *(v87 + 10);
      if (v39 == 1)
      {
        C3D::Pass::addDependency(v37, v33);
        v32 = v87;
        if ((*(v87 + 10) & 1) == 0)
        {
LABEL_60:
          if (v32[12] == 1)
          {
            DofSampleCount = C3DCameraGetDofSampleCount(v11);
            if (DofSampleCount <= 4)
            {
              v66 = 4;
            }

            else
            {
              v66 = DofSampleCount;
            }

            v67 = sqrtf(v66);
            v68 = v67 * v67;
            if (v68 >= 256)
            {
              v68 = 256;
            }

            *(v87 + 4) = v68 - 1;
            v69 = C3D::RenderGraph::createPass<C3D::DOFDownsampleCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
            v70 = C3D::RenderGraph::createPass<C3D::DOFBlurCoCXPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
            v71 = C3D::RenderGraph::createPass<C3D::DOFBlurCoCYPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
            v72 = C3D::RenderGraph::createPass<C3D::DOFFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
            C3D::Pass::addDependency(v69, v83);
            C3D::Pass::addDependency(v70, v69);
            C3D::Pass::addDependency(v71, v70);
            C3D::Pass::addDependency(v72, v71);
            C3D::Pass::addDependency(v72, v83);
            C3D::Pass::addDependency(v31, v72);
          }

          goto LABEL_67;
        }

LABEL_57:
        v81 = v28;
        BloomBlurRadius = C3DCameraGetBloomBlurRadius(v11);
        *v82 = BloomBlurRadius / (*v87 + *v87);
        v41 = *v82;
        v82[4] = 0;
        *&v82[6] = 0;
        v42 = C3D::RenderGraph::createPass<C3D::GaussianBlurPass,C3D::MainPass *&,C3D::GaussianBlurPass::Parameters>(this, &v88, v82);
        v43 = *(v13 + 12);
        v44 = fmaxf((*(v13 + 8) * 0.5) / *v87, 1.0);
        v45 = fmaxf((v43 * 0.5) / *v87, 1.0);
        v46 = C3D::Pass::descriptor(v42);
        v47 = C3D::PassDescriptor::inputAtIndex(v46, 0);
        *(v47 + 8) = "Bloom";
        *(v47 + 16) = v44;
        *(v47 + 18) = v45;
        *(v47 + 20) = 0;
        *(v47 + 24) = 514;
        *(v47 + 28) = 115;
        *(v47 + 30) = *(v87 + 24);
        v48 = C3D::Pass::descriptor(v42);
        v49 = C3D::PassDescriptor::outputAtIndex(v48, 0);
        v51 = *(v47 + 16);
        v50 = *(v47 + 32);
        v52 = *(v47 + 48);
        *(v49 + 64) = *(v47 + 64);
        *v49 = *v47;
        *(v49 + 16) = v51;
        *(v49 + 32) = v50;
        *(v49 + 48) = v52;
        *(v49 + 65) = 0;
        *v82 = v41;
        v82[4] = 1;
        *&v82[6] = 0;
        v53 = C3D::RenderGraph::createPass<C3D::GaussianBlurPass,C3D::MainPass *&,C3D::GaussianBlurPass::Parameters>(this, &v88, v82);
        *v82 = v53;
        v54 = C3D::Pass::descriptor(v53);
        v55 = C3D::PassDescriptor::inputAtIndex(v54, 0);
        *v55 = *v47;
        v56 = *(v47 + 64);
        v58 = *(v47 + 16);
        v57 = *(v47 + 32);
        v55[3] = *(v47 + 48);
        v55[4] = v56;
        v55[1] = v58;
        v55[2] = v57;
        v59 = C3D::Pass::descriptor(v53);
        v60 = C3D::PassDescriptor::outputAtIndex(v59, 0);
        *v60 = *v49;
        v61 = *(v49 + 64);
        v63 = *(v49 + 16);
        v62 = *(v49 + 32);
        v60[3] = *(v49 + 48);
        v60[4] = v61;
        v60[1] = v63;
        v60[2] = v62;
        C3D::Pass::addDependency(v42, v37);
        C3D::Pass::addDependency(v53, v42);
        if (*(v87 + 24) >= 2)
        {
          v64 = C3D::RenderGraph::createPass<C3D::BloomDownSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(this, &v83, &v87);
          C3D::Pass::addDependency(v64, v53);
          v53 = C3D::RenderGraph::createPass<C3D::BloomUpSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(this, v82, &v87);
          C3D::Pass::addDependency(v53, v64);
        }

        C3D::Pass::addDependency(v31, v53);
        v32 = v87;
        v28 = v81;
        goto LABEL_60;
      }
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    if (!v39)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v31 = 0;
LABEL_67:
  if (*(v87 + 11) == 1 && *(C3D::DrawNodesPass::getCullingContext(v88) + 4920))
  {
    v73 = C3D::RenderGraph::createPass<C3D::MBTileMaxPass,C3D::MainPass *&>(this, &v88);
    v82[0] = 0;
    v74 = C3D::RenderGraph::createPass<C3D::MBNeighborMaxPass,C3D::MainPass *&,BOOL>(this, &v88, v82);
    v82[0] = 1;
    v75 = C3D::RenderGraph::createPass<C3D::MBNeighborMaxPass,C3D::MainPass *&,BOOL>(this, &v88, v82);
    v76 = C3D::RenderGraph::createPass<C3D::MBFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(this, &v88, &v87);
    C3D::Pass::addDependency(v73, v88);
    C3D::Pass::addDependency(v74, v73);
    C3D::Pass::addDependency(v75, v74);
    C3D::Pass::addDependency(v76, v75);
    if (v28)
    {
      C3D::Pass::addDependency(v76, v31);
    }

    v77 = v88;
    if (v88 != Pass)
    {
      C3D::Pass::addDependency(v76, Pass);
      v77 = v88;
    }

    C3D::Pass::addDependency(v76, v77);
  }

  else
  {
    v76 = v31;
  }

  if (v85)
  {
    v78 = v86;
    v79 = 8 * v85;
    do
    {
      v80 = *v78++;
      C3D::RenderGraph::removeDependency(this, v80, Pass);
      C3D::RenderGraph::addDependency(this, v80, v76);
      v79 -= 8;
    }

    while (v79);
  }

  if (a3)
  {
    *a3 = v76;
  }

  return v87;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::CompositePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 272, 16, 0);
  C3D::CompositePass::CompositePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::HDRAverageLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::HDRAverageLuminancePass::HDRAverageLuminancePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::HDRFrameLuminancePass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::HDRFrameLuminancePass::HDRFrameLuminancePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DownSampleBloomCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DownSampleBloomCoCPass::DownSampleBloomCoCPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::GaussianBlurPass *C3D::RenderGraph::createPass<C3D::GaussianBlurPass,C3D::MainPass *&,C3D::GaussianBlurPass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 272, 16, 0);
  C3D::GaussianBlurPass::GaussianBlurPass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::CustomPass *C3D::RenderGraph::createPass<C3D::BloomDownSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 144, 8, 0);
  C3D::BloomDownSamplePass::BloomDownSamplePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::BloomUpSamplePass,C3D::Pass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::BloomUpSamplePass::BloomUpSamplePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DOFDownsampleCoCPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFDownsampleCoCPass::DOFDownsampleCoCPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DOFBlurCoCXPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFBlurCoCXPass::DOFBlurCoCXPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DOFBlurCoCYPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFBlurCoCYPass::DOFBlurCoCYPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::DOFFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::DOFFinalBlurPass::DOFFinalBlurPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::MBTileMaxPass *C3D::RenderGraph::createPass<C3D::MBTileMaxPass,C3D::MainPass *&>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 120, 8, 0);
  C3D::MBTileMaxPass::MBTileMaxPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::MBNeighborMaxPass *C3D::RenderGraph::createPass<C3D::MBNeighborMaxPass,C3D::MainPass *&,BOOL>(uint64_t a1, C3D::Pass **a2, char *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::MBNeighborMaxPass::MBNeighborMaxPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::MBFinalBlurPass,C3D::MainPass *&,C3D::PostProcessPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::MBFinalBlurPass::MBFinalBlurPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void C3D::PostProcessPassesComputeUniforms(uint64_t a1, uint64_t a2, C3D::DrawNodesPass *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, float a30, float AverageGray, float a32, float a33, float a34, float ExposureAdaptationDuration, int8x8_t a36, float BloomThreshold, int a38, float BloomIntensity, int a40, float a41, float VignettingPower, float VignettingIntensity, float ColorFringeStrength, float ColorFringeIntensity, float Saturation, float Contrast, float a48, float a49, uint64_t a50, float32x2_t a51, float a52, int a53, int a54, unsigned int a55, unsigned int a56, unint64_t a57, float DepthOfFieldIntensity, int a59, float a60, float MotionBlurIntensity, float GrainIntensity, float32x4_t a63)
{
  a78 = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(a1);
  v74 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v75 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  PointOfView = C3DEngineContextGetPointOfView(a1);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
    if (Camera)
    {
      v78 = Camera;
      WhitePoint = C3DCameraGetWhitePoint(Camera);
      a30 = WhitePoint * C3DCameraGetWhitePoint(v78);
      AverageGray = C3DCameraGetAverageGray(v78);
      ExposureOffset = C3DCameraGetExposureOffset(v78);
      a34 = exp2f(ExposureOffset);
      ExposureAdaptationDuration = C3DCameraGetExposureAdaptationDuration(v78);
      ExposureAdaptationBrighteningSpeedFactor = C3DCameraGetExposureAdaptationBrighteningSpeedFactor(v78);
      ExposureAdaptationDarkeningSpeedFactor = C3DCameraGetExposureAdaptationDarkeningSpeedFactor(v78);
      a36 = vbsl_s8(vmovn_s64(vcgtq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(ExposureAdaptationDarkeningSpeedFactor), LODWORD(ExposureAdaptationBrighteningSpeedFactor))), vdupq_n_s64(0x3F847AE147AE147BuLL))), __PAIR64__(LODWORD(ExposureAdaptationDarkeningSpeedFactor), LODWORD(ExposureAdaptationBrighteningSpeedFactor)), vdup_n_s32(0x3C23D70Au));
      MinimumExposure = C3DCameraGetMinimumExposure(v78);
      a32 = exp2f(MinimumExposure);
      MaximumExposure = C3DCameraGetMaximumExposure(v78);
      a33 = exp2f(MaximumExposure);
      BloomThreshold = C3DCameraGetBloomThreshold(v78);
      a40 = *(a2 + 24);
      a38 = 1056964608;
      BloomIntensity = C3DCameraGetBloomIntensity(v78);
      VignettingPower = C3DCameraGetVignettingPower(v78);
      VignettingIntensity = C3DCameraGetVignettingIntensity(v78);
      ColorFringeStrength = C3DCameraGetColorFringeStrength(v78);
      ColorFringeIntensity = C3DCameraGetColorFringeIntensity(v78);
      Saturation = C3DCameraGetSaturation(v78);
      Contrast = C3DCameraGetContrast(v78);
      WhiteBalanceTemperature = C3DCameraGetWhiteBalanceTemperature(v78);
      a48 = WhiteBalanceTemperature;
      WhiteBalanceTint = C3DCameraGetWhiteBalanceTint(v78);
      a49 = WhiteBalanceTint;
      v86 = [(SCNMTLRenderContext *)RenderContext renderTime];
      v87 = floor(*&v86 * 30.0);
      v88 = 0.00390625 / fmax(C3DCameraGetGrainScale(v78), 0.00390625);
      v89 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor]<= 1.0;
      v90 = 2.0;
      if (!v89)
      {
        v90 = 1.0;
      }

      *&v138 = v90 * v88;
      GrainIntensity = C3DCameraGetGrainIntensity(v78);
      v91 = v87;
      v92 = sin(v91 * 0.01);
      v135 = fmin(v92 * 4242.0 - floor(v92 * 4242.0), 1.0);
      v93 = sin(v91 * 0.1 + 0.05);
      v94.f64[0] = v135;
      v94.f64[1] = fmin(v93 * 4242.0 - floor(v93 * 4242.0), 1.0);
      a63 = vcvt_hight_f32_f64(vcvt_f32_f64(vdupq_lane_s64(v138, 0)), v94);
      ARGrainSlice = C3DCameraGetARGrainSlice(v78);
      if ((*(a2 + 10) & 1) == 0)
      {
        BloomIntensity = 0.0;
      }

      if (*(a2 + 11) == 1)
      {
        MotionBlurIntensity = C3DCameraGetMotionBlurIntensity(v78);
      }

      Intensity = 0.0;
      if (*(a2 + 17) == 1)
      {
        ColorGradingEffectSlot = C3DCameraGetColorGradingEffectSlot(v78, 0);
        if (ColorGradingEffectSlot)
        {
          v97 = ColorGradingEffectSlot;
          if (C3DEffectSlotHasImageOrTexture(ColorGradingEffectSlot))
          {
            [v74 renderResourceForEffectSlot:v97 withEngineContext:a1 didFallbackToDefaultTexture:0];
          }

          Intensity = C3DEffectSlotGetIntensity(v97);
        }
      }

      a41 = Intensity;
      if (*(a2 + 22) == 1)
      {
        v98 = WhiteBalanceTemperature;
        v99 = -5.0;
        if (WhiteBalanceTemperature < -5.0)
        {
          v98 = -5.0;
        }

        v100 = fmin(v98, 5.0) * 0.5;
        if (WhiteBalanceTint >= -5.0)
        {
          v99 = WhiteBalanceTint;
        }

        v101 = fmin(v99, 5.0) * 0.5;
        v102 = 0.31271 - v100 * dbl_21C2A1C70[v100 < 0.0];
        v103 = ((v102 * -3.0) * v102) + v102 * 2.87 + -0.27509507;
        v104 = v103 + v101 * 0.05;
        v105 = v102 / v104;
        v106 = ((1.0 - v102) - v104) / v104;
        v107 = v105;
        v108 = v106;
        v109 = v105 * 0.003 + 0.0136 + v108 * 0.9834;
        a52 = 1.0873 / v109;
        a51 = vdiv_f32(0x3F8488A43F730132, vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_21C2A1C90, xmmword_21C2A1C80, v107), xmmword_21C2A1CA0, v108)));
      }

      v110 = *(C3D::DrawNodesPass::getCullingContext(a3) + 4744);
      v111 = *(C3D::DrawNodesPass::getCullingContext(a3) + 4752);
      v112 = C3DCameraGetFocalLength(v78) / 1000.0;
      v113 = v112 + 0.01;
      FocusDistance = C3DCameraGetFocusDistance(v78);
      if (v113 >= FocusDistance)
      {
        v115 = v113;
      }

      else
      {
        v115 = FocusDistance;
      }

      FStop = C3DCameraGetFStop(v78);
      if (FStop <= 0.0001)
      {
        v117 = 0.0001;
      }

      else
      {
        v117 = FStop;
      }

      v118 = C3DCameraGetAperture(v78) / 1000.0;
      BladeCount = C3DCameraGetBladeCount(v78);
      v120 = ((v112 * v118) / (v115 - v112)) / *a2;
      v121 = *C3DCameraGetProjectionInfosPtr(v78);
      v122 = C3D::Pass::descriptor(a3);
      v123 = C3D::PassDescriptor::outputAtIndex(v122, 0);
      v125 = 16;
      if ((v121 & 0x20) == 0)
      {
        v125 = 18;
      }

      LOWORD(v124) = *(v123 + v125);
      v126 = v120 * v124;
      *&v127 = (v111 - v110) * (v115 * v126) / (v110 * v111);
      *&v128 = (1.0 - v115 / v110) * v126;
      v136 = *&v128;
      v139 = *&v127;
      a57 = __PAIR64__(v128, v127);
      if ((C3DEngineContextGetCoordinatesSystemOptions(a1) & 8) != 0)
      {
        *&v129 = -v139;
        *(&v129 + 1) = v136 + v139;
        a57 = v129;
      }

      DepthOfFieldIntensity = C3DCameraGetDepthOfFieldIntensity(v78);
      a60 = v117;
      if (BladeCount <= 5)
      {
        v130 = 5;
      }

      else
      {
        v130 = BladeCount;
      }

      a59 = v130;
      if (*(a2 + 9) == 1)
      {
        a54 = 1015580809;
        FrameIndex = C3DEngineContextGetFrameIndex(a1);
        v132 = FrameIndex + 1;
        v133 = ExposureAdaptationDuration * 60.0;
        if (v133 < 1.0)
        {
          v133 = 1.0;
        }

        v134 = fmin(v133, 240.0);
        if (v134 > v132)
        {
          v134 = v132;
        }

        a55 = FrameIndex % 0xF0;
        a56 = v134;
      }

      SCNMTLBufferPool::allocateAndCopy(v75, &a30, 0x100uLL, &a28);
      *(a2 + 32) = a28;
      *(a2 + 48) = a29;
      *(a2 + 64) = C3DCameraGetAverageGray(v78);
    }
  }
}

void vmesh::SubdivideMidPoint(std::vector<int>::size_type a1, int a2, int a3, std::vector<int> *a4, void *a5, void *a6)
{
  v10 = a2;
  v12 = a2 << (2 * a3);
  std::vector<ClippedCorner>::resize(a6, a3 + 1);
  v59 = a6;
  v13 = *a6;
  *v13 = a1;
  v13[1] = v10;
  std::vector<vmesh::Triangle>::resize(a5, v12);
  if (a3 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v58 = a3;
    do
    {
      v60 = v14;
      v16 = a1;
      __x[0] = 0;
      std::vector<int>::resize(a4, a1 + 1, __x);
      if (v10 >= 1)
      {
        v17 = (a4->__begin_ + 1);
        v18 = v10;
        v19 = (*a5 + 8);
        do
        {
          v20 = *(v19 - 2);
          v21 = *(v19 - 1);
          v23 = *v19;
          v19 += 3;
          v22 = v23;
          if (v20 <= v21)
          {
            v24 = v21;
          }

          else
          {
            v24 = v20;
          }

          ++*(v17 + 4 * v24);
          if (v21 <= v22)
          {
            v21 = v22;
          }

          ++*(v17 + 4 * v21);
          if (v22 > v20)
          {
            v20 = v22;
          }

          ++*(v17 + 4 * v20);
          --v18;
        }

        while (v18);
      }

      if (v15 >= a1)
      {
        a1 = a1;
      }

      else
      {
        a1 = a1;
        v25 = &a4->__begin_[v15];
        v28 = *v25;
        v26 = v25 + 1;
        v27 = v28;
        v29 = v16 - v15;
        do
        {
          v27 += *v26;
          *v26++ = v27;
          --v29;
        }

        while (v29);
      }

      std::vector<ClippedCorner>::resize(&a4[2].__begin_, *(a4->__end_ - 1));
      __x[0] = 0;
      std::vector<int>::resize(a4 + 1, a1, __x);
      a1 = v16;
      if (v10 >= 1)
      {
        v30 = v10;
        a1 = v16;
        do
        {
          v31 = 0;
          v32 = v30 - 1;
          v33 = *a5;
          v34 = *a5 + 12 * (v30 - 1);
          *__x = *v34;
          v64 = *(v34 + 8);
          v61 = -1;
          v62 = -1;
          begin = a4->__begin_;
          v36 = a4[1].__begin_;
          v37 = (a4->__begin_ + 1);
          v38 = a4[2].__begin_;
          do
          {
            v39 = __x[v31];
            v40 = v31 + 1;
            v41 = (v31 + 1);
            if (v31 == 2)
            {
              v41 = 0;
            }

            v42 = __x[v41];
            if (v39 <= v42)
            {
              v43 = __x[v41];
            }

            else
            {
              v43 = __x[v31];
            }

            if (v42 < v39)
            {
              v39 = v42;
            }

            v44 = begin[v43];
            v45 = v36[v43];
            v46 = v45 + v44;
            if (v45 >= 1)
            {
              v47 = &v38[2 * v44 + 1];
              while (*(v47 - 1) != v39)
              {
                ++v44;
                v47 += 2;
                if (v44 >= v46)
                {
                  goto LABEL_34;
                }
              }

              *(&v61 + v31) = *v47;
            }

LABEL_34:
            if (*(&v61 + v31) == -1)
            {
              if (v46 >= *(v37 + 4 * v43))
              {
                vmesh::SubdivideMidPoint();
              }

              v48 = &v38[2 * v46];
              *v48 = v39;
              v48[1] = a1;
              ++v36[v43];
              *(&v61 + v31) = a1;
              a1 = (a1 + 1);
            }

            ++v31;
          }

          while (v40 != 3);
          v49 = v33 + 48 * v32;
          *v49 = v61;
          v51 = HIDWORD(v61);
          v50 = v62;
          *(v49 + 8) = v62;
          v52 = (*a5 + 12 * ((4 * v32) | 1));
          v53 = v61;
          *v52 = __x[0];
          v52[1] = v53;
          v52[2] = v50;
          LODWORD(v49) = __x[1];
          v54 = (*a5 + 12 * ((4 * v32) | 2));
          *v54 = v53;
          v54[1] = v49;
          v54[2] = v51;
          LODWORD(v49) = v64;
          v55 = (*a5 + 12 * ((4 * v32) | 3));
          *v55 = v50;
          v55[1] = v51;
          v55[2] = v49;
        }

        while (v30-- > 1);
      }

      v10 *= 4;
      v14 = v60 + 1;
      v57 = (*v59 + 8 * (v60 + 1));
      *v57 = a1;
      v57[1] = v10;
      v15 = v16;
    }

    while (v60 + 1 != v58);
  }
}

void std::vector<vmesh::Triangle>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<vmesh::Triangle>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

float32x4_t vmesh::TriangleMesh::computeNormals(vmesh::TriangleMesh *this, char a2)
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(this + 6, ((*(this + 1) - *this) >> 4));
  v5 = *(this + 6);
  v6 = *(this + 7) - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  v7 = *(this + 9);
  v8 = *(this + 10);
  while (v7 != v8)
  {
    v9 = *v7;
    v10 = *(*this + 16 * v9);
    v11 = vsubq_f32(*(*this + 16 * v7[1]), v10);
    v12 = vsubq_f32(*(*this + 16 * v7[2]), v10);
    v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v11)), v12, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    *(*(this + 6) + 16 * v9) = vaddq_f32(*(*(this + 6) + 16 * v9), v14);
    *(*(this + 6) + 16 * v7[1]) = vaddq_f32(v14, *(*(this + 6) + 16 * v7[1]));
    v15 = v7[2];
    v16 = *(this + 6);
    result = vaddq_f32(v14, *(v16 + 16 * v15));
    *(v16 + 16 * v15) = result;
    v7 += 3;
  }

  if (a2)
  {
    v17 = *(this + 6);
    v18 = *(this + 7);
    while (v17 != v18)
    {
      v19 = vmulq_f32(*v17, *v17);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      result = vmulq_n_f32(*v17, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      *v17++ = result;
    }
  }

  return result;
}

void vmesh::TriangleMesh::subdivideMidPoint(void *a1, int a2, void **a3, __int128 *a4, void **a5, std::vector<int> *a6, void **p_p, std::vector<int> *a8)
{
  v14 = a1 + 9;
  v15 = -1431655765 * ((a1[10] - a1[9]) >> 2);
  if (v15)
  {
    v16 = (a1[1] - *a1) >> 4;
    if (v16)
    {
      __p = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v17 = a3 ? a3 : &__p;
      v18 = (a4 ? a4 : &v30);
      v30 = 0uLL;
      v31 = 0uLL;
      vmesh::SubdivideMidPoint(v16, v15, a2, v18, v14, v17);
      vmesh::StaticAdjacencyInformation<Pair>::optimize(v18);
      v19 = *(*v17 + 2 * a2);
      v38 = 0u;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1, v19, &v38);
      _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(a1, v18);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(&v30);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }
  }

  v20 = -1431655765 * ((a1[16] - a1[15]) >> 2);
  if (v20)
  {
    v21 = (a1[7] - a1[6]) >> 4;
    if (v21)
    {
      __p = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      if (!p_p)
      {
        p_p = &__p;
      }

      if (!a8)
      {
        a8 = &v30;
      }

      v30 = 0uLL;
      v31 = 0uLL;
      vmesh::SubdivideMidPoint(v21, v20, a2, a8, a1 + 15, p_p);
      vmesh::StaticAdjacencyInformation<Pair>::optimize(a8);
      v22 = *(*p_p + 2 * a2);
      v38 = 0u;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1 + 6, v22, &v38);
      vmesh::InterpolateNormals((a1 + 6), a8);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(&v30);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }
  }

  v23 = a1 + 12;
  v24 = -1431655765 * ((a1[13] - a1[12]) >> 2);
  if (v24)
  {
    v25 = a1[3];
    v26 = a1[4];
    v27 = a1 + 3;
    v28 = (v26 - v25) >> 3;
    if (v28)
    {
      __p = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      if (!a5)
      {
        a5 = &__p;
      }

      if (!a6)
      {
        a6 = &v30;
      }

      v30 = 0uLL;
      v31 = 0uLL;
      vmesh::SubdivideMidPoint(v28, v24, a2, a6, v23, a5);
      vmesh::StaticAdjacencyInformation<Pair>::optimize(a6);
      v29 = *(*a5 + 2 * a2);
      *&v38 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(v27, v29, &v38);
      _ZN5vmesh19InterpolateMidPointIDv2_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(v27, a6);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(&v30);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }
  }
}

void *vmesh::DisplacedSubdivisionMesh::preprocessForSCN(vmesh::DisplacedSubdivisionMesh *this, int a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *this = a2;
  if (((*(this + 11) - *(this + 10)) & 0xFFFFFFFF0) == 0)
  {
    vmesh::TriangleMesh::computeNormals((this + 32), 1);
  }

  v5 = *(this + 7);
  if (((*(this + 8) - v5) & 0x7FFFFFFF8) == 0)
  {
    v6 = *(this + 5) - *(this + 4);
    v26 = 0;
    v27 = 0;
    v25 = 0;
    if ((v6 >> 4))
    {
      std::vector<double>::__vallocate[abi:nn200100](&v25, (v6 >> 4));
    }

    v7 = 0;
    if (v5)
    {
      *(this + 8) = v5;
      operator delete(v5);
      v7 = v26;
    }

    v8 = v27;
    *(this + 7) = v25;
    *(this + 8) = v7;
    *(this + 9) = v8;
  }

  vmesh::TriangleMesh::subdivideMidPoint(this + 4, a2, this + 1, (this + 392), 0, 0, 0, 0);
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "preprocess() ", 13);
  v11 = MEMORY[0x21CF07540](v10, (rep - v4.__d_.__rep_) / 1000000000.0 * 1000.0);
  result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, " ms\n", 4);
  v13 = *(this + 2) - *(this + 1);
  if ((v13 >> 3) >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = (v13 >> 3) & 0x7FFFFFFF;
    v17 = MEMORY[0x277D82678];
    do
    {
      v18 = (*(this + 1) + v14);
      v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, "\t LOD[", 6);
      v20 = MEMORY[0x21CF07550](v19, v15);
      v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, "] ", 2);
      v22 = MEMORY[0x21CF07550](v21, *v18);
      v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, "V ", 2);
      v24 = MEMORY[0x21CF07550](v23, v18[1]);
      result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "T\n", 2);
      ++v15;
      v14 += 8;
    }

    while (v16 != v15);
  }

  return result;
}

void vmesh::StaticAdjacencyInformation<Pair>::optimize(void *a1)
{
  v2 = a1[4] - a1[3];
  v3 = v2 >> 2;
  if ((v2 >> 2) <= 0)
  {
    v13 = *a1;
    **a1 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a1, v4);
      v7 = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a1, v4) - started;
      if (v7 >= 1 && started != v5)
      {
        v9 = 0;
        v10 = 8 * v5;
        v11 = 8 * started;
        do
        {
          *(a1[6] + v10) = *(a1[6] + v11);
          ++v9;
          v10 += 8;
          v11 += 8;
        }

        while (v9 < v7);
      }

      v5 += v7;
      ++v4;
    }

    while (v4 != v3);
    v12 = a1[3];
    v13 = *a1;
    **a1 = 0;
    v14 = *v12;
    v15 = (v2 >> 2) & 0x7FFFFFFF;
    v16 = 1;
    do
    {
      v13[v16] = v14;
      v14 += v12[v16++];
      --v15;
    }

    while (v15);
  }

  v17 = v13[v3];

  std::vector<ClippedCorner>::resize(a1 + 6, v17);
}

uint64_t _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(uint64_t result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v15 = *(*v4 + 16 * v5);
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a2, v5);
      result = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a2, v5);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = (v4[1] - *v4) >> 4, v12 >= v13))
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_1();
          }

          v14 = v11[1];
          if ((v14 & 0x80000000) != 0 || v14 >= v13)
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_2();
          }

          *(*v4 + 16 * v14) = vmulq_f32(vaddq_f32(v15, *(*v4 + 16 * v12)), v8);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t vmesh::InterpolateNormals(uint64_t result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v19 = *(*v4 + 16 * v5);
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a2, v5);
      result = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a2, v5);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = *v4, v14 = (v4[1] - *v4) >> 4, v12 >= v14))
          {
            vmesh::InterpolateNormals();
          }

          v15 = v11[1];
          if ((v15 & 0x80000000) != 0 || v15 >= v14)
          {
            vmesh::InterpolateNormals();
          }

          v16 = vmulq_f32(vaddq_f32(v19, *(v13 + 16 * v12)), v8);
          v17 = vmulq_f32(v16, v16);
          *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
          *v17.f32 = vrsqrte_f32(v18);
          *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
          *(v13 + 16 * v15) = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t _ZN5vmesh19InterpolateMidPointIDv2_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE(uint64_t result, void *a2)
{
  v2 = a2[4] - a2[3];
  if ((v2 >> 2) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *(*v4 + 8 * v5);
      started = vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(a2, v5);
      result = vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(a2, v5);
      v9 = result - started;
      if (result > started)
      {
        v10 = 8 * started;
        do
        {
          v11 = (a2[6] + v10);
          v12 = *v11;
          if ((v12 & 0x80000000) != 0 || (v13 = (v4[1] - *v4) >> 3, v12 >= v13))
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_1();
          }

          v14 = v11[1];
          if ((v14 & 0x80000000) != 0 || v14 >= v13)
          {
            _ZN5vmesh19InterpolateMidPointIDv3_fEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEERKNS_26StaticAdjacencyInformationI4PairEE_cold_2();
          }

          *(*v4 + 8 * v14) = vmul_f32(vadd_f32(v7, *(*v4 + 8 * v12)), 0x3F0000003F000000);
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void std::vector<vmesh::Triangle>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex(void *a1, int a2)
{
  if (((a1[4] - a1[3]) >> 2) <= a2)
  {
    vmesh::StaticAdjacencyInformation<Pair>::neighborsStartIndex();
  }

  return *(*a1 + 4 * a2);
}

uint64_t vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex(void *a1, int a2)
{
  v2 = a1[3];
  if (((a1[4] - v2) >> 2) <= a2)
  {
    vmesh::StaticAdjacencyInformation<Pair>::neighborsEndIndex();
  }

  return (*(v2 + 4 * a2) + *(*a1 + 4 * a2));
}

uint64_t vmesh::TriangleMesh::loadBaseMeshFromVectors(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 == *a2)
  {
    vmesh::TriangleMesh::loadBaseMeshFromVectors();
  }

  v8 = a4;
  v9 = a3;
  v12 = *a3;
  v40 = *a4;
  v41 = a4[1];
  v39 = a3[1];
  if (v39 != *a3)
  {
    if ((v39 - v12) >> 3 != v6 >> 4)
    {
      vmesh::TriangleMesh::loadBaseMeshFromVectors();
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm((a1 + 24), v6 >> 4);
  }

  if (v41 != v40)
  {
    if (v8[1] - *v8 != v6)
    {
      vmesh::TriangleMesh::loadBaseMeshFromVectors();
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm((a1 + 48), v6 >> 4);
  }

  v13 = *a2;
  if (a2[1] != *a2)
  {
    v14 = 0;
    v15 = 0;
    v38 = v8;
    do
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1, (v13 + v14));
      if (v39 != v12)
      {
        v16 = v9;
        v17 = *v9;
        v19 = *(a1 + 32);
        v18 = *(a1 + 40);
        if (v19 >= v18)
        {
          v21 = *(a1 + 24);
          v22 = (v19 - v21) >> 3;
          if ((v22 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v23 = v18 - v21;
          v24 = v23 >> 2;
          if (v23 >> 2 <= (v22 + 1))
          {
            v24 = v22 + 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1 + 24, v25);
          }

          v26 = (8 * v22);
          *v26 = *(v17 + 8 * v15);
          v20 = 8 * v22 + 8;
          v27 = *(a1 + 24);
          v28 = *(a1 + 32) - v27;
          v29 = v26 - v28;
          memcpy(v26 - v28, v27, v28);
          v30 = *(a1 + 24);
          *(a1 + 24) = v29;
          *(a1 + 32) = v20;
          *(a1 + 40) = 0;
          if (v30)
          {
            operator delete(v30);
          }

          v8 = v38;
        }

        else
        {
          *v19 = *(v17 + 8 * v15);
          v20 = (v19 + 1);
        }

        *(a1 + 32) = v20;
        v9 = v16;
      }

      if (v41 != v40)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 48, (*v8 + v14));
      }

      ++v15;
      v13 = *a2;
      v14 += 16;
    }

    while (v15 < (a2[1] - *a2) >> 4);
  }

  v31 = *a5;
  v32 = a5[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v32 - *a5) >> 2) > 0x5555555555555555)
  {
    vmesh::TriangleMesh::loadBaseMeshFromVectors();
  }

  if (v32 != v31)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = v31 + v33;
      v36 = *(v35 + 8);
      v42 = *v35;
      v43 = v36;
      std::vector<vmesh::Triangle>::push_back[abi:nn200100](a1 + 72, &v42);
      v34 += 3;
      v31 = *a5;
      v33 += 12;
    }

    while (v34 < (a5[1] - *a5) >> 2);
  }

  std::vector<vmesh::Triangle>::__assign_with_size[abi:nn200100]<vmesh::Triangle*,vmesh::Triangle*>((a1 + 96), *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
  std::vector<vmesh::Triangle>::__assign_with_size[abi:nn200100]<vmesh::Triangle*,vmesh::Triangle*>((a1 + 120), *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
  return 0;
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEmRKS1_(a1, a2 - v3, a3);
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEmRKS1_(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEmRKS1_(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEmRKS1_(a1, a2 - v3, a3);
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEmRKS1_(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 3)
  {
    if (a2)
    {
      v12 = *a3;
      v13 = 8 * a2;
      v14 = &v5[a2];
      do
      {
        *v5++ = v12;
        v13 -= 8;
      }

      while (v13);
      v5 = v14;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v6 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v11);
    }

    v15 = 8 * v9;
    v16 = 8 * v9 + 8 * a2;
    v17 = 8 * a2;
    v18 = *a3;
    v19 = v15;
    do
    {
      *v19++ = v18;
      v17 -= 8;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::vector<vmesh::Triangle>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      memset(*(a1 + 8), 255, v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2) + a2;
    if (v8 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v10);
    }

    v12 = (4 * (v7 >> 2));
    v13 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    memset(v12, 255, v13);
    memcpy(&v12[-v7], v6, v7);
    v14 = *a1;
    *a1 = &v12[-v7];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F640)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F630)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_21C27F640)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_21C27F630)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::vector<vmesh::Triangle>::__assign_with_size[abi:nn200100]<vmesh::Triangle*,vmesh::Triangle*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<vmesh::Triangle>::__vallocate[abi:nn200100](v6, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<vmesh::Triangle>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21CF07520](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x21CF07530](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

C3D::RenderPass *C3D::DrawQuadPass::DrawQuadPass(C3D::DrawQuadPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DFXPass *a4)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC4AF0;
  *(result + 30) = a4;
  *(result + 31) = 0;
  return result;
}

const char *C3D::DrawQuadPass::name(C3D::DrawQuadPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(this + 30);
  if (v4)
  {
    return C3D::CachedFXPassName(this + 31, v4, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "DrawQuadPass";
  }
}

double C3D::DrawQuadPass::execute(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  RenderContext = C3DEngineContextGetRenderContext(*(v1 + 16));
  v12[4] = 0;
  v12[5] = 0;
  Scene = C3DEngineContextGetScene(*(v1 + 16));
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  v5 = *(v1 + 16);
  v12[0] = EnginePipeline;
  v12[1] = v5;
  v12[3] = v1;
  bzero(&v8, 0x1400uLL);
  v8.i64[0] = *(v1 + 240);
  v9 = 1;
  v10 = 0;
  v11 = 0u;
  v12[2] = &v8;
  C3DEnginePipelineApplyNotificationQueue(v12);
  if (C3DFXPassGetUsesSceneBackgroundColor(*(v1 + 240)))
  {
    BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
    if (BackgroundEffectSlot)
    {
      C3DEngineContextRenderBackgroundMap(*(v1 + 16), BackgroundEffectSlot, &v8);
    }
  }

  [(SCNMTLRenderContext *)RenderContext startProcessingRendererElementsWithEngineIterationContext:v12];
  [SCNMTLRenderContext drawFullScreenQuadForPass:?];
  return [(SCNMTLRenderContext *)RenderContext stopProcessingRendererElements:?];
}

uint64_t Tokenizer::Tokenizer(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  v3 = a1 + 80;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  *(a1 + 8) = v4;
  strcpy(v12, ".<>?:/|&^*/+-=%!~");
  v5 = v12;
  do
  {
    std::__tree<char>::__emplace_unique_key_args<char,char const&>(v3, v5);
  }

  while (*++v5);
  v7 = *(a1 + 8);
  if (*(a1 + 16) < v7)
  {
    v8 = *(a1 + 24);
    *(a1 + 64) = *(a1 + 65);
    if (v8 >= v7)
    {
      v10 = 0;
    }

    else
    {
      v9 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v9 = *v9;
      }

      v10 = *(v9 + v8);
    }

    *(a1 + 65) = v10;
    *(a1 + 24) = v8 + 1;
    ++*(a1 + 72);
    if (v10 == 10)
    {
      *(a1 + 68) = (*(a1 + 68) + 1);
    }
  }

  return a1;
}

BOOL Tokenizer::NextChar(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1 < v2)
  {
    v3 = *(this + 3);
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    *(this + 3) = v3 + 1;
    ++*(this + 18);
    if (v5 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }
  }

  return v1 < v2;
}

char *Tokenizer::NextToken(Tokenizer *this)
{
  *(this + 14) = 0;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2 >= v3)
  {
    v8 = *(this + 3);
    *(this + 4) = *this;
    *(this + 5) = v2;
    *(this + 6) = v8 + ~v2;
    v9 = v8 - 1;
LABEL_121:
    *(this + 2) = v9;
    return this + 32;
  }

  v4 = *(this + 65);
  if (v4 == 10)
  {
    v5 = *(this + 3);
    *(this + 64) = 10;
    if (v5 >= v3)
    {
      v7 = 0;
    }

    else
    {
      v6 = *this;
      if (*(*this + 23) < 0)
      {
        v6 = *v6;
      }

      v7 = *(v6 + v5);
    }

    *(this + 65) = v7;
    *(this + 3) = v5 + 1;
    ++*(this + 18);
    if (v7 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    *(this + 4) = *this;
    *(this + 5) = v2;
    *(this + 6) = v5 - v2;
    *(this + 14) = 17;
    *(this + 2) = v5;
    return this + 32;
  }

  if (v4 <= 32)
  {
    v10 = *(this + 3);
    do
    {
      if (v4 > 32 || v4 == 10)
      {
        break;
      }

      *(this + 64) = v4;
      if (v10 >= v3)
      {
        v4 = 0;
      }

      else
      {
        v12 = *this;
        if (*(*this + 23) < 0)
        {
          v12 = *v12;
        }

        v4 = *(v12 + v10);
      }

      *(this + 65) = v4;
      *(this + 3) = ++v10;
      ++*(this + 18);
      if (v4 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }

    while (v10 < v3);
    if (v2 + 1 < v10)
    {
      *(this + 4) = *this;
      *(this + 5) = v2;
      *(this + 6) = v10 + ~v2;
      *(this + 14) = 13;
      v9 = v10 - 1;
      goto LABEL_121;
    }
  }

  if (v4 > 0x3Au)
  {
    if (v4 <= 0x5Cu)
    {
      if (v4 == 59)
      {
        Tokenizer::NextChar(this);
        v22 = *(this + 2);
        v16 = *(this + 3);
        *(this + 4) = *this;
        *(this + 5) = v22;
        *(this + 6) = v16 + ~v22;
        v18 = 15;
      }

      else
      {
        if (v4 != 91)
        {
          goto LABEL_54;
        }

        Tokenizer::NextChar(this);
        v20 = *(this + 2);
        v16 = *(this + 3);
        *(this + 4) = *this;
        *(this + 5) = v20;
        *(this + 6) = v16 + ~v20;
        v18 = 10;
      }
    }

    else
    {
      switch(v4)
      {
        case ']':
          Tokenizer::NextChar(this);
          v24 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v24;
          *(this + 6) = v16 + ~v24;
          v18 = 11;
          break;
        case '{':
          Tokenizer::NextChar(this);
          v26 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v26;
          *(this + 6) = v16 + ~v26;
          v18 = 8;
          break;
        case '}':
          Tokenizer::NextChar(this);
          v17 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v17;
          *(this + 6) = v16 + ~v17;
          v18 = 9;
          break;
        default:
          goto LABEL_54;
      }
    }

LABEL_119:
    *(this + 14) = v18;
    goto LABEL_120;
  }

  if (v4 <= 0x28u)
  {
    if (v4 == 35)
    {
      Tokenizer::NextChar(this);
      v21 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v21;
      *(this + 6) = v16 + ~v21;
      v18 = 16;
    }

    else
    {
      if (v4 != 40)
      {
        goto LABEL_54;
      }

      Tokenizer::NextChar(this);
      v19 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v19;
      *(this + 6) = v16 + ~v19;
      v18 = 6;
    }

    goto LABEL_119;
  }

  switch(v4)
  {
    case ')':
      Tokenizer::NextChar(this);
      v23 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v23;
      *(this + 6) = v16 + ~v23;
      v18 = 7;
      goto LABEL_119;
    case ',':
      Tokenizer::NextChar(this);
      v25 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v25;
      *(this + 6) = v16 + ~v25;
      v18 = 14;
      goto LABEL_119;
    case '.':
      v13 = *this;
      if (*(*this + 23) < 0)
      {
        v13 = *v13;
      }

      v14 = *(v13 + *(this + 3));
      if ((v14 & 0x80000000) != 0)
      {
        v15 = __maskrune(v14, 0x400uLL);
      }

      else
      {
        v15 = *(MEMORY[0x277D85DE0] + 4 * v14 + 60) & 0x400;
      }

      if (v15)
      {
        goto LABEL_58;
      }

      goto LABEL_118;
  }

LABEL_54:
  if (v4 < 0)
  {
    v27 = __maskrune(v4, 0x100uLL);
  }

  else
  {
    v27 = *(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x100;
  }

  if (v27 || (v29 = *(this + 65), v29 == 95))
  {

    return Tokenizer::ParseSymbol(this);
  }

  if ((v29 & 0x80000000) != 0)
  {
    v30 = __maskrune(v29, 0x400uLL);
  }

  else
  {
    v30 = *(MEMORY[0x277D85DE0] + 4 * v29 + 60) & 0x400;
  }

  if (v30)
  {
LABEL_58:

    return Tokenizer::ParseNumber(this);
  }

  v31 = *(this + 65);
  if (v31 <= 0x2E)
  {
    if (*(this + 65) <= 0x29u)
    {
      if (v31 - 37 >= 2)
      {
        if (v31 == 34)
        {
          Tokenizer::ParseString(this);
LABEL_117:
          v40 = *(this + 2);
          v16 = *(this + 3);
          *(this + 4) = *this;
          *(this + 5) = v40;
          *(this + 6) = v16 + ~v40;
          *(this + 14) = 0;
LABEL_120:
          v9 = v16 - 1;
          goto LABEL_121;
        }

        goto LABEL_110;
      }

      goto LABEL_91;
    }

    if (v31 - 42 >= 2 && v31 != 45)
    {
LABEL_110:
      v38 = *(this + 11);
      if (!v38)
      {
        goto LABEL_117;
      }

      v39 = this + 88;
      do
      {
        if (v38[25] >= v31)
        {
          v39 = v38;
        }

        v38 = *&v38[8 * (v38[25] < v31)];
      }

      while (v38);
      if (v39 == this + 88 || v31 < v39[25])
      {
        goto LABEL_117;
      }

LABEL_118:
      Tokenizer::NextChar(this);
      v41 = *(this + 2);
      v16 = *(this + 3);
      *(this + 4) = *this;
      *(this + 5) = v41;
      *(this + 6) = v16 + ~v41;
      v18 = 4;
      goto LABEL_119;
    }

LABEL_91:
    if (*(this + 2) >= *(this + 1))
    {
      goto LABEL_118;
    }

    v33 = *this;
    v34 = *(this + 3);
    goto LABEL_93;
  }

  if (*(this + 65) > 0x3Du)
  {
    if (v31 != 62)
    {
      if (v31 != 94 && v31 != 124)
      {
        goto LABEL_110;
      }

      goto LABEL_91;
    }

LABEL_98:
    if (*(this + 2) < *(this + 1))
    {
      v36 = *this;
      if (*(*this + 23) < 0)
      {
        v36 = *v36;
      }

      if (*(v36 + *(this + 3)) == 61)
      {
        Tokenizer::NextChar(this);
      }
    }

    goto LABEL_118;
  }

  if (v31 != 47)
  {
    if (v31 != 60)
    {
      if (v31 == 61)
      {
        if (*(this + 2) < *(this + 1))
        {
          v32 = *this;
          if (*(*this + 23) < 0)
          {
            v32 = *v32;
          }

          if (*(v32 + *(this + 3)) == 61)
          {
            goto LABEL_118;
          }
        }

LABEL_97:
        Tokenizer::NextChar(this);
        v35 = *(this + 2);
        v16 = *(this + 3);
        *(this + 4) = *this;
        *(this + 5) = v35;
        *(this + 6) = v16 + ~v35;
        v18 = 5;
        goto LABEL_119;
      }

      goto LABEL_110;
    }

    goto LABEL_98;
  }

  if (*(this + 2) >= *(this + 1))
  {
    goto LABEL_118;
  }

  v33 = *this;
  v34 = *(this + 3);
  v37 = *this;
  if (*(*this + 23) < 0)
  {
    v37 = *v33;
  }

  if (*(v37 + v34) == 47)
  {

    return Tokenizer::ParseLineComment(this);
  }

  else
  {
    v42 = *this;
    if (*(v33 + 23) < 0)
    {
      v42 = *v33;
    }

    if (*(v42 + v34) != 42)
    {
LABEL_93:
      if (*(v33 + 23) < 0)
      {
        v33 = *v33;
      }

      if (*(v33 + v34) != 61)
      {
        goto LABEL_118;
      }

      Tokenizer::NextChar(this);
      goto LABEL_97;
    }

    return Tokenizer::ParseMultiLineComment(this);
  }
}

uint64_t Tokenizer::ParseNumber(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = *(this + 3);
  if (v1 < v2)
  {
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    *(this + 3) = ++v3;
    v6 = *(this + 18) + 1;
    *(this + 18) = v6;
    if (v5 == 10)
    {
      v6 = 0;
      *(this + 68) = (*(this + 17) + 1);
    }

    v7 = MEMORY[0x277D85DE0];
    while (1)
    {
      while (1)
      {
        if (((v5 & 0x80) != 0 || (*(v7 + 4 * v5 + 60) & 0x400) == 0) && (v5 - 46 > 0x37 || ((1 << (v5 - 46)) & 0x80000000800001) == 0))
        {
          goto LABEL_21;
        }

        *(this + 64) = v5;
        if (v3 < v2)
        {
          break;
        }

        v5 = 0;
        *(this + 65) = 0;
        *(this + 3) = ++v3;
        ++v6;
LABEL_20:
        *(this + 18) = v6;
      }

      v8 = *this;
      if (*(*this + 23) < 0)
      {
        v8 = *v8;
      }

      v5 = *(v8 + v3);
      *(this + 65) = v5;
      *(this + 3) = ++v3;
      *(this + 18) = ++v6;
      if (v5 == 10)
      {
        v6 = 0;
        ++*(this + 17);
        v5 = 10;
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  *(this + 4) = *this;
  *(this + 5) = v1;
  result = this + 32;
  *(result + 16) = v3 + ~v1;
  *(result + 24) = 3;
  *(result - 16) = v3 - 1;
  return result;
}

char *Tokenizer::ParseSymbol(Tokenizer *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 3);
  if (v2 < v3)
  {
    *(this + 64) = *(this + 65);
    if (v4 >= v3)
    {
      v6 = 0;
    }

    else
    {
      v5 = *this;
      if (*(*this + 23) < 0)
      {
        v5 = *v5;
      }

      v6 = *(v5 + v4);
    }

    *(this + 65) = v6;
    *(this + 3) = v4 + 1;
    ++*(this + 18);
    if (v6 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    v7 = MEMORY[0x277D85DE0];
    while (1)
    {
      if ((v6 & 0x80) != 0)
      {
        if (__maskrune(v6, 0x500uLL))
        {
LABEL_12:
          v2 = *(this + 2);
          goto LABEL_15;
        }
      }

      else if ((*(v7 + 4 * v6 + 60) & 0x500) != 0)
      {
        goto LABEL_12;
      }

      v2 = *(this + 2);
      if (*(this + 65) != 95)
      {
        goto LABEL_23;
      }

LABEL_15:
      v8 = *(this + 1);
      if (v2 >= v8)
      {
LABEL_23:
        v4 = *(this + 3);
        break;
      }

      v9 = *(this + 3);
      *(this + 64) = *(this + 65);
      if (v9 >= v8)
      {
        v6 = 0;
      }

      else
      {
        v10 = *this;
        if (*(*this + 23) < 0)
        {
          v10 = *v10;
        }

        v6 = *(v10 + v9);
      }

      *(this + 65) = v6;
      *(this + 3) = v9 + 1;
      ++*(this + 18);
      if (v6 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }
  }

  *(this + 4) = *this;
  *(this + 5) = v2;
  v11 = this + 32;
  *(v11 + 2) = v4 + ~v2;
  *(v11 + 6) = 1;
  *(v11 - 2) = v4 - 1;
  return v11;
}

uint64_t Tokenizer::ParseString(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1 >= v2)
  {
    v5 = *(this + 65);
  }

  else
  {
    v3 = *(this + 3);
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    *(this + 3) = v3 + 1;
    ++*(this + 18);
    if (v5 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
      goto LABEL_11;
    }
  }

  if (v5 == 34)
  {
    goto LABEL_23;
  }

LABEL_11:
  v6 = *(this + 3);
  if (v6 <= v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = *(this + 3);
  }

  if (v6 >= v2)
  {
LABEL_23:
    if (v1 >= v2)
    {
      v6 = *(this + 3);
    }

    else
    {
LABEL_24:
      v9 = *(this + 3);
      *(this + 64) = v5;
      if (v9 >= v2)
      {
        v11 = 0;
      }

      else
      {
        v10 = *this;
        if (*(*this + 23) < 0)
        {
          v10 = *v10;
        }

        v11 = *(v10 + v9);
      }

      *(this + 65) = v11;
      v6 = v9 + 1;
      *(this + 3) = v6;
      ++*(this + 18);
      if (v11 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }

    goto LABEL_32;
  }

  while (v1 < v2)
  {
    *(this + 64) = v5;
    v8 = *this;
    if (*(*this + 23) < 0)
    {
      v8 = *v8;
    }

    v5 = *(v8 + v6);
    *(this + 65) = v5;
    *(this + 3) = ++v6;
    ++*(this + 18);
    if (v5 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    else if (v5 == 34)
    {
      goto LABEL_24;
    }

    if (v7 == v6)
    {
      goto LABEL_23;
    }
  }

LABEL_32:
  *(this + 4) = *this;
  *(this + 5) = v1;
  result = this + 32;
  *(result + 16) = v6 + ~v1;
  *(result + 24) = 2;
  *(result - 16) = v6 - 1;
  return result;
}

uint64_t Tokenizer::ParseLineComment(Tokenizer *this)
{
  v1 = *(this + 65);
  while (v1 != 10)
  {
    v3 = *(this + 1);
    v2 = *(this + 2);
    v4 = *(this + 3);
    if (v2 < v3)
    {
      *(this + 64) = v1;
      if (v4 >= v3)
      {
        v1 = 0;
      }

      else
      {
        v5 = *this;
        if (*(*this + 23) < 0)
        {
          v5 = *v5;
        }

        v1 = *(v5 + v4);
      }

      *(this + 65) = v1;
      *(this + 3) = ++v4;
      ++*(this + 18);
      if (v1 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }

      if (v4 < v3)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  v2 = *(this + 2);
  v4 = *(this + 3);
LABEL_14:
  *(this + 4) = *this;
  *(this + 5) = v2;
  result = this + 32;
  *(result + 16) = v4 + ~v2;
  *(result + 24) = 12;
  *(result - 16) = v4 - 1;
  return result;
}

uint64_t Tokenizer::ParseMultiLineComment(Tokenizer *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v1 >= v2)
  {
    v6 = *(this + 65);
  }

  else
  {
    v3 = *(this + 3);
    *(this + 64) = *(this + 65);
    if (v3 >= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(v4 + v3);
    }

    *(this + 65) = v5;
    v7 = v3 + 1;
    *(this + 3) = v3 + 1;
    v8 = *(this + 18) + 1;
    *(this + 18) = v8;
    if (v5 == 10)
    {
      v8 = 0;
      *(this + 68) = (*(this + 17) + 1);
    }

    *(this + 64) = v5;
    if (v7 >= v2)
    {
      v6 = 0;
      *(this + 65) = 0;
      *(this + 3) = v3 + 2;
      *(this + 18) = v8 + 1;
    }

    else
    {
      v9 = *this;
      if (*(*this + 23) < 0)
      {
        v9 = *v9;
      }

      v6 = *(v9 + v7);
      *(this + 65) = v6;
      *(this + 3) = v3 + 2;
      *(this + 18) = v8 + 1;
      if (v6 == 10)
      {
        *(this + 68) = (*(this + 17) + 1);
      }
    }
  }

  v10 = *(this + 3);
  while (1)
  {
    if (v6 != 42)
    {
      if (v1 >= v2)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (v1 >= v2)
    {
      goto LABEL_32;
    }

    v11 = *this;
    v12 = *this;
    if (*(*this + 23) < 0)
    {
      v12 = *v11;
    }

    if (*(v12 + v10) == 47)
    {
      break;
    }

LABEL_24:
    *(this + 64) = v6;
    if (v10 >= v2)
    {
      v6 = 0;
    }

    else
    {
      v13 = *this;
      if (*(*this + 23) < 0)
      {
        v13 = *v13;
      }

      v6 = *(v13 + v10);
    }

    *(this + 65) = v6;
    *(this + 3) = ++v10;
    ++*(this + 18);
    if (v6 == 10)
    {
      *(this + 68) = (*(this + 17) + 1);
    }

    if (v10 >= v2)
    {
LABEL_32:
      v14 = v10 + ~v1;
      v11 = *this;
      goto LABEL_33;
    }
  }

  *(this + 64) = 42;
  if (v10 >= v2)
  {
    v17 = 0;
  }

  else
  {
    v16 = v11;
    if (*(v11 + 23) < 0)
    {
      v16 = *v11;
    }

    v17 = *(v16 + v10);
  }

  *(this + 65) = v17;
  *(this + 3) = v10 + 1;
  v18 = *(this + 18) + 1;
  *(this + 18) = v18;
  if (v17 == 10)
  {
    v18 = 0;
    *(this + 68) = (*(this + 17) + 1);
  }

  *(this + 64) = v17;
  if (v10 + 1 >= v2)
  {
    *(this + 65) = 0;
    v10 += 2;
    *(this + 3) = v10;
    v21 = v18 + 1;
LABEL_47:
    *(this + 18) = v21;
  }

  else
  {
    v19 = v11;
    if (*(v11 + 23) < 0)
    {
      v19 = *v11;
    }

    v20 = *(v19 + v10 + 1);
    *(this + 65) = v20;
    v10 += 2;
    *(this + 3) = v10;
    *(this + 18) = v18 + 1;
    if (v20 == 10)
    {
      v21 = 0;
      ++*(this + 17);
      goto LABEL_47;
    }
  }

  v14 = v10 + ~v1;
LABEL_33:
  *(this + 4) = v11;
  *(this + 5) = v1;
  result = this + 32;
  *(result + 16) = v14;
  *(result + 24) = 12;
  *(result - 16) = v10 - 1;
  return result;
}

uint64_t Tokenizer::GetNextChar(Tokenizer *this)
{
  if (*(this + 2) >= *(this + 1))
  {
    return 0;
  }

  else
  {
    return *(this + 65);
  }
}

uint64_t *std::__tree<char>::__emplace_unique_key_args<char,char const&>(uint64_t a1, char *a2)
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
      v5 = *(v2 + 25);
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

uint64_t _C3DLODEnumerateSubEntities(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

__CFArray *_C3DLODCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v5, @"name", @"LOD");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v23 = 0;
  valuePtr = 7;
  v22 = a1 + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"threshold");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 0;
  valuePtr = 2;
  v22 = a1 + 76;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"thresholdType");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 0;
  valuePtr = 2;
  v22 = a1 + 48;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"sceneRef");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  return Mutable;
}

uint64_t C3DLODGetTypeID()
{
  if (C3DLODGetTypeID_onceToken != -1)
  {
    C3DLODGetTypeID_cold_1();
  }

  return C3DLODGetTypeID_typeID;
}

double __C3DLODGetTypeID_block_invoke()
{
  C3DLODGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DLODContextClassSceneLink;
  unk_281740FF8 = kC3DC3DLODContextClassSceneLink;
  unk_281741008 = unk_282DC4B80;
  qword_281741018 = qword_282DC4B90;
  qword_281740FE0 = _C3DLODCopyInstanceVariables;
  return result;
}

uint64_t C3DLODCreate(const void *a1, int a2, float a3)
{
  if (C3DLODGetTypeID_onceToken != -1)
  {
    C3DLODGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DLODGetTypeID_typeID, 64);
  *(Instance + 76) = a2;
  *(Instance + 72) = a3;
  v7 = *(Instance + 64);
  if (v7 != a1)
  {
    if (v7)
    {
      CFRelease(v7);
      *(Instance + 64) = 0;
    }

    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    *(Instance + 64) = v8;
  }

  return Instance;
}

uint64_t C3DLODGetEntity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DLODGetEntity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t C3DLODGetThresholdType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DLODGetEntity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 76);
}

float C3DLODGetThreshold(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DLODGetEntity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

id _C3DLODCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  return C3DEntityCFFinalize(a1);
}

CFStringRef _C3DLODCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLOD>");
}

CFStringRef _C3DLODCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLOD>");
}

C3D::DrawNodesPass *C3D::SSAODepthNormalPass::SSAODepthNormalPass(C3D::DrawNodesPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  v7 = 0;
  v9 = 0u;
  v10 = 0x20000;
  memset(v6, 0, sizeof(v6));
  v8 = -1;
  BYTE8(v9) = 1;
  result = C3D::DrawNodesPass::DrawNodesPass(a1, a2, a3, v6);
  *result = &unk_282DC4BA8;
  *(result + 670) = 0;
  *(result + 671) = a4;
  return result;
}

void C3D::SSAODepthNormalPass::setup(C3D::SSAODepthNormalPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  C3D::Pass::setOutputCount(this, 2u);
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "SSAO-DepthNormal";
  *(v3 + 65) = 0;
  *(v3 + 28) = 115;
  v4 = C3D::Pass::descriptor(**(this + 671));
  *(v3 + 16) = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 16);
  v5 = C3D::Pass::descriptor(**(this + 671));
  v6 = *(C3D::PassDescriptor::outputAtIndex(v5, 0) + 18);
  *(v3 + 18) = v6;
  LOWORD(v7) = *(v3 + 16);
  *&v7 = fmax(v7, v6);
  *(v3 + 30) = (floorf(log2f(*&v7)) + 1.0);
  v8 = *(v3 + 66);
  *(v3 + 48) = xmmword_21C2A1CC0;
  *(v3 + 66) = v8 & 0xFFBC | 0x42;
  v9 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v9 + 64) = 2;
  *(v9 + 66) |= 8u;
  v10 = C3D::Pass::descriptor(**(this + 671));
  *(v9 + 16) = *(C3D::PassDescriptor::outputAtIndex(v10, 0) + 16);
  v11 = C3D::Pass::descriptor(**(this + 671));
  *(v9 + 18) = *(C3D::PassDescriptor::outputAtIndex(v11, 0) + 18);
  *(v9 + 28) = 252;
  *(v9 + 66) = *(v9 + 66) & 0xFFFC | 2;
  *(this + 296) = 0;
  *(this + 31) = C3DEngineContextGetPointOfView(*(this + 2));
  if (*(v3 + 24) == 5)
  {
    v12 = ([(SCNMTLRenderContext *)RenderContext features]& 0x20) != 0;
    *(this + 117) = v12;
    *(this + 118) = v12;
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(*(this + 2)) >= 2)
  {
    PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(*(this + 2));
    *(this + 117) = PreferredRenderMode;
    *(this + 118) = PreferredRenderMode != 0;
    *(this + 19) = C3DEngineContextGetEyeCount(*(this + 2));
    *(this + 120) = 1;
  }

  C3D::DrawNodesPass::setup(this);
}

void C3D::SSAODepthNormalPass::compile(C3D::SSAODepthNormalPass *this)
{
  v2 = (*(*this + 64))(this);
  v3 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 670) = v3;
  if (!v3)
  {
    operator new();
  }

  *(this + 32) = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v3 + 16);

  C3D::DrawNodesPass::compile(this);
}

void C3D::SSAODepthNormalPassResource::~SSAODepthNormalPassResource(C3D::SSAODepthNormalPassResource *this)
{
  *this = &unk_282DC4C38;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_282DC4C38;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3DSubdivisionOsdGPUGetTessellationPartitionMode(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t C3DGeometryOpenSubdivGetGPUHasPatchOfType(uint64_t a1, int a2)
{
  result = *(*(a1 + 168) + 24);
  if (result)
  {
    return __C3DSubdivisionOsdGPUHasPatchOfType(result, a2);
  }

  return result;
}

BOOL __C3DSubdivisionOsdGPUHasPatchOfType(uint64_t a1, int a2)
{
  v3 = C3DPatchTypeToOsdPatchType(a2);
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  if (*v5 == v3)
  {
    return 1;
  }

  v7 = v5 + 4;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v4 == v8)
    {
      break;
    }

    v10 = *v7;
    v7 += 4;
    ++v8;
  }

  while (v10 != v3);
  return v9 < v4;
}

void *_C3DSubdivisionOsdGPURuntimeDataCFInit(void *result)
{
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  return result;
}

void _C3DSubdivisionOsdGPURuntimeDataCFFinalize(char *a1)
{
  v2 = *(a1 + 15);
  if (v2)
  {
    v8 = *(a1 + 15);
    std::vector<std::vector<std::vector<CFRange>>>::__destroy_vector::operator()[abi:nn200100](&v8);
    MEMORY[0x21CF07610](v2, 0x20C40960023A9);
  }

  __C3DSubdivisionOsdGPUPatchTableDestroy((a1 + 32));
  v3 = *(a1 + 11);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 == v5)
    {
      goto LABEL_7;
    }

    do
    {
      __C3DSubdivisionOsdGPUPatchTableDestroy(v4);
      v4 += 56;
    }

    while (v4 != v5);
    v3 = *(a1 + 11);
    if (v3)
    {
LABEL_7:
      v6 = *v3;
      if (*v3)
      {
        v3[1] = v6;
        operator delete(v6);
      }

      MEMORY[0x21CF07610](v3, 0x20C40960023A9);
    }
  }

  __C3DSubdivisionOsdGPURefinerDestroy((a1 + 144));
  for (i = 0; i != 80; i += 8)
  {
  }
}

__CFString *_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescription(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DSubdivisionOsdGPURuntimeDataRef %p>", a1);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v3 = [a1[8] length];
  v4 = a1[4];
  v5 = [a1[6] length];
  v6 = [a1[7] length];
  v4 *= 16;
  v57[3] += v4 + v3 + v5 + v6;
  CFStringAppend(Mutable, @"\nVertex patch table:");
  v7 = C3DGetByteCountDescriptionFromSize(v4);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v7);
  v8 = a1;
  v54 = a1;
  if (a1[4])
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8[5] + v9;
      v12 = *(v11 + 1);
      v13 = C3DGetPatchTypeDescription(*v11);
      CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v12, v13);
      ++v10;
      v8 = a1;
      v9 += 16;
    }

    while (v10 < a1[4]);
  }

  v14 = v8[8];
  v15 = C3DGetByteCountDescriptionFromSize(v3);
  v16 = v8;
  CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v14, v15);
  v17 = v8[6];
  v18 = C3DGetByteCountDescriptionFromSize(v5);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v17, v18);
  v19 = v8[7];
  v20 = C3DGetByteCountDescriptionFromSize(v6);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v19, v20);
  v21 = v8[11];
  if (v21)
  {
    v22 = *(v8[11] + 1) - *v21;
    if (v22)
    {
      v23 = 0;
      v53 = 0x6DB6DB6DB6DB6DB7 * (v22 >> 3);
      do
      {
        CFStringAppendFormat(Mutable, 0, @"\nFVar patch table (channel %zu):", v23);
        v24 = *v16[11];
        if (0x6DB6DB6DB6DB6DB7 * ((*(v16[11] + 1) - v24) >> 3) <= v23)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v25 = (v24 + 56 * v23);
        v26 = [v25[4] length];
        v27 = *v25;
        v28 = [v25[2] length];
        v29 = [v25[3] length];
        v57[3] += 16 * v27 + v26 + v28 + v29;
        v30 = C3DGetByteCountDescriptionFromSize(16 * v27);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v30);
        if (*v25)
        {
          v31 = 0;
          v32 = 0;
          do
          {
            v33 = v25[1] + v31;
            v34 = *(v33 + 4);
            v35 = C3DGetPatchTypeDescription(*v33);
            CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v34, v35);
            ++v32;
            v31 += 16;
          }

          while (v32 < *v25);
        }

        v36 = v25[4];
        v37 = C3DGetByteCountDescriptionFromSize(v26);
        CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v36, v37);
        v38 = v25[2];
        v39 = C3DGetByteCountDescriptionFromSize(v28);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v38, v39);
        v40 = v25[3];
        v41 = C3DGetByteCountDescriptionFromSize(v29);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v40, v41);
        ++v23;
        v16 = v54;
      }

      while (v23 != v53);
    }
  }

  if (v16[12] && v16[13])
  {
    CFStringAppend(Mutable, @"\nLegacy Gregory patch table:");
    v42 = [v16[12] length];
    v43 = [v16[13] length];
    v57[3] += v43 + v42;
    v44 = v16[12];
    v45 = C3DGetByteCountDescriptionFromSize(v42);
    CFStringAppendFormat(Mutable, 0, @"\n  - Vertex valence buffer: %p (%@)", v44, v45);
    v46 = v16[13];
    v47 = C3DGetByteCountDescriptionFromSize(v43);
    CFStringAppendFormat(Mutable, 0, @"\n  - Quad offsets buffer: %p (%@)", v46, v47);
  }

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = ___ZL54_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescriptionPKv_block_invoke;
  v55[3] = &unk_2782FDF58;
  v55[4] = &v56;
  v55[5] = Mutable;
  CFStringAppend(Mutable, @"\nVertex Refiner:");
  ___ZL54_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescriptionPKv_block_invoke(v55, (v16 + 18));
  v48 = [v16[44] length];
  v57[3] += v48;
  v49 = v16[44];
  v50 = C3DGetByteCountDescriptionFromSize(v48);
  CFStringAppendFormat(Mutable, 0, @"\n  - Skin/morph indexing table: %p (%@)", v49, v50);
  v51 = C3DGetByteCountDescriptionFromSize(v57[3]);
  CFStringAppendFormat(Mutable, 0, @"\nTotal memory usage: %@", v51);
  _Block_object_dispose(&v56, 8);
  return Mutable;
}

void sub_21BFF1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z40C3DSubdivisionOsdGPURuntimeDataGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DSubdivisionOsdGPURuntimeDataGetTypeID(void)::typeID = result;
  return result;
}

uint64_t __C3DSubdivisionOsdGPURefine(__n128 *a1, void *a2)
{
  if (!a1[5].n128_u64[0])
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DSubdivisionOsdGPURefine(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v23 = 0;
  v24 = 0;
  v12 = [(SCNMTLOpenSubdivComputeEvaluator *)a1[5].n128_i64[0] computeEvaluator];
  if (!OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils(v12, a1[2].n128_i64[1], &a1[3].n128_u32[2], a1[3].n128_i64[0], &a1[4].n128_i32[1], 0, &v23, 0, *a1, v13, &v23, a1->n128_u64[0], a1->n128_i64[1], a1[1].n128_i64[0], a1[1].n128_i64[1], 0, 0, 0, a1[2].n128_i32[0], a2))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __C3DSubdivisionOsdGPURefine(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return C3DSceneSourcePerformConsistencyCheck(a2);
}

void __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(uint64_t a1, __C3DGeometry *a2, void *a3, id *a4)
{
  if (C3DGeometryGetEffectiveDataKindForRendering(a2))
  {
    *(a1 + 360) = [a3 computePipelineStateForKernel:@"scn_osd_synchronize_coarse_positions_no_argument_buffer"];
    Mesh = C3DGeometryGetMesh(a2);
    PositionOriginalToFirstDeindexedTable = C3DMeshGetPositionOriginalToFirstDeindexedTable(Mesh);
    var7 = a2->var10.var7;
    if (!var7)
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    v20 = var7[4];
    v19 = var7[5];
    __p = 0;
    v35 = 0;
    v36 = 0;
    v21 = (v19 - v20) >> 2;
    if (v19 != v20)
    {
      std::vector<float>::__vallocate[abi:nn200100](&__p, (v19 - v20) >> 2);
    }

    if (v21 != *(a1 + 28))
    {
      v22 = scn_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v30 = __p;
    if (v19 != v20)
    {
      v31 = 0;
      v32 = var7[4];
      do
      {
        v33 = *(v32 + 4 * v31);
        if (PositionOriginalToFirstDeindexedTable)
        {
          v33 = *(PositionOriginalToFirstDeindexedTable + 4 * v33);
        }

        v30[v31++] = v33;
      }

      while (v21 > v31);
    }

    *(a1 + 352) = [*a4 newBufferWithBytes:v30 length:v35 - v30 options:0];
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 352) = 0;
    *(a1 + 360) = [a3 computePipelineStateForKernel:@"scn_osd_synchronize_indexed_coarse_positions_no_argument_buffer"];
  }
}

void sub_21BFF133C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DSubdivisionOsdGPURuntimeDataCreateWithData(uint64_t a1, uint64_t a2, _BYTE *a3, SCNMTLResourceManager *a4, void *a5, uint64_t a6)
{
  v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:a1 error:0];
  Instance = 0;
  if ([(NSKeyedUnarchiver *)v9 decodeInt32ForKey:@"version"]>= 3)
  {
    if (!a5)
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DSubdivisionOsdGPURuntimeDataCreateWithData(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    v19 = [a5 commandBuffer];
    v20 = [v19 computeCommandEncoder];
    v37.var0 = [a5 device];
    v37.var1 = a5;
    v37.var2 = v19;
    v37.var3 = v20;
    if (C3DSubdivisionOsdGPURuntimeDataGetTypeID(void)::onceToken != -1)
    {
      C3DSubdivisionOsdGPURuntimeDataCreateWithData();
    }

    Instance = C3DTypeCreateInstance_(C3DSubdivisionOsdGPURuntimeDataGetTypeID(void)::typeID, 392);
    v35 = 0;
    v36 = 0;
    v21 = [(NSKeyedUnarchiver *)v9 decodeBytesForKey:@"primvarDataTypeHash" returnedLength:&v35];
    if (v35 == 4)
    {
      *(Instance + 24) = *v21;
    }

    *(Instance + 28) = [(NSKeyedUnarchiver *)v9 decodeInt32ForKey:@"coarseVertexCount"];
    __C3DSubdivisionOsdGPURuntimeDataDecodePatchTable(v9, &cfstr_Vertexpatchtab.isa, &v37, size);
    v22 = v39;
    *(Instance + 32) = *size;
    *(Instance + 48) = v22;
    *(Instance + 64) = v40;
    *(Instance + 80) = v41;
    if (-[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"fvarPatchTables" stringByAppendingString:@".count"]))
    {
      operator new();
    }

    *(Instance + 88) = 0;
    v33 = a3;
    if (a3[6] == 2)
    {
      v23 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, [@"legacyGregoryPatchTable" stringByAppendingString:@".vertexValenceBuffer"], &v37, 0);
      v24 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBuffer"], &v37, 0);
      v25 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBaseGregory"]);
      v26 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBaseGregoryBoundary"]);
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = -1;
      v26 = -1;
    }

    *(Instance + 96) = v23;
    *(Instance + 104) = v24;
    *(Instance + 112) = v25;
    *(Instance + 116) = v26;
    v27 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"patchRangesTable" stringByAppendingString:@".elementCount"]);
    v28 = -[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"patchRangesTable" stringByAppendingString:@".patchArrayCount"]);
    if (v27 && v28)
    {
      operator new();
    }

    *(Instance + 120) = 0;
    __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner(v9, &cfstr_Vertexrefiner.isa, a4, &v37, size);
    v29 = v41;
    *(Instance + 176) = v40;
    *(Instance + 192) = v29;
    *(Instance + 208) = v42;
    *(Instance + 224) = v43;
    v30 = v39;
    *(Instance + 144) = *size;
    *(Instance + 160) = v30;
    *(Instance + 184) = *(Instance + 64);
    *(Instance + 192) = *(Instance + 64);
    __C3DSubdivisionOsdGPURefine((Instance + 144), &v37);
    *(Instance + 16) = 0;
    if (-[NSKeyedUnarchiver decodeInt32ForKey:](v9, "decodeInt32ForKey:", [@"fvarRefiners" stringByAppendingString:@".count"]))
    {
      operator new();
    }

    v36 = 0;
    __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(Instance, v33, a4, &v37.var0);
    *(Instance + 352) = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, &cfstr_Skinmorphsubdi.isa, &v37, 0);
    if ([(NSKeyedUnarchiver *)v9 containsValueForKey:@"synchronizeCoarsePositionsPipeline.functionName"])
    {
      *(Instance + 360) = [(SCNMTLResourceManager *)a4 computePipelineStateForKernel:[(NSKeyedUnarchiver *)v9 decodeObjectOfClass:objc_opt_class() forKey:@"synchronizeCoarsePositionsPipeline.functionName"]];
    }

    *(Instance + 128) = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, &cfstr_Fvarchanneldes.isa, &v37, 0);
    *(Instance + 136) = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(v9, &cfstr_Fvarchannelspa.isa, &v37, 0);
    [v37.var3 endEncoding];
    [v37.var2 commit];
    [v37.var2 waitUntilCompleted];
    if ([v37.var2 status] == 4)
    {
      goto LABEL_26;
    }

    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      C3DSubdivisionOsdGPURuntimeDataCreateWithData(&v37.var2);
      if (!a6)
      {
        goto LABEL_25;
      }
    }

    else if (!a6)
    {
LABEL_25:
      CFRelease(Instance);
      Instance = 0;
LABEL_26:
      __C3DSubdivisionOsdGPUSetupAdditionalDataDestroy(&v36);
      goto LABEL_27;
    }

    (*(a6 + 16))(a6, v37.var2, 1);
    goto LABEL_25;
  }

LABEL_27:
  [(NSKeyedUnarchiver *)v9 finishDecoding];

  return Instance;
}

void sub_21BFF1C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&a28);
  MEMORY[0x21CF07610](a19, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

uint64_t __C3DSubdivisionOsdGPURuntimeDataDecodePatchTable@<X0>(NSKeyedUnarchiver *a1@<X0>, NSString *a2@<X1>, MTLContext *a3@<X2>, size_t *a4@<X8>)
{
  size = 0;
  v8 = [(NSKeyedUnarchiver *)a1 decodeBytesForKey:[(NSString *)a2 stringByAppendingString:@".patchArrays"] returnedLength:&size];
  v9 = size;
  *a4 = size >> 4;
  v10 = malloc_type_malloc(v9, 0x1000040451B5BE8uLL);
  a4[1] = v10;
  memcpy(v10, v8, size);
  a4[5] = [(NSKeyedUnarchiver *)a1 decodeInt32ForKey:[(NSString *)a2 stringByAppendingString:@".dataBufferOffset"]];
  a4[6] = [(NSKeyedUnarchiver *)a1 decodeInt32ForKey:[(NSString *)a2 stringByAppendingString:@".dataBufferCoarseDataSize"]];
  v11 = [(NSKeyedUnarchiver *)a1 decodeInt32ForKey:[(NSString *)a2 stringByAppendingString:@".dataBufferFullDataSize"]];
  a4[2] = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a1, [(NSString *)a2 stringByAppendingString:@".patchIndexBuffer"], a3, 0);
  a4[3] = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a1, [(NSString *)a2 stringByAppendingString:@".patchParamBuffer"], a3, 0);
  result = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a1, [(NSString *)a2 stringByAppendingString:@".dataBuffer"], a3, v11);
  a4[4] = result;
  return result;
}

id __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner@<X0>(NSKeyedUnarchiver *a1@<X0>, NSString *a2@<X1>, SCNMTLResourceManager *a3@<X2>, MTLContext *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 56) = 0;
  v9 = a5 + 56;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  v10 = [(NSString *)a2 stringByAppendingString:@".stencilTable"];
  v11 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a1, [(NSString *)v10 stringByAppendingString:@".sizesBuffer"], a4, 0);
  v12 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a1, [(NSString *)v10 stringByAppendingString:@".offsetsBuffer"], a4, 0);
  v13 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a1, [(NSString *)v10 stringByAppendingString:@".indicesBuffer"], a4, 0);
  v14 = __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(a1, [(NSString *)v10 stringByAppendingString:@".weightsBuffer"], a4, 0);
  v15 = [(NSKeyedUnarchiver *)a1 decodeInt32ForKey:[(NSString *)v10 stringByAppendingString:@".numStencils"]];
  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  v16 = [(NSString *)a2 stringByAppendingString:@".evaluatorInput"];
  v23 = 0uLL;
  v25 = 0;
  v26 = 0;
  v17 = [(NSKeyedUnarchiver *)a1 decodeBytesForKey:[(NSString *)v16 stringByAppendingString:@".srcDesc"] returnedLength:&v26];
  v18 = [(NSKeyedUnarchiver *)a1 decodeBytesForKey:[(NSString *)v16 stringByAppendingString:@".dstDesc"] returnedLength:&v25];
  if (v26 != 12)
  {
    __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner();
  }

  if (v25 != 12)
  {
    __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner();
  }

  *&v24[8] = *(v17 + 2);
  *v24 = *v17;
  *&v24[12] = *v18;
  v19 = *(v18 + 2);
  v20 = *v24;
  *(a5 + 40) = v23;
  *&v24[20] = v19;
  *(a5 + 56) = v20;
  *(a5 + 72) = *&v24[16];
  *&v23 = 0;
  DWORD2(v23) = 0;
  result = [(SCNMTLResourceManager *)a3 computeEvaluatorWithContext:a4 srcDesc:v9 dstDesc:a5 + 68 duDesc:&v23 dvDesc:&v23];
  *(a5 + 80) = result;
  return result;
}

void __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(uint64_t a1, _BYTE *a2, void *a3, id *a4)
{
  v8 = a2[4];
  IsVarying = C3DGeometryOsdGetColorIsVarying(*(a1 + 24));
  VaryingTextureCoordinatesCount = C3DGeometryOsdGetVaryingTextureCoordinatesCount(*(a1 + 24));
  if (IsVarying)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  if (!*(a1 + 32))
  {
    v13 = 0;
    v28 = 0;
    goto LABEL_32;
  }

  v43 = v8;
  v44 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = 0;
  v15 = v11 + 8 * VaryingTextureCoordinatesCount;
  do
  {
    v16 = (*(a1 + 40) + v12);
    v17 = v16[1];
    v49 = *v16;
    v18 = v49;
    v19 = C3DPatchTypeFromOsdPatchType(v49);
    NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v49);
    if (v18 <= 5)
    {
      if (v18 < 3 || v18 == 5)
      {
        v22 = scn_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v47, v48);
        }
      }

      goto LABEL_26;
    }

    if (v18 > 7)
    {
      if (v18 != 8)
      {
        if (v18 != 9)
        {
          goto LABEL_26;
        }

        *(a1 + 246) = 12 * v13;
        *(a1 + 262) = v14;
        v23 = v17 * NumControlVertices;
        v24 = v14 + v17 * v15 * NumControlVertices;
        v25 = 12;
        goto LABEL_25;
      }

      *(a1 + 244) = 12 * v13;
      *(a1 + 260) = v14;
LABEL_24:
      v23 = v17 * NumControlVertices;
      v24 = v14 + v17 * v15 * NumControlVertices;
      v25 = 60;
LABEL_25:
      v14 = v24 + v23 * v25;
      goto LABEL_26;
    }

    if (v18 != 6)
    {
      *(a1 + 242) = 12 * v13;
      *(a1 + 258) = v14;
      goto LABEL_24;
    }

    v26 = a2[3];
    *(a1 + 240) = 12 * v13;
    v27 = 36.0;
    if ((v26 & (v19 < 4u)) == 0)
    {
      v27 = 12.0;
    }

    *(a1 + 256) = v14;
    v14 = (v14 + ((v27 * v17) * NumControlVertices)) + v17 * v15 * NumControlVertices;
LABEL_26:
    v13 += v17;
    ++v4;
    v12 += 16;
  }

  while (v4 < *(a1 + 32));
  if (v14)
  {
    a4 = v44;
    v28 = [*v44 newBufferWithLength:v14 options:32];
  }

  else
  {
    v28 = 0;
    a4 = v44;
  }

  v8 = v43;
LABEL_32:
  *(a1 + 248) = v28;
  if (v8)
  {
    v29 = [*a4 newBufferWithLength:80 * v13 options:32];
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 264) = v29;
  *(a1 + 232) = [*a4 newBufferWithLength:12 * v13 options:32];
  if (*(a1 + 32))
  {
    v30 = 0;
    v31 = 0;
    v45 = a2[4] << 16;
    v42 = *(a1 + 24);
    do
    {
      v32 = *(*(a1 + 40) + v30);
      v33 = C3DPatchTypeFromOsdPatchType(v32);
      if (a2[2] == 1)
      {
        v34 = v33;
        if ((a2[3] & (v33 < 4u)) != 0)
        {
          v35 = 256;
        }

        else
        {
          v35 = 0;
        }

        v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v4 = v4 & 0xFFFFFFFF00000000 | v42;
        v37 = C3DSubdivisionOsdGPUGetProgramGeneratorResources(v35 | v45 | v34 | 0x2000000000, v4, v36);
        v38 = objc_alloc_init(MEMORY[0x277CD6D08]);
        [v38 setLanguageVersion:SCNMetalLanguageVersion()];
        [v38 setFastMathEnabled:1];
        [v38 setPreprocessorMacros:v36];
        [v38 setAdditionalCompilerArguments:@" -w "];

        v39 = objc_alloc(MEMORY[0x277CCACA8]);
        v40 = C3DSubdivisionOsdGPUGetPerPatchTypeSources(v34);
        if (__C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::onceToken != -1)
        {
          __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines();
        }

        v41 = [v39 initWithFormat:@"%@%@%@", v37, v40, __C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource];
        *(a1 + 272 + 8 * v32) = [a3 newComputePipelineStateWithFunctionName:@"compute_opensubdiv" library:{objc_msgSend(-[SCNMTLResourceManager libraryManager](a3), "libraryForSourceCode:options:", v41, v38)}];
      }

      ++v31;
      v30 += 16;
    }

    while (v31 < *(a1 + 32));
  }
}

uint64_t __C3DSubdivisionOsdGPURuntimeDataDecodeMTLBuffer(NSKeyedUnarchiver *a1, NSString *a2, MTLContext *a3, size_t a4)
{
  if (![(NSKeyedUnarchiver *)a1 containsValueForKey:a2])
  {
    return 0;
  }

  __n = 0;
  v8 = [(NSKeyedUnarchiver *)a1 decodeBytesForKey:a2 returnedLength:&__n];
  if (__n >= a4)
  {
    return [a3->var0 newBufferWithBytes:v8 length:? options:?];
  }

  v9 = malloc_type_malloc(a4, 0x100004077774924uLL);
  memcpy(v9, v8, __n);
  v10 = [a3->var0 newBufferWithBytes:v9 length:a4 options:0];
  free(v9);
  return v10;
}

void __C3DSubdivisionOsdGPUSetupAdditionalDataDestroy(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = v1[1];
    if (*v1 == v3)
    {
      goto LABEL_5;
    }

    do
    {
      __C3DSubdivisionOsdGPURefinerDestroy(v2);
      v2 += 88;
    }

    while (v2 != v3);
    v1 = *a1;
    if (*a1)
    {
LABEL_5:
      v5 = *v1;
      if (*v1)
      {
        v1[1] = v5;
        operator delete(v5);
      }

      JUMPOUT(0x21CF07610);
    }
  }
}

uint64_t C3DSubdivisionOsdGPUGetSharedSources()
{
  if (C3DSubdivisionOsdGPUGetSharedSources::onceToken != -1)
  {
    C3DSubdivisionOsdGPUGetSharedSources_cold_1();
  }

  return C3DSubdivisionOsdGPUGetSharedSources::kSources;
}

void __C3DSubdivisionOsdGPUGetSharedSources_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetPatchBasisShaderSource(__p, v0);
  if (v3 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  C3DSubdivisionOsdGPUGetSharedSources::kSources = [(OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource *)v0 initWithCString:v1 encoding:4];
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21BFF26BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DSubdivisionOsdGPUGetPerPatchTypeSources(int a1)
{
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_3();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
        break;
      case 5:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundary(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_2();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundary(void)::kSources;
        break;
      case 6:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasis(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_1();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasis(void)::kSources;
        break;
      default:
        goto LABEL_27;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quads(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_6();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quads(void)::kSources;
        break;
      case 2:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Triangles(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_5();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Triangles(void)::kSources;
        break;
      case 3:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regular(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_4();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regular(void)::kSources;
        return *v1;
      default:
LABEL_27:
        C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_7();
    }
  }

  return *v1;
}

uint64_t C3DSubdivisionOsdGPUGetProgramGeneratorResources(unint64_t a1, unsigned int a2, void *a3)
{
  v6 = C3DPatchTypeToOsdPatchType(a1);
  v110[0] = v6;
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(v110);
  [a3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"USE_OPENSUBDIV"];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v110[0] - 5) < 5), @"OSD_IS_ADAPTIVE"}];
  v97 = a1;
  v98 = a3;
  if (v6 <= 5)
  {
    if (v6 == 3)
    {
      v8 = MEMORY[0x277CBEC38];
      v9 = @"OSD_PATCH_QUADS";
      goto LABEL_11;
    }

    if (v6 == 4)
    {
      v8 = MEMORY[0x277CBEC38];
      v9 = @"OSD_PATCH_TRIANGLES";
      goto LABEL_11;
    }

    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      C3DSubdivisionOsdGPUGetProgramGeneratorResources_cold_1(v11);
    }
  }

  else
  {
    if (v6 > 7)
    {
      if (v6 == 8)
      {
        v10 = @"OSD_PATCH_GREGORY_BOUNDARY";
      }

      else
      {
        v10 = @"OSD_PATCH_GREGORY_BASIS";
      }
    }

    else
    {
      if (v6 == 6)
      {
        [a3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"OSD_PATCH_REGULAR"];
        v8 = &unk_282E0F648;
        v9 = @"CONTROL_POINTS_PER_PATCH";
LABEL_11:
        [a3 setObject:v8 forKeyedSubscript:v9];
        goto LABEL_17;
      }

      v10 = @"OSD_PATCH_GREGORY";
    }

    [a3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v10];
    [a3 setObject:&unk_282E0F660 forKeyedSubscript:@"CONTROL_POINTS_PER_PATCH"];
    NumControlVertices = 4;
  }

LABEL_17:
  v12 = a2;
  IsVarying = C3DGeometryOsdGetColorIsVarying(a2);
  VaryingTextureCoordinatesCount = C3DGeometryOsdGetVaryingTextureCoordinatesCount(v12);
  if (IsVarying)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  IsFaceVarying = C3DGeometryOsdGetColorIsFaceVarying(v12);
  FaceVaryingTextureCoordinatesCount = C3DGeometryOsdGetFaceVaryingTextureCoordinatesCount(v12);
  if (IsFaceVarying)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v94 = v18;
  v95 = FaceVaryingTextureCoordinatesCount;
  HasMultipleFaceVaryingChannels = C3DGeometryOsdGetHasMultipleFaceVaryingChannels(v12);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v104);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "#define OSD_UV_CORRECTION if (t > 0.5) { ti += 0.01f; } else { ti += 0.01f; }\n", 78);
  v96 = v15 + 2 * VaryingTextureCoordinatesCount;
  if (v96)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "struct OsdInputVertexType { \n", 29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "    metal::packed_float3 position; \n", 36);
    for (i = 0; i != 8; ++i)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v12, i) == 2)
      {
        v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "    metal::packed_float2 texcoord", 33);
        std::to_string(&v103, i);
        v21 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v103 : v103.__r_.__value_.__r.__words[0];
        v22 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v103.__r_.__value_.__r.__words[2]) : v103.__r_.__value_.__l.__size_;
        v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, v21, v22);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "; \n", 3);
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v12) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "    metal::packed_float4 color; \n", 33);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "}; \n", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "#define OSD_USER_VARYING_DECLARE                             ", 61);
    for (j = 0; j != 8; ++j)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v12, j) == 2)
      {
        v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "float2 texcoord", 15);
        std::to_string(&v103, j);
        v26 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v103 : v103.__r_.__value_.__r.__words[0];
        v27 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v103.__r_.__value_.__r.__words[2]) : v103.__r_.__value_.__l.__size_;
        v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v26, v27);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "; ", 2);
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v12) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "float4 color; ", 14);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "#define OSD_USER_VARYING_DECLARE_PACKED                             ", 68);
    for (k = 0; k != 8; ++k)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v12, k) == 2)
      {
        v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "metal::packed_float2 texcoord", 29);
        std::to_string(&v103, k);
        v31 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v103 : v103.__r_.__value_.__r.__words[0];
        v32 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v103.__r_.__value_.__r.__words[2]) : v103.__r_.__value_.__l.__size_;
        v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, v31, v32);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, "; ", 2);
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v12) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "metal::packed_float4 color; ", 28);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "#define OSD_USER_VARYING_PER_VERTEX(in, out)                 ", 61);
    for (m = 0; m != 8; ++m)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v12, m) == 2)
      {
        v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "out.texcoord", 12);
        std::to_string(&v103, m);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v103;
        }

        else
        {
          v36 = v103.__r_.__value_.__r.__words[0];
        }

        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v103.__r_.__value_.__l.__size_;
        }

        v38 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, v36, size);
        v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " = in.texcoord", 14);
        std::to_string(&v102, m);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v102;
        }

        else
        {
          v40 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = v102.__r_.__value_.__l.__size_;
        }

        v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, v40, v41);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, "; ", 2);
        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v12) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "out.color = in.color; ", 22);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "#define OSD_USER_VARYING_PER_CONTROL_POINT(in, out)          ", 61);
    for (n = 0; n != 8; ++n)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v12, n) == 2)
      {
        v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "out.texcoord", 12);
        std::to_string(&v103, n);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v103;
        }

        else
        {
          v45 = v103.__r_.__value_.__r.__words[0];
        }

        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v46 = v103.__r_.__value_.__l.__size_;
        }

        v47 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, v45, v46);
        v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, " = in.texcoord", 14);
        std::to_string(&v102, n);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &v102;
        }

        else
        {
          v49 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = v102.__r_.__value_.__l.__size_;
        }

        v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, v49, v50);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, "; ", 2);
        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v12) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "out.color = in.color; ", 22);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "#define OSD_USER_VARYING_PER_EVAL_POINT(UV, a, b, c, d, out) ", 61);
    for (ii = 0; ii != 8; ++ii)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v12, ii) == 2)
      {
        v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "out.texcoord", 12);
        std::to_string(&v103, ii);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v103;
        }

        else
        {
          v54 = v103.__r_.__value_.__r.__words[0];
        }

        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v55 = v103.__r_.__value_.__l.__size_;
        }

        v56 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, v54, v55);
        v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, " = mix(mix(a.texcoord", 21);
        std::to_string(&v102, ii);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v102;
        }

        else
        {
          v58 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = v102.__r_.__value_.__l.__size_;
        }

        v60 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, v58, v59);
        v61 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v60, ", b.texcoord", 12);
        std::to_string(&v101, ii);
        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v101;
        }

        else
        {
          v62 = v101.__r_.__value_.__r.__words[0];
        }

        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v101.__r_.__value_.__l.__size_;
        }

        v64 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, v62, v63);
        v65 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v64, ", UV.x), mix(c.texcoord", 23);
        std::to_string(&v100, ii);
        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v100;
        }

        else
        {
          v66 = v100.__r_.__value_.__r.__words[0];
        }

        if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v67 = v100.__r_.__value_.__l.__size_;
        }

        v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v65, v66, v67);
        v69 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, ", d.texcoord", 12);
        std::to_string(&v99, ii);
        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v99;
        }

        else
        {
          v70 = v99.__r_.__value_.__r.__words[0];
        }

        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v71 = v99.__r_.__value_.__l.__size_;
        }

        v72 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, v70, v71);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v72, ", UV.x), UV.y); ", 16);
        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v12) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "out.color = mix(mix(a.color, b.color, UV.x), mix(c.color, d.color, UV.x), UV.y); ", 81);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "#define OSD_USER_VARYING_DECLARE_ATTRIBUTE                   ", 61);
    v73 = 0;
    v74 = 11;
    do
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v12, v73) == 2)
      {
        v75 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "float2 texcoord", 15);
        std::to_string(&v103, v73);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = &v103;
        }

        else
        {
          v76 = v103.__r_.__value_.__r.__words[0];
        }

        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v77 = v103.__r_.__value_.__l.__size_;
        }

        v78 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, v76, v77);
        v79 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v78, " [[attribute(", 13);
        std::to_string(&v102, v74);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &v102;
        }

        else
        {
          v80 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v81 = v102.__r_.__value_.__l.__size_;
        }

        v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v79, v80, v81);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, ")]]; ", 5);
        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        ++v74;
      }

      ++v73;
    }

    while (v73 != 8);
    if (C3DGeometryOsdGetColorDataType(v12) == 2)
    {
      v83 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "float4 color [[attribute(", 25);
      std::to_string(&v103, v74);
      v84 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v103 : v103.__r_.__value_.__r.__words[0];
      v85 = (v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v103.__r_.__value_.__r.__words[2]) : v103.__r_.__value_.__l.__size_;
      v86 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v83, v84, v85);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v86, ")]]; ", 5);
      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "\n", 1);
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "struct OsdInputVertexType { \n", 29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "    metal::packed_float3 position; \n", 36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v105, "}; \n", 4);
  }

  [v98 setObject:&unk_282E0F678 forKeyedSubscript:@"VERTEX_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F690 forKeyedSubscript:@"PATCH_INDICES_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F6A8 forKeyedSubscript:@"CONTROL_INDICES_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F6C0 forKeyedSubscript:@"OSD_PATCHPARAM_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F6D8 forKeyedSubscript:@"OSD_PERPATCHVERTEXBEZIER_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F6F0 forKeyedSubscript:@"OSD_PERPATCHTESSFACTORS_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F708 forKeyedSubscript:@"OSD_VALENCE_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F720 forKeyedSubscript:@"OSD_QUADOFFSET_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F738 forKeyedSubscript:@"TRANSFORMS_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F750 forKeyedSubscript:@"TESSELLATION_LEVEL_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F6A8 forKeyedSubscript:@"INDICES_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F768 forKeyedSubscript:@"QUAD_TESSFACTORS_INDEX"];
  [v98 setObject:&unk_282E0F6D8 forKeyedSubscript:@"OSD_PERPATCHVERTEXGREGORY_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F780 forKeyedSubscript:@"OSD_PATCH_INDEX_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F798 forKeyedSubscript:@"OSD_DRAWINDIRECT_BUFFER_INDEX"];
  [v98 setObject:&unk_282E0F7B0 forKeyedSubscript:@"OSD_KERNELLIMIT_BUFFER_INDEX"];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v97 >> 8) & 1), @"OSD_PATCH_ENABLE_SINGLE_CREASE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 0), @"OSD_FRACTIONAL_EVEN_SPACING"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v97 >> 16) & 1), @"OSD_FRACTIONAL_ODD_SPACING"}];
  [v98 setObject:&unk_282E0F648 forKeyedSubscript:@"OSD_MAX_TESS_LEVEL"];
  [v98 setObject:&unk_282E0F7C8 forKeyedSubscript:@"USE_STAGE_IN"];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v97 & 0x10000) == 0), @"USE_PTVS_FACTORS"}];
  [v98 setObject:&unk_282E0F7E0 forKeyedSubscript:@"USE_PTVS_SHARPNESS"];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedShort:", WORD2(v97)), @"THREADS_PER_THREADGROUP"}];
  if (NumControlVertices / WORD2(v97) <= 1)
  {
    v87 = 1;
  }

  else
  {
    v87 = NumControlVertices / WORD2(v97);
  }

  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedLong:", v87), @"CONTROL_POINTS_PER_THREAD"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInteger:", NumControlVertices), @"VERTEX_CONTROL_POINTS_PER_PATCH"}];
  [v98 setObject:&unk_282E0F7B0 forKeyedSubscript:@"OSD_MAX_VALENCE"];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", (v96 + 3)), @"OSD_NUM_ELEMENTS"}];
  [v98 setObject:&unk_282E0F7C8 forKeyedSubscript:@"OSD_ENABLE_BACKPATCH_CULL"];
  [v98 setObject:&unk_282E0F7C8 forKeyedSubscript:@"OSD_USE_PATCH_INDEX_BUFFER"];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v97 >> 16) & 1), @"OSD_ENABLE_SCREENSPACE_TESSELLATION"}];
  [v98 setObject:&unk_282E0F7C8 forKeyedSubscript:@"OSD_ENABLE_PATCH_CULL"];
  [v98 setObject:&unk_282E0F7E0 forKeyedSubscript:@"NEEDS_BARRIER"];
  if (v94 + 2 * v95)
  {
    [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", (v94 + 2 * v95)), @"OSD_FVAR_WIDTH"}];
    [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", HasMultipleFaceVaryingChannels), @"OSD_FVAR_USES_MULTIPLE_CHANNELS"}];
    [v98 setObject:&unk_282E0F7F8 forKeyedSubscript:@"OSD_FVAR_DATA_BUFFER_INDEX"];
    [v98 setObject:&unk_282E0F810 forKeyedSubscript:@"OSD_FVAR_INDICES_BUFFER_INDEX"];
    if ((v110[0] - 5) <= 4)
    {
      [v98 setObject:&unk_282E0F648 forKeyedSubscript:@"OSD_FVAR_PATCHPARAM_BUFFER_INDEX"];
      [v98 setObject:&unk_282E0F828 forKeyedSubscript:@"OSD_FVAR_PATCH_ARRAY_BUFFER_INDEX"];
    }

    [v98 setObject:&unk_282E0F7F8 forKeyedSubscript:@"OSD_FVAR_CHANNELS_CHANNEL_COUNT_INDEX"];
    [v98 setObject:&unk_282E0F810 forKeyedSubscript:@"OSD_FVAR_CHANNELS_CHANNEL_DESCRIPTORS_INDEX"];
    [v98 setObject:&unk_282E0F648 forKeyedSubscript:@"OSD_FVAR_CHANNELS_PACKED_DATA_BUFFER_INDEX"];
    [v98 setObject:&unk_282E0F828 forKeyedSubscript:@"OSD_FVAR_CHANNELS_PATCH_ARRAY_INDEX_BUFFER_INDEX"];
  }

  [v98 setObject:&unk_282E0F840 forKeyedSubscript:@"OSD_PRIMVAR_INTERPOLATION_MODE_USER_VARYING"];
  [v98 setObject:&unk_282E0F858 forKeyedSubscript:@"OSD_PRIMVAR_INTERPOLATION_MODE_FACE_VARYING"];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetColorDataType(v12)), @"OSD_COLOR_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 0)), @"OSD_TEXCOORD0_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 1)), @"OSD_TEXCOORD1_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 2)), @"OSD_TEXCOORD2_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 3)), @"OSD_TEXCOORD3_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 4)), @"OSD_TEXCOORD4_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 5)), @"OSD_TEXCOORD5_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 6)), @"OSD_TEXCOORD6_INTERPOLATION_MODE"}];
  [v98 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v12, 7)), @"OSD_TEXCOORD7_INTERPOLATION_MODE"}];
  [v98 setObject:&unk_282E0F7C8 forKeyedSubscript:@"C3D_OPTIMIZE_OPENSUBDIV_STORAGE"];
  v88 = MEMORY[0x277CCACA8];
  std::stringbuf::str();
  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = &v103;
  }

  else
  {
    v89 = v103.__r_.__value_.__r.__words[0];
  }

  v90 = [v88 stringWithCString:v89 encoding:4];
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v104[0] = *MEMORY[0x277D82818];
  v91 = *(MEMORY[0x277D82818] + 72);
  *(v104 + *(v104[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v105 = v91;
  v106 = MEMORY[0x277D82878] + 16;
  if (v108 < 0)
  {
    operator delete(v107[7].__locale_);
  }

  v106 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v107);
  std::iostream::~basic_iostream();
  MEMORY[0x21CF075C0](&v109);
  return v90;
}