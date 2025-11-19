uint64_t glClearColorx_Exec(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, double a6, double a7, double a8)
{
  *&a6 = vcvts_n_f32_s32(a2, 0x10uLL);
  *&a7 = vcvts_n_f32_s32(a3, 0x10uLL);
  *&a8 = vcvts_n_f32_s32(a4, 0x10uLL);
  return glClearColor_Exec(a1, a6, a7, a8, vcvts_n_f32_s32(a5, 0x10uLL));
}

float32x4_t glClearColorx_PackThread(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v8 = vcvtq_f32_s32(v5);
  v6 = gleAddCommand(a1, glClearColor_ListExec, 16);
  result = vmulq_f32(v8, vdupq_n_s32(0x37800000u));
  *v6 = result;
  return result;
}

uint64_t glClearDepth_ListExec(uint64_t a1, double *a2)
{
  v2 = *a2;
  if (!*(*(a1 + 29480) + 110))
  {
    *(a1 + 28652) = 0;
    *(a1 + 29800) |= 0x10u;
  }

  v3 = 1.0;
  if (v2 <= 1.0)
  {
    v3 = v2;
  }

  v4 = v2 < 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = v3;
  }

  *(a1 + 15128) = v5;
  return 8;
}

uint64_t glClearDepthf_Exec(uint64_t result, float a2)
{
  if (!*(*(result + 29480) + 110))
  {
    *(result + 28652) = 0;
    *(result + 29800) |= 0x10u;
  }

  v2 = a2;
  if (a2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = a2 < 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = v2;
  }

  *(result + 15128) = v4;
  return result;
}

double *glClearDepthf_PackThread(uint64_t a1, float a2)
{
  v2 = a2;
  result = gleAddCommand(a1, glClearDepth_ListExec, 8);
  *result = v2;
  return result;
}

uint64_t glClearDepthx_Exec(uint64_t result, unsigned int a2)
{
  if (!*(*(result + 29480) + 110))
  {
    *(result + 28652) = 0;
    *(result + 29800) |= 0x10u;
  }

  v2 = vcvts_n_f32_s32(a2, 0x10uLL);
  v3 = v2;
  if (v2 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = v2 < 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = v3;
  }

  *(result + 15128) = v5;
  return result;
}

double *glClearDepthx_PackThread(uint64_t a1, unsigned int a2)
{
  v2 = vcvts_n_f32_s32(a2, 0x10uLL);
  result = gleAddCommand(a1, glClearDepth_ListExec, 8);
  *result = v2;
  return result;
}

void *glClearStencil_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glClearStencil_ListExec, 4);
  *result = a2;
  return result;
}

uint64_t glClearStencil_ListExec(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (!*(*(a1 + 29480) + 110))
  {
    *(a1 + 28652) = 0;
    *(a1 + 29800) |= 0x20u;
  }

  *(a1 + 15172) = v2;
  return 4;
}

uint64_t glClipPlane_Exec(uint64_t result, int a2, float64x2_t *a3)
{
  v3 = (result + 28652);
  v4 = (a2 - 12288);
  if (v4 >= 6)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }
  }

  else
  {
    v5 = result;
    v6 = (result + 16 * v4);
    v7 = &v6[2197];
    v8 = a3[1];
    v9 = vcvt_f32_f64(*a3);
    v6[2197] = v9;
    v10 = vcvt_f32_f64(v8);
    v6[2198] = v10;
    if ((*(result + 1544) & 0x10) != 0)
    {
      result = gleModelMatInvert(result);
      v9.f32[0] = *v7;
      v11 = v7[1];
      v10.f32[0] = v7[2];
      v12 = v7[3];
    }

    else
    {
      v11 = v9.f32[1];
      v12 = v10.f32[1];
    }

    *v7 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5[698], v11), v5[697], v9.f32[0]), v5[699], v10.f32[0]), v5[700], v12);
    v13 = v5[1203].i64[0];
    if (v13)
    {
      v14 = *(v13 + 2 * v4 + 3768);
      if (v14 <= 0x3FF)
      {
        *(v5[97].i32 + ((v14 >> 3) & 0x1FFC)) |= 1 << v14;
        v5[95].i32[3] |= 0x800000u;
      }
    }

    v15 = v5[1204].i64[1];
    if (v15)
    {
      v16 = *(v15 + 2 * v4 + 3768);
      if (v16 <= 0x3FF)
      {
        *(v5[121].i32 + ((v16 >> 3) & 0x1FFC)) |= 1 << v16;
        v5[95].i32[3] |= 0x4000000u;
      }
    }

    v17 = v5[1205].i64[0];
    if (v17)
    {
      v18 = *(v17 + 2 * v4 + 3768);
      if (v18 <= 0x3FF)
      {
        *(v5[129].i32 + ((v18 >> 3) & 0x1FFC)) |= 1 << v18;
        v5[95].i32[3] |= 0x8000000u;
      }
    }

    *v3 = 0;
    v5[95].i32[2] |= 0x1000000 << v4;
  }

  return result;
}

uint64_t glClipPlanef_Exec(uint64_t a1, int a2, float32x2_t *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = vcvtq_f64_f32(a3[1]);
  v5[0] = vcvtq_f64_f32(*a3);
  v5[1] = v3;
  return glClipPlane_Exec(a1, a2, v5);
}

uint64_t glClipPlanex_Exec(uint64_t a1, int a2, int32x2_t *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = vdup_n_s32(0x37800000u);
  v4 = vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(a3[1]), v3));
  v6[0] = vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(*a3), v3));
  v6[1] = v4;
  return glClipPlane_Exec(a1, a2, v6);
}

__n128 glClipPlanef_PackThread(uint64_t a1, int a2, float32x2_t *a3)
{
  v6 = vcvtq_f64_f32(a3[1]);
  v7 = vcvtq_f64_f32(*a3);
  v4 = gleAddCommand(a1, glClipPlane_ListExec, 40);
  *(v4 + 8) = a2;
  result = v6;
  *v4 = v7;
  *(v4 + 1) = v6;
  return result;
}

__n128 glClipPlanex_PackThread(uint64_t a1, int a2, int32x2_t *a3)
{
  v4 = vdup_n_s32(0x37800000u);
  v7 = vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(a3[1]), v4));
  v8 = vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(*a3), v4));
  v5 = gleAddCommand(a1, glClipPlane_ListExec, 40);
  *(v5 + 8) = a2;
  result = v7;
  *v5 = v8;
  *(v5 + 1) = v7;
  return result;
}

uint64_t glGetClipPlanef_Exec(uint64_t result, int a2, _OWORD *a3)
{
  if ((a2 - 12288) >= 6)
  {
    v3 = 0uLL;
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }
  }

  else
  {
    v3 = *(result + 16 * (a2 - 12288) + 17576);
  }

  *a3 = v3;
  return result;
}

int32x4_t glGetClipPlanex_Exec(uint64_t a1, int a2, int32x4_t *a3)
{
  if ((a2 - 12288) >= 6)
  {
    v3 = 0uLL;
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1280;
    }
  }

  else
  {
    v3 = *(a1 + 16 * (a2 - 12288) + 17576);
  }

  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, vdupq_n_s32(0x47800000u), v3);
  result = vcvtq_s32_f32(vbslq_s8(vcgezq_f32(v5), v5, vaddq_f32(v5, vdupq_n_s32(0xBF7FFE5D))));
  *a3 = result;
  return result;
}

uint64_t glGetClipPlanef_ExecThread(uint64_t a1, int a2, _OWORD *a3)
{
  result = (*(a1 + 27752))();
  if ((a2 - 12288) >= 6)
  {
    v7 = 0uLL;
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1280;
    }
  }

  else
  {
    v7 = *(a1 + 16 * (a2 - 12288) + 17576);
  }

  *a3 = v7;
  return result;
}

double glGetClipPlanex_ExecThread(uint64_t a1, int a2, int32x4_t *a3)
{
  (*(a1 + 27752))();

  *&result = glGetClipPlanex_Exec(a1, a2, a3).u64[0];
  return result;
}

float *glColor4f_Comp(uint64_t a1, float a2, float a3, float a4, float a5)
{
  result = gleAddCommand(a1, glColor4_ListExec, 16);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

float *glColor4f_Exec(float *result, float a2, float a3, float a4, float a5)
{
  result[2116] = a2;
  result[2117] = a3;
  result[2118] = a4;
  result[2119] = a5;
  return result;
}

float32x4_t glColor4x_Exec(float32x4_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  result = vmulq_f32(vcvtq_f32_s32(v5), vdupq_n_s32(0x37800000u));
  a1[529] = result;
  return result;
}

float32x4_t glColor4x_PackThread(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5.i64[0] = __PAIR64__(a3, a2);
  v5.i64[1] = __PAIR64__(a5, a4);
  v8 = vcvtq_f32_s32(v5);
  v6 = gleAddCommand(a1, glColor4_ListExec, 16);
  result = vmulq_f32(v8, vdupq_n_s32(0x37800000u));
  *v6 = result;
  return result;
}

float glColor4ub_Comp(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v9 = *(a1 + 19240) + 128;
  v10 = gleAddCommand(a1, glColor4_ListExec, 16);
  *v10 = *(v9 + 4 * a2);
  *(v10 + 1) = *(v9 + 4 * a3);
  *(v10 + 2) = *(v9 + 4 * a4);
  result = *(v9 + 4 * a5);
  *(v10 + 3) = result;
  return result;
}

float glColor4ub_Exec(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 19240) + 128;
  result = *(v5 + 4 * a2);
  v7 = *(v5 + 4 * a3);
  v8 = *(v5 + 4 * a4);
  v9 = *(v5 + 4 * a5);
  *(a1 + 8464) = result;
  *(a1 + 8468) = v7;
  *(a1 + 8472) = v8;
  *(a1 + 8476) = v9;
  return result;
}

void *glCullFace_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glCullFace_ListExec, 4);
  *result = a2;
  return result;
}

void glLabelObjectEXT_Exec(uint64_t a1, int a2, int a3, int a4, char *a5)
{
  if (a2 > 36159)
  {
    if ((a2 - 37201) <= 3 && a2 != 37202 || (a2 - 36160) < 2 || a2 == 36386)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a2 > 35410)
    {
      if (a2 == 35411 || a2 == 35648)
      {
        goto LABEL_21;
      }

      v5 = 35656;
    }

    else
    {
      if (a2 == 5890 || a2 == 33510)
      {
        goto LABEL_21;
      }

      v5 = 35407;
    }

    if (a2 == v5)
    {
LABEL_21:
      gleLabelObject(a1, a2, a3, a4, a5);
      return;
    }
  }

  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }
}

void glGetObjectLabelEXT_Exec(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, _BYTE *a6)
{
  if (a2 > 36159)
  {
    if ((a2 - 37201) <= 3 && a2 != 37202 || (a2 - 36160) < 2 || a2 == 36386)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a2 > 35410)
    {
      if (a2 == 35411 || a2 == 35648)
      {
        goto LABEL_21;
      }

      v6 = 35656;
    }

    else
    {
      if (a2 == 5890 || a2 == 33510)
      {
        goto LABEL_21;
      }

      v6 = 35407;
    }

    if (a2 == v6)
    {
LABEL_21:
      gleGetObjectLabel(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }
}

void glLabelObjectEXT_ExecThread(uint64_t a1, int a2, int a3, int a4, char *a5)
{
  (*(a1 + 27752))();

  glLabelObjectEXT_Exec(a1, a2, a3, a4, a5);
}

void glGetObjectLabelEXT_ExecThread(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, _BYTE *a6)
{
  (*(a1 + 27752))();

  glGetObjectLabelEXT_Exec(a1, a2, a3, a4, a5, a6);
}

void glLabelObjectWithResponsibleProcessAPPLE_Exec(uint64_t a1, int a2, int a3, int a4)
{
  if (a2 > 36159)
  {
    if ((a2 - 37201) <= 3 && a2 != 37202 || (a2 - 36160) < 2 || a2 == 36386)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a2 > 35410)
    {
      if (a2 == 35411 || a2 == 35648)
      {
        goto LABEL_21;
      }

      v4 = 35656;
    }

    else
    {
      if (a2 == 5890 || a2 == 33510)
      {
        goto LABEL_21;
      }

      v4 = 35407;
    }

    if (a2 == v4)
    {
LABEL_21:
      gleLabelObjectWithResponsibleProcess(a1, a2, a3, a4);
      return;
    }
  }

  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }
}

void glLabelObjectWithResponsibleProcessAPPLE_ExecThread(uint64_t a1, int a2, int a3, int a4)
{
  (*(a1 + 27752))();

  glLabelObjectWithResponsibleProcessAPPLE_Exec(a1, a2, a3, a4);
}

void *glDepthFunc_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glDepthFunc_ListExec, 4);
  *result = a2;
  return result;
}

uint64_t glDepthRange_ListExec(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  glDepthRangeArrayv_Core(a1, 0, 1, &v3);
  return 16;
}

uint64_t glDepthRangef_Exec(uint64_t a1, float a2, float a3)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  v4[1] = a3;
  return glDepthRangeArrayv_Core(a1, 0, 1, v4);
}

double *glDepthRangef_PackThread(uint64_t a1, float a2, float a3)
{
  v3 = a2;
  v4 = a3;
  result = gleAddCommand(a1, glDepthRange_ListExec, 16);
  *result = v3;
  result[1] = v4;
  return result;
}

uint64_t glDepthRangex_Exec(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(__PAIR64__(a3, a2)), vdup_n_s32(0x37800000u)));
  return glDepthRangeArrayv_Core(a1, 0, 1, &v4);
}

double *glDepthRangex_PackThread(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = vcvts_n_f32_s32(a2, 0x10uLL);
  v4 = vcvts_n_f32_s32(a3, 0x10uLL);
  result = gleAddCommand(a1, glDepthRange_ListExec, 16);
  *result = v3;
  result[1] = v4;
  return result;
}

uint64_t glDepthRangeArrayv_Core(uint64_t result, int a2, int a3, uint64_t a4)
{
  v7 = result;
  if ((a3 + a2) >= 2 && !*(result + 15580))
  {
    result = gleSwitchToMultiViewportMode(result);
  }

  if (a3 >= 1)
  {
    v8 = 0;
    v9 = -a3;
    v10 = 1;
LABEL_6:
    ++v8;
    a4 += 16;
    do
    {
      v11 = *(a4 - 16);
      v12 = *(a4 - 8);
      if (v11 <= 1.0)
      {
        v13 = *(a4 - 16);
      }

      else
      {
        v13 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0.0;
      }

      if (v12 <= 1.0)
      {
        v15 = *(a4 - 8);
      }

      else
      {
        v15 = 1.0;
      }

      if (v12 >= 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = v7 + 9216 + 144 * (a2 + v8 - 1);
      if (*(v17 + 64) != v14 || *(v17 + 72) != v16)
      {
        *(v17 + 64) = v14;
        *(v17 + 72) = v16;
        result = gleUpdateDepthRangeDataIndexed(v7, a2 + v8 - 1);
        v10 = 0;
        if (v9 + v8)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }

      ++v8;
      a4 += 16;
    }

    while (v9 + v8 != 1);
    if (v10)
    {
      return result;
    }

LABEL_24:
    v18 = *(v7 + 19248);
    if (v18)
    {
      v19 = *(v18 + 3792);
      if (v19 <= 0x3FF)
      {
        *(v7 + ((v19 >> 3) & 0x1FFC) + 1552) |= 1 << v19;
        *(v7 + 28652) = 0;
        *(v7 + 1532) |= 0x800000u;
      }
    }

    v20 = *(v7 + 19272);
    if (v20)
    {
      v21 = *(v20 + 3792);
      if (v21 <= 0x3FF)
      {
        *(v7 + ((v21 >> 3) & 0x1FFC) + 1936) |= 1 << v21;
        *(v7 + 28652) = 0;
        *(v7 + 1532) |= 0x4000000u;
      }
    }

    v22 = *(v7 + 19280);
    if (v22)
    {
      v23 = *(v22 + 3792);
      if (v23 <= 0x3FF)
      {
        *(v7 + ((v23 >> 3) & 0x1FFC) + 2064) |= 1 << v23;
        *(v7 + 28652) = 0;
        *(v7 + 1532) |= 0x8000000u;
      }
    }
  }

  return result;
}

void *glDrawBuffersARB_Comp(uint64_t a1, unsigned int a2, int *a3)
{
  if (*(*(a1 + 29480) + 21) < a2)
  {

    return gleSetErrorInList(a1, 1281);
  }

  else
  {
    result = gleAddCommand(a1, glDrawBuffersARB_ListExec, 36);
    *result = a2;
    if (a2)
    {
      v7 = result + 1;
      v8 = a2;
      do
      {
        v9 = *a3++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0(uint64_t a1@<X8>)
{
  if (a1)
  {
    v4 = (a1 + 552);
  }

  else
  {
    v4 = v2 + 289;
  }

  *(v3 + 162) = v2[288] & *v4;
  if (v2[290])
  {
    v5 = *(v1 + 1548) | 0x80000;
  }

  else
  {
    v5 = *(v1 + 1548);
  }

  *v2 = 0;
  *(v1 + 1548) = v5 | 0x40000;
}

uint64_t glDrawTexsOES_Exec(uint64_t result, int a2, int a3, int a4, int a5, int a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11)
{
  if ((a6 | a5) < 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    a11.n128_f32[0] = a6;
    a10.n128_f32[0] = a5;
    a9.n128_f32[0] = a4;
    a8.n128_f32[0] = a3;
    a7.n128_f32[0] = a2;
    return gleDrawTexture(result, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t glDrawTexfOES_Exec(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a5.n128_f32[0] >= 0.0 && a6.n128_f32[0] >= 0.0)
  {
    return gleDrawTexture(result, a2, a3, a4, a5, a6);
  }

  if (!*(result + 29832))
  {
    *(result + 29832) = 1281;
  }

  return result;
}

uint64_t glDrawTexiOES_Exec(uint64_t result, int a2, int a3, int a4, int a5, int a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11)
{
  if ((a6 | a5) < 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    a11.n128_f32[0] = a6;
    a10.n128_f32[0] = a5;
    a9.n128_f32[0] = a4;
    a8.n128_f32[0] = a3;
    a7.n128_f32[0] = a2;
    return gleDrawTexture(result, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t glDrawTexxOES_Exec(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11)
{
  a10.n128_f32[0] = vcvts_n_f32_s32(a5, 0x10uLL);
  if (a10.n128_f32[0] < 0.0 || (a11.n128_f32[0] = vcvts_n_f32_s32(a6, 0x10uLL), a11.n128_f32[0] < 0.0))
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    a9.n128_f32[0] = vcvts_n_f32_s32(a4, 0x10uLL);
    a8.n128_f32[0] = vcvts_n_f32_s32(a3, 0x10uLL);
    a7.n128_f32[0] = vcvts_n_f32_s32(a2, 0x10uLL);
    return gleDrawTexture(result, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t glDrawTexsvOES_Exec(uint64_t result, __int16 *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v7 = a2[3];
  v8 = a2[4];
  if (((v8 | v7) & 0x8000) != 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    a7.n128_f32[0] = v8;
    a6.n128_f32[0] = v7;
    a5.n128_f32[0] = a2[2];
    a4.n128_f32[0] = a2[1];
    a3.n128_f32[0] = *a2;
    return gleDrawTexture(result, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t glDrawTexivOES_Exec(uint64_t result, int *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v7 = a2[3];
  v8 = a2[4];
  if ((v8 | v7) < 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    a7.n128_f32[0] = v8;
    a6.n128_f32[0] = v7;
    a5.n128_f32[0] = a2[2];
    a4.n128_f32[0] = a2[1];
    a3.n128_f32[0] = *a2;
    return gleDrawTexture(result, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t glDrawTexxvOES_Exec(uint64_t result, int *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a6.n128_f32[0] = a2[3] * 0.000015259;
  if (a6.n128_f32[0] < 0.0 || (a7.n128_f32[0] = a2[4] * 0.000015259, a7.n128_f32[0] < 0.0))
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    a5.n128_f32[0] = a2[2] * 0.000015259;
    a4.n128_f32[0] = a2[1] * 0.000015259;
    a3.n128_f32[0] = *a2 * 0.000015259;
    return gleDrawTexture(result, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t glDrawTexfvOES_Exec(uint64_t result, unsigned __int32 *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  a6.n128_u32[0] = a2[3];
  if (a6.n128_f32[0] < 0.0 || (a7.n128_u32[0] = a2[4], a7.n128_f32[0] < 0.0))
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    a4.n128_u32[0] = a2[1];
    a5.n128_u32[0] = a2[2];
    a3.n128_u32[0] = *a2;
    return gleDrawTexture(result, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t glDrawTexfOES_ExecThread(uint64_t a1, float a2, float a3, float a4, float a5, float a6)
{
  result = (*(a1 + 27752))();
  if (a5 < 0.0 || a6 < 0.0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    v13.n128_f32[0] = a2;
    v14.n128_f32[0] = a3;
    v15.n128_f32[0] = a4;
    v16.n128_f32[0] = a5;
    v17.n128_f32[0] = a6;

    return gleDrawTexture(a1, v13, v14, v15, v16, v17);
  }

  return result;
}

void *glEnable_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glEnable_ListExec, 4);
  *result = a2;
  return result;
}

void *glDisable_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glDisable_ListExec, 4);
  *result = a2;
  return result;
}

uint64_t glIsEnabled_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return gleGetEnabled(a1, a2);
}

uint64_t gleGetClientEnableBit(uint64_t a1, int a2)
{
  if (a2 <= 32887)
  {
    if (a2 == 32884)
    {
      return 0x10000;
    }

    if (a2 != 32885)
    {
      if (a2 == 32886)
      {
        return 0x40000;
      }

      return 0;
    }

    return 0x20000;
  }

  else if (a2 > 34883)
  {
    if (a2 != 34884)
    {
      if (a2 == 35740)
      {
        return 0x400000;
      }

      return 0;
    }

    return 0x800000;
  }

  else
  {
    if (a2 != 32888)
    {
      if (a2 == 34477)
      {
        return 0x100000;
      }

      return 0;
    }

    return 0x1000000 << *(a1 + 26580);
  }
}

uint64_t glDisableClientState_PackThread(uint64_t a1, int a2)
{
  *gleAddCommand(a1, glDisableClientState_UnpackThread, 4) = a2;
  result = gleGetClientEnableBit(a1, a2);
  *(*(a1 + 26448) + 272) &= ~result;
  return result;
}

uint64_t glEnableClientState_PackThread(uint64_t a1, int a2)
{
  *gleAddCommand(a1, glEnableClientState_UnpackThread, 4) = a2;
  result = gleGetClientEnableBit(a1, a2);
  *(*(a1 + 26448) + 272) |= result;
  return result;
}

uint64_t glGetError_ExecThread(uint64_t a1)
{
  v2 = a1 + 28672;
  (*(a1 + 27752))();
  result = *(v2 + 1160);
  *(v2 + 1160) = 0;
  if (!result)
  {
    v4 = (a1 + 32512);
    v5 = -1;
    while (++v5 < *(v2 + 3824))
    {
      v6 = v4 + 209;
      result = (*(v4[206] + 1240))(*v4);
      v4 = v6;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t glGenFencesAPPLE_Exec(uint64_t result, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    result = gleGenHashNames(result + 25872, a2);
    if (result && a2)
    {
      v5 = (a2 + 3) & 0xFFFFFFFC;
      v6 = vdupq_n_s64(a2 - 1);
      v7 = xmmword_23A102AF0;
      v8 = xmmword_23A102AE0;
      v9 = (a3 + 8);
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 2) = result;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 1) = result + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = result + 2;
          v9[1] = result + 3;
        }

        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        result = (result + 4);
        v9 += 4;
        v5 -= 4;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t glDeleteFencesAPPLE_Exec(uint64_t result, unsigned int a2, unsigned int *a3)
{
  v3 = result;
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else if (a2)
  {
    v5 = a2;
    do
    {
      v6 = *a3++;
      result = gleDeleteContextHashNameAndObject(v3, v3 + 25872, gleFreeFenceObject, v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *glFinishObjectAPPLE_Exec(uint64_t *result, int a2, int a3)
{
  if (a2 <= 35337)
  {
    switch(a2)
    {
      case 5890:
        v3 = 1;
        return gleFinishObject(result, v3, a3);
      case 32884:
        v3 = 2;
        return gleFinishObject(result, v3, a3);
      case 34227:
        v3 = 3;
        return gleFinishObject(result, v3, a3);
    }
  }

  else if (a2 > 36159)
  {
    if (a2 == 36160)
    {
      v3 = 5;
      return gleFinishObject(result, v3, a3);
    }

    if (a2 == 36161)
    {
      v3 = 4;
      return gleFinishObject(result, v3, a3);
    }
  }

  else
  {
    if (a2 == 35338)
    {
      return result;
    }

    if (a2 == 35339)
    {
      v3 = 0;
      return gleFinishObject(result, v3, a3);
    }
  }

  if (!*(result + 14916))
  {
    *(result + 14916) = 1280;
  }

  return result;
}

uint64_t glFenceSync_Exec(uint64_t a1, int a2, int a3)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v6 = gleFenceSync(a1, 0, a2, a3);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v6;
}

BOOL glIsSync_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 200, a2);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v4 != 0;
}

void glDeleteSync_Exec(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v4 = gleLookupHashObject(*(a1 + 19296) + 200, a2);
    v5 = *(a1 + 19296);
    if (v4)
    {
      gleDeleteHashNameAndObject(v5, (v5 + 200), a2);
      v6 = (*(a1 + 19296) + 324);

      os_unfair_lock_unlock(v6);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 324));
      if (!*(a1 + 29832))
      {
        *(a1 + 29832) = 1281;
      }
    }
  }
}

uint64_t glClientWaitSync_Exec(uint64_t a1, int a2, unsigned int a3, unint64_t a4)
{
  if (a2 && (os_unfair_lock_lock((*(a1 + 19296) + 324)), v8 = gleLookupHashObject(*(a1 + 19296) + 200, a2), os_unfair_lock_unlock((*(a1 + 19296) + 324)), v8) && a3 < 2)
  {
    if (a4)
    {
      if (a4 == -1 && !*(v8 + 34))
      {
        if (gleTestSync(a1, a3, v8))
        {
          return 37146;
        }

        if (v8[18] != a1)
        {
          v13 = mach_absolute_time();
          if (gleIsSyncQueued(*(a1 + 19296), v8))
          {
            v14 = 0;
            v15 = 0;
            do
            {
              if (!v15)
              {
                v15 = (*(a1 + 432) * 10000.0);
                v14 = v15;
              }

              if (mach_absolute_time() - v13 > v15)
              {
                sched_yield();
                v15 += v14;
              }
            }

            while (gleIsSyncQueued(*(a1 + 19296), v8));
          }
        }

        gleFinishSync(a1, v8);
      }

      else
      {
        v9 = mach_absolute_time();
        v10 = *(a1 + 432);
        if (gleTestSync(a1, a3, v8))
        {
          return 37146;
        }

        v12 = (v10 * a4);
        if (!v12 || mach_absolute_time() - v9 > v12)
        {
          return 37147;
        }

        if (!gleTestSync(a1, a3, v8))
        {
          v16 = 0;
          v17 = 0;
          while (1)
          {
            if (!v17)
            {
              v17 = (*(a1 + 432) * 10000.0);
              v16 = v17;
            }

            v18 = mach_absolute_time() - v9;
            if (v18 > v12)
            {
              break;
            }

            if (v18 > v17)
            {
              sched_yield();
              v17 += v16;
            }

            v19 = gleTestSync(a1, a3, v8);
            result = 37148;
            if (v19)
            {
              return result;
            }
          }

          return 37147;
        }
      }

      return 37148;
    }

    else if (gleTestSync(a1, a3, v8))
    {
      return 37146;
    }

    else
    {
      return 37147;
    }
  }

  else
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }

    return 37149;
  }
}

void glWaitSync_Exec(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2 && (os_unfair_lock_lock((*(a1 + 19296) + 324)), v8 = gleLookupHashObject(*(a1 + 19296) + 200, a2), os_unfair_lock_unlock((*(a1 + 19296) + 324)), v8) && !a3 && a4 == -1)
  {

    gleTestSync(a1, 0, v8);
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1281;
  }
}

void glGetSynciv_Exec(uint64_t a1, int a2, int a3, int a4, int *a5, int *a6)
{
  if (!a2 || a4 < 0 || (os_unfair_lock_lock((*(a1 + 19296) + 324)), v12 = gleLookupHashObject(*(a1 + 19296) + 200, a2), os_unfair_lock_unlock((*(a1 + 19296) + 324)), !v12))
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v14 = 1281;
    goto LABEL_11;
  }

  if ((a3 - 37138) >= 4)
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v14 = 1280;
LABEL_11:
    *(a1 + 29832) = v14;
    return;
  }

  if (a3 > 0x9113u)
  {
    if (a3 != 37140)
    {
      v13 = 0;
      v15 = 0;
      if (!a4)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (a4)
    {
      if (gleTestSync(a1, 0, v12))
      {
        v13 = 37145;
      }

      else
      {
        v13 = 37144;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a3 != 37138)
  {
    if (a4)
    {
      v13 = 37143;
      goto LABEL_23;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_24;
  }

  if (!a4)
  {
    goto LABEL_21;
  }

  v13 = 37142;
LABEL_23:
  *a6 = v13;
  v15 = 1;
LABEL_24:
  if (a5)
  {
    *a5 = v15;
  }
}

uint64_t glFenceSync_ExecThread(uint64_t a1, int a2, int a3)
{
  if (a2 != 37143)
  {
    if (!*(a1 + 29832))
    {
      result = 0;
      v5 = 1280;
      goto LABEL_9;
    }

    return 0;
  }

  if (!a3)
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v6 = *(a1 + 19296);
    v7 = gleGenHashNames(v6 + 200, 1u);
    gleCreateSyncObject(v7);
    v9 = v8;
    gleAddHashNameAndObject(a1, v6 + 200, v8);
    *(v9 + 144) = a1;
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    *gleAddCommand(a1, glFenceSyncObject_UnpackThread, 8) = v9;
    return v7;
  }

  if (*(a1 + 29832))
  {
    return 0;
  }

  result = 0;
  v5 = 1281;
LABEL_9:
  *(a1 + 29832) = v5;
  return result;
}

uint64_t glFenceSyncObject_UnpackThread(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v3 += 40;
  gleCreatePluginFence(*(a1 + 19296), v3);
  (*(*(a1 + 29496) + 680))(*(a1 + 29464), *(v3 + 8 * *(a1 + 32500)));
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return 8;
}

void glDeleteSync_ExecThread(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v4 = gleDeleteHashNameAndObject_NoDecrement(*(a1 + 19296) + 200, a2);
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (v4)
    {
      *gleAddCommand(a1, glDeleteSyncObject_UnpackThread, 8) = v4;
    }

    else if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }
}

uint64_t glDeleteSyncObject_UnpackThread(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = *(v3 + 20) - 1;
  *(v3 + 20) = v4;
  if (!v4)
  {
    gleFreeSyncObject(*(a1 + 19296), v3);
  }

  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return 8;
}

uint64_t glClientWaitSync_ExecThread(intptr_t a1, int a2, unsigned int a3, unint64_t a4)
{
  if (a2 && (os_unfair_lock_lock((*(a1 + 19296) + 324)), v8 = gleLookupHashObject(*(a1 + 19296) + 200, a2), os_unfair_lock_unlock((*(a1 + 19296) + 324)), v8) && a3 < 2)
  {
    if (a4)
    {
      v9 = mach_absolute_time();
      v10 = (*(a1 + 432) * a4);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v12[0] = glClientWaitSync_CallbackThread;
    v12[1] = 40;
    v12[2] = v8;
    v12[3] = v10;
    v12[4] = v9;
    v13 = a3;
    v14 = 0;
    v15 = 1;
    gleProcessCallback(a1, v12);
    return v14;
  }

  else
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }

    return 37149;
  }
}

uint64_t glClientWaitSync_CallbackThread(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28660) == -1 && *(*a2 + 40) && gleTestSync(a1, *(a2 + 24), *a2))
  {
    if (*(a2 + 32))
    {
      v5 = 37146;
    }

    else
    {
      v5 = 37148;
    }

    *(a2 + 28) = v5;
  }

  if (!*(a2 + 28))
  {
    if (*(a2 + 8) && mach_absolute_time() - *(a2 + 16) <= *(a2 + 8))
    {
      v6 = *(a2 + 28);
      *(a2 + 32) = 0;
      if (!v6)
      {
        return 40;
      }

      goto LABEL_7;
    }

    *(a2 + 28) = 37147;
  }

  *(a2 + 32) = 0;
LABEL_7:
  gleFinishCallback(a1);
  return 40;
}

void glGetSynciv_ExecThread(uint64_t a1, int a2, int a3, int a4, int *a5, int *a6)
{
  (*(a1 + 27752))();

  glGetSynciv_Exec(a1, a2, a3, a4, a5, a6);
}

void *glWaitSync_Comp(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = gleAddCommand(a1, glWaitSync_ListExec, 24);
  *result = a2;
  *(result + 2) = a3;
  result[2] = a4;
  return result;
}

uint64_t glGenFencesAPPLE_ExecThread(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(a1 + 27752))();

  return glGenFencesAPPLE_Exec(a1, a2, a3);
}

uint64_t glDeleteFencesAPPLE_ExecThread(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  (*(a1 + 27752))();

  return glDeleteFencesAPPLE_Exec(a1, a2, a3);
}

void *glSetFenceAPPLE_PackThread(os_unfair_lock_s *a1, int a2)
{
  os_unfair_lock_lock(a1 + 6946);
  v4 = gleLookupHashObject(&a1[6468], a2);
  if (!v4)
  {
    gleCreateFenceObject(a2);
    v4 = v5;
    gleAddHashNameAndObject(a1, &a1[6468], v5);
  }

  atomic_fetch_add_explicit(v4 + 35, 1u, memory_order_relaxed);
  os_unfair_lock_unlock(a1 + 6946);
  result = gleAddCommand(a1, glSetFenceAPPLE_UnpackThread, 4);
  *result = a2;
  return result;
}

uint64_t glSetFenceAPPLE_UnpackThread(uint64_t a1, int *a2)
{
  v3 = *a2;
  os_unfair_lock_lock((a1 + 27784));
  v4 = gleLookupHashObject(a1 + 25872, v3);
  if (!v4[5])
  {
    gleCreatePluginFence(*(a1 + 19296), (v4 + 5));
  }

  gleSetFence(a1, v3);
  atomic_fetch_add_explicit(v4 + 35, 0xFFFFFFFF, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 27784));
  return 4;
}

uint64_t glTestFenceAPPLE_ExecThread(intptr_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 27784));
  v4 = gleLookupHashObject(a1 + 25872, a2);
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_unlock((a1 + 27784));
    v7[2] = v5;
    v7[0] = glTestFenceAPPLE_CallbackThread;
    v7[1] = 16;
    v8 = a2;
    v9 = 1;
    gleProcessCallback(a1, v7);
    return v9;
  }

  else
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1282;
    }

    os_unfair_lock_unlock((a1 + 27784));
    return 1;
  }
}

uint64_t glTestFenceAPPLE_CallbackThread(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28660) == -1 && !*(*a2 + 140))
  {
    *(a2 + 12) = gleTestFence(a1, 0, *(a2 + 8), 1);
    gleFinishCallback(a1);
  }

  return 16;
}

uint64_t glTestObjectAPPLE_ExecThread(intptr_t a1, int a2, int a3)
{
  if (a2 == 35339)
  {

    return glTestFenceAPPLE_ExecThread(a1, a3);
  }

  else
  {
    (*(a1 + 27752))(a1);

    return glTestObjectAPPLE_Exec(a1, a2, a3);
  }
}

void glFinishFenceAPPLE_ExecThread(intptr_t a1, unsigned int a2)
{
  os_unfair_lock_lock((a1 + 27784));
  v4 = gleLookupHashObject(a1 + 25872, a2);
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_unlock((a1 + 27784));
    v6[2] = v5;
    v6[0] = glFinishFenceAPPLE_CallbackThread;
    v6[1] = 16;
    v6[3] = a2;
    gleProcessCallback(a1, v6);
  }

  else
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1282;
    }

    os_unfair_lock_unlock((a1 + 27784));
  }
}

