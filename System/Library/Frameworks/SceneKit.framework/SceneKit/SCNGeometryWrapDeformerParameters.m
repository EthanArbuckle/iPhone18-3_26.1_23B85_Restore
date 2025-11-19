@interface SCNGeometryWrapDeformerParameters
- (SCNGeometryWrapDeformerParameters)initWithCoder:(id)a3;
- (SCNGeometryWrapDeformerParameters)initWithDrivingNode:(__n128)a3 deformedNode:(__n128)a4 bindingMode:(__n128)a5 bindingTransform:(uint64_t)a6 drivingNodeUVChannel:(uint64_t)a7 deformedNodeUVChannel:(uint64_t)a8;
- (SCNGeometryWrapDeformerParameters)initWithInnerLayerNode:(__n128)a3 outerLayerNode:(__n128)a4 deformedNode:(__n128)a5 bindingMode:(uint64_t)a6 bindingTransform:(uint64_t)a7;
- (id)extraLayerMeshesWithDrivingMesh0:(__C3DMesh *)a3 drivingMesh1:(__C3DMesh *)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initParametersIfNeededWithDrivingNodeRef:(__C3DNode *)a3 deformedNodeRef:;
- (void)initParametersIfNeededWithInnerLayerNodeRef:(SCNGeometryWrapDeformerParameters *)self outerLayerNodeRef:(SEL)a2 deformedNodeRef:(__C3DNode *)a3;
@end

@implementation SCNGeometryWrapDeformerParameters

- (SCNGeometryWrapDeformerParameters)initWithDrivingNode:(__n128)a3 deformedNode:(__n128)a4 bindingMode:(__n128)a5 bindingTransform:(uint64_t)a6 drivingNodeUVChannel:(uint64_t)a7 deformedNodeUVChannel:(uint64_t)a8
{
  v24.receiver = a1;
  v24.super_class = SCNGeometryWrapDeformerParameters;
  v16 = [(SCNGeometryWrapDeformerParameters *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_isLegacySingleLayerDeformer = 1;
    v16->_bindingMode = a9;
    *v16->_anon_a0 = a2;
    *&v16->_anon_a0[16] = a3;
    *&v16->_anon_a0[32] = a4;
    *&v16->_anon_a0[48] = a5;
    v16->_legacyDrivingNodeUVChannel = a10;
    v16->_legacyDeformedNodeUVChannel = a11;
    +[SCNTransaction begin];
    [SCNTransaction setAnimationDuration:0.0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __142__SCNGeometryWrapDeformerParameters_initWithDrivingNode_deformedNode_bindingMode_bindingTransform_drivingNodeUVChannel_deformedNodeUVChannel___block_invoke;
    v23[3] = &unk_2782FE3E0;
    v23[4] = v17;
    v23[5] = a7;
    v23[6] = a8;
    [SCNTransaction enqueueCommandForObject:a8 immediateTransactionBlock:v23];
    +[SCNTransaction commit];
  }

  return v17;
}

uint64_t __142__SCNGeometryWrapDeformerParameters_initWithDrivingNode_deformedNode_bindingMode_bindingTransform_drivingNodeUVChannel_deformedNodeUVChannel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nodeRef];
  v4 = [*(a1 + 48) nodeRef];

  return [v2 initParametersIfNeededWithDrivingNodeRef:v3 deformedNodeRef:v4];
}

