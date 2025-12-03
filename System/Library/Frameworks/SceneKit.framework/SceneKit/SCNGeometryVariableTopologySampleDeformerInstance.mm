@interface SCNGeometryVariableTopologySampleDeformerInstance
- (unint64_t)updateWithContext:(id)context;
- (void)dealloc;
- (void)initWithNode:(uint64_t)node deformer:(uint64_t)deformer outputs:(uint64_t)outputs computeVertexCount:(void *)count context:;
@end

@implementation SCNGeometryVariableTopologySampleDeformerInstance

- (void)initWithNode:(uint64_t)node deformer:(uint64_t)deformer outputs:(uint64_t)outputs computeVertexCount:(void *)count context:
{
  v48[0] = count;
  *(&v75[1] + 4) = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v69.receiver = self;
  v69.super_class = SCNGeometryVariableTopologySampleDeformerInstance;
  v7 = objc_msgSendSuper2(&v69, sel_init);
  v8 = v7;
  if (v7)
  {
    v7[1] = 1;
    Geometry = C3DNodeGetGeometry([a2 nodeRef]);
    Mesh = C3DGeometryGetMesh(Geometry);
    _currentResourceManager = [v48[0] _currentResourceManager];
    ElementsCount = C3DMeshGetElementsCount(Mesh);
    v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
    v8[3] = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
    if (ElementsCount < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      for (i = 0; i != ElementsCount; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 1);
        Type = C3DMeshElementGetType(ElementAtIndex);
        if (C3DMeshElementTypeMapsToMTLPrimitiveType(Type))
        {
          if (C3DMeshElementGetType(ElementAtIndex))
          {
            v14 = scn_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v72 deformer:&v73 outputs:v14 computeVertexCount:? context:?];
            }
          }

          v10 += C3DMeshElementGetPrimitiveCount(ElementAtIndex);
        }

        else
        {
          v15 = scn_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v74 deformer:v75 outputs:v15 computeVertexCount:? context:?];
          }
        }
      }
    }

    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v68[3] = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke;
    v63[3] = &unk_2782FB930;
    v63[4] = v68;
    v63[5] = &v64;
    v63[6] = v10;
    C3DMeshApplySources(Mesh, 1, v63);
    if (v8[1] == 1)
    {
      v17 = 4 * ElementsCount;
      MEMORY[0x28223BE20](v16);
      bzero(v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      currentBlitEncoder = [v48[0] currentBlitEncoder];
      v8[5] = [(SCNMTLResourceManager *)_currentResourceManager newPrivateBufferWithBytes:v17 length:currentBlitEncoder blitEncoder:?];
      v8[7] = [_currentResourceManager computePipelineStateForKernel:@"deformer_variabletopologysample_any_order_finalize"];
    }

    v48[1] = 32;
    [SCNMTLResourceManager newBufferWithLength:_currentResourceManager options:?];
    v8[6] = v19;
    v51 = objc_alloc_init(MEMORY[0x277CD6D70]);
    if (ElementsCount >= 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v50 = v8;
      do
      {
        v23 = C3DMeshGetElementAtIndex(Mesh, v22, 1);
        v24 = C3DMeshElementGetType(v23);
        if (C3DMeshElementTypeMapsToMTLPrimitiveType(v24))
        {
          PrimitiveCount = C3DMeshElementGetPrimitiveCount(v23);
          v26 = [SCNMTLResourceManager renderResourceForMeshElement:_currentResourceManager];
          v27 = (*(v65 + 6) - 65537) < 0xFFFF0000;
          SCNMTLIndexTypeGetSize(v27);
          [SCNMTLResourceManager newBufferWithLength:_currentResourceManager options:?];
          v29 = v28;
          v30 = objc_alloc_init(SCNMTLBuffer);
          [(SCNMTLBuffer *)v30 setBuffer:v29];
          v31 = objc_alloc_init(SCNMTLMeshElement);
          [(SCNMTLMeshElement *)v31 setIndexType:v27];
          [(SCNMTLMeshElement *)v31 setIndexBuffer:v30];
          [(SCNMTLMeshElement *)v31 setIndexCount:?];
          [(SCNMTLMeshElement *)v31 setInstanceCount:?];
          [(SCNMTLMesh *)v31 setMutabilityTimestamp:?];
          [(SCNMTLMeshElement *)v31 setDrawIndexedPrimitivesIndirectBuffer:?];
          [(SCNMTLMesh *)v31 setVolatileOffset:v21];
          [v49 addObject:v31];

          elements = [(SCNMTLMesh *)v26 elements];
          LODWORD(v59) = SCNMTLIndexTypeGetSize(elements);
          elements2 = [(SCNMTLMesh *)v31 elements];
          LODWORD(v58[0]) = SCNMTLIndexTypeGetSize(elements2);
          [v51 setConstantValue:&v59 type:33 atIndex:0];
          [v51 setConstantValue:v58 type:33 atIndex:1];
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"UInt%d-UInt%d", (8 * v59), (8 * LODWORD(v58[0]))];
          v35 = objc_alloc_init(SCNGeometryVariableTopologySampleDeformerMeshElementData);
          v36 = v35;
          if (v35)
          {
            v35->_originalPrimitiveCount = PrimitiveCount;
          }

          indexBuffer = [(SCNMTLMeshElement *)v26 indexBuffer];
          if (v36)
          {
            objc_setProperty_nonatomic(v36, v38, indexBuffer, 16);
            objc_setProperty_nonatomic(v36, v39, v29, 24);
            v36->_drawIndexedPrimitivesIndirectBufferOffset = v21;
            v36->_deformedPrimitiveCountBufferOffset = v20;
          }

          v40 = [_currentResourceManager computePipelineStateForKernel:@"deformer_variabletopologysample_any_order" constants:v51 constantsHash:{v34, v48[0]}];
          if (v36)
          {
            objc_setProperty_nonatomic(v36, v41, v40, 56);
          }

          [v50[3] addObject:v36];

          v8 = v50;
        }

        else
        {
          v42 = scn_default_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v70 deformer:&v71 outputs:v42 computeVertexCount:? context:?];
          }
        }

        ++v22;
        v21 += 20;
        v20 += 4;
      }

      while (ElementsCount != v22);
    }

    v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(Mesh)];
    vertexDescriptor = [MEMORY[0x277CD7090] vertexDescriptor];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v58[3] = 0;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55;
    v56[3] = &unk_2782FB980;
    v56[12] = ElementsCount;
    v56[13] = Mesh;
    v57 = 1;
    v56[4] = _currentResourceManager;
    v56[5] = v48[0];
    v56[6] = v8;
    v56[7] = vertexDescriptor;
    v56[8] = v43;
    v56[10] = &v59;
    v56[11] = v58;
    v56[9] = &v64;
    C3DMeshApplySources(Mesh, 1, v56);
    free(v60[3]);
    v45 = v8[3];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_59;
    v55[3] = &unk_2782FB9A8;
    v55[4] = v8;
    v55[5] = v68;
    [v45 enumerateObjectsUsingBlock:v55];
    v46 = objc_alloc_init(SCNMTLMesh);
    v8[2] = v46;
    [(SCNMTLMesh *)v46 setVertexDescriptor:vertexDescriptor];
    [(SCNMTLMesh *)v8[2] setBuffers:v43];
    [(SCNMTLMesh *)v8[2] setElements:v49];

    [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v58 deformer:&v59 outputs:&v64 computeVertexCount:v68 context:?];
  }

  return v8;
}

