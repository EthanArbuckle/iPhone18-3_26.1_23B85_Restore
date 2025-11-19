uint64_t C3DMeshCreateDeepCopy(uint64_t a1)
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
  __C3DMeshCopy(a1, v10, 1);
  return v10;
}

uint64_t C3DMeshCreateRenderableCopy(uint64_t a1)
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
  __C3DMeshCopy(a1, v10, 1);
  C3DMeshBuildRenderableData(v10, 1);
  __DropOriginalTopology(v10);
  return v10;
}

void C3DMeshResetBoundingVolumes(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 192);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) &= ~2u;
}

uint64_t C3DMeshGetBoundingBox(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 192);
  if (!v14)
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
    if (SourceWithSemanticAtIndex)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      C3DMeshSourceGetContent(SourceWithSemanticAtIndex, &v30);
      v17 = v31;
      if (v31)
      {
        v18 = 0uLL;
        if (v30)
        {
          if (BYTE7(v31) == 1)
          {
            v19 = 0;
            v18.i64[0] = 0x80000000800000;
            v18.i64[1] = 0x80000000800000;
            v20 = vnegq_f32(v18);
            do
            {
              v21 = v30 + v19;
              v22.i64[0] = *v21;
              v22.i64[1] = *(v21 + 8);
              v20 = vminnmq_f32(v20, v22);
              v18 = vmaxnmq_f32(v18, v22);
              v19 += BYTE6(v31);
              --v17;
            }

            while (v17);
          }

          else
          {
            v23 = 0;
            v18.i64[0] = 0x80000000800000;
            v18.i64[1] = 0x80000000800000;
            v20 = vnegq_f32(v18);
            do
            {
              v27 = v18;
              v29 = v20;
              *v16.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v31), (v30 + v23 * BYTE6(v31)), v16, v20.f32[0], v18.f32[0]);
              v20 = vminnmq_f32(v29, v16);
              v18 = vmaxnmq_f32(v27, v16);
              ++v23;
            }

            while (v23 < v31);
          }

          v28 = v20;
        }
      }

      else
      {
        v18 = 0uLL;
      }

      v26 = v18;
    }

    else
    {
      v26 = 0u;
      v28 = 0u;
    }

    v24 = C3DMalloc(0x20uLL);
    *(a1 + 192) = v24;
    *v24 = v28;
    *(*(a1 + 192) + 16) = v26;
    v14 = *(a1 + 192);
  }

  *a2 = *v14;
  *a3 = *(*(a1 + 192) + 16);
  return 1;
}

uint64_t C3DMeshGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 184);
  if (!v12)
  {
    v32 = 0uLL;
    v37.i32[2] = 0;
    v37.i64[0] = 0;
    v36.i32[2] = 0;
    v36.i64[0] = 0;
    C3DMeshGetBoundingBox(a1, &v37, &v36);
    *&v13 = C3DVector3MidVector(v36, v37);
    v31 = v13;
    v35 = v13;
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
    if (SourceWithSemanticAtIndex)
    {
      v33 = 0u;
      v34 = 0u;
      C3DMeshSourceGetContent(SourceWithSemanticAtIndex, &v33);
      if (!v33)
      {
        return 0;
      }

      v18 = v34;
      if (BYTE7(v34) == 1)
      {
        if (v34)
        {
          v19 = 0;
          v20 = 0.0;
          do
          {
            v21 = v33 + v19;
            v16.i64[0] = *v21;
            v16.i32[2] = *(v21 + 8);
            v22 = vsubq_f32(v16, v31);
            v16 = vmulq_f32(v22, v22);
            v23 = vaddv_f32(*v16.f32);
            if ((v16.f32[2] + v23) > v20)
            {
              v20 = v16.f32[2] + v23;
            }

            v19 += BYTE6(v34);
            --v18;
          }

          while (v18);
        }

        else
        {
          v20 = 0.0;
        }

        v24 = sqrtf(v20);
      }

      else
      {
        if (v34)
        {
          v26 = 0;
          v27 = 0.0;
          do
          {
            *v28.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v34), (v33 + v26 * BYTE6(v34)), v15, v16.f32[0], v17);
            v29 = vsubq_f32(v28, v31);
            v15 = vmulq_f32(v29, v29);
            v16.f32[0] = vaddv_f32(*v15.f32);
            v15.f32[0] = v15.f32[2] + v16.f32[0];
            if ((v15.f32[2] + v16.f32[0]) > v27)
            {
              v27 = v15.f32[2] + v16.f32[0];
            }

            ++v26;
          }

          while (v26 < v34);
        }

        else
        {
          v27 = 0.0;
        }

        v24 = sqrtf(v27);
      }
    }

    else
    {
      v24 = 0.0;
    }

    C3DSphereMake(&v32, &v35, v24);
    v30 = C3DMalloc(0x10uLL);
    *(a1 + 184) = v30;
    *v30 = v32;
    v12 = *(a1 + 184);
  }

  *a2 = *v12;
  return 1;
}

uint64_t _C3DUpdateMeshElementsBBoxIfNeeded(uint64_t result)
{
  v69 = *MEMORY[0x277D85DE8];
  if ((*(result + 200) & 2) == 0)
  {
    v1 = result;
    result = C3DMeshGetElementsCount(result);
    if (result >= 1)
    {
      v2 = result;
      v3 = 0;
      while (1)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(v1, v3, 0);
        v60 = 0u;
        v61 = 0u;
        memset(v59, 0, sizeof(v59));
        C3DMeshElementGetContent(ElementAtIndex, 0, v59);
        if (*&v59[0])
        {
          if (C3DMeshElementGetSharedMeshElement(ElementAtIndex) == ElementAtIndex)
          {
            break;
          }
        }

        ElementAtIndex[11] = 0u;
        ElementAtIndex[12] = 0u;
        result = C3DMeshGetRenderableElementAtIndexIfNeeded(v1, v3);
        if (result)
        {
          *(result + 176) = 0u;
          *(result + 192) = 0u;
        }

LABEL_8:
        if (++v3 == v2)
        {
          goto LABEL_89;
        }
      }

      IndexCount = C3DMeshElementGetIndexCount(ElementAtIndex);
      v6 = IndexCount;
      v7 = *(&v61 + 1) * BYTE3(v60);
      if (*(&v59[0] + 1) % v7 < BYTE3(v60))
      {
        v8 = *(&v59[0] + 1) / v7;
      }

      else
      {
        v8 = *(&v59[0] + 1) / v7 + 1;
      }

      if (v8 >= IndexCount)
      {
        v8 = IndexCount;
      }

      else
      {
        v9 = scn_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219008;
          *&buf[4] = *(&v59[0] + 1);
          *&buf[12] = 1024;
          *&buf[14] = v6;
          *&buf[18] = 2048;
          *&buf[20] = *(&v61 + 1) * BYTE3(v60);
          *&buf[28] = 1024;
          *&buf[30] = v8;
          v67 = 1024;
          v68 = v6;
          _os_log_error_impl(&dword_21BEF7000, v9, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - element has insufficient data (length %zu for count %d and stride %zu) ; count capped to %d (was %d)", buf, 0x28u);
        }
      }

      result = C3DMeshGetSourceWithSemanticAtIndex(v1, 0, 0, 0);
      if (!result)
      {
        goto LABEL_8;
      }

      memset(buf, 0, 32);
      result = C3DMeshSourceGetContent(result, buf);
      if (!*buf)
      {
        goto LABEL_8;
      }

      if (*&buf[8] % buf[22] < buf[21])
      {
        v11 = *&buf[8] / buf[22];
      }

      else
      {
        v11 = *&buf[8] / buf[22] + 1;
      }

      if (*&buf[16] >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = *&buf[16];
      }

      if (buf[23] == 1)
      {
        if (BYTE3(v60) == 4)
        {
          if (v8)
          {
            v35 = 0;
            v36 = *&v59[0];
            v15.i64[0] = 0x80000000800000;
            v15.i64[1] = 0x80000000800000;
            v16 = vnegq_f32(v15);
            do
            {
              v37 = *(v36 + 4 * v61 + 4 * *(&v61 + 1) * v35);
              if (v37 >= v12)
              {
                v49 = v16;
                v56 = v15;
                v40 = scn_default_log();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *v62 = 67109376;
                  v63 = v37;
                  v64 = 1024;
                  v65 = v12;
                  _os_log_error_impl(&dword_21BEF7000, v40, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v62, 0xEu);
                }

                v16 = v49;
                v15 = v56;
              }

              else
              {
                v38 = v37 * buf[22];
                v39.i64[0] = *(*buf + v38);
                v39.i64[1] = *(*buf + v38 + 8);
                v16 = vminq_f32(v16, v39);
                v15 = vmaxq_f32(v15, v39);
              }

              ++v35;
            }

            while (v8 != v35);
            goto LABEL_87;
          }
        }

        else if (BYTE3(v60) == 2)
        {
          if (v8)
          {
            v25 = 0;
            v26 = *&v59[0];
            v15.i64[0] = 0x80000000800000;
            v15.i64[1] = 0x80000000800000;
            v16 = vnegq_f32(v15);
            do
            {
              v27 = *(v26 + 2 * v61 + 2 * *(&v61 + 1) * v25);
              if (v12 <= v27)
              {
                v47 = v16;
                v54 = v15;
                v30 = scn_default_log();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *v62 = 67109376;
                  v63 = v27;
                  v64 = 1024;
                  v65 = v12;
                  _os_log_error_impl(&dword_21BEF7000, v30, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v62, 0xEu);
                }

                v16 = v47;
                v15 = v54;
              }

              else
              {
                v28 = *buf + buf[22] * *(v26 + 2 * v61 + 2 * *(&v61 + 1) * v25);
                v29.i64[0] = *v28;
                v29.i64[1] = *(v28 + 8);
                v16 = vminq_f32(v16, v29);
                v15 = vmaxq_f32(v15, v29);
              }

              ++v25;
            }

            while (v8 != v25);
            goto LABEL_87;
          }
        }

        else if (BYTE3(v60) == 1 && v8)
        {
          v13 = 0;
          v14 = *&v59[0];
          v15.i64[0] = 0x80000000800000;
          v15.i64[1] = 0x80000000800000;
          v16 = vnegq_f32(v15);
          do
          {
            v17 = *(v14 + v61 + *(&v61 + 1) * v13);
            if (v12 <= v17)
            {
              v45 = v16;
              v52 = v15;
              v20 = scn_default_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *v62 = 67109376;
                v63 = v17;
                v64 = 1024;
                v65 = v12;
                _os_log_error_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v62, 0xEu);
              }

              v16 = v45;
              v15 = v52;
            }

            else
            {
              v18 = *buf + buf[22] * *(v14 + v61 + *(&v61 + 1) * v13);
              v19.i64[0] = *v18;
              v19.i64[1] = *(v18 + 8);
              v16 = vminq_f32(v16, v19);
              v15 = vmaxq_f32(v15, v19);
            }

            ++v13;
          }

          while (v8 != v13);
          goto LABEL_87;
        }
      }

      else if (BYTE3(v60) == 4)
      {
        if (v8)
        {
          v41 = 0;
          v42 = *&v59[0];
          v15.i64[0] = 0x80000000800000;
          v15.i64[1] = 0x80000000800000;
          v16 = vnegq_f32(v15);
          do
          {
            v50 = v16;
            v57 = v15;
            v43 = *(v42 + 4 * v61 + 4 * *(&v61 + 1) * v41);
            if (v43 >= v12)
            {
              v44 = scn_default_log();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *v62 = 67109376;
                v63 = v43;
                v64 = 1024;
                v65 = v12;
                _os_log_error_impl(&dword_21BEF7000, v44, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v62, 0xEu);
              }

              v16 = v50;
              v15 = v57;
            }

            else
            {
              *v10.i64 = C3DConvertFloatingTypeToFloat4(buf[20], (*buf + v43 * buf[22]), v10, v15.f32[0], v16.f32[0]);
              v16 = vminq_f32(v50, v10);
              v15 = vmaxq_f32(v57, v10);
            }

            ++v41;
          }

          while (v8 != v41);
          goto LABEL_87;
        }
      }

      else if (BYTE3(v60) == 2)
      {
        if (v8)
        {
          v31 = 0;
          v32 = *&v59[0];
          v15.i64[0] = 0x80000000800000;
          v15.i64[1] = 0x80000000800000;
          v16 = vnegq_f32(v15);
          do
          {
            v48 = v16;
            v55 = v15;
            v33 = *(v32 + 2 * v61 + 2 * *(&v61 + 1) * v31);
            if (v12 <= v33)
            {
              v34 = scn_default_log();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *v62 = 67109376;
                v63 = v33;
                v64 = 1024;
                v65 = v12;
                _os_log_error_impl(&dword_21BEF7000, v34, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v62, 0xEu);
              }

              v16 = v48;
              v15 = v55;
            }

            else
            {
              *v10.i64 = C3DConvertFloatingTypeToFloat4(buf[20], (*buf + buf[22] * v33), v10, v15.f32[0], v16.f32[0]);
              v16 = vminq_f32(v48, v10);
              v15 = vmaxq_f32(v55, v10);
            }

            ++v31;
          }

          while (v8 != v31);
          goto LABEL_87;
        }
      }

      else if (BYTE3(v60) == 1 && v8)
      {
        v21 = 0;
        v22 = *&v59[0];
        v15.i64[0] = 0x80000000800000;
        v15.i64[1] = 0x80000000800000;
        v16 = vnegq_f32(v15);
        do
        {
          v46 = v16;
          v53 = v15;
          v23 = *(v22 + v61 + *(&v61 + 1) * v21);
          if (v12 <= v23)
          {
            v24 = scn_default_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v62 = 67109376;
              v63 = v23;
              v64 = 1024;
              v65 = v12;
              _os_log_error_impl(&dword_21BEF7000, v24, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v62, 0xEu);
            }

            v16 = v46;
            v15 = v53;
          }

          else
          {
            *v10.i64 = C3DConvertFloatingTypeToFloat4(buf[20], (*buf + buf[22] * v23), v10, v15.f32[0], v16.f32[0]);
            v16 = vminq_f32(v46, v10);
            v15 = vmaxq_f32(v53, v10);
          }

          ++v21;
        }

        while (v8 != v21);
        goto LABEL_87;
      }

      v15.i64[0] = 0x80000000800000;
      v15.i64[1] = 0x80000000800000;
      v16 = vnegq_f32(v15);
LABEL_87:
      v51 = v16;
      v58 = v15;
      ElementAtIndex[11] = v16;
      ElementAtIndex[12] = v15;
      result = C3DMeshGetRenderableElementAtIndexIfNeeded(v1, v3);
      if (result)
      {
        *(result + 176) = v51;
        *(result + 192) = v58;
      }

      goto LABEL_8;
    }

LABEL_89:
    *(v1 + 200) |= 2u;
  }

  return result;
}

const __CFArray *C3DMeshGetElementsCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 96);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void C3DMeshCopyBoundingVolumes(uint64_t a1, uint64_t a2)
{
  C3DMeshGetBoundingBox(a1, &v22, &v21);
  v4 = *(a2 + 192);
  if (!v4)
  {
    v4 = C3DMalloc(0x20uLL);
    *(a2 + 192) = v4;
  }

  *v4 = **(a1 + 192);
  *(*(a2 + 192) + 16) = *(*(a1 + 192) + 16);
  v20 = 0uLL;
  C3DMeshGetBoundingSphere(a1, &v20);
  v5 = *(a2 + 184);
  if (!v5)
  {
    v5 = C3DMalloc(0x10uLL);
    *(a2 + 184) = v5;
  }

  *v5 = v20;
  _C3DUpdateMeshElementsBBoxIfNeeded(a1);
  ElementsCount = C3DMeshGetElementsCount(a1);
  v7 = C3DMeshGetElementsCount(a2);
  if (ElementsCount != v7)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCopyBoundingVolumes_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (ElementsCount >= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = ElementsCount;
  }

  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 0);
      v19 = C3DMeshGetElementAtIndex(a2, i, 0);
      v19[11] = ElementAtIndex[11];
      v19[12] = ElementAtIndex[12];
    }
  }

  *(a2 + 200) |= 2u;
}

const void *C3DMeshGetElementAtIndex(uint64_t a1, CFIndex idx, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a1 + 96))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DMeshGetElementAtIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a3 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v22 = *(a1 + 144);
    return CFArrayGetValueAtIndex(v22, idx);
  }

  if (!a3)
  {
    v22 = *(a1 + 96);
    return CFArrayGetValueAtIndex(v22, idx);
  }

  v24 = scn_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    C3DMeshGetElementAtIndex_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  return 0;
}

void __C3DMeshRemoveSourceWithSemanticAtIndex(CFArrayRef *a1, int a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a4 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v16 = a1 + 14;
  }

  else if (a4)
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v16 = 0;
  }

  else
  {
    v16 = a1 + 8;
  }

  v25 = v16 + 2 * a2;
  v28 = v25[8];
  v27 = v25 + 8;
  v26 = v28;
  if (v28 != -1 && v27[1] > a3)
  {
    v29 = v26 + a3;
    Count = CFArrayGetCount(*v16);
    if (v29 >= Count)
    {
      v31 = scn_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        __C3DMeshRemoveSourceWithSemanticAtIndex_cold_3(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    CFArrayRemoveValueAtIndex(*v16, v29);
    v39 = a1[19];
    if (v39)
    {
      free(v39);
      a1[19] = 0;
    }

    if (a4)
    {
      __BuildSemanticInfosForData(a1, v16);
    }

    else
    {
      if (Count - 1 > v29)
      {
        do
        {
          *(a1[13] + v29) = *(a1[13] + v29 + 1);
          ++v29;
        }

        while (Count - 1 != v29);
      }

      __BuildSemanticInfosForData(a1, v16);
      __UpdateSourcesMutability(a1);
      __C3DMeshInvalidateRenderableData(a1);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a1, 0, 1u);
    a1[26] = (a1[26] + 1);
  }
}

uint64_t __C3DMeshAddSourceWithDataKind(uint64_t a1, const void *a2, char a3, int a4, int a5)
{
  if (!a1 && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    C3DKeyframedAnimationCopy_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (a5 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v26 = (a1 + 112);
  }

  else if (a5)
  {
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v27, v28, v29, v30, v31, v32, v33, v34);
    }

    v26 = 0;
  }

  else
  {
    v26 = (a1 + 64);
  }

  Semantic = C3DMeshSourceGetSemantic(a2);
  v36 = Semantic;
  if (Semantic)
  {
    if (Semantic < 0)
    {
LABEL_24:
      v43 = 0;
      goto LABEL_26;
    }

LABEL_21:
    v39 = v26 + 1;
    v40 = v36;
    while (1)
    {
      v41 = *(v39 + 2 * v40);
      if (v41 != -1)
      {
        break;
      }

      v42 = v40--;
      if (v42 < 1)
      {
        goto LABEL_24;
      }
    }

    v43 = *(v39 + 2 * v40 + 1) + v41;
LABEL_26:
    Count = CFArrayGetCount(*v26);
    CFArrayInsertValueAtIndex(*v26, v43, a2);
    if (a5)
    {
      __BuildRenderableSourceChannelsAndSemanticInfos(a1);
      if (!a4)
      {
        return *(v26 + 2 * v36 + 9) - 1;
      }
    }

    else
    {
      v46 = *(a1 + 152);
      if (v46)
      {
        free(v46);
        *(a1 + 152) = 0;
      }

      v47 = malloc_type_realloc(*(a1 + 104), Count + 1, 0x100004077774924uLL);
      *(a1 + 104) = v47;
      if (Count > v43)
      {
        do
        {
          *(*(a1 + 104) + Count) = *(*(a1 + 104) + Count - 1);
          --Count;
        }

        while (Count > v43);
        v47 = *(a1 + 104);
      }

      v47[v43] = a3;
      __BuildSemanticInfosForData(a1, v26);
      __UpdateSourcesMutability(a1);
      __C3DMeshInvalidateRenderableData(a1);
      if (!a4)
      {
        return *(v26 + 2 * v36 + 9) - 1;
      }
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a1, 0, 1u);
    ++*(a1 + 208);
    return *(v26 + 2 * v36 + 9) - 1;
  }

  if (!C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, a5))
  {
    C3DMeshResetBoundingVolumes(a1);
    goto LABEL_21;
  }

  v37 = scn_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *v48 = 0;
    _os_log_impl(&dword_21BEF7000, v37, OS_LOG_TYPE_DEFAULT, "Warning: Can't add two position sources", v48, 2u);
  }

  return -1;
}

uint64_t __C3DMeshSetSourceWithInputSetAndDataKind(uint64_t a1, const void *a2, uint64_t a3, int a4, int a5)
{
  if (!a1 && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    C3DMeshSourceCreateWithAccessor_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (a4 && a5 == 1)
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      __C3DMeshSetSourceWithInputSetAndDataKind_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    goto LABEL_13;
  }

  if (a5 == 1)
  {
LABEL_13:
    C3DMeshBuildRenderableData(a1, 1);
    v34 = a1 + 112;
    goto LABEL_14;
  }

  if (a5)
  {
    v59 = scn_default_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v59, v60, v61, v62, v63, v64, v65, v66);
    }

    v34 = 0;
  }

  else
  {
    v34 = a1 + 64;
  }

LABEL_14:
  Semantic = C3DMeshSourceGetSemantic(a2);
  v36 = v34 + 8;
  v37 = (v34 + 8 + 2 * Semantic);
  v38 = *v37;
  if (v38 != -1 && v37[1] > a3)
  {
    v39 = v38 + a3;
    CFArraySetValueAtIndex(*v34, v39, a2);
    if (a4 != 255)
    {
      *(*(v34 + 40) + v39) = a4;
    }

    if (a5)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a4 == 255)
  {
    v40 = scn_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      __C3DMeshSetSourceWithInputSetAndDataKind_cold_5(v40, v41, v42, v43, v44, v45, v46, v47);
      if ((Semantic & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_26:
      v51 = 0;
LABEL_27:
      Count = CFArrayGetCount(*v34);
      CFArrayInsertValueAtIndex(*v34, v51, a2);
      if (a5)
      {
        __BuildRenderableSourceChannelsAndSemanticInfos(a1);
LABEL_40:
        LocalCenter = CFNotificationCenterGetLocalCenter();
        v54 = 1;
        CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a1, 0, 1u);
        ++*(a1 + 208);
        return v54;
      }

      v55 = *(a1 + 152);
      if (v55)
      {
        free(v55);
        *(a1 + 152) = 0;
      }

      v56 = malloc_type_realloc(*(a1 + 104), Count + 1, 0x100004077774924uLL);
      *(a1 + 104) = v56;
      if (Count > v51)
      {
        do
        {
          *(*(a1 + 104) + Count) = *(*(a1 + 104) + Count - 1);
          --Count;
        }

        while (Count > v51);
        v56 = *(a1 + 104);
      }

      v56[v51] = a4;
      __BuildSemanticInfosForData(a1, v34);
LABEL_37:
      __UpdateSourcesMutability(a1);
      if (!Semantic)
      {
        C3DMeshResetBoundingVolumes(a1);
      }

      __C3DMeshInvalidateRenderableData(a1);
      goto LABEL_40;
    }
  }

  if (Semantic < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = Semantic;
  while (1)
  {
    v49 = *(v36 + 2 * v48);
    if (v49 != -1)
    {
      break;
    }

    v50 = v48--;
    if (v50 < 1)
    {
      goto LABEL_26;
    }
  }

  v53 = *(v36 + 2 * v48 + 1);
  if (v53 >= a3)
  {
    v51 = v53 + v49;
    goto LABEL_27;
  }

  return 0;
}

uint64_t C3DMeshGetInputSetForSource(uint64_t a1, const void *a2, int a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
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
    C3DKeyframedAnimationCopy_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (a3 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v22 = (a1 + 112);
  }

  else if (a3)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    v22 = 0;
  }

  else
  {
    v22 = (a1 + 64);
  }

  v31 = v22 + 2 * C3DMeshSourceGetSemantic(a2);
  v34 = v31[8];
  v32 = v31 + 8;
  v33 = v34;
  if (v34 == -1)
  {
    return -1;
  }

  v35 = v32[1];
  if (!v32[1])
  {
    return -1;
  }

  v36 = 0;
  while (CFArrayGetValueAtIndex(*v22, v33 + v36) != a2)
  {
    if (v35 == ++v36)
    {
      return -1;
    }
  }

  return v36;
}

