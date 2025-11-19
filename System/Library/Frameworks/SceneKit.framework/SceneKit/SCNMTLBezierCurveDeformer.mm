@interface SCNMTLBezierCurveDeformer
- (SCNMTLBezierCurveDeformer)initWithMeshlessGeometry:(__C3DGeometry *)a3 outputs:(unint64_t)a4 deformDataKind:(unsigned __int8)a5 finalDataKind:(unsigned __int8)a6 resourceManager:(id)a7 computeContext:(id)a8;
- (id)bufferForCommonProfileArgumentNamed:(id)a3;
- (unint64_t)updateWithComputeContext:(id)a3 buffers:(id *)a4;
- (void)dealloc;
@end

@implementation SCNMTLBezierCurveDeformer

- (SCNMTLBezierCurveDeformer)initWithMeshlessGeometry:(__C3DGeometry *)a3 outputs:(unint64_t)a4 deformDataKind:(unsigned __int8)a5 finalDataKind:(unsigned __int8)a6 resourceManager:(id)a7 computeContext:(id)a8
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = SCNMTLBezierCurveDeformer;
  v10 = [(SCNMTLBezierCurveDeformer *)&v44 init:a3];
  if (!v10)
  {
    return v10;
  }

  *v10->_anon_10 = C3DBezierCurveGeometryGetTransform(a3);
  *&v10->_anon_10[16] = v11;
  *&v10->_anon_10[32] = v12;
  *&v10->_anon_10[48] = v13;
  BezierCurve = C3DBezierCurveGeometryGetBezierCurve(a3);
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
  [SCNMTLResourceManager newBufferWithBytes:a7 length:? options:?];
  v10->_bezierCurveInfoBuffer = v27;
  free(v25);
  v28 = [MEMORY[0x277CD7090] vertexDescriptor];
  Size = SCNMTLVertexFormatGetSize(30);
  v30 = SCNMTLVertexFormatGetSize(29);
  v31 = [objc_msgSend(v28 "attributes")];
  [v31 setFormat:30];
  [v31 setOffset:0];
  [v31 setBufferIndex:18];
  v32 = [objc_msgSend(v28 "layouts")];
  [v32 setStride:Size];
  [v32 setStepFunction:1];
  v33 = [objc_msgSend(v28 "attributes")];
  [v33 setFormat:29];
  [v33 setOffset:0];
  [v33 setBufferIndex:19];
  v34 = [objc_msgSend(v28 "layouts")];
  [v34 setStride:v30];
  [v34 setStepFunction:1];
  [SCNMTLResourceManager newBufferWithLength:a7 options:?];
  v10->_quadTexcoordsBuffer = v35;
  [SCNMTLResourceManager newBufferWithLength:a7 options:?];
  v10->_quadPositionsBuffer = v36;
  v37 = objc_alloc_init(SCNMTLMeshElement);
  [(SCNMTLMesh *)v37 setMutabilityTimestamp:?];
  [(SCNMTLMeshElement *)v37 setPrimitiveRange:2];
  v38 = objc_alloc_init(SCNMTLMesh);
  v10->_quadMesh = v38;
  [(SCNMTLMesh *)v38 setVertexDescriptor:v28];
  v46 = *&v10->_quadPositionsBuffer;
  -[SCNMTLMesh setBuffers:](v10->_quadMesh, [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:2]);
  v45 = v37;
  -[SCNMTLMesh setElements:](v10->_quadMesh, [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1]);

  v10->_buildQuadGeometryPipeline = [a7 computePipelineStateForKernel:@"deformer_bezier_build_quad_geometry"];
  v10->_initBezierCurveInfoPipeline = [a7 computePipelineStateForKernel:@"deformer_bezier_init_info"];
  if (v10->_curveInfo.segmentCountLinear)
  {
    v39 = [a7 computePipelineStateForKernel:@"deformer_bezier_build_info_linear"];
  }

  else
  {
    v39 = 0;
  }

  v10->_buildBezierCurveInfoPipelineLinear = v39;
  if (v10->_curveInfo.segmentCountQuadratic)
  {
    v40 = [a7 computePipelineStateForKernel:@"deformer_bezier_build_info_quadratic"];
  }

  else
  {
    v40 = 0;
  }

  v10->_buildBezierCurveInfoPipelineQuadratic = v40;
  if (v10->_curveInfo.segmentCountCubic)
  {
    v41 = [a7 computePipelineStateForKernel:@"deformer_bezier_build_info_cubic"];
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

- (id)bufferForCommonProfileArgumentNamed:(id)a3
{
  if ([a3 isEqualToString:@"scn_bezier_curve_data"])
  {
    v5 = 128;
    return *(&self->super.isa + v5);
  }

  if ([a3 isEqualToString:@"scn_bezier_curve_controlPoints"])
  {
    v5 = 136;
    return *(&self->super.isa + v5);
  }

  return 0;
}

- (unint64_t)updateWithComputeContext:(id)a3 buffers:(id *)a4
{
  v7 = [a3 currentFrameHash];
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  var0 = a4->var0;
  var1 = a4->var1;
  self->_lastDeformedCurveControlPointsBuffer = var1;
  v11 = [a3 currentComputeEncoder];
  bzero(v11, 0x678uLL);
  segmentCountLinear = self->_curveInfo.segmentCountLinear;
  segmentCountQuadratic = self->_curveInfo.segmentCountQuadratic;
  v38 = segmentCountQuadratic;
  v39[0] = segmentCountLinear;
  segmentCountCubic = self->_curveInfo.segmentCountCubic;
  v37 = segmentCountCubic;
  bezierCurveInfoBuffer = self->_bezierCurveInfoBuffer;
  if (bezierCurveInfoBuffer)
  {
    v11->_buffers[0] = bezierCurveInfoBuffer;
    v11->_offsets[0] = 0;
    v11->_buffersToBind[0] |= 1uLL;
  }

  v16 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_initBezierCurveInfoPipeline computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOne(v11, v16);
  if (v11->_buffers[1] == var0)
  {
    if (!v11->_offsets[1])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11->_buffers[1] = var0;
  }

  v11->_offsets[1] = 0;
  v11->_buffersToBind[0] |= 2uLL;
LABEL_9:
  if (!segmentCountLinear)
  {
    goto LABEL_21;
  }

  SCNMTLComputeCommandEncoder::setBytes(v11, v39, 4uLL, 0);
  v17 = self->_bezierCurveInfoBuffer;
  controlPointIndicesOffset = self->_curveInfo.controlPointIndicesOffset;
  if (v11->_buffers[2] == v17)
  {
    if (v11->_offsets[2] == controlPointIndicesOffset)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11->_buffers[2] = v17;
  }

  v11->_offsets[2] = controlPointIndicesOffset;
  v11->_buffersToBind[0] |= 4uLL;
  v17 = self->_bezierCurveInfoBuffer;
LABEL_14:
  segmentInfoOffsetLinear = self->_curveInfo.segmentInfoOffsetLinear;
  if (v11->_buffers[3] != v17)
  {
    v11->_buffers[3] = v17;
LABEL_17:
    v11->_offsets[3] = segmentInfoOffsetLinear;
    v11->_buffersToBind[0] |= 8uLL;
    goto LABEL_18;
  }

  if (v11->_offsets[3] != segmentInfoOffsetLinear)
  {
    goto LABEL_17;
  }

LABEL_18:
  v20 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildBezierCurveInfoPipelineLinear computeEvaluator];
  v21 = v39[0];
  if (v11->_computePipelineState != v20)
  {
    v11->_computePipelineState = v20;
    [(MTLComputeCommandEncoder *)v11->_encoder setComputePipelineState:v20];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v11, v21);
  segmentCountQuadratic = v38;
LABEL_21:
  if (segmentCountQuadratic < 1)
  {
    goto LABEL_33;
  }

  SCNMTLComputeCommandEncoder::setBytes(v11, &v38, 4uLL, 0);
  v22 = self->_bezierCurveInfoBuffer;
  v23 = self->_curveInfo.controlPointIndicesOffset + 4 * v39[0];
  if (v11->_buffers[2] == v22)
  {
    if (v11->_offsets[2] == v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11->_buffers[2] = v22;
  }

  v11->_offsets[2] = v23;
  v11->_buffersToBind[0] |= 4uLL;
  v22 = self->_bezierCurveInfoBuffer;
LABEL_26:
  segmentInfoOffsetQuadratic = self->_curveInfo.segmentInfoOffsetQuadratic;
  if (v11->_buffers[3] != v22)
  {
    v11->_buffers[3] = v22;
LABEL_29:
    v11->_offsets[3] = segmentInfoOffsetQuadratic;
    v11->_buffersToBind[0] |= 8uLL;
    goto LABEL_30;
  }

  if (v11->_offsets[3] != segmentInfoOffsetQuadratic)
  {
    goto LABEL_29;
  }

LABEL_30:
  v25 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildBezierCurveInfoPipelineQuadratic computeEvaluator];
  v26 = v38;
  if (v11->_computePipelineState != v25)
  {
    v11->_computePipelineState = v25;
    [(MTLComputeCommandEncoder *)v11->_encoder setComputePipelineState:v25];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v11, v26);
LABEL_33:
  if (!segmentCountCubic)
  {
    goto LABEL_49;
  }

  SCNMTLComputeCommandEncoder::setBytes(v11, &v37, 4uLL, 0);
  v27 = self->_bezierCurveInfoBuffer;
  v28 = self->_curveInfo.controlPointIndicesOffset + 2 * (3 * v38 + 2 * v39[0]);
  if (v11->_buffers[2] == v27)
  {
    if (v11->_offsets[2] == v28)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11->_buffers[2] = v27;
  }

  v11->_offsets[2] = v28;
  v11->_buffersToBind[0] |= 4uLL;
  v27 = self->_bezierCurveInfoBuffer;
LABEL_38:
  if (v11->_buffers[3] == v27)
  {
    if (!v11->_offsets[3])
    {
      goto LABEL_42;
    }
  }

  else
  {
    v11->_buffers[3] = v27;
  }

  v11->_offsets[3] = 0;
  v11->_buffersToBind[0] |= 8uLL;
  v27 = self->_bezierCurveInfoBuffer;
LABEL_42:
  segmentInfoOffsetCubic = self->_curveInfo.segmentInfoOffsetCubic;
  if (v11->_buffers[4] != v27)
  {
    v11->_buffers[4] = v27;
LABEL_45:
    v11->_offsets[4] = segmentInfoOffsetCubic;
    v11->_buffersToBind[0] |= 0x10uLL;
    goto LABEL_46;
  }

  if (v11->_offsets[4] != segmentInfoOffsetCubic)
  {
    goto LABEL_45;
  }

LABEL_46:
  v30 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildBezierCurveInfoPipelineCubic computeEvaluator];
  v31 = v37;
  if (v11->_computePipelineState != v30)
  {
    v11->_computePipelineState = v30;
    [(MTLComputeCommandEncoder *)v11->_encoder setComputePipelineState:v30];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v11, v31);
