float C3DParticleSystemGetParticleVelocityVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 192);
}

void C3DParticleSystemSetParticleVelocityVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 192) != a2)
  {
    *(a1 + 192) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetPhysicsCollisionsEnabled(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 98);
}

void C3DParticleSystemSetPhysicsCollisionsEnabled(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 98) = a2;
}

void C3DParticleSystemSetRenderingMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 91) != a2)
  {
    *(a1 + 91) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetSeed(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 368);
}

void C3DParticleSystemSetSeed(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 368) = a2;
}

uint64_t C3DParticleSystemGetSoftParticlesEnabled(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 103);
}

void C3DParticleSystemSetSoftParticlesEnabled(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 103) != a2)
  {
    *(a1 + 103) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetSortingMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 93);
}

void C3DParticleSystemSetSortingMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 93) != a2)
  {
    *(a1 + 93) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetSpeedFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 384);
}

void C3DParticleSystemSetSpeedFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 384) = a2;
}

float C3DParticleSystemGetSpreadingAngle(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 176);
}

void C3DParticleSystemSetSpreadingAngle(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 176) = a2;
}

float C3DParticleSystemGetStretchFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 248);
}

void C3DParticleSystemSetStretchFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 248) != a2)
  {
    *(a1 + 248) = a2;
    *(a1 + 858) = 1;
    *(a1 + 856) = 1;
  }
}

uint64_t C3DParticleSystemGetSystemSpawnedOnCollision(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 328);
}

CFTypeRef C3DParticleSystemSetSystemSpawnedOnCollision(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 328);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 328) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 328) = result;
    *(a1 + 872) = -1;
    *(a1 + 912) = 0;
  }

  return result;
}

uint64_t C3DParticleSystemGetSystemSpawnedOnDying(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 336);
}

CFTypeRef C3DParticleSystemSetSystemSpawnedOnDying(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 336);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 336) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 336) = result;
    *(a1 + 872) = -1;
    *(a1 + 912) = 0;
  }

  return result;
}

CFTypeRef C3DParticleSystemSetSystemSpawnedOnLiving(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 344);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 344) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 344) = result;
    *(a1 + 872) = -1;
    *(a1 + 912) = 0;
  }

  return result;
}

float C3DParticleSystemGetWarmupDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

void C3DParticleSystemSetWarmupDuration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 72) = a2;
}

uint64_t C3DParticleSystemGetWritesToDepthBuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 106);
}

void C3DParticleSystemSetWritesToDepthBuffer(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 106) = a2;
}

float C3DParticleSystemGetParticleIntensity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 296);
}

void C3DParticleSystemSetParticleIntensity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 296) != a2)
  {
    *(a1 + 296) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 858) = 1;
    *(a1 + 904) = 0;
    *(a1 + 856) = 257;
  }
}

float C3DParticleSystemGetParticleIntensityVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 300);
}

void C3DParticleSystemSetParticleIntensityVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 300) != a2)
  {
    *(a1 + 300) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 858) = 1;
    *(a1 + 904) = 0;
    *(a1 + 856) = 257;
  }
}

uint64_t C3DParticleSystemGetControllers(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 888);
  if (v4 == -1)
  {
    *(a1 + 888) = 0;
    v5 = *(a1 + 400);
    if (v5)
    {
      v6 = 80 * CFDictionaryGetCount(v5);
      v7 = malloc_type_malloc(v6, 0x1030040D754E354uLL);
      *(a1 + 880) = v7;
      bzero(v7, v6);
      CFDictionaryApplyFunction(*(a1 + 400), __appendController, a1);
      v4 = *(a1 + 888);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
  return *(a1 + 880);
}

void __appendController(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v6 = *(a3 + 880);
  v7 = *(a3 + 888);
  *(a3 + 888) = v7 + 1;
  v8 = v6 + 80 * v7;
  Value = CFDictionaryGetValue(theDict, @"ControllerAnimation");
  *(v8 + 16) = Value;
  *(v8 + 48) = 1;
  *(v8 + 24) = 0;
  v10 = CFDictionaryGetValue(theDict, @"ControllerVariableMode");
  if (v10)
  {
    v11 = v10;
    if (CFEqual(v10, @"ControllerVariableOverLife"))
    {
      *(v8 + 24) = 0;
    }

    else if (CFEqual(v11, @"ControllerVariableOverDistance"))
    {
      *(v8 + 24) = 1;
    }

    else if (CFEqual(v11, @"ControllerVariableOverOtherProperty"))
    {
      v23 = CFDictionaryGetValue(theDict, @"ControllerVariableOverOtherProperty");
      PropertyIndexAndStride = C3DParticleSystemGetPropertyIndexAndStride(a3, v23);
      if ((PropertyIndexAndStride & 0xFFFF00000000) != 0)
      {
        *(v8 + 24) = 2;
        *(v8 + 26) = PropertyIndexAndStride;
        *(v8 + 34) = v25;
      }

      else
      {
        v35 = scn_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          __appendController_cold_1();
        }
      }
    }

    else
    {
      v34 = scn_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __appendController_cold_2();
      }
    }
  }

  *(v8 + 40) = CFDictionaryGetValue(theDict, @"ControllerVariableOrigin");
  v12 = CFDictionaryGetValue(theDict, @"ControllerVariableScale");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberFloatType, (v8 + 68));
  }

  else
  {
    *(v8 + 68) = 1065353216;
  }

  v13 = CFDictionaryGetValue(theDict, @"ControllerVariableBias");
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberFloatType, (v8 + 72));
  }

  else
  {
    *(v8 + 72) = 0;
  }

  v14 = C3DParticleSystemGetPropertyIndexAndStride(a3, a1);
  v16 = v15;
  if (CFEqual(a1, @"Color") && !*(v8 + 24))
  {
    *(a3 + 892) = *(a3 + 888) - 1;
LABEL_23:
    *(v8 + 48) = 0;
    goto LABEL_24;
  }

  if (CFEqual(a1, @"Opacity") && !*(v8 + 24))
  {
    *(a3 + 894) = *(a3 + 888) - 1;
    goto LABEL_23;
  }

  if ((v14 & 0xFFFF00000000) != 0)
  {
    *v8 = v14;
    *(v8 + 8) = v16;
  }

  else
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __appendController_cold_3();
    }

    --*(a3 + 888);
  }

LABEL_24:
  if (*(v8 + 48) == 1)
  {
    if (Value)
    {
      v18 = CFGetTypeID(Value);
      if (v18 == C3DKeyframedAnimationGetTypeID())
      {
        Controller = C3DKeyframedAnimationGetController(Value);
        KeyCount = C3DKeyframeControllerGetKeyCount(Controller);
        ValueType = C3DKeyframeControllerGetValueType(Controller);
        DefaultInterpolationMode = C3DKeyframeControllerGetDefaultInterpolationMode(Controller);
        if (DefaultInterpolationMode)
        {
          if (DefaultInterpolationMode == 2)
          {
            KeyCount *= 8;
          }
        }

        else
        {
          KeyCount *= 2;
        }

        *(v8 + 49) = DefaultInterpolationMode != 1;
        *(v8 + 50) = C3DAnimationGetAdditive(*(v8 + 16));
        if (KeyCount <= 0xFF)
        {
          v26 = KeyCount <= 2 ? 2 : KeyCount;
          *(v8 + 64) = v26;
          *(v8 + 52) = (v26 - 1);
          if (WORD2(v14))
          {
            v27 = malloc_type_malloc(WORD2(v14) + WORD2(v14) * v26, 0xA566F046uLL);
            *(v8 + 56) = v27;
            bzero(v27, WORD2(v14) + WORD2(v14) * *(v8 + 64));
            v28 = *(v8 + 64);
            if (v28)
            {
              v29 = 0;
              v30 = 0;
              v31 = 1.0 / (v28 - 1);
              v32 = 0.0;
              do
              {
                C3DAnimationEvaluate(Value);
                if (ValueType == 9)
                {
                  v33 = *(v8 + 56) + v29;
                  *v33 = 0;
                  *(v33 + 8) = 0;
                }

                v32 = v31 + v32;
                ++v30;
                v29 += WORD2(v14);
              }

              while (v30 < *(v8 + 64));
            }

            else
            {
              LODWORD(v30) = 0;
            }

            memcpy((*(v8 + 56) + v30 * WORD2(v14)), (*(v8 + 56) + (v30 - 1) * WORD2(v14)), WORD2(v14));
          }
        }
      }
    }
  }
}

void C3DParticleSystemProcessAffectors(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 872);
  if (v8 == -1)
  {
    __C3DParticleSystemUpdateInternal(a1);
    v8 = *(a1 + 872);
  }

  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a1 + 864) + v9;
      v12 = *(v11 + 16);
      if (v12)
      {
        KeyPath = C3DAnimationGetKeyPath(v12);
        OverrideMaterial = C3DGeometryGetOverrideMaterial(*(*(a1 + 864) + v9 + 16));
        memset(v16, 0, sizeof(v16));
        C3DParticleSystemInstanceFillUserData(a1, a2, OverrideMaterial, v16, v15, 0);
        (*(KeyPath + 16))(KeyPath, v16, v15, a3, a4, *(a2 + 1028));
      }

      else
      {
        (*v11)(a2, a3, a4, *(v11 + 8));
      }

      ++v10;
      v9 += 24;
    }

    while (v10 < *(a1 + 872));
  }
}

void *C3DParticleSystemGetSimulateLifeCallback(uint64_t a1)
{
  result = *(a1 + 912);
  if (!result)
  {
    if (C3DParticleSystemGetEventBlock(a1, 1u, 0))
    {
      result = C3DParticleSystemInstanceSimulateLifeWithBlock;
    }

    else if (*(a1 + 336))
    {
      result = C3DParticleSystemInstanceSimulateLifeAndSpawnWhenDying;
    }

    else
    {
      result = C3DParticleSystemInstanceSimulateLife;
    }

    *(a1 + 912) = result;
  }

  return result;
}

uint64_t (*C3DParticleSystemGetEmissionCallback(uint64_t a1))()
{
  v1 = *(a1 + 904);
  if (!v1)
  {
    v2 = *(a1 + 91);
    v1 = C3DParticleEmitStandard;
    if (v2 == 3)
    {
      v1 = C3DParticleEmitBeam;
    }

    if (v2 == 2)
    {
      v1 = C3DParticleEmitTrail;
    }

    *(a1 + 904) = v1;
  }

  return v1;
}

const UInt8 *C3DParticleSystemGetColorRamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      [(SCNNode *)v2 replaceObjectInParticleSystemsAtIndex:v3 withObject:v4, v5, v6, v7, v8, v9];
    }
  }

  if (*(a1 + 920))
  {
    return *(a1 + 920);
  }

  ParticleColorController = C3DParticleSystemGetParticleColorController(a1);
  ParticleOpacityController = C3DParticleSystemGetParticleOpacityController(a1);
  result = C3DMalloc(0x400uLL);
  if (result)
  {
    v13 = result;
    v14 = 0;
    v15 = 0.0;
    __asm { FMOV            V1.2D, #1.0 }

    v32 = vdupq_n_s64(0x406FE00000000000uLL);
    v33 = _Q1;
    do
    {
      if (ParticleColorController)
      {
        C3DAnimationEvaluate(ParticleColorController);
      }

      if (ParticleOpacityController)
      {
        C3DAnimationEvaluate(ParticleOpacityController);
      }

      v15 = v15 + 0.0039216;
      v21 = vmaxnmq_f64(vcvtq_f64_f32(0x3F8000003F800000), 0);
      v22 = vcvt_f32_f64(vbslq_s8(vcgeq_f64(v21, v33), v33, v21));
      v23 = fmax(1.0, 0.0);
      if (v23 >= 1.0)
      {
        v23 = 1.0;
      }

      v24 = v23;
      *v25.f32 = vmul_n_f32(v22, 1.0);
      v25.f32[2] = 1.0 * v24;
      v25.i32[3] = 1065353216;
      *v25.f32 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(vcvtq_f64_f32(*v25.f32), v32)), vcvtq_s64_f64(vmulq_f64(vcvt_hight_f64_f32(v25), v32))));
      *&v13[v14] = vuzp1_s8(*v25.f32, *v25.f32).u32[0];
      v14 += 4;
    }

    while (v14 != 1024);
    v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v13, 1024, *MEMORY[0x277CBECF0]);
    v27 = C3DImageCreateWithRawData(v26, 0x20u, 4, 0.00781250196);
    if (v27)
    {
      v28 = v27;
      v29 = C3DFXSamplerCreate();
      *(a1 + 920) = v29;
      C3DFXSamplerSetImage(v29, v28);
      CFRelease(v28);
      v30 = *(a1 + 920);
      v31 = C3DTextureSamplerBilinearNoAnisotropy();
      C3DFXSamplerSetTextureSampler(v30, v31);
    }

    return *(a1 + 920);
  }

  return result;
}

void __addPrimaryData(uint64_t a1, __CFDictionary *a2, int a3, const void *a4, __int16 a5, int a6, uint64_t a7, __int16 a8, char a9, char a10)
{
  v10 = *(a1 + 384);
  if (v10 > 0x1F)
  {
    if ((__addPrimaryData_done & 1) == 0)
    {
      __addPrimaryData_done = 1;
      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __addPrimaryData_cold_1();
      }
    }
  }

  else
  {
    v12 = a6;
    v15 = a3;
    *(a1 + 384) = v10 + 1;
    v17 = -1;
    if (a3 != 1 && a10)
    {
      *(a1 + 384) = v10 + 2;
      *(a1 + 4 * (v10 + 1)) = a6;
      v17 = v10 + 1;
    }

    if (a9)
    {
      v18 = a6;
    }

    else
    {
      v18 = 0;
    }

    if (!a9)
    {
      a7 = 0;
    }

    *(a1 + 4 * v10) = v18;
    *(a1 + 8 * v10 + 128) = a7;
    v20 = malloc_type_malloc(0xAuLL, 0x100004080B1215BuLL);
    *v20 = v10;
    v20[1] = v17;
    *(v20 + 1) = a5;
    *(v20 + 2) = v12;
    *(v20 + 3) = a8;
    *(v20 + 4) = v15;

    CFDictionarySetValue(a2, a4, v20);
  }
}

void __addSecondaryData(uint64_t a1, __CFDictionary *a2, const void *a3, __int16 a4, int a5, uint64_t a6, __int16 a7)
{
  v7 = *(a1 + 384);
  if (v7 > 0x1F)
  {
    if ((__addSecondaryData_done & 1) == 0)
    {
      __addSecondaryData_done = 1;
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __addPrimaryData_cold_1();
      }
    }
  }

  else
  {
    v9 = a5;
    v13 = v7 - 1;
    *(a1 + 4 * v13) = a5;
    *(a1 + 8 * v13 + 128) = a6;
    v14 = malloc_type_malloc(0xAuLL, 0x100004080B1215BuLL);
    *v14 = v13;
    v14[1] = -1;
    *(v14 + 1) = a4;
    *(v14 + 2) = v9;
    *(v14 + 3) = a7;

    CFDictionarySetValue(a2, a3, v14);
  }
}

uint64_t __semanticHasVariation(__n128 *a1, int a2)
{
  if (a2 > 9)
  {
    if (a2 <= 11)
    {
      if (a2 == 10)
      {
        ParticleFrictionVariation = C3DParticleSystemGetParticleFrictionVariation(a1);
      }

      else
      {
        ParticleFrictionVariation = C3DParticleSystemGetParticleBounceVariation(a1);
      }

      return ParticleFrictionVariation > 0.0;
    }

    if (a2 == 12)
    {
      ParticleFrictionVariation = C3DParticleSystemGetParticleChargeVariation(a1);
      return ParticleFrictionVariation > 0.0;
    }

    if (a2 == 20)
    {
      ParticleFrictionVariation = C3DParticleSystemGetParticleIntensityVariation(a1);
      return ParticleFrictionVariation > 0.0;
    }
  }

  else if (a2 > 6)
  {
    if (a2 == 7)
    {
      ParticleFrictionVariation = C3DParticleSystemGetParticleSizeVariation(a1);
      return ParticleFrictionVariation > 0.0;
    }

    if (a2 == 8)
    {
      return vmaxvq_u32(vmvnq_s8(vceqzq_f32(C3DParticleSystemGetParticleColorVariation(a1)))) >> 31;
    }
  }

  else
  {
    if (a2 < 2)
    {
      return 1;
    }

    if (a2 == 6)
    {
      ParticleFrictionVariation = C3DParticleSystemGetParticleMassVariation(a1);
      return ParticleFrictionVariation > 0.0;
    }
  }

  return 0;
}

const __CFDictionary *__semanticIsUsedByController(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 400);
  if (result)
  {
    result = CFDictionaryGetValue(result, *(&s_semanticsDesc + 3 * a2));
    if (result)
    {
      if ((a2 & 0xFFFFFFFE) == 8)
      {
        result = CFDictionaryGetValue(result, @"ControllerVariableMode");
        if (result)
        {
          return (CFEqual(result, @"ControllerVariableOverLife") == 0);
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL __semanticIsUsedByEventBlock(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  v4 = (&s_semanticsDesc + 3 * a2);
  v5 = 1;
  while (1)
  {
    theArray = 0;
    if (C3DParticleSystemGetEventBlock(a1, v3, &theArray))
    {
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          break;
        }
      }
    }

LABEL_8:
    v5 = v3++ < 2;
    if (v3 == 3)
    {
      return 0;
    }
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    if (CFEqual(ValueAtIndex, *v4))
    {
      return v5;
    }

    if (v7 == ++v8)
    {
      goto LABEL_8;
    }
  }
}

void __addSemanticData(__n128 *a1, __CFDictionary *a2, unsigned int a3, char a4)
{
  HasVariation = __semanticHasVariation(a1, a3);
  v9 = __semanticIsUsedByController(a1, a3);
  IsUsedByEventBlock = __semanticIsUsedByEventBlock(a1, a3);
  if ((a4 & 1) != 0 || (HasVariation & 1) != 0 || v9)
  {
    __addPrimaryData(&a1[26], a2, a3, *(&s_semanticsDesc + 3 * a3), *(&s_semanticsDesc + 24 * a3 + 8), *(&s_semanticsDesc + 24 * a3 + 9), *(&s_semanticsDesc + 3 * a3 + 2), 0, (a4 | IsUsedByEventBlock | HasVariation) & 1, v9);
  }
}

uint64_t C3DParticleSystemGetParticleLayout(uint64_t a1)
{
  if (*(a1 + 857) != 1)
  {
    return a1 + 416;
  }

  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 416) = 0u;
  __releaseProperties(a1);
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  __addSemanticData(a1, Mutable, 0, 1);
  __addSecondaryData(a1 + 416, Mutable, @"Angle", 1, 16, C3DParticleInitPositionAndVelocity, 12);
  __addSemanticData(a1, Mutable, 1u, 1);
  __addSecondaryData(a1 + 416, Mutable, @"AngularVelocity", 1, 16, C3DParticleInitDummy, 12);
  if (C3DParticleSystemGetParticleLifeSpanVariation(a1) <= 0.0)
  {
    __addSemanticData(a1, Mutable, 2u, 1);
  }

  else
  {
    __addPrimaryData(a1 + 416, Mutable, 2, @"Life", 1, 4, C3DParticleInitLifeWithVariation, 0, 1, 0);
    __addPrimaryData(a1 + 416, Mutable, 3, @"InvLifeSpan", 1, 4, C3DParticleInitDummy, 0, 1, 0);
  }

  __addSemanticData(a1, Mutable, 7u, 0);
  __addSemanticData(a1, Mutable, 0x14u, 0);
  __addSemanticData(a1, Mutable, 0xBu, 0);
  __addSemanticData(a1, Mutable, 0xAu, 0);
  __addSemanticData(a1, Mutable, 0xCu, 0);
  v4 = C3DParticleSystemGetOrientationMode(a1) == 2;
  __addSemanticData(a1, Mutable, 0xDu, v4);
  if (__semanticIsUsedByController(a1, 9u))
  {
    v5 = vmaxvq_u32(vmvnq_s8(vceqzq_f32(C3DParticleSystemGetParticleColorVariation(a1))));
    IsUsedByEventBlock = __semanticIsUsedByEventBlock(a1, 8u);
    v7 = v5 < 0 || IsUsedByEventBlock;
    v8 = __semanticIsUsedByController(a1, 8u);
    __addPrimaryData(a1 + 416, Mutable, 8, @"Color", 4, 16, C3DParticleInitColor, 0, v7, v8);
    __addSecondaryData(a1 + 416, Mutable, @"Opacity", 1, 16, C3DParticleInitColor, 12);
  }

  else
  {
    __addSemanticData(a1, Mutable, 8u, 0);
  }

  __addSemanticData(a1, Mutable, 6u, 0);
  HasTextureAnimation = C3DParticleSystemHasTextureAnimation(a1);
  __addSemanticData(a1, Mutable, 0xEu, HasTextureAnimation);
  __addSemanticData(a1, Mutable, 0xFu, 0);
  v10 = C3DParticleSystemGetColliderNodes(a1) != 0;
  v11 = *(a1 + 91);
  if (v11 == 3 || v11 == 2)
  {
    goto LABEL_15;
  }

  if (*(a1 + 93))
  {
    if (*(a1 + 93) - 3 > 1)
    {
      v10 = 4;
      goto LABEL_16;
    }

LABEL_15:
    __addSemanticData(a1, Mutable, 4u, 1);
LABEL_16:
    __addSemanticData(a1, Mutable, 5u, 1);
  }

  EventBlock = C3DParticleSystemGetEventBlock(a1, 2u, 0);
  if (EventBlock | C3DParticleSystemGetEventBlock(a1, 1u, 0))
  {
    __addSemanticData(a1, Mutable, 0x11u, 1);
  }

  theArray = 0;
  if (C3DParticleSystemGetEventBlock(a1, 2u, &theArray))
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v14 = Count;
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
          if (CFEqual(ValueAtIndex, @"ContactPoint"))
          {
            break;
          }

          if (CFEqual(ValueAtIndex, @"ContactNormal"))
          {
            v17 = 19;
            goto LABEL_27;
          }

LABEL_28:
          if (v14 == ++v15)
          {
            goto LABEL_29;
          }
        }

        v17 = 18;
LABEL_27:
        __addSemanticData(a1, Mutable, v17, 1);
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  if (v10)
  {
    __addPrimaryData(a1 + 416, Mutable, 16, @"TempData", 0, v10, 0, 0, 1, 0);
  }

  *(a1 + 408) = CFDictionaryCreateCopy(v2, Mutable);
  CFRelease(Mutable);
  v18 = 0;
  v19 = (a1 + 804);
  do
  {
    Value = CFDictionaryGetValue(*(a1 + 408), *(&s_semanticsDesc + v18));
    if (Value)
    {
      v21 = *Value;
      *v19 = *Value;
      if (Value[1] != 255)
      {
        v21 = Value[1];
      }
    }

    else
    {
      v21 = -1;
      *v19 = -1;
    }

    v19[21] = v21;
    ++v19;
    v18 += 24;
  }

  while (v18 != 504);
  *(a1 + 857) = 0;
  return a1 + 416;
}

void __releaseProperties(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, __freeProperty, 0);
    v3 = *(a1 + 408);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 408) = 0;
    }
  }
}

unint64_t C3DParticleSystemGetMaterial(__n128 *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v9 = a3;
  if ((a1[53].n128_u8[10] & 1) != 0 || a1[53].n128_u8[11] != a3 || a1[53].n128_u8[12] != a5)
  {
    a1[53].n128_u8[12] = a5;
    a1[53].n128_u8[10] = 0;
    a1[53].n128_u8[11] = a3;
    if (!a1[53].n128_u64[0])
    {
      v12 = C3DMaterialCreate();
      a1[53].n128_u64[0] = v12;
      C3DMaterialSetDoubleSided(v12, 1);
      C3DMaterialSetEnableReadFromDepthBuffer(a1[53].n128_i64[0], 1);
      v13 = a1[53].n128_i64[0];
      WritesToDepthBuffer = C3DParticleSystemGetWritesToDepthBuffer(a1);
      C3DMaterialSetEnableWriteInDepthBuffer(v13, WritesToDepthBuffer);
    }

    v15 = C3DParticleManagerComputeTechniqueForSystem(a2, a1, v9, a4, a5, a6);
    C3DMaterialSetTechnique(a1[53].n128_i64[0], v15);
  }

  return a1[53].n128_u64[0];
}