const void *C3DMeshGetSourceWithSemanticAtIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v8 = (a1 + 112);
  }

  else if (a4)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  else
  {
    v8 = (a1 + 64);
  }

  v17 = __indexOfSourceWithSemanticAtIndex(a1, a2, a3, a4);
  if (v17 == -1)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(*v8, v17);
  }
}

uint64_t __indexOfSourceWithSemanticAtIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a4 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v16 = (a1 + 112);
  }

  else if (a4)
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v16 = 0;
  }

  else
  {
    v16 = (a1 + 64);
  }

  v25 = v16 + 2 * a2;
  v28 = v25[8];
  v27 = v25 + 8;
  v26 = v28;
  if (v28 == -1 || v27[1] <= a3)
  {
    return -1;
  }

  v29 = v26 + a3;
  if (v29 >= CFArrayGetCount(*v16))
  {
    v30 = scn_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      __indexOfSourceWithSemanticAtIndex_cold_3(v30, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  return v29;
}

BOOL C3DMeshHasSourcesWithSemantic(uint64_t a1, int a2, int a3, int a4)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 != 1)
    {
      C3DMeshHasSourcesWithSemantic_cold_1(v9);
    }

    if (a4)
    {
      C3DMeshBuildRenderableData(a1, 1);
    }

    v7 = 112;
  }

  else
  {
    v7 = 64;
  }

  return *(a1 + v7) && __indexOfSourceWithSemanticAtIndex(a1, a2, 0, a3) != -1;
}

BOOL __C3DMeshHasSourceWithSemanticAtIndex(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  v11[3] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 != 1)
    {
      C3DMeshHasSourcesWithSemantic_cold_1(v11);
    }

    v7 = 112;
  }

  else
  {
    v7 = 64;
  }

  if (*(a1 + v7))
  {
    v8 = __indexOfSourceWithSemanticAtIndex(a1, a2, a3, a4);
    if (v8 == -1)
    {
      ValueAtIndex = 0;
      if (!a5)
      {
        return ValueAtIndex != 0;
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + v7), v8);
      if (!a5)
      {
        return ValueAtIndex != 0;
      }
    }

    *a5 = ValueAtIndex;
    return ValueAtIndex != 0;
  }

  result = 0;
  *a5 = 0;
  return result;
}

void C3DMeshRemoveSource(CFArrayRef *a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DKeyframedAnimationCopy_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  InputSetForSource = C3DMeshGetInputSetForSource(a1, a2, 0);
  if (InputSetForSource != -1)
  {
    v21 = InputSetForSource;
    Semantic = C3DMeshSourceGetSemantic(a2);
    __C3DMeshRemoveSourceWithSemanticAtIndex(a1, Semantic, v21, 0);
  }
}

const void *C3DMeshRemoveSourcesWithSemantic(CFArrayRef *a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  while (1)
  {
    result = C3DMeshGetSourceWithSemanticAtIndex(a1, a2, 0, 0);
    if (!result)
    {
      break;
    }

    __C3DMeshRemoveSourceWithSemanticAtIndex(a1, a2, 0, 0);
  }

  return result;
}

void C3DMeshClearCPURepresentation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        v15 = ValueAtIndex[9];
        if (v15 && (ValueAtIndex[11] & 4) == 0 && !ValueAtIndex[10])
        {
          CFRelease(v15);
          ValueAtIndex[9] = 0;
        }
      }
    }
  }
}

void C3DMeshCopySources(uint64_t a1, void *a2)
{
  __C3DMeshCopySources(a1, a2, 0);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a2, 0, 1u);
  ++a2[26];
}

void __C3DMeshCopySources(uint64_t a1, uint64_t a2, int a3)
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
  v22 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v22;
  v23 = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 120) = v23;
  v24 = *(a2 + 64);
  if (v24)
  {
    CFRelease(v24);
    *(a2 + 64) = 0;
  }

  v25 = *(a2 + 112);
  if (v25)
  {
    CFRelease(v25);
    *(a2 + 112) = 0;
  }

  v26 = *MEMORY[0x277CBECE8];
  *(a2 + 64) = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a1 + 64));
  v27 = *(a1 + 112);
  if (v27)
  {
    MutableCopy = CFArrayCreateMutableCopy(v26, 0, v27);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a2 + 112) = MutableCopy;
  Count = CFArrayGetCount(*(a1 + 64));
  v30 = *(a1 + 112);
  if (v30)
  {
    v31 = CFArrayGetCount(v30);
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v31 = 0;
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
      Copy = C3DMeshSourceCreateCopy(ValueAtIndex);
      CFArraySetValueAtIndex(*(a2 + 64), i, Copy);
      CFRelease(Copy);
    }
  }

  if (v31 >= 1)
  {
    for (j = 0; j != v31; ++j)
    {
      v36 = CFArrayGetValueAtIndex(*(a1 + 112), j);
      v37 = C3DMeshSourceCreateCopy(v36);
      CFArraySetValueAtIndex(*(a2 + 112), j, v37);
      CFRelease(v37);
    }
  }

LABEL_23:
  v38 = *(a1 + 104);
  free(*(a2 + 104));
  v39 = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
  *(a2 + 104) = v39;
  if (v38)
  {
    memcpy(v39, v38, Count);
  }

  v40 = *(a1 + 152);
  free(*(a2 + 152));
  v41 = malloc_type_calloc(v31, 1uLL, 0x100004077774924uLL);
  *(a2 + 152) = v41;
  if (v40)
  {
    memcpy(v41, v40, v31);
  }

  v42 = *(a1 + 160);
  *(a2 + 160) = v42;
  if (v42)
  {
    v43 = 4 * v42;
    v44 = malloc_type_realloc(*(a2 + 168), 4 * v42, 0x7CC2F652uLL);
    *(a2 + 168) = v44;
    memcpy(v44, *(a1 + 168), v43);
  }

  else
  {
    free(*(a2 + 168));
    *(a2 + 168) = 0;
  }

  if (*(a1 + 176))
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
    v46 = 4 * C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    v47 = malloc_type_realloc(*(a2 + 176), v46, 0xE3B95CBBuLL);
    *(a2 + 176) = v47;
    memcpy(v47, *(a1 + 176), v46);
    if (!a3)
    {
      return;
    }

    goto LABEL_32;
  }

  free(*(a2 + 176));
  *(a2 + 176) = 0;
  if (a3)
  {
LABEL_32:
    __C3DMeshFixAccessorLinks(a1, a2);
  }
}

CFIndex C3DMeshUsesSameChannelForAllSources(uint64_t a1, void *a2)
{
  result = CFArrayGetCount(*(a1 + 64));
  if (result)
  {
    v5 = *(a1 + 104);
    v6 = *v5;
    if (result < 2)
    {
LABEL_6:
      if (a2)
      {
        *a2 = v6;
      }

      return 1;
    }

    else
    {
      v7 = result - 1;
      v8 = v5 + 1;
      while (1)
      {
        v9 = *v8++;
        if (v9 != v6)
        {
          return 0;
        }

        if (!--v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t C3DMeshGetChannelForSourceAtIndex(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 104))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshGetChannelForSourceAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 104) + a2);
}

uint64_t C3DMeshGetChannelForSourceWithSemanticAtIndex(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = __indexOfSourceWithSemanticAtIndex(a1, a2, a3, 0);
  if (v6 == -1)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DMeshGetChannelForSourceWithSemanticAtIndex_cold_1(v4, v3, v7);
    }
  }

  return *(*(a1 + 104) + v6);
}

void __C3DMeshCopyByAddingOriginalSourcesWithPositionChannel(uint64_t a1, uint64_t a2, const void **a3)
{
  if (!a2 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = *(a1 + 64);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 64) = 0;
  }

  allocator = *MEMORY[0x277CBECE8];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a2 + 64));
  *(a1 + 64) = MutableCopy;
  Count = CFArrayGetCount(MutableCopy);
  memcpy(*(a1 + 104), *(a2 + 104), Count);
  v25 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v25;
  v26 = *(a1 + 96);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 96) = 0;
  }

  *(a1 + 96) = CFArrayCreateMutableCopy(allocator, 0, *(a2 + 96));
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 0, 0);
  v28 = *a3;
  if (*a3)
  {
    v29 = ChannelForSourceWithSemanticAtIndex;
    v30 = 0;
    do
    {
      __C3DMeshAddSourceWithDataKind(a1, v28, v29, 0, 0);
      v28 = a3[++v30];
    }

    while (v28);
  }

  v31 = *(a1 + 112);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 112) = 0;
  }

  v32 = *(a2 + 112);
  if (v32)
  {
    Mutable = CFArrayCreateMutableCopy(allocator, 0, v32);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a1 + 112) = Mutable;
  if (*(a2 + 112))
  {
    v34 = CFArrayGetCount(Mutable);
  }

  else
  {
    v34 = 0;
  }

  free(*(a1 + 152));
  *(a1 + 152) = malloc_type_calloc(v34, 1uLL, 0x100004077774924uLL);
  v35 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v35;
  v36 = *(a1 + 144);
  if (v36)
  {
    CFRelease(v36);
    *(a1 + 144) = 0;
  }

  v37 = *(a2 + 144);
  if (v37)
  {
    v38 = CFArrayCreateMutableCopy(allocator, 0, v37);
  }

  else
  {
    v38 = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a1 + 144) = v38;
  v69 = 0;
  if (__C3DMeshHasSourceWithSemanticAtIndex(a2, 0, 0, 1, &v69))
  {
    v39 = C3DMeshSourceGetCount(v69);
    v40 = *a3;
    if (*a3)
    {
      v41 = 0;
      v42 = v39;
      bytesDeallocator = *MEMORY[0x277CBECF0];
      v63 = a3;
      v43 = 4 * v39;
      v64 = a1;
      do
      {
        if (*(a2 + 168))
        {
          Semantic = C3DMeshSourceGetSemantic(v40);
          ComponentsCountPerValue = C3DMeshSourceGetComponentsCountPerValue(v40);
          ValueType = C3DMeshSourceGetValueType(v40);
          Accessor = C3DMeshSourceGetAccessor(v40);
          ValueLength = C3DSourceAccessorGetValueLength(Accessor);
          v46 = ValueLength * v42;
          v47 = malloc_type_malloc(ValueLength * v42, 0x100004052888210uLL);
          v48 = v47;
          v49 = v42;
          if (v42)
          {
            v50 = 0;
            v51 = v47;
            do
            {
              ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, *(*(a2 + 168) + v50));
              if (ValuePtrAtIndex)
              {
                memcpy(v51, ValuePtrAtIndex, ValueLength);
              }

              else
              {
                bzero(v51, ValueLength);
              }

              v50 += 4;
              v51 += ValueLength;
            }

            while (v43 != v50);
          }

          v53 = CFDataCreateWithBytesNoCopy(allocator, v48, v46, bytesDeallocator);
          v42 = v49;
          v54 = C3DMeshSourceCreate(v53, Semantic, v49, ComponentsCountPerValue, ValueType);
          CFRelease(v53);
          a1 = v64;
          __C3DMeshAddSourceWithDataKind(v64, v54, 0, 0, 1);
          CFRelease(v54);
          a3 = v63;
        }

        else
        {
          __C3DMeshAddSourceWithDataKind(a1, v40, 0, 0, 1);
        }

        v40 = a3[++v41];
      }

      while (v40);
    }
  }

  v55 = *(a2 + 160);
  *(a1 + 160) = v55;
  v56 = 4 * v55;
  free(*(a1 + 168));
  v57 = malloc_type_malloc(v56, 0x4E01C7D1uLL);
  *(a1 + 168) = v57;
  memcpy(v57, *(a2 + 168), v56);
  free(*(a1 + 176));
  *(a1 + 176) = 0;
  if (*(a2 + 176))
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a2, 0, 0, 0);
    v59 = 4 * C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
    v60 = malloc_type_malloc(v59, 0xF31D0461uLL);
    *(a1 + 176) = v60;
    memcpy(v60, *(a2 + 176), v59);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a1, 0, 1u);
  ++*(a1 + 208);
}

CFMutableArrayRef C3DMeshCopyRenderableSourceAndElements(uint64_t a1, uint64_t a2)
{
  if (!a2 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  C3DMeshBuildRenderableData(a2, 1);
  v20 = *(a2 + 120);
  *(a1 + 88) = *(a2 + 136);
  *(a1 + 72) = v20;
  v21 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v21;
  v22 = *(a1 + 64);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 64) = 0;
  }

  v23 = *(a1 + 112);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 112) = 0;
  }

  v24 = *(a2 + 112);
  v25 = MEMORY[0x277CBECE8];
  if (v24)
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v24);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a1 + 64) = MutableCopy;
  v27 = *(a2 + 112);
  if (v27)
  {
    Mutable = CFArrayCreateMutableCopy(*v25, 0, v27);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a1 + 112) = Mutable;
  Count = CFArrayGetCount(Mutable);
  free(*(a1 + 104));
  *(a1 + 104) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
  free(*(a1 + 152));
  *(a1 + 152) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
  v30 = *(a1 + 96);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 96) = 0;
  }

  v31 = *(a1 + 144);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 144) = 0;
  }

  v32 = *(a2 + 144);
  if (v32)
  {
    v33 = CFArrayCreateMutableCopy(*v25, 0, v32);
  }

  else
  {
    v33 = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a1 + 96) = v33;
  v34 = *(a2 + 144);
  if (v34)
  {
    result = CFArrayCreateMutableCopy(*v25, 0, v34);
  }

  else
  {
    result = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a1 + 144) = result;
  return result;
}

CFArrayRef C3DMeshCopyAllSources(uint64_t a1, int a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_7:
      v12 = 64;
      return CFArrayCreateCopy(*MEMORY[0x277CBED00], *(a1 + v12));
    }
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (a2 != 1)
  {
    C3DMeshHasSourcesWithSemantic_cold_1(v14);
  }

  C3DMeshBuildRenderableData(a1, 1);
  v12 = 112;
  return CFArrayCreateCopy(*MEMORY[0x277CBED00], *(a1 + v12));
}

uint64_t C3DMeshMakeOriginalSourceMutable(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (C3DMeshSourceIsMutable(a2) & 1) != 0)
  {
    return v2;
  }

  v4 = C3DMeshCreate();
  v5 = 0;
  v6 = 0;
  v25 = a1 + 72;
  do
  {
    v7 = v25 + 2 * v6;
    v8 = *(v7 + 1);
    if (*(v7 + 1))
    {
      for (i = 0; v8 != i; ++i)
      {
        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, v6, i, 0);
        ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a1, v6, i);
        if (v2)
        {
          if (SourceWithSemanticAtIndex == v2)
          {
            goto LABEL_12;
          }
        }

        else if (!C3DMeshSourceIsMutable(SourceWithSemanticAtIndex) || !SourceWithSemanticAtIndex)
        {
LABEL_12:
          MutableCopy = C3DMeshSourceCreateMutableCopy(SourceWithSemanticAtIndex);
          __C3DMeshSetSourceWithInputSetAndDataKind(v4, MutableCopy, i, ChannelForSourceWithSemanticAtIndex, 0);
          CFRelease(MutableCopy);
          if (v2)
          {
            v2 = MutableCopy;
          }

          else
          {
            v2 = 0;
          }

          v5 = 1;
          continue;
        }

        __C3DMeshSetSourceWithInputSetAndDataKind(v4, SourceWithSemanticAtIndex, i, ChannelForSourceWithSemanticAtIndex, 0);
      }
    }

    ++v6;
  }

  while (v6 != 9);
  if (v5)
  {
    __C3DMeshFixAccessorLinks(a1, v4);
    for (j = 0; j != 9; ++j)
    {
      v14 = v4 + 2 * j + 72;
      v15 = *(v14 + 1);
      if (*(v14 + 1))
      {
        v16 = 0;
        do
        {
          v17 = C3DMeshGetSourceWithSemanticAtIndex(v4, j, v16, 0);
          v18 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v4, j, v16);
          __C3DMeshSetSourceWithInputSetAndDataKind(a1, v17, v16++, v18, 0);
        }

        while (v15 != v16);
      }
    }

    CFRelease(v4);
    if (v2)
    {
      for (k = 0; k != 9; ++k)
      {
        v20 = v25 + 2 * k;
        v21 = *(v20 + 1);
        if (*(v20 + 1))
        {
          v22 = 0;
          do
          {
            v23 = C3DMeshGetSourceWithSemanticAtIndex(a1, k, v22, 0);
            if (C3DGenericSourcesHaveSharedData(v2, v23))
            {
              C3DGenericSourceMarkMutable(v23);
            }

            ++v22;
          }

          while (v21 != v22);
        }
      }
    }

    *(a1 + 200) |= 4u;
  }

  else
  {
    CFRelease(v4);
  }

  return v2;
}

void __C3DMeshFixAccessorLinks(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
      Accessor = C3DGenericSourceGetAccessor(ValueAtIndex);
      if (Accessor)
      {
        v9 = *(Accessor + 16);
        if (v9 != ValueAtIndex)
        {
          v10 = CFArrayGetCount(*(a1 + 64));
          if (v10 < 1)
          {
            goto LABEL_15;
          }

          v11 = v10;
          if (CFArrayGetValueAtIndex(*(a1 + 64), 0) == v9)
          {
            v15 = 0;
          }

          else
          {
            v12 = 1;
            while (1)
            {
              v13 = v12;
              if (v11 == v12)
              {
                break;
              }

              v14 = CFArrayGetValueAtIndex(*(a1 + 64), v12);
              v12 = v13 + 1;
              if (v14 == v9)
              {
                v15 = v13;
                goto LABEL_13;
              }
            }

            v15 = 0;
LABEL_13:
            if (v13 >= v11)
            {
LABEL_15:
              if ((__C3DMeshFixAccessorLinks_done & 1) == 0)
              {
                __C3DMeshFixAccessorLinks_done = 1;
                v19 = scn_default_log();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  __C3DMeshFixAccessorLinks_cold_1(&v20, v21, v19);
                }
              }

              continue;
            }
          }

          v16 = CFArrayGetValueAtIndex(*(a2 + 64), i);
          v17 = C3DGenericSourceGetAccessor(v16);
          v18 = CFArrayGetValueAtIndex(*(a2 + 64), v15);
          C3DSourceAccessorSetSource(v17, v18);
        }
      }
    }
  }
}

uint64_t C3DMeshGetSourcesCount(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 73;
  do
  {
    result += *(v4 + v2);
    v2 += 2;
  }

  while (v2 != 18);
  return result;
}

uint64_t C3DMeshGetPositionDeindexedToOriginalTable(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 160);
  }

  return *(a1 + 168);
}

CFIndex C3DMeshGetIndexOfElement(uint64_t a1, const void *a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a1 + 96))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DMeshGetElementAtIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a3 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v22.length = CFArrayGetCount(*(a1 + 144));
    v23 = *(a1 + 144);
    goto LABEL_11;
  }

  if (!a3)
  {
    v22.length = CFArrayGetCount(*(a1 + 96));
    v23 = *(a1 + 96);
LABEL_11:
    v22.location = 0;
    return CFArrayGetFirstIndexOfValue(v23, v22, a2);
  }

  v25 = scn_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    C3DMeshGetIndexOfElement_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
  }

  return -1;
}

const void *C3DMeshGetRenderableElementAtIndexIfNeeded(uint64_t a1, CFIndex idx)
{
  Count = *(a1 + 144);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 0;
  }

  v5 = *(a1 + 144);

  return CFArrayGetValueAtIndex(v5, idx);
}

uint64_t C3DMeshGetMeshElements(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    return *(a1 + 144);
  }

  else if (a2)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      C3DMeshGetMeshElements_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    return 0;
  }

  else
  {
    return *(a1 + 96);
  }
}

void C3DMeshSetMeshElements(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 96);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      v13 = CFGetAllocator(cf);
      *(a1 + 96) = CFArrayCreateMutableCopy(v13, 0, cf);
    }

    *(a1 + 200) &= ~2u;
    __C3DMeshInvalidateRenderableData(a1);
  }
}

void C3DMeshRemoveAllElements(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 200) &= ~2u;
  __C3DMeshInvalidateRenderableData(a1);
  CFArrayRemoveAllValues(*(a1 + 96));
}

void C3DMeshSetOriginalElementType(uint64_t a1, uint64_t a2)
{
  ElementsCount = C3DMeshGetElementsCount(a1);
  if (ElementsCount < 1)
  {
    return;
  }

  v5 = ElementsCount;
  v6 = 0;
  v7 = a2 - 4;
  allocator = *MEMORY[0x277CBECE8];
  while (1)
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(a1, v6, 1);
    if (C3DMeshElementGetType(ElementAtIndex) != a2)
    {
      break;
    }

LABEL_27:
    if (++v6 == v5)
    {
      return;
    }
  }

  if (v7 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (C3DMeshElementGetType(ElementAtIndex))
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        size_4 = 0;
        _os_log_impl(&dword_21BEF7000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert from triangle array to another element type", &size_4, 2u);
      }

      goto LABEL_27;
    }

    size = 0;
    Indexes = C3DMeshElementGetIndexes(ElementAtIndex, &size);
    PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
    v12 = size;
    BytePtr = CFDataGetBytePtr(Indexes);
    if (v12 == 2)
    {
      if (a2 == 2)
      {
        v14 = 3 * PrimitiveCount;
        v15 = 6 * PrimitiveCount;
        v16 = malloc_type_calloc(6 * PrimitiveCount, size, 0x895EF2AAuLL);
        v21 = v16;
        if (PrimitiveCount >= 1)
        {
          do
          {
            *v21 = *BytePtr;
            v22 = *(BytePtr + 1);
            *(v21 + 1) = v22;
            *(v21 + 2) = v22;
            v23 = *(BytePtr + 2);
            *(v21 + 3) = v23;
            *(v21 + 4) = v23;
            v24 = *BytePtr;
            BytePtr += 6;
            *(v21 + 5) = v24;
            v21 += 12;
            --PrimitiveCount;
          }

          while (PrimitiveCount);
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (v12 != 1)
      {
        v29 = 3 * PrimitiveCount;
        if (a2 == 2)
        {
          v30 = malloc_type_calloc(6 * PrimitiveCount, size, 0xE2D0E27AuLL);
          v31 = v30;
          if (PrimitiveCount >= 1)
          {
            do
            {
              *v31 = *BytePtr;
              v32 = *(BytePtr + 1);
              *(v31 + 1) = v32;
              *(v31 + 2) = v32;
              v33 = *(BytePtr + 2);
              *(v31 + 3) = v33;
              *(v31 + 4) = v33;
              v34 = *BytePtr;
              BytePtr += 12;
              *(v31 + 5) = v34;
              v31 += 24;
              --PrimitiveCount;
            }

            while (PrimitiveCount);
          }

          v35 = CFDataCreate(allocator, v30, 2 * v29 * size);
          C3DMeshElementInit(ElementAtIndex, 2, v29, v35, size);
          CFRelease(v35);
          v26 = v30;
          goto LABEL_23;
        }

        v36 = CFDataCreate(allocator, BytePtr, v29 * size);
        C3DMeshElementInit(ElementAtIndex, 3, 3 * PrimitiveCount, v36, size);
        v28 = v36;
LABEL_25:
        CFRelease(v28);
        goto LABEL_26;
      }

      if (a2 == 2)
      {
        v14 = 3 * PrimitiveCount;
        v15 = 6 * PrimitiveCount;
        v16 = malloc_type_calloc(6 * PrimitiveCount, size, 0x41035F6BuLL);
        v17 = v16;
        if (PrimitiveCount >= 1)
        {
          do
          {
            *v17 = *BytePtr;
            v18 = BytePtr[1];
            v17[1] = v18;
            v17[2] = v18;
            v19 = BytePtr[2];
            v17[3] = v19;
            v17[4] = v19;
            v20 = *BytePtr;
            BytePtr += 3;
            v17[5] = v20;
            v17 += 6;
            --PrimitiveCount;
          }

          while (PrimitiveCount);
        }

LABEL_17:
        v25 = CFDataCreate(allocator, v16, v15 * size);
        C3DMeshElementInit(ElementAtIndex, 2, v14, v25, size);
        CFRelease(v25);
        v26 = v16;
LABEL_23:
        free(v26);
        v7 = a2 - 4;
LABEL_26:
        __C3DMeshInvalidateRenderableData(a1);
        goto LABEL_27;
      }
    }

    v27 = CFDataCreate(allocator, BytePtr, 3 * PrimitiveCount * size);
    C3DMeshElementInit(ElementAtIndex, 3, 3 * PrimitiveCount, v27, size);
    v28 = v27;
    goto LABEL_25;
  }

  v37 = scn_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BEF7000, v37, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert to lines or points element type", buf, 2u);
  }
}

uint64_t C3DMeshGetMorphableSourceMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 200) >> 3) & 0xF;
}

uint64_t C3DMeshIsMutable(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 200) >> 2) & 1;
}

void C3DMeshMarkMutable(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 200) |= 4u;
}

void C3DMeshDidMutate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 216);
}

uint64_t C3DMeshGetMutabilityTimeStamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

uint64_t C3DMeshIsVolatile(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 200) & 1;
}

BOOL __processTrianglesBatch(float32x4_t *a1, unsigned int a2, unsigned int a3, float32x4_t a4, float a5, float32x4_t a6, double a7, double a8, float32x4_t a9, __n128 a10)
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = a3 - a2;
  if (a3 > a2)
  {
    v12 = a1[4].i64[0];
    v13 = a1[5].u8[6];
    v63 = a1 + 9;
    v14 = a2;
    v67 = a1[5].u8[7];
    v62 = a1[5].u8[4];
    v66 = a3;
    a4.i64[0] = 67109120;
    v15 = 1;
    while (1)
    {
      v16 = a1[2].u8[2];
      if (a1[2].i8[2])
      {
        if (v14)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v14)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = v16 != 5;
        v20 = 1;
        if (v16 == 1)
        {
          v19 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 != 1)
        {
          v18 = 1;
        }
      }

      else
      {
        v20 = 3;
        v19 = 3;
        v17 = 2;
        v18 = 1;
      }

      v21 = a1->i64[0];
      if (!a1->i64[0])
      {
        v35 = v14 * v19;
        v34 = v18 + v20 * v14;
        v33 = v17 + v20 * v14;
        goto LABEL_28;
      }

      v22 = a1->u64[1];
      v23 = a1[2].u8[3];
      v24 = a1[3].i64[0];
      v25 = a1[3].i64[1];
      v26 = v24 + v25 * v14 * v19;
      v27 = v20 * v14;
      v28 = v24 + (v18 + v20 * v14) * v25;
      v29 = v24 + (v17 + v27) * v25;
      v30 = v29 <= v26 ? v26 : v29;
      v31 = v28 <= v30 ? v30 : v28;
      if (v22 >= v23 + v23 * v31)
      {
        break;
      }

      v32 = scn_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v69 = "C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
        v70 = 1024;
        v71 = v31;
        v72 = 2048;
        v73 = v22 / v23;
        v58 = v32;
        v59 = "Error: %s - index (%u) out of bounds (%lu)";
        v60 = 28;
LABEL_45:
        _os_log_error_impl(&dword_21BEF7000, v58, OS_LOG_TYPE_ERROR, v59, buf, v60);
      }

LABEL_26:
      v33 = 0;
      v34 = 0;
      v35 = 0;
LABEL_28:
      v36 = v12 + (v35 * v13);
      if (v67 == 1)
      {
        a9.i64[0] = *v36;
        a9.i32[2] = *(v36 + 8);
        v37 = v12 + (v34 * v13);
        a10.n128_u64[0] = *v37;
        a10.n128_u32[2] = *(v37 + 8);
        v38 = v12 + (v33 * v13);
        a4.i64[0] = *v38;
        a4.i32[2] = *(v38 + 8);
      }

      else
      {
        *v39.i64 = C3DConvertFloatingTypeToFloat4(v62, v36, a4, a5, a6.f32[0]);
        v65 = v39;
        *v42.i64 = C3DConvertFloatingTypeToFloat4(v62, (v12 + (v34 * v13)), v39, v40, v41);
        v64 = v42;
        *a4.i64 = C3DConvertFloatingTypeToFloat4(v62, (v12 + (v33 * v13)), v42, v43, v44);
        a10 = v64;
        a9 = v65;
      }

      v45 = a10;
      v45.i32[3] = 0;
      v46 = a4;
      v46.i32[3] = 0;
      v47 = vminnmq_f32(v45, v46);
      v48 = a9;
      v48.i32[3] = 0;
      v47.i32[3] = 0;
      v49 = vminnmq_f32(v48, v47);
      v50 = vmaxnmq_f32(v45, v46);
      v50.i32[3] = 0;
      v51 = vmaxnmq_f32(v48, v50);
      v48.i64[0] = 0x3F0000003F000000;
      v48.i64[1] = 0x3F0000003F000000;
      v52 = vmulq_f32(vaddq_f32(v49, v51), v48);
      v52.i32[3] = 1.0;
      v53 = vmulq_f32(vsubq_f32(v51, v49), v48);
      v53.i32[3] = 0;
      a6 = vabdq_f32(a1[6], v52);
      v54 = vcgeq_f32(vaddq_f32(a1[7], v53), a6);
      v54.i32[3] = v54.i32[2];
      a5 = COERCE_FLOAT(vminvq_u32(v54));
      if ((LODWORD(a5) & 0x80000000) == 0 || (v55 = a1[201].u32[0], a1[201].i32[0] = v55 + 1, v56 = &v63[3 * v55], *v56 = a9, v56[1] = a10, v56[2] = a4, a1[201].i32[0] != 64) || (a1[201].i32[0] = 0, ((*(a1[8].i64[0] + 16))() & 1) == 0))
      {
        v15 = ++v14 < v66;
        if (--v10)
        {
          continue;
        }
      }

      return v15;
    }

    switch(v23)
    {
      case 4u:
        v35 = *(v21 + 4 * v26);
        v34 = *(v21 + 4 * v28);
        v33 = *(v21 + 4 * v29);
        goto LABEL_28;
      case 2u:
        v35 = *(v21 + 2 * v26);
        v34 = *(v21 + 2 * v28);
        v33 = *(v21 + 2 * v29);
        goto LABEL_28;
      case 1u:
        v35 = *(v21 + v26);
        v34 = *(v21 + v28);
        v33 = *(v21 + v29);
        goto LABEL_28;
    }

    v57 = scn_default_log();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 67109120;
    LODWORD(v69) = v23;
    v58 = v57;
    v59 = "Unreachable code: Invalid bytes per index (%d)";
    v60 = 8;
    goto LABEL_45;
  }

  return 0;
}

uint64_t C3DMeshQueryTrianglesIntersectingBox(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
  result = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
  if (result)
  {
    result = C3DMeshGetElementsCount(a1);
    if (result)
    {
      v8 = result;
      v43 = 0u;
      memset(v44, 0, 368);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      result = C3DMeshSourceGetContent(SourceWithSemanticAtIndex, &v39);
      v41 = a3;
      v42 = a4;
      v45 = 0;
      *&v43 = a2;
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 0);
          C3DMeshElementGetContent(ElementAtIndex, 0, &v31);
          v35 = v31;
          v36 = v32;
          v37 = v33;
          v38 = v34;
          if (v32 < 0x101)
          {
            result = __processTrianglesBatch(&v35, 0, v32, v33, *&v34, v11, v12, v13, v14, v15);
            if (result)
            {
              return result;
            }
          }

          else
          {
            v30 = 0;
            v31 = v35;
            v32 = v36;
            v33 = v37;
            v34 = v38;
            v29[0] = v39;
            v29[1] = v40;
            result = C3DMeshElementGetPrimitiveGroupBoundingBoxes(ElementAtIndex, &v31, v29, &v30);
            v19 = v30;
            if (v30)
            {
              v20 = 0;
              v21 = (result + 16);
              v22 = 32;
              do
              {
                v23 = v21[-1];
                v24 = vaddq_f32(v42, *v21);
                v25 = vcgeq_f32(v24, vabdq_f32(v41, v23));
                v25.i32[3] = v25.i32[2];
                v25.i32[0] = vminvq_u32(v25);
                if (v25.i32[0] < 0)
                {
                  if (v22 >= v36)
                  {
                    v26 = v36;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  result = __processTrianglesBatch(&v35, v22 - 32, v26, v25, v24.f32[0], v23, *v21->i64, v16, v17, v18);
                  if (result)
                  {
                    return result;
                  }

                  v19 = v30;
                }

                ++v20;
                v21 += 2;
                v22 += 32;
              }

              while (v20 < v19);
            }
          }
        }

        if (v45)
        {
          return (*(a2 + 16))(a2, v44);
        }
      }
    }
  }

  return result;
}

id _C3DMeshCFFinalize(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a1, 0, 1u);
  ++*(a1 + 208);
  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 144) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 112) = 0;
  }

  free(*(a1 + 104));
  free(*(a1 + 152));
  free(*(a1 + 168));
  free(*(a1 + 176));
  v7 = *(a1 + 192);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 184);
  if (v8)
  {
    free(v8);
  }

  return C3DEntityCFFinalize(a1);
}

__CFString *_C3DMeshCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DEntityGetName(a1);
  CFStringAppendFormat(Mutable, 0, @"<C3DMesh %p %@\n", a1, Name);
  if (C3DMeshGetElementsCount(a1) >= 1)
  {
    v4 = 0;
    do
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, v4, 0);
      CFStringAppendFormat(Mutable, 0, @"  element%d: %@\n", v4++, ElementAtIndex);
    }

    while (v4 < C3DMeshGetElementsCount(a1));
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___C3DMeshCFCopyDebugDescription_block_invoke;
  v10[3] = &__block_descriptor_tmp_45_1;
  v10[4] = Mutable;
  C3DMeshApplySources(a1, 0, v10);
  if (*(a1 + 112))
  {
    if (C3DMeshGetElementsCount(a1) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = C3DMeshGetElementAtIndex(a1, v6, 1);
        CFStringAppendFormat(Mutable, 0, @"  renderable element%d: %@\n", v6++, v7);
      }

      while (v6 < C3DMeshGetElementsCount(a1));
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___C3DMeshCFCopyDebugDescription_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_55;
    v9[4] = Mutable;
    C3DMeshApplySources(a1, 1, v9);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t _C3DMeshInitWithPropertyList(uint64_t a1, const __CFDictionary *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DEntityInitWithPropertyList(a1, a2);
  if (v12)
  {
    Value = CFDictionaryGetValue(a2, @"baseSourceLocators");
    if (Value)
    {
      v14 = Value;
      *(a1 + 200) &= 0x87u;
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v16 = Count;
        for (i = 0; i != v16; ++i)
        {
          valuePtr = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
          if (!CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr) && (_C3DMeshInitWithPropertyList_done & 1) == 0)
          {
            _C3DMeshInitWithPropertyList_done = 1;
            v19 = scn_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = a2;
              _os_log_error_impl(&dword_21BEF7000, v19, OS_LOG_TYPE_ERROR, "Error: Could not deserialize a source locator in %@", buf, 0xCu);
            }
          }

          *(a1 + 200) |= 8 * ((1 << SBYTE1(valuePtr)) & 0xF);
        }
      }
    }

    else
    {
      v29 = CFDictionaryGetValue(a2, @"verticesMask");
      if (v29)
      {
        *buf = 0;
        CFNumberGetValue(v29, kCFNumberIntType, buf);
        *(a1 + 200) = (8 * (buf[0] & 0xF)) | *(a1 + 200) & 0x87;
      }
    }
  }

  else
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _C3DMeshInitWithPropertyList_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  return v12;
}

__CFDictionary *_C3DMeshCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v67[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = C3DEntityCopyPropertyList(a1, a2, a3);
  v17 = v16;
  if (v16)
  {
    v55 = a3;
    v56 = a4;
    v57 = v16;
    v18 = MEMORY[0x277CBF138];
    v19 = MEMORY[0x277CBF150];
    theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Mutable = CFDictionaryCreateMutable(0, 0, v18, v19);
    v20 = CFDictionaryCreateMutable(0, 0, v18, v19);
    Count = CFArrayGetCount(*(a1 + 64));
    if (Count >= 1)
    {
      v22 = 0;
      v23 = MEMORY[0x277CBF128];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v22);
        EntryID = C3DLibraryGetEntryID(a2, ValueAtIndex);
        v26 = EntryID;
        if (EntryID >> 31)
        {
          v27 = scn_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            _C3DMeshCopyPropertyList_cold_2(v64, &v65, v27);
          }
        }

        valuePtr = v26;
        v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v20, ValueAtIndex, v28);
        if (C3DGenericSourceIsPrimary(ValueAtIndex))
        {
          v29 = CFArrayCreateMutable(0, 0, v23);
          v30 = CFArrayCreateMutable(0, 0, v23);
          CFDictionaryAddValue(theDict, ValueAtIndex, v29);
          CFDictionaryAddValue(Mutable, ValueAtIndex, v30);
          CFRelease(v29);
          CFRelease(v30);
          URL = ValueAtIndex;
        }

        else
        {
          Accessor = C3DGenericSourceGetAccessor(ValueAtIndex);
          URL = C3DSceneSourceGetURL(Accessor);
        }

        if (!C3DGenericSourceIsPrimary(URL))
        {
          v33 = scn_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            _C3DMeshCopyPropertyList_cold_3(v62, &v63, v33);
          }
        }

        Value = CFDictionaryGetValue(theDict, URL);
        v35 = CFDictionaryGetValue(Mutable, URL);
        v36 = C3DGenericSourceGetAccessor(ValueAtIndex);
        CFArrayAppendValue(Value, v36);
        CFArrayAppendValue(v35, v28);
        CFRelease(v28);
        ++v22;
      }

      while (Count != v22);
    }

    v37 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v58 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v39 = CFArrayGetValueAtIndex(*(a1 + 64), i);
        v40 = CFDictionaryGetValue(v20, v39);
        CFArrayAppendValue(v37, v40);
        if (C3DGenericSourceIsPrimary(v39))
        {
          v41 = CFDictionaryGetValue(Mutable, v39);
          v42 = CFDictionaryGetValue(theDict, v39);
          if (!v39)
          {
            v43 = scn_default_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              _C3DMeshCopyPropertyList_cold_4(&valuePtr, v67, v43);
            }
          }

          SerializedDataWithAccessors = C3DGenericSourceCreateSerializedDataWithAccessors(v39, v42);
          v45 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionaryAddValue(v45, @"data", SerializedDataWithAccessors);
          CFDictionaryAddValue(v45, @"subIDs", v41);
          v46 = CFStringCreateWithFormat(0, 0, @"%@", v40);
          CFDictionaryAddValue(v58, v46, v45);
          CFRelease(v46);
          CFRelease(SerializedDataWithAccessors);
          CFRelease(v45);
        }
      }
    }

    v17 = v57;
    CFDictionarySetValue(v57, @"sources", v37);
    CFDictionarySetValue(v57, @"primarySourcesInfo", v58);
    CFRelease(v37);
    CFRelease(v58);
    CFRelease(Mutable);
    CFRelease(theDict);
    CFRelease(v20);
    v47 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v48 = CFArrayGetCount(*(a1 + 96));
    if (v48 >= 1)
    {
      v49 = v48;
      for (j = 0; j != v49; ++j)
      {
        v51 = CFArrayGetValueAtIndex(*(a1 + 96), j);
        v52 = C3DCopyPropertyList(v51, 0, v55, v56);
        CFArrayAppendValue(v47, v52);
        CFRelease(v52);
      }
    }

    CFDictionarySetValue(v57, @"geometryElements", v47);
    CFRelease(v47);
    v61 = (*(a1 + 200) >> 3) & 0xF;
    v53 = CFNumberCreate(0, kCFNumberIntType, &v61);
    CFDictionarySetValue(v57, @"verticesMask", v53);
    CFRelease(v53);
  }

  return v17;
}

uint64_t _C3DMeshFillLibraryForSerialization(uint64_t a1, uint64_t a2)
{
  result = CFArrayGetCount(*(a1 + 64));
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
      result = C3DLibraryAddEntry(a2, ValueAtIndex);
    }
  }

  return result;
}

__CFArray *_C3DMeshCopyInstanceVariables(uint64_t a1)
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
  CFDictionarySetValue(v5, @"name", @"sources");
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
  valuePtr = 5;
  v22 = a1 + 184;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"boundingSphere");
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
  valuePtr = 5;
  v22 = a1 + 192;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"boundingBox");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 96;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"meshElements");
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

uint64_t _C3DMeshSearchByID(uint64_t a1, const void *a2)
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

CFIndex _C3DMeshEnumerateSubEntities(CFArrayRef *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1[8]);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[8], i);
      (*(a2 + 16))(a2, ValueAtIndex);
    }
  }

  v8 = CFArrayGetCount(a1[12]);
  if (v8 >= 1)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      v11 = CFArrayGetValueAtIndex(a1[12], j);
      (*(a2 + 16))(a2, v11);
    }
  }

  v12 = a1[14];
  if (v12)
  {
    v13 = CFArrayGetCount(v12);
    if (v13 >= 1)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = CFArrayGetValueAtIndex(a1[14], k);
        (*(a2 + 16))(a2, v16);
      }
    }
  }

  result = a1[18];
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v18 = result;
      for (m = 0; m != v18; ++m)
      {
        v20 = CFArrayGetValueAtIndex(a1[18], m);
        result = (*(a2 + 16))(a2, v20);
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

BOOL OUTLINED_FUNCTION_6_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void C3D::MBNeighborMaxPass::MBNeighborMaxPass(C3D::MBNeighborMaxPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, char a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v5 = &unk_282DC5430;
  *(v5 + 120) = a4;
}

float C3D::MBNeighborMaxPass::setup(C3D::MBNeighborMaxPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "MB-TileMax";
  v2 = (*(*this + 88))(this);
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "MB-TileMax";
  *(v3 + 16) = (*(v2 + 8) * 0.015625);
  result = *(v2 + 12) * 0.015625;
  *(v3 + 18) = result;
  *(v3 + 28) = 115;
  return result;
}

uint64_t C3D::MBNeighborMaxPass::compile(C3D::MBNeighborMaxPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = *(*(this + 3) + 128);
  v4 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(v3, v4);
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::MBNeighborMaxPass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[0] != v4)
  {
    v3->_textures[0] = v4;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v5 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (v3->_textures[1] != v5)
  {
    v3->_textures[1] = v5;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v6 = *(a1 + 120);
  v7 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v8 = 16;
  if (v6)
  {
    v8 = 24;
  }

  v9 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 112) + v8);
  v10 = [(SCNMTLOpenSubdivComputeEvaluator *)v9 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v7, v10);
}

void C3D::MBNeighborMaxPassResource::~MBNeighborMaxPassResource(C3D::MBNeighborMaxPassResource *this)
{
  *this = &unk_282DC54A0;
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
  *this = &unk_282DC54A0;
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

void C3D::TemporalAAPass::setup(C3D::TemporalAAPass *this)
{
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v4);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 31) = 0;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 8) = "VELOCITY";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2u) + 64) = 2;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2u) + 8) = "DEPTH";
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v4);
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  if (*(v3 + 28) == 81)
  {
    *(v3 + 28) = 80;
  }

  *(this + 121) = 0;
}

uint64_t C3D::TemporalAAPass::compile(C3D::TemporalAAPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(this + 120) = ([(SCNMTLOpenSubdivComputeEvaluator *)RenderContext computeEvaluator]& 1) == 0;
  v4 = *(v3 + 16) | (*(v3 + 28) << 32);
  v5 = 0xC6A4A7935BD1E995 * (C3D::Pass::hashName(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    *(this + 121) = 1;
    operator new();
  }

  return result;
}

void *C3D::TemporalAAPass::execute(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  result = C3DEngineContextGetPointOfView(*(a1 + 16));
  if (result)
  {
    result = C3DNodeGetCamera(result);
    if (result)
    {
      v5 = result;
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(a1 + 16), *(a2 + 8));
      v6 = *a2;
      v7 = C3D::Pass::inputTextureAtIndex(a1, 0);
      if (v6->_textures[0] != v7)
      {
        v6->_textures[0] = v7;
        v6->_texturesToBind[0] |= 1uLL;
      }

      v8 = C3D::Pass::inputTextureAtIndex(a1, 1u);
      if (v6->_textures[1] != v8)
      {
        v6->_textures[1] = v8;
        v6->_texturesToBind[0] |= 2uLL;
      }

      v9 = C3D::Pass::inputTextureAtIndex(a1, 2u);
      if (v6->_textures[2] != v9)
      {
        v6->_textures[2] = v9;
        v6->_texturesToBind[0] |= 4uLL;
      }

      v10 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 112) + 8 * (*(a1 + 120) ^ 1) + 16);
      if (v6->_textures[3] != v10)
      {
        v6->_textures[3] = v10;
        v6->_texturesToBind[0] |= 8uLL;
      }

      v11 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 112) + 8 * *(a1 + 120) + 16);
      if (v6->_textures[4] != v11)
      {
        v6->_textures[4] = v11;
        v6->_texturesToBind[0] |= 0x10uLL;
      }

      v12 = C3D::Pass::outputTextureAtIndex(a1, 0);
      if (v6->_textures[5] != v12)
      {
        v6->_textures[5] = v12;
        v6->_texturesToBind[0] |= 0x20uLL;
      }

      v13 = C3D::PassDescriptor::outputAtIndex((a1 + 32), 0);
      TAAJitter = C3DEngineContextGetTAAJitter(*(a1 + 16), 0);
      v15 = *(v13 + 16);
      v16.f32[0] = v15;
      v17 = *(v13 + 18);
      v16.f32[1] = v17;
      *&v18 = 1.0 / v15;
      v19 = 1.0 / v17;
      *(&v18 + 1) = v19;
      v34[0] = vmul_f32(vmul_f32(TAAJitter, COERCE_FLOAT32X2_T(-0.0000305175853)), v16);
      v34[1] = v18;
      MotionBlurIntensity = C3DCameraGetMotionBlurIntensity(v5);
      if (MotionBlurIntensity <= 0.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 1.0 / MotionBlurIntensity;
      }

      v36 = v21;
      v35 = *(a1 + 121);
      SCNMTLComputeCommandEncoder::setBytes(v6, v34, 0x20uLL, 0);
      v22 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 112) + 40);
      v23 = [(SCNMTLOpenSubdivComputeEvaluator *)v22 computeEvaluator];
      __asm { FMOV            V1.2S, #16.0 }

      v29 = vadd_f32(*&vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL), _D1);
      __asm { FMOV            V1.2S, #-1.0 }

      *&v33.width = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(vadd_f32(v29, _D1), vdup_n_s32(0x3D800000u))));
      v33.depth = 1;
      *&v32.width = vdupq_n_s64(0x10uLL);
      v32.depth = 1;
      return SCNMTLComputeCommandEncoder::dispatch(v6, v23, &v33, &v32);
    }
  }

  return result;
}

void C3D::TemporalAAPassResource::~TemporalAAPassResource(C3D::TemporalAAPassResource *this)
{
  *this = &unk_282DC5530;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  for (i = 24; i != 8; i -= 8)
  {
    v5 = *(this + i);
    if (v5)
    {
    }
  }
}

{
  *this = &unk_282DC5530;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = 24;
  while (1)
  {
    v5 = *(this + v4);
    if (v5)
    {
    }

    v4 -= 8;
    if (v4 == 8)
    {

      JUMPOUT(0x21CF07610);
    }
  }
}