- (SCNGeometryWrapDeformerParameters)initWithInnerLayerNode:(__n128)a3 outerLayerNode:(__n128)a4 deformedNode:(__n128)a5 bindingMode:(uint64_t)a6 bindingTransform:(uint64_t)a7
{
  v22.receiver = a1;
  v22.super_class = SCNGeometryWrapDeformerParameters;
  v14 = [(SCNGeometryWrapDeformerParameters *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_bindingMode = a10;
    *v14->_anon_a0 = a2;
    *&v14->_anon_a0[16] = a3;
    *&v14->_anon_a0[32] = a4;
    *&v14->_anon_a0[48] = a5;
    +[SCNTransaction begin];
    [SCNTransaction setAnimationDuration:0.0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __117__SCNGeometryWrapDeformerParameters_initWithInnerLayerNode_outerLayerNode_deformedNode_bindingMode_bindingTransform___block_invoke;
    v21[3] = &unk_2782FE408;
    v21[4] = v15;
    v21[5] = a7;
    v21[6] = a8;
    v21[7] = a9;
    [SCNTransaction enqueueCommandForObject:a9 immediateTransactionBlock:v21];
    +[SCNTransaction commit];
  }

  return v15;
}

uint64_t __117__SCNGeometryWrapDeformerParameters_initWithInnerLayerNode_outerLayerNode_deformedNode_bindingMode_bindingTransform___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nodeRef];
  v4 = [*(a1 + 48) nodeRef];
  v5 = [*(a1 + 56) nodeRef];

  return [v2 initParametersIfNeededWithInnerLayerNodeRef:v3 outerLayerNodeRef:v4 deformedNodeRef:v5];
}

