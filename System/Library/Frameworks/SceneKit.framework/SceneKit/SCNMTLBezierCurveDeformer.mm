@interface SCNMTLBezierCurveDeformer
- (SCNMTLBezierCurveDeformer)initWithMeshlessGeometry:(__C3DGeometry *)geometry outputs:(unint64_t)outputs deformDataKind:(unsigned __int8)kind finalDataKind:(unsigned __int8)dataKind resourceManager:(id)manager computeContext:(id)context;
- (id)bufferForCommonProfileArgumentNamed:(id)named;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
@end

@implementation SCNMTLBezierCurveDeformer

- (SCNMTLBezierCurveDeformer)initWithMeshlessGeometry:(__C3DGeometry *)geometry outputs:(unint64_t)outputs deformDataKind:(unsigned __int8)kind finalDataKind:(unsigned __int8)dataKind resourceManager:(id)manager computeContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = SCNMTLBezierCurveDeformer;
  v10 = [(SCNMTLBezierCurveDeformer *)&v44 init:geometry];
  if (!v10)
  {
    return v10;
  }

  *v10->_anon_10 = C3DBezierCurveGeometryGetTransform(geometry);
  *&v10->_anon_10[16] = v11;
  *&v10->_anon_10[32] = v12;
  *&v10->_anon_10[48] = v13;
  BezierCurve = C3DBezierCurveGeometryGetBezierCurve(geometry);
  CurveInfo = C3DBezierCurveGetCurveInfo(BezierCurve);
  v17 = v16;
  v43 = 0;
  CurveSegmentsControlPointIndices = C3DBezierCurveGetCurveSegmentsControlPointIndices(BezierCurve, &v43);
  v10->_curveControlPointCount = CurveInfo;
  v10->_curveInfo.segmentCountLinear = WORD2(CurveInfo);
  v10->_curveInfo.segmentCountQuadratic = v17;
  v19 = HIDWORD(v17);
  v10->_curveInfo.segmentCountCubic = WORD2(v17);
  v10->_curveInfo.segmentInfoOffsetLinear = 20;
  if (HIDWORD(CurveInfo))
  {
    v20 = HIDWORD(CurveInfo) + 20;
    v21 = v17;
    if (!v17)
    {
      goto LABEL_9;
    }

    if (CurveInfo >= 0xFFEC00000000)
    {
      [SCNMTLBezierCurveDeformer initWithMeshlessGeometry:outputs:deformDataKind:finalDataKind:resourceManager:computeContext:];
    }
  }

  else
  {
    v20 = 20;
    v21 = v17;
    if (!v17)
    {
LABEL_9:
      v10->_curveInfo.segmentInfoOffsetQuadratic = v20;
      if (v19)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  v10->_curveInfo.segmentInfoOffsetQuadratic = v20;
  v20 += v21;
  if (v19)
  {
LABEL_10:
    if (v20 >= 0x10000)
    {
      [SCNMTLBezierCurveDeformer initWithMeshlessGeometry:outputs:deformDataKind:finalDataKind:resourceManager:computeContext:];
    }

    v10->_curveInfo.segmentInfoOffsetCubic = v20;
    v20 += 114 * (8 * HIDWORD(v17));
    goto LABEL_12;
  }

LABEL_8:
  v10->_curveInfo.segmentInfoOffsetCubic = v20;
LABEL_12:
  if (v20 >= 0xFFFF)
  {
    [SCNMTLBezierCurveDeformer initWithMeshlessGeometry:outputs:deformDataKind:finalDataKind:resourceManager:computeContext:];
  }

  v22 = (v20 + 1) & 0xFFFE;
  v23 = v43;
  v24 = 2 * v43;
  v10->_curveInfo.controlPointIndicesOffset = v22;
  v25 = malloc_type_malloc(v22 + 2 * v23, 0x100004077774924uLL);
  v26 = *&v10->_curveInfo.monotonicSubsegmentCountCubic;
  v25[4] = *&v10->_curveInfo.controlPointIndicesOffset;
  *v25 = v26;
  memcpy(v25 + v10->_curveInfo.controlPointIndicesOffset, CurveSegmentsControlPointIndices, v24);
  [SCNMTLResourceManager newBufferWithBytes:manager length:? options:?];
  v10->_bezierCurveInfoBuffer = v27;
  free(v25);
  vertexDescriptor = [MEMORY[0x277CD7090] vertexDescriptor];
  Size = SCNMTLVertexFormatGetSize(30);
  v30 = SCNMTLVertexFormatGetSize(29);
  v31 = [objc_msgSend(vertexDescriptor "attributes")];
  [v31 setFormat:30];
  [v31 setOffset:0];
  [v31 setBufferIndex:18];
  v32 = [objc_msgSend(vertexDescriptor "layouts")];
  [v32 setStride:Size];
  [v32 setStepFunction:1];
  v33 = [objc_msgSend(vertexDescriptor "attributes")];
  [v33 setFormat:29];
  [v33 setOffset:0];
  [v33 setBufferIndex:19];
  v34 = [objc_msgSend(vertexDescriptor "layouts")];
  [v34 setStride:v30];
  [v34 setStepFunction:1];
  [SCNMTLResourceManager newBufferWithLength:manager options:?];
  v10->_quadTexcoordsBuffer = v35;
  [SCNMTLResourceManager newBufferWithLength:manager options:?];
  v10->_quadPositionsBuffer = v36;
  v37 = objc_alloc_init(SCNMTLMeshElement);
  [(SCNMTLMesh *)v37 setMutabilityTimestamp:?];
  [(SCNMTLMeshElement *)v37 setPrimitiveRange:2];
  v38 = objc_alloc_init(SCNMTLMesh);
  v10->_quadMesh = v38;
  [(SCNMTLMesh *)v38 setVertexDescriptor:vertexDescriptor];
  v46 = *&v10->_quadPositionsBuffer;
  -[SCNMTLMesh setBuffers:](v10->_quadMesh, [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:2]);
  v45 = v37;
  -[SCNMTLMesh setElements:](v10->_quadMesh, [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1]);

  v10->_buildQuadGeometryPipeline = [manager computePipelineStateForKernel:@"deformer_bezier_build_quad_geometry"];
  v10->_initBezierCurveInfoPipeline = [manager computePipelineStateForKernel:@"deformer_bezier_init_info"];
  if (v10->_curveInfo.segmentCountLinear)
  {
    v39 = [manager computePipelineStateForKernel:@"deformer_bezier_build_info_linear"];
  }

  else
  {
    v39 = 0;
  }

  v10->_buildBezierCurveInfoPipelineLinear = v39;
  if (v10->_curveInfo.segmentCountQuadratic)
  {
    v40 = [manager computePipelineStateForKernel:@"deformer_bezier_build_info_quadratic"];
  }

  else
  {
    v40 = 0;
  }

  v10->_buildBezierCurveInfoPipelineQuadratic = v40;
  if (v10->_curveInfo.segmentCountCubic)
  {
    v41 = [manager computePipelineStateForKernel:@"deformer_bezier_build_info_cubic"];
  }

  else
  {
    v41 = 0;
  }

  v10->_buildBezierCurveInfoPipelineCubic = v41;
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLBezierCurveDeformer;
  [(SCNMTLBezierCurveDeformer *)&v3 dealloc];
}

- (id)bufferForCommonProfileArgumentNamed:(id)named
{
  if ([named isEqualToString:@"scn_bezier_curve_data"])
  {
    v5 = 128;
    return *(&self->super.isa + v5);
  }

  if ([named isEqualToString:@"scn_bezier_curve_controlPoints"])
  {
    v5 = 136;
    return *(&self->super.isa + v5);
  }

  return 0;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  currentFrameHash = [context currentFrameHash];
  if (self->_currentFrameHash == currentFrameHash)
  {
    return 0;
  }

  self->_currentFrameHash = currentFrameHash;
  var0 = buffers->var0;
  var1 = buffers->var1;
  self->_lastDeformedCurveControlPointsBuffer = var1;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  segmentCountLinear = self->_curveInfo.segmentCountLinear;
  segmentCountQuadratic = self->_curveInfo.segmentCountQuadratic;
  v38 = segmentCountQuadratic;
  v39[0] = segmentCountLinear;
  segmentCountCubic = self->_curveInfo.segmentCountCubic;
  v37 = segmentCountCubic;
  bezierCurveInfoBuffer = self->_bezierCurveInfoBuffer;
  if (bezierCurveInfoBuffer)
  {
    currentComputeEncoder->_buffers[0] = bezierCurveInfoBuffer;
    currentComputeEncoder->_offsets[0] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 1uLL;
  }

  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_initBezierCurveInfoPipeline computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOne(currentComputeEncoder, computeEvaluator);
  if (currentComputeEncoder->_buffers[1] == var0)
  {
    if (!currentComputeEncoder->_offsets[1])
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[1] = var0;
  }

  currentComputeEncoder->_offsets[1] = 0;
  currentComputeEncoder->_buffersToBind[0] |= 2uLL;
LABEL_9:
  if (!segmentCountLinear)
  {
    goto LABEL_21;
  }

  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, v39, 4uLL, 0);
  v17 = self->_bezierCurveInfoBuffer;
  controlPointIndicesOffset = self->_curveInfo.controlPointIndicesOffset;
  if (currentComputeEncoder->_buffers[2] == v17)
  {
    if (currentComputeEncoder->_offsets[2] == controlPointIndicesOffset)
    {
      goto LABEL_14;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[2] = v17;
  }

  currentComputeEncoder->_offsets[2] = controlPointIndicesOffset;
  currentComputeEncoder->_buffersToBind[0] |= 4uLL;
  v17 = self->_bezierCurveInfoBuffer;
LABEL_14:
  segmentInfoOffsetLinear = self->_curveInfo.segmentInfoOffsetLinear;
  if (currentComputeEncoder->_buffers[3] != v17)
  {
    currentComputeEncoder->_buffers[3] = v17;
LABEL_17:
    currentComputeEncoder->_offsets[3] = segmentInfoOffsetLinear;
    currentComputeEncoder->_buffersToBind[0] |= 8uLL;
    goto LABEL_18;
  }

  if (currentComputeEncoder->_offsets[3] != segmentInfoOffsetLinear)
  {
    goto LABEL_17;
  }

LABEL_18:
  computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildBezierCurveInfoPipelineLinear computeEvaluator];
  v21 = v39[0];
  if (currentComputeEncoder->_computePipelineState != computeEvaluator2)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator2;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator2];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v21);
  segmentCountQuadratic = v38;
