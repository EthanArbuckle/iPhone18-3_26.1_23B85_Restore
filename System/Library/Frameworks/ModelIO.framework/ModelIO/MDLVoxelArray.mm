@interface MDLVoxelArray
- (BOOL)voxelExistsAtIndex:(MDLVoxelIndex)index allowAnyX:(BOOL)allowAnyX allowAnyY:(BOOL)allowAnyY allowAnyZ:(BOOL)allowAnyZ allowAnyShell:(BOOL)allowAnyShell;
- (MDLAxisAlignedBoundingBox)boundingBox;
- (MDLAxisAlignedBoundingBox)voxelBoundingBoxAtIndex:(SEL)index;
- (MDLMesh)coarseMeshUsingAllocator:(id)allocator;
- (MDLMesh)meshUsingAllocator:(id)allocator;
- (MDLVoxelArray)init;
- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions patchRadius:(float)patchRadius;
- (MDLVoxelIndex)indexOfSpatialLocation:(vector_float3)location;
- (MDLVoxelIndexExtent)voxelIndexExtent;
- (NSData)voxelIndices;
- (NSData)voxelsWithinExtent:(MDLVoxelIndexExtent)extent;
- (id).cxx_construct;
- (id)coarseVoxelMeshWithStyle:(unint64_t)style;
- (vector<int,)boxesPerLayer;
- (vector_float3)spatialLocationOfIndex:(MDLVoxelIndex)index;
- (void)convertToSignedShellField;
- (void)differenceWithVoxels:(MDLVoxelArray *)voxels;
- (void)dilateNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo;
- (void)erodeNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo selector:(SEL)selector;
- (void)intersectWithVoxels:(MDLVoxelArray *)voxels;
- (void)recalculateExtents;
- (void)setVoxelAtIndex:(MDLVoxelIndex)index;
- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions patchRadius:(float)patchRadius;
- (void)unionWithVoxels:(MDLVoxelArray *)voxels;
@end

@implementation MDLVoxelArray

- (void)recalculateExtents
{
  anon_60 = self->_anon_60;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  v4.i64[0] = 0x100000001;
  v4.i64[1] = 0x100000001;
  v5 = vnegq_f32(v4);
  *self->_anon_60 = v3;
  *&self->_anon_60[16] = v5;
  if (self->_voxels.__table_.__size_)
  {
    next = self->_voxels.__table_.__first_node_.__next_;
    if (next)
    {
      v7.i64[0] = 0x100000001;
      v7.i64[1] = 0x100000001;
      v5 = vnegq_f32(v7);
      *&v3 = 0x8000000080000000;
      *(&v3 + 1) = 0x8000000080000000;
      v8 = vdupq_n_s64(1uLL);
      v9 = vdupq_n_s64(2uLL);
      v10 = vdupq_n_s64(4uLL);
      v11 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
      v12 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v13 = *(next + 6);
        v14 = (next + 16);
        v15 = vld1q_dup_f64(v14);
        v16 = 0uLL;
        v17 = 24;
        v18 = xmmword_239F9AD60;
        v19 = xmmword_239F9AD50;
        v20 = xmmword_239F9AD40;
        v21 = xmmword_239F9AD30;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v24 = v21;
          v25.i64[0] = 3 * v21.i64[0];
          v26 = v20;
          v25.i64[1] = 3 * v24.i64[1];
          v27.i64[0] = 3 * v20.i64[0];
          v27.i64[1] = 3 * v26.i64[1];
          v28 = v23;
          v29 = v22;
          v30 = v16;
          v16 = vorrq_s8(v16, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v8, v27), v15), vnegq_s64(vaddq_s64(v26, v26))), vshlq_u64(vandq_s8(vshlq_u64(v8, v25), v15), vnegq_s64(vaddq_s64(v24, v24)))));
          v31 = vaddq_s64(v25, v19);
          v32 = vaddq_s64(v27, v18);
          v23 = vorrq_s8(v23, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v9, v27), v15), vmvnq_s8(v32)), vshlq_u64(vandq_s8(vshlq_u64(v9, v25), v15), vmvnq_s8(v31))));
          v22 = vorrq_s8(v22, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v10, v27), v15), vsubq_s64(v11, v32)), vshlq_u64(vandq_s8(vshlq_u64(v10, v25), v15), vsubq_s64(v11, v31))));
          v19 = vaddq_s64(v19, v12);
          v18 = vaddq_s64(v18, v12);
          v21 = vaddq_s64(v24, v10);
          v20 = vaddq_s64(v26, v10);
          v17 -= 4;
        }

        while (v17);
        v33 = vdupq_n_s64(0x15uLL);
        v34 = vuzp1q_s32(vcgtq_u64(v33, v26), vcgtq_u64(v33, v24));
        v35 = vbslq_s8(v34, v16, v30);
        v36 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
        v37 = v36.i32[0] | v36.i32[1];
        if ((v36.i32[0] | v36.i32[1]) > v5.i32[0])
        {
          v5.i32[0] = v36.i32[0] | v36.i32[1];
          *&self->_anon_60[16] = v5;
        }

        v38 = vbslq_s8(v34, v23, v28);
        v39 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
        if ((v39.i32[0] | v39.i32[1]) > v5.i32[1])
        {
          v5.i32[1] = v39.i32[0] | v39.i32[1];
          *&self->_anon_60[16] = v5;
        }

        v40 = vbslq_s8(v34, v22, v29);
        v41 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
        if ((v41.i32[0] | v41.i32[1]) > v5.i32[2])
        {
          v5.i32[2] = v41.i32[0] | v41.i32[1];
          *&self->_anon_60[16] = v5;
        }

        if (v13 > v5.i32[3])
        {
          v5.i32[3] = v13;
          *&self->_anon_60[16] = v5;
        }

        if (v37 < v3)
        {
          LODWORD(v3) = v37;
          *anon_60 = v3;
        }

        if ((v39.i32[0] | v39.i32[1]) < SDWORD1(v3))
        {
          DWORD1(v3) = v39.i32[0] | v39.i32[1];
          *anon_60 = v3;
        }

        if ((v41.i32[0] | v41.i32[1]) < SDWORD2(v3))
        {
          DWORD2(v3) = v41.i32[0] | v41.i32[1];
          *anon_60 = v3;
        }

        if (v13 < SHIDWORD(v3))
        {
          HIDWORD(v3) = v13;
          *anon_60 = v3;
        }

        next = *next;
      }

      while (next);
    }

    *v5.f32 = vcvt_f32_s32(*&v3);
    v5.f32[2] = SDWORD2(v3);
    __asm { FMOV            V0.4S, #1.0 }

    *&self->_anon_80[16] = vmlaq_n_f32(*self->_originatingOffset, vaddq_f32(v5, _Q0), self->_voxelExtent);
    v47 = *&self->_anon_60[16];
    *v47.f32 = vcvt_f32_s32(*v47.f32);
    v47.f32[2] = v47.i32[2];
    *self->_anon_80 = vmlaq_n_f32(*self->_originatingOffset, vaddq_f32(v47, _Q0), self->_voxelExtent);
  }

  else
  {
    v48.i64[0] = 0x80000000800000;
    v48.i64[1] = 0x80000000800000;
    *self->_anon_80 = v48;
    *&self->_anon_80[16] = vnegq_f32(v48);
  }
}

