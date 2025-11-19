void __CommitLightsUpdate(uint64_t a1)
{
  if (CFSetGetCount(*(a1 + 488)))
  {
    HaveChanged = __LightsHaveChanged(a1);
    CFSetRemoveAllValues(*(a1 + 488));
    if (HaveChanged)
    {
      IsBlack = C3DColor4IsBlack((a1 + 48));
      __ComputeAmbientLighting(a1);
      if (IsBlack != C3DColor4IsBlack((a1 + 48)))
      {
        v4 = *(a1 + 116424);
        if (v4)
        {

          C3DEnginePipelineInvalidateAllProgramHashCode(v4);
        }
      }
    }
  }
}

void C3DLightingSystemBeginQueries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 114688;
  if (!a2)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemBeginQueries_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *(v6 + 1728) = a3;
  Scene = C3DEngineContextGetScene(a3);
  *(v6 + 1736) = C3DSceneGetEnginePipeline(Scene);
  *(v6 + 1744) = C3DEngineContextGetBooleanOptionForKey(a3, @"probeRendering");
  v16 = *(a2 + 48);
  v18 = *a2;
  v17 = *(a2 + 16);
  *(a1 + 116368) = *(a2 + 32);
  *(a1 + 116384) = v16;
  *(a1 + 116336) = v18;
  *(a1 + 116352) = v17;
  v27.i32[2] = 0;
  v27.i64[0] = 0;
  C3DMatrix4x4GetScale(a2, &v27);
  v19 = vabsq_f32(v27);
  *(v6 + 1712) = fmaxf(fmaxf(v19.f32[0], v19.f32[2]), v19.f32[1]);
  __CommitLightsUpdate(a1);
  for (i = 1; i != 8; ++i)
  {
    v21 = *(a1 + 64 + 4 * i);
    if (v21)
    {
      for (j = 0; j != v21; ++j)
      {
        __updateWorldData(a1, i, j, *(*(a1 + 136 + 8 * i) + 8 * j), *(*(a1 + 200 + 8 * i) + 8 * j));
      }
    }
  }

  for (k = 0; k != 7; ++k)
  {
    bzero(*(a1 + 8 * k + 336), *(a1 + 4 * k + 68));
  }

  bzero((a1 + 2664), 0x800uLL);
  bzero((a1 + 616), 0x800uLL);
  *(a1 + 608) = 0;
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a3, 0);
  *(v6 + 1752) = AuthoringEnvironment;
  if (AuthoringEnvironment)
  {
    ShouldDisplayLightInfluences = C3DAuthoringEnvironmentShouldDisplayLightInfluences(AuthoringEnvironment);
    v26 = *(v6 + 1752);
    *(v6 + 1796) = ShouldDisplayLightInfluences;
    if (v26)
    {
      *(a1 + 116480) = 0;
      *(a1 + 116448) = 0u;
      *(a1 + 116464) = 0u;
    }
  }

  else
  {
    *(v6 + 1796) = 0;
  }

  __ComputeAmbientLighting(a1);
  if (C3DLightingSystemGetIrradianceProbesCount(a1))
  {
    C3DLightProbesBeginQueries(*(a1 + 24), a3);
  }
}

uint64_t C3DLightingSystemGetIrradianceProbesCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetIrradianceProbesCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

uint64_t C3DLightingSystemGetInfiniteLightSet(uint64_t a1, void *a2, _DWORD *a3)
{
  *a2 = *(a1 + 576);
  *a3 = *(a1 + 584);
  return *(a1 + 588);
}

__n128 C3DLightingSystemGetLightingContext@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x8000000000;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  __ComputeAmbientLighting(a1);
  v20 = *(a1 + 48);
  if (C3DColor4IsBlack(&v20))
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *(v22 + 12) = v22[3] & 0xFFFD | v6;
  if (C3DLightingSystemGetIrradianceProbesCount(a1))
  {
    v7 = 16 * (C3DLightProbesSystemGetSphericalHarmonicsOrder(*(a1 + 24)) & 7);
  }

  else
  {
    v7 = 0;
  }

  *(v22 + 12) = v22[3] & 0xFF8F | v7;
  if (C3DEngineContextIsClusteredShadingEnabled(a2))
  {
    *(v22 + 12) = v22[3] & 0xFFFB | (4 * (*(a1 + 572) != 0));
    v8 = C3DLightingSystemGetReflectionProbesCount(a1) != 0;
    *(v22 + 12) = v22[3] & 0xFFF7 | (8 * v8);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 0x40000000;
  v19[2] = __C3DLightingSystemGetLightingContext_block_invoke;
  v19[3] = &unk_2782FECB8;
  v19[4] = &v21;
  v19[5] = a1;
  C3DLightingSystemEnumerateGlobalLights(a1, a2, v19);
  v9 = *(a1 + 68);
  v10 = *(a1 + 72);
  v11 = *(a1 + 76);
  v12 = *(a1 + 88);
  if (!C3DEngineContextIsClusteredShadingEnabled(a2))
  {
    __ComputeInfiniteLightSet(a1);
    if (!(v10 + v9 + v11 + v12))
    {
      v13 = *(a1 + 584) == 0;
      goto LABEL_16;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (v10 + v9 + v11 + v12 || *(a1 + 584))
  {
    goto LABEL_15;
  }

  v13 = __ShouldForceLighting(a2) ^ 1;
LABEL_16:
  v14 = v22;
  *(v22 + 12) = v22[3] & 0xFFFE | v13;
  v15 = *(v14 + 9);
  v16 = *(v14 + 13);
  *(a3 + 64) = *(v14 + 11);
  *(a3 + 80) = v16;
  *(a3 + 96) = v14[15];
  v17 = *(v14 + 5);
  *(a3 + 32) = *(v14 + 7);
  *(a3 + 48) = v15;
  *a3 = *(v14 + 3);
  *(a3 + 16) = v17;
  _Block_object_dispose(&v21, 8);
  return result;
}

uint64_t C3DLightingSystemGetReflectionProbesCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetIrradianceProbesCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 84);
}

uint64_t __C3DLightingSystemGetLightingContext_block_invoke(uint64_t result, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(*(result + 40) + 536);
  *(v4 + 44) = *(*(result + 40) + 552);
  *(v4 + 28) = v5;
  *(*(*(result + 32) + 8) + 24) = *(*(*(result + 32) + 8) + 24) & 0x807F | (a2 << 7);
  if (a2)
  {
    v7 = result;
    v8 = a2;
    v9 = 64;
    do
    {
      v10 = *a4++;
      result = C3DLightGetCategoryBitMask(v10);
      *(*(*(v7 + 32) + 8) + v9) = result;
      v9 += 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t C3DLightingSystemQuery(uint64_t a1, float32x4_t *a2, uint64_t a3, void *a4)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v7 = a1 + 114688;
  v53[0] = *(a1 + 576);
  v8 = *(a1 + 584);
  v48 = a2[1];
  v50 = *a2;
  if ((*(a1 + 592) & a3) != 0)
  {
    v9 = *(a1 + 68);
    if (v8 <= 7 && v9 != 0)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(*(a1 + 272) + 8 * v11);
        if (v12 != -1)
        {
          if (*(v7 + 1744) != 1)
          {
            goto LABEL_11;
          }

          if ((C3DLightGetBaked(*(*(a1 + 208) + 8 * v11)) & 1) == 0)
          {
            break;
          }
        }

LABEL_13:
        if (v8 <= 7 && ++v11 < v9)
        {
          continue;
        }

        goto LABEL_15;
      }

      v12 = *(*(a1 + 272) + 8 * v11);
LABEL_11:
      if ((v12 & a3) != 0)
      {
        *(v53 + v8++) = __runtimeIndex(a1, 1u, v11);
      }

      goto LABEL_13;
    }
  }

LABEL_15:
  v13 = *(a1 + 72);
  if (v8 <= 7 && v13 != 0)
  {
    v15 = 0;
    v45 = vnegq_f32(v48);
    do
    {
      if ((*(*(a1 + 280) + 8 * v15) & a3) != 0 && (*(v7 + 1744) != 1 || (C3DLightGetBaked(*(*(a1 + 216) + 8 * v15)) & 1) == 0))
      {
        v16 = *(a1 + 456);
        v17 = *(v16 + 16 * v15);
        v18 = vsubq_f32(v17, v50);
        v19 = vsubq_f32(v18, vmaxnmq_f32(vminnmq_f32(v18, v48), v45));
        v20 = vmulq_f32(v19, v19);
        if ((v20.f32[2] + vaddv_f32(*v20.f32)) < COERCE_FLOAT(vmulq_f32(v17, v17).i32[3]))
        {
          v43 = *(v16 + 16 * v15);
          *(v53 + v8) = __runtimeIndex(a1, 2u, v15);
          if (*(v7 + 1796) == 1)
          {
            v52 = xmmword_21C2814B0;
            C3DAuthoringEnvironmentAppendDebugSegment(*(v7 + 1752), 0, &v52, 0, v43, *a2);
          }

          ++v8;
        }
      }

      if (v8 > 7)
      {
        break;
      }

      ++v15;
    }

    while (v15 < v13);
  }

  if (v8 <= 7)
  {
    v21 = *(a1 + 88);
    if (v21)
    {
      v22 = 0;
      v46 = vnegq_f32(v48);
      do
      {
        if ((*(*(a1 + 312) + 8 * v22) & a3) != 0 && (*(v7 + 1744) != 1 || (C3DLightGetBaked(*(*(a1 + 248) + 8 * v22)) & 1) == 0))
        {
          v23 = *(a1 + 464);
          v24 = vsubq_f32(*(v23 + 16 * v22), v50);
          v25 = vsubq_f32(v24, vmaxnmq_f32(vminnmq_f32(v24, v48), v46));
          v26 = vmulq_f32(v25, v25);
          if ((v26.f32[2] + vaddv_f32(*v26.f32)) < COERCE_FLOAT(HIDWORD(*(v23 + 16 * v22))))
          {
            v44 = *(v23 + 16 * v22);
            *(v53 + v8) = __runtimeIndex(a1, 6u, v22);
            if (*(v7 + 1796) == 1)
            {
              v52 = xmmword_21C2814B0;
              C3DAuthoringEnvironmentAppendDebugSegment(*(v7 + 1752), 0, &v52, 0, v44, *a2);
            }

            ++v8;
          }
        }

        if (v8 > 7)
        {
          break;
        }

        ++v22;
      }

      while (v22 < v21);
    }
  }

  if (v8 <= 7)
  {
    v27 = *(a1 + 76);
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = vmulq_f32(v48, v48);
      v31 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
      v32 = v50;
      v32.f32[3] = v31;
      v49 = v31;
      v51 = v32;
      do
      {
        if ((*(*(a1 + 288) + 8 * v29) & a3) != 0)
        {
          if (*(v7 + 1744) != 1 || (Baked = C3DLightGetBaked(*(*(a1 + 224) + 8 * v29)), v31 = v49, (Baked & 1) == 0))
          {
            v34 = (*(a1 + 472) + v28);
            v35 = vsubq_f32(v51, *v34);
            v36 = vmulq_f32(v35, v35);
            if ((v36.f32[2] + vaddv_f32(*v36.f32)) <= ((v31 + v34[2].f32[0]) * (v31 + v34[2].f32[0])))
            {
              v37 = v34[1];
              v38 = vmulq_f32(v35, v37);
              v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
              v39 = vmlsq_lane_f32(v35, v37, *v38.f32, 0);
              v40 = vmulq_f32(v39, v39);
              if ((v34[2].f32[2] * (sqrtf(v40.f32[2] + vaddv_f32(*v40.f32)) - (v38.f32[0] * v34[2].f32[3]))) < v31)
              {
                v47 = *v34;
                *(v53 + v8) = __runtimeIndex(a1, 3u, v29);
                if (*(v7 + 1796) == 1)
                {
                  v52 = xmmword_21C2814B0;
                  C3DAuthoringEnvironmentAppendDebugSegment(*(v7 + 1752), 0, &v52, 0, v47, *a2);
                }

                ++v8;
                v31 = v49;
              }
            }
          }
        }

        if (v8 > 7)
        {
          break;
        }

        ++v29;
        v28 += 48;
      }

      while (v29 < v27);
    }
  }

  ++*(a1 + 4 * v8 + 116448);
  *a4 = v53[0];
  return v8;
}

uint64_t C3DLightingSystemGetLightingSetProgramHashCodes(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = 0;
  *&v13[5] = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  a3[1] = 0u;
  v7 = a1 + 4712;
  do
  {
    v8 = *(a2 + v6);
    if (!*(a2 + v6))
    {
      break;
    }

    if (v8 != 255 && *(a1 + 608) < v8)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        C3DLightingSystemGetLightingSetProgramHashCodes_cold_1(v12, v13, v10);
      }
    }

    *(a3 + v6++) = *(v7 + 4 * v8);
  }

  while (v6 != 8);
  return v6;
}

void C3DLightingSystemGetLightingSetDesc(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = 0;
  v6 = a3 + 9;
  v7 = a1 + 2664;
  v8 = a1 + 5744;
  while (1)
  {
    v9 = *(a2 + v5);
    if (!*(a2 + v5))
    {
      break;
    }

    if (v9 == 255 || *(a1 + 608) >= v9)
    {
      *(v6 - 8) = *(v7 + 8 * v9);
      v11 = v8 + 432 * v9;
    }

    else
    {
      if ((C3DLightingSystemGetLightingSetDesc_done & 1) == 0)
      {
        C3DLightingSystemGetLightingSetDesc_done = 1;
        v12 = scn_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          C3DLightingSystemGetLightingSetDesc_cold_1(&buf, v16, v12);
        }
      }

      v11 = 0;
      *(v6 - 8) = 0;
    }

    *v6++ = v11;
    if (++v5 == 8)
    {
      *a3 = 8;
      return;
    }
  }

  *a3 = v5;
  if (v5 <= 7)
  {
    v13 = 8 - v5;
    do
    {
      *(v6 - 8) = 0;
      *v6++ = 0;
      --v13;
    }

    while (v13);
  }
}

uint64_t C3DLightingSystemCheckLightingSetTextureUsage(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 5744;
  do
  {
    v6 = *(a2 + v4);
    if (!*(a2 + v4))
    {
      break;
    }

    if (v6 == 255 || *(a1 + 608) >= v6)
    {
      if ((*(v5 + 432 * *(a2 + v4) + 112) & 0x10) != 0)
      {
        return 1;
      }
    }

    else if ((C3DLightingSystemCheckLightingSetTextureUsage_done & 1) == 0)
    {
      C3DLightingSystemCheckLightingSetTextureUsage_done = 1;
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        C3DLightingSystemGetLightingSetDesc_cold_1(&v10, v11, v8);
      }
    }

    ++v4;
  }

  while (v4 != 8);
  return 0;
}

void C3DLightingSystemEndQueries(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = a1 + 114688;
  v3 = *(a1 + 116440);
  if (v3)
  {
    if (*(a1 + 588) == 1)
    {
      v4 = *(a1 + 584);
      if (v4 >= 8)
      {
        v4 = 8;
      }

      *(a1 + 4 * v4 + 116448) = 666;
    }

    C3DAuthoringEnvironmentUpdateLightingStats(v3, (a1 + 116448), 9u);
    if (C3DAuthoringEnvironmentShouldDisplayLightInfluences(*(v2 + 1752)))
    {
      v48 = xmmword_21C27F800;
      v49 = xmmword_21C27F7E0;
      v31 = *(a1 + 68);
      if (v31)
      {
        for (i = 0; i != v31; ++i)
        {
          WorldMatrix = C3DNodeGetWorldMatrix(*(*(a1 + 144) + 8 * i));
          v9 = *(a1 + 400);
          v10 = *(v9 + i);
          if (*(v9 + i))
          {
            v50[0] = *"fff?";
            v50[1] = unk_21C2A2230;
            v50[2] = xmmword_21C2A2240;
            v50[3] = unk_21C2A2250;
            v11 = *(*(a1 + 208) + 8 * i);
            v12 = C3DLightSupportsShadowCascades(v11);
            if (!v12)
            {
              v14 = 1;
LABEL_14:
              v15 = a1 + 116768 + 1568 * (v10 - 1);
              v16 = v50;
              do
              {
                if (v12)
                {
                  v47[0] = *v16;
                  v47[0].i32[2] = 1056964608;
                  AutomaticallyAdjustsShadowProjection = C3DLightGetAutomaticallyAdjustsShadowProjection(v11);
                  v18 = *(v2 + 1752);
                  if (AutomaticallyAdjustsShadowProjection)
                  {
                    C3DAuthoringEnvironmentAppendDebugPolyhedron(v18, *(v15 + 240), 0, v47[0].f32);
                  }

                  else
                  {
                    C3DAuthoringEnvironmentAppendDebugBoundingSphere(v18, *(v15 + 224), *(v15 + 232), 0, v47);
                  }
                }

                C3DAuthoringEnvironmentAppendDebugFrustum(*(v2 + 1752), (v15 + 256), 0, v16);
                v19 = *(v15 + 368);
                v47[0] = *(v15 + 352);
                v47[1] = v19;
                C3DAuthoringEnvironmentAppendDebugBoundingBox(*(v2 + 1752), v47, v15, v16);
                v15 += 384;
                v16 += 4;
                --v14;
              }

              while (v14);
              goto LABEL_20;
            }

            ShadowCascadeCount = C3DLightGetShadowCascadeCount(v11);
            if (ShadowCascadeCount)
            {
              v14 = ShadowCascadeCount;
              goto LABEL_14;
            }
          }

LABEL_20:
          v20 = *(*(a1 + 336) + i);
          Type = C3DLightGetType(*(*(a1 + 208) + 8 * i));
          v22 = *(v2 + 1752);
          if (v20)
          {
            v23 = &v48;
          }

          else
          {
            v23 = &v49;
          }

          if (Type == 1)
          {
            C3DAuthoringEnvironmentAppendDebugRay(v22, WorldMatrix, v23, 0, xmmword_21C2A2200);
          }

          else
          {
            C3DAuthoringEnvironmentAppendDebugSegment(v22, WorldMatrix, v23, 0, xmmword_21C27F910, xmmword_21C27F9D0);
            C3DAuthoringEnvironmentAppendDebugSegment(*(v2 + 1752), WorldMatrix, v23, 0, xmmword_21C27F8C0, xmmword_21C27F9A0);
            C3DAuthoringEnvironmentAppendDebugSegment(*(v2 + 1752), WorldMatrix, v23, 0, xmmword_21C27F600, xmmword_21C27F900);
          }
        }
      }

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 0x40000000;
      v43[2] = __C3DLightingSystemEndQueries_block_invoke;
      v43[3] = &__block_descriptor_tmp_16_0;
      v46 = a1;
      v44 = v48;
      v45 = v49;
      v24 = *(a1 + 72);
      if (v24)
      {
        __C3DLightingSystemEndQueries_block_invoke(v43, v24, v5, v6, *(a1 + 456));
      }

      v36 = MEMORY[0x277D85DD0];
      v37 = 0x40000000;
      v38 = __C3DLightingSystemEndQueries_block_invoke_2;
      v39 = &__block_descriptor_tmp_18_0;
      v42 = a1;
      v40 = v48;
      v41 = v49;
      v25 = *(a1 + 88);
      if (v25)
      {
        v26 = 0;
        v27 = *(a1 + 464);
        do
        {
          v28 = *(v27 + 16 * v26);
          HIDWORD(v28) = sqrtf(*(&v28 + 3));
          if (*(*(v42 + 376) + v26))
          {
            v29 = &v40;
          }

          else
          {
            v29 = &v41;
          }

          C3DAuthoringEnvironmentAppendDebugBoundingSphere(*(v42 + 116440), *(v27 + 16 * v26++), *(&v28 + 1), 0, v29);
        }

        while (v25 != v26);
      }

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 0x40000000;
      v32[2] = __C3DLightingSystemEndQueries_block_invoke_3;
      v32[3] = &__block_descriptor_tmp_20_3;
      v35 = a1;
      v33 = v48;
      v34 = v49;
      v30 = *(a1 + 76);
      if (v30)
      {
        __C3DLightingSystemEndQueries_block_invoke_3(v32, v30, v5, v6, *(a1 + 472));
      }
    }
  }

  if (*(a1 + 80))
  {
    C3DLightProbesEndQueries(*(a1 + 24));
  }

  *(v2 + 1752) = 0;
  *(v2 + 1728) = 0;
}

uint64_t C3DLightingSystemEnumerateLocalOmnis(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 152), *(result + 216), *(result + 456));
  }

  return result;
}

void __C3DLightingSystemEndQueries_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *(a1 + 64);
      if (*(*(v9 + 344) + v7))
      {
        v10 = 32;
      }

      else
      {
        v10 = 48;
      }

      C3DAuthoringEnvironmentAppendDebugBoundingSphere(*(v9 + 116440), *(a5 + 16 * v7), *(a5 + 16 * v7 + 8), 0, (a1 + v10));
      ++v7;
    }

    while (v8 != v7);
  }
}

void __C3DLightingSystemEndQueries_block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *(a5 + 16 * v7);
      HIDWORD(v9) = sqrtf(*(&v9 + 3));
      v10 = *(a1 + 64);
      v11 = *(v10 + 116440);
      if (*(*(v10 + 376) + v7))
      {
        v12 = 32;
      }

      else
      {
        v12 = 48;
      }

      C3DAuthoringEnvironmentAppendDebugBoundingSphere(v11, *(a5 + 16 * v7++), *(&v9 + 1), 0, (a1 + v12));
    }

    while (v8 != v7);
  }
}

uint64_t C3DLightingSystemEnumerateSpots(uint64_t result, uint64_t a2)
{
  v2 = *(result + 76);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 160), *(result + 224), *(result + 472));
  }

  return result;
}

void __C3DLightingSystemEndQueries_block_invoke_3(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 0;
    v7 = (a5 + 32);
    v8 = a2;
    do
    {
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = *(v7 + 1);
      v7 += 12;
      v16 = v10;
      v17 = v9;
      v13 = *(a1 + 64);
      v14 = *(v13 + 116440);
      if (*(*(v13 + 352) + v6))
      {
        v15 = 32;
      }

      else
      {
        v15 = 48;
      }

      C3DAuthoringEnvironmentAppendDebugCone(v14, &v17, &v16, 0, (a1 + v15), 0, v11, v12);
      ++v6;
    }

    while (v8 != v6);
  }
}

void C3DLightingSystemEndProcessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    __C3DLightingSystemEndProcessing_block_invoke(a1, v3, a3, *(a1 + 224));
  }
}

void __C3DLightingSystemEndProcessing_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      Gobo = C3DLightGetGobo(*a4, 0);
      if (Gobo)
      {
        v7 = Gobo;
        if (C3DEffectSlotGetImageProxy(Gobo))
        {
          C3DEffectSlotSetTextureFromImageProxy(v7, 0);
        }
      }

      ++a4;
      --v5;
    }

    while (v5);
  }
}

uint64_t C3DLightingSystemGetLightProbesSystem(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetIrradianceProbesCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void C3DLightingSystemInvalidateShadowTechniqueForLight(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 116488);
  if (v2)
  {
    CFDictionaryRemoveValue(v2, a2);
  }
}

void C3DLightingSystemNextFrame(uint64_t a1)
{
  v2 = 0;
  *(a1 + 116760) = 0;
  do
  {
    bzero(*(a1 + 8 * v2 + 400), *(a1 + 4 * v2 + 68));
    ++v2;
  }

  while (v2 != 7);

  __CommitLightsUpdate(a1);
}