void __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    v11 = v4;
    v12 = v5;
    if ((a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
    {
      if (C3DMeshSourceIsVolatile(a2))
      {
        v8 = scn_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_cold_1(v8);
        }
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
        C3DMeshSourceGetContent(a2, &v9);
        *(*(a1[4] + 8) + 24) = v10;
        *(*(a1[5] + 8) + 24) = a1[6] + *(*(a1[4] + 8) + 24);
      }
    }
  }
}

void __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a3 != 7 && (a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
  {
    if (C3DMeshSourceIsVolatile(a2))
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_cold_1(v10);
      }
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
      C3DMeshSourceGetContent(a2, &v64);
      if (a3 > 1)
      {
        if (a3 == 3)
        {
          v41 = 8 * *(*(*(a1 + 72) + 8) + 24);
          *(*(*(a1 + 80) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 80) + 8) + 24), v41, 0x100004052888210uLL);
          if (v65)
          {
            v20 = 0;
            v21 = 1;
            do
            {
              *v17.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v65), (v64.n128_u64[0] + v20 * BYTE6(v65)), v17, v18, v19);
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v21 - 1)) = v17.i32[0];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * v21) = v17.i32[1];
              ++v20;
              v22 = v65;
              v21 += 2;
            }

            while (v20 < v65);
          }

          else
          {
            v22 = 0;
          }

          v60 = 0;
          v61 = &v60;
          v62 = 0x2020000000;
          v63 = v22;
          if (*(a1 + 96) >= 1)
          {
            v35 = 0;
            do
            {
              ElementAtIndex = C3DMeshGetElementAtIndex(*(a1 + 104), v35, *(a1 + 112));
              if (!C3DMeshElementGetType(ElementAtIndex))
              {
                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                C3DMeshElementGetContent(ElementAtIndex, a5, &v56);
                v52 = v56;
                v53 = v57;
                v54 = v58;
                v55 = v59;
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_2;
                v46[3] = &unk_2782FB958;
                v47 = v64;
                v48 = v65;
                v46[4] = *(a1 + 80);
                v46[5] = &v60;
                C3DIndicesContentEnumeratePrimitives(&v52, v46, v64);
              }

              ++v35;
            }

            while (v35 < *(a1 + 96));
          }

          v32 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](*(a1 + 32), *(*(*(a1 + 80) + 8) + 24), v41, [*(a1 + 40) currentBlitEncoder]);
          v33 = 8;
          _Block_object_dispose(&v60, 8);
          v34 = 29;
        }

        else if (a3 == 4 || a3 == 2)
        {
          v42 = 16 * *(*(*(a1 + 72) + 8) + 24);
          *(*(*(a1 + 80) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 80) + 8) + 24), v42, 0x100004052888210uLL);
          if (v65)
          {
            v26 = 0;
            v27 = 3;
            do
            {
              *v23.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v65), (v64.n128_u64[0] + v26 * BYTE6(v65)), v23, v24, v25);
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v27 - 3)) = v23.i32[0];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v27 - 2)) = v23.i32[1];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v27 - 1)) = v23.i32[2];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * v27) = v23.i32[3];
              ++v26;
              v28 = v65;
              v27 += 4;
            }

            while (v26 < v65);
          }

          else
          {
            v28 = 0;
          }

          v60 = 0;
          v61 = &v60;
          v62 = 0x2020000000;
          v63 = v28;
          if (*(a1 + 96) >= 1)
          {
            v38 = 0;
            do
            {
              v39 = C3DMeshGetElementAtIndex(*(a1 + 104), v38, *(a1 + 112));
              if (!C3DMeshElementGetType(v39))
              {
                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                C3DMeshElementGetContent(v39, a5, &v56);
                v52 = v56;
                v53 = v57;
                v54 = v58;
                v55 = v59;
                v43[0] = MEMORY[0x277D85DD0];
                v43[1] = 3221225472;
                v43[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_3;
                v43[3] = &unk_2782FB958;
                v44 = v64;
                v45 = v65;
                v43[4] = *(a1 + 80);
                v43[5] = &v60;
                C3DIndicesContentEnumeratePrimitives(&v52, v43, v64);
              }

              ++v38;
            }

            while (v38 < *(a1 + 96));
          }

          v32 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](*(a1 + 32), *(*(*(a1 + 80) + 8) + 24), v42, [*(a1 + 40) currentBlitEncoder]);
          _Block_object_dispose(&v60, 8);
          v33 = 16;
          v34 = 31;
        }

        else
        {
          v37 = scn_default_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55_cold_1(a3, v37);
          }

          v34 = 0;
          v32 = 0;
          v33 = 0;
        }
      }

      else
      {
        v40 = 12 * *(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 80) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 80) + 8) + 24), v40, 0x100004052888210uLL);
        if (v65)
        {
          v14 = 0;
          v15 = 2;
          do
          {
            *v11.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v65), (v64.n128_u64[0] + v14 * BYTE6(v65)), v11, v12, v13);
            *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v15 - 2)) = v11.i32[0];
            *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v15 - 1)) = v11.i32[1];
            *(*(*(*(a1 + 80) + 8) + 24) + 4 * v15) = v11.i32[2];
            ++v14;
            v16 = v65;
            v15 += 3;
          }

          while (v14 < v65);
        }

        else
        {
          v16 = 0;
        }

        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v63 = v16;
        if (*(a1 + 96) >= 1)
        {
          v29 = 0;
          do
          {
            v30 = C3DMeshGetElementAtIndex(*(a1 + 104), v29, *(a1 + 112));
            if (!C3DMeshElementGetType(v30))
            {
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              C3DMeshElementGetContent(v30, a5, &v56);
              v52 = v56;
              v53 = v57;
              v54 = v58;
              v55 = v59;
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_56;
              v49[3] = &unk_2782FB958;
              v50 = v64;
              v51 = v65;
              v49[4] = *(a1 + 80);
              v49[5] = &v60;
              C3DIndicesContentEnumeratePrimitives(&v52, v49, v64);
            }

            ++v29;
          }

          while (v29 < *(a1 + 96));
        }

        v31 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](*(a1 + 32), *(*(*(a1 + 80) + 8) + 24), v40, [*(a1 + 40) currentBlitEncoder]);
        v32 = v31;
        if (!a3)
        {
          *(*(a1 + 48) + 32) = v31;
        }

        _Block_object_dispose(&v60, 8);
        v33 = 12;
        v34 = 30;
      }

      [SCNMTLResourceManager _fillVertexDescriptor:*(a1 + 56) withSemantic:a3 inputSet:a4 bufferIndex:(*(*(*(a1 + 88) + 8) + 24))++ vertexFormat:v34 offset:0 stride:v33];
      [*(a1 + 64) addObject:v32];
    }
  }
}