C3D::ScratchAllocator *C3D::flattenedNodesForSelectedNodes(C3D *this, const __CFArray *a2, __C3DEngineContext *a3, void *a4)
{
  if (!this && (v7 = scn_default_log(), os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    C3D::flattenedNodesForSelectedNodes(v7, v8, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextGetStats_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!a3)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3D::flattenedNodesForSelectedNodes(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  Scene = C3DEngineContextGetScene(a2);
  Aligned = C3DScratchAllocatorAllocateAligned(a3, 24, 8, 0);
  C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, a3);
  Count = CFArrayGetCount(this);
  if (*(Aligned + 3) < Count)
  {
    v34 = *(Aligned + 2);
    v35 = C3DScratchAllocatorAllocateAligned(*Aligned, 8 * (Count & 0x1FFFFFFF), 8, 0);
    memcpy(v35, v34, 8 * *(Aligned + 2));
    *(Aligned + 2) = v35;
    *(Aligned + 3) = Count;
  }

  StackAllocator = C3DEngineContextGetStackAllocator(a2);
  C3DStackAllocatorPushFrame(StackAllocator);
  v37 = C3DStackAllocatorAllocate(StackAllocator, 0x28uLL);
  *v37 = StackAllocator;
  C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(v37, 32);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(this, i);
      if (C3DGetScene(ValueAtIndex) == Scene)
      {
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = ___ZN3C3D30flattenedNodesForSelectedNodesEPK9__CFArrayP18__C3DEngineContextPv_block_invoke;
        v44[3] = &__block_descriptor_40_e20_q16__0____C3DNode__8l;
        v44[4] = v37;
        C3DNodeApplyHierarchy(ValueAtIndex, v44);
      }
    }
  }

  v40 = v37[9];
  if (v40 != -15)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      if (*(*(v37 + 3) + 2 * v42))
      {
        C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::push_back<C3D::Pass *&>(Aligned, (*(v37 + 2) + v41));
        v40 = v37[9];
      }

      ++v42;
      v41 += 8;
    }

    while (v42 < (v40 + 15));
  }

  C3DStackAllocatorPopFrame(StackAllocator);
  return Aligned;
}

BOOL ___ZN3C3D30flattenedNodesForSelectedNodesEPK9__CFArrayP18__C3DEngineContextPv_block_invoke(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (C3DNodeIsHiddenOrTransparent(a2))
    {
      return 1;
    }

    v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47))) ^ 0x35253C9ADE8F4CA8);
    v5 = *(a1 + 32);
    v7 = a2;
    if (!C3D::Hash<__C3DNode *,C3D::StackAllocator>::insert(v5, (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47), &v7))
    {
      return 1;
    }
  }

  return result;
}

uint64_t C3D::Hash<__C3DNode *,C3D::StackAllocator>::insert(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
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
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    C3D::Hash<__C3DNode *,C3D::StackAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void C3D::Hash<__C3DNode *,C3D::StackAllocator>::_grow(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        C3D::Hash<__C3DNode *,C3D::StackAllocator>::insert(a1, *v3, v2);
      }

      ++v3;
      v2 += 8;
      --v6;
    }

    while (v6);
  }
}

uint64_t _C3DMaterialFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"effectID");
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
    v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%ld", valuePtr);
    Data = C3DSceneSourceGetData(a2);
    v19 = CFDictionaryGetValue(Data, @"effect");
    theDict = CFDictionaryGetValue(v19, v17);
    CFRelease(v17);
  }

  CommonProfile = C3DMaterialGetCommonProfile(a1);
  v21 = CFDictionaryGetValue(theDict, @"commonProfile");
  return C3DFinalizeDeserialization(CommonProfile, a2, v21, a4);
}

uint64_t C3DMaterialGetCommonProfile(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

__CFDictionary *C3DMaterialCopyEffectPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CommonProfile = C3DMaterialGetCommonProfile(a1);
  if (CommonProfile)
  {
    v18 = C3DCopyPropertyList(CommonProfile, a2, a3, a4);
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(Mutable, @"commonProfile", v18);
      CFRelease(v19);
    }
  }

  return Mutable;
}

uint64_t C3DMaterialGetTypeID()
{
  if (C3DMaterialGetTypeID_onceToken != -1)
  {
    C3DMaterialGetTypeID_cold_1();
  }

  return C3DMaterialGetTypeID_typeID;
}

double __C3DMaterialGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DMaterialGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"doubleSided", 0x64u, 3, 0);
  C3DModelPathResolverRegisterProperty(@"cullMode", 0x5Au, 4, 0);
  C3DModelPathResolverRegisterClassEnd();
  result = *&kC3DC3DMaterialContextClassSerializable;
  unk_281740E58 = kC3DC3DMaterialContextClassSerializable;
  unk_281740E68 = *&off_282DC5570;
  qword_281740E10 = _C3DMaterialCopyInstanceVariables;
  qword_281740E50 = _C3DMaterialSearchByID;
  return result;
}

uint64_t C3DMaterialCreate()
{
  if (C3DMaterialGetTypeID_onceToken != -1)
  {
    C3DMaterialGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMaterialGetTypeID_typeID, 88);
  *(Instance + 64) = C3DEffectCommonProfileCreate(Instance);
  *(Instance + 100) = 0;
  *(Instance + 92) = 3840;
  *(Instance + 88) = 257;
  __RasterizerStatesDidChange(Instance);
  return Instance;
}

uint64_t __RasterizerStatesDidChange(uint64_t a1)
{
  C3DRasterizerStatesRelease(*(a1 + 80));
  memset(v5, 0, 28);
  C3DRasterizerStatesDescGetDefault(v5);
  if (*(a1 + 100))
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 90);
  }

  *&v5[0] = __PAIR64__(*(a1 + 91), v2);
  BYTE8(v5[0]) = *(a1 + 89) != 0;
  BYTE9(v5[0]) = *(a1 + 88) != 0;
  v4[0] = v5[0];
  *(v4 + 12) = *(v5 + 12);
  result = C3DRasterizerStatesCreate(v4);
  *(a1 + 80) = result;
  return result;
}

uint64_t C3DMaterialCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMaterialCreate();
  C3DMaterialCopy(a1, v10);
  return v10;
}

uint64_t C3DMaterialCopy(uint64_t a1, uint64_t a2)
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
  *(a2 + 100) = *(a1 + 100);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 93) = *(a1 + 93);
  v20 = *(a1 + 64);
  v21 = *(a2 + 64);
  if (v20)
  {
    C3DEffectCommonProfileCopy(v20, v21);
  }

  else if (v21)
  {
    CFRelease(*(a2 + 64));
    *(a2 + 64) = 0;
  }

  C3DEntityCopyTo(a1, a2);
  Name = C3DMaterialGetName(a1);
  C3DMaterialSetName(a2, Name);
  return __RasterizerStatesDidChange(a2);
}

CFStringRef C3DMaterialSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetName(a1, theString);
}

uint64_t C3DMaterialGetName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetName(a1);
}

uint64_t C3DMaterialCopyForFlatShading(uint64_t a1)
{
  v7 = xmmword_21C2814B0;
  v8 = xmmword_21C27F610;
  v2 = C3DMaterialCreate();
  C3DEffectCommonProfileCopy(*(a1 + 64), *(v2 + 64));
  v3 = 0;
  v4 = *(v2 + 64);
  do
  {
    C3DEffectCommonProfileSetImage(v4, v3, 0);
    C3DEffectCommonProfileSetColor(*(v2 + 64), v3++, &v8);
    v4 = *(v2 + 64);
  }

  while (v3 != 15);
  C3DEffectCommonProfileSetLightingModel(v4, 0);
  C3DEffectCommonProfileSetImage(*(v2 + 64), 2, 0);
  C3DEffectCommonProfileSetColor(*(v2 + 64), 2, &v7);
  C3DEffectCommonProfileSetImage(*(v2 + 64), 6, 0);
  C3DEffectCommonProfileSetColor(*(v2 + 64), 6, &v7);
  C3DMaterialSetFillMode(v2, 1u);
  C3DMaterialSetBlendMode(v2, 5);
  C3DMaterialSetColorBufferWriteMask(v2, 15);
  IsDoubleSided = C3DMaterialIsDoubleSided(a1);
  C3DMaterialSetDoubleSided(v2, IsDoubleSided);
  return v2;
}

void C3DMaterialSetFillMode(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 >= 2)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMaterialSetFillMode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (*(a1 + 91) != a2)
  {
    *(a1 + 91) = a2;
    __RasterizerStatesDidChange(a1);
  }
}

void C3DMaterialSetBlendMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 92) != a2)
  {
    *(a1 + 92) = a2;
    v12 = C3DGetScene(a1);
    C3DScenePostPipelineEvent(v12, 3, a1, 0);
    __RasterizerStatesDidChange(a1);
  }
}

void C3DMaterialSetColorBufferWriteMask(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 93) != a2)
  {
    *(a1 + 93) = a2;
    v12 = C3DGetScene(a1);
    C3DScenePostPipelineEvent(v12, 3, a1, 0);
    __RasterizerStatesDidChange(a1);
  }
}

void C3DMaterialSetDoubleSided(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 100) != a2)
  {
    *(a1 + 100) = a2;
    v12 = C3DGetScene(a1);
    C3DScenePostPipelineEvent(v12, 3, a1, 0);
    __RasterizerStatesDidChange(a1);
  }
}

uint64_t C3DMaterialIsDoubleSided(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 100);
}

uint64_t C3DMaterialGetCommonProfileIfNoTechnique(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 64);
  }
}

void C3DMaterialSetCullMode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 90) != a2)
  {
    *(a1 + 90) = a2;
    __RasterizerStatesDidChange(a1);
  }
}

uint64_t C3DMaterialGetCullMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 90);
}

uint64_t C3DMaterialGetFillMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 91);
}

uint64_t C3DMaterialGetBlendMode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 92);
}

void C3DMaterialSetEnableWriteInDepthBuffer(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 88) != a2)
  {
    *(a1 + 88) = a2;
    v12 = C3DGetScene(a1);
    C3DScenePostPipelineEvent(v12, 3, a1, 0);
    __RasterizerStatesDidChange(a1);
  }
}

BOOL C3DMaterialGetEnableWriteInDepthBuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88) != 0;
}

uint64_t C3DMaterialGetColorBufferWriteMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 93);
}

void C3DMaterialSetEnableReadFromDepthBuffer(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 89) != a2)
  {
    *(a1 + 89) = a2;
    v12 = C3DGetScene(a1);
    C3DScenePostPipelineEvent(v12, 3, a1, 0);
    __RasterizerStatesDidChange(a1);
  }
}

BOOL C3DMaterialGetEnableReadsFromDepthBuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 89) != 0;
}

uint64_t C3DMaterialIsOpaque(uint64_t a1)
{
  Technique = C3DMaterialGetTechnique(a1);
  if (Technique)
  {

    return C3DFXTechniqueIsOpaque(Technique);
  }

  else if (*(a1 + 92) == 5)
  {
    return 1;
  }

  else if (*(a1 + 92))
  {
    return 0;
  }

  else
  {
    CommonProfile = C3DMaterialGetCommonProfile(a1);

    return C3DEffectCommonProfileIsOpaque(CommonProfile);
  }
}

uint64_t C3DMaterialGetTechnique(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

uint64_t C3DMaterialGetBlendStatesUseConstantAlpha(uint64_t a1, char a2)
{
  v3 = *(a1 + 92);
  result = *(a1 + 92) == 0;
  if (!v3 && (a2 & 1) == 0)
  {
    v5 = 1065353216;
    return C3DEffectCommonProfileHasConstantAlpha(*(a1 + 64), &v5);
  }

  return result;
}

uint64_t C3DMaterialGetBlendStates(uint64_t a1, int a2, int a3, int a4, float *a5, float a6)
{
  v6 = *(a1 + 92);
  if (v6 <= 2)
  {
    if (*(a1 + 92))
    {
      if (v6 == 1)
      {

        return C3DBlendStatesDefaultAdditive();
      }

      if (v6 == 2)
      {

        return C3DBlendStatesDefaultSubtract();
      }

LABEL_28:
      v31 = scn_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        C3DMaterialGetBlendStates_cold_3(v31);
      }

      return C3DBlendStatesDefaultOver();
    }

    if (!*(a1 + 64) && (v13 = scn_default_log(), os_log_type_enabled(v13, OS_LOG_TYPE_FAULT)))
    {
      C3DMaterialGetBlendStates_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
      if (a5)
      {
        goto LABEL_24;
      }
    }

    else if (a5)
    {
      goto LABEL_24;
    }

    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DMaterialGetBlendStates_cold_2(v21, v22, v23, v24, v25, v26, v27, v28);
    }

LABEL_24:
    if (a2)
    {
      if (a6 >= 1.0)
      {
        return C3DBlendStatesDefaultReplace();
      }

      v29 = a5;
      v30 = a6;
    }

    else
    {
      v41 = 1.0;
      if (!a3 || !C3DEffectCommonProfileHasConstantAlpha(*(a1 + 64), &v41))
      {
        return C3DBlendStatesDefaultOver();
      }

      if (C3DEffectCommonProfileGetTransparencyMode(*(a1 + 64)) == 1)
      {
        FloatProperty = C3DEffectCommonProfileGetFloatProperty(*(a1 + 64), 18);
        Color = C3DEffectCommonProfileGetColor(*(a1 + 64), 5);
        v34 = Color[1];
        v35 = Color[2];
        v36 = v34 * 0.71516 + *Color * 0.212671 + v35 * 0.072169;
        v37 = (1.0 - (FloatProperty * *Color)) * a6;
        v38 = (1.0 - (FloatProperty * v34)) * a6;
        v39 = (1.0 - (FloatProperty * v35)) * a6;
        v40 = (1.0 - (FloatProperty * v36)) * a6;
        C3DColor4Make(a5, v37, v38, v39, v40);
        return C3DBlendStatesDefaultConstantColor();
      }

      v30 = v41 * a6;
      v29 = a5;
    }

    C3DColor4Make(v29, 0.0, 0.0, 0.0, v30);
    return C3DBlendStatesDefaultConstantAlpha();
  }

  if (*(a1 + 92) > 4u)
  {
    if (v6 != 5)
    {
      if (v6 == 6)
      {

        return C3DBlendStatesDefaultMax();
      }

      goto LABEL_28;
    }

    return C3DBlendStatesDefaultReplace();
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {

      return C3DBlendStatesDefaultScreen();
    }

    goto LABEL_28;
  }

  if (a4)
  {

    return C3DBlendStatesDefaultMultiplicativeSeparate();
  }

  else
  {

    return C3DBlendStatesDefaultMultiplicative();
  }
}

void _C3DMaterialShadingDidUpdate(void *a1)
{
  v2 = C3DGetScene(a1);
  C3DScenePostPipelineEvent(v2, 3, a1, 0);

  C3DMaterialTouchValueStorageModificationCount(a1);
}

void C3DMaterialTouchValueStorageModificationCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 96);
}

CFTypeRef C3DMaterialSetTechnique(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
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

CFTypeRef C3DMaterialSetupSinglePassTechniqueWithProgram(uint64_t a1, const void *a2)
{
  Technique = C3DMaterialGetTechnique(a1);
  if (!Technique)
  {
    Technique = C3DFXTechniqueCreateWithCapacity(1uLL);
    C3DMaterialSetTechnique(a1, Technique);
    CFRelease(Technique);
  }

  if (C3DFXTechniqueGetPassCount(Technique) < 1)
  {
    PassAtIndex = C3DFXPassCreate();
    C3DFXTechniqueAppendPass(Technique, PassAtIndex);
    CFRelease(PassAtIndex);
  }

  else
  {
    PassAtIndex = C3DFXTechniqueGetPassAtIndex(Technique, 0);
  }

  C3DFXPassSetDrawInstruction(PassAtIndex, 2);

  return C3DFXPassSetProgram(PassAtIndex, a2);
}

uint64_t C3DMaterialGetValueStorageModificationCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

id _C3DMaterialCFFinalize(uint64_t a1)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationMaterialWillDie", a1, 0, 1u);
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 72) = 0;
  }

  C3DRasterizerStatesRelease(*(a1 + 80));

  return C3DEntityCFFinalize(a1);
}

__CFString *_C3DMaterialCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DEntityGetName(a1);
  CFStringAppendFormat(Mutable, 0, @"<C3DMaterial %p : %@, ", a1, Name);
  CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(a1);
  if (CommonProfileIfNoTechnique)
  {
    CFStringAppendFormat(Mutable, 0, @"common profile %@", CommonProfileIfNoTechnique);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"custom %@", *(a1 + 72));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t _C3DMaterialInitWithPropertyList(_BYTE *a1, const __CFDictionary *a2, const __CFDictionary *a3, uint64_t a4)
{
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
  v24 = C3DEntityInitWithPropertyList(a1, a2);
  if (v24)
  {
    Value = CFDictionaryGetValue(a2, @"name");
    if (Value)
    {
      C3DMaterialSetName(a1, Value);
    }

    v26 = CFDictionaryGetValue(a2, @"effectID");
    v27 = a2;
    if (v26)
    {
      *valuePtr = 0;
      CFNumberGetValue(v26, kCFNumberLongType, valuePtr);
      v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%ld", *valuePtr);
      v29 = CFDictionaryGetValue(a3, @"__library__");
      Data = C3DSceneSourceGetData(v29);
      v31 = CFDictionaryGetValue(Data, @"effect");
      v27 = CFDictionaryGetValue(v31, v28);
      CFRelease(v28);
    }

    v32 = CFDictionaryGetValue(v27, @"commonProfile");
    if (v32)
    {
      v33 = v32;
      CommonProfile = C3DMaterialGetCommonProfile(a1);
      if ((C3DInitWithPropertyList(CommonProfile, v33, a3, a4) & 1) == 0)
      {
        v35 = scn_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          _os_log_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_DEFAULT, "Warning: Could not deserialize an effect", valuePtr, 2u);
        }
      }
    }

    v36 = CFDictionaryGetValue(a2, @"enableWriteInDepthBuffer");
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v37, kCFNumberIntType, valuePtr);
        a1[88] = valuePtr[0];
      }
    }

    v39 = CFDictionaryGetValue(a2, @"enableReadsFromDepthBuffer");
    if (v39)
    {
      v40 = v39;
      v41 = CFGetTypeID(v39);
      if (v41 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v40, kCFNumberIntType, valuePtr);
        a1[89] = valuePtr[0];
      }
    }

    v42 = CFDictionaryGetValue(a2, @"doubleSided");
    if (v42)
    {
      v43 = v42;
      v44 = CFGetTypeID(v42);
      if (v44 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v43, kCFNumberIntType, valuePtr);
        a1[100] = *valuePtr != 0;
      }
    }

    v45 = CFDictionaryGetValue(a2, @"cullMode");
    if (v45)
    {
      v46 = v45;
      v47 = CFGetTypeID(v45);
      if (v47 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v46, kCFNumberIntType, valuePtr);
        a1[90] = valuePtr[0];
      }
    }

    v48 = CFDictionaryGetValue(a2, @"fillMode");
    if (v48)
    {
      v49 = v48;
      v50 = CFGetTypeID(v48);
      if (v50 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v49, kCFNumberIntType, valuePtr);
        a1[91] = valuePtr[0];
      }
    }

    a1[91] = C3DFillModeFromColladaFillMode[a1[91]];
  }

  else
  {
    v51 = scn_default_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      _C3DMaterialInitWithPropertyList_cold_3(v51);
    }
  }

  return v24;
}

__CFDictionary *_C3DMaterialCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
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
  valuePtr = C3DLibraryGetEntryID(a2, a1);
  v15 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(v14, @"effectID", v15);
  CFRelease(v15);
  if (C3DMaterialGetName(a1))
  {
    Name = C3DMaterialGetName(a1);
    CFDictionarySetValue(v14, @"name", Name);
  }

  v17 = *MEMORY[0x277CBED28];
  v18 = *MEMORY[0x277CBED10];
  if (*(a1 + 88))
  {
    v19 = *MEMORY[0x277CBED28];
  }

  else
  {
    v19 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v14, @"enableWriteInDepthBuffer", v19);
  if (*(a1 + 89))
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  CFDictionarySetValue(v14, @"enableReadsFromDepthBuffer", v20);
  if (*(a1 + 100))
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  CFDictionarySetValue(v14, @"doubleSided", v21);
  v22 = CFNumberCreate(0, kCFNumberCharType, (a1 + 90));
  CFDictionarySetValue(v14, @"cullMode", v22);
  CFRelease(v22);
  v25 = C3DFillModeToColladaFillMode[*(a1 + 91)];
  v23 = CFNumberCreate(0, kCFNumberCharType, &v25);
  CFDictionarySetValue(v14, @"fillMode", v23);
  CFRelease(v23);
  return v14;
}

void *_C3DMaterialFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CommonProfile = C3DMaterialGetCommonProfile(a1);
  return C3DFillLibraryForSerialization(CommonProfile, a2, a3);
}

__CFArray *_C3DMaterialCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 1;
  valuePtr = 5;
  Name = C3DMaterialGetName(a1);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v8 = CFNumberCreate(0, kCFNumberLongType, &Name);
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
  v41 = 1;
  valuePtr = 5;
  Name = C3DMaterialGetCommonProfile(a1);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v12 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v9, @"name", @"commonProfile");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 4;
  Name = a1 + 90;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v16 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v13, @"name", @"cullMode");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = MEMORY[0x277CBF150];
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = 0;
  valuePtr = 4;
  Name = a1 + 91;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v21 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v18, @"name", @"fillMode");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = MEMORY[0x277CBF138];
  v23 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v17);
  v41 = 0;
  valuePtr = 3;
  Name = a1 + 89;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v26 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v23, @"name", @"enableReadsFromDepthBuffer");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = CFDictionaryCreateMutable(0, 4, v22, v17);
  v41 = 0;
  valuePtr = 3;
  Name = a1 + 88;
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v30 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v27, @"name", @"enableWriteInDepthBuffer");
  CFDictionarySetValue(v27, @"type", v28);
  CFDictionarySetValue(v27, @"address", v30);
  CFDictionarySetValue(v27, @"semantic", v29);
  CFArrayAppendValue(Mutable, v27);
  CFRelease(v29);
  CFRelease(v27);
  CFRelease(v30);
  CFRelease(v28);
  v31 = CFDictionaryCreateMutable(0, 4, v22, v17);
  v41 = 0;
  valuePtr = 3;
  Name = a1 + 100;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v34 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v31, @"name", @"doubleSided");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = CFDictionaryCreateMutable(0, 4, v22, v17);
  v41 = 0;
  valuePtr = 2;
  Name = a1 + 48;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v38 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v35, @"name", @"sceneRef");
  CFDictionarySetValue(v35, @"type", v36);
  CFDictionarySetValue(v35, @"address", v38);
  CFDictionarySetValue(v35, @"semantic", v37);
  CFArrayAppendValue(Mutable, v35);
  CFRelease(v37);
  CFRelease(v35);
  CFRelease(v38);
  CFRelease(v36);
  return Mutable;
}

uint64_t _C3DMaterialSearchByID(uint64_t a1, const void *a2)
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

void sub_21C033D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DSceneRegisterEngineContext(uint64_t a1, uint64_t a2)
{
  C3DSceneLock(a1);
  v4 = *(a1 + 168);
  if (v4 == 1)
  {
    v5 = *(a1 + 160);
    v6 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
    *(a1 + 160) = v6;
    *v6 = v5;
    *(*(a1 + 160) + 8) = a2;
    *(a1 + 168) = 2;
  }

  else if (*(a1 + 168))
  {
    v7 = v4 + 1;
    *(a1 + 168) = v7;
    v8 = malloc_type_realloc(*(a1 + 160), 8 * v7, 0x2004093837F09uLL);
    *(a1 + 160) = v8;
    v8[*(a1 + 168) - 1] = a2;
  }

  else
  {
    *(a1 + 168) = 1;
    *(a1 + 160) = a2;
  }

  return C3DSceneUnlock(a1);
}

uint64_t C3DSceneUnregisterEngineContext(uint64_t result, uint64_t a2)
{
  if (*(result + 168))
  {
    v3 = result;
    C3DSceneLock(result);
    v4 = *(v3 + 168);
    if (*(v3 + 168))
    {
      if (v4 == 1)
      {
        if (*(v3 + 160) == a2)
        {
          *(v3 + 168) = 0;
          *(v3 + 160) = 0;
        }
      }

      else
      {
        v5 = 0;
        v6 = 8;
        do
        {
          v7 = *(v3 + 160);
          if (*&v7[8 * v5] == a2)
          {
            if (v4 == 2)
            {
              v8 = *&v7[v6];
              free(v7);
              *(v3 + 160) = v8;
              LOWORD(v4) = 1;
              *(v3 + 168) = 1;
            }

            else
            {
              LOWORD(v4) = v4 - 1;
              *(v3 + 168) = v4;
              *&v7[8 * v5] = *&v7[8 * v4];
            }
          }

          ++v5;
          v6 -= 8;
        }

        while (v5 < v4);
      }
    }

    return C3DSceneUnlock(v3);
  }

  return result;
}

