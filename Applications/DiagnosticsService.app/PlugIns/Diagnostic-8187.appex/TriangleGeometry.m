@interface TriangleGeometry
- (id).cxx_construct;
- (id)addCubeWithFaces:(float32x4_t)a3 color:(float32x4_t)a4 transform:(float32x4_t)a5 inwardNormals:(float32x4_t)a6;
- (id)geometryDescriptor;
- (id)resources;
- (void)addCubeFaceWithCubeVertices:(TriangleGeometry *)self color:(SEL)a2 i0:i1:i2:i3:inwardNormals:;
- (void)clear;
- (void)uploadToBuffers;
@end

@implementation TriangleGeometry

- (void)uploadToBuffers
{
  v13 = [(Geometry *)self device];
  v3 = [v13 newBufferWithLength:self->_indices.__end_ - self->_indices.__begin_ options:0];
  indexBuffer = self->_indexBuffer;
  self->_indexBuffer = v3;

  v5 = [v13 newBufferWithLength:*&self->_anon_50[8] - *self->_anon_50 options:0];
  vertexPositionBuffer = self->_vertexPositionBuffer;
  self->_vertexPositionBuffer = v5;

  v7 = [v13 newBufferWithLength:*&self->_anon_68[8] - *self->_anon_68 options:0];
  vertexNormalBuffer = self->_vertexNormalBuffer;
  self->_vertexNormalBuffer = v7;

  v9 = [v13 newBufferWithLength:*&self->_anon_80[8] - *self->_anon_80 options:0];
  vertexColorBuffer = self->_vertexColorBuffer;
  self->_vertexColorBuffer = v9;

  v11 = [v13 newBufferWithLength:self->_triangles.__end_ - self->_triangles.__begin_ options:0];
  perPrimitiveDataBuffer = self->_perPrimitiveDataBuffer;
  self->_perPrimitiveDataBuffer = v11;

  memcpy([(MTLBuffer *)self->_indexBuffer contents], self->_indices.__begin_, [(MTLBuffer *)self->_indexBuffer length]);
  memcpy([(MTLBuffer *)self->_vertexPositionBuffer contents], *self->_anon_50, [(MTLBuffer *)self->_vertexPositionBuffer length]);
  memcpy([(MTLBuffer *)self->_vertexNormalBuffer contents], *self->_anon_68, [(MTLBuffer *)self->_vertexNormalBuffer length]);
  memcpy([(MTLBuffer *)self->_vertexColorBuffer contents], *self->_anon_80, [(MTLBuffer *)self->_vertexColorBuffer length]);
  memcpy([(MTLBuffer *)self->_perPrimitiveDataBuffer contents], self->_triangles.__begin_, [(MTLBuffer *)self->_perPrimitiveDataBuffer length]);
}

- (void)clear
{
  self->_indices.__end_ = self->_indices.__begin_;
  *&self->_anon_50[8] = *self->_anon_50;
  *&self->_anon_68[8] = *self->_anon_68;
  *&self->_anon_80[8] = *self->_anon_80;
  self->_triangles.__end_ = self->_triangles.__begin_;
}

