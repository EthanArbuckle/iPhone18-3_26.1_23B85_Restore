uint64_t C3DMeshCreateTangentsIfNeeded(uint64_t a1, int a2)
{
  if (C3DMeshGetSourceWithSemanticAtIndex(a1, 4, 0, a2))
  {
    return 1;
  }

  PositionSource = C3DMeshGetPositionSource(a1, a2);
  if (PositionSource)
  {
    v6 = PositionSource;
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
    NormalSource = C3DMeshGetNormalSource(a1, a2);
    if (!NormalSource)
    {
      result = C3DCreateNormalsWithMesh(a1, a2, 0);
      if (!result)
      {
        return result;
      }

      NormalSource = result;
      if (a2 == 1)
      {
        __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a1, result, 0);
      }

      else if (!a2)
      {
        C3DMeshSetSourceWithInputSet(a1, result, 0, ChannelForSourceWithSemanticAtIndex);
      }

      CFRelease(NormalSource);
    }

    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 3, 0, a2);
    if (SourceWithSemanticAtIndex)
    {
      v11 = SourceWithSemanticAtIndex;
      v25 = 0u;
      v26 = 0u;
      C3DMeshSourceGetContent(v6, &v25);
      v23 = 0u;
      v24 = 0u;
      C3DMeshSourceGetContent(NormalSource, &v23);
      v21 = 0u;
      v22 = 0u;
      C3DMeshSourceGetContent(v11, &v21);
      if (BYTE7(v26) == 1 && BYTE8(v26) >= 3u && BYTE7(v24) == 1 && BYTE8(v24) >= 3u && BYTE7(v22) == 1 && BYTE8(v22) >= 2u)
      {
        v12 = C3DCreateTangentsWithGeometryOptimized(a1, a2);
      }

      else
      {
        v12 = C3DCreateTangentsWithGeometry(a1, a2);
      }

      v19 = v12;
      if (v12)
      {
LABEL_32:
        if (a2 == 1)
        {
          __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a1, v19, 0);
        }

        else if (!a2)
        {
          C3DMeshSetSourceWithInputSet(a1, v19, 0, ChannelForSourceWithSemanticAtIndex);
        }

        CFRelease(v19);
        return 1;
      }
    }

    else
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        C3DMeshCreateTangentsIfNeeded_cold_1();
      }

      Count = C3DMeshSourceGetCount(v6);
      v15 = 16 * Count;
      v16 = malloc_type_calloc(16 * Count, 1uLL, 0x3DEB8B73uLL);
      v17 = v16;
      if (Count >= 1)
      {
        memset_pattern16(v16, &xmmword_21C27F610, v15);
      }

      v18 = CFDataCreateWithBytesNoCopy(0, v17, v15, *MEMORY[0x277CBECE8]);
      v19 = C3DMeshSourceCreate(v18, 4, Count, 4, 1);
      CFRelease(v18);
      if (v19)
      {
        goto LABEL_32;
      }
    }

    v20 = scn_default_log();
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (result)
    {
      C3DMeshCreateTangentsIfNeeded_cold_2();
      return 0;
    }
  }

  else
  {
    v9 = scn_default_log();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      C3DMeshCreateTangentsIfNeeded_cold_3();
      return 0;
    }
  }

  return result;
}

uint64_t C3DGeometryCreateTangentsIfNeeded(uint64_t a1, int a2)
{
  v13 = 0;
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DGeometryNeedsTexTangent(a1, &v13);
  if (result)
  {
    result = C3DGeometryGetMesh(a1);
    if (result)
    {
      return C3DMeshCreateTangentsIfNeeded(result, a2);
    }
  }

  return result;
}

BOOL C3DMeshIsInterleaved(uint64_t a1)
{
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
  if (!SourceWithSemanticAtIndex)
  {
    return 0;
  }

  Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
  if (!Accessor)
  {
    return 0;
  }

  return C3DSourceAccessorIsInterleaved(Accessor);
}

uint64_t C3DMeshCreateCopyWithDeinterleavedSources(uint64_t a1)
{
  Copy = C3DMeshCreateCopy(a1);
  v3 = 0;
  do
  {
    SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(a1, v3);
    if (SourcesCountForSemantic >= 1)
    {
      v5 = 0;
      v6 = SourcesCountForSemantic & 0x7FFFFFFF;
      do
      {
        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, v3, v5, 0);
        if (SourceWithSemanticAtIndex)
        {
          DeepCopy = C3DMeshSourceCreateDeepCopy(SourceWithSemanticAtIndex);
          C3DMeshSetSourceWithInputSet(Copy, DeepCopy, v5, 255);
          CFRelease(DeepCopy);
        }

        ++v5;
      }

      while (v6 != v5);
    }

    v9 = v3++;
  }

  while (v9 < 8);
  return Copy;
}

uint64_t C3DMeshCreateCopyWithInterleavedSources(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __C3DMeshCreateCopyWithInterleavedSources_block_invoke;
  v15[3] = &unk_2782FB578;
  v15[4] = &v20;
  v15[5] = &v16;
  C3DMeshApplySources(a1, 0, v15);
  v2 = v21[3];
  if (v2)
  {
    v3 = v17[3] * v2;
    v4 = C3DMalloc(v3);
    v5 = CFDataCreateWithBytesNoCopy(0, v4, v3, *MEMORY[0x277CBECF0]);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v6 = C3DMeshCreate();
    MeshElements = C3DMeshGetMeshElements(a1, 0);
    C3DMeshSetMeshElements(v6, MeshElements);
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __C3DMeshCreateCopyWithInterleavedSources_block_invoke_38;
    v9[3] = &unk_2782FB5A0;
    v9[4] = &v11;
    v9[5] = &v16;
    v9[6] = &v20;
    v9[7] = v10;
    v9[8] = v5;
    v9[9] = v6;
    C3DMeshApplySources(a1, 0, v9);
    CFRelease(v12[3]);
    CFRelease(v5);
    _Block_object_dispose(v10, 8);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v6;
}

void sub_21BF2DB68(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void __C3DMeshCreateCopyWithInterleavedSources_block_invoke(uint64_t a1, uint64_t a2)
{
  Accessor = C3DMeshSourceGetAccessor(a2);
  *(*(*(a1 + 32) + 8) + 24) += C3DSourceAccessorGetValueLength(Accessor);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  Count = C3DMeshSourceGetCount(a2);
  v7 = *(*(a1 + 40) + 8);
  if (v5)
  {
    if (Count != *(v7 + 24))
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Cannot create an interleaved copy, count mismatch", v9, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = Count;
  }
}

uint64_t __C3DMeshCreateCopyWithInterleavedSources_block_invoke_38(void *a1, uint64_t a2, __int16 a3, uint64_t a4, int a5)
{
  Accessor = C3DMeshSourceGetAccessor(a2);
  v10 = Accessor;
  if (*(*(a1[4] + 8) + 24))
  {
    ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
    ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v10);
    v13 = C3DSourceAccessorCreate(ComponentsValueType, ComponentsCountPerValue, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    v14 = C3DMeshSourceCreateWithAccessor(v13, a3);
    CFRelease(v13);
    C3DSourceAccessorSetSource(v13, *(*(a1[4] + 8) + 24));
    C3DMeshSetSourceWithInputSet(a1[9], v14, a4, a5);
    CFRelease(v14);
  }

  else
  {
    v15 = a1[8];
    v16 = C3DSourceAccessorGetComponentsValueType(Accessor);
    v17 = C3DSourceAccessorGetComponentsCountPerValue(v10);
    *(*(a1[4] + 8) + 24) = C3DMeshSourceCreateWithData(a3, v15, v16, v17, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    v13 = C3DMeshSourceGetAccessor(*(*(a1[4] + 8) + 24));
    C3DMeshSetSourceWithInputSet(a1[9], *(*(a1[4] + 8) + 24), a4, a5);
  }

  C3DSourceAccessorCopyDataToAccessor(v10, v13, 0);
  result = C3DSourceAccessorGetValueLength(v10);
  *(*(a1[7] + 8) + 24) += result;
  return result;
}

void C3DGeometryMakeSourcesCheaperWhenRelevant(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Mesh = C3DGeometryGetMesh(a1);
  SourcesCountForSemantic = C3DMeshGetSourcesCountForSemantic(Mesh, 1);
  if (SourcesCountForSemantic >= 1)
  {
    v12 = SourcesCountForSemantic;
    for (i = 0; i != v12; ++i)
    {
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 1, i, 0);
      ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 1, i);
      Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
      if (C3DSourceAccessorGetComponentsValueType(Accessor) != 4)
      {
        CopyWithComponentsBaseType = C3DMeshSourceCreateCopyWithComponentsBaseType(SourceWithSemanticAtIndex, 4);
        if (CopyWithComponentsBaseType)
        {
          v18 = CopyWithComponentsBaseType;
          C3DMeshSetSourceWithInputSet(Mesh, CopyWithComponentsBaseType, i, ChannelForSourceWithSemanticAtIndex);
          CFRelease(v18);
        }
      }
    }
  }

  v19 = C3DMeshGetSourcesCountForSemantic(Mesh, 2);
  if (v19 >= 1)
  {
    v20 = v19;
    for (j = 0; j != v20; ++j)
    {
      v22 = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 2, j, 0);
      v23 = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 2, j);
      v24 = C3DMeshSourceGetAccessor(v22);
      if (C3DSourceAccessorGetComponentsValueType(v24) != 16)
      {
        v25 = C3DMeshSourceCreateCopyWithComponentsBaseType(v22, 16);
        if (v25)
        {
          v26 = v25;
          C3DMeshSetSourceWithInputSet(Mesh, v25, j, v23);
          CFRelease(v26);
        }
      }
    }
  }
}

float32x4_t *C3DCreateDefaultCameraNode(__n128 *a1, int a2)
{
  *(v46.i64 + 4) = 0;
  v46.i32[0] = 0;
  memset(&v45, 0, sizeof(v45));
  memset(&v44, 0, sizeof(v44));
  v42 = 0u;
  v43 = 0u;
  RootNode = C3DSceneGetRootNode(a1);
  v5 = 0;
  if (C3DNodeGetBoundingBoxOmittingFloor(RootNode, &v42, 0))
  {
    v6 = vsubq_f32(v42, v43);
    v7 = vaddq_f32(v42, v43);
    v8 = vmulq_f32(vsubq_f32(v7, v6), vdupq_n_s32(0x3DCCCCCDu));
    v9 = vsubq_f32(v6, v8);
    if (a2)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v11 = vdupq_n_s32(v10);
    v33 = vbslq_s8(v11, vaddq_f32(v7, v8), v7);
    v32 = vbslq_s8(v11, v9, v6);
    memset(&v41, 0, sizeof(v41));
    C3DNodeGetMatrix(RootNode, &v41);
    C3DMatrix4x4Invert(&v41, &v44);
    v5 = C3DNodeCreate();
    v12 = C3DCameraCreate();
    C3DNodeSetCamera(v5, v12);
    C3DEntitySetName(v5, @"default camera");
    CFRelease(v12);
    ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(v12);
    C3DCameraSetFov(v12, 45.0);
    *v14.i64 = C3DVector3MidVector(v32, v33);
    v31 = v14;
    v47 = v14;
    C3DSceneGetUpAxis(a1, &v46);
    v15 = v46;
    v16 = vceqzq_f32(v46);
    v16.i32[3] = v16.i32[2];
    if ((vminvq_u32(v16) & 0x80000000) != 0)
    {
      v15 = xmmword_21C27F8C0;
      v46 = xmmword_21C27F8C0;
    }

    v30 = v15;
    v48 = v31;
    v17 = tan(0.392699082);
    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    v19 = vmulq_f32(vsubq_f32(v33, v32), v18);
    *&v17 = 1.0 / v17;
    v20 = vmulq_n_f32(v19, *&v17);
    if (*(&v30 + 1) == 0.0 && *&v30 == 0.0)
    {
      if (*(&v30 + 2) != 0.0)
      {
        if (v20.f32[0] < v20.f32[2])
        {
          v20.f32[0] = v20.f32[2];
        }

        v48.f32[1] = v31.f32[1] - (v19.f32[1] + v20.f32[0]);
      }
    }

    else
    {
      if (v20.f32[0] < v20.f32[1])
      {
        v20.f32[0] = v20.f32[1];
      }

      v48.f32[2] = (v19.f32[2] + v20.f32[0]) + v31.f32[2];
    }

    C3DMatrix4x4MakeLookAt(&v45, &v48, &v47, &v46);
    C3DMatrix4x4Invert(&v45, &v45);
    if (a2)
    {
      memset(v38, 0, sizeof(v38));
      memset(v37, 0, sizeof(v37));
      memset(v36, 0, sizeof(v36));
      memset(v35, 0, sizeof(v35));
      v40 = vnegq_f32(v47);
      if (v46.f32[1] != 0.0 || v46.f32[2] == 0.0)
      {
        v21 = xmmword_21C27F8D0;
      }

      else
      {
        v21 = xmmword_21C27F8E0;
      }

      v39 = v21;
      C3DMatrix4x4MakeTranslation(v38, &v47);
      C3DMatrix4x4MakeEulerRotation(v37, &v39);
      C3DMatrix4x4MakeTranslation(v36, &v40);
      C3DMatrix4x4Mult(v36, v37, v35);
      C3DMatrix4x4Mult(v35, v38, v35);
      C3DMatrix4x4Mult(&v45, v35, &v45);
    }

    C3DMatrix4x4Mult(&v45, &v44, &v45);
    C3DNodeSetMatrix(v5, &v45);
    v22 = v47;
    if (v46.f32[1] == 0.0 && v46.f32[0] == 0.0)
    {
      v22.i32[1] = v32.i32[1];
    }

    else
    {
      v22.i32[2] = v32.i32[2];
    }

    v23 = vsubq_f32(v48, v22);
    v24 = vmulq_f32(v23, v23);
    v25 = vsubq_f32(v48, v33);
    v26 = vmulq_f32(v25, v25);
    v27 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v26.i8), vzip2_s32(*v24.i8, *v26.i8))));
    if (v27.f32[0] != 0.0 && v27.f32[1] != 0.0 && (v27.f32[1] / v27.f32[0]) < 250.0)
    {
      v28 = sqrt((v27.f32[1] / v27.f32[0]) / 250.0);
      v27.f32[0] = v27.f32[0] * v28;
      v27.f32[1] = v27.f32[1] / v28;
    }

    v34 = v27.f32[0];
    C3DProjectionInfosSetZFar(ProjectionInfosPtr, v27.f32[1]);
    C3DProjectionInfosSetZNear(ProjectionInfosPtr, v34);
  }

  return v5;
}

uint64_t C3DComputeFrustumPlanesFromNode(float32x4_t *a1, float32x4_t *a2, int8x16_t a3)
{
  v29 = a3;
  memset(v28, 0, sizeof(v28));
  ProjectionInfos = C3DNodeGetProjectionInfos(a1, v28);
  if (ProjectionInfos)
  {
    memset(&v27, 0, sizeof(v27));
    C3DNodeComputeWorldMatrix(a1, &v27);
    C3DMatrix4x4Invert(&v27, &v27);
    Matrix = C3DProjectionInfosGetMatrix(v28, &v29, 0);
    C3DMatrix4x4Mult(&v27, Matrix, &v27);
    v8 = v27.columns[0];
    v7 = v27.columns[1];
    v30 = vld4_f32(v27.columns[2].f32);
    v9 = v27.columns[0].f32[3];
    v10.f32[0] = v27.columns[0].f32[3] - v27.columns[0].f32[0];
    v11 = v27.columns[1].f32[3];
    v10.f32[1] = v27.columns[1].f32[3] - v27.columns[1].f32[0];
    *&v10.u32[2] = vsub_f32(v30.val[3], v30.val[0]);
    v12 = vmulq_f32(v10, v10);
    *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    v14 = vrsqrte_f32(v13);
    *v15.f32 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
    v16 = vmulq_n_f32(v10, vmul_f32(*v15.f32, vrsqrts_f32(v13, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
    v15.f32[0] = v27.columns[0].f32[3] + v27.columns[0].f32[0];
    v15.f32[1] = v27.columns[1].f32[3] + v27.columns[1].f32[0];
    *&v15.u32[2] = vadd_f32(v30.val[3], v30.val[0]);
    v17 = vmulq_f32(v15, v15);
    *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
    *v17.f32 = vrsqrte_f32(v18);
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
    *a2 = v16;
    a2[1] = vmulq_n_f32(v15, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
    v15.f32[0] = v9 + v8.f32[1];
    v15.f32[1] = v11 + v7.f32[1];
    *&v15.u32[2] = vadd_f32(v30.val[3], v30.val[1]);
    v19 = vmulq_f32(v15, v15);
    *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
    *v19.f32 = vrsqrte_f32(v20);
    *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
    v21 = vmulq_n_f32(v15, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
    v16.f32[0] = v9 - v8.f32[1];
    v16.f32[1] = v11 - v7.f32[1];
    *&v16.u32[2] = vsub_f32(v30.val[3], v30.val[1]);
    v22 = vmulq_f32(v16, v16);
    v19.f32[0] = v22.f32[2] + vaddv_f32(*v22.f32);
    *v22.f32 = vrsqrte_f32(v19.u32[0]);
    *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v22.f32, *v22.f32)));
    a2[2] = v21;
    a2[3] = vmulq_n_f32(v16, vmul_f32(*v22.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v22.f32, *v22.f32))).f32[0]);
    v16.f32[0] = v9 - v8.f32[2];
    v16.f32[1] = v11 - v7.f32[2];
    *&v16.u32[2] = vsub_f32(v30.val[3], v30.val[2]);
    v23 = vmulq_f32(v16, v16);
    v22.f32[0] = v23.f32[2] + vaddv_f32(*v23.f32);
    *v23.f32 = vrsqrte_f32(v22.u32[0]);
    *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v22.u32[0], vmul_f32(*v23.f32, *v23.f32)));
    v24.f32[0] = v9 + v8.f32[2];
    v24.f32[1] = v11 + v7.f32[2];
    *&v24.u32[2] = vadd_f32(v30.val[3], v30.val[2]);
    *v30.val[0].f32 = vmulq_f32(v24, v24);
    v12.f32[0] = v25 + vaddv_f32(v30.val[0]);
    v30.val[0] = vrsqrte_f32(v12.u32[0]);
    v30.val[0] = vmul_f32(v30.val[0], vrsqrts_f32(v12.u32[0], vmul_f32(v30.val[0], v30.val[0])));
    a2[4] = vmulq_n_f32(v16, vmul_f32(*v23.f32, vrsqrts_f32(v22.u32[0], vmul_f32(*v23.f32, *v23.f32))).f32[0]);
    a2[5] = vmulq_n_f32(v24, vmul_f32(v30.val[0], vrsqrts_f32(v12.u32[0], vmul_f32(v30.val[0], v30.val[0]))).f32[0]);
  }

  return ProjectionInfos;
}

uint64_t C3DNodeGetProjectionInfos(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetProjectionInfos_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Camera = C3DNodeGetCamera(a1);
  if (Camera)
  {
    ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(Camera);
    v14 = ProjectionInfosPtr[1];
    *a2 = *ProjectionInfosPtr;
    *(a2 + 16) = v14;
    v15 = ProjectionInfosPtr[5];
    v17 = ProjectionInfosPtr[2];
    v16 = ProjectionInfosPtr[3];
    *(a2 + 64) = ProjectionInfosPtr[4];
    *(a2 + 80) = v15;
    *(a2 + 32) = v17;
    *(a2 + 48) = v16;
    v18 = ProjectionInfosPtr[9];
    v20 = ProjectionInfosPtr[6];
    v19 = ProjectionInfosPtr[7];
    *(a2 + 128) = ProjectionInfosPtr[8];
    *(a2 + 144) = v18;
    *(a2 + 96) = v20;
    *(a2 + 112) = v19;
    v21 = ProjectionInfosPtr[12];
    v22 = ProjectionInfosPtr[13];
    v24 = ProjectionInfosPtr[10];
    v23 = ProjectionInfosPtr[11];
    *(a2 + 192) = v21;
    *(a2 + 208) = v22;
    *(a2 + 160) = v24;
    *(a2 + 176) = v23;
    if ((*a2 & 8) != 0)
    {
      v25 = *(a2 + 184);
      v26 = v25;
      v27 = *(a2 + 200);
      v28 = v27;
      if (*(a2 + 188) == 0.0)
      {
        v29 = (v28 + -1.0) / v26;
        v30 = (v28 + 1.0) / v26;
        *&v30 = v30;
        v31 = -(1.0 - v28) / v26;
        if (v27 >= -1.0)
        {
          v31 = v29;
        }

        *&v21 = v27 / v25;
        if (v27 < -1.0)
        {
          *&v21 = v30;
        }
      }

      else
      {
        v33 = v27 < -2.0;
        *&v21 = v27 / v25;
        v34 = v28 / (v26 + 1.0);
        *&v28 = v28 / (v26 + -1.0);
        v31 = v34;
        if (v33)
        {
          *&v21 = v28;
        }
      }

      *&v31 = v31;
      *(a2 + 8) = vcvtq_f64_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v21, *&v31), 0), vrev64_s32(__PAIR64__(LODWORD(v31), v21)), __PAIR64__(LODWORD(v31), v21)));
    }

    return 1;
  }

  else
  {
    result = C3DNodeGetLight(a1);
    if (result)
    {
      return C3DLightGetProjectionInfo(result, a2);
    }
  }

  return result;
}

void C3DAdjustZRangeOfProjectionInfos(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a2 && a4)
  {
    RootNode = C3DSceneGetRootNode(a4);
    if (RootNode)
    {
      v43 = 0u;
      v44 = 0u;
      v42 = 0;
      if (C3DNodeGetBoundingBoxOmittingFloor(RootNode, &v43, &v42))
      {
        v41.i32[2] = 0;
        v41.i64[0] = 0;
        WorldMatrix = C3DNodeGetWorldMatrix(a2);
        if (WorldMatrix)
        {
          v8 = WorldMatrix;
          C3DMatrix4x4GetAffineTransforms(WorldMatrix, &v41, 0, 0);
          v9 = *v8;
          v10 = v8[1];
          v11 = v8[3];
          v47 = v8[2];
          v48 = v11;
          v45 = v9;
          v46 = v10;
          *v12.i64 = C3DVector3Rotate(&v45, xmmword_21C27F900);
          v13 = 0;
          v14 = vsubq_f32(v43, v44);
          v15 = v14;
          v15.f32[1] = v43.f32[1] - v44.f32[1];
          v16 = v15;
          v16.f32[2] = v43.f32[2] - v44.f32[2];
          v17 = 3.4028e38;
          v18 = -3.4028e38;
          v15.f32[2] = v43.f32[2] + v44.f32[2];
          v14.f32[1] = v43.f32[1] + v44.f32[1];
          v19 = v14;
          v19.f32[2] = v43.f32[2] - v44.f32[2];
          v14.f32[2] = v43.f32[2] + v44.f32[2];
          v45 = v16;
          v46 = v15;
          v20 = vaddq_f32(v43, v44);
          v21 = v20;
          v21.f32[1] = v43.f32[1] - v44.f32[1];
          v47 = v19;
          v48 = v14;
          v22 = v21;
          v22.f32[2] = v43.f32[2] - v44.f32[2];
          v21.f32[2] = v43.f32[2] + v44.f32[2];
          v20.f32[1] = v43.f32[1] + v44.f32[1];
          v23 = v20;
          v23.f32[2] = v43.f32[2] - v44.f32[2];
          v49 = v22;
          v50 = v21;
          v20.f32[2] = v43.f32[2] + v44.f32[2];
          v51 = v23;
          v52 = v20;
          do
          {
            v24 = vmulq_f32(v12, vsubq_f32(*(&v45 + v13), v41));
            v25 = vaddv_f32(*v24.f32);
            if ((v24.f32[2] + v25) < v17)
            {
              v17 = v24.f32[2] + v25;
            }

            v26 = fabsf(v24.f32[2] + v25);
            if (v26 >= v18)
            {
              v18 = v26;
            }

            v13 += 16;
          }

          while (v13 != 128);
          v27 = vmulq_f32(v44, v44);
          *v27.i32 = sqrtf(vaddv_f32(vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL))));
          v28 = *v27.i32 + *v27.i32;
          v30 = v18 + v18 * 0.05;
          if (v28 <= v30)
          {
            v28 = v30;
          }

          v31 = fmax(v28 * 0.0001, 0.001);
          if (v31 > 1.0)
          {
            v31 = 1.0;
          }

          v32 = v31;
          v29 = v17 + v17 * -0.05;
          if (v32 < v29)
          {
            v32 = v17 + v17 * -0.05;
          }

          if (v32 <= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v32;
          }

          if (v42)
          {
            v33 = v33 + v33;
          }

          v34 = v33;
          v35 = v33 * 0.01;
          if (v35 <= v32)
          {
            v36 = v35;
          }

          else
          {
            v36 = v32;
          }

          if (v36 > v33)
          {
            v37 = scn_default_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              C3DAdjustZRangeOfProjectionInfos_cold_2(v37, v36, v34);
            }
          }

          *(a1 + 8) = v36;
          *(a1 + 16) = v34;
        }

        else
        {
          v40 = scn_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            C3DAdjustZRangeOfProjectionInfos_cold_3();
          }
        }
      }

      else if ((*a1 & 4) != 0)
      {
        *(a1 + 8) = xmmword_21C27F8F0;
      }
    }

    else
    {
      v39 = scn_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        C3DAdjustZRangeOfProjectionInfos_cold_4();
      }
    }
  }

  else
  {
    v38 = scn_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      C3DAdjustZRangeOfProjectionInfos_cold_1();
    }
  }
}

float32x4_t C3DComputeMirrorPlane(float32x4_t *a1, float32x4_t *a2, __n128 *a3)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  C3DNodeComputeWorldMatrix(a1, &v17);
  v13 = v17;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  *v5.i64 = C3DVector3MultMatrix4x4(&v13, 0);
  v12 = v5;
  v6 = *a2;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  *v7.i64 = C3DVector3RotateAndScale(&v13, v6);
  v8 = vmulq_f32(v7, v7);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  result = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v10 = vmulq_f32(v12, result);
  result.f32[3] = -(v10.f32[2] + vaddv_f32(*v10.f32));
  *a3 = result;
  return result;
}

__n128 C3DComputeMirrorMatrix(__n128 *a1, float32x4_t *a2, uint64_t a3)
{
  v21.n128_u32[2] = 0;
  v21.n128_u64[0] = 0;
  C3DSceneGetUpAxis(a1, &v21);
  v20 = 0uLL;
  C3DComputeMirrorPlane(a2, &v21, &v20);
  _Q0 = v20;
  v6 = vnegq_f32(v20);
  _S2 = vmuls_lane_f32(-2.0, v6, 2);
  _D5 = vmul_f32(*v6.f32, 0xC0000000C0000000);
  __asm { FMLS            S6, S5, V0.S[0] }

  _S7 = _D5.i32[1];
  HIDWORD(v15) = 0;
  *&v15 = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v6.f32[0], _D5, 1)), _S6);
  *(&v15 + 2) = _S2 * v6.f32[0];
  __asm { FMLS            S16, S7, V0.S[1] }

  *&_Q6 = __PAIR64__(_S16, COERCE_UNSIGNED_INT(vmuls_lane_f32(_D5.f32[0], *v6.f32, 1)));
  *(&_Q6 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(_S2, *v6.f32, 1));
  *a3 = v15;
  *(a3 + 16) = _Q6;
  *&v18 = vmul_laneq_f32(_D5, v6, 2);
  __asm { FMLS            S6, S2, V0.S[2] }

  *(&v18 + 1) = _Q6;
  result.n128_u64[0] = vmul_laneq_f32(_D5, v6, 3);
  result.n128_u64[1] = __PAIR64__(1.0, COERCE_UNSIGNED_INT(vmuls_lane_f32(_S2, v6, 3)));
  *(a3 + 32) = v18;
  *(a3 + 48) = result;
  return result;
}

char *C3DSizeForScreenSpaceSizeAndTransform(__n128 *a1)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
  if (RendererContextGL)
  {
    C3DRendererContextGetContentScaleFactor(RendererContextGL);
  }

  RenderContext = C3DEngineContextGetRenderContext(a1);
  if (RenderContext)
  {
    [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
  }

  Viewport = C3DEngineContextGetViewport(a1);
  memset(v12, 0, sizeof(v12));
  PointOfView = C3DEngineContextGetPointOfView(a1);
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a1);
  if (PointOfView && (v6 = CoordinatesSystemOptions, C3DNodeGetProjectionInfos(PointOfView, v12)))
  {
    v7.i64[0] = 0;
    v7.i64[1] = vextq_s8(Viewport, Viewport, 8uLL).u64[0];
    v11 = v7;
    WorldMatrix = C3DNodeGetWorldMatrix(PointOfView);
    v13.columns[0] = *WorldMatrix;
    v13.columns[1] = WorldMatrix[1];
    v13.columns[2] = WorldMatrix[2];
    v13.columns[3] = WorldMatrix[3];
    __invert_f4(v13);
    return C3DProjectionInfosGetMatrix(v12, &v11, v6);
  }

  else
  {
    C3DEngineContextGetMatrix4x4(a1, 1);
    return C3DEngineContextGetMatrix4x4(a1, 0);
  }
}

float32x4_t *C3DSetupHaltonFilterKernelConic(float32x4_t *result, int a2, float a3, float a4, float a5)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; result[i++] = v15)
    {
      if (i)
      {
        v6 = 0.5;
        v7 = 0.0;
        v8 = i;
        do
        {
          if (v8)
          {
            v7 = v6 + v7;
          }

          v6 = v6 * 0.5;
          v9 = v8 > 1;
          v8 >>= 1;
        }

        while (v9);
        v10 = 0.0;
        v11 = i;
        v12 = 0.33333;
        do
        {
          if (v11 != 3 * (v11 / 3))
          {
            v10 = v10 + ((v11 % 3) * v12);
          }

          v12 = v12 * 0.33333;
          v13 = v11 + 2;
          v11 /= 3;
        }

        while (v13 >= 5);
        v14 = ((v7 * 2.0) + -1.0) * a3;
        v15 = result[i];
        v15.f32[0] = v14;
        v15.f32[1] = ((v10 * 2.0) + -1.0) * a4;
      }

      else
      {
        v15.i64[0] = 0;
        v15.i64[1] = result->i64[1];
        *result = v15;
      }

      v15.i64[1] = COERCE_UNSIGNED_INT(sqrtf(COERCE_FLOAT(vmulq_f32(v15, v15).i32[1]) + (v15.f32[0] * v15.f32[0])) * a5);
    }
  }

  return result;
}

uint64_t C3DEngineContextEvaluateProgram(uint64_t a1, void *a2, __C3DGeometry *a3, uint64_t a4, uint64_t a5)
{
  FXContext = C3DEngineContextGetFXContext(a1);
  CurrentPassInstance = C3DFXContextGetCurrentPassInstance(FXContext);
  v12 = CurrentPassInstance[24];
  v13 = CurrentPassInstance[27];
  v14 = CurrentPassInstance[28];
  if (C3DMeshGetElementsCount(a4))
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(a4, 0, 1);
  }

  else
  {
    ElementAtIndex = 0;
  }

  v16 = C3DProgramHashCodeCreate(a2, a3, a4, ElementAtIndex, 0, a5, (((8 * (v13 & 3)) & 0x9F | (32 * (v14 & 3u))) << 24) | (v12 << 16));
  CommonProfile = C3DMaterialGetCommonProfile(a5);
  v18 = C3DEngineContextEvaluateProgramWithHashCode(a1, v16, CommonProfile, 0);
  CFRelease(v16);
  return v18;
}

uint64_t C3DMeshElementCreateIntervalList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v7 = &v44 - 4 * v6;
  if (v6 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v7 + 2);
  do
  {
    C3DMeshSourceGetContent(*(a1 + 8 * v9), v49);
    v12 = v49[0];
    v13 = v49[1];
    v10[-1] = v49[0];
    *v10 = v13;
    if (v8)
    {
      if (v8 != v10->i32[0])
      {
        v35 = scn_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          C3DMeshElementCreateIntervalList_cold_1();
        }

        return 0;
      }
    }

    else
    {
      v8 = v10->i32[0];
    }

    v10 += 2;
    ++v9;
  }

  while (a2 != v9);
  if (!v8)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v48 = v7;
  v17 = v7 + 22;
  v18 = 1;
  do
  {
    if (a2 < 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v20 = v17;
      while (1)
      {
        *v21.i64 = C3DConvertFloatingTypeToFloat4(*(v20 - 2), (*(v20 - 22) + v16 * *v20), v12, v13.f32[0], v11);
        v13.i64[0] = 0x3400000034000000;
        v13.i64[1] = 0x3400000034000000;
        v12 = vcgeq_f32(vabsq_f32(v21), v13);
        v12.i32[0] = vmaxvq_u32(v12);
        if (v12.i32[0] < 0)
        {
          break;
        }

        v20 += 32;
        if (a2 == ++v19)
        {
          goto LABEL_17;
        }
      }
    }

    if (v19 == a2)
    {
LABEL_17:
      v18 |= v14++ > a3;
    }

    else
    {
      v14 = 0;
      v15 += v18 & 1;
      v18 = 0;
    }

    ++v16;
  }

  while (v16 != v8);
  if (!v15)
  {
    return 0;
  }

  if (v8 >= 0xFFFF)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  v23 = 1;
  if (v8 >= 0xFFFF)
  {
    v23 = 2;
  }

  v24 = 2 * (v15 << v23);
  v47 = malloc_type_malloc(v24, 0x9EA893D5uLL);
  v45 = v24;
  v46 = v22;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v48 += 22;
  v31 = 1;
  do
  {
    if (a2 < 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = 0;
      v33 = v48;
      while (1)
      {
        *v34.i64 = C3DConvertFloatingTypeToFloat4(*(v33 - 2), (*(v33 - 22) + v28 * *v33), v25, v26.f32[0], v27);
        v26.i64[0] = 0x3400000034000000;
        v26.i64[1] = 0x3400000034000000;
        v25 = vcgeq_f32(vabsq_f32(v34), v26);
        v25.i32[0] = vmaxvq_u32(v25);
        if (v25.i32[0] < 0)
        {
          break;
        }

        v33 += 32;
        if (a2 == ++v32)
        {
          goto LABEL_34;
        }
      }
    }

    if (v32 == a2)
    {
LABEL_34:
      if (!(v31 & 1 | (v29 <= a3)))
      {
        if (v8 > 0xFFFE)
        {
          *&v47[8 * v30 + 4] = v28 - v29;
        }

        else
        {
          *&v47[4 * v30 + 2] = v28 - v29;
        }

        ++v30;
        v31 = 1;
      }

      ++v29;
    }

    else if (v31)
    {
      v29 = 0;
      v31 = 0;
      if (v8 > 0xFFFE)
      {
        *&v47[8 * v30] = v28;
      }

      else
      {
        *&v47[4 * v30] = v28;
      }
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    ++v28;
  }

  while (v28 != v8);
  if (v31)
  {
    v39 = v46;
    v40 = v45;
  }

  else
  {
    v41 = (2 * v30) | 1;
    if (v8 > 0xFFFE)
    {
      *&v47[4 * v41] = v8 - v29;
    }

    else
    {
      *&v47[2 * v41] = v8 - v29;
    }

    v39 = v46;
    v40 = v45;
    LODWORD(v30) = v30 + 1;
  }

  v42 = v47;
  v43 = CFDataCreate(*MEMORY[0x277CBECE8], v47, v40);
  free(v42);
  v37 = C3DMeshElementCreate();
  C3DMeshElementSetType(v37, 2);
  C3DMeshElementSetPrimitives(v37, v30, v43, v39);
  CFRelease(v43);
  return v37;
}

