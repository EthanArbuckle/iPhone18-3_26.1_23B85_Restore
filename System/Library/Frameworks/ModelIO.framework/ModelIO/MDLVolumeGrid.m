@interface MDLVolumeGrid
- (MDLVolumeGrid)initWithAsset:(id)a3 divisions:(int)a4;
- (MDLVolumeGrid)initWithObject:(id)a3 divisions:(int)a4;
- (id)meshWithStyle:(unint64_t)a3;
- (unint64_t)trianglesIntersectingRayWithOrigin:(MDLVolumeGrid *)self direction:(SEL)a2 count:(unint64_t *)a3;
@end

@implementation MDLVolumeGrid

- (MDLVolumeGrid)initWithObject:(id)a3 divisions:(int)a4
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = MDLVolumeGrid;
  if ([(MDLVolumeGrid *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (MDLVolumeGrid)initWithAsset:(id)a3 divisions:(int)a4
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = MDLVolumeGrid;
  if ([(MDLVolumeGrid *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (id)meshWithStyle:(unint64_t)a3
{
  ptr = self->_octree.__ptr_;
  if (ptr)
  {
    ptr = sub_239EBFBE4(ptr, *(ptr + 144), a3 == 2, a3 == 1);
    v3 = vars8;
  }

  return ptr;
}

- (unint64_t)trianglesIntersectingRayWithOrigin:(MDLVolumeGrid *)self direction:(SEL)a2 count:(unint64_t *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = vmulq_f32(v4, v4);
  v6 = vaddv_f32(*v5.f32) + v5.f32[2];
  if (v6 <= 0.00000011921)
  {
    v13 = 0;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 1065353216;
    memset(v30, 0, sizeof(v30));
    LODWORD(v30[0]) = 2139095039;
    v24 = 0;
    v26 = 0;
    v18 = _Q0;
    v19 = vmulq_n_f32(v4, 1.0 / v6);
    __asm { FMOV            V0.2S, #1.0 }

    *&_Q0 = vdiv_f32(*&_Q0, *v19.f32);
    *(&_Q0 + 2) = 1.0 / v19.f32[2];
    v20 = _Q0;
    v21 = *&_Q0 < 0.0;
    v22 = *(&_Q0 + 1) < 0.0;
    v23 = (1.0 / v19.f32[2]) < 0.0;
    v25 = 0x7F7FFFFF3C800000;
    sub_239EBFA9C(self->_octree.__ptr_, &v18, v30, &v27);
    v12 = malloc_type_malloc(8 * *(&v28 + 1), 0x100004000313F17uLL);
    v13 = v12;
    v14 = v28;
    if (v28)
    {
      v15 = 0;
      do
      {
        v12[v15++] = *(v14 + 16);
        v14 = *v14;
      }

      while (v14);
      v14 = v15;
    }

    *a3 = v14;
    sub_239E7B644(&v27);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

@end