float __C3DCameraSetVignettingPower_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 476) = result;
  return result;
}

uint64_t C3DCameraGetWantsExposureAdaptation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 312) >> 2) & 1;
}

void C3DCameraSetWantsExposureAdaptation(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 312) = *(a1 + 312) & 0xFB | v12;
}

uint64_t C3DCameraGetWantsHDR(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 312) >> 1) & 1;
}

float C3DCameraGetWhitePoint(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 384);
}

void C3DCameraSetWhitePoint(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 384) = a2;
}

double C3DCameraGetXFov(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 272);
}

double C3DCameraGetYFov(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 280);
}

double C3DCameraGetZFar(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

double C3DCameraGetZNear(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

float C3DCameraGetFocalLength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 292);
}

float C3DCameraSetFocalLength(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 292) = a2;
  v12 = atan(*(a1 + 300) * 0.5 / a2);
  *&v12 = v12 + v12;
  result = *&v12 / 3.14159265 * 180.0;
  *(a1 + 120) = result;
  *(a1 + 64) &= ~0x10u;
  return result;
}

float C3DCameraGetFov(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

float C3DCameraSetFov(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 120) = a2;
  *(a1 + 64) &= ~0x10u;
  v12 = a2 / 180.0 * 3.14159265;
  v13 = *(a1 + 300) * 0.5;
  result = v13 / tanf(v12 * 0.5);
  *(a1 + 292) = result;
  return result;
}

float C3DCameraGetAspectRatio(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

double C3DCameraSetAspectRatio(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = a2;
  *(a1 + 128) = a2;
  *(a1 + 64) &= ~0x10u;
  return result;
}

float C3DCameraGetFocusDistance(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 288);
}

void C3DCameraSetFocusDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 288) = a2;
}

double C3DCameraGetLensShift(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

void C3DCameraSetLensShift(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = a2;
}

double C3DCameraGetPostProjectionTransformTranslation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

void C3DCameraSetPostProjectionTransformTranslation(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 96) = a2;
}

double C3DCameraGetPostProjectionTransformScale(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

void C3DCameraSetPostProjectionTransformScale(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 104) = a2;
}

float C3DCameraGetAperture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 300) / *(a1 + 296);
}

float C3DCameraGetFStop(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 296);
}

uint64_t C3DCameraGetBladeCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 304);
}

uint64_t C3DCameraGetDofSampleCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 308);
}

void C3DCameraSetFStop(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 296) = a2;
}

void C3DCameraSetBladeCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 304) = a2;
}

void C3DCameraSetDofSampleCount(_DWORD *a1, int a2)
{
  values = a1;
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[77] != a2)
  {
    a1[77] = a2;
    v12 = CFDictionaryCreate(0, kC3DCameraKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    v14 = C3DGetScene(values);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v14, v12, 1u);
    CFRelease(v12);
  }
}

float C3DCameraGetSensorSize(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 300);
}

float C3DCameraSetSensorSize(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 0.0001;
  if (a2 >= 0.0001)
  {
    v12 = a2;
  }

  *(a1 + 300) = v12;
  *(a1 + 64) &= ~0x10u;
  v13 = *(a1 + 120) / 180.0 * 3.14159265;
  result = v12 * 0.5 / tanf(v13 * 0.5);
  *(a1 + 292) = result;
  return result;
}

uint64_t C3DCameraGetFovIsHorizontal(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 64) >> 5) & 1;
}

void C3DCameraSetFovHorizontal(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 64) = *(a1 + 64) & 0xDF | v12;
}

uint64_t C3DCameraGetLetterboxMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 312) >> 3) & 1;
}

void C3DCameraSetLetterboxMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 312) = *(a1 + 312) & 0xF7 | v12;
  if (a2)
  {
    v13 = 64;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 64) = *(a1 + 64) & 0xAF | v13;
}

void C3DCameraGetEffectiveFovForAspectRatio(uint64_t a1, float *a2, float *a3, float a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a1 + 272);
  v17 = *(a1 + 280);
  if (v16 == 0.0)
  {
    v19 = v17;
    if (v17 == 0.0)
    {
      v19 = 60.0;
    }

    *a2 = v19 * a4;
  }

  else if (v17 == 0.0)
  {
    v18 = v16;
    *a2 = v18;
    v19 = v16 / a4;
  }

  else
  {
    v20 = tan(v16 / 180.0 * 3.14159265);
    v21 = v20 / tan(v17 / 180.0 * 3.14159265);
    v22 = a4;
    if (v21 <= a4)
    {
      v16 = v17 * v22;
    }

    else
    {
      v17 = v16 / v22;
    }

    v23 = v16;
    *a2 = v23;
    v19 = v17;
  }

  *a3 = v19;
}

void C3DCameraSetOrthographicScale(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 112) = a2;
  *(a1 + 64) &= ~8u;
}

void C3DCameraSetUsesOrthographicProjection(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 64) = *(a1 + 64) & 0xF6 | a2;
}

void C3DCameraSetXFov(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 272) = a2;
  *(a1 + 64) = *(a1 + 64) & 0xE7 | 0x10;
}

void C3DCameraSetYFov(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 280) = a2;
  *(a1 + 64) = *(a1 + 64) & 0xE7 | 0x10;
}

void C3DCameraSetZFar(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 80) = a2;
  *(a1 + 64) &= ~8u;
}

void C3DProjectionInfosSetZFar(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 16) = a2;
  *a1 &= ~8u;
}

void C3DCameraSetZNear(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 == 0.0 && (*(a1 + 64) & 1) == 0)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_INFO, "Info: invalid zNear value (0) set to camera", v13, 2u);
    }
  }

  *(a1 + 72) = a2;
  *(a1 + 64) &= ~8u;
}

void C3DProjectionInfosSetZNear(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 8) = a2;
  *a1 &= ~8u;
}

void C3DCameraSetTechnique(void *a1, CFTypeRef cf)
{
  values = a1;
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[67];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[67] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[67] = v13;
    v14 = CFDictionaryCreate(0, kC3DCameraKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    v16 = C3DGetScene(values);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v16, v14, 1u);
    CFRelease(v14);
  }
}

uint64_t C3DCameraGetTechnique(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 536);
}

double C3DProjectionInfosGetXFov(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

double C3DProjectionInfosGetYFov(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

double C3DProjectionInfosGetEffectiveFov(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*a1 & 0x10) == 0)
  {
    return *(a1 + 56);
  }

  v11 = 208;
  if ((*a1 & 0x20) == 0)
  {
    v11 = 216;
  }

  return *(a1 + v11);
}

double C3DProjectionInfosGetZNear(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 8);
}

double C3DProjectionInfosGetZFar(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

double C3DProjectionInfosGetOrthographicScale(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

uint64_t C3DProjectionInfosGetOrtho(_BYTE *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *a1 & 1;
}

char *C3DProjectionInfosGetMatrix(char *a1, int8x16_t *a2, char a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *a1;
  if ((*a1 & 8) == 0)
  {
    if ((*a1 & 1) == 0)
    {
      if ((*a1 & 0x10) != 0)
      {
        v48 = *(a1 + 26);
        v49 = 1.0;
        if (a2)
        {
          LODWORD(v50) = HIDWORD(*a2);
          if (v50 != 0.0)
          {
            v49 = (COERCE_FLOAT(a2->i64[1]) / v50);
          }
        }

        if (v48 == 0.0 && *(a1 + 27) == 0.0)
        {
          v52 = 60.0;
        }

        else
        {
          v52 = *(a1 + 27);
        }

        if (v48 != 0.0 && v52 != 0.0)
        {
          v53 = tan(v48 / 180.0 * 3.14159265);
          if (v53 / tan(v52 / 180.0 * 3.14159265) > v49)
          {
            v52 = 0.0;
          }

          else
          {
            v48 = 0.0;
          }
        }

        v54 = *(a1 + 1);
        if (*(a1 + 2) > v54)
        {
          v55 = *(a1 + 2);
        }

        else
        {
          v55 = v54 + 1.0;
        }

        if (v52 == 0.0)
        {
          v56 = v48;
        }

        else
        {
          v56 = v52;
        }

        v57 = __tanpi(v56 / 360.0);
        if (v57 == 0.0)
        {
          v58 = 1.0;
        }

        else
        {
          v58 = 1.0 / v57;
        }

        if (v48 == 0.0)
        {
          v59 = v52;
        }

        else
        {
          v59 = v48;
        }

        v60 = __tanpi(v59 / 360.0);
        if (v60 == 0.0)
        {
          v61 = 1.0;
        }

        else
        {
          v61 = 1.0 / v60;
        }

        v62 = v61;
        LODWORD(v64) = 0;
        *(&v64 + 1) = 0;
        v63 = v58;
        *(&v64 + 1) = v63;
        v65 = v54 - v55;
        if (a3)
        {
          v34.f64[0] = 0.0;
          *&v76 = v55 / (v54 - v55);
          *&v34.f64[1] = __PAIR64__(-1.0, v76);
        }

        else
        {
          *&v66 = (v54 + v55) / (v54 - v55);
          v34.f64[0] = 0.0;
          *&v34.f64[1] = __PAIR64__(-1.0, v66);
          v55 = v55 + v55;
        }

        *&v77 = v54 * v55 / v65;
        *&_Q1 = 0;
        *(&_Q1 + 1) = v77;
        *(a1 + 5) = LODWORD(v62);
        *(a1 + 6) = v64;
        *(a1 + 7) = v34;
        *(a1 + 8) = _Q1;
        if (v48 == 0.0)
        {
          v78 = v62 / v49;
          goto LABEL_90;
        }

        v93 = v49 * v63;
LABEL_93:
        v98 = v93;
        *(a1 + 25) = v98;
        if ((a3 & 8) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_94;
      }

      if (a2 && (v15 = *(a1 + 24), v16 = vmvn_s8(vceqz_f32(v15)), (vpmax_u32(v16, v16).u32[0] & 0x80000000) != 0))
      {
        v17 = *(a1 + 14) / 180.0 * 3.14159265 * 0.5;
        v18 = *(a1 + 1);
        v19 = v18 * tanf(v17);
        v20 = vdiv_f32(vadd_f32(v15, v15), *&vextq_s8(*a2, *a2, 8uLL));
        v21 = *(a1 + 2);
        if (v21 <= v18)
        {
          v21 = v18 + 1.0;
        }

        v22 = v18 + v18;
        __asm { FMOV            V5.2S, #1.0 }

        v27 = vmul_n_f32(vadd_f32(v20, _D5), -v19);
        v28 = vmul_n_f32(vsub_f32(_D5, v20), v19);
        v29 = vcvtq_f64_f32(v27);
        v34 = vcvtq_f64_f32(v28);
        v30 = vsubq_f64(v34, v29);
        v31 = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(v18 + v18), 0), v30));
        *&_Q1 = 0;
        HIDWORD(_Q1) = 0;
        LODWORD(v33) = 0;
        *(&v33 + 1) = 0;
        DWORD1(v33) = v31.i32[1];
        *&v34.f64[0] = vcvt_f32_f64(vdivq_f64(vaddq_f64(v34, v29), v30));
        v35 = v18 + v21;
        if (a3)
        {
          v35 = v21;
        }

        *&v36 = v35 / (v18 - v21);
        *&v34.f64[1] = __PAIR64__(-1.0, v36);
        if (a3)
        {
          v22 = v18;
        }

        v37 = v22 * v21 / (v18 - v21);
        *(&_Q1 + 2) = v37;
        *(a1 + 5) = v31.u32[0];
        *(a1 + 6) = v33;
        *(a1 + 7) = v34;
        *(a1 + 8) = _Q1;
        v38 = *(a1 + 8);
      }

      else
      {
        v68 = *(a1 + 1);
        if (*(a1 + 2) > v68)
        {
          v69 = *(a1 + 2);
        }

        else
        {
          v69 = v68 + 1.0;
        }

        v70 = __tanpi(*(a1 + 14) / 360.0);
        if (v70 == 0.0)
        {
          v72 = 1.0;
        }

        else
        {
          v72 = 1.0 / v70;
        }

        *v71.i32 = v72;
        LODWORD(v73) = 0;
        *(&v73 + 1) = 0;
        DWORD1(v73) = v71.i32[0];
        v74 = v68 - v69;
        if (a3)
        {
          v34.f64[0] = 0.0;
          *&v94 = v69 / (v68 - v69);
          *&v34.f64[1] = __PAIR64__(-1.0, v94);
        }

        else
        {
          *&v75 = (v68 + v69) / (v68 - v69);
          v34.f64[0] = 0.0;
          *&v34.f64[1] = __PAIR64__(-1.0, v75);
          v68 = v68 + v68;
        }

        *&v95 = v68 * v69 / v74;
        *&_Q1 = 0;
        *(&_Q1 + 1) = v95;
        *(a1 + 5) = v71.u32[0];
        *(a1 + 6) = v73;
        *(a1 + 7) = v34;
        *(a1 + 8) = _Q1;
        v38 = *(a1 + 8);
        v31 = vdup_lane_s32(v71, 0);
        if (!a2)
        {
          goto LABEL_88;
        }
      }

      LODWORD(v96) = HIDWORD(*a2);
      if (v96 != 0.0)
      {
        v38 = (COERCE_FLOAT(a2->i64[1]) / v96);
      }

LABEL_88:
      if ((v14 & 0x20) == 0)
      {
        v78 = v31.f32[0] / v38;
LABEL_90:
        v97 = v78;
        *(a1 + 20) = v97;
        if ((a3 & 8) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_94;
      }

      v93 = v38 * v31.f32[1];
      goto LABEL_93;
    }

    v41 = *(a1 + 6);
    if (!a2)
    {
      v67 = *(a1 + 6);
      goto LABEL_75;
    }

    LODWORD(v42) = HIDWORD(*a2);
    if (v42 == 0.0)
    {
      v43 = 1.0;
      if (C3DWasLinkedBeforeMajorOSYear2017())
      {
        goto LABEL_73;
      }
    }

    else
    {
      v43 = COERCE_FLOAT(a2->i64[1]) / v42;
      if (C3DWasLinkedBeforeMajorOSYear2017())
      {
        if (v43 <= 1.0)
        {
LABEL_73:
          v79 = v43;
          goto LABEL_74;
        }

        v79 = v43;
LABEL_72:
        v67 = v41;
        v41 = v41 * v79;
        goto LABEL_75;
      }
    }

    v79 = v43;
    if ((*a1 & 0x20) != 0)
    {
LABEL_74:
      v67 = v41 / v79;
LABEL_75:
      v80 = *(a1 + 1);
      if (*(a1 + 2) > v80)
      {
        v81 = *(a1 + 2);
      }

      else
      {
        v81 = v80 + 1.0;
      }

      *&v82 = 2.0 / (v41 + v41);
      v34.f64[0] = 0.0;
      HIDWORD(v34.f64[1]) = 0;
      v83 = v82;
      v84 = 2.0 / (v67 + v67);
      LODWORD(v85) = 0;
      *(&v85 + 1) = 0;
      *(&v85 + 1) = v84;
      v86 = v80 - v81;
      v88 = -(v67 - v67) / (v67 + v67);
      if (a3)
      {
        v91 = 1.0 / v86;
        *&v34.f64[1] = v91;
        v90 = v80 / v86;
      }

      else
      {
        v89 = 2.0 / v86;
        *&v34.f64[1] = v89;
        v90 = (v80 + v81) / v86;
      }

      v92 = v90;
      __asm { FMOV            V1.4S, #1.0 }

      *&v87 = -(v41 - v41) / (v41 + v41);
      *&_Q1 = __PAIR64__(LODWORD(v88), v87);
      *(&_Q1 + 2) = v92;
      *(a1 + 5) = v83;
      *(a1 + 6) = v85;
      *(a1 + 7) = v34;
      *(a1 + 8) = _Q1;
      if ((a3 & 8) == 0)
      {
LABEL_97:
        v102.i64[0] = *(a1 + 4);
        v103 = *(a1 + 40);
        v104 = vmvn_s8(vceqz_f32(*v102.f32));
        if ((vpmax_u32(v104, v104).u32[0] & 0x80000000) != 0)
        {
          goto LABEL_99;
        }

        __asm { FMOV            V3.2S, #1.0 }

        v106 = vmvn_s8(vceq_f32(v103, _D3));
        if ((vpmax_u32(v106, v106).u32[0] & 0x80000000) != 0)
        {
LABEL_99:
          v107 = 0;
          v108.i32[0] = 0;
          v108.i32[3] = 0;
          *(v108.i64 + 4) = HIDWORD(*(a1 + 5));
          v102.i32[2] = 0;
          v102.i32[3] = 1.0;
          v109 = *(a1 + 6);
          v114 = *(a1 + 5);
          v115 = v109;
          v116 = v34;
          v117 = _Q1;
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          do
          {
            *(&v118 + v107) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.u32[0], COERCE_FLOAT(*(&v114 + v107))), v108, *(&v114 + v107), 1), xmmword_21C27F600, *(&v114 + v107), 2), v102, *(&v114 + v107), 3);
            v107 += 16;
          }

          while (v107 != 64);
LABEL_101:
          v110 = v119;
          v111 = v120;
          v112 = v121;
          *(a1 + 5) = v118;
          *(a1 + 6) = v110;
          *(a1 + 7) = v111;
          *(a1 + 8) = v112;
          return a1 + 80;
        }

        return a1 + 80;
      }

LABEL_94:
      v99 = 0;
      v100 = *(a1 + 6);
      v114 = *(a1 + 5);
      v115 = v100;
      v116 = v34;
      v117 = _Q1;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      do
      {
        *(&v118 + v99) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v114 + v99))), xmmword_21C27F8C0, *(&v114 + v99), 1), xmmword_21C27F900, *(&v114 + v99), 2), xmmword_21C27FDD0, *(&v114 + v99), 3);
        v99 += 16;
      }

      while (v99 != 64);
      v101 = v119;
      v34 = v120;
      _Q1 = v121;
      *(a1 + 5) = v118;
      *(a1 + 6) = v101;
      *(a1 + 7) = v34;
      *(a1 + 8) = _Q1;
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if ((a3 & 8) != 0)
  {
    v44 = 0;
    v45 = *(a1 + 10);
    v46 = *(a1 + 11);
    v47 = *(a1 + 12);
    v114 = *(a1 + 9);
    v115 = v45;
    v116 = v46;
    v117 = v47;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    do
    {
      *(&v118 + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v114 + v44))), xmmword_21C27F8C0, *(&v114 + v44), 1), xmmword_21C27F900, *(&v114 + v44), 2), xmmword_21C27FDD0, *(&v114 + v44), 3);
      v44 += 16;
    }

    while (v44 != 64);
    goto LABEL_101;
  }

  v39 = *(a1 + 10);
  *(a1 + 5) = *(a1 + 9);
  *(a1 + 6) = v39;
  v40 = *(a1 + 12);
  *(a1 + 7) = *(a1 + 11);
  *(a1 + 8) = v40;
  return a1 + 80;
}

uint64_t C3DProjectionInfosUnproject(uint64_t a1, __int128 *a2, int a3, char a4, float32x4_t *a5, int8x16_t a6)
{
  LODWORD(v8) = a3;
  v57 = a6;
  if ((a4 & 8) != 0 || (v11 = *a1, (*a1 & 0x19) != 0))
  {
    v58 = *C3DProjectionInfosGetMatrix(a1, &v57, a4);
    v59 = __invert_f4(v58);
    v50 = v59.columns[1];
    v51 = v59.columns[0];
    v48 = v59.columns[3];
    v49 = v59.columns[2];
    if (*&v57.i32[2] == 0.0 || *&v57.i32[3] == 0.0)
    {
      v43 = scn_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        C3DProjectionInfosUnproject_cold_1(v43);
      }

      return 0;
    }

    v32 = 1;
    if (!v8)
    {
      return v32;
    }

    v34 = a2 + 2;
    v8 = v8;
    LODWORD(v33) = 1.0;
    while (1)
    {
      v35 = *(v34 - 2);
      v36 = v57;
      if ((a4 & 8) != 0)
      {
        v45 = *(v34 - 2);
        v46 = v57;
        v53 = v33;
        v38 = C3DWasLinkedBeforeMajorOSYear2021();
        v37 = *v34;
        if ((v38 & 1) == 0)
        {
          v39 = 1.0 - v37;
          v33 = v53;
          *&v35 = v45;
          v36 = v46;
          goto LABEL_22;
        }

        v33 = v53;
        *&v35 = v45;
        v36 = v46;
      }

      else
      {
        LODWORD(v37) = *v34;
      }

      v39 = (v37 * 2.0) + -1.0;
LABEL_22:
      v40 = vaddq_f32(v48, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v50, (((*(&v35 + 1) - *&v36.i32[1]) + (*(&v35 + 1) - *&v36.i32[1])) / *&v36.i32[3]) + -1.0), v51, (((*&v35 - *v36.i32) + (*&v35 - *v36.i32)) / *&v36.i32[2]) + -1.0), v49, v39));
      if (v40.f32[3] == 0.0)
      {
        if ((C3DProjectionInfosUnproject_done & 1) == 0)
        {
          v47 = v40;
          v54 = v33;
          C3DProjectionInfosUnproject_done = 1;
          v41 = scn_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            C3DProjectionInfosUnproject_cold_2(&buf, v56, v41);
          }

          v33 = v54;
          v40 = v47;
        }
      }

      else
      {
        *&v33 = 1.0 / v40.f32[3];
      }

      v42 = vmulq_n_f32(v40, *&v33);
      v42.i32[2] = vmuls_lane_f32(*&v33, v40, 2);
      *a5++ = v42;
      v34 += 4;
      if (!--v8)
      {
        return 1;
      }
    }
  }

  v13 = *(a1 + 56) / 180.0 * 3.14159265;
  v52 = a6;
  v14 = tanf(v13 * 0.5);
  if ((v11 & 0x20) != 0)
  {
    v15.f32[0] = v14;
  }

  else
  {
    v15.f32[0] = (*&v52.i32[2] / *&v52.i32[3]) * v14;
  }

  if ((v11 & 0x20) != 0)
  {
    v14 = v14 / (*&v52.i32[2] / *&v52.i32[3]);
  }

  if (v8)
  {
    v15.f32[1] = v14;
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    v18 = v16 * v17;
    _S3 = v16 - v17;
    v20 = v8;
    v21 = vextq_s8(v52, v52, 8uLL).u64[0];
    __asm { FMOV            V5.2S, #-1.0 }

    do
    {
      v27 = *a2++;
      _Q6.i64[1] = *(&v27 + 1);
      __asm { FMLA            S7, S3, V6.S[2] }

      v30 = v18 / _S7;
      v31 = vsub_f32(*&v27, *v52.i8);
      *_Q6.f32 = vmul_n_f32(vmul_f32(v15, vadd_f32(vdiv_f32(vadd_f32(v31, v31), v21), _D5)), v30);
      _Q6.f32[2] = -v30;
      *a5++ = _Q6;
      --v20;
    }

    while (v20);
  }

  return 1;
}