LABEL_21:
  if (segmentCountQuadratic < 1)
  {
    goto LABEL_33;
  }

  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, &v38, 4uLL, 0);
  v22 = self->_bezierCurveInfoBuffer;
  v23 = self->_curveInfo.controlPointIndicesOffset + 4 * v39[0];
  if (currentComputeEncoder->_buffers[2] == v22)
  {
    if (currentComputeEncoder->_offsets[2] == v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[2] = v22;
  }

  currentComputeEncoder->_offsets[2] = v23;
  currentComputeEncoder->_buffersToBind[0] |= 4uLL;
  v22 = self->_bezierCurveInfoBuffer;
LABEL_26:
  segmentInfoOffsetQuadratic = self->_curveInfo.segmentInfoOffsetQuadratic;
  if (currentComputeEncoder->_buffers[3] != v22)
  {
    currentComputeEncoder->_buffers[3] = v22;
LABEL_29:
    currentComputeEncoder->_offsets[3] = segmentInfoOffsetQuadratic;
    currentComputeEncoder->_buffersToBind[0] |= 8uLL;
    goto LABEL_30;
  }

  if (currentComputeEncoder->_offsets[3] != segmentInfoOffsetQuadratic)
  {
    goto LABEL_29;
  }

LABEL_30:
  computeEvaluator3 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildBezierCurveInfoPipelineQuadratic computeEvaluator];
  v26 = v38;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator3)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator3;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator3];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v26);