LABEL_49:
  curveControlPointCount = self->_curveControlPointCount;
  SCNMTLComputeCommandEncoder::setBytes(v11, &curveControlPointCount, 4uLL, 0);
  SCNMTLComputeCommandEncoder::setBytes(v11, self->_anon_10, 0x40uLL, 1uLL);
  if (v11->_buffers[2] == var1)
  {
    if (!v11->_offsets[2])
    {
      goto LABEL_53;
    }
  }

  else
  {
    v11->_buffers[2] = var1;
  }

  v11->_offsets[2] = 0;
  v11->_buffersToBind[0] |= 4uLL;
LABEL_53:
  quadPositionsBuffer = self->_quadPositionsBuffer;
  if (v11->_buffers[3] == quadPositionsBuffer)
  {
    if (!v11->_offsets[3])
    {
      goto LABEL_57;
    }
  }

  else
  {
    v11->_buffers[3] = quadPositionsBuffer;
  }

  v11->_offsets[3] = 0;
  v11->_buffersToBind[0] |= 8uLL;
LABEL_57:
  quadTexcoordsBuffer = self->_quadTexcoordsBuffer;
  if (v11->_buffers[4] != quadTexcoordsBuffer)
  {
    v11->_buffers[4] = quadTexcoordsBuffer;
LABEL_60:
    v11->_offsets[4] = 0;
    v11->_buffersToBind[0] |= 0x10uLL;
    goto LABEL_61;
  }

  if (v11->_offsets[4])
  {
    goto LABEL_60;
  }

LABEL_61:
  v34 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_buildQuadGeometryPipeline computeEvaluator];
  if (v11->_computePipelineState != v34)
  {
    v11->_computePipelineState = v34;
    [(MTLComputeCommandEncoder *)v11->_encoder setComputePipelineState:v34];
  }

  v8 = 1;
  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v11, 1uLL);
  return v8;
}

@end