uint64_t C3DCameraGetProjectionInfosPtr(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 64;
}

void _C3DCameraCFFinalize(void *a1)
{
  C3DEntityCFFinalize(a1);
  v2 = a1[65];
  if (v2)
  {
    CFRelease(v2);
    a1[65] = 0;
  }

  v3 = a1[67];
  if (v3)
  {
    CFRelease(v3);
    a1[67] = 0;
  }

  v4 = a1[68];
  if (v4)
  {
    CFRelease(v4);
    a1[68] = 0;
  }
}

CFStringRef _C3DCameraCFCopyDebugDescription(_BYTE *cf)
{
  v2 = cf[64];
  if ((v2 & 8) != 0)
  {
    v15 = *(cf + 15);
    v16 = *(cf + 16);
    v13 = *(cf + 13);
    v14 = *(cf + 14);
    v11 = CFGetAllocator(cf);
    Name = C3DEntityGetName(cf);
    return CFStringCreateWithFormat(v11, 0, @"<C3DCamera:%p %@ custom, [%.3f %.3f %.3f %.3f ; %.3f %.3f %.3f %.3f ; %.3f %.3f %.3f %.3f ; %.3f %.3f %.3f %.3f]>", cf, Name, *&v13, *(&v13 + 1), *(&v13 + 2), *(&v13 + 3), *&v14, *(&v14 + 1), *(&v14 + 2), *(&v14 + 3), *&v15, *(&v15 + 1), *(&v15 + 2), *(&v15 + 3), *&v16, *(&v16 + 1), *(&v16 + 2), *(&v16 + 3));
  }

  else
  {
    v3 = *(cf + 9);
    v4 = *(cf + 10);
    v5 = *(cf + 14);
    v6 = *(cf + 30);
    v7 = CFGetAllocator(cf);
    v8 = C3DEntityGetName(cf);
    if (v2)
    {
      return CFStringCreateWithFormat(v7, 0, @"<C3DCamera:%p %@ ortho, near:%.3f far:%.3f scale: %.3f>", cf, v8, v3, v4, v5);
    }

    else
    {
      v9 = "horizontal";
      if ((v2 & 0x20) == 0)
      {
        v9 = "vertical";
      }

      return CFStringCreateWithFormat(v7, 0, @"<C3DCamera:%p %@ persp, near:%.3f far:%.3f %s-fov:%.3f>", cf, v8, v3, v4, v9, v6);
    }
  }
}

float _C3DCameraSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 448) == __dst)
  {
    v7 = *__src;

    C3DCameraSetDepthOfFieldIntensity(a1, v7);
  }

  else if ((a1 + 472) == __dst)
  {
    v8 = *__src;

    C3DCameraSetMotionBlurIntensity(a1, v8);
  }

  else if ((a1 + 120) == __dst)
  {
    v9 = *__src;

    return C3DCameraSetFov(a1, v9);
  }

  else if ((a1 + 272) == __dst)
  {
    v10 = *__src;

    C3DCameraSetXFov(a1, v10);
  }

  else if ((a1 + 280) == __dst)
  {
    v11 = *__src;

    C3DCameraSetYFov(a1, v11);
  }

  else
  {
    if (a1 + 448 > __dst || a1 + 480 < __dst)
    {
      memcpy(__dst, __src, __n);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = ___C3DCameraSetValue_block_invoke;
      v14[3] = &__block_descriptor_tmp_169;
      v14[4] = __dst;
      v14[5] = __src;
      v14[6] = __n;
      __invalidatePassIfNeeded(a1, v14);
    }

    if ((a1 + 300) == __dst || (a1 + 292) == __dst)
    {
      v12 = *(a1 + 64) & 0xEF;
      v13 = atan(*(a1 + 300) * 0.5 / *(a1 + 292));
      *&v13 = v13 + v13;
      result = *&v13 / 3.14159265 * 180.0;
      *(a1 + 120) = result;
      *(a1 + 64) = v12;
    }
  }

  return result;
}

uint64_t _C3DCameraInitWithPropertyList(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DEntityInitWithPropertyList(a1, a2);
  if (v12)
  {
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    Value = CFDictionaryGetValue(a2, @"ortho");
    if (Value)
    {
      v56[0] = 0.0;
      CFNumberGetValue(Value, kCFNumberIntType, v56);
      v14 = *(a1 + 64) & 0xFE;
      if (LODWORD(v56[0]))
      {
        ++v14;
      }

      *(a1 + 64) = v14;
    }

    v15 = CFDictionaryGetValue(a2, @"letterbox");
    if (v15)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v15, kCFNumberIntType, v56);
      *(a1 + 64) = *(a1 + 64) & 0xBF | ((LODWORD(v56[0]) != 0) << 6);
    }

    v16 = CFDictionaryGetValue(a2, @"fovHorizontal");
    if (v16)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v16, kCFNumberIntType, v56);
      *(a1 + 64) = *(a1 + 64) & 0xDF | (32 * (LODWORD(v56[0]) != 0));
    }

    v17 = CFDictionaryGetValue(a2, @"customProj");
    if (v17)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v17, kCFNumberIntType, v56);
      *(a1 + 64) = *(a1 + 64) & 0xF7 | (8 * (LODWORD(v56[0]) != 0));
    }

    v18 = CFDictionaryGetValue(a2, @"autoZRange");
    if (v18)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v18, kCFNumberIntType, v56);
      *(a1 + 64) = *(a1 + 64) & 0xFD | (2 * (LODWORD(v56[0]) != 0));
    }

    v19 = CFDictionaryGetValue(a2, @"xfov");
    if (v19)
    {
      *v56 = 0;
      CFNumberGetValue(v19, kCFNumberDoubleType, v56);
      *(a1 + 272) = *v56;
    }

    v20 = CFDictionaryGetValue(a2, @"yfov");
    if (v20)
    {
      *v56 = 0;
      CFNumberGetValue(v20, kCFNumberDoubleType, v56);
      *(a1 + 280) = *v56;
    }

    v21 = CFDictionaryGetValue(a2, @"xMag");
    if (v21)
    {
      *v56 = 0;
      CFNumberGetValue(v21, kCFNumberDoubleType, v56);
      *(a1 + 112) = *v56;
    }

    v22 = CFDictionaryGetValue(a2, @"znear");
    if (v22)
    {
      *v56 = 0;
      CFNumberGetValue(v22, kCFNumberDoubleType, v56);
      *(a1 + 72) = *v56;
    }

    v23 = CFDictionaryGetValue(a2, @"zfar");
    if (v23)
    {
      *v56 = 0;
      CFNumberGetValue(v23, kCFNumberDoubleType, v56);
      *(a1 + 80) = *v56;
    }

    v24 = CFDictionaryGetValue(a2, @"aspectRatio");
    if (v24)
    {
      *v56 = 0;
      CFNumberGetValue(v24, kCFNumberDoubleType, v56);
      *(a1 + 128) = *v56;
    }

    v25 = CFDictionaryGetValue(a2, @"focusDistance");
    if (v25)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v25, kCFNumberFloatType, v56);
      *(a1 + 288) = v56[0];
    }

    v26 = CFDictionaryGetValue(a2, @"fstop");
    if (v26)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v26, kCFNumberFloatType, v56);
      *(a1 + 296) = v56[0];
    }

    v27 = CFDictionaryGetValue(a2, @"bladeCount");
    if (v27)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v27, kCFNumberIntType, v56);
      *(a1 + 304) = v56[0];
    }

    v28 = CFDictionaryGetValue(a2, @"dofSampleCount");
    if (v28)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v28, kCFNumberIntType, v56);
      *(a1 + 308) = v56[0];
    }

    v29 = CFDictionaryGetValue(a2, @"sensorSize");
    if (v29)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v29, kCFNumberFloatType, v56);
      *(a1 + 300) = v56[0];
    }

    v30 = CFDictionaryGetValue(a2, @"dofIntensity");
    if (v30)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v30, kCFNumberFloatType, v56);
      *(a1 + 448) = v56[0];
    }

    v31 = CFDictionaryGetValue(a2, @"category");
    if (v31)
    {
      *v56 = 0;
      CFNumberGetValue(v31, kCFNumberNSIntegerType, v56);
      *(a1 + 528) = *v56;
    }

    v32 = CFDictionaryGetValue(a2, @"whitePoint");
    if (v32)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v32, kCFNumberFloatType, v56);
      *(a1 + 384) = v56[0];
    }

    v33 = CFDictionaryGetValue(a2, @"averageGray");
    if (v33)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v33, kCFNumberFloatType, v56);
      *(a1 + 388) = v56[0];
    }

    v34 = CFDictionaryGetValue(a2, @"exposureAdaptationDuration");
    if (v34)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v34, kCFNumberFloatType, v56);
      *(a1 + 396) = v56[0];
    }

    v35 = CFDictionaryGetValue(a2, @"exposureAdaptationBrighteningSpeedFactor");
    if (v35)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v35, kCFNumberFloatType, v56);
      *(a1 + 400) = v56[0];
    }

    v36 = CFDictionaryGetValue(a2, @"exposureAdaptationDarkeningSpeedFactor");
    if (v36)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v36, kCFNumberFloatType, v56);
      *(a1 + 404) = v56[0];
    }

    v37 = CFDictionaryGetValue(a2, @"minimumExposure");
    if (v37)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v37, kCFNumberFloatType, v56);
      *(a1 + 416) = v56[0];
    }

    v38 = CFDictionaryGetValue(a2, @"maximumExposure");
    if (v38)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v38, kCFNumberFloatType, v56);
      *(a1 + 420) = v56[0];
    }

    v39 = CFDictionaryGetValue(a2, @"bloomIntensity");
    if (v39)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v39, kCFNumberFloatType, v56);
      *(a1 + 424) = v56[0];
    }

    v40 = CFDictionaryGetValue(a2, @"bloomThreshold");
    if (v40)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v40, kCFNumberFloatType, v56);
      *(a1 + 428) = v56[0];
    }

    v41 = CFDictionaryGetValue(a2, @"bloomIteration");
    if (v41)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v41, kCFNumberIntType, v56);
      *(a1 + 432) = v56[0];
    }

    v42 = CFDictionaryGetValue(a2, @"bloomIterationSpread");
    if (v42)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v42, kCFNumberFloatType, v56);
      *(a1 + 432) = v56[0];
    }

    v43 = CFDictionaryGetValue(a2, @"bloomBlurRadius");
    if (v43)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v43, kCFNumberFloatType, v56);
      *(a1 + 440) = v56[0];
    }

    v44 = CFDictionaryGetValue(a2, @"motionBlurIntensity");
    if (v44)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v44, kCFNumberFloatType, v56);
      *(a1 + 472) = v56[0];
    }

    v45 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionIntensity");
    if (v45)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v45, kCFNumberFloatType, v56);
      *(a1 + 492) = v56[0];
    }

    v46 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionRadius");
    if (v46)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v46, kCFNumberFloatType, v56);
      *(a1 + 496) = v56[0];
    }

    v47 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionBias");
    if (v47)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v47, kCFNumberFloatType, v56);
      *(a1 + 500) = v56[0];
    }

    v48 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionDepthThreshold");
    if (v48)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v48, kCFNumberFloatType, v56);
      *(a1 + 504) = v56[0];
    }

    v49 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionNormalThreshold");
    if (v49)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v49, kCFNumberFloatType, v56);
      *(a1 + 508) = v56[0];
    }

    v50 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionSampleCount");
    if (v50)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v50, kCFNumberIntType, v56);
      *(a1 + 512) = v56[0];
    }

    v51 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionDownSample");
    if (v51)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v51, kCFNumberIntType, v56);
      *(a1 + 516) = v56[0];
    }

    *(a1 + 64) |= 0x10u;
    v52 = CFDictionaryGetValue(a2, @"fov");
    if (v52)
    {
      v56[0] = 0.0;
      CFNumberGetValue(v52, kCFNumberFloatType, v56);
      C3DCameraSetFov(a1, v56[0]);
    }

    if (*(a1 + 72) == 0.0 && (*(a1 + 64) & 1) == 0)
    {
      v53 = scn_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        LOWORD(v56[0]) = 0;
        _os_log_impl(&dword_21BEF7000, v53, OS_LOG_TYPE_INFO, "Info: loaded camera has an invalid zNear value (0)", v56, 2u);
      }
    }
  }

  else
  {
    v54 = scn_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      _C3DCameraInitWithPropertyList_cold_2(v54);
    }
  }

  return v12;
}

__CFDictionary *_C3DCameraCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v14)
  {
    LODWORD(valuePtr) = *(a1 + 64) & 1;
    v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"ortho", v15);
    CFRelease(v15);
    LODWORD(valuePtr) = (*(a1 + 312) >> 3) & 1;
    v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"letterbox", v16);
    CFRelease(v16);
    LODWORD(valuePtr) = (*(a1 + 64) >> 5) & 1;
    v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"fovHorizontal", v17);
    CFRelease(v17);
    LODWORD(valuePtr) = (*(a1 + 64) >> 1) & 1;
    v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"autoZRange", v18);
    CFRelease(v18);
    LODWORD(valuePtr) = (*(a1 + 64) >> 3) & 1;
    v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"customProj", v19);
    CFRelease(v19);
    if ((*(a1 + 64) & 0x10) != 0)
    {
      if (*(a1 + 272) != 0.0)
      {
        valuePtr = *(a1 + 272);
        v23 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        CFDictionaryAddValue(v14, @"xfov", v23);
        CFRelease(v23);
      }

      if (*(a1 + 280) != 0.0)
      {
        valuePtr = *(a1 + 280);
        v24 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        CFDictionaryAddValue(v14, @"yfov", v24);
        CFRelease(v24);
      }
    }

    else
    {
      LODWORD(valuePtr) = *(a1 + 120);
      v20 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(v14, @"fov", v20);
      CFRelease(v20);
      LODWORD(valuePtr) = (*(a1 + 64) >> 5) & 1;
      v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v14, @"fovHorizontal", v21);
      CFRelease(v21);
      Value = CFDictionaryGetValue(v14, @"sensorSize");
      if (Value)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
        *(a1 + 300) = valuePtr;
      }
    }

    valuePtr = *(a1 + 112);
    v25 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v14, @"xMag", v25);
    CFRelease(v25);
    valuePtr = *(a1 + 72);
    v26 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v14, @"znear", v26);
    CFRelease(v26);
    valuePtr = *(a1 + 80);
    v27 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v14, @"zfar", v27);
    CFRelease(v27);
    valuePtr = *(a1 + 128);
    v28 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v14, @"aspectRatio", v28);
    CFRelease(v28);
    LODWORD(valuePtr) = *(a1 + 296);
    v29 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"fstop", v29);
    CFRelease(v29);
    LODWORD(valuePtr) = *(a1 + 304);
    v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"bladeCount", v30);
    CFRelease(v30);
    LODWORD(valuePtr) = *(a1 + 308);
    v31 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"dofSampleCount", v31);
    CFRelease(v31);
    LODWORD(valuePtr) = *(a1 + 288);
    v32 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"focusDistance", v32);
    CFRelease(v32);
    LODWORD(valuePtr) = *(a1 + 448);
    v33 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"dofIntensity", v33);
    CFRelease(v33);
    LODWORD(valuePtr) = *(a1 + 492);
    v34 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"screenSpaceAmbientOcclusionIntensity", v34);
    CFRelease(v34);
    LODWORD(valuePtr) = *(a1 + 496);
    v35 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"screenSpaceAmbientOcclusionRadius", v35);
    CFRelease(v35);
    LODWORD(valuePtr) = *(a1 + 500);
    v36 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"screenSpaceAmbientOcclusionBias", v36);
    CFRelease(v36);
    LODWORD(valuePtr) = *(a1 + 504);
    v37 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"screenSpaceAmbientOcclusionDepthThreshold", v37);
    CFRelease(v37);
    LODWORD(valuePtr) = *(a1 + 508);
    v38 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v14, @"screenSpaceAmbientOcclusionNormalThreshold", v38);
    CFRelease(v38);
    LODWORD(valuePtr) = *(a1 + 512);
    v39 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"screenSpaceAmbientOcclusionSampleCount", v39);
    CFRelease(v39);
    LODWORD(valuePtr) = *(a1 + 516);
    v40 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v14, @"screenSpaceAmbientOcclusionDownSample", v40);
    CFRelease(v40);
    valuePtr = *(a1 + 528);
    v41 = CFNumberCreate(0, kCFNumberNSIntegerType, &valuePtr);
    CFDictionaryAddValue(v14, @"category", v41);
    CFRelease(v41);
  }

  return v14;
}