- (MDLVoxelArray)init
{
  v21.receiver = self;
  v21.super_class = MDLVoxelArray;
  v2 = [(MDLObject *)&v21 init];
  v3 = v2;
  if (v2)
  {
    *v16 = 0u;
    *__p = 0u;
    *&__p[16] = 1065353216;
    sub_239F1D21C(&v2->_voxels, v16);
    sub_239E7B644(v16);
    sub_239ED981C(v16, v4);
    p_mortonCoder = &v3->mortonCoder;
    begin = v3->mortonCoder.mortonkeyX.__begin_;
    if (begin)
    {
      v3->mortonCoder.mortonkeyX.__end_ = begin;
      operator delete(begin);
      p_mortonCoder->mortonkeyX.__begin_ = 0;
      v3->mortonCoder.mortonkeyX.__end_ = 0;
      v3->mortonCoder.mortonkeyX.__cap_ = 0;
    }

    *&p_mortonCoder->mortonkeyX.__begin_ = *v16;
    v3->mortonCoder.mortonkeyX.__cap_ = *__p;
    v16[0] = 0;
    v16[1] = 0;
    *__p = 0;
    v7 = v3->mortonCoder.mortonkeyY.__begin_;
    if (v7)
    {
      v3->mortonCoder.mortonkeyY.__end_ = v7;
      operator delete(v7);
      v3->mortonCoder.mortonkeyY.__begin_ = 0;
      v3->mortonCoder.mortonkeyY.__end_ = 0;
      v3->mortonCoder.mortonkeyY.__cap_ = 0;
    }

    *&v3->mortonCoder.mortonkeyY.__begin_ = *&__p[8];
    v3->mortonCoder.mortonkeyY.__cap_ = v18;
    *&__p[8] = 0;
    *&__p[16] = 0;
    v18 = 0;
    v8 = v3->mortonCoder.mortonkeyZ.__begin_;
    if (v8)
    {
      v3->mortonCoder.mortonkeyZ.__end_ = v8;
      operator delete(v8);
      v3->mortonCoder.mortonkeyZ.__begin_ = 0;
      v3->mortonCoder.mortonkeyZ.__end_ = 0;
      v3->mortonCoder.mortonkeyZ.__cap_ = 0;
      v8 = *&__p[8];
    }

    *&v3->mortonCoder.mortonkeyZ.__begin_ = v19;
    v3->mortonCoder.mortonkeyZ.__cap_ = v20;
    v19 = 0uLL;
    v20 = 0;
    if (v8)
    {
      *&__p[16] = v8;
      operator delete(v8);
    }

    if (v16[0])
    {
      v16[1] = v16[0];
      operator delete(v16[0]);
    }

    *v3->_anon_60 = 0;
    *&v3->_anon_60[8] = 0;
    *&v3->_anon_60[16] = xmmword_239F9E090;
    __asm { FMOV            V1.4S, #-1.0 }

    *v3->_anon_80 = _Q1;
    *&v3->_anon_80[16] = 0u;
    *v3->_originatingOffset = 0u;
    v3->_voxelExtent = 1.0;
    sub_239F1D2C0(&v3->_octreeData.__ptr_, 0);
    v3->_levelSet = 0;
    v3->_interiorThickness = 0.0;
    v3->_exteriorThickness = 0.0;
    v14 = v3;
  }

  return v3;
}

- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions patchRadius:(float)patchRadius
{
  v9 = asset;
  if (divisions <= 0)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v10, v14, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v12, v13);
  }

  if (patchRadius < 0.0)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v17, v18);
  }

  v39.receiver = self;
  v39.super_class = MDLVoxelArray;
  v20 = [(MDLObject *)&v39 init];
  v21 = v20;
  if (v20)
  {
    *v34 = 0u;
    *__p = 0u;
    *&__p[16] = 1065353216;
    sub_239F1D21C(&v20->_voxels, v34);
    sub_239E7B644(v34);
    sub_239ED981C(v34, v22);
    p_mortonCoder = &v21->mortonCoder;
    begin = v21->mortonCoder.mortonkeyX.__begin_;
    if (begin)
    {
      v21->mortonCoder.mortonkeyX.__end_ = begin;
      operator delete(begin);
      p_mortonCoder->mortonkeyX.__begin_ = 0;
      v21->mortonCoder.mortonkeyX.__end_ = 0;
      v21->mortonCoder.mortonkeyX.__cap_ = 0;
    }

    *&p_mortonCoder->mortonkeyX.__begin_ = *v34;
    v21->mortonCoder.mortonkeyX.__cap_ = *__p;
    v34[0] = 0;
    v34[1] = 0;
    *__p = 0;
    v25 = v21->mortonCoder.mortonkeyY.__begin_;
    if (v25)
    {
      v21->mortonCoder.mortonkeyY.__end_ = v25;
      operator delete(v25);
      v21->mortonCoder.mortonkeyY.__begin_ = 0;
      v21->mortonCoder.mortonkeyY.__end_ = 0;
      v21->mortonCoder.mortonkeyY.__cap_ = 0;
    }

    *&v21->mortonCoder.mortonkeyY.__begin_ = *&__p[8];
    v21->mortonCoder.mortonkeyY.__cap_ = v36;
    *&__p[8] = 0;
    *&__p[16] = 0;
    v36 = 0;
    v26 = v21->mortonCoder.mortonkeyZ.__begin_;
    if (v26)
    {
      v21->mortonCoder.mortonkeyZ.__end_ = v26;
      operator delete(v26);
      v21->mortonCoder.mortonkeyZ.__begin_ = 0;
      v21->mortonCoder.mortonkeyZ.__end_ = 0;
      v21->mortonCoder.mortonkeyZ.__cap_ = 0;
      v26 = *&__p[8];
    }

    *&v21->mortonCoder.mortonkeyZ.__begin_ = v37;
    v21->mortonCoder.mortonkeyZ.__cap_ = v38;
    v37 = 0uLL;
    v38 = 0;
    if (v26)
    {
      *&__p[16] = v26;
      operator delete(v26);
    }

    if (v34[0])
    {
      v34[1] = v34[0];
      operator delete(v34[0]);
    }

    *v21->_anon_60 = 0;
    *&v21->_anon_60[8] = 0;
    *&v21->_anon_60[16] = xmmword_239F9E090;
    __asm { FMOV            V0.4S, #-1.0 }

    *v21->_anon_80 = _Q0;
    *&v21->_anon_80[16] = 0u;
    v21->_voxelExtent = 1.0;
    sub_239F1D2C0(&v21->_octreeData.__ptr_, 0);
    v21->_levelSet = 0;
    v21->_interiorThickness = 0.0;
    v21->_exteriorThickness = 0.0;
    *v21->_originatingOffset = 0u;
    if (v9)
    {
      operator new();
    }

    v32 = v21;
  }

  return v21;
}

- (BOOL)voxelExistsAtIndex:(MDLVoxelIndex)index allowAnyX:(BOOL)allowAnyX allowAnyY:(BOOL)allowAnyY allowAnyZ:(BOOL)allowAnyZ allowAnyShell:(BOOL)allowAnyShell
{
  p_voxels = &self->_voxels;
  if (allowAnyX || allowAnyY || allowAnyZ || allowAnyShell)
  {
    next = p_voxels->__table_.__first_node_.__next_;
    if (next)
    {
      v12 = vdupq_n_s64(1uLL);
      v13 = vdupq_n_s64(2uLL);
      v14 = vdupq_n_s64(4uLL);
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
      v16 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      while (1)
      {
        v17 = (next + 16);
        v18 = vld1q_dup_f64(v17);
        v19 = 0uLL;
        v20 = 24;
        v21 = xmmword_239F9AD60;
        v22 = xmmword_239F9AD50;
        v23 = xmmword_239F9AD40;
        v24 = xmmword_239F9AD30;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = v24;
          v28.i64[0] = 3 * v24.i64[0];
          v29 = v23;
          v28.i64[1] = 3 * v27.i64[1];
          v30.i64[0] = 3 * v23.i64[0];
          v30.i64[1] = 3 * v29.i64[1];
          v31 = v26;
          v32 = v25;
          v33 = v19;
          v19 = vorrq_s8(v19, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v12, v30), v18), vnegq_s64(vaddq_s64(v29, v29))), vshlq_u64(vandq_s8(vshlq_u64(v12, v28), v18), vnegq_s64(vaddq_s64(v27, v27)))));
          v34 = vaddq_s64(v28, v22);
          v35 = vaddq_s64(v30, v21);
          v26 = vorrq_s8(v26, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v13, v30), v18), vmvnq_s8(v35)), vshlq_u64(vandq_s8(vshlq_u64(v13, v28), v18), vmvnq_s8(v34))));
          v25 = vorrq_s8(v25, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v14, v30), v18), vsubq_s64(v15, v35)), vshlq_u64(vandq_s8(vshlq_u64(v14, v28), v18), vsubq_s64(v15, v34))));
          v22 = vaddq_s64(v22, v16);
          v21 = vaddq_s64(v21, v16);
          v24 = vaddq_s64(v27, v14);
          v23 = vaddq_s64(v29, v14);
          v20 -= 4;
        }

        while (v20);
        v36 = vdupq_n_s64(0x15uLL);
        v37 = vuzp1q_s32(vcgtq_u64(v36, v29), vcgtq_u64(v36, v27));
        v38 = vbslq_s8(v37, v26, v31);
        v39 = vbslq_s8(v37, v19, v33);
        *v39.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
        v40 = v39.i32[0] | v39.i32[1];
        v41 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
        v42 = v40 == index.i32[0] || allowAnyX;
        v43 = (v41.i32[0] | v41.i32[1]) == index.i32[1] || allowAnyY;
        if (v42 && v43)
        {
          v45 = vdupq_n_s64(0x15uLL);
          v46 = vbslq_s8(vuzp1q_s32(vcgtq_u64(v45, v29), vcgtq_u64(v45, v27)), v25, v32);
          *v46.i8 = vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
          v47 = (v46.i32[0] | v46.i32[1]) == index.i32[2] || allowAnyZ;
          v48 = *(next + 6) == index.i32[3] || allowAnyShell;
          if (v47 && v48)
          {
            break;
          }
        }

        next = *next;
        if (!next)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    p_mortonCoder = &self->mortonCoder;
    v49 = p_mortonCoder->mortonkeyZ.__begin_[index.u8[8]] | ((p_mortonCoder->mortonkeyY.__begin_[index.u8[5]] | p_mortonCoder->mortonkeyZ.__begin_[index.u8[9]] | p_mortonCoder->mortonkeyX.__begin_[index.u8[1]]) << 24) | p_mortonCoder->mortonkeyY.__begin_[index.u8[4]] | p_mortonCoder->mortonkeyX.__begin_[index.u8[0]];
    return sub_239E7C134(p_voxels, &v49) != 0;
  }
}