uint64_t C3DLightingSystemSetMainRenderingFrustums(uint64_t result, _OWORD *a2, float a3, float a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v7 = a2[1];
  *(result + 116512) = *a2;
  *(result + 116528) = v7;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[5];
  *(result + 116576) = a2[4];
  *(result + 116592) = v10;
  *(result + 116544) = v8;
  *(result + 116560) = v9;
  v11 = *a7;
  v12 = a7[1];
  v13 = a7[3];
  *(result + 116720) = a7[2];
  *(result + 116736) = v13;
  *(result + 116688) = v11;
  *(result + 116704) = v12;
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[3];
  *(result + 116640) = a6[2];
  *(result + 116656) = v16;
  *(result + 116608) = v14;
  *(result + 116624) = v15;
  *(result + 116672) = a3;
  *(result + 116676) = a4;
  return result;
}

double _computeShadowMatrix(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, __n128 a18, __n128 a19, __n128 a20)
{
  v20 = 0;
  v21 = -0.5;
  if ((a1 & 2) == 0)
  {
    v21 = 0.5;
  }

  if (a1)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.5;
  }

  if (a1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.5;
  }

  v24 = *MEMORY[0x277D860B8];
  v25 = *(MEMORY[0x277D860B8] + 16);
  v24.i32[0] = 0.5;
  v26 = *(MEMORY[0x277D860B8] + 32);
  v25.f32[1] = v21;
  v26.f32[2] = v22;
  v27.i64[0] = 0x3F0000003F000000;
  v27.f32[2] = v23;
  v27.i32[3] = *(MEMORY[0x277D860B8] + 60);
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v42 = a9;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  do
  {
    *(&v43 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v39 + v20))), v25, v39.n128_u64[v20 / 8], 1), v26, *(&v39 + v20), 2), v27, *(&v39 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  v28 = 0;
  v29 = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  do
  {
    *(&v43 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v39 + v28))), v30, v39.n128_u64[v28 / 8], 1), v31, *(&v39 + v28), 2), v32, *(&v39 + v28), 3);
    v28 += 16;
  }

  while (v28 != 64);
  v33 = 0;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v39 = a17;
  v40 = a18;
  v41 = a19;
  v42 = a20;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  do
  {
    *(&v43 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v39 + v33))), v35, v39.n128_u64[v33 / 8], 1), v36, *(&v39 + v33), 2), v37, *(&v39 + v33), 3);
    v33 += 16;
  }

  while (v33 != 64);
  return *v43.i64;
}

void __computeSplitPositions(uint64_t a1, unsigned int a2, double a3, double a4, int32x2_t a5, int32x2_t a6)
{
  v7 = a2 + 1;
  if (a2 == -1)
  {
    LODWORD(v7) = 0;
LABEL_10:
    v21 = v7 + 0xFFFFFFFFLL;
    v22 = (a1 + 4 * v7);
    v23 = v7 + 1;
    do
    {
      *v22++ = *(a1 + 4 * v21++);
    }

    while (v23++ != 5);
    return;
  }

  a6.i32[0] = LODWORD(a3);
  v8 = *&a4 / *&a3;
  *&a3 = *&a4 - *&a3;
  *&a4 = a2;
  v26 = vdupq_n_s64(v7 - 1);
  v9 = vdup_lane_s32(*&a4, 0);
  v10 = vdup_lane_s32(*&a3, 0);
  v11 = vdup_lane_s32(a6, 0);
  v12 = (v7 + 1) & 0x1FFFFFFFELL;
  v13 = vdup_lane_s32(a5, 0);
  v14 = 0x100000000;
  v15 = xmmword_21C27F640;
  v16 = (a1 + 4);
  v25 = vdupq_n_s64(2uLL);
  v27 = *a6.i32;
  do
  {
    v30 = vmovn_s64(vcgeq_u64(v26, v15));
    v31 = v15;
    v17 = vdiv_f32(vcvt_f32_u32(v14), v9);
    v28 = v17.f32[1];
    v18 = vmla_f32(v11, v17, v10);
    v29 = powf(v8, v17.f32[0]);
    v19 = vmul_n_f32(__PAIR64__(COERCE_UNSIGNED_INT(powf(v8, v28)), LODWORD(v29)), v27);
    v20 = vmla_f32(v19, vsub_f32(v18, v19), v13);
    if (v30.i8[0])
    {
      *(v16 - 1) = v20.i32[0];
    }

    if (v30.i8[4])
    {
      *v16 = v20.i32[1];
    }

    v15 = vaddq_s64(v31, v25);
    v14 = vadd_s32(v14, 0x200000002);
    v16 += 2;
    v12 -= 2;
  }

  while (v12);
  if (v7 <= 4)
  {
    goto LABEL_10;
  }
}

double _computeOrthographicProjectionFromShadowBoundingBox(char a1, __n128 a2, __n128 a3)
{
  v3 = -a3.n128_f32[2];
  if (a2.n128_f32[2] < a3.n128_f32[2])
  {
    v4 = -a2.n128_f32[2];
  }

  else
  {
    v4 = v3 + 1.0;
  }

  v5 = v3 - v4;
  v10 = vcvtq_f64_f32(a2.n128_u64[0]);
  v6 = vcvtq_f64_f32(a3.n128_u64[0]);
  v7 = vsubq_f64(v6, v10);
  a3.n128_u32[0] = 0;
  a3.n128_u64[1] = 0;
  *&v10.f64[0] = vcvt_f32_f64(vdivq_f64(vnegq_f64(vaddq_f64(v10, v6)), v7));
  if (a1)
  {
    *&v13 = 1.0 / v5;
    *&v12 = 0;
    *(&v12 + 1) = v13;
  }

  else
  {
    *&v11 = 2.0 / v5;
    *&v12 = 0;
    *(&v12 + 1) = v11;
    v3 = v4 + v3;
  }

  v8 = 2.0 / v7.f64[0];
  v14 = LODWORD(v8);
  v9 = 2.0 / v7.f64[1];
  a3.n128_f32[1] = v9;
  *&v15 = v3 / v5;
  *&v10.f64[1] = __PAIR64__(1.0, v15);
  if ((a1 & 8) != 0)
  {
    v16 = 0;
    v18[0] = LODWORD(v8);
    v18[1] = a3;
    v18[2] = v12;
    v18[3] = v10;
    memset(v19, 0, sizeof(v19));
    do
    {
      v19[v16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(v18[v16])), xmmword_21C27F8C0, *&v18[v16], 1), xmmword_21C27F900, v18[v16], 2), xmmword_21C27FDD0, v18[v16], 3);
      ++v16;
    }

    while (v16 != 4);
    *&v14 = *&v19[0];
  }

  return *&v14;
}

void __computeStableCascade(uint64_t a1, uint64_t a2, char a3, float32x4_t a4, float32x4_t a5)
{
  v78 = *MEMORY[0x277D85DE8];
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 288), *(a1 + 296), *(a1 + 272), *(a1 + 280), &v66);
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 256), *(a1 + 264), *(a1 + 288), *(a1 + 296), &v67);
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 272), *(a1 + 280), *(a1 + 304), *(a1 + 312), &v68);
  scn_plane_intersect_3_planes(*(a1 + 336), *(a1 + 344), *(a1 + 304), *(a1 + 312), *(a1 + 256), *(a1 + 264), &v69);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 288), *(a1 + 296), *(a1 + 272), *(a1 + 280), &v70);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 256), *(a1 + 264), *(a1 + 288), *(a1 + 296), &v71);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 272), *(a1 + 280), *(a1 + 304), *(a1 + 312), &v72);
  scn_plane_intersect_3_planes(*(a1 + 320), *(a1 + 328), *(a1 + 304), *(a1 + 312), *(a1 + 256), *(a1 + 264), &v73);
  v8 = 0;
  v9.columns[0] = 0uLL;
  do
  {
    v9.columns[0] = vaddq_f32(v9.columns[0], *(&v66 + v8));
    v8 += 16;
  }

  while (v8 != 128);
  v10 = 0;
  v9.columns[1].i64[0] = 0x3E0000003E000000;
  v9.columns[1].i64[1] = 0x3E0000003E000000;
  v9.columns[3] = vmulq_f32(v9.columns[0], v9.columns[1]);
  v9.columns[0].i32[0] = 0;
  do
  {
    v9.columns[1] = vsubq_f32(*(&v66 + v10), v9.columns[3]);
    v9.columns[1] = vmulq_f32(v9.columns[1], v9.columns[1]);
    v9.columns[0].f32[0] = fmaxf(v9.columns[0].f32[0], sqrtf(v9.columns[1].f32[2] + vaddv_f32(*v9.columns[1].f32)));
    v10 += 16;
  }

  while (v10 != 128);
  v11 = ceilf(v9.columns[0].f32[0] * 16.0);
  v9.columns[0] = v9.columns[3];
  v9.columns[0].f32[3] = v11 * 0.0625;
  v56 = v9.columns[0];
  *(a1 + 224) = v9.columns[0];
  v9.columns[3].i32[3] = *(a1 + 60);
  *(a1 + 48) = v9.columns[3];
  v9.columns[0] = *a1;
  v9.columns[1] = *(a1 + 16);
  v9.columns[2] = *(a1 + 32);
  v79 = __invert_f4(v9);
  v13 = 0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = vmulq_f32(v14, v14);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  v18 = vrsqrte_f32(v17);
  v19 = vmul_f32(v18, vrsqrts_f32(v17, vmul_f32(v18, v18)));
  v19.i32[0] = vmul_f32(v19, vrsqrts_f32(v17, vmul_f32(v19, v19))).u32[0];
  __asm { FMOV            V4.4S, #1.0 }

  v25 = _Q4;
  v28 = vdivq_f32(_Q4, vmulq_n_f32(v14, v19.f32[0]));
  _Q4.f32[0] = -(v11 * 0.0625);
  v26 = _Q4;
  v26.f32[1] = _Q4.f32[0];
  v59 = v79.columns[1];
  v60 = v79.columns[0];
  *(a1 + 64) = v79;
  v26.f32[2] = v11 * 0.0625;
  v25.f32[0] = v11 * 0.0625;
  v57 = v79.columns[3];
  v58 = v79.columns[2];
  v27 = v25;
  v27.f32[1] = _Q4.f32[0];
  v27.f32[2] = v11 * 0.0625;
  v74 = v26;
  v75 = v27;
  v25.f32[1] = v11 * 0.0625;
  v25.f32[2] = v11 * 0.0625;
  _Q4.f32[1] = v11 * 0.0625;
  _Q4.f32[2] = v11 * 0.0625;
  v76 = v25;
  v77 = _Q4;
  v28.i32[3] = 1259902592;
  v29 = vsubq_f32(a4, a5);
  v30 = vaddq_f32(a4, a5);
  v31 = 0.0;
  do
  {
    v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a1, COERCE_FLOAT(*(&v74 + v13 * 4))), *(a1 + 16), *&v74.f32[v13], 1), v14, *(&v74 + v13 * 4), 2), v15, *(&v74 + v13 * 4), 3);
    v32.i32[3] = 1.0;
    v33 = vmulq_f32(v28, vsubq_f32(v29, v32));
    v34 = vmulq_f32(v28, vsubq_f32(v30, v32));
    v33.i32[3] = 0;
    v34.i32[3] = 0;
    v35 = vminnmq_f32(v33, v34);
    v36 = vmaxnmq_f32(v33, v34);
    v34.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
    v37 = vextq_s8(v36, v36, 8uLL).u64[0];
    *v34.f32 = vbsl_s8(vcge_f32(vzip1_s32(v37, *v35.i8), vzip1_s32(*v36.i8, *v34.f32)), vzip1_s32(*v36.i8, *v35.i8), vzip1_s32(v37, *v34.f32));
    v38 = vzip2_s32(*v36.i8, *v35.i8);
    v35.i32[0] = v34.i32[0];
    v36.i32[0] = vdup_lane_s32(*v36.i8, 1).u32[0];
    v36.i32[1] = v34.i32[1];
    v39 = vbsl_s8(vcge_f32(*v36.i8, *v35.i8), *v34.f32, v38);
    v40 = *&v39.i32[1];
    if (*v39.i32 >= *&v39.i32[1])
    {
      if (*&v39.i32[1] > 0.0 && *&v39.i32[1] < 10000000.0 || *v39.i32 > 0.0 && (v40 = *v39.i32, *v39.i32 < 10000000.0))
      {
        v31 = fmaxf(v31, v40);
      }
    }

    v13 += 4;
  }

  while (v13 != 16);
  v41 = vdupq_laneq_s32(v56, 3);
  v41.n128_u32[1] = v56.u32[3];
  v41.n128_f32[2] = (v11 * 0.0625) + v31;
  *v12.i32 = -(v11 * 0.0625);
  v62 = v41;
  v64 = vdupq_lane_s32(v12, 0);
  *v42.i64 = _computeOrthographicProjectionFromShadowBoundingBox(a3, v64, v41);
  v46 = 0;
  *(a1 + 128) = v42;
  *(a1 + 144) = v43;
  *(a1 + 160) = v44;
  *(a1 + 176) = v45;
  v47.i64[0] = 0x3F0000003F000000;
  v47.i64[1] = 0x3F0000003F000000;
  v48 = vmulq_f32(vaddq_f32(v64, v62), v47);
  v49 = vmulq_f32(vsubq_f32(v62, v64), v47);
  v48.i32[3] = 1.0;
  v49.i32[3] = 0;
  *(a1 + 352) = v48;
  *(a1 + 368) = v49;
  v65[0] = v60;
  v65[1] = v59;
  v65[2] = v58;
  v65[3] = v57;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  do
  {
    *(&v74 + v46 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(v65[v46])), v43, *&v65[v46], 1), v44, v65[v46], 2), v45, v65[v46], 3);
    ++v46;
  }

  while (v46 != 4);
  v50 = vadd_f32(*v77.f32, *&vmlaq_f32(vmlaq_f32(vmulq_f32(v74, 0), 0, v75), 0, v76));
  v51 = *C3DLightGetRealShadowMapSize(a2).i32;
  v52 = vmul_n_f32(v50, 0.5 * v51);
  v53 = vmul_n_f32(vsub_f32(vrnda_f32(v52), v52), 2.0 / v51);
  v54 = *(a1 + 176);
  *&v55 = vadd_f32(*v54.i8, v53);
  *(&v55 + 1) = vextq_s8(v54, v54, 8uLL).u64[0];
  *(a1 + 176) = v55;
}