__CFArray *_C3DCameraCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = a1 + 128;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v5, @"name", @"aspectRatio");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  LOBYTE(v5) = *(a1 + 64);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  if ((v5 & 0x10) != 0)
  {
    v180 = 0;
    valuePtr = 6;
    v179 = a1 + 272;
    v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v38 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v9, @"name", @"xfov");
    CFDictionarySetValue(v9, @"type", v36);
    CFDictionarySetValue(v9, @"address", v38);
    CFDictionarySetValue(v9, @"semantic", v37);
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v37);
    CFRelease(v9);
    CFRelease(v38);
    CFRelease(v36);
    v39 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 6;
    v30 = a1;
    v179 = a1 + 280;
    v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v41 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v39, @"name", @"yfov");
    CFDictionarySetValue(v39, @"type", v31);
    CFDictionarySetValue(v39, @"address", v41);
    CFDictionarySetValue(v39, @"semantic", v40);
    v34 = Mutable;
    CFArrayAppendValue(Mutable, v39);
    CFRelease(v40);
    CFRelease(v39);
    v35 = v41;
  }

  else
  {
    v180 = 0;
    valuePtr = 1;
    v179 = a1 + 120;
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v12 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v9, @"name", @"fieldOfView");
    CFDictionarySetValue(v9, @"type", v10);
    CFDictionarySetValue(v9, @"address", v12);
    CFDictionarySetValue(v9, @"semantic", v11);
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v11);
    CFRelease(v9);
    CFRelease(v12);
    CFRelease(v10);
    v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 1;
    v179 = a1 + 300;
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v16 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v13, @"name", @"sensorHeight");
    CFDictionarySetValue(v13, @"type", v14);
    CFDictionarySetValue(v13, @"address", v16);
    CFDictionarySetValue(v13, @"semantic", v15);
    CFArrayAppendValue(Mutable, v13);
    CFRelease(v15);
    CFRelease(v13);
    CFRelease(v16);
    CFRelease(v14);
    v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 1;
    v179 = a1 + 292;
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v20 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v17, @"name", @"focalLength");
    CFDictionarySetValue(v17, @"type", v18);
    CFDictionarySetValue(v17, @"address", v20);
    CFDictionarySetValue(v17, @"semantic", v19);
    CFArrayAppendValue(Mutable, v17);
    CFRelease(v19);
    CFRelease(v17);
    CFRelease(v20);
    CFRelease(v18);
    v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 8;
    v179 = a1 + 88;
    v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v24 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v21, @"name", @"lensShift");
    CFDictionarySetValue(v21, @"type", v22);
    CFDictionarySetValue(v21, @"address", v24);
    CFDictionarySetValue(v21, @"semantic", v23);
    CFArrayAppendValue(Mutable, v21);
    CFRelease(v23);
    CFRelease(v21);
    CFRelease(v24);
    CFRelease(v22);
    v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 8;
    v179 = a1 + 96;
    v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v28 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v25, @"name", @"postProjectionTransformTranslation");
    CFDictionarySetValue(v25, @"type", v26);
    CFDictionarySetValue(v25, @"address", v28);
    CFDictionarySetValue(v25, @"semantic", v27);
    CFArrayAppendValue(Mutable, v25);
    CFRelease(v27);
    CFRelease(v25);
    CFRelease(v28);
    CFRelease(v26);
    v29 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 8;
    v30 = a1;
    v179 = a1 + 104;
    v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v33 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v29, @"name", @"postProjectionTransformScale");
    CFDictionarySetValue(v29, @"type", v31);
    CFDictionarySetValue(v29, @"address", v33);
    CFDictionarySetValue(v29, @"semantic", v32);
    v34 = Mutable;
    CFArrayAppendValue(Mutable, v29);
    CFRelease(v32);
    CFRelease(v29);
    v35 = v33;
  }

  CFRelease(v35);
  CFRelease(v31);
  v42 = MEMORY[0x277CBF138];
  v43 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = v30 + 112;
  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v45 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v46 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v43, @"name", @"orthoScale");
  CFDictionarySetValue(v43, @"type", v44);
  CFDictionarySetValue(v43, @"address", v46);
  CFDictionarySetValue(v43, @"semantic", v45);
  CFArrayAppendValue(v34, v43);
  CFRelease(v45);
  CFRelease(v43);
  CFRelease(v46);
  CFRelease(v44);
  v47 = CFDictionaryCreateMutable(0, 4, v42, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = v30 + 80;
  v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v49 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v50 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v47, @"name", @"zfar");
  CFDictionarySetValue(v47, @"type", v48);
  CFDictionarySetValue(v47, @"address", v50);
  CFDictionarySetValue(v47, @"semantic", v49);
  CFArrayAppendValue(v34, v47);
  CFRelease(v49);
  CFRelease(v47);
  CFRelease(v50);
  CFRelease(v48);
  v51 = MEMORY[0x277CBF138];
  v52 = MEMORY[0x277CBF150];
  v53 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = v30 + 72;
  v54 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v55 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v56 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v53, @"name", @"znear");
  CFDictionarySetValue(v53, @"type", v54);
  CFDictionarySetValue(v53, @"address", v56);
  CFDictionarySetValue(v53, @"semantic", v55);
  CFArrayAppendValue(v34, v53);
  CFRelease(v55);
  CFRelease(v53);
  CFRelease(v56);
  CFRelease(v54);
  v57 = CFDictionaryCreateMutable(0, 4, v51, v52);
  v180 = 0;
  valuePtr = 11;
  v179 = v30 + 144;
  v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v59 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v60 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v57, @"name", @"matrix");
  CFDictionarySetValue(v57, @"type", v58);
  CFDictionarySetValue(v57, @"address", v60);
  CFDictionarySetValue(v57, @"semantic", v59);
  CFArrayAppendValue(v34, v57);
  CFRelease(v59);
  CFRelease(v57);
  CFRelease(v60);
  CFRelease(v58);
  v61 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v52);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 288;
  v62 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v63 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v64 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v61, @"name", @"focusDistance");
  CFDictionarySetValue(v61, @"type", v62);
  CFDictionarySetValue(v61, @"address", v64);
  CFDictionarySetValue(v61, @"semantic", v63);
  CFArrayAppendValue(v34, v61);
  CFRelease(v63);
  CFRelease(v61);
  CFRelease(v64);
  CFRelease(v62);
  v65 = MEMORY[0x277CBF138];
  v66 = MEMORY[0x277CBF150];
  v67 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 296;
  v68 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v69 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v70 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v67, @"name", @"fStop");
  CFDictionarySetValue(v67, @"type", v68);
  CFDictionarySetValue(v67, @"address", v70);
  CFDictionarySetValue(v67, @"semantic", v69);
  CFArrayAppendValue(v34, v67);
  CFRelease(v69);
  CFRelease(v67);
  CFRelease(v70);
  CFRelease(v68);
  v71 = CFDictionaryCreateMutable(0, 4, v65, v66);
  v180 = 0;
  valuePtr = 2;
  v179 = v30 + 304;
  v72 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v73 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v74 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v71, @"name", @"bladeCount");
  CFDictionarySetValue(v71, @"type", v72);
  CFDictionarySetValue(v71, @"address", v74);
  CFDictionarySetValue(v71, @"semantic", v73);
  CFArrayAppendValue(v34, v71);
  CFRelease(v73);
  CFRelease(v71);
  CFRelease(v74);
  CFRelease(v72);
  v75 = MEMORY[0x277CBF138];
  v76 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v66);
  v180 = 0;
  valuePtr = 2;
  v179 = v30 + 308;
  v77 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v78 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v79 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v76, @"name", @"dofSampleCount");
  CFDictionarySetValue(v76, @"type", v77);
  CFDictionarySetValue(v76, @"address", v79);
  CFDictionarySetValue(v76, @"semantic", v78);
  CFArrayAppendValue(v34, v76);
  CFRelease(v78);
  CFRelease(v76);
  CFRelease(v79);
  CFRelease(v77);
  v80 = CFDictionaryCreateMutable(0, 4, v75, v66);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 448;
  v81 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v82 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v83 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v80, @"name", @"dofIntensity");
  CFDictionarySetValue(v80, @"type", v81);
  CFDictionarySetValue(v80, @"address", v83);
  CFDictionarySetValue(v80, @"semantic", v82);
  CFArrayAppendValue(v34, v80);
  CFRelease(v82);
  CFRelease(v80);
  CFRelease(v83);
  CFRelease(v81);
  v84 = MEMORY[0x277CBF138];
  v85 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 2;
  v179 = v30 + 528;
  v86 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v87 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v88 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v85, @"name", @"categoryBitMask");
  CFDictionarySetValue(v85, @"type", v86);
  CFDictionarySetValue(v85, @"address", v88);
  CFDictionarySetValue(v85, @"semantic", v87);
  CFArrayAppendValue(v34, v85);
  CFRelease(v87);
  CFRelease(v85);
  CFRelease(v88);
  CFRelease(v86);
  v89 = MEMORY[0x277CBF150];
  v90 = CFDictionaryCreateMutable(0, 4, v84, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 384;
  v91 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v92 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v93 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v90, @"name", @"whitePoint");
  CFDictionarySetValue(v90, @"type", v91);
  CFDictionarySetValue(v90, @"address", v93);
  CFDictionarySetValue(v90, @"semantic", v92);
  v94 = v34;
  CFArrayAppendValue(v34, v90);
  CFRelease(v92);
  CFRelease(v90);
  CFRelease(v93);
  CFRelease(v91);
  v95 = MEMORY[0x277CBF138];
  v96 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v89);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 388;
  v97 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v98 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v99 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v96, @"name", @"averageGray");
  CFDictionarySetValue(v96, @"type", v97);
  CFDictionarySetValue(v96, @"address", v99);
  CFDictionarySetValue(v96, @"semantic", v98);
  CFArrayAppendValue(v94, v96);
  CFRelease(v98);
  CFRelease(v96);
  CFRelease(v99);
  CFRelease(v97);
  v100 = CFDictionaryCreateMutable(0, 4, v95, v89);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 396;
  v101 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v102 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v103 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v100, @"name", @"exposureAdaptationDuration");
  CFDictionarySetValue(v100, @"type", v101);
  CFDictionarySetValue(v100, @"address", v103);
  CFDictionarySetValue(v100, @"semantic", v102);
  v104 = v94;
  CFArrayAppendValue(v94, v100);
  CFRelease(v102);
  CFRelease(v100);
  CFRelease(v103);
  CFRelease(v101);
  v105 = MEMORY[0x277CBF138];
  v106 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 404;
  v107 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v108 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v109 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v106, @"name", @"exposureAdaptationDarkeningSpeedFactor");
  CFDictionarySetValue(v106, @"type", v107);
  CFDictionarySetValue(v106, @"address", v109);
  CFDictionarySetValue(v106, @"semantic", v108);
  CFArrayAppendValue(v104, v106);
  CFRelease(v108);
  CFRelease(v106);
  CFRelease(v109);
  CFRelease(v107);
  v110 = CFDictionaryCreateMutable(0, 4, v105, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 400;
  v111 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v112 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v113 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v110, @"name", @"exposureAdaptationBrighteningSpeedFactor");
  CFDictionarySetValue(v110, @"type", v111);
  CFDictionarySetValue(v110, @"address", v113);
  CFDictionarySetValue(v110, @"semantic", v112);
  CFArrayAppendValue(v104, v110);
  CFRelease(v112);
  CFRelease(v110);
  CFRelease(v113);
  CFRelease(v111);
  v114 = CFDictionaryCreateMutable(0, 4, v105, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 416;
  v115 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v116 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v117 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v114, @"name", @"minimumExposure");
  CFDictionarySetValue(v114, @"type", v115);
  CFDictionarySetValue(v114, @"address", v117);
  CFDictionarySetValue(v114, @"semantic", v116);
  CFArrayAppendValue(v104, v114);
  CFRelease(v116);
  CFRelease(v114);
  CFRelease(v117);
  CFRelease(v115);
  v118 = MEMORY[0x277CBF138];
  v119 = MEMORY[0x277CBF150];
  v120 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 420;
  v121 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v122 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v123 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v120, @"name", @"maximumExposure");
  CFDictionarySetValue(v120, @"type", v121);
  CFDictionarySetValue(v120, @"address", v123);
  CFDictionarySetValue(v120, @"semantic", v122);
  CFArrayAppendValue(v104, v120);
  CFRelease(v122);
  CFRelease(v120);
  CFRelease(v123);
  CFRelease(v121);
  v124 = CFDictionaryCreateMutable(0, 4, v118, v119);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 424;
  v125 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v126 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v127 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v124, @"name", @"bloomIntensity");
  CFDictionarySetValue(v124, @"type", v125);
  CFDictionarySetValue(v124, @"address", v127);
  CFDictionarySetValue(v124, @"semantic", v126);
  CFArrayAppendValue(v104, v124);
  CFRelease(v126);
  CFRelease(v124);
  CFRelease(v127);
  CFRelease(v125);
  v128 = CFDictionaryCreateMutable(0, 4, v118, v119);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 428;
  v129 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v130 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v131 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v128, @"name", @"bloomThreshold");
  CFDictionarySetValue(v128, @"type", v129);
  CFDictionarySetValue(v128, @"address", v131);
  CFDictionarySetValue(v128, @"semantic", v130);
  CFArrayAppendValue(v104, v128);
  CFRelease(v130);
  CFRelease(v128);
  CFRelease(v131);
  CFRelease(v129);
  v132 = CFDictionaryCreateMutable(0, 4, v118, v119);
  v180 = 0;
  valuePtr = 2;
  v133 = v30;
  v179 = v30 + 432;
  v134 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v135 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v136 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v132, @"name", @"bloomIteration");
  CFDictionarySetValue(v132, @"type", v134);
  CFDictionarySetValue(v132, @"address", v136);
  CFDictionarySetValue(v132, @"semantic", v135);
  v137 = v104;
  CFArrayAppendValue(v104, v132);
  CFRelease(v135);
  CFRelease(v132);
  CFRelease(v136);
  CFRelease(v134);
  v138 = MEMORY[0x277CBF150];
  v139 = CFDictionaryCreateMutable(0, 4, v118, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 436;
  v140 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v141 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v142 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v139, @"name", @"bloomIterationSpread");
  CFDictionarySetValue(v139, @"type", v140);
  CFDictionarySetValue(v139, @"address", v142);
  CFDictionarySetValue(v139, @"semantic", v141);
  CFArrayAppendValue(v137, v139);
  CFRelease(v141);
  CFRelease(v139);
  CFRelease(v142);
  CFRelease(v140);
  v143 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v138);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 472;
  v144 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v145 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v146 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v143, @"name", @"motionBlurIntensity");
  CFDictionarySetValue(v143, @"type", v144);
  CFDictionarySetValue(v143, @"address", v146);
  CFDictionarySetValue(v143, @"semantic", v145);
  CFArrayAppendValue(v137, v143);
  CFRelease(v145);
  CFRelease(v143);
  CFRelease(v146);
  CFRelease(v144);
  v147 = MEMORY[0x277CBF138];
  v148 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 492;
  v149 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v150 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v151 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v148, @"name", @"screenSpaceAmbientOcclusionIntensity");
  CFDictionarySetValue(v148, @"type", v149);
  CFDictionarySetValue(v148, @"address", v151);
  CFDictionarySetValue(v148, @"semantic", v150);
  CFArrayAppendValue(v137, v148);
  CFRelease(v150);
  CFRelease(v148);
  CFRelease(v151);
  CFRelease(v149);
  v152 = CFDictionaryCreateMutable(0, 4, v147, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 496;
  v153 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v154 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v155 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v152, @"name", @"screenSpaceAmbientOcclusionRadius");
  CFDictionarySetValue(v152, @"type", v153);
  CFDictionarySetValue(v152, @"address", v155);
  CFDictionarySetValue(v152, @"semantic", v154);
  CFArrayAppendValue(v137, v152);
  CFRelease(v154);
  CFRelease(v152);
  CFRelease(v155);
  CFRelease(v153);
  v156 = MEMORY[0x277CBF138];
  v157 = MEMORY[0x277CBF150];
  v158 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 500;
  v159 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v160 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v161 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v158, @"name", @"screenSpaceAmbientOcclusionBias");
  CFDictionarySetValue(v158, @"type", v159);
  CFDictionarySetValue(v158, @"address", v161);
  CFDictionarySetValue(v158, @"semantic", v160);
  CFArrayAppendValue(v137, v158);
  CFRelease(v160);
  CFRelease(v158);
  CFRelease(v161);
  CFRelease(v159);
  v162 = CFDictionaryCreateMutable(0, 4, v156, v157);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 504;
  v163 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v164 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v165 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v162, @"name", @"screenSpaceAmbientOcclusionDepthThreshold");
  CFDictionarySetValue(v162, @"type", v163);
  CFDictionarySetValue(v162, @"address", v165);
  CFDictionarySetValue(v162, @"semantic", v164);
  CFArrayAppendValue(v137, v162);
  CFRelease(v164);
  CFRelease(v162);
  CFRelease(v165);
  CFRelease(v163);
  v166 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v157);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 508;
  v167 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v168 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v169 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v166, @"name", @"screenSpaceAmbientOcclusionNormalThreshold");
  CFDictionarySetValue(v166, @"type", v167);
  CFDictionarySetValue(v166, @"address", v169);
  CFDictionarySetValue(v166, @"semantic", v168);
  CFArrayAppendValue(v137, v166);
  CFRelease(v168);
  CFRelease(v166);
  CFRelease(v169);
  CFRelease(v167);
  v170 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 2;
  v179 = v133 + 512;
  v171 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v172 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v173 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v170, @"name", @"screenSpaceAmbientOcclusionSampleCount");
  CFDictionarySetValue(v170, @"type", v171);
  CFDictionarySetValue(v170, @"address", v173);
  CFDictionarySetValue(v170, @"semantic", v172);
  CFArrayAppendValue(v137, v170);
  CFRelease(v172);
  CFRelease(v170);
  CFRelease(v173);
  CFRelease(v171);
  v174 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 2;
  v179 = v133 + 516;
  v175 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v176 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v177 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v174, @"name", @"screenSpaceAmbientOcclusionDownSample");
  CFDictionarySetValue(v174, @"type", v175);
  CFDictionarySetValue(v174, @"address", v177);
  CFDictionarySetValue(v174, @"semantic", v176);
  CFArrayAppendValue(v137, v174);
  CFRelease(v176);
  CFRelease(v174);
  CFRelease(v177);
  CFRelease(v175);
  return v137;
}

uint64_t _C3DCameraSearchByID(uint64_t a1, const void *a2)
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

uint64_t C3DNodeIsHidden(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 200);
}

void C3DNodeUpdateCullingSystemMembership(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    __UpdateCullingHandle(a1, v1);
  }
}

void __UpdateCullingHandle(uint64_t a1, uint64_t a2)
{
  ShouldBePutInCullingSystem = C3DNodeShouldBePutInCullingSystem(a1);
  if (((ShouldBePutInCullingSystem ^ (*(a1 + 216) == -1)) & 1) == 0)
  {
    v5 = ShouldBePutInCullingSystem;
    CullingSystem = C3DSceneGetCullingSystem(a2);
    if (v5)
    {
      v7 = C3DCullingSystemAdd(CullingSystem, a1);
    }

    else
    {
      C3DCullingSystemRemove(CullingSystem, *(a1 + 216));
      v7 = -1;
    }

    *(a1 + 216) = v7;
    TransformTree = C3DSceneGetTransformTree(a2);
    v9 = *(a1 + 88);
    v10 = *(a1 + 216);

    C3DTransformTreeUpdateCullingHandle(TransformTree, v9, v10);
  }
}

__n128 __C3DComputeLocalBoundingBox(uint64_t a1)
{
  *(a1 + 272) = *(MEMORY[0x277D860B8] + 48);
  *(a1 + 288) = xmmword_21C27F650;
  DeformerStack = C3DNodeGetDeformerStack(a1);
  if (!DeformerStack || (C3DDeformerStackGetLocalBoundingBox(DeformerStack, (a1 + 272)) & 1) == 0)
  {
    Geometry = C3DNodeGetGeometry(a1);
    if (Geometry)
    {
      v8 = 0uLL;
      v7 = 0uLL;
      if (C3DGetBoundingBox(Geometry, 0, &v8, &v7))
      {
        v5.i64[0] = 0x3F0000003F000000;
        v5.i64[1] = 0x3F0000003F000000;
        v6 = vmulq_f32(vaddq_f32(v8, v7), v5);
        result = vmulq_f32(vsubq_f32(v7, v8), v5);
        v6.i32[3] = 1.0;
        result.n128_u32[3] = 0;
        *(a1 + 272) = v6;
        *(a1 + 288) = result;
      }
    }
  }

  return result;
}

uint64_t C3DNodeGetDeformerStack(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 248);
}

uint64_t C3DNodeGetGeometry(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 240);
}

void C3DNodeGeometryDidUpdate(uint64_t *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  C3DNodeBoundingBoxDidUpdate(a1);
  C3DScenePostPipelineEvent(a1[6], 2, a1, @"kMeshKey");
}

void C3DNodeBoundingBoxDidUpdate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 220) & 4) == 0)
  {
    __C3DComputeLocalBoundingBox(a1);
  }

  if (*(a1 + 216) != -1)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      CullingSystem = C3DSceneGetCullingSystem(v10);
      v12 = *(a1 + 288);
      v13[0] = *(a1 + 272);
      v13[1] = v12;
      if ((vminvq_u32(vcgezq_f32(*(a1 + 288))) & 0x80000000) != 0)
      {
        C3DCullingSystemUpdateBoundingBox(CullingSystem, *(a1 + 216), v13);
      }
    }
  }
}

uint64_t C3DNodeGetLocalBoundingBox(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 288);
  *a2 = *(a1 + 272);
  a2[1] = v2;
  return vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
}

void C3DNodeGeometryLODDidUpdate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 232) = 0;
  *(a1 + 220) &= ~0x8000u;
  Geometry = C3DNodeGetGeometry(a1);
  if (Geometry)
  {
    LOD = C3DGeometryGetLOD(Geometry);
    if (LOD)
    {
      v13 = LOD;
      if (CFArrayGetCount(LOD) >= 1)
      {
        Count = CFArrayGetCount(v13);
        ValueAtIndex = CFArrayGetValueAtIndex(v13, Count / 2);
        v16 = C3DLODGetThresholdType(ValueAtIndex);
        v17 = malloc_type_malloc(12 * Count + 8, 0x100004000313F17uLL);
        *(a1 + 232) = v17;
        *v17 = Count;
        v17[2] = v16;
        *(*(a1 + 232) + 4) = 0;
        *(a1 + 220) |= 0x8000u;
        if (Count >= 1)
        {
          v18 = 0;
          v19 = (v17 + 16);
          do
          {
            v20 = CFArrayGetValueAtIndex(v13, v18);
            *(v19 - 2) = C3DLODGetThreshold(v20);
            *(v19 - 1) = 0xFFFFFFFFLL;
            ++v18;
            v19 += 3;
          }

          while (Count != v18);
        }
      }
    }
  }

  C3DScenePostPipelineEvent(*(a1 + 48), 2, a1, @"kMeshKey");
}

float32x4_t C3DTransformBoundingBox(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vmulq_f32(vaddq_f32(*a1, *a2), v5);
  v7 = vmulq_f32(vsubq_f32(*a2, *a1), v5);
  v8 = v7;
  v8.i32[3] = 0;
  v9 = a5[1];
  v10 = a5[2];
  v11 = vaddq_f32(a5[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v6.f32, 1), *a5, v6.f32[0]), v10, v6, 2));
  v11.i32[3] = 1.0;
  v12 = vuzp2q_s32(vdupq_lane_s32(*v7.f32, 1), v8);
  v13 = vzip2q_s32(vtrn1q_s32(v8, v8), v8);
  v8.i32[1] = v7.i32[0];
  v8.i32[2] = v7.i32[0];
  v14 = vaddq_f32(vabsq_f32(vmulq_f32(v10, v13)), vaddq_f32(vabsq_f32(vmulq_f32(*a5, v8)), vabsq_f32(vmulq_f32(v9, v12))));
  *a3 = vsubq_f32(v11, v14);
  result = vaddq_f32(v11, v14);
  *a4 = result;
  return result;
}

uint64_t C3DNodeIsLighted(uint64_t a1)
{
  result = *(a1 + 240);
  if (result)
  {
    result = C3DGeometryGetMaterialAtIndex(result, 0);
    if (result)
    {
      result = C3DMaterialGetCommonProfile(result);
      if (result)
      {
        return (C3DEffectCommonProfileGetLightingModel(result) & 0xFFFFFFFB) != 0;
      }
    }
  }

  return result;
}

uint64_t C3DNodeIsAlwaysRendered(uint64_t a1)
{
  v1 = *(a1 + 220);
  if ((v1 & 2) != 0)
  {
    if ((v1 & 4) != 0)
    {
      v5 = 0;
    }

    else
    {
      RendererDelegate = C3DNodeGetRendererDelegate(a1);
      v4 = *(a1 + 240);
      if (v4)
      {
        LODWORD(v4) = C3DGeometryIsAlwaysRendered(v4);
      }

      if (RendererDelegate)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v1 = *(a1 + 220);
    }

    v1 = v1 & 0xFFFFFFFC | v5;
    *(a1 + 220) = v1;
  }

  return v1 & 1;
}

const __CFDictionary *C3DNodeGetRendererDelegate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 0x20) != 0)
  {
    return C3DEntityGetAttribute(a1, @"rendererDelegate");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetBoundingBox(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *(a1 + 220);
  if (a3 != 2 || (v5 & 4) == 0)
  {
    if (a2)
    {
      v6 = a2[1];
      *(a1 + 272) = *a2;
      *(a1 + 288) = v6;
    }

    else
    {
      __C3DComputeLocalBoundingBox(a1);
      v5 = *(a1 + 220);
    }

    if (a3 != 2)
    {
      v5 = v5 & 0xFFFFFFFB | (4 * (a3 == 1));
      *(a1 + 220) = v5;
    }

    if ((v5 & 4) != 0)
    {
      *(a1 + 220) = v5 & 0xFFFFFFFC;
    }

    C3DNodeBoundingBoxDidUpdate(a1);
  }
}

uint64_t C3DNodeGetBoundingBoxOmittingFloor(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (C3DNodeIsHidden(a1))
  {
    v6 = 0;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    if (C3DNodeGetFloor(a1))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = *(a1 + 288);
      *a2 = *(a1 + 272);
      a2[1] = v8;
      v7 = vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
    }

    v21 = v7;
    v9 = *(a1 + 72);
    if (v9)
    {
      v10 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v13 = __C3DNodeGetBoundingBoxOmittingFloor_block_invoke;
      v14 = &unk_2782FE5E0;
      v15 = &v18;
      v16 = a3;
      v17 = a2;
      do
      {
        (v13)(v12, v9, v10++);
        v9 = *(v9 + 80);
      }

      while (v9);
    }

    v6 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  return v6 & 1;
}

uint64_t C3DNodeGetFloor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 0x10) != 0)
  {
    return C3DNodeGetGeometry(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DNodeApplyChildren(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    v4 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v2, v4++);
      v2 = *(v2 + 80);
    }

    while (v2);
  }

  return result;
}

void __C3DNodeGetBoundingBoxOmittingFloor_block_invoke(void *a1, uint64_t a2)
{
  v26 = 0u;
  v27 = 0u;
  Floor = C3DNodeGetFloor(a2);
  v5 = a1[5];
  if (Floor)
  {
    if (v5)
    {
      *v5 = 1;
    }
  }

  else if (C3DNodeGetBoundingBoxOmittingFloor(a2, &v26, v5))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    C3DNodeGetMatrix(a2, &v22);
    v6 = vaddq_f32(v25, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v23, *v26.f32, 1), v22, v26.f32[0]), v24, v26, 2));
    v7 = v6;
    v7.i32[3] = 1.0;
    v8 = v27;
    v8.i32[1] = v27.i32[0];
    v8.i32[2] = v27.i32[0];
    v9 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v22, v8)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v27.i8, 1), v27), v23))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v27, v27), v27), v24)));
    v26 = v7;
    v27 = v9;
    v10 = *(a1[4] + 8);
    if (*(v10 + 24))
    {
      v11 = a1[6];
      v12 = v11[1];
      v13 = vsubq_f32(v6, v9);
      v14 = vsubq_f32(*v11, v12);
      v14.i32[3] = 0;
      v13.i32[3] = 0;
      v15 = vminnmq_f32(v14, v13);
      v16 = vaddq_f32(v6, v9);
      v17 = vaddq_f32(*v11, v12);
      v17.i32[3] = 0;
      v16.i32[3] = 0;
      v18 = vmaxnmq_f32(v17, v16);
      v19.i64[0] = 0x3F0000003F000000;
      v19.i64[1] = 0x3F0000003F000000;
      v20 = vmulq_f32(vaddq_f32(v15, v18), v19);
      v21 = vmulq_f32(vsubq_f32(v18, v15), v19);
      v20.i32[3] = 1.0;
      v21.i32[3] = 0;
      *v11 = v20;
    }

    else
    {
      *(v10 + 24) = 1;
      v11 = a1[6];
      v21 = v27;
      *v11 = v26;
    }

    v11[1] = v21;
  }
}