uint64_t C3DSceneEnumerateEngineContexts(uint64_t a1, uint64_t a2)
{
  C3DSceneLock(a1);
  if (*(a1 + 168))
  {
    if (*(a1 + 168) == 1)
    {
      (*(a2 + 16))(a2, *(a1 + 160));
    }

    else
    {
      v4 = 0;
      do
      {
        (*(a2 + 16))(a2, *(*(a1 + 160) + 8 * v4++));
      }

      while (v4 < *(a1 + 168));
    }
  }

  return C3DSceneUnlock(a1);
}

void C3DSceneRegisterNodeConstrains(uint64_t a1, float32x4_t *a2)
{
  Constraints = C3DNodeGetConstraints(a2);
  ControllerManager = C3DSceneGetControllerManager(a1);
  v6 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
  C3DConstraintManagerSetConstraintsForKey(ControllerManager, Constraints, a2, v6);

  CFRelease(v6);
}

uint64_t C3DSceneGetControllerManager(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void *C3DSceneGetParticleManager(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 88);
  if (result)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2 == 0;
  }

  if (!v13)
  {
    result = C3DParticleManagerCreate(a1);
    *(a1 + 88) = result;
  }

  return result;
}

void C3DSceneUnregisterNodeParticleSystem(uint64_t a1, uint64_t a2)
{
  ParticleManager = C3DSceneGetParticleManager(a1, 0);
  if (ParticleManager)
  {

    C3DParticleManagerUnregisterSystem(ParticleManager, a2);
  }
}

void C3DSceneRegisterNodeFilters(CFTypeRef *a1, const void *a2)
{
  Filters = C3DNodeGetFilters(a2);
  if (Filters && CFArrayGetCount(Filters) >= 1)
  {
    Mutable = a1[13];
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      a1[13] = Mutable;
    }

    CFSetAddValue(Mutable, a2);
  }

  else
  {
    v6 = a1[13];
    if (v6)
    {
      CFSetRemoveValue(v6, a2);
      if (!CFSetGetCount(a1[13]))
      {
        CFRelease(a1[13]);
        a1[13] = 0;
      }
    }
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance();

  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", a1, 0, 1u);
}

uint64_t C3DSceneGetRegisteredNodeFilters(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

const __CFDictionary *C3DSceneGetRegisteredCIFilterTechniqueForNode(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 112);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void C3DSceneRegisterCIFilterTechniqueForNode(uint64_t a1, void *key, void *value)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Mutable = *(a1 + 112);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    *(a1 + 112) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

void C3DSceneClearRegisteredCIFilterTechniques(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    CFDictionaryRemoveAllValues(v10);
  }
}

void *C3DSceneNodeWasAdded(uint64_t a1, float32x4_t *a2)
{
  *&v31[5] = *MEMORY[0x277D85DE8];
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DGeometryTrackNode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a1)
  {
    goto LABEL_14;
  }

  v20 = a2[13].i32[3];
  if ((v20 & 0x10000) != 0)
  {
    C3DSceneRegisterNodeConstrains(a1, a2);
    v20 = a2[13].i32[3];
    if ((v20 & 0x40000) == 0)
    {
LABEL_9:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 0x40000) == 0)
  {
    goto LABEL_9;
  }

  ParticleManager = C3DSceneGetParticleManager(a1, 1);
  C3DParticleManagerRegisterSystem(ParticleManager, a2);
  v20 = a2[13].i32[3];
  if ((v20 & 0x40) == 0)
  {
LABEL_10:
    if ((v20 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  C3DSceneRegisterNodePhysicsBody(a1, a2);
  v20 = a2[13].i32[3];
  if ((v20 & 0x100000) == 0)
  {
LABEL_11:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    C3DSceneRegisterNodeFilters(a1, a2);
    if ((a2[13].i32[3] & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  C3DSceneRegisterNodePhysicsField(a1, a2);
  v20 = a2[13].i32[3];
  if ((v20 & 0x4000) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v20 & 0x200) != 0)
  {
LABEL_13:
    C3DLightingSystemAdd(*(a1 + 128), a2);
  }

LABEL_14:
  AudioPlayers = C3DNodeGetAudioPlayers(a2);
  if (AudioPlayers)
  {
    v22 = AudioPlayers;
    Count = CFArrayGetCount(AudioPlayers);
    if (Count >= 1)
    {
      v24 = Count;
      for (i = 0; i != v24; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v22, i);
        if (!ValueAtIndex)
        {
          v27 = scn_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            C3DSceneNodeWasAdded_cold_3(v30, v31, v27);
          }
        }

        C3DAudioManagerAddVoice(ValueAtIndex);
      }
    }
  }

  result = *(a1 + 416);
  if (result)
  {
    return C3DAuthoringEnvironment2NodeAddedToScene(result, a2);
  }

  return result;
}

id *C3DSceneNodeWillBeRemovedOrHidden(uint64_t a1, float32x4_t *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 120);
  if (v12)
  {
    C3DEnginePipelineRemoveNodeFromRendering(v12, a2);
  }

  if (C3DNodeGetConstraints(a2))
  {
    ControllerManager = C3DSceneGetControllerManager(a1);
    v14 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
    C3DConstraintManagerSetConstraintsForKey(ControllerManager, 0, a2, v14);
    CFRelease(v14);
  }

  if (C3DNodeIsJoint(a2))
  {
    C3DEnginePipelineInvalidateAllSkinnersTransfromTreeHandles(*(a1 + 120));
  }

  if (C3DNodeGetHasPhysicsBody(a2))
  {
    C3DSceneUnregisterNodePhysicsBody(a1, a2);
  }

  if (C3DNodeGetHasPhysicsField(a2))
  {
    C3DSceneUnregisterNodePhysicsField(a1, a2);
  }

  if (C3DNodeGetParticleSystems(a2))
  {
    C3DSceneUnregisterNodeParticleSystem(a1, a2);
  }

  if (*(a1 + 128) && C3DNodeHasLight(a2))
  {
    C3DLightingSystemRemove(*(a1 + 128), a2);
  }

  if (C3DNodeGetFilters(a2))
  {
    v15 = *(a1 + 104);
    if (v15)
    {
      CFSetRemoveValue(v15, a2);
      if (!CFSetGetCount(*(a1 + 104)))
      {
        CFRelease(*(a1 + 104));
        *(a1 + 104) = 0;
      }
    }

    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }

  C3DNodeRemoveAllAudioPlayers(a2);
  result = *(a1 + 416);
  if (result)
  {
    return C3DAuthoringEnvironment2NodeRemovedFromScene(result, a2);
  }

  return result;
}

uint64_t C3DSceneGetTypeID()
{
  if (C3DSceneGetTypeID_onceToken != -1)
  {
    C3DSceneGetTypeID_cold_1();
  }

  return C3DSceneGetTypeID_typeID;
}

double __C3DSceneGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DSceneGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"fogColor", 0x160u, 13, 0);
  C3DModelPathResolverRegisterProperty(@"fogDensityExponent", 0x150u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"fogEndDistance", 0x14Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"fogStartDistance", 0x148u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"wantsScreenSpaceReflection", 0x170u, 3, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceReflectionSampleCount", 0x172u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceReflectionMaximumDistance", 0x174u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceReflectionStride", 0x178u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281740630 = kC3DC3DSceneContextClassSerializable;
  unk_281740640 = *&off_282DC55D0;
  result = *&kC3DC3DSceneContextClassSceneLink;
  unk_281740600 = kC3DC3DSceneContextClassSceneLink;
  unk_281740610 = *algn_282DC55F0;
  qword_281740620 = qword_282DC5600;
  unk_281740628 = _C3DSceneSearchByID;
  qword_2817405E8 = _C3DSceneCopyInstanceVariables;
  return result;
}

uint64_t C3DSceneCreate()
{
  v6 = *MEMORY[0x277D85DE8];
  if (C3DSceneGetTypeID_onceToken != -1)
  {
    C3DSceneGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSceneGetTypeID_typeID, 416);
  v1 = Instance;
  if (Instance)
  {
    *(Instance + 48) = Instance;
    *(Instance + 72) = C3DAnimationManagerCreate();
    *(v1 + 80) = C3DConstraintManagerCreate(v1);
    *(v1 + 96) = C3DModelValueStorageCreate();
    *(v1 + 128) = C3DLightingSystemCreate(v1);
    *(v1 + 136) = C3DDynamicBatchingSystemCreate();
    *(v1 + 192) = 0x3F80000042700000;
    *(v1 + 212) = 1065353216;
    if ((C3DWasLinkedBeforeMajorOSYear2017() & 1) == 0)
    {
      *(v1 + 224) = 1065353216;
    }

    *(v1 + 328) = 0;
    *(v1 + 336) = 1065353216;
    C3DColor4Make((v1 + 352), 1.0, 1.0, 1.0, 1.0);
    *(v1 + 368) = 0;
    *(v1 + 370) = 64;
    *(v1 + 372) = 0x41000000447A0000;
    *(v1 + 120) = C3DEnginePipelineCreate(v1);
    v2 = C3DTransformTreeCreate(v1);
    *(v1 + 152) = v2;
    C3DCullingSystemCreate(v2);
    *(v1 + 144) = v3;
    C3DAnimationManagerSetModelValueStorage(*(v1 + 72), *(v1 + 96));
    v5.__sig = 0;
    *v5.__opaque = 0;
    pthread_mutexattr_init(&v5);
    pthread_mutexattr_settype(&v5, 2);
    pthread_mutex_init((v1 + 232), &v5);
    pthread_mutexattr_destroy(&v5);
  }

  return v1;
}

uint64_t C3DSceneCreateCopy(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (C3DSceneGetTypeID_onceToken != -1)
  {
    C3DSceneGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSceneGetTypeID_typeID, 416);
  if (Instance)
  {
    *(Instance + 72) = C3DAnimationManagerCreate();
    *(Instance + 80) = C3DConstraintManagerCreate(Instance);
    *(Instance + 96) = C3DModelValueStorageCreate();
    *(Instance + 128) = C3DLightingSystemCreate(Instance);
    *(Instance + 136) = C3DDynamicBatchingSystemCreate();
    *(Instance + 192) = *(a1 + 192);
    *(Instance + 208) = *(a1 + 208);
    *(Instance + 328) = *(a1 + 328);
    *(Instance + 336) = *(a1 + 336);
    *(Instance + 352) = *(a1 + 352);
    *(Instance + 368) = *(a1 + 368);
    *(Instance + 370) = *(a1 + 370);
    *(Instance + 372) = *(a1 + 372);
    *(Instance + 376) = *(a1 + 376);
    *(Instance + 120) = C3DEnginePipelineCreate(Instance);
    v3 = C3DTransformTreeCreate(a1);
    *(Instance + 152) = v3;
    C3DCullingSystemCreate(v3);
    *(Instance + 144) = v4;
    C3DAnimationManagerSetModelValueStorage(*(Instance + 72), *(Instance + 96));
    if (C3DEntityGetAttribute(a1, @"defaultLight") == *MEMORY[0x277CBED28])
    {
      C3DEntitySetAttribute(Instance, @"defaultLight", *MEMORY[0x277CBED28]);
    }

    v8.__sig = 0;
    *v8.__opaque = 0;
    pthread_mutexattr_init(&v8);
    pthread_mutexattr_settype(&v8, 2);
    pthread_mutex_init((Instance + 232), &v8);
    pthread_mutexattr_destroy(&v8);
    v5 = *(a1 + 64);
    if (v5)
    {
      Copy = C3DNodeCreateCopy(v5, 1);
      C3DSceneSetRootNode(Instance, Copy);
      if (Copy)
      {
        CFRelease(Copy);
      }
    }
  }

  return Instance;
}

void C3DSceneSetRootNode(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 64) != a2)
  {
    C3DEnginePipelineReset(*(a1 + 120));
    v12 = *(a1 + 64);
    if (v12)
    {
      if (C3DGetScene(v12) == a1)
      {
        C3DRemoveSceneRef(*(a1 + 64), a1);
      }

      else
      {
        v13 = scn_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_21BEF7000, v13, OS_LOG_TYPE_DEFAULT, "Warning: C3DSceneSetRootNode - old root node seems to be already connected to another scene", v17, 2u);
        }
      }

      v14 = *(a1 + 64);
      if (v14 == a2)
      {
        goto LABEL_19;
      }

      if (v14)
      {
        CFRelease(v14);
        *(a1 + 64) = 0;
      }

      if (!a2)
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    else if (!a2)
    {
      v14 = 0;
LABEL_19:
      v15 = *(a1 + 384);
      if (v15 != a2)
      {
        if (v15)
        {
          CFRelease(*(a1 + 384));
          *(a1 + 384) = 0;
        }

        if (a2)
        {
          v16 = CFRetain(a2);
        }

        else
        {
          v16 = 0;
        }

        *(a1 + 384) = v16;
        v14 = *(a1 + 64);
      }

      if (v14)
      {
        C3DAddSceneRef(v14, a1);
      }

      return;
    }

    v14 = CFRetain(a2);
LABEL_18:
    *(a1 + 64) = v14;
    goto LABEL_19;
  }
}

void C3DScenePostPipelineEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  if (!a3 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DScenePostPipelineEvent_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  NotificationQueue = C3DEnginePipelineGetNotificationQueue(*(a1 + 120));
  C3DEngineNotificationQueueEnqueueEvent(NotificationQueue, a2, a3, a4);
}

uint64_t C3DSceneGetRootNode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

double C3DSceneGetStartTime(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 176);
}

double C3DSceneGetEndTime(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184);
}

void C3DSceneSetStartTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 176) = a2;
}

void C3DSceneSetEndTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 184) = a2;
}

float C3DSceneGetFrameRate(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 192);
}

void C3DSceneSetFrameRate(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 192) = a2;
}

float C3DSceneGetPlaybackSpeed(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 196);
}

void C3DSceneSetPlaybackSpeed(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 196) = a2;
}

float C3DSceneGetUnit(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

void C3DSceneSetUnit(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 224) = a2;
}

__n128 C3DSceneGetUpAxis(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = a1[13];
  *a2 = result;
  return result;
}

__n128 C3DSceneSetUpAxis(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  a1[13] = *a2;
  return result;
}

void C3DSceneBumpFrameStamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 296);
  C3DLightingSystemNextFrame(*(a1 + 128));
  if ((*(a1 + 382) & 1) == 0)
  {
    C3DTransformTreeNextFrame(*(a1 + 152));
  }
}

uint64_t C3DSceneGetFrameStamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 296);
}

uint64_t C3DSceneGetStateStamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 300);
}

uint64_t C3DSceneGetModelValueStorage(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

uint64_t C3DSceneGetBackgroundEffectSlot(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 304))
  {
    v3 = C3DEffectSlotCreate(a1, 24);
    *(a1 + 304) = v3;
    v4 = C3DTextureSamplerBilinearMipMapClampNoAnisotropy();
    C3DEffectSlotSetTextureSampler(v3, v4);
  }

  return *(a1 + 304);
}

uint64_t C3DSceneGetLightingEnvironmentEffectSlot(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 312))
  {
    v3 = C3DEffectSlotCreate(a1, 25);
    *(a1 + 312) = v3;
    v4 = C3DTextureSamplerBilinearMipMapClampNoAnisotropy();
    C3DEffectSlotSetTextureSampler(v3, v4);
  }

  return *(a1 + 312);
}

uint64_t C3DSceneGetEnginePipeline(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

uint64_t C3DSceneGetLightingSystem(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

uint64_t C3DSceneGetDynamicBatchingSystem(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 136);
}

uint64_t C3DSceneGetCullingSystem(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 144);
}

uint64_t C3DSceneGetTransformTree(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 152);
}

float C3DSceneGetFogDensityExponent(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 336);
}

void C3DSceneSetFogDensityExponent(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 336) = a2;
}

float C3DSceneGetFogEndDistance(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 332);
}

void C3DSceneSetFogEndDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 332) = a2;
}

float C3DSceneGetFogStartDistance(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 328);
}

void C3DSceneSetFogStartDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 328) = a2;
}

__n128 C3DSceneSetFogColor(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  a1[22] = *a2;
  return result;
}

uint64_t C3DSceneGetFogColor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 352;
}

__n64 C3DSceneComputeFogParameters(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = fmaxf(*(a1 + 328) * a2, 0.0);
  v13 = fmaxf(*(a1 + 332) * a2, 0.0);
  v14 = v13 + -0.001;
  if (v14 <= v12)
  {
    v15 = v14;
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  result.n64_f32[0] = 1.0 / (v13 - v16);
  result.n64_f32[1] = -(result.n64_f32[0] * v16);
  return result;
}

uint64_t C3DSceneGetWantsSSR(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 368);
}

void C3DSceneSetWantsSSR(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 368) = a2;
}

uint64_t C3DSceneGetSSRSampleCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 370);
}

void C3DSceneSetSSRSampleCount(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 370) = a2;
}

float C3DSceneGetSSRMaxRayDistance(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 372);
}

void C3DSceneSetSSRMaxRayDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 372) = a2;
}

float C3DSceneGetSSRStride(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 376);
}

void C3DSceneSetSSRStride(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 376) = a2;
}

uint64_t C3DSceneIsPausedForEditing(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 381);
}

void C3DSceneSetPausedForEditing(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 381) = 1;
}

__n128 C3DSceneComputeViewToCubemapMatrix(__n128 *a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  C3DMatrix4x4Invert(a2, &v10);
  v9.n128_u32[2] = 0;
  v9.n128_u64[0] = 0;
  C3DSceneGetUpAxis(a1, &v9);
  memset(v8, 0, sizeof(v8));
  if (v9.n128_f32[2] == 1.0)
  {
    v7 = xmmword_21C27F910;
    v4 = 1.57079633;
LABEL_7:
    C3DMatrix4x4MakeAxisAngleRotation(v8, &v7, v4);
    C3DMatrix4x4Mult(&v10, v8, &v10);
    goto LABEL_8;
  }

  if (v9.n128_f32[2] == -1.0)
  {
    v7 = xmmword_21C27F910;
    v4 = -1.57079633;
    goto LABEL_7;
  }

  if (v9.n128_f32[1] == -1.0)
  {
    v7 = xmmword_21C27F910;
    v4 = -3.14159265;
    goto LABEL_7;
  }

LABEL_8:
  v10.columns[0].f32[2] = -v10.columns[0].f32[2];
  v10.columns[1].f32[2] = -v10.columns[1].f32[2];
  v10.columns[2].f32[2] = -v10.columns[2].f32[2];
  v5 = v10.columns[1];
  *a2 = v10.columns[0];
  *(a2 + 16) = v5;
  result = v10.columns[3];
  *(a2 + 32) = v10.columns[2];
  *(a2 + 48) = result;
  return result;
}

__n128 C3DSceneComputeWorldToCubemapMatrix(__n128 *a1)
{
  v14 = *(MEMORY[0x277D860B8] + 32);
  v15 = *(MEMORY[0x277D860B8] + 16);
  v16 = *(MEMORY[0x277D860B8] + 48);
  v17 = *MEMORY[0x277D860B8];
  v18.n128_u32[2] = 0;
  v18.n128_u64[0] = 0;
  C3DSceneGetUpAxis(a1, &v18);
  if (v18.n128_f32[2] == 1.0)
  {
    v1 = __sincosf_stret(-1.5708);
    v2 = 0;
    v3 = v15;
    v3.i32[1] = LODWORD(v1.__cosval);
    v3.i32[2] = LODWORD(v1.__sinval);
    v4 = v14;
    v4.f32[1] = -v1.__sinval;
    v4.i32[2] = LODWORD(v1.__cosval);
    v19 = v17;
    v20 = v15;
    v21 = v14;
    v22 = v16;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    do
    {
      *(&v23 + v2) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v19 + v2))), v3, *&v19.f32[v2 / 4], 1), v4, *(&v19 + v2), 2), v16, *(&v19 + v2), 3);
      v2 += 16;
    }

    while (v2 != 64);
    return v23;
  }

  if (v18.n128_f32[2] == -1.0)
  {
    v5 = __sincosf_stret(1.5708);
    v6 = 0;
    v7 = v15;
    v7.i32[1] = LODWORD(v5.__cosval);
    v7.i32[2] = LODWORD(v5.__sinval);
    v8 = v14;
    v8.f32[1] = -v5.__sinval;
    v8.i32[2] = LODWORD(v5.__cosval);
    v19 = v17;
    v20 = v15;
    v21 = v14;
    v22 = v16;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    do
    {
      *(&v23 + v6) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v19 + v6))), v7, *&v19.f32[v6 / 4], 1), v8, *(&v19 + v6), 2), v16, *(&v19 + v6), 3);
      v6 += 16;
    }

    while (v6 != 64);
    return v23;
  }

  if (v18.n128_f32[1] == -1.0)
  {
    v9 = __sincosf_stret(3.1416);
    v10 = 0;
    v11 = v15;
    v11.i32[1] = LODWORD(v9.__cosval);
    v11.i32[2] = LODWORD(v9.__sinval);
    v12 = v14;
    v12.f32[1] = -v9.__sinval;
    v12.i32[2] = LODWORD(v9.__cosval);
    v19 = v17;
    v20 = v15;
    v21 = v14;
    v22 = v16;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    do
    {
      *(&v23 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v19 + v10))), v11, *&v19.f32[v10 / 4], 1), v12, *(&v19 + v10), 2), v16, *(&v19 + v10), 3);
      v10 += 16;
    }

    while (v10 != 64);
    return v23;
  }

  return v17;
}

uint64_t C3DSceneGetAuthoringEnvironment2(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 416);
    if (result)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2 == 0;
    }

    if (!v3)
    {
      result = C3DAuthoringEnvironment2Create(v2);
      *(v2 + 416) = result;
    }
  }

  return result;
}

void C3DSceneSetLayerRootNode(uint64_t a1, int a2, void *cf)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a2 >= 4)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DSceneSetLayerRootNode_cold_2();
    }
  }

  v15 = a1 + 384;
  v16 = *(a1 + 384 + 8 * a2);
  if (v16 != cf)
  {
    if (v16)
    {
      CFRelease(v16);
      *(v15 + 8 * a2) = 0;
    }

    if (cf)
    {
      v17 = CFRetain(cf);
    }

    else
    {
      v17 = 0;
    }

    *(v15 + 8 * a2) = v17;
  }

  C3DNodeSetLayerIndex(cf, a2);
  if (cf)
  {
    C3DAddSceneRef(cf, a1);
  }
}

uint64_t C3DSceneGetLayerRootNode(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 >= 4)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DSceneSetLayerRootNode_cold_2();
    }
  }

  return *(a1 + 8 * a2 + 384);
}

void __C3DSceneLightEnvironmentDidChange(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 320);
}

uint64_t C3DSceneGetLightingEnvironmentTimeStamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 320);
}

uint64_t C3DSceneGetAllowsDefaultLightingEnvironmentFallback(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 324);
}

void C3DSceneSetAllowsDefaultLightingEnvironmentFallback(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 324) = a2;
}

id _C3DSceneCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 128) = 0;
  }

  for (i = 384; i != 416; i += 8)
  {
    v6 = *(a1 + i);
    if (v6)
    {
      if (C3DGetSceneRef(v6) != *(a1 + 48))
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_DEFAULT, "Warning: RootNode is not retained by the scene", v24, 2u);
        }
      }

      C3DRemoveSceneRef(*(a1 + i), a1);
    }
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    *(v8 + 24) = 0;
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

  v11 = *(a1 + 96);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 96) = 0;
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 80) = 0;
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 88) = 0;
  }

  v14 = *(a1 + 104);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 104) = 0;
  }

  v15 = *(a1 + 112);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 112) = 0;
  }

  v16 = *(a1 + 304);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 304) = 0;
  }

  v17 = *(a1 + 312);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 312) = 0;
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 136) = 0;
  }

  v19 = *(a1 + 416);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 416) = 0;
  }

  for (j = 384; j != 416; j += 8)
  {
    v21 = *(a1 + j);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + j) = 0;
    }
  }

  v22 = *(a1 + 120);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 120) = 0;
  }

  pthread_mutex_destroy((a1 + 232));
  return C3DEntityCFFinalize(a1);
}