- (void)dealloc
{
  free(self->_bindingData.pointIndices);
  free(self->_bindingData.barycentricCoords);
  free(self->_bindingData.innerLayerInfluences);
  free(self->_bindingData.innerLayerTNBs);
  free(self->_bindingData.outerLayerTNBs);
  free(self->_bindingData.innerLayerOffsets);
  free(self->_bindingData.outerLayerOffsets);
  free(self->_bindingData.legacyOffsetsOrTransforms);
  v3.receiver = self;
  v3.super_class = SCNGeometryWrapDeformerParameters;
  [(SCNGeometryWrapDeformerParameters *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:self->_vertexCount forKey:@"vertexCount"];
  [a3 encodeInt32:LODWORD(self->_bindingMode) forKey:@"bindingMode"];
  [a3 encodeInt32:LODWORD(self->_bindingData.pointIndicesStride) forKey:@"bindingPointIndicesStride"];
  [a3 encodeInt32:LODWORD(self->_bindingData.barycentricCoordsStride) forKey:@"bindingBarycentricCoordsStride"];
  [a3 encodeInt32:LODWORD(self->_bindingData.pointIndicesFormat) forKey:@"bindingPointIndicesFormat"];
  [a3 encodeInt32:LODWORD(self->_bindingData.barycentricCoordsFormat) forKey:@"bindingBarycentricCoordsFormat"];
  [a3 encodeBytes:self->_bindingData.pointIndices length:self->_bindingData.pointIndicesStride * self->_vertexCount forKey:@"bindingPointIndices"];
  [a3 encodeBytes:self->_bindingData.barycentricCoords length:self->_bindingData.barycentricCoordsStride * self->_vertexCount forKey:@"bindingBarycentricCoords"];
  if (self->_isLegacySingleLayerDeformer)
  {
    [a3 encodeBool:1 forKey:@"isLegacySingleLayerDeformer"];
    legacyOffsetsOrTransformsLength = self->_bindingData.legacyOffsetsOrTransformsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.legacyOffsetsOrTransformsLength;
    [a3 encodeBytes:*(p_legacyOffsetsOrTransformsLength - 1) length:legacyOffsetsOrTransformsLength forKey:@"bindingOffsetsOrTransforms"];
    v7 = @"bindingOffsetsOrTransformsLength";
  }

  else
  {
    [a3 encodeBytes:self->_bindingData.innerLayerInfluences length:self->_bindingData.innerLayerInfluencesLength forKey:@"bindingInnerLayerInfluences"];
    [a3 encodeInt32:LODWORD(self->_bindingData.innerLayerInfluencesLength) forKey:@"bindingInnerLayerInfluencesLength"];
    if (self->_bindingMode != 1)
    {
      return;
    }

    [a3 encodeBytes:self->_bindingData.innerLayerTNBs length:self->_bindingData.tnbMatricesLength forKey:@"bindingInnerTNBs"];
    [a3 encodeBytes:self->_bindingData.outerLayerTNBs length:self->_bindingData.tnbMatricesLength forKey:@"bindingOuterTNBs"];
    [a3 encodeInt32:LODWORD(self->_bindingData.tnbMatricesLength) forKey:@"bindingSpaceVectorsLength"];
    offsetsLength = self->_bindingData.offsetsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.offsetsLength;
    [a3 encodeBytes:*(p_legacyOffsetsOrTransformsLength - 2) length:offsetsLength forKey:@"bindingInnerOffsets"];
    [a3 encodeBytes:*(p_legacyOffsetsOrTransformsLength - 1) length:*p_legacyOffsetsOrTransformsLength forKey:@"bindingOuterOffsets"];
    v7 = @"bindingOffsetsLength";
  }

  v9 = *p_legacyOffsetsOrTransformsLength;

  [a3 encodeInt32:v9 forKey:v7];
}

- (SCNGeometryWrapDeformerParameters)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = SCNGeometryWrapDeformerParameters;
  v4 = [(SCNGeometryWrapDeformerParameters *)&v26 init];
  if (v4)
  {
    v4->_vertexCount = [a3 decodeInt32ForKey:@"vertexCount"];
    v4->_bindingMode = [a3 decodeInt32ForKey:@"bindingMode"];
    v4->_bindingData.pointIndicesStride = [a3 decodeInt32ForKey:@"bindingPointIndicesStride"];
    v4->_bindingData.barycentricCoordsStride = [a3 decodeInt32ForKey:@"bindingBarycentricCoordsStride"];
    v4->_bindingData.pointIndicesFormat = [a3 decodeIntegerForKey:@"bindingPointIndicesFormat"];
    v4->_bindingData.barycentricCoordsFormat = [a3 decodeIntegerForKey:@"bindingBarycentricCoordsFormat"];
    vertexCount = v4->_vertexCount;
    v6 = v4->_bindingData.pointIndicesStride * vertexCount;
    v7 = v4->_bindingData.barycentricCoordsStride * vertexCount;
    v4->_bindingData.pointIndices = malloc_type_malloc(v6, 0x2E606E5BuLL);
    v4->_bindingData.barycentricCoords = malloc_type_malloc(v7, 0xE5BE4130uLL);
    __n = 0;
    v8 = [a3 decodeBytesForKey:@"bindingPointIndices" returnedLength:&__n];
    if (__n != v6)
    {
      [SCNGeometryWrapDeformerParameters initWithCoder:];
    }

    memcpy(v4->_bindingData.pointIndices, v8, v6);
    v9 = [a3 decodeBytesForKey:@"bindingBarycentricCoords" returnedLength:&__n];
    if (__n != v7)
    {
      [SCNGeometryWrapDeformerParameters initWithCoder:];
    }

    memcpy(v4->_bindingData.barycentricCoords, v9, v7);
    v10 = [a3 decodeBoolForKey:@"isLegacySingleLayerDeformer"];
    v4->_isLegacySingleLayerDeformer = v10;
    if (v10)
    {
      v11 = [a3 decodeInt32ForKey:@"bindingOffsetsOrTransformsLength"];
      v4->_bindingData.legacyOffsetsOrTransformsLength = v11;
      v4->_bindingData.legacyOffsetsOrTransforms = malloc_type_malloc(v11, 0x100004052888210uLL);
      __n = 0;
      v12 = [a3 decodeBytesForKey:@"bindingOffsetsOrTransforms" returnedLength:&__n];
      v13 = __n;
      if (__n != v4->_bindingData.legacyOffsetsOrTransformsLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      v14 = v12;
      legacyOffsetsOrTransforms = v4->_bindingData.legacyOffsetsOrTransforms;
LABEL_14:
      memcpy(legacyOffsetsOrTransforms, v14, v13);
      return v4;
    }

    v16 = [a3 decodeInt32ForKey:@"bindingInnerLayerInfluencesLength"];
    v4->_bindingData.innerLayerInfluencesLength = v16;
    v4->_bindingData.innerLayerInfluences = malloc_type_malloc(v16, 0x100004052888210uLL);
    __n = 0;
    v17 = [a3 decodeBytesForKey:@"bindingInnerLayerInfluences" returnedLength:&__n];
    if (__n != v4->_bindingData.innerLayerInfluencesLength)
    {
      [SCNGeometryWrapDeformerParameters initWithCoder:];
    }

    memcpy(v4->_bindingData.innerLayerInfluences, v17, __n);
    if (v4->_bindingMode == 1)
    {
      v18 = [a3 decodeInt32ForKey:@"bindingSpaceVectorsLength"];
      v4->_bindingData.tnbMatricesLength = v18;
      v4->_bindingData.innerLayerTNBs = malloc_type_malloc(v18, 0x100004052888210uLL);
      v4->_bindingData.outerLayerTNBs = malloc_type_malloc(v4->_bindingData.tnbMatricesLength, 0x100004052888210uLL);
      __n = 0;
      v19 = [a3 decodeBytesForKey:@"bindingInnerTNBs" returnedLength:&__n];
      if (__n != v4->_bindingData.tnbMatricesLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      memcpy(v4->_bindingData.innerLayerTNBs, v19, __n);
      v20 = [a3 decodeBytesForKey:@"bindingOuterTNBs" returnedLength:&__n];
      if (__n != v4->_bindingData.tnbMatricesLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      memcpy(v4->_bindingData.outerLayerTNBs, v20, __n);
      v21 = [a3 decodeInt32ForKey:@"bindingOffsetsLength"];
      v4->_bindingData.offsetsLength = v21;
      v4->_bindingData.innerLayerOffsets = malloc_type_malloc(v21, 0x100004052888210uLL);
      v4->_bindingData.outerLayerOffsets = malloc_type_malloc(v4->_bindingData.offsetsLength, 0x100004052888210uLL);
      v22 = [a3 decodeBytesForKey:@"bindingInnerOffsets" returnedLength:&__n];
      if (__n != v4->_bindingData.offsetsLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      memcpy(v4->_bindingData.innerLayerOffsets, v22, __n);
      v23 = [a3 decodeBytesForKey:@"bindingOuterOffsets" returnedLength:&__n];
      v13 = __n;
      if (__n != v4->_bindingData.offsetsLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      v14 = v23;
      legacyOffsetsOrTransforms = v4->_bindingData.outerLayerOffsets;
      goto LABEL_14;
    }
  }

  return v4;
}

- (void)initParametersIfNeededWithDrivingNodeRef:(__C3DNode *)a3 deformedNodeRef:
{
  if (!self->_vertexCount)
  {
    v4 = v3;
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.legacyOffsetsOrTransforms);
    Geometry = C3DNodeGetGeometry(a3);
    Mesh = C3DGeometryGetMesh(Geometry);
    v9 = C3DNodeGetGeometry(v4);
    v10 = C3DGeometryGetMesh(v9);
    PositionSource = C3DMeshGetPositionSource(Mesh, 0);
    v12 = C3DMeshGetPositionSource(v10, 0);
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
    v45 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v10, 0, 0);
    v47 = v12;
    Count = C3DMeshSourceGetCount(v12);
    self->_vertexCount = Count;
    *&self->_bindingData.barycentricCoordsStride = xmmword_21C2A2060;
    v44 = malloc_type_malloc(4 * (Count & 0x7FFFFFFF), 0x1000040BDFB0063uLL);
    self->_bindingData.barycentricCoords = v44;
    v48 = PositionSource;
    v14 = C3DMeshSourceGetCount(PositionSource) - 1;
    v15 = 1;
    if (v14 > 0xFF)
    {
      v15 = 2;
    }

    v16 = HIWORD(v14);
    if (HIWORD(v14))
    {
      v17 = 4;
    }

    else
    {
      v17 = v15;
    }

    v18 = 3 << (v14 > 0xFF);
    if (v16)
    {
      v18 = 12;
    }

    self->_bindingData.pointIndicesStride = v18;
    v19 = malloc_type_malloc(v18 * self->_vertexCount, 0xA3C3D017uLL);
    self->_bindingData.pointIndices = v19;
    if (v17 == 1)
    {
      v21 = 0;
      v22 = 2;
      v20 = v19;
    }

    else
    {
      v20 = 0;
      if (v17 == 2)
      {
        v22 = 14;
        v21 = v19;
      }

      else
      {
        v21 = 0;
        v22 = 38;
      }
    }

    self->_bindingData.pointIndicesFormat = v22;
    if (v16)
    {
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 3, self->_legacyDrivingNodeUVChannel, 0);
    if (!SourceWithSemanticAtIndex)
    {
      v25 = scn_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [(SCNGeometryWrapDeformerParameters *)v25 initParametersIfNeededWithDrivingNodeRef:v26 deformedNodeRef:v27, v28, v29, v30, v31, v32];
      }
    }

    v33 = C3DMeshGetSourceWithSemanticAtIndex(v10, 3, self->_legacyDeformedNodeUVChannel, 0);
    if (!v33)
    {
      v34 = scn_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        [(SCNGeometryWrapDeformerParameters *)v34 initParametersIfNeededWithDrivingNodeRef:v35 deformedNodeRef:v36, v37, v38, v39, v40, v41];
      }
    }

    v42 = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 3, self->_legacyDrivingNodeUVChannel);
    v43 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v10, 3, self->_legacyDeformedNodeUVChannel);
    C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs(self->_bindingMode, self->_vertexCount, v10, Mesh, v47, v48, v33, SourceWithSemanticAtIndex, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], v45, v43, ChannelForSourceWithSemanticAtIndex, v42, 0, v20, v21, v23, 0, v44, &self->_bindingData.legacyOffsetsOrTransforms, &self->_bindingData.legacyOffsetsOrTransformsLength);
  }
}