const void *C3DParticleSystemGetPropertyIndexAndStride(uint64_t a1, const void *a2)
{
  C3DParticleSystemGetParticleLayout(a1);
  result = CFDictionaryGetValue(*(a1 + 408), a2);
  if (result)
  {
    return *result;
  }

  return result;
}

void C3DParticleSystemAddModifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 896);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *(a1 + 896) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  *(a1 + 872) = -1;
  *(a1 + 912) = 0;
}

void C3DParticleSystemRemoveModifier(uint64_t a1, int a2)
{
  v3 = *(a1 + 896);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 896), v7);
        if (C3DParticleModifierGetStage(ValueAtIndex) == a2)
        {
          CFArrayRemoveValueAtIndex(*(a1 + 896), v7);
          --v6;
        }

        else
        {
          ++v7;
        }
      }

      while (v7 < v6);
    }

    *(a1 + 872) = -1;
    *(a1 + 912) = 0;
  }
}

void C3DParticleSystemRemoveAllModifiers(uint64_t a1)
{
  v2 = *(a1 + 896);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
    *(a1 + 872) = -1;
    *(a1 + 912) = 0;
  }
}

uint64_t C3DParticleSystemHasCubeMapTexture(uint64_t a1)
{
  result = *(a1 + 240);
  if (result)
  {
    return C3DImageIsCubeMap(result);
  }

  return result;
}

uint64_t C3DParticleSystemGetConstantDataPtrForSemantic(uint64_t a1, int a2)
{
  if (a2 > 10)
  {
    if (a2 <= 13)
    {
      if (a2 == 11)
      {
        return a1 + 212;
      }

      if (a2 == 12)
      {
        return a1 + 228;
      }
    }

    else
    {
      switch(a2)
      {
        case 14:
          return a1 + 308;
        case 15:
          return a1 + 316;
        case 20:
          return a1 + 296;
      }
    }
  }

  else
  {
    if (a2 > 7)
    {
      if (a2 == 8)
      {
        return a1 + 256;
      }

      if (a2 == 9)
      {
        return a1 + 268;
      }

      return a1 + 220;
    }

    if (a2 == 6)
    {
      return a1 + 372;
    }

    if (a2 == 7)
    {
      return a1 + 288;
    }
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    C3DParticleSystemGetConstantDataPtrForSemantic_cold_1();
  }

  return 0;
}

void _C3DParticleSystemCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 240) = 0;
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 352) = 0;
  }

  v4 = *(a1 + 920);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 920) = 0;
  }

  v5 = *(a1 + 848);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 848) = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 360);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 360) = 0;
  }

  v8 = *(a1 + 328);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 328) = 0;
  }

  v9 = *(a1 + 336);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 336) = 0;
  }

  v10 = *(a1 + 344);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 344) = 0;
  }

  __releaseProperties(a1);
  for (i = 0; i != 24; i += 8)
  {
    v12 = a1 + i;
    v13 = *(a1 + i + 928);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + 928) = 0;
    }

    v14 = *(v12 + 952);
    if (v14)
    {
      CFRelease(v14);
      *(v12 + 952) = 0;
    }
  }

  v15 = *(a1 + 896);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 896) = 0;
  }

  free(*(a1 + 864));
  *(a1 + 864) = 0;
  __DestroyControllers(a1);
  v16 = *(a1 + 400);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 400) = 0;
  }
}

CFStringRef _C3DParticleSystemCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleSystemRef>");
}

CFStringRef _C3DParticleSystemCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleSystemRef>");
}

void _C3DParticleSystemSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 248) == __dst)
  {
    v7 = *__src;

    C3DParticleSystemSetStretchFactor(a1, v7);
  }

  else
  {
    v6 = (a1 + 256);
    memcpy(__dst, __src, __n);
    if (v6 != __dst)
    {
      __C3DParticleSystemControllersDidChange(a1);
      *(a1 + 872) = -1;
      *(a1 + 857) = 257;
      *(a1 + 904) = 0;
    }
  }
}

__CFString *C3DLibraryGetStringForType(uint64_t a1)
{
  if (C3DGeometryGetTypeID() == a1 || C3DParametricGeometryGetTypeID() == a1 || C3DFloorGetTypeID() == a1)
  {
    v2 = kC3DGeometryTypeKey;
    return *v2;
  }

  if (C3DMeshGetTypeID() == a1)
  {
    v2 = kC3DMeshTypeKey;
    return *v2;
  }

  if (C3DAnimationGroupGetTypeID() == a1)
  {
    v2 = kC3DAnimationGroupTypeKey;
    return *v2;
  }

  if (C3DMaterialGetTypeID() == a1)
  {
    v2 = kC3DMaterialTypeKey;
    return *v2;
  }

  if (C3DImageGetTypeID() == a1)
  {
    v2 = kC3DImageTypeKey;
    return *v2;
  }

  if (C3DMeshElementGetTypeID() == a1)
  {
    v2 = kC3DMeshElementTypeKey;
    return *v2;
  }

  if (C3DNodeGetTypeID() == a1)
  {
    v2 = kC3DNodeTypeKey;
    return *v2;
  }

  if (C3DCameraGetTypeID() == a1)
  {
    v2 = kC3DCameraTypeKey;
    return *v2;
  }

  if (C3DLightGetTypeID() == a1)
  {
    v2 = kC3DLightTypeKey;
    return *v2;
  }

  if (C3DSkinGetTypeID() == a1)
  {
    v2 = kC3DSkinTypeKey;
    return *v2;
  }

  if (C3DMeshSourceGetTypeID() == a1)
  {
    v2 = kC3DMeshSourceTypeKey;
    return *v2;
  }

  if (C3DGenericSourceGetTypeID() == a1)
  {
    v2 = kC3DGenericSourceTypeKey;
    return *v2;
  }

  if (C3DMorphGetTypeID() == a1)
  {
    v2 = kC3DMorphTypeKey;
    return *v2;
  }

  if (C3DSceneGetTypeID() == a1)
  {
    return @"scene";
  }

  if (C3DKeyframedAnimationGetTypeID() == a1)
  {
    return @"keyframedAnimations";
  }

  return 0;
}

uint64_t C3DLibraryGetTypeForString(const __CFString *a1)
{
  if (CFStringCompare(a1, @"mesh", 0))
  {
    if (CFStringCompare(a1, @"geometry", 0))
    {
      if (CFStringCompare(a1, @"animation", 0))
      {
        if (CFStringCompare(a1, @"material", 0))
        {
          if (CFStringCompare(a1, @"image", 0))
          {
            if (CFStringCompare(a1, @"geometryElement", 0))
            {
              if (CFStringCompare(a1, @"node", 0))
              {
                if (CFStringCompare(a1, @"camera", 0))
                {
                  if (CFStringCompare(a1, @"light", 0))
                  {
                    if (CFStringCompare(a1, @"skin", 0))
                    {
                      if (CFStringCompare(a1, @"morph", 0))
                      {
                        if (CFStringCompare(a1, @"geometrySource", 0))
                        {
                          if (CFStringCompare(a1, @"genericSource", 0))
                          {
                            return 0;
                          }

                          else
                          {

                            return C3DGenericSourceGetTypeID();
                          }
                        }

                        else
                        {

                          return C3DMeshSourceGetTypeID();
                        }
                      }

                      else
                      {

                        return C3DMorphGetTypeID();
                      }
                    }

                    else
                    {

                      return C3DSkinGetTypeID();
                    }
                  }

                  else
                  {

                    return C3DLightGetTypeID();
                  }
                }

                else
                {

                  return C3DCameraGetTypeID();
                }
              }

              else
              {

                return C3DNodeGetTypeID();
              }
            }

            else
            {

              return C3DMeshElementGetTypeID();
            }
          }

          else
          {

            return C3DImageGetTypeID();
          }
        }

        else
        {

          return C3DMaterialGetTypeID();
        }
      }

      else
      {

        return C3DAnimationGroupGetTypeID();
      }
    }

    else
    {

      return C3DMeshGetTypeID();
    }
  }

  else
  {

    return C3DGeometryGetTypeID();
  }
}

void _C3DLibrarySubStorageCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

CFStringRef _C3DLibrarySubStorageCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLibrarySubStorage>");
}

CFStringRef _C3DLibrarySubStorageCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLibrarySubStorage>");
}

uint64_t __C3DLibrarySubStorageGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DLibrarySubStorageGetTypeID_typeID = result;
  return result;
}

__CFString *C3DLibraryCreateEntryIdentifier(uint64_t a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  v5 = CFStringCreateWithFormat(0, 0, @"%d", a1);
  StringForType = C3DLibraryGetStringForType(a2);
  if (StringForType)
  {
    CFStringAppend(Mutable, StringForType);
    CFStringAppend(Mutable, @"/");
    CFStringAppend(Mutable, v5);
    CFRelease(v5);
  }

  else
  {
    CFRelease(v5);
    CFRelease(Mutable);
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      C3DLibraryCreateEntryIdentifier_cold_1();
    }

    return 0;
  }

  return Mutable;
}

uint64_t C3DLibraryGetRemappedID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !*(a1 + 48))
  {
    return 0;
  }

  v4 = a3;
  v5 = a2;
  EntryIdentifier = C3DLibraryCreateEntryIdentifier(a2, a3);
  if (!EntryIdentifier)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      C3DLibraryGetRemappedID_cold_2(v5, v4, v10);
    }

    return 0;
  }

  v7 = EntryIdentifier;
  Value = CFDictionaryGetValue(*(a1 + 48), EntryIdentifier);
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v9 = valuePtr;
  }

  else
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      C3DLibraryGetRemappedID_cold_1();
    }

    v9 = 0;
  }

  CFRelease(v7);
  return v9;
}

double __C3DLibraryGetTypeID_block_invoke()
{
  C3DLibraryGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DLibraryContextClassSerializable;
  unk_281742EE8 = kC3DC3DLibraryContextClassSerializable;
  unk_281742EF8 = *off_282DC6210;
  return result;
}

uint64_t C3DLibraryCreate()
{
  if (C3DLibraryGetTypeID_onceToken != -1)
  {
    C3DLibraryCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DLibraryGetTypeID_typeID, 48);
  if (Instance)
  {
    *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  }

  return Instance;
}

void *C3DLibraryGetSubStorage(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DSceneFinalizeDeserialization_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 16);
  Value = CFDictionaryGetValue(v12, key);
  if (!Value)
  {
    if (C3DLibrarySubStorageGetTypeID_onceToken != -1)
    {
      C3DLibraryGetSubStorage_cold_2();
    }

    Value = C3DTypeCreateInstance_(C3DLibrarySubStorageGetTypeID_typeID, 40);
    if (Value)
    {
      v14 = *MEMORY[0x277CBECE8];
      v15 = MEMORY[0x277CBF150];
      Value[2] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
      Value[3] = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], 0);
      Value[4] = CFDictionaryCreateMutable(v14, 0, 0, v15);
      Value[5] = 1;
      Value[6] = key;
    }

    CFDictionaryAddValue(v12, key, Value);
    CFRelease(Value);
  }

  return Value;
}

char *C3DLibraryAddEntry(uint64_t a1, const void *a2)
{
  v4 = _C3DLibraryAddEntry(a1, a2);
  ID = C3DEntityGetID(a2);
  if (ID)
  {
    C3DLibraryTrackID(a1, ID, v4, a2);
  }

  return v4;
}

char *_C3DLibraryAddEntry(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  SubStorage = C3DLibraryGetSubStorage(a1, v4);
  if (CFDictionaryGetValue(SubStorage[3], cf))
  {
    return CFDictionaryGetValue(SubStorage[3], cf);
  }

  v6 = SubStorage[5];
  SubStorage[5] = v6 + 1;
  CFDictionaryAddValue(SubStorage[2], v6, cf);
  CFDictionaryAddValue(SubStorage[3], cf, v6);
  return v6;
}

void C3DLibraryTrackID(uint64_t a1, void *key, const void *a3, const void *a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DSceneFinalizeDeserialization_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DLibraryTrackID_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  Mutable = *(a1 + 40);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 40) = Mutable;
  }

  if (!CFDictionaryGetValue(Mutable, key))
  {
    CFDictionaryAddValue(*(a1 + 40), key, a4);
    if (CFTypeIsC3DEntity(a4))
    {
      C3DEntitySetID(a4, key);
    }

    v25 = CFGetTypeID(a4);
    SubStorage = C3DLibraryGetSubStorage(a1, v25);
    if (SubStorage)
    {
      SubStorage = *(SubStorage + 4);
    }

    CFDictionaryAddValue(SubStorage, a3, key);
  }
}

CFDictionaryRef *C3DLibraryGetEntryID(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 16);
  v4 = CFGetTypeID(cf);
  result = CFDictionaryGetValue(v3, v4);
  if (result)
  {
    return CFDictionaryGetValue(result[3], cf);
  }

  return result;
}

void *C3DLibraryGetEntry(uint64_t a1, void *key, const void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DSceneFinalizeDeserialization_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  result = CFDictionaryGetValue(*(a1 + 16), key);
  if (result)
  {
    v15 = result;
    if (!result[2])
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        C3DLibraryGetEntry_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    return CFDictionaryGetValue(*(v15 + 16), a3);
  }

  return result;
}

const void **C3DLibraryCopyEntriesWithKind(uint64_t a1, void *key, CFIndex *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DSceneFinalizeDeserialization_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value && (v15 = Value[2]) != 0)
  {
    Count = CFDictionaryGetCount(Value[2]);
    v17 = C3DMalloc(8 * Count);
    CFDictionaryGetKeysAndValues(v15, 0, v17);
  }

  else
  {
    Count = 0;
    v17 = 0;
  }

  *a3 = Count;
  return v17;
}

const void **C3DLibraryCopyIDsWithKind(uint64_t a1, void *a2, CFIndex *a3)
{
  SubStorage = C3DLibraryGetSubStorage(a1, a2);
  if (SubStorage && (v5 = SubStorage[4]) != 0)
  {
    Count = CFDictionaryGetCount(SubStorage[4]);
    *a3 = Count;
    v7 = C3DMalloc(8 * Count);
    CFDictionaryGetKeysAndValues(v5, 0, v7);
  }

  else
  {
    v7 = 0;
    *a3 = 0;
  }

  return v7;
}

const __CFDictionary *C3DLibraryGetEntryWithUniqueID(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DLibraryGetEntryWithUniqueID_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DLibraryGetEntryWithUniqueID_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 32);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

const __CFDictionary *C3DLibraryGetEntryWithDocumentID(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DSceneFinalizeDeserialization_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DLibraryGetEntryWithDocumentID_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 40);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void *C3DLibraryGetMemoryUsageForKind(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  result = C3DLibraryGetSubStorage(a1, a2);
  if (result)
  {
    context[0] = &v7;
    context[1] = a2;
    context[2] = a1;
    v5 = result[2];
    Count = CFDictionaryGetCount(v5);
    cf = CFSetCreateMutable(0, Count, 0);
    CFDictionaryApplyFunction(v5, _getMemoryUsage, context);
    CFRelease(cf);
    return v7;
  }

  return result;
}

void _getMemoryUsage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  context[3] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (C3DImageGetTypeID() == v5)
  {
    Size = C3DImageGetSize(a2);
    if (C3DImageHasTextureRawData(a2))
    {
      Data = C3DImageGetData(a2);
      if (!Data)
      {
        return;
      }

      v9 = *v6 + CFDataGetLength(Data);
      goto LABEL_23;
    }

    v28 = 0;
    TypeID = C3DMaterialGetTypeID();
    SubStorage = C3DLibraryGetSubStorage(v7, TypeID);
    if (SubStorage)
    {
      context[0] = &v28 + 1;
      context[1] = &v28;
      context[2] = a2;
      CFDictionaryApplyFunction(SubStorage[2], _fillImageSamplerMask, context);
      if ((v28 & 0x100) != 0)
      {
        v26 = C3DMakePowerOfTwo(*&Size);
        *v6 += (4 * v26 * C3DMakePowerOfTwo(*(&Size + 1)));
      }
    }

    if (v28 == 1)
    {
      v9 = (*v6 + (vmul_lane_f32(*&Size, *&Size, 1).f32[0] * 4.0));
LABEL_23:
      *v6 = v9;
    }
  }

  else if (C3DGeometryGetTypeID() == v5)
  {
    Mesh = C3DGeometryGetMesh(a2);
    v11 = *(a3 + 24);
    if (!CFSetContainsValue(v11, Mesh))
    {
      CFSetAddValue(v11, Mesh);
      v12 = C3DMeshCopyAllSources(Mesh, 1);
      if (v12)
      {
        v13 = v12;
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          for (i = 0; i != v15; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
            Accessor = C3DMeshSourceGetAccessor(ValueAtIndex);
            *v6 += C3DSourceAccessorGetLength(Accessor);
          }
        }

        CFRelease(v13);
      }

      ElementsCount = C3DMeshGetElementsCount(Mesh);
      if (ElementsCount >= 1)
      {
        v20 = ElementsCount;
        for (j = 0; j != v20; ++j)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, j, 1);
          LODWORD(context[0]) = 0;
          Indexes = C3DMeshElementGetIndexes(ElementAtIndex, context);
          if (Indexes)
          {
            *v6 += CFDataGetLength(Indexes);
          }
        }
      }
    }
  }
}

void C3DLibraryApplyEntriesWithType(uint64_t a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  if (Value)
  {
    v5 = *(Value + 2);
    if (v5)
    {

      CFDictionaryApplyFunction(v5, __applyBlock, a3);
    }
  }
}

CFMutableArrayRef C3DLibraryCopyKinds(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DSceneFinalizeDeserialization_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v10);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  CFDictionaryApplyFunction(*(a1 + 16), _getKinds, Mutable);
  return Mutable;
}

void _getKinds(int a1, uint64_t a2, __CFArray *a3)
{
  valuePtr = a1;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(a3, v4);
  CFRelease(v4);
}

void _C3DLibraryCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
    a1[3] = 0;
  }

  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
    a1[4] = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
    a1[5] = 0;
  }
}

CFStringRef _C3DLibraryCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLibrary>");
}

CFStringRef _C3DLibraryCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DLibrary>");
}

BOOL _C3DLibraryInitWithPropertyList(void *a1, CFDictionaryRef theDict, const __CFDictionary *a3, uint64_t a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!theDict)
    {
LABEL_4:
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        _C3DGeometryFinalizeDeserialization_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else if (!theDict)
  {
    goto LABEL_4;
  }

  Value = CFDictionaryGetValue(theDict, @"libraryStorage");
  v25 = v7[3];
  if (v25 != Value)
  {
    if (v25)
    {
      CFRelease(v25);
      v7[3] = 0;
    }

    if (Value)
    {
      v26 = CFRetain(Value);
    }

    else
    {
      v26 = 0;
    }

    v7[3] = v26;
  }

  v27 = v7[6];
  if (v27)
  {
    CFRelease(v27);
    v7[6] = 0;
  }

  v28 = CFGetAllocator(v7);
  v7[6] = CFDictionaryCreateMutable(v28, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v29 = v7[7];
  if (v29)
  {
    CFRelease(v29);
    v7[7] = 0;
  }

  v30 = CFGetAllocator(v7);
  v7[7] = CFDictionaryCreateMutable(v30, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Count = CFDictionaryGetCount(Value);
  v32 = C3DMalloc(8 * Count);
  CFDictionaryGetKeysAndValues(Value, v32, 0);
  qsort(v32, Count, 8uLL, __LibraryDeserializationCompareStrings);
  if (Count < 1)
  {
    v33 = 1;
    if (v32)
    {
      goto LABEL_76;
    }

    return v33;
  }

  v33 = 0;
  v34 = 0;
  allocator = *MEMORY[0x277CBECE8];
  v68 = Value;
  v69 = v32;
  v67 = Count;
  while (1)
  {
    v35 = v32[v34];
    TypeForString = C3DLibraryGetTypeForString(v35);
    if (TypeForString)
    {
      break;
    }

LABEL_70:
    v33 = ++v34 >= Count;
    if (v34 == Count)
    {
      goto LABEL_75;
    }
  }

  v37 = TypeForString;
  v70 = v34;
  v38 = CFDictionaryGetValue(Value, v35);
  TypeID = C3DImageGetTypeID();
  v39 = CFDictionaryGetCount(v38);
  v40 = C3DMalloc(8 * v39);
  v41 = C3DMalloc(8 * v39);
  v42 = v38;
  v43 = v39;
  CFDictionaryGetKeysAndValues(v42, v41, v40);
  if (v39 < 1)
  {
    v45 = v40;
    if (v40)
    {
LABEL_67:
      free(v45);
    }

    Value = v68;
    v32 = v69;
    Count = v67;
    v34 = v70;
    if (v41)
    {
      free(v41);
    }

    goto LABEL_70;
  }

  v66 = v33;
  v44 = 0;
  v45 = v40;
  v72 = v43;
  while (1)
  {
    v46 = v45[v44];
    IntValue = CFStringGetIntValue(v41[v44]);
    if (C3DImageGetTypeID() == v37)
    {
      v47 = CFDictionaryGetValue(a3, @"kEnclosingFolderURL");
      if (v47)
      {
        v48 = v47;
        v49 = CFDictionaryGetValue(v46, @"imageRelativePath");
        if (v49)
        {
          v50 = CFURLCreateCopyAppendingPathComponent(allocator, v48, v49, 0);
          if (v50)
          {
            v51 = v50;
            SharedInstance = C3DResourceCacheGetSharedInstance();
            Resource = C3DResourceCacheGetResource(SharedInstance, v51);
            if (Resource)
            {
              __AddEntry(v7, v37, IntValue, 0, Resource);
LABEL_63:
              CFRelease(v51);
              goto LABEL_64;
            }

            CFRelease(v51);
          }
        }
      }
    }

    if (C3DGeometryGetTypeID() == v37)
    {
      Empty = C3DGeometryCreate();
      goto LABEL_53;
    }

    if (C3DMeshGetTypeID() == v37)
    {
      Empty = C3DMeshCreate();
      goto LABEL_53;
    }

    if (C3DMaterialGetTypeID() == v37)
    {
      Empty = C3DMaterialCreate();
      goto LABEL_53;
    }

    if (C3DImageGetTypeID() == v37)
    {
      Empty = C3DImageCreate();
      goto LABEL_53;
    }

    if (C3DNodeGetTypeID() == v37)
    {
      Empty = C3DNodeCreate();
      goto LABEL_53;
    }

    if (C3DCameraGetTypeID() == v37)
    {
      Empty = C3DCameraCreate();
      goto LABEL_53;
    }

    if (C3DLightGetTypeID() == v37)
    {
      Empty = C3DLightCreate();
      goto LABEL_53;
    }

    if (C3DAnimationGroupGetTypeID() == v37)
    {
      Empty = C3DAnimationGroupCreate();
      goto LABEL_53;
    }

    if (C3DSkinGetTypeID() == v37)
    {
      Empty = C3DSkinCreate();
      goto LABEL_53;
    }

    if (C3DMeshSourceGetTypeID() == v37)
    {
      Empty = _C3DMeshSourceCreate();
      goto LABEL_53;
    }

    if (C3DMorphGetTypeID() == v37)
    {
      Empty = C3DMorphCreate();
      goto LABEL_53;
    }

    if (C3DGenericSourceGetTypeID() == v37)
    {
      break;
    }

LABEL_64:
    if (v43 == ++v44)
    {
      goto LABEL_67;
    }
  }

  Empty = C3DGenericSourceCreateEmpty();
LABEL_53:
  v51 = Empty;
  if (!Empty)
  {
    goto LABEL_64;
  }

  if (C3DInitWithPropertyList(Empty, v46, a3, a4))
  {
    if (TypeID == v37)
    {
      v55 = v45;
      v56 = v7;
      v57 = a3;
      v58 = a4;
      URL = C3DImageGetURL(v51);
      if (URL)
      {
        v60 = URL;
        v61 = C3DResourceCacheGetSharedInstance();
        v62 = C3DResourceCacheGetResource(v61, v60);
        if (v62 != v51)
        {
          v63 = v62;
          if (v62)
          {
            CFRelease(v51);
            v51 = CFRetain(v63);
          }
        }
      }

      a4 = v58;
      a3 = v57;
      v7 = v56;
      v45 = v55;
      v43 = v72;
    }

    __AddEntry(v7, v37, IntValue, v46, v51);
    if (C3DAnimationGroupGetTypeID() == v37)
    {
      _fillLibraryWithAnimationGroup(v7, v51);
    }

    goto LABEL_63;
  }

  free(v45);
  free(v41);
  CFRelease(v51);
  v64 = scn_default_log();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    _C3DLibraryInitWithPropertyList_cold_3();
  }

  v32 = v69;
  v33 = v66;
LABEL_75:
  if (v32)
  {
LABEL_76:
    free(v32);
  }

  return v33;
}

__CFDictionary *_C3DLibraryCopyPropertyList(CFDictionaryRef *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v17 = CFGetAllocator(cf);
    v18 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Count = CFDictionaryGetCount(cf[2]);
    v20 = C3DMalloc(8 * Count);
    v21 = C3DMalloc(8 * Count);
    v32 = v20;
    CFDictionaryGetKeysAndValues(cf[2], v21, v20);
    if (Count >= 1)
    {
      v22 = v21;
      do
      {
        v23 = *v22;
        if (!C3DTypeConformsToProtocol(*v22, 0))
        {
          v27 = scn_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v34 = v23;
            _os_log_error_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_ERROR, "Error: type %d is not serializable\n", buf, 8u);
          }

          goto LABEL_18;
        }

        v24 = _copySerializedSubStorage(cf, v23, a3, a4, 0);
        StringForType = C3DLibraryGetStringForType(v23);
        if (StringForType)
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          if (!v24)
          {
            goto LABEL_18;
          }
        }

        else
        {
          CFDictionarySetValue(v18, StringForType, v24);
        }

        CFRelease(v24);
LABEL_18:
        ++v22;
        --Count;
      }

      while (Count);
    }

    TypeID = C3DMaterialGetTypeID();
    v29 = _copySerializedSubStorage(cf, TypeID, a3, a4, C3DMaterialCopyEffectPropertyList);
    if (v29)
    {
      v30 = v29;
      CFDictionarySetValue(v18, @"effect", v29);
      CFRelease(v30);
    }

    CFDictionarySetValue(Mutable, @"libraryStorage", v18);
    CFRelease(v18);
    if (v32)
    {
      free(v32);
    }

    if (v21)
    {
      free(v21);
    }
  }

  return Mutable;
}