uint64_t glFinishFenceAPPLE_CallbackThread(uint64_t a1, int *a2)
{
  if (*(a1 + 28660) == -1 && !*(*a2 + 140))
  {
    gleFinishFence(a1, 0, a2[2]);
    gleFinishCallback(a1);
  }

  return 16;
}

void glFinishObjectAPPLE_ExecThread(intptr_t a1, int a2, unsigned int a3)
{
  if (a2 == 35339)
  {

    glFinishFenceAPPLE_ExecThread(a1, a3);
  }

  else
  {
    (*(a1 + 27752))(a1);

    glFinishObjectAPPLE_Exec(a1, a2, a3);
  }
}

uint64_t glFinish_ExecThread(uint64_t a1)
{
  (*(a1 + 27752))();

  return glFinish_Exec(a1, v2, v3, v4);
}

uint64_t glFinish_Exec(uint64_t a1, double a2, double a3, double a4)
{
  v5 = (a1 + 28672);
  if (*(a1 + 32472))
  {
    if ((*(a1 + 29800) & 0x743C0478) == 0 || (result = gleUpdateDrawFramebufferState(a1, a2, a3, a4), !result))
    {
      result = (*(*(a1 + 29496) + 232))(*(a1 + 29464), 0);
    }

    v5[3800] = v5[3799];
  }

  else
  {
    result = (*(*(a1 + 29496) + 240))(*(a1 + 29464));
  }

  if (v5[3824])
  {
    v7 = 0;
    v8 = (a1 + 32512);
    do
    {
      result = (*(v8[206] + 1312))(*v8);
      ++v7;
      v8 += 209;
    }

    while (v7 < v5[3824]);
  }

  return result;
}

uint64_t glFlush_ExecThread(uint64_t a1)
{
  (*(a1 + 27752))();

  return glFlush_Exec(a1, v2, v3, v4);
}

void glGenRenderbuffersEXT_Exec(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v6 = gleGenHashNames(*(a1 + 19296) + 40, a2);
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = (a2 + 3) & 0xFFFFFFFC;
      v9 = vdupq_n_s64(a2 - 1);
      v10 = xmmword_23A102AF0;
      v11 = xmmword_23A102AE0;
      v12 = (a3 + 8);
      v13 = vdupq_n_s64(4uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v9, v11));
        if (vuzp1_s16(v14, *v9.i8).u8[0])
        {
          *(v12 - 2) = v6;
        }

        if (vuzp1_s16(v14, *&v9).i8[2])
        {
          *(v12 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
        {
          *v12 = v6 + 2;
          v12[1] = v6 + 3;
        }

        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v6 += 4;
        v12 += 4;
        v8 -= 4;
      }

      while (v8);
    }
  }
}

void glDeleteRenderbuffersEXT_Exec(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v6 = *(a1 + 28960);
    if (v6)
    {
      v27 = *(a1 + 19296) + 40;
      v24 = (v6 + 40);
    }

    else
    {
      v24 = 0;
      v27 = 0;
    }

    v7 = *(a1 + 28968);
    v8 = v7 == v6 || v7 == 0;
    v9 = !v8;
    v25 = v9;
    if (v8)
    {
      v23 = 0;
    }

    else
    {
      v27 = *(a1 + 19296) + 40;
      v23 = (v7 + 40);
    }

    v10 = *(a1 + 28952);
    v26 = *(a1 + 28960);
    if (v10)
    {
      v11 = *(v10 + 16);
      if (!a2)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v11 = 0;
      if (!a2)
      {
LABEL_42:
        v22 = (*(a1 + 19296) + 324);

        os_unfair_lock_unlock(v22);
        return;
      }
    }

    v12 = 0;
    if (v6)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }

    v14 = a2;
    do
    {
      v15 = *(a3 + 4 * v12);
      if (v15)
      {
        if (v15 == v11)
        {
          gleBindRenderbuffer(a1, 0);
        }

        if (v13)
        {
          v16 = gleLookupHashObject(v27, v15);
          if (v16)
          {
            v17 = v16;
            if (v26)
            {
              v18 = 0;
              v19 = v24;
              do
              {
                if (v17 == *v19)
                {
                  gleFramebufferTexture(a1, *(a1 + 28960) + 40, v18, 0, 0, 0, 0, 0, 0);
                }

                ++v18;
                v19 += 2;
              }

              while (v18 != 10);
            }

            if (v25)
            {
              v20 = 0;
              v21 = v23;
              do
              {
                if (v17 == *v21)
                {
                  gleFramebufferTexture(a1, *(a1 + 28968) + 40, v20, 0, 0, 0, 0, 0, 0);
                }

                ++v20;
                v21 += 2;
              }

              while (v20 != 10);
            }
          }
        }

        gleUnbindDeleteHashNameAndObject(a1, (*(a1 + 19296) + 40), gleUnbindTextureObject, v15);
      }

      ++v12;
    }

    while (v12 != v14);
    goto LABEL_42;
  }

  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1281;
  }
}

void glBindRenderbuffer_Exec(uint64_t a1, int a2, int a3)
{
  if (a2 == 36161)
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    gleBindRenderbuffer(a1, a3);
    v5 = (*(a1 + 19296) + 324);

    os_unfair_lock_unlock(v5);
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }
}

uint64_t glRenderbufferStorageInline(uint64_t a1, int a2, signed int a3, int a4, unsigned int a5, unsigned int a6)
{
  result = gleCheckRenderbufferStorageArgs(a1, a2, a3, a4, a5, a6);
  if (!result)
  {
    return result;
  }

  v12 = a6 ? a5 : 0;
  v13 = *(a1 + 28952);
  if (!v13)
  {
    return result;
  }

  v14 = *(v13 + 808);
  if ((v14 & 0x1C00) == 0x1000)
  {
    goto LABEL_10;
  }

  if ((*(v13 + 808) & 0x1C00) == 0)
  {
    v14 |= 0x1000u;
    *(v13 + 808) = v14;
LABEL_10:
    if (!*(v13 + 800) && (v14 & 0x800) == 0)
    {
      if (a3 >= 1 && !*(*(a1 + 29032) + 616))
      {
        if (a4 <= 34835)
        {
          if (((a4 - 33321) > 0xF || ((1 << (a4 - 41)) & 0xC3F5) == 0) && ((a4 - 32848) > 9 || ((1 << (a4 - 80)) & 0x3C3) == 0) && (a4 - 6407) >= 2)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (a4 > 36193)
        {
          if ((a4 - 36194) <= 0x2D && ((1 << (a4 - 98)) & 0x30000C000001) != 0)
          {
            goto LABEL_33;
          }

          v15 = 36975;
        }

        else
        {
          if ((a4 - 34836) <= 7 && ((1 << (a4 - 20)) & 0xC3) != 0 || a4 == 35898)
          {
            goto LABEL_33;
          }

          v15 = 35907;
        }

        if (a4 == v15)
        {
LABEL_33:
          *(v13 + 832) |= 1u;
        }
      }

LABEL_34:
      BYTE1(v16) = 1;
      LOBYTE(v16) = a3;
      gleEvaluateTextureImageChange(a1, v13 + 40, v13 + 1072, 0, 0, v12, a6, 1, 0, a4, 0x1908u, 0x1401u, v16, 0);
      *(v13 + 1008) = 65541;

      return gleDirtyRenderbufferCurrentBindPointsGeom(a1, v13 + 40);
    }

    goto LABEL_21;
  }

  if ((*(v13 + 808) & 0xC00) == 0)
  {
    goto LABEL_10;
  }

LABEL_21:
  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1282;
  }

  return result;
}

BOOL glIsRenderbufferEXT_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 40, a2);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v4 != 0;
}

uint64_t glGetRenderbufferParameterivEXT_Exec(uint64_t result, int a2, int a3, int *a4)
{
  if (a2 != 36161)
  {
    if (*(result + 29832))
    {
      return result;
    }

    v11 = 1280;
    goto LABEL_13;
  }

  v6 = *(result + 28952);
  if (!v6)
  {
    if (*(result + 29832))
    {
      return result;
    }

    v11 = 1282;
LABEL_13:
    *(result + 29832) = v11;
    return result;
  }

  v13 = v4;
  v14 = v5;
  if (a3 > 36175)
  {
    if ((a3 - 36176) < 4)
    {
      v8 = v6[538];
      if (v6[538])
      {
        v8 = v6[539] != 0;
      }

      v9 = 0;
      v10 = (a3 - 3316);
      v12 = 0;
LABEL_40:
      if (v8)
      {
        result = (*(*(result + 29496) + 376))(*(result + 29464), *&v6[4 * *(result + 32500) + 20], 0, 0, v10, &v12);
        v9 = v12;
      }

      goto LABEL_42;
    }

    if (a3 == 36180)
    {
      v8 = v6[538];
      if (v6[538])
      {
        v8 = v6[539] != 0;
      }

      v9 = 0;
      v12 = 0;
      v10 = 34890;
      goto LABEL_40;
    }

    if (a3 == 36181)
    {
      v8 = v6[538];
      if (v6[538])
      {
        v8 = v6[539] != 0;
      }

      v9 = 0;
      v12 = 0;
      v10 = 35057;
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if (a3 > 36162)
  {
    if (a3 == 36163)
    {
      v9 = v6[539];
      goto LABEL_42;
    }

    if (a3 == 36164)
    {
      v8 = v6[538];
      if (v6[538])
      {
        v8 = v6[539] != 0;
      }

      if (v6[501])
      {
        v9 = v6[500];
      }

      else
      {
        v9 = 32854;
      }

      v12 = v9;
      v10 = 4099;
      goto LABEL_40;
    }
  }

  else
  {
    if (a3 == 36011)
    {
      v8 = v6[538];
      if (v6[538])
      {
        v8 = v6[539] != 0;
      }

      v9 = 0;
      v12 = 0;
      v10 = 36011;
      goto LABEL_40;
    }

    if (a3 == 36162)
    {
      v9 = v6[538];
LABEL_42:
      *a4 = v9;
      return result;
    }
  }

LABEL_36:
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

void glGenFramebuffersEXT_Exec(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v6 = gleGenHashNames(*(a1 + 19296) + 8, a2);
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = (a2 + 3) & 0xFFFFFFFC;
      v9 = vdupq_n_s64(a2 - 1);
      v10 = xmmword_23A102AF0;
      v11 = xmmword_23A102AE0;
      v12 = (a3 + 8);
      v13 = vdupq_n_s64(4uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v9, v11));
        if (vuzp1_s16(v14, *v9.i8).u8[0])
        {
          *(v12 - 2) = v6;
        }

        if (vuzp1_s16(v14, *&v9).i8[2])
        {
          *(v12 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
        {
          *v12 = v6 + 2;
          v12[1] = v6 + 3;
        }

        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v6 += 4;
        v12 += 4;
        v8 -= 4;
      }

      while (v8);
    }
  }
}

void glDeleteFramebuffersEXT_Exec(int8x16_t *a1, unsigned int a2, unsigned int *a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    os_unfair_lock_lock((a1[1206].i64[0] + 324));
    v6 = a1[1810].i64[0];
    if (v6)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = a1[1810].i64[1];
    if (v8)
    {
      v9 = *(v8 + 16);
      if (!a2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = 0;
      if (!a2)
      {
LABEL_23:
        v15 = (a1[1206].i64[0] + 324);

        os_unfair_lock_unlock(v15);
        return;
      }
    }

    v10 = a2;
    do
    {
      v12 = *a3++;
      v11 = v12;
      if (v12)
      {
        if (v11 == v7)
        {
          gleBindFramebuffer(a1, 36009, 0);
        }

        if (v11 == v9)
        {
          gleBindFramebuffer(a1, 36008, 0);
        }

        v13 = gleDeleteHashNameAndObject_NoDecrement(a1[1206].i64[0] + 8, v11);
        if (v13)
        {
          v14 = *(v13 + 5) - 1;
          *(v13 + 5) = v14;
          if (v14)
          {
            gleUnbindFramebufferObject(a1, v13);
          }

          else
          {
            gleUnbindAndFreeFramebufferObject(a1, v13);
          }
        }
      }

      --v10;
    }

    while (v10);
    goto LABEL_23;
  }

  if (!a1[1864].i16[4])
  {
    a1[1864].i16[4] = 1281;
  }
}

void glBindFramebuffer_Exec(int8x16_t *a1, int a2, int a3)
{
  if ((a2 - 36008) < 2 || a2 == 36160)
  {
    os_unfair_lock_lock((a1[1206].i64[0] + 324));
    gleBindFramebuffer(a1, a2, a3);
    v7 = (a1[1206].i64[0] + 324);

    os_unfair_lock_unlock(v7);
  }

  else if (!a1[1864].i16[4])
  {
    a1[1864].i16[4] = 1280;
  }
}

void glFramebufferTexture2DEXT_Exec(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6)
{
  v10 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      goto LABEL_42;
    }

    v10 = 28968;
  }

  v11 = *(a1 + v10);
  if (!v11)
  {
LABEL_33:
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1282;
    goto LABEL_44;
  }

  if (a5 && (a6 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v13 = 8;
  if (a3 != 33306 && a3 != 36096)
  {
    if (a3 == 36128)
    {
      v13 = 9;
    }

    else
    {
      v13 = a3 - 36064;
      if (a3 - 36064 >= *(*(a1 + 29032) + 22))
      {
        goto LABEL_42;
      }
    }
  }

  if (!a5)
  {
    v21 = (a1 + 19296);
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v18 = 0;
    LOWORD(v17) = 0;
    v20 = 0;
    goto LABEL_27;
  }

  if (a4 <= 34068)
  {
    if (a4 == 3553)
    {
      v23 = 0;
      do
      {
        v24 = v23 + 1;
        if (v23 > 0x1F)
        {
          break;
        }

        v25 = *(*(a1 + 29032) + 160) << v23++;
      }

      while ((v25 & 0x80000000) == 0);
      if (32 - v24 < a6)
      {
        goto LABEL_8;
      }

      v18 = 0;
      v17 = 3;
      goto LABEL_23;
    }

    if (a4 == 34037)
    {
      if (!a6)
      {
        v18 = 0;
        v17 = 2;
        goto LABEL_23;
      }

LABEL_8:
      if (*(a1 + 29832))
      {
        return;
      }

      v12 = 1281;
LABEL_44:
      *(a1 + 29832) = v12;
      return;
    }

LABEL_42:
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1280;
    goto LABEL_44;
  }

  if ((a4 - 34069) >= 6)
  {
    if (a4 == 37120)
    {
      if (!a6)
      {
        v18 = 0;
        v17 = 8;
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    goto LABEL_42;
  }

  v14 = 0;
  do
  {
    v15 = v14 + 1;
    if (v14 > 0x1F)
    {
      break;
    }

    v16 = *(*(a1 + 29032) + 168) << v14++;
  }

  while ((v16 & 0x80000000) == 0);
  if (32 - v15 < a6)
  {
    goto LABEL_8;
  }

  v17 = 0;
  v18 = a4 - 34069;
LABEL_23:
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v19 = gleLookupHashObject(*(a1 + 19296) + 72, a5);
  if (!v19 || (v20 = v19, v17 != (v19[101] & 0xF)))
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    goto LABEL_33;
  }

  v21 = (a1 + 19296);
LABEL_27:
  gleFramebufferTexture(a1, v11 + 40, v13, v17, v20, v18, a6, 0, 0);
  if (a3 == 33306)
  {
    gleFramebufferTexture(a1, v11 + 40, 9u, v17, v20, v18, a6, 0, 0);
  }

  v22 = *v21 + 81;

  os_unfair_lock_unlock(v22);
}

uint64_t glFramebufferParameterivAPPLE_Exec(uint64_t result, int a2, int a3, int *a4)
{
  v4 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      goto LABEL_9;
    }

    v4 = 28968;
  }

  if (a3 == 35449)
  {
    v5 = *a4;
    if ((*a4 - 35450) <= 3)
    {
      v6 = *(result + v4);
      if (v5 != *(v6 + 492))
      {
        *(v6 + 492) = v5;
        return gleSetUnknownFramebufferCompleteness(result, v6 + 40);
      }

      return result;
    }
  }

LABEL_9:
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

void glGetFramebufferParameterivAPPLE_Exec(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  v5 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      goto LABEL_8;
    }

    v5 = 28968;
  }

  if (a3 == 35449)
  {
    *a4 = *(*(a1 + v5) + 492);
    return;
  }

  os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_8:
  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }
}