double C3DNodeGetMatrix@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&result = C3DTransformGetMatrix(a1 + 96, a2).n128_u64[0];
  v13 = *(a1 + 192);
  if (v13)
  {
    if (*(v13 + 124) == 0.0)
    {
      C3DMatrix4x4Invert(v13, (v13 + 64));
      v13 = *(a1 + 192);
    }

    return C3DMatrix4x4Mult(v13 + 64, a2, a2);
  }

  return result;
}

uint64_t C3DNodeShouldBePutInCullingSystem(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return 1;
  }

  v2 = *(a1 + 220);
  if ((v2 & 0x6000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x200) == 0)
  {
    return 0;
  }

  Light = C3DNodeGetLight(a1);

  return C3DLightGetDrawsArea(Light);
}

const __CFDictionary *C3DNodeGetLight(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 2) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kLightKey");
  }

  else
  {
    return 0;
  }
}

uint64_t __computeSubBox(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[18];
  *a2 = a1[17];
  a2[1] = v2;
  v3 = vminvq_u32(vcgezq_f32(a1[18])) >> 31;
  for (i = a1[4].i64[1]; i; i = *(i + 80))
  {
    v23 = 0u;
    v24 = 0u;
    if (__computeSubBox(i, &v23))
    {
      C3DNodeGetMatrix(i, &v19);
      v6 = vaddq_f32(v22, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v20, *v23.f32, 1), v19, v23.f32[0]), v21, v23, 2));
      v7 = v24;
      v7.i32[1] = v24.i32[0];
      v7.i32[2] = v24.i32[0];
      v8 = vaddq_f32(vabsq_f32(vmulq_f32(v21, vzip2q_s32(vtrn1q_s32(v24, v24), v24))), vaddq_f32(vabsq_f32(vmulq_f32(v19, v7)), vabsq_f32(vmulq_f32(v20, vuzp2q_s32(vdupq_lane_s32(*v24.i8, 1), v24)))));
      v9 = a2[1];
      v10 = vsubq_f32(v6, v8);
      v10.i32[3] = 0;
      v11 = vsubq_f32(*a2, v9);
      v11.i32[3] = 0;
      v12 = vminnmq_f32(v10, v11);
      v13 = vaddq_f32(v6, v8);
      v13.i32[3] = 0;
      v14 = vaddq_f32(*a2, v9);
      v14.i32[3] = 0;
      v15 = vmaxnmq_f32(v13, v14);
      v9.i64[0] = 0x3F0000003F000000;
      v9.i64[1] = 0x3F0000003F000000;
      v16 = vmulq_f32(vaddq_f32(v12, v15), v9);
      v16.i32[3] = 1.0;
      v17 = vmulq_f32(vsubq_f32(v15, v12), v9);
      v17.i32[3] = 0;
      *a2 = v16;
      a2[1] = v17;
      LOBYTE(v3) = 1;
    }
  }

  return v3 & 1;
}

uint64_t C3DNodeComputeHierarchicalBoundingBox(float32x4_t *a1, int a2, float32x4_t *a3)
{
  if ((a1[13].i16[7] & 0x380) == 0 && (v13 = a1[3].i64[0]) != 0 && (CullingSystem = C3DSceneGetCullingSystem(v13)) != 0)
  {
    *a3 = C3DCullingSystemComputeHierarchicalAABB(CullingSystem, a1, a2);
    a3[1] = v15;
    return vminvq_u32(vcgezq_f32(v15)) >> 31;
  }

  else
  {
    result = __computeSubBox(a1, a3);
    if (result)
    {
      if ((a2 & 1) == 0)
      {
        WorldMatrix = C3DNodeGetWorldMatrix(a1);
        v8 = WorldMatrix[1];
        v9 = WorldMatrix[2];
        v10 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *a3->f32, 1), *WorldMatrix, COERCE_FLOAT(*a3)), v9, *a3, 2));
        v10.i32[3] = 1.0;
        v11 = a3[1];
        v11.i32[1] = v11.i32[0];
        v11.i32[2] = a3[1];
        v12 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(*WorldMatrix, v11)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*a3[1].f32, 1), a3[1]), v8))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(a3[1], a3[1]), a3[1]), v9)));
        *a3 = v10;
        a3[1] = v12;
        return 1;
      }
    }
  }

  return result;
}

float32x4_t *C3DNodeGetWorldMatrix(float32x4_t *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[3].i64[0];
  if (!v10)
  {
    return C3DTransformGetMatrixPtr(a1 + 6);
  }

  TransformTree = C3DSceneGetTransformTree(v10);
  if (!TransformTree)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_DEFAULT, "Warning: C3DNodeGetWorldMatrix - no transform tree", v23, 2u);
    }

    return C3DTransformGetMatrixPtr(a1 + 6);
  }

  v12 = TransformTree;
  if (a1[5].i32[2] == -1)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetWorldMatrix_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return C3DTransformTreeGetWorldTransformPtr(v12, a1[5].i32[2]);
}

uint64_t C3DNodeGetRenderableAttributeHash(uint64_t a1)
{
  if (C3DNodeGetRendererDelegate(a1))
  {
    v2 = 2;
  }

  else if (C3DNodeGetFilters(a1))
  {
    v2 = 8;
  }

  else
  {
    v2 = C3DNodeGetGeometry(a1) != 0;
  }

  Light = C3DNodeGetLight(a1);
  if (Light && C3DLightGetType(Light) == 6)
  {
    v2 |= 0x10u;
  }

  if (C3DNodeGetUsesDepthPrePass(a1))
  {
    return v2 | 0x20;
  }

  else
  {
    return v2;
  }
}

const __CFDictionary *C3DNodeGetFilters(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 0x40) == 0)
  {
    return 0;
  }

  result = C3DEntityGetAttribute(a1, @"kFilterKey");
  if (result)
  {
    return C3DModelTargetGetTarget(result);
  }

  return result;
}

uint64_t C3DNodeGetUsesDepthPrePass(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 223) >> 2) & 1;
}

uint64_t C3DNodeGetTypeID()
{
  if (C3DNodeGetTypeID_onceToken != -1)
  {
    C3DNodeGetTypeID_cold_1();
  }

  return C3DNodeGetTypeID_typeID;
}

double __C3DNodeGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DNodeGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"hidden", 0xC8u, 3, 0);
  C3DModelPathResolverRegisterProperty(@"opacity", 0xCCu, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_2817408E8 = kC3DC3DNodeContextClassSerializable;
  unk_2817408F8 = *&off_282DC52C8;
  unk_2817408A8 = kC3DC3DNodeContextClassBoundingVolumes;
  xmmword_281740890 = kC3DC3DNodeContextClassAnimatable;
  result = *&kC3DC3DNodeContextClassSceneLink;
  unk_2817408B8 = kC3DC3DNodeContextClassSceneLink;
  qword_2817408A0 = _C3DNodeCopyInstanceVariables;
  unk_2817408C8 = *off_282DC5308;
  qword_2817408D8 = qword_282DC5318;
  unk_2817408E0 = _C3DNodeSearchByID;
  return result;
}

uint64_t C3DNodeCreate()
{
  if (C3DNodeGetTypeID_onceToken != -1)
  {
    C3DNodeGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DNodeGetTypeID_typeID, 288);
  C3DTransformInit(Instance + 96);
  *(Instance + 204) = 1065353216;
  *(Instance + 200) = 0;
  v1 = *(Instance + 220) & 0xFFDFFFD1 | 0x20002A;
  *(Instance + 208) = 1;
  *(Instance + 216) = -1;
  *(Instance + 220) = v1;
  *(Instance + 88) = -1;
  *(Instance + 272) = *(MEMORY[0x277D860B8] + 48);
  *(Instance + 288) = xmmword_21C27F650;
  return Instance;
}

uint64_t C3DNodeCopyNode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DNodeCreate();
  v11 = *(a1 + 112);
  *(v10 + 96) = *(a1 + 96);
  *(v10 + 112) = v11;
  v12 = *(a1 + 176);
  v14 = *(a1 + 128);
  v13 = *(a1 + 144);
  *(v10 + 160) = *(a1 + 160);
  *(v10 + 176) = v12;
  *(v10 + 128) = v14;
  *(v10 + 144) = v13;
  if (C3DNodeGetHasPivot(a1))
  {
    PivotMatrix = C3DNodeGetPivotMatrix(a1);
    C3DNodeSetPivotMatrix(v10, PivotMatrix);
  }

  Opacity = C3DNodeGetOpacity(a1);
  C3DNodeSetOpacity(v10, Opacity);
  IsHidden = C3DNodeIsHidden(a1);
  C3DNodeSetHidden(v10, IsHidden);
  v18 = *(a1 + 240);
  if (v18)
  {
    C3DNodeSetGeometry(v10, v18);
  }

  C3DEntityCopyTo(a1, v10);
  v19 = *(v10 + 220) & 0xFFFFFBFF | (((*(a1 + 220) >> 10) & 1) << 10);
  *(v10 + 220) = v19;
  v20 = v19 & 0xFFFEFFFF | ((HIWORD(*(a1 + 220)) & 1) << 16);
  *(v10 + 220) = v20;
  v21 = v20 & 0xFFFFBFFF | (((*(a1 + 220) >> 14) & 1) << 14);
  *(v10 + 220) = v21;
  v22 = v21 & 0xFFFFEFFF | (((*(a1 + 220) >> 12) & 1) << 12);
  *(v10 + 220) = v22;
  v23 = v22 & 0xFFFFFDFF | (((*(a1 + 220) >> 9) & 1) << 9);
  *(v10 + 220) = v23;
  Copy = *(a1 + 248);
  if (Copy)
  {
    Copy = C3DDeformerStackCreateCopy(Copy, v10);
    v23 = *(v10 + 220);
  }

  *(v10 + 248) = Copy;
  v25 = v23 & 0xFFFFDFFF | (((*(a1 + 220) >> 13) & 1) << 13);
  *(v10 + 220) = v25;
  v26 = v25 & 0xFFFFF7FF | (((*(a1 + 220) >> 11) & 1) << 11);
  *(v10 + 220) = v26;
  v27 = *(a1 + 288);
  *(v10 + 272) = *(a1 + 272);
  *(v10 + 288) = v27;
  v28 = v26 & 0xFFFFFFFB | (4 * ((*(a1 + 220) >> 2) & 1));
  *(v10 + 220) = v28;
  *(v10 + 208) = *(a1 + 208);
  *(v10 + 220) = v28 & 0xFFBFFFFF | (((*(a1 + 220) >> 22) & 1) << 22);
  return v10;
}

BOOL C3DNodeGetHasPivot(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 192) != 0;
}

void C3DNodeSetPivotMatrix(float32x4_t *a1, __int128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[12].i64[0];
  if (!v12)
  {
    v12 = C3DMalloc(0x80uLL);
    a1[12].i64[0] = v12;
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  v12[2] = a2[2];
  v12[3] = v15;
  *v12 = v13;
  v12[1] = v14;
  v16 = a1[12].i64[0];
  if (v16)
  {
    *(v16 + 124) = 0;
  }

  __C3DNodeTransformDidChange(a1);
}

uint64_t C3DNodeGetPivotMatrix(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 192);
}

void C3DNodeSetOpacity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 204);
  if (v12 != a2)
  {
    if (a2 >= 1.0 && v12 < 1.0)
    {
      *(a1 + 204) = a2;
      __DirtyWorldAlpha(a1, 1);
    }

    else
    {
      if (a2 >= 1.0)
      {
        *(a1 + 204) = a2;
        __DirtyWorldAlpha(a1, 0);
        goto LABEL_15;
      }

      *(a1 + 204) = a2;
      __DirtyWorldAlpha(a1, v12 >= 1.0);
      if (v12 < 1.0)
      {
        goto LABEL_15;
      }
    }

    v14 = *(a1 + 48);
    C3DScenePostPipelineEvent(v14, 4, a1, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = ____IsOpaqueDidChange_block_invoke;
    v15[3] = &__block_descriptor_tmp_164;
    v15[4] = v14;
    C3DNodeApplyHierarchy(a1, v15);
LABEL_15:
    if (a2 == 0.0 || v12 == 0.0)
    {
      __UpdateCullingSystemFlags(a1, 1);
    }
  }
}

float C3DNodeGetOpacity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 204);
}

void C3DNodeSetHidden(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 200) != a2)
  {
    *(a1 + 200) = a2;
    __UpdateNodeVisibilityIfNeeded(a1, a2 ^ 1);
  }
}

void C3DNodeSetGeometry(uint64_t a1, __C3DGeometry *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Geometry = C3DNodeGetGeometry(a1);
  if (Geometry)
  {
    v13 = Geometry;
    C3DGeometryUntrackNode(Geometry, a1);
    C3DRemoveSceneRef(v13, *(a1 + 48));
  }

  v14 = *(a1 + 240);
  if (v14 != a2)
  {
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 240) = 0;
    }

    if (a2)
    {
      v15 = CFRetain(a2);
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 240) = v15;
  }

  if (a2)
  {
    C3DGeometryTrackNode(a2, a1);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kMeshKey", 1u);
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    C3DAddSceneRef(a2, v18);
  }

  v19 = CFGetTypeID(a2);
  if (v19 == C3DFloorGetTypeID())
  {
    v20 = 4096;
  }

  else
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
    v22 = *(a1 + 220);
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_24;
    }
  }

  v23 = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(v23, @"kC3DNotificationEngineContextInvalidatePasses", *(a1 + 48), 0, 1u);
  v22 = *(a1 + 220);
  v21 = v20;
LABEL_24:
  *(a1 + 220) = v22 & 0xFFFFEFFF | v21;
  v24 = *(a1 + 248);
  if (v24)
  {
    C3DDeformerStackSetBaseGeometry(v24, a2);
  }

  C3DNodeGeometryLODDidUpdate(a1);
  C3DNodeBoundingBoxDidUpdate(a1);
  __UpdateCullingSystemFlags(a1, 0);
  v25 = a1;
  do
  {
    *(v25 + 220) |= 2u;
    v25 = *(v25 + 64);
  }

  while (v25);
  if (v16)
  {
    __UpdateCullingHandle(a1, v16);
  }
}

uint64_t C3DNodeCreateCopy(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DNodeCopyNode(a1);
  v13 = v12;
  if (a2)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 0x40000000;
    v18 = __C3DNodeCreateCopy_block_invoke;
    v19 = &__block_descriptor_tmp_8_1;
    v21 = a2;
    v20 = v12;
    v14 = *(a1 + 72);
    if (v14)
    {
      v15 = 0;
      do
      {
        (v18)(v17, v14, v15++);
        v14 = *(v14 + 80);
      }

      while (v14);
    }
  }

  return v13;
}

void __C3DNodeCreateCopy_block_invoke(uint64_t a1, uint64_t a2)
{
  Copy = C3DNodeCreateCopy(a2, *(a1 + 40));
  C3DNodeAddChildNode(*(a1 + 32), Copy);

  CFRelease(Copy);
}

uint64_t C3DNodeAddChildNode(uint64_t a1, float32x4_t *cf)
{
  if (cf)
  {
    v4 = *(a1 + 72);
    if (!v4)
    {
      *(a1 + 72) = CFRetain(cf);
      return __FixupParent(a1, cf);
    }

    goto LABEL_7;
  }

  v5 = scn_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddChildNode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    do
    {
LABEL_7:
      v13 = v4;
      v4 = *(v4 + 80);
    }

    while (v4);
    if (cf)
    {
      *(v13 + 80) = CFRetain(cf);
    }
  }

  return __FixupParent(a1, cf);
}

__C3DGeometry *__createSubdividedGeometryCopy(const void *a1, const void *a2, unsigned __int8 a3)
{
  Copy = C3DGeometryCreateCopy(a1);
  v6 = Copy;
  if (a2)
  {
    Mesh = C3DGeometryGetMesh(Copy);
    C3DMeshSetMeshElements(Mesh, a2);
  }

  SubdivisionSettings = C3DGeometryOsdGetSubdivisionSettings(v6);
  C3DGeometryOsdSetSubdivisionSettings(v6, SubdivisionSettings & 0xFFFFFF00);
  C3DGeometryOsdSetSubdivisionLevel(v6, a3);
  CPUSubdividedC3DMesh = C3DGeometryOsdGetCPUSubdividedC3DMesh(v6);
  CFRetain(CPUSubdividedC3DMesh);
  C3DGeometryOsdSetSubdivisionLevel(v6, 0);
  C3DGeometrySetMesh(v6, CPUSubdividedC3DMesh);
  CFRelease(CPUSubdividedC3DMesh);
  return v6;
}

CFTypeRef *C3DNodeCreateSubdividedCopy(uint64_t a1, int a2)
{
  v2 = a2;
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeCreateSubdividedCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Copy = C3DNodeCreateCopy(a1, 0);
  Geometry = C3DNodeGetGeometry(Copy);
  if (Geometry)
  {
    v14 = Geometry;
    Morpher = C3DNodeGetMorpher(a1);
    SubdividedGeometryCopy = __createSubdividedGeometryCopy(v14, 0, v2);
    C3DNodeSetGeometry(Copy, SubdividedGeometryCopy);
    CFRelease(SubdividedGeometryCopy);
    if (Morpher)
    {
      v49 = Copy;
      v17 = C3DMorpherCreateCopy(Morpher);
      C3DMorpherSetBaseGeometry(v17, SubdividedGeometryCopy);
      v47 = v17;
      OverrideMaterial = C3DGeometryGetOverrideMaterial(v17);
      if (C3DMorphIsUsingSparseTargets(OverrideMaterial))
      {
        C3DMorphConvertToSparse(OverrideMaterial, v14, 0, 0);
      }

      v48 = Morpher;
      if (C3DMorphGetCalculationMode(OverrideMaterial))
      {
        C3DMorphConvertToCalculationMode(OverrideMaterial, v14, 0, 0);
      }

      Mesh = C3DGeometryGetMesh(v14);
      MeshElements = C3DMeshGetMeshElements(Mesh, 0);
      v21 = C3DGeometryGetOverrideMaterial(OverrideMaterial);
      Count = CFArrayGetCount(v21);
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
          v26 = __createSubdividedGeometryCopy(ValueAtIndex, MeshElements, v2);
          CFArrayAppendValue(Mutable, v26);
          CFRelease(v26);
        }
      }

      C3DMorphSetTargets(OverrideMaterial, Mutable, 0);
      Copy = v49;
      C3DNodeSetMorpher(v49, v47);
      CFRelease(v47);
      Morpher = v48;
    }

    v27 = *(a1 + 248);
    if (v27)
    {
      Skinner = C3DDeformerStackGetSkinner(v27);
      if (Skinner)
      {
        v29 = Skinner;
        v30 = C3DGeometryGetOverrideMaterial(Skinner);
        v31 = C3DGeometryGetMesh(v14);
        v32 = C3DMeshCreateCopy(v31);
        v33 = C3DGeometryCreate();
        C3DGeometrySetMesh(v33, v32);
        if (v32)
        {
          CFRelease(v32);
        }

        if (Morpher)
        {
          SubdivisionSettings = C3DGeometryOsdGetSubdivisionSettings(v33);
          C3DGeometryOsdSetSubdivisionSettings(v33, SubdivisionSettings & 0xFFFFFF00);
        }

        C3DGeometryOsdSetSubdivisionLevel(v33, v2);
        CPUSubdividedC3DMesh = C3DGeometryOsdGetCPUSubdividedC3DMesh(v33);
        Joints = C3DSkinnerGetJoints(v29);
        v37 = Joints;
        if (Joints)
        {
          LOWORD(Joints) = CFArrayGetCount(Joints);
        }

        v38 = C3DSkinCreateWithSkinnableMesh(CPUSubdividedC3DMesh, Joints);
        CFRelease(v33);
        if (v38)
        {
          DefaultShapeMatrix = C3DSkinGetDefaultShapeMatrix(v30);
          v40 = *DefaultShapeMatrix;
          v41 = DefaultShapeMatrix[1];
          v42 = DefaultShapeMatrix[3];
          v50[2] = DefaultShapeMatrix[2];
          v50[3] = v42;
          v50[0] = v40;
          v50[1] = v41;
          C3DSkinSetDefaultShapeMatrix(v38, v50);
          InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v30);
          C3DSkinCopyInverseBindMatricesPtr(v38, InverseBindMatricesPtr);
          v44 = C3DSkinnerCreateWithSkin(v38);
          CFRelease(v38);
          if (v37)
          {
            v45 = CFArrayCreateCopy(0, v37);
            C3DSkinnerSetJoints(v44, v45);
            CFRelease(v45);
          }

          C3DNodeSetSkinner(Copy, v44);
          CFRelease(v44);
        }
      }
    }
  }

  return Copy;
}

uint64_t C3DNodeGetMorpher(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 248);
  if (result)
  {
    return C3DDeformerStackGetMorpher(result);
  }

  return result;
}