uint64_t _C3DLibraryFinalizeDeserialization(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  context[3] = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DLibraryFinalizeDeserialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a1 + 16))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      _C3DLibraryFinalizeDeserialization_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  Count = CFDictionaryGetCount(*(a1 + 16));
  v23 = C3DMalloc(8 * Count);
  CFDictionaryGetKeysAndValues(*(a1 + 16), v23, 0);
  qsort(v23, Count, 8uLL, __LibraryDeserializationCompare);
  v24 = 1;
  if (Count >= 1)
  {
    v25 = v23;
    v26 = 1;
    do
    {
      v27 = *v25++;
      Value = CFDictionaryGetValue(*(a1 + 16), v27);
      v34 = 1;
      context[0] = a1;
      context[1] = a4;
      context[2] = &v34;
      CFDictionaryApplyFunction(Value[2], __finalizeDeserialization, context);
      v26 &= v34;
      --Count;
    }

    while (Count);
    if (v26)
    {
      v24 = 1;
    }

    else
    {
      v29 = scn_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        _C3DLibraryFinalizeDeserialization_cold_3();
      }

      v24 = 0;
    }
  }

  v30 = *(a1 + 56);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 56) = 0;
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 48) = 0;
  }

  if (v23)
  {
    free(v23);
  }

  v32 = *(a1 + 24);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 24) = 0;
  }

  return v24;
}

uint64_t __LibraryDeserializationCompareStrings(const __CFString **a1, const __CFString **a2)
{
  v2 = *a2;
  TypeForString = C3DLibraryGetTypeForString(*a1);
  v4 = __LibraryDeserializationOrder(TypeForString);
  v5 = C3DLibraryGetTypeForString(v2);
  return v4 - __LibraryDeserializationOrder(v5);
}

uint64_t __LibraryDeserializationOrder(uint64_t a1)
{
  if (C3DAnimationGroupGetTypeID() == a1)
  {
    return 1;
  }

  if (C3DImageGetTypeID() == a1)
  {
    return 2;
  }

  if (C3DMaterialGetTypeID() == a1)
  {
    return 4;
  }

  if (C3DMeshSourceGetTypeID() == a1)
  {
    return 5;
  }

  if (C3DGenericSourceGetTypeID() == a1)
  {
    return 6;
  }

  if (C3DMeshGetTypeID() == a1)
  {
    return 7;
  }

  if (C3DMeshElementGetTypeID() == a1)
  {
    return 8;
  }

  if (C3DGeometryGetTypeID() == a1 || C3DParametricGeometryGetTypeID() == a1 || C3DFloorGetTypeID() == a1)
  {
    return 9;
  }

  if (C3DSkinGetTypeID() == a1)
  {
    return 10;
  }

  if (C3DMorphGetTypeID() == a1)
  {
    return 11;
  }

  if (C3DCameraGetTypeID() == a1)
  {
    return 12;
  }

  if (C3DLightGetTypeID() == a1)
  {
    return 13;
  }

  if (C3DNodeGetTypeID() == a1)
  {
    return 14;
  }

  return 0;
}

void __AddEntry(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  valuePtr = C3DLibraryAddEntry(a1, a5);
  if (C3DTypeConformsToProtocol(a2, 0))
  {
    v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &valuePtr);
    EntryIdentifier = C3DLibraryCreateEntryIdentifier(a3, a2);
    CFDictionarySetValue(*(a1 + 48), EntryIdentifier, v10);
    if (a4)
    {
      CFDictionaryAddValue(*(a1 + 56), a5, a4);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (EntryIdentifier)
    {
      CFRelease(EntryIdentifier);
    }

    ID = C3DEntityGetID(a5);
    if (ID)
    {
      v13 = ID;
      CFRetain(ID);
    }

    else
    {
      v14 = valuePtr;
      v15 = CFGetTypeID(a5);
      v13 = C3DLibraryCreateEntryIdentifier(v14, v15);
    }

    C3DLibraryTrackID(a1, v13, valuePtr, a5);
    CFRelease(v13);
  }
}

void _fillLibraryWithAnimationGroup(uint64_t a1, const void *a2)
{
  AnimationCount = C3DAnimationGroupGetAnimationCount(a2);
  if (!C3DLibraryGetEntryID(a1, a2))
  {
    _addAndTrackEntity(a1, a2);
  }

  if (AnimationCount >= 1)
  {
    for (i = 0; i != AnimationCount; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a2, i);
      if (C3DAnimationIsGroup(AnimationAtIndex))
      {
        _fillLibraryWithAnimationGroup(a1, AnimationAtIndex);
      }

      else
      {
        _addAndTrackEntity(a1, AnimationAtIndex);
      }
    }
  }
}

void _addAndTrackEntity(uint64_t a1, const void *a2)
{
  v4 = C3DLibraryAddEntry(a1, a2);
  ID = C3DEntityGetID(a2);
  if (ID)
  {
    EntryIdentifier = ID;
    CFRetain(ID);
    C3DLibraryTrackID(a1, EntryIdentifier, v4, a2);
  }

  else
  {
    v7 = CFGetTypeID(a2);
    EntryIdentifier = C3DLibraryCreateEntryIdentifier(v4, v7);
    C3DLibraryTrackID(a1, EntryIdentifier, v4, a2);
    if (!EntryIdentifier)
    {
      return;
    }
  }

  CFRelease(EntryIdentifier);
}

CFMutableDictionaryRef _copySerializedSubStorage(CFDictionaryRef *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(const void *, CFDictionaryRef *, uint64_t, uint64_t))
{
  Value = CFDictionaryGetValue(a1[2], a2);
  if (!Value)
  {
    return 0;
  }

  v10 = Value;
  v11 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  v14 = *(v10 + 2);
  if (v14)
  {
    theDict = Mutable;
    Count = CFDictionaryGetCount(v14);
    v16 = C3DMalloc(8 * Count);
    v17 = C3DMalloc(8 * Count);
    CFDictionaryGetKeysAndValues(v14, v17, v16);
    v26 = v16;
    v27 = v17;
    if (Count >= 1)
    {
      while (1)
      {
        v18 = *v17;
        v19 = CFGetAllocator(a1);
        v20 = CFStringCreateWithFormat(v19, 0, @"%d", v18, v26);
        v21 = *v16;
        v22 = (a5 ? a5(v21, a1, a3, a4) : C3DCopyPropertyList(v21, a1, a3, a4));
        v23 = v22;
        if (v22 && v20 != 0)
        {
          break;
        }

        if (v20)
        {
          goto LABEL_17;
        }

        if (v22)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v16;
        ++v17;
        if (!--Count)
        {
          goto LABEL_21;
        }
      }

      CFDictionarySetValue(theDict, v20, v22);
LABEL_17:
      CFRelease(v20);
      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_14:
      CFRelease(v23);
      goto LABEL_15;
    }

    if (v16)
    {
LABEL_21:
      free(v26);
    }

    v13 = theDict;
    if (v27)
    {
      free(v27);
    }
  }

  return v13;
}

uint64_t __LibraryDeserializationCompare(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = __LibraryDeserializationOrder(*a1);
  return v3 - __LibraryDeserializationOrder(v2);
}

void __finalizeDeserialization(int a1, void *key, uint64_t *a3)
{
  v5 = *(*a3 + 56);
  if (!v5)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __finalizeDeserialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *a3;
  Value = CFDictionaryGetValue(v5, key);
  v16 = C3DFinalizeDeserialization(key, v14, Value, a3[1]);
  if (!v16)
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __finalizeDeserialization_cold_2();
    }

    v20 = a3[1];
    if (v20 && !*v20)
    {
      *v20 = C3DSceneSourceCreateMalformedDocumentError(0);
    }
  }

  v17 = a3[2];
  v18 = *v17 & 1;
  if (!v16)
  {
    v18 = 0;
  }

  *v17 = v18;
}

void _fillImageSamplerMask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  if (**a3 != 1 || (*v4 & 1) == 0)
  {
    v5 = *(a3 + 16);
    CommonProfile = C3DMaterialGetCommonProfile(a2);
    v7 = 0;
    do
    {
      EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, v7, 0);
      if (EffectSlot)
      {
        v9 = EffectSlot;
        if (C3DEffectSlotGetImage(EffectSlot) == v5)
        {
          if (C3DEffectSlotGetTextureSampler(v9))
          {
            if (C3DRendererContextTextureSamplerImpliesPow2TextureSize())
            {
              *v3 = 1;
            }

            else
            {
              *v4 = 1;
            }
          }

          else
          {
            v11 = scn_default_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *v12 = 0;
              _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, "Warning: C3DLibraryGetMemoryUsageForKind found an image with no sampler", v12, 2u);
            }
          }
        }
      }

      v10 = v7++;
    }

    while (v10 < 0x15);
  }
}

uint64_t C3DFloorGetBoundingBoxWithExtent(uint64_t a1, float32x4_t *a2, __n128 *a3, double a4)
{
  v8 = C3DGetScene(a1);
  if (v8)
  {
    DWORD2(v16) = 0;
    *&v16 = 0;
    UpAxis = C3DSceneGetUpAxis(v8, &v16);
    v10 = v16;
  }

  else
  {
    v10 = xmmword_21C27F8C0;
  }

  UpAxis.n128_f32[0] = a4;
  UpAxis.n128_u64[0] = vbsl_s8(vceqz_f32(*(a1 + 236)), vdup_lane_s32(UpAxis.n128_u64[0], 0), *(a1 + 236));
  if (*(&v10 + 1) == 0.0)
  {
    if (*(&v10 + 2) == 0.0)
    {
      v14.i32[0] = 0;
      v14.i32[3] = 0;
      v14.f32[1] = -UpAxis.n128_f32[0];
      v14.f32[2] = -UpAxis.n128_f32[1];
      *a2 = v14;
      LODWORD(v10) = 925353388;
      *(&v10 + 4) = UpAxis.n128_u64[0];
      UpAxis = v10;
    }

    else
    {
      *&v13 = -UpAxis.n128_f32[0];
      *(&v13 + 1) = -UpAxis.n128_f32[1];
      *a2 = v13;
      UpAxis.n128_u32[2] = 925353388;
    }
  }

  else
  {
    v11 = vnegq_f32(vzip1q_s32(UpAxis, UpAxis));
    v11.i32[1] = 0;
    *a2 = v11;
    v12 = vdupq_n_s32(0x3727C5ACu);
    UpAxis = vtrn2q_s32(vzip1q_s32(v12, UpAxis), v12);
  }

  *a3 = UpAxis;
  return 1;
}

uint64_t C3DFloorGetTypeID()
{
  if (C3DFloorGetTypeID_onceToken != -1)
  {
    C3DFloorGetTypeID_cold_1();
  }

  return C3DFloorGetTypeID_typeID;
}

double __C3DFloorGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DFloorGetTypeID_typeID = v0;
  TypeID = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"reflectionFalloffEnd", 0xE0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"reflectionFalloffStart", 0xDCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"reflectivity", 0xD8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"width", 0xECu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"length", 0xF0u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281741598 = kC3DC3DFloorContextClassSerializable;
  unk_2817415A8 = *&off_282DC6250;
  unk_281741558 = kC3DC3DFloorContextClassBoundingVolumes;
  unk_281741568 = kC3DC3DFloorContextClassSceneLink;
  qword_281741550 = _C3DFloorCopyInstanceVariables;
  unk_281741578 = unk_282DC6280;
  qword_281741588 = qword_282DC6290;
  unk_281741590 = _C3DFloorSearchByID;
  result = *&kC3DC3DFloorContextClassAnimatable;
  xmmword_281741540 = kC3DC3DFloorContextClassAnimatable;
  return result;
}

uint64_t C3DFloorCreate()
{
  if (C3DFloorGetTypeID_onceToken != -1)
  {
    C3DFloorGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFloorGetTypeID_typeID, 240);
  C3DGeometryInit(Instance);
  *(Instance + 228) = 1056964608;
  *(Instance + 248) = -1;
  Plane = C3DMeshCreatePlane(0, 10, 10, 0, 2.0, -2.0, 0.0);
  CopyWithInterleavedSources = C3DMeshCreateCopyWithInterleavedSources(Plane);
  if (Plane)
  {
    CFRelease(Plane);
  }

  C3DGeometrySetMesh(Instance, CopyWithInterleavedSources);
  CFRelease(CopyWithInterleavedSources);
  v3 = C3DMaterialCreate();
  C3DMaterialSetDoubleSided(v3, 1);
  CommonProfile = C3DMaterialGetCommonProfile(v3);
  C3DEffectCommonProfileSetPerPixelLit(CommonProfile, 1);
  C3DEffectCommonProfileSetEnableLockAmbientWithDiffuse(CommonProfile, 1);
  v5 = C3DTextureSamplerCreateWithOptions(2, 2, 2, 2, 2, 2);
  v6 = 0;
  do
  {
    C3DMaterialSetTextureSampler(v3, v6, v5);
    v7 = v6++;
  }

  while (v7 < 0xF);
  CFRelease(v5);
  C3DGeometryAppendMaterial(Instance, v3);
  CFRelease(v3);
  C3DFloorSetReflectivity(Instance, 0.25);
  return Instance;
}

float C3DFloorGetReflectivity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

void __notifyMaterialDidChangeAndInvalidatePasses(void *a1)
{
  _C3DGeometryShadingDidUpdate(a1);
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  v3 = C3DGetScene(a1);

  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v3, 0, 1u);
}

void C3DFloorSetReflectivity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 216);
  if (a2 != 0.0 && v12 == 0.0)
  {
    *(a1 + 216) = a2;
LABEL_9:
    __notifyMaterialDidChangeAndInvalidatePasses(a1);
    return;
  }

  *(a1 + 216) = a2;
  if (a2 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float C3DFloorGetReflectionFalloffStart(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 220);
}

void C3DFloorSetReflectionFalloffStart(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 220);
  if (a2 != 0.0 && v12 == 0.0)
  {
    *(a1 + 220) = a2;
LABEL_9:
    __notifyMaterialDidChangeAndInvalidatePasses(a1);
    return;
  }

  *(a1 + 220) = a2;
  if (a2 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float C3DFloorGetReflectionFalloffEnd(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void C3DFloorSetReflectionFalloffEnd(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 224);
  if (a2 != 0.0 && v12 == 0.0)
  {
    *(a1 + 224) = a2;
LABEL_9:
    __notifyMaterialDidChangeAndInvalidatePasses(a1);
    return;
  }

  *(a1 + 224) = a2;
  if (a2 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float C3DFloorGetReflectionResolutionScaleFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 228);
}

void C3DFloorSetReflectionResolutionScaleFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 != 0.0 && *(a1 + 228) != a2)
  {
    *(a1 + 228) = a2;
    __notifyMaterialDidChangeAndInvalidatePasses(a1);
  }
}

uint64_t C3DFloorGetReflectionSampleCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 232);
}

void C3DFloorSetReflectionSampleCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFloorGetReflectivity_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 232) != a2)
  {
    *(a1 + 232) = a2;
    __notifyMaterialDidChangeAndInvalidatePasses(a1);
  }
}

CFStringRef _C3DFloorCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFloor>");
}

CFStringRef _C3DFloorCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFloor>");
}

uint64_t _C3DFloorInitWithPropertyList(_DWORD *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = _C3DGeometryInitWithPropertyList(a1, a2, a3, a4);
  if (v16)
  {
    Value = CFDictionaryGetValue(a2, @"reflectivity");
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      a1[54] = valuePtr;
    }

    v18 = CFDictionaryGetValue(a2, @"reflectionFalloffStart");
    if (v18)
    {
      v23 = 0;
      CFNumberGetValue(v18, kCFNumberFloatType, &v23);
      a1[55] = v23;
    }

    v19 = CFDictionaryGetValue(a2, @"reflectionFalloffEnd");
    if (v19)
    {
      v22 = 0;
      CFNumberGetValue(v19, kCFNumberFloatType, &v22);
      a1[56] = v22;
    }
  }

  else
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _C3DFloorInitWithPropertyList_cold_2(v20);
    }
  }

  return v16;
}

__CFDictionary *_C3DFloorCopyPropertyList(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = _C3DGeometryCopyPropertyList(a1, a2, a3);
  if (v14)
  {
    valuePtr = a1[54];
    v15 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"reflectivity", v15);
    CFRelease(v15);
    v20 = a1[55];
    v16 = CFNumberCreate(0, kCFNumberFloatType, &v20);
    CFDictionaryAddValue(v14, @"reflectionFalloffStart", v16);
    CFRelease(v16);
    v19 = a1[56];
    v17 = CFNumberCreate(0, kCFNumberFloatType, &v19);
    CFDictionaryAddValue(v14, @"reflectionFalloffEnd", v17);
    CFRelease(v17);
  }

  return v14;
}

__CFArray *_C3DFloorCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 216;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v5, @"name", @"reflectivity");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 220;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v9, @"name", @"reflectionFalloffStart");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 224;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v13, @"name", @"reflectionFalloffEnd");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 228;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v17, @"name", @"resolutionScaleFactor");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = MEMORY[0x277CBF150];
  v22 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 232;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v22, @"name", @"sampleCount");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, v3, v21);
  v41 = 0;
  valuePtr = 2;
  v40 = a1 + 248;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v26, @"name", @"reflectionBitMask");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 236;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v30, @"name", @"width");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 240;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v34, @"name", @"length");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = _C3DGeometryCopyInstanceVariables(a1);
  v43.length = CFArrayGetCount(v38);
  v43.location = 0;
  CFArrayAppendArray(Mutable, v38, v43);
  CFRelease(v38);
  return Mutable;
}

const void *_C3DFloorGetBoundingSphere(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DGeometryGetMesh(a1);
  if (result)
  {

    return C3DGetBoundingSphere(result, a2, a3);
  }

  return result;
}

uint64_t _C3DFloorSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void _C3DFloorSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 216) == __dst)
  {
    C3DFloorSetReflectivity(a1, *__src);
  }

  else if ((a1 + 224) == __dst)
  {
    C3DFloorSetReflectionFalloffEnd(a1, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

SCNMaterialAttachment *SCNTextureContentWithGLInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = objc_alloc_init(SCNMaterialAttachment);
  [(SCNMaterialAttachment *)v12 setOptions:a4];
  [(SCNMaterialAttachment *)v12 setGlID:a2];
  [(SCNMaterialAttachment *)v12 setTarget:a3];
  [(SCNMaterialAttachment *)v12 setContext:a1];
  [(SCNMaterialAttachment *)v12 setSize:a5, a6];
  return v12;
}

void sub_21C0B1A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21C0B8970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _C3DProgramHashCodeStoreCFFinalize(void *a1)
{
  C3DProgramHashCodeStoreClear(a1);
  C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::~Hash((a1 + 2));
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }
}

void C3DProgramHashCodeStoreSetCapacity(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 56) < a2)
  {
    v4 = *(a1 + 44);
    if (v4 != -15)
    {
      v5 = 0;
      do
      {
        if (*(*(a1 + 32) + 2 * v5))
        {
          v6 = *(a1 + 24);
          C3DArraySetCount(*(v6 + 8 * v5), a2);
          ValuesPtr = C3DArrayGetValuesPtr(*(v6 + 8 * v5));
          bzero((ValuesPtr + 8 * *(a1 + 56)), 8 * (a2 - *(a1 + 56)));
          v4 = *(a1 + 44);
        }

        ++v5;
      }

      while (v5 < (v4 + 15));
    }

    *(a1 + 56) = a2;
  }
}

void C3DProgramHashCodeStoreClear(uint64_t a1)
{
  C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::enumerate(a1 + 16, &__block_literal_global_5_0);
  C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::clear(a1 + 16);
  C3DIndexStoreRemoveAllIndexes(*(a1 + 48));
  *(a1 + 56) = 0;
}

uint64_t C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::enumerate(uint64_t result, uint64_t a2)
{
  v2 = *(result + 28);
  if (v2 != -15)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(*(v4 + 16) + 2 * v6))
      {
        result = (*(a2 + 16))(a2, *(*v4 + 8 * v6), *(v4 + 8) + v5);
        v2 = *(v4 + 28);
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < (v2 + 15));
  }

  return result;
}

void C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::clear(uint64_t a1)
{
  C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::_destroy_values(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void C3DProgramHashCodeStoreInvalidateRendererElementSpan(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v3 = a2;
    v5 = 0;
    v6 = WORD1(a2);
    do
    {
      v7 = C3DRendererElementFlattenedIndexForSpanHandle(v3, (v5 + v6));
      if (*(a1 + 44) != -15)
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (*(*(a1 + 32) + 2 * v8))
          {
            v10 = *(a1 + 24);
            if (C3DArrayGetCount(*(v10 + 8 * v8)) > v9)
            {
              ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v10 + 8 * v8), v9);
              if (*ValuePtrAtIndex)
              {
                v12 = ValuePtrAtIndex;
                C3DIndexStoreRemoveIndexForKey(*(a1 + 48), *ValuePtrAtIndex);
                C3DProgramHashCodeRelease(*v12);
                *v12 = 0;
              }
            }
          }

          ++v8;
        }

        while (v8 < (*(a1 + 44) + 15));
      }

      ++v5;
    }

    while (v5 != v2);
  }
}