_DWORD *glFramebufferParameterivAPPLE_PackThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  result = gleAddCommand(a1, glFramebufferParameterivAPPLE_UnpackThread, 12);
  *result = a2;
  result[1] = a3;
  result[2] = *a4;
  return result;
}

void glGetFramebufferParameterivAPPLE_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  glGetFramebufferParameterivAPPLE_Exec(a1, a2, a3, a4);
}

void glFramebufferRenderbufferEXT_Exec(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (a4 != 36161 && a5 != 0)
  {
    goto LABEL_19;
  }

  v9 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      goto LABEL_19;
    }

    v9 = 28968;
  }

  v10 = *(a1 + v9);
  if (!v10)
  {
LABEL_28:
    if (*(a1 + 29832))
    {
      return;
    }

    v15 = 1282;
    goto LABEL_30;
  }

  v11 = 8;
  if (a3 != 33306 && a3 != 36096)
  {
    if (a3 == 36128)
    {
      v11 = 9;
      goto LABEL_16;
    }

    v11 = a3 - 36064;
    if (a3 - 36064 >= *(*(a1 + 29032) + 22))
    {
LABEL_19:
      if (*(a1 + 29832))
      {
        return;
      }

      v15 = 1280;
LABEL_30:
      *(a1 + 29832) = v15;
      return;
    }
  }

LABEL_16:
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  if (!a5)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v12 = gleLookupHashObject(*(a1 + 19296) + 40, a5);
  if (!v12)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    goto LABEL_28;
  }

  v13 = v12;
  v14 = 0x2000;
LABEL_22:
  gleFramebufferTexture(a1, v10 + 40, v11, v14, v13, 0, 0, 0, 0);
  if (a3 == 33306)
  {
    gleFramebufferTexture(a1, v10 + 40, 9u, v14, v13, 0, 0, 0, 0);
  }

  v16 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v16);
}

BOOL glIsFramebufferEXT_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 8, a2);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v4 != 0;
}

uint64_t glCheckFramebufferStatusEXT_Exec(uint64_t a1, int a2)
{
  v3 = 28960;
  if (a2 == 36160 || a2 == 36009)
  {
    goto LABEL_5;
  }

  if (a2 == 36008)
  {
    v3 = 28968;
LABEL_5:
    v4 = *(a1 + v3);
    if (v4)
    {
      os_unfair_lock_lock((*(a1 + 19296) + 324));
      v5 = gleCheckFramebufferStatus(a1, v4 + 40);
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      return v5;
    }

    else if (*(a1 + 29008))
    {
      return 36053;
    }

    else
    {
      return 33305;
    }
  }

  if (*(a1 + 29832))
  {
    return 0;
  }

  result = 0;
  *(a1 + 29832) = 1280;
  return result;
}

uint64_t glGetFramebufferAttachmentParameterivEXT_Exec(uint64_t result, int a2, int a3, int a4, int *a5)
{
  v6 = (result + 29832);
  v7 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      goto LABEL_138;
    }

    v7 = 28968;
  }

  v8 = *(result + v7);
  if (!v8)
  {
    if ((*(*(result + 29032) + 561) & 0x40) == 0)
    {
      goto LABEL_19;
    }

    if (a3 <= 1026)
    {
      if (a3 == 1024)
      {
        v10 = 0;
        v11 = 0;
        v16 = *(result + 29008) == 0;
LABEL_45:
        v14 = 6144;
LABEL_48:
        if (v16)
        {
          v9 = 0;
        }

        else
        {
          v9 = v14;
        }

        goto LABEL_51;
      }

      if (a3 != 1025)
      {
        if (a3 != 1026)
        {
          goto LABEL_138;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (a3 > 6144)
      {
        v14 = 6145;
        if (a3 == 6145)
        {
          v10 = 0;
          v11 = 0;
          v15 = *(*(result + 29480) + 56);
        }

        else
        {
          v14 = 6146;
          if (a3 != 6146)
          {
            goto LABEL_138;
          }

          v10 = 0;
          v11 = 0;
          v15 = *(*(result + 29480) + 57);
        }

        v16 = v15 == 0;
        goto LABEL_48;
      }

      if (a3 != 1027)
      {
        if (a3 != 1029 || *(result + 32501) != 4)
        {
          goto LABEL_138;
        }

LABEL_27:
        v10 = 0;
        v11 = 0;
        v13 = *(result + 32483);
LABEL_44:
        v16 = v13 == 0;
        goto LABEL_45;
      }

      if (!*(result + 32483))
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_51;
      }
    }

    v10 = 0;
    v11 = 0;
    v13 = *(*(result + 29480) + 42);
    goto LABEL_44;
  }

  if (a3 != 33306 && a3 != 36096)
  {
    if (a3 == 36128)
    {
      v9 = 9;
    }

    else
    {
      v9 = a3 - 36064;
      if (v9 >= *(*(result + 29032) + 22))
      {
        goto LABEL_138;
      }
    }

    v10 = v8 + 40;
    v11 = *(v8 + 40 + 16 * v9);
    goto LABEL_51;
  }

  v10 = v8 + 40;
  v11 = *(v8 + 168);
  if (a3 != 33306)
  {
    v9 = 8;
LABEL_51:
    if (a4 > 33300)
    {
      if (a4 <= 36047)
      {
        if (a4 != 33301)
        {
          if (a4 != 33302)
          {
            if (a4 == 33303)
            {
              if (v10)
              {
                goto LABEL_57;
              }

              if (v9 == 6146)
              {
                LODWORD(v11) = *(*(result + 29032) + 57);
                goto LABEL_143;
              }

LABEL_113:
              LODWORD(v11) = 0;
              goto LABEL_143;
            }

            goto LABEL_123;
          }

          if (v10)
          {
LABEL_79:
            v17 = 34890;
            goto LABEL_84;
          }

          if (v9 != 6145)
          {
            goto LABEL_113;
          }

          LODWORD(v11) = *(*(result + 29032) + 56);
LABEL_143:
          *a5 = v11;
          return result;
        }

        if (!v10)
        {
          if (v9 == 6144)
          {
            LODWORD(v11) = *(*(result + 29032) + 51);
            goto LABEL_143;
          }

          goto LABEL_113;
        }

LABEL_83:
        v17 = 32863;
        goto LABEL_84;
      }

      if (a4 != 36263)
      {
        if (a4 != 36049)
        {
          if (a4 != 36048)
          {
            goto LABEL_123;
          }

          if (!v10)
          {
            if (v9)
            {
              LODWORD(v11) = 33304;
            }

            else
            {
              LODWORD(v11) = 0;
            }

            goto LABEL_143;
          }

LABEL_67:
          if (v11)
          {
            if ((*(v11 + 808) & 0x2000) != 0)
            {
              LODWORD(v11) = 36161;
            }

            else
            {
              LODWORD(v11) = 5890;
            }

            goto LABEL_143;
          }

          goto LABEL_147;
        }

        goto LABEL_119;
      }

      goto LABEL_117;
    }

    if (a4 > 33297)
    {
      if (a4 != 33298)
      {
        if (a4 != 33299)
        {
          if (!v10)
          {
            if (v9 != 6144)
            {
              goto LABEL_113;
            }

            LODWORD(v11) = *(*(result + 29032) + 50);
            goto LABEL_143;
          }

LABEL_62:
          v17 = 32862;
          goto LABEL_84;
        }

        if (!v10)
        {
          if (v9 != 6144)
          {
            goto LABEL_113;
          }

          LODWORD(v11) = *(*(result + 29032) + 49);
          goto LABEL_143;
        }

LABEL_77:
        v17 = 32861;
        goto LABEL_84;
      }

      if (!v10)
      {
        if (v9 != 6144)
        {
          goto LABEL_113;
        }

        LODWORD(v11) = *(*(result + 29032) + 48);
        goto LABEL_143;
      }

      goto LABEL_81;
    }

    if (a4 != 33296)
    {
      if (a4 == 33297)
      {
        if (v10)
        {
          v17 = 33297;
          goto LABEL_84;
        }

        if (v9)
        {
          if (v9 == 6144)
          {
            if (*(*(result + 29032) + 43))
            {
              LODWORD(v11) = 5126;
            }

            else
            {
              LODWORD(v11) = 35863;
            }
          }

          else
          {
            LODWORD(v11) = 35863;
          }

          goto LABEL_143;
        }

        goto LABEL_147;
      }

LABEL_123:
      if (v11)
      {
        v18 = *(v11 + 808);
        if ((v18 & 0x2000) == 0)
        {
          if (a4 <= 36050)
          {
            if (a4 == 35419)
            {
              result = gleTextureTargetExtractor(v11);
              *a5 = result;
              return result;
            }

            if (a4 == 36050)
            {
              LODWORD(v11) = *(v10 + 16 * v9 + 264);
              goto LABEL_143;
            }

            goto LABEL_138;
          }

          if (a4 == 36051)
          {
            if ((v18 & 0xF) == 0)
            {
              LODWORD(v11) = *(v10 + 16 * v9 + 260) + 34069;
              goto LABEL_143;
            }

            goto LABEL_147;
          }

          if (a4 == 36052)
          {
            if ((v18 & 0xFu) <= 0xA && ((1 << (v18 & 0xF)) & 0x662) != 0)
            {
              LODWORD(v11) = *(v10 + 16 * v9 + 268);
              goto LABEL_143;
            }

LABEL_147:
            *a5 = 0;
            return result;
          }
        }
      }

LABEL_138:
      if (*v6)
      {
        return result;
      }

      v12 = 1280;
LABEL_140:
      *v6 = v12;
      return result;
    }

    if (!v10)
    {
      if (v9)
      {
        if (v9 == 6144)
        {
          LODWORD(v11) = 9729;
          if (*(*(result + 29032) + 45))
          {
            if (*(result + 15196))
            {
              LODWORD(v11) = 35904;
            }

            else
            {
              LODWORD(v11) = 9729;
            }
          }
        }

        else
        {
          LODWORD(v11) = 9729;
        }

        goto LABEL_143;
      }

      goto LABEL_147;
    }

    goto LABEL_75;
  }

  if (v11 != *(v8 + 184))
  {
    goto LABEL_19;
  }

  v9 = 8;
  if (a4 <= 33300)
  {
    if (a4 > 33297)
    {
      if (a4 != 33298)
      {
        if (a4 != 33299)
        {
          goto LABEL_62;
        }

        goto LABEL_77;
      }

LABEL_81:
      v17 = 32860;
      goto LABEL_84;
    }

    if (a4 == 33296)
    {
LABEL_75:
      v17 = 33296;
      goto LABEL_84;
    }

    if (a4 != 33297)
    {
      goto LABEL_123;
    }

LABEL_19:
    if (*v6)
    {
      return result;
    }

    v12 = 1282;
    goto LABEL_140;
  }

  if (a4 > 36047)
  {
    if (a4 == 36048)
    {
      goto LABEL_67;
    }

    if (a4 == 36049)
    {
LABEL_119:
      if (v11)
      {
        LODWORD(v11) = *(v11 + 16);
      }

      goto LABEL_143;
    }

    if (a4 != 36263)
    {
      goto LABEL_123;
    }

LABEL_117:
    if (v11)
    {
      LODWORD(v11) = *(v10 + 16 * v9 + 9);
    }

    goto LABEL_143;
  }

  if (a4 == 33301)
  {
    goto LABEL_83;
  }

  if (a4 == 33302)
  {
    goto LABEL_79;
  }

  if (a4 != 33303)
  {
    goto LABEL_123;
  }

LABEL_57:
  v17 = 35057;
LABEL_84:

  return gleGetAttachmentInfo(result, v8, v9, v17, a5);
}

