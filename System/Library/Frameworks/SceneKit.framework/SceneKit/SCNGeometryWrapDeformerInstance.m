@interface SCNGeometryWrapDeformerInstance
- (_BYTE)initWithNode:(void *)a3 drivingNode:(void *)a4 deformer:(uint64_t)a5 outputs:(uint64_t)a6 computeVertexCount:(void *)a7 context:;
- (unint64_t)updateWithContext:(id)a3;
- (void)dealloc;
- (void)initWithNode:(void *)a3 innerLayerNode:(void *)a4 outerLayerNode:(void *)a5 deformer:(uint64_t)a6 outputs:(uint64_t)a7 computeVertexCount:(void *)a8 context:;
@end

@implementation SCNGeometryWrapDeformerInstance

- (_BYTE)initWithNode:(void *)a3 drivingNode:(void *)a4 deformer:(uint64_t)a5 outputs:(uint64_t)a6 computeVertexCount:(void *)a7 context:
{
  if (!a1)
  {
    return 0;
  }

  v36.receiver = a1;
  v36.super_class = SCNGeometryWrapDeformerInstance;
  v12 = objc_msgSendSuper2(&v36, sel_init);
  if (v12)
  {
    [a4 initParametersIfNeededForDeformedNode:a2];
    v13 = a4[3];
    v12[256] = 1;
    *(v12 + 1) = *(v13 + 16);
    *(v12 + 44) = [a3 nodeRef];
    *(v12 + 22) = [a2 nodeRef];
    if (*(v13 + 8) != a6)
    {
      [SCNGeometryWrapDeformerInstance initWithNode:drivingNode:deformer:outputs:computeVertexCount:context:];
    }

    *(v12 + 68) = a6;
    v14 = *(v13 + 32);
    v15 = *(v13 + 56);
    if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes([a7 device]))
    {
      v14 = (*(v13 + 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (*(v13 + 56) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __104__SCNGeometryWrapDeformerInstance_initWithNode_drivingNode_deformer_outputs_computeVertexCount_context___block_invoke;
    v34[3] = &unk_2782FE430;
    v34[4] = a7;
    v34[5] = v13;
    v34[7] = v14;
    v34[8] = v15;
    v34[6] = v12;
    v35 = xmmword_21C2A2080;
    v16 = *(v12 + 1);
    v17 = @"deformer_wrap_legacy_relative";
    if (v16 != 1)
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"deformer_wrap_legacy_absolute";
    }

    v19 = objc_alloc_init(MEMORY[0x277CD6FF0]);
    *(v12 + 24) = [objc_msgSend(a7 "_currentResourceManager")];

    if (v14 == *(v13 + 32))
    {
      v20 = [objc_msgSend(a7 "device")];
      v21 = 0;
    }

    else
    {
      v22 = v14 * *(v13 + 8);
      v23 = malloc_type_realloc(0, v22, 0x93094314uLL);
      v21 = v23;
      if (*(v13 + 8))
      {
        v24 = 0;
        v25 = v23;
        do
        {
          memcpy(v25, (*(v13 + 24) + *(v13 + 32) * v24++), *(v13 + 32));
          v25 += v14;
        }

        while (v24 < *(v13 + 8));
      }

      v20 = [objc_msgSend(a7 "device")];
    }

    *(v12 + 25) = v20;
    if (v15 == *(v13 + 56))
    {
      v26 = [a7 device];
      v27 = *(v13 + 48);
      v28 = *(v13 + 56) * *(v13 + 8);
    }

    else
    {
      v29 = v15 * *(v13 + 8);
      v30 = malloc_type_realloc(v21, v29, 0xB6B1142AuLL);
      v21 = v30;
      if (*(v13 + 8))
      {
        v31 = 0;
        v32 = v30;
        do
        {
          memcpy(v32, (*(v13 + 48) + *(v13 + 56) * v31++), *(v13 + 56));
          v32 += v15;
        }

        while (v31 < *(v13 + 8));
      }

      v26 = [a7 device];
      v27 = v21;
      v28 = v29;
    }

    *(v12 + 26) = [v26 newBufferWithBytes:v27 length:v28 options:0];
    *(v12 + 45) = [objc_msgSend(a7 "device")];
    free(v21);
  }

  return v12;
}

- (void)initWithNode:(void *)a3 innerLayerNode:(void *)a4 outerLayerNode:(void *)a5 deformer:(uint64_t)a6 outputs:(uint64_t)a7 computeVertexCount:(void *)a8 context:
{
  if (!a1)
  {
    return 0;
  }

  v47.receiver = a1;
  v47.super_class = SCNGeometryWrapDeformerInstance;
  v14 = objc_msgSendSuper2(&v47, sel_init);
  if (v14)
  {
    [a5 initParametersIfNeededForDeformedNode:a2];
    v15 = a5[3];
    v14[1] = *(v15 + 16);
    v14[20] = [a3 nodeRef];
    v14[21] = [a4 nodeRef];
    v14[22] = [a2 nodeRef];
    if (*(v15 + 8) != a7)
    {
      [SCNGeometryWrapDeformerInstance initWithNode:innerLayerNode:outerLayerNode:deformer:outputs:computeVertexCount:context:];
    }

    *(v14 + 4) = a7;
    v16 = *(v15 + 32);
    v17 = *(v15 + 56);
    if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes([a8 device]))
    {
      v16 = (*(v15 + 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (*(v15 + 56) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __122__SCNGeometryWrapDeformerInstance_initWithNode_innerLayerNode_outerLayerNode_deformer_outputs_computeVertexCount_context___block_invoke;
    v39 = &unk_2782FE458;
    v40 = a8;
    v41 = v15;
    v43 = v16;
    v44 = v17;
    v42 = v14;
    v45 = xmmword_21C2A2090;
    v46 = 36;
    v18 = v14[1];
    v19 = @"deformer_wrap_relative";
    if (v18 != 1)
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = @"deformer_wrap_absolute";
    }

    v21 = objc_alloc_init(MEMORY[0x277CD6FF0]);
    v14[24] = [objc_msgSend(a8 _currentResourceManager];

    if (v16 == *(v15 + 32))
    {
      v22 = [objc_msgSend(a8 "device")];
      v23 = 0;
    }

    else
    {
      v24 = v16 * *(v15 + 8);
      v25 = malloc_type_realloc(0, v24, 0x2EE97D03uLL);
      v23 = v25;
      if (*(v15 + 8))
      {
        v26 = 0;
        v27 = v25;
        do
        {
          memcpy(v27, (*(v15 + 24) + *(v15 + 32) * v26++), *(v15 + 32));
          v27 += v16;
        }

        while (v26 < *(v15 + 8));
      }

      v22 = [objc_msgSend(a8 "device")];
    }

    v14[25] = v22;
    if (v17 == *(v15 + 56))
    {
      v28 = [a8 device];
      v29 = *(v15 + 48);
      v30 = *(v15 + 56) * *(v15 + 8);
    }

    else
    {
      v31 = v17 * *(v15 + 8);
      v32 = malloc_type_realloc(v23, v31, 0xB0EEF6D4uLL);
      v23 = v32;
      if (*(v15 + 8))
      {
        v33 = 0;
        v34 = v32;
        do
        {
          memcpy(v34, (*(v15 + 48) + *(v15 + 56) * v33++), *(v15 + 56));
          v34 += v17;
        }

        while (v33 < *(v15 + 8));
      }

      v28 = [a8 device];
      v29 = v23;
      v30 = v31;
    }

    v14[26] = [v28 newBufferWithBytes:v29 length:v30 options:0];
    v14[27] = [objc_msgSend(a8 "device")];
    if (v14[1] == 1)
    {
      v14[28] = [objc_msgSend(a8 "device")];
      v14[29] = [objc_msgSend(a8 "device")];
      v14[30] = [objc_msgSend(a8 "device")];
      v14[31] = [objc_msgSend(a8 "device")];
    }

    free(v23);
  }

  return v14;
}

uint64_t __104__SCNGeometryWrapDeformerInstance_initWithNode_drivingNode_deformer_outputs_computeVertexCount_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) configureStageInputOutputDescriptor:a3 withDeformerFunction:a2];
  v5 = [objc_msgSend(a3 "attributes")];
  [v5 setFormat:*(*(a1 + 40) + 40)];
  [v5 setOffset:0];
  [v5 setBufferIndex:3];
  v6 = [objc_msgSend(a3 "layouts")];
  [v6 setStepFunction:5];
  [v6 setStride:*(a1 + 56)];
  v7 = [objc_msgSend(a3 "attributes")];
  [v7 setFormat:*(*(a1 + 40) + 64)];
  [v7 setOffset:0];
  [v7 setBufferIndex:4];
  v8 = [objc_msgSend(a3 "layouts")];
  [v8 setStepFunction:5];
  [v8 setStride:*(a1 + 64)];
  v9 = *(*(a1 + 48) + 8);
  v10 = [a3 attributes];
  if (v9)
  {
    v11 = [v10 objectAtIndexedSubscript:11];
    [v11 setFormat:31];
    [v11 setOffset:0];
    [v11 setBufferIndex:6];
    v12 = [objc_msgSend(a3 "attributes")];
    [v12 setFormat:31];
    [v12 setOffset:16];
    [v12 setBufferIndex:6];
    v13 = [objc_msgSend(a3 "attributes")];
    [v13 setFormat:31];
    [v13 setOffset:32];
    v14 = 80;
  }

  else
  {
    v13 = [v10 objectAtIndexedSubscript:9];
    [v13 setFormat:30];
    [v13 setOffset:0];
    v14 = 72;
  }

  [v13 setBufferIndex:6];
  v15 = [objc_msgSend(a3 "layouts")];
  [v15 setStepFunction:5];
  v16 = *(a1 + v14);

  return [v15 setStride:v16];
}

uint64_t __122__SCNGeometryWrapDeformerInstance_initWithNode_innerLayerNode_outerLayerNode_deformer_outputs_computeVertexCount_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) configureStageInputOutputDescriptor:a3 withDeformerFunction:a2];
  v5 = [objc_msgSend(a3 "attributes")];
  [v5 setFormat:*(*(a1 + 40) + 40)];
  [v5 setOffset:0];
  [v5 setBufferIndex:3];
  v6 = [objc_msgSend(a3 "layouts")];
  [v6 setStepFunction:5];
  [v6 setStride:*(a1 + 56)];
  v7 = [objc_msgSend(a3 "attributes")];
  [v7 setFormat:*(*(a1 + 40) + 64)];
  [v7 setOffset:0];
  [v7 setBufferIndex:4];
  v8 = [objc_msgSend(a3 "layouts")];
  [v8 setStepFunction:5];
  [v8 setStride:*(a1 + 64)];
  v9 = [objc_msgSend(a3 "attributes")];
  [v9 setFormat:28];
  [v9 setOffset:0];
  [v9 setBufferIndex:5];
  v10 = [objc_msgSend(a3 "layouts")];
  [v10 setStepFunction:5];
  result = [v10 setStride:*(a1 + 72)];
  if (*(*(a1 + 48) + 8) == 1)
  {
    v12 = [objc_msgSend(a3 "attributes")];
    [v12 setFormat:30];
    [v12 setOffset:0];
    [v12 setBufferIndex:6];
    v13 = [objc_msgSend(a3 "layouts")];
    [v13 setStepFunction:5];
    [v13 setStride:*(a1 + 80)];
    v14 = [objc_msgSend(a3 "attributes")];
    [v14 setFormat:30];
    [v14 setOffset:0];
    [v14 setBufferIndex:7];
    v15 = [objc_msgSend(a3 "layouts")];
    [v15 setStepFunction:5];
    [v15 setStride:*(a1 + 80)];
    v16 = [objc_msgSend(a3 "attributes")];
    [v16 setFormat:30];
    [v16 setOffset:0];
    [v16 setBufferIndex:8];
    v17 = [objc_msgSend(a3 "attributes")];
    [v17 setFormat:30];
    [v17 setOffset:12];
    [v17 setBufferIndex:8];
    v18 = [objc_msgSend(a3 "attributes")];
    [v18 setFormat:30];
    [v18 setOffset:24];
    [v18 setBufferIndex:8];
    v19 = [objc_msgSend(a3 "layouts")];
    [v19 setStepFunction:5];
    [v19 setStride:*(a1 + 88)];
    v20 = [objc_msgSend(a3 "attributes")];
    [v20 setFormat:30];
    [v20 setOffset:0];
    [v20 setBufferIndex:9];
    v21 = [objc_msgSend(a3 "attributes")];
    [v21 setFormat:30];
    [v21 setOffset:12];
    [v21 setBufferIndex:9];
    v22 = [objc_msgSend(a3 "attributes")];
    [v22 setFormat:30];
    [v22 setOffset:24];
    [v22 setBufferIndex:9];
    v23 = [objc_msgSend(a3 "layouts")];
    [v23 setStepFunction:5];
    v24 = *(a1 + 88);

    return [v23 setStride:v24];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryWrapDeformerInstance;
  [(SCNGeometryWrapDeformerInstance *)&v3 dealloc];
}