CFStringRef _C3DSceneCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DScene>");
}

CFStringRef _C3DSceneCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DScene>");
}

BOOL _C3DSceneInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
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
    v31 = scn_default_log();
    result = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DSceneInitWithPropertyList_cold_3(v31);
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"startTime");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberDoubleType, (a1 + 176));
  }

  v25 = CFDictionaryGetValue(a2, @"endTime");
  if (v25)
  {
    CFNumberGetValue(v25, kCFNumberDoubleType, (a1 + 184));
  }

  v26 = CFDictionaryGetValue(a2, @"frameRate");
  if (v26)
  {
    CFNumberGetValue(v26, kCFNumberFloatType, (a1 + 192));
  }

  v27 = CFDictionaryGetValue(a2, @"unit");
  if (v27)
  {
    CFNumberGetValue(v27, kCFNumberFloatType, (a1 + 224));
  }

  v33.n128_u32[2] = 0;
  v33.n128_u64[0] = 0;
  v28 = CFDictionaryGetValue(a2, @"upAxis");
  if (v28 && C3DVector3InitWithPropertyList(&v33, v28, a3, a4))
  {
    C3DSceneSetUpAxis(a1, &v33);
  }

  v29 = CFDictionaryGetValue(a2, @"animations");
  if (!v29 || (C3DInitWithPropertyList(*(a1 + 72), v29, a3, a4) & 1) != 0)
  {
    return 1;
  }

  v32 = scn_default_log();
  result = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _C3DSceneInitWithPropertyList_cold_4();
    return 0;
  }

  return result;
}

__CFDictionary *_C3DSceneCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v16)
  {
    v17 = C3DCopyPropertyList(*(a1 + 72), a2, a3, a4);
    if (v17)
    {
      v18 = v17;
      CFDictionaryAddValue(v16, @"animations", v17);
      CFRelease(v18);
    }

    v19 = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 176));
    CFDictionaryAddValue(v16, @"startTime", v19);
    CFRelease(v19);
    v20 = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 184));
    CFDictionaryAddValue(v16, @"endTime", v20);
    CFRelease(v20);
    v21 = CFNumberCreate(0, kCFNumberFloatType, (a1 + 192));
    CFDictionaryAddValue(v16, @"frameRate", v21);
    CFRelease(v21);
    v22 = C3DVector3CopyPropertyList(a1 + 208);
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(v16, @"upAxis", v22);
      CFRelease(v23);
    }

    v24 = CFNumberCreate(0, kCFNumberFloatType, (a1 + 224));
    CFDictionaryAddValue(v16, @"unit", v24);
    CFRelease(v24);
    v25 = *(a1 + 64);
    if (v25)
    {
      v26 = _copySerializedHierarchy(v25, a2);
      if (v26)
      {
        v27 = v26;
        CFDictionaryAddValue(v16, @"nodeTree", v26);
        CFRelease(v27);
      }
    }
  }

  return v16;
}

uint64_t _C3DSceneFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
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
    _C3DSceneFinalizeDeserialization_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  Value = CFDictionaryGetValue(theDict, @"nodeTree");
  if (Value)
  {
    v32 = 0;
    if (_deserializeHierarchy(Value, &v32, a2))
    {
      C3DSceneSetRootNode(a1, v32);
    }

    else
    {
      v25 = scn_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&dword_21BEF7000, v25, OS_LOG_TYPE_DEFAULT, "Warning: Some nodes failed to be deserialized", v31, 2u);
      }

      if (!*(a1 + 64))
      {
        v30 = scn_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          _C3DSceneFinalizeDeserialization_cold_3();
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
    }
  }

  v26 = CFDictionaryGetValue(theDict, @"animations");
  if (!v26 || C3DFinalizeDeserialization(*(a1 + 72), a2, v26, a4))
  {
    return 1;
  }

  v28 = scn_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    _C3DSceneFinalizeDeserialization_cold_4();
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
    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
    result = 0;
    *a4 = MalformedDocumentError;
    return result;
  }

  return 0;
}

void *_C3DSceneFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
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
    _C3DSceneFinalizeDeserialization_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  RootNode = C3DSceneGetRootNode(a1);
  if (RootNode)
  {
    v23 = RootNode;
    C3DLibraryAddEntry(a2, RootNode);
    C3DFillLibraryForSerialization(v23, a2, a3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return C3DFillLibraryForSerialization(result, a2, a3);
  }

  return result;
}

__CFDictionary *_copySerializedHierarchy(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  EntryID = C3DLibraryGetEntryID(a2, a1);
  v7 = EntryID;
  if (EntryID)
  {
    if (EntryID >= 0x7FFFFFFF)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        _copySerializedHierarchy_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  else
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _copySerializedHierarchy_cold_2();
    }
  }

  valuePtr = v7;
  v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"nodeID", v17);
  CFRelease(v17);
  if (C3DNodeHasChildren(a1))
  {
    ChildNodesCount = C3DNodeGetChildNodesCount(a1);
    v19 = CFGetAllocator(a1);
    v20 = CFArrayCreateMutable(v19, ChildNodesCount, MEMORY[0x277CBF128]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 0x40000000;
    v22[2] = ___copySerializedHierarchy_block_invoke;
    v22[3] = &__block_descriptor_tmp_65;
    v22[4] = a2;
    v22[5] = v20;
    C3DNodeApplyChildren(a1, v22);
    CFDictionaryAddValue(Mutable, @"childs", v20);
    CFRelease(v20);
  }

  return Mutable;
}

void ___copySerializedHierarchy_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _copySerializedHierarchy(a2, *(a1 + 32));
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(a1 + 40), v3);

    CFRelease(v4);
  }
}

uint64_t _deserializeHierarchy(const __CFDictionary *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (!a1)
  {
    return v3;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"nodeID");
  if (!Value)
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _deserializeHierarchy_cold_3();
    }

    return 0;
  }

  v7 = Value;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v8 = valuePtr;
  TypeID = C3DNodeGetTypeID();
  valuePtr = C3DLibraryGetRemappedID(a3, v8, TypeID);
  if (!valuePtr)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _deserializeHierarchy_cold_2(v7, v21);
    }

    return 0;
  }

  v10 = C3DNodeGetTypeID();
  Entry = C3DLibraryGetEntry(a3, v10, valuePtr);
  if (!Entry)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      _deserializeHierarchy_cold_1();
    }

    return 0;
  }

  v12 = Entry;
  *a2 = Entry;
  v13 = CFDictionaryGetValue(v3, @"childs");
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    return 1;
  }

  v16 = Count;
  v17 = 0;
  LODWORD(v3) = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
    cf = 0;
    v19 = _deserializeHierarchy(ValueAtIndex, &cf, a3);
    if (cf)
    {
      C3DNodeAddChildNode(v12, cf);
    }

    v3 = (v3 & v19);
    ++v17;
  }

  while (v16 != v17);
  return v3;
}

uint64_t _C3DSceneSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  RootNode = C3DSceneGetRootNode(a1);

  return C3DSearchByID(RootNode, a2);
}

void _C3DSceneEnumerateSubEntities()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _C3DSceneEnumerateSubEntities_cold_1();
  }
}

__CFArray *_C3DSceneCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v5, @"name", @"root");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 176;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v9, @"name", @"startTime");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  v13 = Mutable;
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v14 = MEMORY[0x277CBF150];
  v15 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 184;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v18 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v15, @"name", @"endTime");
  CFDictionarySetValue(v15, @"type", v16);
  CFDictionarySetValue(v15, @"address", v18);
  CFDictionarySetValue(v15, @"semantic", v17);
  CFArrayAppendValue(v13, v15);
  CFRelease(v17);
  CFRelease(v15);
  CFRelease(v18);
  CFRelease(v16);
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v14);
  v66 = 0;
  valuePtr = 7;
  v65 = a1 + 192;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v19, @"name", @"frameRate");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  v23 = v13;
  CFArrayAppendValue(v13, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v24 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 0;
  valuePtr = 7;
  v65 = a1 + 196;
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v27 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v24, @"name", @"playbackSpeed");
  CFDictionarySetValue(v24, @"type", v25);
  CFDictionarySetValue(v24, @"address", v27);
  CFDictionarySetValue(v24, @"semantic", v26);
  CFArrayAppendValue(v13, v24);
  CFRelease(v26);
  CFRelease(v24);
  CFRelease(v27);
  CFRelease(v25);
  v28 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 200;
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v28, @"name", @"attributes");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(v13, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = MEMORY[0x277CBF138];
  v33 = MEMORY[0x277CBF150];
  v34 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 0;
  valuePtr = 9;
  v65 = a1 + 208;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v34, @"name", @"upAxis");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(v23, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, v32, v33);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 224;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v41 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v38, @"name", @"unit");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(v23, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  v42 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 72;
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v45 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v42, @"name", @"animationManager");
  CFDictionarySetValue(v42, @"type", v43);
  CFDictionarySetValue(v42, @"address", v45);
  CFDictionarySetValue(v42, @"semantic", v44);
  CFArrayAppendValue(v23, v42);
  CFRelease(v44);
  CFRelease(v42);
  CFRelease(v45);
  CFRelease(v43);
  v46 = MEMORY[0x277CBF138];
  v47 = MEMORY[0x277CBF150];
  v48 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 304;
  v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v51 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v48, @"name", @"background");
  CFDictionarySetValue(v48, @"type", v49);
  CFDictionarySetValue(v48, @"address", v51);
  CFDictionarySetValue(v48, @"semantic", v50);
  CFArrayAppendValue(v23, v48);
  CFRelease(v50);
  CFRelease(v48);
  CFRelease(v51);
  CFRelease(v49);
  v52 = CFDictionaryCreateMutable(0, 4, v46, v47);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 312;
  v53 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v54 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v55 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v52, @"name", @"environment");
  CFDictionarySetValue(v52, @"type", v53);
  CFDictionarySetValue(v52, @"address", v55);
  CFDictionarySetValue(v52, @"semantic", v54);
  CFArrayAppendValue(v23, v52);
  CFRelease(v54);
  CFRelease(v52);
  CFRelease(v55);
  CFRelease(v53);
  v56 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v47);
  v66 = 0;
  valuePtr = 2;
  v65 = a1 + 48;
  v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v58 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v59 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v56, @"name", @"sceneRef");
  CFDictionarySetValue(v56, @"type", v57);
  CFDictionarySetValue(v56, @"address", v59);
  CFDictionarySetValue(v56, @"semantic", v58);
  CFArrayAppendValue(v23, v56);
  CFRelease(v58);
  CFRelease(v56);
  CFRelease(v59);
  CFRelease(v57);
  v60 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 128;
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v62 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v63 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v60, @"name", @"lightingSystem");
  CFDictionarySetValue(v60, @"type", v61);
  CFDictionarySetValue(v60, @"address", v63);
  CFDictionarySetValue(v60, @"semantic", v62);
  CFArrayAppendValue(v23, v60);
  CFRelease(v62);
  CFRelease(v60);
  CFRelease(v63);
  CFRelease(v61);
  return v23;
}