void glGenerateMipmapEXT_Exec(uint64_t a1, int a2)
{
  v4 = a1 + 28672;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  if (a2 > 35863)
  {
    if (a2 != 35866)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 <= 32878)
  {
    if (a2 != 3553)
    {
      goto LABEL_11;
    }

LABEL_13:
    v5 = 1;
    goto LABEL_14;
  }

  if (a2 == 32879)
  {
LABEL_10:
    if ((*(v4 + 3829) & 0xFE) == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (a2 != 34067)
  {
LABEL_11:
    if (*(v4 + 1160))
    {
      goto LABEL_28;
    }

    v6 = 1280;
LABEL_27:
    *(v4 + 1160) = v6;
    goto LABEL_28;
  }

  v5 = 6;
LABEL_14:
  v7 = gleLookUpNonProxyNonFaceTexture(a1, a2);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v4 + 3829);
  if (((v8 & 0xFE) == 2 || (*(*(a1 + 29032) + 565) & 0x40) == 0) && ((*(v7 + 962) & (*(v7 + 962) - 1)) != 0 || (*(v7 + 964) & (*(v7 + 964) - 1)) != 0))
  {
    goto LABEL_25;
  }

  if (*(v7 + 555))
  {
    goto LABEL_25;
  }

  v9 = *(v7 + 772);
  if (v9 == 34041)
  {
    goto LABEL_25;
  }

  if (v9 == 6402)
  {
    goto LABEL_25;
  }

  v10 = *(v7 + 960);
  if (v10 - 36208 < 0x24)
  {
    goto LABEL_25;
  }

  if (v10 - 33329 < 0xC)
  {
    goto LABEL_25;
  }

  v11 = *(v7 + 960);
  if ((v11 - 36756) < 8 || v11 == 36975)
  {
    goto LABEL_25;
  }

  if (v8 != 4)
  {
LABEL_45:
    if (v11 == 35905 || v8 == 3 && v11 == 35907)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

  if ((v11 - 34836) < 0xC || (v11 - 33325) <= 3)
  {
    v13 = v11 & 0x8A3E;
    goto LABEL_40;
  }

  v13 = 36012;
  if ((v11 & 0xFFFE) == 0x8CAC)
  {
LABEL_40:
    if (v13 != 34842 && (v11 & 0xFFFFFFFD) != 0x822D)
    {
      if (v11 == 35898 || v11 == 35901)
      {
        goto LABEL_50;
      }

LABEL_25:
      if (*(v4 + 1160))
      {
        goto LABEL_28;
      }

      v6 = 1282;
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if (*(v7 + 960) <= 0x8C3Cu)
  {
    v13 = v11 & 0xFFFE;
    if (v11 != 35898)
    {
LABEL_48:
      v14 = 35409;
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v13 = v11 & 0xFFFE;
  if (v11 == 35901)
  {
    goto LABEL_40;
  }

  v14 = 35905;
LABEL_49:
  if (v11 == v14)
  {
    goto LABEL_25;
  }

LABEL_50:
  v15 = (v7 + 984);
  while (1)
  {
    v16 = *v15++;
    if (((1 << (*(v7 + 982) & 0xF)) & v16) == 0)
    {
      break;
    }

    if (!--v5)
    {
      gleGenerateMipmap(a1, a2);
      goto LABEL_28;
    }
  }

  if (a2 == 34067)
  {
    goto LABEL_25;
  }

LABEL_28:
  v12 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v12);
}

void glFramebufferTextureLayerEXT_Exec(uint64_t a1, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v11 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      goto LABEL_24;
    }

    v11 = 28968;
  }

  v12 = *(a1 + v11);
  if (!v12)
  {
LABEL_46:
    if (*(a1 + 29832))
    {
      return;
    }

    v13 = 1282;
    goto LABEL_48;
  }

  if (a4 && ((a6 | a5) & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v14 = 8;
  if (a3 != 33306 && a3 != 36096)
  {
    if (a3 == 36128)
    {
      v14 = 9;
      goto LABEL_15;
    }

    v14 = a3 - 36064;
    if (a3 - 36064 >= *(*(a1 + 29032) + 22))
    {
LABEL_24:
      if (*(a1 + 29832))
      {
        return;
      }

      v13 = 1280;
      goto LABEL_48;
    }
  }

LABEL_15:
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  if (!a4)
  {
    LOWORD(v17) = 0;
    v16 = 0;
    goto LABEL_27;
  }

  v15 = gleLookupHashObject(*(a1 + 19296) + 72, a4);
  if (!v15)
  {
LABEL_45:
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    goto LABEL_46;
  }

  v16 = v15;
  v17 = v15[101] & 0xF;
  if (v17 <= 8)
  {
    if (v17 - 5 < 2)
    {
      v18 = 0;
      do
      {
        v19 = v18 + 1;
        if (v18 > 0x1F)
        {
          break;
        }

        v20 = *(*(a1 + 29032) + 160) << v18++;
      }

      while ((v20 & 0x80000000) == 0);
      if (32 - v19 < a5)
      {
        goto LABEL_51;
      }

      goto LABEL_27;
    }

    if (v17 == 1)
    {
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        if (v25 > 0x1F)
        {
          break;
        }

        v27 = *(*(a1 + 29032) + 164) << v25++;
      }

      while ((v27 & 0x80000000) == 0);
      if (32 - v26 < a5)
      {
        goto LABEL_51;
      }

      LOWORD(v17) = 1;
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if (v17 != 9)
  {
    if (v17 == 10)
    {
      v22 = 0;
      do
      {
        v23 = v22 + 1;
        if (v22 > 0x1F)
        {
          break;
        }

        v24 = *(*(a1 + 29032) + 168) << v22++;
      }

      while ((v24 & 0x80000000) == 0);
      if (32 - v23 < a5)
      {
        goto LABEL_51;
      }

      LOWORD(v17) = 10;
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if (a5)
  {
LABEL_51:
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_8:
    if (*(a1 + 29832))
    {
      return;
    }

    v13 = 1281;
LABEL_48:
    *(a1 + 29832) = v13;
    return;
  }

  LOWORD(v17) = 9;
LABEL_27:
  gleFramebufferTexture(a1, v12 + 40, v14, v17, v16, 0, a5, a6, 0);
  if (a3 == 33306)
  {
    gleFramebufferTexture(a1, v12 + 40, 9u, v17, v16, 0, a5, a6, 0);
  }

  v21 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v21);
}

BOOL glIsRenderbufferEXT_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glIsRenderbufferEXT_Exec(a1, a2);
}

_DWORD *glBindRenderbufferEXT_PackThread(uint64_t a1, int a2, int a3)
{
  result = gleAddCommand(a1, glBindRenderbufferEXT_UnpackThread, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

void glDeleteRenderbuffersEXT_ExecThread(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(a1 + 27752))();

  glDeleteRenderbuffersEXT_Exec(a1, a2, a3);
}

void glGenRenderbuffersEXT_ExecThread(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(a1 + 27752))();

  glGenRenderbuffersEXT_Exec(a1, a2, a3);
}

_DWORD *glRenderbufferStorageEXT_PackThread(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = gleAddCommand(a1, glRenderbufferStorageMultisampleEXT_UnpackThread, 20);
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

uint64_t glGetRenderbufferParameterivEXT_ExecThread(uint64_t a1, int a2, int a3, int *a4)
{
  (*(a1 + 27752))();

  return glGetRenderbufferParameterivEXT_Exec(a1, a2, a3, a4);
}

BOOL glIsFramebufferEXT_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glIsFramebufferEXT_Exec(a1, a2);
}

_DWORD *glBindFramebufferEXT_PackThread(uint64_t a1, int a2, int a3)
{
  result = gleAddCommand(a1, glBindFramebufferEXT_UnpackThread, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

void glDeleteFramebuffersEXT_ExecThread(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  (*(a1 + 27752))();

  glDeleteFramebuffersEXT_Exec(a1, a2, a3);
}

void glGenFramebuffersEXT_ExecThread(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(a1 + 27752))();

  glGenFramebuffersEXT_Exec(a1, a2, a3);
}

uint64_t glCheckFramebufferStatusEXT_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glCheckFramebufferStatusEXT_Exec(a1, a2);
}

_DWORD *glFramebufferTexture2DEXT_PackThread(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  result = gleAddCommand(a1, glFramebufferTexture2DEXT_UnpackThread, 24);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  return result;
}

_DWORD *glFramebufferRenderbufferEXT_PackThread(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = gleAddCommand(a1, glFramebufferRenderbufferEXT_UnpackThread, 24);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

uint64_t glGetFramebufferAttachmentParameterivEXT_ExecThread(uint64_t a1, int a2, int a3, int a4, int *a5)
{
  (*(a1 + 27752))();

  return glGetFramebufferAttachmentParameterivEXT_Exec(a1, a2, a3, a4, a5);
}

void *glGenerateMipmapEXT_PackThread(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glGenerateMipmapEXT_UnpackThread, 4);
  *result = a2;
  return result;
}

_DWORD *glFramebufferTextureLayerEXT_PackThread(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  result = gleAddCommand(a1, glFramebufferTextureLayerEXT_UnpackThread, 24);
  *result = a2;
  result[1] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  return result;
}

void *glBlitFramebufferEXT_Comp(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10)
{
  result = gleAddCommand(a1, glBlitFramebufferEXT_ListExec, 40);
  *result = a2;
  *(result + 1) = a3;
  *(result + 2) = a4;
  *(result + 3) = a5;
  *(result + 4) = a6;
  *(result + 5) = a7;
  *(result + 6) = a8;
  *(result + 28) = a9;
  *(result + 9) = a10;
  return result;
}

uint64_t glBlitFramebufferEXT_Exec(uint64_t result, signed int a2, signed int a3, signed int a4, signed int a5, int a6, int a7, int a8, double a9, double a10, double a11, int a12, unsigned int a13, unsigned int a14)
{
  v14 = result + 29732;
  if ((a13 & 0xFFFFBAFF) != 0)
  {
    if (*(result + 29832))
    {
      return result;
    }

    LOWORD(v27) = 1281;
LABEL_56:
    *(v14 + 100) = v27;
    return result;
  }

  v20 = result;
  if (a14 != 9728)
  {
    if (a14 - 37050 >= 2)
    {
      if (a14 == 9729)
      {
LABEL_154:
        if ((a13 & 0x500) != 0)
        {
LABEL_54:
          LOWORD(v27) = 1282;
          goto LABEL_55;
        }

        goto LABEL_3;
      }
    }

    else if ((*(*(result + 29480) + 568) & 0x80) != 0)
    {
      goto LABEL_154;
    }

    LOWORD(v27) = 1280;
    goto LABEL_55;
  }

LABEL_3:
  v21 = (result + 15176);
  if ((*(result + 1540) & 4) != 0)
  {
    result = gleGenerateMatrixIdentifier(result, result + 9488, a9, a10, a11);
    *(v20 + 19152) = *(v20 + 19152) & 0xFFFFFEFF | ((result != -1074791426) << 8);
    *v14 = result;
  }

  if ((*(v14 + 71) & 0x8A) != 0)
  {
    result = gleUpdateReadFramebufferState(v20);
    if (result)
    {
      goto LABEL_11;
    }
  }

  if ((*(v20 + 1540) & 4) != 0)
  {
    result = gleGenerateMatrixIdentifier(v20, v20 + 9488, a9, a10, a11);
    *(v20 + 19152) = *(v20 + 19152) & 0xFFFFFEFF | ((result != -1074791426) << 8);
    *v14 = result;
  }

  if ((*(v14 + 68) & 0x743C0478) != 0)
  {
    result = gleUpdateDrawFramebufferState(v20, a9, a10, a11);
    if (result)
    {
LABEL_11:
      if (result != 16711680 && !*(v14 + 100))
      {
        *(v14 + 100) = result;
      }

      return result;
    }
  }

  v100 = a5;
  v101 = a4;
  v22 = *(v20 + 28968);
  v23 = *(v20 + 28960);
  v24 = v22 + 40;
  if (a13 < 0x4000 || (v25 = *(v22 + 472) - 36064, v25 > 7))
  {
    v27 = 0;
    if ((a13 & 0x100) == 0)
    {
LABEL_34:
      v40 = a14;
      goto LABEL_48;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = (v22 + 16 * v25);
    v29 = *(v24 + 16 * (*(v22 + 472) - 36064));
    v30 = v28[75];
    v31 = v28[76];
    v32 = v28[77];
    do
    {
      result = *(v23 + 456 + v26) - 36064;
      if (result <= 7 && v29 != 0)
      {
        v34 = (v23 + 296 + 16 * result);
        v36 = v34[2];
        v35 = v34[3];
        result = v34[1];
        v37 = v32 == v35 && v31 == v36;
        v38 = v37 && v30 == result;
        if (v38 && v29 == *(v23 + 40 + 16 * (*(v23 + 456 + v26) - 36064)))
        {
          v27 = 1282;
        }
      }

      v26 += 2;
    }

    while (v26 != 16);
    if ((a13 & 0x100) == 0)
    {
      goto LABEL_34;
    }
  }

  v41 = *(v22 + 168);
  v40 = a14;
  if (v41)
  {
    v42 = *(v22 + 436) == *(v23 + 436) && *(v22 + 432) == *(v23 + 432);
    v43 = v42 && *(v22 + 428) == *(v23 + 428);
    if (v43 && v41 == *(v23 + 168))
    {
      v27 = 1282;
    }
  }

LABEL_48:
  if ((a13 & 0x400) != 0)
  {
    v45 = *(v22 + 184);
    if (v45)
    {
      if (v45 == *(v23 + 184) && *(v22 + 444) == *(v23 + 444) && *(v22 + 448) == *(v23 + 448) && *(v22 + 452) == *(v23 + 452))
      {
        goto LABEL_54;
      }
    }
  }

  if (v27)
  {
LABEL_55:
    if (*(v14 + 100))
    {
      return result;
    }

    goto LABEL_56;
  }

  if (v22)
  {
    v46 = (v22 + 478);
    if (v23)
    {
LABEL_60:
      v47 = (v23 + 478);
      goto LABEL_63;
    }
  }

  else
  {
    v46 = (*(v20 + 29032) + 59);
    if (v23)
    {
      goto LABEL_60;
    }
  }

  v47 = (*(v20 + 29032) + 59);
LABEL_63:
  if (*v47)
  {
LABEL_160:
    if (*(v14 + 100))
    {
      return result;
    }

    LOWORD(v27) = 1282;
    goto LABEL_56;
  }

  v99 = a6;
  v48 = a12;
  result = *v46;
  if (v40 >> 1 == 18525)
  {
    if (!*v46)
    {
      goto LABEL_160;
    }
  }

  else if (*v46 && (v100 != a12 || a3 != a7 || a2 != v99 || v101 != a8))
  {
    goto LABEL_160;
  }

  v49 = a13 & 0x500;
  if (v22)
  {
    if (*(v22 + 472))
    {
      v49 = a13;
    }

    if (!*(v22 + 168))
    {
      v49 &= 0x4400u;
    }

    v50 = v49 & 0x4100;
    v51 = *(v22 + 184) == 0;
  }

  else
  {
    if (*v21)
    {
      v49 = a13;
    }

    v52 = *(v20 + 29480);
    if (!*(v52 + 56))
    {
      v49 &= 0x4400u;
    }

    v50 = v49 & 0x4100;
    v51 = *(v52 + 57) == 0;
  }

  if (v51)
  {
    v49 = v50;
  }

  v53 = 0;
  if (v23)
  {
    while (!*(v23 + 456 + v53))
    {
      v53 += 2;
      if (v53 == 16)
      {
        v49 &= ~0x4000u;
        break;
      }
    }

    if (!*(v23 + 168))
    {
      v49 &= ~0x100u;
    }

    v54 = v49 & 0xFFFFFBFF;
    v55 = *(v23 + 184) == 0;
  }

  else
  {
    while (!*(v20 + 15180 + v53))
    {
      v53 += 2;
      if (v53 == 16)
      {
        v49 &= ~0x4000u;
        break;
      }
    }

    v56 = *(v20 + 29480);
    if (!*(v56 + 56))
    {
      v49 &= ~0x100u;
    }

    v54 = v49 & 0xFFFFFBFF;
    v55 = *(v56 + 57) == 0;
  }

  if (v55)
  {
    v57 = v54;
  }

  else
  {
    v57 = v49;
  }

  if (!v57)
  {
    return result;
  }

  if ((v57 & 0x4000 & *(*(v20 + 29032) + 560)) == 0)
  {
    goto LABEL_113;
  }

  v58 = 1;
  if (!v22)
  {
    v61 = 0;
    v60 = 0;
    if (v23)
    {
      goto LABEL_105;
    }

LABEL_107:
    v65 = 0;
    v63 = 0;
    v66 = 1;
    goto LABEL_108;
  }

  v59 = 1 << *(v22 + 472);
  v60 = (v59 & *(v22 + 528)) != 0;
  v61 = (v59 & *(v22 + 532)) != 0;
  v58 = !v60 && !v61;
  if (!v23)
  {
    goto LABEL_107;
  }

LABEL_105:
  v62 = *(v23 + 528);
  v63 = v62 != 0;
  v64 = *(v23 + 532);
  v65 = v64 != 0;
  v66 = (*(v23 + 496) & ~(v64 | v62)) != 0;
LABEL_108:
  if ((v58 & (v63 || v65) & 1) != 0 || v60 && (v65 || v66) || v61 && (v63 || v66) || v40 != 9728 && (v61 || v60))
  {
    goto LABEL_160;
  }

LABEL_113:
  v97 = a7;
  v98 = a8;
  if (v22)
  {
    v67 = v23 == 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = !v67;
  if (!v67 && (v57 & 0x100) != 0)
  {
    v69 = *(v22 + 168);
    v70 = *(v69 + 1000);
    v71 = *(v23 + 168);
    v72 = *(v71 + 1000);
    v104 = v72;
    v105 = v70;
    if (v70 != v72)
    {
      v92 = result;
      (*(*(v20 + 29496) + 376))(*(v20 + 29464), *(v69 + 8 * *(v14 + 2768) + 40), *(v22 + 428), *(v22 + 432), 4099, &v105);
      (*(*(v20 + 29496) + 376))(*(v20 + 29464), *(v71 + 8 * *(v14 + 2768) + 40), *(v23 + 428), *(v23 + 432), 4099, &v104);
      result = v92;
      v24 = v22 + 40;
      v40 = a14;
      v72 = v104;
      v70 = v105;
    }

    if (v70 != v72)
    {
      goto LABEL_160;
    }
  }

  v73 = v68 ^ 1;
  if ((v57 & 0x400) == 0)
  {
    v73 = 1;
  }

  if ((v73 & 1) == 0)
  {
    v74 = *(v22 + 184);
    v75 = *(v74 + 1000);
    v76 = *(v23 + 184);
    v77 = *(v76 + 1000);
    v104 = v77;
    v105 = v75;
    if (v75 != v77)
    {
      v93 = result;
      v95 = v24;
      (*(*(v20 + 29496) + 376))(*(v20 + 29464), *(v74 + 8 * *(v14 + 2768) + 40), *(v22 + 444), *(v22 + 448), 4099, &v105);
      (*(*(v20 + 29496) + 376))(*(v20 + 29464), *(v76 + 8 * *(v14 + 2768) + 40), *(v23 + 444), *(v23 + 448), 4099, &v104);
      result = v93;
      v24 = v95;
      v40 = a14;
      v77 = v104;
      v75 = v105;
    }

    if (v75 != v77)
    {
      goto LABEL_160;
    }
  }

  if (result)
  {
    v78 = (v57 & 0x4000) == 0;
  }

  else
  {
    v78 = 1;
  }

  if (v78)
  {
    v79 = 0;
  }

  else
  {
    v79 = v68;
  }

  if (v79 != 1)
  {
    goto LABEL_146;
  }

  v91 = v57;
  v80 = v14;
  v81 = v23 + 40;
  v82 = *(v22 + 472) - 36064;
  v83 = v22 + 16 * v82;
  v104 = 0;
  v84 = *(v24 + 16 * v82);
  v96 = v84 + 40;
  result = gleSRGBToFormat(*(v84 + 1000));
  v85 = 0;
  v86 = 0;
  v105 = result;
  v87 = v23 + 296;
  v88 = v23 + 456;
  v94 = v83 + 296;
  while (1)
  {
    v89 = *(v88 + v85) - 36064;
    if (v89 > 7)
    {
      goto LABEL_144;
    }

    v90 = *(v81 + 16 * (*(v88 + v85) - 36064));
    result = gleSRGBToFormat(*(v90 + 1000));
    v104 = result;
    if (v105 == result)
    {
      goto LABEL_144;
    }

    if (!v86)
    {
      (*(*(v20 + 29496) + 376))(*(v20 + 29464), *(v96 + 8 * *(v80 + 2768)), *(v94 + 4), *(v94 + 8), 4099, &v105);
      v105 = gleSRGBToFormat(v105);
    }

    (*(*(v20 + 29496) + 376))(*(v20 + 29464), *(v90 + 40 + 8 * *(v80 + 2768)), *(v87 + 16 * v89 + 4), *(v87 + 16 * v89 + 8), 4099, &v104);
    result = gleSRGBToFormat(v104);
    v104 = result;
    if (v105 != result)
    {
      break;
    }

    v86 = 1;
LABEL_144:
    v85 += 2;
    if (v85 == 16)
    {
      goto LABEL_145;
    }
  }

  if (!*(v80 + 100))
  {
    *(v80 + 100) = 1282;
  }

LABEL_145:
  v40 = a14;
  v57 = v91;
  v48 = a12;
LABEL_146:
  if (a2 != v101 && a3 != v100 && v99 != v98 && v97 != v48)
  {
    return gleBlitFramebuffer(v20, a2, a3, v101, v100, v99, v97, v98, v48, v57, v40);
  }

  return result;
}

_DWORD *glRenderbufferStorageMultisampleEXT_PackThread(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  result = gleAddCommand(a1, glRenderbufferStorageMultisampleEXT_UnpackThread, 20);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  return result;
}

uint64_t glDiscardFramebufferEXT_Exec(uint64_t result, int a2, unsigned int a3, unsigned int *a4, double a5, double a6, double a7)
{
  v9 = result;
  v10 = result + 29732;
  v11 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      goto LABEL_46;
    }

    v11 = 28968;
  }

  if ((a3 & 0x80000000) != 0)
  {
    if (!*(result + 29832))
    {
      v22 = 1281;
LABEL_48:
      *(v10 + 100) = v22;
      return result;
    }

    return result;
  }

  v12 = *(result + v11);
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a4;
    v18 = a3;
    do
    {
      v20 = *v17++;
      v19 = v20;
      result = v20 - 6144;
      if (result >= 3)
      {
        result = v19 >> 4;
        if (result == 2254)
        {
          if (v19 - 36064 >= *(*(v9 + 29480) + 22))
          {
            v15 = 1;
          }

          v13 = 1;
        }

        else if ((v19 & 0xFFFFFFDF) == 0x8D00)
        {
          v13 = 1;
        }

        else
        {
          v16 = 1;
        }
      }

      else
      {
        v14 = 1;
      }

      --v18;
    }

    while (v18);
    if (!v16)
    {
      v21 = v12 == 0;
      if (!v12)
      {
        v14 = v13;
      }

      if (!v14)
      {
        if (v15)
        {
          if (*(v10 + 100))
          {
            return result;
          }

          v22 = 1282;
          goto LABEL_48;
        }

        goto LABEL_26;
      }
    }

LABEL_46:
    if (*(v10 + 100))
    {
      return result;
    }

    v22 = 1280;
    goto LABEL_48;
  }

  v21 = v12 == 0;
LABEL_26:
  v23 = *(v9 + 1540);
  if (a2 == 36008)
  {
    if ((v23 & 4) != 0)
    {
      result = gleGenerateMatrixIdentifier(v9, v9 + 9488, a5, a6, a7);
      *(v9 + 19152) = *(v9 + 19152) & 0xFFFFFEFF | ((result != -1074791426) << 8);
      *v10 = result;
    }

    if ((*(v10 + 71) & 0x8A) == 0 || (result = gleUpdateReadFramebufferState(v9), !result))
    {
LABEL_39:
      if (*(v10 + 2764))
      {
        v24 = 0;
        v25 = v12 + 200;
        v26 = (v9 + 32512);
        do
        {
          if (v21)
          {
            v27 = 0;
          }

          else
          {
            v27 = *(v25 + 8 * v24);
          }

          result = (*(v26[206] + 1600))(*v26, v27, a3, a4);
          ++v24;
          v26 += 209;
        }

        while (v24 < *(v10 + 2764));
      }

      return result;
    }
  }

  else
  {
    if ((v23 & 4) != 0)
    {
      result = gleGenerateMatrixIdentifier(v9, v9 + 9488, a5, a6, a7);
      *(v9 + 19152) = *(v9 + 19152) & 0xFFFFFEFF | ((result != -1074791426) << 8);
      *v10 = result;
    }

    if ((*(v10 + 68) & 0x743C0478) == 0)
    {
      goto LABEL_39;
    }

    result = gleUpdateDrawFramebufferState(v9, a5, a6, a7);
    if (!result)
    {
      goto LABEL_39;
    }
  }

  if (result != 16711680 && !*(v10 + 100))
  {
    *(v10 + 100) = result;
  }

  return result;
}

void *glDiscardFramebufferEXT_PackThread(void *result, int a2, unsigned int a3, int *a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    if (!*(result + 14916))
    {
      *(result + 14916) = 1281;
    }
  }

  else
  {
    result = gleAddCommand(result, glDiscardFramebufferEXT_UnpackThread, 4 * a3 + 8);
    *result = a2;
    *(result + 1) = a3;
    if (a3)
    {
      v7 = result + 1;
      v8 = a3;
      do
      {
        v9 = *a4++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t glInvalidateSubFramebuffer_Exec(uint64_t result, int a2, unsigned int a3, unsigned int *a4, double a5, double a6, double a7, int a8, int a9, int a10, int a11)
{
  v11 = 28960;
  if (a2 != 36160 && a2 != 36009)
  {
    if (a2 != 36008)
    {
      if (*(result + 29832))
      {
        return result;
      }

      v13 = 1280;
      goto LABEL_15;
    }

    v11 = 28968;
  }

  if ((a11 | a10) < 0)
  {
    if (*(result + 29832))
    {
      return result;
    }

    v13 = 1281;
LABEL_15:
    *(result + 29832) = v13;
    return result;
  }

  if (a8 <= 0)
  {
    v12 = *(result + v11);
    if (v12)
    {
      if (a9 <= 0 && a10 + a8 >= *(v12 + 474) && a11 + a9 >= *(v12 + 476))
      {
        return glDiscardFramebufferEXT_Exec(result, a2, a3, a4, a5, a6, a7);
      }
    }
  }

  return result;
}

void *glInvalidateSubFramebuffer_PackThread(void *result, int a2, unsigned int a3, int *a4, int a5, int a6, int a7, int a8)
{
  if ((a3 & 0x80000000) != 0)
  {
    if (!*(result + 14916))
    {
      *(result + 14916) = 1281;
    }
  }

  else
  {
    result = gleAddCommand(result, glInvalidateSubFramebuffer_UnpackThread, 4 * a3 + 24);
    *result = a2;
    *(result + 1) = a5;
    *(result + 2) = a6;
    *(result + 3) = a7;
    *(result + 4) = a8;
    *(result + 5) = a3;
    if (a3)
    {
      v15 = result + 3;
      v16 = a3;
      do
      {
        v17 = *a4++;
        *v15++ = v17;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t glResolveMultisampleFramebufferAPPLE_Exec(uint64_t result, double a2, double a3, double a4)
{
  v4 = result;
  v5 = result + 29732;
  if ((*(result + 1540) & 4) != 0)
  {
    result = gleGenerateMatrixIdentifier(result, result + 9488, a2, a3, a4);
    *(v4 + 19152) = *(v4 + 19152) & 0xFFFFFEFF | ((result != -1074791426) << 8);
    *v5 = result;
  }

  if ((*(v5 + 71) & 0x8A) != 0)
  {
    result = gleUpdateReadFramebufferState(v4);
    if (result)
    {
      goto LABEL_9;
    }
  }

  if ((*(v4 + 1540) & 4) != 0)
  {
    result = gleGenerateMatrixIdentifier(v4, v4 + 9488, a2, a3, a4);
    *(v4 + 19152) = *(v4 + 19152) & 0xFFFFFEFF | ((result != -1074791426) << 8);
    *v5 = result;
  }

  if ((*(v5 + 68) & 0x743C0478) != 0 && (result = gleUpdateDrawFramebufferState(v4, a2, a3, a4), result))
  {
LABEL_9:
    if (result != 16711680 && !*(v5 + 100))
    {
      *(v5 + 100) = result;
    }
  }

  else
  {
    v6 = *(v4 + 28968);
    if (v6 && (v7 = *(v4 + 28960)) != 0 && *(v5 + 2753) && *(v5 + 2754))
    {
      result = gleCheckMultisampleResolveFramebuffers(v4, v6 + 40, (v7 + 40));
      if (result)
      {
        return gleBlitFramebuffer(v4, 0, 0, *(v6 + 474), *(v6 + 476), 0, 0, *(v7 + 474), *(v7 + 476), 0x4000u, 9728);
      }
    }

    else if (!*(v5 + 100))
    {
      *(v5 + 100) = 1286;
    }
  }

  return result;
}

void glGetInternalformativ_Exec(uint64_t a1, int a2, unsigned int a3, int a4, int a5, _DWORD *a6)
{
  v6 = a1 + 28672;
  if (a2 != 36161)
  {
    goto LABEL_34;
  }

  v7 = a5;
  if (a5 < 0)
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v14 = 1281;
LABEL_11:
    *(v6 + 1160) = v14;
    return;
  }

  if (!gleCheckRenderableFormatArgs(a1, 36161, 0, a3))
  {
    return;
  }

  if (a4 != 37760 && a4 != 32937)
  {
LABEL_34:
    if (*(v6 + 1160))
    {
      return;
    }

    v14 = 1280;
    goto LABEL_11;
  }

  if (v7)
  {
    v25 = 0;
    v12 = *(a1 + 29480);
    if (a3 - 36208 < 0x24 || a3 == 36975 || a3 - 33341 >= 0xFFFFFFF4)
    {
      v13 = (v12 + 173);
    }

    else
    {
      v13 = (v12 + 170);
    }

    v24 = a6;
    v15 = *v13;
    TextureObject = gleCreateTextureObject(*(a1 + 19296), 8194, 0);
    v17 = TextureObject;
    if (v15 < 2)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = TextureObject + 10;
      do
      {
        BYTE1(v23) = 1;
        LOBYTE(v23) = v15;
        gleEvaluateTextureImageChange(a1, v17 + 40, v17 + 1072, 0, 0, 1, 1, 1, 0, a3, 0x1908u, 0x1401u, v23, 0);
        *(v17 + 1008) = 65541;
        (*(*(a1 + 29496) + 376))(*(a1 + 29464), *&v20[2 * *(v6 + 3828)], 0, 0, 36011, &v25);
        v21 = v25;
        if (v25 != v18)
        {
          if (a4 == 32937)
          {
            *v24++ = v25;
            --v7;
            v21 = v25;
          }

          ++v19;
          v18 = v21;
        }

        if (!v7)
        {
          break;
        }
      }

      while (v15-- > 2);
    }

    if (a4 == 37760)
    {
      *v24 = v19;
    }

    gleFreeTextureObject(*(a1 + 19296), v17);
  }
}

void glGetInternalformativ_ExecThread(uint64_t a1, int a2, unsigned int a3, int a4, int a5, _DWORD *a6)
{
  (*(a1 + 27752))();

  glGetInternalformativ_Exec(a1, a2, a3, a4, a5, a6);
}

float *glFogf_Comp(uint64_t a1, int a2, float a3)
{
  result = gleAddCommand(a1, glFogf_ListExec, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

void glFogx_Exec(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  if (a2 != 2917)
  {
    v3 = v3 * 0.000015259;
  }

  glFogf_Exec(a1, a2, v3);
}

float *glFogx_PackThread(uint64_t a1, int a2, signed int a3)
{
  v4 = vcvts_n_f32_s32(a3, 0x10uLL);
  if (a2 == 2917)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  result = gleAddCommand(a1, glFogf_ListExec, 8);
  *result = a2;
  result[1] = v5;
  return result;
}

float glFogfv_Comp(uint64_t a1, int a2, uint64_t a3)
{
  v5 = gleAddCommand(a1, glFogfv_ListExec, 20);
  *v5 = a2;
  *(v5 + 1) = *a3;
  *(v5 + 2) = *(a3 + 4);
  *(v5 + 3) = *(a3 + 8);
  result = *(a3 + 12);
  *(v5 + 4) = result;
  return result;
}

__n128 glFogxv_PackThread(uint64_t a1, int a2, int32x2_t *a3)
{
  v4.i32[1] = 0;
  v4.i64[1] = 0;
  v4.f32[0] = a3->i32[0];
  if (a2 != 2917)
  {
    if (a2 != 2918)
    {
      v7 = COERCE_UNSIGNED_INT(a3->i32[0] * 0.000015259);
      goto LABEL_6;
    }

    v4.f32[1] = a3->i32[1];
    *&v4.u32[2] = vcvt_f32_s32(a3[1]);
    v4 = vmulq_f32(v4, vdupq_n_s32(0x37800000u));
  }

  v7 = v4;
LABEL_6:
  v5 = gleAddCommand(a1, glFogfv_ListExec, 20);
  *v5 = a2;
  result = v7;
  *(v5 + 4) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *(result + ((v2 >> 3) & 0x1FFC) + 2064) |= 1 << v2;
  *a2 = 0;
  *(result + 1532) |= 0x8000000u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *(result + ((v2 >> 3) & 0x1FFC) + 2064) |= 1 << v2;
  *a2 = 0;
  *(result + 1532) |= 0x8000000u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *(result + ((v2 >> 3) & 0x1FFC) + 1552) |= 1 << v2;
  *a2 = 0;
  *(result + 1532) |= 0x800000u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *(result + ((v2 >> 3) & 0x1FFC) + 1936) |= 1 << v2;
  *a2 = 0;
  *(result + 1532) |= 0x4000000u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *(result + ((v2 >> 3) & 0x1FFC) + 1552) |= 1 << v2;
  *a2 = 0;
  *(result + 1532) |= 0x800000u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *(result + ((v2 >> 3) & 0x1FFC) + 1936) |= 1 << v2;
  *a2 = 0;
  *(result + 1532) |= 0x4000000u;
  return result;
}

void *glFrontFace_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glFrontFace_ListExec, 4);
  *result = a2;
  return result;
}

float32x2_t glFrustum_Comp(uint64_t a1, float64x2_t a2, float64x2_t a3, float64_t a4, float64_t a5, double a6, double a7)
{
  if (a6 <= 0.0 || a7 <= 0.0)
  {
    goto LABEL_12;
  }

  a3.f64[1] = a5;
  a2.f64[1] = a4;
  v9 = vcvt_f32_f64(vsubq_f64(a3, a2));
  v10 = -v9.f32[0];
  if (v9.f32[0] >= 0.0)
  {
    v10 = v9.f32[0];
  }

  if (v10 < 0.000005)
  {
    goto LABEL_12;
  }

  v11 = -v9.f32[1];
  if (v9.f32[1] >= 0.0)
  {
    v11 = v9.f32[1];
  }

  if (v11 < 0.000005)
  {
    goto LABEL_12;
  }

  v12 = a6 - a7;
  v13 = -v12;
  if (v12 >= 0.0)
  {
    v13 = a6 - a7;
  }

  if (v13 >= 0.000005)
  {
    v25 = a2;
    v26 = a3;
    v24 = v9;
    v15 = gleAddCommand(a1, glFrustum_ListExec, 24);
    __asm { FMOV            V0.2S, #1.0 }

    v21 = vdiv_f32(_D0, v24);
    v22 = a6 + a6;
    v15->f32[0] = v22 * v21.f32[0];
    v15->f32[1] = vmuls_lane_f32(v22, v21, 1);
    result = vcvt_f32_f64(vmulq_f64(vaddq_f64(v25, v26), vcvtq_f64_f32(v21)));
    v23.f64[0] = a6 + a7;
    v23.f64[1] = v22 * a7;
    v15[1] = result;
    v15[2] = vcvt_f32_f64(vmulq_n_f64(v23, (1.0 / v12)));
  }

  else
  {
LABEL_12:

    gleSetErrorInList(a1, 1281);
  }

  return result;
}

uint64_t glFrustum_ListExec(uint64_t a1, float *a2)
{
  if (*(a1 + 20484) < 24)
  {
    v2 = *(a1 + 19976);
    v3 = *a2;
    v5 = *v2;
    v4 = v2[1];
    v6 = vmulq_n_f32(v4, a2[1]);
    v7 = vmulq_n_f32(v4, a2[3]);
    v8 = v2[2];
    v9 = vmulq_n_f32(v8, a2[5]);
    v2[2] = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(v7, *v2, a2[2]), v8, a2[4]), v2[3]);
    v2[3] = v9;
    *v2 = vmulq_n_f32(v5, v3);
    v2[1] = v6;
    v10 = *(a1 + 20488);
    *(a1 + 1528) |= v10;
    *(a1 + 28652) = 0;
    *(a1 + 1540) = vorr_s8(*(a1 + 1540), vdup_n_s32(v10));
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1282;
  }

  return 24;
}

float32x2_t glFrustumf_PackThread(uint64_t a1, float64x2_t a2, float64x2_t a3, float a4, float a5, float a6, float a7)
{
  a2.f64[0] = *a2.f64;
  a3.f64[0] = *a3.f64;
  return glFrustum_Comp(a1, a2, a3, a4, a5, a6, a7);
}

float32x2_t glFrustumx_PackThread(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, float64x2_t a8, float64x2_t a9)
{
  a8.f64[0] = vcvts_n_f32_s32(a2, 0x10uLL);
  a9.f64[0] = vcvts_n_f32_s32(a3, 0x10uLL);
  return glFrustum_Comp(a1, a8, a9, vcvts_n_f32_s32(a4, 0x10uLL), vcvts_n_f32_s32(a5, 0x10uLL), vcvts_n_f32_s32(a6, 0x10uLL), vcvts_n_f32_s32(a7, 0x10uLL));
}

_DWORD *glHint_Comp(uint64_t a1, int a2, int a3)
{
  result = gleAddCommand(a1, glHint_ListExec, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

void *glLightf_Comp(uint64_t a1, int a2, int a3, float a4)
{
  result = gleAddCommand(a1, glLightf_ListExec, 12);
  *result = a2;
  *(result + 1) = a3;
  *(result + 2) = a4;
  return result;
}

void glLightf_Exec(uint64_t a1, int a2, int a3, float a4)
{
  v4 = (a1 + 28652);
  v5 = a2 - 0x4000;
  if ((a2 - 0x4000) >= 8)
  {
    goto LABEL_2;
  }

  v8 = a1 + 160 * v5 + 12544;
  if (a3 > 4614)
  {
    switch(a3)
    {
      case 4615:
        if (a4 >= 0.0)
        {
          *(a1 + 160 * v5 + 12624) = a4;
          goto LABEL_19;
        }

LABEL_33:
        if (*(a1 + 29832))
        {
          return;
        }

        v6 = 1281;
        goto LABEL_35;
      case 4616:
        if (a4 >= 0.0)
        {
          *(a1 + 160 * v5 + 12628) = a4;
          goto LABEL_19;
        }

        goto LABEL_33;
      case 4617:
        if (a4 >= 0.0)
        {
          *(a1 + 160 * v5 + 12632) = a4;
LABEL_19:
          v10 = a2 - 0x4000;

          gleUpdateLightAttenuation(a1, v10);
          return;
        }

        goto LABEL_33;
    }

LABEL_2:
    if (*(a1 + 29832))
    {
      return;
    }

    v6 = 1280;
LABEL_35:
    *(a1 + 29832) = v6;
    return;
  }

  if (a3 == 4613)
  {
    if (a4 < 0.0 || *(*(a1 + 29032) + 128) < a4)
    {
      goto LABEL_33;
    }

    *(a1 + 160 * v5 + 12636) = a4;
    gleUpdateLightExponents(a1, a2 - 0x4000);
    v11 = *(a1 + 19248);
    if (v11)
    {
      v12 = *(v11 + 20 * v5 + 2570);
      if (v12 <= 0x3FF)
      {
        *(a1 + ((v12 >> 3) & 0x1FFC) + 1552) |= 1 << v12;
        *v4 = 0;
        *(a1 + 1532) |= 0x800000u;
      }
    }

    v13 = *(a1 + 19272);
    if (v13)
    {
      v14 = *(v13 + 20 * v5 + 2570);
      if (v14 <= 0x3FF)
      {
        *(a1 + ((v14 >> 3) & 0x1FFC) + 1936) |= 1 << v14;
        *v4 = 0;
        *(a1 + 1532) |= 0x4000000u;
      }
    }

    v15 = *(a1 + 19280);
    if (v15)
    {
      v16 = *(v15 + 20 * v5 + 2570);
      goto LABEL_46;
    }
  }

  else
  {
    if (a3 != 4614)
    {
      goto LABEL_2;
    }

    if (a4 < 0.0 || a4 > 90.0)
    {
      if (a4 != 180.0)
      {
        goto LABEL_33;
      }

      *(a1 + 160 * v5 + 12688) = 1127481344;
      v9 = -1.0;
    }

    else
    {
      *(a1 + 160 * v5 + 12688) = a4;
      v9 = cosf(a4 * 0.017453);
    }

    *(v8 + 76) = v9;
    gleUpdateLightExponents(a1, v5);
    v17 = *(a1 + 19248);
    if (v17)
    {
      v18 = *(v17 + 20 * v5 + 2568);
      if (v18 <= 0x3FF)
      {
        *(a1 + ((v18 >> 3) & 0x1FFC) + 1552) |= 1 << v18;
        *v4 = 0;
        *(a1 + 1532) |= 0x800000u;
      }
    }

    v19 = *(a1 + 19272);
    if (v19)
    {
      v20 = *(v19 + 20 * v5 + 2568);
      if (v20 <= 0x3FF)
      {
        *(a1 + ((v20 >> 3) & 0x1FFC) + 1936) |= 1 << v20;
        *v4 = 0;
        *(a1 + 1532) |= 0x4000000u;
      }
    }

    v21 = *(a1 + 19280);
    if (v21)
    {
      v16 = *(v21 + 20 * v5 + 2568);
LABEL_46:
      if (v16 <= 0x3FF)
      {
        *(a1 + ((v16 >> 3) & 0x1FFC) + 2064) |= 1 << v16;
        *v4 = 0;
        *(a1 + 1532) |= 0x8000000u;
      }
    }
  }
}

void *glLightx_PackThread(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v6 = vcvts_n_f32_s32(a4, 0x10uLL);
  result = gleAddCommand(a1, glLightf_ListExec, 12);
  *result = a2;
  *(result + 1) = a3;
  *(result + 2) = v6;
  return result;
}

float glLightfv_Comp(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v7 = gleAddCommand(a1, glLightfv_ListExec, 24);
  *v7 = a2;
  v7[1] = a3;
  v9 = 8;
  if ((a3 - 4613) < 5)
  {
    goto LABEL_5;
  }

  if ((a3 - 4608) < 4)
  {
    v10 = a4 + 1;
    v7[2] = *a4;
    v11 = 20;
    v12 = 4;
    v13 = 2;
    v9 = 12;
LABEL_4:
    *(v7 + v9) = *v10;
    v14 = a4[v13];
    a4 = (a4 + v9);
    v7[v12] = v14;
    v9 = v11;
LABEL_5:
    result = *a4;
    *(v7 + v9) = *a4;
    return result;
  }

  if (a3 == 4612)
  {
    v11 = 16;
    v12 = 3;
    v13 = 1;
    v10 = a4;
    goto LABEL_4;
  }

  return result;
}

void glLightxv_Exec(float32x4_t *a1, int a2, int a3, int *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6 = *a4 * 0.000015259;
  if ((a3 - 4608) < 4)
  {
    *&v7 = a4[1] * 0.000015259;
    v4 = 3;
    v5 = 2;
LABEL_5:
    *(&v6 + v5 * 4) = a4[v5] * 0.000015259;
    *(&v6 + v4 * 4) = a4[v4] * 0.000015259;
    goto LABEL_6;
  }

  if (a3 == 4612)
  {
    v4 = 2;
    v5 = 1;
    goto LABEL_5;
  }

LABEL_6:
  glLightfv_Exec(a1, a2, a3, &v6);
}

float glLightxv_PackThread(uint64_t a1, int a2, int a3, int *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v7 = *a4 * 0.000015259;
  if ((a3 - 4608) < 4)
  {
    *&v8 = a4[1] * 0.000015259;
    v4 = 3;
    v5 = 2;
LABEL_5:
    *(&v7 + v5 * 4) = a4[v5] * 0.000015259;
    *(&v7 + v4 * 4) = a4[v4] * 0.000015259;
    return glLightfv_Comp(a1, a2, a3, &v7);
  }

  if (a3 == 4612)
  {
    v4 = 2;
    v5 = 1;
    goto LABEL_5;
  }

  return glLightfv_Comp(a1, a2, a3, &v7);
}

uint64_t glGetLightfv_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  return glGetLightfv_Exec(a1, a2, a3, a4);
}

uint64_t glGetLightfv_Exec(uint64_t result, int a2, int a3, _DWORD *a4)
{
  if ((a2 - 0x4000) >= 8)
  {
    goto LABEL_2;
  }

  if (a3 > 4612)
  {
    if (a3 <= 4614)
    {
      if (a3 == 4613)
      {
        v4 = *(result + 160 * (a2 - 0x4000) + 12636);
      }

      else
      {
        v4 = *(result + 160 * (a2 - 0x4000) + 12688);
      }
    }

    else
    {
      switch(a3)
      {
        case 4615:
          v4 = *(result + 160 * (a2 - 0x4000) + 12624);
          break;
        case 4616:
          v4 = *(result + 160 * (a2 - 0x4000) + 12628);
          break;
        case 4617:
          v4 = *(result + 160 * (a2 - 0x4000) + 12632);
          break;
        default:
          goto LABEL_2;
      }
    }

    *a4 = v4;
    return result;
  }

  if (a3 > 4609)
  {
    if (a3 == 4610)
    {
      *a4 = *(result + 160 * (a2 - 0x4000) + 12576);
      a4[1] = *(result + 160 * (a2 - 0x4000) + 12580);
      a4[2] = *(result + 160 * (a2 - 0x4000) + 12584);
      v5 = *(result + 160 * (a2 - 0x4000) + 12588);
    }

    else
    {
      if (a3 != 4611)
      {
        *a4 = *(result + 160 * (a2 - 0x4000) + 12608);
        a4[1] = *(result + 160 * (a2 - 0x4000) + 12612);
        a4[2] = *(result + 160 * (a2 - 0x4000) + 12616);
        return result;
      }

      *a4 = *(result + 160 * (a2 - 0x4000) + 12592);
      a4[1] = *(result + 160 * (a2 - 0x4000) + 12596);
      a4[2] = *(result + 160 * (a2 - 0x4000) + 12600);
      v5 = *(result + 160 * (a2 - 0x4000) + 12604);
    }

    goto LABEL_25;
  }

  if (a3 == 4608)
  {
    *a4 = *(result + 160 * (a2 - 0x4000) + 12544);
    a4[1] = *(result + 160 * (a2 - 0x4000) + 12548);
    a4[2] = *(result + 160 * (a2 - 0x4000) + 12552);
    v5 = *(result + 160 * (a2 - 0x4000) + 12556);
    goto LABEL_25;
  }

  if (a3 == 4609)
  {
    *a4 = *(result + 160 * (a2 - 0x4000) + 12560);
    a4[1] = *(result + 160 * (a2 - 0x4000) + 12564);
    a4[2] = *(result + 160 * (a2 - 0x4000) + 12568);
    v5 = *(result + 160 * (a2 - 0x4000) + 12572);
LABEL_25:
    a4[3] = v5;
    return result;
  }

LABEL_2:
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glGetLightxv_Exec(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = 0;
  result = glGetLightfv_Exec(a1, a2, a3, v14);
  v7 = (*v14 * 65536.0) + 0.5;
  if (v7 < 0.0)
  {
    v7 = v7 + -0.99998;
  }

  *a4 = v7;
  if ((a3 - 4608) >= 4)
  {
    if (a3 != 4612)
    {
      return result;
    }

    v9 = 2;
    v10 = 1;
  }

  else
  {
    v8 = (*(v14 + 1) * 65536.0) + 0.5;
    if (v8 < 0.0)
    {
      v8 = v8 + -0.99998;
    }

    a4[1] = v8;
    v9 = 3;
    v10 = 2;
  }

  v11 = (*(v14 + v10 * 4) * 65536.0) + 0.5;
  if (v11 < 0.0)
  {
    v11 = v11 + -0.99998;
  }

  a4[v10] = v11;
  v12 = (*(v14 + v9 * 4) * 65536.0) + 0.5;
  v13 = v12 + -0.99998;
  if (v12 >= 0.0)
  {
    v13 = (*(v14 + v9 * 4) * 65536.0) + 0.5;
  }

  a4[v9] = v13;
  return result;
}

uint64_t glGetLightxv_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  return glGetLightxv_Exec(a1, a2, a3, a4);
}

float *glLightModelf_Comp(uint64_t a1, int a2, float a3)
{
  result = gleAddCommand(a1, glLightModelf_ListExec, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t glLightModelf_Exec(uint64_t a1, int a2, float a3)
{
  if (a2 == 34224)
  {
    v6 = a3 != 0.0;
    if (*(a1 + 14894) != v6)
    {
      *(a1 + 14894) = v6;
      return gleUpdateLightModel(a1);
    }
  }

  else if (a2 == 2898)
  {
    v3 = a3 != 0.0;
    if (*(a1 + 14892) != v3)
    {
      *(a1 + 14892) = v3;
      if ((*(a1 + 24864) & 9) != 0 || *(a1 + 24756))
      {
        v4 = *(a1 + 24751);
      }

      else
      {
        if (*(a1 + 14890))
        {
          v7 = a3 == 0.0;
        }

        else
        {
          v7 = 1;
        }

        v4 = !v7;
      }

      if (v4 == *(a1 + 17701))
      {
        v5 = *(a1 + 1548);
      }

      else
      {
        *(a1 + 17701) = v4;
        *(a1 + 1532) |= 0x40000000u;
        *(a1 + 28652) = 0;
        v5 = *(a1 + 1548) | 0x10008400;
        *(a1 + 1548) = v5;
        if ((*(*(a1 + 29032) + 25) & 0x7F) != 0)
        {
          v5 |= 0x30000u;
        }
      }

      *(a1 + 28652) = 0;
      *(a1 + 1548) = v5 | 0x18402;
    }
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }

  return a1;
}

float *glLightModelx_PackThread(uint64_t a1, int a2, unsigned int a3)
{
  v4 = vcvts_n_f32_s32(a3, 0x10uLL);
  result = gleAddCommand(a1, glLightModelf_ListExec, 8);
  *result = a2;
  result[1] = v4;
  return result;
}

float glLightModelfv_Comp(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = gleAddCommand(a1, glLightModelfv_ListExec, 20);
  *v5 = a2;
  v7 = 1;
  if (a2 <= 33271)
  {
    if ((a2 - 2897) >= 2)
    {
      if (a2 != 2899)
      {
        return result;
      }

      v5[1] = *a3;
      v5[2] = a3[1];
      v5[3] = a3[2];
      a3 += 3;
      v7 = 4;
    }

    goto LABEL_7;
  }

  if (a2 == 33272 || a2 == 34224)
  {
LABEL_7:
    result = *a3;
    v5[v7] = *a3;
  }

  return result;
}

uint64_t glLightModelxv_Exec(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  v5 = 0;
  v4 = *a3 * 0.000015259;
  if (a2 == 2899)
  {
    v5 = vmul_f32(vcvt_f32_s32(*(a3 + 4)), vdup_n_s32(0x37800000u));
    v6 = *(a3 + 12) * 0.000015259;
  }

  return glLightModelfv_Exec(a1, a2, &v4);
}

float glLightModelxv_PackThread(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0.0;
  v5 = 0;
  v4 = *a3 * 0.000015259;
  if (a2 == 2899)
  {
    v5 = vmul_f32(vcvt_f32_s32(*(a3 + 4)), vdup_n_s32(0x37800000u));
    v6 = *(a3 + 12) * 0.000015259;
  }

  return glLightModelfv_Comp(a1, a2, &v4);
}

float *glLineWidth_Comp(uint64_t a1, float a2)
{
  result = gleAddCommand(a1, glLineWidth_ListExec, 4);
  *result = a2;
  return result;
}

float *glLineWidthx_PackThread(uint64_t a1, unsigned int a2)
{
  v2 = vcvts_n_f32_s32(a2, 0x10uLL);
  result = gleAddCommand(a1, glLineWidth_ListExec, 4);
  *result = v2;
  return result;
}

void *glLogicOp_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glLogicOp_ListExec, 4);
  *result = a2;
  return result;
}

uint64_t glLogicOp_ListExec(uint64_t a1, _DWORD *a2)
{
  if (*a2 >> 4 == 336)
  {
    *(a1 + 15316) = *a2;
    *(a1 + 1520) |= 0x20000u;
    *(a1 + 28652) = 0;
    *(a1 + 1548) |= 0x40000u;
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }

  return 4;
}

uint64_t glLogicOp_Exec(uint64_t result, unsigned int a2)
{
  if (a2 >> 4 == 336)
  {
    *(result + 15316) = a2;
    *(result + 1520) |= 0x20000u;
    *(result + 28652) = 0;
    *(result + 1548) |= 0x40000u;
  }

  else if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

_BYTE *glColorMask_Comp(uint64_t a1, char a2, char a3, char a4, char a5)
{
  result = gleAddCommand(a1, glColorMask_ListExec, 4);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

void *glDepthMask_Comp(uint64_t a1, char a2)
{
  result = gleAddCommand(a1, glDepthMask_ListExec, 4);
  *result = a2;
  return result;
}

void *glStencilMask_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glStencilMask_ListExec, 4);
  *result = a2;
  return result;
}

_DWORD *glStencilMaskSeparate_Comp(uint64_t a1, int a2, int a3)
{
  result = gleAddCommand(a1, glStencilMaskSeparate_ListExec, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

void *glMaterialf_Comp(uint64_t a1, int a2, int a3, float a4)
{
  result = gleAddCommand(a1, glMaterialf_ListExec, 12);
  *result = a2;
  *(result + 1) = a3;
  *(result + 2) = a4;
  return result;
}

void *glMaterialx_PackThread(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v6 = vcvts_n_f32_s32(a4, 0x10uLL);
  result = gleAddCommand(a1, glMaterialf_ListExec, 12);
  *result = a2;
  *(result + 1) = a3;
  *(result + 2) = v6;
  return result;
}

_DWORD *glMaterialfv_Comp(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  result = gleAddCommand(a1, glMaterialfv_ListExec, 24);
  if (!result)
  {
    return result;
  }

  if (a3 > 5631)
  {
    if (a3 <= 5633)
    {
      v9 = 5632;
      if (a3 != 5632)
      {
        *result = a2;
        result[1] = 5633;
        result[2] = *a4;
        return result;
      }

      goto LABEL_13;
    }

    v9 = 5634;
    if (a3 != 5634)
    {
      if (a3 == 5635)
      {
        *result = a2;
        result[1] = 5635;
        result[2] = *a4;
        result[3] = a4[1];
        result[4] = a4[2];
        return result;
      }

      goto LABEL_15;
    }

LABEL_13:
    *result = a2;
    result[1] = v9;
    result[2] = *a4;
    result[3] = a4[1];
    result[4] = a4[2];
    result[5] = a4[3];
    return result;
  }

  v9 = 4608;
  if (a3 == 4608)
  {
    goto LABEL_13;
  }

  v9 = 4609;
  if (a3 == 4609)
  {
    goto LABEL_13;
  }

  v9 = 4610;
  if (a3 == 4610)
  {
    goto LABEL_13;
  }

LABEL_15:

  return gleSetErrorInList(a1, 1280);
}

float *glMaterialxv_Exec(float *a1, int a2, int a3, int32x4_t *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0uLL;
  if (a3 <= 5631)
  {
    if ((a3 - 4608) >= 3)
    {
      return glMaterialfv_Exec(a1, a2, a3, v5.f32);
    }

    goto LABEL_8;
  }

  if (a3 == 5632 || a3 == 5634)
  {
LABEL_8:
    v5 = vmulq_f32(vcvtq_f32_s32(*a4), vdupq_n_s32(0x37800000u));
    return glMaterialfv_Exec(a1, a2, a3, v5.f32);
  }

  if (a3 == 5633)
  {
    v5.f32[0] = a4->i32[0] * 0.000015259;
  }

  return glMaterialfv_Exec(a1, a2, a3, v5.f32);
}

_DWORD *glMaterialxv_PackThread(uint64_t a1, int a2, int a3, int32x4_t *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0uLL;
  if (a3 <= 5631)
  {
    if ((a3 - 4608) >= 3)
    {
      return glMaterialfv_Comp(a1, a2, a3, &v5);
    }

    goto LABEL_8;
  }

  if (a3 == 5632 || a3 == 5634)
  {
LABEL_8:
    v5 = vmulq_f32(vcvtq_f32_s32(*a4), vdupq_n_s32(0x37800000u));
    return glMaterialfv_Comp(a1, a2, a3, &v5);
  }

  if (a3 == 5633)
  {
    v5.f32[0] = a4->i32[0] * 0.000015259;
  }

  return glMaterialfv_Comp(a1, a2, a3, &v5);
}

uint64_t glGetMaterialfv_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  return glGetMaterialfv_Exec(a1, a2, a3, a4);
}

uint64_t glGetMaterialfv_Exec(uint64_t result, int a2, int a3, _DWORD *a4)
{
  v7 = result;
  if (*(result + 14891))
  {
    result = (*(result + 1456))(result, result + 8464);
  }

  if (a2 == 1028)
  {
    v8 = 0;
  }

  else
  {
    if (a2 != 1029)
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

  if (a3 > 4609)
  {
    switch(a3)
    {
      case 4610:
        v11 = *(v7 + 8 * v8 + 1424);
        *a4 = v11[8];
        a4[1] = v11[9];
        a4[2] = v11[10];
        v10 = v11[11];
        break;
      case 5632:
        v12 = *(v7 + 8 * v8 + 1424);
        *a4 = v12[12];
        a4[1] = v12[13];
        a4[2] = v12[14];
        v10 = v12[15];
        break;
      case 5633:
        *a4 = *(*(v7 + 8 * v8 + 1424) + 64);
        return result;
      default:
        goto LABEL_15;
    }

LABEL_20:
    a4[3] = v10;
    return result;
  }

  if (a3 == 4608)
  {
    v13 = *(v7 + 8 * v8 + 1424);
    *a4 = *v13;
    a4[1] = v13[1];
    a4[2] = v13[2];
    v10 = v13[3];
    goto LABEL_20;
  }

  if (a3 == 4609)
  {
    v9 = *(v7 + 8 * v8 + 1424);
    *a4 = v9[4];
    a4[1] = v9[5];
    a4[2] = v9[6];
    v10 = v9[7];
    goto LABEL_20;
  }

LABEL_15:
  if (!*(v7 + 29832))
  {
    *(v7 + 29832) = 1280;
  }

  return result;
}

uint64_t glGetMaterialxv_Exec(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = 0;
  result = glGetMaterialfv_Exec(a1, a2, a3, v14);
  v7 = (*v14 * 65536.0) + 0.5;
  if (v7 < 0.0)
  {
    v7 = v7 + -0.99998;
  }

  *a4 = v7;
  if ((a3 - 4608) < 3)
  {
LABEL_6:
    v8 = (*(v14 + 1) * 65536.0) + 0.5;
    if (v8 < 0.0)
    {
      v8 = v8 + -0.99998;
    }

    a4[1] = v8;
    v9 = 3;
    v10 = 2;
    goto LABEL_9;
  }

  if (a3 != 5635)
  {
    if (a3 != 5632)
    {
      return result;
    }

    goto LABEL_6;
  }

  v9 = 2;
  v10 = 1;
LABEL_9:
  v11 = (*(v14 + v10 * 4) * 65536.0) + 0.5;
  if (v11 < 0.0)
  {
    v11 = v11 + -0.99998;
  }

  a4[v10] = v11;
  v12 = (*(v14 + v9 * 4) * 65536.0) + 0.5;
  v13 = v12 + -0.99998;
  if (v12 >= 0.0)
  {
    v13 = (*(v14 + v9 * 4) * 65536.0) + 0.5;
  }

  a4[v9] = v13;
  return result;
}

uint64_t glGetMaterialxv_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  return glGetMaterialxv_Exec(a1, a2, a3, a4);
}

float glLoadMatrixf_Comp(uint64_t a1, uint64_t a2)
{
  v3 = gleAddCommand(a1, glLoadMatrixf_ListExec, 64);
  for (i = 0; i != 64; i += 4)
  {
    result = *(a2 + i);
    *(v3 + i) = result;
  }

  return result;
}

int8x8_t glLoadMatrixx_Exec(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v3 = vdupq_n_s32(0x37800000u);
  do
  {
    v5[v2] = vmulq_f32(vcvtq_f32_s32(*(a2 + v2 * 16)), v3);
    ++v2;
  }

  while (v2 != 4);
  return glLoadMatrixf_Exec(a1, v5);
}

double glLoadMatrixx_PackThread(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = vdupq_n_s32(0x37800000u);
  do
  {
    *(&v8 + v2) = vmulq_f32(vcvtq_f32_s32(*(a2 + v2)), v3);
    v2 += 16;
  }

  while (v2 != 64);
  v4 = gleAddCommand(a1, glLoadMatrixf_ListExec, 64);
  v5 = v9;
  *v4 = v8;
  v4[1] = v5;
  result = *&v10;
  v7 = v11;
  v4[2] = v10;
  v4[3] = v7;
  return result;
}

uint64_t glCurrentPaletteMatrixOES_Exec(uint64_t result, unsigned int a2)
{
  if (a2 < 0x10)
  {
    *(result + 20495) = a2;
    if ((*(result + 20484) - 5) <= 0xA)
    {
      *(result + 20484) = a2 + 5;
      return gleUpdateMatrixMode(result);
    }
  }

  else if (!*(result + 29832))
  {
    *(result + 29832) = 1281;
  }

  return result;
}

uint64_t glLoadPaletteFromModelViewMatrixOES_Exec(uint64_t a1)
{
  v2 = (a1 + 20484);
  v3 = (a1 + 1540);
  v4 = *(a1 + 20484);
  *(a1 + 20484) = *(a1 + 20495) + 5;
  gleUpdateMatrixMode(a1);
  v5 = *(a1 + 19976);
  *v5 = *(a1 + 9616);
  v5[1] = *(a1 + 9632);
  v5[2] = *(a1 + 9648);
  v5[3] = *(a1 + 9664);
  LODWORD(v5) = v2[1];
  *(a1 + 1528) |= v5;
  *(a1 + 28652) = 0;
  *v3 = vorr_s8(*v3, vdup_n_s32(v5));
  *v2 = v4;

  return gleUpdateMatrixMode(a1);
}

void *glCurrentPaletteMatrixOES_PackThread(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glCurrentPaletteMatrixOES_UnpackThread, 4);
  *result = a2;
  return result;
}

float glMultMatrixf_Comp(uint64_t a1, uint64_t a2)
{
  v3 = gleAddCommand(a1, glMultMatrixf_ListExec, 64);
  for (i = 0; i != 64; i += 4)
  {
    result = *(a2 + i);
    *(v3 + i) = result;
  }

  return result;
}

int8x8_t glMultMatrixx_Exec(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v3 = vdupq_n_s32(0x37800000u);
  do
  {
    v5[v2] = vmulq_f32(vcvtq_f32_s32(*(a2 + v2 * 16)), v3);
    ++v2;
  }

  while (v2 != 4);
  return glMultMatrixf_Exec(a1, v5);
}

double glMultMatrixx_PackThread(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = vdupq_n_s32(0x37800000u);
  do
  {
    *(&v8 + v2) = vmulq_f32(vcvtq_f32_s32(*(a2 + v2)), v3);
    v2 += 16;
  }

  while (v2 != 64);
  v4 = gleAddCommand(a1, glMultMatrixf_ListExec, 64);
  v5 = v9;
  *v4 = v8;
  v4[1] = v5;
  result = *&v10;
  v7 = v11;
  v4[2] = v10;
  v4[3] = v7;
  return result;
}

uint64_t glNormal_ListExec(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a1 + 8448) = *a2;
  *(a1 + 8456) = v2;
  return 12;
}

float glNormal3x_Exec(float *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  result = vcvts_n_f32_s32(a2, 0x10uLL);
  a1[2112] = result;
  a1[2113] = vcvts_n_f32_s32(a3, 0x10uLL);
  a1[2114] = vcvts_n_f32_s32(a4, 0x10uLL);
  return result;
}

float glNormal3x_PackThread(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v7 = gleAddCommand(a1, glNormal_ListExec, 12);
  *v7 = vcvts_n_f32_s32(a2, 0x10uLL);
  v7[1] = vcvts_n_f32_s32(a3, 0x10uLL);
  result = vcvts_n_f32_s32(a4, 0x10uLL);
  v7[2] = result;
  return result;
}

uint64_t glGenQueries_Exec(uint64_t result, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    result = gleGenHashNames(result + 25904, a2);
    if (result && a2)
    {
      v5 = (a2 + 3) & 0xFFFFFFFC;
      v6 = vdupq_n_s64(a2 - 1);
      v7 = xmmword_23A102AF0;
      v8 = xmmword_23A102AE0;
      v9 = (a3 + 8);
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 2) = result;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 1) = result + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = result + 2;
          v9[1] = result + 3;
        }

        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        result = (result + 4);
        v9 += 4;
        v5 -= 4;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t glDeleteQueries_Exec(uint64_t result, unsigned int a2, unsigned int *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  else
  {
    v3 = a3;
    v4 = result;
    v5 = *(result + 25952);
    if (v5)
    {
      v6 = a2 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
LABEL_9:
      if (!a2)
      {
        return result;
      }

      goto LABEL_19;
    }

    v7 = (result + 33696);
    v8 = a2;
    v9 = a3;
    while (1)
    {
      v10 = *v9++;
      if (v10 == *(v5 + 16))
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    *(v5 + 254) = 0;
    *(result + 25952) = 0;
    v11 = *(result + 32496);
    if (*(result + 32496))
    {
      v12 = (v11 + 1) & 0x1FE;
      v13 = xmmword_23A102AE0;
      v14 = vdupq_n_s64(v11 - 1);
      v15 = vdupq_n_s64(2uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v14, v13));
        if (v16.i8[0])
        {
          *v7 = 0;
        }

        if (v16.i8[4])
        {
          v7[209] = 0;
        }

        v13 = vaddq_s64(v13, v15);
        v7 += 418;
        v12 -= 2;
      }

      while (v12);
    }

    *(result + 28652) = 0;
    *(result + 1524) |= 0x800000u;
    if (a2)
    {
LABEL_19:
      v17 = a2;
      do
      {
        v18 = *v3++;
        result = gleDeleteContextHashNameAndObject(v4, v4 + 25904, gleFreeQueryObject, v18);
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

void glBeginQuery_Exec(uint64_t a1, int a2, unsigned int a3)
{
  v3 = a1 + 25976;
  if (!a3)
  {
    goto LABEL_49;
  }

  v5 = a2;
  if (a2 > 35974)
  {
    if (a2 == 35975)
    {
      v12 = 0;
      v11 = (a1 + 25960);
      *(a1 + 28652) = 0;
      *(a1 + 1548) |= 0x8000u;
      v8 = 1;
      v10 = 2;
      v9 = (a1 + 25976);
    }

    else
    {
      if (a2 != 35976)
      {
        v7 = 36202;
        goto LABEL_9;
      }

      v12 = 0;
      v11 = (a1 + 25968);
      v9 = (a1 + 25980);
      v8 = 1;
      v10 = 6;
    }
  }

  else
  {
    if (a2 != 35007)
    {
      if (a2 == 35092)
      {
LABEL_10:
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (a1 + 25936);
        v12 = 1;
        goto LABEL_17;
      }

      v7 = 35887;
LABEL_9:
      if (a2 != v7)
      {
        if (*(a1 + 29832))
        {
          return;
        }

        v13 = 1280;
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v9 = 0;
    v11 = (a1 + 25944);
    v12 = 1;
    v8 = 1;
    v10 = 1;
  }

LABEL_17:
  if (*v11)
  {
LABEL_49:
    if (*(a1 + 29832))
    {
      return;
    }

    v13 = 1282;
LABEL_15:
    *(a1 + 29832) = v13;
    return;
  }

  v23 = v9;
  if (*(a1 + 27648))
  {
    os_unfair_lock_lock((a1 + 27780));
  }

  v14 = gleLookupHashObject(a1 + 25904, a3);
  if (!v14)
  {
    if (gleIsHashName(a1 + 25904, a3))
    {
      QueryObject = gleCreateQueryObject(a1, a3);
      gleAddHashNameAndObject(a1, a1 + 25904, QueryObject);
      goto LABEL_26;
    }

LABEL_37:
    if (!*(v3 + 3856))
    {
      *(v3 + 3856) = 1282;
    }

    if (*(a1 + 27648))
    {

      os_unfair_lock_unlock((a1 + 27780));
    }

    return;
  }

  QueryObject = v14;
  if (*(v14 + 254))
  {
    glBeginQuery_Exec_cold_1(a1, (a1 + 27648));
    return;
  }

  if (*(a1 + 25984) == v14)
  {
    goto LABEL_37;
  }

  v14[29] = 0;
  v14[30] = 0;
  *(v14 + 255) = -1;
LABEL_26:
  v17 = QueryObject + 40;
  v16 = *(QueryObject + 5);
  ++*(QueryObject + 5);
  QueryObject[254] = 1;
  *(QueryObject + 126) = v5;
  if (!v16)
  {
    gleCreateQueryObjectGLDState(a1, QueryObject);
  }

  if (*(a1 + 27648))
  {
    os_unfair_lock_unlock((a1 + 27780));
  }

  *v11 = QueryObject;
  v18 = *(a1 + 32496);
  if (*(a1 + 32496))
  {
    v19 = (a1 + 8 * v10 + 33608);
    v20 = (QueryObject + 40);
    do
    {
      v21 = *v20++;
      *v19 = v21;
      v19 += 209;
      --v18;
    }

    while (v18);
  }

  if (v12)
  {
    if ((v8 & 1) == 0)
    {
      *(a1 + 17710) = v5;
    }

    v24 = 0;
    (*(*(a1 + 29496) + 768))(*(a1 + 29464), *&v17[8 * *(a1 + 32500)], 0, &v24);
    *(QueryObject + 29) = *(a1 + 29472);
    v22 = *(a1 + 32500);
    goto LABEL_46;
  }

  if (*(a1 + 32481))
  {
    if (*(*(a1 + 29032) + 107))
    {
      v24 = 0;
      (*(*(a1 + 29448) + 768))(*(a1 + 29016), *&v17[8 * *(a1 + 32499)], 0, &v24);
      *(QueryObject + 29) = *(a1 + 29024);
      v22 = *(a1 + 32499);
LABEL_46:
      QueryObject[255] = v22;
      *(v3 + 2676) = 0;
      *(a1 + 1524) |= 0x800000u;
    }
  }

  else
  {
    *v23 = 0;
  }
}

void glBeginQuery_PackThread(uint64_t a1, int a2, unsigned int a3)
{
  v6 = 26536;
  if (a2 > 35974)
  {
    if (a2 == 35975)
    {
      v6 = 26560;
      goto LABEL_14;
    }

    if (a2 == 35976)
    {
      v6 = 26568;
      goto LABEL_14;
    }

    v7 = 36202;
  }

  else
  {
    if (a2 == 35007)
    {
      v6 = 26544;
      goto LABEL_14;
    }

    if (a2 == 35092)
    {
      goto LABEL_14;
    }

    v7 = 35887;
  }

  if (a2 != v7)
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v8 = 1280;
LABEL_17:
    *(a1 + 29832) = v8;
    return;
  }

LABEL_14:
  if (*(a1 + v6))
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v8 = 1282;
    goto LABEL_17;
  }

  os_unfair_lock_lock((a1 + 27780));
  v9 = gleLookupHashObject(a1 + 25904, a3);
  if (v9)
  {
    QueryObject = v9;
    v11 = v9[1];
    if (*(v11 + 18) || *(a1 + 25984) == v9)
    {
      goto LABEL_28;
    }

LABEL_24:
    *(v11 + 18) = 1;
    *(v11 + 16) = a2;
    *(v11 + 8) = 0;
    if (a2 > 35974)
    {
      if (a2 == 35975)
      {
        *(a1 + 26560) = v11;
        goto LABEL_41;
      }

      if (a2 == 35976)
      {
        *(a1 + 26568) = v11;
        goto LABEL_41;
      }

      v12 = 36202;
    }

    else
    {
      if (a2 == 35007)
      {
        *(a1 + 26544) = v11;
        goto LABEL_41;
      }

      if (a2 == 35092)
      {
        goto LABEL_37;
      }

      v12 = 35887;
    }

    if (a2 != v12)
    {
LABEL_41:
      atomic_fetch_add_explicit(QueryObject + 64, 1u, memory_order_relaxed);
      os_unfair_lock_unlock((a1 + 27780));
      v13 = gleAddCommand(a1, glBeginQueryIndexed_FullUnpackThread, 12);
      *v13 = a2;
      v13[1] = 0;
      v13[2] = a3;
      return;
    }

LABEL_37:
    *(a1 + 26536) = v11;
    goto LABEL_41;
  }

  if (gleIsHashName(a1 + 25904, a3))
  {
    QueryObject = gleCreateQueryObject(a1, a3);
    gleAddHashNameAndObject(a1, a1 + 25904, QueryObject);
    v11 = *(QueryObject + 1);
    goto LABEL_24;
  }

LABEL_28:
  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1282;
  }

  os_unfair_lock_unlock((a1 + 27780));
}

void glEndQuery_Exec(uint64_t a1, int a2)
{
  if (a2 > 35974)
  {
    if (a2 == 35975)
    {
      v8 = 0;
      v7 = (a1 + 25960);
      *(a1 + 28652) = 0;
      *(a1 + 1548) |= 0x8000u;
      v4 = 1;
      v6 = 2;
      v5 = (a1 + 25976);
      goto LABEL_16;
    }

    if (a2 == 35976)
    {
      v8 = 0;
      v7 = (a1 + 25968);
      v5 = (a1 + 25980);
      v4 = 1;
      v6 = 6;
      goto LABEL_16;
    }

    v3 = 36202;
    goto LABEL_8;
  }

  if (a2 == 35007)
  {
    v5 = 0;
    v7 = (a1 + 25944);
    v8 = 1;
    v4 = 1;
    v6 = 1;
    goto LABEL_16;
  }

  if (a2 != 35092)
  {
    v3 = 35887;
LABEL_8:
    if (a2 != v3)
    {
      if (*(a1 + 29832))
      {
        return;
      }

      v9 = 1280;
      goto LABEL_14;
    }
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (a1 + 25936);
  v8 = 1;
LABEL_16:
  v10 = *v7;
  if (!*v7 || *(v10 + 252) != a2)
  {
    if (*(a1 + 29832))
    {
      return;
    }

    v9 = 1282;
LABEL_14:
    *(a1 + 29832) = v9;
    return;
  }

  *v7 = 0;
  v11 = *(a1 + 32496);
  if (*(a1 + 32496))
  {
    v12 = (v11 + 1) & 0x1FE;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (a1 + 8 * v6 + 33608);
    v15 = xmmword_23A102AE0;
    v16 = vdupq_n_s64(2uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v13, v15));
      if (v17.i8[0])
      {
        *v14 = 0;
      }

      if (v17.i8[4])
      {
        v14[209] = 0;
      }

      v15 = vaddq_s64(v15, v16);
      v14 += 418;
      v12 -= 2;
    }

    while (v12);
  }

  *(v10 + 254) = 0;
  if (v8)
  {
    if ((v4 & 1) == 0)
    {
      *(a1 + 17710) = 0;
    }

LABEL_30:
    *(a1 + 28652) = 0;
    *(a1 + 1524) |= 0x800000u;
    goto LABEL_32;
  }

  if (!*(a1 + 32481))
  {
    *(v10 + 240) = *v5;
    *v5 = 0;
    goto LABEL_32;
  }

  if (*(*(a1 + 29032) + 107))
  {
    goto LABEL_30;
  }

LABEL_32:
  if (*(a1 + 32496))
  {
    v18 = 0;
    v19 = (a1 + 32512);
    v20 = (v10 + 136);
    do
    {
      (*(v19[206] + 1832))(*v19, *(v20 - 12), 0, 0);
      v21 = *v20++;
      (*(v19[206] + 1736))(*v19, v21);
      ++v18;
      v19 += 209;
    }

    while (v18 < *(a1 + 32496));
  }

  v22 = *(v10 + 20) - 1;
  *(v10 + 20) = v22;
  if (!v22)
  {

    gleFreeQueryObject(a1, v10);
  }
}

void *glEndQuery_PackThread(void *result, int a2)
{
  v3 = 3317;
  if (a2 > 35974)
  {
    if (a2 == 35975)
    {
      v3 = 3320;
      goto LABEL_14;
    }

    if (a2 == 35976)
    {
      v3 = 3321;
      goto LABEL_14;
    }

    v4 = 36202;
    goto LABEL_8;
  }

  if (a2 == 35007)
  {
    v3 = 3318;
    goto LABEL_14;
  }

  if (a2 != 35092)
  {
    v4 = 35887;
LABEL_8:
    if (a2 != v4)
    {
      if (*(result + 14916))
      {
        return result;
      }

      v5 = 1280;
LABEL_22:
      *(result + 14916) = v5;
      return result;
    }
  }

LABEL_14:
  v6 = result[v3];
  if (!v6 || *(v6 + 16) != a2)
  {
    if (*(result + 14916))
    {
      return result;
    }

    v5 = 1282;
    goto LABEL_22;
  }

  *(v6 + 18) = 0;
  if (a2 > 35974)
  {
    if (a2 == 35975)
    {
      result[3320] = 0;
      goto LABEL_31;
    }

    if (a2 == 35976)
    {
      result[3321] = 0;
      goto LABEL_31;
    }

    v7 = 36202;
  }

  else
  {
    if (a2 == 35007)
    {
      result[3318] = 0;
      goto LABEL_31;
    }

    if (a2 == 35092)
    {
      goto LABEL_27;
    }

    v7 = 35887;
  }

  if (a2 == v7)
  {
LABEL_27:
    result[3317] = 0;
  }

LABEL_31:
  result = gleAddCommand(result, glEndQueryIndexed_FullUnpackThread, 8);
  *result = a2;
  *(result + 1) = 0;
  return result;
}

uint64_t glGetQueryiv_Exec(uint64_t result, int a2, int a3, int *a4)
{
  if (a2 <= 35974)
  {
    if (a2 == 35007 || a2 == 35092)
    {
      goto LABEL_9;
    }

    v4 = 35887;
  }

  else
  {
    if ((a2 - 35975) < 2 || a2 == 36202)
    {
      goto LABEL_9;
    }

    v4 = 36392;
  }

  if (a2 != v4)
  {
    goto LABEL_34;
  }

LABEL_9:
  if (a3 == 34917)
  {
    if (a2 <= 35974)
    {
      switch(a2)
      {
        case 35007:
          v6 = *(result + 25944);
          if (!v6)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        case 35092:
          v6 = *(result + 25936);
          if (!v6)
          {
            goto LABEL_54;
          }

          v8 = *(v6 + 252);
          v9 = 35092;
          break;
        case 35887:
          v6 = *(result + 25936);
          if (!v6)
          {
            goto LABEL_54;
          }

          v8 = *(v6 + 252);
          v9 = 35887;
          break;
        default:
          goto LABEL_54;
      }
    }

    else
    {
      if (a2 <= 36201)
      {
        if (a2 == 35975)
        {
          v6 = *(result + 25960);
          if (!v6)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (a2 != 35976)
          {
            goto LABEL_54;
          }

          v6 = *(result + 25968);
          if (!v6)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_52;
      }

      if (a2 != 36202)
      {
        if (a2 != 36392)
        {
          goto LABEL_54;
        }

        v6 = *(result + 25952);
        if (!v6)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v6 = *(result + 25936);
      if (!v6)
      {
        goto LABEL_54;
      }

      v8 = *(v6 + 252);
      v9 = 36202;
    }

    if (v8 != v9)
    {
      goto LABEL_54;
    }

LABEL_52:
    v5 = *(v6 + 16);
    goto LABEL_53;
  }

  if (a3 == 34916)
  {
    if (a2 <= 0x8C86u)
    {
      if (a2 == 35007)
      {
        v5 = 32;
        goto LABEL_53;
      }

      if (a2 == 35092)
      {
        v5 = *(*(result + 29032) + 132);
        goto LABEL_53;
      }

      v7 = 35887;
LABEL_32:
      if (a2 == v7)
      {
        v5 = *(*(result + 29032) + 132) != 0;
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (a2 <= 0x8D69u)
    {
      if (a2 == 35975)
      {
        v5 = *(*(result + 29032) + 492);
        goto LABEL_53;
      }

      if (a2 == 35976)
      {
        v5 = *(*(result + 29032) + 496);
LABEL_53:
        *a4 = v5;
        return result;
      }

      goto LABEL_34;
    }

    if (a2 != 36392)
    {
      v7 = 36202;
      goto LABEL_32;
    }

LABEL_54:
    *a4 = 0;
    return result;
  }

LABEL_34:
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glGetQueryObjectiv_Exec(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  result = glGetQueryObject_Core(a1, a2, a3, v7);
  if (result)
  {
    v6 = v7[0];
    if (v7[0] >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFFLL;
    }

    if (v6 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v6) = 0x80000000;
    }

    *a4 = v6;
  }

  return result;
}

uint64_t glGetQueryObject_Core(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v7 = a1 + 28672;
  v8 = gleLookupHashObject(a1 + 25904, a2);
  if (!v8 || (v9 = v8, *(v8 + 254)))
  {
    if (*(v7 + 1160))
    {
      return 0;
    }

    v13 = 0;
    v18 = 1282;
    goto LABEL_23;
  }

  v10 = v8[29];
  if (v10 && *(v7 + 3824))
  {
    v11 = 0;
    v12 = (a1 + 32520);
    while (*v12 != v10)
    {
      ++v11;
      v12 += 209;
      if (*(v7 + 3824) == v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    LODWORD(v11) = -1;
  }

  if (a3 == 34918)
  {
    if (v11 != -1)
    {
      v20 = 0;
      v14 = a1 + 1672 * v11;
      (*(*(v14 + 34160) + 1336))(*(v14 + 32512), 0, 2, v8[v11 + 17]);
      (*(*(v14 + 34160) + 1832))(*(v14 + 32512), v9[v11 + 5], 34918, &v20);
      v15 = v9[30] + v20;
      v9[29] = 0;
      v9[30] = v15;
    }

    v16 = *(v9 + 126);
    switch(v16)
    {
      case 35887:
        goto LABEL_18;
      case 36392:
        *a4 = 0;
        return 1;
      case 36202:
LABEL_18:
        v17 = v9[30] != 0;
        break;
      default:
        v17 = v9[30];
        break;
    }

    *a4 = v17;
    return 1;
  }

  if (a3 != 34919)
  {
    if (*(v7 + 1160))
    {
      return 0;
    }

    v13 = 0;
    v18 = 1280;
LABEL_23:
    *(v7 + 1160) = v18;
    return v13;
  }

  v13 = 1;
  if (v11 == -1)
  {
    *a4 = 1;
  }

  else
  {
    *a4 = (*(*(a1 + 1672 * v11 + 34160) + 1320))(*(a1 + 1672 * v11 + 32512), 0, 0, 1, v8[v11 + 17]);
  }

  return v13;
}

uint64_t glGetQueryObjectuiv_Exec(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  result = glGetQueryObject_Core(a1, a2, a3, v7);
  if (result)
  {
    v6 = v7[0];
    if (v7[0] >= 0xFFFFFFFFLL)
    {
      v6 = 0xFFFFFFFFLL;
    }

    *a4 = v6 & ~(v6 >> 63);
  }

  return result;
}

uint64_t glGenQueries_ExecThread(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(a1 + 27752))();

  return glGenQueries_Exec(a1, a2, a3);
}

uint64_t glDeleteQueries_ExecThread(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  (*(a1 + 27752))();

  return glDeleteQueries_Exec(a1, a2, a3);
}

uint64_t glGetQueryiv_ExecThread(uint64_t a1, int a2, int a3, int *a4)
{
  (*(a1 + 27752))();

  return glGetQueryiv_Exec(a1, a2, a3, a4);
}

uint64_t glGetQueryObjectiv_ExecThread(intptr_t a1, int a2, int a3, _DWORD *a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  result = glGetQueryObject_CoreExecThread(a1, a2, a3, v7);
  if (result)
  {
    v6 = v7[0];
    if (v7[0] >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFFLL;
    }

    if (v6 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v6) = 0x80000000;
    }

    *a4 = v6;
  }

  return result;
}

uint64_t glGetQueryObject_CoreExecThread(intptr_t a1, int a2, int a3, uint64_t *a4)
{
  os_unfair_lock_lock((a1 + 27780));
  v8 = gleLookupHashObject(a1 + 25904, a2);
  if (v8)
  {
    v9 = v8;
    v10 = v8[1];
    if (!*(v10 + 18))
    {
      if (*(v10 + 19))
      {
        if (a3 == 34919)
        {
          v13 = 1;
        }

        else
        {
          if (a3 != 34918)
          {
            if (*(a1 + 29832))
            {
              goto LABEL_6;
            }

            v11 = 1280;
            goto LABEL_5;
          }

          v13 = *(v10 + 8);
        }

        *a4 = v13;
        os_unfair_lock_unlock((a1 + 27780));
      }

      else if (a3 == 34919 && *(v8 + 64))
      {
        *a4 = 0;
        os_unfair_lock_unlock((a1 + 27780));
        (*(a1 + 27744))(a1);
      }

      else
      {
        os_unfair_lock_unlock((a1 + 27780));
        v14[0] = glGetQueryObjectiv_CallbackThread;
        v14[1] = 24;
        v15 = a2;
        v16 = a3;
        v17 = a4;
        v18 = v9;
        gleProcessCallback(a1, v14);
        if (a3 == 34918)
        {
          *(v10 + 8) = *a4;
          *(v10 + 19) = 1;
        }
      }

      return 1;
    }
  }

  if (!*(a1 + 29832))
  {
    v11 = 1282;
LABEL_5:
    *(a1 + 29832) = v11;
  }

LABEL_6:
  os_unfair_lock_unlock((a1 + 27780));
  return 0;
}

uint64_t glGetQueryObjectuiv_ExecThread(intptr_t a1, int a2, int a3, _DWORD *a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  result = glGetQueryObject_CoreExecThread(a1, a2, a3, v7);
  if (result)
  {
    v6 = v7[0];
    if (v7[0] >= 0xFFFFFFFFLL)
    {
      v6 = 0xFFFFFFFFLL;
    }

    *a4 = v6 & ~(v6 >> 63);
  }

  return result;
}

uint64_t glBeginQueryIndexed_FullUnpackThread(uint64_t a1, int *a2)
{
  v2 = a1 + 28652;
  v3 = a2[2];
  if (!v3)
  {
    goto LABEL_48;
  }

  v5 = *a2;
  if (*a2 > 35974)
  {
    v7 = a2[1];
    if (v5 == 35975)
    {
      v12 = 0;
      v11 = (a1 + 8 * v7 + 25960);
      v10 = v7 + 2;
      v9 = (a1 + 4 * v7 + 25976);
      *v2 = 0;
      *(a1 + 1548) |= 0x8000u;
    }

    else
    {
      if (v5 != 35976)
      {
        v6 = 36202;
        goto LABEL_9;
      }

      v12 = 0;
      v11 = (a1 + 8 * v7 + 25968);
      v10 = v7 + 6;
      v9 = (a1 + 4 * v7 + 25980);
    }

    v8 = 1;
  }

  else
  {
    if (v5 != 35007)
    {
      if (v5 == 35092)
      {
LABEL_10:
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (a1 + 25936);
        v12 = 1;
        goto LABEL_18;
      }

      v6 = 35887;
LABEL_9:
      if (v5 != v6)
      {
        if (*(a1 + 29832))
        {
          return 12;
        }

        v13 = 1280;
LABEL_15:
        *(a1 + 29832) = v13;
        return 12;
      }

      goto LABEL_10;
    }

    v9 = 0;
    v11 = (a1 + 25944);
    v12 = 1;
    v8 = 1;
    v10 = 1;
  }

LABEL_18:
  if (*v11)
  {
LABEL_48:
    if (*(a1 + 29832))
    {
      return 12;
    }

    v13 = 1282;
    goto LABEL_15;
  }

  v24 = v10;
  if (*(a1 + 27648))
  {
    os_unfair_lock_lock((a1 + 27780));
  }

  v14 = gleLookupHashObject(a1 + 25904, v3);
  if (!v14)
  {
    if (gleIsHashName(a1 + 25904, v3))
    {
      QueryObject = gleCreateQueryObject(a1, v3);
      gleAddHashNameAndObject(a1, a1 + 25904, QueryObject);
      goto LABEL_27;
    }

LABEL_38:
    if (!*(v2 + 1180))
    {
      *(v2 + 1180) = 1282;
    }

    if (*(a1 + 27648))
    {
      os_unfair_lock_unlock((a1 + 27780));
    }

    return 12;
  }

  QueryObject = v14;
  if (*(v14 + 254))
  {
    glBeginQueryIndexed_FullUnpackThread_cold_1(a1, (a1 + 27648));
    return 12;
  }

  if (*(a1 + 25984) == v14)
  {
    goto LABEL_38;
  }

  v14[29] = 0;
  v14[30] = 0;
  *(v14 + 255) = -1;
LABEL_27:
  v17 = QueryObject + 40;
  v16 = *(QueryObject + 5);
  ++*(QueryObject + 5);
  QueryObject[254] = 1;
  *(QueryObject + 126) = v5;
  if (!v16)
  {
    gleCreateQueryObjectGLDState(a1, QueryObject);
  }

  if (*(a1 + 27648))
  {
    os_unfair_lock_unlock((a1 + 27780));
  }

  *v11 = QueryObject;
  v18 = *(v2 + 3844);
  if (*(v2 + 3844))
  {
    v19 = (a1 + 8 * v24 + 33608);
    v20 = (QueryObject + 40);
    do
    {
      v21 = *v20++;
      *v19 = v21;
      v19 += 209;
      --v18;
    }

    while (v18);
  }

  if (v12)
  {
    if ((v8 & 1) == 0)
    {
      *(a1 + 17710) = v5;
    }

    v25 = 0;
    (*(*(a1 + 29496) + 768))(*(a1 + 29464), *&v17[8 * *(v2 + 3848)], 0, &v25);
    *(QueryObject + 29) = *(a1 + 29472);
    v22 = *(v2 + 3848);
    goto LABEL_45;
  }

  if (!*(v2 + 3829))
  {
    *v9 = 0;
    return 12;
  }

  if (*(*(a1 + 29032) + 107))
  {
    v25 = 0;
    (*(*(a1 + 29448) + 768))(*(a1 + 29016), *&v17[8 * *(v2 + 3847)], 0, &v25);
    *(QueryObject + 29) = *(a1 + 29024);
    v22 = *(v2 + 3847);
LABEL_45:
    QueryObject[255] = v22;
    *v2 = 0;
    *(a1 + 1524) |= 0x800000u;
  }

  return 12;
}

uint64_t glEndQueryIndexed_FullUnpackThread(uint64_t a1, int *a2)
{
  v3 = 0;
  v4 = a1 + 28652;
  v5 = *a2;
  if (*a2 <= 35974)
  {
    if (v5 == 35007)
    {
      v3 = *(a1 + 25944);
      goto LABEL_26;
    }

    if (v5 != 35092 && v5 != 35887)
    {
      goto LABEL_9;
    }

LABEL_8:
    v3 = *(a1 + 25936);
    goto LABEL_9;
  }

  switch(v5)
  {
    case 35975:
      v7 = a2[1];
      v3 = *(a1 + 8 * v7 + 25960);
LABEL_28:
      v13 = 0;
      v12 = (a1 + 8 * v7 + 25960);
      v11 = v7 + 2;
      v10 = (a1 + 4 * v7 + 25976);
      *v4 = 0;
      *(a1 + 1548) |= 0x8000u;
LABEL_31:
      v9 = 1;
      goto LABEL_32;
    case 35976:
      v7 = a2[1];
      v3 = *(a1 + 8 * v7 + 25968);
      goto LABEL_30;
    case 36202:
      goto LABEL_8;
  }

LABEL_9:
  if (v5 > 35974)
  {
    if (v5 == 36202)
    {
LABEL_24:
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = (a1 + 25936);
      v13 = 1;
LABEL_32:
      v14 = *v12;
      if (!*v12 || v5 != *(v14 + 252))
      {
        if (*(a1 + 29832))
        {
          goto LABEL_53;
        }

        v8 = 1282;
        goto LABEL_23;
      }

      *v12 = 0;
      v15 = *(a1 + 32496);
      if (*(a1 + 32496))
      {
        v16 = (v15 + 1) & 0x1FE;
        v17 = vdupq_n_s64(v15 - 1);
        v18 = (a1 + 8 * v11 + 33608);
        v19 = xmmword_23A102AE0;
        v20 = vdupq_n_s64(2uLL);
        do
        {
          v21 = vmovn_s64(vcgeq_u64(v17, v19));
          if (v21.i8[0])
          {
            *v18 = 0;
          }

          if (v21.i8[4])
          {
            v18[209] = 0;
          }

          v19 = vaddq_s64(v19, v20);
          v18 += 418;
          v16 -= 2;
        }

        while (v16);
      }

      *(v14 + 254) = 0;
      if (v13)
      {
        if ((v9 & 1) == 0)
        {
          *(a1 + 17710) = 0;
        }
      }

      else
      {
        if (!*(a1 + 32481))
        {
          *(v14 + 240) = *v10;
          *v10 = 0;
          goto LABEL_48;
        }

        if (!*(*(a1 + 29032) + 107))
        {
LABEL_48:
          if (*(a1 + 32496))
          {
            v22 = 0;
            v23 = (a1 + 32512);
            v24 = (v14 + 136);
            do
            {
              (*(v23[206] + 1832))(*v23, *(v24 - 12), 0, 0);
              v25 = *v24++;
              (*(v23[206] + 1736))(*v23, v25);
              ++v22;
              v23 += 209;
            }

            while (v22 < *(v4 + 3844));
          }

          v26 = *(v14 + 20) - 1;
          *(v14 + 20) = v26;
          if (!v26)
          {
            gleFreeQueryObject(a1, v14);
          }

          goto LABEL_53;
        }
      }

      *v4 = 0;
      *(a1 + 1524) |= 0x800000u;
      goto LABEL_48;
    }

    v7 = a2[1];
    if (v5 != 35976)
    {
      if (v5 != 35975)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }

LABEL_30:
    v13 = 0;
    v12 = (a1 + 8 * v7 + 25968);
    v11 = v7 + 6;
    v10 = (a1 + 4 * v7 + 25980);
    goto LABEL_31;
  }

  if (v5 == 35007)
  {
LABEL_26:
    v10 = 0;
    v12 = (a1 + 25944);
    v13 = 1;
    v9 = 1;
    v11 = 1;
    goto LABEL_32;
  }

  if (v5 == 35092 || v5 == 35887)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (!*(a1 + 29832))
  {
    v8 = 1280;
LABEL_23:
    *(a1 + 29832) = v8;
  }

LABEL_53:
  atomic_fetch_add_explicit((v3 + 256), 0xFFFFFFFF, memory_order_relaxed);
  return 8;
}

uint64_t glGetQueryObjectiv_CallbackThread(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28660) == -1 && !*(*(a2 + 16) + 256))
  {
    glGetQueryObject_Core(a1, *a2, *(a2 + 4), *(a2 + 8));
    gleFinishCallback(a1);
  }

  return 24;
}

float glOrtho_Comp(uint64_t a1, float64x2_t a2, float64x2_t a3, float64_t a4, float64_t a5, double a6, double a7)
{
  a3.f64[1] = a5;
  a2.f64[1] = a4;
  v9 = vcvt_f32_f64(vsubq_f64(a3, a2));
  v10 = -v9.f32[0];
  if (v9.f32[0] >= 0.0)
  {
    v10 = v9.f32[0];
  }

  if (v10 < 0.000005)
  {
    goto LABEL_10;
  }

  v11 = -v9.f32[1];
  if (v9.f32[1] >= 0.0)
  {
    v11 = v9.f32[1];
  }

  if (v11 < 0.000005)
  {
    goto LABEL_10;
  }

  v12 = a6 - a7;
  v13 = -v12;
  if (v12 >= 0.0)
  {
    v13 = a6 - a7;
  }

  if (v13 >= 0.000005)
  {
    v23 = a2;
    v24 = a3;
    v22 = v9;
    v15 = gleAddCommand(a1, glOrtho_ListExec, 24);
    __asm { FMOV            V0.2S, #1.0 }

    v21 = vdiv_f32(_D0, v22);
    *v15 = v21.f32[0] + v21.f32[0];
    *(v15 + 1) = v21.f32[1] + v21.f32[1];
    *(v15 + 2) = (1.0 / v12) + (1.0 / v12);
    *(v15 + 12) = vcvt_f32_f64(vmulq_f64(vnegq_f64(vaddq_f64(v23, v24)), vcvtq_f64_f32(v21)));
    result = (a6 + a7) * (1.0 / v12);
    *(v15 + 5) = result;
  }

  else
  {
LABEL_10:

    gleSetErrorInList(a1, 1281);
  }

  return result;
}

uint64_t glOrtho_ListExec(uint64_t a1, float *a2)
{
  if (*(a1 + 20484) < 24)
  {
    v2 = *(a1 + 19976);
    v3 = a2[2];
    v4 = a2[3];
    v5 = a2[4];
    v6 = a2[5];
    v7 = *v2;
    v8 = v2[1];
    v9 = vmulq_n_f32(v8, a2[1]);
    *v2 = vmulq_n_f32(*v2, *a2);
    v2[1] = v9;
    v10 = v2[2];
    v11 = vaddq_f32(v2[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v5), v7, v4), v10, v6));
    v2[2] = vmulq_n_f32(v10, v3);
    v2[3] = v11;
    v12 = *(a1 + 20488);
    *(a1 + 1528) |= v12;
    *(a1 + 28652) = 0;
    *(a1 + 1540) = vorr_s8(*(a1 + 1540), vdup_n_s32(v12));
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1282;
  }

  return 24;
}

float glOrthof_PackThread(uint64_t a1, float64x2_t a2, float64x2_t a3, float a4, float a5, float a6, float a7)
{
  a2.f64[0] = *a2.f64;
  a3.f64[0] = *a3.f64;
  return glOrtho_Comp(a1, a2, a3, a4, a5, a6, a7);
}

float glOrthox_PackThread(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, float64x2_t a8, float64x2_t a9)
{
  a8.f64[0] = vcvts_n_f32_s32(a2, 0x10uLL);
  a9.f64[0] = vcvts_n_f32_s32(a3, 0x10uLL);
  return glOrtho_Comp(a1, a8, a9, vcvts_n_f32_s32(a4, 0x10uLL), vcvts_n_f32_s32(a5, 0x10uLL), vcvts_n_f32_s32(a6, 0x10uLL), vcvts_n_f32_s32(a7, 0x10uLL));
}

void *glPixelStorei_PackThread(void *result, int a2, unsigned int a3)
{
  if (a2 > 3327)
  {
    if ((a2 - 3328) < 6 || (a2 - 32875) < 4 || (a2 - 35349) < 4)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (a2 > 3314)
  {
    switch(a2)
    {
      case 3315:
        if ((a3 & 0x80000000) == 0)
        {
          *(result + 6661) = a3;
          goto LABEL_30;
        }

        break;
      case 3316:
        if ((a3 & 0x80000000) == 0)
        {
          *(result + 6662) = a3;
          goto LABEL_30;
        }

        break;
      case 3317:
        if (a3 <= 8 && ((1 << a3) & 0x116) != 0)
        {
          *(result + 6664) = a3;
          goto LABEL_30;
        }

        break;
      default:
        goto LABEL_26;
    }

LABEL_24:
    if (*(result + 14916))
    {
      return result;
    }

    v5 = 1281;
LABEL_28:
    *(result + 14916) = v5;
    return result;
  }

  if (a2 != 3312)
  {
    if (a2 == 3313)
    {
      if (a3)
      {
        *(result + 26661) = 1;
      }

      else
      {
        *(result + 26661) = 0;
      }

      goto LABEL_30;
    }

    if (a2 == 3314)
    {
      if ((a3 & 0x80000000) == 0)
      {
        *(result + 6657) = a3;
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_26:
    if (*(result + 14916))
    {
      return result;
    }

    v5 = 1280;
    goto LABEL_28;
  }

LABEL_30:
  result = gleAddCommand(result, glPixelStorei_UnpackThread, 8);
  *result = a2;
  *(result + 1) = a3;
  return result;
}

uint64_t gleUpdatePointAttenuation(uint64_t a1)
{
  v1 = (a1 + 15378);
  if (*(a1 + 15360) != *(a1 + 292) || (v2 = *(a1 + 288), *(a1 + 15364) != v2) || *(a1 + 15368) != v2)
  {
LABEL_4:
    v3 = 1;
    goto LABEL_5;
  }

  v6 = *(a1 + 15348);
  if (*(a1 + 15379))
  {
    v7 = *(a1 + 29032);
    v8 = v7[15];
    if (v8 > v7[17])
    {
      v8 = v7[17];
    }

    if (v6 > v8)
    {
      goto LABEL_4;
    }

    v9 = *(a1 + 15352);
  }

  else
  {
    v10 = *(a1 + 15344);
    if (v6 > v10)
    {
      v11 = *(a1 + 29032);
      v12 = *(v11 + 60);
      if (v12 > *(v11 + 68))
      {
        v12 = *(v11 + 68);
      }

      if (v6 > v12)
      {
        goto LABEL_4;
      }
    }

    v9 = *(a1 + 15352);
    if (v9 >= v10)
    {
      v3 = 0;
      goto LABEL_5;
    }

    v7 = *(a1 + 29032);
  }

  v13 = v7[16];
  if (v13 < v7[18])
  {
    v13 = v7[18];
  }

  v3 = v9 < v13;
LABEL_5:
  if (*v1 == v3)
  {
    return 0;
  }

  *v1 = v3;
  if ((*(a1 + 24864) & 9) != 0 || *(a1 + 24756))
  {
    v3 = *(a1 + 24750);
  }

  else if (*(a1 + 15379))
  {
    v3 = 1;
  }

  if (v3 == *(a1 + 17700))
  {
    v5 = *(a1 + 1548);
  }

  else
  {
    *(a1 + 17700) = v3;
    *(a1 + 1532) |= 0x40000000u;
    v5 = *(a1 + 1548) | 0x10000000;
  }

  *(a1 + 28652) = 0;
  *(a1 + 1548) = v5 | 0x18008;
  return 1;
}

float *glPointParameterx_PackThread(uint64_t a1, int a2, unsigned int a3)
{
  v4 = vcvts_n_f32_s32(a3, 0x10uLL);
  result = gleAddCommand(a1, glPointParameterf_ListExec, 8);
  *result = a2;
  result[1] = v4;
  return result;
}

float *glPointParameterf_Comp(uint64_t a1, int a2, float a3)
{
  result = gleAddCommand(a1, glPointParameterf_ListExec, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

_DWORD *glPointParameterxv_PackThread(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v4 = *a3 * 0.000015259;
  if (a2 == 33065)
  {
    v5 = vmul_f32(vcvt_f32_s32(*(a3 + 4)), vdup_n_s32(0x37800000u));
  }

  return glPointParameterfv_Comp(a1, a2, &v4);
}

_DWORD *glPointParameterfv_Comp(uint64_t a1, int a2, int *a3)
{
  if (a2 == 33065)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = gleAddCommand(a1, glPointParameterfv_ListExec, (4 * v5 + 4));
  *v6 = a2;
  result = v6 + 1;
  do
  {
    v8 = *a3++;
    *result++ = v8;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_0(float a1)
{
  *(v1 + 15352) = a1;
  *(v2 + 3852) = 1;

  return gleUpdatePointAttenuation(v1);
}

float *glPointSize_Comp(uint64_t a1, float a2)
{
  result = gleAddCommand(a1, glPointSize_ListExec, 4);
  *result = a2;
  return result;
}

float *glPointSizex_PackThread(uint64_t a1, unsigned int a2)
{
  v2 = vcvts_n_f32_s32(a2, 0x10uLL);
  result = gleAddCommand(a1, glPointSize_ListExec, 4);
  *result = v2;
  return result;
}

float *glPolygonOffset_Comp(uint64_t a1, float a2, float a3)
{
  result = gleAddCommand(a1, glPolygonOffset_ListExec, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t glPolygonOffset_ListExec(uint64_t a1, void *a2)
{
  *(a1 + 15516) = *a2;
  *(a1 + 28652) = 0;
  *(a1 + 1520) |= 0x800000u;
  return 8;
}

float glPolygonOffsetx_Exec(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = vcvts_n_f32_s32(a2, 0x10uLL);
  *(a1 + 15516) = result;
  *(a1 + 15520) = vcvts_n_f32_s32(a3, 0x10uLL);
  *(a1 + 28652) = 0;
  *(a1 + 1520) |= 0x800000u;
  return result;
}

float *glPolygonOffsetx_PackThread(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = vcvts_n_f32_s32(a2, 0x10uLL);
  v4 = vcvts_n_f32_s32(a3, 0x10uLL);
  result = gleAddCommand(a1, glPolygonOffset_ListExec, 8);
  *result = v3;
  result[1] = v4;
  return result;
}

void glGetProgramBinary_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  if (gleLookupHashObject(*(a1 + 19296) + 168, a2))
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v4 = 1282;
  }

  else
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v4 = 1281;
  }

  *(a1 + 29832) = v4;
}

void glProgramBinary_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (v4)
  {
    v5 = *(v4 + 6);
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (v5 == 8)
    {
      if (*(a1 + 29832))
      {
        return;
      }

      v6 = 1280;
    }

    else
    {
      if (*(a1 + 29832))
      {
        return;
      }

      v6 = 1282;
    }
  }

  else
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v6 = 1281;
  }

  *(a1 + 29832) = v6;
}

void glGetProgramBinary_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  glGetProgramBinary_Exec(a1, a2);
}

void glProgramBinary_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  glProgramBinary_Exec(a1, a2);
}

void glUseProgramStages_Exec(uint64_t *a1, unsigned int a2, int a3, int a4)
{
  v8 = a1 + 3584;
  os_unfair_lock_lock((a1[2412] + 324));
  ProgramPipelineHashObject = gleLookupHashObject(a1[2412] + 136, a2);
  if (!ProgramPipelineHashObject && (!gleIsHashName(a1[2412] + 136, a2) || (ProgramPipelineHashObject = gleCreateProgramPipelineHashObject(a1, a2)) == 0))
  {
LABEL_13:
    if (!*(v8 + 580))
    {
      v15 = 1282;
LABEL_17:
      *(v8 + 580) = v15;
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v10 = ProgramPipelineHashObject;
  if ((a3 + 1) >= 5)
  {
    goto LABEL_15;
  }

  v11 = a1[3304];
  if (*(v11 + 42) == -1 || *(v11 + 41))
  {
    if (!a4)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_19;
    }

    v12 = gleLookupHashObject(a1[2412] + 168, a4);
    if (v12)
    {
      v13 = v12;
      if (*(v12 + 6) == 8)
      {
        if (*(v12 + 3976) != 1 || !*(v12 + 3981))
        {
          goto LABEL_13;
        }

        v14 = v12 + 5;
LABEL_19:
        v16 = 0;
        v17 = v10 + 40;
        *(v10 + 104) |= 1u;
        do
        {
          v18 = (&unk_23A102B70 + 8 * v16);
          if ((*v18 & a3) != 0)
          {
            v19 = v18[1];
            v20 = *(v17 + 8 * v19);
            *(v17 + 8 * v19) = v13;
            if (v13)
            {
              ++*(v13 + 5);
            }

            if (v10 == a1[3097] && !a1[3096])
            {
              v21 = *(v8 + 3824);
              if (*(v8 + 3824))
              {
                v22 = &a1[v19 + 4188];
                v23 = v14;
                do
                {
                  if (v14)
                  {
                    v24 = *v23;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  *v22 = v24;
                  ++v23;
                  v22 += 209;
                  --v21;
                }

                while (v21);
              }
            }

            if (v20)
            {
              v25 = *(v20 + 20) - 1;
              *(v20 + 20) = v25;
              if (v25 == 1)
              {
                gleDeleteHashNameAndObject(a1[2412], (a1[2412] + 168), *(v20 + 16));
              }
            }
          }

          ++v16;
        }

        while (v16 != 5);
        if (v10 == a1[3097])
        {
          gleBindProgramPipelineObject(a1, v10);
        }

        goto LABEL_37;
      }
    }

LABEL_15:
    if (!*(v8 + 580))
    {
      v15 = 1281;
      goto LABEL_17;
    }

LABEL_37:
    v26 = (a1[2412] + 324);

    os_unfair_lock_unlock(v26);
    return;
  }

  os_unfair_lock_unlock((a1[2412] + 324));
  if (!*(v8 + 580))
  {
    *(v8 + 580) = 1282;
  }
}

void glActiveShaderProgram_Exec(uint64_t a1, unsigned int a2, int a3)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  ProgramPipelineHashObject = gleLookupHashObject(*(a1 + 19296) + 136, a2);
  if (!ProgramPipelineHashObject && (!gleIsHashName(*(a1 + 19296) + 136, a2) || (ProgramPipelineHashObject = gleCreateProgramPipelineHashObject(a1, a2)) == 0))
  {
LABEL_8:
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1282;
    }

    goto LABEL_14;
  }

  v7 = ProgramPipelineHashObject;
  v8 = ProgramPipelineHashObject[10];
  if (a3)
  {
    v9 = gleLookupHashObject(*(a1 + 19296) + 168, a3);
    if (!v9 || *(v9 + 3976) != 1)
    {
      goto LABEL_8;
    }

    ++*(v9 + 5);
  }

  else
  {
    v9 = 0;
  }

  v7[10] = v9;
  if (v8)
  {
    v10 = *(v8 + 20) - 1;
    *(v8 + 20) = v10;
    if (v10 == 1)
    {
      gleDeleteHashNameAndObject(*(a1 + 19296), (*(a1 + 19296) + 168), *(v8 + 16));
    }
  }

LABEL_14:
  v11 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v11);
}

uint64_t glCreateShaderProgramv_Exec(size_t a1, int a2, int a3, const void **a4)
{
  ShaderObjectARB_Exec = glCreateShaderObjectARB_Exec(a1, a2);
  if (!ShaderObjectARB_Exec)
  {
    return 0;
  }

  v8 = ShaderObjectARB_Exec;
  glShaderSourceARB_Exec(a1, ShaderObjectARB_Exec, a3, a4, 0);
  glCompileShaderARB_Exec(a1, v8);
  ProgramObjectARB_Exec = glCreateProgramObjectARB_Exec(a1);
  if (ProgramObjectARB_Exec)
  {
    v13 = 0;
    glGetShaderiv_Exec(a1, v8, 35713, &v13);
    glProgramParameteriEXT_Exec(a1, ProgramObjectARB_Exec, 33368, 1);
    if (v13)
    {
      glAttachObjectARB_Exec(a1, ProgramObjectARB_Exec, v8);
      glLinkProgramARB_Exec(a1, ProgramObjectARB_Exec);
      glDetachObjectARB_Exec(a1, ProgramObjectARB_Exec, v8);
    }

    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v10 = gleLookupHashObject(*(a1 + 19296) + 168, ProgramObjectARB_Exec);
    v11 = gleLookupHashObject(*(a1 + 19296) + 168, v8)[5];
    if (v11)
    {
      gleAppendStringToInfoLog(v11, v10 + 17, v10 + 981);
    }

    os_unfair_lock_unlock((*(a1 + 19296) + 324));
  }

  glDeleteObjectARB_Exec(a1, v8);
  return ProgramObjectARB_Exec;
}

void glBindProgramPipeline_Exec(uint64_t a1, unsigned int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  if (a2)
  {
    ProgramPipelineHashObject = gleLookupHashObject(*(a1 + 19296) + 136, a2);
    if (!ProgramPipelineHashObject && (!gleIsHashName(*(a1 + 19296) + 136, a2) || (ProgramPipelineHashObject = gleCreateProgramPipelineHashObject(a1, a2)) == 0) || (v5 = ProgramPipelineHashObject, ProgramPipelineHashObject[6] != 6) || (v6 = *(a1 + 26432), *(v6 + 42) != -1) && !*(v6 + 41))
    {
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      if (!*(a1 + 29832))
      {
        *(a1 + 29832) = 1282;
      }

      return;
    }
  }

  else
  {
    v5 = 0;
  }

  gleBindProgramPipelineObject(a1, v5);
  v7 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v7);
}

void glDeleteProgramPipelines_Exec(uint64_t a1, unsigned int a2, int *a3)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  gleDeleteProgramPipelines(a1, a2, a3);
  v6 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v6);
}

void glGenProgramPipelines_Exec(uint64_t a1, unsigned int a2, uint64_t a3)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  gleGenProgramPipelines(a1, a2, a3);
  v6 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v6);
}

BOOL glIsProgramPipeline_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 136, a2);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v4 != 0;
}

void glGetProgramPipelineiv_Exec(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  ProgramPipelineHashObject = gleLookupHashObject(*(a1 + 19296) + 136, a2);
  if (!ProgramPipelineHashObject && (!gleIsHashName(*(a1 + 19296) + 136, a2) || (ProgramPipelineHashObject = gleCreateProgramPipelineHashObject(a1, a2)) == 0))
  {
    if (*(a1 + 29832))
    {
      goto LABEL_21;
    }

    v10 = 1282;
    goto LABEL_26;
  }

  if (a3 <= 35632)
  {
    if (a3 == 33369)
    {
      v9 = ProgramPipelineHashObject[10];
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a3 != 35632)
      {
        goto LABEL_24;
      }

      v9 = ProgramPipelineHashObject[9];
      if (!v9)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    LODWORD(v9) = *(v9 + 16);
    goto LABEL_20;
  }

  switch(a3)
  {
    case 35633:
      v9 = ProgramPipelineHashObject[5];
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    case 35715:
      LODWORD(v9) = *(ProgramPipelineHashObject + 100);
      goto LABEL_20;
    case 35716:
      LODWORD(v9) = *(ProgramPipelineHashObject + 24);
LABEL_20:
      *a4 = v9;
      goto LABEL_21;
  }

LABEL_24:
  if (*(a1 + 29832))
  {
    goto LABEL_21;
  }

  v10 = 1280;
LABEL_26:
  *(a1 + 29832) = v10;
LABEL_21:
  v11 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v11);
}

void glValidateProgramPipeline_Exec(unint64_t a1, unsigned int a2)
{
  v4 = a1 + 28652;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  ProgramPipelineHashObject = gleLookupHashObject(*(a1 + 19296) + 136, a2);
  if (!ProgramPipelineHashObject && (!gleIsHashName(*(a1 + 19296) + 136, a2) || (ProgramPipelineHashObject = gleCreateProgramPipelineHashObject(a1, a2)) == 0))
  {
    if (!*(v4 + 1180))
    {
      *(v4 + 1180) = 1282;
    }

    goto LABEL_41;
  }

  v9 = ProgramPipelineHashObject;
  ProgramPipelineHashObject[100] = 0;
  v10 = *(a1 + 24768);
  if (v10)
  {
    ++v10[5];
    gleUseProgramObject(a1, 0);
  }

  v11 = *(a1 + 24776);
  if (v9 != v11)
  {
    if (v11)
    {
      ++*(v11 + 20);
    }

    gleBindProgramPipelineObject(a1, v9);
  }

  v12 = *(v4 + 3849);
  if ((*(v4 + 3) & 8) != 0 && *(v4 + 29) < 0 && *(v4 + 31) < 0)
  {
    v14 = 0;
  }

  else
  {
    if ((v12 - 3) >= 2)
    {
      if (v12 == 1)
      {
        v13 = gleDoSelectiveDispatchNoErrorCoreGL3(a1, 0x8000000u, 0x80u, 0x80u, 0xF8000000, v6.n128_f64[0], v7, v8);
      }

      else
      {
        v13 = gleDoSelectiveDispatchNoErrorCore(a1, 0x8000000u, 0x80u, 0x80u, 0xF8000000, v6, v7, v8);
      }
    }

    else
    {
      v13 = gleDoSelectiveDispatchNoErrorCoreES2(a1, 0x8000000u, 0x80u, 0x80u, 0xF8000000, v6.n128_f64[0], v7, v8);
    }

    v14 = v13;
  }

  v15 = *(v9 + 88);
  if (v15)
  {
    free(v15);
  }

  *(v9 + 96) = 0;
  *(v9 + 88) = 0;
  if (*(v4 + 3830))
  {
    gleAppendStringToInfoLog("Validation Failed: Fragment program failed to compile with current context state.\n", (v9 + 88), (v9 + 96));
    *(v4 + 3832) = 0;
  }

  if (!*(v4 + 3829) && *(*(a1 + 29032) + 101))
  {
    gleAppendStringToInfoLog("Validation Failed: Vertex program failed to compile with current context state.\n", (v9 + 88), (v9 + 96));
    *(v4 + 3832) = 0;
  }

  if (!*(v4 + 3834) || !*(a1 + 29008) && !*(a1 + 28960))
  {
    *(v9 + 100) = 0;
    v16 = "Validation Failed: Current draw framebuffer is invalid.\n";
LABEL_35:
    gleAppendStringToInfoLog(v16, (v9 + 88), (v9 + 96));
    goto LABEL_36;
  }

  if (*(v4 + 3832) && !v14)
  {
    *(v9 + 100) = 1;
    goto LABEL_36;
  }

  *(v9 + 100) = 0;
  if (!*(v9 + 101))
  {
    v16 = "Validation Failed: Sampler error:\n  Samplers of different types use the same texture image unit.\n   - or -\n  A sampler's texture unit is out of range (greater than max allowed or negative).\n";
    goto LABEL_35;
  }

  v18 = *(v9 + 40);
  if (!v18 || (*(v18 + 3720) & 1) == 0)
  {
    v16 = "Validation Failed: Program does not contain vertex shader. Results will be undefined.\n";
    goto LABEL_35;
  }

  v19 = *(v9 + 72);
  if ((!v19 || (*(v19 + 3720) & 2) == 0) && !*(a1 + 17984))
  {
    v16 = "Validation Failed: Program does not contain fragment shader. Results will be undefined.\n";
    goto LABEL_35;
  }

  if (v14)
  {
    v16 = "Validation Failed\n";
    goto LABEL_35;
  }

LABEL_36:
  if (v9 != v11)
  {
    gleBindProgramPipelineObject(a1, v11);
    if (v11)
    {
      --*(v11 + 20);
    }
  }

  if (v10)
  {
    gleUseProgramObject(a1, v10);
    --v10[5];
  }

LABEL_41:
  v17 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v17);
}

void glGetProgramPipelineInfoLog_Exec(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, void *a5)
{
  if (a3 < 0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    ProgramPipelineHashObject = gleLookupHashObject(*(a1 + 19296) + 136, a2);
    if (ProgramPipelineHashObject || gleIsHashName(*(a1 + 19296) + 136, a2) && (ProgramPipelineHashObject = gleCreateProgramPipelineHashObject(a1, a2)) != 0)
    {
      gleGetString(*(ProgramPipelineHashObject + 11), *(ProgramPipelineHashObject + 24), a3, a4, a5);
    }

    else if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1282;
    }

    v11 = (*(a1 + 19296) + 324);

    os_unfair_lock_unlock(v11);
  }
}

_DWORD *glUseProgramStages_PackThread(uint64_t a1, int a2, int a3, int a4)
{
  result = gleAddCommand(a1, glUseProgramStages_UnpackThread, 12);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

_DWORD *glActiveShaderProgram_PackThread(uint64_t a1, int a2, int a3)
{
  result = gleAddCommand(a1, glActiveShaderProgram_UnpackThread, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t glCreateShaderProgramv_ExecThread(size_t a1, int a2, int a3, const void **a4)
{
  (*(a1 + 27752))();

  return glCreateShaderProgramv_Exec(a1, a2, a3, a4);
}

void *glBindProgramPipeline_PackThread(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glBindProgramPipeline_UnpackThread, 4);
  *result = a2;
  return result;
}

void glDeleteProgramPipelines_ExecThread(uint64_t a1, unsigned int a2, int *a3)
{
  (*(a1 + 27752))();

  glDeleteProgramPipelines_Exec(a1, a2, a3);
}

void glGenProgramPipelines_ExecThread(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(a1 + 27752))();

  glGenProgramPipelines_Exec(a1, a2, a3);
}

BOOL glIsProgramPipeline_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glIsProgramPipeline_Exec(a1, a2);
}

void glGetProgramPipelineiv_ExecThread(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  glGetProgramPipelineiv_Exec(a1, a2, a3, a4);
}

void *glValidateProgramPipeline_PackThread(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glValidateProgramPipeline_UnpackThread, 4);
  *result = a2;
  return result;
}