void C3DLightingSystemComputeShadowMatrices(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, simd_float4 *a5, uint64_t a6, uint64_t a7, char a8)
{
  v250 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemComputeShadowMatrices_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  __CommitLightsUpdate(a1);
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v22 = a1 + 8 * (Value >> 28);
    v23 = (Value & 0xFFFFFFF) - 1;
    v24 = *(*(v22 + 200) + 8 * v23);
    if (C3DLightGetCastsShadow(v24))
    {
      v220 = *(a1 + 116704);
      v221 = *(a1 + 116688);
      v218 = *(a1 + 116736);
      v219 = *(a1 + 116720);
      if (C3DLightSupportsShadowCascades(v24))
      {
        ShadowCascadeCount = C3DLightGetShadowCascadeCount(v24);
      }

      else
      {
        ShadowCascadeCount = 1;
      }

      v41 = *(v22 + 392);
      v42 = *(v41 + v23);
      v207 = v24;
      if (*(v41 + v23))
      {
        if (v42 >= 9)
        {
          v43 = scn_default_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            C3DLightingSystemComputeShadowMatrices_cold_3(v43, v25, v26, v27, v28, v29, v30, v31);
          }
        }

        v44 = a1 + 1568 * (v42 - 1) + 116768;
        v45 = ShadowCascadeCount;
LABEL_18:
        v46 = v44;
        *v251.columns[0].i64 = _computeShadowMatrix(a8, *(v44 + 64), *(v44 + 80), *(v44 + 96), *(v44 + 112), *(v44 + 128), *(v44 + 144), *(v44 + 160), *(v44 + 176), v25, v26, v27, v28, v29, v30, v31, v221, v220, v219, v218);
        v203 = v251.columns[1];
        v205 = v251.columns[0];
        v199 = v251.columns[3];
        v201 = v251.columns[2];
        v252 = __invert_f4(v251);
        v212 = v252.columns[1];
        v217 = v252.columns[0];
        v208 = v252.columns[3];
        v210 = v252.columns[2];
        if (v45)
        {
          v54 = 0;
          __asm { FMOV            V0.4S, #1.0 }

          v197 = _Q0;
          v60 = v45;
          do
          {
            v61 = v46 + 384 * v54;
            if (a3)
            {
              v62 = (a3 + (v54 << 6));
              v63 = *v61;
              v64 = *(v61 + 16);
              v65 = *(v61 + 48);
              v62[2] = *(v61 + 32);
              v62[3] = v65;
              *v62 = v63;
              v62[1] = v64;
            }

            if (a4)
            {
              v66 = (a4 + (v54 << 6));
              v67 = *(v61 + 128);
              v68 = *(v61 + 144);
              v69 = *(v61 + 176);
              v66[2] = *(v61 + 160);
              v66[3] = v69;
              *v66 = v67;
              v66[1] = v68;
            }

            if (v54)
            {
              *v70.i64 = _computeShadowMatrix(a8, *(v61 + 64), *(v61 + 80), *(v61 + 96), *(v61 + 112), *(v61 + 128), *(v61 + 144), *(v61 + 160), *(v61 + 176), v47, v48, v49, v50, v51, v52, v53, v221, v220, v219, v218);
              v74 = 0;
              v242 = v217;
              v243 = v212;
              v244 = v210;
              v245 = v208;
              v228 = 0u;
              v229 = 0u;
              v230 = 0u;
              v231 = 0u;
              do
              {
                *(&v228 + v74) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v70, COERCE_FLOAT(*(&v242 + v74))), v71, *&v242.f32[v74 / 4], 1), v72, *(&v242 + v74), 2), v73, *(&v242 + v74), 3);
                v74 += 16;
              }

              while (v74 != 64);
              v75 = v228;
              v76 = v231;
              DWORD1(v75) = DWORD1(v229);
              DWORD2(v75) = DWORD2(v230);
              *(v61 + 192) = v75;
              *(v61 + 208) = v76;
              v77 = a6;
              v78 = a7;
              if (a5)
              {
                v79 = &a5[4 * v54];
                *v79 = v70;
                v79[1] = v71;
                v79[2] = v72;
                v79[3] = v73;
              }
            }

            else
            {
              if (C3DLightGetType(v207) != 2)
              {
                *(v61 + 192) = v197;
                *(v61 + 208) = 0u;
              }

              v77 = a6;
              v78 = a7;
              if (a5)
              {
                *a5 = v205;
                a5[1] = v203;
                a5[2] = v201;
                a5[3] = v199;
              }
            }

            if (v77)
            {
              v80 = *(v61 + 192);
              v81 = v77 + 16 * v54;
              HIDWORD(v80) = *(v81 + 12);
              *v81 = v80;
            }

            if (v78)
            {
              v82 = *(v61 + 208);
              v83 = v78 + 16 * v54;
              HIDWORD(v82) = *(v83 + 12);
              *v83 = v82;
            }

            ++v54;
          }

          while (v54 != v60);
        }

        return;
      }

      v84 = *(a1 + 116760);
      if (v84 == 8)
      {
        if ((C3DLightingSystemComputeShadowMatrices_done & 1) == 0)
        {
          C3DLightingSystemComputeShadowMatrices_done = 1;
          v85 = scn_default_log();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            C3DLightingSystemComputeShadowMatrices_cold_5();
          }
        }

        return;
      }

      *(a1 + 116760) = v84 + 1;
      *(v41 + v23) = v84 + 1;
      v86 = v24;
      Type = C3DLightGetType(v24);
      if (!C3DLightShouldAdjustsShadowProjection(v86))
      {
        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        C3DLightGetProjectionInfo(v86, &v228);
        RealShadowMapSize = C3DLightGetRealShadowMapSize(v86);
        if (Type == 2)
        {
          ZNear = C3DLightGetZNear(v86);
          ZFar = C3DLightGetZFar(v86);
          if (ZFar <= ZNear)
          {
            ZFar = ZNear + 1.0;
          }

          v214 = ZFar;
          v154 = __tanpi(0.25);
          if (v154 == 0.0)
          {
            v156 = 1.0;
          }

          else
          {
            v156 = 1.0 / v154;
          }

          *&v157 = v156;
          v158 = v157;
          LODWORD(v159) = 0;
          *(&v159 + 1) = 0;
          DWORD1(v159) = v157;
          v160 = v86;
          if (a8)
          {
            v174.f64[0] = ZNear * v214;
            v174.f64[1] = v214;
            *v155.i8 = vcvt_f32_f64(vdivq_f64(v174, vdupq_lane_s64(COERCE__INT64(ZNear - v214), 0)));
            v175 = xmmword_21C280360;
            DWORD2(v175) = v155.i32[1];
            *&v176 = 0;
            *(&v176 + 1) = v155.u32[0];
            v44 = a1 + 1568 * (v84 + 1) + 115200;
            *(a1 + 1568 * (v84 + 1) + 115328) = v158;
            *(a1 + 1568 * (v84 + 1) + 115344) = v159;
            *(a1 + 1568 * (v84 + 1) + 115360) = v175;
            *(a1 + 1568 * (v84 + 1) + 115376) = v176;
            if ((a8 & 8) != 0)
            {
              v181 = 0;
              v246 = v158;
              v247 = v159;
              v248 = v175;
              v249 = v176;
              v242 = 0uLL;
              v243 = 0uLL;
              v244 = 0uLL;
              v245 = 0uLL;
              v45 = ShadowCascadeCount;
              do
              {
                *(&v242 + v181) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v246 + v181))), xmmword_21C27F8C0, *(&v246 + v181), 1), xmmword_21C27F900, *(&v246 + v181), 2), xmmword_21C27FDD0, *(&v246 + v181), 3);
                v181 += 16;
              }

              while (v181 != 64);
              v182 = v243;
              v183 = v244;
              v184 = v245;
              *(a1 + 1568 * (v84 + 1) + 115328) = v242;
              *(a1 + 1568 * (v84 + 1) + 115344) = v182;
              *(a1 + 1568 * (v84 + 1) + 115360) = v183;
              *(a1 + 1568 * (v84 + 1) + 115376) = v184;
              v185 = vextq_s8(v183, v183, 8uLL);
              *v185.i8 = vzip1_s32(*&vextq_s8(v184, v184, 8uLL), *v185.i8);
              v215 = v185;
              v164 = -0.001;
            }

            else
            {
              v164 = 0.001;
              v45 = ShadowCascadeCount;
              v215 = v155;
            }
          }

          else
          {
            v161.f64[0] = (ZNear + ZNear) * v214;
            v161.f64[1] = ZNear + v214;
            *&v161.f64[0] = vcvt_f32_f64(vdivq_f64(v161, vdupq_lane_s64(COERCE__INT64(ZNear - v214), 0)));
            v162 = xmmword_21C280360;
            DWORD2(v162) = HIDWORD(v161.f64[0]);
            *&v163 = 0;
            v215 = v161;
            *(&v163 + 1) = LODWORD(v161.f64[0]);
            v44 = a1 + 1568 * (v84 + 1) + 115200;
            *(a1 + 1568 * (v84 + 1) + 115328) = v158;
            *(a1 + 1568 * (v84 + 1) + 115344) = v159;
            *(a1 + 1568 * (v84 + 1) + 115360) = v162;
            *(a1 + 1568 * (v84 + 1) + 115376) = v163;
            v164 = flt_21C2A21E8[(a8 & 8) == 0];
            v45 = ShadowCascadeCount;
          }

          ShadowBias = C3DLightGetShadowBias(v160);
          *v187.i32 = -*&v215.i32[1];
          v188 = vzip1q_s32(v187, v215);
          *&v188.i32[2] = v164 * ShadowBias;
          *(v44 + 192) = v188;
        }

        else
        {
          v45 = ShadowCascadeCount;
          if ((a8 & 8) != 0)
          {
            _Q1.i64[0] = 0;
          }

          else
          {
            RealShadowMapSize = vadd_f32(RealShadowMapSize, 0xC0000000C0000000);
            __asm { FMOV            V1.2S, #1.0 }
          }

          *&_Q1.u32[2] = RealShadowMapSize;
          v44 = a1 + 1568 * (v84 + 1) + 115200;
          v242 = _Q1;
          Matrix = C3DProjectionInfosGetMatrix(&v228, &v242, a8);
          v178 = *(Matrix + 3);
          v180 = *Matrix;
          v179 = *(Matrix + 1);
          *(a1 + 1568 * (v84 + 1) + 115360) = *(Matrix + 2);
          *(a1 + 1568 * (v84 + 1) + 115376) = v178;
          *(a1 + 1568 * (v84 + 1) + 115328) = v180;
          *(a1 + 1568 * (v84 + 1) + 115344) = v179;
        }

        WorldMatrix = C3DNodeGetWorldMatrix(a2);
        v190 = WorldMatrix[3];
        v192 = *WorldMatrix;
        v191 = WorldMatrix[1];
        *(v44 + 32) = WorldMatrix[2];
        *(v44 + 48) = v190;
        *v44 = v192;
        *(v44 + 16) = v191;
        *(v44 + 64) = __invert_f4(*v44);
        goto LABEL_18;
      }

      if (Type == 1)
      {
        v88 = C3DGetScene(a2);
        CullingSystem = C3DSceneGetCullingSystem(v88);
        v227 = 0;
        v225 = 0u;
        v226 = 0u;
        C3DCullingSystemQueryMake(0, &v225);
        *&v226 = 0x100000020;
        v90 = v207;
        *&v225 = C3DLightGetCategoryBitMask(v207);
        C3DCullingSystemGetSceneBoundingBox(CullingSystem, &v225);
        v211 = v92;
        v213 = v91;
        v93 = C3DNodeGetWorldMatrix(a2);
        v253.columns[1] = v93[1];
        v94 = v93[2];
        v242 = *v93;
        v243 = v253.columns[1];
        v253.columns[3] = *(MEMORY[0x277D860B8] + 48);
        v244 = v94;
        v245 = v253.columns[3];
        v253.columns[0] = v242;
        v253.columns[2] = v244;
        v254 = __invert_f4(v253);
        v209 = v254.columns[0];
        v204 = v254.columns[2];
        v206 = v254.columns[1];
        v202 = v254.columns[3];
        v95 = *(a1 + 116672);
        v96 = fminf(*(a1 + 116676), C3DMeshElementGetPointSize(v207));
        AutomaticallyAdjustsShadowProjection = C3DLightGetAutomaticallyAdjustsShadowProjection(v207);
        v200 = AutomaticallyAdjustsShadowProjection;
        if (AutomaticallyAdjustsShadowProjection)
        {
          v98 = vmulq_f32(v211, v211);
          v99 = vsubq_f32(v213, *(a1 + 116656));
          v100 = vmulq_f32(v99, v99);
          *v98.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v98, v98, 8uLL), *&vextq_s8(v100, v100, 8uLL)), vadd_f32(vzip1_s32(*v98.i8, *v100.i8), vzip2_s32(*v98.i8, *v100.i8))));
          v95 = fmaxf(v95, *&v98.i32[1] - *v98.i32);
          v96 = fminf(v96, vaddv_f32(*v98.i8));
        }

        v44 = a1 + 1568 * (v84 + 1) + 115200;
        v101.i32[0] = C3DLightGetShadowCascadeSplittingFactor(v207);
        LOBYTE(v102) = ShadowCascadeCount;
        *&v103 = v95;
        *&v104 = v96;
        __computeSplitPositions(a1 + 1568 * (v84 + 1) + 116736, ShadowCascadeCount, v103, v104, v101, v105);
        if (!ShadowCascadeCount)
        {
LABEL_57:
          v45 = ShadowCascadeCount;
          if (ShadowCascadeCount > v102)
          {
            *&v146 = _computeOrthographicProjectionFromShadowBoundingBox(a8, vdupq_n_s32(0x47C34F80u), vdupq_n_s32(0x47C35000u));
            v147 = (v44 + 384 * v102);
            v147[8] = v146;
            v147[9] = v148;
            v147[10] = v149;
            v147[11] = v150;
          }

          goto LABEL_18;
        }

        v106 = *(a1 + 116640);
        v107 = vmulq_f32(v106, v106);
        *&v108 = v107.f32[2] + vaddv_f32(*v107.f32);
        *v107.f32 = vrsqrte_f32(v108);
        *v107.f32 = vmul_f32(*v107.f32, vrsqrts_f32(v108, vmul_f32(*v107.f32, *v107.f32)));
        v196 = vmulq_n_f32(v106, vmul_f32(*v107.f32, vrsqrts_f32(v108, vmul_f32(*v107.f32, *v107.f32))).f32[0]);
        v198 = *(a1 + 116656);
        v195 = vnegq_f32(v196);
        v109 = v84;
        v110 = (a1 + 116512);
        v112 = v211;
        v111 = v213;
        v114 = v204;
        v113 = v206;
        v115 = v209;
        v116 = v202;
        v117 = vaddq_f32(v202, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v206, *v213.f32, 1), v209, v213.f32[0]), v204, v213, 2));
        v117.i32[3] = 1.0;
        v118 = v211;
        v118.i32[1] = v211.i32[0];
        v118.i32[2] = v211.i32[0];
        v119 = vaddq_f32(vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v112, v112), v211), v204)), vaddq_f32(vabsq_f32(vmulq_f32(v118, v209)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v211.f32, 1), v211), v206))));
        v119.i32[2] = fminf(v119.f32[2], 10000.0);
        v193 = vaddq_f32(v117, v119);
        v194 = vsubq_f32(v117, v119);
        v120 = ShadowCascadeCount;
        v102 = 0;
        v121 = (a1 + 1568 * (v109 + 1) + 116740);
        while (1)
        {
          v122 = v44 + 384 * v102;
          v123 = v243;
          *v122 = v242;
          *(v122 + 16) = v123;
          v124 = v245;
          *(v122 + 32) = v244;
          *(v122 + 48) = v124;
          *(v122 + 64) = v115;
          *(v122 + 80) = v113;
          *(v122 + 96) = v114;
          *(v122 + 112) = v116;
          v126 = v110[1];
          v246 = *v110;
          v125 = v246;
          v247 = v126;
          v127 = v110[3];
          v248 = v110[2];
          v249 = v127;
          v128 = vmulq_f32(vmlaq_n_f32(v198, v195, *(v121 - 1)), v195);
          v124.f32[0] = -(v128.f32[2] + vaddv_f32(*v128.f32));
          v129 = v195;
          v129.i32[3] = v124.i32[0];
          v130 = vmulq_f32(v196, vmlaq_n_f32(v198, v195, *v121));
          v131 = -(v130.f32[2] + vaddv_f32(*v130.f32));
          v132 = v196;
          v132.f32[3] = v131;
          *(v122 + 288) = v248;
          *(v122 + 304) = v127;
          *(v122 + 256) = v125;
          *(v122 + 272) = v126;
          *(v122 + 320) = v132;
          *(v122 + 336) = v129;
          if (v200)
          {
            v133 = v102;
            v102 = *(v122 + 240);
            v228 = v246;
            v229 = v247;
            v230 = v248;
            v231 = v249;
            v232 = v132;
            v233 = v129;
            C3DConvexPolyhedronSetFrustum(v102, &v228);
            if (!C3DConvexPolyhedronClipAABB(v102, v213, v211) || (*v134.i64 = C3DConvexPolyhedronComputeBoxInSpace(v102, v209, v206, v204, v202), v136 = vsubq_f32(v134, v135), v137 = vaddq_f32(v134, v135), v136.i32[2] = v194.i32[2], v137.i32[2] = v193.i32[2], v138.i64[0] = 0x3F0000003F000000, v138.i64[1] = 0x3F0000003F000000, C3DConvexPolyhedronSetAABB(v102, vmulq_f32(vaddq_f32(v136, v137), v138), vmulq_f32(vsubq_f32(v137, v136), v138)), C3DConvexPolyhedronTransform(v102, &v242), !C3DConvexPolyhedronClipAABB(v102, v213, v211)))
            {
              v115 = v209;
              v114 = v204;
              v113 = v206;
              v116 = v202;
              v102 = v133;
              v90 = v207;
              goto LABEL_56;
            }

            *v139.i64 = C3DConvexPolyhedronComputeBoxInSpace(v102, v209, v206, v204, v202);
            v141 = vmulq_f32(vaddq_f32(v140, vdupq_n_s32(0x3C23D70Au)), vdupq_n_s32(0x3F800054u));
            v141.i32[3] = v140.i32[3];
            *(v122 + 352) = v139;
            *(v122 + 368) = v141;
            *&v142 = _computeOrthographicProjectionFromShadowBoundingBox(a8, vsubq_f32(v139, v141), vaddq_f32(v139, v141));
            *(v122 + 128) = v142;
            *(v122 + 144) = v143;
            *(v122 + 160) = v144;
            *(v122 + 176) = v145;
            LODWORD(v102) = v133;
            v90 = v207;
          }

          else
          {
            __computeStableCascade(v44 + 384 * v102, v90, a8, v111, v112);
          }

          v102 = (v102 + 1);
          v115 = v209;
          v114 = v204;
          v113 = v206;
          v116 = v202;
LABEL_56:
          ++v121;
          --v120;
          v112 = v211;
          v111 = v213;
          if (!v120)
          {
            goto LABEL_57;
          }
        }
      }

      v165 = scn_default_log();
      if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
      {
        C3DLightingSystemComputeShadowMatrices_cold_4(v165, v166, v167, v168, v169, v170, v171, v172);
      }
    }

    else
    {
      v33 = scn_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        C3DLightingSystemComputeShadowMatrices_cold_2(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }
  }

  else
  {
    v32 = scn_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      C3DLightingSystemComputeShadowMatrices_cold_6();
    }
  }
}

uint64_t C3DLightingSystemApplyActiveNonAmbientLights(uint64_t result, uint64_t a2)
{
  if (*(result + 608))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 624;
    v6 = result + 6176;
    do
    {
      v7 = v4 + 1;
      result = (*(a2 + 16))(a2, *(v5 + 8 * v4), v6);
      v6 += 432;
      v4 = v7;
    }

    while (v7 < *(v3 + 608));
  }

  return result;
}

uint64_t C3DLightingSystemEnumerateRadianceProbes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 176), *(result + 240), *(result + 480));
  }

  return result;
}

void C3DLightingSystemEnumerateLightsWithTechnique(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 116496);
  if (v2)
  {
    context = a2;
    CFSetApplyFunction(v2, __lightsWithTechniqueEnumerator, &context);
  }
}

const void *C3DLightingSystemGetActiveShadowCasterIndex(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 32), a2);
  if (result)
  {
    return *(*(a1 + 8 * (result >> 28) + 392) + (result & 0xFFFFFFF) - 1);
  }

  return result;
}

uint64_t C3DLightingSystemGetActiveShadowCasterData(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 9)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        C3DLightingSystemGetActiveShadowCasterData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  else
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DLightingSystemGetActiveShadowCasterData_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return a1 + 1568 * a2 + 115200;
}

__CFString *SCNObjCLightingModelFromCLightingModel(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2782FEDB0[a1];
  }
}

BOOL _isValidCustomPropertyType(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && strcmp([a1 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}") == 0;
}

C3D::DrawBackgroundPass *C3D::DrawBackgroundPass::DrawBackgroundPass(C3D::DrawBackgroundPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v4 = C3D::RenderPass::RenderPass(this, a2, a3);
  *v4 = &unk_282DC5C48;
  bzero(v4 + 240, 0x13A8uLL);
  return this;
}

uint64_t C3D::DrawBackgroundPass::setup(C3D::DrawBackgroundPass *this)
{
  v2 = this + 4096;
  Scene = C3DEngineContextGetScene(*(this + 2));
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  *(this + 658) = C3DSceneGetBackgroundEffectSlot(Scene, 0);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "BACKGROUND";
  C3D::Pass::parentColorDesc(this, &v15);
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v5 + 16) = v15;
  *(v5 + 32) = v16;
  v6 = *(this + 658);
  if (!v6 || C3DEffectSlotGetColorIfApplicable(v6))
  {
    v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    *(v7 + 66) = *(v7 + 66) & 0xFFFC | 2;
  }

  *(this + 30) = EnginePipeline;
  v2[838] = 0;
  *(this + 622) = *(this + 2);
  v2[836] = 1;
  *(this + 621) = Scene;
  v8 = *(this + 19);
  v2[772] = v8;
  v2[775] = 0;
  if (v8)
  {
    bzero(this + 5152, 16 * v8);
  }

  v2[776] = 0;
  *(this + 612) = 0;
  *(this + 613) = this;
  *(this + 657) = 0;
  v2[837] = 0;
  v2[1152] = 0;
  v2[774] = *(this + 11);
  v2[840] = 0;
  *(this + 614) = C3DSceneGetRootNode(Scene);
  v2[832] = 1;
  v9 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  if (*(this + 121) == 1)
  {
    v11 = *(this + 8);
  }

  else
  {
    LOWORD(v10) = *(v9 + 16);
    *&v12 = v10;
    LOWORD(v10) = *(v9 + 18);
    *&v13 = v10;
    *&v11 = 0;
    *(&v11 + 1) = __PAIR64__(v13, v12);
  }

  *(this + 305) = v11;
  v2[833] = 0;
  C3DCullingContextSetupMatricesToIdentity(this + 240);
  result = C3DEngineContextGetAuthoringEnvironment(*(this + 2), 0);
  *(this + 620) = result;
  *(v2 + 417) = 0;
  return result;
}

void C3D::DrawBackgroundPass::execute(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  bzero(&v4, 0x1410uLL);
  v5 = *(v2 + 4868);
  v6 = *(v2 + 117);
  memcpy(v7, (v2 + 240), sizeof(v7));
  v3 = *(v2 + 5264);
  if (v3)
  {
    C3DEngineContextRenderBackgroundMap(*(v2 + 16), v3, &v4);
  }
}

uint64_t _transposeSkinnerToClone(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([a1 skinner])
  {
    v6 = [objc_msgSend(a1 "skinner")];
    if (v6 && (Clone = _findClone(v6, a2, a3)) != 0)
    {
      [objc_msgSend(a1 "skinner")];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = [objc_msgSend(a1 "skinner")];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
LABEL_7:
        v13 = 0;
        while (1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          if (![v14 name])
          {
            break;
          }

          v15 = [a3 childNodeWithName:{objc_msgSend(v14, "name")}];
          if (!v15)
          {
            break;
          }

          [v8 addObject:v15];
          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
            if (v11)
            {
              goto LABEL_7;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        [objc_msgSend(a1 "skinner")];
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = [a1 childNodes];
  result = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (result)
  {
    v18 = result;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        _transposeSkinnerToClone(*(*(&v21 + 1) + 8 * v20++), a2, a3);
      }

      while (v18 != v20);
      result = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v18 = result;
    }

    while (result);
  }

  return result;
}

void _copyAnimations(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  [a2 _copyAnimationsFrom:a1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a1 actionKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a2 runAction:objc_msgSend(a1 forKey:{"actionForKey:", *(*(&v12 + 1) + 8 * v8)), *(*(&v12 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [objc_msgSend(a1 "childNodes")];
  if ([objc_msgSend(a2 "childNodes")] == v9)
  {
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        _copyAnimations([objc_msgSend(a1 "childNodes")], objc_msgSend(objc_msgSend(a2, "childNodes"), "objectAtIndex:", i));
      }
    }
  }

  else
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _copyAnimations_cold_1();
    }
  }
}

void sub_21C06931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _rendererCallback(float32x4_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  memset(v25, 0, sizeof(v25));
  v7 = [a3 rendererDelegate];
  UserInfo = C3DEngineContextGetUserInfo(a1);
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  Matrix4x4 = C3DEngineContextGetMatrix4x4(a1, 0);
  C3DMatrix4x4ToSCNMatrix4(Matrix4x4, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  [v9 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v17), @"kProjectionTransform"}];
  v11 = C3DEngineContextGetMatrix4x4(a1, 2);
  C3DMatrix4x4ToSCNMatrix4(v11, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  [v9 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v17), @"kModelTransform"}];
  v12 = C3DEngineContextGetMatrix4x4(a1, 1);
  C3DMatrix4x4ToSCNMatrix4(v12, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  [v9 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v17), @"kViewTransform"}];
  C3DEngineContextComputeNormalMatrix(a1, v25);
  C3DMatrix4x4ToSCNMatrix4(v25, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  [v9 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v17), @"kNormalTransform"}];
  v13 = C3DEngineContextGetMatrix4x4(a1, 2);
  v14 = C3DEngineContextGetMatrix4x4(a1, 1);
  C3DMatrix4x4Mult(v13, v14, v25);
  C3DMatrix4x4ToSCNMatrix4(v25, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  [v9 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v17), @"kModelViewTransform"}];
  v15 = C3DEngineContextGetMatrix4x4(a1, 0);
  C3DMatrix4x4Mult(v25, v15, v25);
  C3DMatrix4x4ToSCNMatrix4(v25, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  [v9 setValue:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNMatrix4:", &v17), @"kModelViewProjectionTransform"}];
  if (a4)
  {
    [v9 setValue:C3DFXPassGetName(a4) forKey:@"kRenderPassName"];
  }

  return [v7 renderNode:a3 renderer:UserInfo arguments:v9];
}

void sub_21C06E4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t SCNNodeRemoveDeadParticleInstance(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = [SCNNode nodeWithNodeRef:result];

    return [(SCNNode *)v3 _removeDeadParticleSystem:a2];
  }

  return result;
}

void sub_21C073FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _findClone(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v6 = [objc_msgSend(a3 "childNodes")];
  v7 = [objc_msgSend(a2 "childNodes")];
  if (v7 >= v6)
  {
    if (v6)
    {
      v10 = v7;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = [objc_msgSend(a2 "childNodes")];
        if ([v13 isGizmo])
        {
          do
          {
            if (++v12 >= v10)
            {
              break;
            }

            v13 = [objc_msgSend(a2 "childNodes")];
          }

          while (([v13 isGizmo] & 1) != 0);
        }

        if ([v13 isGizmo])
        {
          break;
        }

        result = _findClone(a1, v13, [objc_msgSend(a3 "childNodes")]);
        if (!result && ++v11 < v6 && ++v12 < v10)
        {
          continue;
        }

        return result;
      }
    }
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _findClone_cold_1();
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_21C07738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21C079E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DSceneGetPhysicsWorld(id *a1, uint64_t a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);

  return [ObjCWrapper _physicsWorldCreateIfNeeded:a2];
}

__n128 C3DPhysicsWorldGetWorldGravity(void *a1, _OWORD *a2)
{
  [a1 gravity];
  DWORD1(v5) = v3;
  DWORD2(v5) = v4;
  *a2 = v5;
  result.n128_u64[0] = v5;
  result.n128_u32[2] = DWORD2(v5);
  return result;
}

uint64_t C3DSceneRegisterNodePhysicsField(id *a1, id *a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);
  v4 = C3DEntityGetObjCWrapper(a2);
  result = [v4 physicsField];
  if (result)
  {
    v6 = [ObjCWrapper physicsWorld];
    v7 = [v4 physicsField];

    return [v6 _addFieldToWorld:v7];
  }

  return result;
}

uint64_t C3DSceneUnregisterNodePhysicsField(id *a1, id *a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);
  v4 = C3DEntityGetObjCWrapper(a2);
  result = [v4 physicsField];
  if (result)
  {
    v6 = [ObjCWrapper physicsWorld];
    v7 = [v4 physicsField];

    return [v6 _removeFieldFromWorld:v7];
  }

  return result;
}

uint64_t __inferRenderingAPIFromGLContext(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  if ([a1 API] == 3)
  {
    return 2;
  }

  return 1;
}

void deleteGLFramebufferInfo(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    C3DRendererContextDeleteFramebuffer(a2, *a1, 1);
    CFRelease(*a1);
    *a1 = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    C3DRendererContextDeleteFramebuffer(a2, v4, 1);
    CFRelease(a1[1]);
    a1[1] = 0;
  }
}