void C3DMeshSourceContentClassifyRay(uint64_t a1, uint64_t a2, float32x4_t a3, __n128 a4, double a5, int8x16_t a6, int8x16_t a7)
{
  a6.i32[0] = a4.n128_i32[2];
  a7.i32[0] = 1.0;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v11.i32[0] = vbslq_s8(v11, a7, a6).i32[0];
  v12 = a4.n128_f32[1] / (fabsf(a4.n128_f32[2]) + 1.0);
  v13 = vmuls_lane_f32(v12, a4.n128_u64[0], 1);
  v7.f32[0] = -(a4.n128_f32[0] * v12);
  v8.f32[0] = a4.n128_f32[2] + (*v11.i32 * v13);
  v19.f32[0] = *v11.i32 * v7.f32[0];
  v14 = v8;
  v14.f32[1] = *v11.i32 * v7.f32[0];
  v21.f32[0] = -a4.n128_f32[0];
  v14.f32[2] = -a4.n128_f32[0];
  v18.f32[1] = -v8.f32[0];
  v18.f32[2] = v7.f32[0];
  v7.f32[1] = 1.0 - v13;
  v7.i32[2] = vmuls_lane_f32(-*v11.i32, a4.n128_u64[0], 1);
  v15 = vmulq_f32(a3, v14);
  v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  v22.f32[0] = -v16;
  v17 = vmulq_f32(a3, v7);
  v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
  v18.f32[3] = -(v12 * -a4.n128_f32[0]);
  v19.f32[1] = -(*v11.i32 * v7.f32[0]);
  v19.i32[2] = v7.i32[1];
  v19.f32[3] = -v7.f32[1];
  v20 = -(a4.n128_f32[1] * -*v11.i32);
  v21.i32[1] = a4.n128_u32[0];
  v21.i32[2] = v7.i32[2];
  v21.f32[3] = v20;
  v22.f32[1] = v16;
  v22.f32[2] = -v17.f32[0];
  v22.f32[3] = v17.f32[0];
  v23 = *(a1 + 16);
  if (*(a1 + 23) == 1)
  {
    if (v23)
    {
      v24 = 0;
      v25 = vnegq_f32(v22);
      do
      {
        v26 = (*a1 + v24 * *(a1 + 22));
        v27 = vcgtq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, v26[1]), v18, *v26), v21, v26[2]), v25);
        v28 = vand_s8(*&vextq_s8(v27, v27, 8uLL), 0x800000004);
        *(a2 + v24++) = v27.i8[4] & 2 | (v27.i32[0] < 0) | v28.i8[0] | v28.i8[4];
      }

      while (v24 < *(a1 + 16));
    }
  }

  else if (v23)
  {
    v29 = 0;
    v30 = vnegq_f32(v22);
    v32 = v30;
    v34 = v19;
    v35 = v18;
    v33 = v21;
    do
    {
      *v31.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 20), (*a1 + v29 * *(a1 + 22)), v30, a4.n128_f32[0], v20);
      v30 = vcgtq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v34, *v31.f32, 1), v35, v31.f32[0]), v33, v31, 2), v32);
      a4.n128_u64[0] = vand_s8(*&vextq_s8(v30, v30, 8uLL), 0x800000004);
      *(a2 + v29++) = v30.i8[4] & 2 | (v30.i32[0] < 0) | a4.n128_u8[0] | a4.n128_u8[4];
    }

    while (v29 < *(a1 + 16));
  }
}

void __MergeRendererElementsSharingSameMaterial(void *a1, CFArrayRef theArray, uint64_t a3)
{
  *&v55[5] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v7 = Count;
    v8 = *CFArrayGetValueAtIndex(theArray, 0);
    DoubleSided = C3DMeshElementGetDoubleSided(v8);
    Type = C3DMeshElementGetType(v8);
    if (Type == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    bytes = v11;
    if (*(a3 + 8))
    {
      v12 = Type;
      v50 = DoubleSided;
      v53 = a1;
      if (v7 < 1)
      {
        v14 = 0;
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (ValueAtIndex[2] != a1)
          {
            v17 = scn_default_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              __MergeRendererElementsSharingSameMaterial_cold_1(v54, v55, v17);
            }
          }

          v18 = *ValueAtIndex;
          PrimitiveCount = C3DMeshElementGetPrimitiveCount(*ValueAtIndex);
          if (i < v7 - 1 && v12 == 1)
          {
            if (C3DMeshElementGetPrimitiveCount(v18))
            {
              v14 += 3;
            }

            else
            {
              v14 += 2;
            }
          }

          v13 += PrimitiveCount;
        }
      }

      v31 = v14 + 2 * v7 + v13;
      if (v12 == 1)
      {
        v32 = v31 - 2;
      }

      else
      {
        v31 = v13 * bytes;
        v32 = v13;
      }

      length = v31 * *(a3 + 12);
      v49 = v32;
      bytesa = C3DMalloc(length);
      if (v7 >= 1)
      {
        v33 = 0;
        v34 = bytesa;
        do
        {
          v35 = CFArrayGetValueAtIndex(theArray, v33);
          v36 = *v35;
          Value = CFDictionaryGetValue(*(a3 + 16), v35);
          appended = __AppendIndexes(v34, v36, Value, *(a3 + 12));
          v34 = appended;
          if (v12 == 1 && v33 < v7 - 1)
          {
            memcpy(appended, &appended[-*(a3 + 12)], *(a3 + 12));
            v39 = (v34 + *(a3 + 12));
            if (C3DMeshElementGetPrimitiveCount(v36))
            {
              memcpy(v39, v39 - *(a3 + 12), *(a3 + 12));
              v39 = (v39 + *(a3 + 12));
            }

            v40 = CFArrayGetValueAtIndex(theArray, ++v33);
            v41 = *v40;
            v42 = CFDictionaryGetValue(*(a3 + 16), v40);
            v43 = *(a3 + 12);
            v44 = C3DMeshElementGetIndex(v41, 0, 0, 0) + v42;
            if (v43 == 2)
            {
              *v39 = v44;
            }

            else if (v43 == 4)
            {
              *v39 = v44;
            }

            else
            {
              *v39 = v44;
            }

            a1 = v53;
            v34 = v39 + *(a3 + 12);
          }

          else
          {
            ++v33;
          }
        }

        while (v33 != v7);
      }

      v45 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytesa, length, *MEMORY[0x277CBECE8]);
      v46 = C3DMeshElementCreate();
      C3DMeshElementSetDoubleSided(v46, v50);
      C3DMeshElementInit(v46, v12, v49, v45, *(a3 + 12));
      CFRelease(v45);
      Mesh = C3DGeometryGetMesh(*a3);
      C3DMeshAppendElement(Mesh, v46);
      CFRelease(v46);
      if (a1)
      {
        C3DGeometryAppendMaterial(*a3, a1);
      }
    }

    else if (v7 >= 1)
    {
      v20 = 0;
      v21 = *MEMORY[0x277CBECE8];
      do
      {
        v22 = CFArrayGetValueAtIndex(theArray, v20);
        v23 = *v22;
        v24 = C3DMeshElementGetPrimitiveCount(*v22) * bytes * *(a3 + 12);
        v25 = C3DMalloc(v24);
        v26 = CFDictionaryGetValue(*(a3 + 16), v22);
        __AppendIndexes(v25, v23, v26, *(a3 + 12));
        Copy = C3DMeshElementCreateCopy(v23);
        v28 = CFDataCreateWithBytesNoCopy(v21, v25, v24, v21);
        v29 = C3DMeshElementGetPrimitiveCount(Copy);
        C3DMeshElementSetPrimitives(Copy, v29, v28, *(a3 + 12));
        CFRelease(v28);
        v30 = C3DGeometryGetMesh(*a3);
        C3DMeshAppendElement(v30, Copy);
        CFRelease(Copy);
        if (a1)
        {
          C3DGeometryAppendMaterial(*a3, a1);
        }

        ++v20;
      }

      while (v7 != v20);
    }

    __DestroyFlattenElementsArray(theArray);
  }
}

uint64_t __AppendIndexes(uint64_t a1, uint64_t a2, int a3, int a4)
{
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  if (C3DMeshElementGetType(a2) == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  C3DMeshElementGetFastIndexLookupInfo(a2, &v29);
  if (C3DMeshElementGetType(a2) == 1)
  {
    if (a4 == 2)
    {
      if (PrimitiveCount < -1)
      {
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = PrimitiveCount + 2;
        do
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 2 * v15) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v26, 3 * (v15 / 3), v15 % 3, 0) + a3;
          ++v15;
        }

        while (v16 != v15);
      }

      return a1 + 2 * v16;
    }

    else if (a4 == 1)
    {
      if (PrimitiveCount < -1)
      {
        v11 = 0;
      }

      else
      {
        v10 = 0;
        v11 = PrimitiveCount + 2;
        do
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + v10) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v26, 3 * (v10 / 3), v10 % 3, 0) + a3;
          ++v10;
        }

        while (v11 != v10);
      }

      return a1 + v11;
    }

    else
    {
      if (PrimitiveCount < -1)
      {
        v21 = 0;
      }

      else
      {
        v20 = 0;
        v21 = PrimitiveCount + 2;
        do
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 4 * v20) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v26, 3 * (v20 / 3), v20 % 3, 0) + a3;
          ++v20;
        }

        while (v21 != v20);
      }

      return a1 + 4 * v21;
    }
  }

  else if (a4 == 1)
  {
    if (PrimitiveCount < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + v18 + i) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v26, v17, i, 0) + a3;
        }

        ++v17;
        v18 += i;
      }

      while (v17 != PrimitiveCount);
    }

    return a1 + v18;
  }

  else if (a4 == 2)
  {
    if (PrimitiveCount < 1)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 2 * v13 + 2 * j) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v26, v12, j, 0) + a3;
        }

        ++v12;
        v13 += j;
      }

      while (v12 != PrimitiveCount);
    }

    return a1 + 2 * v13;
  }

  else
  {
    if (PrimitiveCount < 1)
    {
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        for (k = 0; k != v9; ++k)
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          *(a1 + 4 * v23 + 4 * k) = C3DMeshElementGetIndexUsingFastIndexLookupInfo(&v26, v22, k, 0) + a3;
        }

        ++v22;
        v23 += k;
      }

      while (v22 != PrimitiveCount);
    }

    return a1 + 4 * v23;
  }
}

void _unifyNormals(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  ElementsCount = C3DMeshGetElementsCount(a1);
  Count = C3DMeshSourceGetCount(a3);
  v50 = 0u;
  v51 = 0u;
  C3DMeshSourceGetContent(a2, &v50);
  v48 = 0u;
  v49 = 0u;
  C3DMeshSourceGetContent(a3, &v48);
  if (a5)
  {
    WeldRemappingTable = C3DMeshSourceCreateWeldRemappingTable(a2);
    if (!Count)
    {
      goto LABEL_7;
    }
  }

  else
  {
    WeldRemappingTable = 0;
    if (!Count)
    {
      goto LABEL_7;
    }
  }

  for (i = 0; i != Count; ++i)
  {
    C3DConvertFloatingTypeFromFloat4(BYTE4(v49), v48 + i * BYTE6(v49), 0);
  }

LABEL_7:
  if (ElementsCount >= 1)
  {
    v17 = 0;
    v32 = v51 - 1;
    do
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, v17, a4);
      if (a4)
      {
        ChannelForSourceWithSemanticAtIndex = 0;
      }

      else
      {
        ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, 0, 0);
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v44);
      if ((v46.n128_u8[2] & 0xFA) != 0)
      {
        v20 = scn_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_DEFAULT, "Warning: C3DUnifyNormalsFromGeometry can only process triangles and polygons", buf, 2u);
        }
      }

      else
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = ___unifyNormals_block_invoke;
        v37[3] = &__block_descriptor_108_e19_v32__0I8_I12I20_B24l;
        v43 = v32;
        v38 = v50;
        v39 = v51;
        v40 = WeldRemappingTable;
        v41 = v48;
        v42 = v49;
        *buf = v44;
        v34 = v45;
        v35 = v46;
        v36 = v47;
        C3DIndicesContentEnumeratePrimitives(buf, v37, v46);
      }

      ++v17;
    }

    while (ElementsCount != v17);
  }

  if (WeldRemappingTable && Count)
  {
    for (j = 0; j != Count; ++j)
    {
      v22 = WeldRemappingTable[j];
      if (j != v22)
      {
        *v23.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v49), (v48 + v22 * BYTE6(v49)), v12, v13, v14);
        C3DConvertFloatingTypeFromFloat4(BYTE4(v49), v48 + j * BYTE6(v49), v23);
      }
    }
  }

  if (Count)
  {
    for (k = 0; k != Count; ++k)
    {
      *v25.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v49), (v48 + k * BYTE6(v49)), v12, v13, v14);
      v26 = vmulq_f32(v25, v25);
      v26.f32[0] = v26.f32[2] + vaddv_f32(*v26.f32);
      v27 = vdupq_lane_s32(*v26.f32, 0);
      v28 = vrsqrteq_f32(v27);
      v29 = vmulq_f32(v28, vrsqrtsq_f32(v27, vmulq_f32(v28, v28)));
      v30 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v26.f32[0] != 0.0)), 0x1FuLL));
      v30.i32[3] = 0;
      v31 = vbslq_s8(vcltzq_s32(v30), vmulq_f32(v25, vmulq_f32(v29, vrsqrtsq_f32(v27, vmulq_f32(v29, v29)))), v25);
      v31.i32[3] = v25.i32[3];
      C3DConvertFloatingTypeFromFloat4(BYTE4(v49), v48 + k * BYTE6(v49), v31);
    }
  }

  free(WeldRemappingTable);
}

void ___unifyNormalsOptimized_block_invoke(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, int32x4_t a5, uint64_t a6, unsigned int *a7, unsigned int a8)
{
  v9 = a7;
  if (a8 <= 2)
  {
    v29 = scn_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      ___unifyNormalsOptimized_block_invoke_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
      if (!a8)
      {
        return;
      }
    }

    else if (!a8)
    {
      return;
    }
  }

  else if (a8 == 3)
  {
    v11 = *(a1 + 104);
    v12 = *a7;
    if (v11 < *a7)
    {
      v12 = *(a1 + 104);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 54);
    v15 = v13 + v12 * v14;
    a2.i64[0] = *v15;
    a2.i32[2] = *(v15 + 8);
    *a3.f32 = vmul_s32(vmin_u32(vdup_n_s32(v11), *(a7 + 1)), vdup_n_s32(v14));
    v16 = v13 + a3.u32[0];
    a4.i64[0] = *v16;
    a4.i32[2] = *(v16 + 8);
    v17 = v13 + a3.u32[1];
    a3.i64[0] = *v17;
    a3.i32[2] = *(v17 + 8);
    v18 = vsubq_f32(a4, a2);
    v19 = vsubq_f32(a3, a2);
    v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
    v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
    v21.i32[3] = 0;
    v22 = vmulq_f32(v21, v21);
    *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v23 = vdupq_lane_s32(vadd_f32(*v22.i8, vdup_lane_s32(*v22.i8, 1)), 0);
    v24 = vrsqrteq_f32(v23);
    v25 = vmulq_f32(v24, vrsqrtsq_f32(v23, vmulq_f32(v24, v24)));
    v26 = vmulq_f32(vmulq_f32(v25, vrsqrtsq_f32(v23, vmulq_f32(v25, v25))), v21);
    v27 = vceqzq_f32(v23);
    v28 = vbslq_s8(v27, v21, v26);
    goto LABEL_22;
  }

  v37 = 0uLL;
  v38 = a8;
  v39 = v9;
  do
  {
    v41 = *v39++;
    v40 = v41;
    if (*(a1 + 104) < v41)
    {
      v40 = *(a1 + 104);
    }

    v42 = *(a1 + 32) + v40 * *(a1 + 54);
    a3.i64[0] = *v42;
    a3.i32[2] = *(v42 + 8);
    v37 = vaddq_f32(v37, a3);
    --v38;
  }

  while (v38);
  v43 = 0;
  a3.f32[0] = a8;
  v44 = vdivq_f32(v37, vdupq_lane_s32(*a3.f32, 0));
  v45 = *(a1 + 104);
  v46 = *(a1 + 32);
  v47 = *(a1 + 54);
  v48 = 0uLL;
  do
  {
    v49 = v9[v43];
    if (v45 < v49)
    {
      v49 = *(a1 + 104);
    }

    v50 = a8 - 1 == v43;
    v51 = v43 + 1;
    v52 = (v43 + 1);
    if (v50)
    {
      v52 = 0;
    }

    v53 = v9[v52];
    if (v45 < v53)
    {
      v53 = *(a1 + 104);
    }

    v54 = v46 + v49 * v47;
    a4.i64[0] = *v54;
    a4.i32[2] = *(v54 + 8);
    v55 = v46 + v53 * v47;
    a5.i64[0] = *v55;
    a5.i32[2] = *(v55 + 8);
    v56 = vsubq_f32(a4, v44);
    v57 = vsubq_f32(a5, v44);
    v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), vnegq_f32(v56)), v57, vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL));
    a5 = vuzp1q_s32(v58, v58);
    a4 = vaddq_f32(v48, vextq_s8(a5, v58, 0xCuLL));
    a4.i32[3] = v48.i32[3];
    v43 = v51;
    v48 = a4;
  }

  while (a8 != v51);
  if (a8)
  {
    v59 = vmulq_f32(a4, a4);
    *v59.i8 = vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
    v60 = vdupq_lane_s32(vadd_f32(*v59.i8, vdup_lane_s32(*v59.i8, 1)), 0);
    v61 = vrsqrteq_f32(v60);
    v62 = vmulq_f32(v61, vrsqrtsq_f32(v60, vmulq_f32(v61, v61)));
    v27 = vmulq_f32(a4, vmulq_f32(v62, vrsqrtsq_f32(v60, vmulq_f32(v62, v62))));
    v28 = vbslq_s8(vceqzq_f32(v60), a4, v27);
LABEL_22:
    v63 = *(a1 + 104);
    v64 = *(a1 + 64);
    v65 = *(a1 + 72);
    v66 = a8;
    v67 = *(a1 + 94);
    do
    {
      v69 = *v9++;
      v68 = v69;
      if (v63 < v69)
      {
        v68 = v63;
      }

      if (v64)
      {
        v68 = *(v64 + 4 * v68);
      }

      v70 = v65 + v68 * v67;
      v27.i64[0] = *v70;
      v27.i32[2] = *(v70 + 8);
      v27 = vaddq_f32(v28, v27);
      *v70 = v27.i64[0];
      *(v70 + 8) = v27.i32[2];
      --v66;
    }

    while (v66);
  }
}

float32x4_t ___unifyNormals_block_invoke(uint64_t a1, float32x4_t a2, float a3, float32x4_t a4, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  LODWORD(v7) = a7;
  v8 = a6;
  if (a7 <= 2)
  {
    v30 = scn_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      ___unifyNormalsOptimized_block_invoke_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
      if (v7)
      {
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (a7 == 3)
  {
    v10 = *(a1 + 104);
    v11 = *a6;
    if (v10 < *a6)
    {
      v11 = *(a1 + 104);
    }

    if (v10 >= a6[1])
    {
      v12 = a6[1];
    }

    else
    {
      v12 = *(a1 + 104);
    }

    if (v10 >= a6[2])
    {
      v13 = a6[2];
    }

    else
    {
      v13 = *(a1 + 104);
    }

    *v14.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 52), (*(a1 + 32) + v11 * *(a1 + 54)), a2, a3, a4.f32[0]);
    v71 = v14;
    *v17.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 52), (*(a1 + 32) + v12 * *(a1 + 54)), v14, v15, v16);
    v69 = v17;
    *v20.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 52), (*(a1 + 32) + v13 * *(a1 + 54)), v17, v18, v19);
    v21 = vsubq_f32(v69, v71);
    v22 = vsubq_f32(v20, v71);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v21)), v22, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
    result = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    result.i32[3] = 0;
    v25 = vmulq_f32(result, result);
    *v25.i8 = vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    v26 = vdupq_lane_s32(vadd_f32(*v25.i8, vdup_lane_s32(*v25.i8, 1)), 0);
    v27 = vrsqrteq_f32(v26);
    v28 = vmulq_f32(v27, vrsqrtsq_f32(v26, vmulq_f32(v27, v27)));
    v29 = vmulq_f32(vmulq_f32(v28, vrsqrtsq_f32(v26, vmulq_f32(v28, v28))), result);
    goto LABEL_30;
  }

LABEL_14:
  v38 = 0uLL;
  v39 = v7;
  v40 = v8;
  do
  {
    v72 = v38;
    v41 = *(a1 + 104);
    v43 = *v40++;
    v42 = v43;
    if (v41 >= v43)
    {
      v41 = v42;
    }

    *a2.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 52), (*(a1 + 32) + v41 * *(a1 + 54)), a2, v38.f32[0], a4.f32[0]);
    v38 = vaddq_f32(v72, a2);
    --v39;
  }

  while (v39);
  v44 = 0;
  a2.f32[0] = v7;
  result = vdivq_f32(v38, vdupq_lane_s32(*a2.f32, 0));
  v68 = result;
  v45 = 0uLL;
  do
  {
    v73 = v45;
    v46 = *(a1 + 104);
    v47 = v8[v44];
    if (v46 < v47)
    {
      v47 = *(a1 + 104);
    }

    v48 = v44 + 1;
    if (v7 - 1 == v44)
    {
      v49 = 0;
    }

    else
    {
      v49 = (v44 + 1);
    }

    v50 = v8[v49];
    if (v46 >= v50)
    {
      v51 = v50;
    }

    else
    {
      v51 = *(a1 + 104);
    }

    *v52.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 52), (*(a1 + 32) + v47 * *(a1 + 54)), result, v45.f32[0], a4.f32[0]);
    v70 = v52;
    *v55.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 52), (*(a1 + 32) + v51 * *(a1 + 54)), v52, v53, v54);
    v56 = vsubq_f32(v70, v68);
    v57 = vsubq_f32(v55, v68);
    a4 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
    v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), vnegq_f32(v56)), v57, a4);
    result = vaddq_f32(v73, vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL));
    result.i32[3] = v73.i32[3];
    v44 = v48;
    v45 = result;
  }

  while (v7 != v48);
  if (v7)
  {
    v59 = vmulq_f32(result, result);
    *v59.i8 = vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
    v26 = vdupq_lane_s32(vadd_f32(*v59.i8, vdup_lane_s32(*v59.i8, 1)), 0);
    v60 = vrsqrteq_f32(v26);
    v61 = vmulq_f32(v60, vrsqrtsq_f32(v26, vmulq_f32(v60, v60)));
    v29 = vmulq_f32(result, vmulq_f32(v61, vrsqrtsq_f32(v26, vmulq_f32(v61, v61))));
LABEL_30:
    v62 = vceqzq_f32(v26);
    result = vbslq_s8(v62, result, v29);
    v74 = result;
    v7 = v7;
    do
    {
      v63 = *(a1 + 64);
      v64 = v8;
      if (v63)
      {
        v64 = (v63 + 4 * *v8);
      }

      v65 = *(a1 + 72);
      v66 = *v64 * *(a1 + 94);
      *v67.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 92), (v65 + v66), result, *v62.i32, *v29.i32);
      C3DConvertFloatingTypeFromFloat4(*(a1 + 92), v65 + v66, vaddq_f32(v74, v67));
      ++v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

C3D::RenderPass *C3D::DeferredShadowPass::DeferredShadowPass(C3D::DeferredShadowPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DNode *a4, C3D::DrawNodesPass *a5)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC2770;
  *(result + 31) = a4;
  *(result + 32) = a5;
  *(result + 264) = 0;
  return result;
}

uint64_t C3D::DeferredShadowPass::setup(C3D::DeferredShadowPass *this)
{
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v7);
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *(v2 + 64) = 1;
  *(v2 + 66) |= 4u;
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  *(v3 + 8) = "DEPTH";
  *(v3 + 64) = 2;
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 2u);
  *(v4 + 8) = C3D::Pass::nameWithPrefixAndPointer(this, "SceneKit-spotShadowDepth-", *(this + 31));
  *(v4 + 64) = 2;
  *(v4 + 24) = 0;
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v5 + 8) = "COLOR";
  *(v5 + 65) = 0;
  result = C3DEngineContextGetEyeCount(*(this + 2));
  if (result >= 2)
  {
    result = C3DEngineContextGetEyeCount(*(this + 2));
    *(this + 19) = result;
    *(this + 120) = 1;
    *(this + 264) = 1;
  }

  return result;
}

void C3D::DeferredShadowPass::compile(C3D::DeferredShadowPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  Light = C3DNodeGetLight(*(this + 31));
  if (Light)
  {
    v4 = Light;
    if (C3DLightSupportsShadowCascades(Light))
    {
      ShadowCascadeCount = C3DLightGetShadowCascadeCount(v4);
    }

    else
    {
      ShadowCascadeCount = 1;
    }

    EffectiveShadowSampleCount = C3DLightGetEffectiveShadowSampleCount(v4);
    ShadowCascadeDebugFactor = C3DLightGetShadowCascadeDebugFactor(v4);
    Type = C3DLightGetType(v4);
    if (([(SCNMTLRenderContext *)RenderContext enableARMode]& 1) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing];
    }

    if (v10)
    {
      v11 = 0x2000000;
    }

    else
    {
      v11 = 0;
    }

    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(this + 2));
    v13 = (*(this + 264) << 24) | (*(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28) << 19) | v11 | ((4 * (ShadowCascadeDebugFactor > 0.0)) | (2 * (Type == 3)) | (CoordinatesSystemOptions >> 3) & 1 | (8 * EffectiveShadowSampleCount) | (ShadowCascadeCount << 11));
    v14 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v13) ^ ((0xC6A4A7935BD1E995 * v13) >> 47))));
    v15 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v14 ^ (v14 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v14 ^ (v14 >> 47))) >> 47));
    *(this + 30) = v15;
    if (!v15)
    {
      operator new();
    }
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      C3D::DeferredShadowPass::compile(v6);
    }
  }
}

void C3D::DeferredShadowPass::execute(C3D::Pass *a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  Light = C3DNodeGetLight(*(a1 + 31));
  if (Light)
  {
    v6 = Light;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    memset(&v55[64], 0, 64);
    EffectiveShadowSampleCount = C3DLightGetEffectiveShadowSampleCount(Light);
    if (EffectiveShadowSampleCount >= 2)
    {
      C3DLightComputeShadowKernel(v6, v55, EffectiveShadowSampleCount, *(a1 + 2));
    }

    Scene = C3DEngineContextGetScene(*(a1 + 2));
    LightingSystem = C3DSceneGetLightingSystem(Scene);
    v10 = *(a1 + 31);
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(a1 + 2));
    C3DLightingSystemComputeShadowMatrices(LightingSystem, v10, v74, 0, v73, &v60, v61, CoordinatesSystemOptions);
    v56 = v73[0];
    v57 = v73[1];
    v58 = v73[2];
    v59 = v73[3];
    v48 = v76;
    v51 = v75;
    CullingContext = C3D::DrawNodesPass::getCullingContext(*(a1 + 32));
    v13 = *(CullingContext + 3088);
    v14 = *(CullingContext + 3104);
    v15 = *(CullingContext + 3120);
    v62 = vaddq_f32(*(CullingContext + 3136), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v48.f32, 1), v13, v48.f32[0]), v15, v48, 2));
    v63 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v51.f32, 1), v13, v51.f32[0]), v15, v51, 2);
    C3DLightComputeSpotAttenuations(v6);
    v64 = v16;
    v61[16] = C3DLightGetShadowCascadeDebugFactor(v6);
    RealShadowMapSize = C3DLightGetRealShadowMapSize(v6);
    ShadowRadius = C3DLightGetShadowRadius(v6);
    v18 = RealShadowMapSize.i32[1];
    if (*RealShadowMapSize.i32 >= *&RealShadowMapSize.i32[1])
    {
      v18 = RealShadowMapSize.i32[0];
    }

    v65 = ShadowRadius / fmaxf(*&v18, 1.0);
    ShadowColor = C3DLightGetShadowColor(v6);
    v67 = v20;
    v66 = ShadowColor;
    v21 = *(a2 + 16);
    v22 = C3D::DrawNodesPass::getCullingContext(*(a1 + 32));
    if (v21)
    {
      v78 = __invert_f4(*(v22 + 3472 + (*(a2 + 16) << 6)));
      v46 = v78.columns[1];
      v47 = v78.columns[0];
      v49 = v78.columns[3];
      v53 = v78.columns[2];
      v79 = *(C3D::DrawNodesPass::getCullingContext(*(a1 + 32)) + (*(a2 + 16) << 6) + 3088);
      v80 = __invert_f4(v79);
      v42 = v80.columns[1];
      v43 = v80.columns[0];
      v44 = v80.columns[3];
      v45 = v80.columns[2];
      v23 = C3D::DrawNodesPass::getCullingContext(*(a1 + 32));
      v24 = 0;
      v25 = v23[193];
      v26 = v23[194];
      v27 = v23[195];
      v28 = v23[196];
      v68 = v43;
      v69 = v42;
      v70 = v45;
      v71 = v44;
      do
      {
        v72.columns[v24 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v68 + v24 * 4))), v26, *&v68.f32[v24], 1), v27, *(&v68 + v24 * 4), 2), v28, *(&v68 + v24 * 4), 3);
        v24 += 4;
      }

      while (v24 != 16);
      v29 = 0;
      v30 = v72.columns[0];
      v31 = v72.columns[1];
      v32 = v72.columns[2];
      v33 = v72.columns[3];
      v68 = v47;
      v69 = v46;
      v70 = v53;
      v71 = v49;
      do
      {
        v72.columns[v29 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v68 + v29 * 4))), v31, *&v68.f32[v29], 1), v32, *(&v68 + v29 * 4), 2), v33, *(&v68 + v29 * 4), 3);
        v29 += 4;
      }

      while (v29 != 16);
      v34 = v72;
    }

    else
    {
      v34 = __invert_f4(*(v22 + 3472));
    }

    *v55[64].f32 = v34;
    v36 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 30) + 16) :"state" detail:? :?NSRetainFct];
    if (*(v4 + 3376) != v36)
    {
      *(v4 + 3376) = v36;
      [*(v4 + 3392) setRenderPipelineState:v36];
    }

    if (*(a1 + 264) == 1)
    {
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(a1 + 2), *(a2 + 16));
      v54 = vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL);
      v50 = vextq_s8(v54, v54, 8uLL).u64[0];
      v81.val[0] = vdiv_f32(vzip1_s32(*v54.i8, v50), vdup_laneq_s32(*(*(*a1 + 88))(a1), 2));
      v81.val[1] = vdiv_f32(vzip2_s32(*v54.i8, v50), vdup_laneq_s32(*(*(*a1 + 88))(a1), 3));
      v38 = &v72;
      vst2_f32(v38, v81);
      SCNMTLRenderCommandEncoder::setVertexBytes(v4, &v72, 0x10uLL, 0);
    }

    v39 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v39, 0);
    v40 = C3D::Pass::inputTextureAtIndex(a1, 1u);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v40, 1uLL);
    v41 = C3D::Pass::inputTextureAtIndex(a1, 2u);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v41, 2uLL);
    SCNMTLRenderCommandEncoder::setFragmentBytes(v4, v55, 0x560uLL, 0);
    SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4);
  }

  else
  {
    v35 = scn_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      C3D::DeferredShadowPass::execute(v35);
    }
  }
}

void C3D::DeferredShadowPassResource::~DeferredShadowPassResource(C3D::DeferredShadowPassResource *this)
{
  *this = &unk_282DC27E0;
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
  *this = &unk_282DC27E0;
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

BOOL c3dPhysicsField::contains(float32x4_t *a1, float32x2_t *a2)
{
  v3 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *a2, 1), a1[5], COERCE_FLOAT(*a2->f32)), a1[7], *a2->f32, 2));
  if (a1[12].i8[15] == 1)
  {
    v4 = vdivq_f32(v3, a1[11]);
    v5 = vmulq_f32(v4, v4);
    v6 = v5.f32[2] + vaddv_f32(*v5.f32);
    v7 = 1.0;
    if (v6 < 1.0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = vcgtq_f32(a1[11], vabsq_f32(v3));
  v12.i32[3] = v12.i32[2];
  v13 = vminvq_u32(v12);
  v7 = 1.0;
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = a1[12].f32[0];
  if (v8 > 0.0)
  {
    v9 = vmulq_f32(v3, v3);
    v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)) - a1[12].f32[1];
    if (v10 >= 0.0)
    {
      v7 = powf(v10, -v8);
    }
  }

  v11 = 1;
LABEL_9:
  a1[13].f32[0] = v7 * a1[10].f32[0];
  return a1[12].u8[13] != v11;
}

void c3dPhysicsFieldLinearGravity::c3dPhysicsFieldLinearGravity(c3dPhysicsFieldLinearGravity *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v3.i64[0] = 0x80000000800000;
  v3.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v3);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC2840;
  *(this + 15) = 0u;
}

float32x4_t c3dPhysicsFieldLinearGravity::_transformHasChanged(c3dPhysicsFieldLinearGravity *this)
{
  result = *(this + 1);
  *(this + 16) = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(*(this + 2), *(this + 240), 1), result, COERCE_FLOAT(*(this + 15))), *(this + 3), *(this + 15), 2);
  return result;
}