void sub_21C037DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, char a12)
{
  if (a11)
  {
    if (a12 == 1)
    {
      btAlignedFreeInternal(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t btC3DCollisionDispatcher::setDelegate(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 0x2000);
  *(a1 + 10520) = a2;
  *(a1 + 10528) = objc_opt_respondsToSelector() & 1;
  v3[2337] = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  v3[2338] = result & 1;
  *(a1 + 10504) = 0;
  if (v3[2336] & 1) != 0 || (v3[2337] & 1) != 0 || (result)
  {
    if (v3[2337])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (result)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 10504) = v5 | v6;
  }

  return result;
}

SCNHitTestResult *_hitTestResult(const btCollisionObject *a1, float32x4_t *a2, float32x4_t *a3)
{
  if (!a1 || *(a1 + 66) != 2)
  {
    return 0;
  }

  v3 = C3DHitTestResultCreateFromBulletResults(*(*(a1 + 67) + 72), *a2, *a3);
  v4 = [[SCNHitTestResult alloc] initWithResult:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void *__contact(const btCollisionObject *a1, const btCollisionObject *a2, const btVector3 *a3, const btVector3 *a4, float a5, float a6)
{
  v6 = 0;
  if (a1 && (*(a1 + 66) & 2) != 0)
  {
    v13 = objc_opt_new();
    if ((*(a1 + 264) & 2) != 0 && (v14 = *(a1 + 67)) != 0 && (v6 = v13, (v15 = C3DEntityGetObjCWrapper(*(v14 + 72))) != 0))
    {
      v22 = v15;
      if (a2 && (*(a2 + 264) & 2) != 0 && (v23 = *(a2 + 67)) != 0)
      {
        ObjCWrapper = C3DEntityGetObjCWrapper(*(v23 + 72));
      }

      else
      {
        ObjCWrapper = 0;
      }

      *&v16 = a3->var0.var0[0];
      *&v17 = a3->var0.var0[1];
      *&v18 = a3->var0.var0[2];
      *&v19 = a4->var0.var0[0];
      *&v20 = a4->var0.var0[1];
      *&v21 = a4->var0.var0[2];
      [v6 _fillNodeA:v22 nodeB:ObjCWrapper contactPoint:v16 collisionImpulse:v17 distance:v18 hitFraction:{v19, v20, v21, -a5, a6}];
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t C3DPhysicsWorldAddBodyToWorld(uint64_t result, uint64_t a2, __C3DNode *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a2)
  {
    v12 = result;
    v13 = *(result + 228);
    v14 = *(a2 + 536);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = btAlignedAllocInternal(80, 16);
    btC3DMotionState::btC3DMotionState(v15, a3, v13);
    btC3DMotionState::setOffset(v15, a7);
    *(a2 + 536) = v15;
    if (v15)
    {
      (*(*v15 + 16))(v15, a2 + 16);
    }

    result = C3DNodeIsHidden(a3);
    if ((result & 1) == 0)
    {
      if (C3DNodeIsHidden(a3))
      {
        v16 = scn_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          C3DPhysicsWorldAddBodyToWorld(v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      return (*(*v12 + 176))(v12, a2, a4, a5, a6);
    }
  }

  return result;
}

void btC3DCollisionDispatcher::dispatchContactsToDelegate(btC3DCollisionDispatcher *this)
{
  v2 = *(this + 2635);
  if (v2 <= 0)
  {
    v12 = 0uLL;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v3 = 0;
  v4 = 16 * v2;
  do
  {
    v5 = *(this + 1319) + v3;
    v6 = *v5;
    v7 = *(v5 + 8);
    switch(v7)
    {
      case 2:
        [*(this + 1315) physicsWorld:*(this + 1314) didEndContact:v6];
        break;
      case 1:
        if ([v6 _shouldPostUpdate])
        {
          [*(this + 1315) physicsWorld:*(this + 1314) didUpdateContact:v6];
        }

        break;
      case 0:
        [*(this + 1315) physicsWorld:*(this + 1314) didBeginContact:v6];
        break;
    }

    v3 += 16;
  }

  while (v4 != v3);
  LODWORD(v2) = *(this + 2635);
  v12 = 0uLL;
  if (v2 <= 0 && (v2 & 0x80000000) != 0)
  {
LABEL_15:
    if ((*(this + 2636) & 0x80000000) != 0)
    {
      v8 = *(this + 1319);
      if (v8 && *(this + 10560) == 1)
      {
        btAlignedFreeInternal(v8);
      }

      *(this + 10560) = 1;
      *(this + 1319) = 0;
      *(this + 2636) = 0;
    }

    v9 = 16 * v2;
    v10 = v2 + 1;
    do
    {
      *(*(this + 1319) + v9) = v12;
      v9 += 16;
    }

    while (v10++);
  }

LABEL_22:
  *(this + 2635) = 0;
}

id *C3DSceneRegisterNodePhysicsBody(id *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a1);
  if (result)
  {
    v4 = result;
    result = C3DEntityGetObjCWrapper(a2);
    if (result)
    {
      result = [result physicsBody];
      if (result)
      {
        v5 = result;
        v6 = [v4 physicsWorld];
        v7 = [v5 categoryBitMask];
        v8 = [v5 collisionBitMask];
        v9 = [v5 contactTestBitMask];

        return [v6 addPhysicsBody:v5 nodeRef:a2 colGroup:v7 colMask:v8 colTest:v9];
      }
    }
  }

  return result;
}

id *C3DSceneUnregisterNodePhysicsBody(id *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a1);
  if (result)
  {
    v4 = result;
    result = C3DEntityGetObjCWrapper(a2);
    if (result)
    {
      result = [result physicsBody];
      if (result)
      {
        v5 = result;
        v6 = [result _handle];
        v7 = [v4 physicsWorld];

        return [v7 removePhysicsBody:v5 handle:v6];
      }
    }
  }

  return result;
}

uint64_t btC3DCollisionDispatcher::btC3DCollisionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = btCollisionDispatcher::btCollisionDispatcher(a1, a2);
  *v5 = &unk_282DC5638;
  *(v5 + 10496) = &unk_282DC56E8;
  *(v5 + 10512) = a3;
  *(v5 + 10560) = 1;
  *(v5 + 10552) = 0;
  *(v5 + 10540) = 0;
  btC3DCollisionDispatcher::setDelegate(v5, 0);
  return a1;
}

void sub_21C03AE38(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 10536);
  btCollisionDispatcher::~btCollisionDispatcher(v1);
  _Unwind_Resume(a1);
}

void btC3DCollisionDispatcher::~btC3DCollisionDispatcher(btC3DCollisionDispatcher *this)
{
  btC3DCollisionDispatcher::~btC3DCollisionDispatcher(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC5638;
  *(this + 1312) = &unk_282DC56E8;
  if (*(this + 1315))
  {
    v2 = *(this + 5);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(this + 4) + 8 * i);
        if (v4)
        {
          if (*(v4 + 800) >= 1)
          {
            v5 = 0;
            v6 = (v4 + 16);
            do
            {
              btPersistentManifold::clearUserCache(v4, v6);
              ++v5;
              ++v6;
            }

            while (v5 < *(v4 + 800));
            v2 = *(this + 5);
          }

          *(v4 + 800) = 0;
        }
      }
    }
  }

  v7 = *(this + 1319);
  if (v7 && *(this + 10560) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 10560) = 1;
  *(this + 1319) = 0;
  *(this + 10540) = 0;

  btCollisionDispatcher::~btCollisionDispatcher(this);
}

uint64_t btC3DCollisionDispatcher::getNewManifold(btC3DCollisionDispatcher *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  result = btCollisionDispatcher::getNewManifold(this, a2, a3);
  if (*(this + 2626))
  {
    *(result + 824) = this + 10496;
  }

  return result;
}

uint64_t btCollisionDispatcher::getInternalManifoldPointer(btCollisionDispatcher *this)
{
  if (*(this + 5))
  {
    return *(this + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t btCollisionDispatcher::getInternalManifoldPool(btCollisionDispatcher *this)
{
  return *(this + 14);
}

{
  return *(this + 14);
}

void btC3DCollisionDispatcher::addContact(btC3DCollisionDispatcher *this, const btPersistentManifold *a2, int a3)
{
  v5 = this + 0x2000;
  if ((*(this + 10528) & 1) != 0 || (*(this + 10529) & 1) != 0 || *(this + 10530) == 1)
  {
    v6 = a3;
    *&a2->var1[a3].var14 = objc_alloc_init(SCNPhysicsContact);
    if (v5[2336])
    {
      var3 = a2->var3;
      if (var3)
      {
        var3 = *(var3 + 25);
      }

      v8 = *&a2->var4;
      if (v8)
      {
        v9 = 0;
        if (var3)
        {
          v10 = *(v8 + 200);
          if (v10)
          {
            v9 = (*(v10 + 8) & *(var3 + 3)) != 0 || (*(v10 + 24) & *(var3 + 1)) != 0;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      if (v9 | C3DWasLinkedBeforeMajorOSYear2015())
      {
        v11 = [SCNPhysicsContact _contactWithManifold:a2 index:v6];
        v12 = *(this + 2635);
        if (v12 == *(this + 2636))
        {
          v13 = v12 ? 2 * v12 : 1;
          if (v12 < v13)
          {
            if (v13)
            {
              v14 = btAlignedAllocInternal(16 * v13, 16);
              v12 = *(this + 2635);
            }

            else
            {
              v14 = 0;
            }

            if (v12 >= 1)
            {
              v15 = 0;
              v16 = 16 * v12;
              do
              {
                *(v14 + v15) = *(*(this + 1319) + v15);
                v15 += 16;
              }

              while (v16 != v15);
            }

            v17 = *(this + 1319);
            if (v17)
            {
              if (v5[2368] == 1)
              {
                btAlignedFreeInternal(v17);
              }
            }

            v5[2368] = 1;
            *(this + 1319) = v14;
            *(this + 2636) = v13;
            v12 = *(this + 2635);
          }
        }

        v18 = *(this + 1319) + 16 * v12;
        *v18 = v11;
        *(v18 + 8) = 0;
        ++*(this + 2635);
      }
    }
  }
}

uint64_t btC3DCollisionDispatcher::updateContact(btC3DCollisionDispatcher *this, const btPersistentManifold *a2, int a3)
{
  v6 = this + 0x2000;
  if ((*(this + 10529) & 1) == 0)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      btC3DCollisionDispatcher::updateContact(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  var3 = a2->var3;
  v16 = *&a2->var4;
  if (var3)
  {
    var3 = *(var3 + 25);
  }

  v17 = 0;
  if (v16)
  {
    if (var3)
    {
      v18 = *(v16 + 200);
      if (v18)
      {
        v17 = (*(v18 + 8) & *(var3 + 3)) != 0 || (*(v18 + 24) & *(var3 + 1)) != 0;
      }
    }
  }

  result = C3DWasLinkedBeforeMajorOSYear2015();
  if (v17 | result)
  {
    v20 = [SCNPhysicsContact _contactWithManifold:a2 index:a3];
    v21 = *(this + 2635);
    if (v21 == *(this + 2636))
    {
      v22 = v21 ? 2 * v21 : 1;
      if (v21 < v22)
      {
        if (v22)
        {
          v23 = btAlignedAllocInternal(16 * v22, 16);
          v21 = *(this + 2635);
        }

        else
        {
          v23 = 0;
        }

        if (v21 >= 1)
        {
          v24 = 0;
          v25 = 16 * v21;
          do
          {
            *(v23 + v24) = *(*(this + 1319) + v24);
            v24 += 16;
          }

          while (v25 != v24);
        }

        v26 = *(this + 1319);
        if (v26)
        {
          if (v6[2368] == 1)
          {
            btAlignedFreeInternal(v26);
          }
        }

        v6[2368] = 1;
        *(this + 1319) = v23;
        *(this + 2636) = v22;
        v21 = *(this + 2635);
      }
    }

    v27 = *(this + 1319) + 16 * v21;
    *v27 = v20;
    *(v27 + 8) = 1;
    ++*(this + 2635);
    return [v20 _prepareUpdate];
  }

  return result;
}

void btC3DCollisionDispatcher::deleteContact(btC3DCollisionDispatcher *this, const btPersistentManifold *a2, int a3)
{
  v6 = this + 0x2000;
  if ((*(this + 10530) & 1) == 0)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      btC3DCollisionDispatcher::deleteContact(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (v6[2338] == 1)
  {
    var3 = a2->var3;
    if (var3)
    {
      var3 = *(var3 + 25);
    }

    v16 = *&a2->var4;
    if (v16)
    {
      v17 = 0;
      if (var3)
      {
        v18 = *(v16 + 200);
        if (v18)
        {
          v17 = (*(v18 + 8) & *(var3 + 3)) != 0 || (*(v18 + 24) & *(var3 + 1)) != 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }

    if (v17 | C3DWasLinkedBeforeMajorOSYear2015())
    {
      v19 = [SCNPhysicsContact _contactWithManifold:a2 index:a3];
      v20 = *(this + 2635);
      if (v20 == *(this + 2636))
      {
        v21 = v20 ? 2 * v20 : 1;
        if (v20 < v21)
        {
          if (v21)
          {
            v22 = btAlignedAllocInternal(16 * v21, 16);
            v20 = *(this + 2635);
          }

          else
          {
            v22 = 0;
          }

          if (v20 >= 1)
          {
            v23 = 0;
            v24 = 16 * v20;
            do
            {
              *(v22 + v23) = *(*(this + 1319) + v23);
              v23 += 16;
            }

            while (v24 != v23);
          }

          v25 = *(this + 1319);
          if (v25)
          {
            if (v6[2368] == 1)
            {
              btAlignedFreeInternal(v25);
            }
          }

          v6[2368] = 1;
          *(this + 1319) = v22;
          *(this + 2636) = v21;
          v20 = *(this + 2635);
        }
      }

      v26 = *(this + 1319) + 16 * v20;
      *v26 = v19;
      *(v26 + 8) = 2;
      ++*(this + 2635);
    }
  }
}

void sub_21C03B53C(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 10536);
  btCollisionDispatcher::~btCollisionDispatcher(v1);
  _Unwind_Resume(a1);
}

void btC3DDebugDraw::drawLine(btC3DDebugDraw *this, float32x4_t *a2, float32x4_t *a3, const btVector3 *a4)
{
  var3 = this->var3;
  if (var3)
  {
    var2 = this->var2;
    v7 = vmulq_n_f32(*a2, var2);
    v8 = vmulq_n_f32(*a3, var2);
    v9 = *a4->var0.var0;
    v10 = a4->var0.var0[2];
    v11 = 1065353216;
    C3DAuthoringEnvironmentAppendDebugSegment(var3, 0, &v9, 0, v7, v8);
  }
}

void btC3DDebugDraw::drawLine(btC3DDebugDraw *this, float32x4_t *a2, float32x4_t *a3, const btVector3 *a4, const btVector3 *a5)
{
  var3 = this->var3;
  if (var3)
  {
    var2 = this->var2;
    v8 = vmulq_n_f32(*a2, var2);
    v9 = vmulq_n_f32(*a3, var2);
    v13 = *a4->var0.var0;
    v14 = a4->var0.var0[2];
    v15 = 1065353216;
    v10 = *a5->var0.var0;
    v11 = a5->var0.var0[2];
    v12 = 1065353216;
    C3DAuthoringEnvironmentAppendDebugSegment2(var3, 0, &v13, &v10, 0, v8, v9);
  }
}

void btC3DDebugDraw::drawSphere(btC3DDebugDraw *this, float a2, const btTransform *a3, const btVector3 *a4)
{
  var3 = this->var3;
  if (var3)
  {
    *&v20 = *a4->var0.var0;
    DWORD2(v20) = LODWORD(a4->var0.var0[2]);
    HIDWORD(v20) = 1065353216;
    v7 = a3->var0.var0[1];
    v8 = a3->var0.var0[2];
    var1 = a3->var1;
    v10 = vtrn1q_s32(a3->var0.var0[0], v7);
    v11.n128_u64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
    v10.i64[1] = v8.u32[0];
    v12.n128_u64[0] = vzip2_s32(*a3->var0.var0[0].var0.var0, *v7.i8);
    *&v12.n128_i8[8] = vzip2_s32(*v8.i8, 0);
    v11.n128_u64[1] = vextq_s8(v8, v8, 8uLL).u32[0];
    v16[0] = v10;
    v16[1] = v12;
    v16[2] = v11;
    v17 = *var1.var0.var0;
    v18 = var1.var0.var0[2];
    v19 = 1065353216;
    if (this->var2 == 1.0)
    {
      var2 = 1.0;
    }

    else
    {
      v15.i32[2] = 0;
      v15.i64[0] = 0;
      C3DMatrix4x4GetTranslation(v16, &v15);
      v15 = vmulq_n_f32(v15, this->var2);
      C3DMatrix4x4SetTranslation(v16, v15);
      var3 = this->var3;
      var2 = this->var2;
    }

    *&v14 = a2 * 1.02 * var2;
    C3DAuthoringEnvironmentAppendDebugBoundingSphere(var3, 0, v14 << 32, v16, &v20);
  }
}

uint64_t btIDebugDraw::drawSphere(btIDebugDraw *this, const btVector3 *a2, float a3, const btVector3 *a4)
{
  v6[0] = xmmword_21C27F910;
  v6[1] = xmmword_21C27F8C0;
  v4 = *a2;
  v6[2] = xmmword_21C27F600;
  v6[3] = v4;
  return (*(*this + 32))(this, v6, a4, a3);
}

uint64_t btIDebugDraw::drawTriangle(btIDebugDraw *this, const btVector3 *a2, const btVector3 *a3, const btVector3 *a4, const btVector3 *a5, float a6)
{
  (*(*this + 16))(this, a2, a3, a5, a6);
  (*(*this + 16))(this, a3, a4, a5);
  v11 = *(*this + 16);

  return v11(this, a4, a2, a5);
}

void btC3DDebugDraw::drawContactPoint(btC3DDebugDraw *this, float32x4_t *a2, float32x4_t *a3, float a4, int a5, const btVector3 *a6)
{
  var3 = this->var3;
  if (var3)
  {
    var2 = this->var2;
    v9 = vmulq_n_f32(*a2, var2);
    v10 = vmlaq_n_f32(v9, vmulq_n_f32(*a3, a4), var2);
    v11 = *a6->var0.var0;
    v12 = a6->var0.var0[2];
    v13 = 1065353216;
    C3DAuthoringEnvironmentAppendDebugSegment(var3, 0, &v11, 0, v9, v10);
  }
}

void btC3DDebugDraw::reportErrorWarning(btC3DDebugDraw *this, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = a2;
    _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_DEFAULT, "Warning: PhysicsWarn: %s", &v4, 0xCu);
  }
}

uint64_t btIDebugDraw::drawAabb(btIDebugDraw *this, float32x4_t *a2, float32x4_t *a3, const btVector3 *a4)
{
  v6 = 0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(vsubq_f32(*a3, *a2), v7);
  v9 = vmulq_f32(vaddq_f32(*a3, *a2), v7);
  v9.i32[3] = 0;
  v21 = xmmword_21C280340;
  v10 = v8.f32[2];
  v17 = v9;
  v18 = v8.i64[0];
  while (1)
  {
    v11 = 0;
    v12 = v21;
    v13 = *(&v21 + 2);
    do
    {
      *v14.f32 = vmul_f32(*v8.f32, v12);
      *(&v21 + v11) = -*(&v21 + v11);
      v14.f32[2] = v10 * v13;
      v12 = v21;
      *v15.f32 = vmul_f32(*v8.f32, *&v21);
      v13 = *(&v21 + 2);
      v15.f32[2] = v10 * *(&v21 + 2);
      v14.i32[3] = 0;
      v15.i32[3] = 0;
      v19 = vaddq_f32(v15, v9);
      v20 = vaddq_f32(v14, v9);
      result = (*(*this + 16))(this, &v20, &v19, a4);
      v9 = v17;
      v8.i64[0] = v18;
      v11 += 4;
    }

    while (v11 != 12);
    v21 = xmmword_21C2A2150;
    if (v6 == 3)
    {
      break;
    }

    *(&v21 + v6) = -*(&v21 + v6);
    ++v6;
  }

  return result;
}

uint64_t btIDebugDraw::drawTransform(btIDebugDraw *this, const btTransform *a2, float a3)
{
  var1 = a2->var1;
  v6 = vmulq_f32(LODWORD(a3), a2->var0.var0[0]);
  v7 = vmulq_f32(LODWORD(a3), a2->var0.var0[1]);
  v8 = vmulq_f32(LODWORD(a3), a2->var0.var0[2]);
  v8.i32[3] = 0;
  *v9.f32 = vadd_f32(vpadd_f32(*v6.i8, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  *&v9.u32[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
  v21 = vaddq_f32(var1, v9);
  v22 = var1;
  v20 = xmmword_21C2A2160;
  (*(*this + 16))(this, &v22, &v21, &v20);
  LODWORD(v10) = 0;
  *(&v10 + 1) = a3;
  v11 = vmulq_f32(v10, a2->var0.var0[0]);
  v12 = vmulq_f32(v10, a2->var0.var0[1]);
  v13 = vmulq_f32(v10, a2->var0.var0[2]);
  v13.i32[3] = 0;
  *v11.f32 = vadd_f32(vpadd_f32(*v11.f32, *v12.i8), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
  *&v11.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
  v20 = xmmword_21C2A2170;
  v21 = vaddq_f32(v11, v22);
  (*(*this + 16))(this, &v22, &v21, &v20);
  v14.i64[0] = 0;
  v14.i64[1] = LODWORD(a3);
  v15 = vmulq_f32(v14, a2->var0.var0[0]);
  v16 = vmulq_f32(v14, a2->var0.var0[1]);
  v17 = vmulq_f32(v14, a2->var0.var0[2]);
  v17.i32[3] = 0;
  *v15.f32 = vadd_f32(vpadd_f32(*v15.f32, *v16.i8), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  *&v15.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v20 = xmmword_21C2A2180;
  v21 = vaddq_f32(v15, v22);
  return (*(*this + 16))(this, &v22, &v21, &v20);
}

void btIDebugDraw::drawArc(btIDebugDraw *this, float32x4_t *a2, float32x4_t *a3, int8x16_t *a4, float a5, float a6, float a7, float a8, const btVector3 *a9, int a10, float a11)
{
  v17 = *a4;
  v18 = vsubq_f32(vmulq_f32(*a3, vextq_s8(vextq_s8(v17, v17, 0xCuLL), *a4, 8uLL)), vmulq_f32(*a4, vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL)));
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v19.i32[3] = 0;
  v34 = v19;
  v20 = a8 - a7;
  if (((a8 - a7) / (a11 * 0.017453)) <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = ((a8 - a7) / (a11 * 0.017453));
  }

  v32 = vmulq_n_f32(v17, a5);
  v22 = __sincosf_stret(a7);
  v23 = vmulq_n_f32(v32, v22.__cosval);
  v23.i32[3] = 0;
  v35 = vmulq_n_f32(v34, a6);
  v24 = vmulq_n_f32(v35, v22.__sinval);
  v24.i32[3] = 0;
  v40 = vaddq_f32(vaddq_f32(*a2, v23), v24);
  if (a10)
  {
    (*(*this + 16))(this, a2, &v40, a9);
  }

  v25 = a5;
  if (v21 >= 1)
  {
    v26 = v35;
    v26.i32[3] = 0;
    v36 = v26;
    v27 = v21;
    v28 = 1;
    do
    {
      v38 = vmulq_n_f32(*a4, v25);
      v29 = __sincosf_stret(((v20 * v28) / v27) + a7);
      v30 = vmulq_n_f32(v38, v29.__cosval);
      v30.i32[3] = 0;
      v31 = vmulq_n_f32(v36, v29.__sinval);
      v31.i32[3] = 0;
      v39 = vaddq_f32(vaddq_f32(*a2, v30), v31);
      (*(*this + 16))(this, &v40, &v39, a9);
      v25 = a5;
      v40 = v39;
      ++v28;
      --v21;
    }

    while (v21);
  }

  if (a10)
  {
    (*(*this + 16))(this, a2, &v40, a9);
  }
}

void btIDebugDraw::drawSpherePatch(btIDebugDraw *this, float32x4_t *a2, float32x4_t *a3, int8x16_t *a4, float a5, float a6, float a7, float a8, float a9, const btVector3 *a10, float a11)
{
  v69 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = vmulq_n_f32(*a3, a5);
  v16 = vsubq_f32(*a2, v15);
  v15.i32[3] = 0;
  v17 = vaddq_f32(*a2, v15);
  v16.i32[3] = 0;
  v65 = v16;
  v66 = v17;
  v18 = a11 * 0.017453;
  v19 = vsubq_f32(vmulq_f32(v14, vextq_s8(vextq_s8(*a4, *a4, 0xCuLL), *a4, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), *a4));
  v62 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v55 = a6 <= -1.5708;
  if (a6 > -1.5708)
  {
    v20 = a6;
  }

  else
  {
    v20 = v18 + -1.5708;
  }

  v56 = a7 >= 1.5708;
  if (a7 < 1.5708)
  {
    v21 = a7;
  }

  else
  {
    v21 = 1.5708 - v18;
  }

  if (v20 > v21)
  {
    v55 = 1;
    v56 = 1;
    v21 = 1.5708 - v18;
    v20 = v18 + -1.5708;
  }

  v22 = 0;
  v23 = v62;
  v23.i32[3] = 0;
  v63 = v23;
  v24 = v21 - v20;
  if ((v24 / v18) <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = (v24 / v18);
  }

  v26 = a8 <= a9;
  v27 = a8 > a9;
  v28 = 3.1416;
  if (a8 <= a9)
  {
    v28 = a9;
  }

  v29 = a9 - a8;
  if (v26)
  {
    v30 = a8;
  }

  else
  {
    v30 = v18 + -3.1416;
  }

  if (v29 >= 6.2832)
  {
    v27 = 1;
  }

  v59 = v27;
  v31 = ((v28 - v30) / v18);
  if (v31 <= 1)
  {
    v31 = 1;
  }

  v32 = v24 / v25;
  v33 = (v28 - v30) / v31;
  v34 = 16 * v31;
  v35 = &v67;
  v36 = &v68;
  v53 = v25;
  while (2)
  {
    v58 = v36;
    v37 = __sincosf_stret(v20 + (v22 * v32));
    v38 = 0;
    v39 = 0;
    v40 = v37.__cosval * a5;
    v41 = v22 == 0;
    v42 = v22 == v25;
    v43 = v22 == v25 && v55;
    if (v42)
    {
      v41 = 1;
    }

    v57 = v41;
    do
    {
      v44 = __sincosf_stret(v30 + (v38 * v33));
      v45 = vmulq_n_f32(*a4, v40 * v44.__cosval);
      v45.i32[3] = 0;
      v46 = vmulq_n_f32(v63, v40 * v44.__sinval);
      v46.i32[3] = 0;
      v47 = vaddq_f32(vaddq_f32(*a2, v45), v46);
      v48 = vmulq_n_f32(*a3, v37.__sinval * a5);
      v48.i32[3] = 0;
      *&v35[v39] = vaddq_f32(v47, v48);
      if (v22)
      {
        v49 = &v58[v39];
      }

      else
      {
        if (!v56)
        {
          goto LABEL_34;
        }

        v49 = &v65;
      }

      (*(*this + 16))(this, v49, &v35[v39], a10);
LABEL_34:
      if (v39)
      {
        (*(*this + 16))(this, &v35[v39 - 16], &v35[v39], a10);
        if (!v43)
        {
          goto LABEL_37;
        }

LABEL_36:
        (*(*this + 16))(this, &v66, &v35[v39], a10);
        goto LABEL_37;
      }

      v64 = *v35;
      if (v43)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v59)
      {
        if (v34 != v39)
        {
          goto LABEL_47;
        }

        v50 = &v64;
LABEL_46:
        (*(*this + 16))(this, v50, &v35[v39], a10);
        goto LABEL_47;
      }

      if (v39)
      {
        v51 = v34 == v39;
      }

      else
      {
        v51 = 1;
      }

      v52 = v57;
      if (!v51)
      {
        v52 = 0;
      }

      v50 = a2;
      if (v52)
      {
        goto LABEL_46;
      }

LABEL_47:
      v39 += 16;
      ++v38;
    }

    while (v34 + 16 != v39);
    v36 = v35;
    v35 = v58;
    v25 = v53;
    v42 = v22++ == v53;
    if (!v42)
    {
      continue;
    }

    break;
  }
}

uint64_t btIDebugDraw::drawBox(btIDebugDraw *this, const btVector3 *a2, const btVector3 *a3, const btVector3 *a4)
{
  v8 = a2->var0.var0[1];
  v29 = a2->var0.var0[0];
  *&v30 = v8;
  HIDWORD(v30) = LODWORD(a2->var0.var0[2]);
  v31 = 0;
  *v27 = a3->var0.var0[0];
  *&v27[4] = __PAIR64__(HIDWORD(v30), LODWORD(v8));
  v28 = 0;
  (*(*this + 16))(this, &v29, v27);
  v9 = a2->var0.var0[2];
  *&v30 = a2->var0.var0[1];
  *(&v30 + 1) = v9;
  v31 = 0;
  v10 = *a3->var0.var0;
  LODWORD(v29) = *a3->var0.var0;
  *v27 = v10;
  *&v27[8] = v9;
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v11 = a3->var0.var0[1];
  v29 = a3->var0.var0[0];
  *&v30 = v11;
  HIDWORD(v30) = LODWORD(a2->var0.var0[2]);
  v31 = 0;
  *v27 = a2->var0.var0[0];
  *&v27[4] = __PAIR64__(HIDWORD(v30), LODWORD(v11));
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v12 = a2->var0.var0[2];
  *&v30 = a3->var0.var0[1];
  *(&v30 + 1) = v12;
  v31 = 0;
  v13 = *a2->var0.var0;
  LODWORD(v29) = *a2->var0.var0;
  *v27 = v13;
  *&v27[8] = v12;
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v29 = a2->var0.var0[0];
  v30 = *&a2->var0.var0[1];
  v31 = 0;
  *v27 = v29;
  *&v27[4] = v30;
  *&v27[8] = a3->var0.var0[2];
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v29 = a3->var0.var0[0];
  v30 = *&a2->var0.var0[1];
  v31 = 0;
  *v27 = v29;
  *&v27[4] = v30;
  *&v27[8] = a3->var0.var0[2];
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v14 = a3->var0.var0[0];
  v15 = a2->var0.var0[2];
  v31 = 0;
  *v27 = v14;
  v16 = *&a3->var0.var0[1];
  v29 = v14;
  v30 = __PAIR64__(LODWORD(v15), v16);
  *&v27[4] = v16;
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v17 = a2->var0.var0[0];
  v18 = a2->var0.var0[2];
  v31 = 0;
  *v27 = v17;
  v19 = *&a3->var0.var0[1];
  v29 = v17;
  v30 = __PAIR64__(LODWORD(v18), v19);
  *&v27[4] = v19;
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v20 = a2->var0.var0[1];
  v29 = a2->var0.var0[0];
  *&v30 = v20;
  HIDWORD(v30) = LODWORD(a3->var0.var0[2]);
  v31 = 0;
  *v27 = a3->var0.var0[0];
  *&v27[4] = __PAIR64__(HIDWORD(v30), LODWORD(v20));
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v21 = a3->var0.var0[2];
  *&v30 = a2->var0.var0[1];
  *(&v30 + 1) = v21;
  v31 = 0;
  v22 = *a3->var0.var0;
  LODWORD(v29) = *a3->var0.var0;
  *v27 = v22;
  *&v27[8] = v21;
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v23 = a3->var0.var0[1];
  v29 = a3->var0.var0[0];
  *&v30 = v23;
  HIDWORD(v30) = LODWORD(a3->var0.var0[2]);
  v31 = 0;
  *v27 = a2->var0.var0[0];
  *&v27[4] = __PAIR64__(HIDWORD(v30), LODWORD(v23));
  v28 = 0;
  (*(*this + 16))(this, &v29, v27, a4);
  v24 = a3->var0.var0[2];
  *&v30 = a3->var0.var0[1];
  *(&v30 + 1) = v24;
  v31 = 0;
  v25 = *a2->var0.var0;
  LODWORD(v29) = *a2->var0.var0;
  *v27 = v25;
  *&v27[8] = v24;
  v28 = 0;
  return (*(*this + 16))(this, &v29, v27, a4);
}

uint64_t btIDebugDraw::drawBox(btIDebugDraw *this, float32x4_t *a2, float32x4_t *a3, const btTransform *a4, const btVector3 *a5)
{
  v10 = *a2;
  v11 = a2->f32[2];
  v12 = *a2;
  v12.f32[2] = v11;
  v13 = a4->var0.var0[2];
  var1 = a4->var1;
  v15 = vmulq_f32(v12, v13);
  v12.i32[3] = 0;
  v16 = a4->var0.var0[0];
  v17 = a4->var0.var0[1];
  v18 = vmulq_f32(v12, a4->var0.var0[0]);
  v19 = vmulq_f32(v12, v17);
  v15.i32[3] = 0;
  v20 = &a2->f32[1];
  *v19.f32 = vadd_f32(vpadd_f32(*v18.i8, *v19.f32), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
  *&v19.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
  v162 = vaddq_f32(v19, var1);
  v19.i32[0] = a3->i32[0];
  v21 = &a3->f32[1];
  v19.i32[1] = v10.i32[1];
  v22 = &a2->f32[2];
  v19.i64[1] = LODWORD(v11);
  v23 = vmulq_f32(v16, v19);
  v24 = vmulq_f32(v17, v19);
  v25 = vmulq_f32(v13, v19);
  v25.i32[3] = 0;
  *v23.f32 = vadd_f32(vpadd_f32(*v23.f32, *v24.i8), vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)));
  *&v23.u32[2] = vpadd_f32(vpadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)), 0);
  v161 = vaddq_f32(var1, v23);
  (*(*this + 16))(this, &v162, &v161, a5);
  v26 = a2->f32[2];
  v27 = *a3;
  v27.i32[3] = 0;
  v28 = v27;
  v28.f32[1] = *v20;
  v28.f32[2] = v26;
  v29 = a4->var0.var0[0];
  v30 = a4->var0.var0[1];
  v31 = vmulq_f32(a4->var0.var0[0], v28);
  v32 = vmulq_f32(v28, v30);
  v33 = a4->var0.var0[2];
  v34 = a4->var1;
  v35 = vmulq_f32(v28, v33);
  v35.i32[3] = 0;
  *v31.f32 = vadd_f32(vpadd_f32(*v31.f32, *v32.i8), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
  *&v31.u32[2] = vpadd_f32(vpadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), 0);
  v27.i32[1] = HIDWORD(a3->i64[0]);
  v162 = vaddq_f32(v31, v34);
  v27.f32[2] = v26;
  v36 = vmulq_f32(v29, v27);
  v37 = vmulq_f32(v30, v27);
  v38 = vmulq_f32(v33, v27);
  v38.i32[3] = 0;
  *v36.f32 = vadd_f32(vpadd_f32(*v36.f32, *v37.i8), vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)));
  *&v36.u32[2] = vpadd_f32(vpadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)), 0);
  v161 = vaddq_f32(v34, v36);
  (*(*this + 16))(this, &v162, &v161, a5);
  v39 = *a3;
  v40 = a2->i32[2];
  v41.i32[0] = a2->i32[0];
  v41.i32[1] = HIDWORD(a3->i64[0]);
  v39.i32[2] = v40;
  v42 = v39;
  v42.i32[3] = 0;
  v43 = a4->var0.var0[2];
  v44 = a4->var1;
  v45 = vmulq_f32(v39, v43);
  v46 = a4->var0.var0[0];
  v47 = a4->var0.var0[1];
  v48 = vmulq_f32(v42, a4->var0.var0[0]);
  v49 = vmulq_f32(v42, v47);
  v45.i32[3] = 0;
  *v49.f32 = vadd_f32(vpadd_f32(*v48.i8, *v49.f32), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
  *&v49.u32[2] = vpadd_f32(vpadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)), 0);
  v162 = vaddq_f32(v49, v44);
  v41.i32[2] = v40;
  v50 = vmulq_f32(v46, v41);
  v51 = vmulq_f32(v47, v41);
  v52 = vmulq_f32(v43, v41);
  v52.i32[3] = 0;
  *v50.f32 = vadd_f32(vpadd_f32(*v50.f32, *v51.i8), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
  *&v50.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
  v161 = vaddq_f32(v44, v50);
  (*(*this + 16))(this, &v162, &v161, a5);
  v53 = *a2;
  v53.i32[3] = 0;
  v54 = v53;
  v54.f32[1] = *v21;
  v54.i32[2] = a2->i64[1];
  v55 = a4->var0.var0[1];
  v56 = vmulq_f32(a4->var0.var0[0], v54);
  v57 = vmulq_f32(v54, v55);
  v58 = a4->var0.var0[2];
  v59 = a4->var1;
  v60 = vmulq_f32(v54, v58);
  v60.i32[3] = 0;
  *v56.f32 = vadd_f32(vpadd_f32(*v56.f32, *v57.i8), vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v57, v57, 8uLL)));
  *&v56.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
  v53.i32[0] = *a2;
  v61 = vmulq_f32(a4->var0.var0[0], v53);
  v62 = vmulq_f32(v55, v53);
  v63 = vmulq_f32(v58, v53);
  v63.i32[3] = 0;
  *v61.f32 = vadd_f32(vpadd_f32(*v61.f32, *v62.i8), vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *&vextq_s8(v62, v62, 8uLL)));
  *&v61.u32[2] = vpadd_f32(vpadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)), 0);
  v161 = vaddq_f32(v59, v61);
  v162 = vaddq_f32(v56, v59);
  (*(*this + 16))(this, &v162, &v161, a5);
  v64 = *a2;
  v64.i32[3] = 0;
  v65 = v64;
  v65.i32[2] = a2->i64[1];
  v66 = a4->var0.var0[1];
  v67 = vmulq_f32(a4->var0.var0[0], v65);
  v68 = vmulq_f32(v65, v66);
  v69 = a4->var0.var0[2];
  v70 = a4->var1;
  v71 = vmulq_f32(v65, v69);
  v71.i32[3] = 0;
  *v67.f32 = vadd_f32(vpadd_f32(*v67.f32, *v68.i8), vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL)));
  *&v67.u32[2] = vpadd_f32(vpadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL)), 0);
  v64.i32[2] = a3->i32[2];
  v72 = vmulq_f32(a4->var0.var0[0], v64);
  v73 = vmulq_f32(v66, v64);
  v74 = vmulq_f32(v69, v64);
  v74.i32[3] = 0;
  *v72.f32 = vadd_f32(vpadd_f32(*v72.f32, *v73.i8), vzip1_s32(*&vextq_s8(v72, v72, 8uLL), *&vextq_s8(v73, v73, 8uLL)));
  *&v72.u32[2] = vpadd_f32(vpadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)), 0);
  v161 = vaddq_f32(v70, v72);
  v162 = vaddq_f32(v67, v70);
  (*(*this + 16))(this, &v162, &v161, a5);
  v75 = *a3;
  v75.f32[1] = *v20;
  v75.i32[3] = 0;
  v76 = v75;
  v76.f32[2] = *v22;
  v77 = a4->var0.var0[1];
  v78 = vmulq_f32(a4->var0.var0[0], v76);
  v79 = vmulq_f32(v76, v77);
  v80 = a4->var0.var0[2];
  v81 = a4->var1;
  v82 = vmulq_f32(v76, v80);
  v82.i32[3] = 0;
  *v78.f32 = vadd_f32(vpadd_f32(*v78.f32, *v79.i8), vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v79, v79, 8uLL)));
  *&v78.u32[2] = vpadd_f32(vpadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)), 0);
  v75.i32[2] = a3->i64[1];
  v83 = vmulq_f32(a4->var0.var0[0], v75);
  v84 = vmulq_f32(v77, v75);
  v85 = vmulq_f32(v80, v75);
  v85.i32[3] = 0;
  *v83.f32 = vadd_f32(vpadd_f32(*v83.f32, *v84.i8), vzip1_s32(*&vextq_s8(v83, v83, 8uLL), *&vextq_s8(v84, v84, 8uLL)));
  *&v83.u32[2] = vpadd_f32(vpadd_f32(*v85.i8, *&vextq_s8(v85, v85, 8uLL)), 0);
  v161 = vaddq_f32(v81, v83);
  v162 = vaddq_f32(v78, v81);
  (*(*this + 16))(this, &v162, &v161, a5);
  v86 = *a3;
  v86.i32[3] = 0;
  v87 = v86;
  v87.f32[2] = *v22;
  v88 = a4->var0.var0[1];
  v89 = vmulq_f32(a4->var0.var0[0], v87);
  v90 = vmulq_f32(v87, v88);
  v91 = a4->var0.var0[2];
  v92 = a4->var1;
  v93 = vmulq_f32(v87, v91);
  v93.i32[3] = 0;
  *v89.f32 = vadd_f32(vpadd_f32(*v89.f32, *v90.i8), vzip1_s32(*&vextq_s8(v89, v89, 8uLL), *&vextq_s8(v90, v90, 8uLL)));
  *&v89.u32[2] = vpadd_f32(vpadd_f32(*v93.i8, *&vextq_s8(v93, v93, 8uLL)), 0);
  v86.i32[2] = a3->i64[1];
  v94 = vmulq_f32(a4->var0.var0[0], v86);
  v95 = vmulq_f32(v88, v86);
  v96 = vmulq_f32(v91, v86);
  v96.i32[3] = 0;
  *v94.f32 = vadd_f32(vpadd_f32(*v94.f32, *v95.i8), vzip1_s32(*&vextq_s8(v94, v94, 8uLL), *&vextq_s8(v95, v95, 8uLL)));
  *&v94.u32[2] = vpadd_f32(vpadd_f32(*v96.i8, *&vextq_s8(v96, v96, 8uLL)), 0);
  v161 = vaddq_f32(v92, v94);
  v162 = vaddq_f32(v89, v92);
  (*(*this + 16))(this, &v162, &v161, a5);
  v97 = *a2;
  v97.f32[1] = *v21;
  v97.i32[3] = 0;
  v98 = v97;
  v98.i32[2] = a2->i64[1];
  v99 = a4->var0.var0[1];
  v100 = vmulq_f32(a4->var0.var0[0], v98);
  v101 = vmulq_f32(v98, v99);
  v102 = a4->var0.var0[2];
  v103 = a4->var1;
  v104 = vmulq_f32(v98, v102);
  v104.i32[3] = 0;
  *v100.f32 = vadd_f32(vpadd_f32(*v100.f32, *v101.i8), vzip1_s32(*&vextq_s8(v100, v100, 8uLL), *&vextq_s8(v101, v101, 8uLL)));
  *&v100.u32[2] = vpadd_f32(vpadd_f32(*v104.i8, *&vextq_s8(v104, v104, 8uLL)), 0);
  v97.i32[2] = a3->i32[2];
  v105 = vmulq_f32(a4->var0.var0[0], v97);
  v106 = vmulq_f32(v99, v97);
  v107 = vmulq_f32(v102, v97);
  v107.i32[3] = 0;
  *v105.f32 = vadd_f32(vpadd_f32(*v105.f32, *v106.i8), vzip1_s32(*&vextq_s8(v105, v105, 8uLL), *&vextq_s8(v106, v106, 8uLL)));
  *&v105.u32[2] = vpadd_f32(vpadd_f32(*v107.i8, *&vextq_s8(v107, v107, 8uLL)), 0);
  v161 = vaddq_f32(v103, v105);
  v162 = vaddq_f32(v100, v103);
  (*(*this + 16))(this, &v162, &v161, a5);
  v108 = *a2;
  v109 = a3->i32[2];
  v110.i32[0] = a3->i32[0];
  v110.i32[1] = HIDWORD(a2->i64[0]);
  v108.i32[2] = v109;
  v111 = v108;
  v111.i32[3] = 0;
  v112 = a4->var0.var0[2];
  v113 = a4->var1;
  v114 = vmulq_f32(v108, v112);
  v115 = a4->var0.var0[0];
  v116 = a4->var0.var0[1];
  v117 = vmulq_f32(v111, a4->var0.var0[0]);
  v118 = vmulq_f32(v111, v116);
  v114.i32[3] = 0;
  *v118.f32 = vadd_f32(vpadd_f32(*v117.i8, *v118.f32), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
  *&v118.u32[2] = vpadd_f32(vpadd_f32(*v114.i8, *&vextq_s8(v114, v114, 8uLL)), 0);
  v162 = vaddq_f32(v118, v113);
  v110.i32[2] = v109;
  v119 = vmulq_f32(v115, v110);
  v120 = vmulq_f32(v116, v110);
  v121 = vmulq_f32(v112, v110);
  v121.i32[3] = 0;
  *v119.f32 = vadd_f32(vpadd_f32(*v119.f32, *v120.i8), vzip1_s32(*&vextq_s8(v119, v119, 8uLL), *&vextq_s8(v120, v120, 8uLL)));
  *&v119.u32[2] = vpadd_f32(vpadd_f32(*v121.i8, *&vextq_s8(v121, v121, 8uLL)), 0);
  v161 = vaddq_f32(v113, v119);
  (*(*this + 16))(this, &v162, &v161, a5);
  v122 = *a3;
  v122.i32[3] = 0;
  v123 = v122;
  v123.f32[1] = *v20;
  v123.i32[2] = a3->i64[1];
  v124 = a4->var0.var0[1];
  v125 = vmulq_f32(a4->var0.var0[0], v123);
  v126 = vmulq_f32(v123, v124);
  v127 = a4->var0.var0[2];
  v128 = a4->var1;
  v129 = vmulq_f32(v123, v127);
  v129.i32[3] = 0;
  *v125.f32 = vadd_f32(vpadd_f32(*v125.f32, *v126.i8), vzip1_s32(*&vextq_s8(v125, v125, 8uLL), *&vextq_s8(v126, v126, 8uLL)));
  *&v125.u32[2] = vpadd_f32(vpadd_f32(*v129.i8, *&vextq_s8(v129, v129, 8uLL)), 0);
  v122.i32[0] = *a3;
  v130 = vmulq_f32(a4->var0.var0[0], v122);
  v131 = vmulq_f32(v124, v122);
  v132 = vmulq_f32(v127, v122);
  v132.i32[3] = 0;
  *v130.f32 = vadd_f32(vpadd_f32(*v130.f32, *v131.i8), vzip1_s32(*&vextq_s8(v130, v130, 8uLL), *&vextq_s8(v131, v131, 8uLL)));
  *&v130.u32[2] = vpadd_f32(vpadd_f32(*v132.i8, *&vextq_s8(v132, v132, 8uLL)), 0);
  v161 = vaddq_f32(v128, v130);
  v162 = vaddq_f32(v125, v128);
  (*(*this + 16))(this, &v162, &v161, a5);
  v133 = *a3;
  v134 = a3->i32[2];
  v135.i32[0] = a2->i32[0];
  v135.i32[1] = HIDWORD(a3->i64[0]);
  v133.i32[2] = v134;
  v136 = v133;
  v136.i32[3] = 0;
  v137 = a4->var0.var0[2];
  v138 = a4->var1;
  v139 = vmulq_f32(v133, v137);
  v140 = a4->var0.var0[0];
  v141 = a4->var0.var0[1];
  v142 = vmulq_f32(v136, a4->var0.var0[0]);
  v143 = vmulq_f32(v136, v141);
  v139.i32[3] = 0;
  *v143.f32 = vadd_f32(vpadd_f32(*v142.i8, *v143.f32), vzip1_s32(*&vextq_s8(v142, v142, 8uLL), *&vextq_s8(v143, v143, 8uLL)));
  *&v143.u32[2] = vpadd_f32(vpadd_f32(*v139.i8, *&vextq_s8(v139, v139, 8uLL)), 0);
  v162 = vaddq_f32(v143, v138);
  v135.i32[2] = v134;
  v144 = vmulq_f32(v140, v135);
  v145 = vmulq_f32(v141, v135);
  v146 = vmulq_f32(v137, v135);
  v146.i32[3] = 0;
  *v144.f32 = vadd_f32(vpadd_f32(*v144.f32, *v145.i8), vzip1_s32(*&vextq_s8(v144, v144, 8uLL), *&vextq_s8(v145, v145, 8uLL)));
  *&v144.u32[2] = vpadd_f32(vpadd_f32(*v146.i8, *&vextq_s8(v146, v146, 8uLL)), 0);
  v161 = vaddq_f32(v138, v144);
  (*(*this + 16))(this, &v162, &v161, a5);
  v147 = a3->f32[2];
  v148 = *a2;
  v148.i32[3] = 0;
  v149 = v148;
  v149.f32[1] = *v21;
  v149.f32[2] = v147;
  v150 = a4->var0.var0[0];
  v151 = a4->var0.var0[1];
  v152 = vmulq_f32(a4->var0.var0[0], v149);
  v153 = vmulq_f32(v149, v151);
  v154 = a4->var0.var0[2];
  v155 = a4->var1;
  v156 = vmulq_f32(v149, v154);
  v156.i32[3] = 0;
  *v152.f32 = vadd_f32(vpadd_f32(*v152.f32, *v153.i8), vzip1_s32(*&vextq_s8(v152, v152, 8uLL), *&vextq_s8(v153, v153, 8uLL)));
  *&v152.u32[2] = vpadd_f32(vpadd_f32(*v156.i8, *&vextq_s8(v156, v156, 8uLL)), 0);
  v148.i32[1] = HIDWORD(a2->i64[0]);
  v162 = vaddq_f32(v152, v155);
  v148.f32[2] = v147;
  v157 = vmulq_f32(v150, v148);
  v158 = vmulq_f32(v151, v148);
  v159 = vmulq_f32(v154, v148);
  v159.i32[3] = 0;
  *v157.f32 = vadd_f32(vpadd_f32(*v157.f32, *v158.i8), vzip1_s32(*&vextq_s8(v157, v157, 8uLL), *&vextq_s8(v158, v158, 8uLL)));
  *&v157.u32[2] = vpadd_f32(vpadd_f32(*v159.i8, *&vextq_s8(v159, v159, 8uLL)), 0);
  v161 = vaddq_f32(v155, v157);
  return (*(*this + 16))(this, &v162, &v161, a5);
}