BOOL createGLFramebufferInfo(int32x2_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int32x2_t a5)
{
  if (*a1)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      createGLFramebufferInfo_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (a1[1])
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      createGLFramebufferInfo_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  a5.i32[0] = 0;
  v25.i32[1] = HIDWORD(*&a1[2]);
  v25.i32[0] = 1;
  v26 = vbsl_s8(vdup_lane_s32(vceq_s32(a1[2], a5), 0), v25, a1[2]);
  v27 = vbsl_s8(vdup_lane_s32(vceq_s32(vdup_lane_s32(v26, 1), a5), 0), (v26.u32[0] | 0x100000000), v26);
  v45 = v27;
  if (v27.i32[0])
  {
    v28 = v27.i32[1] == 0;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    v29 = scn_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      createGLFramebufferInfo_cold_3(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  v37 = C3DFramebufferCreate();
  *a1 = v37;
  v38 = COERCE_DOUBLE(vcvt_f32_u32(v45));
  C3DFramebufferSetSize(v37, v38);
  *(*a1 + 136) = a4;
  v39 = C3DRenderTargetDescriptionMake(1u, a4 == 0);
  C3DFramebufferAddRenderTargetDescription(*a1, 0, v39);
  if (a2 <= 1)
  {
    v40 = C3DRenderTargetDescriptionMake(0x29u, 0);
    C3DFramebufferAddRenderTargetDescription(*a1, 4, v40);
  }

  result = C3DRendererContextSetupFramebuffer(a3, *a1);
  if (a2 >= 2 && result)
  {
    v42 = C3DFramebufferCreate();
    a1[1] = v42;
    C3DFramebufferSetSampleCount(v42, a2);
    C3DFramebufferSetSize(*&a1[1], v38);
    v43 = C3DRenderTargetDescriptionMake(1u, 0);
    v44 = C3DRenderTargetDescriptionMake(0x29u, 0);
    C3DFramebufferAddRenderTargetDescription(*&a1[1], 0, v43 & 0xFFFFFFFFFFFF00FFLL | (a2 << 8));
    C3DFramebufferAddRenderTargetDescription(*&a1[1], 4, v44 & 0xFFFFFFFFFFFF00FFLL | (a2 << 8));
    return C3DRendererContextSetupFramebuffer(a3, *&a1[1]);
  }

  return result;
}

uint64_t _wantsMainPassCustomPostProcessEncodingEngineContextCallback(uint64_t a1)
{
  UserInfo = C3DEngineContextGetUserInfo(a1);
  if (!UserInfo)
  {
    return 0;
  }

  if ((*(UserInfo + 292) & 0x200) == 0)
  {
    if ((*(UserInfo + 296) & 0x200) == 0)
    {
      return 0;
    }

    UserInfo = *(UserInfo + 344);
  }

  return [UserInfo _wantsCustomMainPassPostProcessForRenderer:UserInfo];
}

uint64_t _mainPassCustomPostProcessUsesExtraRenderTargetEngineContextCallback(uint64_t a1, _DWORD *a2)
{
  result = C3DEngineContextGetUserInfo(a1);
  if (result)
  {
    v4 = result;
    if ((*(result + 292) & 0x200) != 0)
    {
      v5 = 0;
    }

    else
    {
      if ((*(result + 296) & 0x200) == 0)
      {
        return 0;
      }

      v5 = 0;
      result = *(result + 344);
    }

    result = [result _customMainPassPostProcessUsesExtraRenderTargetForRenderer:v4 pixelFormat:&v5];
    *a2 = v5;
  }

  return result;
}

uint64_t _useSpecificMainPassClearColorEngineContextCallback(uint64_t a1, uint64_t a2)
{
  UserInfo = C3DEngineContextGetUserInfo(a1);
  if (!UserInfo)
  {
    return 0;
  }

  v4 = UserInfo;
  if ((*(UserInfo + 292) & 0x200) == 0)
  {
    if ((*(UserInfo + 296) & 0x200) == 0)
    {
      return 0;
    }

    UserInfo = *(UserInfo + 344);
  }

  return [UserInfo _usesSpecificMainPassClearColorForRenderer:v4 clearColor:a2];
}

uint64_t _willRenderSceneEngineContextCallback(uint64_t a1)
{
  result = C3DEngineContextGetUserInfo(a1);
  if (result)
  {
    v3 = result;
    Scene = C3DEngineContextGetScene(a1);
    ObjCWrapper = C3DEntityGetObjCWrapper(Scene);

    return [v3 _willRenderScene:ObjCWrapper];
  }

  return result;
}

uint64_t _didRenderSceneEngineContextCallback(uint64_t a1)
{
  result = C3DEngineContextGetUserInfo(a1);
  if (result)
  {
    v3 = result;
    Scene = C3DEngineContextGetScene(a1);
    ObjCWrapper = C3DEntityGetObjCWrapper(Scene);

    return [v3 _didRenderScene:ObjCWrapper];
  }

  return result;
}

void *_readSubdivCacheEngineContextCallback(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetUserInfo(a1);
  if (result)
  {

    return [result _readSubdivCacheForHash:a2];
  }

  return result;
}

void *_writeSubdivCacheEngineContextCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DEngineContextGetUserInfo(a1);
  if (result)
  {

    return [result _writeSubdivCacheForHash:a2 dataProvider:a3];
  }

  return result;
}

uint64_t _encodeMainPassCustomPostProcessEngineContextCallback(uint64_t a1, uint64_t a2)
{
  result = C3DEngineContextGetUserInfo(a1);
  if (result)
  {
    v4 = result;
    v5 = *(result + 152);
    if (v5 == 0.0)
    {
      v5 = *(result + 136);
    }

    if ((*(result + 292) & 0x200) != 0)
    {
      result = [result _encodeCustomMainPassPostProcessForRenderer:result atTime:a2 helper:v5];
    }

    if ((*(v4 + 296) & 0x200) != 0)
    {
      v6 = *(v4 + 344);

      return [v6 _encodeCustomMainPassPostProcessForRenderer:v6 atTime:a2 helper:v5];
    }
  }

  return result;
}

uint64_t _renderOverlayEngineContextCallback(uint64_t a1)
{
  result = C3DEngineContextGetUserInfo(a1);
  if (result)
  {
    v3 = result;
    SceneTime = C3DEngineContextGetSceneTime(a1);

    return [v3 _drawOverlaySceneAtTime:SceneTime];
  }

  return result;
}

void sub_21C0814C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SCNKitSplitKVCPath(void *a1, void *a2, uint64_t *a3)
{
  v6 = [a1 rangeOfString:@"."];
  v8 = v7;
  if (v7 == 1)
  {
    v9 = v6;
    *a2 = [a1 substringWithRange:{0, v6}];
    v10 = [a1 substringWithRange:{v9 + 1, objc_msgSend(a1, "length") + ~v9}];
  }

  else
  {
    v10 = 0;
    *a2 = a1;
  }

  *a3 = v10;
  return v8 == 1;
}

const void *SCNGetCachedImageProxyOrCreateIfNeededForSource(void *a1, uint64_t a2)
{
  SharedInstance = C3DResourceCacheGetSharedInstance();
  IfNeededForSource = C3DResourceCacheCopyResourceOrCreateIfNeededForSource(SharedInstance, a1, 1, a2);
  v6 = IfNeededForSource;
  if (IfNeededForSource)
  {
    CFAutorelease(IfNeededForSource);
  }

  return v6;
}

uint64_t C3DColor4FromRGBCFColor(const void *a1, uint64_t a2)
{
  v3 = scn_NSColorFromCGColorIfApplicable(a1);

  return [v3 scn_C3DColorIgnoringColorSpace:a2 success:0];
}

uint64_t SCNLightTypeToC3DLightType(void *a1)
{
  if ([a1 isEqualToString:@"ambient"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"directional"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"omni"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"spot"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"probe"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"ies"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"area"])
  {
    return 6;
  }

  v3 = scn_default_log();
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    SCNLightTypeToC3DLightType_cold_1();
    return 0;
  }

  return result;
}

SCNLightType SCNLightTypeFromC3DLightType(int a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = &SCNLightTypeDirectional;
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        v3 = &SCNLightTypeOmni;
      }
    }

    else
    {
      v3 = &SCNLightTypeAmbient;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      v3 = &SCNLightTypeIES;
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      v3 = &SCNLightTypeArea;
    }
  }

  else if (a1 == 3)
  {
    v3 = &SCNLightTypeSpot;
  }

  else
  {
    v3 = &SCNLightTypeProbe;
  }

  return *v3;
}

uint64_t SCNEncodeColor(void *a1, CFTypeRef cf, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [scn_NSColorFromCGColorIfApplicable(cf) CGColor];
  if (v5)
  {
    *&v6 = C3DCGColorGetLinearExtendedSRGBComponents(v5);
  }

  else
  {
    v6 = xmmword_21C27F610;
  }

  v8 = v6;
  return [a1 encodeBytes:&v8 length:16 forKey:a3];
}

uint64_t SCNDecodeColor(void *a1, uint64_t a2)
{
  v8 = 0;
  v2 = [a1 decodeBytesForKey:a2 returnedLength:&v8];
  v3 = 0uLL;
  if (v8 == 16)
  {
    v3 = *v2;
  }

  ExtendedLinearSRGBWithComponents = C3DCGColorCreateExtendedLinearSRGBWithComponents(v3);
  if (!ExtendedLinearSRGBWithComponents)
  {
    return 0;
  }

  v5 = ExtendedLinearSRGBWithComponents;
  v6 = [MEMORY[0x277D75348] colorWithCGColor:ExtendedLinearSRGBWithComponents];
  CFRelease(v5);
  return v6;
}

uint64_t SCNEncodeVector3(void *a1, uint64_t a2, float a3, float a4, float a5)
{
  v7 = *MEMORY[0x277D85DE8];
  *v6 = a3;
  *&v6[1] = a4;
  *&v6[2] = a5;
  return [a1 encodeBytes:v6 length:12 forKey:a2];
}

uint64_t SCNEncodeVector4(void *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  return [a1 encodeBytes:v7 length:16 forKey:a2];
}

float SCNDecodeVector3(void *a1, uint64_t a2)
{
  v4 = 0;
  v2 = [a1 decodeBytesForKey:a2 returnedLength:&v4];
  result = 0.0;
  if (v4 == 12)
  {
    return *v2;
  }

  return result;
}

float SCNDecodeVector4(void *a1, uint64_t a2)
{
  v4 = 0;
  v2 = [a1 decodeBytesForKey:a2 returnedLength:&v4];
  result = 0.0;
  if (v4 == 16)
  {
    return *v2;
  }

  return result;
}

_OWORD *SCNDecodeSCNMatrix4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = 0;
  result = [a1 decodeBytesForKey:a2 returnedLength:&v8];
  if (v8 == 64)
  {
    v5 = result[1];
    *a3 = *result;
    a3[1] = v5;
    v6 = result[2];
    v7 = result[3];
  }

  else
  {
    *a3 = *&SCNMatrix4Identity.m11;
    a3[1] = *&SCNMatrix4Identity.m21;
    v6 = *&SCNMatrix4Identity.m31;
    v7 = *&SCNMatrix4Identity.m41;
  }

  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t _SCNArrayFromCGPathApply(void *a1, unsigned int *a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *a2;
  [v4 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", *a2), @"type"}];
  v6 = *(a2 + 1);
  v7 = [MEMORY[0x277CBEB18] array];
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", *v6, v6[1])}];
        v8 = MEMORY[0x277CCAE60];
        v9 = v6[2];
        v10 = v6[3];
        break;
      case 3:
        [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", *v6, v6[1])}];
        [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", v6[2], v6[3])}];
        v8 = MEMORY[0x277CCAE60];
        v9 = v6[4];
        v10 = v6[5];
        break;
      case 4:
        goto LABEL_11;
      default:
        goto LABEL_12;
    }

LABEL_10:
    [v7 addObject:{objc_msgSend(v8, "SCN_valueWithCGPoint:", v9, v10)}];
    goto LABEL_11;
  }

  if (v5 <= 1)
  {
    v8 = MEMORY[0x277CCAE60];
    v9 = *v6;
    v10 = v6[1];
    goto LABEL_10;
  }

LABEL_12:
  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_DEFAULT, "Warning: CGPath archiving: unknown path element type", v13, 2u);
  }

LABEL_11:
  [v4 setValue:v7 forKey:@"points"];
  return [a1 addObject:v4];
}

CGPath *_SCNCGPathCreateFromArray(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [objc_msgSend(v7 objectForKey:{@"type", "intValue"}];
        v9 = [v7 objectForKey:@"points"];
        v10 = v9;
        if (v8 <= 1)
        {
          if (v8)
          {
            if (v8 == 1)
            {
              [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
              CGPathAddLineToPoint(Mutable, 0, v11, v12);
            }
          }

          else
          {
            [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
            CGPathMoveToPoint(Mutable, 0, v29, v30);
          }
        }

        else
        {
          switch(v8)
          {
            case 2:
              [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
              v14 = v13;
              v16 = v15;
              [objc_msgSend(v10 objectAtIndex:{1), "SCN_CGPointValue"}];
              CGPathAddQuadCurveToPoint(Mutable, 0, v14, v16, v17, v18);
              break;
            case 3:
              [objc_msgSend(v9 objectAtIndex:{0), "SCN_CGPointValue"}];
              v20 = v19;
              v22 = v21;
              [objc_msgSend(v10 objectAtIndex:{1), "SCN_CGPointValue"}];
              v24 = v23;
              v26 = v25;
              [objc_msgSend(v10 objectAtIndex:{2), "SCN_CGPointValue"}];
              CGPathAddCurveToPoint(Mutable, 0, v20, v22, v24, v26, v27, v28);
              break;
            case 4:
              CGPathCloseSubpath(Mutable);
              break;
          }
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  return Mutable;
}

uint64_t _SCNEncodeCGPathForKey(uint64_t result, const CGPath *a2, _DWORD *a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = result;
    v8 = [MEMORY[0x277CBEB18] array];
    CGPathApply(a2, v8, _SCNArrayFromCGPathApply);
    if (a3)
    {
      v10[1] = @"flatness";
      v11[0] = v8;
      v10[0] = @"path";
      LODWORD(v9) = *a3;
      v11[1] = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      return [v7 encodeObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionaryWithObjects:forKeys:count:", v11, v10, 2), a4}];
    }

    else
    {

      return [v7 encodeObject:v8 forKey:a4];
    }
  }

  return result;
}

uint64_t SCNEncodeBezierPathForKey(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 flatness];
  *&v6 = v6;
  v8 = LODWORD(v6);
  return _SCNEncodeCGPathForKey(a1, [a2 CGPath], &v8, a3);
}

CGPath *SCNDecodeCGPathForKey(void *a1, uint64_t a2)
{
  result = _SCNDecodeCGPathForKey(a1, a2, 0);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

CGPath *_SCNDecodeCGPathForKey(void *a1, uint64_t a2, _DWORD *a3)
{
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [a1 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, v9, objc_opt_class(), 0), a2}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a3)
      {
        [objc_msgSend(v10 valueForKey:{@"flatness", "floatValue"}];
        *a3 = v11;
      }

      v10 = [v10 valueForKey:@"path"];
    }

    else
    {
      v10 = 0;
    }
  }

  return _SCNCGPathCreateFromArray(v10);
}

void *SCNDecodeBezierPathForKey(void *a1, uint64_t a2)
{
  v6 = -1.0;
  v2 = _SCNDecodeCGPathForKey(a1, a2, &v6);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x277D75208] bezierPathWithCGPath:v2];
  CFRelease(v3);
  if (v6 >= 0.0)
  {
    [v4 setFlatness:v6];
  }

  return v4;
}

uint64_t SCNEncodeEntity(void *a1, void *a2)
{
  result = C3DEntityGetID([a2 __CFObject]);
  if (result)
  {

    return [a1 encodeObject:result forKey:@"entityID"];
  }

  return result;
}

CFTypeRef SCNDecodeEntity(void *a1, void *a2)
{
  result = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"entityID"];
  if (result)
  {
    v4 = result;
    v5 = [a2 __CFObject];

    return C3DEntitySetID(v5, v4);
  }

  return result;
}

void SCNEncodeMTLTextureAsDataForKey(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 textureType];
  if (a3 && [a2 mipmapLevelCount] > 1 || SCNMTLTextureTypeIsCube(v8) || SCNMTLTextureTypeIsArray(v8))
  {
    v9 = SCNCreateDataWithMTLTexture(a2, a3);
    if (v9)
    {
      [a1 encodeObject:v9 forKey:a4];
    }
  }

  else
  {
    v10 = C3DCreateImageWithTexture(a2);
    Mutable = CFDataCreateMutable(0, 0);
    v12 = CGImageDestinationCreateWithData(Mutable, [*MEMORY[0x277CE1D90] identifier], 1uLL, 0);
    CGImageDestinationAddImage(v12, v10, 0);
    CGImageDestinationFinalize(v12);
    CFRelease(v12);
    [a1 encodeObject:Mutable forKey:a4];
    CFRelease(Mutable);
    CFRelease(v10);
  }
}

void sub_21C0874B8(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);

  objc_end_catch();
}

uint64_t SCNEncodeUnsafeObjectForKey(void *a1, uint64_t a2, uint64_t a3)
{
  result = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  if (result)
  {
    return [a1 encodeObject:result forKey:a3];
  }

  return result;
}

uint64_t SCNDecodeUnsecureColor(void *a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v5 = [a1 decodeObjectOfClasses:objc_msgSend(v4 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 2)), a2}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:objc_msgSend(MEMORY[0x277CBEB98] fromData:"setWithObject:" error:{objc_opt_class()), v5, 0}];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t SCNDecodeUnsafeObjectForKey(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = [a3 setByAddingObject:objc_opt_class()];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  }

  v7 = [a1 decodeObjectOfClasses:v6 forKey:a2];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 requiresSecureCoding])
      {
        v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:0];
        if (!v3)
        {
          if (SCNUserInfoClasses_onceToken != -1)
          {
            SCNDecodeUnsafeObjectForKey_cold_1();
          }

          v3 = SCNUserInfoClasses_set;
        }

        v7 = [v8 scn_decodeObjectOfClasses:v3 forKey:*MEMORY[0x277CCA308]];
        [v8 finishDecoding];
      }

      else
      {
        v9 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v7];
        if ([v3 count])
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (!v10)
          {
            return 0;
          }

          v11 = *v15;
LABEL_15:
          v12 = 0;
          while (1)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v3);
            }

            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
              v7 = 0;
              if (v10)
              {
                goto LABEL_15;
              }

              return v7;
            }
          }
        }

        return v9;
      }
    }
  }

  return v7;
}

uint64_t SCNUserInfoClasses()
{
  if (SCNUserInfoClasses_onceToken != -1)
  {
    SCNDecodeUnsafeObjectForKey_cold_1();
  }

  return SCNUserInfoClasses_set;
}

void SCNEncodeC3DAnimationForKey(void *a1, const void *a2, uint64_t a3)
{
  v6 = C3DCopyPropertyList(a2, 0, 0, 0);
  v7 = CFGetTypeID(a2);
  if (v7 == C3DSimpleAnimationGetTypeID())
  {
    v8 = @"basic";
  }

  else
  {
    v9 = CFGetTypeID(a2);
    if (v9 == C3DKeyframedAnimationGetTypeID())
    {
      v8 = @"keyframe";
    }

    else
    {
      v10 = CFGetTypeID(a2);
      if (v10 == C3DAnimationGroupGetTypeID())
      {
        v8 = @"group";
      }

      else
      {
        v11 = scn_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          SCNEncodeC3DAnimationForKey_cold_1();
        }

        v8 = 0;
      }
    }
  }

  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  [v12 setValue:v6 forKey:@"animation"];
  [v12 setValue:v8 forKey:@"class"];
  [a1 encodeObject:v12 forKey:a3];
}

uint64_t SCNDecodeC3DAnimationForKey(void *a1, uint64_t a2)
{
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  v4 = [a1 decodeObjectOfClasses:SCNPlistClasses_set forKey:a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [v5 valueForKey:@"class"];
    if ([v9 isEqualToString:@"basic"])
    {
      v10 = C3DSimpleAnimationCreate();
    }

    else if ([v9 isEqualToString:@"keyframe"])
    {
      v10 = C3DKeyframedAnimationCreate();
    }

    else
    {
      if (![v9 isEqualToString:@"group"])
      {
        goto LABEL_20;
      }

      v10 = C3DAnimationGroupCreate();
    }

    v6 = v10;
    if (v10)
    {
      v11 = v10;
      if (C3DInitWithPropertyList(v6, [v5 valueForKey:@"animation"], 0, 0))
      {
        return v6;
      }

      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        SCNDecodeC3DAnimationForKey_cold_2();
      }

      return 0;
    }

LABEL_20:
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SCNDecodeC3DAnimationForKey_cold_3();
    }

    return 0;
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];

  return SCNDecodeUnsafeObjectForKey(a1, a2, v7);
}

uint64_t SCNPlistClasses()
{
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  return SCNPlistClasses_set;
}

void *SCNEncodeAnimations(void *a1, void *a2)
{
  v2 = a2;
  v61 = *MEMORY[0x277D85DE8];
  v4 = [a2 animationKeys];
  v38 = a1;
  if (v4)
  {
    v5 = v4;
    if ([v4 count])
    {
      v43 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v52;
        v41 = v5;
        v42 = v2;
        v39 = *v52;
        v40 = v6;
        do
        {
          v10 = 0;
          v45 = v8;
          do
          {
            if (*v52 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v51 + 1) + 8 * v10);
            v12 = [v2 animationPlayerForKey:v11];
            v13 = [v12 animation];
            v14 = [v13 animationRef];
            if (v14 || ([v12 prepareWithTarget:v2 implicitDuration:0.0], (v14 = objc_msgSend(v13, "animationRef")) != 0))
            {
              v15 = v14;
              if ((C3DAnimationGetIsImplicit(v14) & 1) == 0)
              {
                [v6 addObject:v12];
                [v44 addObject:v11];
                KeyPath = C3DAnimationGetKeyPath(v15);
                v17 = C3DCreatePathFromComponents(KeyPath);
                v18 = CFGetTypeID(v15);
                TypeID = C3DAnimationClusterGetTypeID();
                v46 = v18;
                if (v18 == TypeID)
                {
                  v15 = C3DAnimationGroupCreateWithAnimationCluster(v15);
                }

                v20 = C3DCopyPropertyList(v15, 0, 0, 0);
                v21 = CFGetTypeID(v15);
                if (v21 == C3DSimpleAnimationGetTypeID())
                {
                  v22 = 0;
                  v23 = @"basic";
                }

                else
                {
                  v24 = CFGetTypeID(v15);
                  if (v24 == C3DKeyframedAnimationGetTypeID())
                  {
                    v22 = 0;
                    v23 = @"keyframe";
                  }

                  else
                  {
                    v26 = CFGetTypeID(v15);
                    if (v26 == C3DAnimationGroupGetTypeID())
                    {
                      v22 = 0;
                      v23 = @"group";
                    }

                    else
                    {
                      v27 = scn_default_log();
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v59 = v13;
                        _os_log_error_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_ERROR, "Error: SCNEncodeAnimations unknown animation type: %@", buf, 0xCu);
                      }

                      v23 = 0;
                      v22 = 1;
                    }
                  }
                }

                v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
                [v28 setValue:v20 forKey:@"animation"];
                if (v17)
                {
                  [v28 setValue:v17 forKey:@"keyPath"];
                }

                if ((v22 & 1) == 0)
                {
                  [v28 setValue:v23 forKey:@"class"];
                }

                v6 = v40;
                if ([v13 usesSceneTimeBase])
                {
                  [v28 setValue:MEMORY[0x277CBEC38] forKey:@"usesSceneTimeBase"];
                }

                [v43 setObject:v28 forKey:v11];

                v8 = v45;
                v29 = v46 == TypeID;
                v5 = v41;
                v2 = v42;
                v9 = v39;
                if (v29 && v15)
                {
                  CFRelease(v15);
                }
              }
            }

            else
            {
              v25 = scn_default_log();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v59 = v13;
                _os_log_error_impl(&dword_21BEF7000, v25, OS_LOG_TYPE_ERROR, "Error: SCNEncodeAnimations failed to encode animation: %@", buf, 0xCu);
              }
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v51 objects:v60 count:16];
        }

        while (v8);
      }

      if ([v44 count])
      {
        if (v6)
        {
          [v38 encodeObject:v6 forKey:@"animation-players"];
        }

        [v38 encodeObject:v43 forKey:@"animations"];
        [v38 encodeObject:v44 forKey:@"animation-keys"];
      }
    }
  }

  result = [v2 _scnBindings];
  if (result)
  {
    v31 = result;
    v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(result, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v33 = [v31 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v48;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v48 != v35)
          {
            objc_enumerationMutation(v31);
          }

          v37 = [v31 valueForKey:*(*(&v47 + 1) + 8 * i)];
          if ([v37 sourceObject])
          {
            v55[0] = @"sourceObject";
            v56[0] = [v37 sourceObject];
            v55[1] = @"keyPathSrc";
            v56[1] = [v37 keyPathSrc];
            v55[2] = @"keyPathDst";
            v56[2] = [v37 keyPathDst];
            [v32 addObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v56, v55, 3)}];
          }
        }

        v34 = [v31 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v34);
    }

    return [v38 encodeObject:v32 forKey:@"bindings"];
  }

  return result;
}