void c3dPhysicsFieldLinearGravity::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, double a5, double a6, double a7, double a8, double a9, __n128 a10)
{
  if (a3 < a4)
  {
    v12 = a3;
    v13 = a4;
    do
    {
      a10.n128_f32[0] = *(a2 + 56) * a1[10].f32[0];
      v14 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *(*a2 + 16 * v12), 1), a1[5], COERCE_FLOAT(*(*a2 + 16 * v12))), a1[7], *(*a2 + 16 * v12), 2));
      if (a1[12].i8[15] == 1)
      {
        v15 = vmulq_f32(v14, a1[11]);
        v16 = vmulq_f32(v15, v15);
        if ((v16.f32[2] + vaddv_f32(*v16.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v22 = vcgtq_f32(a1[11], vabsq_f32(v14));
        v22.i32[3] = v22.i32[2];
        if ((vminvq_u32(v22) & 0x80000000) != 0)
        {
LABEL_5:
          v17 = a1[12].f32[0];
          if (v17 > 0.0)
          {
            v18 = vmulq_f32(v14, v14);
            v19 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)) - a1[12].f32[1];
            v20 = 1.0;
            if (v19 >= 0.0)
            {
              v25 = a10;
              v20 = powf(v19, -v17);
              a10 = v25;
            }

            a10.n128_f32[0] = a10.n128_f32[0] * v20;
          }

          v21 = 1;
          goto LABEL_12;
        }
      }

      v21 = 0;
LABEL_12:
      if (a1[12].u8[13] != v21)
      {
        v23 = *(a2 + 8);
        v24 = vmlaq_n_f32(*(v23 + 16 * v12), a1[16], a10.n128_f32[0]);
        v24.i32[3] = HIDWORD(*(v23 + 16 * v12));
        *(v23 + 16 * v12) = v24;
      }

      ++v12;
    }

    while (v13 != v12);
  }
}

void c3dPhysicsFieldRadialGravity::c3dPhysicsFieldRadialGravity(c3dPhysicsFieldRadialGravity *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC2880;
}

double c3dPhysicsFieldRadialGravity::evalForce(float32x4_t *a1, float32x4_t a2, double a3, float a4)
{
  v4 = vsubq_f32(a2, a1[14]);
  v5 = vmulq_f32(v4, v4);
  v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  if (v6 < (a1[12].f32[1] * a1[12].f32[1]))
  {
    v6 = a1[12].f32[1] * a1[12].f32[1];
  }

  *&result = vmulq_n_f32(vnegq_f32(v4), (a1[13].f32[0] * a4) / (v6 * sqrtf(v6))).u64[0];
  return result;
}

void c3dPhysicsFieldRadialGravity::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 < a4)
  {
    v6 = a3;
    v7 = a4;
    do
    {
      v8 = *(*a2 + 16 * v6);
      v9 = *(a2 + 56) * a1[10].f32[0];
      v10 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *v8.f32, 1), a1[5], v8.f32[0]), a1[7], v8, 2));
      if (a1[12].i8[15] == 1)
      {
        v11 = vmulq_f32(v10, a1[11]);
        v12 = vmulq_f32(v11, v11);
        if ((v12.f32[2] + vaddv_f32(*v12.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = vcgtq_f32(a1[11], vabsq_f32(v10));
        v18.i32[3] = v18.i32[2];
        if ((vminvq_u32(v18) & 0x80000000) != 0)
        {
LABEL_5:
          v13 = a1[12].f32[0];
          if (v13 > 0.0)
          {
            v14 = vmulq_f32(v10, v10);
            v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) - a1[12].f32[1];
            v16 = 1.0;
            if (v15 >= 0.0)
            {
              v24 = *(*a2 + 16 * v6);
              v16 = powf(v15, -v13);
              v8 = v24;
            }

            v9 = v9 * v16;
          }

          v17 = 1;
          goto LABEL_12;
        }
      }

      v17 = 0;
LABEL_12:
      if (a1[12].u8[13] != v17)
      {
        v19 = vsubq_f32(v8, a1[14]);
        v20 = vmulq_f32(v19, v19);
        v21 = v20.f32[2] + vaddv_f32(*v20.f32);
        if (v21 < (a1[12].f32[1] * a1[12].f32[1]))
        {
          v21 = a1[12].f32[1] * a1[12].f32[1];
        }

        v22 = *(a2 + 8);
        v23 = vsubq_f32(*(v22 + 16 * v6), vmulq_n_f32(v19, v9 / (v21 * sqrtf(v21))));
        v23.i32[3] = HIDWORD(*(v22 + 16 * v6));
        *(v22 + 16 * v6) = v23;
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

void c3dPhysicsFieldSpring::c3dPhysicsFieldSpring(c3dPhysicsFieldSpring *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC28C0;
}

double c3dPhysicsFieldSpring::evalForce(float32x4_t *a1, float32x4_t a2, double a3, float a4)
{
  v4 = vsubq_f32(a2, a1[14]);
  v5 = vmulq_f32(v4, v4);
  v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  if (v6 < (a1[12].f32[1] * a1[12].f32[1]))
  {
    v6 = a1[12].f32[1] * a1[12].f32[1];
  }

  *&result = vmulq_n_f32(vnegq_f32(v4), (a1[13].f32[0] * sqrtf(v6)) * a4).u64[0];
  return result;
}

void c3dPhysicsFieldSpring::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 < a4)
  {
    v6 = a3;
    v7 = a4;
    do
    {
      v8 = *(*a2 + 16 * v6);
      v9 = *(a2 + 56) * a1[10].f32[0];
      v10 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *v8.f32, 1), a1[5], v8.f32[0]), a1[7], v8, 2));
      if (a1[12].i8[15] == 1)
      {
        v11 = vmulq_f32(v10, a1[11]);
        v12 = vmulq_f32(v11, v11);
        if ((v12.f32[2] + vaddv_f32(*v12.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = vcgtq_f32(a1[11], vabsq_f32(v10));
        v18.i32[3] = v18.i32[2];
        if ((vminvq_u32(v18) & 0x80000000) != 0)
        {
LABEL_5:
          v13 = a1[12].f32[0];
          if (v13 > 0.0)
          {
            v14 = vmulq_f32(v10, v10);
            v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) - a1[12].f32[1];
            v16 = 1.0;
            if (v15 >= 0.0)
            {
              v24 = *(*a2 + 16 * v6);
              v16 = powf(v15, -v13);
              v8 = v24;
            }

            v9 = v9 * v16;
          }

          v17 = 1;
          goto LABEL_12;
        }
      }

      v17 = 0;
LABEL_12:
      if (a1[12].u8[13] != v17)
      {
        v19 = vsubq_f32(v8, a1[14]);
        v20 = vmulq_f32(v19, v19);
        v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
        if (v21 < a1[12].f32[1])
        {
          v21 = a1[12].f32[1];
        }

        v22 = *(a2 + 8);
        v23 = vsubq_f32(*(v22 + 16 * v6), vmulq_n_f32(v19, v9 * v21));
        v23.i32[3] = HIDWORD(*(v22 + 16 * v6));
        *(v22 + 16 * v6) = v23;
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

void c3dPhysicsFieldElectric::c3dPhysicsFieldElectric(c3dPhysicsFieldElectric *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC2900;
}

double c3dPhysicsFieldElectric::evalForce(float32x4_t *a1, float32x4_t a2, double a3, double a4, float a5)
{
  v5 = vsubq_f32(a2, a1[14]);
  v6 = vmulq_f32(v5, v5);
  v6.f32[0] = v6.f32[2] + vaddv_f32(*v6.f32);
  if (v6.f32[0] < (a1[12].f32[1] * a1[12].f32[1]))
  {
    v6.f32[0] = a1[12].f32[1] * a1[12].f32[1];
  }

  v6.f32[0] = sqrtf(v6.f32[0]);
  *&result = vmulq_n_f32(vdivq_f32(v5, vdupq_lane_s32(*v6.f32, 0)), (a1[13].f32[0] * a5) / v6.f32[0]).u64[0];
  return result;
}

void c3dPhysicsFieldElectric::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 < a4)
  {
    v6 = a3;
    v7 = a4;
    do
    {
      v8 = *(*a2 + 16 * v6);
      v9 = *(a2 + 56) * a1[10].f32[0];
      v10 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *v8.f32, 1), a1[5], v8.f32[0]), a1[7], v8, 2));
      if (a1[12].i8[15] == 1)
      {
        v11 = vmulq_f32(v10, a1[11]);
        v12 = vmulq_f32(v11, v11);
        if ((v12.f32[2] + vaddv_f32(*v12.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = vcgtq_f32(a1[11], vabsq_f32(v10));
        v18.i32[3] = v18.i32[2];
        if ((vminvq_u32(v18) & 0x80000000) != 0)
        {
LABEL_5:
          v13 = a1[12].f32[0];
          if (v13 > 0.0)
          {
            v14 = vmulq_f32(v10, v10);
            v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) - a1[12].f32[1];
            v16 = 1.0;
            if (v15 >= 0.0)
            {
              v27 = *(*a2 + 16 * v6);
              v16 = powf(v15, -v13);
              v8 = v27;
            }

            v9 = v9 * v16;
          }

          v17 = 1;
          goto LABEL_12;
        }
      }

      v17 = 0;
LABEL_12:
      if (a1[12].u8[13] != v17)
      {
        v19 = *(a2 + 8);
        v20 = vsubq_f32(v8, a1[14]);
        v21 = vmulq_f32(v20, v20);
        v22 = v21.f32[2] + vaddv_f32(*v21.f32);
        if (v22 < (a1[12].f32[1] * a1[12].f32[1]))
        {
          v22 = a1[12].f32[1] * a1[12].f32[1];
        }

        v23 = v22;
        v24 = vrecpe_f32(LODWORD(v22));
        v25 = vmul_f32(v24, vrecps_f32(LODWORD(v23), v24));
        v26 = vaddq_f32(*(v19 + 16 * v6), vmulq_n_f32(v20, (*(*(a2 + 16) + (*(a2 + 24) * v6)) * (v9 * *(*(a2 + 32) + (*(a2 + 40) * v6)))) * vmul_f32(v25, vrecps_f32(LODWORD(v23), v25)).f32[0]));
        v26.i32[3] = HIDWORD(*(v19 + 16 * v6));
        *(v19 + 16 * v6) = v26;
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

void c3dPhysicsFieldMagnetic::c3dPhysicsFieldMagnetic(c3dPhysicsFieldMagnetic *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC2940;
  *(this + 16) = xmmword_21C27F9A0;
}

float32x4_t c3dPhysicsFieldMagnetic::_transformHasChanged(c3dPhysicsFieldMagnetic *this)
{
  result = *(this + 1);
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = vaddq_f32(*(this + 4), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2, *(this + 144), 1), result, COERCE_FLOAT(*(this + 9))), v3, *(this + 9), 2));
  v5 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2, *(this + 256), 1), result, COERCE_FLOAT(*(this + 16))), v3, *(this + 16), 2);
  *(this + 14) = v4;
  *(this + 15) = v5;
  return result;
}

float32x4_t c3dPhysicsField::_transformHasChanged(c3dPhysicsField *this)
{
  result = vaddq_f32(*&this[2].var0, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(*&this[1].var0, *&this[4].var5, 1), *&this->var5, COERCE_FLOAT(*&this[4].var5)), *&this[1].var5, *&this[4].var5, 2));
  *&this[7].var0 = result;
  return result;
}

double c3dPhysicsFieldMagnetic::evalForce(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4, float a5)
{
  v5 = vsubq_f32(a2, *(a1 + 224));
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 240), *(a1 + 240)), *(a1 + 240), 0xCuLL), vnegq_f32(a3)), *(a1 + 240), vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmulq_f32(v5, v5);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  if (v9 < (*(a1 + 196) * *(a1 + 196)))
  {
    v9 = *(a1 + 196) * *(a1 + 196);
  }

  *&result = vmulq_n_f32(v7, (*(a1 + 208) * a5) / sqrtf(v9)).u64[0];
  return result;
}

void c3dPhysicsFieldMagnetic::evalForceBatch(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 < a4)
  {
    v6 = a3;
    v7 = a4;
    do
    {
      v8 = *(*a2 + 16 * v6);
      v9 = *(a2 + 56) * *(a1 + 160);
      v10 = vaddq_f32(*(a1 + 128), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(*(a1 + 96), *v8.f32, 1), *(a1 + 80), v8.f32[0]), *(a1 + 112), v8, 2));
      if (*(a1 + 207) == 1)
      {
        v11 = vmulq_f32(v10, *(a1 + 176));
        v12 = vmulq_f32(v11, v11);
        if ((v12.f32[2] + vaddv_f32(*v12.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = vcgtq_f32(*(a1 + 176), vabsq_f32(v10));
        v18.i32[3] = v18.i32[2];
        if ((vminvq_u32(v18) & 0x80000000) != 0)
        {
LABEL_5:
          v13 = *(a1 + 192);
          if (v13 > 0.0)
          {
            v14 = vmulq_f32(v10, v10);
            v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) - *(a1 + 196);
            v16 = 1.0;
            if (v15 >= 0.0)
            {
              v30 = *(*a2 + 16 * v6);
              v16 = powf(v15, -v13);
              v8 = v30;
            }

            v9 = v9 * v16;
          }

          v17 = 1;
          goto LABEL_12;
        }
      }

      v17 = 0;
LABEL_12:
      if (*(a1 + 205) != v17)
      {
        v19 = *(a2 + 8);
        v20 = vsubq_f32(v8, *(a1 + 224));
        v21 = *(v19 + 16 * v6);
        v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(a1 + 240), *(a1 + 240)), *(a1 + 240), 0xCuLL), vnegq_f32(v21)), *(a1 + 240), vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
        v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
        v24 = vmulq_f32(v20, v20);
        v25 = v24.f32[2] + vaddv_f32(*v24.f32);
        if (v25 < (*(a1 + 196) * *(a1 + 196)))
        {
          v25 = *(a1 + 196) * *(a1 + 196);
        }

        v26 = v25;
        v27 = vrsqrte_f32(LODWORD(v25));
        v28 = vmul_f32(v27, vrsqrts_f32(LODWORD(v26), vmul_f32(v27, v27)));
        v29 = vaddq_f32(v21, vmulq_n_f32(v23, *(*(a2 + 16) + (*(a2 + 24) * v6)) * ((v9 * *(*(a2 + 32) + (*(a2 + 40) * v6))) * vmul_f32(v28, vrsqrts_f32(LODWORD(v26), vmul_f32(v28, v28))).f32[0])));
        v29.i32[3] = HIDWORD(*(v19 + 16 * v6));
        *(v19 + 16 * v6) = v29;
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

void c3dPhysicsFieldDrag::c3dPhysicsFieldDrag(c3dPhysicsFieldDrag *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC2980;
}

void c3dPhysicsFieldDrag::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 < a4)
  {
    v6 = a3;
    v7 = a4;
    do
    {
      v8 = *(a2 + 56) * a1[10].f32[0];
      v9 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *(*a2 + 16 * v6), 1), a1[5], COERCE_FLOAT(*(*a2 + 16 * v6))), a1[7], *(*a2 + 16 * v6), 2));
      if (a1[12].i8[15] == 1)
      {
        v10 = vmulq_f32(v9, a1[11]);
        v11 = vmulq_f32(v10, v10);
        if ((v11.f32[2] + vaddv_f32(*v11.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v17 = vcgtq_f32(a1[11], vabsq_f32(v9));
        v17.i32[3] = v17.i32[2];
        if ((vminvq_u32(v17) & 0x80000000) != 0)
        {
LABEL_5:
          v12 = a1[12].f32[0];
          if (v12 > 0.0)
          {
            v13 = vmulq_f32(v9, v9);
            v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)) - a1[12].f32[1];
            v15 = 1.0;
            if (v14 >= 0.0)
            {
              v15 = powf(v14, -v12);
            }

            v8 = v8 * v15;
          }

          v16 = 1;
          goto LABEL_12;
        }
      }

      v16 = 0;
LABEL_12:
      if (a1[12].u8[13] != v16)
      {
        v18 = *(a2 + 8);
        v19 = vmlaq_n_f32(*(v18 + 16 * v6), *(v18 + 16 * v6), -(v8 * *(*(a2 + 16) + (*(a2 + 24) * v6))));
        v19.i32[3] = HIDWORD(*(v18 + 16 * v6));
        *(v18 + 16 * v6) = v19;
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

void c3dPhysicsFieldCustom::c3dPhysicsFieldCustom(c3dPhysicsFieldCustom *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC29C0;
  *(this + 30) = 0;
}

double c3dPhysicsFieldCustom::evalForce(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u32[1];
  v3 = *(a1 + 240);
  if (v3)
  {
    (*(v3 + 16))(a2, a2.n128_f32[1], a2.n128_f32[2]);
  }

  a2.n128_u32[1] = v2;
  return a2.n128_f64[0];
}

void c3dPhysicsFieldCustom::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a1[15].i64[0];
  if (v4)
  {
    v5 = a4 > a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = a4 - a3;
    v9 = a3;
    do
    {
      v10 = *(*a2 + 16 * v9);
      v11 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], v10.n128_u64[0], 1), a1[5], v10.n128_f32[0]), a1[7], v10, 2));
      if (a1[12].i8[15] == 1)
      {
        v12 = vmulq_f32(v11, a1[11]);
        v13 = vmulq_f32(v12, v12);
        v14 = (v13.f32[2] + vaddv_f32(*v13.f32)) < 1.0;
      }

      else
      {
        v15 = vcgtq_f32(a1[11], vabsq_f32(v11));
        v15.i32[3] = v15.i32[2];
        v14 = vminvq_u32(v15) >> 31;
      }

      if (a1[12].u8[13] != v14)
      {
        v16 = (*(v4 + 16))(v4, v10, v10.n128_f32[1], v10.n128_f32[2], *(*(a2 + 8) + 16 * v9), COERCE_FLOAT(HIDWORD(*(*(a2 + 8) + 16 * v9))), COERCE_FLOAT(*(*(a2 + 8) + 16 * v9 + 8)), 1.0 / *(*(a2 + 16) + (*(a2 + 24) * v9)), *(*(a2 + 32) + (*(a2 + 40) * v9)), *(a2 + 60));
        v16.i32[1] = v17;
        v16.i32[2] = v18;
        v19 = *(a2 + 8);
        v20 = vaddq_f32(*(v19 + 16 * v9), vmulq_n_f32(v16, *(a2 + 56)));
        v20.i32[3] = HIDWORD(*(v19 + 16 * v9));
        *(v19 + 16 * v9) = v20;
      }

      ++v9;
      --v8;
    }

    while (v8);
  }
}

void c3dPhysicsFieldVortex::c3dPhysicsFieldVortex(c3dPhysicsFieldVortex *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC2A00;
  *(this + 15) = xmmword_21C27F600;
}

double c3dPhysicsFieldVortex::evalForce(float32x4_t *a1, float32x4_t a2, double a3, float a4)
{
  v4 = vsubq_f32(a2, a1[14]);
  v5 = vmulq_f32(v4, v4);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(a1[16])), v4, vextq_s8(vuzp1q_s32(a1[16], a1[16]), a1[16], 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmulq_f32(v6, v6);
  v8.f32[0] = v8.f32[1] + (v8.f32[2] + v8.f32[0]);
  v9 = vdupq_lane_s32(*v8.f32, 0);
  v10 = vrsqrteq_f32(v9);
  v11 = vmulq_f32(v10, vrsqrtsq_f32(v9, vmulq_f32(v10, v10)));
  v12 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v8.f32[0] != 0.0)), 0x1FuLL));
  v12.i32[3] = 0;
  *&result = vmulq_n_f32(vbslq_s8(vcltzq_s32(v12), vmulq_f32(vmulq_f32(v11, vrsqrtsq_f32(v9, vmulq_f32(v11, v11))), v7), v7), (a1[13].f32[0] * a4) * sqrtf(v5.f32[2] + vaddv_f32(*v5.f32))).u64[0];
  return result;
}

void c3dPhysicsFieldVortex::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 < a4)
  {
    v6 = a3;
    v7 = a4;
    do
    {
      v8 = *(*a2 + 16 * v6);
      v9 = *(a2 + 56) * a1[10].f32[0];
      v10 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *v8.f32, 1), a1[5], v8.f32[0]), a1[7], v8, 2));
      if (a1[12].i8[15] == 1)
      {
        v11 = vmulq_f32(v10, a1[11]);
        v12 = vmulq_f32(v11, v11);
        if ((v12.f32[2] + vaddv_f32(*v12.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = vcgtq_f32(a1[11], vabsq_f32(v10));
        v18.i32[3] = v18.i32[2];
        if ((vminvq_u32(v18) & 0x80000000) != 0)
        {
LABEL_5:
          v13 = a1[12].f32[0];
          if (v13 > 0.0)
          {
            v14 = vmulq_f32(v10, v10);
            v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) - a1[12].f32[1];
            v16 = 1.0;
            if (v15 >= 0.0)
            {
              v30 = *(*a2 + 16 * v6);
              v16 = powf(v15, -v13);
              v8 = v30;
            }

            v9 = v9 * v16;
          }

          v17 = 1;
          goto LABEL_12;
        }
      }

      v17 = 0;
LABEL_12:
      if (a1[12].u8[13] != v17)
      {
        v19 = vsubq_f32(v8, a1[14]);
        v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(a1[16])), v19, vextq_s8(vuzp1q_s32(a1[16], a1[16]), a1[16], 0xCuLL));
        v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
        v22 = vmulq_f32(v20, v20);
        v22.f32[0] = v22.f32[1] + (v22.f32[2] + v22.f32[0]);
        v23 = vdupq_lane_s32(*v22.f32, 0);
        v24 = vrsqrteq_f32(v23);
        v25 = vmulq_f32(v24, vrsqrtsq_f32(v23, vmulq_f32(v24, v24)));
        v26 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v22.f32[0] != 0.0)), 0x1FuLL));
        v26.i32[3] = 0;
        v27 = vmulq_f32(v19, v19);
        v28 = *(a2 + 8);
        v29 = vaddq_f32(*(v28 + 16 * v6), vmulq_n_f32(vbslq_s8(vcltzq_s32(v26), vmulq_f32(vmulq_f32(v25, vrsqrtsq_f32(v23, vmulq_f32(v25, v25))), v21), v21), v9 * sqrtf(v27.f32[2] + vaddv_f32(*v27.f32))));
        v29.i32[3] = HIDWORD(*(v28 + 16 * v6));
        *(v28 + 16 * v6) = v29;
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

float32x4_t c3dPhysicsFieldVortex::_transformHasChanged(c3dPhysicsFieldVortex *this)
{
  result = *(this + 1);
  v2 = *(this + 2);
  v3 = *(this + 3);
  *(this + 14) = vaddq_f32(*(this + 4), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2, *(this + 144), 1), result, COERCE_FLOAT(*(this + 9))), v3, *(this + 9), 2));
  *(this + 16) = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2, *(this + 240), 1), result, COERCE_FLOAT(*(this + 15))), v3, *(this + 15), 2);
  return result;
}

void c3dPhysicsFieldNoise::c3dPhysicsFieldNoise(c3dPhysicsFieldNoise *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *this = &unk_282DC2A40;
  *(this + 30) = 1056964608;
}

double c3dPhysicsFieldNoise::evalForce(float *a1, float32x4_t a2, double a3, double a4, double a5, float a6)
{
  v7 = (1.25 / (fmaxf(a1[60], 0.0) + 0.083333)) + -1.0;
  v8 = a1[61] * a6;
  v13 = 0;
  v12 = 0;
  v9 = srdnoise3(&v13 + 1, &v13, &v12, v7 * a2.f32[0], vmuls_lane_f32(v7, *a2.f32, 1), vmuls_lane_f32(v7, a2, 2), v8);
  v10.i64[0] = __PAIR64__(v13, HIDWORD(v13));
  v10.i32[2] = v12;
  *&result = vmulq_n_f32(vmulq_n_f32(v10, v9), a1[52]).u64[0];
  return result;
}

void c3dPhysicsFieldNoise::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a4 - a3;
  if (a4 > a3)
  {
    v7 = (1.25 / (fmaxf(a1[15].f32[0], 0.0) + 0.083333)) + -1.0;
    v8 = a1[15].f32[1] * *(a2 + 60);
    v9 = a3;
    do
    {
      v10 = *(*a2 + 16 * v9);
      v11 = *(a2 + 56) * a1[10].f32[0];
      v12 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *v10.f32, 1), a1[5], v10.f32[0]), a1[7], v10, 2));
      if (a1[12].i8[15] == 1)
      {
        v13 = vmulq_f32(v12, a1[11]);
        v14 = vmulq_f32(v13, v13);
        if ((v14.f32[2] + vaddv_f32(*v14.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v20 = vcgtq_f32(a1[11], vabsq_f32(v12));
        v20.i32[3] = v20.i32[2];
        if ((vminvq_u32(v20) & 0x80000000) != 0)
        {
LABEL_5:
          v15 = a1[12].f32[0];
          if (v15 > 0.0)
          {
            v16 = vmulq_f32(v12, v12);
            v17 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)) - a1[12].f32[1];
            v18 = 1.0;
            if (v17 >= 0.0)
            {
              v26 = *(*a2 + 16 * v9);
              v18 = powf(v17, -v15);
              v10 = v26;
            }

            v11 = v11 * v18;
          }

          v19 = 1;
          goto LABEL_12;
        }
      }

      v19 = 0;
LABEL_12:
      if (a1[12].u8[13] != v19)
      {
        v21 = *(*(a2 + 16) + (*(a2 + 24) * v9));
        v28 = 0;
        v27 = 0;
        v22 = srdnoise3(&v28 + 1, &v28, &v27, v7 * v10.f32[0], vmuls_lane_f32(v7, *v10.f32, 1), vmuls_lane_f32(v7, v10, 2), v8);
        v23.i64[0] = __PAIR64__(v28, HIDWORD(v28));
        v23.i32[2] = v27;
        v24 = *(a2 + 8);
        v25 = vmlaq_n_f32(*(v24 + 16 * v9), v23, v21 * (v11 * v22));
        v25.i32[3] = HIDWORD(*(v24 + 16 * v9));
        *(v24 + 16 * v9) = v25;
      }

      ++v9;
      --v4;
    }

    while (v4);
  }
}

void c3dPhysicsFieldTurbulence::c3dPhysicsFieldTurbulence(c3dPhysicsFieldTurbulence *this)
{
  *this = &unk_282DC2800;
  v1 = MEMORY[0x277D860B8];
  v2 = *(MEMORY[0x277D860B8] + 16);
  *(this + 5) = *MEMORY[0x277D860B8];
  *(this + 6) = v2;
  v3 = *(v1 + 48);
  *(this + 7) = *(v1 + 32);
  *(this + 8) = v3;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  *(this + 11) = vnegq_f32(v4);
  *(this + 24) = 0x3800000000000000;
  *(this + 50) = -1;
  *(this + 51) = 16777217;
  *(this + 30) = 1056964608;
  *this = &unk_282DC2A80;
}

double c3dPhysicsFieldTurbulence::evalForce(float *a1, float32x4_t a2, float32x4_t a3, double a4, double a5, float a6)
{
  v9 = *&a4;
  *v6.i64 = c3dPhysicsFieldNoise::evalForce(a1, a2, *a3.i64, a4, a5, a6);
  v7 = vmulq_f32(a3, a3);
  *&result = vmulq_n_f32(vmulq_n_f32(v6, v9), sqrtf(v7.f32[2] + vaddv_f32(*v7.f32))).u64[0];
  return result;
}

void c3dPhysicsFieldTurbulence::evalForceBatch(float32x4_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a4 - a3;
  if (a4 > a3)
  {
    v7 = (1.25 / (fmaxf(a1[15].f32[0], 0.0) + 0.083333)) + -1.0;
    v8 = a1[15].f32[1] * *(a2 + 60);
    v9 = 16 * a3;
    do
    {
      v10 = *(*a2 + v9);
      v11 = *(a2 + 56) * a1[10].f32[0];
      v12 = vaddq_f32(a1[8], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[6], *v10.f32, 1), a1[5], v10.f32[0]), a1[7], v10, 2));
      if (a1[12].i8[15] == 1)
      {
        v13 = vmulq_f32(v12, a1[11]);
        v14 = vmulq_f32(v13, v13);
        if ((v14.f32[2] + vaddv_f32(*v14.f32)) < 1.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v20 = vcgtq_f32(a1[11], vabsq_f32(v12));
        v20.i32[3] = v20.i32[2];
        if ((vminvq_u32(v20) & 0x80000000) != 0)
        {
LABEL_5:
          v15 = a1[12].f32[0];
          if (v15 > 0.0)
          {
            v16 = vmulq_f32(v12, v12);
            v17 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)) - a1[12].f32[1];
            v18 = 1.0;
            if (v17 >= 0.0)
            {
              v26 = *(*a2 + v9);
              v18 = powf(v17, -v15);
              v10 = v26;
            }

            v11 = v11 * v18;
          }

          v19 = 1;
          goto LABEL_12;
        }
      }

      v19 = 0;
LABEL_12:
      if (a1[12].u8[13] != v19)
      {
        v27 = *(*(a2 + 8) + v9);
        v29 = 0;
        v28 = 0;
        v21 = srdnoise3(&v29 + 1, &v29, &v28, v7 * v10.f32[0], vmuls_lane_f32(v7, *v10.f32, 1), vmuls_lane_f32(v7, v10, 2), v8);
        v22.i64[0] = __PAIR64__(v29, HIDWORD(v29));
        v22.i32[2] = v28;
        v23 = vmulq_f32(v27, v27);
        v24 = *(a2 + 8);
        v25 = vmlaq_n_f32(*(v24 + v9), v22, sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)) * (v11 * v21));
        v25.i32[3] = HIDWORD(*(v24 + v9));
        *(v24 + v9) = v25;
      }

      v9 += 16;
      --v4;
    }

    while (v4);
  }
}

void c3dAether::c3dAether(c3dAether *this)
{
  this->_lastOverrideIndex = 0;
  *&this->_fields.__cap_ = 0u;
  *&this->_activeFields.__end_ = 0u;
  *&this->_fields.__begin_ = 0u;
}

void c3dAether::~c3dAether(c3dAether *this)
{
  begin = this->_fields.__begin_;
  end = this->_fields.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      (*((*begin)->var0 + 1))(*begin);
      end = this->_fields.__end_;
    }

    ++begin;
  }

  v4 = this->_activeFields.__begin_;
  if (v4)
  {
    this->_activeFields.__end_ = v4;
    operator delete(v4);
  }

  v5 = this->_fields.__begin_;
  if (this->_fields.__begin_)
  {
    this->_fields.__end_ = v5;
    operator delete(v5);
  }
}

void c3dAether::evalForce(uint64_t a1, int a2, __n128 a3, __n128 a4, float a5, float a6, float a7)
{
  v26 = a3;
  if (*(a1 + 48))
  {
    v12 = 0;
    while (1)
    {
      v13 = *(*(a1 + 24) + 8 * v12);
      if (c3dPhysicsField::contains(v13, &v26) && (v13[12].i32[2] & a2) != 0)
      {
        break;
      }

      if (++v12 >= *(a1 + 48))
      {
        goto LABEL_8;
      }
    }

    v22 = *(v13->i64[0] + 16);
    v14.n128_f32[0] = a5;
    v15.n128_f32[0] = a6;
    v16.n128_f32[0] = a7;

    v22(v13, a3, a4, v14, v15, v16);
  }

  else
  {
    LODWORD(v12) = 0;
LABEL_8:
    v17 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    v18 = v17 - v12;
    if (v17 > v12)
    {
      v19 = 8 * v12;
      v25 = 0uLL;
      do
      {
        v20 = *(*(a1 + 24) + v19);
        if (c3dPhysicsField::contains(v20, &v26) && (v20[12].i32[2] & a2) != 0)
        {
          *v21.i64 = (*(v20->i64[0] + 16))(v20, a3, a4, a5, a6, a7);
          v25 = vaddq_f32(v25, v21);
        }

        v19 += 8;
        --v18;
      }

      while (v18);
    }
  }
}

void c3dAether::evalForcesBatch(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    v8 = a4 - a3;
    if (a4 > a3)
    {
      v9 = a3;
      do
      {
        v30 = *(a2[1].i64[0] + (a2[1].i32[2] * v9));
        v10 = vrecpe_f32(LODWORD(v30));
        v11 = vmul_f32(v10, vrecps_f32(LODWORD(v30), v10));
        c3dAether::evalForce(a1, a2[3].i64[0], *(a2->i64[0] + 16 * v9), *(a2->i64[1] + 16 * v9), vmul_f32(v11, vrecps_f32(LODWORD(v30), v11)).f32[0], *(a2[2].i64[0] + (a2[2].i32[2] * v9)), a2[3].f32[3]);
        v12 = a2->i64[1];
        v14 = vmlaq_n_f32(*(v12 + 16 * v9), v13, v30 * a2[3].f32[2]);
        v14.i32[3] = HIDWORD(*(v12 + 16 * v9));
        *(v12 + 16 * v9++) = v14;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    if (v16 != v15)
    {
      v17 = 0uLL;
      v18 = 1.0;
      do
      {
        v19 = *v16;
        if ((a2[3].i64[0] & *(*v16 + 200)) != 0)
        {
          v20 = *(v19 + 176);
          v20.i32[3] = 0;
          v21 = *(v19 + 16);
          v22 = *(v19 + 32);
          v23 = *(v19 + 48);
          v24 = vaddq_f32(*(v19 + 64), vmlaq_f32(vmlaq_f32(vmulq_f32(v22, v17), v17, v21), v17, v23));
          v25 = v20;
          v25.i32[1] = *(v19 + 176);
          v25.i32[2] = v25.i32[1];
          v24.f32[3] = v18;
          v26 = vcgeq_f32(vaddq_f32(a2[5], vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v21, v25)), vabsq_f32(vmulq_f32(v22, vuzp2q_s32(vdupq_lane_s32(*v20.i8, 1), v20)))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v20, v20), v20), v23)))), vabdq_f32(a2[4], v24));
          v26.i32[3] = v26.i32[2];
          if ((vminvq_u32(v26) & 0x80000000) != 0)
          {
            v27 = a2[1];
            v31[0] = *a2;
            v31[1] = v27;
            v28 = a2[5];
            v31[4] = a2[4];
            v31[5] = v28;
            v29 = a2[3];
            v31[2] = a2[2];
            v31[3] = v29;
            (*(*v19 + 24))(v19, v31, a3, a4);
            v18 = 1.0;
            v17 = 0uLL;
            v15 = *(a1 + 32);
          }
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }
}

void c3dAether::fieldsModeHaveChanged(c3dAether *this)
{
  p_activeFields = &this->_activeFields;
  this->_activeFields.__end_ = this->_activeFields.__begin_;
  begin = this->_fields.__begin_;
  end = this->_fields.__end_;
  if (this->_fields.__begin_ == end)
  {
    this->_lastOverrideIndex = 0;
  }

  else
  {
    do
    {
      if (LOBYTE((*begin)[6].var4) == 1)
      {
        std::vector<Statement *>::push_back[abi:nn200100](p_activeFields, begin);
        end = this->_fields.__end_;
      }

      ++begin;
    }

    while (begin != end);
    v5 = this->_activeFields.__begin_;
    v6 = this->_activeFields.__end_;
    this->_lastOverrideIndex = 0;
    if (v5 != v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (BYTE2((*v5)[6].var4) == 1)
        {
          if (v8 != v7)
          {
            v9 = this->_activeFields.__begin_;
            v10 = v9[v8];
            v9[v8] = v9[v7];
            v9[v7] = v10;
            v6 = this->_activeFields.__end_;
          }

          this->_lastOverrideIndex = ++v7;
        }

        ++v5;
        ++v8;
      }

      while (v5 != v6);
    }
  }
}