- (unint64_t)updateWithContext:(id)a3
{
  v5 = [a3 _currentFrameHash];
  if (self->_currentFrameHash == v5)
  {
    return 0;
  }

  self->_currentFrameHash = v5;
  v7 = -[SCNMTLRenderContext resourceComputeEncoder]([a3 _currentRenderContext]);
  if (!self->_isLegacySingleLayerDeformer)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(self->_innerLayerNode);
    v48 = WorldMatrix[1];
    v49 = *WorldMatrix;
    v50 = WorldMatrix[3];
    v51 = WorldMatrix[2];
    v16 = C3DNodeGetWorldMatrix(self->_outerLayerNode);
    v53 = v16[1];
    v55 = *v16;
    v57 = v16[3];
    v59 = v16[2];
    v17 = C3DNodeGetWorldMatrix(self->_deformedNode);
    v70.columns[0] = *v17;
    v70.columns[1] = v17[1];
    v70.columns[2] = v17[2];
    v70.columns[3] = v17[3];
    v71 = __invert_f4(v70);
    v18 = 0;
    v60 = v49;
    v61 = v48;
    v62 = v51;
    v63 = v50;
    do
    {
      *(&v64 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71.columns[0], COERCE_FLOAT(*(&v60 + v18))), v71.columns[1], *&v60.f32[v18 / 4], 1), v71.columns[2], *(&v60 + v18), 2), v71.columns[3], *(&v60 + v18), 3);
      v18 += 16;
    }

    while (v18 != 64);
    v19 = 0;
    v20 = v65;
    v21 = v66;
    v22 = v67;
    *&self->_anon_14[12] = v64;
    *&self->_anon_14[28] = v20;
    *&self->_anon_14[44] = v21;
    *&self->_anon_14[60] = v22;
    v60 = v55;
    v61 = v53;
    v62 = v59;
    v63 = v57;
    do
    {
      *(&v64 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71.columns[0], COERCE_FLOAT(*(&v60 + v19))), v71.columns[1], *&v60.f32[v19 / 4], 1), v71.columns[2], *(&v60 + v19), 2), v71.columns[3], *(&v60 + v19), 3);
      v19 += 16;
    }

    while (v19 != 64);
    v23 = v65;
    v24 = v66;
    v25 = v67;
    *&self->_anon_14[76] = v64;
    *&self->_anon_14[92] = v23;
    *&self->_anon_14[108] = v24;
    *&self->_anon_14[124] = v25;
    SCNMTLComputeCommandEncoder::setBytes(v7, &self->_uniforms, 0x90uLL, 0);
    v26 = [a3 dependency0PositionBuffer];
    if (v7->_buffers[1] == v26)
    {
      if (!v7->_offsets[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7->_buffers[1] = v26;
    }

    v7->_offsets[1] = 0;
    v7->_buffersToBind[0] |= 2uLL;
LABEL_20:
    v28 = [a3 dependency1PositionBuffer];
    if (v7->_buffers[2] == v28)
    {
      if (!v7->_offsets[2])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v7->_buffers[2] = v28;
    }

    v7->_offsets[2] = 0;
    v7->_buffersToBind[0] |= 4uLL;
LABEL_28:
    v30 = [a3 dstPositionBuffer];
    if (v7->_buffers[11] == v30)
    {
      if (!v7->_offsets[11])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v7->_buffers[11] = v30;
    }

    v7->_offsets[11] = 0;
    v7->_buffersToBind[0] |= 0x800uLL;
LABEL_36:
    pointIndicesBuffer = self->_pointIndicesBuffer;
    if (v7->_buffers[3] == pointIndicesBuffer)
    {
      if (!v7->_offsets[3])
      {
        goto LABEL_44;
      }
    }

    else
    {
      v7->_buffers[3] = pointIndicesBuffer;
    }

    v7->_offsets[3] = 0;
    v7->_buffersToBind[0] |= 8uLL;
LABEL_44:
    barycentricCoordsBuffer = self->_barycentricCoordsBuffer;
    if (v7->_buffers[4] == barycentricCoordsBuffer)
    {
      if (!v7->_offsets[4])
      {
        goto LABEL_53;
      }
    }

    else
    {
      v7->_buffers[4] = barycentricCoordsBuffer;
    }

    v7->_offsets[4] = 0;
    v7->_buffersToBind[0] |= 0x10uLL;
LABEL_53:
    innerLayerInfluencesBuffer = self->_innerLayerInfluencesBuffer;
    if (v7->_buffers[5] == innerLayerInfluencesBuffer)
    {
      if (!v7->_offsets[5])
      {
        goto LABEL_57;
      }
    }

    else
    {
      v7->_buffers[5] = innerLayerInfluencesBuffer;
    }

    v7->_offsets[5] = 0;
    v7->_buffersToBind[0] |= 0x20uLL;
LABEL_57:
    if (self->_bindingMode != 1)
    {
      goto LABEL_81;
    }

    v37 = [a3 srcPositionBuffer];
    if (v7->_buffers[10] == v37)
    {
      if (!v7->_offsets[10])
      {
        goto LABEL_65;
      }
    }

    else
    {
      v7->_buffers[10] = v37;
    }

    v7->_offsets[10] = 0;
    v7->_buffersToBind[0] |= 0x400uLL;
LABEL_65:
    innerBindingSpaceVectorsBuffer = self->_innerBindingSpaceVectorsBuffer;
    if (v7->_buffers[8] == innerBindingSpaceVectorsBuffer)
    {
      if (!v7->_offsets[8])
      {
        goto LABEL_69;
      }
    }

    else
    {
      v7->_buffers[8] = innerBindingSpaceVectorsBuffer;
    }

    v7->_offsets[8] = 0;
    v7->_buffersToBind[0] |= 0x100uLL;
LABEL_69:
    outerBindingSpaceVectorsBuffer = self->_outerBindingSpaceVectorsBuffer;
    if (v7->_buffers[9] == outerBindingSpaceVectorsBuffer)
    {
      if (!v7->_offsets[9])
      {
        goto LABEL_73;
      }
    }

    else
    {
      v7->_buffers[9] = outerBindingSpaceVectorsBuffer;
    }

    v7->_offsets[9] = 0;
    v7->_buffersToBind[0] |= 0x200uLL;
LABEL_73:
    innerBindingOffsetsBuffer = self->_innerBindingOffsetsBuffer;
    if (v7->_buffers[6] == innerBindingOffsetsBuffer)
    {
      if (!v7->_offsets[6])
      {
LABEL_77:
        outerBindingOffsetsBuffer = self->_outerBindingOffsetsBuffer;
        if (v7->_buffers[7] != outerBindingOffsetsBuffer)
        {
          v7->_buffers[7] = outerBindingOffsetsBuffer;
LABEL_80:
          v7->_offsets[7] = 0;
          v7->_buffersToBind[0] |= 0x80uLL;
          goto LABEL_81;
        }

        if (v7->_offsets[7])
        {
          goto LABEL_80;
        }

LABEL_81:
        vertexCount = self->_uniforms.vertexCount;
        v64 = 0uLL;
        encoder = v7->_encoder;
        *&v65 = 0;
        *(&v65 + 1) = vertexCount;
        v66 = vdupq_n_s64(1uLL);
        [(MTLComputeCommandEncoder *)encoder setStageInRegion:&v64];
        v40 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_computePipeline computeEvaluator];
        v41 = self->_uniforms.vertexCount;
        goto LABEL_82;
      }
    }

    else
    {
      v7->_buffers[6] = innerBindingOffsetsBuffer;
    }

    v7->_offsets[6] = 0;
    v7->_buffersToBind[0] |= 0x40uLL;
    goto LABEL_77;
  }

  v8 = C3DNodeGetWorldMatrix(self->_legacyDrivingNode);
  v52 = v8[1];
  v54 = *v8;
  v56 = v8[3];
  v58 = v8[2];
  v9 = C3DNodeGetWorldMatrix(self->_deformedNode);
  v68.columns[0] = *v9;
  v68.columns[1] = v9[1];
  v68.columns[2] = v9[2];
  v68.columns[3] = v9[3];
  v69 = __invert_f4(v68);
  v10 = 0;
  v60 = v54;
  v61 = v52;
  v62 = v58;
  v63 = v56;
  do
  {
    *(&v64 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v69.columns[0], COERCE_FLOAT(*(&v60 + v10))), v69.columns[1], *&v60.f32[v10 / 4], 1), v69.columns[2], *(&v60 + v10), 2), v69.columns[3], *(&v60 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v11 = v65;
  v12 = v66;
  v13 = v67;
  *&self->_anon_114[12] = v64;
  *&self->_anon_114[28] = v11;
  *&self->_anon_114[44] = v12;
  *&self->_anon_114[60] = v13;
  SCNMTLComputeCommandEncoder::setBytes(v7, &self->_legacyUniforms, 0x50uLL, 0);
  v14 = [a3 dependency0PositionBuffer];
  if (v7->_buffers[1] == v14)
  {
    if (!v7->_offsets[1])
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7->_buffers[1] = v14;
  }

  v7->_offsets[1] = 0;
  v7->_buffersToBind[0] |= 2uLL;
LABEL_16:
  v27 = [a3 dstPositionBuffer];
  if (v7->_buffers[11] == v27)
  {
    if (!v7->_offsets[11])
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7->_buffers[11] = v27;
  }

  v7->_offsets[11] = 0;
  v7->_buffersToBind[0] |= 0x800uLL;
LABEL_24:
  v29 = self->_pointIndicesBuffer;
  if (v7->_buffers[3] == v29)
  {
    if (!v7->_offsets[3])
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7->_buffers[3] = v29;
  }

  v7->_offsets[3] = 0;
  v7->_buffersToBind[0] |= 8uLL;
LABEL_32:
  v31 = self->_barycentricCoordsBuffer;
  if (v7->_buffers[4] == v31)
  {
    if (!v7->_offsets[4])
    {
      goto LABEL_40;
    }
  }

  else
  {
    v7->_buffers[4] = v31;
  }

  v7->_offsets[4] = 0;
  v7->_buffersToBind[0] |= 0x10uLL;
LABEL_40:
  legacyOffsetsOrTransformsBuffer = self->_legacyOffsetsOrTransformsBuffer;
  if (v7->_buffers[6] == legacyOffsetsOrTransformsBuffer)
  {
    if (!v7->_offsets[6])
    {
      goto LABEL_48;
    }
  }

  else
  {
    v7->_buffers[6] = legacyOffsetsOrTransformsBuffer;
  }

  v7->_offsets[6] = 0;
  v7->_buffersToBind[0] |= 0x40uLL;
LABEL_48:
  if (self->_bindingMode == 1)
  {
    v35 = [a3 srcPositionBuffer];
    if (v7->_buffers[10] != v35)
    {
      v7->_buffers[10] = v35;
LABEL_61:
      v7->_offsets[10] = 0;
      v7->_buffersToBind[0] |= 0x400uLL;
      goto LABEL_62;
    }

    if (v7->_offsets[10])
    {
      goto LABEL_61;
    }
  }

LABEL_62:
  v38 = self->_legacyUniforms.vertexCount;
  v64 = 0uLL;
  v39 = v7->_encoder;
  *&v65 = 0;
  *(&v65 + 1) = v38;
  v66 = vdupq_n_s64(1uLL);
  [(MTLComputeCommandEncoder *)v39 setStageInRegion:&v64];
  v40 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_computePipeline computeEvaluator];
  v41 = self->_legacyUniforms.vertexCount;
LABEL_82:
  if (v7->_computePipelineState != v40)
  {
    v7->_computePipelineState = v40;
    [(MTLComputeCommandEncoder *)v7->_encoder setComputePipelineState:v40];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v7, v41);
  return 1;
}

@end