float32x4_t __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_56(uint64_t a1, float32x4_t a2, float a3, float a4, uint64_t a5, _DWORD *a6)
{
  *v8.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + *a6 * *(a1 + 70)), a2, a3, a4);
  v22 = v8;
  *v11.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a6[1] * *(a1 + 70)), v8, v9, v10);
  v21 = v11;
  *v14.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a6[2] * *(a1 + 70)), v11, v12, v13);
  __asm { FMOV            V1.4S, #3.0 }

  result = vdivq_f32(vaddq_f32(vaddq_f32(v22, v21), v14), _Q1);
  *(*(*(*(a1 + 32) + 8) + 24) + 12 * *(*(*(a1 + 40) + 8) + 24)) = result.i64[0];
  *(*(*(*(a1 + 32) + 8) + 24) + 12 * (*(*(*(a1 + 40) + 8) + 24))++ + 8) = result.i32[2];
  return result;
}

double __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_2(uint64_t a1, float32x4_t a2, float a3, float a4, uint64_t a5, _DWORD *a6)
{
  *v8.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + *a6 * *(a1 + 70)), a2, a3, a4);
  v22 = v8;
  *v11.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a6[1] * *(a1 + 70)), v8, v9, v10);
  v21 = v11;
  *v14.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a6[2] * *(a1 + 70)), v11, v12, v13);
  __asm { FMOV            V1.4S, #3.0 }

  *&result = vdivq_f32(vaddq_f32(vaddq_f32(v22, v21), v14), _Q1).u64[0];
  *(*(*(*(a1 + 32) + 8) + 24) + 8 * (*(*(*(a1 + 40) + 8) + 24))++) = result;
  return result;
}