void *SCNDecodeAnimations(void *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  v29 = a1;
  v31 = [a1 scn_decodeDictionaryWithKeysOfClasses:v3 objectsOfClasses:SCNPlistClasses_set containingNestedContainersForKey:@"animations"];
  if (v31)
  {
    v4 = [a1 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"animation-keys"];
    v5 = [a1 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"animation-players"];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    if (!v4)
    {
      v4 = [v31 allKeys];
    }

    v6 = [v4 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v38;
      obj = v4;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          if (v5)
          {
            v12 = [v5 objectAtIndex:v8++];
          }

          else
          {
            v12 = 0;
          }

          v13 = [v31 objectForKey:v11];
          v14 = [v13 valueForKey:@"class"];
          if ([v14 isEqualToString:@"basic"])
          {
            v15 = C3DSimpleAnimationCreate();
            goto LABEL_18;
          }

          if ([v14 isEqualToString:@"keyframe"])
          {
            v15 = C3DKeyframedAnimationCreate();
LABEL_18:
            v16 = v15;
            v17 = 0;
            if (v15)
            {
              goto LABEL_19;
            }

            goto LABEL_29;
          }

          if ([v14 isEqualToString:@"group"])
          {
            v17 = 1;
            v16 = C3DAnimationGroupCreate();
            if (v16)
            {
LABEL_19:
              if (C3DInitWithPropertyList(v16, [v13 valueForKey:@"animation"], 0, 0))
              {
                if (v17)
                {
                  v18 = C3DAnimationClusterCreateWithAnimationGroup(v16);
                  if (v18)
                  {
                    v19 = v18;
                    CFRelease(v16);
                    v16 = v19;
                  }
                }

                C3DAnimationSetIsSceneTimeBased(v16, [objc_msgSend(v13 valueForKey:{@"usesSceneTimeBase", "BOOLValue"}]);
                v20 = [v13 valueForKey:@"keyPath"];
                v21 = [SCNAnimation animationWithC3DAnimation:v16];
                [(SCNAnimation *)v21 setKeyPath:v20];
                if (v12)
                {
                  [v12 _setAnimation:v21];
                  [a2 addAnimationPlayer:v12 forKey:v11];
                }

                else
                {
                  [a2 addAnimation:v21 forKey:v11];
                }
              }

              else
              {
                v22 = scn_default_log();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v43 = v13;
                  _os_log_error_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_ERROR, "Error: failed to deserialize animation %@", buf, 0xCu);
                }
              }

              CFRelease(v16);
              continue;
            }
          }

LABEL_29:
          v23 = scn_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v13;
            _os_log_error_impl(&dword_21BEF7000, v23, OS_LOG_TYPE_ERROR, "Error: can't deserialize animation %@", buf, 0xCu);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v7);
    }
  }

  if (SCNUserInfoClasses_onceToken != -1)
  {
    SCNDecodeAnimations_cold_2();
  }

  result = [v29 scn_decodeArrayOfObjectsOfClasses:SCNUserInfoClasses_set containingNestedContainersForKey:@"bindings"];
  if (result)
  {
    v25 = result;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    result = [result countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (result)
    {
      v26 = result;
      v27 = *v34;
      do
      {
        v28 = 0;
        do
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v25);
          }

          [a2 bindAnimatablePath:objc_msgSend(*(*(&v33 + 1) + 8 * v28) toObject:"objectForKeyedSubscript:" withKeyPath:@"keyPathDst" options:{objc_msgSend(*(*(&v33 + 1) + 8 * v28), "objectForKeyedSubscript:", @"sourceObject", objc_msgSend(*(*(&v33 + 1) + 8 * v28), "objectForKeyedSubscript:", @"keyPathSrc", 0}];
          v28 = v28 + 1;
        }

        while (v26 != v28);
        result = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
        v26 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t SCNFindImageNamedInAppBundle(void *a1)
{
  v2 = [a1 path];
  v3 = [v2 rangeOfString:@".app/Contents/"];
  if (!v4 || (v5 = [v2 substringFromIndex:v3 + v4]) == 0)
  {
    v5 = [a1 path];
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v5;
  v7 = [v5 pathComponents];
  v8 = [v7 count];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v22 = a1;
  v10 = SCNGetResourceBundle();
  v11 = [objc_msgSend(v6 "lastPathComponent")];
  v12 = [v6 pathExtension];
  v13 = v9 - 1;
  if (v9 == 1)
  {
LABEL_12:
    v20 = [MEMORY[0x277D755B8] imageNamed:{objc_msgSend(v22, "lastPathComponent")}];
  }

  else
  {
    v14 = v12;
    v15 = 0;
    while (1)
    {
      v16 = [v7 count] - 1;
      v17 = &stru_282DCC058;
      if (v16 > v15)
      {
        v18 = v15;
        v17 = &stru_282DCC058;
        do
        {
          v17 = -[__CFString stringByAppendingPathComponent:](v17, "stringByAppendingPathComponent:", [v7 objectAtIndex:v18++]);
        }

        while (v16 != v18);
      }

      v19 = [v10 pathForResource:v11 ofType:v14 inDirectory:v17];
      if (v19)
      {
        break;
      }

      if (++v15 == v13)
      {
        goto LABEL_12;
      }
    }

    v20 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v19];
  }

  return [v20 CGImage];
}

uint64_t SCNResolveImageContents(void *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    a1 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = 0;
    v5 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return v5;
    }
  }

  if ([objc_msgSend(v4 "scheme")])
  {
    v6 = [v4 absoluteString];
  }

  else
  {
    if (a1)
    {
      goto LABEL_9;
    }

    if (![v4 isFileURL] || objc_msgSend(v4, "query"))
    {
      goto LABEL_21;
    }

    v6 = [v4 path];
  }

  a1 = v6;
  if (!v6)
  {
LABEL_21:
    a1 = 0;
    if (!v4)
    {
      return a1;
    }

    v13 = 0;
    goto LABEL_23;
  }

LABEL_9:
  if ([a1 hasPrefix:@"imageNamed://"])
  {
    v7 = [a1 substringFromIndex:13];
    v8 = [MEMORY[0x277D755B8] imageNamed:v7];
    if (v8)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  v9 = [a1 rangeOfString:@".app/Contents/"];
  if (v10)
  {
    v11 = [a1 substringFromIndex:v9 + v10];
    if (v11)
    {
      v12 = [SCNGetResourceBundle() URLForResource:objc_msgSend(v11 withExtension:{"stringByDeletingPathExtension"), objc_msgSend(v11, "pathExtension")}];
      if (v12)
      {
        return v12;
      }
    }
  }

  v12 = [SCNGetResourceBundle() URLForResource:objc_msgSend(a1 withExtension:{"stringByDeletingPathExtension"), objc_msgSend(a1, "pathExtension")}];
  if (v12)
  {
    return v12;
  }

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
    v14 = 0;
    v13 = 1;
    goto LABEL_29;
  }

  v13 = 1;
LABEL_23:
  if (![v4 isFileURL] || objc_msgSend(v4, "query"))
  {
    return v4;
  }

  v14 = 1;
  v5 = v4;
LABEL_29:
  v12 = [SCNGetResourceBundle() URLForResource:objc_msgSend(v5 withExtension:{"lastPathComponent"), objc_msgSend(v5, "pathExtension")}];
  if (v12)
  {
    return v12;
  }

  if ([v5 checkResourceIsReachableAndReturnError:0])
  {
    return v5;
  }

  v15 = v13 ^ 1;
  if (!a2)
  {
    v15 = 1;
  }

  if (v15)
  {
    v5 = v4;
    if (v14)
    {
      return v5;
    }
  }

  else
  {
    v16 = [a2 URLByAppendingPathComponent:a1];
    v17 = [v16 URLByStandardizingPath];
    if (v17 != v16)
    {
      v5 = v17;
      if ([v17 checkResourceIsReachableAndReturnError:0])
      {
        return v5;
      }
    }

    v5 = v16;
    if ([v16 checkResourceIsReachableAndReturnError:0])
    {
      return v5;
    }

    v18 = [a2 URLByAppendingPathComponent:{objc_msgSend(a1, "lastPathComponent")}];
    v19 = [v18 URLByStandardizingPath];
    if (v19 != v18)
    {
      v5 = v19;
      if ([v19 checkResourceIsReachableAndReturnError:0])
      {
        return v5;
      }
    }

    v20 = [v18 checkResourceIsReachableAndReturnError:0];
    v5 = v20 ? v18 : v4;
    if ((v14 | v20))
    {
      return v5;
    }
  }

  if (!C3DWasLinkedBeforeMajorOSYear2016())
  {
    return a1;
  }

  v21 = MEMORY[0x277CBEBC0];

  return [v21 fileURLWithPath:a1];
}

id _SCNDecodeImageContents(id result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([objc_msgSend(v1 valueForKey:{@"type", "isEqualToString:", @"MDLSkyCubeTexture"}])
      {
        v2 = objc_alloc(MEMORY[0x277CD7B40]);
        v3 = [v1 objectForKeyedSubscript:@"name"];
        v4 = [objc_msgSend(v1 objectForKeyedSubscript:{@"channelEncoding", "integerValue"}];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"dimensions.x", "floatValue"}];
        v25 = v5;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"dimensions.x", "floatValue"}];
        v7 = COERCE_DOUBLE(vcvt_s32_f32(__PAIR64__(v6, v25)));
        [objc_msgSend(v1 objectForKeyedSubscript:{@"turbidity", "floatValue"}];
        v9 = v8;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"sunElevation", "floatValue"}];
        v11 = v10;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"upperAtmosphereScattering", "floatValue"}];
        v13 = v12;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"groundAlbedo", "floatValue"}];
        LODWORD(v15) = v14;
        LODWORD(v16) = v9;
        LODWORD(v17) = v11;
        LODWORD(v18) = v13;
        v19 = [v2 initWithName:v3 channelEncoding:v4 textureDimensions:v7 turbidity:v16 sunElevation:v17 upperAtmosphereScattering:v18 groundAlbedo:v15];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"horizonElevation", "floatValue"}];
        [v19 setHorizonElevation:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"gamma", "floatValue"}];
        [v19 setGamma:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"exposure", "floatValue"}];
        [v19 setExposure:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"brightness", "floatValue"}];
        [v19 setBrightness:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"contrast", "floatValue"}];
        [v19 setContrast:?];
        [objc_msgSend(v1 objectForKeyedSubscript:{@"saturation", "floatValue"}];
        [v19 setSaturation:?];
        v20 = [v1 objectForKeyedSubscript:@"groundColor"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v20 error:0];
          if (v21)
          {
            [v19 setGroundColor:{objc_msgSend(v21, "CGColor")}];
          }
        }

        [objc_msgSend(v1 objectForKeyedSubscript:{@"highDynamicRangeCompression.x", "floatValue"}];
        v26 = v22;
        [objc_msgSend(v1 objectForKeyedSubscript:{@"highDynamicRangeCompression.y", "floatValue"}];
        [v19 setHighDynamicRangeCompression:{COERCE_DOUBLE(__PAIR64__(v23, v26))}];
        if ((C3DWasLinkedBeforeMajorOSYear2018() & 1) == 0)
        {
          [v19 updateTexture];
        }

        return v19;
      }

      else
      {
        result = [v1 valueForKey:@"data"];
        if (!result)
        {
          result = [v1 valueForKey:@"path"];
          if (!result)
          {

            return [v1 valueForKey:@"URL"];
          }
        }
      }
    }

    else
    {
      v24 = scn_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        _SCNDecodeImageContents_cold_1(v24);
      }

      return 0;
    }
  }

  return result;
}

id SCNDecodeImageContents(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [a1 scn_decodeDictionaryWithKeysOfClasses:v4 objectsOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, objc_opt_class(), 0), a2}];

  return _SCNDecodeImageContents(v9);
}

uint64_t SCNEncodeC3DImageForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = _SCNEncodedC3DImage(a1, a2);

  return [a1 encodeObject:v5 forKey:a3];
}

void *_SCNEncodedC3DImage(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_msgSend(objc_msgSend(a1 "options")];
  }

  else
  {
    v4 = 0;
  }

  URL = C3DImageGetURL(a2);
  if (URL)
  {
    v6 = URL;
    v7 = ([-[NSData query](URL "query")] != 0) | v4;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    if ((v7 & 1) == 0)
    {
      v9 = @"URL";
LABEL_11:
      [v8 setObject:v6 forKey:v9];
      return v8;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  Data = C3DImageGetData(a2);
  if (Data)
  {
    v6 = Data;
LABEL_10:
    v9 = @"data";
    goto LABEL_11;
  }

  v12 = C3DImageCopyCGImage(a2);
  if (v12)
  {
    v13 = v12;
    v6 = UIImagePNGRepresentation([MEMORY[0x277D755B8] imageWithCGImage:v12]);
    CGImageRelease(v13);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  return v8;
}

void *SCNEncodeNamedObject(void *a1, const char *a2)
{
  if (a2)
  {
    return [a1 encodeObject:a2 forKey:@"name"];
  }

  return a1;
}

uint64_t __SCNPlistClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  SCNPlistClasses_set = result;
  return result;
}

uint64_t __SCNUserInfoClassesWithoutCollections_block_invoke()
{
  v30 = objc_alloc(MEMORY[0x277CBEB98]);
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v0 = __SKSceneClass();
  if (!v0)
  {
    v0 = objc_opt_class();
  }

  v14 = v0;
  v1 = __SKTextureClass();
  if (!v1)
  {
    v1 = objc_opt_class();
  }

  v13 = v1;
  v2 = __GLKTextureInfoClass();
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  v3 = __AVPlayerClass();
  if (!v3)
  {
    v3 = objc_opt_class();
  }

  v4 = __AVCaptureDeviceClass();
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  result = [v30 initWithObjects:{v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  SCNUserInfoClassesWithoutCollections_set = result;
  return result;
}

id __SCNUserInfoClasses_block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  if (SCNUserInfoClassesWithoutCollections_onceToken != -1)
  {
    __SCNUserInfoClasses_block_invoke_cold_1();
  }

  v0 = SCNUserInfoClassesWithoutCollections_set;
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  result = [v0 setByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v2, 2)}];
  SCNUserInfoClasses_set = result;
  return result;
}

void SCNEncodeImageContentsForKey(void *a1, void *a2, uint64_t a3)
{
  v36[18] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_msgSend(objc_msgSend(a1 "options")];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = v7;
    v9 = @"path";
LABEL_7:
    [v7 setObject:a2 forKey:v9];

    [a1 encodeObject:v8 forKey:a3];
    return;
  }

  objc_opt_class();
  if (!(v6 & 1 | ((objc_opt_isKindOfClass() & 1) == 0)) && ![objc_msgSend(a2 "query")])
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = v7;
    v9 = @"URL";
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a2 groundColor])
    {
      v10 = [MEMORY[0x277D75348] colorWithCGColor:{objc_msgSend(a2, "groundColor")}];
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    }

    else
    {
      v11 = 0;
    }

    v36[0] = @"MDLSkyCubeTexture";
    v35[0] = @"type";
    v35[1] = @"name";
    v14 = [a2 name];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = &stru_282DCC058;
    }

    v36[1] = v15;
    v35[2] = @"turbidity";
    v16 = MEMORY[0x277CCABB0];
    [a2 turbidity];
    v36[2] = [v16 numberWithFloat:?];
    v35[3] = @"sunElevation";
    v17 = MEMORY[0x277CCABB0];
    [a2 sunElevation];
    v36[3] = [v17 numberWithFloat:?];
    v35[4] = @"upperAtmosphereScattering";
    v18 = MEMORY[0x277CCABB0];
    [a2 upperAtmosphereScattering];
    v36[4] = [v18 numberWithFloat:?];
    v35[5] = @"groundAlbedo";
    v19 = MEMORY[0x277CCABB0];
    [a2 groundAlbedo];
    v36[5] = [v19 numberWithFloat:?];
    v35[6] = @"horizonElevation";
    v20 = MEMORY[0x277CCABB0];
    [a2 horizonElevation];
    v36[6] = [v20 numberWithFloat:?];
    v35[7] = @"gamma";
    v21 = MEMORY[0x277CCABB0];
    [a2 gamma];
    v36[7] = [v21 numberWithFloat:?];
    v35[8] = @"exposure";
    v22 = MEMORY[0x277CCABB0];
    [a2 exposure];
    v36[8] = [v22 numberWithFloat:?];
    v35[9] = @"brightness";
    v23 = MEMORY[0x277CCABB0];
    [a2 brightness];
    v36[9] = [v23 numberWithFloat:?];
    v35[10] = @"contrast";
    v24 = MEMORY[0x277CCABB0];
    [a2 contrast];
    v36[10] = [v24 numberWithFloat:?];
    v35[11] = @"saturation";
    v25 = MEMORY[0x277CCABB0];
    [a2 saturation];
    v36[11] = [v25 numberWithFloat:?];
    v35[12] = @"channelEncoding";
    v36[12] = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "channelEncoding")}];
    v35[13] = @"dimensions.x";
    v26 = MEMORY[0x277CCABB0];
    [a2 dimensions];
    v36[13] = [v26 numberWithInt:v27];
    v35[14] = @"dimensions.y";
    v28 = MEMORY[0x277CCABB0];
    [a2 dimensions];
    v36[14] = [v28 numberWithInt:v29];
    v35[15] = @"highDynamicRangeCompression.x";
    v30 = MEMORY[0x277CCABB0];
    [a2 highDynamicRangeCompression];
    v36[15] = [v30 numberWithFloat:?];
    v35[16] = @"highDynamicRangeCompression.y";
    v31 = MEMORY[0x277CCABB0];
    [a2 highDynamicRangeCompression];
    LODWORD(v32) = HIDWORD(v32);
    v33 = [v31 numberWithFloat:v32];
    v35[17] = @"groundColor";
    if (v11)
    {
      v34 = v11;
    }

    else
    {
      v34 = &stru_282DCC058;
    }

    v36[16] = v33;
    v36[17] = v34;
    [a1 encodeObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionaryWithObjects:forKeys:count:", v36, v35, 18), a3}];
  }

  else
  {
    v12 = [SCNMaterialProperty copyC3DImageFromImage:a2];
    if (v12)
    {
      v13 = v12;
      [a1 encodeObject:_SCNEncodedC3DImage(a1 forKey:{v12), a3}];

      CFRelease(v13);
    }
  }
}

uint64_t SCNEncodeImageArrayForKey(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = [SCNMaterialProperty copyC3DImageFromImage:*(*(&v14 + 1) + 8 * v10)];
        if (v11)
        {
          v12 = v11;
          [v6 addObject:{_SCNEncodedC3DImage(a1, v11)}];
          CFRelease(v12);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return [a1 encodeObject:v6 forKey:a3];
}

void *SCNDecodeImageArray(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (SCNPlistClasses_onceToken != -1)
  {
    SCNDecodeC3DAnimationForKey_cold_1();
  }

  v4 = [a1 decodeObjectOfClasses:SCNPlistClasses_set forKey:a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = _SCNDecodeImageContents(*(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

void SCNEncodeImageFromMaterialPropertyTextureProviderForKey(void *a1, void *a2, uint64_t a3)
{
  v6 = MTLCreateSystemDefaultDevice();
  v7 = [a2 newTextureForDevice:v6];
  v8 = [v6 newCommandQueue];
  v9 = [v8 commandBuffer];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke;
  v15[3] = &unk_2782FF2A8;
  v15[5] = &v16;
  v15[6] = &v22;
  v15[4] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_2;
  v14[3] = &unk_2782FF2D0;
  v14[5] = &v22;
  v14[6] = &v16;
  v14[4] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_3;
  v13[3] = &unk_2782FD108;
  v13[4] = v9;
  v10 = [[_SCNCoderMaterialPropertyTextureProviderHelper alloc] initWithDevice:v6];
  if (objc_opt_respondsToSelector())
  {
    [a2 renderToTexture:v7 computeCommandHandler:v15 blitCommandHandler:v14 completionHandler:v13 helper:v10];
  }

  else
  {
    [a2 renderToTexture:v7 computeCommandHandler:v15 blitCommandHandler:v14 helper:v10];
  }

  v11 = v17[5];
  if (v11)
  {
    [v11 endEncoding];
    v17[5] = 0;
  }

  v12 = v23[5];
  if (v12)
  {
    [v12 endEncoding];
    v23[5] = 0;
  }

  [v9 commit];
  [v9 waitUntilCompleted];

  SCNEncodeMTLTextureAsDataForKey(a1, v7, 0, a3);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

void sub_21C08A0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(*(*(result + 40) + 8) + 40);
    if (v4)
    {
      [v4 endEncoding];
      *(*(*(v3 + 40) + 8) + 40) = 0;
    }

    v5 = *(*(*(v3 + 48) + 8) + 40);
    if (!v5)
    {
      *(*(*(v3 + 48) + 8) + 40) = [*(v3 + 32) computeCommandEncoder];
      v5 = *(*(*(v3 + 48) + 8) + 40);
    }

    v6 = *(a2 + 16);

    return v6(a2, v5);
  }

  return result;
}

uint64_t __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(*(*(result + 40) + 8) + 40);
    if (v4)
    {
      [v4 endEncoding];
      *(*(*(v3 + 40) + 8) + 40) = 0;
    }

    v5 = *(*(*(v3 + 48) + 8) + 40);
    if (!v5)
    {
      *(*(*(v3 + 48) + 8) + 40) = [*(v3 + 32) blitCommandEncoder];
      v5 = *(*(*(v3 + 48) + 8) + 40);
    }

    v6 = *(a2 + 16);

    return v6(a2, v5);
  }

  return result;
}

uint64_t __SCNEncodeImageFromMaterialPropertyTextureProviderForKey_block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addCompletedHandler:a2];
  }

  return result;
}

uint64_t _CAToC3DFillMode(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result isEqualToString:*MEMORY[0x277CDA240]])
    {
      return 0;
    }

    else if ([v1 isEqualToString:*MEMORY[0x277CDA238]])
    {
      return 1;
    }

    else if ([v1 isEqualToString:*MEMORY[0x277CDA228]])
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t _C3DToCAFillMode(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = MEMORY[0x277CDA228];
      return *v1;
    }

    if (a1 == 3)
    {
      v1 = MEMORY[0x277CDA230];
      return *v1;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = MEMORY[0x277CDA240];
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = MEMORY[0x277CDA238];
      return *v1;
    }
  }

  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _C3DToCAFillMode_cold_1();
  }

  return 0;
}

void *_CAToC3DAnimationEvents(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  result = [a1 count];
  if (result)
  {
    v3 = [a1 sortedArrayUsingComparator:&__block_literal_global_75];
    v4 = C3DAnimationEventsCreateWithEventCount([v3 count]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 time];
          C3DAnimationEventsAddEvent(v4, [v9 eventBlock], v10);
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

void *_C3DToCAAnimationEvents(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = C3DAnimationEventsGetCount(a1);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      EventTimeAtIndex = C3DAnimationEventsGetEventTimeAtIndex(a1, i);
      [v3 addObject:{+[SCNAnimationEvent animationEventWithKeyTime:block:](SCNAnimationEvent, "animationEventWithKeyTime:block:", C3DAnimationEventsGetEventBlockAtIndex(a1, i), EventTimeAtIndex)}];
    }
  }

  return v3;
}

__n128 *CAAnimationToC3DAnimation(void *a1, void *a2)
{
  v2 = _CAAnimationToC3DAnimation(a1, a2);
  if (v2)
  {
    TypeID = C3DAnimationGroupGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      v4 = C3DAnimationClusterCreateWithAnimationGroup(v2);
      if (v4)
      {
        v5 = v4;
        v6 = v4;
        v2 = v5;
      }
    }

    if ((C3DAnimationGetIsSceneTimeBased(v2) & 1) == 0)
    {
      PauseTime = C3DAnimationNodeGetPauseTime(v2);
      if (PauseTime != 0.0)
      {
        v8 = PauseTime;
        C3DTransactionGetAtomicTime();
        C3DAnimationNodeSetPauseTime(v2, v8 - v9);
      }
    }
  }

  return v2;
}