uint64_t C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(uint64_t a1, unsigned __int16 *a2, void *a3, uint64_t a4)
{
  if (!a3 || !C3DFXPassIsOverridingPrograms(a3) || (result = C3DFXPassGetOverridingProgramHashCode(0, a3, a2)) == 0)
  {
    result = C3DRendererElementGetMaterialForRenderPass(a2, a3);
    if (result)
    {
      if (C3DMaterialGetTechnique(result))
      {
        return 0;
      }

      v9 = (*(a1 + 44) - 1) & a4;
      v10 = *(*(a1 + 32) + 2 * v9);
      if (v10 < 2)
      {
        return 0;
      }

      v11 = *a2;
      while ((v10 & 2) == 0 || *(*(a1 + 16) + 8 * v9) != a4)
      {
        ++v9;
        v12 = v10 >= 4;
        v10 >>= 1;
        if (!v12)
        {
          return 0;
        }
      }

      v13 = *(a1 + 24);
      if (!v13)
      {
        return 0;
      }

      v14 = (v13 + 8 * v9);
      v15 = C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>::operator __C3DArray *(v14);
      if (C3DArrayGetCount(v15) <= v11)
      {
        return 0;
      }

      else
      {
        return *C3DArrayGetValuePtrAtIndex(*v14, v11);
      }
    }
  }

  return result;
}

uint64_t C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>::operator __C3DArray *(uint64_t a1)
{
  if (!*a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>::operator __C3DArray *(v2);
    }
  }

  return *a1;
}

uint64_t C3DProgramHashCodeStoreGetProgramIndexForRenderElement(uint64_t a1, void *a2)
{
  if (a2)
  {
    return C3DIndexStoreGetIndexForKey(*(a1 + 48), a2);
  }

  else
  {
    return 0;
  }
}

void C3DProgramHashCodeStoreInvalidateRendererElement(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 44) != -15)
  {
    v3 = 0;
    v4 = *a2;
    do
    {
      if (*(*(a1 + 32) + 2 * v3))
      {
        v5 = *(a1 + 24);
        if (C3DArrayGetCount(*(v5 + 8 * v3)) > v4)
        {
          ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v5 + 8 * v3), v4);
          if (*ValuePtrAtIndex)
          {
            v7 = ValuePtrAtIndex;
            C3DIndexStoreRemoveIndexForKey(*(a1 + 48), *ValuePtrAtIndex);
            *v7 = 0;
          }
        }
      }

      ++v3;
    }

    while (v3 < (*(a1 + 44) + 15));
  }
}

void C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass(uint64_t a1, unsigned int *a2, const void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = (*(a1 + 44) - 1) & a4;
  v9 = *(*(a1 + 32) + 2 * v8);
  if (v9 < 2)
  {
    goto LABEL_5;
  }

  while ((v9 & 2) == 0 || *(*(a1 + 16) + 8 * v8) != a4)
  {
    ++v8;
    v10 = v9 >= 4;
    v9 >>= 1;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v17 = *(a1 + 24);
  if (!v17 || (v11 = *(v17 + 8 * v8)) == 0)
  {
LABEL_5:
    v11 = C3DArrayCreate(8, *(a1 + 56));
    cf = v11;
    C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::insert(a1 + 16, a4, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    C3DArraySetCount(v11, *(a1 + 56));
    ValuesPtr = C3DArrayGetValuesPtr(v11);
    bzero(ValuesPtr, 8 * *(a1 + 56));
  }

  v13 = (a1 + 56);
  if (v7 >= *(a1 + 56))
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass_cold_1(v13, v7, v16);
    }
  }

  else
  {
    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(v11, v7);
    if (*ValuePtrAtIndex != a3)
    {
      C3DProgramHashCodeRelease(*ValuePtrAtIndex);
      if (a3)
      {
        v15 = CFRetain(a3);
      }

      else
      {
        v15 = 0;
      }

      *ValuePtrAtIndex = v15;
      if (C3DIndexStoreAddIndexForKey(*(a1 + 48), v15) >= 0xFFFFFFFFLL)
      {
        v18 = scn_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass_cold_2(v18);
        }
      }
    }
  }
}

uint64_t C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::insert(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      v16 = *(v8 + 2 * v14) | 1;
      *(v8 + 2 * v14) = v16;
      if (v14 <= v7 + 14)
      {
        v32 = v14;
        v27 = *a1;
        v28 = *(a1 + 8);
        LOBYTE(v21) = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v17 = v14 - 14;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17 - 1;
          if (v17 <= v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v17;
          }

          v20 = 1;
          while (1)
          {
            v21 = v18 + 1;
            if (v17 <= v21)
            {
              break;
            }

LABEL_26:
            ++v20;
            v18 = v21;
            if (v21 == v19)
            {
              goto LABEL_31;
            }
          }

          v22 = 1 << (v18 - v17 + 2);
          v23 = v20;
          v24 = v17;
          while (1)
          {
            v25 = v24;
            v26 = *(v8 + 2 * v24);
            if ((v22 & v26) != 0)
            {
              break;
            }

            v24 = v25 + 1;
            v22 = v22 >> 1;
            --v23;
            if (v25 + 1 > v21)
            {
              goto LABEL_26;
            }
          }

          if (v21 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v27 = *a1;
          v28 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v21);
          *(v28 + 8 * v14) = *(v28 + 8 * v21);
          *(v28 + 8 * v21) = 0;
          *(v8 + 2 * v25) = (v26 | (1 << (v14 - v25 + 1))) ^ (1 << v23);
          LODWORD(v14) = v21;
          if (v21 > v7 + 14)
          {
            continue;
          }

          break;
        }

        v16 = *(v8 + 2 * v21) | 1;
        v32 = v21;
      }

      *(v28 + 8 * v32) = *a3;
      *a3 = 0;
      *(v27 + 8 * v32) = a2;
      *(v8 + 2 * v32) = v16;
      result = 1;
      *(v8 + 2 * v7) |= 1 << (v21 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v29 = *(a1 + 8);
  v30 = *a3;
  *a3 = 0;
  result = *(v29 + 8 * v10);
  *(v29 + 8 * v10) = v30;
  if (result)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::~Hash(uint64_t a1)
{
  C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::_destroy_values(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  free(*(a1 + 8));
  free(*a1);
  free(*(a1 + 16));
  return a1;
}

void C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::_destroy_values(CFTypeRef *a1, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      if (v6)
      {
        if (*a1)
        {
          CFRelease(*a1);
        }
      }

      ++a1;
      --v5;
    }

    while (v5);
  }
}

void C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::_grow(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        C3D::Hash<C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>,C3D::MallocAllocator>::insert(a1, *v8, v7);
        if (*v7)
        {
          CFRelease(*v7);
        }
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

void __buildSourceChannels(void *a1, size_t a2, void *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = [a1 count];
  if (v8)
  {
    v9 = [a3 count];
    v10 = v9;
    if (v9)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [objc_msgSend(a3 objectAtIndexedSubscript:{v11), "indicesChannelCount"}];
        if (v11)
        {
          v14 = v13;
          if (v13 != v12)
          {
            v15 = scn_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_DEFAULT, "Warning: Found elements with different channel counts in the same geometry", buf, 2u);
            }

            if (v14 < v12)
            {
              v12 = v14;
            }
          }
        }

        else
        {
          v12 = v13;
        }

        ++v11;
      }

      while (v10 != v11);
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v12 = 0;
      if (!a2)
      {
        return;
      }
    }

    v16 = 0;
    v17 = 1;
    while (1)
    {
      if (v17 - 1 >= v8)
      {
        v24 = scn_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v26 = v17 - 1;
          v21 = v24;
          v22 = "Error: Missing channel for source at index %u";
          v23 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        v18 = [objc_msgSend(a1 objectAtIndexedSubscript:{v16), "intValue"}];
        v19 = v18;
        if ((v18 & 0x80000000) == 0 && v18 <= v12)
        {
          goto LABEL_27;
        }

        v20 = scn_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v26 = v19;
          v27 = 1024;
          v28 = v17 - 1;
          v21 = v20;
          v22 = "Error: Invalid channel (%d) for source at index %u";
          v23 = 14;
LABEL_30:
          _os_log_error_impl(&dword_21BEF7000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
        }
      }

      LOBYTE(v19) = 0;
LABEL_27:
      a4[v16] = v19;
      v16 = v17++;
      if (v16 >= a2)
      {
        return;
      }
    }
  }

  bzero(a4, a2);
}

void ____createCopy_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copy];
  [*(a1 + 32) _shadableSetValue:v5 forUndefinedKey:a2];
}

uint64_t C3DFXGLSLProgramObjectGetTypeID()
{
  if (C3DFXGLSLProgramObjectGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramObjectGetTypeID_cold_1();
  }

  return C3DFXGLSLProgramObjectGetTypeID_typeID;
}

void _C3DFXGLSLProgramObjectCFFinalize(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[15];
  if (v5)
  {
    CFRelease(v5);
    a1[15] = 0;
  }

  v6 = a1[13];
  if (v6)
  {
    CFRelease(v6);
    a1[13] = 0;
  }

  v7 = a1[14];
  if (v7)
  {
    CFRelease(v7);
    a1[14] = 0;
  }
}

uint64_t __C3DFXGLSLProgramObjectGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXGLSLProgramObjectGetTypeID_typeID = result;
  return result;
}

uint64_t C3DFXGLSLProgramObjectCreateWithProgramID(uint64_t a1)
{
  if (C3DFXGLSLProgramObjectGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramObjectGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXGLSLProgramObjectGetTypeID_typeID, 112);
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 64) = 1;
    *(Instance + 96) = 0;
    *(Instance + 72) = 0;
    *(Instance + 80) = 0;
    C3DVRAMResourceSetID(Instance, a1);
  }

  return v3;
}

uint64_t C3DFXGLSLProgramObjectDetachOfProgram(uint64_t a1)
{
  v1 = (*(a1 + 64) - 1);
  *(a1 + 64) = v1;
  return v1;
}

uint64_t C3DFXGLSLProgramObjectGetProgramID(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DVRAMResourceGetID(a1);
}

void *C3DFXGLSLProgramObjectSetUniformsLocations(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(a1 + 88) = a3;
  v14 = malloc_type_realloc(*(a1 + 72), 8 * a3, 0x100004000313F17uLL);
  *(a1 + 72) = v14;
  memcpy(v14, a2, 8 * a3);
  result = malloc_type_realloc(*(a1 + 80), 8 * a3, 0x80040B8603338uLL);
  *(a1 + 80) = result;
  if (a3 >= 1)
  {
    v16 = 0;
    do
    {
      *(*(a1 + 80) + 8 * v16++) = -1;
    }

    while (a3 != v16);
  }

  return result;
}

uint64_t C3DFXGLSLProgramObjectGetUniformLocation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 88) > a2 && (v12 = *(a1 + 72)) != 0)
  {
    return *(v12 + 8 * a2);
  }

  else
  {
    return -1;
  }
}

uint64_t C3DFXGLSLProgramObjectGetUniformIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 88);
  if (v12 < 1)
  {
    return -1;
  }

  result = 0;
  while (*(*(a1 + 72) + 8 * result) != a2)
  {
    if (v12 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return CFDictionaryGetValue(*(a1 + 104), key) - 1;
}

void C3DFXGLSLProgramObjectApplyFunctionForAttributes(uint64_t a1, CFDictionaryApplierFunction applier, void *context)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFDictionaryApplyFunction(*(a1 + 112), applier, context);
}

void C3DFXGLSLProgramObjectApplyFunctionForUniforms(uint64_t a1, CFDictionaryApplierFunction applier, void *context)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DRendererElementStateDrawRendererElement_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFDictionaryApplyFunction(*(a1 + 104), applier, context);
}

void C3DFXGLSLProgramObjectSetUniformValueAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DRendererElementStateDrawRendererElement_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2 < 0)
    {
      return;
    }
  }

  else if (a2 < 0)
  {
    return;
  }

  if (*(a1 + 88) > a2)
  {
    *(*(a1 + 80) + 8 * a2) = a3;
  }
}

uint64_t C3DFXGLSLProgramObjectGetUniformValueAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DRendererElementStateDrawRendererElement_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2 < 0)
    {
      return 0;
    }
  }

  else if (a2 < 0)
  {
    return 0;
  }

  if (*(a1 + 88) > a2)
  {
    return *(*(a1 + 80) + 8 * a2);
  }

  return 0;
}

__n128 C3DMatrix4x4ToSCNMatrix4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

__n128 C3DMatrix4x4FromSCNMatrix4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

SCNMatrix4 *__cdecl SCNMatrix4Mult(SCNMatrix4 *__return_ptr retstr, SCNMatrix4 *a, SCNMatrix4 *b)
{
  v4 = *&a->m21;
  v12 = *&a->m11;
  v13 = v4;
  v5 = *&a->m41;
  v14 = *&a->m31;
  v15 = v5;
  v6 = *&b->m21;
  v11[0] = *&b->m11;
  v11[1] = v6;
  v7 = *&b->m41;
  v11[2] = *&b->m31;
  v11[3] = v7;
  C3DMatrix4x4Mult(&v12, v11, &v12);
  v9 = v13;
  *&retstr->m11 = v12;
  *&retstr->m21 = v9;
  v10 = v15;
  *&retstr->m31 = v14;
  *&retstr->m41 = v10;
  return result;
}

SCNMatrix4 *__cdecl SCNMatrix4Invert(SCNMatrix4 *__return_ptr retstr, SCNMatrix4 *m)
{
  v3 = *&m->m21;
  v8.columns[0] = *&m->m11;
  v8.columns[1] = v3;
  v4 = *&m->m41;
  v8.columns[2] = *&m->m31;
  v8.columns[3] = v4;
  result = C3DMatrix4x4Invert(&v8, &v8);
  v6 = v8.columns[1];
  *&retstr->m11 = v8.columns[0];
  *&retstr->m21 = v6;
  v7 = v8.columns[3];
  *&retstr->m31 = v8.columns[2];
  *&retstr->m41 = v7;
  return result;
}

SCNMatrix4 *__cdecl SCNMatrix4Scale(SCNMatrix4 *__return_ptr retstr, SCNMatrix4 *m, float sx, float sy, float sz)
{
  v7 = *&m->m21;
  v17 = *&m->m11;
  v18 = v7;
  v8 = *&m->m41;
  v19 = *&m->m31;
  v20 = v8;
  v16 = *&sx;
  C3DMatrix4x4Scale(&v17, &v16);
  v12 = v18;
  *&m->m11 = v17;
  *&m->m21 = v12;
  v13 = v20;
  *&m->m31 = v19;
  *&m->m41 = v13;
  v14 = *&m->m21;
  *&retstr->m11 = *&m->m11;
  *&retstr->m21 = v14;
  v15 = *&m->m41;
  *&retstr->m31 = *&m->m31;
  *&retstr->m41 = v15;
  return result;
}

SCNMatrix4 *__cdecl SCNMatrix4MakeRotation(SCNMatrix4 *__return_ptr retstr, float angle, float x, float y, float z)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = *&x;
  C3DMatrix4x4MakeAxisAngleRotation(&v12, &v11, -angle);
  v9 = v13;
  *&retstr->m11 = v12;
  *&retstr->m21 = v9;
  v10 = v15;
  *&retstr->m31 = v14;
  *&retstr->m41 = v10;
  return result;
}

BOOL SCNMatrix4IsIdentity(SCNMatrix4 *m)
{
  v1 = *&m->m21;
  v4[0] = *&m->m11;
  v4[1] = v1;
  v2 = *&m->m41;
  v4[2] = *&m->m31;
  v4[3] = v2;
  return memcmp(v4, &SCNMatrix4Identity, 0x40uLL) == 0;
}

SCNMatrix4 *__cdecl SCNMatrix4Rotate(SCNMatrix4 *__return_ptr retstr, SCNMatrix4 *m, float angle, float x, float y, float z)
{
  *&retstr->m31 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m21 = 0u;
  memset(v22, 0, sizeof(v22));
  v17 = *&x;
  C3DMatrix4x4MakeAxisAngleRotation(v22, &v17, -angle);
  v10 = *&m->m21;
  v18 = *&m->m11;
  v19 = v10;
  v11 = *&m->m41;
  v20 = *&m->m31;
  v21 = v11;
  if (C3DWasLinkedBeforeMajorOSYear2019())
  {
    v12 = &v18;
    v13 = v22;
  }

  else
  {
    v12 = v22;
    v13 = &v18;
  }

  C3DMatrix4x4Mult(v12, v13, &v18);
  v15 = v19;
  *&retstr->m11 = v18;
  *&retstr->m21 = v15;
  v16 = v21;
  *&retstr->m31 = v20;
  *&retstr->m41 = v16;
  return result;
}

GLKMatrix4 *__cdecl SCNMatrix4ToGLKMatrix4(GLKMatrix4 *__return_ptr retstr, GLKMatrix4 *mat)
{
  v2 = *&mat->m[4];
  *&retstr->m00 = *&mat->m00;
  *&retstr->m[4] = v2;
  v3 = *&mat->m[12];
  *&retstr->m[8] = *&mat->m[8];
  *&retstr->m[12] = v3;
  return mat;
}

SCNMatrix4 *__cdecl SCNMatrix4FromGLKMatrix4(SCNMatrix4 *__return_ptr retstr, SCNMatrix4 *mat)
{
  v2 = *&mat->m21;
  *&retstr->m11 = *&mat->m11;
  *&retstr->m21 = v2;
  v3 = *&mat->m41;
  *&retstr->m31 = *&mat->m31;
  *&retstr->m41 = v3;
  return mat;
}

uint64_t CreateRadialSpanSide(uint64_t a1, double a2, __n128 a3)
{
  v4 = (1.0 - a2) * 6.28318531;
  a3.n128_u32[0] = 0;
  a3.n128_f32[1] = v4;
  memset(v7, 0, sizeof(v7));
  a3.n128_u32[2] = 1078530011;
  v6 = a3;
  C3DMatrix4x4MakeEulerRotation(v7, &v6);
  return C3DMeshCopyWithTransform(a1, v7);
}

void generateRingProfile(float *a1, int a2, float a3, float a4, float a5, double a6, double a7, float a8, float a9)
{
  v11 = a5 < 0.0;
  v12 = -1.0;
  if (!v11)
  {
    v12 = 1.0;
  }

  if (a2 == 3)
  {
    v19 = (1.0 - a8 + ((a4 * a8) / a3)) * 0.5;
    v20 = v19;
    v21 = __sincos_stret(a9 * 6.28318531);
    v22 = v20 * v21.__cosval + 0.5;
    *a1 = v22;
    v17 = v20 * v21.__sinval + 0.5;
    v18 = 1;
  }

  else
  {
    if (a2 == 1)
    {
      *a1 = 0.0;
      a1[1] = v12;
      v17 = 0.0;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v13 = (a4 * a8) + (1.0 - a8) * a3;
      v14 = (v12 * v13);
      v15 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v16 = v15.__sinval * v14;
      *a1 = v16;
      a1[1] = a5;
      v17 = v15.__cosval * v13;
    }

    v18 = 2;
  }

  a1[v18] = v17;
}

void generateSphereProfile(float *a1, int a2, float a3, float a4, float a5, double a6, double a7, float a8, float a9)
{
  v11 = 1.0 - a8;
  if (a2 == 3)
  {
    *a1 = a9;
    v22 = 1;
  }

  else
  {
    v12 = (a5 + -0.5) * a8 + (a4 + -0.5) * v11;
    if (a2 == 1)
    {
      v18 = __sincos_stret(v12 * 3.14159265);
      v19 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v20 = v19.__sinval * v18.__cosval;
      sinval = v18.__sinval;
      *a1 = v20;
      a1[1] = sinval;
      v11 = v19.__cosval * v18.__cosval;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v13 = a3;
      v14 = __sincos_stret(v12 * 3.14159265);
      v15 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v16 = v15.__sinval * (v14.__cosval * v13);
      v17 = v14.__sinval * v13;
      *a1 = v16;
      a1[1] = v17;
      v11 = v15.__cosval * (v14.__cosval * v13);
    }

    v22 = 2;
  }

  v23 = v11;
  a1[v22] = v23;
}

void generateCylinderProfile(float *a1, int a2, float a3, float a4, double a5, double a6, double a7, float a8, float a9)
{
  v12 = a4 <= 0.0;
  v13 = 3.14159265;
  if (v12)
  {
    v13 = 0.0;
  }

  if (a2 == 3)
  {
    if (a4 <= 0.0)
    {
      *a1 = 1.0 - a9;
      a1[1] = a8;
    }

    else
    {
      *a1 = a9;
      a1[1] = 1.0 - a8;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v19 = __sincos_stret(v13 + a9 * 6.28318531);
      sinval = v19.__sinval;
      *a1 = sinval;
      a1[1] = 0.0;
      cosval = v19.__cosval;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v14 = a3;
      v15 = __sincos_stret(v13 + a9 * 6.28318531);
      v16 = v15.__sinval * v14;
      v17 = (a8 + -0.5) * a4;
      *a1 = v16;
      a1[1] = v17;
      cosval = v15.__cosval * v14;
    }

    a1[2] = cosval;
  }
}

void generateConeProfile(uint64_t a1, int a2, float a3, float a4, float a5, double a6, double a7, float a8, float a9)
{
  if (a2 == 3)
  {
    *a1 = a9;
    cosval = 1.0 - a8;
    v19 = 4;
  }

  else
  {
    if (a2 == 1)
    {
      v17 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      sinval = v17.__sinval;
      *a1 = sinval;
      *(a1 + 4) = 0;
      cosval = v17.__cosval;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v11 = a8;
      v12 = (a3 * a8) + (1.0 - a8) * a4;
      v13 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v14 = v12 * v13.__sinval;
      v15 = (v11 + -0.5) * a5;
      *a1 = v14;
      *(a1 + 4) = v15;
      cosval = v12 * v13.__cosval;
    }

    v19 = 8;
  }

  *(a1 + v19) = cosval;
}

void generateTorusProfile(float *a1, int a2, float a3, float a4, double a5, double a6, double a7, float a8, float a9)
{
  if (a2 == 3)
  {
    *a1 = a9;
    v23 = 1.0 - a8;
    v24 = 1;
  }

  else
  {
    if (a2 == 1)
    {
      v19 = __sincos_stret((a8 + -0.5) * 6.28318531);
      v20 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v21 = v19.__cosval * v20.__sinval;
      sinval = v19.__sinval;
      *a1 = v21;
      a1[1] = sinval;
      v18 = v19.__cosval * v20.__cosval;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v11 = a3;
      v12 = a4;
      v13 = __sincos_stret((a8 + -0.5) * 6.28318531);
      v14 = v11 + v12 * v13.__cosval;
      v15 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v16 = v15.__sinval * v14;
      v17 = v13.__sinval * v12;
      *a1 = v16;
      a1[1] = v17;
      v18 = v15.__cosval * v14;
    }

    v23 = v18;
    v24 = 2;
  }

  a1[v24] = v23;
}

void generateCapsuleProfile(float *a1, int a2, int a3, float a4, float a5, double a6, double a7, double a8, float a9, float a10)
{
  if (a2 == 3)
  {
    *a1 = a10;
    v23 = (a4 / a5);
    v24 = 1.0 - v23;
    v25 = 1.0 - a9;
    v26 = ((a4 / a5) * a9) + (1.0 - v23) * v25;
    v27 = 1;
    v28 = v25 * v23;
    v29 = v25 + a9 * v24;
    if (!a3)
    {
      v28 = v29;
    }

    if (a3 == 1)
    {
      v28 = v26;
    }

    else
    {
      v27 = 1;
    }

    goto LABEL_24;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    if (a3 == 2)
    {
      v38 = a4;
      v39 = __sincos_stret(a9 * 1.57079633);
      v40 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
      v41 = v39.__cosval * v38 * v40.__sinval;
      v42 = a5 * 0.5 + v38 * v39.__sinval - v38;
      *a1 = v41;
      a1[1] = v42;
      v28 = v39.__cosval * v38 * v40.__cosval;
    }

    else
    {
      if (a3 == 1)
      {
        v17 = a4;
        v36 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
        cosval = v36.__cosval;
        v20 = v36.__sinval * v17;
        v21 = (a9 + -0.5) * (a5 + (a4 * -2.0));
      }

      else
      {
        if (a3)
        {
          return;
        }

        v15 = a4;
        v16 = __sincos_stret((a9 + -1.0) * 1.57079633);
        v17 = v16.__cosval * v15;
        v19 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
        cosval = v19.__cosval;
        v20 = v19.__sinval * (v16.__cosval * v15);
        v21 = a5 * -0.5 + v15 * v16.__sinval + v15;
      }

      v37 = v21;
      *a1 = v20;
      a1[1] = v37;
      v28 = cosval * v17;
    }

    goto LABEL_23;
  }

  if (a3 == 2)
  {
    v22 = a9;
LABEL_19:
    v32 = __sincos_stret(v22 * 1.57079633);
    v33 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
    v34 = v32.__cosval * v33.__sinval;
    sinval = v32.__sinval;
    *a1 = v34;
    a1[1] = sinval;
    v28 = v32.__cosval * v33.__cosval;
    goto LABEL_23;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    v22 = a9 + -1.0;
    goto LABEL_19;
  }

  v30 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
  v28 = v30.__cosval;
  v31 = v30.__sinval;
  *a1 = v31;
  a1[1] = 0.0;
LABEL_23:
  v27 = 2;
LABEL_24:
  v43 = v28;
  a1[v27] = v43;
}

