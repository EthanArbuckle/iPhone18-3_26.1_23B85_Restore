@interface ARMeshChunk
- (ARMeshAnchor)anchorForReferenceOriginTransform:(float32x4_t)a3;
- (ARMeshChunk)initWithChunk:(ChunkMesh *)a3 device:(id)a4 timestamp:(double)a5 voxelSize:(double)a6;
- (ChunkMesh)chunkMesh;
- (id).cxx_construct;
- (id)chunkIdentifier;
- (id)identifier;
- (vector<unsigned)semanticsVector;
- (void)addSemantics:(const char *)a3 count:(unsigned int)a4 size:(unsigned int)a5;
- (void)convertToWorldSourceFromVisionSource:(simd_float4)a3 relativeTransform:(simd_float4)a4 rotationOnly:(uint64_t)a5;
- (void)setChunkMesh:(ChunkMesh *)a3;
- (void)setSemanticsVector:(vector<unsigned)char;
@end

@implementation ARMeshChunk

- (ARMeshChunk)initWithChunk:(ChunkMesh *)a3 device:(id)a4 timestamp:(double)a5 voxelSize:(double)a6
{
  v11 = a4;
  v17.receiver = self;
  v17.super_class = ARMeshChunk;
  v12 = [(ARMeshChunk *)&v17 init];
  v13 = v12;
  v14 = v12;
  if (v12)
  {
    if (v12 + 136 != a3)
    {
      v15 = *a3->chunk_position.m_data;
      *(v12 + 70) = a3->chunk_position.m_data[2];
      *(v12 + 34) = v15;
    }

    cv3d::recon::mesh_util::TriMesh<float,unsigned int>::operator=(v12 + 18, &a3->mesh);
    objc_storeStrong(v13 + 1, a4);
    v14->_timestamp = a5;
    v14->_voxelSize = a6;
  }

  return v14;
}

- (id)chunkIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(ARMeshChunk *)self chunkIdFromPosition];

  return [v2 numberWithUnsignedLongLong:v3];
}

- (void)addSemantics:(const char *)a3 count:(unsigned int)a4 size:(unsigned int)a5
{
  [(ARMeshChunk *)self setNumSemantics:*&a4];
  v9 = [(MTLDevice *)self->_device newBufferWithBytes:a3 length:a5 * a4 options:0];
  [(ARMeshChunk *)self setSemantics:?];
}

- (id)identifier
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = [(ARMeshChunk *)self chunkIdFromPosition];

  return [v2 ar_UUIDWithIntegerValue:v3];
}

- (void)convertToWorldSourceFromVisionSource:(simd_float4)a3 relativeTransform:(simd_float4)a4 rotationOnly:(uint64_t)a5
{
  v25.columns[2] = a3;
  v25.columns[3] = a4;
  v25.columns[0] = a1;
  v25.columns[1] = a2;
  v30 = a7;
  v9 = [v30 buffer];
  v10 = [v9 contents];

  *v11.i64 = ARVisionToRenderingCoordinateTransform();
  v22 = v12;
  v23 = v11;
  v20 = v14;
  v21 = v13;
  v35 = __invert_f4(v25);
  v15 = 0;
  v31 = v35;
  do
  {
    v32[v15] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*&v31.columns[v15])), v22, *v31.columns[v15].f32, 1), v21, v31.columns[v15], 2), v20, v31.columns[v15], 3);
    ++v15;
  }

  while (v15 != 4);
  v16 = 0;
  v28 = v32[1];
  v29 = v32[0];
  v26 = v33;
  v27 = v32[2];
  v17 = __PAIR64__(v33.u32[1], 1.0);
  if (a8)
  {
    *v17.i32 = 0.0;
  }

  v24 = vdupq_lane_s32(v17, 0);
  v18 = (v10 + 8);
  while (v16 < 3 * [v30 count])
  {
    v19 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v29, *(v18 - 2)), v28, *(v18 - 1)), v27, *v18), v24, v26);
    if ((a8 & 1) == 0)
    {
      v19 = vdivq_f32(v19, vdupq_laneq_s32(v19, 3));
    }

    *(v18 - 1) = v19.i64[0];
    *v18 = v19.f32[2];
    v16 += 3;
    v18 += 3;
  }
}