void c3dAether::addField(c3dAether *this, c3dPhysicsField *a2)
{
  v3 = a2;
  std::vector<Statement *>::push_back[abi:nn200100](this, &v3);
  c3dAether::fieldsModeHaveChanged(this);
}

void c3dAether::removeField(c3dAether *this, c3dPhysicsField *a2)
{
  begin = this->_fields.__begin_;
  end = this->_fields.__end_;
  if (this->_fields.__begin_ != end)
  {
    v5 = end - begin - 8;
    while (*begin != a2)
    {
      ++begin;
      v5 -= 8;
      if (begin == end)
      {
        goto LABEL_9;
      }
    }

    if (begin + 1 != end)
    {
      memmove(begin, begin + 1, v5);
    }

    this->_fields.__end_ = (begin + v5);
  }

LABEL_9:

  c3dAether::fieldsModeHaveChanged(this);
}

uint64_t SCNAudioPlayerWasRemovedFromNode(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void _C3DHitTestResultCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef _C3DHitTestResultCFCopyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Name = *(a1 + 16);
  if (Name)
  {
    Name = C3DNodeGetName(Name);
  }

  return CFStringCreateWithFormat(v2, 0, @"<C3DHitTestResult %@ %f,%f,%f>", Name, COERCE_FLOAT(*(a1 + 96)), COERCE_FLOAT(HIDWORD(*(a1 + 96))), COERCE_FLOAT(*(a1 + 104)));
}

uint64_t __C3DHitTestResultGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DHitTestResultGetTypeID_typeID = result;
  return result;
}

uint64_t C3DHitTestResultCreate()
{
  if (C3DHitTestResultGetTypeID_onceToken != -1)
  {
    C3DHitTestResultCreate_cold_1();
  }

  v1 = C3DHitTestResultGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 208);
}

uint64_t C3DHitTestResultGetNode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DHitTestResultGetJoint(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

CFTypeRef C3DHitTestResultSetNode(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DHitTestResultGetGeometryElementIndex(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DHitTestResultGetPrimitiveIndex(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

uint64_t C3DHitTestResultGetLocalPosition(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 64;
}

uint64_t C3DHitTestResultGetWorldPosition(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 96;
}

uint64_t C3DHitTestResultGetLocalNormal(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 80;
}

double C3DHitTestResultGetWorldNormal(float32x4_t *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  f32 = a1[7].f32;
  v12 = a1[5];
  v14 = vld4q_f32(f32);
  v13 = __invert_f4(v14);
  *&result = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v13.columns[1], *v12.f32, 1), v13.columns[0], v12.f32[0]), v13.columns[2], v12, 2).u64[0];
  return result;
}

uint64_t C3DHitTestResultGetModelTransform(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 112;
}

double C3DHitTestResultGetTextureCoordinates(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DHitTestResultGetTextureCoordinates_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 16);
  v13 = 0.0;
  if (v12)
  {
    Geometry = C3DNodeGetGeometry(v12);
    if (Geometry)
    {
      Mesh = C3DGeometryGetMesh(Geometry);
      if (Mesh)
      {
        v16 = Mesh;
        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 3, a2, 0);
        if (SourceWithSemanticAtIndex)
        {
          v18 = SourceWithSemanticAtIndex;
          PositionSource = C3DMeshGetPositionSource(v16, 0);
          if (PositionSource)
          {
            v20 = PositionSource;
            ElementAtIndex = C3DMeshGetElementAtIndex(v16, *(a1 + 32), 0);
            if (ElementAtIndex)
            {
              v22 = ElementAtIndex;
              ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(v16, 3, a2);
              v24 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v16, 0, 0);
              Index = C3DMeshElementGetIndex(v22, *(a1 + 40), *(a1 + 48), ChannelForSourceWithSemanticAtIndex);
              v26 = C3DMeshElementGetIndex(v22, *(a1 + 40), *(a1 + 52), ChannelForSourceWithSemanticAtIndex);
              v27 = C3DMeshElementGetIndex(v22, *(a1 + 40), *(a1 + 56), ChannelForSourceWithSemanticAtIndex);
              v36 = v26;
              v37 = Index;
              v28 = v27;
              if (v24 != ChannelForSourceWithSemanticAtIndex)
              {
                Index = C3DMeshElementGetIndex(v22, *(a1 + 40), *(a1 + 48), v24);
                v26 = C3DMeshElementGetIndex(v22, *(a1 + 40), *(a1 + 52), v24);
                v28 = C3DMeshElementGetIndex(v22, *(a1 + 40), *(a1 + 56), v24);
              }

              *&v29 = C3DMeshSourceGetValueAtIndexAsVector3(v20, Index);
              v39[0] = v29;
              *&v30 = C3DMeshSourceGetValueAtIndexAsVector3(v20, v26);
              v39[1] = v30;
              *&v31 = C3DMeshSourceGetValueAtIndexAsVector3(v20, v28);
              v39[2] = v31;
              v38.i32[2] = 0;
              v38.i64[0] = 0;
              C3DTriangle3BarycentricCoordinates(v39, (a1 + 64), &v38);
              ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(v18, v37);
              v33 = C3DMeshSourceGetValueAtIndexAsVector2(v18, v36);
              v34 = C3DMeshSourceGetValueAtIndexAsVector2(v18, v27);
              return COERCE_DOUBLE(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v33, *v38.f32, 1), *&ValueAtIndexAsVector2, v38.f32[0]), *&v34, v38, 2));
            }
          }
        }
      }
    }
  }

  return v13;
}

uint64_t _C3DProjectPoints(float32x4_t *a1, int a2, float32x4_t *a3, uint64_t a4, char a5, float32x4_t *a6, int8x16_t a7)
{
  LODWORD(v11) = a2;
  v49 = a7;
  memset(v48, 0, sizeof(v48));
  memset(&v46, 0, sizeof(v46));
  if (!a3)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetProjectionInfos_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  ProjectionInfos = C3DNodeGetProjectionInfos(a3, v48);
  if (ProjectionInfos)
  {
    if (a4 && (v48[0] & 2) != 0)
    {
      C3DAdjustZRangeOfProjectionInfos(v48, a3, 0, a4);
    }

    Matrix = C3DProjectionInfosGetMatrix(v48, &v49, a5);
    v23 = *(Matrix + 3);
    v25 = *Matrix;
    v24 = *(Matrix + 1);
    v47[2] = *(Matrix + 2);
    v47[3] = v23;
    v47[0] = v25;
    v47[1] = v24;
    memset(&v45, 0, sizeof(v45));
    C3DNodeComputeWorldMatrix(a3, &v45);
    C3DMatrix4x4Invert(&v45, &v46);
    v42 = v49;
    memset(v50, 0, sizeof(v50));
    C3DMatrix4x4Mult(&v46, v47, v50);
    if (v11 >= 1)
    {
      v26 = vcvtq_f64_f32(*v42.i8);
      v11 = v11;
      v43 = vextq_s8(v42, v42, 8uLL).u64[0];
      v44 = v26;
      v27 = 1.0;
      __asm
      {
        FMOV            V8.2S, #1.0
        FMOV            V0.2D, #0.5
      }

      v41 = _Q0;
      do
      {
        v34 = *a1;
        v34.f32[3] = v27;
        *v35.i64 = C3DVector4MultMatrix4x4(v50, v34);
        v27 = 1.0;
        if (v35.f32[3] == 0.0)
        {
          break;
        }

        v36 = 1.0 / v35.f32[3];
        if ((1.0 / v35.f32[3]) == 0.0)
        {
          break;
        }

        v37 = vmuls_lane_f32(v36, v35, 2);
        *v35.f32 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vcvtq_f64_f32(vmul_f32(v43, vadd_f32(vmul_n_f32(*v35.f32, v36), _D8))), v41), v44));
        a6->i32[2] = a6->i64[1];
        a6->i64[0] = v35.i64[0];
        if ((a5 & 8) != 0 && (v38 = C3DWasLinkedBeforeMajorOSYear2021(), v35 = *a6, v27 = 1.0, (v38 & 1) == 0))
        {
          v39 = 1.0 - v37;
        }

        else
        {
          v39 = (v37 + v27) * 0.5;
        }

        a6->f32[2] = v39;
        a6->i64[0] = v35.i64[0];
        ++a6;
        ++a1;
        --v11;
      }

      while (v11);
    }
  }

  return ProjectionInfos;
}

uint64_t _C3DUnProjectPoints(__int128 *a1, int a2, float32x4_t *a3, uint64_t a4, char a5, float32x4_t *a6, int8x16_t a7)
{
  if (!a3)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetProjectionInfos_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  memset(v29, 0, sizeof(v29));
  result = C3DNodeGetProjectionInfos(a3, v29);
  if (result)
  {
    if (a4 && (v29[0] & 2) != 0)
    {
      C3DAdjustZRangeOfProjectionInfos(v29, a3, 0, a4);
    }

    result = C3DProjectionInfosUnproject(v29, a1, a2, a5, a6, a7);
    if (result)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(a3);
      if (a2 >= 1)
      {
        v24 = WorldMatrix[2];
        v23 = WorldMatrix[3];
        v25 = a2;
        v27 = *WorldMatrix;
        v26 = WorldMatrix[1];
        do
        {
          *a6 = vaddq_f32(v23, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v26, *a6->f32, 1), v27, COERCE_FLOAT(*a6)), v24, *a6, 2));
          ++a6;
          --v25;
        }

        while (v25);
      }

      return 1;
    }
  }

  return result;
}

double _C3DHitTestComputeHitSegment(float32x4_t *a1, uint64_t a2, float32x4_t *a3, _OWORD *a4, int8x16_t a5, __n128 a6)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    __asm { FMOV            V2.4S, #1.0 }

    *&_Q2 = a6.n128_u64[0];
    v16[0] = a6;
    v16[1] = _Q2;
    _C3DUnProjectPoints(v16, 2, a1, a2, 0, &v14, a5);
    if (a3)
    {
      a5.i64[0] = v14.i64[0];
      *a3 = v14;
    }

    if (a4)
    {
      a5.i64[0] = v15;
      *a4 = v15;
    }
  }

  return *a5.i64;
}

uint64_t C3DHitTestContextFillOptionsFromDictionary(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
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
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = -1;
  *(a1 + 8) = 63;
  result = C3DWasLinkedBeforeMajorOSYear2017();
  v5 = *(a1 + 8);
  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = 256;
  }

  *(a1 + 10) = 1;
  *(a1 + 8) = v5 & 0xFEFF | v6 | 0x400;
  if (!a2)
  {
    return result;
  }

  Value = CFDictionaryGetValue(a2, @"kHitTestAllLayers");
  v8 = MEMORY[0x277CBED28];
  if (Value)
  {
    if (CFEqual(*MEMORY[0x277CBED28], Value))
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    *(a1 + 10) = v9;
  }

  v10 = CFDictionaryGetValue(a2, @"kHitTestLayerMask");
  if (v10)
  {
    v11 = [v10 integerValue];
    if (v11 >= 1)
    {
      *(a1 + 10) = v11;
    }
  }

  v12 = CFDictionaryGetValue(a2, @"kHitTestClipToZRange");
  if (v12)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFFFD | (2 * (CFEqual(*v8, v12) != 0));
  }

  v13 = CFDictionaryGetValue(a2, @"kHitTestBackFaceCulling");
  if (v13)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFFF7 | (8 * (CFEqual(*v8, v13) != 0));
  }

  v14 = CFDictionaryGetValue(a2, @"kHitTestSkipTransparentNode");
  if (v14)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFFEF | (16 * (CFEqual(*v8, v14) != 0));
  }

  v15 = CFDictionaryGetValue(a2, @"kHitTestCategoryBitMask");
  if (v15)
  {
    valuePtr = 0;
    CFNumberGetValue(v15, kCFNumberLongType, &valuePtr);
    *a1 = valuePtr;
  }

  v16 = CFDictionaryGetValue(a2, @"kHitTestSkipHiddenNode");
  if (v16)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFFDF | (32 * (CFEqual(*v8, v16) != 0));
  }

  v17 = CFDictionaryGetValue(a2, @"kHitTestIgnoreChildNodes");
  if (v17)
  {
    v18 = CFEqual(*v8, v17);
    v19 = *(a1 + 8) & 0xFFFE;
    if (!v18)
    {
      ++v19;
    }

    *(a1 + 8) = v19;
  }

  v20 = CFDictionaryGetValue(a2, @"kHitTestFirstFoundOnly");
  if (v20)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFF7F | ((CFEqual(*v8, v20) != 0) << 7);
  }

  v21 = CFDictionaryGetValue(a2, @"kHitTestSortResults");
  if (v21)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFFFB | (4 * (CFEqual(*v8, v21) != 0));
  }

  v22 = CFDictionaryGetValue(a2, @"kHitTestSearchMode");
  if (v22)
  {
    v23 = [v22 integerValue];
    switch(v23)
    {
      case 2:
        v24 = *(a1 + 8) & 0xFE7F | 0x80;
        goto LABEL_38;
      case 1:
        v24 = *(a1 + 8) & 0xFE7F;
        goto LABEL_38;
      case 0:
        v24 = *(a1 + 8) & 0xFE7F | 0x100;
LABEL_38:
        *(a1 + 8) = v24;
        break;
    }
  }

  v25 = CFDictionaryGetValue(a2, @"kHitTestBoundingBoxOnly");
  if (v25)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFFBF | ((CFEqual(*v8, v25) != 0) << 6);
  }

  v26 = CFDictionaryGetValue(a2, @"kHitTestShowDebugInfo");
  if (v26)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFDFF | ((CFEqual(*v8, v26) != 0) << 9);
  }

  v27 = CFDictionaryGetValue(a2, @"kHitTestResultIgnoreLightArea");
  if (v27)
  {
    *(a1 + 8) = *(a1 + 8) & 0xFBFF | ((CFEqual(*v8, v27) & 1) << 10);
  }

  result = CFDictionaryGetValue(a2, @"auth");
  *(a1 + 432) = result;
  return result;
}

void __AddLocalResult(uint64_t a1, unsigned int a2, int a3, int a4, int a5, float a6, float32x4_t a7, __n128 a8)
{
  v14 = C3DHitTestResultCreate();
  C3DHitTestResultSetNode(v14, *(a1 + 112));
  v15 = *(v14 + 24);
  v16 = *(a1 + 120);
  if (v15 != v16)
  {
    if (v15)
    {
      CFRelease(*(v14 + 24));
      *(v14 + 24) = 0;
      v16 = *(a1 + 120);
    }

    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v14 + 24) = v16;
  }

  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  v19 = *(a1 + 176);
  *(v14 + 144) = *(a1 + 160);
  *(v14 + 160) = v19;
  *(v14 + 112) = v17;
  *(v14 + 128) = v18;
  *(v14 + 80) = a8;
  *(v14 + 32) = *(a1 + 192);
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 52) = a4;
  *(v14 + 56) = a5;
  *(v14 + 64) = a7;
  *(v14 + 96) = vaddq_f32(*(a1 + 176), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(*(a1 + 144), *a7.f32, 1), *(a1 + 128), a7.f32[0]), *(a1 + 160), a7, 2));
  if ((*(a1 + 8) & 0x100) != 0)
  {
    v20 = a6 / *(a1 + 108);
    *(a1 + 108) = a6;
    *(a1 + 60) = v20 * *(a1 + 60);
  }

  CFArrayAppendValue(*(a1 + 328), v14);

  CFRelease(v14);
}

void __AddWorldResult(uint64_t a1, unsigned int a2, int a3, int a4, int a5, float a6, float32x4_t a7, __n128 a8)
{
  v14 = C3DHitTestResultCreate();
  C3DHitTestResultSetNode(v14, *(a1 + 112));
  v15 = *(a1 + 128);
  v16 = *(a1 + 144);
  v17 = *(a1 + 176);
  *(v14 + 144) = *(a1 + 160);
  *(v14 + 160) = v17;
  *(v14 + 112) = v15;
  *(v14 + 128) = v16;
  *(v14 + 80) = a8;
  *(v14 + 32) = *(a1 + 192);
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 52) = a4;
  *(v14 + 56) = a5;
  *(v14 + 96) = a7;
  v21 = __invert_f4(*(a1 + 128));
  *(v14 + 64) = vaddq_f32(v21.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v21.columns[1], *a7.f32, 1), v21.columns[0], a7.f32[0]), v21.columns[2], a7, 2));
  if ((*(a1 + 8) & 0x100) != 0)
  {
    *(a1 + 60) = a6;
  }

  CFArrayAppendValue(*(a1 + 328), v14);

  CFRelease(v14);
}

uint64_t scn_plane_ray_intersection(uint64_t a1, uint64_t a2, float *a3, float32x4_t a4, float32x4_t a5, __n128 a6)
{
  v6.i64[0] = a1;
  v6.i64[1] = a2;
  v7 = vmulq_f32(a5, v6);
  v8 = vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)));
  if (v8 == 0.0)
  {
    return 0;
  }

  v9 = vmulq_f32(a4, v6);
  v10 = -vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL))) / v8;
  if (v10 < 0.0 || v10 > a6.n128_f32[3])
  {
    return 0;
  }

  *a3 = v10;
  return 1;
}

BOOL __ProcessTriangleIndicesBatch(uint64_t a1, unsigned int *a2, unsigned int a3, float32x4_t a4, float32x4_t a5, __n128 a6, uint64_t a7, char a8, uint64_t a9)
{
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v15 = 0;
    v16 = a6.n128_f32[3];
    v17 = a3;
    v18 = 1;
    v19 = 1;
    v20 = 3 * a3;
    while (1)
    {
      v21 = *(a1 + 16 * v15);
      v22 = *(a1 + 16 * (v15 + 1));
      v23 = *(a1 + 16 * (v15 + 2));
      v24 = vsubq_f32(v22, v21);
      v25 = vsubq_f32(v23, v21);
      v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
      v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
      v28 = vmulq_f32(v26, v26);
      *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
      *v28.f32 = vrsqrte_f32(v29);
      v31 = vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
      v30 = vmulq_f32(v31, v21);
      v31.f32[3] = -(v30.f32[2] + vaddv_f32(*v30.f32));
      v32 = vmulq_f32(v11, v31);
      v33 = vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)));
      if (*(a9 + 8) & 8) == 0 || (a8)
      {
        if (v33 == 0.0)
        {
          goto LABEL_15;
        }
      }

      else if (v33 >= 0.0)
      {
        goto LABEL_15;
      }

      v34 = vmulq_f32(v12, v31);
      v35 = -vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL))) / v33;
      if (v35 >= 0.0 && v35 <= v16)
      {
        v45 = v35;
        v46 = v31;
        v42 = vmlaq_n_f32(v12, v11, v35);
        *v37.i64 = scn_triangle_barycentric_coordinates(v21, v22, v23, v42);
        v12 = a4;
        v11 = a5;
        v38.i64[0] = 0xBF000000BF000000;
        v38.i64[1] = 0xBF000000BF000000;
        v39 = vabsq_f32(vaddq_f32(v37, v38));
        v38.i64[0] = 0x3F0000003F000000;
        v38.i64[1] = 0x3F0000003F000000;
        v40 = vcgeq_f32(v38, v39);
        v40.i32[3] = v40.i32[2];
        if ((vminvq_u32(v40) & 0x80000000) != 0)
        {
          __AddLocalResult(a9, *a2, 0, 1, 2, v45, v42, v46);
          v12 = a4;
          v11 = a5;
          if ((*(a9 + 8) & 0x80) != 0)
          {
            return v19;
          }
        }
      }

LABEL_15:
      v19 = v18 < v17;
      ++a2;
      v15 += 3;
      ++v18;
      if (v20 == v15)
      {
        return v19;
      }
    }
  }

  return 0;
}

uint64_t C3DMeshElementGetPrimitiveGroupBoundingBoxes(uint64_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v100 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementCreate_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  result = *(a1 + 208);
  if (result)
  {
    goto LABEL_5;
  }

  if ((*(a2 + 34) & 0xFA) == 0)
  {
    v17 = *(a2 + 4) + 31;
    *(a1 + 216) = v17 >> 5;
    *(a1 + 208) = malloc_type_malloc(v17 & 0xFFFFFFE0, 0x1000040E0EAB150uLL);
    v18 = *(a3 + 23);
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x3020000000;
    v19.i64[0] = 0x80000000800000;
    v19.i64[1] = 0x80000000800000;
    v99 = vnegq_f32(v19);
    v92 = 0;
    v93 = &v92;
    v94 = 0x3020000000;
    v95 = v19;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    if (*(a2 + 34) == 4)
    {
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v20 = a3[1];
      v70 = *a3;
      v71 = v20;
      v21 = a2[1];
      v72 = *a2;
      v73 = v21;
      v22 = a2[3];
      v24 = *a2;
      v23 = a2[1];
      v74 = a2[2];
      v75 = v22;
      v69[2] = __C3DMeshElementGetPrimitiveGroupBoundingBoxes_block_invoke;
      v69[3] = &unk_2782FB6A8;
      v77 = v18 == 1;
      v69[4] = &v96;
      v69[5] = &v92;
      v76 = a1;
      v69[6] = &v86;
      v69[7] = &v82;
      v78 = v24;
      v79 = v23;
      v25 = a2[3];
      v80 = a2[2];
      v81 = v25;
      C3DIndicesContentEnumeratePrimitives(&v78, v69, v25);
    }

    else
    {
      v91 = 0;
      v90 = 0;
      if (*(a2 + 4))
      {
        v26 = 0;
        v27.i64[0] = 0x80000000800000;
        v27.i64[1] = 0x80000000800000;
        v66 = vnegq_f32(v27);
        do
        {
          v28 = a2[1];
          v78 = *a2;
          v79 = v28;
          v29 = a2[3];
          v80 = a2[2];
          v81 = v29;
          C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_0(&v78, v26, &v90, &v90 + 1, &v91);
          if (v18 == 1)
          {
            v33 = *(a3 + 22);
            v34 = *a3 + (v90 * v33);
            v35.i64[0] = *v34;
            v35.i64[1] = *(v34 + 8);
            v36 = *a3 + (HIDWORD(v90) * v33);
            v37.i64[0] = *v36;
            v37.i64[1] = *(v36 + 8);
            v38 = *a3 + (v91 * v33);
            v39.i64[0] = *v38;
            v39.i64[1] = *(v38 + 8);
          }

          else
          {
            *v40.i64 = C3DConvertFloatingTypeToFloat4(*(a3 + 20), (*a3 + v90 * *(a3 + 22)), v30, v31, v32);
            v68 = v40;
            *v43.i64 = C3DConvertFloatingTypeToFloat4(*(a3 + 20), (*a3 + HIDWORD(v90) * *(a3 + 22)), v40, v41, v42);
            v67 = v43;
            *v39.i64 = C3DConvertFloatingTypeToFloat4(*(a3 + 20), (*a3 + v91 * *(a3 + 22)), v43, v44, v45);
            v37 = v67;
            v35 = v68;
          }

          v46 = v97;
          v97[2] = vminq_f32(vminq_f32(vminq_f32(v97[2], v35), v37), v39);
          v47 = v93;
          v93[2] = vmaxq_f32(vmaxq_f32(vmaxq_f32(v93[2], v35), v37), v39);
          v48 = *(v87 + 6) + 1;
          *(v87 + 6) = v48;
          if (v48 > 0x1F || (v49 = *(a2 + 4), v26 >= v49 - 1))
          {
            v50 = *(a1 + 208);
            v51 = *(v83 + 6);
            *(v83 + 6) = v51 + 1;
            v52 = (v50 + 32 * v51);
            v53 = v46[2];
            v54 = v47[2];
            v55.i64[0] = 0x3F0000003F000000;
            v55.i64[1] = 0x3F0000003F000000;
            v56 = vmulq_f32(vaddq_f32(v53, v54), v55);
            v56.i32[3] = 1.0;
            v57 = vmulq_f32(vsubq_f32(v54, v53), v55);
            v57.i32[3] = 0;
            *v52 = v56;
            v52[1] = v57;
            v97[2] = v66;
            v57.i64[0] = 0x80000000800000;
            v57.i64[1] = 0x80000000800000;
            v93[2] = v57;
            *(v87 + 6) = 0;
            v49 = *(a2 + 4);
          }

          ++v26;
        }

        while (v26 < v49);
      }
    }

    if (*(v83 + 6) != *(a1 + 216))
    {
      v58 = scn_default_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        C3DMeshElementGetPrimitiveGroupBoundingBoxes_cold_2(v58, v59, v60, v61, v62, v63, v64, v65);
      }
    }

    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v92, 8);
    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v86, 8);
    result = *(a1 + 208);
LABEL_5:
    *a4 = *(a1 + 216);
    return result;
  }

  return 0;
}

void sub_21BF3620C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_0(uint64_t *a1, int a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 34);
  v10 = 3;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 != 5;
  if (v9 == 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9 != 1)
  {
    v12 = 1;
  }

  v14 = v9 == 0;
  if (*(a1 + 34))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (*(a1 + 34))
  {
    v10 = v13;
    v16 = v11;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *a1;
  if (!*a1)
  {
    *a3 = v10 * a2;
    *a4 = v17 + v15 * a2;
    v29 = v16 + v15 * a2;
LABEL_33:
    *a5 = v29;
    return;
  }

  v19 = *(a1 + 35);
  v20 = a1[6];
  v21 = a1[7];
  v22 = v20 + v10 * a2 * v21;
  v23 = v15 * a2;
  v24 = v20 + v21 * (v17 + v15 * a2);
  v25 = v20 + v21 * (v16 + v23);
  if (v25 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v24 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (a1[1] < (v19 + v19 * v27))
  {
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[1];
      v32 = *(a1 + 35);
      v33 = 136315650;
      v34 = "C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
      v35 = 1024;
      v36 = v27;
      v37 = 2048;
      v38 = v31 / v32;
      _os_log_error_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v33, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return;
  }

  switch(v19)
  {
    case 4:
      *a3 = *(v18 + 4 * v22);
      *a4 = *(v18 + 4 * v24);
      v29 = *(v18 + 4 * v25);
      goto LABEL_33;
    case 2:
      *a3 = *(v18 + 2 * v22);
      *a4 = *(v18 + 2 * v24);
      v29 = *(v18 + 2 * v25);
      goto LABEL_33;
    case 1:
      *a3 = *(v18 + v22);
      *a4 = *(v18 + v24);
      v29 = *(v18 + v25);
      goto LABEL_33;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v30 = scn_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1_0(a1 + 35, v30);
  }
}

float32x4_t __C3DMeshElementGetPrimitiveGroupBoundingBoxes_block_invoke(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, float32x4_t result, float32x4_t a6, float a7)
{
  if (*(a1 + 168))
  {
    if (a4)
    {
      v10 = a4;
      result.i32[3] = 0;
      do
      {
        v11 = *a3++;
        v12 = *(a1 + 64) + v11 * *(a1 + 86);
        v13.i64[0] = *v12;
        v13.i32[2] = *(v12 + 8);
        v13.i32[3] = result.i32[3];
        *(*(*(a1 + 32) + 8) + 32) = vminq_f32(*(*(*(a1 + 32) + 8) + 32), v13);
        *(*(*(a1 + 40) + 8) + 32) = vmaxq_f32(*(*(*(a1 + 40) + 8) + 32), v13);
        result = v13;
        --v10;
      }

      while (v10);
    }
  }

  else if (a4)
  {
    v14 = a4;
    do
    {
      v15 = *a3++;
      *v16.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 84), (*(a1 + 64) + v15 * *(a1 + 86)), result, a6.f32[0], a7);
      *(*(*(a1 + 32) + 8) + 32) = vminq_f32(*(*(*(a1 + 32) + 8) + 32), v16);
      v17 = *(*(a1 + 40) + 8);
      a6 = v17[2];
      result = vmaxq_f32(a6, v16);
      v17[2] = result;
      --v14;
    }

    while (v14);
  }

  if (++*(*(*(a1 + 48) + 8) + 24) > 0x1Fu || *(a1 + 112) - 1 <= a2)
  {
    v18 = *(*(a1 + 160) + 208);
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 24);
    *(v19 + 24) = v20 + 1;
    v21 = (v18 + 32 * v20);
    v22 = *(*(*(a1 + 32) + 8) + 32);
    v23 = *(*(*(a1 + 40) + 8) + 32);
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    v25 = vmulq_f32(vaddq_f32(v22, v23), v24);
    v26 = vmulq_f32(vsubq_f32(v23, v22), v24);
    v25.i32[3] = 1.0;
    v26.i32[3] = 0;
    *v21 = v25;
    v21[1] = v26;
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    *(*(*(a1 + 32) + 8) + 32) = vnegq_f32(result);
    *(*(*(a1 + 40) + 8) + 32) = result;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

BOOL __ProcessTriangleRange_Generic(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v6 = *(a3 + 248);
  v62 = *(a3 + 232);
  v63 = v6;
  v7 = *(a3 + 280);
  v64 = *(a3 + 264);
  v65 = v7;
  if ((*(a3 + 8) & 8) != 0)
  {
    v8 = *(a3 + 296) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = *(a3 + 223);
  v11 = *(a3 + 297);
  v54 = *(a3 + 64);
  v60 = *(a3 + 80);
  v12 = *(a3 + 96);
  v67 = 0;
  v66 = 0;
  v13 = a2 - a1;
  if (a2 > a1)
  {
    v14 = *(&v12 + 3);
    v15 = a1;
    v9 = 1;
    v59 = a2;
    do
    {
      v61[0] = v62;
      v61[1] = v63;
      v61[2] = v64;
      v61[3] = v65;
      if (v11)
      {
        v16 = (&v66 + 4);
        v17 = &v66;
      }

      else
      {
        v16 = &v66;
        v17 = (&v66 + 4);
      }

      C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_0(v61, v15, v16, v17, &v67);
      v21 = v3 + (v66 * v5);
      if (v10 == 1)
      {
        v23.i64[0] = *v21;
        v22 = v3 + (HIDWORD(v66) * v5);
        v24.i64[0] = *v22;
        v23.i64[1] = *(v21 + 8);
        v24.i64[1] = *(v22 + 8);
        v25 = v3 + (v67 * v5);
        v26.i64[0] = *v25;
        v26.i64[1] = *(v25 + 8);
      }

      else
      {
        *v27.i64 = C3DConvertFloatingTypeToFloat4(v4, v21, v18, v19, v20);
        v57 = v27;
        *v30.i64 = C3DConvertFloatingTypeToFloat4(v4, (v3 + (HIDWORD(v66) * v5)), v27, v28, v29);
        v55 = v30;
        *v33.i64 = C3DConvertFloatingTypeToFloat4(v4, (v3 + (v67 * v5)), v30, v31, v32);
        v24 = v55;
        v23 = v57;
        v26 = v33;
      }

      v34 = vsubq_f32(v24, v23);
      v35 = vsubq_f32(v26, v23);
      v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
      v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      v38 = vmulq_f32(v36, v36);
      *&v39 = v38.f32[1] + (v38.f32[2] + v38.f32[0]);
      *v38.f32 = vrsqrte_f32(v39);
      v41 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
      v40 = vmulq_f32(v23, v41);
      v41.f32[3] = -(v40.f32[2] + vaddv_f32(*v40.f32));
      v42 = vmulq_f32(v60, v41);
      v43 = vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)));
      if (v8)
      {
        if (v43 >= 0.0)
        {
          goto LABEL_23;
        }
      }

      else if (v43 == 0.0)
      {
        goto LABEL_23;
      }

      v44 = vmulq_f32(v54, v41);
      v45 = -vaddv_f32(vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL))) / v43;
      if (v45 >= 0.0 && v45 <= v14)
      {
        v56 = v45;
        v58 = v41;
        v53 = vmlaq_n_f32(v54, v60, v45);
        *v47.i64 = scn_triangle_barycentric_coordinates(v23, v24, v26, v53);
        v48.i64[0] = 0xBF000000BF000000;
        v48.i64[1] = 0xBF000000BF000000;
        v49 = vabsq_f32(vaddq_f32(v47, v48));
        v48.i64[0] = 0x3F0000003F000000;
        v48.i64[1] = 0x3F0000003F000000;
        v50 = vcgeq_f32(v48, v49);
        v50.i32[3] = v50.i32[2];
        if ((vminvq_u32(v50) & 0x80000000) != 0)
        {
          __AddLocalResult(a3, v15, 0, 1, 2, v56, v53, v58);
          if ((*(a3 + 8) & 0x80) != 0)
          {
            return v9;
          }
        }
      }

LABEL_23:
      v9 = ++v15 < v59;
      --v13;
    }

    while (v13);
  }

  return v9;
}

uint64_t __ProcessPrimitiveRange_Generic(unsigned int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v32[0] = a1;
  v32[1] = a2 - a1;
  v6 = *(a3 + 223) == 1;
  if ((*(a3 + 8) & 8) != 0)
  {
    v7 = *(a3 + 296) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 297);
  v9 = *(a3 + 80);
  v17 = *(a3 + 64);
  v18 = v9;
  v19 = *(a3 + 96);
  v28 = 0;
  v29 = &v27 + 1;
  v30 = 0x2020000000;
  v31 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ____ProcessPrimitiveRange_Generic_block_invoke;
  v16[3] = &unk_2782FB6D0;
  v24 = v8;
  v25 = v6;
  v23 = v5;
  v26 = v4;
  v27 = v7 & 1;
  v21 = v3;
  v22 = a3;
  v20 = &v27 + 1;
  v11 = *(a3 + 232);
  v12 = *(a3 + 248);
  v13 = v32;
  v14 = 1;
  *v15 = *(a3 + 266);
  *&v15[14] = *(a3 + 280);
  C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges(&v11, v16, *&v15[14]);
  _Block_object_dispose(&v27 + 1, 8);
  return 0;
}