uint64_t SCNAnimationGetTargetedBaseType(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 fromValue])
    {
      v2 = [a1 fromValue];
    }

    else if ([a1 toValue])
    {
      v2 = [a1 toValue];
    }

    else
    {
      v2 = [a1 byValue];
    }

    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a1;
      v5 = "Warning: unable to infer the type of a basic animation: %@";
      goto LABEL_18;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![objc_msgSend(a1 "values")] || (v3 = objc_msgSend(objc_msgSend(a1, "values"), "objectAtIndexedSubscript:", 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a1;
      v5 = "Warning: unable to infer the type of a keyframed animation: %@";
LABEL_18:
      _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
    }

    return 0;
  }

LABEL_13:
  v6 = [v3 objCType];

  return SCNObjCEncodedTypeToC3DBaseType(v6);
}

CAMediaTimingFunction *SCNKitGetImplicitAnimationTimingFunction()
{
  result = +[SCNTransaction animationTimingFunction];
  if (!result)
  {
    v1 = MEMORY[0x277CD9EF8];
    v2 = *MEMORY[0x277CDA7A8];

    return [v1 functionWithName:v2];
  }

  return result;
}

SCNAnimationPlayer *SCNConvertC3DAnimationDictionaryFunc(uint64_t a1, uint64_t a2, void *a3)
{
  result = [SCNAnimationPlayer animationPlayerWithAnimationPlayerRef:a2];
  if (result)
  {

    return [a3 setValue:result forKey:a1];
  }

  return result;
}

_WORD *CABasicAnimationToC3DAnimation(void *a1, int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CABasicAnimationToC3DAnimation_cold_1();
    }

    return 0;
  }

  v5 = a2;
  if (!a2)
  {
    if ([a1 toValue])
    {
      v7 = [a1 toValue];
LABEL_11:
      v5 = SCNObjCEncodedTypeToC3DBaseType([v7 objCType]);
      goto LABEL_12;
    }

    if ([a1 fromValue])
    {
      v7 = [a1 fromValue];
      goto LABEL_11;
    }

    if ([a1 byValue])
    {
      v7 = [a1 byValue];
      goto LABEL_11;
    }

    v5 = 0;
  }

LABEL_12:
  v8 = C3DValueCreate(v5, 1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Bytes = C3DValueGetBytes(v8);
  v11 = C3DSimpleAnimationCreate();
  C3DAnimationSetupWithCAPropertyAnimation(v11, a1);
  if ([a1 toValue] && __SCNAnimationTargetCopyValueToAddress(objc_msgSend(a1, "toValue"), v5, a3, Bytes))
  {
    C3DSimpleAnimationSetEndValue(v11, v9);
  }

  if ([a1 fromValue] && __SCNAnimationTargetCopyValueToAddress(objc_msgSend(a1, "fromValue"), v5, a3, Bytes))
  {
    C3DSimpleAnimationSetStartValue(v11, v9);
  }

  if ([a1 byValue] && __SCNAnimationTargetCopyValueToAddress(objc_msgSend(a1, "byValue"), v5, a3, Bytes))
  {
    C3DSimpleAnimationSetByValue(v11, v9);
  }

  CFRelease(v9);

  return v11;
}

void C3DAnimationSetupWithCAPropertyAnimation(_WORD *a1, void *a2)
{
  C3DAnimationSetupWithCAAnimation(a1, a2);
  v4 = C3DCreatePathComponentsFromString([a2 keyPath]);
  C3DAnimationSetKeyPath(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  C3DAnimationSetAdditive(a1, [a2 isAdditive]);
  v5 = [a2 isCumulative];

  C3DAnimationSetCumulative(a1, v5);
}

uint64_t __SCNAnimationTargetCopyValueToAddress(void *a1, int a2, int a3, __C3DImage **a4)
{
  if (a2 == 5)
  {
    if (a3 == 2)
    {
      v5 = [SCNMaterialProperty copyC3DImageFromImage:a1];
      result = 0;
      if (a4)
      {
        if (v5)
        {
          *a4 = v5;
          v7 = v5;
          return 1;
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

    return SCNWriteValueToTypedBytes(a1, a4, a2);
  }

  return result;
}

_WORD *CAKeyframeAnimationToC3DAnimation(void *a1, unsigned int a2, char a3)
{
  v57 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 c3dAnimation];
    if (v6)
    {
      v7 = v6;
      SCNAnimationSetupDelegateWithCAAnimation(v6, a1);
      return v7;
    }
  }

  if (!a2)
  {
    if ([objc_msgSend(a1 "values")])
    {
      a2 = SCNObjCEncodedTypeToC3DBaseType([objc_msgSend(objc_msgSend(a1 "values")]);
    }

    else
    {
      a2 = 0;
    }
  }

  if (C3DSizeOfBaseType(a2) >= 0x41)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CAKeyframeAnimationToC3DAnimation_cold_2();
    }

    return 0;
  }

  if ([a1 path])
  {
    NSLog(&cfstr_Cakeyframeanim.isa);
    return 0;
  }

  v10 = [objc_msgSend(a1 "values")];
  if (!v10)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CAKeyframeAnimationToC3DAnimation_cold_1();
    }

    return 0;
  }

  v46 = v10;
  v47 = C3DKeyframedAnimationCreate();
  C3DAnimationSetupWithCAPropertyAnimation(v47, a1);
  v11 = [a1 keyTimes];
  v55 = [a1 values];
  v12 = [a1 timingFunctions];
  v13 = [a1 calculationMode];
  v14 = [a1 tensionValues];
  v15 = [a1 continuityValues];
  v16 = [a1 biasValues];
  v54 = [v11 count];
  v17 = [v12 count];
  v50 = v14;
  v53 = [v14 count];
  v49 = v15;
  v52 = [v15 count];
  v48 = v16;
  v51 = [v16 count];
  [a1 duration];
  v19 = v18;
  v45 = *MEMORY[0x277CDA058];
  if ([v13 isEqualToString:?])
  {
    v20 = 1;
  }

  else
  {
    v20 = [v13 isEqualToString:*MEMORY[0x277CDA060]];
  }

  v22 = C3DKeyframeControllerCreateWithCapacity(v46, a2, a3, 0, v17 != 0, v20, v20);
  memset(__src, 0, sizeof(__src));
  v23 = v46;
  v24 = 0;
  v25 = 0.0;
  if (v20)
  {
    while (v11)
    {
      if (v54 > v24)
      {
        [objc_msgSend(v11 objectAtIndex:{v24), "doubleValue"}];
LABEL_26:
        v25 = v19 * v26;
      }

      if (v17 <= v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = [v12 objectAtIndex:v24];
      }

      v28 = 0.0;
      v29 = 0.0;
      if (v53 > v24)
      {
        [objc_msgSend(v50 objectAtIndex:{v24), "floatValue"}];
        v29 = v30;
      }

      if (v52 > v24)
      {
        [objc_msgSend(v49 objectAtIndex:{v24), "floatValue"}];
        v28 = v31;
      }

      v32 = 0.0;
      if (v51 > v24)
      {
        [objc_msgSend(v48 objectAtIndex:{v24), "floatValue"}];
        v32 = v33;
      }

      SCNWriteValueToTypedBytes([v55 objectAtIndex:v24], __src, a2);
      v34 = v25;
      v25 = v34;
      v35 = SCNInterpolationModeFromCACalculationMode(v13);
      v36 = C3DTimingFunctionFromCAMediaTimingFunction(v27);
      C3DKeyframeControllerSetKeyframeAtIndex(v22, v24++, __src, v35, v36, 0, 0, v25, v29, v28, v32);
      if (v46 == v24)
      {
        goto LABEL_47;
      }
    }

    v26 = (v24 / v23);
    goto LABEL_26;
  }

  do
  {
    if (v11)
    {
      if (v54 <= v24)
      {
        goto LABEL_43;
      }

      [objc_msgSend(v11 objectAtIndex:{v24), "doubleValue"}];
    }

    else
    {
      v37 = (v24 / v23);
    }

    v25 = v19 * v37;
LABEL_43:
    if (v17 <= v24)
    {
      v38 = 0;
    }

    else
    {
      v38 = [v12 objectAtIndex:v24];
    }

    SCNWriteValueToTypedBytes([v55 objectAtIndex:v24], __src, a2);
    v39 = v25;
    v25 = v39;
    v40 = SCNInterpolationModeFromCACalculationMode(v13);
    v41 = C3DTimingFunctionFromCAMediaTimingFunction(v38);
    C3DKeyframeControllerSetKeyframeAtIndex(v22, v24++, __src, v40, v41, 0, 0, v25, 0.0, 0.0, 0.0);
  }

  while (v46 != v24);
LABEL_47:
  v42 = [a1 calculationMode];
  if (v42 == *MEMORY[0x277CDA068])
  {
    v43 = v22;
    v44 = 1;
    goto LABEL_54;
  }

  if (v42 == *MEMORY[0x277CDA078])
  {
    C3DKeyframeControllerSetCalculationMode(v22, 1);
  }

  else
  {
    if (v42 == v45)
    {
      goto LABEL_52;
    }

    if (v42 == *MEMORY[0x277CDA060])
    {
      C3DKeyframeControllerSetCalculationMode(v22, 1);
LABEL_52:
      v43 = v22;
      v44 = 2;
LABEL_54:
      C3DKeyframeControllerSetDefaultInterpolationMode(v43, v44);
    }
  }

  C3DKeyframedAnimationSetController(v47, v22);
  CFRelease(v22);
  return v47;
}

uint64_t SCNAnimationSetupDelegateWithCAAnimation(uint64_t a1, void *a2)
{
  AnimationCallbacks = C3DAnimationGetAnimationCallbacks(a1);
  [a2 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *AnimationCallbacks = SCNAnimationDidStart;
  }

  AnimationCallbacks[1] = SCNAnimationDidStop;
  return result;
}

_WORD *_CAAnimationToC3DAnimation(void *a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        _CAAnimationToC3DAnimation_cold_1();
      }

      return 0;
    }

    v5 = [a2 copyAnimationChannelForKeyPath:objc_msgSend(a1 animation:{"keyPath"), a1}];
    if (v5 && (v6 = C3DCFTypeCopyModelInfoAtSplittedPath([a2 __CFObject], v5, 0, 1)) != 0)
    {
      v7 = v6;
      if (C3DModelTargetGetTargetAddress(v6))
      {
        BaseType = C3DModelTargetGetBaseType(v7);
        TypeSemantic = C3DModelTargetGetTypeSemantic(v7);
      }

      else
      {
        TypeSemantic = 0;
        BaseType = 0;
      }

      CFRelease(v7);
    }

    else
    {
      TypeSemantic = 0;
      BaseType = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = CABasicAnimationToC3DAnimation(a1, BaseType, TypeSemantic);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = scn_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          _CAAnimationToC3DAnimation_cold_2();
        }

        v11 = 0;
        goto LABEL_26;
      }

      v12 = CAKeyframeAnimationToC3DAnimation(a1, BaseType, TypeSemantic);
    }

    v11 = v12;
    if (v5 && v12)
    {
      C3DAnimationSetKeyPath(v12, v5);
    }

LABEL_26:

    return v11;
  }

  return CAAnimationGroupToC3DAnimation(a1, a2);
}

id C3DAnimationToCAAnimation(const void *a1)
{
  v1 = _C3DAnimationToCAAnimation(a1);
  [v1 beginTime];
  if (v2 != 0.0 && ([v1 usesSceneTimeBase] & 1) == 0)
  {
    v3 = CACurrentMediaTime();
    [v1 beginTime];
    [v1 setBeginTime:v3 + v4];
  }

  return v1;
}

id _C3DAnimationToCAAnimation(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == C3DKeyframedAnimationGetTypeID())
    {
      if (C3DKeyframedAnimationGetController(a1))
      {
        v3 = objc_alloc_init(SCN_CAKeyframeAnimation);
        [(SCN_CAKeyframeAnimation *)v3 setC3dAnimation:a1];
        v4 = v3;
LABEL_8:
        v5 = v4;
LABEL_36:
        [v5 setDuration:C3DAnimationGetDuration(a1)];
        return v5;
      }
    }

    else
    {
      if (v2 == C3DAnimationGroupGetTypeID())
      {
        v4 = SCNAnimationGroupToCAAnimationGroup(a1);
        goto LABEL_8;
      }

      if (v2 == C3DSimpleAnimationGetTypeID())
      {
        v5 = [MEMORY[0x277CD9E10] animation];
        started = C3DSimpleAnimationCopyStartValue(a1);
        if (started)
        {
          v7 = started;
          Bytes = C3DValueGetBytes(started);
          Type = C3DValueGetType(v7);
          v14 = SCNNSValueFromTypedBytes(Bytes, Type, v10, v11, v12, v13);
          if (v14)
          {
            [v5 setFromValue:v14];
          }

          else
          {
            v18 = scn_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: SCNSimpleAnimationToCABasicAnimation - can't convert startValue", buf, 2u);
            }
          }

          CFRelease(v7);
        }

        v19 = C3DSimpleAnimationCopyEndValue(a1);
        if (v19)
        {
          v20 = v19;
          v21 = C3DValueGetBytes(v19);
          v22 = C3DValueGetType(v20);
          v27 = SCNNSValueFromTypedBytes(v21, v22, v23, v24, v25, v26);
          if (v27)
          {
            [v5 setToValue:v27];
          }

          else
          {
            v28 = scn_default_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *v41 = 0;
              _os_log_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_DEFAULT, "Warning: SCNSimpleAnimationToCABasicAnimation - can't convert endValue", v41, 2u);
            }
          }

          CFRelease(v20);
        }

        v29 = C3DSimpleAnimationCopyByValue(a1);
        if (v29)
        {
          v30 = v29;
          v31 = C3DValueGetBytes(v29);
          v32 = C3DValueGetType(v30);
          v37 = SCNNSValueFromTypedBytes(v31, v32, v33, v34, v35, v36);
          if (v37)
          {
            [v5 setByValue:v37];
          }

          else
          {
            v38 = scn_default_log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *v40 = 0;
              _os_log_impl(&dword_21BEF7000, v38, OS_LOG_TYPE_DEFAULT, "Warning: SCNSimpleAnimationToCABasicAnimation - can't convert byValue", v40, 2u);
            }
          }

          CFRelease(v30);
        }

        CAPropertyAnimationSetupWithSCNAnimation(v5, a1);
        goto LABEL_36;
      }

      if (v2 == C3DAnimationClusterGetTypeID())
      {
        v15 = C3DAnimationGroupCreateWithAnimationCluster(a1);
        v5 = SCNAnimationGroupToCAAnimationGroup(v15);
        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_36;
      }

      v16 = CFCopyTypeIDDescription(v2);
      v17 = scn_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        _C3DAnimationToCAAnimation_cold_1();
      }

      CFRelease(v16);
    }

    v5 = 0;
    goto LABEL_36;
  }

  return 0;
}

__CFString *SCNCreateAnimationChannelWithObjectAndPath(void *a1, __CFString *a2)
{
  if (![(__CFString *)a2 length])
  {
    return 0;
  }

  v4 = [a1 __CFObject];
  v5 = C3DCreatePathComponentsFromString(a2);
  v6 = C3DCFTypeCopyModelInfoAtSplittedPath(v4, v5, 0, 0);
  v7 = v6;
  if (v6 && C3DModelTargetGetTargetAddress(v6))
  {
    v8 = v5;
LABEL_14:
    CFRelease(v7);
    return v8;
  }

  v9 = SCNCopyValueFromObjCProperty(a1, a2);
  if (v9)
  {
    v10 = v9;
    v11 = [a1 __CFObject];
    if (CFTypeIsC3DEntity(v11) && (C3DEntitySetValueForKey(v11, a2, v10), C3DEntityGetValueForKey(v11, a2)))
    {
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[__CFString count](v5, "count") + 1}];
      [(__CFString *)v8 addObject:@"customProperty"];
      [(__CFString *)v8 addObjectsFromArray:v5];
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  if (v7)
  {
    goto LABEL_14;
  }

  return v8;
}

uint64_t SCNAddAnimation(void *a1, void *a2, const void *a3)
{
  if (!a3 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a1)
    {
LABEL_4:
      result = [a1 animationPlayerRef];
      if (result)
      {
        v15 = result;
        v16 = [a2 __CFObject];
        if (v16)
        {
          v17 = v16;
          if ((CFTypeIsC3DEntity(v16) & 1) == 0)
          {
            v18 = scn_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              SCNAddAnimation_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
            }
          }

          C3DEntityAddAnimationForKey(v17, v15, a3);
        }

        return 1;
      }

      return result;
    }
  }

  else if (a1)
  {
    goto LABEL_4;
  }

  v26 = scn_default_log();
  result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  if (result)
  {
    SCNAddAnimation_cold_3();
    return 0;
  }

  return result;
}

void SCNRemoveAnimation(void *a1, const void *a2)
{
  v3 = [a1 __CFObject];
  if (v3)
  {
    v4 = v3;
    if ((CFTypeIsC3DEntity(v3) & 1) == 0)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        SCNRemoveAnimation_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    C3DEntityRemoveAnimationForKey(v4, a2, 0);
  }
}

void SCNFadeAndRemoveAnimation(void *a1, const void *a2, double a3)
{
  v5 = [a1 __CFObject];
  if (v5)
  {
    v6 = v5;
    if ((CFTypeIsC3DEntity(v5) & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        SCNFadeAndRemoveAnimation_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    C3DEntityFadeAndRemoveAnimationForKey(v6, a2, a3);
  }
}

void SCNRemoveAllAnimations(void *a1)
{
  v1 = [a1 __CFObject];
  if (v1)
  {
    v2 = v1;
    if ((CFTypeIsC3DEntity(v1) & 1) == 0)
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        SCNRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    C3DEntityRemoveAllAnimations(v2);
  }
}

void SCNFadeAndRemoveAllAnimations(void *a1, double a2)
{
  v3 = [a1 __CFObject];
  if (v3)
  {
    v4 = v3;
    if ((CFTypeIsC3DEntity(v3) & 1) == 0)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        SCNFadeAndRemoveAllAnimations_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    C3DEntityFadeAndRemoveAllAnimations(v4, a2);
  }
}

void sub_21C08FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SCNAnimationDidStart(uint64_t a1)
{
  Animation = C3DAnimationNodeGetAnimation(a1);
  ObjCWrapper = C3DEntityGetObjCWrapper(Animation);
  v4 = [ObjCWrapper userAnimation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
  }

  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __SCNAnimationDidStart_block_invoke;
    v10[3] = &unk_2782FC790;
    v10[4] = v5;
    v10[5] = v4;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  result = [ObjCWrapper animationDidStart];
  if (result)
  {
    v7 = result;
    Owner = C3DAnimationNodeGetOwner(a1);
    v9 = C3DEntityGetObjCWrapper(Owner);
    return (*(v7 + 16))(v7, ObjCWrapper, v9);
  }

  return result;
}

uint64_t SCNAnimationDidStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v43 = *MEMORY[0x277D85DE8];
  Animation = C3DAnimationNodeGetAnimation(a1);
  v8 = C3DEntityGetObjCWrapper(Animation);
  v9 = [v8 userAnimation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 delegate];
  }

  else
  {
    v10 = 0;
  }

  if (!C3DAnimationGetRemoveOnCompletion(Animation))
  {
    goto LABEL_29;
  }

  Owner = C3DAnimationNodeGetOwner(v6);
  ObjCWrapper = C3DEntityGetObjCWrapper(Owner);
  if (C3DAnimationGetCommitWhenDone(Animation))
  {
    TypeID = C3DAnimationClusterGetTypeID();
    if (TypeID == CFGetTypeID(Animation))
    {
      v34 = a4;
      v35 = v10;
      v33 = a2;
      v14 = C3DAnimationClusterCopyKeyPaths(Animation);
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
        do
        {
          v18 = 0;
          do
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [ObjCWrapper setValue:objc_msgSend(objc_msgSend(ObjCWrapper forKeyPath:{"presentationInstance"), "valueForKeyPath:", *(*(&v38 + 1) + 8 * v18)), *(*(&v38 + 1) + 8 * v18)}];
            ++v18;
          }

          while (v16 != v18);
          v16 = [(__CFArray *)v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v16);
      }

      +[SCNTransaction commit];

      a2 = v33;
LABEL_24:
      a4 = v34;
      v10 = v35;
      goto LABEL_25;
    }

    KeyPath = C3DAnimationGetKeyPath(Animation);
    if (KeyPath)
    {
      v20 = KeyPath;
      v34 = a4;
      v35 = v10;
      if (ObjCWrapper)
      {
        v21 = a2;
        v22 = ObjCWrapper;
      }

      else
      {
        if (v6)
        {
          while (1)
          {
            Parent = C3DAnimationNodeGetParent(v6);
            v6 = Parent;
            if (!Parent)
            {
              break;
            }

            v24 = C3DAnimationNodeGetOwner(Parent);
            v25 = C3DEntityGetObjCWrapper(v24);
            if (v25)
            {
              v22 = v25;
              v21 = a2;
              goto LABEL_23;
            }
          }
        }

        v21 = a2;
        v22 = 0;
      }

LABEL_23:
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      v26 = C3DCreatePathFromComponents(v20);
      [v22 setValue:objc_msgSend(objc_msgSend(v22 forKeyPath:{"presentationInstance"), "valueForKeyPath:", v26), v26}];

      +[SCNTransaction commit];
      a2 = v21;
      goto LABEL_24;
    }
  }

LABEL_25:
  if (a2 && (!C3DIsRunningInEditor() || C3DAnimationGetIsImplicit(Animation)))
  {
    v27 = [ObjCWrapper __removeAnimation:v8 forKey:a4];
    goto LABEL_30;
  }

LABEL_29:
  v27 = 0;
LABEL_30:
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __SCNAnimationDidStop_block_invoke;
    block[3] = &unk_2782FF350;
    block[4] = v10;
    block[5] = v9;
    v37 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v28 = [v8 animationDidStop];
  if (v28)
  {
    v29 = v28;
    v30 = C3DAnimationNodeGetOwner(v6);
    v31 = C3DEntityGetObjCWrapper(v30);
    (*(v29 + 16))(v29, v8, v31, a2);
  }

  return v27;
}

void _optimizeKeyframes(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == C3DAnimationGroupGetTypeID())
  {
    AnimationCount = C3DAnimationGroupGetAnimationCount(a1);
    if (AnimationCount >= 1)
    {
      v4 = 0;
      v5 = AnimationCount & 0x7FFFFFFF;
      do
      {
        AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, v4);
        _optimizeKeyframes(AnimationAtIndex);
        ++v4;
      }

      while (v5 != v4);
    }
  }

  else
  {
    v7 = CFGetTypeID(a1);
    if (v7 == C3DKeyframedAnimationGetTypeID())
    {
      Controller = C3DKeyframedAnimationGetController(a1);
      v9 = 0;
      C3DKeyframeControllerRemoveUselessKeys(Controller, &v9);
    }
  }
}