float32x4_t __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_3(uint64_t a1, float32x4_t a2, float a3, float a4, uint64_t a5, _DWORD *a6)
{
  *v8.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + *a6 * *(a1 + 70)), a2, a3, a4);
  v22 = v8;
  *v11.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a6[1] * *(a1 + 70)), v8, v9, v10);
  v21 = v11;
  *v14.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a6[2] * *(a1 + 70)), v11, v12, v13);
  __asm { FMOV            V1.4S, #3.0 }

  result = vdivq_f32(vaddq_f32(vaddq_f32(vdivq_f32(v22, vdupq_laneq_s32(v22, 3)), vdivq_f32(v21, vdupq_laneq_s32(v21, 3))), vdivq_f32(v14, vdupq_laneq_s32(v14, 3))), _Q1);
  *(*(*(*(a1 + 32) + 8) + 24) + 16 * *(*(*(a1 + 40) + 8) + 24)) = result.i64[0];
  *(*(*(*(a1 + 32) + 8) + 24) + 16 * *(*(*(a1 + 40) + 8) + 24) + 8) = result.i32[2];
  *(*(*(*(a1 + 32) + 8) + 24) + 16 * (*(*(*(a1 + 40) + 8) + 24))++ + 12) = 1065353216;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVariableTopologySampleDeformerInstance;
  [(SCNGeometryVariableTopologySampleDeformerInstance *)&v3 dealloc];
}