void glGetProgramPipelineInfoLog_ExecThread(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, void *a5)
{
  (*(a1 + 27752))();

  glGetProgramPipelineInfoLog_Exec(a1, a2, a3, a4, a5);
}

void *glReadBuffer_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glReadBuffer_ListExec, 4);
  *result = a2;
  return result;
}

uint64_t gleInternalFormatIsSigned(int a1)
{
  if ((a1 - 34836) < 0xC || (a1 - 33325) < 4)
  {
    return 1;
  }

  if ((a1 - 36226) >= 0x12)
  {
    v3 = ((a1 - 33329) < 0xB) & a1;
  }

  else
  {
    v3 = 1;
  }

  if (a1 == 36286)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 36284)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 - 36756) >= 8)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void *glReadPixels_PackThread(unint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8)
{
  if (*(a1 + 26480))
  {
    result = gleAddCommand(a1, glReadPixels_UnpackThread, 32);
    *result = a2;
    *(result + 1) = a3;
    *(result + 2) = a4;
    *(result + 3) = a5;
    *(result + 4) = a6;
    *(result + 5) = a7;
    result[3] = a8;
  }

  else
  {
    (*(a1 + 27752))(a1);

    return glReadPixels_Exec(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

float glRotateXYZ_Comp(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v9 = *(a1 + 292);
  v10 = gleAddCommand(a1, glRotateXYZ_ListExec, 36);
  v11 = __sincosf_stret(a2 * 0.017453);
  v12 = v9 / sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
  v13 = v12 * a3;
  v14 = v12 * a4;
  v15 = v12 * a5;
  v16 = v13 * v13;
  v17 = v14 * v14;
  v18 = (v9 - v11.__cosval) * (v13 * v14);
  v19 = (v9 - v11.__cosval) * (v14 * v15);
  v20 = (v9 - v11.__cosval) * (v15 * v13);
  v21 = v11.__sinval * v13;
  v22 = v11.__sinval * v14;
  *v10 = v16 + (v11.__cosval * (v9 - v16));
  v10[1] = (v11.__sinval * v15) + v18;
  v10[2] = v20 - v22;
  v10[3] = v18 - (v11.__sinval * v15);
  v10[4] = v17 + (v11.__cosval * (v9 - v17));
  v10[5] = v21 + v19;
  v10[6] = v22 + v20;
  v10[7] = v19 - v21;
  result = (v15 * v15) + (v11.__cosval * (v9 - (v15 * v15)));
  v10[8] = result;
  return result;
}

uint64_t glRotateZ_Exec(uint64_t result, float a2, double a3)
{
  if (*(result + 20484) < 24)
  {
    v3 = *(result + 20488);
    v4 = *(result + 19976);
    v5 = v4[1];
    v6 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(*v4), a2), v5, *&a3);
    *v4 = vmlaq_n_f32(vmulq_n_f32(v5, a2), *v4, *&a3);
    v4[1] = v6;
    *(result + 1528) |= v3;
    *(result + 1540) |= v3;
    v7 = *(result + 1544);
    if ((v3 & ~v7 & *(result + 2216) & 0xFFFFFC) != 0)
    {
      v8 = vdupq_lane_s32(*&a3, 0);
      v9 = *(result + 19984);
      v10 = v9[1];
      v11 = vmlaq_f32(vmulq_n_f32(v10, a2), v8, *v9);
      v12 = vmlaq_f32(vmulq_n_f32(vnegq_f32(*v9), a2), v8, v10);
      *v9 = v11;
      v9[1] = v12;
      v3 &= 0xFF000003;
    }

    *(result + 28652) = 0;
    *(result + 1544) = v3 | v7;
  }

  else if (!*(result + 29832))
  {
    *(result + 29832) = 1282;
  }

  return result;
}

void glRotateXYZ_Exec(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v5 = (a1 + 28652);
  if (*(a1 + 20484) < 24)
  {
    v10 = *(a1 + 20488);
    v11 = *(a1 + 292);
    v12 = *(a1 + 19976);
    v13 = __sincosf_stret(a2 * 0.017453);
    v14 = v11 / sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
    *v24.i32 = v14 * a3;
    *v27.i32 = v14 * a4;
    v15 = v14 * a5;
    *v26.i32 = *v27.i32 * *v27.i32;
    v16 = v15 * v15;
    v17 = (v11 - v13.__cosval) * (*v24.i32 * *v27.i32);
    v18 = (v11 - v13.__cosval) * (*v27.i32 * v15);
    v19 = (v11 - v13.__cosval) * (v15 * *v24.i32);
    v20 = v13.__sinval * *v24.i32;
    *v27.i32 = v13.__sinval * *v27.i32;
    *v21.i32 = (*v24.i32 * *v24.i32) + (v13.__cosval * (v11 - (*v24.i32 * *v24.i32)));
    v22 = (v13.__sinval * v15) + v17;
    *v23.i32 = v19 - *v27.i32;
    *v24.i32 = v17 - (v13.__sinval * v15);
    v25 = *v26.i32 + (v13.__cosval * (v11 - *v26.i32));
    *v26.i32 = v20 + v18;
    *v27.i32 = *v27.i32 + v19;
    v28 = v18 - v20;
    *v29.i32 = v16 + (v13.__cosval * (v11 - v16));
    v31 = *v12;
    v30 = v12[1];
    v32 = v12[2];
    v33 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, v25), *v12, *v24.i32), v32, *v26.i32);
    *v12 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, v22), *v12, *v21.i32), v32, *v23.i32);
    v12[1] = v33;
    v12[2] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, v28), v31, *v27.i32), v32, *v29.i32);
    *(a1 + 1528) |= v10;
    *(a1 + 1540) |= v10;
    v34 = *(a1 + 1544);
    if ((v10 & ~v34 & *(a1 + 2216) & 0xFFFFFC) != 0)
    {
      v35 = *(a1 + 19984);
      v37 = *v35;
      v36 = v35[1];
      v38 = v35[2];
      v39 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v36, v25), vdupq_lane_s32(v24, 0), *v35), vdupq_lane_s32(v26, 0), v38);
      *v35 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v36, v22), vdupq_lane_s32(v21, 0), *v35), vdupq_lane_s32(v23, 0), v38);
      v35[1] = v39;
      v35[2] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v36, v28), vdupq_lane_s32(v27, 0), v37), vdupq_lane_s32(v29, 0), v38);
      v10 &= 0xFF000003;
    }

    *v5 = 0;
    *(a1 + 1544) = v10 | v34;
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1282;
  }
}