BOOL __ProcessTriangleRange_Mask(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 200);
  v55 = *(a3 + 220);
  v5 = *(a3 + 222);
  v6 = *(a3 + 248);
  v65 = *(a3 + 232);
  v66 = v6;
  v7 = *(a3 + 280);
  v67 = *(a3 + 264);
  v68 = v7;
  if ((*(a3 + 8) & 8) != 0)
  {
    v8 = *(a3 + 296) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = *(a3 + 223);
  v63 = *(a3 + 297);
  v56 = *(a3 + 64);
  v61 = *(a3 + 80);
  v11 = *(a3 + 96);
  v70 = 0;
  v69 = 0;
  v12 = a2 - a1;
  if (a2 > a1)
  {
    v13 = *(&v11 + 3);
    v14 = a1;
    v9 = 1;
    v62 = a2;
    v54 = v8;
    do
    {
      v64[0] = v65;
      v64[1] = v66;
      v64[2] = v67;
      v64[3] = v68;
      if (v63)
      {
        v15 = (&v69 + 4);
        v16 = &v69;
      }

      else
      {
        v15 = &v69;
        v16 = (&v69 + 4);
      }

      C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_0(v64, v14, v15, v16, &v70);
      v20 = HIDWORD(v69);
      v21 = v70;
      if (((*(*(a3 + 320) + HIDWORD(v69)) & *(*(a3 + 320) + v69)) & *(*(a3 + 320) + v70)) != 0)
      {
        goto LABEL_10;
      }

      v22 = v4 + (v69 * v5);
      if (v10 == 1)
      {
        v23.i64[0] = *v22;
        v23.i64[1] = *(v22 + 8);
        v24 = v4 + (HIDWORD(v69) * v5);
        v25.i64[0] = *v24;
        v25.i64[1] = *(v24 + 8);
        v26 = v4 + v70 * v5;
        v27.i64[0] = *v26;
        v27.i64[1] = *(v26 + 8);
      }

      else
      {
        *v28.i64 = C3DConvertFloatingTypeToFloat4(v55, v22, v17, v18, v19);
        v59 = v28;
        *v31.i64 = C3DConvertFloatingTypeToFloat4(v55, (v4 + (v20 * v5)), v28, v29, v30);
        v57 = v31;
        v8 = v54;
        *v34.i64 = C3DConvertFloatingTypeToFloat4(v55, (v4 + v21 * v5), v31, v32, v33);
        v25 = v57;
        v23 = v59;
        v27 = v34;
      }

      v35 = vsubq_f32(v25, v23);
      v36 = vsubq_f32(v27, v23);
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v35)), v36, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL));
      v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v39 = vmulq_f32(v37, v37);
      *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
      *v39.f32 = vrsqrte_f32(v40);
      v42 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      v41 = vmulq_f32(v23, v42);
      v42.f32[3] = -(v41.f32[2] + vaddv_f32(*v41.f32));
      v43 = vmulq_f32(v61, v42);
      v44 = vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)));
      if (v8)
      {
        if (v44 >= 0.0)
        {
          goto LABEL_10;
        }
      }

      else if (v44 == 0.0)
      {
        goto LABEL_10;
      }

      v45 = vmulq_f32(v56, v42);
      v46 = -vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL))) / v44;
      if (v46 >= 0.0 && v46 <= v13)
      {
        v58 = v46;
        v60 = v42;
        v53 = vmlaq_n_f32(v56, v61, v46);
        *v48.i64 = scn_triangle_barycentric_coordinates(v23, v25, v27, v53);
        v49.i64[0] = 0xBF000000BF000000;
        v49.i64[1] = 0xBF000000BF000000;
        v50 = vabsq_f32(vaddq_f32(v48, v49));
        v49.i64[0] = 0x3F0000003F000000;
        v49.i64[1] = 0x3F0000003F000000;
        v51 = vcgeq_f32(v49, v50);
        v51.i32[3] = v51.i32[2];
        if ((vminvq_u32(v51) & 0x80000000) != 0)
        {
          __AddLocalResult(a3, v14, 0, 1, 2, v58, v53, v60);
          if ((*(a3 + 8) & 0x80) != 0)
          {
            return v9;
          }
        }
      }

LABEL_10:
      v9 = ++v14 < v62;
      --v12;
    }

    while (v12);
  }

  return v9;
}

uint64_t __ProcessPrimitiveRange_Mask(unsigned int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v32[0] = a1;
  v32[1] = a2 - a1;
  v6 = *(a3 + 223) == 1;
  if ((*(a3 + 8) & 8) != 0)
  {
    v7 = *(a3 + 296) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 297);
  v9 = *(a3 + 80);
  v17 = *(a3 + 64);
  v18 = v9;
  v19 = *(a3 + 96);
  v28 = 0;
  v29 = &v27 + 1;
  v30 = 0x2020000000;
  v31 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ____ProcessPrimitiveRange_Mask_block_invoke;
  v16[3] = &unk_2782FB6D0;
  v24 = v8;
  v25 = v6;
  v21 = a3;
  v22 = v3;
  v23 = v5;
  v26 = v4;
  v27 = v7 & 1;
  v20 = &v27 + 1;
  v11 = *(a3 + 232);
  v12 = *(a3 + 248);
  v13 = v32;
  v14 = 1;
  *v15 = *(a3 + 266);
  *&v15[14] = *(a3 + 280);
  C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges(&v11, v16, *&v15[14]);
  _Block_object_dispose(&v27 + 1, 8);
  return 0;
}

BOOL __ProcessTriangleRange_Mask_Ind16VrtFloat3CullBack(unsigned int a1, unsigned int a2, uint64_t a3, int32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v9 = *(a3 + 200);
  v10 = *(a3 + 222);
  v11 = *(a3 + 232);
  if (*(a3 + 280) || *(a3 + 288) != 1)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __ProcessTriangleRange_Mask_Ind16VrtFloat3CullBack_cold_1(v12);
    }
  }

  v13 = *(a3 + 240);
  if (v13 % 6 <= 1)
  {
    v14 = v13 / 6;
  }

  else
  {
    v14 = v13 / 6 + 1;
  }

  if (v14 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - a1;
  if (v15 <= a1)
  {
    return 0;
  }

  else
  {
    v17 = a1;
    v18 = 1;
    v19 = 3 * a1;
    do
    {
      if (((*(*(a3 + 320) + *(v11 + 2 * (v19 + 1))) & *(*(a3 + 320) + *(v11 + 2 * v19))) & *(*(a3 + 320) + *(v11 + 2 * (v19 + 2)))) == 0)
      {
        v20 = v9 + *(v11 + 2 * v19) * v10;
        a4.i64[0] = *v20;
        a4.i32[2] = *(v20 + 8);
        v21 = v9 + *(v11 + 2 * (v19 + 1)) * v10;
        a5.i64[0] = *v21;
        a5.i32[2] = *(v21 + 8);
        v22 = v9 + *(v11 + 2 * (v19 + 2)) * v10;
        a6.i64[0] = *v22;
        a6.i32[2] = *(v22 + 8);
        v23 = vsubq_f32(a5, a4);
        v24 = vsubq_f32(a6, a4);
        v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v23)), v24, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
        v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
        v27 = vmulq_f32(v25, v25);
        *&v28 = v27.f32[1] + (v27.f32[2] + v27.f32[0]);
        *v27.f32 = vrsqrte_f32(v28);
        v30 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
        v29 = vmulq_f32(a4, v30);
        v30.f32[3] = -(v29.f32[2] + vaddv_f32(*v29.f32));
        v31 = *(a3 + 80);
        v32 = vmulq_f32(v31, v30);
        v33 = vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)));
        if (v33 < 0.0)
        {
          v34 = *(a3 + 64);
          v35 = vmulq_f32(v34, v30);
          v36 = -vaddv_f32(vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL))) / v33;
          if (v36 >= 0.0 && v36 <= *(a3 + 108))
          {
            v43 = vmlaq_n_f32(v34, v31, v36);
            v44 = v30;
            v42 = v36;
            *v38.i64 = scn_triangle_barycentric_coordinates(a4, a5, a6, v43);
            a6.i32[3] = v44.n128_i32[3];
            v39.i64[0] = 0xBF000000BF000000;
            v39.i64[1] = 0xBF000000BF000000;
            v40 = vabsq_f32(vaddq_f32(v38, v39));
            a5.i64[0] = 0x3F0000003F000000;
            a5.i64[1] = 0x3F0000003F000000;
            a4 = vcgeq_f32(a5, v40);
            a4.i32[3] = a4.i32[2];
            if ((vminvq_u32(a4) & 0x80000000) != 0)
            {
              __AddLocalResult(a3, v17, 0, 1, 2, v42, v43, v44);
              if ((*(a3 + 8) & 0x80) != 0)
              {
                break;
              }
            }
          }
        }
      }

      v18 = ++v17 < v15;
      v19 += 3;
      --v16;
    }

    while (v16);
  }

  return v18;
}

BOOL __ProcessTriangleRange_Ind16VrtFloat3CullBack(unsigned int a1, unsigned int a2, uint64_t a3, int32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v9 = *(a3 + 200);
  v10 = *(a3 + 222);
  v11 = *(a3 + 232);
  if (*(a3 + 280) || *(a3 + 288) != 1)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __ProcessTriangleRange_Ind16VrtFloat3CullBack_cold_1(v12);
    }
  }

  v13 = a2 - a1;
  if (a2 <= a1)
  {
    return 0;
  }

  else
  {
    v14 = a1;
    v15 = 1;
    v16 = 3 * a1;
    do
    {
      if (v11)
      {
        v17 = *(v11 + 2 * v16);
        v18 = *(v11 + 2 * (v16 + 1));
        v19 = *(v11 + 2 * (v16 + 2));
      }

      else
      {
        v17 = 3 * v14;
        v18 = 3 * v14 + 1;
        v19 = 3 * v14 + 2;
      }

      v20 = v9 + v17 * v10;
      a4.i64[0] = *v20;
      a4.i32[2] = *(v20 + 8);
      v21 = v9 + v18 * v10;
      a5.i64[0] = *v21;
      a5.i32[2] = *(v21 + 8);
      v22 = v9 + v19 * v10;
      a6.i64[0] = *v22;
      a6.i32[2] = *(v22 + 8);
      v23 = vsubq_f32(a5, a4);
      v24 = vsubq_f32(a6, a4);
      v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v23)), v24, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
      v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
      v27 = vmulq_f32(v25, v25);
      *&v28 = v27.f32[1] + (v27.f32[2] + v27.f32[0]);
      *v27.f32 = vrsqrte_f32(v28);
      v30 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
      v29 = vmulq_f32(a4, v30);
      v30.f32[3] = -(v29.f32[2] + vaddv_f32(*v29.f32));
      v31 = *(a3 + 80);
      v32 = vmulq_f32(v31, v30);
      v33 = vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)));
      if (v33 < 0.0)
      {
        v34 = *(a3 + 64);
        v35 = vmulq_f32(v34, v30);
        v36 = -vaddv_f32(vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL))) / v33;
        if (v36 >= 0.0 && v36 <= *(a3 + 108))
        {
          v43 = vmlaq_n_f32(v34, v31, v36);
          v44 = v30;
          v42 = v36;
          *v38.i64 = scn_triangle_barycentric_coordinates(a4, a5, a6, v43);
          a6.i32[3] = v44.n128_i32[3];
          v39.i64[0] = 0xBF000000BF000000;
          v39.i64[1] = 0xBF000000BF000000;
          v40 = vabsq_f32(vaddq_f32(v38, v39));
          a5.i64[0] = 0x3F0000003F000000;
          a5.i64[1] = 0x3F0000003F000000;
          a4 = vcgeq_f32(a5, v40);
          a4.i32[3] = a4.i32[2];
          if ((vminvq_u32(a4) & 0x80000000) != 0)
          {
            __AddLocalResult(a3, v14, 0, 1, 2, v42, v43, v44);
            if ((*(a3 + 8) & 0x80) != 0)
            {
              break;
            }
          }
        }
      }

      v15 = ++v14 < a2;
      v16 += 3;
      --v13;
    }

    while (v13);
  }

  return v15;
}

BOOL __ProcessSkinnedGeometryForJointIndex(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v85 = *MEMORY[0x277D85DE8];
  MaterialsCount = C3DGeometryGetMaterialsCount(a2);
  Mesh = C3DGeometryGetMesh(a2);
  PositionSource = C3DMeshGetPositionSource(Mesh, 0);
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
  v77 = 0u;
  v78 = 0u;
  C3DMeshSourceGetContent(PositionSource, &v77);
  if (!v77)
  {
    return 0;
  }

  IndexedBoneIndices = C3DSkinGetIndexedBoneIndices(a1);
  if (!IndexedBoneIndices)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __ProcessSkinnedGeometryForJointIndex_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v75 = 0u;
  v76 = 0u;
  C3DMeshSourceGetContent(IndexedBoneIndices, &v75);
  v21 = 0;
  if (BYTE7(v76) == 16 && BYTE8(v76) == 4)
  {
    v36 = BYTE7(v78) == 1;
    v22 = *(a4 + 80);
    v72 = *(a4 + 64);
    v73 = v22;
    v74 = *(a4 + 96);
    ElementsCount = C3DMeshGetElementsCount(Mesh);
    if (ElementsCount >= 1)
    {
      v25 = 0;
      v24.n128_u64[0] = vdup_n_s16(a3);
      v21 = 1;
      v26.i64[0] = 0x80000000800000;
      v26.i64[1] = 0x80000000800000;
      v35 = vnegq_f32(v26);
      v24.n128_u64[0] = vuzp1_s8(v24.n128_u64[0], v24.n128_u64[0]);
      v34 = v24;
      do
      {
        *(a4 + 192) = v25;
        ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, v25, 0);
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v68);
        if (((MaterialsCount > 0) & ((*(a4 + 8) & 8) >> 3)) == 1)
        {
          MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a2, v25 % MaterialsCount);
          IsDoubleSided = C3DMaterialIsDoubleSided(MaterialAtIndex);
          CullMode = C3DMaterialGetCullMode(MaterialAtIndex);
        }

        else
        {
          CullMode = 0;
          IsDoubleSided = 0;
        }

        if ((BYTE2(v70) & 0xFA) == 0)
        {
          v66[0] = 0;
          v66[1] = v66;
          v66[2] = 0x2020000000;
          v67 = 0;
          v81[0] = 0;
          v81[1] = v81;
          v81[2] = 0x3020000000;
          v82 = v35;
          v79[0] = 0;
          v79[1] = v79;
          v79[2] = 0x3020000000;
          *&v31 = 0x80000000800000;
          *(&v31 + 1) = 0x80000000800000;
          v80 = v31;
          v62 = 0;
          v63 = &v62;
          v64 = 0x2020000000;
          v65 = 0;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v46 = v75;
          v47 = v76;
          v48 = v77;
          v49 = v78;
          v54 = v70;
          v55 = v71;
          v52 = v68;
          v53 = v69;
          v40 = v73;
          v41 = v74;
          v39 = v72;
          v38[2] = ____ProcessSkinnedGeometryForJointIndex_block_invoke;
          v38[3] = &unk_2782FB6F8;
          v58 = CullMode;
          v59 = v34.n128_u32[0];
          v60 = v36;
          v42 = v81;
          v43 = v79;
          v50 = &v84;
          v51 = &v83;
          v61 = IsDoubleSided;
          v56 = v25;
          v57 = a4;
          v44 = v66;
          v45 = &v62;
          v37[0] = v68;
          v37[1] = v69;
          v37[2] = v70;
          v37[3] = v71;
          C3DIndicesContentEnumerateTriangulatedPrimitives(v37, v38, v34);
          v32 = *(v63 + 24);
          _Block_object_dispose(&v62, 8);
          _Block_object_dispose(v79, 8);
          _Block_object_dispose(v81, 8);
          _Block_object_dispose(v66, 8);
          if (v32)
          {
            break;
          }
        }

        v21 = ++v25 < ElementsCount;
      }

      while (ElementsCount != v25);
      return v21;
    }

    return 0;
  }

  return v21;
}

void sub_21BF37D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t __ProcessSkinner(uint64_t a1, uint64_t a2)
{
  JointBoundingBoxes = C3DSkinnerGetJointBoundingBoxes(a1, *(a2 + 112));
  OverrideMaterial = C3DGeometryGetOverrideMaterial(a1);
  Geometry = C3DNodeGetGeometry(*(a2 + 112));
  v7 = Geometry;
  if ((*(a2 + 8) & 0x40) != 0 || Geometry)
  {
    IOSurface = C3DTextureGetIOSurface(OverrideMaterial);
    Joints = C3DSkinnerGetJoints(a1);
    if (Joints)
    {
      v10 = Joints;
      Count = CFArrayGetCount(Joints);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = (JointBoundingBoxes + 32 * v14);
          if ((vminvq_u32(vcgezq_f32(v15[1])) & 0x80000000) != 0)
          {
            v93 = *v15;
            v95 = v15[1];
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
            *(a2 + 120) = ValueAtIndex;
            WorldMatrix = C3DNodeGetWorldMatrix(ValueAtIndex);
            v18 = *WorldMatrix;
            v19 = WorldMatrix[1];
            v20 = WorldMatrix[2];
            v21 = WorldMatrix[3];
            v22 = vaddq_f32(v21, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v19, *v93.f32, 1), *WorldMatrix, v93.f32[0]), v20, v93, 2));
            v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
            v24 = vmulq_f32(*WorldMatrix, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
            *v23.i32 = vaddv_f32(*v24.f32);
            v25 = 1.0;
            if ((v24.f32[2] + *v23.i32) < 0.0)
            {
              v25 = -1.0;
            }

            v26 = vmulq_f32(v18, v18);
            v27 = vmulq_f32(v19, v19);
            v28 = vadd_f32(vzip1_s32(*v26.i8, *v27.i8), vzip2_s32(*v26.i8, *v27.i8));
            v29 = vextq_s8(v26, v26, 8uLL);
            *v29.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v29.f32, *&vextq_s8(v27, v27, 8uLL)), v28));
            v30 = vmulq_f32(v20, v20);
            v29.i32[2] = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
            v31 = vmulq_n_f32(v29, v25);
            v32 = vdivq_f32(v18, vdupq_lane_s32(*v31.f32, 0));
            v33 = vdivq_f32(v19, vdupq_lane_s32(*v31.f32, 1));
            v34 = vdivq_f32(v20, vdupq_laneq_s32(v31, 2));
            v35 = vmulq_f32(v95, v31);
            v99.columns[1] = v32;
            v99.columns[2] = v33;
            v99.columns[3] = v34;
            v36 = *(a2 + 16);
            v37 = *(a2 + 32);
            v38 = vsubq_f32(v22, v36);
            v39 = vzip2q_s32(v32, v34);
            v40 = vzip1q_s32(vzip1q_s32(v32, v34), v33);
            v41 = vtrn2q_s32(v32, v33);
            v41.i32[2] = v34.i32[1];
            v42 = vzip1q_s32(v39, vdupq_laneq_s32(v33, 2));
            v43 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v41, *v38.f32, 1), v40, v38.f32[0]), v42, v38, 2);
            v44 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v41, *v37.f32, 1), v40, v37.f32[0]), v42, v37, 2);
            v45 = vdivq_f32(vaddq_f32(v35, v43), v44);
            v45.i32[3] = 0;
            v46 = vdivq_f32(vsubq_f32(v43, v35), v44);
            v46.i32[3] = 0;
            v47 = vminnmq_f32(v45, v46);
            v48 = vmaxnmq_f32(v45, v46);
            if (*v47.i32 < *&v47.i32[2])
            {
              v49 = *&v47.i32[2];
            }

            else
            {
              v49 = *v47.i32;
            }

            if (v49 < *&v47.i32[1])
            {
              v49 = *&v47.i32[1];
            }

            v50 = v48.f32[2];
            if (v48.f32[0] <= v48.f32[2])
            {
              v50 = v48.f32[0];
            }

            v48.i32[0] = v48.i32[1];
            if (v50 <= v48.f32[1])
            {
              v48.f32[0] = v50;
            }

            if (v48.f32[0] >= v49 && v48.f32[0] >= 0.0 && v49 < *(a2 + 60))
            {
              LODWORD(v52) = 2 * (*v47.i32 <= *&v47.i32[2]);
              if (*&v47.i32[1] > *&v47.i32[2])
              {
                v53 = 1;
              }

              else
              {
                v53 = 2;
              }

              if (*v47.i32 <= *&v47.i32[1])
              {
                v52 = v53;
              }

              else
              {
                v52 = v52;
              }

              if (v49 >= 0.0)
              {
                v54 = v49;
              }

              else
              {
                v54 = v48.f32[0];
              }

              v55 = v99.columns[v52 + 1];
              v98 = v44;
              v56 = *(&v98 | (4 * v52));
              *v47.i32 = -v56;
              v45.i32[0] = 1.0;
              v57.i64[0] = 0x8000000080000000;
              v57.i64[1] = 0x8000000080000000;
              v47.i32[0] = vbslq_s8(v57, v45, v47).u32[0];
              if (v56 == 0.0)
              {
                v58 = -0.0;
              }

              else
              {
                v58 = *v47.i32;
              }

              if ((*(a2 + 8) & 0x40) != 0)
              {
                v89 = v58;
                v90 = v55;
                v92 = v37;
                v94 = v54;
                v96 = v36;
                v71 = C3DHitTestResultCreate();
                C3DHitTestResultSetNode(v71, *(a2 + 112));
                v72 = *(v71 + 24);
                if (v72 != ValueAtIndex)
                {
                  if (v72)
                  {
                    CFRelease(v72);
                    *(v71 + 24) = 0;
                  }

                  if (ValueAtIndex)
                  {
                    v73 = CFRetain(ValueAtIndex);
                  }

                  else
                  {
                    v73 = 0;
                  }

                  *(v71 + 24) = v73;
                }

                v91 = vmulq_n_f32(v90, v89);
                v97 = vmlaq_n_f32(v96, v92, v94);
                v84 = *(a2 + 128);
                v85 = *(a2 + 144);
                v86 = *(a2 + 176);
                *(v71 + 144) = *(a2 + 160);
                *(v71 + 160) = v86;
                *(v71 + 112) = v84;
                *(v71 + 128) = v85;
                *(v71 + 96) = v97;
                v102 = __invert_f4(*(a2 + 128));
                v87 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v102.columns[1], *v97.f32, 1), v102.columns[0], v97.f32[0]), v102.columns[2], v97, 2);
                v102.columns[1] = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v102.columns[1], *v91.f32, 1), v102.columns[0], v91.f32[0]), v102.columns[2], v91, 2);
                v102.columns[0] = vmulq_f32(v102.columns[1], v102.columns[1]);
                v102.columns[2].f32[0] = v102.columns[0].f32[2] + vaddv_f32(*v102.columns[0].f32);
                v102.columns[0] = vaddq_f32(v102.columns[3], v87);
                *v102.columns[3].f32 = vrsqrte_f32(v102.columns[2].u32[0]);
                *v102.columns[3].f32 = vmul_f32(*v102.columns[3].f32, vrsqrts_f32(v102.columns[2].u32[0], vmul_f32(*v102.columns[3].f32, *v102.columns[3].f32)));
                *(v71 + 64) = v102.columns[0];
                *(v71 + 80) = vmulq_n_f32(v102.columns[1], vmul_f32(*v102.columns[3].f32, vrsqrts_f32(v102.columns[2].u32[0], vmul_f32(*v102.columns[3].f32, *v102.columns[3].f32))).f32[0]);
                CFArrayAppendValue(*(a2 + 328), v71);
                CFRelease(v71);
                v83 = *(a2 + 8);
                if ((v83 & 0x100) != 0)
                {
                  *(a2 + 60) = v94;
                }

LABEL_53:
                v13 = 1;
                if ((v83 & 0x80) != 0)
                {
                  return v13 & 1;
                }

                goto LABEL_54;
              }

              v59 = 0;
              v60 = (IOSurface + (v14 << 6));
              v61 = v60[1];
              v62 = v60[2];
              v63 = v60[3];
              v100[0] = *v60;
              v100[1] = v61;
              v100[2] = v62;
              v100[3] = v63;
              memset(&v99, 0, sizeof(v99));
              do
              {
                v99.columns[v59] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v100[v59])), v19, *&v100[v59], 1), v20, v100[v59], 2), v21, v100[v59], 3);
                ++v59;
              }

              while (v59 != 4);
              v101 = __invert_f4(v99);
              v64 = *(a2 + 16);
              v65 = *(a2 + 32);
              v66 = vaddq_f32(v101.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v101.columns[1], *v64.f32, 1), v101.columns[0], v64.f32[0]), v101.columns[2], v64, 2));
              if (COERCE_FLOAT(HIDWORD(*(a2 + 48))) >= 1.0e20)
              {
                v74 = vaddq_f32(v64, v65);
                v75 = vsubq_f32(vaddq_f32(v101.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v101.columns[1], *v74.f32, 1), v101.columns[0], v74.f32[0]), v101.columns[2], v74, 2)), v66);
                v69 = vmulq_f32(v75, v75);
                *&v76 = v69.f32[2] + vaddv_f32(*v69.f32);
                *v69.f32 = vrsqrte_f32(v76);
                *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v76, vmul_f32(*v69.f32, *v69.f32)));
                v70 = vmulq_n_f32(v75, vmul_f32(*v69.f32, vrsqrts_f32(v76, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
                v66.i32[3] = 1.0;
                v69.i32[0] = 2139095040;
              }

              else
              {
                v67 = vmlaq_laneq_f32(v64, v65, *(a2 + 48), 3);
                v68 = vsubq_f32(vaddq_f32(v101.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v101.columns[1], *v67.f32, 1), v101.columns[0], v67.f32[0]), v101.columns[2], v67, 2)), v66);
                v66.i32[3] = 1.0;
                v69 = vmulq_f32(v68, v68);
                v69.f32[0] = sqrtf(v69.f32[2] + vaddv_f32(*v69.f32));
                v70 = vdivq_f32(v68, vdupq_lane_s32(*v69.f32, 0));
              }

              v77 = v70;
              v70.i32[3] = 0;
              __asm { FMOV            V3.4S, #1.0 }

              v82 = vdivq_f32(_Q3, v77);
              v82.i32[3] = v69.i32[0];
              *(a2 + 64) = v66;
              *(a2 + 80) = v70;
              *(a2 + 96) = v82;
              if (__ProcessSkinnedGeometryForJointIndex(OverrideMaterial, v7, v14, a2))
              {
                v83 = *(a2 + 8);
                goto LABEL_53;
              }
            }
          }

