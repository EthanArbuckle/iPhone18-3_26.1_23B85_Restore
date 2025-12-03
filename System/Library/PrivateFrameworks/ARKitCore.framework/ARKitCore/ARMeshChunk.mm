@interface ARMeshChunk
- (ARMeshAnchor)anchorForReferenceOriginTransform:(float32x4_t)transform;
- (ARMeshChunk)initWithChunk:(ChunkMesh *)chunk device:(id)device timestamp:(double)timestamp voxelSize:(double)size;
- (ChunkMesh)chunkMesh;
- (id).cxx_construct;
- (id)chunkIdentifier;
- (id)identifier;
- (vector<unsigned)semanticsVector;
- (void)addSemantics:(const char *)semantics count:(unsigned int)count size:(unsigned int)size;
- (void)convertToWorldSourceFromVisionSource:(simd_float4)source relativeTransform:(simd_float4)transform rotationOnly:(uint64_t)only;
- (void)setChunkMesh:(ChunkMesh *)mesh;
- (void)setSemanticsVector:(vector<unsigned)char;
@end

@implementation ARMeshChunk

- (ARMeshChunk)initWithChunk:(ChunkMesh *)chunk device:(id)device timestamp:(double)timestamp voxelSize:(double)size
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = ARMeshChunk;
  v12 = [(ARMeshChunk *)&v17 init];
  v13 = v12;
  v14 = v12;
  if (v12)
  {
    if (v12 + 136 != chunk)
    {
      v15 = *chunk->chunk_position.m_data;
      *(v12 + 70) = chunk->chunk_position.m_data[2];
      *(v12 + 34) = v15;
    }

    cv3d::recon::mesh_util::TriMesh<float,unsigned int>::operator=(v12 + 18, &chunk->mesh);
    objc_storeStrong(v13 + 1, device);
    v14->_timestamp = timestamp;
    v14->_voxelSize = size;
  }

  return v14;
}

- (id)chunkIdentifier
{
  v2 = MEMORY[0x1E696AD98];
  chunkIdFromPosition = [(ARMeshChunk *)self chunkIdFromPosition];

  return [v2 numberWithUnsignedLongLong:chunkIdFromPosition];
}

- (void)addSemantics:(const char *)semantics count:(unsigned int)count size:(unsigned int)size
{
  [(ARMeshChunk *)self setNumSemantics:*&count];
  v9 = [(MTLDevice *)self->_device newBufferWithBytes:semantics length:size * count options:0];
  [(ARMeshChunk *)self setSemantics:?];
}

- (id)identifier
{
  v2 = MEMORY[0x1E696AFB0];
  chunkIdFromPosition = [(ARMeshChunk *)self chunkIdFromPosition];

  return [v2 ar_UUIDWithIntegerValue:chunkIdFromPosition];
}

- (void)convertToWorldSourceFromVisionSource:(simd_float4)source relativeTransform:(simd_float4)transform rotationOnly:(uint64_t)only
{
  v25.columns[2] = source;
  v25.columns[3] = transform;
  v25.columns[0] = self;
  v25.columns[1] = a2;
  v30 = a7;
  buffer = [v30 buffer];
  contents = [buffer contents];

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
  v18 = (contents + 8);
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

- (ARMeshAnchor)anchorForReferenceOriginTransform:(float32x4_t)transform
{
  if ([self vertexCount] < 1)
  {
    v40 = 0;
  }

  else
  {
    v6 = [*(self + 8) newBufferWithBytes:*(self + 144) length:12 * objc_msgSend(self options:{"vertexCount"), 0}];
    v7 = -[ARGeometrySource initWithBuffer:count:format:componentsPerVector:offset:stride:]([ARGeometrySource alloc], "initWithBuffer:count:format:componentsPerVector:offset:stride:", v6, [self vertexCount], 30, 3, 0, 12);
    v8 = -1431655765 * ((*(self + 200) - *(self + 192)) >> 2);
    if (v8)
    {
      v9 = [*(self + 8) newBufferWithBytes:? length:? options:?];
      v10 = [[ARGeometrySource alloc] initWithBuffer:v9 count:v8 format:30 componentsPerVector:3 offset:0 stride:12];
      if ([self faceCount] < 1)
      {
        v40 = 0;
      }

      else
      {
        v46 = [*(self + 8) newBufferWithBytes:*(self + 216) length:12 * objc_msgSend(self options:{"faceCount"), 0}];
        v11 = -[ARGeometryElement initWithBuffer:count:bytesPerIndex:primitiveType:]([ARGeometryElement alloc], "initWithBuffer:count:bytesPerIndex:primitiveType:", v46, [self faceCount], 4, 1);
        v12 = [[ARMeshGeometry alloc] initWithVertices:v7 normals:v10 faces:v11];
        [self semanticsVector];
        faceCount = [self faceCount];
        v14 = v63.i64[1] - v63.i64[0];
        if (v63.i64[0])
        {
          v63.i64[1] = v63.i64[0];
          operator delete(v63.i64[0]);
        }

        if (v14 == faceCount)
        {
          v15 = *(self + 8);
          [self semanticsVector];
          v16 = [v15 newBufferWithBytes:v63.i64[0] length:objc_msgSend(self options:{"faceCount"), 0}];
          if (v63.i64[0])
          {
            v63.i64[1] = v63.i64[0];
            operator delete(v63.i64[0]);
          }

          v17 = -[ARGeometrySource initWithBuffer:count:format:componentsPerVector:offset:stride:]([ARGeometrySource alloc], "initWithBuffer:count:format:componentsPerVector:offset:stride:", v16, [self faceCount], 45, 1, 0, 1);
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
          *(&v63 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v59 + v36))), transform, *&v59.f32[v36 / 4], 1), a4, *(&v59 + v36), 2), a5, *(&v59 + v36), 3);
          v36 += 16;
        }

        while (v36 != 64);
        v56 = *v64.i64;
        v58 = *v63.i64;
        v52 = *v66.i64;
        v54 = *v65.i64;
        [self convertToWorldSourceFromVisionSource:v7 relativeTransform:0 rotationOnly:{*v50.i64, *v49.i64, *v48.i64, *v47.i64}];
        [self convertToWorldSourceFromVisionSource:v10 relativeTransform:1 rotationOnly:{*v50.i64, *v49.i64, *v48.i64, *v47.i64}];
        v37 = [ARMeshAnchor alloc];
        v38 = *(self + 80);
        identifier = [self identifier];
        v40 = [(ARMeshAnchor *)v37 initWithGeometry:v12 atTimestamp:identifier identifier:v38 transform:v58 voxelSize:v56, v54, v52, *(self + 88)];
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

- (void)setChunkMesh:(ChunkMesh *)mesh
{
  if (&self->_chunkMesh != mesh)
  {
    v3 = *mesh->chunk_position.m_data;
    self->_chunkMesh.chunk_position.m_data[2] = mesh->chunk_position.m_data[2];
    *self->_chunkMesh.chunk_position.m_data = v3;
  }

  cv3d::recon::mesh_util::TriMesh<float,unsigned int>::operator=(&self->_chunkMesh.mesh, &mesh->mesh);
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