- (NSData)voxelsWithinExtent:(MDLVoxelIndexExtent)extent
{
  v90 = extent;
  p_voxels = &self->_voxels;
  next = self->_voxels.__table_.__first_node_.__next_;
  if (next)
  {
    v5 = 0;
    v6 = vdupq_n_s64(1uLL);
    v7 = vdupq_n_s64(2uLL);
    v8 = vdupq_n_s64(4uLL);
    v9 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
    v10 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
    v79 = vdupq_n_s64(0x15uLL);
    v87 = v7;
    v88 = v6;
    v84 = v9;
    v86 = v8;
    v82 = v10;
    do
    {
      v11 = next[6];
      v12 = (next + 4);
      v13 = vld1q_dup_f64(v12);
      v14 = 0uLL;
      v15 = 24;
      v16 = xmmword_239F9AD60;
      v17 = xmmword_239F9AD50;
      v18 = xmmword_239F9AD40;
      v19 = xmmword_239F9AD30;
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v22 = v19;
        v23.i64[0] = 3 * v19.i64[0];
        v24 = v18;
        v23.i64[1] = 3 * v22.i64[1];
        v25.i64[0] = 3 * v18.i64[0];
        v25.i64[1] = 3 * v24.i64[1];
        v26 = v21;
        v27 = v20;
        v28 = v14;
        v14 = vorrq_s8(v14, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v6, v25), v13), vnegq_s64(vaddq_s64(v24, v24))), vshlq_u64(vandq_s8(vshlq_u64(v6, v23), v13), vnegq_s64(vaddq_s64(v22, v22)))));
        v29 = vaddq_s64(v23, v17);
        v30 = vaddq_s64(v25, v16);
        v21 = vorrq_s8(v21, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v7, v25), v13), vmvnq_s8(v30)), vshlq_u64(vandq_s8(vshlq_u64(v7, v23), v13), vmvnq_s8(v29))));
        v20 = vorrq_s8(v20, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v8, v25), v13), vsubq_s64(v9, v30)), vshlq_u64(vandq_s8(vshlq_u64(v8, v23), v13), vsubq_s64(v9, v29))));
        v17 = vaddq_s64(v17, v10);
        v16 = vaddq_s64(v16, v10);
        v19 = vaddq_s64(v22, v8);
        v18 = vaddq_s64(v24, v8);
        v15 -= 4;
      }

      while (v15);
      v31 = vuzp1q_s32(vcgtq_u64(v79, v24), vcgtq_u64(v79, v22));
      v32 = vbslq_s8(v31, v21, v26);
      v33 = vbslq_s8(v31, v20, v27);
      v34 = vbslq_s8(v31, v14, v28);
      *v34.i8 = vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v35 = v34.i32[0] | v34.i32[1];
      *v34.i8 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v36 = v34.i32[0] | v34.i32[1];
      *v34.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v34.i64[0] = __PAIR64__(v34.i32[0] | v34.i32[1], v35);
      v34.i32[2] = v36;
      v34.i32[3] = next[6];
      v37 = sub_239F19240(&v90, v34);
      v10 = v82;
      v9 = v84;
      v8 = v86;
      v7 = v87;
      v6 = v88;
      v5 += v37;
      next = *next;
    }

    while (next);
    if (v5)
    {
      v38 = objc_alloc(MEMORY[0x277CBEB28]);
      v5 = objc_msgSend_initWithLength_(v38, v39, 16 * v5);
      v40 = v5;
      v43 = objc_msgSend_mutableBytes(v40, v41, v42);
      v44 = p_voxels->__table_.__first_node_.__next_;
      if (v44)
      {
        v45 = v43;
        v46 = vdupq_n_s64(1uLL);
        v47 = vdupq_n_s64(2uLL);
        v48 = vdupq_n_s64(4uLL);
        v49 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
        v50 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
        v77 = vdupq_n_s64(0x15uLL);
        v78 = v50;
        v85 = v46;
        v81 = v48;
        v83 = v47;
        v80 = v49;
        do
        {
          v51 = (v44 + 16);
          v52 = vld1q_dup_f64(v51);
          v53 = 0uLL;
          v54 = 24;
          v55 = xmmword_239F9AD60;
          v56 = xmmword_239F9AD50;
          v57 = xmmword_239F9AD40;
          v58 = xmmword_239F9AD30;
          v59 = 0uLL;
          v60 = 0uLL;
          do
          {
            v61 = v58;
            v62.i64[0] = 3 * v58.i64[0];
            v63 = v57;
            v62.i64[1] = 3 * v61.i64[1];
            v64.i64[0] = 3 * v57.i64[0];
            v64.i64[1] = 3 * v63.i64[1];
            v65 = v60;
            v66 = v59;
            v67 = v53;
            v53 = vorrq_s8(v53, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v46, v64), v52), vnegq_s64(vaddq_s64(v63, v63))), vshlq_u64(vandq_s8(vshlq_u64(v46, v62), v52), vnegq_s64(vaddq_s64(v61, v61)))));
            v68 = vaddq_s64(v62, v56);
            v69 = vaddq_s64(v64, v55);
            v60 = vorrq_s8(v60, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v47, v64), v52), vmvnq_s8(v69)), vshlq_u64(vandq_s8(vshlq_u64(v47, v62), v52), vmvnq_s8(v68))));
            v59 = vorrq_s8(v59, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v48, v64), v52), vsubq_s64(v49, v69)), vshlq_u64(vandq_s8(vshlq_u64(v48, v62), v52), vsubq_s64(v49, v68))));
            v56 = vaddq_s64(v56, v50);
            v55 = vaddq_s64(v55, v50);
            v58 = vaddq_s64(v61, v48);
            v57 = vaddq_s64(v63, v48);
            v54 -= 4;
          }

          while (v54);
          v70 = vuzp1q_s32(vcgtq_u64(v77, v63), vcgtq_u64(v77, v61));
          v71 = vbslq_s8(v70, v60, v65);
          v72 = vbslq_s8(v70, v59, v66);
          v73 = vbslq_s8(v70, v53, v67);
          *v73.i8 = vorr_s8(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
          v74 = v73.i32[0] | v73.i32[1];
          *v73.i8 = vorr_s8(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
          v75 = v73.i32[0] | v73.i32[1];
          *v73.i8 = vorr_s8(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
          v73.i64[0] = __PAIR64__(v73.i32[0] | v73.i32[1], v74);
          v73.i64[1] = __PAIR64__(*(v44 + 6), v75);
          v89 = v73;
          if (sub_239F19240(&v90, v73))
          {
            *v45++ = v89;
          }

          v44 = *v44;
          v47 = v83;
          v46 = v85;
          v49 = v80;
          v48 = v81;
          v50 = v78;
        }

        while (v44);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)voxelIndices
{
  p_voxels = &self->_voxels;
  size = self->_voxels.__table_.__size_;
  if (size)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB28]);
    size = objc_msgSend_initWithLength_(v4, v5, 16 * size);
    v6 = size;
    v9 = objc_msgSend_mutableBytes(v6, v7, v8);
    next = p_voxels->__table_.__first_node_.__next_;
    if (next)
    {
      v11 = vdupq_n_s64(1uLL);
      v12 = vdupq_n_s64(2uLL);
      v13 = vdupq_n_s64(4uLL);
      v14 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      v16 = vdupq_n_s64(0x15uLL);
      do
      {
        v17 = (next + 16);
        v18 = vld1q_dup_f64(v17);
        v19 = 0uLL;
        v20 = 24;
        v21 = xmmword_239F9AD60;
        v22 = xmmword_239F9AD50;
        v23 = xmmword_239F9AD40;
        v24 = xmmword_239F9AD30;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = v24;
          v28.i64[0] = 3 * v24.i64[0];
          v29 = v23;
          v28.i64[1] = 3 * v27.i64[1];
          v30.i64[0] = 3 * v23.i64[0];
          v30.i64[1] = 3 * v29.i64[1];
          v31 = v26;
          v32 = v25;
          v33 = v19;
          v19 = vorrq_s8(v19, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v11, v30), v18), vnegq_s64(vaddq_s64(v29, v29))), vshlq_u64(vandq_s8(vshlq_u64(v11, v28), v18), vnegq_s64(vaddq_s64(v27, v27)))));
          v34 = vaddq_s64(v28, v22);
          v35 = vaddq_s64(v30, v21);
          v26 = vorrq_s8(v26, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v12, v30), v18), vmvnq_s8(v35)), vshlq_u64(vandq_s8(vshlq_u64(v12, v28), v18), vmvnq_s8(v34))));
          v25 = vorrq_s8(v25, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v13, v30), v18), vsubq_s64(v14, v35)), vshlq_u64(vandq_s8(vshlq_u64(v13, v28), v18), vsubq_s64(v14, v34))));
          v22 = vaddq_s64(v22, v15);
          v21 = vaddq_s64(v21, v15);
          v24 = vaddq_s64(v27, v13);
          v23 = vaddq_s64(v29, v13);
          v20 -= 4;
        }

        while (v20);
        v36 = vuzp1q_s32(vcgtq_u64(v16, v29), vcgtq_u64(v16, v27));
        v37 = vbslq_s8(v36, v26, v31);
        v38 = vbslq_s8(v36, v25, v32);
        v39 = vbslq_s8(v36, v19, v33);
        *v39.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
        v40 = v39.i32[0] | v39.i32[1];
        *v39.i8 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
        v41 = v39.i32[0] | v39.i32[1];
        *v39.i8 = vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
        v39.i64[0] = __PAIR64__(v39.i32[0] | v39.i32[1], v40);
        v39.i64[1] = __PAIR64__(*(next + 6), v41);
        *v9++ = v39;
        next = *next;
      }

      while (next);
    }
  }

  return size;
}