- (void)initParametersIfNeededWithInnerLayerNodeRef:(SCNGeometryWrapDeformerParameters *)self outerLayerNodeRef:(SEL)a2 deformedNodeRef:(__C3DNode *)a3
{
  if (!self->_vertexCount)
  {
    v5 = v4;
    v6 = v3;
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.innerLayerInfluences);
    free(self->_bindingData.innerLayerTNBs);
    free(self->_bindingData.outerLayerTNBs);
    free(self->_bindingData.innerLayerOffsets);
    free(self->_bindingData.outerLayerOffsets);
    Geometry = C3DNodeGetGeometry(a3);
    Mesh = C3DGeometryGetMesh(Geometry);
    v11 = C3DNodeGetGeometry(v6);
    v12 = C3DGeometryGetMesh(v11);
    v13 = C3DNodeGetGeometry(v5);
    v14 = C3DGeometryGetMesh(v13);
    PositionSource = C3DMeshGetPositionSource(Mesh, 0);
    v40 = C3DMeshGetPositionSource(v12, 0);
    v42 = v14;
    v15 = C3DMeshGetPositionSource(v14, 0);
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
    v37 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v12, 0, 0);
    v39 = v15;
    Count = C3DMeshSourceGetCount(v15);
    self->_vertexCount = Count;
    *&self->_bindingData.barycentricCoordsStride = xmmword_21C2A2070;
    v17 = malloc_type_malloc(8 * (Count & 0x7FFFFFFF), 0x100004052888210uLL);
    v18 = 0;
    self->_bindingData.barycentricCoords = v17;
    v19 = 1;
    do
    {
      v20 = v19 & 1;
      if (v19)
      {
        v21 = Mesh;
      }

      else
      {
        v21 = v12;
      }

      v22 = C3DMeshGetPositionSource(v21, 0);
      v23 = C3DMeshSourceGetCount(v22);
      v19 = 0;
      if (v18 <= v23)
      {
        v18 = v23;
      }
    }

    while (v20);
    v24 = v18 - 1;
    v25 = (v18 - 1) > 0xFF;
    v26 = 1;
    if ((v18 - 1) > 0xFF)
    {
      v26 = 2;
    }

    v27 = HIWORD(v24);
    if (HIWORD(v24))
    {
      v28 = 4;
    }

    else
    {
      v28 = v26;
    }

    v29 = 3 << v25;
    if (v27)
    {
      v29 = 12;
    }

    self->_bindingData.pointIndicesStride = v29;
    v30 = malloc_type_malloc(v29 * self->_vertexCount, 0x46CA9526uLL);
    self->_bindingData.pointIndices = v30;
    if (v28 == 1)
    {
      v32 = 0;
      v33 = 2;
      v31 = v30;
    }

    else
    {
      v31 = 0;
      if (v28 == 2)
      {
        v33 = 14;
        v32 = v30;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 38;
      }
    }

    self->_bindingData.pointIndicesFormat = v33;
    if (v27)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0;
    }

    v35 = 4 * self->_vertexCount;
    self->_bindingData.innerLayerInfluencesLength = v35;
    v36 = malloc_type_malloc(v35, 0x100004052888210uLL);
    self->_bindingData.innerLayerInfluences = v36;
    C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions(self->_bindingMode, self->_vertexCount, v42, Mesh, v12, v39, PositionSource, v40, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], ChannelForSourceWithSemanticAtIndex, v37, 1, v31, v32, v34, v17, 0, v36, &self->_bindingData.innerLayerTNBs, &self->_bindingData.outerLayerTNBs, &self->_bindingData.tnbMatricesLength, &self->_bindingData.innerLayerOffsets, &self->_bindingData.outerLayerOffsets, &self->_bindingData.offsetsLength);
  }
}