void C3DNodeSetMorpher(CFTypeRef *a1, uint64_t *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Morpher = C3DNodeGetMorpher(a1);
  if (Morpher != a2)
  {
    v13 = Morpher;
    if (Morpher)
    {
      v14 = C3DGetSceneRef(a1);
      C3DRemoveSceneRef(v13, v14);
    }

    if (a2)
    {
      v15 = a1[6];
      if (v15)
      {
        C3DAddSceneRef(a2, v15);
      }

      v17 = a1 + 31;
      v16 = a1[31];
      if (!v16)
      {
        v16 = C3DDeformerStackCreate(a1);
        a1[31] = v16;
        if (!v16)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = a1 + 31;
      v16 = a1[31];
      if (!v16)
      {
LABEL_17:
        if (C3DGetSceneRef(a1))
        {
          SharedInstance = C3DNotificationCenterGetSharedInstance();
          C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
        }

        C3DNodeGeometryDidUpdate(a1);
        return;
      }
    }

    C3DDeformerStackSetMorpher(v16, a2);
    if (C3DDeformerStackIsEmpty(v16) && *v17)
    {
      CFRelease(*v17);
      *v17 = 0;
    }

    goto LABEL_17;
  }
}

uint64_t C3DNodeGetSkinner(uint64_t a1)
{
  result = *(a1 + 248);
  if (result)
  {
    return C3DDeformerStackGetSkinner(result);
  }

  return result;
}

void C3DNodeSetSkinner(void *a1, uint64_t *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[31];
  if (!v12)
  {
    if (!a2)
    {
      return;
    }

LABEL_12:
    v17 = a1[6];
    if (v17)
    {
      C3DAddSceneRef(a2, v17);
    }

    C3DSkinnerSetOwnerNode(a2, a1);
    v16 = a1[31];
    if (!v16)
    {
      v16 = C3DDeformerStackCreate(a1);
      a1[31] = v16;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_16;
  }

  Skinner = C3DDeformerStackGetSkinner(v12);
  if (Skinner == a2)
  {
    return;
  }

  v14 = Skinner;
  if (Skinner)
  {
    v15 = C3DGetSceneRef(a1);
    C3DRemoveSceneRef(v14, v15);
    C3DSkinnerSetOwnerNode(v14, 0);
  }

  if (a2)
  {
    goto LABEL_12;
  }

  v16 = a1[31];
  if (v16)
  {
LABEL_16:
    C3DDeformerStackSetSkinner(v16, a2);
    if (C3DDeformerStackIsEmpty(v16))
    {
      v18 = a1[31];
      if (v18)
      {
        CFRelease(v18);
        a1[31] = 0;
      }
    }
  }

LABEL_19:
  if (C3DGetSceneRef(a1))
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
  }

  C3DNodeGeometryDidUpdate(a1);
}

uint64_t C3DNodeGetChildNodesCount(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 80);
  }

  while (v1);
  return result;
}

uint64_t C3DNodeApplyChildrenInterruptible(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    (*(a2 + 16))(a2, v2, v4, &v6);
    result = v6;
    if (v6)
    {
      break;
    }

    ++v4;
    v2 = *(v2 + 80);
  }

  while (v2);
  return result;
}

uint64_t C3DNodeApplyHierarchy(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = (*(a2 + 16))(a2, result);
    if (v4 == 2)
    {
      return 1;
    }

    v5 = v3;
    while (1)
    {
      if (v4 == 1 || (v6 = v5[9]) == 0)
      {
        if (v5 == v3)
        {
          return 0;
        }

        while (1)
        {
          v6 = v5[10];
          if (v6)
          {
            break;
          }

          v5 = v5[8];
          if (v5)
          {
            v7 = v5 == v3;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            return 0;
          }
        }
      }

      v4 = (*(a2 + 16))(a2, v6);
      v5 = v6;
      if (v4 == 2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t C3DNodeGetName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetName(a1);
}

uint64_t C3DNodeApplyHierarchySkippingHiddenNodes(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result;
    do
    {
LABEL_3:
      v5 = v4;
      if (*(v4 + 200))
      {
        break;
      }

      v6 = (*(a2 + 16))(a2, v4);
      if (v6 == 2)
      {
        return 1;
      }

      v4 = v5[9];
    }

    while (v6 != 1 && v4 != 0);
    while (v5 != v3)
    {
      v4 = v5[10];
      if (v4)
      {
        goto LABEL_3;
      }

      v5 = v5[8];
    }

    return 0;
  }

  return result;
}

uint64_t C3DNodeGetChildNodeAtIndex(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 72);
  if (a2 && result)
  {
    v3 = 1;
    do
    {
      result = *(result + 80);
      if (v3 >= a2)
      {
        break;
      }

      ++v3;
    }

    while (result);
  }

  return result;
}

uint64_t __FixupParent(uint64_t a1, float32x4_t *a2)
{
  a2[4].i64[0] = a1;
  __C3DNodeTransformDidChange(a2);
  if (a1)
  {
    if ((a2[13].i32[3] & 3) != 0)
    {
      v4 = a1;
      do
      {
        *(v4 + 220) |= 2u;
        v4 = *(v4 + 64);
      }

      while (v4);
      if (!a2)
      {
        v5 = scn_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          C3DGeometryTrackNode_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }
    }
  }

  v13 = a2[4].i64[0];
  if (v13)
  {
    v14 = a2[13].i32[3] & 0xFFFFFF7F | (((*(v13 + 220) >> 7) & 1) << 7);
    a2[13].i32[3] = v14;
    v15 = v14 & 0xFC7FFFFF | (((*(v13 + 220) >> 23) & 7) << 23);
    a2[13].i32[3] = v15;
  }

  else
  {
    v15 = a2[13].u32[3];
  }

  __PropagateFlagsToChildren(a2, (v15 >> 7) & 1, (v15 >> 23) & 7);
  __DirtyWorldAlpha(a2, 0);
  v16 = *(a1 + 48);
  v17 = a2[3].i64[0];
  if (v16)
  {
    if (v17 != v16)
    {
      C3DRemoveSceneRef(a2, v17);
      C3DAddSceneRef(a2, *(a1 + 48));
    }
  }

  else
  {
    C3DRemoveSceneRef(a2, v17);
  }

  return __UpdateNodeVisibilityIfNeeded(a2, 1);
}

uint64_t C3DNodeInsertChildNodeAtIndex(uint64_t a1, float32x4_t *cf, int a3)
{
  if (cf[5].i64[0])
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DNodeInsertChildNodeAtIndex_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (cf[4].i64[0])
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DNodeInsertChildNodeAtIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
      if (a3)
      {
        goto LABEL_7;
      }

LABEL_11:
      cf[5].i64[0] = *(a1 + 72);
      *(a1 + 72) = cf;
      CFRetain(cf);
      return __FixupParent(a1, cf);
    }
  }

  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_7:
  v22 = *(a1 + 72);
  v23 = (a3 - 1);
  if (a3 != 1)
  {
    do
    {
      v22 = *(v22 + 80);
      --v23;
    }

    while (v23);
  }

  v24 = *(v22 + 80);
  *(v22 + 80) = cf;
  CFRetain(cf);
  cf[5].i64[0] = v24;
  return __FixupParent(a1, cf);
}

uint64_t C3DNodeInsertChildNodeAfterChild(uint64_t a1, float32x4_t *cf, uint64_t a3)
{
  if (cf[5].i64[0])
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DNodeInsertChildNodeAtIndex_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!cf[4].i64[0] || (v14 = scn_default_log(), !os_log_type_enabled(v14, OS_LOG_TYPE_FAULT)))
  {
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_12:
    cf[5].i64[0] = *(a1 + 72);
    *(a1 + 72) = cf;
    CFRetain(cf);
    return __FixupParent(a1, cf);
  }

  C3DNodeInsertChildNodeAtIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(a3 + 64) != a1)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DNodeInsertChildNodeAfterChild_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(a3 + 80);
  *(a3 + 80) = cf;
  CFRetain(cf);
  cf[5].i64[0] = v30;
  return __FixupParent(a1, cf);
}

void C3DNodeRemoveFromParentNode(void *cf)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  v1 = cf[8];
  if (v1)
  {
    v3 = *(v1 + 72);
    if (v3 == cf)
    {
      *(v1 + 72) = cf[10];
    }

    else
    {
      if (!v3)
      {
        v4 = scn_default_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          C3DNodeRemoveFromParentNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
        }
      }

      for (i = v3[10]; i != cf; i = v3[10])
      {
        v3 = i;
        if (!i)
        {
          v13 = scn_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            C3DNodeRemoveFromParentNode_cold_2(v14, v15, v13);
          }
        }
      }

      v3[10] = cf[10];
    }

    cf[10] = 0;
    cf[8] = 0;
    C3DRemoveSceneRef(cf, cf[6]);
    CFRelease(cf);
  }
}

uint64_t C3DNodeGetIndexOfChildNode(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = v2 == 0;
  v4 = v2 == 0;
  v5 = 0;
  while (!v3 && v2 != a2)
  {
    ++v5;
    v2 = *(v2 + 80);
    v3 = v2 == 0;
    v4 = v2 == 0;
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t C3DNodeGetParent(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

double C3DNodeGetWorldPosition(float32x4_t *a1, __n128 *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DNodeGetWorldPosition_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  WorldMatrix = C3DNodeGetWorldMatrix(a1);
  *&result = C3DMatrix4x4GetTranslation(WorldMatrix, a2).n128_u64[0];
  return result;
}

void C3DNodeGetWorldOrientation(float32x4_t *a1, _OWORD *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DNodeGetWorldOrientation_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  WorldMatrix = C3DNodeGetWorldMatrix(a1);
  v21 = *WorldMatrix;
  v22 = WorldMatrix[1];
  v23 = WorldMatrix[3];
  v25[2] = WorldMatrix[2];
  v25[3] = v23;
  v25[0] = v21;
  v25[1] = v22;
  *&v24 = C3DMatrix4x4GetRotation(v25);
  *a2 = v24;
}

float32x4_t *C3DNodeGetLastFrameWorldMatrix(float32x4_t *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[3].i64[0];
  if (!v10)
  {
    return C3DTransformGetMatrixPtr(a1 + 6);
  }

  TransformTree = C3DSceneGetTransformTree(v10);
  if (a1[5].i32[2] == -1)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetWorldMatrix_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return C3DTransformTreeGetLastFrameWorldTransformPtr(TransformTree, a1[5].i32[2]);
}

void C3DNodeSetPosition(uint64_t a1, __n128 a2)
{
  C3DTransformSetPosition((a1 + 96), a2);

  __C3DNodeTransformDidChange(a1);
}

void __C3DNodeTransformDidChange(float32x4_t *a1)
{
  v2 = a1[3].i64[0];
  if (v2)
  {
    TransformTree = C3DSceneGetTransformTree(v2);
    if (TransformTree)
    {
      if (a1[5].i32[2] != -1)
      {
        v4 = TransformTree;
        memset(&v5, 0, sizeof(v5));
        C3DNodeGetMatrix(a1, &v5);
        C3DTransformTreeUpdateNodeTransform(v4, a1[5].i32[2], &v5);
      }
    }
  }

  __UpdateAudioTransform(a1);
}

void C3DNodeSetScale(float32x4_t *a1, __n128 a2)
{
  C3DTransformSetScale(&a1[6], a2);

  __C3DNodeTransformDidChange(a1);
}

void C3DNodeSetAxisAngle(float32x4_t *a1, __n128 a2)
{
  C3DTransformSetAxisAngle(&a1[6], a2);

  __C3DNodeTransformDidChange(a1);
}

void C3DNodeSetEuler(float32x4_t *a1, __n128 a2)
{
  C3DTransformSetEuler(&a1[6], a2);

  __C3DNodeTransformDidChange(a1);
}

void C3DNodeSetQuaternion(float32x4_t *a1, __n128 a2)
{
  C3DTransformSetQuaternion(&a1[6], a2);

  __C3DNodeTransformDidChange(a1);
}

void C3DNodeSetMatrix(float32x4_t *a1, uint64_t a2)
{
  C3DTransformSetMatrix(&a1[6], a2);

  __C3DNodeTransformDidChange(a1);
}

double C3DNodeGetLocalNoPivotMatrix@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *&result = C3DTransformGetMatrix(a1 + 96, a2).n128_u64[0];
  return result;
}

double C3DNodeGetPivotPosition(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v12.n128_u32[2] = 0;
  v12.n128_u64[0] = 0;
  v10 = *(a1 + 192);
  if (!v10)
  {
    return 0.0;
  }

  C3DMatrix4x4GetTranslation(v10, &v12);
  return v12.n128_f64[0];
}

void C3DNodeSetPivotPosition(float32x4_t *a1, __n128 a2)
{
  if (!a1)
  {
    v14 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v14;
    if (v4)
    {
      C3DGeometryTrackNode_cold_2(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v14;
    }
  }

  v12 = a1[12].i64[0];
  if (v12)
  {
    C3DMatrix4x4SetTranslation(v12, a2);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    C3DMatrix4x4SetTranslation(v15, a2);
    C3DNodeSetPivotMatrix(a1, v15);
  }

  v13 = a1[12].i64[0];
  if (v13)
  {
    *(v13 + 124) = 0;
  }

  __C3DNodeTransformDidChange(a1);
}

__n128 C3DNodeComputeWorldMatrix(float32x4_t *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeComputeWorldMatrix_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  WorldMatrix = C3DNodeGetWorldMatrix(a1);
  result = WorldMatrix[2];
  v14 = WorldMatrix[3];
  v16 = *WorldMatrix;
  v15 = WorldMatrix[1];
  *(a2 + 32) = result;
  *(a2 + 48) = v14;
  *a2 = v16;
  *(a2 + 16) = v15;
  return result;
}

__n128 C3DNodeComputeWorldTransform(float32x4_t *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeComputeWorldMatrix_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[5].i32[2] == -1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(a1);
    result = WorldMatrix[2];
    v23 = WorldMatrix[3];
    v25 = *WorldMatrix;
    v24 = WorldMatrix[1];
    *(a2 + 32) = result;
    *(a2 + 48) = v23;
    *a2 = v25;
    *(a2 + 16) = v24;
  }

  else
  {
    C3DNodeGetMatrix(a1, &v34);
    result = v34;
    v13 = v35;
    v14 = v36;
    v15 = v37;
    v16 = a1[4].i64[0];
    if (v16)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      C3DNodeComputeWorldTransform(v16, &v30);
      v17 = 0;
      v18 = v30;
      v19 = v31;
      v20 = v32;
      v21 = v33;
      v38[0] = v26;
      v38[1] = v27;
      v38[2] = v28;
      v38[3] = v29;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      do
      {
        *(&v39 + v17 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v38[v17])), v19, *&v38[v17], 1), v20, v38[v17], 2), v21, v38[v17], 3);
        ++v17;
      }

      while (v17 != 4);
      result = v39;
      v13 = v40;
      v14 = v41;
      v15 = v42;
    }

    *a2 = result;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    *(a2 + 48) = v15;
  }

  return result;
}

uint64_t C3DNodeGetID(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetID(a1);
}

uint64_t C3DNodeGetNodeWithName(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DNodeGetNodeWithName_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = __C3DNodeGetNodeWithName_block_invoke;
  v22[3] = &unk_2782FE648;
  v22[4] = &v23;
  v22[5] = a2;
  C3DNodeApplyHierarchy(a1, v22);
  v20 = v24[3];
  _Block_object_dispose(&v23, 8);
  return v20;
}

uint64_t __C3DNodeGetNodeWithName_block_invoke(uint64_t a1, uint64_t a2)
{
  result = C3DNodeGetName(a2);
  if (result)
  {
    if (CFEqual(result, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = a2;
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableArrayRef C3DNodeCopyNodesWithAttribute(uint64_t a1, __CFString *a2, char a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DNodeCopyNodesWithAttribute_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v23 = Mutable;
  if (@"kMeshKey" == a2)
  {
    v24 = v30;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 0x40000000;
    v30[2] = __C3DNodeCopyNodesWithAttribute_block_invoke;
    v30[3] = &__block_descriptor_tmp_30_0;
    v30[4] = Mutable;
LABEL_11:
    v25 = v24 + 5;
    goto LABEL_12;
  }

  if (@"kDeformerStackKey" == a2)
  {
    v24 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 0x40000000;
    v29[2] = __C3DNodeCopyNodesWithAttribute_block_invoke_2;
    v29[3] = &__block_descriptor_tmp_31_2;
    v29[4] = Mutable;
    goto LABEL_11;
  }

  v24 = v27;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 0x40000000;
  v27[2] = __C3DNodeCopyNodesWithAttribute_block_invoke_3;
  v27[3] = &__block_descriptor_tmp_32;
  v27[4] = a2;
  v27[5] = Mutable;
  v25 = &v28;
LABEL_12:
  *v25 = a3;
  C3DNodeApplyHierarchy(a1, v24);
  return v23;
}

uint64_t __C3DNodeCopyNodesWithAttribute_block_invoke(uint64_t a1, const void *a2)
{
  if (C3DNodeGetGeometry(a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __C3DNodeCopyNodesWithAttribute_block_invoke_2(uint64_t a1, const void *a2)
{
  if (C3DNodeGetDeformerStack(a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __C3DNodeCopyNodesWithAttribute_block_invoke_3(uint64_t a1, const void *a2)
{
  if (C3DEntityHasAttribute(a2, *(a1 + 32)) && (CFArrayAppendValue(*(a1 + 40), a2), (*(a1 + 48) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

__CFArray *C3DNodeCopyChildNodesPassingTest(void *a1, uint64_t a2, int a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  _C3DNodeCopyChildNodesPassingTest(a1, a2, a3, Mutable);
  return Mutable;
}

uint64_t _C3DNodeCopyChildNodesPassingTest(void *a1, uint64_t a2, int a3, __CFArray *a4)
{
  v19 = 1;
  if ((*(a2 + 16))(a2, a1, &v19))
  {
    CFArrayAppendValue(a4, a1);
  }

  v8 = v19;
  if (v19 == 1 && a3 != 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v14 = ___C3DNodeCopyChildNodesPassingTest_block_invoke;
    v15 = &unk_2782FE740;
    v18 = a3;
    v16 = a2;
    v17 = a4;
    v20 = 0;
    v10 = a1[9];
    if (v10)
    {
      v11 = 0;
      do
      {
        v14(v13, v10, v11, &v20);
        if (v20)
        {
          break;
        }

        ++v11;
        v10 = *(v10 + 80);
      }

      while (v10);
      v8 = v19;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

CFStringRef C3DNodeSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetName(a1, theString);
}

CFTypeRef C3DNodeSetID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetID(a1, cf);
}

void C3DNodeGetWorldAlpha(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 220);
  if ((v10 & 0x20) != 0)
  {
    *(a1 + 256) = *(a1 + 204);
    if (*(a1 + 64))
    {
      *(a1 + 256) = C3DNodeGetWorldAlpha() * *(a1 + 256);
      v10 = *(a1 + 220);
    }

    *(a1 + 220) = v10 & 0xFFFFFFDF;
  }
}

void __DirtyWorldAlpha(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 220);
  if (*(a1 + 72))
  {
    *(a1 + 220) = v12 & 0xFFFFFFDF;
    v13 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ____DirtyWorldAlpha_block_invoke;
    v14[3] = &__block_descriptor_tmp_163;
    v15 = a2;
    v14[4] = v13;
    C3DNodeApplyHierarchy(a1, v14);
  }

  else
  {
    *(a1 + 220) = v12 | 0x20;
  }
}

uint64_t __UpdateCullingSystemFlags(uint64_t a1, int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    result = C3DSceneGetCullingSystem(result);
    if (result)
    {
      if (a2)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ____UpdateCullingSystemFlags_block_invoke;
        v6[3] = &__block_descriptor_tmp_165;
        v6[4] = result;
        return C3DNodeApplyHierarchy(a1, v6);
      }

      else
      {
        v5 = *(a1 + 216);
        if (v5 != -1)
        {

          return C3DCullingSystemUpdateFlags(result, v5);
        }
      }
    }
  }

  return result;
}

uint64_t C3DNodeIsHiddenOrIsHiddenByAncestor(uint64_t a1)
{
  v1 = a1;
  if (C3DNodeIsHidden(a1))
  {
    return 1;
  }

  do
  {
    v1 = *(v1 + 64);
    v2 = v1 != 0;
  }

  while (v1 && !C3DNodeIsHidden(v1));
  return v2;
}

float C3DNodeIsHiddenOrTransparentOrIsHiddenOrTransparentByAncestor(uint64_t a1)
{
  v1 = a1;
  if (!C3DNodeIsHiddenOrTransparent(a1))
  {
    do
    {
      v1 = *(v1 + 64);
      if (!v1)
      {
        break;
      }

      if (*(v1 + 200))
      {
        break;
      }

      result = *(v1 + 204);
    }

    while (result > 0.0);
  }

  return result;
}

BOOL C3DNodeIsHiddenOrTransparent(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 200) & 1) != 0 || *(a1 + 204) <= 0.0;
}

uint64_t __UpdateNodeVisibilityIfNeeded(uint64_t result, char a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v4 = result;
    if (C3DNodeShouldBePutInCullingSystem(result) && *(v4 + 216) == -1)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __UpdateNodeVisibilityIfNeeded_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    __UpdateCullingSystemFlags(v4, 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = ____UpdateNodeVisibilityIfNeeded_block_invoke;
    v13[3] = &__block_descriptor_tmp_168;
    v14 = a2;
    v13[4] = v4;
    v13[5] = v2;
    return C3DNodeApplyHierarchy(v4, v13);
  }

  return result;
}

BOOL C3DNodeIsAncestor(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DNodeIsAncestor_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  do
  {
LABEL_6:
    v3 = *(v3 + 64);
  }

  while (v3 != a2 && v3 != 0);
  return v3 != 0;
}

void *C3DNodeFindCommonAncestor(CFArrayRef theArray)
{
  if (!theArray)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DNodeFindCommonAncestor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v11 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (v11 >= 2)
  {
    for (i = 1; i != v11; ++i)
    {
      v14 = CFArrayGetValueAtIndex(theArray, i);
      if (!ValueAtIndex)
      {
        break;
      }

      while (!v14)
      {
LABEL_12:
        ValueAtIndex = ValueAtIndex[8];
        if (!ValueAtIndex)
        {
          return ValueAtIndex;
        }
      }

      v15 = v14;
      while (v15 != ValueAtIndex)
      {
        v15 = v15[8];
        if (!v15)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return ValueAtIndex;
}

const __CFDictionary *C3DNodeGetRenderingOrder(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = C3DEntityGetAttribute(a1, @"kRenderingPriorityKey");
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberLongType, &valuePtr);
    return valuePtr;
  }

  return result;
}

void C3DNodeSetRenderingOrder(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DNodeGetRenderingOrder(a1) != a2)
  {
    if (a2)
    {
      valuePtr = a2;
      v12 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
      C3DEntitySetAttribute(a1, @"kRenderingPriorityKey", v12);
      CFRelease(v12);
    }

    else
    {
      C3DEntitySetAttribute(a1, @"kRenderingPriorityKey", 0);
    }

    C3DScenePostPipelineEvent(*(a1 + 48), 5, a1, 0);
  }
}

uint64_t C3DNodeGetCastsShadow(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 222) >> 5) & 1;
}

void C3DNodeSetCastsShadow(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 220);
  if (((((v12 & 0x200000) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 0x200000;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 220) = v12 & 0xFFDFFFFF | v13;
    C3DScenePostPipelineEvent(*(a1 + 48), 5, a1, 0);
    __UpdateCullingSystemFlags(a1, 0);
  }
}

void C3DNodeSetUsesDepthPrePass(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 220);
  if (((((v12 & 0x4000000) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 0x4000000;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 220) = v12 & 0xFBFFFFFF | v13;
    v14 = *(a1 + 48);
    C3DScenePostPipelineEvent(v14, 8, a1, 0);
    C3DScenePostPipelineEvent(v14, 5, a1, 0);
    __UpdateCullingSystemFlags(a1, 0);
  }
}

uint64_t C3DNodeGetCategoryBitMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

uint64_t C3DNodeSetCategoryBitMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 208) = a2;
  return __UpdateCullingSystemFlags(a1, 0);
}

uint64_t C3DNodeGetMovability(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 220) >> 22) & 1;
}

void C3DNodeSetMovability(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 220);
  if (((v12 >> 22) & 1) != a2)
  {
    *(a1 + 220) = v12 & 0xFFBFFFFF | ((a2 & 1) << 22);
    __UpdateCullingSystemFlags(a1, 0);
  }
}

uint64_t C3DNodeSetHittable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t C3DNodeSetIsJoint(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t C3DNodeSetIsGizmo(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFDFFFF | v2;
  return result;
}

__C3DGeometry *C3DNodeGetPresentationMesh(uint64_t a1)
{
  result = *(a1 + 240);
  if (result)
  {
    return C3DGeometryGetRenderingMesh(result);
  }

  return result;
}

const void *C3DNodeGetPresentationMeshLegacy(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 248);
  if (v3 && (Skinner = C3DDeformerStackGetSkinner(v3)) != 0)
  {

    return C3DSkinnerGetSkinnedMeshLegacy(Skinner, a1);
  }

  else
  {
    Morpher = C3DNodeGetMorpher(a1);
    if (Morpher)
    {

      return C3DMorpherGetMorphedMeshLegacy(Morpher);
    }

    else
    {

      return C3DGeometryGetRenderingMesh(v1);
    }
  }
}

uint64_t C3DNodeHasLight(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 221) >> 1) & 1;
}

void C3DNodeSetLight(float32x4_t *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[3].i64[0];
  if (v12)
  {
    Light = C3DNodeGetLight(a1);
    if (Light)
    {
      C3DRemoveSceneRef(Light, a1[3].i64[0]);
      LightingSystem = C3DSceneGetLightingSystem(v12);
      C3DLightingSystemRemove(LightingSystem, a1);
    }
  }

  v15 = C3DGetSceneRef(a1) != 0;
  _C3DEntitySetAttribute(a1, @"kLightKey", a2, v15);
  if (a2)
  {
    v16 = a1[3].i64[0];
    if (v16)
    {
      C3DAddSceneRef(a2, v16);
    }
  }

  a1[13].i32[3] = a1[13].i32[3] & 0xFFFFFDFF | ((a2 != 0) << 9);
  if (a2 && v12)
  {
    v17 = C3DSceneGetLightingSystem(v12);
    C3DLightingSystemAdd(v17, a1);
    C3DLightingSystemLightDidUpdate(v17, a2);
  }

  else if (!a2)
  {
    return;
  }

  if (C3DLightTypeSupportsShadow(a2))
  {
    if (C3DLightGetCastsShadow(a2))
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance();
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v12, 0, 1u);
    }
  }
}