LABEL_54:
          if (++v14 == v12)
          {
            return v13 & 1;
          }
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t __ProcessNode(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v235 = *MEMORY[0x277D85DE8];
  v2[14] = v1;
  v2[15] = 0;
  v2[24] = 0;
  WorldMatrix = C3DNodeGetWorldMatrix(v1);
  v6 = WorldMatrix[2];
  v7 = WorldMatrix[3];
  v208 = WorldMatrix[1];
  v213 = *WorldMatrix;
  *(v3 + 128) = *WorldMatrix;
  *(v3 + 144) = v208;
  v205 = v7;
  v207 = v6;
  *(v3 + 160) = v6;
  *(v3 + 176) = v7;
  Skinner = C3DNodeGetSkinner(v4);
  if (Skinner)
  {
    v9 = Skinner;
    Geometry = C3DNodeGetGeometry(v4);
    EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(v9, Geometry);
    if (C3DSkinnerCalculationModeUsesGPU(EffectiveCalculationMode))
    {

      return __ProcessSkinner(v9, v3);
    }

    *v13.columns[0].i64 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v9, EffectiveCalculationMode, v213, v208, v207, v205);
  }

  else
  {
    v13.columns[1] = v208;
    v13.columns[0] = v213;
    v13.columns[3] = v205;
    v13.columns[2] = v207;
  }

  v230 = 0.0;
  v237 = __invert_f4(v13);
  v14 = *(v3 + 16);
  v15 = *(v3 + 32);
  v16 = vaddq_f32(v237.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v237.columns[1], *v14.f32, 1), v237.columns[0], v14.f32[0]), v237.columns[2], v14, 2));
  if (COERCE_FLOAT(HIDWORD(*(v3 + 48))) >= 1.0e20)
  {
    v21 = vaddq_f32(v14, v15);
    v22 = vsubq_f32(vaddq_f32(v237.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v237.columns[1], *v21.f32, 1), v237.columns[0], v21.f32[0]), v237.columns[2], v21, 2)), v16);
    v19 = vmulq_f32(v22, v22);
    *&v23 = v19.f32[2] + vaddv_f32(*v19.f32);
    *v19.f32 = vrsqrte_f32(v23);
    *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v23, vmul_f32(*v19.f32, *v19.f32)));
    v20 = vmulq_n_f32(v22, vmul_f32(*v19.f32, vrsqrts_f32(v23, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
    v16.i32[3] = 1.0;
    v19.i32[0] = 2139095040;
  }

  else
  {
    v17 = vmlaq_laneq_f32(v14, v15, *(v3 + 48), 3);
    v18 = vsubq_f32(vaddq_f32(v237.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v237.columns[1], *v17.f32, 1), v237.columns[0], v17.f32[0]), v237.columns[2], v17, 2)), v16);
    v16.i32[3] = 1.0;
    v19 = vmulq_f32(v18, v18);
    v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    v20 = vdivq_f32(v18, vdupq_lane_s32(*v19.f32, 0));
  }

  v24 = v20;
  v20.i32[3] = 0;
  __asm { FMOV            V3.4S, #1.0 }

  v214 = _Q3;
  v29 = vdivq_f32(_Q3, v24);
  v29.i32[3] = v19.i32[0];
  *(v3 + 64) = v16;
  *(v3 + 80) = v20;
  *(v3 + 96) = v29;
  if ((*(v3 + 9) & 4) == 0)
  {
    Light = C3DNodeGetLight(v4);
    if (Light)
    {
      v31 = Light;
      if (C3DLightGetType(Light) == 6)
      {
        if (C3DLightGetDrawsArea(v31))
        {
          v32.i32[0] = *(v3 + 88);
          v33.i32[0] = 1.0;
          v34.i64[0] = 0x8000000080000000;
          v34.i64[1] = 0x8000000080000000;
          v33.i32[0] = vbslq_s8(v34, v33, v32).u32[0];
          if (*v32.i32 == 0.0)
          {
            *v33.i32 = 0.0;
          }

          v35 = *v33.i32;
          DoubleSided = C3DLightGetDoubleSided(v31);
          v224 = 0u;
          v225 = 0u;
          C3DLightGetAreaDescription(v31, &v224);
          if (v224 > 2u)
          {
            if (v224 == 3)
            {
              v42 = *(v3 + 64);
              v43 = *(v3 + 80);
              v76 = vdivq_f32(v214, v225);
              v77 = v76.u32[0];
              v78.i32[0] = 0;
              v78.i64[1] = 0;
              v78.i32[1] = v76.i32[1];
              v79.i64[0] = 0;
              v79.i64[1] = v76.u32[2];
              v80 = vaddq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v78.u64[0], *v42.f32, 1), v76.u32[0], v42.f32[0]), v79, v42, 2), 0);
              if (COERCE_FLOAT(HIDWORD(*(v3 + 96))) >= 1.0e20)
              {
                v85 = vaddq_f32(v42, v43);
                v86 = vsubq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v78, *v85.f32, 1), v77, v85.f32[0]), v79, v85, 2), 0), v80);
                v83 = vmulq_f32(v86, v86);
                *&v87 = v83.f32[2] + vaddv_f32(*v83.f32);
                *v83.f32 = vrsqrte_f32(v87);
                *v83.f32 = vmul_f32(*v83.f32, vrsqrts_f32(v87, vmul_f32(*v83.f32, *v83.f32)));
                v84 = vmulq_n_f32(v86, vmul_f32(*v83.f32, vrsqrts_f32(v87, vmul_f32(*v83.f32, *v83.f32))).f32[0]);
                v80.i32[3] = 1.0;
                v83.i32[0] = 2139095040;
              }

              else
              {
                v81 = vmlaq_laneq_f32(v42, v43, *(v3 + 96), 3);
                v82 = vsubq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v78, *v81.f32, 1), v77, v81.f32[0]), v79, v81, 2), 0), v80);
                v80.i32[3] = 1.0;
                v83 = vmulq_f32(v82, v82);
                v83.f32[0] = sqrtf(v83.f32[2] + vaddv_f32(*v83.f32));
                v84 = vdivq_f32(v82, vdupq_lane_s32(*v83.f32, 0));
              }

              v88 = vmulq_f32(v80, v84);
              v89 = v88.f32[2] + vaddv_f32(*v88.f32);
              v90 = vmulq_f32(v80, v80);
              v91 = (v90.f32[2] + vaddv_f32(*v90.f32)) + -1.0;
              if (v91 <= 0.0 || v89 <= 0.0)
              {
                v92 = -(v91 - (v89 * v89));
                if (v92 >= 0.0)
                {
                  v93 = sqrtf(v92);
                  v94 = -v89 - v93;
                  v95 = v89 + v93;
                  if (v94 >= 0.0)
                  {
                    v95 = v94;
                  }

                  if (v95 <= v83.f32[0])
                  {
                    v96 = vmlaq_f32(v80, 0, v84);
                    LODWORD(v97) = 0;
                    HIDWORD(v97) = DWORD1(v225);
                    v98.i64[0] = 0;
                    v98.i64[1] = DWORD2(v225);
                    v99 = vsubq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v225, v96.f32[0]), v97, *v96.f32, 1), v98, v96, 2), 0), v42);
                    v100 = vmulq_f32(v99, v99);
                    v44 = sqrtf(v100.f32[2] + vaddv_f32(*v100.f32));
                    v230 = v44;
                    v101 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77, v96.f32[0]), v78, *v96.f32, 1), v79, v96, 2), 0);
                    v102 = vmulq_f32(v101, v101);
                    *&v103 = v102.f32[2] + vaddv_f32(*v102.f32);
                    *v102.f32 = vrsqrte_f32(v103);
                    *v102.f32 = vmul_f32(*v102.f32, vrsqrts_f32(v103, vmul_f32(*v102.f32, *v102.f32)));
                    v48 = vmulq_n_f32(v101, vmul_f32(*v102.f32, vrsqrts_f32(v103, vmul_f32(*v102.f32, *v102.f32))).f32[0]);
                    goto LABEL_60;
                  }
                }
              }
            }

            else if (v224 == 4)
            {
              v49 = v35 > 0.0 ? 1 : DoubleSided;
              if (v49 == 1)
              {
                v50 = *(&v225 + 1);
                v51 = v225;
                v52 = *(v3 + 64);
                v53 = *(v3 + 80);
                v54 = *(v3 + 96);
                LODWORD(v231) = 0;
                v210 = v53;
                v216 = v52;
                if (scn_plane_ray_intersection(0, 0x80000000BF800000, &v231, v52, v53, v54))
                {
                  v44 = *&v231;
                  if (v51)
                  {
                    v55 = 0;
                    v56 = 0;
                    v48.n128_u64[0] = 0;
                    v48.n128_u32[3] = 0;
                    v48.n128_f32[2] = -v35;
                    v43 = v210;
                    v42 = v216;
                    v57 = vmlaq_n_f32(v216, v210, *&v231);
                    v58 = vmulq_f32(v57, xmmword_21C27F9D0);
                    v59 = vmulq_f32(v57, xmmword_21C27F8C0);
                    v60 = vadd_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v59, v59, 8uLL)), vadd_f32(vzip1_s32(*v58.i8, *v59.i8), vzip2_s32(*v58.i8, *v59.i8)));
                    v61.i32[1] = v60.i32[1];
                    v61.i32[0] = -859915232;
                    v62 = vsub_f32(v61, v60);
                    v63 = -*&v62.i32[1];
                    v64 = vdup_lane_s32(v62, 0);
                    do
                    {
                      v65 = *(v50 + 8 * v55);
                      if (v51 - 1 == v55)
                      {
                        v66 = 0;
                      }

                      else
                      {
                        v66 = v55 + 1;
                      }

                      v67 = *(v50 + 8 * v66);
                      v68 = vsub_f32(v60, v65);
                      v69 = vsub_f32(v61, v65);
                      v70 = vsub_f32(v67, v65);
                      if (((-v70.f32[1] * v68.f32[0]) + (v70.f32[0] * v68.f32[1])) >= 0.0 == ((-v70.f32[1] * v69.f32[0]) + (v70.f32[0] * v69.f32[1])) < 0.0)
                      {
                        v71 = vsub_f32(v67, v60);
                        v72 = vsub_f32(v65, v60);
                        v73 = vcgez_f32(vmla_f32(vmul_n_f32(vzip1_s32(v72, v71), v63), vzip2_s32(v72, v71), v64));
                        v56 ^= veor_s8(v73, vdup_lane_s32(v73, 1)).u8[0];
                      }

                      ++v55;
                    }

                    while (v51 != v55);
                    v230 = *&v231;
                    if (v56)
                    {
                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    v230 = *&v231;
                  }
                }
              }
            }
          }

          else if (v224 == 1)
          {
            if (v35 > 0.0)
            {
              v74 = 1;
            }

            else
            {
              v74 = DoubleSided;
            }

            if (v74 == 1)
            {
              v231 = 0u;
              v232 = xmmword_21C27F600;
              v233 = xmmword_21C27F910;
              v234.i64[0] = v225;
              v211 = *(v3 + 80);
              v217 = *(v3 + 64);
              v75 = scn_rectangle_ray_intersection(&v231, &v230, v217, v211, *(v3 + 96));
              v48.n128_u64[0] = 0;
              v48.n128_u32[3] = 0;
              v43 = v211;
              v42 = v217;
              if (v75)
              {
                v48.n128_f32[2] = -v35;
                v44 = v230;
                goto LABEL_60;
              }
            }
          }

          else if (v224 == 2)
          {
            v37 = v35 > 0.0 ? 1 : DoubleSided;
            if (v37 == 1)
            {
              v38 = v225;
              v39 = *(v3 + 80);
              v209 = v39;
              v215 = *(v3 + 64);
              v40 = *(v3 + 96);
              LODWORD(v231) = 0;
              v41 = scn_plane_ray_intersection(0, 0x800000003F800000, &v231, v215, v39, v40);
              v43 = v209;
              v42 = v215;
              if (v41)
              {
                v44 = *&v231;
                v45 = vmlaq_n_f32(v215, v209, *&v231);
                v46 = vmulq_f32(v45, xmmword_21C27F910);
                v47 = vmulq_f32(v45, xmmword_21C27F8C0);
                *v47.i8 = vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v47, v47, 8uLL)), vadd_f32(vzip1_s32(*v46.i8, *v47.i8), vzip2_s32(*v46.i8, *v47.i8))), v38);
                if (vaddv_f32(vmul_f32(*v47.i8, *v47.i8)) <= 1.0)
                {
                  v48.n128_u64[0] = 0;
                  v48.n128_u32[3] = 0;
                  v48.n128_f32[2] = -v35;
                  v230 = *&v231;
LABEL_60:
                  __AddLocalResult(v3, 0, 0, 0, 0, v44, vmlaq_n_f32(v42, v43, v44), v48);
                }
              }
            }
          }
        }
      }
    }
  }

  if ((*(v4 + 221) & 0x10) != 0)
  {
    v137 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(*(v3 + 144), *(v3 + 304), 1), *(v3 + 128), COERCE_FLOAT(*(v3 + 304))), *(v3 + 160), *(v3 + 304), 2);
    v138 = vmulq_f32(v137, v137);
    *&v139 = v138.f32[2] + vaddv_f32(*v138.f32);
    *v138.f32 = vrsqrte_f32(v139);
    *v138.f32 = vmul_f32(*v138.f32, vrsqrts_f32(v139, vmul_f32(*v138.f32, *v138.f32)));
    v140 = vmulq_n_f32(v137, vmul_f32(*v138.f32, vrsqrts_f32(v139, vmul_f32(*v138.f32, *v138.f32))).f32[0]);
    v141 = vmulq_f32(*(v3 + 176), v140);
    v142 = -(v141.f32[2] + vaddv_f32(*v141.f32));
    v143 = v140;
    v143.f32[3] = v142;
    v144 = vmulq_f32(*(v3 + 32), v143);
    v145 = vaddv_f32(vadd_f32(*v144.i8, *&vextq_s8(v144, v144, 8uLL)));
    if (v145 == 0.0)
    {
      return 0;
    }

    v146 = vmulq_f32(v143, *(v3 + 16));
    v147 = -vaddv_f32(vadd_f32(*v146.i8, *&vextq_s8(v146, v146, 8uLL))) / v145;
    if (v147 < 0.0 || v147 > *(v3 + 60))
    {
      return 0;
    }

    v218 = v140;
    v230 = v147;
  }

  else
  {
    v224 = 0u;
    v225 = 0u;
    if ((C3DNodeGetLocalBoundingBox(v4, &v224) & 1) == 0)
    {
      return 0;
    }

    v104 = *(v3 + 128);
    v105 = *(v3 + 144);
    v106 = *(v3 + 160);
    v107 = vaddq_f32(*(v3 + 176), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v105, *&v224, 1), v104, *&v224), v106, v224, 2));
    v108 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL), vnegq_f32(v105)), v106, vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL));
    v109 = vmulq_f32(v104, vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL));
    _NF = (v109.f32[2] + vaddv_f32(*v109.f32)) < 0.0;
    v110 = 1.0;
    if (_NF)
    {
      v110 = -1.0;
    }

    v111 = vmulq_f32(v104, v104);
    v112 = vmulq_f32(v105, v105);
    v113 = vadd_f32(vzip1_s32(*v111.i8, *v112.i8), vzip2_s32(*v111.i8, *v112.i8));
    v114 = vextq_s8(v111, v111, 8uLL);
    *v114.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v114.f32, *&vextq_s8(v112, v112, 8uLL)), v113));
    v115 = vmulq_f32(v106, v106);
    v114.i32[2] = sqrtf(v115.f32[2] + vaddv_f32(*v115.f32));
    v116 = vmulq_n_f32(v114, v110);
    v117 = vmulq_f32(v225, v116);
    v232 = vdivq_f32(v104, vdupq_lane_s32(*v116.f32, 0));
    v233 = vdivq_f32(v105, vdupq_lane_s32(*v116.f32, 1));
    v234 = vdivq_f32(v106, vdupq_laneq_s32(v116, 2));
    v118 = vsubq_f32(v107, *(v3 + 16));
    v119 = vzip1q_s32(vzip1q_s32(v232, v234), v233);
    v120 = vtrn2q_s32(v232, v233);
    v120.i32[2] = v234.i32[1];
    v121 = vzip1q_s32(vzip2q_s32(v232, v234), vdupq_laneq_s32(v233, 2));
    v122 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v120, *v118.f32, 1), v119, v118.f32[0]), v121, v118, 2);
    v123 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v120, *(v3 + 32), 1), v119, COERCE_FLOAT(*(v3 + 32))), v121, *(v3 + 32), 2);
    v124 = vdivq_f32(vaddq_f32(v117, v122), v123);
    v124.i32[3] = 0;
    v125 = vdivq_f32(vsubq_f32(v122, v117), v123);
    v125.i32[3] = 0;
    v126 = vminnmq_f32(v124, v125);
    v127 = vmaxnmq_f32(v124, v125);
    if (v126.f32[0] < v126.f32[2])
    {
      v128 = v126.f32[2];
    }

    else
    {
      v128 = v126.f32[0];
    }

    if (v128 < v126.f32[1])
    {
      v128 = v126.f32[1];
    }

    v129 = v127.f32[2];
    if (v127.f32[0] <= v127.f32[2])
    {
      v129 = v127.f32[0];
    }

    v127.i32[0] = v127.i32[1];
    if (v129 <= v127.f32[1])
    {
      v127.f32[0] = v129;
    }

    if (v127.f32[0] < v128)
    {
      return 0;
    }

    _NF = v127.f32[0] >= v230 && v128 < *(v3 + 60);
    if (!_NF)
    {
      return 0;
    }

    LODWORD(v131) = 2 * (v126.f32[0] <= v126.f32[2]);
    if (v126.f32[1] > v126.f32[2])
    {
      v132 = 1;
    }

    else
    {
      v132 = 2;
    }

    if (v126.f32[0] <= v126.f32[1])
    {
      v131 = v132;
    }

    else
    {
      v131 = v131;
    }

    if (v128 >= v230)
    {
      v133 = v128;
    }

    else
    {
      v133 = v127.f32[0];
    }

    v230 = v133;
    v134 = *(&v232 + v131);
    v135 = (&v220 | (4 * v131));
    v220 = v123;
    v124.f32[0] = -*v135;
    v125.i32[0] = 1.0;
    v136.i64[0] = 0x8000000080000000;
    v136.i64[1] = 0x8000000080000000;
    v124.i32[0] = vbslq_s8(v136, v125, v124).u32[0];
    if (*v135 == 0.0)
    {
      v124.f32[0] = -0.0;
    }

    v218 = vmulq_n_f32(v134, v124.f32[0]);
  }

  v150 = C3DNodeGetGeometry(v4);
  if (!v150)
  {
    goto LABEL_157;
  }

  v151 = v150;
  Mesh = C3DGeometryGetMesh(v150);
  if (!Mesh)
  {
    goto LABEL_157;
  }

  v153 = Mesh;
  ElementsCount = C3DMeshGetElementsCount(Mesh);
  if (ElementsCount < 1)
  {
    goto LABEL_157;
  }

  v155 = ElementsCount;
  ElementAtIndex = C3DMeshGetElementAtIndex(v153, 0, 0);
  Type = C3DMeshElementGetType(ElementAtIndex);
  v158 = C3DMeshElementTypeDefinesSurface(Type);
  v159 = 0;
  if (!v158)
  {
    v160 = 1;
    do
    {
      v161 = v160;
      if (v155 == v160)
      {
        break;
      }

      v162 = C3DMeshGetElementAtIndex(v153, v160, 0);
      v163 = C3DMeshElementGetType(v162);
      v164 = C3DMeshElementTypeDefinesSurface(v163);
      v160 = v161 + 1;
    }

    while (!v164);
    v159 = v161 >= v155;
  }

  if (v159 || (*(v3 + 8) & 0x40) != 0 || (*(v4 + 221) & 0x10) != 0)
  {
LABEL_157:
    __AddWorldResult(v3, 0, 0, 0, 0, v230, vmlaq_n_f32(*(v3 + 16), *(v3 + 32), v230), v218);
    return 1;
  }

  MaterialsCount = C3DGeometryGetMaterialsCount(v151);
  PositionSource = C3DMeshGetPositionSource(v153, 0);
  if (!PositionSource)
  {
    return 0;
  }

  v167 = PositionSource;
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(v153, 0, 0);
  v228 = 0u;
  v229 = 0u;
  C3DMeshSourceGetContent(v167, &v228);
  if (!v228)
  {
    return 0;
  }

  v219 = v229;
  if (v229 <= 0xFFF)
  {
    v224 = v228;
    v225 = v229;
    C3DMeshSourceContentClassifyRay(&v224, &v231, *(v3 + 64), *(v3 + 80), *(v3 + 96), v169, v170);
    *(v3 + 320) = &v231;
  }

  v212 = BYTE7(v229);
  v171 = C3DMeshGetElementsCount(v153);
  if (v171 < 1)
  {
    return 0;
  }

  v172 = v171;
  v173 = 0;
  v149 = 1;
  v204 = MaterialsCount;
  v206 = ChannelForSourceWithSemanticAtIndex;
  while (1)
  {
    *(v3 + 192) = v173;
    v174 = C3DMeshGetElementAtIndex(v153, v173, 0);
    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    C3DMeshElementGetContent(v174, ChannelForSourceWithSemanticAtIndex, &v224);
    if (C3DMeshElementGetMTLBuffer(v174) || !C3DMeshElementTypeDefinesSurface(SBYTE2(v226)))
    {
      goto LABEL_155;
    }

    IsDoubleSided = 0;
    if ((*(v3 + 8) & 8) != 0)
    {
      CullMode = 0;
      if (MaterialsCount >= 1)
      {
        MaterialAtIndex = C3DGeometryGetMaterialAtIndex(v151, v173 % MaterialsCount);
        IsDoubleSided = C3DMaterialIsDoubleSided(MaterialAtIndex);
        v178 = MaterialAtIndex;
        ChannelForSourceWithSemanticAtIndex = v206;
        CullMode = C3DMaterialGetCullMode(v178);
      }
    }

    else
    {
      CullMode = 0;
    }

    v179 = v225;
    *(v3 + 232) = v224;
    *(v3 + 248) = v179;
    v180 = v227;
    *(v3 + 264) = v226;
    *(v3 + 280) = v180;
    v181 = v229;
    *(v3 + 200) = v228;
    v182 = v212 == 1;
    *(v3 + 296) = IsDoubleSided;
    *(v3 + 297) = CullMode == 1;
    v183 = BYTE2(v226);
    if (BYTE2(v226))
    {
      v182 = 0;
    }

    *(v3 + 216) = v181;
    if (BYTE3(v226) != 2)
    {
      v182 = 0;
    }

    if (CullMode)
    {
      v182 = 0;
    }

    if (v219 <= 0xFFF)
    {
      _ZF = v183 == 4;
      v184 = __ProcessTriangleRange_Mask;
      if (_ZF)
      {
        v184 = __ProcessPrimitiveRange_Mask;
      }

      if (v182)
      {
        v184 = __ProcessTriangleRange_Mask_Ind16VrtFloat3CullBack;
        if (((*(v3 + 8) & 8) == 0) | IsDoubleSided & 1)
        {
          v184 = __ProcessTriangleRange_Mask;
        }
      }

      (v184)(0, v225, v3);
      goto LABEL_155;
    }

    if (v183 == 4)
    {
      v185 = __ProcessPrimitiveRange_Generic;
    }

    else
    {
      v185 = __ProcessTriangleRange_Generic;
    }

    if (v182)
    {
      if (((*(v3 + 8) & 8) == 0) | IsDoubleSided & 1)
      {
        v185 = __ProcessTriangleRange_Generic;
      }

      else
      {
        v185 = __ProcessTriangleRange_Ind16VrtFloat3CullBack;
      }
    }

    if (v225 < 0x41)
    {
      v203 = (v185)(0);
      ChannelForSourceWithSemanticAtIndex = v206;
      if (v203)
      {
        return v149;
      }

      goto LABEL_155;
    }

    v223 = 0;
    v222[0] = v224;
    v222[1] = v225;
    v222[2] = v226;
    v222[3] = v227;
    v221[0] = v228;
    v221[1] = v229;
    PrimitiveGroupBoundingBoxes = C3DMeshElementGetPrimitiveGroupBoundingBoxes(v174, v222, v221, &v223);
    if (v223)
    {
      break;
    }

LABEL_153:
    MaterialsCount = v204;
    ChannelForSourceWithSemanticAtIndex = v206;
LABEL_155:
    v149 = ++v173 < v172;
    if (v173 == v172)
    {
      return v149;
    }
  }

  v187 = PrimitiveGroupBoundingBoxes;
  v188 = 0;
  v189 = v187 + 1;
  v190 = 32 * v223;
  while (1)
  {
    v191 = v189[-1];
    v192 = *(v3 + 64);
    v193 = *(v3 + 96);
    v194 = vmulq_f32(v193, vsubq_f32(vsubq_f32(v191, *v189), v192));
    v195 = vmulq_f32(v193, vsubq_f32(vaddq_f32(v191, *v189), v192));
    v194.i32[3] = 0;
    v195.i32[3] = 0;
    v196 = vminnmq_f32(v194, v195);
    v197 = vmaxnmq_f32(v194, v195);
    v194.i64[0] = vextq_s8(v196, v196, 8uLL).u64[0];
    v198 = vextq_s8(v197, v197, 8uLL).u64[0];
    *v194.f32 = vbsl_s8(vcge_f32(vzip1_s32(v198, *v196.i8), vzip1_s32(*v197.i8, *v194.f32)), vzip1_s32(*v197.i8, *v196.i8), vzip1_s32(v198, *v194.f32));
    v199 = __PAIR64__(v196.u32[1], v194.u32[0]);
    *v196.i8 = vzip2_s32(*v197.i8, *v196.i8);
    v197.i32[0] = vdup_lane_s32(*v197.i8, 1).u32[0];
    v197.i32[1] = v194.i32[1];
    v200 = vbsl_s8(vcge_f32(*v197.i8, v199), *v194.f32, *v196.i8);
    v201 = v188 + 32;
    v202 = *v200.i32 >= *&v200.i32[1] && *&v200.i32[1] < COERCE_FLOAT(HIDWORD(*(v3 + 96)));
    if (v202 && v185())
    {
      return v149;
    }

    v189 += 2;
    v188 = v201;
    if (v190 == v201)
    {
      goto LABEL_153;
    }
  }
}

uint64_t scn_rectangle_ray_intersection(uint64_t a1, float *a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  v5 = *(a1 + 16);
  v6 = vmulq_f32(v5, *a1);
  v7 = -(v6.f32[2] + vaddv_f32(*v6.f32));
  v8 = v5;
  v8.f32[3] = v7;
  v9 = vmulq_f32(a4, v8);
  v10 = vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)));
  if (v10 == 0.0)
  {
    return 0;
  }

  v11 = vmulq_f32(a3, v8);
  v12 = -vaddv_f32(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL))) / v10;
  if (v12 < 0.0 || v12 > a5.n128_f32[3])
  {
    return 0;
  }

  v14 = vmlaq_n_f32(a3, a4, v12);
  v15 = *(a1 + 32);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v5)), v15, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v17 = vsubq_f32(v14, *a1);
  v18 = vmulq_f32(v15, v17);
  v19 = vmulq_f32(v17, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v20 = vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v19.i8), vzip2_s32(*v18.i8, *v19.i8)));
  v21 = *(a1 + 48);
  v22 = vcgt_f32(vneg_f32(v21), v20);
  if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v23 = vcgt_f32(v20, v21);
  if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return 1;
}

uint64_t C3DSceneCreateHitTestResultsWithSegment(__n128 *a1, float32x4_t *a2, const __CFDictionary *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DSceneCreateHitTestResultsWithSegment_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
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
    C3DSceneCreateHitTestResultsWithSegment_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  memset(__src, 0, 448);
  C3DHitTestContextFillOptionsFromDictionary(__src, a3);
  C3DSceneGetUpAxis(a1, &__src[19]);
  *(&__src[20] + 1) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v22 = *a2;
  v23 = vsubq_f32(a2[1], *a2);
  if ((BYTE8(__src[0]) & 2) != 0)
  {
    v22.i32[3] = 1.0;
    v26 = vmulq_f32(v23, v23);
    v26.f32[0] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
    v25 = vdivq_f32(v23, vdupq_lane_s32(*v26.f32, 0));
  }

  else
  {
    v26 = vmulq_f32(v23, v23);
    *&v24 = v26.f32[2] + vaddv_f32(*v26.f32);
    *v26.f32 = vrsqrte_f32(v24);
    *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v24, vmul_f32(*v26.f32, *v26.f32)));
    v25 = vmulq_n_f32(v23, vmul_f32(*v26.f32, vrsqrts_f32(v24, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
    v22.i32[3] = 1.0;
    v26.i32[0] = 2139095040;
  }

  v27 = v25;
  v25.i32[3] = 0;
  __asm { FMOV            V4.4S, #1.0 }

  v33 = vdivq_f32(_Q4, v27);
  v33.i32[3] = v26.i32[0];
  __src[1] = v22;
  __src[2] = v25;
  __src[3] = v33;
  RootNode = C3DSceneGetRootNode(a1);
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"kHitTestRootNode");
  }

  else
  {
    Value = 0;
  }

  if (!Value)
  {
    Value = RootNode;
  }

  if ((BYTE8(__src[0]) & 1) != 0 && Value == RootNode)
  {
    v64.n128_u64[0] = 0;
    v62 = 0u;
    v63 = 0u;
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __C3DSceneCreateHitTestResultsWithSegment_block_invoke;
    v73[3] = &__block_descriptor_40_e23_v24__0_____C3DNode_8q16l;
    v73[4] = __src;
    C3DCullingSystemQueryMake(v73, &v62);
    *&v62 = *&__src[0];
    BYTE12(v63) = BYTE9(__src[0]) & 1;
    if ((BYTE8(__src[0]) & 0x20) != 0)
    {
      DWORD1(v63) |= 1u;
    }

    DWORD2(v63) = BYTE10(__src[0]);
    CullingSystem = C3DSceneGetCullingSystem(a1);
    C3DCullingSystemRayIntersect(CullingSystem);
  }

  else if (BYTE8(__src[0]))
  {
    *&v62 = MEMORY[0x277D85DD0];
    *(&v62 + 1) = 3221225472;
    *&v63 = ____ProcessHierarchy_block_invoke;
    *(&v63 + 1) = &__block_descriptor_40_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
    v64.n128_u64[0] = __src;
    C3DNodeApplyHierarchy(Value, &v62);
  }

  else
  {
    __ProcessNode(Value);
  }

  Count = CFArrayGetCount(*(&__src[20] + 1));
  v38 = WORD4(__src[0]);
  if ((BYTE8(__src[0]) & 4) != 0)
  {
    v39.length = Count;
    if (Count >= 2)
    {
      v39.location = 0;
      CFArraySortValues(*(&__src[20] + 1), v39, _C3DHitTestSortFunc, a2);
      v38 = WORD4(__src[0]);
    }
  }

  if ((v38 & 0x200) != 0 && *&__src[27])
  {
    v72 = 0uLL;
    C3DColor4Make(&v72, 1.0, 0.0, 0.0, 1.0);
    v71 = 0uLL;
    C3DColor4Make(&v71, 0.0, 1.0, 0.0, 1.0);
    v70[1] = 0;
    v70[0] = 0;
    C3DColor4Make(v70, 0.0, 0.0, 1.0, 1.0);
    C3DAuthoringEnvironmentBeginTimedRecord(*&__src[27], 5.0);
    v40 = CFArrayGetCount(*(&__src[20] + 1));
    if (v40 >= 1)
    {
      v41 = v40;
      for (i = 0; i != v41; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(&__src[20] + 1), i);
        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 1065353216;
        v44 = ValueAtIndex[1].i64[0];
        if (v44)
        {
          Geometry = C3DNodeGetGeometry(v44);
          if (Geometry)
          {
            Mesh = C3DGeometryGetMesh(Geometry);
            v47 = Mesh;
            if (Mesh)
            {
              ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
              PositionSource = C3DMeshGetPositionSource(v47, 0);
              if (PositionSource)
              {
                ElementAtIndex = C3DMeshGetElementAtIndex(v47, ValueAtIndex[2].i64[0], 0);
                if (ElementAtIndex)
                {
                  v64 = 0u;
                  v65 = 0u;
                  v62 = 0u;
                  v63 = 0u;
                  C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v62);
                  v61[0] = ValueAtIndex[2].i64[1];
                  v61[1] = 1;
                  *(&v63 + 1) = v61;
                  v64.n128_u16[0] = 1;
                  v55[0] = MEMORY[0x277D85DD0];
                  v55[1] = 3221225472;
                  v55[2] = __C3DSceneCreateHitTestResultsWithSegment_block_invoke_2;
                  v55[3] = &unk_2782FB760;
                  v59 = PositionSource;
                  v58 = &v66;
                  memcpy(v56, __src, sizeof(v56));
                  v60 = ValueAtIndex;
                  v57 = v72;
                  v54[0] = v62;
                  v54[1] = v63;
                  v54[2] = v64;
                  v54[3] = v65;
                  C3DIndicesContentEnumeratePrimitivesByEvaluatingPrimitiveRanges(v54, v55, v64);
                }
              }
            }
          }
        }

        v51 = ValueAtIndex[6];
        v51.i32[3] = *(v67 + 6);
        C3DAuthoringEnvironmentAppendDebugBoundingSphere(*&__src[27], ValueAtIndex[6].i64[0], v51.i64[1], 0, &v71);
        f32 = ValueAtIndex[7].f32;
        v76 = vld4q_f32(f32);
        v75 = __invert_f4(v76);
        v75.columns[1] = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v75.columns[1], *ValueAtIndex[5].f32, 1), v75.columns[0], COERCE_FLOAT(*&ValueAtIndex[5])), v75.columns[2], ValueAtIndex[5], 2);
        v75.columns[0] = vmulq_f32(v75.columns[1], v75.columns[1]);
        v75.columns[2].f32[0] = v75.columns[0].f32[2] + vaddv_f32(*v75.columns[0].f32);
        *v75.columns[0].f32 = vrsqrte_f32(v75.columns[2].u32[0]);
        *v75.columns[0].f32 = vmul_f32(*v75.columns[0].f32, vrsqrts_f32(v75.columns[2].u32[0], vmul_f32(*v75.columns[0].f32, *v75.columns[0].f32)));
        C3DAuthoringEnvironmentAppendDebugRay(*&__src[27], 0, v70, ValueAtIndex[6], vaddq_f32(ValueAtIndex[6], vmulq_n_f32(v75.columns[1], vmul_f32(*v75.columns[0].f32, vrsqrts_f32(v75.columns[2].u32[0], vmul_f32(*v75.columns[0].f32, *v75.columns[0].f32))).f32[0])));
        _Block_object_dispose(&v66, 8);
      }
    }

    C3DAuthoringEnvironmentEndTimedRecord(*&__src[27]);
  }

  return *(&__src[20] + 1);
}

uint64_t __C3DSceneCreateHitTestResultsWithSegment_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v5 = result;
    for (i = 0; i < a3; ++i)
    {
      result = __ProcessNode(*(a2 + 8 * i));
      if (result && (*(*(v5 + 32) + 8) & 0x80) != 0)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t _C3DHitTestSortFunc(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  WorldPosition = C3DHitTestResultGetWorldPosition(a1);
  v6 = C3DHitTestResultGetWorldPosition(a2);
  v7 = vsubq_f32(*WorldPosition, *a3);
  v8 = vmulq_f32(v7, v7);
  v9 = vsubq_f32(*v6, *a3);
  v10 = vmulq_f32(v9, v9);
  v11 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v10.i8), vzip2_s32(*v8.i8, *v10.i8)));
  if (v11.f32[0] < v11.f32[1])
  {
    return -1;
  }

  else
  {
    return v11.f32[0] > v11.f32[1];
  }
}

void __C3DSceneCreateHitTestResultsWithSegment_block_invoke_2(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  MEMORY[0x28223BE20](a1);
  v8 = &v26.f32[-4 * v7];
  if (v9)
  {
    v10 = 0uLL;
    v11 = v7;
    v12 = &v26 - v7;
    do
    {
      v26 = v10;
      v13 = *a3++;
      *v14.i64 = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 504), v13);
      v15 = v26;
      *v12++ = v14;
      v10 = vaddq_f32(v15, v14);
      --v11;
    }

    while (v11);
    v14.f32[0] = a4;
    v16 = vdivq_f32(v10, vdupq_lane_s32(*v14.f32, 0));
    v17 = 3.4028e38;
    v18 = v7;
    v19 = &v26 - v7;
    do
    {
      v20 = *v19++;
      v21 = vsubq_f32(v20, v16);
      v22 = vmulq_f32(v21, v21);
      v17 = fminf(v17, sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)));
      --v18;
    }

    while (v18);
    *(*(*(a1 + 496) + 8) + 24) = v17 * 0.5;
    do
    {
      v23 = v8[v18];
      v24 = v18 + 1;
      if (v7 - 1 == v18)
      {
        v25 = 0;
      }

      else
      {
        v25 = v18 + 1;
      }

      C3DAuthoringEnvironmentAppendDebugSegment(*(a1 + 464), *(a1 + 512) + 112, (a1 + 480), 0, v23, v8[v25]);
      v18 = v24;
    }

    while (v7 != v24);
  }

  else
  {
    *(*(*(a1 + 496) + 8) + 24) = 2130706431;
  }
}

uint64_t C3DSceneCreateHitTestResultsAtPoint(__n128 *a1, float32x4_t *a2, const __CFDictionary *a3, double a4, int8x16_t a5, __n128 a6)
{
  v59 = *MEMORY[0x277D85DE8];
  if (a1 || (v40 = a4, v41 = a5, v9 = scn_default_log(), v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT), a4 = v40, a5 = v41, !v10))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_13:
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetProjectionInfos_cold_1(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    return 0;
  }

  C3DSceneCreateHitTestResultsWithSegment_cold_1(v9, v11, v12, v13, v14, v15, v16, v17);
  a4 = v40;
  a5 = v41;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_4:
  __asm { FMOV            V3.4S, #1.0 }

  *&_Q3 = a4;
  a6.n128_f64[0] = a4;
  v44 = a6;
  v45 = _Q3;
  v23 = _C3DUnProjectPoints(&v44, 2, a2, a1, 0, v58, a5);
  v42 = v58[0];
  v43 = v58[1];
  if (v23)
  {
    if (!a3)
    {
      return C3DSceneCreateHitTestResultsWithSegment(a1, &v42, a3);
    }

    Value = CFDictionaryGetValue(a3, @"kHitTestClipToZRange");
    if (!Value || CFEqual(*MEMORY[0x277CBED28], Value))
    {
      return C3DSceneCreateHitTestResultsWithSegment(a1, &v42, a3);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (C3DNodeGetProjectionInfos(a2, &v44))
    {
      if (v44.n128_u8[0])
      {
        *(v58[0].n128_u64 + 4) = 0;
        v58[0].n128_u32[0] = 0;
        C3DNodeGetWorldPosition(a2, v58);
        v35 = vsubq_f32(v43, v42);
        v36 = vmulq_f32(v35, v35);
        *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
        *v36.f32 = vrsqrte_f32(v37);
        *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
        v38 = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
        v39 = vmulq_f32(vsubq_f32(v42, v58[0]), v38);
        v39.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
        v42 = vmlsq_lane_f32(v42, v38, *v39.f32, 0);
      }

      else
      {
        WorldMatrix = C3DNodeGetWorldMatrix(a2);
        C3DMatrix4x4GetTranslation(WorldMatrix, &v42);
      }

      return C3DSceneCreateHitTestResultsWithSegment(a1, &v42, a3);
    }
  }

  return 0;
}

uint64_t C3DHitTestResultCreateFromBulletResults(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v4 = C3DHitTestResultCreate();
  WorldMatrix = C3DNodeGetWorldMatrix(a1);
  v6 = WorldMatrix[3];
  v8 = *WorldMatrix;
  v7 = WorldMatrix[1];
  *(v4 + 144) = WorldMatrix[2];
  *(v4 + 160) = v6;
  *(v4 + 112) = v8;
  *(v4 + 128) = v7;
  memset(&v18, 0, sizeof(v18));
  C3DMatrix4x4Invert((v4 + 112), &v18);
  *(v4 + 96) = a2;
  v14 = v18.columns[0];
  v15 = v18.columns[1];
  v16 = v18.columns[2];
  v17 = v18.columns[3];
  *&v9 = C3DVector3MultMatrix4x4(&v14, a2);
  *(v4 + 64) = v9;
  C3DHitTestResultSetNode(v4, a1);
  v14 = v18.columns[0];
  v15 = v18.columns[1];
  v16 = v18.columns[2];
  v17 = v18.columns[3];
  *&v10 = C3DVector3Rotate(&v14, a3);
  *(v4 + 80) = v10;
  return v4;
}

uint64_t C3DIntersectionRay3Plane(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v6 = C3DSceneSourcePerformConsistencyCheck(a1);
  v7 = C3DRay3Vector(a1);
  _Q4 = *v7;
  _S3 = *(a2 + 8);
  __asm { FMLA            S0, S3, V4.S[2] }

  if (_S0 == 0.0)
  {
    return 0;
  }

  _Q4 = *v6;
  __asm { FMLA            S1, S3, V4.S[2] }

  v17 = -(*(a2 + 12) + _S1) / _S0;
  if (v17 < 0.0)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = vmlaq_n_f32(*v6, *v7, v17);
  }

  return 1;
}

BOOL C3DIntersectionLinePlane(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v6 = C3DSceneSourcePerformConsistencyCheck(a1);
  v7 = C3DRay3Vector(a1);
  _Q4 = *v7;
  _S3 = *(a2 + 8);
  __asm { FMLA            S0, S3, V4.S[2] }

  if (a3 && _S0 != 0.0)
  {
    _Q4 = *v6;
    __asm { FMLA            S1, S3, V4.S[2] }

    *a3 = vmlaq_n_f32(*v6, *v7, -(*(a2 + 12) + _S1) / _S0);
  }

  return _S0 != 0.0;
}

BOOL C3DIntersectionSegment3Plane(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  v13.i32[2] = 0;
  v13.i64[0] = 0;
  memset(v12, 0, sizeof(v12));
  C3DRay3MakeWithSegment(v12, a1);
  v6 = C3DIntersectionRay3Plane(v12, a2, &v13);
  result = 0;
  if (v6)
  {
    v8 = C3DSceneSourcePerformConsistencyCheck(a1);
    v9 = C3DRay3Vector(a1);
    v10 = vmulq_f32(vsubq_f32(v13, *v8), vsubq_f32(v13, *v9));
    v11 = vaddv_f32(*v10.f32);
    result = (v10.f32[2] + v11) <= 0.0;
    if (a3)
    {
      if ((v10.f32[2] + v11) <= 0.0)
      {
        *a3 = v13;
        return 1;
      }
    }
  }

  return result;
}

uint64_t __C3DListGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DListGetTypeID_typeID = result;
  return result;
}

uint64_t C3DListCreate()
{
  if (C3DListGetTypeID_onceToken != -1)
  {
    C3DListCreate_cold_1();
  }

  v1 = C3DListGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 40);
}