- (id)extraLayerMeshesWithDrivingMesh0:(__C3DMesh *)a3 drivingMesh1:(__C3DMesh *)a4
{
  PositionSource = C3DMeshGetPositionSource(a3, 0);
  v7 = C3DMeshGetPositionSource(a4, 0);
  Count = C3DMeshSourceGetCount(PositionSource);
  v27 = a3;
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a3, 0, 0);
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:39];
  v9 = *MEMORY[0x277CBECE8];
  bytesDeallocator = *MEMORY[0x277CBECF0];
  for (i = 1; i != 40; ++i)
  {
    v11 = malloc_type_malloc(12 * Count, 0x100004052888210uLL);
    if (Count >= 1)
    {
      v12 = 0;
      v13 = i * 0.025;
      *&v13 = v13;
      v29 = vdupq_lane_s32(*&v13, 0);
      v14 = 2;
      v15 = 1;
      do
      {
        *v16.i64 = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v12);
        v30 = v16;
        *v17.i64 = C3DMeshSourceGetValueAtIndexAsVector3(v7, v12);
        v18 = vmlaq_f32(v30, vsubq_f32(v17, v30), v29);
        *&v11[4 * v14 - 8] = v18.i32[0];
        *&v11[4 * v14 - 4] = v18.i32[1];
        *&v11[4 * v14] = v18.i32[2];
        v12 = v15;
        v14 += 3;
      }

      while (Count > v15++);
    }

    v20 = CFDataCreateWithBytesNoCopy(v9, v11, 12 * Count, bytesDeallocator);
    values = C3DMeshSourceCreate(v20, 0, Count, 3, 1);
    v21 = CFArrayCreate(v9, &values, 1, MEMORY[0x277CBF128]);
    v31 = ChannelForSourceWithSemanticAtIndex;
    MeshElements = C3DMeshGetMeshElements(v27, 0);
    v23 = C3DMeshCreateWithMeshSourcesAndMeshElements(v21, MeshElements, &v31);
    [v28 addObject:v23];
    CFRelease(v23);
    CFRelease(v21);
  }

  return v28;
}

@end