const __CFDictionary *C3DNodeGetCamera(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 4) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kCameraKey");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetCamera(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DGetSceneRef(a1))
  {
    Camera = C3DNodeGetCamera(a1);
    if (Camera)
    {
      C3DRemoveSceneRef(Camera, *(a1 + 48));
    }
  }

  v13 = C3DGetSceneRef(a1) != 0;
  _C3DEntitySetAttribute(a1, @"kCameraKey", a2, v13);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFBFF | ((a2 != 0) << 10);
  if (a2)
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      C3DAddSceneRef(a2, v14);
    }
  }
}

void C3DNodeSetPostMorphingDeformers(void *a1, const __CFArray *cf)
{
  v4 = a1[31];
  if (cf && !v4)
  {
    v4 = C3DDeformerStackCreate(a1);
    a1[31] = v4;
  }

  if (v4)
  {
    C3DDeformerStackSetPostMorphingDeformers(v4, cf);
    if (C3DDeformerStackIsEmpty(v4))
    {
      v5 = a1[31];
      if (v5)
      {
        CFRelease(v5);
        a1[31] = 0;
      }
    }

    if (a1[6])
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance();

      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
    }
  }
}

void C3DNodeSetPostSkinningDeformers(void *a1, const __CFArray *cf)
{
  v4 = a1[31];
  if (cf && !v4)
  {
    v4 = C3DDeformerStackCreate(a1);
    a1[31] = v4;
  }

  if (v4)
  {
    C3DDeformerStackSetPostSkinningDeformers(v4, cf);
    if (C3DDeformerStackIsEmpty(v4))
    {
      v5 = a1[31];
      if (v5)
      {
        CFRelease(v5);
        a1[31] = 0;
      }
    }

    if (a1[6])
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance();

      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
    }
  }
}

const __CFDictionary *C3DNodeGetLightmapInfo(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 8) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kLightmapInfoKey");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetLightmapInfo(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DGetSceneRef(a1) != 0;
  _C3DEntitySetAttribute(a1, @"kLightmapInfoKey", a2, v12);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFF7FF | ((a2 != 0) << 11);
}

void C3DNodeSetRendererDelegate(uint64_t a1, const __CFDictionary *a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DGetSceneRef(v3) != 0;
  _C3DEntitySetAttribute(v3, @"rendererDelegate", a2, v12);
  if ((a2 != 0) == ((*(v3 + 220) & 0x2000) == 0))
  {
    *(v3 + 220) = *(v3 + 220) & 0xFFFFDFFF | ((a2 != 0) << 13);
    __UpdateCullingSystemFlags(v3, 0);
    do
    {
      *(v3 + 220) |= 2u;
      v3 = *(v3 + 64);
    }

    while (v3);
  }
}

const __CFDictionary *C3DNodeGetParticleSystems(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 222) & 4) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kParticleSystem");
  }

  else
  {
    return 0;
  }
}

CFIndex C3DNodeGetCountOfParticleSystems(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 222) & 4) == 0)
  {
    return 0;
  }

  Attribute = C3DEntityGetAttribute(a1, @"kParticleSystem");
  return CFArrayGetCount(Attribute);
}

void C3DNodeAddParticleSystem(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DNodeAddParticleSystem_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  CountOfParticleSystems = C3DNodeGetCountOfParticleSystems(a1);
  C3DNodeInsertParticleSystemAtIndex(a1, a2, CountOfParticleSystems);
}

void C3DNodeInsertParticleSystemAtIndex(uint64_t a1, void *a2, CFIndex a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(a1, @"kParticleSystem");
  if (!Attribute)
  {
    Attribute = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    C3DEntitySetAttribute(a1, @"kParticleSystem", Attribute);
    CFRelease(Attribute);
  }

  CFArrayInsertValueAtIndex(Attribute, a3, a2);
  *(a1 + 220) |= 0x40000u;
  v23 = *(a1 + 48);
  if (v23)
  {
    ParticleManager = C3DSceneGetParticleManager(*(a1 + 48), 1);
    if (ParticleManager)
    {
      C3DParticleManagerAddSystem(ParticleManager, a1, a2, 0);
    }

    C3DAddSceneRef(a2, v23);
  }
}

void C3DNodeRemoveAllParticleSystems(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    ParticleManager = C3DSceneGetParticleManager(v10, 1);
  }

  else
  {
    ParticleManager = 0;
  }

  if (C3DGetSceneRef(a1))
  {
    ParticleSystems = C3DNodeGetParticleSystems(a1);
    if (ParticleSystems)
    {
      v13 = ParticleSystems;
      Count = CFArrayGetCount(ParticleSystems);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
          v18 = C3DGetSceneRef(a1);
          C3DRemoveSceneRef(ValueAtIndex, v18);
        }
      }
    }
  }

  C3DEntitySetAttribute(a1, @"kParticleSystem", 0);
  if (ParticleManager)
  {
    C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(ParticleManager, a1);
  }

  *(a1 + 220) &= ~0x40000u;
}

void C3DNodeRemoveParticleSystem(uint64_t a1, const void *a2, int a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(a1, @"kParticleSystem");
  if (Attribute)
  {
    v23 = Attribute;
    v25.length = CFArrayGetCount(Attribute);
    v25.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v23, v25, a2);
    C3DNodeRemoveParticleSystemAtIndex(a1, FirstIndexOfValue, a3);
  }
}

void C3DNodeRemoveParticleSystemAtIndex(uint64_t a1, CFIndex a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Attribute = C3DEntityGetAttribute(a1, @"kParticleSystem");
  if (Attribute)
  {
    v15 = Attribute;
    if (a2 < 0 || CFArrayGetCount(Attribute) <= a2)
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, a2);
      CFArrayRemoveValueAtIndex(v15, a2);
    }

    if (CFArrayGetCount(v15))
    {
      *(a1 + 220) &= ~0x40000u;
    }

    if (ValueAtIndex)
    {
      v17 = C3DGetSceneRef(a1);
      C3DRemoveSceneRef(ValueAtIndex, v17);
      if (a3)
      {
        v18 = *(a1 + 48);
        if (v18)
        {
          ParticleManager = C3DSceneGetParticleManager(v18, 0);
          if (ParticleManager)
          {
            C3DParticleManagerRemoveSystem(ParticleManager, a1, ValueAtIndex);
          }
        }
      }
    }
  }
}

void C3DNodeReplaceParticleSystemAtIndex(uint64_t a1, void *cf, CFIndex a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (cf)
    {
      goto LABEL_4;
    }
  }

  else if (cf)
  {
LABEL_4:
    CFRetain(cf);
    C3DNodeRemoveParticleSystemAtIndex(a1, a3, 1);
    C3DNodeInsertParticleSystemAtIndex(a1, cf, a3);
    CFRelease(cf);
    return;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  C3DNodeRemoveParticleSystemAtIndex(a1, a3, 1);
  C3DNodeInsertParticleSystemAtIndex(a1, 0, a3);
}

const __CFDictionary *C3DNodeGetAudioPlayers(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 222) & 8) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kAudioPlayer");
  }

  else
  {
    return 0;
  }
}

CFIndex C3DNodeGetCountOfAudioPlayers(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 222) & 8) == 0)
  {
    return 0;
  }

  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  return CFArrayGetCount(Attribute);
}

uint64_t C3DNodeAddAudioPlayer(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DNodeAddAudioPlayer_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  CountOfAudioPlayers = C3DNodeGetCountOfAudioPlayers(a1);
  C3DNodeInsertAudioPlayerAtIndex(a1, a2, CountOfAudioPlayers);
  result = C3DNodeIsHiddenOrIsHiddenByAncestor(a1);
  if ((result & 1) == 0)
  {
    return C3DAudioPlayerPlay(a2);
  }

  return result;
}

uint64_t C3DNodeInsertAudioPlayerAtIndex(uint64_t a1, void *a2, CFIndex a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddAudioPlayer_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  if (!Attribute)
  {
    Attribute = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    C3DEntitySetAttribute(a1, @"kAudioPlayer", Attribute);
    CFRelease(Attribute);
  }

  CFArrayInsertValueAtIndex(Attribute, a3, a2);
  *(a1 + 220) |= 0x80000u;
  WorldMatrix = C3DNodeGetWorldMatrix(a1);
  C3DAudioPlayerSetTransform(a2, WorldMatrix);
  return C3DAudioManagerAddVoice(a2);
}

void C3DNodeRemoveAllAudioPlayers(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  if (Attribute)
  {
    Count = CFArrayGetCount(Attribute);
    if (Count >= 1)
    {
      v12 = Count;
      do
      {
        C3DNodeRemoveAudioPlayerAtIndex(a1, 0, 1);
        --v12;
      }

      while (v12);
    }

    C3DEntitySetAttribute(a1, @"kAudioPlayer", 0);
  }

  *(a1 + 220) &= ~0x80000u;
}

void C3DNodeRemoveAudioPlayerAtIndex(uint64_t a1, CFIndex a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  if (Attribute)
  {
    v15 = Attribute;
    ValueAtIndex = CFArrayGetValueAtIndex(Attribute, a2);
    v17 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    CFArrayRemoveValueAtIndex(v15, a2);
    if (CFArrayGetCount(v15))
    {
      *(a1 + 220) &= ~0x80000u;
    }

    if (a3)
    {
      C3DAudioManagerRemoveVoice(v17);
    }

    SCNAudioPlayerWasRemovedFromNode(v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

void C3DNodeRemoveAudioPlayer(uint64_t a1, const void *a2, int a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  if (Attribute)
  {
    v23 = Attribute;
    v25.length = CFArrayGetCount(Attribute);
    v25.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v23, v25, a2);
    if (FirstIndexOfValue != -1)
    {
      C3DNodeRemoveAudioPlayerAtIndex(a1, FirstIndexOfValue, a3);
    }
  }
}

void C3DNodeReplaceAudioPlayerAtIndex(float32x4_t *a1, void *cf, CFIndex a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (cf)
    {
      goto LABEL_4;
    }
  }

  else if (cf)
  {
LABEL_4:
    CFRetain(cf);
    C3DNodeRemoveAudioPlayerAtIndex(a1, a3, 1);
    C3DNodeInsertAudioPlayerAtIndex(a1, cf, a3);
    WorldMatrix = C3DNodeGetWorldMatrix(a1);
    C3DAudioPlayerSetTransform(cf, WorldMatrix);
    CFRelease(cf);
    return;
  }

  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  C3DNodeRemoveAudioPlayerAtIndex(a1, a3, 1);
  C3DNodeInsertAudioPlayerAtIndex(a1, 0, a3);
  v23 = C3DNodeGetWorldMatrix(a1);
  C3DAudioPlayerSetTransform(0, v23);
}

void __UpdateAudioTransform(float32x4_t *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((a1[13].i8[14] & 8) != 0)
  {
    Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
    if (!Attribute)
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __UpdateAudioTransform_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    WorldMatrix = C3DNodeGetWorldMatrix(a1);
    Count = CFArrayGetCount(Attribute);
    if (Count >= 1)
    {
      v21 = Count;
      for (i = 0; i != v21; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Attribute, i);
        C3DAudioPlayerSetTransform(ValueAtIndex, WorldMatrix);
      }
    }
  }
}

uint64_t C3DNodeHasConstraints(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 222) & 1;
}

const __CFDictionary *C3DNodeGetConstraints(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 222))
  {
    return C3DEntityGetAttribute(a1, @"kConstraints");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetConstraints(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DGetSceneRef(a1))
  {
    Constraints = C3DNodeGetConstraints(a1);
    if (Constraints)
    {
      v13 = Constraints;
      Count = CFArrayGetCount(Constraints);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
          v18 = C3DGetSceneRef(a1);
          C3DRemoveSceneRef(ValueAtIndex, v18);
        }
      }
    }
  }

  v19 = C3DGetSceneRef(a1) != 0;
  _C3DEntitySetAttribute(a1, @"kConstraints", a2, v19);
  *(a1 + 220) = *(a1 + 220) & 0xFFFEFFFF | ((a2 != 0) << 16);
  v20 = *(a1 + 48);
  if (v20)
  {
    C3DSceneRegisterNodeConstrains(*(a1 + 48), a1);
    if (a2)
    {
      v21 = CFArrayGetCount(a2);
      if (v21 >= 1)
      {
        v22 = v21;
        for (j = 0; j != v22; ++j)
        {
          v24 = CFArrayGetValueAtIndex(a2, j);
          C3DAddSceneRef(v24, v20);
        }
      }
    }
  }
}

void C3DNodeSetHasPhysicsBody(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 220) = *(a1 + 220) & 0xFFFFFFBF | v12;
}

uint64_t C3DNodeGetHasPhysicsBody(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 220) >> 6) & 1;
}

void C3DNodeSetHasPhysicsField(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 0x100000;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 220) = *(a1 + 220) & 0xFFEFFFFF | v12;
}

uint64_t C3DNodeGetHasPhysicsField(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 222) >> 4) & 1;
}

void C3DNodeSetFilters(uint64_t a1, CFArrayRef theArray)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (theArray)
    {
      goto LABEL_4;
    }
  }

  else if (theArray)
  {
LABEL_4:
    v12 = (CFArrayGetCount(theArray) > 0) << 14;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  *(a1 + 220) = *(a1 + 220) & 0xFFFFBFFF | v12;
  v17 = kC3DCIFilterParamControllerCallbacks;
  v18 = off_2817423B8;
  v13 = C3DAnimatableParamControllerCreate(theArray, &v17);
  v14 = C3DGetSceneRef(a1) != 0;
  _C3DEntitySetAttribute(a1, @"kFilterKey", v13, v14);
  CFRelease(v13);
  __PropagateFlagsToChildren(a1, (*(a1 + 220) >> 14) & 1, (*(a1 + 220) >> 23) & 7);
  v15 = *(a1 + 48);
  if (v15)
  {
    C3DSceneRegisterNodeFilters(*(a1 + 48), a1);
    __UpdateCullingHandle(a1, v15);
    EnginePipeline = C3DSceneGetEnginePipeline(v15);
    C3DEnginePipelineRemoveNodeFromRendering(EnginePipeline, a1);
    __UpdateNodeVisibilityIfNeeded(a1, 1);
  }
}

void __PropagateFlagsToChildren(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 220);
  v15 = (v14 >> 7) & 0x80;
  if (a2)
  {
    v15 = 128;
  }

  *(a1 + 220) = v15 & 0xFC7FFFFF | ((a3 & 7) << 23) | v14 & 0xFC7FFF7F;
  for (i = *(a1 + 72); i; i = *(i + 80))
  {
    __PropagateFlagsToChildren(i, (*(a1 + 220) >> 7) & 1, a3);
  }
}

const __CFDictionary *C3DNodeGetFiltersParamController(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 0x40) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kFilterKey");
  }

  else
  {
    return 0;
  }
}

uint64_t C3DNodeGetRendererElementSpan(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void C3DNodeSetLayerIndex(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2 >= 4)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeSetLayerIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 220) = *(a1 + 220) & 0xFC7FFFFF | ((v2 & 7) << 23);
}

id _C3DNodeCFFinalize(uint64_t a1)
{
  Geometry = C3DNodeGetGeometry(a1);
  if (Geometry)
  {
    C3DGeometryUntrackNode(Geometry, a1);
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationNodeWillDie", a1, 0, 1u);
  v4 = *(a1 + 192);
  if (v4)
  {
    free(v4);
  }

  if ((*(a1 + 222) & 8) != 0)
  {
    C3DNodeRemoveAllAudioPlayers(a1);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    do
    {
      v6 = v5[8];
      if (v6 == a1)
      {
        v5[8] = 0;
      }

      else if (v6)
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeCFFinalize_cold_1(&v14, v15, v7);
        }
      }

      v8 = v5[10];
      v5[10] = 0;
      CFRelease(v5);
      v5 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 80) = 0;
  }

  v10 = *(a1 + 240);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 240) = 0;
  }

  v11 = *(a1 + 248);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 248) = 0;
  }

  v12 = *(a1 + 232);
  if (v12)
  {
    free(v12);
  }

  return C3DEntityCFFinalize(a1);
}