- (ARMeshAnchor)anchorForReferenceOriginTransform:(float32x4_t)a3
{
  if ([a1 vertexCount] < 1)
  {
    v40 = 0;
  }

  else
  {
    v6 = [*(a1 + 8) newBufferWithBytes:*(a1 + 144) length:12 * objc_msgSend(a1 options:{"vertexCount"), 0}];
    v7 = -[ARGeometrySource initWithBuffer:count:format:componentsPerVector:offset:stride:]([ARGeometrySource alloc], "initWithBuffer:count:format:componentsPerVector:offset:stride:", v6, [a1 vertexCount], 30, 3, 0, 12);
    v8 = -1431655765 * ((*(a1 + 200) - *(a1 + 192)) >> 2);
    if (v8)
    {
      v9 = [*(a1 + 8) newBufferWithBytes:? length:? options:?];
      v10 = [[ARGeometrySource alloc] initWithBuffer:v9 count:v8 format:30 componentsPerVector:3 offset:0 stride:12];
      if ([a1 faceCount] < 1)
      {
        v40 = 0;
      }

      else
      {
        v46 = [*(a1 + 8) newBufferWithBytes:*(a1 + 216) length:12 * objc_msgSend(a1 options:{"faceCount"), 0}];
        v11 = -[ARGeometryElement initWithBuffer:count:bytesPerIndex:primitiveType:]([ARGeometryElement alloc], "initWithBuffer:count:bytesPerIndex:primitiveType:", v46, [a1 faceCount], 4, 1);
        v12 = [[ARMeshGeometry alloc] initWithVertices:v7 normals:v10 faces:v11];
        [a1 semanticsVector];
        v13 = [a1 faceCount];
        v14 = v63.i64[1] - v63.i64[0];
        if (v63.i64[0])
        {
          v63.i64[1] = v63.i64[0];
          operator delete(v63.i64[0]);
        }

        if (v14 == v13)
        {
          v15 = *(a1 + 8);
          [a1 semanticsVector];
          v16 = [v15 newBufferWithBytes:v63.i64[0] length:objc_msgSend(a1 options:{"faceCount"), 0}];
          if (v63.i64[0])
          {
            v63.i64[1] = v63.i64[0];
            operator delete(v63.i64[0]);
          }

          v17 = -[ARGeometrySource initWithBuffer:count:format:componentsPerVector:offset:stride:]([ARGeometrySource alloc], "initWithBuffer:count:format:componentsPerVector:offset:stride:", v16, [a1 faceCount], 45, 1, 0, 1);
          [(ARMeshGeometry *)v12 setClassification:v17];
        }

        ARMatrix4x4FromRotationAndTranslation();
        v49 = v19;
        v50 = v18;
        v47 = v21;
        v48 = v20;
        *v22.i64 = ARVisionToRenderingCoordinateTransform();
        v44 = v23;
        v45 = v22;
        v42 = v25;
        v43 = v24;
        *v26.i64 = ARRenderingToVisionCoordinateTransform();
        v30 = 0;
        v59 = v50;
        v60 = v49;
        v61 = v48;
        v62 = v47;
        do
        {
          *(&v63 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v59 + v30))), v44, *&v59.f32[v30 / 4], 1), v43, *(&v59 + v30), 2), v42, *(&v59 + v30), 3);
          v30 += 16;
        }

        while (v30 != 64);
        v31 = 0;
        v32 = v63;
        v33 = v64;
        v34 = v65;
        v35 = v66;
        v59 = v26;
        v60 = v27;
        v61 = v28;
        v62 = v29;
        do
        {
          *(&v63 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&v59 + v31))), v33, *&v59.f32[v31 / 4], 1), v34, *(&v59 + v31), 2), v35, *(&v59 + v31), 3);
          v31 += 16;
        }

        while (v31 != 64);
        v36 = 0;
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        do
        {
          *(&v63 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v59 + v36))), a3, *&v59.f32[v36 / 4], 1), a4, *(&v59 + v36), 2), a5, *(&v59 + v36), 3);
          v36 += 16;
        }

        while (v36 != 64);
        v56 = *v64.i64;
        v58 = *v63.i64;
        v52 = *v66.i64;
        v54 = *v65.i64;
        [a1 convertToWorldSourceFromVisionSource:v7 relativeTransform:0 rotationOnly:{*v50.i64, *v49.i64, *v48.i64, *v47.i64}];
        [a1 convertToWorldSourceFromVisionSource:v10 relativeTransform:1 rotationOnly:{*v50.i64, *v49.i64, *v48.i64, *v47.i64}];
        v37 = [ARMeshAnchor alloc];
        v38 = *(a1 + 80);
        v39 = [a1 identifier];
        v40 = [(ARMeshAnchor *)v37 initWithGeometry:v12 atTimestamp:v39 identifier:v38 transform:v58 voxelSize:v56, v54, v52, *(a1 + 88)];
      }
    }

    else
    {
      v40 = 0;
    }
  }

  return v40;
}

- (ChunkMesh)chunkMesh
{
  *retstr->chunk_position.m_data = *self->_chunkMesh.chunk_position.m_data;
  retstr->chunk_position.m_data[2] = self->_chunkMesh.chunk_position.m_data[2];
  return cv3d::recon::mesh_util::TriMesh<float,unsigned int>::TriMesh(&retstr->mesh.vertices.__begin_, &self->_chunkMesh.mesh);
}

- (void)setChunkMesh:(ChunkMesh *)a3
{
  if (&self->_chunkMesh != a3)
  {
    v3 = *a3->chunk_position.m_data;
    self->_chunkMesh.chunk_position.m_data[2] = a3->chunk_position.m_data[2];
    *self->_chunkMesh.chunk_position.m_data = v3;
  }

  cv3d::recon::mesh_util::TriMesh<float,unsigned int>::operator=(&self->_chunkMesh.mesh, &a3->mesh);
}

- (vector<unsigned)semanticsVector
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(retstr, self->_semanticsVector.__begin_, self->_semanticsVector.__end_, self->_semanticsVector.__end_ - self->_semanticsVector.__begin_);
}

- (void)setSemanticsVector:(vector<unsigned)char
{
  p_semanticsVector = &self->_semanticsVector;
  if (p_semanticsVector != a3)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(p_semanticsVector, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 38) = 0;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 134) = 0;
  return self;
}

@end