uint64_t glRotateX_ListExec(uint64_t a1, uint64_t a2, double a3, double a4)
{
  LODWORD(a4) = *(a2 + 4);
  glRotateX_Exec(a1, *a2, a4);
  return 8;
}

uint64_t glRotateY_ListExec(uint64_t a1, uint64_t a2, double a3, double a4)
{
  LODWORD(a4) = *(a2 + 4);
  glRotateY_Exec(a1, *a2, a4);
  return 8;
}

uint64_t glRotateZ_ListExec(uint64_t a1, uint64_t a2, double a3, double a4)
{
  LODWORD(a4) = *(a2 + 4);
  glRotateZ_Exec(a1, *a2, a4);
  return 8;
}

uint64_t glRotateXYZ_ListExec(uint64_t a1, _DWORD *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (*(a1 + 20484) < 24)
  {
    v11 = *(a1 + 20488);
    v12 = *(a1 + 19976);
    v13 = a2;
    v14 = vld1q_dup_f32(v13++);
    v15 = *v13;
    v10.i32[0] = a2[2];
    LODWORD(a9) = a2[3];
    v16 = *(a2 + 4);
    LODWORD(a10) = a2[5];
    LODWORD(a7) = a2[6];
    v17 = *(a2 + 7);
    LODWORD(a8) = a2[8];
    v19 = *v12;
    v18 = v12[1];
    v20 = v12[2];
    v21 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v18, v16), *v12, *&a9), v20, *&a10);
    *v12 = vmlaq_n_f32(vmlaq_f32(vmulq_n_f32(v18, *v13), v14, *v12), v20, *v10.i32);
    v12[1] = v21;
    v12[2] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v18, v17), v19, *&a7), v20, *&a8);
    *(a1 + 1528) |= v11;
    *(a1 + 1540) |= v11;
    v22 = *(a1 + 1544);
    if ((v11 & ~v22 & *(a1 + 2216) & 0xFFFFFC) != 0)
    {
      v23 = *(a1 + 19984);
      v25 = *v23;
      v24 = v23[1];
      v26 = v23[2];
      v27 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v24, v15), v14, *v23), vdupq_lane_s32(v10, 0), v26);
      v28 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v24, v16), vdupq_lane_s32(*&a9, 0), *v23), vdupq_lane_s32(*&a10, 0), v26);
      *v23 = v27;
      v23[1] = v28;
      v23[2] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v24, v17), vdupq_lane_s32(*&a7, 0), v25), vdupq_lane_s32(*&a8, 0), v26);
      v11 &= 0xFF000003;
    }

    *(a1 + 28652) = 0;
    *(a1 + 1544) = v11 | v22;
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1282;
  }

  return 36;
}