__CFString *_C3DNodeCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DNodeGetName(a1);
  CFStringAppendFormat(Mutable, 0, @"<C3DNode:%p %@\n", a1, Name);
  Geometry = C3DNodeGetGeometry(a1);
  CFStringAppendFormat(Mutable, 0, @"  geometry: %@\n", Geometry);
  v5 = *(a1 + 220);
  if ((v5 & 0x200) != 0)
  {
    Light = C3DNodeGetLight(a1);
    CFStringAppendFormat(Mutable, 0, @"  light: %@\n", Light);
    v5 = *(a1 + 220);
  }

  if ((v5 & 0x400) != 0)
  {
    Camera = C3DNodeGetCamera(a1);
    CFStringAppendFormat(Mutable, 0, @"  camera: %@\n", Camera);
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    Skinner = C3DDeformerStackGetSkinner(v8);
    if (Skinner)
    {
      CFStringAppendFormat(Mutable, 0, @"  skinner: %@\n", Skinner);
    }
  }

  Morpher = C3DNodeGetMorpher(a1);
  if (Morpher)
  {
    CFStringAppendFormat(Mutable, 0, @"  morpher: %@\n", Morpher);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

BOOL _C3DNodeInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v75 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
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
    _C3DGeometryFinalizeDeserialization_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if ((C3DEntityInitWithPropertyList(a1, a2) & 1) == 0)
  {
    v35 = scn_default_log();
    result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DNodeInitWithPropertyList_cold_3();
    return 0;
  }

  Attributes = C3DEntityGetAttributes(a1);
  if (Attributes)
  {
    v25 = Attributes;
    Count = CFDictionaryGetCount(Attributes);
    Mutable = CFDictionaryCreateMutable(0, Count, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    context = Mutable;
    CFDictionaryApplyFunction(v25, _fillPatchedDictionay, &context);
    if (context.i64[1])
    {
      if (!Mutable)
      {
        goto LABEL_12;
      }

      C3DEntitySetAttributes(a1, Mutable);
      C3DEntityGetAttributes(a1);
    }

    CFRelease(Mutable);
LABEL_12:
    Value = CFDictionaryGetValue(a2, @"attributes");
    if (Value)
    {
      v29 = Value;
      v30 = CFDictionaryGetValue(Value, @"kSkinnerKey");
      if (v30)
      {
        v31 = v30;
        C3DSkinnerCreate();
        v33 = v32;
        v34 = C3DInitWithPropertyList(v32, v31, a3, a4);
        if (v34)
        {
          C3DNodeSetSkinner(a1, v33);
        }

        CFRelease(v33);
      }

      else
      {
        v34 = 1;
      }

      v37 = CFDictionaryGetValue(v29, @"kMorpherKey");
      if (v37)
      {
        v38 = v37;
        v39 = C3DMorphCreate();
        v40 = C3DMorpherCreateWith(v39);
        CFRelease(v39);
        if ((v34 & C3DInitWithPropertyList(v40, v38, a3, a4)) == 1)
        {
          C3DNodeSetMorpher(a1, v40);
        }

        CFRelease(v40);
      }
    }
  }

  v41 = CFDictionaryGetValue(a2, @"hidden");
  if (v41)
  {
    CFNumberGetValue(v41, kCFNumberShortType, &valuePtr);
    *(a1 + 200) = valuePtr != 0;
  }

  v42 = CFDictionaryGetValue(a2, @"alpha");
  if (v42)
  {
    CFNumberGetValue(v42, kCFNumberFloatType, (a1 + 204));
  }

  v43 = CFDictionaryGetValue(a2, @"category");
  if (v43)
  {
    CFNumberGetValue(v43, kCFNumberNSIntegerType, (a1 + 208));
  }

  v44 = CFDictionaryGetValue(a2, @"isJoint");
  if (v44)
  {
    v45 = *(a1 + 220) & 0xFFFFFEFF | ((CFBooleanGetValue(v44) & 1) << 8);
  }

  else
  {
    v45 = *(a1 + 220) & 0xFFFFFEFF;
  }

  *(a1 + 220) = v45;
  v46 = CFDictionaryGetValue(a2, @"transforms");
  if (!v46)
  {
    goto LABEL_40;
  }

  v47 = v46;
  v69.n128_u32[2] = 0;
  v69.n128_u64[0] = 0;
  v68 = 0uLL;
  v73 = 0u;
  v74 = 0u;
  context = 0u;
  v72 = 0u;
  v48 = CFDictionaryGetValue(v46, @"matrix4x4");
  if (!v48)
  {
    v50 = CFDictionaryGetValue(v47, @"position");
    if (v50 && C3DVector3InitWithPropertyList(&v69, v50, a3, a4))
    {
      C3DTransformSetPosition((a1 + 96), v69);
      v51 = 1;
    }

    else
    {
      v51 = 0;
    }

    v53 = CFDictionaryGetValue(v47, @"scale");
    if (v53 && C3DVector3InitWithPropertyList(&v69, v53, a3, a4))
    {
      C3DTransformSetScale(a1 + 96, v69);
    }

    else
    {
      v51 = 0;
    }

    v54 = CFDictionaryGetValue(v47, @"rotation");
    if (!v54)
    {
      goto LABEL_67;
    }

    v55 = v54;
    v56 = CFDictionaryGetValue(v54, @"quaternion");
    if (v56)
    {
      if ((C3DVector3InitWithPropertyList(&v68, v56, a3, a4) & 1) == 0)
      {
        v59 = scn_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_5();
        }

        return 0;
      }

      v57 = v68;
    }

    else
    {
      v58 = CFDictionaryGetValue(v55, @"euler");
      if (v58)
      {
        if ((C3DVector3InitWithPropertyList(&v69, v58, a3, a4) & 1) == 0)
        {
          v62 = scn_default_log();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            _C3DNodeInitWithPropertyList_cold_6();
          }

          return 0;
        }

        C3DTransformSetEuler(a1 + 96, v69);
        goto LABEL_66;
      }

      v60 = CFDictionaryGetValue(v55, @"axisAngle");
      if (v60)
      {
        if ((C3DVector3InitWithPropertyList(&v68, v60, a3, a4) & 1) == 0)
        {
          v64 = scn_default_log();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            _C3DNodeInitWithPropertyList_cold_7();
          }

          return 0;
        }

        C3DTransformSetAxisAngle(a1 + 96, v68);
        goto LABEL_66;
      }

      v63 = CFDictionaryGetValue(v55, @"matrix4x4");
      if (!v63)
      {
        v65 = scn_default_log();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_10();
        }

        return 0;
      }

      if ((C3DMatrix4x4InitWithPropertyList(&context, v63, a3, a4) & 1) == 0)
      {
        v66 = scn_default_log();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_8();
        }

        return 0;
      }

      v67[0] = context;
      v67[1] = v72;
      v67[2] = v73;
      v67[3] = v74;
      v57.n128_f64[0] = C3DMatrix4x4GetRotation(v67);
      v68 = v57;
    }

    C3DTransformSetQuaternion(a1 + 96, v57);
LABEL_66:
    if (v51)
    {
LABEL_37:
      if (CFDictionaryGetValue(v47, @"pivot"))
      {
        v49 = scn_default_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_9();
        }
      }

LABEL_40:
      __C3DNodeTransformDidChange(a1);
      return 1;
    }

LABEL_67:
    v61 = scn_default_log();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeInitWithPropertyList_cold_11();
      if (!a4)
      {
        return 0;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*a4)
    {
      *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
    }

    return 0;
  }

  if (C3DMatrix4x4InitWithPropertyList(&context, v48, a3, a4))
  {
    C3DTransformSetMatrix(a1 + 96, &context);
    goto LABEL_37;
  }

  v52 = scn_default_log();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    _C3DNodeInitWithPropertyList_cold_4();
  }

  return 0;
}

__CFDictionary *_C3DNodeCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr = 0;
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Attributes = C3DEntityGetAttributes(a1);
  Morpher = C3DNodeGetMorpher(a1);
  if (Morpher)
  {
    _C3DEntitySetAttribute(a1, @"kMorpherKey", Morpher, 0);
  }

  v16 = *(a1 + 248);
  if (v16 && (Skinner = C3DDeformerStackGetSkinner(v16)) != 0)
  {
    _C3DEntitySetAttribute(a1, @"kSkinnerKey", Skinner, 0);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (Morpher)
  {
    _C3DEntitySetAttribute(a1, @"kMorpherKey", 0, 0);
  }

  if ((v18 & 1) == 0)
  {
    _C3DEntitySetAttribute(a1, @"kSkinnerKey", 0, 0);
  }

  if (v19)
  {
    Value = CFDictionaryGetValue(v19, @"attributes");
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(v19, @"attributes", Value);
      CFRelease(Value);
    }

    _serializeNodeAttribute(a1, Attributes, @"kMeshKey", a2, Value);
    _serializeNodeAttribute(a1, Attributes, @"kCameraKey", a2, Value);
    _serializeNodeAttribute(a1, Attributes, @"kLightKey", a2, Value);
    _serializeNodeAttribute(a1, Attributes, @"kLightmapInfoKey", a2, Value);
    valuePtr = *(a1 + 200);
    v21 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
    CFDictionaryAddValue(v19, @"hidden", v21);
    CFRelease(v21);
    v22 = CFNumberCreate(0, kCFNumberFloatType, (a1 + 204));
    CFDictionaryAddValue(v19, @"alpha", v22);
    CFRelease(v22);
    v23 = CFNumberCreate(0, kCFNumberNSIntegerType, (a1 + 208));
    CFDictionaryAddValue(v19, @"category", v23);
    CFRelease(v23);
    if (*(a1 + 221))
    {
      CFDictionaryAddValue(v19, @"isJoint", *MEMORY[0x277CBED28]);
    }

    memset(v28, 0, sizeof(v28));
    C3DNodeGetMatrix(a1, v28);
    v24 = C3DMatrix4x4CopyPropertyList(v28);
    if (v24)
    {
      v25 = v24;
      Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(v19, @"transforms", Mutable);
      CFDictionaryAddValue(Mutable, @"matrix4x4", v25);
      CFRelease(v25);
      CFRelease(Mutable);
    }
  }

  return v19;
}

uint64_t _C3DNodeFinalizeDeserialization(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  valuePtr = 0;
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Attributes = C3DEntityGetAttributes(a1);
  Value = CFDictionaryGetValue(a3, @"attributes");
  if (!Attributes)
  {
    v26 = 1;
    return v26 & 1;
  }

  v18 = Value;
  CFRetain(Attributes);
  v19 = CFDictionaryGetValue(Attributes, @"kMeshKey");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(v20, kCFNumberIntType, &valuePtr))
      {
        v28 = scn_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeFinalizeDeserialization_cold_2();
          if (a4)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v22 = valuePtr;
      TypeID = C3DGeometryGetTypeID();
      valuePtr = C3DLibraryGetRemappedID(a2, v22, TypeID);
      v24 = C3DGeometryGetTypeID();
      Entry = C3DLibraryGetEntry(a2, v24, valuePtr);
      if (Entry)
      {
        C3DNodeSetGeometry(a1, Entry);
      }

      else
      {
        v29 = scn_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BEF7000, v29, OS_LOG_TYPE_DEFAULT, "Warning: Node<->attribute inconsistency finalizing deserialization", buf, 2u);
        }

        _C3DEntitySetAttribute(a1, @"kMeshKey", 0, 0);
      }
    }
  }

  v30 = CFDictionaryGetValue(Attributes, @"kCameraKey");
  if (v30)
  {
    v31 = v30;
    v32 = CFGetTypeID(v30);
    if (v32 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(v31, kCFNumberIntType, &valuePtr))
      {
        v37 = scn_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeFinalizeDeserialization_cold_2();
          if (a4)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v33 = valuePtr;
      v34 = C3DCameraGetTypeID();
      valuePtr = C3DLibraryGetRemappedID(a2, v33, v34);
      v35 = C3DCameraGetTypeID();
      v36 = C3DLibraryGetEntry(a2, v35, valuePtr);
      if (v36)
      {
        C3DNodeSetCamera(a1, v36);
      }

      else
      {
        v38 = scn_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *v72 = 0;
          _os_log_impl(&dword_21BEF7000, v38, OS_LOG_TYPE_DEFAULT, "Warning: Node<->attribute inconsistency finalizing deserialization", v72, 2u);
        }

        _C3DEntitySetAttribute(a1, @"kCameraKey", 0, 0);
      }
    }
  }

  v39 = CFDictionaryGetValue(Attributes, @"kLightKey");
  if (!v39)
  {
    goto LABEL_42;
  }

  v40 = v39;
  v41 = CFGetTypeID(v39);
  if (v41 != CFNumberGetTypeID())
  {
    goto LABEL_42;
  }

  if (!CFNumberGetValue(v40, kCFNumberIntType, &valuePtr))
  {
    v46 = scn_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeFinalizeDeserialization_cold_2();
      if (a4)
      {
LABEL_36:
        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }

LABEL_38:
      CFRelease(Attributes);
      return 0;
    }

LABEL_35:
    if (a4)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v42 = valuePtr;
  v43 = C3DLightGetTypeID();
  valuePtr = C3DLibraryGetRemappedID(a2, v42, v43);
  v44 = C3DLightGetTypeID();
  v45 = C3DLibraryGetEntry(a2, v44, valuePtr);
  if (v45)
  {
    C3DNodeSetLight(a1, v45);
  }

  else
  {
    v47 = scn_default_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 0;
      _os_log_impl(&dword_21BEF7000, v47, OS_LOG_TYPE_DEFAULT, "Warning: Node<->attribute inconsistency finalizing deserialization", v71, 2u);
    }

    _C3DEntitySetAttribute(a1, @"kLightKey", 0, 0);
  }

LABEL_42:
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFBFF | ((C3DEntityGetAttribute(a1, @"kCameraKey") != 0) << 10);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFDFF | ((C3DEntityGetAttribute(a1, @"kLightKey") != 0) << 9);
  v48 = CFDictionaryGetValue(Attributes, @"kLightmapInfoKey");
  CFRelease(Attributes);
  if (!v48)
  {
    goto LABEL_47;
  }

  v49 = CFDictionaryGetValue(v48, @"image");
  if (v49 && CFNumberGetValue(v49, kCFNumberIntType, &valuePtr))
  {
    v50 = valuePtr;
    v51 = C3DImageGetTypeID();
    valuePtr = C3DLibraryGetRemappedID(a2, v50, v51);
    v52 = C3DImageGetTypeID();
    v53 = C3DLibraryGetEntry(a2, v52, valuePtr);
    if (v53)
    {
      v54 = v53;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v48);
      CFDictionarySetValue(MutableCopy, @"image", v54);
      C3DNodeSetLightmapInfo(a1, MutableCopy);
      CFRelease(MutableCopy);
LABEL_47:
      v56 = *(a1 + 248);
      if (v56)
      {
        Skinner = C3DDeformerStackGetSkinner(v56);
        if (Skinner)
        {
          v58 = CFDictionaryGetValue(v18, @"kSkinnerKey");
          v26 = C3DFinalizeDeserialization(Skinner, a2, v58, a4);
          OverrideMaterial = C3DGeometryGetOverrideMaterial(Skinner);
          if (OverrideMaterial)
          {
            Joints = C3DSkinnerGetJoints(OverrideMaterial);
            v61 = Joints ? C3DGeometryGetMesh(Joints) : 0;
            Geometry = C3DNodeGetGeometry(a1);
            if (Geometry)
            {
              if (v61)
              {
                C3DGeometrySetMesh(Geometry, v61);
              }
            }
          }

          __C3DComputeLocalBoundingBox(a1);
          v63 = 0;
          goto LABEL_67;
        }
      }

      else
      {
        Skinner = 0;
      }

      v63 = 1;
      v26 = 1;
LABEL_67:
      Morpher = C3DNodeGetMorpher(a1);
      if (Morpher)
      {
        v68 = Morpher;
        v69 = CFDictionaryGetValue(v18, @"kMorpherKey");
        v26 &= C3DFinalizeDeserialization(v68, a2, v69, a4);
        if ((v63 & 1) == 0)
        {
          v70 = C3DGeometryGetOverrideMaterial(Skinner);
          if (v70)
          {
            C3DSkinSetInfluencingMorpher(v70, v68);
          }
        }
      }

      return v26 & 1;
    }

    v65 = scn_default_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeFinalizeDeserialization_cold_5();
    }
  }

  else
  {
    v62 = scn_default_log();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeFinalizeDeserialization_cold_6();
    }
  }

  if (!a4 || *a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

void _C3DNodeFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if ((*(a1 + 222) & 2) == 0)
  {
    if (C3DEntityGetAttributes(a1))
    {
      Attributes = C3DEntityGetAttributes(a1);
      Value = CFDictionaryGetValue(Attributes, @"kLightKey");
      if (Value)
      {
        v16 = Value;
        C3DLibraryAddEntry(a2, Value);
        C3DFillLibraryForSerialization(v16, a2, a3);
      }
    }

    if (C3DEntityGetAttributes(a1))
    {
      v17 = C3DEntityGetAttributes(a1);
      v18 = CFDictionaryGetValue(v17, @"kCameraKey");
      if (v18)
      {
        v19 = v18;
        C3DLibraryAddEntry(a2, v18);
        C3DFillLibraryForSerialization(v19, a2, a3);
      }
    }

    v20 = *(a1 + 240);
    if (v20)
    {
      C3DLibraryAddEntry(a2, v20);
      C3DFillLibraryForSerialization(*(a1 + 240), a2, a3);
    }

    v21 = *(a1 + 248);
    if (v21)
    {
      Skinner = C3DDeformerStackGetSkinner(v21);
      if (Skinner)
      {
        C3DFillLibraryForSerialization(Skinner, a2, a3);
      }
    }

    Morpher = C3DNodeGetMorpher(a1);
    if (Morpher)
    {
      C3DFillLibraryForSerialization(Morpher, a2, a3);
    }

    LightmapInfo = C3DNodeGetLightmapInfo(a1);
    if (LightmapInfo)
    {
      v25 = CFDictionaryGetValue(LightmapInfo, @"image");
      if (v25)
      {
        v26 = v25;
        TypeID = C3DImageGetTypeID();
        if (TypeID == CFGetTypeID(v26))
        {
          C3DLibraryAddEntry(a2, v26);
          C3DFillLibraryForSerialization(v26, a2, a3);
        }
      }
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 0x40000000;
    v31 = ___C3DNodeFillLibraryForSerialization_block_invoke;
    v32 = &__block_descriptor_tmp_121;
    v33 = a2;
    v34 = a3;
    v28 = *(a1 + 72);
    if (v28)
    {
      v29 = 0;
      do
      {
        (v31)(v30, v28, v29++);
        v28 = *(v28 + 80);
      }

      while (v28);
    }
  }
}

void _fillPatchedDictionay(CFStringRef theString, void *value, uint64_t a3)
{
  v5 = *a3;
  if (theString && CFStringHasPrefix(theString, @"kC3D") && (v10.length = CFStringGetLength(theString) - 4, v10.location = 4, v7 = CFStringCreateWithSubstring(0, theString, v10), v8 = CFStringCreateWithFormat(0, 0, @"k%@", v7), CFRelease(v7), v8))
  {
    *(a3 + 8) = 1;
    CFDictionaryAddValue(v5, v8, value);

    CFRelease(v8);
  }

  else
  {

    CFDictionaryAddValue(v5, theString, value);
  }
}

void _serializeNodeAttribute(uint64_t a1, const __CFDictionary *a2, __CFString *theString1, uint64_t a4, __CFDictionary *a5)
{
  if (CFStringCompare(theString1, @"kLightmapInfoKey", 0))
  {
    if (@"kMeshKey" == theString1)
    {
      Value = *(a1 + 240);
      if (!Value)
      {
        return;
      }
    }

    else
    {
      if (!a2)
      {
        return;
      }

      Value = CFDictionaryGetValue(a2, theString1);
      if (!Value)
      {
        return;
      }
    }

    EntryID = C3DLibraryGetEntryID(a4, Value);
    if (!EntryID)
    {
      return;
    }

    v26 = CFNumberCreate(0, kCFNumberIntType, &EntryID);
    CFDictionarySetValue(a5, theString1, v26);
    v25 = v26;
LABEL_18:
    CFRelease(v25);
    return;
  }

  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, @"kLightmapInfoKey");
    if (v11)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v11);
      v13 = CFDictionaryGetValue(MutableCopy, @"image");
      if (v13)
      {
        v14 = v13;
        v15 = CFGetTypeID(v13);
        if (v15 == C3DImageGetTypeID())
        {
          valuePtr = C3DLibraryGetEntryID(a4, v14);
          if (!valuePtr)
          {
            v16 = scn_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              _serializeNodeAttribute_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
            }
          }

          v24 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(MutableCopy, @"image", v24);
          CFRelease(v24);
          CFDictionarySetValue(a5, @"kLightmapInfoKey", MutableCopy);
        }
      }

      v25 = MutableCopy;
      goto LABEL_18;
    }
  }
}

__CFArray *_C3DNodeCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0x500000001;
  ID = C3DEntityGetID(a1);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v5, @"name", @"id");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  ID = C3DEntityGetName(a1);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v9, @"name", @"name");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  ID = C3DEntityGetAttributes(a1);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v13, @"name", @"attributes");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = MEMORY[0x277CBF138];
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v4);
  valuePtr = 0xB00000000;
  ID = a1 + 96;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v18, @"name", @"transforms");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, v17, MEMORY[0x277CBF150]);
  valuePtr = 0x500000002;
  ID = a1 + 72;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v22, @"name", @"firstChild");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, v17, MEMORY[0x277CBF150]);
  valuePtr = 0x500000002;
  ID = a1 + 80;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v29 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v26, @"name", @"nextSibling");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, v17, MEMORY[0x277CBF150]);
  valuePtr = 0x100000000;
  ID = a1 + 204;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v30, @"name", @"opacity");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v17, MEMORY[0x277CBF150]);
  valuePtr = 0x300000000;
  ID = a1 + 200;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v34, @"name", @"hidden");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ID = a1 + 64;
  valuePtr = 0;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v41 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v38, @"name", @"parent");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(Mutable, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  v42 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0x500000002;
  ID = a1 + 240;
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v45 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v42, @"name", @"geometry");
  CFDictionarySetValue(v42, @"type", v43);
  CFDictionarySetValue(v42, @"address", v45);
  CFDictionarySetValue(v42, @"semantic", v44);
  CFArrayAppendValue(Mutable, v42);
  CFRelease(v44);
  CFRelease(v42);
  CFRelease(v45);
  CFRelease(v43);
  v46 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0x200000000;
  ID = a1 + 208;
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v49 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v46, @"name", @"categoryBitMask");
  CFDictionarySetValue(v46, @"type", v47);
  CFDictionarySetValue(v46, @"address", v49);
  CFDictionarySetValue(v46, @"semantic", v48);
  CFArrayAppendValue(Mutable, v46);
  CFRelease(v48);
  CFRelease(v46);
  CFRelease(v49);
  CFRelease(v47);
  if (C3DNodeGetMorpher(a1))
  {
    v50 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    valuePtr = 0x500000001;
    ID = C3DNodeGetMorpher(a1);
    v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v52 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v53 = CFNumberCreate(0, kCFNumberLongType, &ID);
    CFDictionarySetValue(v50, @"name", @"morpher");
    CFDictionarySetValue(v50, @"type", v51);
    CFDictionarySetValue(v50, @"address", v53);
    CFDictionarySetValue(v50, @"semantic", v52);
    CFArrayAppendValue(Mutable, v50);
    CFRelease(v52);
    CFRelease(v50);
    CFRelease(v53);
    CFRelease(v51);
  }

  v54 = *(a1 + 248);
  if (v54 && C3DDeformerStackGetSkinner(v54))
  {
    v55 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    valuePtr = 0x500000001;
    Skinner = *(a1 + 248);
    if (Skinner)
    {
      Skinner = C3DDeformerStackGetSkinner(Skinner);
    }

    ID = Skinner;
    v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v59 = CFNumberCreate(0, kCFNumberLongType, &ID);
    CFDictionarySetValue(v55, @"name", @"skinner");
    CFDictionarySetValue(v55, @"type", v57);
    CFDictionarySetValue(v55, @"address", v59);
    CFDictionarySetValue(v55, @"semantic", v58);
    CFArrayAppendValue(Mutable, v55);
    CFRelease(v58);
    CFRelease(v55);
    CFRelease(v59);
    CFRelease(v57);
  }

  return Mutable;
}