- (unint64_t)updateWithContext:(id)context
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = -[SCNMTLRenderContext resourceComputeEncoder]([context _currentRenderContext]);
  [(MTLComputeCommandEncoder *)v5->_encoder pushDebugGroup:@"Variable topology sample deformer"];
  v6 = -[SCNMTLRenderContext renderTime]([context _currentRenderContext]);
  v7 = (((cosf(*&v6) * 0.5) + 0.5) * 1.5) + -0.25;
  if (v7 >= 1.0)
  {
    v7 = 1.0;
  }

  if (v7 > 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  mode = self->_mode;
  if (mode != 1)
  {
    if (mode)
    {
      goto LABEL_94;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    meshElementData = self->_meshElementData;
    v11 = [(NSMutableArray *)meshElementData countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (!v11)
    {
      goto LABEL_94;
    }

    v12 = v11;
    v13 = *v68;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v68 != v13)
      {
        objc_enumerationMutation(meshElementData);
      }

      v15 = *(*(&v67 + 1) + 8 * v14);
      *(v55 + 4) = 0;
      *v55 = v8;
      if (v15)
      {
        v16 = *(v15 + 40);
        HIDWORD(v55[0]) = *(v15 + 8);
        LODWORD(v55[1]) = v16;
        SCNMTLComputeCommandEncoder::setBytes(v5, v55, 0xCuLL, 0);
        buffer = [*(v15 + 16) buffer];
        v18 = *(v15 + 16);
      }

      else
      {
        LODWORD(v55[1]) = 0;
        SCNMTLComputeCommandEncoder::setBytes(v5, v55, 0xCuLL, 0);
        buffer = [0 buffer];
        v18 = 0;
      }

      offset = [v18 offset];
      if (v5->_buffers[1] == buffer)
      {
        if (v5->_offsets[1] == offset)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5->_buffers[1] = buffer;
      }

      v5->_offsets[1] = offset;
      v5->_buffersToBind[0] |= 2uLL;
LABEL_19:
      if (v15)
      {
        v20 = *(v15 + 24);
      }

      else
      {
        v20 = 0;
      }

      if (v5->_buffers[2] == v20)
      {
        if (!v5->_offsets[2])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v5->_buffers[2] = v20;
      }

      v5->_offsets[2] = 0;
      v5->_buffersToBind[0] |= 4uLL;
LABEL_25:
      drawIndexedPrimitivesIndirectBuffer = self->_drawIndexedPrimitivesIndirectBuffer;
      if (v15)
      {
        v22 = *(v15 + 32);
      }

      else
      {
        v22 = 0;
      }

      if (v5->_buffers[3] != drawIndexedPrimitivesIndirectBuffer)
      {
        v5->_buffers[3] = drawIndexedPrimitivesIndirectBuffer;
LABEL_30:
        v5->_offsets[3] = v22;
        v5->_buffersToBind[0] |= 8uLL;
        goto LABEL_31;
      }

      if (v5->_offsets[3] != v22)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (v15)
      {
        v23 = *(v15 + 56);
      }

      else
      {
        v23 = 0;
      }

      computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)v23 computeEvaluator];
      v25 = HIDWORD(v55[0]);
      if (v5->_computePipelineState != computeEvaluator)
      {
        v5->_computePipelineState = computeEvaluator;
        [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator];
      }

      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v25);
      if (v12 == ++v14)
      {
        v26 = [(NSMutableArray *)meshElementData countByEnumeratingWithState:&v67 objects:v72 count:16];
        v12 = v26;
        if (!v26)
        {
          goto LABEL_94;
        }

        goto LABEL_10;
      }
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *v55 = 0u;
  v56 = 0u;
  if (context)
  {
    [context _currentTransforms];
  }

  positionBuffer = self->_positionBuffer;
  if (v5->_buffers[1] != positionBuffer)
  {
    v5->_buffers[1] = positionBuffer;
LABEL_48:
    v5->_offsets[1] = 0;
    v5->_buffersToBind[0] |= 2uLL;
    goto LABEL_49;
  }

  if (v5->_offsets[1])
  {
    goto LABEL_48;
  }