void generateChamferCornerProfile(uint64_t a1, int a2, float a3, float32x4_t a4, float a5, float a6, float a7, float a8, float a9)
{
  _S22 = a3;
  v12 = vcvt_f32_s32((*&vceqz_s32(vand_s8(vdup_n_s32(a7), 0x200000001)) | 0x100000001));
  if ((a7 & 4) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  v14 = v13;
  if (a9 != 0.0)
  {
    if (a8 != 0.0)
    {
      v29 = _S22 / 1.41421356;
      v30 = _S22 / 1.73205081;
      v31 = v29 * v12.f32[0];
      v32 = v29 * v14;
      v33 = vmul_n_f32(v12, v30);
      v34 = vmuls_lane_f32(v29, v12, 1);
      v35 = 1.0 - a8;
      v36 = 1.0 - a9;
      v37.i32[0] = 0;
      v37.f32[1] = v34;
      v38 = vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(v33, a8)), COERCE_UNSIGNED_INT64(v31), v35)), a9)), vcvtq_f64_f32(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(v37, a8)), 0, v35))), v36);
      *v38.f32 = vcvt_f32_f64(v38);
      v39 = (v32 * a8) + v35 * (v14 * _S22);
      v40 = ((v30 * v14) * a8) + v35 * v32;
      v41 = (v40 * a9) + v36 * v39;
      v38.f32[2] = v41;
      v42 = vmulq_f32(v38, v38);
      *&v43 = v42.f32[2] + vaddv_f32(*v42.f32);
      *v42.f32 = vrsqrte_f32(v43);
      *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32)));
      _Q0 = vmulq_n_f32(v38, vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32))).f32[0]);
      if (!a2)
      {
        a4.f32[1] = a5;
        *a4.f32 = vmla_n_f32(*a4.f32, *_Q0.f32, _S22);
        __asm { FMLA            S21, S22, V0.S[2] }

        a4.i32[2] = _S21;
        _Q0 = a4;
      }

      *a1 = _Q0.i64[0];
      v50 = _Q0.f32[2];
      goto LABEL_20;
    }

    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      v20 = a4.f32[0];
      v21 = (_S22 * v12.f32[0]);
      v55 = a6;
      v56 = _S22;
      v22 = __sincos_stret(a9 * 0.785398163);
      cosval = v22.__cosval;
      v23 = v20 + v21 * v22.__sinval;
      *a1 = v23;
      *(a1 + 4) = a5;
      goto LABEL_12;
    }

    v51 = v12.f32[0];
    v52 = __sincos_stret(a9 * 0.785398163);
    v26 = v52.__cosval;
    v53 = v52.__sinval * v51;
    *a1 = v53;
    *(a1 + 4) = 0;
LABEL_18:
    v24 = v26 * v14;
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    *a1 = 0;
    v25 = v12.f32[1];
    v27 = __sincos_stret(a8 * 0.785398163);
    v26 = v27.__cosval;
    v28 = v27.__sinval * v25;
    *(a1 + 4) = v28;
    goto LABEL_18;
  }

  if (a2)
  {
    return;
  }

  *a1 = a4.i32[0];
  v15 = a5;
  v16 = vmuls_lane_f32(_S22, v12, 1);
  v55 = a6;
  v56 = _S22;
  v18 = __sincos_stret(a8 * 0.785398163);
  cosval = v18.__cosval;
  v19 = v15 + v16 * v18.__sinval;
  *(a1 + 4) = v19;
LABEL_12:
  v24 = v55 + (v14 * v56) * cosval;
LABEL_19:
  v50 = v24;
LABEL_20:
  *(a1 + 8) = v50;
}

void generateChamferQuadProfile(uint64_t a1, int a2, int a3, int a4, float32x4_t a5, float32_t a6, float32_t a7, __n128 a8, float a9, float a10, float a11)
{
  if (a9 >= 4.0)
  {
    if (a9 == 4.0)
    {
      v62 = xmmword_21C2A25A0;
      v20 = xmmword_21C2A25B0;
    }

    else
    {
      v62 = xmmword_21C2A25B0;
      v20 = xmmword_21C2A25A0;
    }
  }

  else
  {
    v17 = a9;
    v18 = v17 * 1.57079633;
    v20.n128_u32[0] = 0;
    v20.n128_u64[1] = 0;
    LODWORD(v19) = 0;
    *(&v19 + 1) = v18;
    v62 = v19;
    *&v17 = v17 * -1.57079633;
    v20.n128_u32[1] = LODWORD(v17);
  }

  a5.f32[1] = a6;
  a5.f32[2] = a7;
  *&v21.__sinval = C3DVector3EulerRotate(a5, v20);
  v23 = fabsf(*&v21.__sinval);
  v24 = vextq_s8(v21, v21, 8uLL);
  *v24.f32 = vabs_f32(vext_s8(*&v21.__sinval, *v24.f32, 4uLL));
  if (a2 == 3)
  {
    v28 = a8.n128_f32[0] / v23;
    if (a4)
    {
      if (a4 != 2)
      {
        if (a4 != 1)
        {
          goto LABEL_44;
        }

        v29 = v28 * a11;
LABEL_43:
        *a1 = v29;
LABEL_44:
        v38 = 1.0 - a10;
        v39 = a8.n128_f32[0] / v24.f32[0];
        if (a3)
        {
          if (a3 != 1)
          {
            v41 = v38 * v39;
            goto LABEL_50;
          }

          v40 = v38 + (1.0 - v39) * (1.0 - v38);
        }

        else
        {
          v40 = (1.0 - v39) * v38 + (1.0 - v38) * v39;
        }

        v41 = v40;
LABEL_50:
        *(a1 + 4) = v41;
        return;
      }

      v32 = a11;
      v33 = 1.0 - a11;
      v34 = 1.0 - v28;
    }

    else
    {
      v33 = 1.0 - a11;
      v34 = v28;
      v32 = (1.0 - v34) * a11;
    }

    v29 = v32 + v33 * v34;
    goto LABEL_43;
  }

  v25 = v23 * 0.5;
  *&v22 = vmul_f32(*v24.f32, 0x3F0000003F000000);
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    HIDWORD(v21.__cosval) = a8.n128_u32[3];
    v26 = v24.f32[0] + (a8.n128_f32[0] * -2.0);
    if (a4 != 2)
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          HIDWORD(v21.__cosval) = a8.n128_u32[3];
          *&v21.__sinval = (a11 + -0.5) * (v23 + (a8.n128_f32[0] * -2.0));
          *a1 = LODWORD(v21.__sinval);
          if (a3 != 2)
          {
            if (a3 != 1)
            {
              if (!a3)
              {
                v27 = (a10 + -0.5) * v26;
                *(a1 + 4) = v27;
                *(a1 + 8) = DWORD1(v22);
              }

              goto LABEL_74;
            }

            v55 = (a8.n128_f32[0] - *&v22);
            v61 = *(&v22 + 1);
            v56 = __sincos_stret(a10 * 0.785398163 + -0.785398163);
            *&v21.__sinval = v55 + a8.n128_f32[0] * v56.__sinval;
            cosval = (v61 - a8.n128_f32[0]) + a8.n128_f32[0] * v56.__cosval;
            goto LABEL_69;
          }

          v59 = vsub_f32(*&v22, vdup_lane_s32(a8.n128_u64[0], 0));
          v21 = __sincos_stret(a10 * 0.785398163);
          *&v21.__sinval = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(v59), v21, a8.n128_f32[0]));
LABEL_77:
          *(a1 + 4) = v21.__sinval;
          goto LABEL_74;
        }

        goto LABEL_74;
      }

      if (a3 != 2)
      {
        if (a3 != 1)
        {
          if (a3)
          {
            goto LABEL_74;
          }

          v35 = (a8.n128_f32[0] - v25);
          v36 = a8.n128_f32[0];
          v37 = a11 * 0.785398163 + -0.785398163;
          goto LABEL_55;
        }

        v44 = a8.n128_f32[0];
        v24.f32[0] = a8.n128_f32[0] - v25;
        v45 = a8.n128_f32[0] - *&v22;
        v46 = *(&v22 + 1) - a8.n128_f32[0];
        v47 = 1.0 - a10;
        v48 = 1.0 - a11;
        v49 = 4.0;
        v50 = a1;
        v51 = 0;
LABEL_73:
        generateChamferCornerProfile(v50, v51, v44, v24, v45, v46, v49, v47, v48);
        goto LABEL_74;
      }

      v44 = a8.n128_f32[0];
      v24.f32[0] = a8.n128_f32[0] - v25;
      v45 = *&v22 - a8.n128_f32[0];
      v46 = *(&v22 + 1) - a8.n128_f32[0];
      v48 = 1.0 - a11;
      v49 = 6.0;
      v50 = a1;
      v51 = 0;
LABEL_66:
      v47 = a10;
      goto LABEL_73;
    }

    if (a3 != 2)
    {
      if (a3 != 1)
      {
        if (a3)
        {
          goto LABEL_74;
        }

        v35 = (v25 - a8.n128_f32[0]);
        v36 = a8.n128_f32[0];
        v37 = a11 * 0.785398163;
LABEL_55:
        v60 = v22;
        v42 = __sincos_stret(v37);
        *&v21.__sinval = v35 + v36 * v42.__sinval;
        v43 = (a10 + -0.5) * v26;
        *a1 = LODWORD(v21.__sinval);
        *(a1 + 4) = v43;
        HIDWORD(v21.__cosval) = HIDWORD(v60);
        *&v21.__sinval = (*(&v60 + 1) - a8.n128_f32[0]) + v36 * v42.__cosval;
        goto LABEL_56;
      }

      v44 = a8.n128_f32[0];
      v24.f32[0] = v25 - a8.n128_f32[0];
      v45 = a8.n128_f32[0] - *&v22;
      v46 = *(&v22 + 1) - a8.n128_f32[0];
      v47 = 1.0 - a10;
      v49 = 5.0;
      v50 = a1;
      v51 = 0;
      goto LABEL_72;
    }

    v44 = a8.n128_f32[0];
    v24.f32[0] = v25 - a8.n128_f32[0];
    v45 = *&v22 - a8.n128_f32[0];
    v46 = *(&v22 + 1) - a8.n128_f32[0];
    v49 = 7.0;
    v50 = a1;
    v51 = 0;
    goto LABEL_71;
  }

  if (a4 == 2)
  {
    if (a3 == 2)
    {
      v44 = a8.n128_f32[0];
      v24.f32[0] = v25 - a8.n128_f32[0];
      v45 = *&v22 - a8.n128_f32[0];
      v46 = *(&v22 + 1) - a8.n128_f32[0];
      v49 = 7.0;
      v50 = a1;
      v51 = 1;
LABEL_71:
      v47 = a10;
      goto LABEL_72;
    }

    if (a3 == 1)
    {
      v44 = a8.n128_f32[0];
      v24.f32[0] = v25 - a8.n128_f32[0];
      v45 = a8.n128_f32[0] - *&v22;
      v46 = *(&v22 + 1) - a8.n128_f32[0];
      v47 = 1.0 - a10;
      v49 = 5.0;
      v50 = a1;
      v51 = 1;
LABEL_72:
      v48 = a11;
      goto LABEL_73;
    }

    if (a3)
    {
      goto LABEL_74;
    }

    v30 = a11 * 0.785398163;
LABEL_35:
    v31 = __sincos_stret(v30);
    *&v21.__sinval = v31.__sinval;
    *a1 = LODWORD(v21.__sinval);
    *(a1 + 4) = 0;
    *&v21.__sinval = v31.__cosval;
LABEL_56:
    *(a1 + 8) = LODWORD(v21.__sinval);
    goto LABEL_74;
  }

  if (a4 == 1)
  {
    if (a3 == 2)
    {
      v44 = a8.n128_f32[0];
      v24.f32[0] = a8.n128_f32[0] - v25;
      v45 = *&v22 - a8.n128_f32[0];
      v46 = *(&v22 + 1) - a8.n128_f32[0];
      v48 = 1.0 - a11;
      v49 = 6.0;
      v50 = a1;
      v51 = 1;
      goto LABEL_66;
    }

    if (a3 == 1)
    {
      v44 = a8.n128_f32[0];
      v24.f32[0] = a8.n128_f32[0] - v25;
      v45 = a8.n128_f32[0] - *&v22;
      v46 = *(&v22 + 1) - a8.n128_f32[0];
      v47 = 1.0 - a10;
      v48 = 1.0 - a11;
      v49 = 4.0;
      v50 = a1;
      v51 = 1;
      goto LABEL_73;
    }

    if (a3)
    {
      goto LABEL_74;
    }

    v30 = a11 * 0.785398163 + -0.785398163;
    goto LABEL_35;
  }

  if (a4)
  {
    goto LABEL_74;
  }

  *a1 = 0;
  switch(a3)
  {
    case 2:
      v52 = a10 * 0.785398163;
      goto LABEL_64;
    case 1:
      v52 = a10 * 0.785398163 + -0.785398163;
LABEL_64:
      v54 = __sincos_stret(v52);
      cosval = v54.__cosval;
      *&v21.__sinval = v54.__sinval;
LABEL_69:
      v57 = cosval;
      *(a1 + 4) = LODWORD(v21.__sinval);
      *(a1 + 8) = v57;
      break;
    case 0:
      v21.__sinval = 0.0078125;
      goto LABEL_77;
  }

LABEL_74:
  v21.__sinval = *a1;
  LODWORD(v21.__cosval) = *(a1 + 8);
  *a1 = C3DVector3EulerRotate(v21, v62);
  *(a1 + 8) = v58;
}

void generatePyramidProfile(uint64_t a1, int a2, float32x4_t a3, float32_t a4, float32_t a5, float a6, double a7, float a8, float a9)
{
  v13 = a6;
  v14 = a6 * -1.57079633;
  LODWORD(v15) = 0;
  *(&v15 + 1) = v14;
  a3.f32[1] = a4;
  a3.f32[2] = a5;
  *v16.f32 = C3DVector3EulerRotate(a3, v15);
  v17 = fabsf(v16.f32[1]);
  v18 = fabsf(v16.f32[2]);
  if (a2)
  {
    if (a2 == 1)
    {
      *a1 = 0;
      v16.f32[0] = v18 * 0.5;
      v19 = sqrtf((v16.f32[1] * v16.f32[1]) + (v16.f32[0] * v16.f32[0]));
      v20 = v16.f32[0] / v19;
      v21 = v17 / v19;
      *(a1 + 4) = v16.f32[0] / v19;
      *(a1 + 8) = v21;
      v16.i32[0] = 0;
    }

    else
    {
      if (a2 == 3)
      {
        *a1 = a9;
        *(a1 + 4) = 1.0 - a8;
        return;
      }

      v16.i32[0] = *a1;
      v20 = *(a1 + 4);
      v21 = *(a1 + 8);
    }
  }

  else
  {
    v22 = 1.0 - a8;
    v16.f32[0] = (a9 + -0.5) * (v22 * fabsf(v16.f32[0]));
    v20 = v17 * a8;
    *a1 = v16.i32[0];
    *(a1 + 4) = v17 * a8;
    v21 = v22 * (v18 * 0.5);
    *(a1 + 8) = v21;
  }

  v23 = v13 * 1.57079633;
  LODWORD(v24) = 0;
  *(&v24 + 1) = v23;
  v16.f32[1] = v20;
  v16.f32[2] = v21;
  *a1 = C3DVector3EulerRotate(v16, v24);
  *(a1 + 8) = v25;
}

uint64_t C3DMeshCreateFromProfile(void (*a1)(UInt8 *, uint64_t, uint64_t, uint64_t, float, float, float, float, float, float, float), unsigned int a2, int *a3, int a4, int a5, int a6, int *a7, int a8, float a9, float a10, float a11, float a12, float a13, float a14)
{
  v132 = *MEMORY[0x277D85DE8];
  if (!C3DMeshElementTypeDefinesTopology(a2))
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  values[0] = __CreateSourceFromProfileGenerator(a1, 0, a3, a4, a7, a8, a9, a10, a11, a12, a13, a14);
  values[1] = __CreateSourceFromProfileGenerator(a1, 1, a3, a4, a7, a8, a9, a10, a11, a12, a13, a14);
  values[2] = __CreateSourceFromProfileGenerator(a1, 3, a3, a4, a7, a8, a9, a10, a11, a12, a13, a14);
  if (!C3DMeshElementTypeDefinesTopology(a2))
  {
    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v40 = 0;
  v41 = (a4 - 1);
  if (a4 < 1)
  {
    v44 = a5;
  }

  else
  {
    v42 = a3;
    v43 = a4;
    v44 = a5;
    do
    {
      v45 = *v42++;
      v40 += v45 + 1;
      --v43;
    }

    while (v43);
  }

  v46 = Mutable;
  if (a8 < 1)
  {
    v52 = 0;
    goto LABEL_67;
  }

  v47 = 0;
  v48 = a8;
  v49 = a7;
  v104 = a8;
  do
  {
    v50 = *v49++;
    v47 += v50 + 1;
    --v48;
  }

  while (v48);
  v122 = (a4 - 1);
  v111 = v40;
  if (v47 * v40 < 0x10000)
  {
    v51 = 0;
    v52 = 0;
    v107 = 0;
    while (1)
    {
      v53 = a7[v51];
      if (v53 < 1)
      {
        goto LABEL_64;
      }

      v54 = 0;
      v105 = v51;
      do
      {
        v55 = v54 + 1;
        if (a4 < 1)
        {
          goto LABEL_63;
        }

        v56 = 0;
        v57 = 0;
        v58 = v51 == 0;
        v109 = v54 + 1;
        v114 = (v107 + v55) * v40;
        v116 = (v107 + v54) * v40;
        if (v54)
        {
          v58 = 0;
        }

        v118 = v58;
        do
        {
          v59 = a3[v56];
          v120 = v57;
          if (v59 >= 1)
          {
            v60 = 0;
            v61 = 0;
            v62 = v57 + v116;
            v63 = v57 + v114;
            do
            {
              *cf = v61 + v62;
              v64 = v61 + 1;
              *&cf[2] = v61 + 1 + v63;
              *&cf[4] = v61 + 1 + v62;
              *&cf[6] = v61 + v62;
              *&cf[8] = v61 + v63;
              *&cf[10] = *&cf[2];
              v65 = (v61 + 1);
              if (v56 || v61 || !a5)
              {
                if (v56 == v41 && a6 && v59 == v65)
                {
                  switch(a2)
                  {
                    case 3u:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + 1 + v63;
                      goto LABEL_50;
                    case 2u:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + v63;
                      *&bytes[4] = v61 + v63;
                      *&bytes[6] = v61 + 1 + v63;
LABEL_48:
                      v69 = bytes;
                      v70 = v46;
                      v71 = 8;
LABEL_51:
                      CFDataAppendBytes(v70, v69, v71);
                      Mutable = v46;
                      v52 += 2;
                      break;
                    case 0u:
                      v66 = &cf[6];
                      goto LABEL_39;
                  }
                }

                else
                {
                  switch(a2)
                  {
                    case 3u:
LABEL_45:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + 1 + v62;
LABEL_50:
                      v69 = bytes;
                      v70 = v46;
                      v71 = 4;
                      goto LABEL_51;
                    case 2u:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + v63;
                      *&bytes[4] = v61 + v63;
                      *&bytes[6] = v61 + 1 + v63;
                      v72 = Mutable;
                      CFDataAppendBytes(Mutable, bytes, 8);
                      if (v118)
                      {
                        *bytes = *cf;
                        *&bytes[2] = *&cf[4];
                        CFDataAppendBytes(v72, bytes, 4);
                        v52 += 3;
                      }

                      else
                      {
                        v52 += 2;
                      }

                      v41 = (a4 - 1);
                      if (v56 != v122 || a3[v56] - 1 != v60)
                      {
                        Mutable = v46;
                        break;
                      }

                      *bytes = *&cf[2];
                      v66 = bytes;
                      v67 = v46;
                      v68 = 4;
                      goto LABEL_40;
                    case 0u:
                      v69 = cf;
                      v70 = v46;
                      v71 = 12;
                      goto LABEL_51;
                  }
                }
              }

              else
              {
                switch(a2)
                {
                  case 3u:
                    goto LABEL_45;
                  case 2u:
                    *bytes = v61 + v62;
                    *&bytes[2] = v61 + 1 + v63;
                    *&bytes[4] = v61 + v62;
                    *&bytes[6] = v61 + 1 + v62;
                    goto LABEL_48;
                  case 0u:
                    v66 = cf;
LABEL_39:
                    v67 = v46;
                    v68 = 6;
LABEL_40:
                    CFDataAppendBytes(v67, v66, v68);
                    Mutable = v46;
                    ++v52;
                    break;
                }
              }

              v59 = a3[v56];
              v60 = v65;
              v61 = v64;
            }

            while (v59 > v64);
          }

          v57 = v120 + v59 + 1;
          ++v56;
        }

        while (v56 != a4);
        LOWORD(v40) = v111;
        v51 = v105;
        v53 = a7[v105];
        v55 = v109;
LABEL_63:
        v54 = v55;
      }

      while (v53 > v55);
LABEL_64:
      v107 += v53 + 1;
      if (++v51 == v104)
      {
LABEL_67:
        v73 = 2;
        goto LABEL_122;
      }
    }
  }

  v74 = 0;
  v52 = 0;
  v106 = 0;
  do
  {
    v75 = a7[v74];
    if (v75 < 1)
    {
      goto LABEL_120;
    }

    v76 = 0;
    v115 = v40 * v106;
    v117 = v40 + v40 * v106;
    v108 = v74;
    do
    {
      if (a4 < 1)
      {
        goto LABEL_119;
      }

      v77 = 0;
      v78 = 0;
      v110 = v76;
      v119 = v76 | v74;
      do
      {
        v79 = a3[v77];
        v121 = v78;
        if (v79 >= 1)
        {
          v80 = 0;
          if (a6)
          {
            v81 = v77 == v41;
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;
          v83 = v117 + v78;
          v84 = v115 + v78;
          do
          {
            *cf = v84 + v80;
            *&cf[4] = v83 + v80 + 1;
            v85 = v80 + 1;
            *&cf[8] = v84 + v80 + 1;
            v131[0] = v84 + v80;
            v131[1] = v83 + v80;
            v131[2] = *&cf[4];
            if (!v44 || v80 | v77)
            {
              if (v85 == v79)
              {
                v87 = v82;
              }

              else
              {
                v87 = 0;
              }

              if (v87 == 1)
              {
                switch(a2)
                {
                  case 3u:
                    *bytes = v84 + v80;
                    *&bytes[4] = v83 + v80 + 1;
                    goto LABEL_108;
                  case 2u:
                    *bytes = v84 + v80;
                    *&bytes[4] = v83 + v80;
                    v128 = v83 + v80;
                    v129 = v83 + v80 + 1;
LABEL_104:
                    v90 = bytes;
                    v91 = v46;
                    v92 = 16;
LABEL_109:
                    CFDataAppendBytes(v91, v90, v92);
                    Mutable = v46;
                    v52 += 2;
                    break;
                  case 0u:
                    v86 = v131;
                    goto LABEL_95;
                }
              }

              else
              {
                switch(a2)
                {
                  case 3u:
LABEL_101:
                    *bytes = v84 + v80;
                    *&bytes[4] = v84 + v80 + 1;
LABEL_108:
                    v90 = bytes;
                    v91 = v46;
                    v92 = 8;
                    goto LABEL_109;
                  case 2u:
                    *bytes = v84 + v80;
                    *&bytes[4] = v83 + v80;
                    v128 = v83 + v80;
                    v129 = v83 + v80 + 1;
                    v93 = Mutable;
                    CFDataAppendBytes(Mutable, bytes, 16);
                    if (v119)
                    {
                      v52 += 2;
                    }

                    else
                    {
                      *bytes = *cf;
                      *&bytes[4] = *&cf[8];
                      CFDataAppendBytes(v93, bytes, 8);
                      v52 += 3;
                    }

                    v44 = a5;
                    if (v77 != v122 || v80 != a3[v77] - 1)
                    {
                      Mutable = v46;
                      break;
                    }

                    *bytes = *&cf[4];
                    v86 = bytes;
                    v88 = v46;
                    v89 = 8;
                    goto LABEL_96;
                  case 0u:
                    v90 = cf;
                    v91 = v46;
                    v92 = 24;
                    goto LABEL_109;
                }
              }
            }

            else
            {
              switch(a2)
              {
                case 3u:
                  goto LABEL_101;
                case 2u:
                  *bytes = v84 + v80;
                  *&bytes[4] = v83 + v80 + 1;
                  v128 = v84 + v80;
                  v129 = v84 + v80 + 1;
                  goto LABEL_104;
                case 0u:
                  v86 = cf;
LABEL_95:
                  v88 = v46;
                  v89 = 12;
LABEL_96:
                  CFDataAppendBytes(v88, v86, v89);
                  Mutable = v46;
                  ++v52;
                  break;
              }
            }

            v79 = a3[v77];
            ++v80;
          }

          while (v85 < v79);
        }

        v78 = v121 + v79 + 1;
        ++v77;
        v41 = (a4 - 1);
      }

      while (v77 != a4);
      LODWORD(v40) = v111;
      v74 = v108;
      v76 = v110;
      v75 = a7[v108];
LABEL_119:
      ++v76;
      v117 += v40;
      v115 += v40;
    }

    while (v76 < v75);
LABEL_120:
    v106 += v75 + 1;
    ++v74;
  }

  while (v74 != v104);
  v73 = 4;
LABEL_122:
  v94 = C3DMeshElementCreate();
  C3DMeshElementSetDoubleSided(v94, 0);
  Copy = CFDataCreateCopy(allocator, v46);
  C3DMeshElementInit(v94, a2, v52, Copy, v73);
  CFRelease(Copy);
  CFRelease(v46);
  *cf = v94;
  bytes[2] = 0;
  *bytes = 0;
  v96 = MEMORY[0x277CBF128];
  v97 = CFArrayCreate(allocator, values, 3, MEMORY[0x277CBF128]);
  v98 = CFArrayCreate(allocator, cf, 1, v96);
  v99 = C3DMeshCreateWithMeshSourcesAndMeshElements(v97, v98, bytes);
  CFRelease(v97);
  CFRelease(v98);
  if (*cf)
  {
    CFRelease(*cf);
    *cf = 0;
  }

  for (i = 0; i != 3; ++i)
  {
    v101 = values[i];
    if (v101)
    {
      CFRelease(v101);
      values[i] = 0;
    }
  }

  return v99;
}

uint64_t __CreateSourceFromProfileGenerator(void (*a1)(UInt8 *, uint64_t, uint64_t, uint64_t, float, float, float, float, float, float, float), uint64_t a2, int *a3, int a4, int *a5, int a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v52 = *MEMORY[0x277D85DE8];
  v23 = a4;
  v24 = a4;
  if (a4 >= 1)
  {
    v25 = a4;
    v26 = a3;
    v24 = a4;
    do
    {
      v27 = *v26++;
      v24 += v27;
      --v25;
    }

    while (v25);
  }

  v48 = a6;
  v28 = a6;
  if (a6 >= 1)
  {
    v29 = a6;
    v30 = a5;
    v28 = a6;
    do
    {
      v31 = *v30++;
      v28 += v31;
      --v29;
    }

    while (v29);
  }

  if (a2 == 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = 3;
  }

  v46 = v28 * v24;
  v47 = v32;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 4 * v28 * v24 * v32);
  if (a6 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = a5[v34];
      if ((v35 & 0x80000000) == 0)
      {
        v36 = 0;
        do
        {
          if (a4 >= 1)
          {
            v37 = 0;
            v50 = v36;
            v38 = v36 * a12;
            do
            {
              v39 = a3[v37];
              if ((v39 & 0x80000000) == 0)
              {
                v40 = -1;
                do
                {
                  a1(bytes, a2, v37, v34, a7, a8, a9, a10, a11, (++v40 / v39) + 0.0, (v38 / a5[v34]) + 0.0);
                  CFDataAppendBytes(Mutable, bytes, (4 * v47));
                  v39 = a3[v37];
                }

                while (v40 < v39);
              }

              ++v37;
            }

            while (v37 != v23);
            v35 = a5[v34];
            v36 = v50;
          }
        }

        while (v36++ < v35);
      }

      ++v34;
    }

    while (v34 != v48);
  }

  Copy = CFDataCreateCopy(allocator, Mutable);
  v43 = C3DMeshSourceCreate(Copy, a2, v46, v47, 1);
  CFRelease(Mutable);
  CFRelease(Copy);
  return v43;
}