LABEL_33:
  if (!segmentCountCubic)
  {
    goto LABEL_49;
  }

  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, &v37, 4uLL, 0);
  v27 = self->_bezierCurveInfoBuffer;
  v28 = self->_curveInfo.controlPointIndicesOffset + 2 * (3 * v38 + 2 * v39[0]);
  if (currentComputeEncoder->_buffers[2] == v27)
  {
    if (currentComputeEncoder->_offsets[2] == v28)
    {
      goto LABEL_38;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[2] = v27;
  }

  currentComputeEncoder->_offsets[2] = v28;
  currentComputeEncoder->_buffersToBind[0] |= 4uLL;
  v27 = self->_bezierCurveInfoBuffer;
LABEL_38:
  if (currentComputeEncoder->_buffers[3] == v27)
  {
    if (!currentComputeEncoder->_offsets[3])
    {
      goto LABEL_42;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[3] = v27;
  }

  currentComputeEncoder->_offsets[3] = 0;
  currentComputeEncoder->_buffersToBind[0] |= 8uLL;
  v27 = self->_bezierCurveInfoBuffer;
LABEL_42:
  segmentInfoOffsetCubic = self->_curveInfo.segmentInfoOffsetCubic;
  if (currentComputeEncoder->_buffers[4] != v27)
  {
    currentComputeEncoder->_buffers[4] = v27;
LABEL_45:
    currentComputeEncoder->_offsets[4] = segmentInfoOffsetCubic;
    currentComputeEncoder->_buffersToBind[0] |= 0x10uLL;
    goto LABEL_46;
  }

  if (currentComputeEncoder->_offsets[4] != segmentInfoOffsetCubic)
  {
    goto LABEL_45;
  }

LABEL_46:
  computeEvaluator4 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildBezierCurveInfoPipelineCubic computeEvaluator];
  v31 = v37;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator4)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator4;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator4];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v31);