uint64_t C3DListRemoveAllObjects(void *a1)
{
  result = C3DListGetLastLinkableObject(a1);
  if (result)
  {
    v3 = result;
    do
    {
      C3DListRemoveLinkableObject(a1, v3);
      result = C3DListGetLastLinkableObject(a1);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t C3DListGetLastLinkableObject(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DListGetLastLinkableObject_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void C3DListRemoveLinkableObject(void *a1, void *cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DListGetLastLinkableObject_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(cf + 32))
  {
    v12 = cf[3];
    if (v12)
    {
      v13 = cf[2];
      *(v12 + 16) = v13;
      if (v13)
      {
LABEL_7:
        *(v13 + 24) = v12;
LABEL_16:
        *(cf + 32) = 0;
        --a1[6];
        CFRelease(cf);
        return;
      }

LABEL_12:
      if (a1[3] == cf)
      {
        a1[3] = v12;
      }

      else
      {
        v15 = scn_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          C3DListRemoveLinkableObject_cold_3(v15);
        }
      }

      goto LABEL_16;
    }

    if (a1[2] == cf)
    {
      v13 = cf[2];
      a1[2] = v13;
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      C3DListRemoveLinkableObject_cold_2(v14);
    }
  }
}

CFTypeRef C3DListAddLinkableObjectFirst(void *a1, CFTypeRef cf)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DListGetLastLinkableObject_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DGeometryTrackNode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = CFRetain(cf);
  v21 = a1[2];
  *(cf + 2) = v21;
  *(cf + 3) = 0;
  if (!v21)
  {
    v21 = a1;
  }

  v21[3] = cf;
  a1[2] = cf;
  v22 = a1[6] + 1;
  a1[5] = -1;
  a1[6] = v22;
  *(cf + 32) = 1;
  return result;
}

uint64_t C3DListMoveLinkableObjectFirst(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 16);
    *(v2 + 16) = v3;
    if (v3)
    {
      *(v3 + 24) = v2;
    }

    if (*(result + 24) == a2)
    {
      *(result + 24) = *(a2 + 24);
    }

    v4 = *(result + 16);
    *(a2 + 16) = v4;
    *(a2 + 24) = 0;
    if (v4)
    {
      *(v4 + 24) = a2;
    }

    *(result + 16) = a2;
  }

  return result;
}

uint64_t scn_default_log()
{
  if (scn_default_log_once != -1)
  {
    scn_default_log_cold_1();
  }

  return scn_default_log_logger;
}

void __scn_default_log_block_invoke()
{
  scn_default_log_logger = os_log_create("com.apple.scenekit", "SceneKit");
  if (C3DPreferencesGetBool(17))
  {
    v0 = scn_default_log_logger;
    if (os_log_type_enabled(scn_default_log_logger, OS_LOG_TYPE_DEBUG))
    {
      __scn_default_log_block_invoke_cold_1(v0);
    }
  }
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::FinalPass,decltype(nullptr)>(uint64_t a1)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 176, 16, 0);
  C3D::Pass::Pass(Aligned, a1, 0);
  *v3 = &unk_282DC2DF0;
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

uint64_t C3D::SSAOPassesCreateIfNeeded(C3D *this, C3D::RenderGraph *a2, C3D::DrawNodesPass *a3)
{
  v22 = a2;
  Aligned = C3DScratchAllocatorAllocateAligned(*(this + 2), 24, 8, 0);
  *(Aligned + 8) = 0;
  *(Aligned + 16) = 0;
  *Aligned = 0;
  v21 = Aligned;
  v6 = *(this + 1);
  PointOfView = C3DEngineContextGetPointOfView(v6);
  if (!PointOfView)
  {
    return 0;
  }

  Camera = C3DNodeGetCamera(PointOfView);
  if (!Camera)
  {
    return 0;
  }

  v9 = Camera;
  if (C3DCameraGetScreenSpaceAmbientOcclusionIntensity(Camera) <= 0.0)
  {
    return 0;
  }

  if (C3DCameraGetScreenSpaceAmbientOcclusionDownSample(v9) >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  *(Aligned + 8) = C3DCameraGetScreenSpaceAmbientOcclusionSampleCount(v9);
  *(Aligned + 12) = v10;
  *(Aligned + 16) = C3DCameraGetUsesOrthographicProjection(v9);
  *Aligned = a2;
  *(Aligned + 17) = C3DEngineContextGetPreferredRenderMode(v6) != 0;
  v11 = C3D::RenderGraph::createPass<C3D::SSAODepthNormalPass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(this, &v22, &v21);
  v12 = C3D::RenderGraph::createPass<C3D::GenerateMipmapPass,C3D::DrawNodesPass *&>(this, &v22);
  v13 = C3D::RenderGraph::createPass<C3D::SSAOMinMaxOffsetPass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(this, &v22, &v21);
  v14 = C3D::RenderGraph::createPass<C3D::SSAORaytracePass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(this, &v22, &v21);
  v20 = 0;
  v15 = C3D::RenderGraph::createPass<C3D::SSAOBlurPass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&,BOOL>(this, &v22, &v21, &v20);
  v16 = 1;
  v20 = 1;
  v17 = C3D::RenderGraph::createPass<C3D::SSAOBlurPass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&,BOOL>(this, &v22, &v21, &v20);
  v18 = C3D::RenderGraph::createPass<C3D::SSAOUpSamplePass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(this, &v22, &v21);
  C3D::Pass::addDependency(v12, v11);
  C3D::Pass::addDependency(v13, v11);
  C3D::Pass::addDependency(v14, v12);
  C3D::Pass::addDependency(v14, v13);
  C3D::Pass::addDependency(v15, v14);
  C3D::Pass::addDependency(v17, v15);
  C3D::Pass::addDependency(v18, v17);
  C3D::Pass::addDependency(v18, v11);
  C3D::Pass::addDependency(v22, v18);
  return v16;
}

C3D::DrawNodesPass *C3D::RenderGraph::createPass<C3D::SSAODepthNormalPass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5376, 16, 0);
  C3D::SSAODepthNormalPass::SSAODepthNormalPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::GenerateMipmapPass *C3D::RenderGraph::createPass<C3D::GenerateMipmapPass,C3D::DrawNodesPass *&>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 112, 8, 0);
  *&v6.var0 = 0;
  C3D::GenerateMipmapPass::GenerateMipmapPass(Aligned, a1, *a2, v6);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::SSAOMinMaxOffsetPass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::SSAOMinMaxOffsetPass::SSAOMinMaxOffsetPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::SSAORaytracePass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::SSAORaytracePass::SSAORaytracePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::SSAOBlurPass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&,BOOL>(uint64_t a1, C3D::Pass **a2, uint64_t *a3, char *a4)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::SSAOBlurPass::SSAOBlurPass(Aligned, a1, *a2, *a3, *a4);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::SSAOUpSamplePass,C3D::DrawNodesPass *&,C3D::SSAOPassData *&>(uint64_t a1, C3D::Pass **a2, uint64_t *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::SSAOUpSamplePass::SSAOUpSamplePass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

float C3DMatrix4x4MakeRotation(_OWORD *a1, float32x4_t *a2)
{
  v2 = *a2;
  v3 = *MEMORY[0x277D860B8];
  v4 = *(MEMORY[0x277D860B8] + 16);
  v5 = *(MEMORY[0x277D860B8] + 32);
  v6 = *(MEMORY[0x277D860B8] + 48);
  v7 = vmulq_f32(v2, v2);
  v8 = vaddq_f32(v7, v7);
  v9 = vmulq_laneq_f32(v2, v2, 3);
  v10 = vmuls_lane_f32(v2.f32[0], *v2.f32, 1);
  v11 = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(a2->i64[0])), *a2, 2);
  v2.f32[0] = vmuls_lane_f32(v2.f32[0], v2, 2);
  *&v3 = (1.0 - v8.f32[1]) - v8.f32[2];
  *(&v3 + 1) = (v10 + v9.f32[2]) + (v10 + v9.f32[2]);
  *(&v3 + 2) = (v2.f32[0] - v9.f32[1]) + (v2.f32[0] - v9.f32[1]);
  *&v4 = (v10 - v9.f32[2]) + (v10 - v9.f32[2]);
  v8.f32[0] = 1.0 - v8.f32[0];
  *(&v4 + 1) = v8.f32[0] - v8.f32[2];
  *(&v4 + 2) = (v11 + v9.f32[0]) + (v11 + v9.f32[0]);
  *&v5 = (v2.f32[0] + v9.f32[1]) + (v2.f32[0] + v9.f32[1]);
  *(&v5 + 1) = (v11 - v9.f32[0]) + (v11 - v9.f32[0]);
  result = v8.f32[0] - v8.f32[1];
  *(&v5 + 2) = v8.f32[0] - v8.f32[1];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double C3DMatrix4x4GetRotation(float32x4_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(v3)), v5, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
  v7 = vmulq_f32(*a1, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL));
  v8 = (v7.f32[2] + vaddv_f32(*v7.f32)) < 0.0;
  v9 = 1.0;
  if (v8)
  {
    v9 = -1.0;
  }

  v10 = vmulq_f32(v4, v4);
  v11 = vmulq_f32(v3, v3);
  v12 = vadd_f32(vzip1_s32(*v10.i8, *v11.i8), vzip2_s32(*v10.i8, *v11.i8));
  v13 = vextq_s8(v10, v10, 8uLL);
  *v13.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v13.f32, *&vextq_s8(v11, v11, 8uLL)), v12));
  v14 = vmulq_f32(v5, v5);
  v13.i32[2] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  v15 = vmulq_n_f32(v13, v9);
  v16 = vceqzq_f32(v15);
  v16.i32[3] = v16.i32[2];
  if ((vmaxvq_u32(v16) & 0x80000000) == 0)
  {
    v17 = vmvnq_s8(vorrq_s8(vcltzq_f32(v15), vcgezq_f32(v15)));
    v17.i32[3] = v17.i32[2];
    if ((vmaxvq_u32(v17) & 0x80000000) == 0)
    {
      v18 = vdivq_f32(v4, vdupq_lane_s32(*v15.f32, 0));
      v19 = vdivq_f32(v3, vdupq_lane_s32(*v15.f32, 1));
      v20 = vdivq_f32(v5, vdupq_laneq_s32(v15, 2));
      v21 = v20.f32[2] + (*v18.i32 + v19.f32[1]);
      if (v21 > 0.0)
      {
        *v20.f32 = vsub_f32(*&vzip2q_s32(v19, vuzp1q_s32(v19, v20)), *&vtrn2q_s32(v20, vzip2q_s32(v20, v18)));
        v20.f32[2] = *&v18.i32[1] - v19.f32[0];
        v22 = v21 + 1.0;
        v20.f32[3] = v21 + 1.0;
LABEL_17:
        v19.i32[0] = 0;
        v31 = vmulq_n_f32(v20, 0.5 / sqrtf(v22));
        v32 = vmvnq_s8(vceqq_f32(v31, v31));
        v32.i32[0] = vmaxvq_u32(v32);
        v23 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v19, v32), 0), *(MEMORY[0x277D860B8] + 48), v31);
        goto LABEL_18;
      }

      if (*v18.i32 <= v19.f32[1] || *v18.i32 <= v20.f32[2])
      {
        if (v19.f32[1] > v20.f32[2])
        {
          v25 = v19;
          v25.f32[1] = (v19.f32[1] + 1.0) - *v18.i32;
          v25.i32[3] = v20.i32[0];
          v26 = vzip2q_s32(vzip1q_s32(v18, v20), vtrn1q_s32(v20, v18));
          v19 = vaddq_f32(v19, v26);
          v27 = vsubq_f32(v25, v26);
          v20 = vtrn2q_s32(vrev64q_s32(v19), v27);
          v22 = *&v27.i32[1];
          goto LABEL_17;
        }

        *v20.f32 = vadd_f32(*v20.f32, *&vzip2q_s32(v18, v19));
        v22 = ((v20.f32[2] + 1.0) - *v18.i32) - v19.f32[1];
        v20.f32[2] = v22;
        v30 = *&v18.i32[1] - v19.f32[0];
      }

      else
      {
        v22 = ((*v18.i32 + 1.0) - v19.f32[1]) - v20.f32[2];
        *&v28 = v19.f32[0] + *&v18.i32[1];
        v29 = v20.f32[0] + *&v18.i32[2];
        v30 = v19.f32[2] - v20.f32[1];
        v20.i64[0] = __PAIR64__(v28, LODWORD(v22));
        v20.f32[2] = v29;
      }

      v20.f32[3] = v30;
      goto LABEL_17;
    }
  }

  v23 = *(MEMORY[0x277D860B8] + 48);
LABEL_18:
  v35 = v1;
  v36 = v2;
  v34 = 0uLL;
  C3DQuaternionMake(&v34, v23, v23.n128_f32[1], v23.n128_f32[2], v23.n128_f32[3]);
  return v34.n128_f64[0];
}

double C3DMatrix4x4Mult(uint64_t a1, float32x4_t *a2, _OWORD *a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v8;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  do
  {
    *(&v14 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v13[v3])), v5, *&v13[v3], 1), v6, v13[v3], 2), v7, v13[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  result = *&v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a3 = v14;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  return result;
}

float32x4_t C3DMatrix4x4MultFloat(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v3 = vmulq_n_f32(*a1, a3);
  v4 = vmulq_n_f32(a1[1], a3);
  v5 = vmulq_n_f32(a1[2], a3);
  result = vmulq_n_f32(a1[3], a3);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = result;
  return result;
}

float32x4_t C3DMatrix4x4Add(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  result = vaddq_f32(*a1, *a2);
  v4 = vaddq_f32(a1[1], a2[1]);
  v5 = vaddq_f32(a1[2], a2[2]);
  v6 = vaddq_f32(a1[3], a2[3]);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

float32x4_t C3DMatrix4x4Sub(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  result = vsubq_f32(*a1, *a2);
  v4 = vsubq_f32(a1[1], a2[1]);
  v5 = vsubq_f32(a1[2], a2[2]);
  v6 = vsubq_f32(a1[3], a2[3]);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

float C3DMatrix4x4Distance(float32x4_t *a1)
{
  v1 = vsubq_f32(*a1, *a1);
  v2 = vsubq_f32(a1[1], a1[1]);
  v3 = vsubq_f32(a1[2], a1[2]);
  v4 = vsubq_f32(a1[3], a1[3]);
  v5 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1, v1), v2, v2), v3, v3), v4, v4);
  return vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)));
}

__n128 C3DMatrix4x4Mult3x3(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  HIDWORD(v4) = 0;
  v11[2] = v4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  do
  {
    *(&v12 + v3 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v11[v3])), v6, *&v11[v3], 1), v7, v11[v3], 2);
    ++v3;
  }

  while (v3 != 3);
  result = v12;
  v8 = v13;
  v9 = v14;
  result.n128_u32[3] = *(a3 + 12);
  HIDWORD(v8) = *(a3 + 28);
  *a3 = result;
  *(a3 + 16) = v8;
  HIDWORD(v9) = *(a3 + 44);
  *(a3 + 32) = v9;
  return result;
}

double C3DMatrix4x4MakeZero(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 C3DMatrix4x4MakeTranslation(uint64_t a1, __n128 *a2)
{
  result = *a2;
  v2 = *(MEMORY[0x277D860B8] + 16);
  v3 = *(MEMORY[0x277D860B8] + 32);
  result.n128_u32[3] = *(MEMORY[0x277D860B8] + 60);
  *a1 = *MEMORY[0x277D860B8];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = result;
  return result;
}

float32x4_t C3DMatrix4x4Translate(float32x4_t *a1, float32x4_t *a2)
{
  result = vaddq_f32(*a2, a1[3]);
  result.i32[3] = HIDWORD(*&a1[3]);
  a1[3] = result;
  return result;
}

double C3DMatrix4x4MakeScale(_OWORD *a1, void *a2)
{
  *&v2 = 0;
  LODWORD(v3) = 0;
  HIDWORD(v3) = 0;
  *(&v3 + 4) = HIDWORD(*a2);
  *(&v2 + 1) = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  result = 0.0;
  a1[2] = v2;
  a1[3] = xmmword_21C27F610;
  return result;
}

float C3DMatrix4x4MakeRotationX(_OWORD *a1, float a2)
{
  v3 = __sincosf_stret(a2);
  v4 = *(MEMORY[0x277D860B8] + 16);
  DWORD1(v4) = LODWORD(v3.__cosval);
  v5 = *(MEMORY[0x277D860B8] + 32);
  v6 = *(MEMORY[0x277D860B8] + 48);
  DWORD2(v4) = LODWORD(v3.__sinval);
  result = -v3.__sinval;
  *(&v5 + 1) = -v3.__sinval;
  DWORD2(v5) = LODWORD(v3.__cosval);
  *a1 = *MEMORY[0x277D860B8];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void C3DMatrix4x4MakeRotationY(_OWORD *a1, float a2)
{
  v3 = __sincosf_stret(a2);
  v4 = *MEMORY[0x277D860B8];
  v5 = *(MEMORY[0x277D860B8] + 16);
  *&v4 = v3.__cosval;
  v6 = *(MEMORY[0x277D860B8] + 32);
  v7 = *(MEMORY[0x277D860B8] + 48);
  *(&v4 + 2) = -v3.__sinval;
  *&v6 = v3.__sinval;
  DWORD2(v6) = LODWORD(v3.__cosval);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
}

float C3DMatrix4x4MakeRotationZ(_OWORD *a1, float a2)
{
  v3 = __sincosf_stret(a2);
  v4 = *MEMORY[0x277D860B8];
  v5 = *(MEMORY[0x277D860B8] + 16);
  *&v4 = __PAIR64__(LODWORD(v3.__sinval), LODWORD(v3.__cosval));
  v6 = *(MEMORY[0x277D860B8] + 32);
  v7 = *(MEMORY[0x277D860B8] + 48);
  result = -v3.__sinval;
  *&v5 = __PAIR64__(LODWORD(v3.__cosval), -v3.__sinval);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

double C3DMatrix4x4MakeEulerRotation(float32x4_t *a1, _OWORD *a2)
{
  v25 = *a2;
  v3 = __sincosf_stret(COERCE_FLOAT(*a2));
  v26 = *(MEMORY[0x277D860B8] + 32);
  v20 = *(MEMORY[0x277D860B8] + 16);
  v21 = *(MEMORY[0x277D860B8] + 48);
  v4 = v20;
  v4.i32[1] = LODWORD(v3.__cosval);
  v4.i32[2] = LODWORD(v3.__sinval);
  v23 = v4;
  v24 = *MEMORY[0x277D860B8];
  v5 = v26;
  v5.f32[1] = -v3.__sinval;
  v5.i32[2] = LODWORD(v3.__cosval);
  v22 = v5;
  v6 = __sincosf_stret(*(&v25 + 1));
  v7 = v24;
  v7.i32[0] = LODWORD(v6.__cosval);
  v7.f32[2] = -v6.__sinval;
  v8 = v26;
  v8.i32[0] = LODWORD(v6.__sinval);
  v8.i32[2] = LODWORD(v6.__cosval);
  v18 = v8;
  v19 = v7;
  v9 = __sincosf_stret(*(&v25 + 2));
  v12.i64[1] = v24.i64[1];
  v10 = 0;
  v11.i64[1] = v20.i64[1];
  v27 = v24;
  v12.i32[0] = LODWORD(v9.__cosval);
  v28 = v23;
  v29 = v22;
  v30 = v21;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  do
  {
    *(&v31 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v27 + v10))), v20, *&v27.f32[v10 / 4], 1), v18, *(&v27 + v10), 2), v21, *(&v27 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v13 = 0;
  v12.i32[1] = LODWORD(v9.__sinval);
  v11.i32[1] = LODWORD(v9.__cosval);
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  do
  {
    v11.f32[0] = -v9.__sinval;
    *(&v31 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v27 + v13))), v11, *&v27.f32[v13 / 4], 1), v26, *(&v27 + v13), 2), v21, *(&v27 + v13), 3);
    v13 += 16;
  }

  while (v13 != 64);
  result = *v31.i64;
  v15 = v32;
  v16 = v33;
  v17 = v34;
  *a1 = v31;
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  return result;
}

__n128 C3DMatrix4x4MakeAffine(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x2_t *a4)
{
  v4 = *a3;
  v6 = *MEMORY[0x277D860B8];
  v5 = *(MEMORY[0x277D860B8] + 16);
  v7 = *(MEMORY[0x277D860B8] + 32);
  v8 = vmulq_f32(v4, v4);
  v9 = vaddq_f32(v8, v8);
  v10 = vmulq_laneq_f32(v4, v4, 3);
  v11 = vmuls_lane_f32(v4.f32[0], *v4.f32, 1);
  v12 = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(a3->i64[0])), *a3, 2);
  v4.f32[0] = vmuls_lane_f32(v4.f32[0], v4, 2);
  v6.f32[0] = (1.0 - v9.f32[1]) - v9.f32[2];
  v6.f32[1] = (v11 + v10.f32[2]) + (v11 + v10.f32[2]);
  v6.f32[2] = (v4.f32[0] - v10.f32[1]) + (v4.f32[0] - v10.f32[1]);
  v5.f32[0] = (v11 - v10.f32[2]) + (v11 - v10.f32[2]);
  v9.f32[0] = 1.0 - v9.f32[0];
  v5.f32[1] = v9.f32[0] - v9.f32[2];
  v5.f32[2] = (v12 + v10.f32[0]) + (v12 + v10.f32[0]);
  v7.f32[0] = (v4.f32[0] + v10.f32[1]) + (v4.f32[0] + v10.f32[1]);
  v13 = *a4->f32;
  v7.f32[1] = (v12 - v10.f32[0]) + (v12 - v10.f32[0]);
  v7.f32[2] = v9.f32[0] - v9.f32[1];
  result = vaddq_f32(*a2, *(MEMORY[0x277D860B8] + 48));
  result.n128_u32[3] = HIDWORD(*(MEMORY[0x277D860B8] + 48));
  v15 = vmulq_lane_f32(v5, *a4, 1);
  *a1 = vmulq_n_f32(v6, COERCE_FLOAT(*a4->f32));
  *(a1 + 16) = v15;
  *(a1 + 32) = vmulq_laneq_f32(v7, v13, 2);
  *(a1 + 48) = result;
  return result;
}

void C3DMatrix4x4ComputeNormalMatrix(__n128 *a1, _OWORD *a2)
{
  *&v3 = scn_matrix_compute_normal(a1->n128_f64[0], a1[1], a1[2]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t C3DMatrix4x4Project(float32x4_t *a1, float32x2_t *a2, float32x4_t *a3)
{
  v3 = vaddq_f32(a1[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a1, COERCE_FLOAT(*a2->f32)), a1[1], *a2, 1), a1[2], *a2->f32, 2));
  v4 = vzip2_s32(*&vextq_s8(v3, v3, 8uLL), 0);
  v5 = vrecpe_f32(v4);
  v6 = vmul_f32(v5, vrecps_f32(v4, v5));
  *a3 = vmulq_n_f32(v3, vmul_f32(v6, vrecps_f32(v4, v6)).f32[0]);
  return 1;
}

__n128 C3DMatrix4x4GetTranslation(__n128 *a1, __n128 *a2)
{
  result = a1[3];
  *a2 = result;
  return result;
}

__n128 C3DMatrix4x4SetTranslation(__n128 *a1, __n128 result)
{
  result.n128_u32[3] = a1[3].n128_u32[3];
  a1[3] = result;
  return result;
}

float32x4_t C3DMatrix4x4GetScale(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vnegq_f32(v2)), v3, vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL));
  v5 = vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), *a1);
  v6 = (v5.f32[2] + vaddv_f32(*v5.f32)) < 0.0;
  v7 = 1.0;
  if (v6)
  {
    v7 = -1.0;
  }

  v8 = vmulq_f32(*a1, *a1);
  v9 = vmulq_f32(v2, v2);
  v10 = vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8));
  v11 = vextq_s8(v8, v8, 8uLL);
  *v11.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v11.f32, *&vextq_s8(v9, v9, 8uLL)), v10));
  v12 = vmulq_f32(v3, v3);
  v11.i32[2] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  result = vmulq_n_f32(v11, v7);
  *a2 = result;
  return result;
}

float32x4_t C3DMatrix4x4ClearScale(float32x4_t *a1)
{
  v1 = a1[1];
  v2 = vmulq_f32(*a1, *a1);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v4 = vmulq_n_f32(*a1, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v4.i32[3] = HIDWORD(*a1);
  v5 = vmulq_f32(v1, v1);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v7 = vmulq_n_f32(v1, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v7.i32[3] = v1.i32[3];
  v8 = a1[2];
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *a1 = v4;
  a1[1] = v7;
  *v7.f32 = vrsqrte_f32(v10);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v10, vmul_f32(*v7.f32, *v7.f32)));
  result = vmulq_n_f32(v8, vmul_f32(*v7.f32, vrsqrts_f32(v10, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  result.i32[3] = v8.i32[3];
  a1[2] = result;
  return result;
}

float32x4_t C3DMatrix4x4Lerp(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  v4 = vmlaq_n_f32(vmulq_n_f32(*a2, a4), *a1, 1.0 - a4);
  v5 = vmlaq_n_f32(vmulq_n_f32(a2[1], a4), a1[1], 1.0 - a4);
  v6 = vmlaq_n_f32(vmulq_n_f32(a2[2], a4), a1[2], 1.0 - a4);
  result = vmlaq_n_f32(vmulq_n_f32(a2[3], a4), a1[3], 1.0 - a4);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = result;
  return result;
}

void C3DMatrix4x4Interpolate(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  *v4.i32 = a4;
  v6 = *a1;
  v7 = a1[1];
  _Q2 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), vnegq_f32(v7)), _Q2, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v13 = vmulq_f32(*a1, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  _NF = (v13.f32[2] + vaddv_f32(*v13.f32)) < 0.0;
  v15 = 1.0;
  if (_NF)
  {
    v15 = -1.0;
  }

  v16 = vmulq_f32(v6, v6);
  v17 = vmulq_f32(v7, v7);
  v18 = vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8));
  v19 = vextq_s8(v16, v16, 8uLL);
  *v19.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v19.f32, *&vextq_s8(v17, v17, 8uLL)), v18));
  v20 = vmulq_f32(_Q2, _Q2);
  v19.i32[2] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
  v21 = vmulq_n_f32(v19, v15);
  v22 = vcltzq_f32(v21);
  v23 = vmvnq_s8(vorrq_s8(v22, vcgezq_f32(v21)));
  v23.i32[3] = v23.i32[2];
  v23.i32[0] = vmaxvq_u32(v23);
  v22.i32[0] = -1;
  v24 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v23, v22), 0), v21, 0);
  v25 = vceqzq_f32(v24);
  v25.i32[3] = v25.i32[2];
  if ((vmaxvq_u32(v25) & 0x80000000) != 0)
  {
    v32 = 0;
    v33 = *(MEMORY[0x277D860B8] + 48);
    _Q19 = v33;
    v24 = 0uLL;
    goto LABEL_17;
  }

  v26 = v23.i32[0];
  v27 = vdivq_f32(v6, vdupq_lane_s32(*v24.f32, 0));
  v28 = vdivq_f32(v7, vdupq_lane_s32(*v24.f32, 1));
  v29 = vdivq_f32(_Q2, vdupq_laneq_s32(v24, 2));
  v30 = v29.f32[2] + (*v27.i32 + v28.f32[1]);
  if (v30 <= 0.0)
  {
    if (*v27.i32 <= v28.f32[1] || *v27.i32 <= v29.f32[2])
    {
      if (v28.f32[1] > v29.f32[2])
      {
        v36 = v28;
        v36.f32[1] = (v28.f32[1] + 1.0) - *v27.i32;
        v36.i32[3] = v29.i32[0];
        v37 = vzip2q_s32(vzip1q_s32(v27, v29), vtrn1q_s32(v29, v27));
        v38 = vaddq_f32(v28, v37);
        v39 = vsubq_f32(v36, v37);
        v29 = vtrn2q_s32(vrev64q_s32(v38), v39);
        v31 = *&v39.i32[1];
        goto LABEL_16;
      }

      *v29.f32 = vadd_f32(*v29.f32, *&vzip2q_s32(v27, v28));
      v31 = ((v29.f32[2] + 1.0) - *v27.i32) - v28.f32[1];
      v29.f32[2] = v31;
      v42 = *&v27.i32[1] - v28.f32[0];
    }

    else
    {
      v31 = ((*v27.i32 + 1.0) - v28.f32[1]) - v29.f32[2];
      *&v40 = v28.f32[0] + *&v27.i32[1];
      v41 = v29.f32[0] + *&v27.i32[2];
      v42 = v28.f32[2] - v29.f32[1];
      v29.i64[0] = __PAIR64__(v40, LODWORD(v31));
      v29.f32[2] = v41;
    }

    v29.f32[3] = v42;
    goto LABEL_16;
  }

  *v29.f32 = vsub_f32(*&vzip2q_s32(v28, vuzp1q_s32(v28, v29)), *&vtrn2q_s32(v29, vzip2q_s32(v29, v27)));
  v29.f32[2] = *&v27.i32[1] - v28.f32[0];
  v31 = v30 + 1.0;
  v29.f32[3] = v30 + 1.0;
LABEL_16:
  v43 = vmulq_n_f32(v29, 0.5 / sqrtf(v31));
  v44 = vmvnq_s8(vceqq_f32(v43, v43));
  v44.i32[0] = vmaxvq_u32(v44);
  v29.i32[0] = -1;
  v33 = *(MEMORY[0x277D860B8] + 48);
  _Q19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v44, v29), 0), v43, v33);
  v32 = (v44.i32[0] | v26) >= 0;
LABEL_17:
  v45 = a1[3];
  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v9)), v11, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v47 = vmulq_f32(v10, vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
  _NF = (v47.f32[2] + vaddv_f32(*v47.f32)) < 0.0;
  v48 = 1.0;
  if (_NF)
  {
    v48 = -1.0;
  }

  v49 = vmulq_f32(v10, v10);
  v50 = vmulq_f32(v9, v9);
  v51 = vadd_f32(vzip1_s32(*v49.i8, *v50.i8), vzip2_s32(*v49.i8, *v50.i8));
  v52 = vextq_s8(v49, v49, 8uLL);
  *v52.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v52.f32, *&vextq_s8(v50, v50, 8uLL)), v51));
  v53 = vmulq_f32(v11, v11);
  v52.i32[2] = sqrtf(v53.f32[2] + vaddv_f32(*v53.f32));
  v54 = vmulq_n_f32(v52, v48);
  v55 = vcltzq_f32(v54);
  v56 = vmvnq_s8(vorrq_s8(v55, vcgezq_f32(v54)));
  v56.i32[3] = v56.i32[2];
  v56.i32[0] = vmaxvq_u32(v56);
  v55.i32[0] = -1;
  v57 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v56, v55), 0), v54, 0);
  v58 = vceqzq_f32(v57);
  v58.i32[3] = v58.i32[2];
  if ((vmaxvq_u32(v58) & 0x80000000) == 0)
  {
    v59 = v56.i32[0];
    v60 = vdivq_f32(v10, vdupq_lane_s32(*v57.f32, 0));
    v61 = vdivq_f32(v9, vdupq_lane_s32(*v57.f32, 1));
    v62 = vdivq_f32(v11, vdupq_laneq_s32(v57, 2));
    v63 = v62.f32[2] + (*v60.i32 + v61.f32[1]);
    if (v63 > 0.0)
    {
      *v62.f32 = vsub_f32(*&vzip2q_s32(v61, vuzp1q_s32(v61, v62)), *&vtrn2q_s32(v62, vzip2q_s32(v62, v60)));
      v62.f32[2] = *&v60.i32[1] - v61.f32[0];
      v64 = v63 + 1.0;
      v62.f32[3] = v63 + 1.0;
LABEL_31:
      _NF = v59 < 0;
      v72 = vmulq_n_f32(v62, 0.5 / sqrtf(v64));
      v73 = vmaxvq_u32(vmvnq_s8(vceqq_f32(v72, v72)));
      if (_NF)
      {
        v32 = 0;
      }

      if ((v73 & 0x80000000) == 0 && v32)
      {
        v74 = vdupq_lane_s32(v4, 0);
        v75 = vsubq_f32(a2[3], v45);
        _Q0 = vmulq_f32(_Q19, v72);
        _S1 = v72.i32[2];
        __asm { FMLA            S0, S1, V19.S[2] }

        _Q2.i32[0] = v72.i32[3];
        v80 = -(_Q0.f32[0] + (_Q19.f32[3] * v72.f32[3]));
        __asm { FMLA            S0, S2, V19.S[3] }

        _Q2.i64[0] = 0;
        v82 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q2, _Q0), 0), vnegq_f32(v72), v72);
        if (_Q0.f32[0] < 0.0)
        {
          _Q0.f32[0] = v80;
        }

        if (1.0 - _Q0.f32[0] <= 0.00100000005)
        {
          v86 = 1.0 - *v4.i32;
          v87 = *v4.i32;
        }

        else
        {
          v106 = v24;
          v107 = *v4.i32;
          v105 = a1[3];
          v103 = _Q19;
          v104 = v33;
          v101 = v75;
          v102 = v57;
          v99 = v82;
          v100 = v74;
          v83 = acosf(_Q0.f32[0]);
          v84 = sinf(v83);
          v98 = sinf((1.0 - v107) * v83) / v84;
          v85 = sinf(v83 * v107);
          v86 = v98;
          v82 = v99;
          v74 = v100;
          v75 = v101;
          v57 = v102;
          _Q19 = v103;
          v33 = v104;
          v45 = v105;
          v24 = v106;
          *v4.i32 = v107;
          v87 = v85 / v84;
        }

        v88 = vmlaq_n_f32(vmulq_n_f32(v82, v87), _Q19, v86);
        v89 = vmlaq_f32(v24, vsubq_f32(v57, v24), v74);
        v90 = *MEMORY[0x277D860B8];
        v91 = *(MEMORY[0x277D860B8] + 16);
        v92 = *(MEMORY[0x277D860B8] + 32);
        v93 = vmulq_f32(v88, v88);
        v94 = vaddq_f32(v93, v93);
        v95 = vmulq_laneq_f32(v88, v88, 3);
        v96 = vmuls_lane_f32(v88.f32[0], *v88.f32, 1);
        v90.f32[0] = (1.0 - v94.f32[1]) - v94.f32[2];
        v97 = vmuls_lane_f32(v88.f32[1], v88, 2);
        v90.f32[1] = (v96 + v95.f32[2]) + (v96 + v95.f32[2]);
        v88.f32[0] = vmuls_lane_f32(v88.f32[0], v88, 2);
        v90.f32[2] = (v88.f32[0] - v95.f32[1]) + (v88.f32[0] - v95.f32[1]);
        v91.f32[0] = (v96 - v95.f32[2]) + (v96 - v95.f32[2]);
        v94.f32[0] = 1.0 - v94.f32[0];
        v91.f32[1] = v94.f32[0] - v94.f32[2];
        v91.f32[2] = (v97 + v95.f32[0]) + (v97 + v95.f32[0]);
        v92.f32[0] = (v88.f32[0] + v95.f32[1]) + (v88.f32[0] + v95.f32[1]);
        v92.f32[1] = (v97 - v95.f32[0]) + (v97 - v95.f32[0]);
        v92.f32[2] = v94.f32[0] - v94.f32[1];
        v6 = vmulq_n_f32(v90, v89.f32[0]);
        v7 = vmulq_lane_f32(v91, *v89.f32, 1);
        _Q2 = vmulq_laneq_f32(v92, v89, 2);
        v45 = vaddq_f32(vmlaq_n_f32(v45, v75, *v4.i32), v33);
        v45.i32[3] = v33.i32[3];
      }

      goto LABEL_41;
    }

    if (*v60.i32 <= v61.f32[1] || *v60.i32 <= v62.f32[2])
    {
      if (v61.f32[1] > v62.f32[2])
      {
        v66 = v61;
        v66.f32[1] = (v61.f32[1] + 1.0) - *v60.i32;
        v66.i32[3] = v62.i32[0];
        v67 = vzip2q_s32(vzip1q_s32(v60, v62), vtrn1q_s32(v62, v60));
        v68 = vsubq_f32(v66, v67);
        v62 = vtrn2q_s32(vrev64q_s32(vaddq_f32(v61, v67)), v68);
        v64 = *&v68.i32[1];
        goto LABEL_31;
      }

      *v62.f32 = vadd_f32(*v62.f32, *&vzip2q_s32(v60, v61));
      v64 = ((v62.f32[2] + 1.0) - *v60.i32) - v61.f32[1];
      v62.f32[2] = v64;
      v71 = *&v60.i32[1] - v61.f32[0];
    }

    else
    {
      v64 = ((*v60.i32 + 1.0) - v61.f32[1]) - v62.f32[2];
      *&v69 = v61.f32[0] + *&v60.i32[1];
      v70 = v62.f32[0] + *&v60.i32[2];
      v71 = v61.f32[2] - v62.f32[1];
      v62.i64[0] = __PAIR64__(v69, LODWORD(v64));
      v62.f32[2] = v70;
    }

    v62.f32[3] = v71;
    goto LABEL_31;
  }