uint64_t C3DMeshCreateRing(unsigned int a1, int a2, float a3, float a4, float a5, double a6)
{
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v22 = a2;
  v23 = 1;
  v20 = a6;
  return C3DMeshCreateFromProfile(generateRingProfile, a1, &v23, 1, 0, a4 == 0.0, &v22, 1, a3, a4, a5, 0.0, 0.0, v20);
}

uint64_t C3DMeshCreateSphere(unsigned int a1, uint64_t a2, int a3, double a4, double a5)
{
  values[3] = *MEMORY[0x277D85DE8];
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (a4 <= 0.0)
  {
    return 0;
  }

  if (a3 == 1)
  {
    return C3DMeshCreateGeosphere(a1, a2, a4);
  }

  v36 = a2;
  if (a5 == 1.0)
  {
    v21 = 0.5;
    if (a3 != 2)
    {
      v21 = 0.0;
    }

    v20 = a4;
    return C3DMeshCreateFromProfile(generateSphereProfile, a1, &v36, 1, a3 != 2, 1, &v36, 1, v20, v21, 1.0, 0.0, 0.0, 1.0);
  }

  v23 = a4;
  v24 = 0.0;
  if (a3 == 2)
  {
    v24 = 0.5;
    v26 = 0.25;
  }

  else
  {
    v26 = 0.5;
  }

  v25 = a5;
  values[0] = C3DMeshCreateFromProfile(generateSphereProfile, a1, &v36, 1, a3 != 2, 1, &v36, 1, v23, v24, 1.0, 0.0, 0.0, v25);
  Ring = C3DMeshCreateRing(a1, a2, v23, 0.0, 0.0, v26);
  memset(v35, 0, sizeof(v35));
  v34 = xmmword_21C2A25C0;
  C3DMatrix4x4MakeEulerRotation(v35, &v34);
  v28 = C3DMeshCopyWithTransform(Ring, v35);
  values[1] = v28;
  if (Ring)
  {
    CFRelease(Ring);
  }

  v30 = (1.0 - a5) * 6.28318531;
  LODWORD(v29) = 0;
  *(&v29 + 1) = v30;
  DWORD2(v29) = 1078530011;
  v34 = v29;
  C3DMatrix4x4MakeEulerRotation(v35, &v34);
  values[2] = C3DMeshCopyWithTransform(v28, v35);
  v31 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 3, MEMORY[0x277CBF128]);
  v19 = C3DMeshCreateByMergingMeshes(v31);
  CFRelease(v31);
  for (i = 0; i != 3; ++i)
  {
    v33 = values[i];
    if (v33)
    {
      CFRelease(v33);
      values[i] = 0;
    }
  }

  return v19;
}

uint64_t C3DMeshCreateCylinder(unsigned int a1, int a2, uint64_t a3, double a4, double a5, double a6)
{
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a4 <= 0.0)
  {
    return 0;
  }

  v49 = a2;
  v50 = a3;
  v20 = malloc_type_calloc(5uLL, 8uLL, 0x2004093837F09uLL);
  if (a5 <= 0.0)
  {
    v23 = 0;
  }

  else
  {
    v21 = a5;
    v22 = a6;
    v23 = 1;
    v24 = a4;
    *v20 = C3DMeshCreateFromProfile(generateCylinderProfile, a1, &v50, 1, 0, 0, &v49, 1, v24, v21, 0.0, 0.0, 0.0, v22);
  }

  v26 = a5 * 0.5;
  v27 = a4;
  v28 = v23 + 1;
  v20[v23] = C3DMeshCreateRing(a1, a2, v27, 0.0, v26, a6);
  if (a5 > 0.0)
  {
    v29 = a5 * -0.5;
    v30 = a4;
    Ring = C3DMeshCreateRing(a1, a2, v30, 0.0, v29, a6);
    LODWORD(v32) = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = a6 * 6.28318531;
    *(&v32 + 1) = v33;
    v44 = v32;
    C3DMatrix4x4MakeEulerRotation(&v45, &v44);
    v20[v28] = C3DMeshCopyWithTransform(Ring, &v45);
    if (Ring)
    {
      CFRelease(Ring);
    }

    v28 = v23 | 2;
    if (a6 < 1.0)
    {
      Plane = C3DMeshCreatePlane(a1, 1, a3, 0, a4, a5, 0.0);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = xmmword_21C2A25D0;
      C3DMatrix4x4MakeEulerRotation(&v45, &v44);
      *&v35 = a4 * -0.5;
      v36.n128_u64[0] = 0;
      v36.n128_u64[1] = v35;
      C3DMatrix4x4SetTranslation(&v45, v36);
      v37 = C3DMeshCopyWithTransform(Plane, &v45);
      v39 = &v20[v23 | 2];
      *v39 = v37;
      if (Plane)
      {
        CFRelease(Plane);
        v37 = *v39;
      }

      v28 = v23 | 4;
      v39[1] = CreateRadialSpanSide(v37, a6, v38);
    }
  }

  v40 = CFArrayCreate(*MEMORY[0x277CBECE8], v20, v28, MEMORY[0x277CBF128]);
  v25 = C3DMeshCreateByMergingMeshes(v40);
  CFRelease(v40);
  v41 = 0;
  do
  {
    v42 = v20[v41];
    if (v42)
    {
      CFRelease(v42);
      v20[v41] = 0;
    }

    ++v41;
  }

  while (v28 != v41);
  free(v20);
  return v25;
}

uint64_t C3DMeshCreateCone(unsigned int a1, int a2, int a3, double a4, double a5, double a6)
{
  v43[1] = *MEMORY[0x277D85DE8];
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = 0;
  if (a4 >= 0.0 && a5 >= 0.0)
  {
    v20 = 0;
    v21 = a5 == 0.0 && a4 == 0.0;
    if (!v21 && a6 > 0.0)
    {
      v39 = a2;
      v40 = a3;
      v22 = a4 <= 0.0;
      v23 = a4;
      if (v22)
      {
        Ring = 0;
      }

      else
      {
        v24 = a6 * 0.5;
        Ring = C3DMeshCreateRing(a1, a2, v23, 0.0, v24, 1.0);
      }

      if (a5 <= 0.0)
      {
        v28 = 0;
      }

      else
      {
        v26 = a6 * -0.5;
        v27 = a5;
        v28 = C3DMeshCreateRing(a1, a2, v27, 0.0, v26, 1.0);
      }

      v42 = 0;
      v43[0] = 0;
      v29 = a6;
      v30 = a5;
      values = C3DMeshCreateFromProfile(generateConeProfile, a1, &v40, 1, v28 == 0, Ring == 0, &v39, 1, v23, v30, v29, 0.0, 0.0, 1.0);
      if (Ring && v28)
      {
        v31 = v43;
        v42 = Ring;
        v32 = 3;
      }

      else
      {
        v33 = Ring | v28;
        if (Ring)
        {
          v28 = Ring;
        }

        if (!v33)
        {
          v32 = 1;
LABEL_26:
          v34 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, v32, MEMORY[0x277CBF128]);
          v20 = C3DMeshCreateByMergingMeshes(v34);
          CFRelease(v34);
          v35 = 0;
          v36 = 8 * v32;
          do
          {
            v37 = *(&values + v35);
            if (v37)
            {
              CFRelease(v37);
              *(&values + v35) = 0;
            }

            v35 += 8;
          }

          while (v36 != v35);
          return v20;
        }

        v31 = &v42;
        v32 = 2;
      }

      *v31 = v28;
      goto LABEL_26;
    }
  }

  return v20;
}

uint64_t C3DMeshCreateTube(unsigned int a1, int a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = 0;
  if (a4 <= a5 && a4 >= 0.0 && a5 > 0.0)
  {
    v23 = malloc_type_calloc(6uLL, 8uLL, 0x2004093837F09uLL);
    if (a6 <= 0.0)
    {
      v29 = 0;
      v24 = a5;
      v27 = a4;
    }

    else
    {
      v47.n128_u32[0] = a2;
      LODWORD(v46) = a3;
      v24 = a5;
      v25 = a6;
      v26 = a7;
      *v23 = C3DMeshCreateFromProfile(generateCylinderProfile, a1, &v46, 1, 0, 0, &v47, 1, v24, v25, 0.0, 0.0, 0.0, v26);
      v27 = a4;
      v28 = a7;
      v23[1] = C3DMeshCreateFromProfile(generateCylinderProfile, a1, &v46, 1, 0, 0, &v47, 1, -v27, -v25, 0.0, 0.0, 0.0, v28);
      v29 = 2;
    }

    v30 = a6 * 0.5;
    v31 = v29 | 1;
    v23[v29] = C3DMeshCreateRing(a1, a2, v24, v27, v30, a7);
    if (a6 > 0.0)
    {
      v32 = a6 * -0.5;
      Ring = C3DMeshCreateRing(a1, a2, v24, v27, v32, a7);
      LODWORD(v34) = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v35 = a7 * 6.28318531;
      *(&v34 + 1) = v35;
      v46 = v34;
      C3DMatrix4x4MakeEulerRotation(&v47, &v46);
      v23[v31] = C3DMeshCopyWithTransform(Ring, &v47);
      if (Ring)
      {
        CFRelease(Ring);
      }

      v31 = v29 + 2;
      if (a7 < 1.0)
      {
        Plane = C3DMeshCreatePlane(a1, 1, a3, 0, a5 - a4, a6, 0.0);
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = xmmword_21C2A25D0;
        C3DMatrix4x4MakeEulerRotation(&v47, &v46);
        *&v37 = (a4 + a5) * -0.5;
        v38.n128_u64[0] = 0;
        v38.n128_u64[1] = v37;
        C3DMatrix4x4SetTranslation(&v47, v38);
        v39 = C3DMeshCopyWithTransform(Plane, &v47);
        v40 = &v23[v29 + 2];
        *v40 = v39;
        v31 = v29 | 4;
        v40[1] = CreateRadialSpanSide(v39, a7, v41);
        CFRelease(Plane);
      }
    }

    v42 = CFArrayCreate(*MEMORY[0x277CBECE8], v23, v31, MEMORY[0x277CBF128]);
    v22 = C3DMeshCreateByMergingMeshes(v42);
    CFRelease(v42);
    v43 = 0;
    do
    {
      v44 = v23[v43];
      if (v44)
      {
        CFRelease(v44);
        v23[v43] = 0;
      }

      ++v43;
    }

    while (v31 != v43);
    free(v23);
  }

  return v22;
}

uint64_t C3DMeshCreateCapsule(unsigned int a1, int a2, int a3, int a4, double a5, double a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  result = 0;
  if (a5 > 0.0 && a6 > 0.0)
  {
    v21 = a6 * 0.5;
    if (a6 * 0.5 > a5)
    {
      v21 = a5;
    }

    v25[0] = a4;
    v25[1] = a3;
    v25[2] = a4;
    v24 = a2;
    v22 = v21;
    v23 = a6;
    return C3DMeshCreateFromProfile(generateCapsuleProfile, a1, v25, 3, 1, 1, &v24, 1, v22, v23, 0.0, 0.0, 0.0, 1.0);
  }

  return result;
}

uint64_t C3DMeshCreateTorus(unsigned int a1, int a2, int a3, double a4, double a5, double a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = 0;
  if (a4 > 0.0 && a5 > 0.0)
  {
    v35 = a2;
    v36 = a3;
    if (a6 == 1.0)
    {
      v21 = a4;
      v22 = a5;
      return C3DMeshCreateFromProfile(generateTorusProfile, a1, &v36, 1, 0, 0, &v35, 1, v21, v22, 0.0, 0.0, 0.0, 1.0);
    }

    else
    {
      v23 = a4;
      v24 = a5;
      v25 = a6;
      values = C3DMeshCreateFromProfile(generateTorusProfile, a1, &v36, 1, 0, 0, &v35, 1, v23, v24, 0.0, 0.0, 0.0, v25);
      Ring = C3DMeshCreateRing(a1, a3, v24, 0.0, 0.0, 1.0);
      memset(v34, 0, sizeof(v34));
      v33 = xmmword_21C2A25E0;
      C3DMatrix4x4MakeEulerRotation(v34, &v33);
      v27.n128_u64[0] = 0;
      v27.n128_u32[3] = 0;
      v27.n128_f32[2] = -v23;
      C3DMatrix4x4SetTranslation(v34, v27);
      v38 = C3DMeshCopyWithTransform(Ring, v34);
      RadialSpanSide = CreateRadialSpanSide(v38, a6, v28);
      CFRelease(Ring);
      v29 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 3, MEMORY[0x277CBF128]);
      v20 = C3DMeshCreateByMergingMeshes(v29);
      CFRelease(v29);
      for (i = 0; i != 24; i += 8)
      {
        v31 = *(&values + i);
        if (v31)
        {
          CFRelease(v31);
          *(&values + i) = 0;
        }
      }
    }
  }

  return v20;
}

uint64_t C3DMeshCreateChamferBox(unsigned int a1, int a2, int a3, int a4, unint64_t a5, unsigned int a6, double a7, double a8, double a9, double a10)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = 0;
  if (a7 >= 0.0 && a8 >= 0.0 && a9 >= 0.0 && a10 >= 0.0)
  {
    v28 = 0;
    v29 = a7 * 0.5;
    if (a7 * 0.5 >= a8 * 0.5)
    {
      v29 = a8 * 0.5;
    }

    v30 = a9 * 0.5;
    if (v29 < a9 * 0.5)
    {
      v30 = v29;
    }

    if (v30 > a10)
    {
      v30 = a10;
    }

    v31 = (a5 + (a5 >> 63)) >> 1;
    if (a5 + 1 < 3)
    {
      LODWORD(v31) = 1;
    }

    v69[1] = v31;
    v69[2] = v31;
    v68[1] = v31;
    v68[2] = v31;
    if (v30 == 0.0)
    {
      v32 = 1;
    }

    else
    {
      v32 = 3;
    }

    *values = 0u;
    v65 = 0u;
    v69[0] = a3;
    v33 = a7;
    v34 = a8;
    v35 = a9;
    v36 = v30;
    do
    {
      if (v28)
      {
        v37 = a4;
      }

      else
      {
        v37 = a2;
      }

      v68[0] = v37;
      values[v28] = C3DMeshCreateFromProfile(generateChamferQuadProfile, a1, v69, v32, 0, 0, v68, v32, v33, v34, v35, v36, v28, 1.0);
      ++v28;
    }

    while (v28 != 4);
    v69[0] = a4;
    v68[0] = a2;
    v66 = C3DMeshCreateFromProfile(generateChamferQuadProfile, a1, v69, v32, 0, 0, v68, v32, v33, v34, v35, v36, 4.0, 1.0);
    v67 = C3DMeshCreateFromProfile(generateChamferQuadProfile, a1, v69, v32, 0, 0, v68, v32, v33, v34, v35, v36, 5.0, 1.0);
    v38 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 6, MEMORY[0x277CBF128]);
    v27 = C3DMeshCreateByMergingMeshes(v38);
    CFRelease(v38);
    if (a6)
    {
      v60 = v27;
      theArray = C3DMeshGetMeshElements(v27, 0);
      v39 = MEMORY[0x277CBF128];
      Mutable = CFArrayCreateMutable(0, 6, MEMORY[0x277CBF128]);
      v41 = CFArrayCreateMutable(0, 6, v39);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 4;
      v46 = 1;
      do
      {
        v47 = 1 << ((a6 >> (4 * v43)) & 0xF);
        if ((v47 & v44) != 0)
        {
          ++v42;
        }

        else
        {
          v61 = v44;
          CFArrayRemoveAllValues(Mutable);
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v43);
          CFArrayAppendValue(Mutable, ValueAtIndex);
          if (v43 <= 4)
          {
            v49 = v45;
            v50 = v46;
            do
            {
              if (((a6 >> (4 * v43)) & 0xF) == ((a6 >> v49) & 0xF))
              {
                v51 = CFArrayGetValueAtIndex(theArray, v50);
                CFArrayAppendValue(Mutable, v51);
              }

              ++v50;
              v49 += 4;
            }

            while (v50 != 6);
          }

          if (CFArrayGetCount(Mutable) < 2)
          {
            v53 = CFArrayGetValueAtIndex(Mutable, 0);
            v52 = CFRetain(v53);
          }

          else
          {
            v52 = C3DMeshElementCreateByMergingElements(Mutable);
          }

          v54 = v52;
          if (v42 >= 1)
          {
            do
            {
              EmptyElement = C3DMeshElementGetEmptyElement();
              CFArrayAppendValue(v41, EmptyElement);
              --v42;
            }

            while (v42);
          }

          if (!v54)
          {
            CFRelease(v41);
            CFRelease(Mutable);
            v27 = v60;
            goto LABEL_45;
          }

          v44 = v61 | v47;
          CFArrayAppendValue(v41, v54);
          CFRelease(v54);
          v42 = 0;
        }

        ++v46;
        v45 += 4;
      }

      while (v43++ < 5);
      CFRelease(Mutable);
      v27 = v60;
      if (v41)
      {
        C3DMeshSetMeshElements(v60, v41);
        CFRelease(v41);
      }
    }

LABEL_45:
    for (i = 0; i != 6; ++i)
    {
      v58 = values[i];
      if (v58)
      {
        CFRelease(v58);
        values[i] = 0;
      }
    }
  }

  return v27;
}

uint64_t C3DMeshCreatePyramid(unsigned int a1, uint64_t a2, __int32 a3, uint64_t a4, double a5, double a6, double a7)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!C3DMeshElementTypeDefinesTopology(a1))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCreateFromProfile_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = 0;
  *values = 0u;
  v36 = 0u;
  v24 = a6;
  do
  {
    v34[0].i32[0] = a3;
    if (v22)
    {
      v26 = a4;
    }

    else
    {
      v26 = a2;
    }

    LODWORD(v33) = v26;
    v23 = a5;
    v25 = a7;
    values[v22] = C3DMeshCreateFromProfile(generatePyramidProfile, a1, v34, 1, 0, 1, &v33, 1, v23, v24, v25, v22, 0.0, 1.0);
    ++v22;
  }

  while (v22 != 4);
  Plane = C3DMeshCreatePlane(a1, a2, a4, 0, a5, a7, 0.0);
  memset(v34, 0, sizeof(v34));
  v33 = xmmword_21C2A25B0;
  C3DMatrix4x4MakeEulerRotation(v34, &v33);
  v37 = C3DMeshCopyWithTransform(Plane, v34);
  if (Plane)
  {
    CFRelease(Plane);
  }

  v28 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 5, MEMORY[0x277CBF128]);
  v29 = C3DMeshCreateByMergingMeshes(v28);
  CFRelease(v28);
  for (i = 0; i != 5; ++i)
  {
    v31 = values[i];
    if (v31)
    {
      CFRelease(v31);
      values[i] = 0;
    }
  }

  return v29;
}