- (void)setVoxelAtIndex:(MDLVoxelIndex)index
{
  if (((index.i32[0] | index.i32[1] | index.i32[2]) & 0x80000000) == 0)
  {
    v6 = self->mortonCoder.mortonkeyZ.__begin_[index.u8[8]] | ((self->mortonCoder.mortonkeyY.__begin_[index.u8[5]] | self->mortonCoder.mortonkeyZ.__begin_[index.u8[9]] | self->mortonCoder.mortonkeyX.__begin_[index.u8[1]]) << 24) | self->mortonCoder.mortonkeyY.__begin_[index.u8[4]] | self->mortonCoder.mortonkeyX.__begin_[index.u8[0]];
    v7 = index.i32[3];
    sub_239F1D34C(&self->_voxels.__table_.__bucket_list_.__ptr_, &v6);
    objc_msgSend_recalculateExtents(self, v4, v5);
  }

  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
}

- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions patchRadius:(float)patchRadius
{
  v8 = mesh;
  if (divisions <= 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v9, v13, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v11, v12);
  }

  if (patchRadius < 0.0)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v14, v18, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v16, v17);
  }

  if (v8)
  {
    operator new();
  }
}

- (void)unionWithVoxels:(MDLVoxelArray *)voxels
{
  v6 = voxels;
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  for (i = v6->_voxels.__table_.__first_node_.__next_; i; i = *i)
  {
    v10 = i[1];
    DWORD2(v10) = 0;
    sub_239F1D584(&v11, &v10);
  }

  p_voxels = &self->_voxels;
  for (j = self->_voxels.__table_.__first_node_.__next_; j; j = *j)
  {
    v10 = j[1];
    DWORD2(v10) = 0;
    sub_239F1D584(&v11, &v10);
  }

  if (p_voxels != &v11)
  {
    LODWORD(self->_voxels.__table_.__max_load_factor_) = v13;
    sub_239F1D7B4(p_voxels, v12, 0);
  }

  objc_msgSend_recalculateExtents(self, v4, v5);
  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
  sub_239E7B644(&v11);
}

- (void)intersectWithVoxels:(MDLVoxelArray *)voxels
{
  v6 = voxels;
  v9 = 0u;
  v10 = 0u;
  v11 = 1065353216;
  for (i = self->_voxels.__table_.__first_node_.__next_; i; i = *i)
  {
    v8 = i[1];
    if (sub_239E7C134(&v6->_voxels.__table_.__bucket_list_.__ptr_, &v8))
    {
      DWORD2(v8) = 0;
      sub_239F1D584(&v9, &v8);
    }
  }

  if (&self->_voxels != &v9)
  {
    LODWORD(self->_voxels.__table_.__max_load_factor_) = v11;
    sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v10, 0);
  }

  objc_msgSend_recalculateExtents(self, v4, v5);
  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
  sub_239E7B644(&v9);
}

- (void)differenceWithVoxels:(MDLVoxelArray *)voxels
{
  v6 = voxels;
  v9 = 0u;
  v10 = 0u;
  v11 = 1065353216;
  for (i = self->_voxels.__table_.__first_node_.__next_; i; i = *i)
  {
    v8 = i[1];
    if (!sub_239E7C134(&v6->_voxels.__table_.__bucket_list_.__ptr_, &v8))
    {
      DWORD2(v8) = 0;
      sub_239F1D584(&v9, &v8);
    }
  }

  if (&self->_voxels != &v9)
  {
    LODWORD(self->_voxels.__table_.__max_load_factor_) = v11;
    sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v10, 0);
  }

  objc_msgSend_recalculateExtents(self, v4, v5);
  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
  sub_239E7B644(&v9);
}

- (MDLAxisAlignedBoundingBox)boundingBox
{
  maxBounds = self[4].maxBounds;
  minBounds = self[4].minBounds;
  return self;
}

- (MDLVoxelIndex)indexOfSpatialLocation:(vector_float3)location
{
  v4.i32[0] = LODWORD(self->_voxelExtent);
  *v5.i32 = *v4.i32 * 0.5;
  v6 = vsubq_f32(vsubq_f32(v3, *self->_originatingOffset), vdupq_lane_s32(v5, 0));
  __asm { FMOV            V2.4S, #1.0 }

  v12 = vmulq_f32(v6, vdivq_f32(_Q2, vdupq_lane_s32(v4, 0)));
  *result.i8 = vcvt_s32_f32(vrnda_f32(*v12.f32));
  result.i64[1] = llroundf(v12.f32[2]);
  return result;
}

- (vector_float3)spatialLocationOfIndex:(MDLVoxelIndex)index
{
  *v3.f32 = vcvt_f32_s32(*index.i8);
  v3.f32[2] = index.i32[2];
  __asm { FMOV            V2.4S, #1.0 }

  v9 = vmlaq_n_f32(*self->_originatingOffset, vaddq_f32(v3, _Q2), self->_voxelExtent);
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (MDLAxisAlignedBoundingBox)voxelBoundingBoxAtIndex:(SEL)index
{
  result = objc_msgSend_spatialLocationOfIndex_(self, index, v4, *index.i64);
  v7 = self->_voxelExtent * 0.5;
  return result;
}

- (void)convertToSignedShellField
{
  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr)
  {
    sub_239E77634(ptr);
    sub_239E77598(self->_octreeData.__ptr_);
    v6 = 0u;
    v7 = 0u;
    v8 = 1065353216;
    sub_239F17CD0(&self->mortonCoder.mortonkeyX.__begin_, &v6, *self->_octreeData.__ptr_);
    if (&self->_voxels != &v6)
    {
      LODWORD(self->_voxels.__table_.__max_load_factor_) = v8;
      sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v7, 0);
    }

    objc_msgSend_recalculateExtents(self, v4, v5);
    self->_levelSet = 1;
    sub_239E7B644(&v6);
  }
}

- (void)dilateNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo
{
  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr && self->_levelSet)
  {
    sub_239E77B30(ptr, to, widthTo);
    sub_239E77598(self->_octreeData.__ptr_);
    v8 = 0u;
    v9 = 0u;
    v10 = 1065353216;
    sub_239F17CD0(&self->mortonCoder.mortonkeyX.__begin_, &v8, *self->_octreeData.__ptr_);
    if (&self->_voxels != &v8)
    {
      LODWORD(self->_voxels.__table_.__max_load_factor_) = v10;
      sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v9, 0);
    }

    objc_msgSend_recalculateExtents(self, v6, v7);
    sub_239E7B644(&v8);
  }
}

