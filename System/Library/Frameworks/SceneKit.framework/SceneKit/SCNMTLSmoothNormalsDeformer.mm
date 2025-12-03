@interface SCNMTLSmoothNormalsDeformer
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
- (void)initWithMesh:(int)mesh dataKind:(void *)kind resourceManager:(void *)manager computeContext:;
@end

@implementation SCNMTLSmoothNormalsDeformer

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  if (a4 <= 2)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v15 = a4;
  do
  {
    v16 = *(a1 + 32);
    v17 = a3;
    if (v16)
    {
      v17 = (v16 + 4 * *a3);
    }

    v18 = *v17;
    if (v18 >= *(a1 + 48))
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_cold_2(v20, v21, v19);
      }
    }

    ++*(*(a1 + 40) + 4 * v18);
    ++a3;
    --v15;
  }

  while (v15);
}

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_3(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_3_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = a4;
  v18 = a3;
  do
  {
    v19 = v18;
    if (v15)
    {
      v19 = (v15 + 4 * *v18);
    }

    v20 = *v19;
    v21 = *(v16 + 4 * v20);
    if (!v21)
    {
      break;
    }

    v22 = *(*(a1 + 48) + 4 * v20);
    v23 = v21 - 1;
    *(v16 + 4 * v20) = v23;
    v24 = v22 + v23;
    if ((v22 + v23) >= *(a1 + 72))
    {
      break;
    }

    v25 = *a3;
    v26 = 3 * v24;
    if (*(a1 + 76) == 1)
    {
      v27 = *(a1 + 56);
      *(v27 + 2 * v26) = v25;
      v28 = a3[2];
      *(v27 + 2 * (v26 + 1)) = a3[1];
      *(v27 + 2 * (v26 + 2)) = v28;
    }

    else
    {
      v29 = *(a1 + 64);
      *(v29 + 4 * v26) = v25;
      *(v29 + 4 * (v26 + 1)) = a3[1];
      *(v29 + 4 * (v26 + 2)) = a3[2];
    }

    ++v18;
    --v17;
  }

  while (v17);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLSmoothNormalsDeformer;
  [(SCNMTLSmoothNormalsDeformer *)&v3 dealloc];
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  currentFrameHash = [context currentFrameHash];
  if (self->_currentFrameHash == currentFrameHash)
  {
    return 0;
  }

  self->_currentFrameHash = currentFrameHash;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  var1 = buffers->var1;
  if (var1)
  {
    currentComputeEncoder->_buffers[0] = var1;
    currentComputeEncoder->_buffersToBind[0] |= 1uLL;
  }

  var3 = buffers->var3;
  if (var3)
  {
    currentComputeEncoder->_buffers[1] = var3;
    currentComputeEncoder->_offsets[1] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 2uLL;
  }

  perVertexTrianglesOffsets = self->_perVertexTrianglesOffsets;
  if (perVertexTrianglesOffsets)
  {
    currentComputeEncoder->_buffers[2] = perVertexTrianglesOffsets;
    currentComputeEncoder->_offsets[2] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
  }

  perVertexTrianglesIndices = self->_perVertexTrianglesIndices;
  if (perVertexTrianglesIndices)
  {
    currentComputeEncoder->_buffers[3] = perVertexTrianglesIndices;
    currentComputeEncoder->_offsets[3] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 8uLL;
  }

  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, &self->_baseVertexCount, 4uLL, 4uLL);
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_smoothNormalsPipeline computeEvaluator];
  baseVertexCount = self->_baseVertexCount;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, baseVertexCount);
  return 1;
}