void *_commonAncessor_0(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v11;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(a1);
      }

      v7 = *(*(&v10 + 1) + 8 * i);
      if (v4)
      {
        while (!v7)
        {
LABEL_11:
          v4 = [v4 parentNode];
          if (!v4)
          {
            return v4;
          }
        }

        v8 = v7;
        while (v8 != v4)
        {
          v8 = [v8 parentNode];
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = *(*(&v10 + 1) + 8 * i);
      }
    }

    v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v3);
  return v4;
}

void C3DSubdivInitializeIfNeeded(void)
{
  if (C3DSubdivInitializeIfNeeded(void)::onceToken != -1)
  {
    C3DSubdivInitializeIfNeeded();
  }
}

void *___Z27C3DSubdivInitializeIfNeededv_block_invoke()
{
  OpenSubdiv::v3_1_1::Far::SetErrorCallback(_C3DSubdivErrorCallbackFunc);

  return OpenSubdiv::v3_1_1::Far::SetWarningCallback(_C3DSubdivWarningCallbackFunc, v0);
}

void _C3DSubdivErrorCallbackFunc()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _C3DSubdivErrorCallbackFunc();
  }
}

{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSubdivWarningCallbackFunc(const char *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = a1;
    _os_log_impl(&dword_21BEF7000, v2, OS_LOG_TYPE_DEFAULT, "Warning (OpenSubdiv): %s", &v3, 0xCu);
  }
}

uint64_t C3DSubdivSourceSemanticCanBePrimvar(int a1, uint64_t a2, unsigned int a3)
{
  if (a1 == 4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v3 = 0;
  }

  if ((a1 & 0xFE) == 2)
  {
    v3 = 1;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t C3DSubdivGetGPUPrimvarDataTypeHash(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 0x40000000;
    v35 = ___Z34C3DSubdivGetGPUPrimvarDataTypeHashPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke;
    v36 = &__block_descriptor_tmp_3_3;
    v37 = v2;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    if (v4 != v5)
    {
      v6 = -1;
      do
      {
        if (*(v4 + 12) == 3)
        {
          if (v6 == -1)
          {
            v6 = *(v4 + 8);
          }

          else if (*(v4 + 8) != v6)
          {
            v33 = 1;
            goto LABEL_11;
          }
        }

        v4 += 16;
      }

      while (v4 != v5);
    }

    v33 = 0;
LABEL_11:
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a2, 2, 0, 0);
    v8 = v33 & 0xFFFFFFF9 | (2 * (v35(v34, SourceWithSemanticAtIndex) & 3));
    v9 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 0, 0);
    v10 = v8 & 0xFFFFFFE7 | (8 * (v35(v34, v9) & 3));
    v11 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 1, 0);
    v12 = v10 & 0xFFFFFF9F | (32 * (v35(v34, v11) & 3));
    v13 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 2, 0);
    v14 = v12 & 0xFFFFFE7F | ((v35(v34, v13) & 3) << 7);
    v15 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 3, 0);
    v16 = v35(v34, v15);
    v17 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 4, 0);
    v18 = v35(v34, v17);
    v19 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 5, 0);
    v20 = (v35(v34, v19) & 3) << 13;
    v21 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 6, 0);
    v22 = (v35(v34, v21) & 3) << 15;
    v23 = C3DMeshGetSourceWithSemanticAtIndex(a2, 3, 7, 0);
    return v14 & 0xFFFFE1FF | ((v16 & 3) << 9) & 0xE7FF | ((v18 & 3) << 11) | v20 | v22 | ((v35(v34, v23) & 3) << 17);
  }

  else
  {
    v25 = scn_default_log();
    result = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v25, v26, v27, v28, v29, v30, v31, v32);
      return 0;
    }
  }

  return result;
}

uint64_t ___Z34C3DSubdivGetGPUPrimvarDataTypeHashPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  while (v3 != v4)
  {
    if (*v3 == a2)
    {
      return *(v3 + 12);
    }

    v3 += 16;
  }

  v5 = scn_default_log();
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ___Z34C3DSubdivGetGPUPrimvarDataTypeHashPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1();
    return 0;
  }

  return result;
}

uint64_t C3DGeometryOsdGetTextureCoordinatesDataType(unsigned int a1, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        return (a1 >> 15) & 3;
      }

      if (a2 == 7)
      {
        return (a1 >> 17) & 3;
      }

      goto LABEL_18;
    }

    if (a2 == 4)
    {
      return (a1 >> 11) & 3;
    }

    else
    {
      return (a1 >> 13) & 3;
    }
  }

  else
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return (a1 >> 3) & 3;
      }

      if (a2 == 1)
      {
        return (a1 >> 5) & 3;
      }

LABEL_18:
      v3 = scn_default_log();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        C3DGeometryOsdGetTextureCoordinatesDataType();
        return 0;
      }

      return result;
    }

    if (a2 == 2)
    {
      return (a1 >> 7) & 3;
    }

    else
    {
      return (a1 >> 9) & 3;
    }
  }
}

uint64_t C3DGeometryOsdGetVaryingTextureCoordinatesCount(unsigned int a1)
{
  v1 = (a1 & 0x18) == 16;
  if ((a1 & 0x18) == 0x10)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = vdupq_n_s32(a1);
  if ((a1 & 0x60) == 0x40)
  {
    v1 = v2;
  }

  v4 = vandq_s8(vceqq_s32(vandq_s8(v3, xmmword_21C2A2610), xmmword_21C2A2620), xmmword_21C27FE30);
  v4.i32[0] = vaddvq_s32(v4) & 0xF;
  v5 = vcnt_s8(*v4.i8);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  if ((a1 & 0x18000) == 0x10000)
  {
    v6 = v5.i32[0] + 1;
  }

  if ((a1 & 0x60000) == 0x40000)
  {
    ++v1;
  }

  return (v6 + v1);
}

uint64_t C3DGeometryOsdGetFaceVaryingTextureCoordinatesCount(unsigned int a1)
{
  v1 = (~a1 & 0x18) == 0;
  if ((~a1 & 0x18) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if ((~a1 & 0x60) == 0)
  {
    v1 = v2;
  }

  v3 = vandq_s8(vceqq_s32(vandq_s8(vdupq_n_s32(a1), xmmword_21C2A2610), xmmword_21C2A2610), xmmword_21C27FE30);
  v3.i32[0] = vaddvq_s32(v3) & 0xF;
  v4 = vcnt_s8(*v3.i8);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  if ((~a1 & 0x18000) == 0)
  {
    v5 = v4.i32[0] + 1;
  }

  if ((~a1 & 0x60000) == 0)
  {
    ++v1;
  }

  return (v5 + v1);
}

void _Z68C3DSubdivCPUPrimvarDataCopyCrossNormalizedDataAtIndexToBufferAtIndexIDv2_fEvRNSt3__16vectorI16C3DSubdivCPUDataIT_ENS1_9allocatorIS5_EEEES9_iPfi()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _Z68C3DSubdivCPUPrimvarDataCopyCrossNormalizedDataAtIndexToBufferAtIndexIDv2_fEvRNSt3__16vectorI16C3DSubdivCPUDataIT_ENS1_9allocatorIS5_EEEES9_iPfi_cold_1();
  }
}

BOOL C3DGeometryInitSubdivTopologyInfoIfNeeded(__C3DGeometry *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (a1->var10.var7)
  {
    return 1;
  }

  Mesh = C3DGeometryGetMesh(a1);
  if (C3DMeshGetSourcesCountForSemantic(Mesh, 0) == 1)
  {
    v3 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10F004000FC2A7CuLL);
    a1->var10.var7 = v3;
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, 0);
    v56 = 0u;
    v57 = 0u;
    C3DMeshSourceGetContent(SourceWithSemanticAtIndex, &v56);
    v5 = v57;
    if (C3DMeshUsesSameChannelForAllSources(Mesh, 0))
    {
      var0 = a1->var10.var2.var0;
      if (var0 && !C3DGeometryGetEffectiveDataKindForRendering(a1))
      {
        if ((C3DGeometryInitSubdivTopologyInfoIfNeeded(__C3DGeometry *)::done & 1) == 0)
        {
          C3DGeometryInitSubdivTopologyInfoIfNeeded(__C3DGeometry *)::done = 1;
          v19 = scn_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            C3DGeometryInitSubdivTopologyInfoIfNeeded();
          }
        }
      }

      else if (var0)
      {
        *v3 = 2;
        v54 = 0;
        v55 = 0;
        v53 = &v54;
        if (v5)
        {
          v10 = 0;
          do
          {
            *v11.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v57), (v56 + v10 * BYTE6(v57)), v6, v7, v8);
            v58 = v11;
            LODWORD(v59) = v55;
            v12 = _ZNSt3__16__treeINS_12__value_typeIDv3_fjEENS_19__map_value_compareIS2_S3_30__C3DSubdivWelderKeyComparatorLb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JNS_4pairIS2_jEEEEENSB_INS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(&v53, &v58);
            v52 = (v13 & 1) == 0;
            v58.i32[0] = *(v12 + 48);
            std::vector<int>::push_back[abi:nn200100](v3 + 1, &v58);
            std::vector<BOOL>::push_back((v3 + 56), &v52);
            if (v52)
            {
              *v3 = 3;
            }

            else
            {
              v51 = v10;
              std::vector<int>::push_back[abi:nn200100](v3 + 4, &v51);
            }

            ++v10;
          }

          while (v5 != v10);
          v14 = v54;
        }

        else
        {
          v14 = 0;
        }

        v18 = (*(v3 + 5) - *(v3 + 4)) >> 2;
        std::__tree<char>::destroy(&v53, v14);
        goto LABEL_30;
      }

      *v3 = 1;
      std::vector<unsigned int>::reserve((v3 + 8), v5);
      std::vector<unsigned int>::reserve((v3 + 32), v5);
      if (v5)
      {
        v20 = 0;
        do
        {
          v58.i32[0] = v20;
          std::vector<int>::push_back[abi:nn200100](v3 + 1, &v58);
          v58.i32[0] = v20;
          std::vector<int>::push_back[abi:nn200100](v3 + 4, &v58);
          ++v20;
        }

        while (v5 != v20);
LABEL_28:
        LODWORD(v18) = v5;
LABEL_30:
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 0x40000000;
        v50[2] = ___Z41C3DGeometryInitSubdivTopologyInfoIfNeededP13__C3DGeometry_block_invoke;
        v50[3] = &__block_descriptor_tmp_5_2;
        v50[4] = v3;
        C3DMeshApplySources(Mesh, 0, v50);
        *(v3 + 26) = v18;
        ElementsCount = C3DMeshGetElementsCount(Mesh);
        if (ElementsCount < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          for (i = 0; i != ElementsCount; ++i)
          {
            ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 0);
            Type = C3DMeshElementGetType(ElementAtIndex);
            if (C3DMeshElementTypeDefinesSurface(Type))
            {
              v22 += C3DMeshElementGetPrimitiveCountByEvaluatingPrimitiveRanges(ElementAtIndex);
            }
          }
        }

        *(v3 + 27) = v22;
        v26 = malloc_type_malloc(4 * v22, 0x100004052888210uLL);
        *(v3 + 52) = 0;
        v3[212] = 1;
        LODWORD(v53) = 0;
        if (ElementsCount < 1)
        {
          v30 = 0;
        }

        else
        {
          v39 = v5;
          for (j = 0; j != ElementsCount; ++j)
          {
            v28 = C3DMeshGetElementAtIndex(Mesh, j, 0);
            v29 = C3DMeshElementGetType(v28);
            if (C3DMeshElementTypeDefinesSurface(v29))
            {
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 0x40000000;
              v49[2] = ___Z41C3DGeometryInitSubdivTopologyInfoIfNeededP13__C3DGeometry_block_invoke_2;
              v49[3] = &__block_descriptor_tmp_7_5;
              v49[4] = v28;
              v49[5] = v26;
              v49[6] = &v53;
              v49[7] = v3;
              C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(v28, v49);
            }
          }

          v30 = v53;
          LODWORD(v5) = v39;
        }

        if (v30 != *(v3 + 27))
        {
          C3DGeometryInitSubdivTopologyInfoIfNeeded();
        }

        *(v3 + 14) = v26;
        if ((v5 - 1) >= 0x7FFFFFFF)
        {
          v31 = 0x7FFFFFFFLL;
        }

        else
        {
          v31 = (v5 - 1);
        }

        v32 = malloc_type_malloc(4 * *(v3 + 52), 0x100004052888210uLL);
        ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
        v51 = 0;
        if (ElementsCount < 1)
        {
          v38 = 0;
        }

        else
        {
          v34 = ChannelForSourceWithSemanticAtIndex;
          for (k = 0; k != ElementsCount; ++k)
          {
            v36 = C3DMeshGetElementAtIndex(Mesh, k, 0);
            v37 = C3DMeshElementGetType(v36);
            if (C3DMeshElementTypeDefinesSurface(v37))
            {
              v60 = 0;
              v58 = 0u;
              v59 = 0u;
              C3DMeshElementGetFastIndexLookupInfo(v36, &v58);
              v40[0] = MEMORY[0x277D85DD0];
              v40[1] = 0x40000000;
              v41 = v58;
              v40[2] = ___Z41C3DGeometryInitSubdivTopologyInfoIfNeededP13__C3DGeometry_block_invoke_3;
              v40[3] = &__block_descriptor_tmp_10_1;
              v42 = v59;
              v43 = v60;
              v40[4] = v36;
              v44 = v34;
              v45 = v31;
              v46 = v3;
              v47 = v32;
              v48 = &v51;
              C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(v36, v40);
            }
          }

          v38 = v51;
        }

        if (v38 != *(v3 + 52))
        {
          C3DGeometryInitSubdivTopologyInfoIfNeeded();
        }

        *(v3 + 15) = v32;
        return 1;
      }
    }

    else
    {
      *v3 = 0;
      std::vector<unsigned int>::reserve((v3 + 8), v5);
      std::vector<unsigned int>::reserve((v3 + 32), v5);
      if (v5)
      {
        v17 = 0;
        do
        {
          v58.i32[0] = v17;
          std::vector<int>::push_back[abi:nn200100](v3 + 1, &v58);
          v58.i32[0] = v17;
          std::vector<int>::push_back[abi:nn200100](v3 + 4, &v58);
          ++v17;
        }

        while (v5 != v17);
        goto LABEL_28;
      }
    }

    LODWORD(v18) = 0;
    goto LABEL_30;
  }

  v15 = scn_default_log();
  result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (result)
  {
    C3DGeometryInitSubdivTopologyInfoIfNeeded();
    return 0;
  }

  return result;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void ___Z41C3DGeometryInitSubdivTopologyInfoIfNeededP13__C3DGeometry_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if ((a3 & 0xFE) != 2)
    {
      return;
    }

    v6 = *(a1 + 32);
    v7 = *v6;
    if (v7 >= 2)
    {
      if (v7 == 2)
      {
        v8 = 2;
        goto LABEL_11;
      }

      if (v7 != 3)
      {
        v8 = 0;
        goto LABEL_11;
      }
    }

    v8 = 3;
  }

  else
  {
    if (a4)
    {
      return;
    }

    v6 = *(a1 + 32);
    v8 = 1;
  }

LABEL_11:
  v9 = v6[11];
  v10 = v6[12];
  if (v9 >= v10)
  {
    v12 = v6[10];
    v13 = (v9 - v12) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = v10 - v12;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivMeshSourceIndexingInfo>>((v6 + 10), v16);
    }

    v17 = 16 * v13;
    *v17 = a2;
    *(v17 + 8) = a5;
    *(v17 + 9) = 0;
    *(v17 + 11) = 0;
    *(v17 + 12) = v8;
    v11 = 16 * v13 + 16;
    v18 = v6[10];
    v19 = v6[11] - v18;
    v20 = (16 * v13 - v19);
    memcpy(v20, v18, v19);
    v21 = v6[10];
    v6[10] = v20;
    v6[11] = v11;
    v6[12] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    *(v9 + 8) = a5;
    *(v9 + 9) = 0;
    *(v9 + 11) = 0;
    v11 = v9 + 16;
    *(v9 + 12) = v8;
  }

  v6[11] = v11;
}

uint64_t ___Z41C3DGeometryInitSubdivTopologyInfoIfNeededP13__C3DGeometry_block_invoke_2(uint64_t *a1, unsigned int a2)
{
  result = C3DMeshElementGetVertexCountForPrimitiveAtIndex(a1[4], a2);
  v4 = a1[5];
  v5 = a1[6];
  v6 = *v5;
  *v5 = v6 + 1;
  *(v4 + 4 * v6) = result;
  v7 = a1[7];
  *(v7 + 208) += result;
  if (result != 4)
  {
    *(v7 + 212) = 0;
  }

  return result;
}

uint64_t ___Z41C3DGeometryInitSubdivTopologyInfoIfNeededP13__C3DGeometry_block_invoke_3(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = C3DMeshElementGetVertexCountForPrimitiveAtIndex(*(a1 + 32), a2);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      v7 = *(a1 + 56);
      v14[0] = *(a1 + 40);
      v14[1] = v7;
      v8 = *(a1 + 80);
      v15 = *(a1 + 72);
      result = C3DMeshElementGetIndexUsingFastIndexLookupInfo(v14, v3, i, v8);
      v9 = *(a1 + 88);
      v10 = *(a1 + 96);
      if (v9 > result)
      {
        LODWORD(v9) = result;
      }

      if (*v10 == 3)
      {
        LODWORD(v9) = *(*(v10 + 8) + 4 * v9);
      }

      v11 = *(a1 + 104);
      v12 = *(a1 + 112);
      v13 = *v12;
      *v12 = v13 + 1;
      *(v11 + 4 * v13) = v9;
    }
  }

  return result;
}

void C3DGeometrySubdivTopologyInfoInitCreasesAndCorners(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (!v3)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(v3 + 128) <= 0 && *(v3 + 152) <= 0)
  {
    v12 = a1[2];
    if (v12)
    {
      v13 = a1[1];
      if (v13)
      {
        ElementsCount = C3DMeshGetElementsCount(a2);
        if (ElementsCount < 1)
        {
          v65 = 0;
        }

        else
        {
          v15 = 0;
          v65 = 1;
          do
          {
            ElementAtIndex = C3DMeshGetElementAtIndex(a2, v15, 0);
            Type = C3DMeshElementGetType(ElementAtIndex);
            if (C3DMeshElementTypeDefinesSurface(Type) && C3DMeshElementGetPrimitiveRange(ElementAtIndex) != -1)
            {
              break;
            }

            v65 = ++v15 < ElementsCount;
          }

          while (ElementsCount != v15);
        }

        Accessor = C3DMeshSourceGetAccessor(v12);
        PrimitiveCount = C3DMeshElementGetPrimitiveCount(v13);
        v63 = malloc_type_malloc(4 * PrimitiveCount, 0x100004052888210uLL);
        v61 = malloc_type_malloc(8 * PrimitiveCount, 0x100004052888210uLL);
        if (C3DMeshElementGetIndicesChannelCount(v13) != 1)
        {
          v19 = scn_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            C3DGeometrySubdivTopologyInfoInitCreasesAndCorners(v19, v20, v21, v22, v23, v24, v25, v26);
          }
        }

        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        C3DMeshElementGetFastIndexLookupInfo(v13, &v83);
        if (PrimitiveCount < 1)
        {
          LODWORD(v27) = 0;
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v57 = PrimitiveCount;
          do
          {
            v75 = v83;
            v76 = v84;
            v77.n128_u64[0] = v85;
            IndexUsingFastIndexLookupInfo = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v75, v28, 0, 0);
            v75 = v83;
            v76 = v84;
            v77.n128_u64[0] = v85;
            v30 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v75, v28, 1, 0);
            if (!v65)
            {
              goto LABEL_27;
            }

            v79 = 0;
            v80 = &v79;
            v81 = 0x2000000000;
            v82 = 0;
            ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 0, 0);
            if (ElementsCount >= 1)
            {
              v32 = ChannelForSourceWithSemanticAtIndex;
              for (i = 0; i != ElementsCount; ++i)
              {
                v34 = C3DMeshGetElementAtIndex(a2, i, 0);
                v35 = C3DMeshElementGetType(v34);
                if (C3DMeshElementTypeDefinesSurface(v35))
                {
                  v77 = 0u;
                  v78 = 0u;
                  v75 = 0u;
                  v76 = 0u;
                  C3DMeshElementGetContent(v34, v32, &v75);
                  v71 = v75;
                  v72 = v76;
                  v73 = v77;
                  v74 = v78;
                  v68[0] = MEMORY[0x277D85DD0];
                  v68[1] = 0x40000000;
                  v68[2] = ___Z50C3DGeometrySubdivTopologyInfoInitCreasesAndCornersPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke;
                  v68[3] = &unk_2782FFB20;
                  v69 = IndexUsingFastIndexLookupInfo;
                  v70 = v30;
                  v68[4] = &v79;
                  C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges(&v71, v68, v77);
                }
              }
            }

            v36 = *(v80 + 24);
            _Block_object_dispose(&v79, 8);
            PrimitiveCount = v57;
            if (v36)
            {
LABEL_27:
              if (*v3 == 3)
              {
                v37 = *(v3 + 8);
                IndexUsingFastIndexLookupInfo = *(v37 + 4 * IndexUsingFastIndexLookupInfo);
                v30 = *(v37 + 4 * v30);
              }

              v38 = &v61[8 * v27];
              *v38 = IndexUsingFastIndexLookupInfo;
              *(v38 + 1) = v30;
              v63[v27++] = *C3DSourceAccessorGetValuePtrAtIndex(Accessor, v28);
            }

            ++v28;
          }

          while (v28 != PrimitiveCount);
        }

        *(v3 + 128) = v27;
        *(v3 + 136) = v61;
        *(v3 + 144) = v63;
      }
    }

    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a2, 7, 0, 0);
    if (SourceWithSemanticAtIndex)
    {
      v40 = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
      v41 = *(v3 + 40) - *(v3 + 32);
      v42 = malloc_type_malloc(v41, 0x100004052888210uLL);
      v58 = v41;
      v43 = malloc_type_malloc(v41, 0x100004052888210uLL);
      v44 = C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 7, 0);
      v45 = C3DMeshGetElementsCount(a2);
      if (v45 >= 1)
      {
        v46 = v45;
        v47 = 0;
        v60 = v45;
        do
        {
          v48 = C3DMeshGetElementAtIndex(a2, v47, 0);
          v49 = C3DMeshElementGetType(v48);
          if (C3DMeshElementTypeDefinesSurface(v49))
          {
            v62 = v47;
            v77.n128_u64[0] = 0;
            v75 = 0u;
            v76 = 0u;
            C3DMeshElementGetFastIndexLookupInfo(v48, &v75);
            v66 = C3DMeshElementGetPrimitiveCount(v48);
            if (v66 >= 1)
            {
              v50 = 0;
              v64 = v48;
              do
              {
                VertexCountForPrimitiveAtIndex = C3DMeshElementGetVertexCountForPrimitiveAtIndex(v48, v50);
                if (VertexCountForPrimitiveAtIndex >= 1)
                {
                  v52 = VertexCountForPrimitiveAtIndex;
                  for (j = 0; j != v52; ++j)
                  {
                    v71 = v75;
                    v72 = v76;
                    v73.n128_u64[0] = v77.n128_u64[0];
                    v54 = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v71, v50, j, v44);
                    v55 = v54;
                    v56 = v54;
                    if (*v3 == 3)
                    {
                      v55 = *(*(v3 + 8) + 4 * v54);
                      v56 = v55;
                    }

                    v42[v56] = *C3DSourceAccessorGetValuePtrAtIndex(v40, v54);
                    v43[v56] = v55;
                  }
                }

                ++v50;
                v48 = v64;
              }

              while (v50 != v66);
            }

            v46 = v60;
            v47 = v62;
          }

          ++v47;
        }

        while (v47 != v46);
      }

      *(v3 + 152) = v58 >> 2;
      *(v3 + 160) = v43;
      *(v3 + 168) = v42;
    }
  }
}