uint64_t C3DAnimationSetupWithCAAnimation(_WORD *a1, void *a2)
{
  [a2 duration];
  v5 = v4;
  v6 = [a2 autoreverses];
  v7 = v5;
  C3DAnimationSetDuration(a1, v7);
  [a2 repeatCount];
  v9 = v8;
  [a2 repeatDuration];
  if (v9 == 0.0)
  {
    v11 = v10;
    if (v11 != 0.0 && v5 != 0.0)
    {
      v12 = v11;
      [a2 duration];
      v14 = v12 / v13;
      if (v6)
      {
        v9 = v14 * 0.5;
      }

      else
      {
        v9 = v14;
      }
    }
  }

  C3DAnimationSetRepeatCount(a1, v9);
  C3DAnimationSetAutoreverses(a1, v6);
  [a2 beginTime];
  C3DAnimationNodeSetPauseTime(a1, v15);
  [a2 timeOffset];
  C3DAnimationSetTimeOffset(a1, v16);
  [a2 speed];
  C3DAnimationSetSpeed(a1, v17);
  C3DAnimationSetRemoveOnCompletion(a1, [a2 isRemovedOnCompletion]);
  [a2 fadeInDuration];
  *&v18 = v18;
  C3DAnimationSetFadeInDuration(a1, *&v18);
  [a2 fadeOutDuration];
  *&v19 = v19;
  C3DAnimationSetFadeOutDuration(a1, *&v19);
  C3DAnimationSetCommitWhenDone(a1, [a2 commitsOnCompletion]);
  C3DAnimationSetIsSceneTimeBased(a1, [a2 usesSceneTimeBase]);
  v20 = _CAToC3DFillMode([a2 fillMode]);
  C3DAnimationSetFillModeMask(a1, v20);
  v21 = _CAToC3DAnimationEvents([a2 animationEvents]);
  C3DAnimationSetAnimationEvents(a1, v21);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a2 mass];
    v23 = v22;
    [a2 stiffness];
    v25 = v24;
    [a2 damping];
    v27 = v26;
    [a2 initialVelocity];
    v29 = v28;
    Spring = C3DTimingFunctionCreateSpring(v23, v25, v27, v29);
    C3DAnimationSetTimingFunction(a1, Spring);
    CFRelease(Spring);
  }

  else
  {
    v31 = [a2 timingFunction];
    if (v31)
    {
      v32 = C3DTimingFunctionFromCAMediaTimingFunction(v31);
      C3DAnimationSetTimingFunction(a1, v32);
    }
  }

  return SCNAnimationSetupDelegateWithCAAnimation(a1, a2);
}

uint64_t CAPropertyAnimationSetupWithSCNAnimation(void *a1, uint64_t a2)
{
  KeyPath = C3DAnimationGetKeyPath(a2);
  if (KeyPath)
  {
    v5 = C3DCreatePathFromComponents(KeyPath);
    [a1 setKeyPath:v5];
  }

  [a1 setAdditive:C3DAnimationGetAdditive(a2)];
  [a1 setCumulative:C3DAnimationGetCumulative(a2)];

  return CAAnimationSetupWithSCNAnimation(a1, a2);
}

uint64_t CAAnimationSetupWithSCNAnimation(void *a1, uint64_t a2)
{
  [a1 setDuration:C3DAnimationGetDuration(a2)];
  *&v4 = C3DAnimationGetRepeatCount(a2);
  [a1 setRepeatCount:v4];
  [a1 setAutoreverses:C3DAnimationGetAutoreverses(a2)];
  [a1 setBeginTime:C3DAnimationNodeGetPauseTime(a2)];
  [a1 setTimeOffset:C3DAnimationGetTimeOffset(a2)];
  *&v5 = C3DAnimationGetSpeed(a2);
  [a1 setSpeed:v5];
  [a1 setFadeInDuration:C3DAnimationGetFadeInDuration(a2)];
  [a1 setFadeOutDuration:C3DAnimationGetFadeOutDuration(a2)];
  [a1 setRemovedOnCompletion:C3DAnimationGetRemoveOnCompletion(a2)];
  [a1 setCommitsOnCompletion:C3DAnimationGetCommitWhenDone(a2)];
  [a1 setUsesSceneTimeBase:C3DAnimationGetIsSceneTimeBased(a2)];
  FillModeMask = C3DAnimationGetFillModeMask(a2);
  [a1 setFillMode:_C3DToCAFillMode(FillModeMask)];
  AnimationEvents = C3DAnimationGetAnimationEvents(a2);
  [a1 setAnimationEvents:_C3DToCAAnimationEvents(AnimationEvents)];
  result = C3DAnimationGetTimingFunction(a2);
  if (result)
  {
    v9 = CAMediaTimingFunctionFromC3DTimingFunction(result);

    return [a1 setTimingFunction:v9];
  }

  return result;
}

_WORD *CAAnimationGroupToC3DAnimation(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = C3DAnimationGroupCreate();
  C3DAnimationSetupWithCAAnimation(v4, a1);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a1 animations];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = CAAnimationGroupToC3DAnimation(v10, a2);
          C3DAnimationGroupAddAnimation(v4, v11);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [objc_msgSend(v10 "keyPath")];
            if (v12)
            {
              v13 = v12;
              v14 = _CAAnimationToC3DAnimation(v10, a2);
              if (v14)
              {
                C3DAnimationGroupAddAnimation(v4, v14);
              }
            }

            else
            {
              v15 = scn_default_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v22 = v10;
                v23 = 2112;
                v24 = v4;
                _os_log_error_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_ERROR, "Error: sub-animation %@ of %@ has no keyPath - ignoring", buf, 0x16u);
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  return v4;
}

id SCNAnimationGroupToCAAnimationGroup(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD9E00]);
  CAAnimationSetupWithSCNAnimation(v2, a1);
  Animations = C3DAnimationGroupGetAnimations(a1);
  if (Animations)
  {
    Count = CFArrayGetCount(Animations);
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
        v8 = _C3DAnimationToCAAnimation();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          KeyPath = C3DAnimationGetKeyPath(AnimationAtIndex);
          if (KeyPath)
          {
            [v8 setKeyPath:{objc_msgSend(KeyPath, "componentsJoinedByString:", @"."}];
          }

          else
          {
            v10 = scn_default_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *v12 = 0;
              _os_log_impl(&dword_21BEF7000, v10, OS_LOG_TYPE_DEFAULT, "Warning: SCNAnimationGroupToCAAnimationGroup - no target path", v12, 2u);
            }
          }
        }

        [v5 addObject:v8];
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  }

  [v2 setAnimations:v5];
  return v2;
}

void sub_21C096C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double C3DAnimationManagerApplyActions(uint64_t a1, double result)
{
  context[2] = *MEMORY[0x277D85DE8];
  v14 = result;
  v2 = *(a1 + 120);
  if (v2)
  {
    context[0] = a1;
    context[1] = &v14;
    *(a1 + 89) = 1;
    *(a1 + 160) = 0;
    Copy = CFDictionaryCreateCopy(0, v2);
    CFDictionaryApplyFunction(Copy, _applyActions, context);
    if (Copy)
    {
      CFRelease(Copy);
    }

    *(a1 + 89) = 0;
    v5 = *(a1 + 128);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), i);
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFArrayGetTypeID())
          {
            v11 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
            v12 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
            v13 = CFArrayGetValueAtIndex(ValueAtIndex, 2);
            _C3DAnimationManagerRemoveActionWithKey(a1, v11, v12, v13);
          }

          else
          {
            C3DAnimationManagerRemoveActionsForObject(a1, ValueAtIndex);
          }
        }
      }

      CFArrayRemoveAllValues(*(a1 + 128));
    }

    result = v14;
    *(a1 + 152) = v14;
  }

  return result;
}

void _applyActions(id *a1, CFArrayRef theArray, uint64_t *a3)
{
  v5 = *a3;
  v6 = *a3[1];
  Count = CFArrayGetCount(theArray);
  if (C3DIsRunningInEditor())
  {
    if (v6 == 0.0)
    {
      SCNActionRestoreState(a1);
      SCNActionReleaseCachedState(a1);
      SCNActionsReset(theArray);
    }

    else
    {
      SCNActionSaveStateIfNeeded(a1);
      if (v6 < *(v5 + 152))
      {
        SCNActionRestoreState(a1);
        SCNActionsReset(theArray);
        if (Count < 1)
        {
          return;
        }

        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          SCNActionApply(ValueAtIndex, a1, 0.0);
        }
      }
    }
  }

  if (Count >= 1)
  {
    for (j = 0; j < Count; ++j)
    {
      v11 = CFArrayGetValueAtIndex(theArray, j);
      if (!SCNActionIsPaused(v11))
      {
        if (SCNActionApply(v11, a1, v6))
        {
          CFRetain(a1);
          CFRetain(v11);
          SCNActionWasRemovedFromTargetAtTime(v11, a1, v6);
          CFArrayRemoveValueAtIndex(theArray, j--);
          --Count;
          SCNActionDidFinish(v11, a1);
          CFRelease(v11);
          CFRelease(a1);
        }

        else
        {
          ++*(v5 + 160);
        }
      }
    }
  }
}

void _C3DAnimationManagerRemoveActionWithKey(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 120);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, a2);
    if (Value)
    {
      v10 = Value;
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
          HasKey = SCNActionHasKey(ValueAtIndex, a3);
          v16 = !a4 || ValueAtIndex == a4;
          v17 = v16;
          if (HasKey && v17)
          {
            break;
          }

          if (v12 == ++v13)
          {
            return;
          }
        }

        if (*(a1 + 89) == 1)
        {
          Mutable = *(a1 + 128);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            *(a1 + 128) = Mutable;
          }

          v21[0] = a2;
          v21[1] = a3;
          v21[2] = ValueAtIndex;
          v19 = CFArrayCreate(0, v21, 3, MEMORY[0x277CBF128]);
          CFArrayAppendValue(Mutable, v19);
        }

        else
        {
          CFArrayRemoveValueAtIndex(v10, v13);
          if (v12 == 1)
          {
            v20 = *(a1 + 120);

            CFDictionaryRemoveValue(v20, a2);
          }
        }
      }
    }
  }
}

void C3DAnimationManagerRemoveActionsForObject(uint64_t a1, void *key)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    if (*(a1 + 89) == 1)
    {
      Mutable = *(a1 + 128);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        *(a1 + 128) = Mutable;
      }

      CFArrayAppendValue(Mutable, key);
    }

    else if (CFDictionaryGetValue(v3, key))
    {
      v6 = *(a1 + 120);

      CFDictionaryRemoveValue(v6, key);
    }
  }
}

void C3DAnimationManagerAddAction(uint64_t a1, void *key, const void *a3)
{
  Mutable = *(a1 + 120);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 120) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    CFDictionaryAddValue(*(a1 + 120), key, Value);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a3);
}

CFTypeRef C3DCommonProfileShaderAssignAttributesAndUniformsIndexes(CFTypeRef cf)
{
  if (C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_onceToken != -1)
  {
    C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_cold_1();
  }

  _C3DFXGLSLProgramSetUniformDictionary(cf, C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol);
  v2 = C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol;

  return _C3DFXGLSLProgramSetAttributesDictionary(cf, v2);
}

void __C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = MEMORY[0x277CBF138];
  C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_skinningWeights", 0xD);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_skinningJoints", 0xE);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_position", 0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_normal", 1);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_vertexColor", 2);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_TexTangent", 3);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_diffuseTexcoord", 4);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_ambientTexcoord", 5);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_specularTexcoord", 6);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_emissionTexcoord", 7);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_filterTexcoord", 8);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_transparentTexcoord", 9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_normalTexcoord", 0xA);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_attributeIndexToSymbol, @"a_lightmapTexcoord", 0xC);
  C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol = CFDictionaryCreateMutable(v0, 0, v1, 0);
  C3DShaderFeedStandardUniformsToIndex(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_cameraPosition", 0x11);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_nodeOpacity", 9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_skinningJointMatrices", 0xBA);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_materialShininess", 0x93);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientColor", 0x98);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientIntensity", 0x99);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientTexture", 0x9A);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientTextureMatrix", 0x9B);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseColor", 0x94);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseIntensity", 0x95);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseTexture", 0x96);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_diffuseTextureMatrix", 0x97);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularColor", 0x9C);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularIntensity", 0x9D);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularTexture", 0x9E);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_specularTextureMatrix", 0x9F);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionColor", 0xA0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionIntensity", 0xA1);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionTexture", 0xA2);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_emissionTextureMatrix", 0xA3);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyColor", 0xA4);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyIntensity", 0xA5);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyTexture", 0xA6);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_multiplyTextureMatrix", 0xA7);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparency", 0xA8);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentColor", 0xA9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentIntensity", 0xAA);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentTexture", 0xAB);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_transparentTextureMatrix", 0xAC);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_normalTexture", 0xAD);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_normalIntensity", 0xAE);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_normalTextureMatrix", 0xAF);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_shininessTexture", 0xB0);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_shininessTextureMatrix", 0xB1);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_lightmapTexture", 0xB2);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveColor", 0xB3);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveIntensity", 0xB4);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveTexture", 0xB5);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_reflectiveTextureMatrix", 0xB6);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_fresnel", 0xB7);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_ambientLightColor", 0xB8);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_shCoefficients", 0xB9);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_fogColor", 0xBE);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_fogParameters", 0xBF);
  v2 = 0;
  for (i = 33; i != 161; i += 16)
  {
    v4 = CFStringCreateWithFormat(0, 0, @"u_light%d_attenuation", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v4, (i - 10));
    CFRelease(v4);
    v5 = CFStringCreateWithFormat(0, 0, @"u_light%d_spotAttenuation", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v5, (i - 9));
    CFRelease(v5);
    v6 = CFStringCreateWithFormat(0, 0, @"u_light%d_color", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v6, (i - 15));
    CFRelease(v6);
    v7 = CFStringCreateWithFormat(0, 0, @"u_light%d_position", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v7, (i - 14));
    CFRelease(v7);
    v8 = CFStringCreateWithFormat(0, 0, @"u_light%d_direction", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v8, (i - 13));
    CFRelease(v8);
    v9 = CFStringCreateWithFormat(0, 0, @"u_light%d_up", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v9, (i - 12));
    CFRelease(v9);
    v10 = CFStringCreateWithFormat(0, 0, @"u_light%d_right", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v10, (i - 11));
    CFRelease(v10);
    v11 = CFStringCreateWithFormat(0, 0, @"u_light%d_gobo", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v11, (i - 8));
    CFRelease(v11);
    v12 = CFStringCreateWithFormat(0, 0, @"u_light%d_goboMatrix", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v12, (i - 7));
    CFRelease(v12);
    v13 = CFStringCreateWithFormat(0, 0, @"u_light%d_goboIntensity", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v13, (i - 6));
    CFRelease(v13);
    v14 = CFStringCreateWithFormat(0, 0, @"u_light%d_iesMatrix", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v14, (i - 4));
    CFRelease(v14);
    v15 = CFStringCreateWithFormat(0, 0, @"u_light%d_iesTex", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v15, (i - 5));
    CFRelease(v15);
    v16 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadow", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v16, (i - 3));
    CFRelease(v16);
    v17 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadowMatrix", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v17, (i - 2));
    CFRelease(v17);
    v18 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadowRadius", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v18, (i - 1));
    CFRelease(v18);
    v19 = CFStringCreateWithFormat(0, 0, @"u_light%d_shadowColor", v2);
    CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, v19, i);
    CFRelease(v19);
    v2 = (v2 + 1);
  }

  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_zRange", 0xBB);
  CFDictionarySetValue(C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol, @"u_orientationPreserved", 0xBC);
  v20 = C3DCommonProfileShaderAssignAttributesAndUniformsIndexes_uniformIndexToSymbol;

  CFDictionarySetValue(v20, @"u_shadowKernel", 0xBD);
}

C3D::RenderProbePass *C3D::RenderProbePass::RenderProbePass(C3D::RenderProbePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DNode *a4, int a5, MTLPixelFormat a6)
{
  v12[0] = 0;
  v12[1] = a4;
  memset(&v12[2], 0, 24);
  v13 = xmmword_21C27FD10;
  v14 = 1;
  v15 = 64;
  v16 = 0x1000000;
  v17 = 0;
  v18 = 2;
  v9 = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v12);
  *v9 = &unk_282DC5F18;
  if (!C3DNodeGetLight(*(v9 + 31)))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3D::RenderProbePass::RenderProbePass(v10);
    }
  }

  *(this + 1340) = a5;
  *(this + 671) = a6;
  return this;
}

void C3D::RenderProbePass::setup(C3D::RenderProbePass *this)
{
  C3D::Pass::setOutputCount(this, 2u);
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 64) = 1;
  *(v2 + 8) = "PROBE";
  v3 = *(v2 + 66);
  *(v2 + 66) = v3 & 0xFFEF;
  v4 = *(this + 2680);
  v5 = *(this + 671);
  *(v2 + 16) = v4;
  *(v2 + 18) = v4;
  *(v2 + 20) = 0;
  *(v2 + 24) = 517;
  *(v2 + 28) = v5;
  *(v2 + 32) = 0;
  *(v2 + 30) = 5;
  *(v2 + 66) = v3 & 0xFFEC | 2;
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v6 + 64) = 2;
  *(v6 + 8) = "DEPTH";
  v7 = *(v6 + 66) | 0x18;
  *(v6 + 66) = v7;
  v8 = *(this + 2680);
  *(v6 + 16) = v8;
  *(v6 + 18) = v8;
  *(v6 + 20) = 0;
  *(v6 + 24) = 517;
  *(v6 + 28) = 252;
  *(v6 + 30) = 0;
  *(v6 + 32) = 0;
  *(v6 + 66) = v7 & 0xFFFC | 2;

  C3D::DrawNodesPass::setup(this);
}

void sub_21C099360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

uint64_t C3DAuthoringEnvironment2Create(uint64_t a1)
{
  v1 = [SCNScene sceneWithSceneRef:a1];
  v2 = [SCNAuthoringEnvironment2 alloc];

  return [(SCNAuthoringEnvironment2 *)v2 initWithScene:v1];
}

uint64_t C3DAuthoringEnvironment2NodeAddedToScene(void *a1, id *a2)
{
  ObjCWrapper = C3DEntityGetObjCWrapper(a2);

  return [a1 addedNode:ObjCWrapper];
}

id *C3DAuthoringEnvironment2NodeRemovedFromScene(void *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a2);
  if (result)
  {

    return [a1 removedNode:result];
  }

  return result;
}

uint64_t C3DFXTechniqueCreateAuthoring()
{
  v0 = C3DDictionaryNamed(@"C3DFXAuthoring.plist");

  return C3DFXTechniqueCreateWithDescription(v0, 0);
}

id SCNCreateFuntionConstants(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6, uint64_t a7)
{
  v72 = *MEMORY[0x277D85DE8];
  CommonProfile = C3DMaterialGetCommonProfile(a7);
  if (a3)
  {
    v13 = C3DMeshContainsSourcesWithSemantic(a3, 1);
    if (a6)
    {
LABEL_3:
      v42 = (*a6 & 1) == 0;
      v41 = (*a6 & 2) == 0;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v42 = 0;
  v41 = 0;
LABEL_6:
  LightingModel = C3DEffectCommonProfileGetLightingModel(CommonProfile);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v47 = a1;
  v44 = a6;
  v45 = a4;
  if (a3)
  {
    v15 = C3DMeshContainsSourcesWithSemantic(a3, 2);
  }

  else
  {
    v15 = 0;
  }

  LOBYTE(v56) = v15;
  BYTE1(v56) = 1;
  BYTE2(v56) = v13;
  ElementsCount = C3DMeshGetElementsCount(a3);
  if (ElementsCount >= 1)
  {
    v17 = ElementsCount;
    v18 = 0;
    for (i = 0; i != v17; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a3, i, 1);
      v18 |= C3DMeshElementGetType(ElementAtIndex) == 3;
    }

    BYTE11(v68) = v18;
  }

  v21 = 0;
  v55 = 0;
  do
  {
    if (C3DEffectCommonProfileIsUsingMappingChannel(CommonProfile, v21))
    {
      if (a3 && C3DMeshGetSourceWithSemanticAtIndex(a3, 3, v21, 1))
      {
        *(&v55 + v21) = 1;
      }

      else
      {
        v22 = scn_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v54 = v21;
          _os_log_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_DEFAULT, "Warning: MappingChannel %d needed but not available", buf, 8u);
        }
      }
    }

    ++v21;
  }

  while (v21 != 8);
  *(&v56 + 4) = v55;
  BYTE12(v56) = v56;
  *(&v56 + 13) = 257;
  HIBYTE(v56) = 1;
  v52 = 0;
  *buf = 0;
  *(&v71 + 1) = -1;
  if (C3DEffectCommonProfileIsUsingSelfIllumination(CommonProfile))
  {
    SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 9, &v57 + 3, &v57 + 10, &v60 + 15, &v59, &v64 + 3, &v62 + 2, &v67);
    BYTE8(v68) = BYTE3(v57);
  }

  else
  {
    SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 0, &v57 + 3, &v57 + 10, &v60 + 15, &v59, &v64 + 3, &v62 + 2, &v67);
  }

  if (C3DEffectCommonProfileIsUsingAmbientOcclusion(CommonProfile))
  {
    SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 8, &v57, &v57 + 11, &v61, &v59 + 1, &v65, &v62 + 3, &v67 + 1);
    BYTE9(v68) = v57;
  }

  else if (((C3DEffectCommonProfileGetEnableLockAmbientWithDiffuse(CommonProfile) | v41) & 1) == 0)
  {
    SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 1, &v57, &v57 + 11, &v61, &v59 + 1, &v65, &v62 + 3, &v67 + 1);
  }

  SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 2, &v57 + 1, &v57 + 7, &v60 + 12, &v58 + 1, &v64, &v61 + 3, &v66 + 1);
  if ((LightingModel & 0xFFFFFFFE) == 2)
  {
    SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 3, &v57 + 2, &v57 + 13, &v61 + 2, &v59 + 3, &v65 + 2, &v63 + 1, &v67 + 3);
  }

  SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 4, &v57 + 5, &v57 + 14, &v61 + 3, &v60, buf, buf, buf);
  SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 5, &v57 + 6, &v57 + 9, &v60 + 14, &v58 + 3, &v64 + 2, &v62 + 1, &v66 + 3);
  SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 6, &v57 + 4, &v57 + 12, &v61 + 1, &v59 + 2, &v65 + 1, &v63, &v67 + 2);
  SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 7, &v52, &v57 + 8, &v60 + 13, &v58 + 2, &v64 + 1, &v62, &v66 + 2);
  if (LightingModel == 5)
  {
    SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 11, &v52, &v58, &v61 + 4, &v60 + 1, &v65 + 3, &v63 + 2, &v68);
    SCNStandardConstants::_setPropertyFlags(&v56, CommonProfile, 10, &v52, &v58 + 1, &v61 + 5, &v60 + 2, &v66, &v63 + 3, &v68 + 1);
  }

  v23 = 0;
  BYTE3(v56) = BYTE8(v57);
  v51 = 0;
  v50 = 0;
  v49 = 1;
  if (BYTE7(v57) == 1)
  {
    EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 2, 0);
    C3DEffectSlotGetTextureInfo(EffectSlot, &v51, &v50, &v49);
    v23 = v49 & v50;
  }

  BYTE12(v68) = v23 & 1;
  if (BYTE14(v57) == 1)
  {
    v48 = 0;
    v25 = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 4, 0);
    C3DEffectSlotGetTextureInfo(v25, &v48, &v52, &v52);
    if (v48 == 4)
    {
      HIWORD(v57) = 256;
    }
  }

  IsDoubleSided = C3DMaterialIsDoubleSided(a7);
  v27 = v42 && v13;
  if ((LightingModel & 0xFFFFFFFB) == 0)
  {
    v27 = 0;
  }

  BYTE9(v69) = IsDoubleSided;
  LODWORD(v69) = LightingModel;
  if (LightingModel == 5)
  {
    v27 = 1;
  }

  BYTE4(v69) = v27;
  if (v44 && LightingModel == 5)
  {
    BYTE10(v69) = (*v44 & 0x70) != 0;
    LOBYTE(v28) = 1;
  }

  else
  {
    BYTE10(v69) = 0;
    if (LightingModel == 5)
    {
      LOBYTE(v28) = 1;
    }

    else
    {
      LOBYTE(v28) = 0;
      if (v44)
      {
        v28 = (*v44 >> 1) & 1;
      }
    }
  }

  BYTE5(v69) = v28;
  if (a5 < 1)
  {
    v32 = 0;
  }

  else if ((*(v45 + 1) & 0x10) != 0)
  {
    v32 = 1;
  }

  else
  {
    v29 = 1;
    do
    {
      v30 = v29;
      if (a5 == v29)
      {
        break;
      }

      v31 = *(v45 + 4 * v29++);
    }

    while ((v31 & 0x1000) == 0);
    v32 = v30 < a5;
  }

  BYTE6(v69) = v32;
  BYTE7(v69) = C3DEffectCommonProfileIsPerPixelLit(CommonProfile) ^ 1;
  FloatProperty = C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18);
  BYTE7(v61) = FloatProperty != 1.0;
  if (BYTE5(v57) == 1)
  {
    BYTE6(v61) = C3DEffectCommonProfileGetFloatProperty(CommonProfile, 20) != 0.0;
    if ((BYTE7(v61) & 1) == 0)
    {
LABEL_61:
      v34 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    BYTE6(v61) = 0;
    if (FloatProperty == 1.0)
    {
      goto LABEL_61;
    }
  }

  v34 = C3DEffectCommonProfileGetTransparencyMode(CommonProfile) == 1;
LABEL_64:
  BYTE8(v61) = v34;
  BYTE13(v68) = (BYTE9(v57) | v50) & 1;
  v35 = 4;
  if (a5 < 4)
  {
    v35 = a5;
  }

  if (v35 > 2)
  {
    if (v35 != 3)
    {
      DWORD2(v70) = *(v45 + 12);
    }

    DWORD1(v70) = *(v45 + 8);
    goto LABEL_73;
  }

  if (v35 == 1)
  {
LABEL_74:
    HIDWORD(v69) = *v45;
    goto LABEL_75;
  }

  if (v35 == 2)
  {
LABEL_73:
    LODWORD(v70) = *(v45 + 4);
    goto LABEL_74;
  }

LABEL_75:
  BYTE12(v70) = C3DNodeGetOpacity(v47) < 1.0;
  IsDynamicBatchingEnabled = C3DGeometryIsDynamicBatchingEnabled(a2);
  if (BYTE12(v70))
  {
    v37 = 0;
  }

  else
  {
    v37 = IsDynamicBatchingEnabled;
  }

  BYTE14(v68) = v37 & (BYTE10(v69) ^ 1);
  v39 = v47 && (v38 = C3DGetScene(v47)) != 0 && C3DSceneGetFogEndDistance(v38) > 0.0;
  BYTE13(v70) = v39;
  return objc_alloc_init(MEMORY[0x277CD6D70]);
}