- (void)erodeNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo selector:(SEL)selector
{
  if (to < 0.0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v9, v13, @"ModelIOException", @"[%@ %@]: interiorNBWidth must be greater or equal to 0", v11, v12);
  }

  if (widthTo < 0.0)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v14, v18, @"ModelIOException", @"[%@ %@]: exteriorNBWidth must be greater or equal to 0", v16, v17);
  }

  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr && self->_levelSet)
  {
    sub_239E78130(ptr, to, widthTo);
    v22 = 0u;
    v23 = 0u;
    v24 = 1065353216;
    sub_239F17CD0(&self->mortonCoder.mortonkeyX.__begin_, &v22, *self->_octreeData.__ptr_);
    if (&self->_voxels != &v22)
    {
      LODWORD(self->_voxels.__table_.__max_load_factor_) = v24;
      sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v23, 0);
    }

    objc_msgSend_recalculateExtents(self, v20, v21);
    sub_239E7B644(&v22);
  }
}

- (MDLMesh)coarseMeshUsingAllocator:(id)allocator
{
  v111 = allocator;
  ptr = self->_octreeData.__ptr_;
  if (ptr)
  {
    v5 = log2f(*(ptr + 2));
    v6 = sub_239E71D1C(ptr, v5, 1, 0);
    goto LABEL_85;
  }

  v136 = 0;
  v137 = 0;
  v138 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  p_voxels = &self->_voxels;
  next = self->_voxels.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = self->_voxels.__table_.__first_node_.__next_;
    do
    {
      v9 = v8[6];
      if (v9 >= 0)
      {
        v10 = v8[6];
      }

      else
      {
        v10 = -v9;
      }

      if (v10 > 0x10)
      {
        break;
      }

      v8 = *v8;
    }

    while (v8);
    v11 = 0;
    p_mortonCoder = &self->mortonCoder;
    v118 = vdupq_n_s64(1uLL);
    v116 = vdupq_n_s64(4uLL);
    v117 = vdupq_n_s64(2uLL);
    v114 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
    v115 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
    v113 = vdupq_n_s64(0x15uLL);
    v112 = v10;
    while (1)
    {
      v120 = v11;
      v12 = *(next + 6);
      v119 = next;
      v13 = (next + 16);
      v14 = vld1q_dup_f64(v13);
      v15 = 0uLL;
      v16 = 24;
      v17 = xmmword_239F9AD60;
      v18 = xmmword_239F9AD50;
      v19 = xmmword_239F9AD40;
      v20 = xmmword_239F9AD30;
      v21 = 0uLL;
      v22 = 0uLL;
      do
      {
        v23 = v20;
        v24.i64[0] = 3 * v20.i64[0];
        v25 = v19;
        v24.i64[1] = 3 * v23.i64[1];
        v26.i64[0] = 3 * v19.i64[0];
        v26.i64[1] = 3 * v25.i64[1];
        v27 = v22;
        v28 = v21;
        v29 = v15;
        v15 = vorrq_s8(v15, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v118, v26), v14), vnegq_s64(vaddq_s64(v25, v25))), vshlq_u64(vandq_s8(vshlq_u64(v118, v24), v14), vnegq_s64(vaddq_s64(v23, v23)))));
        v30 = vaddq_s64(v24, v18);
        v31 = vaddq_s64(v26, v17);
        v22 = vorrq_s8(v22, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v117, v26), v14), vmvnq_s8(v31)), vshlq_u64(vandq_s8(vshlq_u64(v117, v24), v14), vmvnq_s8(v30))));
        v21 = vorrq_s8(v21, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v116, v26), v14), vsubq_s64(v115, v31)), vshlq_u64(vandq_s8(vshlq_u64(v116, v24), v14), vsubq_s64(v115, v30))));
        v18 = vaddq_s64(v18, v114);
        v17 = vaddq_s64(v17, v114);
        v20 = vaddq_s64(v23, v116);
        v19 = vaddq_s64(v25, v116);
        v16 -= 4;
      }

      while (v16);
      v32 = vuzp1q_s32(vcgtq_u64(v113, v25), vcgtq_u64(v113, v23));
      v33 = vbslq_s8(v32, v22, v27);
      v34 = vbslq_s8(v32, v21, v28);
      v35 = vbslq_s8(v32, v15, v29);
      *v35.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      v36 = v35.i32[0] | v35.i32[1];
      *v35.i8 = vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v37 = v35.i32[0] | v35.i32[1];
      v38 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v39 = v38.i32[0] | v38.i32[1];
      v40 = (v38.i8[0] | v38.i8[4]);
      if (v36 <= 1)
      {
        v41 = 2;
      }

      else
      {
        v126 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[((v38.i16[0] | v38.i16[2]) >> 8)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)] | p_mortonCoder->mortonkeyX.__begin_[((v36 - 1) >> 8)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[(v38.i8[0] | v38.i8[4])] | p_mortonCoder->mortonkeyX.__begin_[(v36 - 1)];
        v41 = 2 * (sub_239E7C134(p_voxels, &v126) == 0);
      }

      v124 = v12;
      v126 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[BYTE1(v39)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)] | p_mortonCoder->mortonkeyX.__begin_[((v36 + 1) >> 8)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v40] | p_mortonCoder->mortonkeyX.__begin_[(v36 + 1)];
      v42 = v41 | (sub_239E7C134(p_voxels, &v126) == 0);
      if (v39 < 2)
      {
        v44 = v42 | 8;
        v43 = v36;
      }

      else
      {
        v43 = v36;
        v126 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[((v39 - 1) >> 8)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[(v39 - 1)] | p_mortonCoder->mortonkeyX.__begin_[v36];
        v44 = v42 | (8 * (sub_239E7C134(p_voxels, &v126) == 0));
      }

      v126 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[((v39 + 1) >> 8)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[(v39 + 1)] | p_mortonCoder->mortonkeyX.__begin_[v43];
      v45 = v44 | (4 * (sub_239E7C134(p_voxels, &v126) == 0));
      if (v37 < 2)
      {
        v46 = v45 | 0x20;
      }

      else
      {
        v126 = p_mortonCoder->mortonkeyZ.__begin_[(v37 - 1)] | ((p_mortonCoder->mortonkeyY.__begin_[BYTE1(v39)] | p_mortonCoder->mortonkeyZ.__begin_[((v37 - 1) >> 8)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v40] | p_mortonCoder->mortonkeyX.__begin_[v43];
        v46 = v45 | (32 * (sub_239E7C134(p_voxels, &v126) == 0));
      }

      v126 = p_mortonCoder->mortonkeyZ.__begin_[(v37 + 1)] | ((p_mortonCoder->mortonkeyY.__begin_[BYTE1(v39)] | p_mortonCoder->mortonkeyZ.__begin_[((v37 + 1) >> 8)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v40] | p_mortonCoder->mortonkeyX.__begin_[v43];
      v47 = v46 | (16 * (sub_239E7C134(p_voxels, &v126) == 0));
      if (v47)
      {
        break;
      }

      v53 = v119;
      v11 = v120;
LABEL_68:
      next = *v53;
      if (!next)
      {
        goto LABEL_69;
      }
    }

    v48.f32[0] = v36;
    v48.f32[1] = v39;
    v48.f32[2] = v37;
    v49 = vdupq_n_s32(0x3B800000u);
    v50 = vmulq_f32(v48, v49);
    LODWORD(v126) = v124;
    v123 = vaddq_f32(v50, v49);
    v125 = v50;
    if ((v47 & 0x20) != 0)
    {
      v139[0] = v50.i32[0];
      sub_239E798A4(&v136, v139);
      v52 = v120;
      v139[0] = v125.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[2];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[0];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[2];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[0];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[2];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[0];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[2];
      sub_239E798A4(&v136, v139);
      if (v112 >= 0x11)
      {
        v54 = 4;
        do
        {
          sub_239E73254(&v130, &v126);
          --v54;
        }

        while (v54);
      }

      v55 = 4;
      do
      {
        v139[0] = -1082130432;
        sub_239E798A4(&v133, v139);
        v139[0] = 0;
        sub_239E798A4(&v133, v139);
        v139[0] = 0;
        sub_239E798A4(&v133, v139);
        --v55;
      }

      while (v55);
      v139[0] = v120;
      sub_239E73254(&v127, v139);
      v139[0] = v120 + 2;
      sub_239E73254(&v127, v139);
      v139[0] = v120 + 1;
      sub_239E73254(&v127, v139);
      v139[0] = v120 + 1;
      sub_239E73254(&v127, v139);
      v139[0] = v120 + 2;
      sub_239E73254(&v127, v139);
      v139[0] = v120 + 3;
      sub_239E73254(&v127, v139);
      v51 = 4;
      v50.i32[0] = v125.i32[0];
      if ((v47 & 2) == 0)
      {
LABEL_25:
        if ((v47 & 0x10) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v51 = 0;
      v52 = v120;
      if ((v47 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    v139[0] = v50.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    if (v112 >= 0x11)
    {
      v56 = 4;
      do
      {
        sub_239E73254(&v130, &v126);
        --v56;
      }

      while (v56);
    }

    v57 = 4;
    do
    {
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      v139[0] = -1082130432;
      sub_239E798A4(&v133, v139);
      --v57;
    }

    while (v57);
    v139[0] = v51 + v52;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 2;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 1;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 1;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 2;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 3;
    sub_239E73254(&v127, v139);
    v51 += 4;
    v50.i32[0] = v125.i32[0];
    if ((v47 & 0x10) == 0)
    {
LABEL_26:
      if ((v47 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_49;
    }

LABEL_43:
    v139[0] = v50.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    if (v112 >= 0x11)
    {
      v58 = 4;
      do
      {
        sub_239E73254(&v130, &v126);
        --v58;
      }

      while (v58);
    }

    v59 = 4;
    do
    {
      v139[0] = 1065353216;
      sub_239E798A4(&v133, v139);
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      --v59;
    }

    while (v59);
    v139[0] = v51 + v52;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 1;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 2;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 1;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 3;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 2;
    sub_239E73254(&v127, v139);
    v51 += 4;
    v50.i32[0] = v125.i32[0];
    if ((v47 & 1) == 0)
    {
LABEL_27:
      if ((v47 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_55;
    }

LABEL_49:
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    if (v112 >= 0x11)
    {
      v60 = 4;
      do
      {
        sub_239E73254(&v130, &v126);
        --v60;
      }

      while (v60);
    }

    v61 = 4;
    do
    {
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      v139[0] = 1065353216;
      sub_239E798A4(&v133, v139);
      --v61;
    }

    while (v61);
    v139[0] = v51 + v52;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 3;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 2;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 1;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 3;
    sub_239E73254(&v127, v139);
    v51 += 4;
    v50.i32[0] = v125.i32[0];
    if ((v47 & 8) == 0)
    {
LABEL_28:
      if ((v47 & 4) == 0)
      {
LABEL_67:
        v11 = v51 + v52;
        v53 = v119;
        goto LABEL_68;
      }

LABEL_61:
      v139[0] = v50.i32[0];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[2];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[0];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[2];
      sub_239E798A4(&v136, v139);
      v139[0] = v125.i32[0];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[2];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[0];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[1];
      sub_239E798A4(&v136, v139);
      v139[0] = v123.i32[2];
      sub_239E798A4(&v136, v139);
      if (v112 >= 0x11)
      {
        v64 = 4;
        do
        {
          sub_239E73254(&v130, &v126);
          --v64;
        }

        while (v64);
      }

      v65 = 4;
      do
      {
        v139[0] = 0;
        sub_239E798A4(&v133, v139);
        v139[0] = 1065353216;
        sub_239E798A4(&v133, v139);
        v139[0] = 0;
        sub_239E798A4(&v133, v139);
        --v65;
      }

      while (v65);
      v139[0] = v51 + v52;
      sub_239E73254(&v127, v139);
      v139[0] = v51 + v52 + 2;
      sub_239E73254(&v127, v139);
      v139[0] = v51 + v52 + 1;
      sub_239E73254(&v127, v139);
      v139[0] = v51 + v52 + 1;
      sub_239E73254(&v127, v139);
      v139[0] = v51 + v52 + 2;
      sub_239E73254(&v127, v139);
      v139[0] = v51 + v52 + 3;
      sub_239E73254(&v127, v139);
      v51 += 4;
      goto LABEL_67;
    }

LABEL_55:
    v139[0] = v50.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[0];
    sub_239E798A4(&v136, v139);
    v139[0] = v125.i32[1];
    sub_239E798A4(&v136, v139);
    v139[0] = v123.i32[2];
    sub_239E798A4(&v136, v139);
    if (v112 >= 0x11)
    {
      v62 = 4;
      do
      {
        sub_239E73254(&v130, &v126);
        --v62;
      }

      while (v62);
    }

    v63 = 4;
    do
    {
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      v139[0] = -1082130432;
      sub_239E798A4(&v133, v139);
      v139[0] = 0;
      sub_239E798A4(&v133, v139);
      --v63;
    }

    while (v63);
    v139[0] = v51 + v52;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 1;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 3;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 3;
    sub_239E73254(&v127, v139);
    v139[0] = v51 + v52 + 2;
    sub_239E73254(&v127, v139);
    v51 += 4;
    v50.i32[0] = v125.i32[0];
    if ((v47 & 4) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_61;
  }

LABEL_69:
  v67 = [MDLMesh alloc];
  v68 = v111;
  if (!v111)
  {
    v68 = objc_alloc_init(MDLMeshBufferDataAllocator);
  }

  v6 = objc_msgSend_initWithBufferAllocator_(v67, v66, v68);
  if (!v111)
  {
  }

  v70 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"%@-%@", @"Voxel", @"position");
  v72 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v71, v136, v137 - v136);
  objc_msgSend_addAttributeWithName_format_type_data_stride_(v6, v73, v70, 786435, @"position", v72, 12);

  v75 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v74, @"%@-%@", @"Voxel", @"normal");
  v77 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v76, v133, v134 - v133);
  objc_msgSend_addAttributeWithName_format_type_data_stride_(v6, v78, v75, 786435, @"normal", v77, 12);

  if (v131 != v130)
  {
    v80 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v79, @"%@-%@", @"Voxel", @"color");
    v82 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v81, v130, v131 - v130);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v6, v83, v80, 65540, @"color", v82, 4);
  }

  v84 = objc_alloc(MEMORY[0x277CBEA90]);
  v86 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v84, v85, v127, v128 - v127, 0);
  v89 = objc_msgSend_allocator(v6, v87, v88);
  v91 = objc_msgSend_newBufferWithData_type_(v89, v90, v86, 2);

  if (objc_msgSend_conformsToProtocol_(v91, v92, &unk_284D24D98))
  {
    v93 = v91;
    v95 = objc_msgSend_stringByAppendingString_(@"Voxel", v94, @"-Indices");
    objc_msgSend_setName_(v93, v96, v95);
  }

  v97 = [MDLMaterial alloc];
  v99 = objc_msgSend_stringByAppendingString_(@"Voxel", v98, @"-Material");
  v100 = objc_opt_new();
  v102 = objc_msgSend_initWithName_scatteringFunction_(v97, v101, v99, v100);

  v103 = [MDLSubmesh alloc];
  v105 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v103, v104, @"submesh", v91, (v128 - v127) >> 2, 32, 2, v102, 0);
  objc_msgSend_setVertexCount_(v6, v106, ((v137 - v136) >> 2) / 3uLL);
  v107 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v107, v108, v105);
  objc_msgSend_setSubmeshes_(v6, v109, v107);

  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

LABEL_85:

  return v6;
}

- (MDLMesh)meshUsingAllocator:(id)allocator
{
  v230 = *MEMORY[0x277D85DE8];
  v194 = allocator;
  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr && self->_levelSet)
  {
    v5 = sub_239E78750(ptr);
  }

  else
  {
    if (!v194)
    {
      v194 = objc_opt_new();
    }

    memset(v229, 0, sizeof(v229));
    bzero(v228, 0x400uLL);
    v6 = 0;
    for (i = 0; i != 8; ++i)
    {
      for (j = 1; j < 5; j *= 2)
      {
        if (i <= (j ^ i))
        {
          v9 = v229 + v6;
          v6 += 2;
          *v9 = i;
          v9[1] = j ^ i;
        }
      }
    }

    v10 = 0;
    v11.i64[0] = 0x100000001;
    v11.i64[1] = 0x100000001;
    v12 = vdupq_n_s64(8uLL);
    do
    {
      v13 = 0;
      v14 = vdupq_n_s32(v10);
      v15 = 0uLL;
      v16 = xmmword_239F9E0B0;
      v17 = xmmword_239F9E0A0;
      do
      {
        v18 = &v229[v13];
        v232 = vld2q_f32(v18);
        v15 = vorrq_s8(vbicq_s8(vshlq_u32(v11, vshrn_high_n_s64(vshrn_n_s64(v16, 1uLL), v17, 1uLL)), vceqzq_s32(vandq_s8(veorq_s8(vshlq_u32(v14, vnegq_s32(v232.val[1])), vshlq_u32(v14, vnegq_s32(v232.val[0]))), v11))), v15);
        v17 = vaddq_s64(v17, v12);
        v16 = vaddq_s64(v16, v12);
        v13 += 2;
      }

      while (v13 != 6);
      v19 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
      v228[v10++] = v19.i32[0] | v19.i32[1];
    }

    while (v10 != 256);
    v219 = 0;
    v220 = 0;
    v221 = 0;
    sub_239EB2474(&v219, 0x1000uLL);
    objc_msgSend_voxelIndexExtent(self, v20, v21);
    v204 = v22;
    objc_msgSend_voxelIndexExtent(self, v23, v24);
    v201 = v25;
    objc_msgSend_voxelIndexExtent(self, v26, v27);
    v199 = v28;
    selfCopy = self;
    v29 = vsubq_s32(v204, v201);
    v30 = v29.i32[1];
    v207 = v29.i32[2];
    v31 = v29.i32[0];
    __p = 0;
    v217 = 0;
    v218 = 0;
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v226 = 0;
    v32 = v29.i32[0] + 4;
    v224[0] = 1;
    v224[1] = v29.i32[0] + 4;
    v33 = v29.i32[1] + 4;
    v34 = (v29.i32[0] + 4) * (v29.i32[1] + 4);
    v225 = v34;
    memset(v223, 0, sizeof(v223));
    v35 = 2 * v34;
    if (v35 > (v220 - v219) >> 2)
    {
      sub_239EB2474(&v219, v35);
    }

    v36 = v207;
    v227 = 0;
    if (v207 >= -1)
    {
      v197 = 0;
      v37.i64[0] = -1;
      v37.i64[1] = -1;
      v39 = vaddq_s32(v199, v37);
      v195 = v31 + 1;
      v38 = v30 + 1;
      v39.i32[2] = v199.i32[2] - 1;
      v205 = v39;
      v193 = v36 + 1;
      v40 = 1;
      v41 = &OBJC_IVAR___MDLCamera__projection;
      v189 = v31;
      v190 = v30;
      v187 = v33;
      v188 = v32;
      v186 = v30 + 1;
      do
      {
        HIDWORD(v226) = 0;
        if (v30 >= -1)
        {
          v200 = 0;
          v42 = v32 + v32 * v40 * v33 + 1;
          v191 = v40;
          v192 = v34;
          do
          {
            LODWORD(v226) = 0;
            if (v31 >= -1)
            {
              v43 = 0;
              v44 = v41[30];
              v46 = v42;
              do
              {
                v196 = v46;
                v47 = 0;
                LODWORD(v48) = 0;
                v49 = 0;
                v50 = 1;
                do
                {
                  v51 = 0;
                  v198 = v50;
                  v52 = v49 + v197;
                  v53 = 1;
                  do
                  {
                    v54 = 0;
                    v202 = v53;
                    v55 = v51 + v200;
                    v56 = v48;
                    v57 = 1;
                    v48 = v48;
                    do
                    {
                      v39.i32[0] = v54 + v43;
                      v39.i32[1] = v55;
                      v58 = v57;
                      v39.i32[2] = v52;
                      v59 = vaddq_s32(v39, v205);
                      p_mortonCoder = &selfCopy->mortonCoder;
                      *&v212 = p_mortonCoder->mortonkeyZ.__begin_[v59.u8[8]] | ((p_mortonCoder->mortonkeyY.__begin_[v59.u8[5]] | p_mortonCoder->mortonkeyZ.__begin_[v59.u8[9]] | p_mortonCoder->mortonkeyX.__begin_[v59.u8[1]]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v59.u8[4]] | p_mortonCoder->mortonkeyX.__begin_[v59.u8[0]];
                      v60 = sub_239E7C134((&selfCopy->super.super.isa + v44), &v212);
                      v57 = 0;
                      if (v60)
                      {
                        v61 = 1.0;
                      }

                      else
                      {
                        v61 = -1.0;
                      }

                      *(v223 + v48) = v61;
                      v54 = 1;
                      v62 = 1 << v56;
                      if (v60)
                      {
                        v62 = 0;
                      }

                      v47 |= v62;
                      ++v48;
                      ++v56;
                    }

                    while ((v58 & 1) != 0);
                    v53 = 0;
                    v51 = 1;
                  }

                  while ((v202 & 1) != 0);
                  v50 = 0;
                  v49 = 1;
                }

                while ((v198 & 1) != 0);
                v63 = v196;
                if (v47 && v47 != 255)
                {
                  v64 = 0;
                  v65 = 0;
                  v66 = v228[v47];
                  v67 = 0uLL;
                  do
                  {
                    if ((v66 >> v64))
                    {
                      v68 = v229 + 2 * v64;
                      v69 = *v68;
                      v70 = v68[1];
                      v71 = *(v223 + v69);
                      ++v65;
                      v72 = *(v223 + v70);
                      v73 = v71 - v72;
                      if (v71 != v72)
                      {
                        v74 = 0;
                        v75 = (v71 / v73);
                        v76 = 1;
                        do
                        {
                          v77 = HIDWORD(v67);
                          v78 = (&v211 & 0xFFFFFFFFFFFFFFF3 | (4 * (v74 & 3)));
                          v211 = v67;
                          if ((v76 & v69) != 0)
                          {
                            v79 = 1.0;
                          }

                          else
                          {
                            v79 = 0.0;
                          }

                          if ((v76 & v69) != 0)
                          {
                            v80 = 1.0 - v75;
                          }

                          else
                          {
                            v80 = v75;
                          }

                          if ((v76 & v69) != (v76 & v70))
                          {
                            v79 = v80;
                          }

                          v81 = v79 + *v78;
                          *v78 = v81;
                          v67 = v211;
                          HIDWORD(v67) = v77;
                          ++v74;
                          v76 *= 2;
                        }

                        while (v74 != 3);
                      }
                    }

                    ++v64;
                  }

                  while (v64 != 12);
                  for (k = 0; k != 3; ++k)
                  {
                    v83 = *(&v226 + k);
                    v210 = v67;
                    *(&v210 & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3))) = v83 + (*(&v210 & 0xFFFFFFFFFFFFFFF3 | (4 * (k & 3))) * (1.0 / v65));
                    v84 = v210;
                    HIDWORD(v84) = HIDWORD(v67);
                    v67 = v84;
                  }

                  v203 = v210;
                  v85 = __p;
                  v86 = v217;
                  v87 = (v217 - __p) >> 4;
                  *(v219 + v196) = v87;
                  if (v86 >= v218)
                  {
                    if ((v87 + 1) >> 60)
                    {
                      sub_239E797B4();
                    }

                    v89 = v218 - v85;
                    v90 = v89 >> 3;
                    if (v89 >> 3 <= (v87 + 1))
                    {
                      v90 = v87 + 1;
                    }

                    if (v89 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v91 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v91 = v90;
                    }

                    if (v91)
                    {
                      sub_239E91AC8(&__p, v91);
                    }

                    *(16 * v87) = v203;
                    v88 = 16 * v87 + 16;
                    v92 = (16 * v87 - (v217 - __p));
                    memcpy(v92, __p, v217 - __p);
                    v93 = __p;
                    __p = v92;
                    v217 = v88;
                    v218 = 0;
                    if (v93)
                    {
                      operator delete(v93);
                    }
                  }

                  else
                  {
                    v39.i32[3] = HIDWORD(v203);
                    *v86 = v203;
                    v88 = (v86 + 1);
                  }

                  v217 = v88;
                  v94 = -3;
                  v63 = v196;
                  do
                  {
                    if ((v66 >> (v94 + 3)))
                    {
                      v95 = v94 + 4;
                      if (v94 == -1)
                      {
                        v95 = 0;
                      }

                      if (*(&v226 + v95))
                      {
                        v96 = v94 == -3 ? 2 : v94 + 2;
                        if (*(&v226 + v96))
                        {
                          v97 = v224[v95];
                          v98 = v224[v96];
                          v99 = v196 - v97;
                          if (v47)
                          {
                            DWORD1(v100) = *(v219 + v99);
                            DWORD2(v100) = *(v219 + v99 - v98);
                            HIDWORD(v100) = *(v219 + v196 - v98);
                          }

                          else
                          {
                            DWORD1(v100) = *(v219 + v196 - v98);
                            DWORD2(v100) = *(v219 + v99 - v98);
                            HIDWORD(v100) = *(v219 + v99);
                          }

                          LODWORD(v100) = *(v219 + v196);
                          v212 = v100;
                          sub_239E8E4FC(&v213, &v212);
                        }
                      }
                    }
                  }

                  while (!__CFADD__(v94++, 1));
                }

                LODWORD(v226) = v43 + 1;
                v46 = v63 + 1;
                v102 = v43++ == v195;
              }

              while (!v102);
              v42 = v46;
              v31 = v189;
              v30 = v190;
              v33 = v187;
              v32 = v188;
              v40 = v191;
              v34 = v192;
              v38 = v186;
              v41 = &OBJC_IVAR___MDLCamera__projection;
            }

            HIDWORD(v226) = v200 + 1;
            v42 += 2;
            v102 = v200++ == v38;
          }

          while (!v102);
        }

        v227 = v197 + 1;
        v40 ^= 1u;
        v34 = -v34;
        v225 = v34;
        v102 = v197++ == v193;
      }

      while (!v102);
    }

    v209 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v35, 8 * (((v214 - v213) >> 3) + ((v214 - v213) >> 4)));
    v103 = v209;
    v106 = objc_msgSend_mutableBytes(v209, v104, v105);
    v108 = v213;
    v109 = v214;
    while (v108 != v109)
    {
      v110 = *v108++;
      *v106 = vuzp1q_s32(v110, vuzp2q_s32(v110, vdupq_lane_s32(*v110.i8, 0)));
      *(v106 + 16) = vrev64_s32(*&vextq_s8(v110, v110, 8uLL));
      v106 += 24;
    }

    v206 = objc_msgSend_newBufferWithData_type_(v194, v107, v209, 2);
    if (objc_msgSend_conformsToProtocol_(v206, v111, &unk_284D24D98))
    {
      v112 = v206;
      v114 = objc_msgSend_stringByAppendingString_(@"Voxels", v113, @"-Indices");
      objc_msgSend_setName_(v112, v115, v114);
    }

    v116 = [MDLSubmesh alloc];
    v117 = v213;
    v118 = v214;
    v119 = [MDLMaterial alloc];
    v121 = objc_msgSend_stringByAppendingString_(@"Voxels", v120, @"-Material");
    v122 = objc_opt_new();
    v124 = objc_msgSend_initWithName_scatteringFunction_(v119, v123, v121, v122);
    v126 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v116, v125, v206, 2 * (((v118 - v117) >> 3) + ((v118 - v117) >> 4)), 32, 2, v124);

    v128 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v127, 4 * (((v217 - __p) >> 3) + ((v217 - __p) >> 4)));
    v129 = v128;
    v132 = objc_msgSend_mutableBytes(v128, v130, v131);
    v134 = __p;
    v135 = v217;
    while (v134 != v135)
    {
      v136 = *v134++;
      v137 = v132 + 1;
      *v132 = v136;
      v132 = (v132 + 12);
      *v137 = DWORD2(v136);
    }

    v138 = objc_msgSend_newBufferWithData_type_(v194, v133, v128, 1);
    if (objc_msgSend_conformsToProtocol_(v138, v139, &unk_284D24D98))
    {
      v140 = v138;
      v142 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v141, @"%@-%@", @"Voxels", @"position");
      objc_msgSend_setName_(v140, v143, v142);
    }

    v144 = objc_opt_new();
    v147 = objc_msgSend_attributes(v144, v145, v146);
    v149 = objc_msgSend_objectAtIndexedSubscript_(v147, v148, 0);
    objc_msgSend_setName_(v149, v150, @"position");

    v153 = objc_msgSend_attributes(v144, v151, v152);
    v155 = objc_msgSend_objectAtIndexedSubscript_(v153, v154, 0);
    objc_msgSend_setFormat_(v155, v156, 786435);

    v159 = objc_msgSend_attributes(v144, v157, v158);
    v161 = objc_msgSend_objectAtIndexedSubscript_(v159, v160, 0);
    objc_msgSend_setOffset_(v161, v162, 0);

    v165 = objc_msgSend_attributes(v144, v163, v164);
    v167 = objc_msgSend_objectAtIndexedSubscript_(v165, v166, 0);
    objc_msgSend_setBufferIndex_(v167, v168, 0);

    v171 = objc_msgSend_layouts(v144, v169, v170);
    v173 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, 0);
    objc_msgSend_setStride_(v173, v174, 12);

    v175 = [MDLMesh alloc];
    v177 = __p;
    v176 = v217;
    v222 = v126;
    v179 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v178, &v222, 1);
    v5 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v175, v180, v138, (v176 - v177) >> 4, v144, v179);

    objc_msgSend_setName_(v5, v181, @"Voxels");
    LODWORD(v182) = 1045220557;
    objc_msgSend_addNormalsWithAttributeNamed_creaseThreshold_(v5, v183, @"normal", v182);

    if (v213)
    {
      v214 = v213;
      operator delete(v213);
    }

    if (__p)
    {
      v217 = __p;
      operator delete(__p);
    }

    if (v219)
    {
      v220 = v219;
      operator delete(v219);
    }
  }

  v184 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)coarseVoxelMeshWithStyle:(unint64_t)style
{
  ptr = self->_octreeData.__ptr_;
  v5 = log2f(*(ptr + 2));

  return sub_239E71D1C(ptr, v5, style == 2, style == 1);
}

- (vector<int,)boxesPerLayer
{
  ptr = self->_octreeData.__ptr_;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  return sub_239E99F5C(retstr, *(ptr + 6), *(ptr + 7), (*(ptr + 7) - *(ptr + 6)) >> 2);
}

- (MDLVoxelIndexExtent)voxelIndexExtent
{
  v2 = *self->_anon_60;
  v3 = *&self->_anon_60[16];
  result.maximumExtent = v3;
  result.minimumExtent = v2;
  return result;
}

- (id).cxx_construct
{
  self->_voxels.__table_.__bucket_list_ = 0u;
  *&self->_voxels.__table_.__first_node_.__next_ = 0u;
  self->_voxels.__table_.__max_load_factor_ = 1.0;
  sub_239ED981C(&self->mortonCoder, a2);
  self->_octreeData.__ptr_ = 0;
  return self;
}

@end