void *glSampleCoverage_Comp(uint64_t a1, char a2, float a3)
{
  result = gleAddCommand(a1, glSampleCoverage_ListExec, 8);
  *result = a3;
  *(result + 4) = a2;
  return result;
}

void *glSampleCoveragex_PackThread(uint64_t a1, unsigned int a2, char a3)
{
  v4 = vcvts_n_f32_s32(a2, 0x10uLL);
  result = gleAddCommand(a1, glSampleCoverage_ListExec, 8);
  *result = v4;
  *(result + 4) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result)
{
  *(result + 1520) |= 0x20000000u;
  *(result + v1) = 0;
  *(result + 1548) |= 0x40000u;
  return result;
}

void glGenSamplers_ExecThread(uint64_t a1, int a2, int *a3)
{
  (*(a1 + 27752))();

  glGenSamplers_Exec(a1, a2, a3);
}

void glGenSamplers_Exec(uint64_t a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    LODWORD(v5) = a2;
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v6 = gleGenHashNames(*(a1 + 19296) + 232, v5);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v6;
      v5 = v5;
      do
      {
        *a3++ = v8;
        SamplerHashObject = gleCreateSamplerHashObject(a1, v8);
        gleAddHashNameAndObject(a1, *(a1 + 19296) + 232, SamplerHashObject);
        ++v8;
        --v5;
      }

      while (v5);
    }

    v10 = (*(a1 + 19296) + 324);

    os_unfair_lock_unlock(v10);
  }
}