uint64_t btIDebugDraw::drawCapsule(btIDebugDraw *this, float32_t a2, float32_t a3, int a4, const btTransform *a5, const btVector3 *a6)
{
  v68 = 0uLL;
  v68.f32[a4] = -a3;
  v67 = 0uLL;
  v67.f32[a4] = a3;
  v11 = a5->var0.var0[1];
  v63 = a5->var0.var0[0];
  v64 = v11;
  v12 = vmulq_f32(v63, v68);
  v13 = vmulq_f32(v11, v68);
  v14 = vmulq_f32(a5->var0.var0[2], v68);
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vaddq_f32(a5->var1, v12);
  v65 = a5->var0.var0[2];
  v66 = v15;
  (*(*this + 32))(this, &v63, a6, a2);
  v16 = a5->var0.var0[1];
  v63 = a5->var0.var0[0];
  v64 = v16;
  v17 = vmulq_f32(v63, v67);
  v18 = vmulq_f32(v16, v67);
  v19 = vmulq_f32(a5->var0.var0[2], v67);
  v19.i32[3] = 0;
  *v17.f32 = vadd_f32(vpadd_f32(*v17.f32, *v18.i8), vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)));
  *&v17.u32[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  v20 = vaddq_f32(a5->var1, v17);
  v65 = a5->var0.var0[2];
  v66 = v20;
  (*(*this + 32))(this, &v63, a6, a2);
  v21 = (a4 + 1) % 3;
  v68.f32[v21] = a2;
  v67.f32[v21] = a2;
  v22 = a5->var0.var0[0];
  v23 = a5->var0.var0[1];
  v24 = vmulq_f32(a5->var0.var0[0], v68);
  v25 = vmulq_f32(v68, v23);
  v26 = a5->var0.var0[2];
  var1 = a5->var1;
  v28 = vmulq_f32(v68, v26);
  v28.i32[3] = 0;
  *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
  v63 = vaddq_f32(var1, v24);
  v29 = vmulq_f32(v22, v67);
  v30 = vmulq_f32(v23, v67);
  v31 = vmulq_f32(v26, v67);
  v31.i32[3] = 0;
  *v29.f32 = vadd_f32(vpadd_f32(*v29.f32, *v30.i8), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
  *&v29.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
  v61 = var1;
  v62 = vaddq_f32(var1, v29);
  (*(*this + 16))(this, &v63, &v62, a6);
  v68.f32[v21] = -a2;
  v67.f32[v21] = -a2;
  v32 = a5->var0.var0[0];
  v33 = a5->var0.var0[1];
  v34 = vmulq_f32(a5->var0.var0[0], v68);
  v35 = vmulq_f32(v68, v33);
  v36 = a5->var0.var0[2];
  v37 = vmulq_f32(v68, v36);
  v37.i32[3] = 0;
  *v34.f32 = vadd_f32(vpadd_f32(*v34.f32, *v35.i8), vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
  *&v34.u32[2] = vpadd_f32(vpadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), 0);
  v63 = vaddq_f32(v61, v34);
  v38 = vmulq_f32(v32, v67);
  v39 = vmulq_f32(v33, v67);
  v40 = vmulq_f32(v36, v67);
  v40.i32[3] = 0;
  *v38.f32 = vadd_f32(vpadd_f32(*v38.f32, *v39.i8), vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)));
  *&v38.u32[2] = vpadd_f32(vpadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)), 0);
  v62 = vaddq_f32(v61, v38);
  (*(*this + 16))(this, &v63, &v62, a6);
  v68.i32[v21] = 0;
  v67.i32[v21] = 0;
  v41 = (a4 + 2) % 3;
  v68.f32[v41] = a2;
  v67.f32[v41] = a2;
  v42 = a5->var0.var0[0];
  v43 = a5->var0.var0[1];
  v44 = vmulq_f32(a5->var0.var0[0], v68);
  v45 = vmulq_f32(v68, v43);
  v46 = a5->var0.var0[2];
  v47 = vmulq_f32(v68, v46);
  v47.i32[3] = 0;
  *v44.f32 = vadd_f32(vpadd_f32(*v44.f32, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
  *&v44.u32[2] = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
  v63 = vaddq_f32(v61, v44);
  v48 = vmulq_f32(v42, v67);
  v49 = vmulq_f32(v43, v67);
  v50 = vmulq_f32(v46, v67);
  v50.i32[3] = 0;
  *v48.f32 = vadd_f32(vpadd_f32(*v48.f32, *v49.i8), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
  *&v48.u32[2] = vpadd_f32(vpadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)), 0);
  v62 = vaddq_f32(v61, v48);
  (*(*this + 16))(this, &v63, &v62, a6);
  v68.f32[v41] = -a2;
  v67.f32[v41] = -a2;
  v51 = a5->var0.var0[0];
  v52 = a5->var0.var0[1];
  v53 = vmulq_f32(a5->var0.var0[0], v68);
  v54 = vmulq_f32(v68, v52);
  v55 = a5->var0.var0[2];
  v56 = vmulq_f32(v68, v55);
  v56.i32[3] = 0;
  *v53.f32 = vadd_f32(vpadd_f32(*v53.f32, *v54.i8), vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)));
  *&v53.u32[2] = vpadd_f32(vpadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)), 0);
  v63 = vaddq_f32(v61, v53);
  v57 = vmulq_f32(v51, v67);
  v58 = vmulq_f32(v52, v67);
  v59 = vmulq_f32(v55, v67);
  v59.i32[3] = 0;
  *v57.f32 = vadd_f32(vpadd_f32(*v57.f32, *v58.i8), vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)));
  *&v57.u32[2] = vpadd_f32(vpadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)), 0);
  v62 = vaddq_f32(v61, v57);
  return (*(*this + 16))(this, &v63, &v62, a6);
}

uint64_t btIDebugDraw::drawCylinder(btIDebugDraw *this, float32_t a2, float32_t a3, int a4, const btTransform *a5, const btVector3 *a6)
{
  v73 = 0uLL;
  v73.f32[a4] = a3;
  v11 = (a4 + 1) % 3;
  v72 = 0uLL;
  v72.f32[v11] = a2;
  v12 = vaddq_f32(v73, v72);
  v60 = v72;
  v13 = a5->var0.var0[1];
  v14 = vmulq_f32(a5->var0.var0[0], v12);
  v15 = vmulq_f32(v12, v13);
  v16 = a5->var0.var0[2];
  var1 = a5->var1;
  v18 = vmulq_f32(v12, v16);
  v18.i32[3] = 0;
  *v14.f32 = vadd_f32(vpadd_f32(*v14.f32, *v15.i8), vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)));
  *&v14.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v62 = v73;
  v64 = vnegq_f32(v73);
  v66 = var1;
  v19 = vsubq_f32(v72, v73);
  v20 = vmulq_f32(a5->var0.var0[0], v19);
  v21 = vmulq_f32(v13, v19);
  v22 = vmulq_f32(v16, v19);
  v22.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&v20.u32[2] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
  v70 = vaddq_f32(var1, v20);
  v71 = vaddq_f32(var1, v14);
  (*(*this + 16))(this, &v71, &v70);
  v23 = vsubq_f32(v62, v60);
  v25 = a5->var0.var0[1];
  v24 = a5->var0.var0[2];
  v26 = vmulq_f32(v24, v23);
  v23.i32[3] = 0;
  v27 = vmulq_f32(a5->var0.var0[0], v23);
  v28 = vmulq_f32(v25, v23);
  v26.i32[3] = 0;
  *v28.f32 = vadd_f32(vpadd_f32(*v27.i8, *v28.f32), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
  *&v28.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
  v29 = vaddq_f32(v66, v28);
  v30 = vsubq_f32(v64, v60);
  v31 = vmulq_f32(v24, v30);
  v30.i32[3] = 0;
  v32 = vmulq_f32(a5->var0.var0[0], v30);
  v33 = vmulq_f32(v25, v30);
  v31.i32[3] = 0;
  *v33.f32 = vadd_f32(vpadd_f32(*v32.i8, *v33.f32), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL)));
  *&v33.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
  v70 = vaddq_f32(v66, v33);
  v71 = v29;
  (*(*this + 16))(this, &v71, &v70, a6);
  v71 = 0uLL;
  v71.i32[a4] = 1065353216;
  v70 = 0uLL;
  v70.i32[v11] = 1065353216;
  v65 = v73;
  v34 = a5->var0.var0[0];
  v35 = a5->var0.var0[1];
  v36 = vmulq_f32(a5->var0.var0[0], v73);
  v37 = vmulq_f32(v73, v35);
  v38 = a5->var0.var0[2];
  v39 = vmulq_f32(v73, v38);
  v39.i32[3] = 0;
  *v36.f32 = vadd_f32(vpadd_f32(*v36.f32, *v37.i8), vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)));
  *&v36.u32[2] = vpadd_f32(vpadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)), 0);
  v40 = vsubq_f32(v66, v36);
  v40.i32[3] = 0;
  v69 = v40;
  v63 = v71;
  v41 = vmulq_f32(v34, v71);
  v42 = vmulq_f32(v35, v71);
  v43 = vmulq_f32(v38, v71);
  v43.i32[3] = 0;
  *v41.i8 = vadd_f32(vpadd_f32(*v41.i8, *v42.i8), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
  v41.u64[1] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
  v61 = v70;
  v44 = vmulq_f32(v34, v70);
  v45 = vmulq_f32(v35, v70);
  v46 = vmulq_f32(v38, v70);
  v46.i32[3] = 0;
  *v44.i8 = vadd_f32(vpadd_f32(*v44.i8, *v45.i8), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
  v44.u64[1] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
  v67 = v44;
  v68 = v41;
  (*(*this + 120))(this, &v69, &v68, &v67, a6, 0, a2, a2, 0.0, 6.2832, 10.0);
  v47 = a5->var0.var0[0];
  v48 = a5->var0.var0[1];
  v49 = vmulq_f32(v65, a5->var0.var0[0]);
  v50 = vmulq_f32(v65, v48);
  v51 = a5->var0.var0[2];
  v52 = vmulq_f32(v65, v51);
  v52.i32[3] = 0;
  *v49.f32 = vadd_f32(vpadd_f32(*v49.f32, *v50.i8), vzip1_s32(*&vextq_s8(v49, v49, 8uLL), *&vextq_s8(v50, v50, 8uLL)));
  *&v49.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
  v69 = vaddq_f32(v66, v49);
  v53 = vmulq_f32(v63, v47);
  v54 = vmulq_f32(v63, v48);
  v55 = vmulq_f32(v63, v51);
  v55.i32[3] = 0;
  *v53.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vpadd_f32(*v53.i8, *v54.i8));
  v53.u64[1] = vpadd_f32(vpadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL)), 0);
  v56 = vmulq_f32(v61, v47);
  v57 = vmulq_f32(v61, v48);
  v58 = vmulq_f32(v61, v51);
  v58.i32[3] = 0;
  *v56.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v57, v57, 8uLL)), vpadd_f32(*v56.i8, *v57.i8));
  v56.u64[1] = vpadd_f32(vpadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)), 0);
  v67 = v56;
  v68 = v53;
  return (*(*this + 120))(this, &v69, &v68, &v67, a6, 0, a2, a2, 0.0, 6.2832, 10.0);
}