void SCNStandardConstants::_setPropertyFlags(uint64_t a1, uint64_t a2, int a3, BOOL *a4, BOOL *a5, BOOL *a6, _DWORD *a7, int *a8, _DWORD *a9, int *a10)
{
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a2, a3, 0);
  if (!EffectSlot)
  {
    return;
  }

  v18 = EffectSlot;
  *a4 = C3DEffectSlotIsValid(EffectSlot);
  *a5 = C3DEffectSlotHasImageOrTexture(v18);
  *a6 = C3DEffectSlotGetIntensity(v18) != 1.0;
  if (C3DEffectSlotGetTextureComponents(v18) == 15)
  {
    v19 = 0;
LABEL_4:
    *a7 = v19;
    goto LABEL_8;
  }

  v20 = ((*(v18 + 48) >> 11) & 0xF) - 1;
  if (v20 <= 7 && ((0x8Bu >> v20) & 1) != 0)
  {
    v19 = dword_21C2A2390[v20];
    goto LABEL_4;
  }

LABEL_8:
  if (a3 != 4 && *a5)
  {
    *a9 = C3DEffectSlotGetUVSet(v18);
    if (C3DKeyframeControllerHasInterpolationModesPerKey(v18))
    {
      v21 = *(a1 + 244) + 1;
      *(a1 + 244) = v21;
      *a10 = v21;
      v22 = *(a1 + 240) + 1;
      *(a1 + 240) = v22;
    }

    else
    {
      v23 = *a9;
      v24 = *(a1 + 248 + v23);
      if (v24 == 255)
      {
        v24 = *(a1 + 240) + 1;
        *(a1 + 240) = v24;
        *(a1 + 248 + v23) = v24;
      }

      v22 = v24;
    }

    *a8 = v22;
    if (v22 >= 8)
    {
      v25 = scn_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        SCNStandardConstants::_setPropertyFlags(v25);
      }
    }
  }
}

void __DestroyControllers(uint64_t a1)
{
  if (*(a1 + 888) >= 1)
  {
    v2 = 0;
    v3 = 56;
    do
    {
      free(*(*(a1 + 880) + v3));
      ++v2;
      v3 += 80;
    }

    while (v2 < *(a1 + 888));
  }

  free(*(a1 + 880));
  *(a1 + 880) = 0;
}

uint64_t C3DParticleSystemGetTypeID()
{
  if (C3DParticleSystemGetTypeID_onceToken != -1)
  {
    C3DParticleSystemGetTypeID_cold_1();
  }

  return C3DParticleSystemGetTypeID_typeID;
}

double __C3DParticleSystemGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DParticleSystemGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"acceleration", 0xA0u, 9, 0);
  C3DModelPathResolverRegisterProperty(@"affectedByGravity", 0x60u, 3, 0);
  C3DModelPathResolverRegisterProperty(@"birthRate", 0x40u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"birthRateVariation", 0x44u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"dampingFactor", 0x17Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"emissionDuration", 0x6Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"emissionDurationVariation", 0x70u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"emittingDirection", 0x80u, 9, 0);
  C3DModelPathResolverRegisterProperty(@"fixedTimeStep", 0x184u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"fresnelExponent", 0x18Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"idleDuration", 0x74u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"idleDurationVariation", 0x78u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceColumnCount", 0x130u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceFrameRate", 0x13Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceFrameRateVariation", 0x140u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceInitialFrame", 0x134u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceInitialFrameVariation", 0x138u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"imageSequenceRowCount", 0x132u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"isLocal", 0x5Fu, 3, 0);
  C3DModelPathResolverRegisterProperty(@"loops", 0x65u, 3, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngle", 0xB4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngleVariation", 0xB8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngularVelocity", 0xC4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleAngularVelocityVariation", 0xC8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleBounce", 0xD4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleBounceVariation", 0xD8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleCharge", 0xE4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleChargeVariation", 0xE8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleColor", 0x100u, 13, 0);
  C3DModelPathResolverRegisterProperty(@"particleColorVariation", 0x110u, 10, 0);
  C3DModelPathResolverRegisterProperty(@"particleFriction", 0xDCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleFrictionVariation", 0xE0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleGeometries", 0x160u, 5, 0);
  C3DModelPathResolverRegisterProperty(@"particleLifeSpan", 0xCCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleLifeSpanVariation", 0xD0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleMass", 0x174u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleMassVariation", 0x178u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleSize", 0x120u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleSizeVariation", 0x124u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleIntensity", 0x128u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleIntensityVariation", 0x12Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleVelocity", 0xBCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"particleVelocityVariation", 0xC0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"speedFactor", 0x180u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"spreadingAngle", 0xB0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"stretchFactor", 0xF8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"warmupDuration", 0x48u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  result = *&kC3DC3DParticleSystemContextClassAnimatable;
  xmmword_2817406C0 = kC3DC3DParticleSystemContextClassAnimatable;
  return result;
}

uint64_t C3DParticleSystemGetAndClearMeshDidChange(uint64_t a1)
{
  result = *(a1 + 856);
  if (result == 1)
  {
    *(a1 + 856) = 0;
  }

  return result;
}

void __C3DParticleSystemControllersDidChange(uint64_t a1)
{
  __DestroyControllers(a1);
  *(a1 + 888) = -1;
  v2 = *(a1 + 920);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 920) = 0;
  }
}

uint64_t C3DParticleSystemCreate()
{
  if (C3DParticleSystemGetTypeID_onceToken != -1)
  {
    C3DParticleSystemGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DParticleSystemGetTypeID_typeID, 960);
  C3DColor4Make((Instance + 256), 1.0, 1.0, 1.0, 1.0);
  *(Instance + 372) = 1065353216;
  *(Instance + 108) = 1065353216;
  *(Instance + 101) = 1;
  *(Instance + 204) = 1065353216;
  *(Instance + 288) = 1065353216;
  *(Instance + 296) = 1065353216;
  *(Instance + 212) = 1060320051;
  *(Instance + 228) = 0;
  *(Instance + 220) = 1065353216;
  *(Instance + 304) = 65537;
  *(Instance + 384) = 1065353216;
  *(Instance + 396) = 1077936128;
  *(Instance + 128) = xmmword_21C27F8C0;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  __C3DParticleSystemControllersDidChange(Instance);
  *(Instance + 872) = -1;
  *(Instance + 857) = 257;
  *(Instance + 904) = 0;
  return Instance;
}

CFIndex __AddModifierForStage(uint64_t a1, _DWORD *a2, CFArrayRef theArray, int a4)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      result = C3DParticleModifierGetStage(ValueAtIndex);
      if (result == a4)
      {
        v12 = (*a2)++;
        *(a1 + 24 * v12 + 16) = ValueAtIndex;
      }
    }
  }

  return result;
}

void __C3DParticleSystemUpdateInternal(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v27 = *MEMORY[0x277D85DE8];
  *(v1 + 872) = 0;
  v25 = 0;
  bzero(__src, 0x3000uLL);
  if (C3DParticleSystemGetRenderingMode(v2) - 4 >= 0xFFFFFFFE)
  {
    v6 = (v2 + 864);
    free(*(v2 + 864));
LABEL_32:
    v23 = 0;
    *v6 = 0;
    goto LABEL_33;
  }

  v3 = *(v2 + 896);
  if (v3)
  {
    __AddModifierForStage(__src, &v25, v3, 0);
  }

  if (C3DParticleSystemGetParticleMassVariation(v2) == 0.0)
  {
    DampingFactor = C3DParticleSystemGetDampingFactor(v2);
    v8 = v25;
    v5 = ++v25;
    v9 = &__src[3 * v8];
    if (DampingFactor == 0.0)
    {
      v10 = C3DParticleEulerIntegration_NoMassVariationNoDrag;
    }

    else
    {
      v10 = C3DParticleEulerIntegration_NoMassVariation;
    }

    *v9 = v10;
  }

  else
  {
    v4 = v25;
    v5 = ++v25;
    __src[3 * v4] = C3DParticleEulerIntegration_C;
  }

  if (C3DParticleSystemGetAffectedByPhysicsFields(v2))
  {
    v11 = 3 * v5++;
    v25 = v5;
    __src[v11] = C3DParticleModifier_PhysicsField;
  }

  if (C3DParticleSystemHasTextureAnimation(v2))
  {
    v25 = v5 + 1;
    __src[3 * v5] = C3DParticleModifier_Frame;
  }

  v12 = *(v2 + 896);
  if (v12)
  {
    __AddModifierForStage(__src, &v25, v12, 1);
    __AddModifierForStage(__src, &v25, *(v2 + 896), 2);
  }

  if (C3DParticleSystemGetEventBlock(v2, 2u, 0))
  {
    v13 = C3DParticleGenericColliderWithBlock;
  }

  else
  {
    v13 = C3DParticleGenericCollider;
  }

  v14 = *(v2 + 360);
  if (v14)
  {
    Count = CFArrayGetCount(v14);
    v16 = v25;
    if (Count >= 1)
    {
      v17 = Count;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 360), i);
        v20 = &__src[3 * v16 + 3 * i];
        *v20 = v13;
        v20[1] = ValueAtIndex;
      }

      v16 += i;
    }

    v25 = v16;
  }

  v21 = *(v2 + 896);
  if (v21)
  {
    __AddModifierForStage(__src, &v25, v21, 3);
  }

  SystemSpawnedOnLiving = C3DParticleSystemGetSystemSpawnedOnLiving(v2);
  v23 = v25;
  if (SystemSpawnedOnLiving)
  {
    __src[3 * v25] = C3DParticleSpawnSubSystem;
    ++v23;
  }

  v6 = (v2 + 864);
  free(*(v2 + 864));
  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = malloc_type_malloc(24 * v23, 0xA0040114AFA65uLL);
  *v6 = v24;
  memcpy(v24, __src, 24 * v23);
LABEL_33:
  *(v2 + 872) = v23;
}

uint64_t C3DParticleSystemGetRenderingMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 91);
}

float C3DParticleSystemGetParticleMassVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 376);
}

float C3DParticleSystemGetDampingFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 380);
}

uint64_t C3DParticleSystemGetAffectedByPhysicsFields(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 97);
}

uint64_t C3DParticleSystemGetEventBlock(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_6:
      v14 = a2;
      return *(a1 + 8 * v14 + 928);
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v14 = a2;
  *a3 = *(a1 + 8 * a2 + 952);
  return *(a1 + 8 * v14 + 928);
}

uint64_t C3DParticleSystemGetSystemSpawnedOnLiving(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 344);
}

uint64_t C3DParticleSystemGetParticleColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 256;
}

__n128 C3DParticleSystemSetParticleColor(__n128 *a1, __n128 *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    _C3DCGColorGetComponentsInColorSpace_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *a2;
  a1[16] = *a2;
  return result;
}

uint64_t C3DParticleSystemGetParticleColorController(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 892) == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 880) + 80 * *(a1 + 892) + 16);
  }
}

uint64_t C3DParticleSystemGetParticleOpacityController(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 894) == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 880) + 80 * *(a1 + 894) + 16);
  }
}

uint64_t C3DParticleSystemGetParticleTexture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 240);
}

CFTypeRef C3DParticleSystemSetParticleTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 240);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 240) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 240) = result;
    *(a1 + 858) = 1;
  }

  return result;
}

void C3DParticleSystemSetColliderNodes(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 360);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 360) = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 360) = v13;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetEventBlock(uint64_t a1, unsigned int a2, void *aBlock, CFTypeRef cf)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = a1 + 952;
  v17 = *(a1 + 952 + 8 * a2);
  if (v17 != cf)
  {
    if (v17)
    {
      CFRelease(v17);
      *(v16 + 8 * a2) = 0;
    }

    if (cf)
    {
      v18 = CFRetain(cf);
    }

    else
    {
      v18 = 0;
    }

    *(v16 + 8 * a2) = v18;
  }

  v19 = *(a1 + 928 + 8 * a2);
  if (v19 != aBlock)
  {
    if (v19)
    {
      _Block_release(v19);
    }

    *(a1 + 928 + 8 * a2) = _Block_copy(aBlock);
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetProperyControllers(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 400);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 400) = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 400) = v13;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetParticleColorVariation(uint64_t a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  *(a1 + 272) = a2;
  __C3DParticleSystemControllersDidChange(a1);
  *(a1 + 872) = -1;
  *(a1 + 857) = 257;
  *(a1 + 904) = 0;
}

__n128 C3DParticleSystemGetOrientationDirection(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1[9];
}

void C3DParticleSystemSetOrientationDirection(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[9] = a2;
}

float C3DParticleSystemGetLightEmissionRadiusFactor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 392);
}

void C3DParticleSystemSetLightEmissionRadiusFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 392) = a2;
}

__n128 C3DParticleSystemGetAcceleration(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1[10];
}

void C3DParticleSystemSetAcceleration(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[10] = a2;
}

uint64_t C3DParticleSystemGetAffectedByGravity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

void C3DParticleSystemSetAffectedByGravity(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 96) != a2)
  {
    *(a1 + 96) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetAffectedByPhysicsFields(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 97) != a2)
  {
    *(a1 + 97) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetBirthDirection(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 89);
}

void C3DParticleSystemSetBirthDirection(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 89) = a2;
}

uint64_t C3DParticleSystemGetBirthLocation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

void C3DParticleSystemSetBirthLocation(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = a2;
}

float C3DParticleSystemGetBirthRate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

void C3DParticleSystemSetBirthRate(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 64) = a2;
}

float C3DParticleSystemGetBirthRateVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 68);
}

void C3DParticleSystemSetBirthRateVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 68) = a2;
}

uint64_t C3DParticleSystemGetBlackPassEnabled(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 105);
}

void C3DParticleSystemSetBlackPassEnabled(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 105) != a2)
  {
    *(a1 + 105) = a2;
    *(a1 + 858) = 1;
  }
}

uint64_t C3DParticleSystemGetBlendMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 90);
}

void C3DParticleSystemSetBlendMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 90) != a2)
  {
    *(a1 + 90) = a2;
    *(a1 + 858) = 1;
  }
}

uint64_t C3DParticleSystemGetColliderNodes(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 360);
}

void C3DParticleSystemSetDampingFactor(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 380) = a2;
}

float C3DParticleSystemGetEmissionDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 108);
}

void C3DParticleSystemSetEmissionDuration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 108) = a2;
}

float C3DParticleSystemGetEmissionDurationVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

void C3DParticleSystemSetEmissionDurationVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 112) = a2;
}

uint64_t C3DParticleSystemGetEmitterShape(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

CFTypeRef C3DParticleSystemSetEmitterShape(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 80);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 80) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 80) = result;
  }

  return result;
}

__n128 C3DParticleSystemGetEmittingDirection(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1[8];
}

void C3DParticleSystemSetEmittingDirection(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DParticleSystemGetRenderingMode_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[8] = a2;
}

float C3DParticleSystemGetFixedTimeStep(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 388);
}

void C3DParticleSystemSetFixedTimeStep(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 388) = a2;
}

float C3DParticleSystemGetFresnelExponent(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 396);
}

void C3DParticleSystemSetFresnelExponent(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 396) = a2;
}

float C3DParticleSystemGetIdleDuration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 116);
}

void C3DParticleSystemSetIdleDuration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 116) = a2;
}

float C3DParticleSystemGetIdleDurationVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

void C3DParticleSystemSetIdleDurationVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 120) = a2;
}

uint64_t C3DParticleSystemGetImageSequenceAnimationMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 94);
}

void C3DParticleSystemSetImageSequenceAnimationMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 94) != a2)
  {
    *(a1 + 94) = a2;
    *(a1 + 858) = 1;
  }
}

uint64_t C3DParticleSystemGetImageSequenceColumnCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 304);
}

void C3DParticleSystemSetImageSequenceColumnCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 304) != a2)
  {
    HasTextureAnimation = C3DParticleSystemHasTextureAnimation(a1);
    *(a1 + 304) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
    if (HasTextureAnimation != C3DParticleSystemHasTextureAnimation(a1))
    {
      *(a1 + 858) = 1;
      *(a1 + 856) = 1;
    }
  }
}

float C3DParticleSystemGetImageSequenceFrameRate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 316);
}

void C3DParticleSystemSetImageSequenceFrameRate(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 316) != a2)
  {
    *(a1 + 316) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetImageSequenceFrameRateVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 320);
}

void C3DParticleSystemSetImageSequenceFrameRateVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 320) != a2)
  {
    *(a1 + 320) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetImageSequenceInitialFrame(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 308);
}

void C3DParticleSystemSetImageSequenceInitialFrame(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 308) != a2)
  {
    *(a1 + 308) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetImageSequenceInitialFrameVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 312);
}

void C3DParticleSystemSetImageSequenceInitialFrameVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 312) != a2)
  {
    *(a1 + 312) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetImageSequenceRowCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 306);
}

void C3DParticleSystemSetImageSequenceRowCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 306) != a2)
  {
    HasTextureAnimation = C3DParticleSystemHasTextureAnimation(a1);
    *(a1 + 306) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
    if (HasTextureAnimation != C3DParticleSystemHasTextureAnimation(a1))
    {
      *(a1 + 858) = 1;
      *(a1 + 856) = 1;
    }
  }
}

uint64_t C3DParticleSystemGetIsLocal(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 95);
}

void C3DParticleSystemSetIsLocal(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 95) != a2)
  {
    *(a1 + 95) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetLightingEnabled(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 99);
}

void C3DParticleSystemSetLightingEnabled(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 99) != a2)
  {
    *(a1 + 99) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 904) = 0;
    *(a1 + 858) = 1;
    *(a1 + 856) = 257;
  }
}

uint64_t C3DParticleSystemGetLoops(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 101);
}

void C3DParticleSystemSetLoops(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 101) != a2)
  {
    *(a1 + 101) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

uint64_t C3DParticleSystemGetOrientationMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 92);
}

void C3DParticleSystemSetOrientationMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 92) != a2)
  {
    *(a1 + 92) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleAngle(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 180);
}

void C3DParticleSystemSetParticleAngle(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 180) != a2)
  {
    *(a1 + 180) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleAngleVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184);
}

void C3DParticleSystemSetParticleAngleVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 184) != a2)
  {
    *(a1 + 184) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleAngularVelocity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 196);
}

void C3DParticleSystemSetParticleAngularVelocity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 196) != a2)
  {
    *(a1 + 196) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleAngularVelocityVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 200);
}

void C3DParticleSystemSetParticleAngularVelocityVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 200) != a2)
  {
    *(a1 + 200) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleBounce(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 212);
}

void C3DParticleSystemSetParticleBounce(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 212) != a2)
  {
    *(a1 + 212) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleBounceVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

void C3DParticleSystemSetParticleBounceVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 216) != a2)
  {
    *(a1 + 216) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleCharge(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 228);
}

void C3DParticleSystemSetParticleCharge(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 228) != a2)
  {
    *(a1 + 228) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleChargeVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 232);
}

void C3DParticleSystemSetParticleChargeVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 232) != a2)
  {
    *(a1 + 232) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

__n128 C3DParticleSystemGetParticleColorVariation(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1[17];
}

uint64_t C3DParticleSystemGetParticleDiesOnCollision(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

void C3DParticleSystemSetParticleDiesOnCollision(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 104) = a2;
}

float C3DParticleSystemGetParticleFriction(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 220);
}

void C3DParticleSystemSetParticleFriction(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 220) != a2)
  {
    *(a1 + 220) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleFrictionVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void C3DParticleSystemSetParticleFrictionVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 224) != a2)
  {
    *(a1 + 224) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleLifeSpan(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 204);
}

void C3DParticleSystemSetParticleLifeSpan(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 204) != a2)
  {
    *(a1 + 204) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleLifeSpanVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 208);
}

void C3DParticleSystemSetParticleLifeSpanVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 208) != a2)
  {
    *(a1 + 208) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleMass(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 372);
}

void C3DParticleSystemSetParticleMass(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 372) != a2)
  {
    *(a1 + 372) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

void C3DParticleSystemSetParticleMassVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 376) != a2)
  {
    *(a1 + 376) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleSize(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 288);
}

void C3DParticleSystemSetParticleSize(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 288) != a2)
  {
    *(a1 + 288) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleSizeVariation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 292);
}

void C3DParticleSystemSetParticleSizeVariation(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 292) != a2)
  {
    *(a1 + 292) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}

float C3DParticleSystemGetParticleVelocity(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 188);
}

void C3DParticleSystemSetParticleVelocity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemGetRenderingMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 188) != a2)
  {
    *(a1 + 188) = a2;
    __C3DParticleSystemControllersDidChange(a1);
    *(a1 + 872) = -1;
    *(a1 + 857) = 257;
    *(a1 + 904) = 0;
  }
}