uint64_t _C3DNodeGetBoundingBox(float32x4_t *a1, int a2, float32x4_t *a3, float32x4_t *a4)
{
  v10 = 0u;
  v11 = 0u;
  if (a2)
  {
    if (C3DNodeComputeHierarchicalBoundingBox(a1, 1, &v10))
    {
LABEL_3:
      v6 = v10;
      v7 = v11;
      *a3 = vsubq_f32(v10, v11);
      *a4 = vaddq_f32(v6, v7);
      return 1;
    }
  }

  else
  {
    v9 = a1[18];
    v10 = a1[17];
    v11 = v9;
    if ((vminvq_u32(vcgezq_f32(a1[18])) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _C3DNodeGetBoundingSphere(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  if (!a3)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DNodeGetBoundingSphere_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v34 = 0uLL;
  v33 = 0uLL;
  Geometry = C3DNodeGetGeometry(a1);
  if (!Geometry)
  {
LABEL_8:
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v15 = a1[15].i64[1];
  if (v15)
  {
    Skinner = C3DDeformerStackGetSkinner(v15);
    if (Skinner)
    {
      v29 = 0u;
      v30 = 0u;
      LOBYTE(Geometry) = C3DSkinnerGetBoundingBox(Skinner, a1, &v29);
      v17 = v29;
      v17.i32[3] = vmaxvq_f32(v30);
      v34 = v17;
      goto LABEL_8;
    }
  }

  LOBYTE(Geometry) = C3DGetBoundingSphere(Geometry, a2, &v34);
  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_11:
  v18 = a1[4].i64[1];
  if (v18)
  {
    LODWORD(v19) = 0;
    do
    {
      v19 = (v19 + 1);
      v18 = *(v18 + 80);
    }

    while (v18);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = a1[4].i64[1];
        if (i && v21)
        {
          v22 = 1;
          do
          {
            v21 = v21[5].n128_u64[0];
            if (v22 >= i)
            {
              break;
            }

            ++v22;
          }

          while (v21);
        }

        if (C3DGetBoundingSphere(v21, 1, &v33))
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          C3DNodeGetMatrix(v21, &v29);
          Scale = C3DTransformGetScale(v21 + 6);
          *&v24 = C3DTransformBoundingSphere(&v33, &v29, &v33, Scale).n128_u64[0];
          if (Geometry)
          {
            C3DSphereMakeByMergingSpheres(&v34, &v33, &v34, v24, v25, v26, v27);
          }

          else
          {
            v34 = v33;
          }

          LOBYTE(Geometry) = 1;
        }
      }
    }
  }

LABEL_27:
  if ((Geometry & 1) == 0)
  {
    return 0;
  }

  *a3 = v34;
  return 1;
}

void _C3DNodeSetValue(uint64_t a1, __n128 *__dst, unsigned __int32 *__src, size_t __n, int a5, unsigned int a6, __n128 a7)
{
  v8 = (a1 + 96);
  if (v8 == __dst)
  {
    C3DTransformSetValue(v8, __src, __n, a5, a6, a7);

    __C3DNodeTransformDidChange(a1);
  }

  else if (*(a1 + 192) == __dst)
  {

    C3DNodeSetPivotMatrix(a1, __src);
  }

  else if ((a1 + 204) == __dst)
  {
    v9 = *__src;

    C3DNodeSetOpacity(a1, *&v9);
  }

  else if ((a1 + 200) == __dst)
  {
    v10 = *__src;

    C3DNodeSetHidden(a1, v10);
  }

  else
  {

    memcpy(__dst, __src, __n);
  }
}

void _C3DNodeGetValue(uint64_t a1, const void *a2, void *__dst, size_t __n, int a5, unsigned int a6)
{
  v6 = a1 + 96;
  if (v6 == a2)
  {
    C3DTransformGetValue(v6, __dst, __n, a5, a6);
  }

  else
  {
    memcpy(__dst, a2, __n);
  }
}

uint64_t _C3DNodeEnumerateSubEntities(void *a1, void (**a2)(void))
{
  Attributes = C3DEntityGetAttributes(a1);
  if (Attributes)
  {
    CFDictionaryApplyFunction(Attributes, _C3DNodeEnumerateAttributeEntities, a2);
  }

  if (a1[30])
  {
    a2[2](a2);
  }

  Morpher = C3DNodeGetMorpher(a1);
  if (Morpher)
  {
    (a2[2])(a2, Morpher);
  }

  v6 = a1[31];
  if (v6)
  {
    Skinner = C3DDeformerStackGetSkinner(v6);
    if (Skinner)
    {
      (a2[2])(a2, Skinner);
    }
  }

  ParticleSystems = C3DNodeGetParticleSystems(a1);
  if (ParticleSystems)
  {
    v9 = ParticleSystems;
    Count = CFArrayGetCount(ParticleSystems);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        (a2[2])(a2, ValueAtIndex);
      }
    }
  }

  result = C3DNodeGetConstraints(a1);
  if (result)
  {
    v15 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v16 = result;
      for (j = 0; j != v16; ++j)
      {
        v18 = CFArrayGetValueAtIndex(v15, j);
        result = (a2[2])(a2, v18);
      }
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v22 = ___C3DNodeEnumerateSubEntities_block_invoke;
  v23 = &unk_2782FE6F0;
  v24 = a2;
  v19 = a1[9];
  if (v19)
  {
    v20 = 0;
    do
    {
      result = (v22)(v21, v19, v20++);
      v19 = *(v19 + 80);
    }

    while (v19);
  }

  return result;
}

void _C3DNodeWasAddedToScene(uint64_t a1, uint64_t a2)
{
  TransformTree = C3DSceneGetTransformTree(a2);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(v5 + 88);
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 88) = C3DTransformTreeAddNode(TransformTree, a1, v6);

  __UpdateCullingHandle(a1, a2);
}

void _C3DNodeWillRemoveFromScene(uint64_t a1, uint64_t a2)
{
  C3DSceneNodeWillBeRemoved(a2, a1);
  if (*(a1 + 88) != -1)
  {
    TransformTree = C3DSceneGetTransformTree(a2);
    if (TransformTree)
    {
      C3DTransformTreeRemoveNode(TransformTree, *(a1 + 88));
    }

    *(a1 + 88) = -1;
  }

  if (*(a1 + 216) != -1)
  {
    CullingSystem = C3DSceneGetCullingSystem(a2);
    if (CullingSystem)
    {
      C3DCullingSystemRemove(CullingSystem, *(a1 + 216));
    }

    *(a1 + 216) = -1;
  }
}

void _C3DNodeFinalizeAddToScene(float32x4_t *a1)
{
  if (!a1[4].i64[0])
  {
    __UpdateNodeVisibilityIfNeeded(a1, 1);
  }

  v2 = a1[15].i64[1];
  if (v2)
  {
    Skinner = C3DDeformerStackGetSkinner(v2);
    if (Skinner)
    {
      v4 = Skinner;
      if (C3DGeometryGetOverrideMaterial(Skinner))
      {

        C3DSkinnerUpdateJointsAndBoundingBox(v4, a1);
      }
    }
  }
}

const void *_C3DNodeEnumerateAttributeEntities(uint64_t a1, const void *a2, uint64_t a3)
{
  result = CFTypeIsC3DEntity(a2);
  if (result)
  {
    v6 = *(a3 + 16);

    return v6(a3, a2);
  }

  return result;
}

uint64_t _C3DNodeSearchByID(uint64_t a1, const void *a2)
{
  v3 = a1;
  ID = C3DEntityGetID(a1);
  if (!C3DEqual(ID, a2))
  {
    Name = C3DEntityGetName(v3);
    if (!Name || !C3DEqual(Name, a2))
    {
      Geometry = C3DNodeGetGeometry(v3);
      v7 = C3DSearchByID(Geometry, a2);
      if (v7)
      {
        return v7;
      }

      Light = C3DNodeGetLight(v3);
      v7 = C3DSearchByID(Light, a2);
      if (v7)
      {
        return v7;
      }

      Morpher = C3DNodeGetMorpher(v3);
      v7 = C3DSearchByID(Morpher, a2);
      if (v7)
      {
        return v7;
      }

      Skinner = *(v3 + 248);
      if (Skinner)
      {
        Skinner = C3DDeformerStackGetSkinner(Skinner);
      }

      v7 = C3DSearchByID(Skinner, a2);
      if (v7)
      {
        return v7;
      }

      Floor = C3DNodeGetFloor(v3);
      v7 = C3DSearchByID(Floor, a2);
      if (v7)
      {
        return v7;
      }

      Camera = C3DNodeGetCamera(v3);
      v7 = C3DSearchByID(Camera, a2);
      if (v7)
      {
        return v7;
      }

      else
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x2000000000;
        v18 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 0x40000000;
        v14[2] = ___C3DNodeSearchByID_block_invoke;
        v14[3] = &unk_2782FE718;
        v14[4] = &v15;
        v14[5] = a2;
        C3DNodeApplyChildrenInterruptible(v3, v14);
        v3 = v16[3];
        _Block_object_dispose(&v15, 8);
      }
    }
  }

  return v3;
}

void SCNCActionFade::~SCNCActionFade(SCNCActionFade *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

SCNCAction *SCNCActionFade::cpp_updateWithTargetForTime(SCNCActionFade *this, SCNNode *a2, double a3)
{
  v6 = SCNCAction::cpp_ratioForTime(this, a3, a2);
  if (this->var22)
  {
    [(SCNNode *)a2 opacity];
    *&v7 = v7;
    v8 = this->var19 * v6;
    result = [(SCNNode *)a2 setOpacity:(v8 + (*&v7 - this->var21))];
    this->var21 = v8;
  }

  else
  {
    result = [(SCNNode *)a2 setOpacity:((this->var19 * v6) + (this->var21 * (1.0 - v6)))];
  }

  if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) == 0)
  {
    v10.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v10);
  }

  return result;
}

SCNCAction *SCNCActionFade::cpp_willStartWithTargetAtTime(SCNCActionFade *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v6 = 0.0;
  if (!this->var22)
  {
    result = [(SCNNode *)a2 opacity];
    v6 = v7;
  }

  this->var21 = v6;
  return result;
}

void __C3DMeshInvalidateRenderableData(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = a1 + 121;
    v5 = 9;
    do
    {
      *(v4 - 1) = 255;
      v4 += 2;
      --v5;
    }

    while (v5);
    CFRelease(v3);
    *(a1 + 112) = 0;
  }
}

void __BuildRenderableSourceChannelsAndSemanticInfos(uint64_t a1)
{
  v2 = a1 + 112;
  Count = CFArrayGetCount(*(a1 + 112));
  free(*(a1 + 152));
  *(a1 + 152) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);

  __BuildSemanticInfosForData(a1, v2);
}

void __BuildSemanticInfosForData(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *&v34[5] = *MEMORY[0x277D85DE8];
  v5 = a2 + 8;
  do
  {
    *(a2 + v4 + 8) = 255;
    v4 += 2;
  }

  while (v4 != 18);
  *(a1 + 200) &= ~0x80u;
  Count = CFArrayGetCount(*a2);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v9 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v8);
      Semantic = C3DMeshSourceGetSemantic(ValueAtIndex);
      v12 = Semantic;
      if (Semantic == v9)
      {
        if (!v9)
        {
          if (*(a2 + 9))
          {
            v13 = scn_default_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              __BuildSemanticInfosForData_cold_3(v33, v34, v13);
            }
          }
        }

        v14 = v5 + 2 * v9;
        v15 = *(v14 + 1) + 1;
        *(v14 + 1) = v15;
        if (v9 != 3 && v15 >= 2u)
        {
          v16 = scn_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            Name = C3DEntityGetName(a1);
            v18 = C3DMeshSourceSemanticToSemanticString(v9);
            *buf = 138412546;
            v30 = Name;
            v31 = 2112;
            v32 = v18;
            _os_log_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Mesh '%@' : sources of redundant semantic '%@' will be ignored in rendering", buf, 0x16u);
          }
        }
      }

      else
      {
        if (Semantic <= v9)
        {
          v19 = scn_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            __BuildSemanticInfosForData_cold_1(v27, &v28, v19);
          }
        }

        v20 = (v5 + 2 * v12);
        if (*v20 != 255)
        {
          v21 = scn_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            __BuildSemanticInfosForData_cold_2(v25, &v26, v21);
          }
        }

        *v20 = v8;
        v20[1] = 1;
        v9 = v12;
      }

      if (v12 == 2)
      {
        HasNonOpaqueColors = C3DMeshSourceHasNonOpaqueColors(ValueAtIndex);
        v23 = *(a1 + 200);
        v24 = v23 & 0x80;
        if (HasNonOpaqueColors)
        {
          v24 = 0x80;
        }

        *(a1 + 200) = v24 & 0x80 | v23 & 0x7F;
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

void *__DropOriginalTopology(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __DropOriginalTopology_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(a1 + 144))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __DropOriginalTopology_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 64);
  v19 = *(a1 + 112);
  if (v18 != v19)
  {
    if (v18)
    {
      CFRelease(*(a1 + 64));
      *(a1 + 64) = 0;
      v19 = *(a1 + 112);
    }

    if (v19)
    {
      v19 = CFRetain(v19);
    }

    *(a1 + 64) = v19;
  }

  v20 = *(a1 + 96);
  v21 = *(a1 + 144);
  if (v20 != v21)
  {
    if (v20)
    {
      CFRelease(*(a1 + 96));
      *(a1 + 96) = 0;
      v21 = *(a1 + 144);
    }

    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *(a1 + 96) = v21;
  }

  *(a1 + 72) = *(a1 + 120);
  *(a1 + 88) = *(a1 + 136);
  Count = CFArrayGetCount(*(a1 + 112));
  free(*(a1 + 104));
  v23 = malloc_type_malloc(Count, 0x1B0F1610uLL);
  *(a1 + 104) = v23;
  return memcpy(v23, *(a1 + 152), Count);
}

void __UpdateSourcesMutability(uint64_t a1)
{
  *(a1 + 200) &= ~4u;
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 0x40000000;
  v1[2] = ____UpdateSourcesMutability_block_invoke;
  v1[3] = &__block_descriptor_tmp_35;
  v1[4] = a1;
  C3DMeshApplySources(a1, 0, v1);
}

void C3DMeshApplySources(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v5 = a1 + 112;
  }

  else if (a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
  }

  else
  {
    v5 = a1 + 64;
  }

  for (i = 0; i != 9; ++i)
  {
    v15 = (v5 + 8 + 2 * i);
    v16 = *v15;
    if (v16 != -1)
    {
      v17 = v15[1];
      if (v15[1])
      {
        v18 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v5, v16 + v18);
          (*(a3 + 16))(a3, ValueAtIndex, i, v18, *(v16 + v18 + *(v5 + 40)));
          ++v18;
        }

        while (v17 != v18);
      }
    }
  }
}

uint64_t _C3DMeshFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v49 = 1;
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"sources");
  if (!Value)
  {
    v28 = scn_default_log();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    _C3DMeshFinalizeDeserialization_cold_5(theDict, v28, v29, v30, v31, v32, v33, v34);
    if (!a4)
    {
      return 0;
    }

    goto LABEL_33;
  }

  v17 = Value;
  if (CFArrayGetCount(Value) < 1)
  {
    v19 = 1;
LABEL_22:
    v35 = CFDictionaryGetValue(theDict, @"primarySourcesInfo");
    if (v35)
    {
      *&buf = a2;
      *(&buf + 1) = &v49;
      v51 = a4;
      CFDictionaryApplyFunction(v35, __DeserializePrimarySource, &buf);
      v19 = v49;
      if (!v49)
      {
        v47 = scn_default_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          _C3DMeshFinalizeDeserialization_cold_2();
        }

        return 0;
      }
    }

    if (v19 == 1 && (v36 = CFDictionaryGetValue(theDict, @"geometryElements")) != 0 && (v37 = v36, Count = CFArrayGetCount(v36), Count >= 1))
    {
      v39 = Count;
      v40 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v37, v40);
        v42 = C3DMeshElementCreate();
        v43 = C3DInitWithPropertyList(v42, ValueAtIndex, 0, a4);
        v49 = v43;
        if (!v43)
        {
          break;
        }

        C3DMeshAppendElement(a1, v42);
        CFRelease(v42);
        if (v39 == ++v40)
        {
          goto LABEL_30;
        }
      }

      v48 = scn_default_log();
      result = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
      if (result)
      {
        _C3DMeshFinalizeDeserialization_cold_3();
        return 0;
      }
    }

    else
    {
LABEL_30:
      C3DMeshBuildRenderableData(a1, 1);
      return v49;
    }

    return result;
  }

  v18 = 0;
  v19 = 1;
  while (1)
  {
    v20 = CFArrayGetValueAtIndex(v17, v18);
    v21 = CFGetTypeID(v20);
    if (v21 != CFNumberGetTypeID())
    {
      v24 = _C3DMeshSourceCreate();
      v25 = CFArrayGetValueAtIndex(v17, v18);
      v26 = C3DInitWithPropertyList(v24, v25, 0, a4);
      v19 = v26;
      v49 = v26;
      if (v26)
      {
        __C3DMeshAddSourceWithDataKind(a1, v24, 0, 0, 0);
      }

      CFRelease(v24);
      goto LABEL_14;
    }

    SourceWithID = __FindSourceWithID(a2, v20);
    if (!SourceWithID)
    {
      break;
    }

    v23 = SourceWithID;
    if ((C3DMeshSourceGetSemantic(SourceWithID) - 7) > 0xFDu)
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_INFO, "Info: Mesh deserialization: Skipped a source that will be recreated at runtime : %@", &buf, 0xCu);
      }
    }

    else
    {
      __C3DMeshAddSourceWithDataKind(a1, v23, 0, 0, 0);
    }

LABEL_14:
    if (++v18 >= CFArrayGetCount(v17))
    {
      goto LABEL_22;
    }
  }

  v45 = scn_default_log();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    _C3DMeshFinalizeDeserialization_cold_4();
    if (!a4)
    {
      return 0;
    }

LABEL_33:
    if (*a4)
    {
      return 0;
    }

    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
    result = 0;
    *a4 = MalformedDocumentError;
    return result;
  }

LABEL_32:
  if (a4)
  {
    goto LABEL_33;
  }

  return 0;
}

void *__FindSourceWithID(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
  {
    return 0;
  }

  v3 = valuePtr;
  TypeID = C3DMeshSourceGetTypeID();
  result = C3DLibraryGetRemappedID(a1, v3, TypeID);
  if (result)
  {
    v6 = result;
    v7 = C3DMeshSourceGetTypeID();
    return C3DLibraryGetEntry(a1, v7, v6);
  }

  return result;
}

void __DeserializePrimarySource(const __CFString *a1, CFDictionaryRef theDict, uint64_t *a3)
{
  *&v31[5] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  Value = CFDictionaryGetValue(theDict, @"data");
  v9 = CFDictionaryGetValue(theDict, @"subIDs");
  IntValue = CFStringGetIntValue(a1);
  TypeID = C3DMeshSourceGetTypeID();
  RemappedID = C3DLibraryGetRemappedID(v5, IntValue, TypeID);
  v13 = C3DMeshSourceGetTypeID();
  Entry = C3DLibraryGetEntry(v5, v13, RemappedID);
  if (Entry)
  {
    v15 = Entry;
    theData = Value;
    Count = CFArrayGetCount(v9);
    Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
    v18 = CFArrayGetCount(v9);
    if (v18 >= 1)
    {
      v19 = v18;
      v20 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v20);
        SourceWithID = __FindSourceWithID(v5, ValueAtIndex);
        if (!SourceWithID)
        {
          break;
        }

        Accessor = C3DGenericSourceGetAccessor(SourceWithID);
        if (C3DSceneSourceGetURL(Accessor) != v15)
        {
          v24 = scn_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            __DeserializePrimarySource_cold_1(v30, v31, v24);
          }
        }

        CFArrayAppendValue(Mutable, Accessor);
        if (v19 == ++v20)
        {
          goto LABEL_9;
        }
      }

      *v6 = 0;
      if (v7 && !*v7)
      {
        *v7 = C3DSceneSourceCreateMalformedDocumentError(0);
      }

      v28 = scn_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __DeserializePrimarySource_cold_2();
        if (!Mutable)
        {
          return;
        }
      }

      else if (!Mutable)
      {
        return;
      }

      v26 = Mutable;
      goto LABEL_24;
    }

LABEL_9:
    DeserializedDataWithAccessors = C3DGenericSourceCreateDeserializedDataWithAccessors(v15, theData, Mutable);
    C3DGenericSourceSetData(v15, DeserializedDataWithAccessors);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (DeserializedDataWithAccessors)
    {
      v26 = DeserializedDataWithAccessors;
LABEL_24:
      CFRelease(v26);
    }
  }

  else
  {
    *v6 = 0;
    if (v7 && !*v7)
    {
      *v7 = C3DSceneSourceCreateMalformedDocumentError(0);
    }

    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __DeserializePrimarySource_cold_3();
    }
  }
}

void C3DMeshAppendElement(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 200) &= ~2u;
  __C3DMeshInvalidateRenderableData(a1);
  CFArrayAppendValue(*(a1 + 96), a2);
}

uint64_t C3DMeshGetTypeID()
{
  if (C3DMeshGetTypeID_onceToken != -1)
  {
    C3DMeshGetTypeID_cold_1();
  }

  return C3DMeshGetTypeID_typeID;
}

double __C3DMeshGetTypeID_block_invoke()
{
  C3DMeshGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281740D70 = kC3DC3DMeshContextClassSerializable;
  unk_281740D80 = *&off_282DC53E8;
  qword_281740D28 = _C3DMeshCopyInstanceVariables;
  result = *&kC3DC3DMeshContextClassSceneLink;
  unk_281740D40 = kC3DC3DMeshContextClassSceneLink;
  unk_281740D50 = unk_282DC5408;
  qword_281740D60 = qword_282DC5418;
  unk_281740D68 = _C3DMeshSearchByID;
  return result;
}

uint64_t C3DMeshCreate()
{
  if (C3DMeshGetTypeID_onceToken != -1)
  {
    C3DMeshGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMeshGetTypeID_typeID, 208);
  v1 = *MEMORY[0x277CBECE8];
  v2 = MEMORY[0x277CBF128];
  *(Instance + 64) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(Instance + 96) = CFArrayCreateMutable(v1, 0, v2);
  *(Instance + 112) = 0;
  *(Instance + 144) = 0;
  *(Instance + 200) = *(Instance + 200) & 0x87 | 0x18;
  __BuildSemanticInfosForData(Instance, Instance + 64);
  return Instance;
}

uint64_t C3DMeshCreateVolatile()
{
  result = C3DMeshCreate();
  *(result + 200) |= 1u;
  return result;
}

uint64_t C3DMeshCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshCreate();
  __C3DMeshCopy(a1, v10, 0);
  return v10;
}

void __C3DMeshCopy(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  __C3DMeshCopySources(a1, a2, a3);
  if (a3)
  {
    ElementsCount = C3DMeshGetElementsCount(a1);
    Mutable = CFArrayCreateMutable(0, ElementsCount, MEMORY[0x277CBF128]);
    if (ElementsCount >= 1)
    {
      for (i = 0; i != ElementsCount; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 0);
        DeepCopy = C3DMeshElementCreateDeepCopy(ElementAtIndex);
        CFArrayAppendValue(Mutable, DeepCopy);
        CFRelease(DeepCopy);
      }
    }

    C3DMeshSetMeshElements(a2, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    v27 = *(a2 + 96);
    if (v27)
    {
      CFRelease(v27);
      *(a2 + 96) = 0;
    }

    v28 = *(a2 + 144);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 144) = 0;
    }

    v29 = *MEMORY[0x277CBECE8];
    *(a2 + 96) = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a1 + 96));
    v30 = *(a1 + 144);
    if (v30)
    {
      MutableCopy = CFArrayCreateMutableCopy(v29, 0, v30);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
    }

    *(a2 + 144) = MutableCopy;
  }

  *(a2 + 200) = *(a2 + 200) & 0x87 | *(a1 + 200) & 0x78;
  C3DEntityCopyTo(a1, a2);
}