uint64_t ___Z50C3DGeometrySubdivTopologyInfoInitCreasesAndCornersPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = *(result + 40);
    do
    {
      v6 = *(a3 + 4 * v4);
      if (a4 - 1 == v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = v4 + 1;
      }

      v8 = *(a3 + 4 * v7);
      if (v5 == v6 && *(result + 44) == v8 || v5 == v8 && *(result + 44) == v6)
      {
        *(*(*(result + 32) + 8) + 24) = 1;
      }

      ++v4;
    }

    while (a4 != v4);
  }

  return result;
}

void C3DSubdivCreateRefiner(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::Create();
}

void C3DSubdivInitCPUPrimvarContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v46[2] + 4) = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 0x40000000;
  v44[2] = ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke;
  v44[3] = &__block_descriptor_tmp_15;
  v44[4] = a2;
  v44[5] = a1;
  C3DMeshApplySources(a3, 0, v44);
  v15 = *(a1 + 56) - *(a1 + 48);
  v32 = (v15 >> 5);
  if ((v15 >> 5))
  {
    if (!*(v6 + 196))
    {
      v16 = malloc_type_malloc((v15 >> 1) & 0xFF0, 0x105004037B82EA9uLL);
      v17 = (v16 + 8);
      v18 = v32;
      do
      {
        v19 = *(v6 + 208);
        *(v17 - 2) = v19;
        *v17 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
        v17 += 2;
        --v18;
      }

      while (v18);
      *(v6 + 196) = v32;
      *(v6 + 200) = v16;
    }

    v20 = 0;
    v31 = a1;
    do
    {
      v21 = *(a1 + 48) + 32 * v20;
      v23 = *(v21 + 8);
      v22 = *(v21 + 16);
      v43 = 0;
      ElementsCount = C3DMeshGetElementsCount(a3);
      if (ElementsCount >= 1)
      {
        v25 = ElementsCount;
        v26 = 0;
        v27 = (v22 - v23) >> 3;
        do
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(a3, v26, 0);
          Type = C3DMeshElementGetType(ElementAtIndex);
          if (C3DMeshElementTypeDefinesSurface(Type))
          {
            v42 = 0;
            v41 = 0u;
            v40 = 0u;
            C3DMeshElementGetFastIndexLookupInfo(ElementAtIndex, &v40);
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 0x40000000;
            v33[2] = ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_2;
            v33[3] = &__block_descriptor_tmp_16_1;
            v33[4] = ElementAtIndex;
            v33[5] = v27;
            v34 = v40;
            v35 = v41;
            v36 = v42;
            v33[6] = v21;
            v39 = v20;
            v37 = v6;
            v38 = &v43;
            C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(ElementAtIndex, v33);
          }

          ++v26;
        }

        while (v25 != v26);
      }

      if (v43 != *(v6 + 208))
      {
        v30 = scn_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivInitCPUPrimvarContext(v45, v46, v30);
        }
      }

      ++v20;
      a1 = v31;
    }

    while (v20 != v32);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_5;
    }

    if (a3 != 4)
    {
      return;
    }
  }

  if (a4)
  {
    return;
  }

LABEL_5:
  v30 = 0u;
  v31 = 0u;
  C3DMeshSourceGetContent(a2, &v30);
  if (!v31 || !C3DBaseTypeIsFloatingValue(BYTE4(v31)))
  {
    return;
  }

  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) == 2 || a3 == 4 && !a4)
    {
      goto LABEL_15;
    }
  }

  else if (!a4)
  {
    goto LABEL_24;
  }

  v10 = scn_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1();
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_15:
    v11 = *(a1 + 40);
    v13 = *(v11 + 48);
    v14 = *(v11 + 56);
    v12 = (v11 + 48);
    while (v13 != v14)
    {
      if (*v13 == a5)
      {
        v16 = (v13 + 8);
        goto LABEL_25;
      }

      v13 += 32;
    }

    *__p = 0u;
    v29 = 0u;
    std::vector<C3DSubdivCPUFVarPrimvarInfo>::emplace_back<C3DSubdivCPUFVarPrimvarInfo>(v12, __p);
    if (__p[1])
    {
      *&v29 = __p[1];
      operator delete(__p[1]);
    }

    v15 = *(*(a1 + 40) + 56);
    *(v15 - 32) = a5;
    v16 = v15 - 24;
    goto LABEL_25;
  }

  if (a3)
  {
    goto LABEL_15;
  }

LABEL_24:
  v16 = *(a1 + 40);
LABEL_25:
  v18 = *(v16 + 8);
  v17 = *(v16 + 16);
  if (v18 >= v17)
  {
    v20 = (v18 - *v16) >> 3;
    if ((v20 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v21 = v17 - *v16;
    v22 = v21 >> 2;
    if (v21 >> 2 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarInfo>>(v16, v23);
    }

    v24 = (8 * v20);
    *v24 = a2;
    v19 = 8 * v20 + 8;
    v25 = *(v16 + 8) - *v16;
    v26 = v24 - v25;
    memcpy(v24 - v25, *v16, v25);
    v27 = *v16;
    *v16 = v26;
    *(v16 + 8) = v19;
    *(v16 + 16) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v18 = a2;
    v19 = (v18 + 1);
  }

  *(v16 + 8) = v19;
}

uint64_t C3DSubdivSourceGetPrimvarDataType(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3)
  {
    if (a3 & 0xFFFFFFFE) == 2 || a3 == 4 && !a4 && (a5)
    {
LABEL_9:
      if (a5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
  }

  v9 = scn_default_log();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_9;
  }

  C3DSubdivSourceGetPrimvarDataType();
  if (a5)
  {
LABEL_10:
    if (a3)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

LABEL_14:
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  for (i = *(v11 + 80); i != *(v11 + 88); i += 16)
  {
    if (*i == a2)
    {
      return *(i + 12);
    }
  }

  v21 = scn_default_log();
  result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ___Z34C3DSubdivGetGPUPrimvarDataTypeHashPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1();
    return 0;
  }

  return result;
}

uint64_t ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_2(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = C3DMeshElementGetVertexCountForPrimitiveAtIndex(*(a1 + 32), a2);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 40);
    do
    {
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          Count = C3DMeshSourceGetCount(*(*(*(a1 + 48) + 8) + 8 * i));
          if (Count >= 0x80000000)
          {
            v10 = 0x80000000;
          }

          else
          {
            v10 = Count;
          }

          v11 = v10 - 1;
          v12 = *(a1 + 72);
          v15[0] = *(a1 + 56);
          v15[1] = v12;
          v16 = *(a1 + 88);
          result = C3DMeshElementGetIndexUsingFastIndexLookupInfo(v15, v3, v6, **(a1 + 48));
          v13 = result;
          if (v11 < result)
          {
            v13 = v11;
          }

          v14 = *(a1 + 104);
          *(*(*(*(a1 + 96) + 200) + 16 * *(a1 + 112) + 8) + 4 * *v14) = v13;
          v7 = *(a1 + 40);
        }
      }

      else
      {
        v14 = *(a1 + 104);
      }

      ++*v14;
      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void C3DSubdivFeedCPUPrimvar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  while (v6 != v7)
  {
    v8 = *v6++;
    __C3DSubdivFeedCPUPrimvar(a2, a3, v8, 0, a1 + 72, 0);
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  while (v9 != v10)
  {
    v11 = *v9++;
    __C3DSubdivFeedCPUPrimvar(a2, a3, v11, 0, a1 + 144, 1);
  }

  v12 = *(a1 + 56) - *(a1 + 48);
  v13 = (v12 >> 5);
  std::vector<C3DSubdivCPUPrimvarDataGroup>::resize(a1 + 216, v13);
  if ((v12 & 0x1FE0) != 0)
  {
    v14 = 0;
    do
    {
      v15 = *(a1 + 48) + 32 * v14;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      if (v16 != v17)
      {
        v18 = *(a1 + 216) + 72 * v14;
        do
        {
          v19 = *v16++;
          __C3DSubdivFeedCPUPrimvar(a2, a3, v19, v14, v18, 2);
        }

        while (v16 != v17);
      }

      ++v14;
    }

    while (v14 != v13);
  }
}

void __C3DSubdivFeedCPUPrimvar(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v27 = 0u;
  v28 = 0u;
  C3DMeshSourceGetContent(a3, &v27);
  if (BYTE4(v28) - 23 >= 2)
  {
    v20 = BYTE8(v28);
  }

  else
  {
    v20 = 4;
  }

  switch(v20)
  {
    case 4:
      _ZN23C3DSubdivCPUPrimvarDataIDv3_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(v22, a3, v11, a2, a4, a6);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE9push_backB8nn200100ERKS3_(a5 + 48, v22);
      goto LABEL_13;
    case 3:
      _ZN23C3DSubdivCPUPrimvarDataIDv3_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(v22, a3, v11, a2, a4, a6);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE9push_backB8nn200100ERKS3_(a5 + 24, v22);
      goto LABEL_13;
    case 2:
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fEC2EPK15__C3DMeshSourceP29C3DGeometrySubdivTopologyInfoPN10OpenSubdiv6v3_1_13Far15TopologyRefinerEh37C3DSubdivPrimvarDataInterpolationMode(v22, a3, v11, a2, a4, a6);
      _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv2_fENS_9allocatorIS3_EEE9push_backB8nn200100ERKS3_(a5, v22);
LABEL_13:
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v22[0])
      {
        v22[1] = v22[0];
        operator delete(v22[0]);
      }

      return;
  }

  v21 = scn_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __C3DSubdivFeedCPUPrimvar();
  }
}

void std::vector<C3DSubdivCPUPrimvarDataGroup>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<C3DSubdivCPUPrimvarDataGroup>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 72 * a2;
    while (v3 != v7)
    {
      v3 -= 9;
      std::allocator_traits<std::allocator<C3DSubdivCPUPrimvarDataGroup>>::destroy[abi:nn200100]<C3DSubdivCPUPrimvarDataGroup,0>(a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void C3DSubdivInterpolateCPUPrimvar(uint64_t a1, double a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, int **a7)
{
  __C3DSubdivInterpolateCPUPrimvar((a1 + 72), a6, a7, a2, a3, a4);
  __C3DSubdivInterpolateCPUPrimvar((a1 + 144), a6, a7, v10, v11, v12);
  v16 = *(a1 + 48);
  if (((*(a1 + 56) - v16) >> 5))
  {
    v17 = 0;
    v18 = 72 * ((*(a1 + 56) - v16) >> 5);
    do
    {
      __C3DSubdivInterpolateCPUPrimvar((*(a1 + 216) + v17), a6, a7, v13, v14, v15);
      v17 += 72;
    }

    while (v18 != v17);
  }
}

void __C3DSubdivInterpolateCPUPrimvar(void *a1, uint64_t a2, int **a3, double a4, float32x4_t a5, float32x4_t a6)
{
  if ((*(a2 + 8) & 0x3C) != 0)
  {
    v9 = 0;
    do
    {
      v10 = a1[1] - *a1;
      if (v10)
      {
        v11 = 0;
        v12 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        do
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv2_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(*a1 + v11, v9 + 1, a3, a2, a4, *a5.i64);
          v11 += 112;
          --v13;
        }

        while (v13);
      }

      v14 = a1[4] - a1[3];
      if (v14)
      {
        v15 = 0;
        v16 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 4);
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        do
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv3_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(a1[3] + v15, v9 + 1, a3, a2, *&a4, *a5.i64, a6);
          v15 += 112;
          --v17;
        }

        while (v17);
      }

      v18 = a1[7] - a1[6];
      if (v18)
      {
        v19 = 0;
        v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 4);
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        do
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv4_fE11InterpolateEiPN10OpenSubdiv6v3_1_13Far14PrimvarRefinerEPNS4_15TopologyRefinerE(a1[6] + v19, v9 + 1, a3, a2, a4, a5);
          v19 += 112;
          --v21;
        }

        while (v21);
      }

      ++v9;
    }

    while (v9 < ((*(a2 + 8) >> 2) & 0xF));
  }
}

void C3DSubdivInitGPUPrimvarDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivGetGPUPrimvarDataTypeHash(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *a1 = 0;
  *(a1 + 56) = 0;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 0x40000000;
  v86[2] = ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke;
  v86[3] = &__block_descriptor_tmp_18_1;
  v86[4] = a2;
  v86[5] = a1;
  v78 = a3;
  C3DMeshApplySources(a3, 0, v86);
  v73 = *(a1 + 8);
  v74 = *(a1 + 16);
  v71 = *(a1 + 64);
  v72 = *(a1 + 72);
  std::vector<unsigned int>::reserve((a1 + 32), (*(v6 + 208) * *a1));
  std::vector<unsigned int>::reserve((a1 + 88), (*(v6 + 208) * *(a1 + 56)));
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  while (v15 != v16)
  {
    std::vector<unsigned int>::reserve((v15 + 40), (*(v6 + 208) * *(v15 + 8)));
    v15 += 64;
  }

  v76 = v6;
  if (*(v6 + 104))
  {
    v17 = 0;
    v18 = (v74 - v73) >> 4;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v77 = v18;
    if (((v72 - v71) >> 4) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v72 - v71) >> 4;
    }

    do
    {
      v75 = v17;
      v20 = *(*(v6 + 32) + 4 * v17);
      if (v74 != v73)
      {
        for (i = 0; i != v77; ++i)
        {
          v22 = *(a1 + 8) + 16 * i;
          v23 = *(v22 + 4);
          v24 = *(v22 + 8);
          v87 = 0u;
          v88 = 0u;
          C3DMeshSourceGetContent(v24, &v87);
          v28 = v87;
          v29 = BYTE4(v88);
          v30 = BYTE6(v88);
          v31 = BYTE8(v88);
          if (BYTE8(v88) >= 5u)
          {
            v32 = scn_default_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v90 = "srcContent.componentCount <= 4";
              v91 = 1024;
              v92 = v31;
              _os_log_fault_impl(&dword_21BEF7000, v32, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v33.i64 = C3DConvertFloatingTypeToFloat4(v29, (v28 + (v20 * v30)), v25, v26, v27);
          v35 = *&v33.i32[3];
          if (v31 <= 3)
          {
            v35 = 1.0;
          }

          if (v31)
          {
            v34.i32[0] = v33.i32[0];
          }

          else
          {
            *v34.i32 = 0.0;
          }

          if (v23)
          {
            v36 = 0;
            *v33.i8 = vand_s8(vext_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v31), 0x200000001));
            v37 = vextq_s8(vextq_s8(v34, v34, 4uLL), v33, 0xCuLL);
            *&v37.i32[3] = v35;
            v79 = v37;
            do
            {
              v83 = v79;
              *buf = *(&v83 & 0xFFFFFFFFFFFFFFF3 | (4 * (v36 & 3)));
              std::vector<float>::push_back[abi:nn200100]((a1 + 32), buf);
              ++v36;
            }

            while (v23 > v36);
          }
        }
      }

      if (v72 != v71)
      {
        v38 = 0;
        do
        {
          v39 = *(a1 + 64) + 16 * v38;
          v40 = *(v39 + 4);
          v41 = *(v39 + 8);
          v87 = 0u;
          v88 = 0u;
          C3DMeshSourceGetContent(v41, &v87);
          v45 = v87;
          v46 = BYTE4(v88);
          v47 = BYTE6(v88);
          v48 = BYTE8(v88);
          if (BYTE8(v88) >= 5u)
          {
            v49 = scn_default_log();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v90 = "srcContent.componentCount <= 4";
              v91 = 1024;
              v92 = v48;
              _os_log_fault_impl(&dword_21BEF7000, v49, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v50.i64 = C3DConvertFloatingTypeToFloat4(v46, (v45 + (v20 * v47)), v42, v43, v44);
          v52 = *&v50.i32[3];
          if (v48 <= 3)
          {
            v52 = 1.0;
          }

          if (v48)
          {
            v51.i32[0] = v50.i32[0];
          }

          else
          {
            *v51.i32 = 0.0;
          }

          if (v40)
          {
            v53 = 0;
            *v50.i8 = vand_s8(vext_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v48), 0x200000001));
            v54 = vextq_s8(vextq_s8(v51, v51, 4uLL), v50, 0xCuLL);
            *&v54.i32[3] = v52;
            v80 = v54;
            do
            {
              v82 = v80;
              *buf = *(&v82 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53 & 3)));
              std::vector<float>::push_back[abi:nn200100]((a1 + 88), buf);
              ++v53;
            }

            while (v40 > v53);
          }

          ++v38;
        }

        while (v38 != v19);
      }

      v6 = v76;
      v17 = v75 + 1;
    }

    while (v75 + 1 < *(v76 + 104));
  }

  v55 = *(a1 + 120) - *(a1 + 112);
  v81 = (v55 >> 6);
  if ((v55 >> 6))
  {
    if (!*(v6 + 196))
    {
      v56 = malloc_type_malloc((v55 >> 2) & 0xFF0, 0x105004037B82EA9uLL);
      v57 = (v56 + 8);
      v58 = v81;
      do
      {
        v59 = *(v6 + 208);
        *(v57 - 2) = v59;
        *v57 = malloc_type_malloc(4 * v59, 0x100004052888210uLL);
        v57 += 2;
        --v58;
      }

      while (v58);
      *(v6 + 196) = v81;
      *(v6 + 200) = v56;
    }

    v60 = 0;
    do
    {
      v61 = *(a1 + 112) + (v60 << 6);
      v63 = *(v61 + 16);
      v62 = *(v61 + 24);
      *buf = 0;
      ElementsCount = C3DMeshGetElementsCount(v78);
      if (ElementsCount >= 1)
      {
        v65 = ElementsCount;
        v66 = 0;
        v67 = (v62 - v63) >> 4;
        do
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(v78, v66, 0);
          Type = C3DMeshElementGetType(ElementAtIndex);
          if (C3DMeshElementTypeDefinesSurface(Type))
          {
            v84[0] = MEMORY[0x277D85DD0];
            v84[1] = 0x40000000;
            v84[2] = ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_19;
            v84[3] = &__block_descriptor_tmp_20_4;
            v84[4] = ElementAtIndex;
            v84[5] = v67;
            v84[6] = v61;
            v84[7] = v76;
            v85 = v60;
            v84[8] = buf;
            C3DMeshElementEnumeratePrimitiveIndicesByEvaluatingPrimitiveRanges(ElementAtIndex, v84);
          }

          ++v66;
        }

        while (v65 != v66);
      }

      if (*buf != *(v76 + 208))
      {
        v70 = scn_default_log();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivInitGPUPrimvarDescriptor(&v87, (&v87 + 4), v70);
        }
      }

      ++v60;
    }

    while (v60 != v81);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) != 2)
    {
      return;
    }
  }

  else if (a4)
  {
    return;
  }

  v34 = 0u;
  v35 = 0u;
  C3DMeshSourceGetContent(a2, &v34);
  if (v35 && C3DBaseTypeIsFloatingValue(BYTE4(v35)))
  {
    if (a3)
    {
      if (a3 == 3)
      {
        v10 = 2;
      }

      else if (a3 == 2)
      {
        v10 = 4;
      }

      else
      {
        v11 = scn_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1(a3, v11);
        }

        v10 = 0;
      }
    }

    else
    {
      v10 = 3;
    }

    PrimvarDataType = C3DSubdivSourceGetPrimvarDataType(*(a1 + 32), a2, a3, a4, 0);
    if (PrimvarDataType <= 1)
    {
      if (PrimvarDataType != 1)
      {
        ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_2(v33);
      }

      v13 = *(a1 + 40);
    }

    else if (PrimvarDataType == 2)
    {
      v13 = *(a1 + 40) + 56;
    }

    else
    {
      v14 = *(a1 + 40);
      v16 = *(v14 + 112);
      v17 = *(v14 + 120);
      v15 = (v14 + 112);
      while (1)
      {
        if (v16 == v17)
        {
          memset(v33, 0, sizeof(v33));
          std::vector<C3DSubdivGPUFVarPrimvarData>::emplace_back<C3DSubdivGPUFVarPrimvarData>(v15, v33);
          C3DSubdivGPUFVarPrimvarData::~C3DSubdivGPUFVarPrimvarData(v33);
          v18 = *(*(a1 + 40) + 120);
          *(v18 - 56) = 0;
          v13 = v18 - 56;
          *(v13 - 8) = a5;
          goto LABEL_28;
        }

        if (*v16 == a5)
        {
          break;
        }

        v16 += 64;
      }

      v13 = (v16 + 8);
    }

LABEL_28:
    v19 = *v13;
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v20 >= v21)
    {
      v23 = *(v13 + 8);
      v24 = (v20 - v23) >> 4;
      v25 = v24 + 1;
      if ((v24 + 1) >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v26 = v21 - v23;
      if (v26 >> 3 > v25)
      {
        v25 = v26 >> 3;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF0)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivGPUPrimvarInfo>>(v13 + 8, v27);
      }

      v28 = 16 * v24;
      *v28 = v19;
      *(v28 + 4) = v10;
      *(v28 + 8) = a2;
      v22 = 16 * v24 + 16;
      v29 = *(v13 + 8);
      v30 = *(v13 + 16) - v29;
      v31 = (16 * v24 - v30);
      memcpy(v31, v29, v30);
      v32 = *(v13 + 8);
      *(v13 + 8) = v31;
      *(v13 + 16) = v22;
      *(v13 + 24) = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      *v20 = v19;
      *(v20 + 4) = v10;
      v22 = v20 + 16;
      *(v20 + 8) = a2;
    }

    *(v13 + 16) = v22;
    *v13 += v10;
  }
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_19(uint64_t a1, unsigned int a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = a2;
  VertexCountForPrimitiveAtIndex = C3DMeshElementGetVertexCountForPrimitiveAtIndex(*(a1 + 32), a2);
  if (VertexCountForPrimitiveAtIndex >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 40);
    do
    {
      if (v4)
      {
        for (i = 0; i < v4; ++i)
        {
          Count = C3DMeshSourceGetCount(*(*(*(a1 + 48) + 16) + 16 * i + 8));
          v7 = 0x80000000;
          if (Count < 0x80000000)
          {
            v7 = Count;
          }

          v8 = v7 - 1;
          Index = C3DMeshElementGetIndex(*(a1 + 32), v29, v3, **(a1 + 48));
          if (Index >= v8)
          {
            v10 = v8;
          }

          else
          {
            v10 = Index;
          }

          *(*(*(*(a1 + 56) + 200) + 16 * *(a1 + 72) + 8) + 4 * **(a1 + 64)) = **(a1 + 64);
          v11 = *(*(a1 + 48) + 16) + 16 * i;
          v12 = *(v11 + 4);
          v13 = *(v11 + 8);
          v32 = 0u;
          v33 = 0u;
          C3DMeshSourceGetContent(v13, &v32);
          v17 = v32;
          v18 = BYTE4(v33);
          v19 = BYTE6(v33);
          v20 = BYTE8(v33);
          if (BYTE8(v33) >= 5u)
          {
            v21 = scn_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v35 = "srcContent.componentCount <= 4";
              v36 = 1024;
              v37 = v20;
              _os_log_fault_impl(&dword_21BEF7000, v21, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v22.i64 = C3DConvertFloatingTypeToFloat4(v18, (v17 + (v10 * v19)), v14, v15, v16);
          v24 = *&v22.i32[3];
          if (v20 <= 3)
          {
            v24 = 1.0;
          }

          if (v20)
          {
            v23.i32[0] = v22.i32[0];
          }

          else
          {
            *v23.i32 = 0.0;
          }

          if (v12)
          {
            v25 = 0;
            *v22.i8 = vand_s8(vext_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v20), 0x200000001));
            v26 = vextq_s8(vextq_s8(v23, v23, 4uLL), v22, 0xCuLL);
            *&v26.i32[3] = v24;
            v30 = v26;
            do
            {
              v27 = *(a1 + 48);
              v31 = v30;
              *buf = *(&v31 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
              std::vector<float>::push_back[abi:nn200100]((v27 + 40), buf);
              ++v25;
            }

            while (v12 > v25);
          }

          v4 = *(a1 + 40);
        }
      }

      ++**(a1 + 64);
      ++v3;
    }

    while (v3 != VertexCountForPrimitiveAtIndex);
  }
}