LABEL_41:
  *a3 = v6;
  a3[1] = v7;
  a3[2] = _Q2;
  a3[3] = v45;
}

BOOL C3DMatrix4x4GetAffineTransforms(uint64_t a1, _OWORD *a2, int8x16_t *a3, float32x4_t *a4)
{
  v5 = *a1;
  v4 = *(a1 + 16);
  v7 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vnegq_f32(v4)), v7, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v9 = vmulq_f32(*a1, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  v10 = (v9.f32[2] + vaddv_f32(*v9.f32)) < 0.0;
  v11 = 1.0;
  if (v10)
  {
    v11 = -1.0;
  }

  v12 = vmulq_f32(v5, v5);
  v13 = vmulq_f32(v4, v4);
  v14 = vadd_f32(vzip1_s32(*v12.i8, *v13.i8), vzip2_s32(*v12.i8, *v13.i8));
  v15 = vextq_s8(v12, v12, 8uLL);
  *v15.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v15.f32, *&vextq_s8(v13, v13, 8uLL)), v14));
  v16 = vmulq_f32(v7, v7);
  v15.i32[2] = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
  v17 = vmulq_n_f32(v15, v11);
  v18 = vcltzq_f32(v17);
  v19 = vmvnq_s8(vorrq_s8(v18, vcgezq_f32(v17)));
  v19.i32[3] = v19.i32[2];
  v19.i32[0] = vmaxvq_u32(v19);
  v18.i32[0] = -1;
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v19, v18), 0), v17, 0);
  if (a4)
  {
    *a4 = v20;
  }

  v21 = vceqzq_f32(v20);
  v21.i32[3] = v21.i32[2];
  if ((vmaxvq_u32(v21) & 0x80000000) == 0)
  {
    v22 = v19.i32[0];
    v23 = vdivq_f32(v5, vdupq_lane_s32(*v20.f32, 0));
    v24 = vdivq_f32(v4, vdupq_lane_s32(*v20.f32, 1));
    v25 = vdivq_f32(v7, vdupq_laneq_s32(v20, 2));
    v26 = v25.f32[2] + (*v23.i32 + v24.f32[1]);
    if (v26 > 0.0)
    {
      *v25.f32 = vsub_f32(*&vzip2q_s32(v24, vuzp1q_s32(v24, v25)), *&vtrn2q_s32(v25, vzip2q_s32(v25, v23)));
      v25.f32[2] = *&v23.i32[1] - v24.f32[0];
      v27 = v26 + 1.0;
      v25.f32[3] = v26 + 1.0;
LABEL_19:
      v36 = vmulq_n_f32(v25, 0.5 / sqrtf(v27));
      v37 = vmvnq_s8(vceqq_f32(v36, v36));
      v37.i32[0] = vmaxvq_u32(v37);
      v23.i32[0] = -1;
      v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v37, v23), 0), v36, *(MEMORY[0x277D860B8] + 48));
      result = (v37.i32[0] | v22) >= 0;
      goto LABEL_20;
    }

    if (*v23.i32 <= v24.f32[1] || *v23.i32 <= v25.f32[2])
    {
      if (v24.f32[1] > v25.f32[2])
      {
        v31 = v24;
        v31.f32[1] = (v24.f32[1] + 1.0) - *v23.i32;
        v31.i32[3] = v25.i32[0];
        v32 = vzip2q_s32(vzip1q_s32(v23, v25), vtrn1q_s32(v25, v23));
        v23 = vsubq_f32(v31, v32);
        v25 = vtrn2q_s32(vrev64q_s32(vaddq_f32(v24, v32)), v23);
        v27 = *&v23.i32[1];
        goto LABEL_19;
      }

      *v25.f32 = vadd_f32(*v25.f32, *&vzip2q_s32(v23, v24));
      v27 = ((v25.f32[2] + 1.0) - *v23.i32) - v24.f32[1];
      v25.f32[2] = v27;
      v35 = *&v23.i32[1] - v24.f32[0];
    }

    else
    {
      v27 = ((*v23.i32 + 1.0) - v24.f32[1]) - v25.f32[2];
      *&v33 = v24.f32[0] + *&v23.i32[1];
      v34 = v25.f32[0] + *&v23.i32[2];
      v35 = v24.f32[2] - v25.f32[1];
      v25.i64[0] = __PAIR64__(v33, LODWORD(v27));
      v25.f32[2] = v34;
    }

    v25.f32[3] = v35;
    goto LABEL_19;
  }

  v28 = *(MEMORY[0x277D860B8] + 48);
  result = 0;
  if (a4)
  {
    *a4 = 0u;
  }

LABEL_20:
  if (a2)
  {
    *a2 = v6;
  }

  if (a3)
  {
    *a3 = v28;
  }

  return result;
}

void C3DMatrix4x4MakeAxisAngleRotation(float32x4_t *a1, float32x4_t *a2, double a3)
{
  v4 = *a2;
  v6 = *MEMORY[0x277D860B8];
  v5 = *(MEMORY[0x277D860B8] + 16);
  v8 = *(MEMORY[0x277D860B8] + 32);
  v7 = *(MEMORY[0x277D860B8] + 48);
  v9 = vmulq_f32(v4, v4);
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  if (v10 != 0.0)
  {
    v11 = a3;
    v12 = v10;
    v13 = vrsqrte_f32(LODWORD(v10));
    v28 = *(MEMORY[0x277D860B8] + 48);
    v14 = vmul_f32(v13, vrsqrts_f32(LODWORD(v12), vmul_f32(v13, v13)));
    v24 = vmulq_n_f32(v4, vmul_f32(v14, vrsqrts_f32(LODWORD(v12), vmul_f32(v14, v14))).f32[0]);
    v25 = *MEMORY[0x277D860B8];
    v26 = *(MEMORY[0x277D860B8] + 16);
    v27 = *(MEMORY[0x277D860B8] + 32);
    v16 = __sincosf_stret(v11);
    *v15.i32 = v16.__cosval;
    v17 = vmulq_n_f32(v24, 1.0 - v16.__cosval);
    v18 = vmulq_f32(vzip1q_s32(v24, v24), vzip2q_s32(vextq_s8(v17, v17, 0xCuLL), v17));
    v7 = v28;
    v19 = vmlaq_f32(vdupq_lane_s32(v15, 0), v17, v24);
    v20 = vrev64q_s32(vmulq_n_f32(v24, v16.__sinval));
    v21 = vextq_s8(v20, v20, 0xCuLL);
    v22 = vsubq_f32(v18, v21);
    v23 = vaddq_f32(v21, v18);
    v18.i64[0] = __PAIR64__(v19.u32[1], v23.u32[0]);
    v8.i64[0] = __PAIR64__(v23.u32[2], v22.u32[1]);
    v8.i64[1] = __PAIR64__(HIDWORD(v27), v19.u32[2]);
    v19.i32[1] = v22.i32[0];
    v19.i64[1] = __PAIR64__(HIDWORD(v25), v23.u32[1]);
    v18.i64[1] = __PAIR64__(HIDWORD(v26), v22.u32[2]);
    v6 = v19;
    v5 = v18;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v7;
}

uint64_t C3DMatrix4x4CopyPropertyList(uint64_t result)
{
  if (result)
  {
    return C3DCreatePropertyListFromC3DFloatBuffer(result, 16);
  }

  return result;
}

uint64_t C3DMatrix4x4InitWithPropertyList(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return C3DInitC3DFloatArrayWithPropertyList(a2, result, a4);
  }

  return result;
}

int32x4_t C3DMatrix4x4MakeLookAt(int32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = vsubq_f32(*a3, *a2);
  v5 = vmulq_f32(v4, v4);
  v6 = vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v5.f32[2] + v6));
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v5.f32[2] + v6), vmul_f32(*v5.f32, *v5.f32)));
  v7 = vmulq_n_f32(v4, vmul_f32(*v5.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v5.f32[2] + v6), vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v8 = vmulq_f32(*a4, *a4);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(*a4, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v11 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v7)), v10, v11);
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v17 = vmlaq_f32(vmulq_f32(v11, vnegq_f32(v16)), v7, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmulq_f32(*a2, v16);
  v20 = vmulq_f32(*a2, v7);
  v7.f32[3] = -(v20.f32[2] + vaddv_f32(*v20.f32));
  v21 = vnegq_f32(v7);
  v22 = vzip1q_s32(v16, v21);
  v16.f32[3] = -(v19.f32[2] + vaddv_f32(*v19.f32));
  v23 = vmulq_f32(*a2, v18);
  v24 = *(MEMORY[0x277D860B8] + 48);
  v25 = vzip1q_s32(v18, v24);
  v18.f32[3] = -(v23.f32[2] + vaddv_f32(*v23.f32));
  v26 = vzip2q_s32(v16, v21);
  v27 = vzip2q_s32(v18, v24);
  v28 = vzip1q_s32(v26, v27);
  *a1 = vzip1q_s32(v22, v25);
  a1[1] = vzip2q_s32(v22, v25);
  result = vzip2q_s32(v26, v27);
  a1[2] = v28;
  a1[3] = result;
  return result;
}

float C3DMatrix4x4Determinant3x3(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = vmulq_f32(*a1, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v2, v2, 0xCuLL), v2, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v1, v1), v1, 0xCuLL))), vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL), vextq_s8(vextq_s8(v1, v1, 0xCuLL), v1, 8uLL)));
  return v3.f32[2] + vaddv_f32(*v3.f32);
}

float32x4_t C3DMatrix4x4Scale(float32x4_t *a1, float32x2_t *a2)
{
  v2 = vmulq_lane_f32(a1[1], *a2, 1);
  result = vmulq_laneq_f32(a1[2], *a2->f32, 2);
  *a1 = vmulq_n_f32(*a1, COERCE_FLOAT(*a2->f32));
  a1[1] = v2;
  a1[2] = result;
  return result;
}

_DWORD *C3DDelaunayTriangulationForSimplePlanarPolygon(uint64_t a1, unsigned int *a2, unsigned int a3, int *a4)
{
  v5 = a3 - 2;
  if (a3 <= 2)
  {
    v6 = 0;
    *a4 = 0;
    return v6;
  }

  if (a3 == 4)
  {
    v6 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
    *v6 = *a2;
    v6[1] = a2[1];
    v6[2] = a2[2];
    v6[3] = *a2;
    v6[4] = a2[2];
    v6[5] = a2[3];
    v9 = 6;
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v6 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
    *v6 = *a2;
    v6[1] = a2[1];
    v6[2] = a2[2];
    v9 = 3;
LABEL_7:
    *a4 = v9;
    return v6;
  }

  *v12.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1, *a2);
  v65 = v12;
  *v13.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1, a2[1]);
  v14 = 0;
  v15 = 0;
  v16 = vsubq_f32(v13, v65);
  v17 = vmulq_f32(v16, v16);
  *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  *v17.f32 = vrsqrte_f32(v18);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
  v19 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
  v62 = vnegq_f32(v19);
  v63 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  v60 = v19;
  v61 = 0u;
  v20 = 2;
  do
  {
    *v21.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1, a2[v20]);
    v22 = vsubq_f32(v21, v65);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v62), v22, v63);
    v24 = vmulq_f32(v23, v23);
    if ((v24.f32[1] + (v24.f32[2] + v24.f32[0])) != 0.0)
    {
      v25 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
      v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v62), v25, v63);
      v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
      v28 = vmulq_f32(v26, v26);
      *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
      *v28.f32 = vrsqrte_f32(v29);
      *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
      v30 = vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
      if (v15)
      {
        v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), vnegq_f32(v61)), v30, vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL));
        v32 = vmulq_f32(v31, v31);
        v15 = 1;
        if ((v32.f32[1] + (v32.f32[2] + v32.f32[0])) > 0.00001)
        {
          break;
        }
      }

      else
      {
        v15 = 1;
        v61 = v30;
      }
    }

    v14 = ++v20 >= a3;
  }

  while (a3 != v20);
  if (v14 && (v15 & 1) != 0)
  {
    v33 = malloc_type_malloc(80 * a3, 0x1000040392EC4B1uLL);
    v34 = 0;
    v35 = 0;
    v36 = 0.0;
    v64 = *MEMORY[0x277CBF348];
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    do
    {
      *v40.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1, a2[v35]);
      v41 = vsubq_f32(v40, v65);
      v42 = vmulq_f32(v60, v41);
      v43 = vmulq_f32(v61, v41);
      v44 = a2[v35];
      v45 = vcvtq_f64_f32(vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v43.i8), vzip2_s32(*v42.i8, *v43.i8))));
      v46 = &v33[v34];
      *v46 = v45;
      *(v46 + 1) = v64;
      *(v46 + 2) = v64;
      *(v46 + 3) = v64;
      *(v46 + 8) = 0;
      v46[72] = 0;
      *(v46 + 19) = v44;
      if (v35)
      {
        v39 = fmin(v39, v45.f64[0]);
        v45.f64[0] = fmax(v38, v45.f64[0]);
        v36 = fmax(v36, v45.f64[1]);
        v45.f64[1] = fmin(v37, v45.f64[1]);
      }

      else
      {
        v36 = v45.f64[1];
        v39 = v45.f64[0];
      }

      ++v35;
      v37 = v45.f64[1];
      v34 += 80;
      v38 = v45.f64[0];
    }

    while (a3 != v35);
    v78 = 0;
    v72 = v33;
    v73 = a3;
    v74 = a3;
    v75 = v39 + -1.0;
    v76 = vaddq_f64(v45, xmmword_21C27FA10);
    v77 = v36 + 1.0;
    Orientation = C3DShapeBoundaryGetOrientation(&v72);
    if (Orientation != 2)
    {
      C3DShapeBoundaryReverse(&v72);
    }

    v71 = 0;
    v66 = &v72;
    v67 = 1;
    v69 = 0;
    v68 = 0;
    v70 = 0;
    v48 = C3DShapeConnectedComponentTriangulate(&v66, &v71);
    v49 = malloc_type_malloc(12 * v71, 0x100004052888210uLL);
    v6 = v49;
    if (v71)
    {
      v50 = 0;
      v51 = 16;
      if (Orientation == 2)
      {
        v52 = 8;
      }

      else
      {
        v52 = 16;
      }

      if (Orientation != 2)
      {
        v51 = 8;
      }

      v53 = 2;
      v54 = v48;
      do
      {
        v49[v53 - 2] = *(*v54 + 76);
        v49[v53 - 1] = *(*&v54[v52] + 76);
        v49[v53] = *(*&v54[v51] + 76);
        ++v50;
        v53 += 3;
        v54 += 56;
      }

      while (v50 < v71);
    }

    else if (!v48)
    {
LABEL_39:
      free(v33);
      *a4 = v48;
      return v6;
    }

    free(v48);
    LODWORD(v48) = 3 * v71;
    goto LABEL_39;
  }

  v55 = 3 * v5;
  v56 = malloc_type_malloc(4 * (3 * v5), 0x100004052888210uLL);
  v6 = v56;
  v57 = (a2 + 2);
  v58 = 2;
  do
  {
    v56[v58 - 2] = *a2;
    v56[v58 - 1] = *(v57 - 1);
    v59 = *v57++;
    v56[v58] = v59;
    v58 += 3;
    --v5;
  }

  while (v5);
  *a4 = v55;
  return v6;
}

void *SCNMTLComputeCommandEncoder::setBytes(SCNMTLComputeCommandEncoder *this, const void *a2, size_t a3, unint64_t a4)
{
  bufferPool = this->_bufferPool;
  if (!bufferPool)
  {
    result = [(MTLComputeCommandEncoder *)this->_encoder setBytes:a2 length:a3 atIndex:a4];
    v11 = &this->_buffers[a4];
    *v11 = 0;
    v11[31] = 0;
    return result;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  result = SCNMTLBufferPool::allocateAndCopy(bufferPool, a2, a3, &v14);
  v8 = v16;
  if (this->_buffers[a4] == v15)
  {
    v12 = &this->_buffers[a4];
    v13 = v12[31];
    v10 = v12 + 31;
    if (v13 == v16)
    {
      return result;
    }
  }

  else
  {
    v9 = &this->_buffers[a4];
    *v9 = v15;
    v10 = v9 + 31;
  }

  *v10 = v8;
  this->_buffersToBind[a4 >> 6] |= 1 << a4;
  return result;
}

uint64_t SCNMTLComputeCommandEncoder::dispatch(SCNMTLComputeCommandEncoder *this, MTLComputePipelineState *a2, MTLSize *a3, MTLSize *a4)
{
  if (this->_computePipelineState != a2)
  {
    this->_computePipelineState = a2;
    [(MTLComputeCommandEncoder *)this->_encoder setComputePipelineState:a2];
  }

  v9 = *a3;
  v8 = *a4;
  return SCNMTLComputeCommandEncoder::dispatch(this, &v9, &v8);
}

uint64_t SCNMTLComputeCommandEncoder::endEncoding(SCNMTLComputeCommandEncoder *this)
{
  p_encoder = &this->_encoder;
  if (!this->_encoder)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::endEncoding(v2, v3, v4);
    }
  }

  result = [(MTLComputeCommandEncoder *)*p_encoder endEncoding];
  *p_encoder = 0;
  p_encoder[1] = 0;
  return result;
}

uint64_t SCNMTLComputeCommandEncoder::dispatch(SCNMTLComputeCommandEncoder *this, MTLSize *a2, MTLSize *a3)
{
  SCNMTLComputeCommandEncoder::_bindPendingTextures(this);
  SCNMTLComputeCommandEncoder::_bindPendingBuffers(this);
  encoder = this->_encoder;
  v9 = *a2;
  v8 = *a3;
  return [(MTLComputeCommandEncoder *)encoder dispatchThreadgroups:&v9 threadsPerThreadgroup:&v8];
}

void C3D::DOFDownsampleCoCPass::DOFDownsampleCoCPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC2B40;
  v5[14] = a4;
}

uint64_t C3D::DOFDownsampleCoCPass::setup(C3D::DOFDownsampleCoCPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (*(*this + 88))(this);
  v3 = fmax(*(v2 + 8) * 0.5 / **(this + 14), 1.0);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 16) = v3;
  v4 = fmax(*(v2 + 12) * 0.5 / **(this + 14), 1.0);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 18) = v4;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 28) = 115;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "DofColorCoC";
  v5 = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16) = v5;
  LODWORD(v2) = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18) = v2;
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 28) = 115;
  return result;
}

uint64_t C3D::DOFDownsampleCoCPass::compile(C3D::DOFDownsampleCoCPass *this)
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

uint64_t C3D::DOFDownsampleCoCPass::execute(C3D::Pass *this, SCNMTLComputeCommandEncoder **a2)
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

uint64_t SCNMTLComputeCommandEncoder::dispatchOnTexture2D(SCNMTLComputeCommandEncoder *a1, void *a2, MTLComputePipelineState *a3)
{
  if (a1->_computePipelineState != a3)
  {
    a1->_computePipelineState = a3;
    [(MTLComputeCommandEncoder *)a1->_encoder setComputePipelineState:?];
  }

  v5 = [a2 width];
  v6 = [a2 height];

  return SCNMTLComputeCommandEncoder::dispatchOnGrid2D(a1, v5, v6);
}

uint64_t C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(uint64_t a1)
{
  if (!*a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(v2, v3, v4);
    }
  }

  return *a1;
}

void C3D::DOFDownsampleCoCPassResource::~DOFDownsampleCoCPassResource(C3D::DOFDownsampleCoCPassResource *this)
{
  *this = &unk_282DC2BB0;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC2BB0;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t _C3DNodeIterateTreePreOrder(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a2 || (v6 = (*a2)(a1, a3)) == 0)
  {
    v7 = a2[1];
    if (!v7)
    {
      v6 = 0;
LABEL_10:
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = ___C3DNodeIterateTreePreOrder_block_invoke;
      v10[3] = &__block_descriptor_tmp_5;
      v10[4] = a2;
      v10[5] = a3;
      if (C3DNodeApplyChildrenInterruptible(a1, v10))
      {
        v6 = 3;
      }

      goto LABEL_12;
    }

    v6 = v7(a1, a3);
  }

  if ((v6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_10;
  }

LABEL_12:
  v8 = a2[2];
  if (v8)
  {
    v8(a1, a3);
  }

  return v6;
}

uint64_t _C3DNodeIterateTreePostOrder(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = (*a2)(a1, a3);
  if ((v6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_6:
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = ___C3DNodeIterateTreePostOrder_block_invoke;
    v10[3] = &__block_descriptor_tmp_1;
    v10[4] = a2;
    v10[5] = a3;
    C3DNodeApplyChildrenInterruptible(a1, v10);
  }

  v7 = a2[2];
  if (v7)
  {
    v7(a1, a3);
  }

  if (!v6)
  {
    v8 = a2[1];
    if (v8)
    {
      return v8(a1, a3);
    }

    return 0;
  }

  return v6;
}

uint64_t C3DNodeIterateTree(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DNodeIterateTree_cold_1(v8);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v9 = scn_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    C3DNodeIterateTree_cold_2(v9);
  }

LABEL_6:
  if (a3)
  {
    return _C3DNodeIterateTreePostOrder(a1, a2, a4);
  }

  else
  {
    return _C3DNodeIterateTreePreOrder(a1, a2, a4);
  }
}

__n128 C3DPlaneMakeWithVectors(__n128 *a1, float32x4_t *a2, float32x4_t *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DPlaneMakeWithVectors_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
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
    C3DPlaneMakeWithVectors_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DPlaneMakeWithVectors_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  result = *a3;
  result.n128_u32[3] = a1->n128_u32[3];
  *a1 = result;
  v30 = vmulq_f32(*a2, *a3);
  result.n128_f32[3] = -(v30.f32[2] + vaddv_f32(*v30.f32));
  *a1 = result;
  return result;
}

BOOL C3DPlaneMakeWithPoints(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = vsubq_f32(*a4, *a2);
  v5 = vsubq_f32(*a3, *a2);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(v4)), v5, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v7 = vmulq_f32(v6, v6);
  v7.f32[0] = sqrtf(v7.f32[1] + (v7.f32[2] + v7.f32[0]));
  if (v7.f32[0] == 0.0)
  {
    *(a1 + 8) = 0;
    v10 = 0.0;
    *a1 = 0;
  }

  else
  {
    v8 = vdivq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vdupq_lane_s32(*v7.f32, 0));
    *a1 = v8.i64[0];
    *(a1 + 8) = v8.i32[2];
    v9 = vmulq_f32(v8, *a4);
    v10 = -(v9.f32[2] + vaddv_f32(*v9.f32));
  }

  *(a1 + 12) = v10;
  return v7.f32[0] != 0.0;
}

BOOL C3DPlaneMakeWithTriangle(uint64_t a1, uint64_t a2)
{
  v4 = C3DTriangle3PointAtIndex(a2, 0);
  v5 = C3DTriangle3PointAtIndex(a2, 1u);
  v6 = C3DTriangle3PointAtIndex(a2, 2u);

  return C3DPlaneMakeWithPoints(a1, v4, v5, v6);
}

uint64_t C3DGeometryCreateSmoothIcosahedron(int a1, float a2)
{
  values[3] = *MEMORY[0x277D85DE8];
  values[0] = __CreateSmoothIcosahedronSource(0, a2);
  values[1] = __CreateSmoothIcosahedronSource(1, a2);
  values[2] = __CreateSmoothIcosahedronSource(3, a2);
  v4 = C3DMeshElementCreate();
  cf = v4;
  if (a1)
  {
    if (a1 == 2)
    {
      v28 = xmmword_21C27FC58;
      v29 = unk_21C27FC68;
      v30 = xmmword_21C27FC78;
      v24 = xmmword_21C27FC18;
      v25 = unk_21C27FC28;
      v26 = xmmword_21C27FC38;
      v27 = unk_21C27FC48;
      v20 = xmmword_21C27FBD8;
      v21 = unk_21C27FBE8;
      v22 = xmmword_21C27FBF8;
      v23 = *asc_21C27FC08;
      *bytes = xmmword_21C27FB98;
      v17 = unk_21C27FBA8;
      v18 = xmmword_21C27FBB8;
      v19 = unk_21C27FBC8;
      v5 = *MEMORY[0x277CBECE8];
      v6 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 240);
      v7 = v4;
      v8 = 60;
    }

    else
    {
      if (a1 != 3)
      {
        v5 = *MEMORY[0x277CBECE8];
        goto LABEL_9;
      }

      *bytes = xmmword_21C27FC88;
      *&v17 = 0x10000F000E000DLL;
      v5 = *MEMORY[0x277CBECE8];
      v6 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 24);
      v7 = v4;
      v8 = 12;
    }
  }

  else
  {
    v20 = xmmword_21C27FB60;
    v21 = unk_21C27FB70;
    v22 = xmmword_21C27FB80;
    *&v23 = 0x14000F000E0013;
    *bytes = xmmword_21C27FB20;
    v17 = unk_21C27FB30;
    v18 = xmmword_21C27FB40;
    v19 = unk_21C27FB50;
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 120);
    v7 = v4;
    v8 = 20;
  }

  C3DMeshElementSetPrimitives(v7, v8, v6, 2);
  CFRelease(v6);
LABEL_9:
  bytes[2] = 0;
  *bytes = 0;
  v9 = MEMORY[0x277CBF128];
  v10 = CFArrayCreate(v5, values, 3, MEMORY[0x277CBF128]);
  v11 = CFArrayCreate(v5, &cf, 1, v9);
  v12 = C3DMeshCreateWithMeshSourcesAndMeshElements(v10, v11, bytes);
  for (i = 0; i != 3; ++i)
  {
    CFRelease(values[i]);
  }

  CFRelease(cf);
  CFRelease(v10);
  CFRelease(v11);
  return v12;
}

uint64_t __CreateSmoothIcosahedronSource(int a1, float a2)
{
  v75 = *MEMORY[0x277D85DE8];
  *v4.i64 = (a2 + a2) * 2.23606798;
  *&v5 = *v4.i64 / 5.0;
  v4.f32[0] = *v4.i64 / 10.0;
  v66 = *&v5;
  v67 = v4.i32[0];
  v6 = -v4.f32[0];
  v4.i32[0] = 0;
  v56 = v6;
  v4.f32[1] = v6;
  v4.i64[1] = v5;
  v57 = v4;
  *v7.f32 = C3DVector3EulerRotate(v4, xmmword_21C27FA60);
  v60 = v7;
  *v8.f32 = C3DVector3EulerRotate(v7, xmmword_21C27FA60);
  v61 = v8;
  *v9.f32 = C3DVector3EulerRotate(v8, xmmword_21C27FA60);
  v62 = v9;
  *v10.f32 = C3DVector3EulerRotate(v9, xmmword_21C27FA60);
  v59 = v10;
  v10.i32[0] = 0;
  v10.i32[3] = 0;
  v10.i32[1] = v67;
  v10.f32[2] = -v66;
  v58 = v10;
  *v11.f32 = C3DVector3EulerRotate(v10, xmmword_21C27FA60);
  v63 = v11;
  *v12.f32 = C3DVector3EulerRotate(v11, xmmword_21C27FA60);
  v65 = v12;
  *v13.f32 = C3DVector3EulerRotate(v12, xmmword_21C27FA60);
  v64 = v13;
  *v14.f32 = C3DVector3EulerRotate(v13, xmmword_21C27FA60);
  switch(a1)
  {
    case 0:
      *bytes = 0;
      *&bytes[4] = -a2;
      *&bytes[8] = 0;
      *&v69 = -a2;
      *(&v69 + 4) = 0;
      *(&v69 + 3) = -a2;
      *v70 = 0;
      *&v70[8] = -a2;
      *&v70[12] = 0;
      *&v70[20] = -a2;
      *&v70[24] = 0;
      *&v70[32] = v56;
      *&v70[36] = v66;
      v50 = v60;
      v50.i32[3] = v61.i32[0];
      *&v70[40] = v50;
      *&v70[56] = vextq_s8(vextq_s8(v61, v61, 0xCuLL), v62, 8uLL);
      *&v70[72] = vextq_s8(vuzp1q_s32(v62, v62), v59, 0xCuLL);
      *&v70[88] = 0;
      *&v70[92] = v56;
      *&v70[96] = v66;
      v51 = v64;
      v51.i32[3] = v14.i32[0];
      *&v70[100] = v51;
      *&v70[116] = vextq_s8(v14, v14, 4uLL).u64[0];
      *&v70[124] = 0;
      v52 = v63;
      v52.i32[3] = v65.i32[0];
      *&v70[128] = v67;
      *&v70[132] = -v66;
      *&v70[136] = v52;
      *&v70[152] = vextq_s8(v65, v65, 4uLL).u64[0];
      LODWORD(v71) = 0;
      *(&v71 + 1) = a2;
      *(&v71 + 1) = 0;
      *(&v72 + 4) = 0;
      *&v72 = a2;
      *(&v72 + 3) = a2;
      *v73 = 0;
      *&v73[12] = 0;
      *&v73[8] = a2;
      *&v73[20] = a2;
      v74 = 0;
      v15 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 252);
      v16 = v15;
      v17 = 0;
      goto LABEL_7;
    case 1:
      v19 = vmulq_f32(v59, v59);
      v20 = vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v19.f32[2] + v20));
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v19.f32[2] + v20), vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_f32(v57, v57);
      *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
      v23 = vmulq_n_f32(v59, vmul_f32(*v19.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v19.f32[2] + v20), vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      *v21.f32 = vrsqrte_f32(v22);
      *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
      v24 = vmulq_n_f32(v57, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
      v25 = vmulq_f32(v60, v60);
      *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(v26);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
      v25.i32[0] = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).u32[0];
      v27 = vmulq_f32(v61, v61);
      *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
      v29 = vmulq_n_f32(v60, v25.f32[0]);
      *v27.f32 = vrsqrte_f32(v28);
      *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
      v30 = vmulq_n_f32(v61, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
      v31 = vmulq_f32(v62, v62);
      *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
      *v31.f32 = vrsqrte_f32(v32);
      *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
      v31.i32[0] = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).u32[0];
      v33 = vmulq_f32(v63, v63);
      *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
      v35 = vmulq_n_f32(v62, v31.f32[0]);
      *v31.f32 = vrsqrte_f32(v34);
      *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v34, vmul_f32(*v31.f32, *v31.f32)));
      v36 = vmulq_n_f32(v63, vmul_f32(*v31.f32, vrsqrts_f32(v34, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
      v37 = vmulq_f32(v65, v65);
      *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
      *v37.f32 = vrsqrte_f32(v38);
      *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
      v37.i32[0] = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).u32[0];
      v39 = vmulq_f32(v64, v64);
      *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
      v41 = vmulq_n_f32(v65, v37.f32[0]);
      *v39.f32 = vrsqrte_f32(v40);
      *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
      v42 = vmulq_n_f32(v64, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      v43 = vmulq_f32(v14, v14);
      *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
      *v43.f32 = vrsqrte_f32(v44);
      *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
      v45 = vmulq_n_f32(v14, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
      v46 = vmulq_f32(v58, v58);
      *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
      *v46.f32 = vrsqrte_f32(v47);
      *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
      *bytes = xmmword_21C27F9A0;
      v69 = xmmword_21C27FB10;
      *v70 = xmmword_21C27F900;
      *&v70[16] = 0xBF80000000000000;
      v23.i32[3] = v24.i32[0];
      v48 = vextq_s8(v24, v24, 0xCuLL);
      v24.i32[3] = v29.i32[0];
      *&v70[24] = 0;
      *&v70[28] = v24;
      *&v70[44] = vextq_s8(vextq_s8(v29, v29, 0xCuLL), v30, 8uLL);
      *&v70[60] = vextq_s8(vuzp1q_s32(v30, v30), v35, 0xCuLL);
      v49 = vmulq_n_f32(v58, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
      *&v70[76] = v23;
      *&v70[92] = vextq_s8(v48, v42, 8uLL);
      *&v70[108] = vextq_s8(vuzp1q_s32(v42, v42), v45, 0xCuLL);
      v49.i32[3] = v36.i32[0];
      *&v70[124] = v49;
      *&v70[140] = vextq_s8(vextq_s8(v36, v36, 0xCuLL), v41, 8uLL);
      *&v70[156] = v41.i32[2];
      v71 = xmmword_21C27F8C0;
      v72 = xmmword_21C27F7E0;
      *v73 = xmmword_21C27F600;
      *&v73[16] = 0x3F80000000000000;
      v74 = 0;
      v15 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 252);
      v16 = v15;
      v17 = 1;
LABEL_7:
      v18 = 3;
      goto LABEL_8;
    case 3:
      *bytes = xmmword_21C27FA70;
      v69 = xmmword_21C27FA80;
      *v70 = xmmword_21C27FA90;
      *&v70[16] = xmmword_21C27FAA0;
      *&v70[32] = xmmword_21C27FAB0;
      *&v70[48] = xmmword_21C27FAC0;
      *&v70[64] = xmmword_21C27FAD0;
      *&v70[80] = xmmword_21C27FAE0;
      *&v70[96] = xmmword_21C27FAF0;
      *&v70[112] = xmmword_21C27FB00;
      *&v70[128] = 1061997773;
      v15 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 168);
      v16 = v15;
      v17 = 3;
      v18 = 2;
LABEL_8:
      v53 = C3DMeshSourceCreate(v15, v17, 21, v18, 1);
      CFRelease(v16);
      MutableCopy = C3DMeshSourceCreateMutableCopy(v53);
      if (v53)
      {
        CFRelease(v53);
      }

      return MutableCopy;
  }

  return C3DMeshSourceCreateMutableCopy(0);
}