void glDeleteSamplers_ExecThread(uint64_t a1, unsigned int a2, uint64_t a3)
{
  (*(a1 + 27752))();

  glDeleteSamplers_Exec(a1, a2, a3);
}

void glDeleteSamplers_Exec(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    if (a2)
    {
      v6 = 0;
      v7 = a2;
      do
      {
        v8 = *(a3 + 4 * v6);
        if (v8)
        {
          for (i = 2992; i != 3024; ++i)
          {
            v10 = *(a1 + 8 * i);
            if (v10 && v8 == *(v10 + 16))
            {
              gleBindSamplerObject(a1, i - 2992, 0);
            }
          }

          gleDeleteHashNameAndObject(*(a1 + 19296), (*(a1 + 19296) + 232), v8);
        }

        ++v6;
      }

      while (v6 != v7);
    }

    v11 = (*(a1 + 19296) + 324);

    os_unfair_lock_unlock(v11);
  }
}

BOOL glIsSampler_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glIsSampler_Exec(a1, a2);
}

BOOL glIsSampler_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 232, a2);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v4 != 0;
}

_DWORD *glBindSampler_PackThread(uint64_t a1, int a2, int a3)
{
  result = gleAddCommand(a1, glBindSampler_UnpackThread, 8);
  *result = a2;
  result[1] = a3;
  return result;
}

void glBindSampler_Exec(uint64_t a1, unsigned int a2, int a3)
{
  if (*(*(a1 + 29480) + 154) <= a2)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    gleBindSamplerObject(a1, a2, a3);
    v6 = (*(a1 + 19296) + 324);

    os_unfair_lock_unlock(v6);
  }
}

void glSamplerParameteri_Exec(uint64_t a1, int a2, int a3, int a4)
{
  v8 = a4;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  glSamplerParameterI_Exec(a1, a2, a3, &v8);
  v7 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v7);
}

void glSamplerParameterf_Exec(uint64_t a1, int a2, int a3, float a4)
{
  v8 = a4;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  glSamplerParameterF_Exec(a1, a2, a3, &v8);
  v7 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v7);
}

void glGetSamplerParameteriv_Exec(uint64_t a1, int a2, int a3, int *a4)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  glGetSamplerParameterIv_Exec(a1, a2, a3, a4);
  v8 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v8);
}

uint64_t *glGetSamplerParameterIv_Exec(uint64_t a1, int a2, int a3, int *a4)
{
  result = gleLookupHashObject(*(a1 + 19296) + 232, a2);
  if (result)
  {
    if (a3 <= 33081)
    {
      if (a3 > 10241)
      {
        switch(a3)
        {
          case 10242:
            v8 = *(result + 96);
            goto LABEL_33;
          case 10243:
            v8 = *(result + 97);
            goto LABEL_33;
          case 32882:
            v8 = *(result + 98);
            goto LABEL_33;
        }
      }

      else if (a3 != 4100)
      {
        if (a3 == 10240)
        {
          v8 = *(result + 93);
          goto LABEL_33;
        }

        if (a3 == 10241)
        {
          v8 = *(result + 92);
          goto LABEL_33;
        }
      }

      goto LABEL_21;
    }

    if (a3 > 34048)
    {
      if (a3 > 34892)
      {
        if (a3 == 34893)
        {
          v8 = *(result + 94);
          goto LABEL_33;
        }
      }

      else if (a3 == 34892)
      {
        v8 = *(result + 95);
LABEL_33:
        *a4 = v8;
        return result;
      }

      goto LABEL_21;
    }

    switch(a3)
    {
      case 33082:
        v9 = *(result + 51);
        break;
      case 33083:
        v9 = *(result + 52);
        break;
      case 34046:
        v9 = *(result + 50);
        break;
      default:
LABEL_21:
        if (*(a1 + 29832))
        {
          return result;
        }

        v10 = 1280;
LABEL_23:
        *(a1 + 29832) = v10;
        return result;
    }

    v11 = 0.5;
    if (v9 < 0.0)
    {
      v11 = -0.5;
    }

    v8 = (v9 + v11);
    goto LABEL_33;
  }

  if (!*(a1 + 29832))
  {
    v10 = 1282;
    goto LABEL_23;
  }

  return result;
}