- (void)addCubeFaceWithCubeVertices:(TriangleGeometry *)self color:(SEL)a2 i0:i1:i2:i3:inwardNormals:
{
  v74 = *(v2 + 16 * v3);
  v75 = v8;
  v10 = *(v2 + 16 * v4);
  v72 = *(v2 + 16 * v5);
  v73 = v10;
  v71 = *(v2 + 16 * v6);
  v11 = vsubq_f32(v10, v74);
  v12 = vmulq_f32(v11, v11);
  *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
  *v12.f32 = vrsqrte_f32(v13);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
  v14 = vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v15 = vsubq_f32(v72, v74);
  v16 = vmulq_f32(v15, v15);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  v18 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v20 = vmlaq_f32(vmulq_f32(v19, vnegq_f32(v14)), v18, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
  v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
  v70 = v21;
  v22 = vsubq_f32(v71, v74);
  v23 = vmulq_f32(v22, v22);
  *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
  *v23.f32 = vrsqrte_f32(v24);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
  v25 = vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v18)), v25, v19);
  v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
  v69 = v27;
  if (v7)
  {
    v61 = vnegq_f32(v21);
    v62 = vnegq_f32(v27);
    v69 = v62;
    v70 = v61;
  }

  else
  {
    v61 = v21;
    v62 = v27;
  }

  p_indices = &self->_indices;
  begin = self->_indices.__begin_;
  end = self->_indices.__end_;
  v31 = (*&self->_anon_50[8] - *self->_anon_50) >> 4;
  v63.i16[0] = v31;
  sub_100001DBC(&self->_indices.__begin_, &v63);
  v63.i16[0] = v31 + 1;
  sub_100001DBC(&self->_indices.__begin_, &v63);
  v63.i16[0] = v31 + 2;
  sub_100001DBC(&self->_indices.__begin_, &v63);
  v63.i16[0] = v31;
  sub_100001DBC(&self->_indices.__begin_, &v63);
  v63.i16[0] = v31 + 2;
  sub_100001DBC(&self->_indices.__begin_, &v63);
  v63.i16[0] = v31 + 3;
  sub_100001DBC(&self->_indices.__begin_, &v63);
  sub_100001E98(self->_anon_50, &v74);
  sub_100001E98(self->_anon_50, &v73);
  sub_100001E98(self->_anon_50, &v72);
  sub_100001E98(self->_anon_50, &v71);
  v32 = vaddq_f32(v61, v62);
  v33 = vmulq_f32(v32, v32);
  *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
  *v33.f32 = vrsqrte_f32(v34);
  *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
  v63 = vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
  sub_100001E98(self->_anon_68, &v63);
  sub_100001E98(self->_anon_68, &v70);
  v35 = vaddq_f32(v70, v62);
  v36 = vmulq_f32(v35, v35);
  *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
  *v36.f32 = vrsqrte_f32(v37);
  *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
  v63 = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
  sub_100001E98(self->_anon_68, &v63);
  sub_100001E98(self->_anon_68, &v69);
  v38 = 4;
  do
  {
    sub_100001E98(self->_anon_80, &v75);
    --v38;
  }

  while (v38);
  v39 = 0;
  v40 = end - begin;
  p_triangles = &self->_triangles;
  v42 = 1;
  do
  {
    v43 = 0;
    v44 = v42;
    v45 = p_indices->__begin_ + v40 + v39;
    v46 = *self->_anon_68;
    v47 = *self->_anon_80;
    do
    {
      v48 = *&v45[2 * v43];
      v49 = &v63.f32[4 * v43];
      *v49 = *(v46 + 16 * v48);
      v49[3] = *(v47 + 16 * v48);
      ++v43;
    }

    while (v43 != 3);
    v50 = self->_triangles.__end_;
    cap = self->_triangles.__cap_;
    if (v50 >= cap)
    {
      v53 = 0xAAAAAAAAAAAAAAABLL * ((v50 - p_triangles->__begin_) >> 5);
      v54 = v53 + 1;
      if (v53 + 1 > 0x2AAAAAAAAAAAAAALL)
      {
        sub_100003598();
      }

      v55 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_triangles->__begin_) >> 5);
      if (2 * v55 > v54)
      {
        v54 = 2 * v55;
      }

      if (v55 >= 0x155555555555555)
      {
        v56 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        sub_100003700(&self->_triangles, v56);
      }

      v57 = 96 * v53;
      *(v57 + 32) = v65;
      *(v57 + 48) = v66;
      *(v57 + 64) = v67;
      *(v57 + 80) = v68;
      *v57 = v63;
      *(v57 + 16) = v64;
      v52 = (96 * v53 + 96);
      v58 = (self->_triangles.__end_ - p_triangles->__begin_);
      v59 = (96 * v53 - v58);
      memcpy((v57 - v58), p_triangles->__begin_, v58);
      v60 = p_triangles->__begin_;
      p_triangles->__begin_ = v59;
      self->_triangles.__end_ = v52;
      self->_triangles.__cap_ = 0;
      if (v60)
      {
        operator delete(v60);
      }

      p_indices = &self->_indices;
    }

    else
    {
      *(v50 + 2) = v65;
      *(v50 + 3) = v66;
      *(v50 + 4) = v67;
      *(v50 + 5) = v68;
      *v50 = v63;
      *(v50 + 1) = v64;
      v52 = (v50 + 96);
    }

    v42 = 0;
    self->_triangles.__end_ = v52;
    v39 = 6;
  }

  while ((v44 & 1) != 0);
}

- (id)addCubeWithFaces:(float32x4_t)a3 color:(float32x4_t)a4 transform:(float32x4_t)a5 inwardNormals:(float32x4_t)a6
{
  v11 = result;
  v12 = 0;
  v13.f64[0] = -0.0000305175998;
  v13.f64[1] = -0.0000305175998;
  v18[0] = v13;
  v18[1] = xmmword_100010310;
  v18[2] = vnegq_f64(v13);
  v18[3] = xmmword_100010320;
  v14.f64[0] = 0.0000305175853;
  v14.f64[1] = 0.0000305175853;
  v18[4] = xmmword_100010330;
  v18[5] = vnegq_f64(v14);
  v18[6] = xmmword_100010340;
  v18[7] = v14;
  do
  {
    v18[v12] = vaddq_f32(a6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v18[v12])), a4, *&v18[v12], 1), a5, v18[v12], 2));
    ++v12;
  }

  while (v12 != 8);
  v15 = 0;
  v16 = &word_100010418;
  do
  {
    if ((a8 >> v15))
    {
      result = [v11 addCubeFaceWithCubeVertices:v18 color:*(v16 - 2) i0:*(v16 - 1) i1:*v16 i2:v16[1] i3:a9 inwardNormals:a2];
    }

    ++v15;
    v16 += 4;
  }

  while (v15 != 6);
  return result;
}

- (id)geometryDescriptor
{
  v3 = +[MTLAccelerationStructureTriangleGeometryDescriptor descriptor];
  [v3 setIndexBuffer:self->_indexBuffer];
  [v3 setIndexType:0];
  [v3 setVertexBuffer:self->_vertexPositionBuffer];
  [v3 setVertexStride:16];
  [v3 setTriangleCount:(self->_indices.__end_ - self->_indices.__begin_) / 3uLL];
  [v3 setPrimitiveDataBuffer:self->_perPrimitiveDataBuffer];
  [v3 setPrimitiveDataStride:96];
  [v3 setPrimitiveDataElementSize:96];

  return v3;
}

- (id)resources
{
  vertexNormalBuffer = self->_vertexNormalBuffer;
  v5[0] = self->_indexBuffer;
  v5[1] = vertexNormalBuffer;
  v5[2] = self->_vertexColorBuffer;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 19) = 0;
  return self;
}

@end