LABEL_49:
  SCNMTLComputeCommandEncoder::setBytes(v5, v55, 0xC0uLL, 2uLL);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = self->_meshElementData;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (!v29)
  {
    goto LABEL_83;
  }

  v30 = v29;
  v31 = *v52;
  do
  {
    v32 = 0;
    do
    {
      if (*v52 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v51 + 1) + 8 * v32);
      *&v50[1] = 0;
      *v50 = v8;
      if (v33)
      {
        v34 = *(v33 + 40);
        v50[1] = *(v33 + 8);
        v50[2] = v34;
        SCNMTLComputeCommandEncoder::setBytes(v5, v50, 0xCuLL, 0);
        buffer2 = [*(v33 + 16) buffer];
        v36 = *(v33 + 16);
      }

      else
      {
        v50[2] = 0;
        SCNMTLComputeCommandEncoder::setBytes(v5, v50, 0xCuLL, 0);
        buffer2 = [0 buffer];
        v36 = 0;
      }

      offset2 = [v36 offset];
      if (v5->_buffers[3] == buffer2)
      {
        if (v5->_offsets[3] == offset2)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v5->_buffers[3] = buffer2;
      }

      v5->_offsets[3] = offset2;
      v5->_buffersToBind[0] |= 8uLL;
LABEL_60:
      if (v33)
      {
        v38 = *(v33 + 24);
      }

      else
      {
        v38 = 0;
      }

      if (v5->_buffers[4] == v38)
      {
        if (!v5->_offsets[4])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v5->_buffers[4] = v38;
      }

      v5->_offsets[4] = 0;
      v5->_buffersToBind[0] |= 0x10uLL;
LABEL_66:
      deformedPrimitiveCountBuffer = self->_deformedPrimitiveCountBuffer;
      if (v33)
      {
        v40 = *(v33 + 48);
      }

      else
      {
        v40 = 0;
      }

      if (v5->_buffers[5] == deformedPrimitiveCountBuffer)
      {
        if (v5->_offsets[5] == v40)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v5->_buffers[5] = deformedPrimitiveCountBuffer;
      }

      v5->_offsets[5] = v40;
      v5->_buffersToBind[0] |= 0x20uLL;
LABEL_72:
      if (v33)
      {
        v41 = *(v33 + 56);
      }

      else
      {
        v41 = 0;
      }

      computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)v41 computeEvaluator];
      v43 = v50[1];
      if (v5->_computePipelineState != computeEvaluator2)
      {
        v5->_computePipelineState = computeEvaluator2;
        [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator2];
      }

      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v43);
      ++v32;
    }

    while (v30 != v32);
    v44 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v51 objects:v71 count:16];
    v30 = v44;
  }

  while (v44);
LABEL_83:
  v50[0] = [(NSMutableArray *)self->_meshElementData count];
  v45 = self->_deformedPrimitiveCountBuffer;
  if (v5->_buffers[0] != v45)
  {
    v5->_buffers[0] = v45;
    goto LABEL_86;
  }

  if (v5->_offsets[0])
  {
LABEL_86:
    v5->_offsets[0] = 0;
    v5->_buffersToBind[0] |= 1uLL;
  }

  v46 = self->_drawIndexedPrimitivesIndirectBuffer;
  if (v5->_buffers[1] != v46)
  {
    v5->_buffers[1] = v46;
    goto LABEL_90;
  }

  if (v5->_offsets[1])
  {
LABEL_90:
    v5->_offsets[1] = 0;
    v5->_buffersToBind[0] |= 2uLL;
  }

  SCNMTLComputeCommandEncoder::setBytes(v5, v50, 4uLL, 2uLL);
  computeEvaluator3 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_finalizeComputePipeline computeEvaluator];
  v48 = v50[0];
  if (v5->_computePipelineState != computeEvaluator3)
  {
    v5->_computePipelineState = computeEvaluator3;
    [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator3];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v48);
LABEL_94:
  [(MTLComputeCommandEncoder *)v5->_encoder popDebugGroup];
  return 1;
}

void *__110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_59(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = [*(result[4] + 24) objectAtIndexedSubscript:a3 - 1];
    if (result)
    {
      v4 = result[1];
      v5 = result[5];
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      if (!a2)
      {
        return result;
      }
    }

    v6 = v5 + v4;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v6 = *(*(result[5] + 8) + 24);
  }

  *(a2 + 40) = v6;
  return result;
}

- (void)initWithNode:(NSObject *)a3 deformer:outputs:computeVertexCount:context:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "dataKind == kC3DMeshDataKindOriginal";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Only original data kind can have non 'GPU' primitive type", a1);
}

- (void)initWithNode:(NSObject *)a3 deformer:outputs:computeVertexCount:context:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DMeshElementGetType(meshElement) == kC3DMeshElementTypeTrianglesArray";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Variable topology sample expects triangles", a1);
}

- (void)initWithNode:(const void *)a3 deformer:(const void *)a4 outputs:computeVertexCount:context:.cold.4(const void *a1, const void *a2, const void *a3, const void *a4)
{
  _Block_object_dispose(a1, 8);
  _Block_object_dispose(a2, 8);
  _Block_object_dispose(a3, 8);
  _Block_object_dispose(a4, 8);
}

void __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55_cold_1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = C3DMeshSourceSemanticToSemanticString(a1);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported semantic %@", &v3, 0xCu);
}

@end