LABEL_49:
  curveControlPointCount = self->_curveControlPointCount;
  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, &curveControlPointCount, 4uLL, 0);
  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, self->_anon_10, 0x40uLL, 1uLL);
  if (currentComputeEncoder->_buffers[2] == var1)
  {
    if (!currentComputeEncoder->_offsets[2])
    {
      goto LABEL_53;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[2] = var1;
  }

  currentComputeEncoder->_offsets[2] = 0;
  currentComputeEncoder->_buffersToBind[0] |= 4uLL;
LABEL_53:
  quadPositionsBuffer = self->_quadPositionsBuffer;
  if (currentComputeEncoder->_buffers[3] == quadPositionsBuffer)
  {
    if (!currentComputeEncoder->_offsets[3])
    {
      goto LABEL_57;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[3] = quadPositionsBuffer;
  }

  currentComputeEncoder->_offsets[3] = 0;
  currentComputeEncoder->_buffersToBind[0] |= 8uLL;
LABEL_57:
  quadTexcoordsBuffer = self->_quadTexcoordsBuffer;
  if (currentComputeEncoder->_buffers[4] != quadTexcoordsBuffer)
  {
    currentComputeEncoder->_buffers[4] = quadTexcoordsBuffer;
LABEL_60:
    currentComputeEncoder->_offsets[4] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 0x10uLL;
    goto LABEL_61;
  }

  if (currentComputeEncoder->_offsets[4])
  {
    goto LABEL_60;
  }

LABEL_61:
  computeEvaluator5 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildQuadGeometryPipeline computeEvaluator];
  if (currentComputeEncoder->_computePipelineState != computeEvaluator5)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator5;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator5];
  }

  v8 = 1;
  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, 1uLL);
  return v8;
}

@end