- (void)initWithMesh:(int)mesh dataKind:(void *)kind resourceManager:(void *)manager computeContext:
{
  v93 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v89.receiver = self;
  v89.super_class = SCNMTLSmoothNormalsDeformer;
  v8 = objc_msgSendSuper2(&v89, sel_init);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  managerCopy = manager;
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a2, 0, 0, mesh);
  v75 = v9;
  *(v9 + 4) = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
  ElementsCount = C3DMeshGetElementsCount(a2);
  C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 0, 0);
  PositionSource = C3DMeshGetPositionSource(a2, 0);
  Count = C3DMeshSourceGetCount(PositionSource);
  v88 = 0;
  PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(a2, &v88);
  PositionOriginalToFirstDeindexedTable = C3DMeshGetPositionOriginalToFirstDeindexedTable(a2);
  WeldRemappingTable = 0;
  if (!PositionOriginalToFirstDeindexedTable)
  {
    WeldRemappingTable = C3DMeshSourceCreateWeldRemappingTable(SourceWithSemanticAtIndex);
  }

  v79 = Count;
  v80 = Count;
  v81 = malloc_type_calloc(4uLL, Count, 0x100004052888210uLL);
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a2, i, 0);
      OUTLINED_FUNCTION_1_13(ElementAtIndex);
      if ((v92 & 0xFA) != 0)
      {
        v18 = scn_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: SCNMTLSmoothNormalsDeformer can only process triangles and polygons", buf, 2u);
        }
      }

      else
      {
        v19 = OUTLINED_FUNCTION_3_5();
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke;
        v85[3] = &__block_descriptor_52_e19_v32__0I8_I12I20_B24l;
        v86 = v80;
        v85[4] = WeldRemappingTable;
        v85[5] = v81;
        C3DIndicesContentEnumeratePrimitives(buf, v85, v19);
      }
    }
  }

  v20 = v81;
  if (WeldRemappingTable && v80)
  {
    v21 = 0;
    do
    {
      v22 = WeldRemappingTable[v21];
      if (v21 != v22)
      {
        v81[v21] = v81[v22];
      }

      ++v21;
    }

    while (v79 != v21);
  }

  v71 = 4 * v80 + 4;
  v23 = OUTLINED_FUNCTION_4_8(v71 & 0x3FFFFFFFCLL);
  v24 = v23;
  *v23 = 0;
  if (v80)
  {
    v25 = 0;
    v26 = v23 + 1;
    v27 = v79;
    v28 = v81;
    do
    {
      v29 = *v28++;
      v25 += v29;
      *v26++ = v25;
      --v27;
    }

    while (v27);
  }

  if (PositionOriginalToFirstDeindexedTable)
  {
    v30 = v88;
  }

  else
  {
    v30 = v80;
  }

  v78 = v30 < 0x10000;
  v31 = v23[v79];
  if (v30 < 0x10000)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  if (v31)
  {
    v72 = v30;
    v77 = v23[v79];
    v69 = (3 * v31) << v32;
    v70 = v32;
    v33 = malloc_type_calloc(v69, 1uLL, 0xB2C8C36FuLL);
    if (ElementsCount >= 1)
    {
      for (j = 0; j != ElementsCount; ++j)
      {
        v35 = C3DMeshGetElementAtIndex(a2, j, 0);
        OUTLINED_FUNCTION_1_13(v35);
        if ((v92 & 0xFA) != 0)
        {
          v36 = scn_default_log();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_DEFAULT, "Warning: SCNMTLSmoothNormalsDeformer can only process triangles and polygons", buf, 2u);
          }
        }

        else
        {
          v37 = OUTLINED_FUNCTION_3_5();
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_3;
          v82[3] = &__block_descriptor_77_e19_v32__0I8_I12I20_B24l;
          v82[4] = WeldRemappingTable;
          v82[5] = v81;
          v83 = v77;
          v84 = v78;
          v82[6] = v24;
          v82[7] = v33;
          v82[8] = v33;
          C3DIndicesContentEnumeratePrimitives(buf, v82, v37);
        }
      }
    }

    v20 = v81;
    if (WeldRemappingTable)
    {
      v38 = v79;
      if (v80)
      {
        v39 = 0;
        do
        {
          v40 = WeldRemappingTable[v39];
          if (v39 != v40)
          {
            if (!v20[v39])
            {
              v41 = scn_default_log();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                *v90 = 136315138;
                v91 = "perVertexTriangleCount[vertexIndex] > 0";
                _os_log_fault_impl(&dword_21BEF7000, v41, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. splitted vertices should not have been decremented yet", v90, 0xCu);
              }
            }

            if (v20[v40])
            {
              v42 = scn_default_log();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
              {
                *v90 = 136315138;
                v91 = "perVertexTriangleCount[weldedVertexIndex] == 0";
                _os_log_fault_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. welded vertices should have been entirely decremented", v90, 0xCu);
              }
            }

            v20 = v81;
            v43 = (3 * v24[v40]);
            v44 = (3 * v24[v39]);
            v45 = (3 * v81[v39]);
            if (HIWORD(v72))
            {
              v46 = &v33[4 * v44];
              v47 = 4 * v45;
              v48 = &v33[4 * v43];
            }

            else
            {
              v46 = &v33[2 * v44];
              v47 = 2 * v45;
              v48 = &v33[2 * v43];
            }

            memcpy(v46, v48, v47);
            v38 = v79;
          }

          ++v39;
        }

        while (v38 != v39);
      }

      free(WeldRemappingTable);
    }

    if (PositionDeindexedToOriginalTable)
    {
      v50 = 4 * (v88 + 1);
      v51 = OUTLINED_FUNCTION_4_8(v50);
      v52 = v51;
      *v51 = 0;
      v30 = v72;
      if (v88)
      {
        v53 = 0;
        for (k = 0; k < v88; v51[++k] = v53)
        {
          v53 += v24[*(PositionDeindexedToOriginalTable + 4 * k) + 1] - v24[*(PositionDeindexedToOriginalTable + 4 * k)];
        }

        v55 = (3 * v51[v88]);
      }

      else
      {
        v55 = 0;
      }

      v56 = v55 << v70;
      v57 = malloc_type_calloc(v55 << v70, 1uLL, 0xDF242D5AuLL);
      v58 = v57;
      if (v88)
      {
        for (m = 0; m < v88; ++m)
        {
          v60 = *(PositionDeindexedToOriginalTable + 4 * m);
          v61 = v24[(v60 + 1)];
          v62 = v24[v60];
          v63 = (v61 - v62);
          v64 = 3 * v62;
          v65 = 3 * v52[m];
          if (v72 >= 0x10000)
          {
            if (v61 != v62)
            {
              do
              {
                *(v57 + v65) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v33[4 * v64]);
                *(v57 + v65 + 1) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v33[4 * v64 + 4]);
                *(v57 + v65 + 2) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v33[4 * v64 + 8]);
                v65 += 3;
                v64 += 3;
                --v63;
              }

              while (v63);
            }
          }

          else if (v61 != v62)
          {
            do
            {
              *(v57 + v65) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v33[2 * v64]);
              *(v57 + v65 + 1) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v33[2 * v64 + 2]);
              *(v57 + v65 + 2) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v33[2 * v64 + 4]);
              v65 += 3;
              v64 += 3;
              --v63;
            }

            while (v63);
          }
        }
      }

      v75[3] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v52, v50, [managerCopy currentBlitEncoder]);
      v75[4] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v58, v56, [managerCopy currentBlitEncoder]);
      free(v52);
      free(v58);
      v20 = v81;
    }

    else
    {
      v75[3] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v24, v71 & 0x3FFFFFFFCLL, [managerCopy currentBlitEncoder]);
      v75[4] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v33, v69, [managerCopy currentBlitEncoder]);
      v30 = v72;
    }

    free(v33);
  }

  free(v20);
  free(v24);
  if (v30 >= 0x10000)
  {
    v66 = @"unify_u32";
  }

  else
  {
    v66 = @"unify_u16";
  }

  v67 = [kind computePipelineStateForKernel:v66];
  v49 = v75;
  v75[5] = v67;
  return v49;
}

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "vertexIndex < originalVertexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. indexed index overflow", a1);
}

@end