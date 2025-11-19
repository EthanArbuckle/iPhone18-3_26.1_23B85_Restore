@interface CAMutableMeshTransform
+ (id)meshTransform;
- (BOOL)preallocatesBounds;
- (BOOL)replicatesEdges;
- (CAMutableMeshTransform)init;
- (NSString)depthNormalization;
- (id)copyWithZone:(_NSZone *)a3;
- (int)subdivisionSteps;
- (void)addFace:(CAMeshFace *)a3;
- (void)addVertex:(CAMeshVertex *)a3;
- (void)removeFaceAtIndex:(unint64_t)a3;
- (void)removeVertexAtIndex:(unint64_t)a3;
- (void)replaceFaceAtIndex:(unint64_t)a3 withFace:(CAMeshFace *)a4;
- (void)replaceVertexAtIndex:(unint64_t)a3 withVertex:(CAMeshVertex *)a4;
- (void)setPreallocatesBounds:(BOOL)a3;
- (void)setReplicatesEdges:(BOOL)a3;
- (void)setSubdivisionSteps:(int)a3;
@end

@implementation CAMutableMeshTransform

- (BOOL)preallocatesBounds
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CAMutableMeshTransform;
  return [(CAMeshTransform *)&v3 preallocatesBounds];
}

- (BOOL)replicatesEdges
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CAMutableMeshTransform;
  return [(CAMeshTransform *)&v3 replicatesEdges];
}

- (int)subdivisionSteps
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CAMutableMeshTransform;
  return [(CAMeshTransform *)&v3 subdivisionSteps];
}

- (NSString)depthNormalization
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CAMutableMeshTransform;
  return [(CAMeshTransform *)&v3 depthNormalization];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAMeshTransform alloc];

  return [(CAMeshTransform *)v4 _initWithMeshTransform:self];
}

- (void)removeFaceAtIndex:(unint64_t)a3
{
  impl = self->super._impl;
  if (a3 >= (*(impl + 4) - *(impl + 3)) >> 5)
  {
    [MEMORY[0x1E695DF30] raise:@"CAMeshTransform" format:{@"%@: trying to remove non-existent face %ld", self, a3}];
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
    if (v6)
    {
      v7 = v6;
      CA::Render::MeshTransform::MeshTransform(v6, ((*(impl + 4) - *(impl + 3)) >> 5) - 1, (*(impl + 7) - *(impl + 6)) >> 4, *(impl + 25));
      v8 = *(impl + 3);
      v9 = *(impl + 4);
      if (v8 != v9)
      {
        v10 = v7[3];
        do
        {
          **&v10 = *v8;
          v11 = *(v8 + 16);
          *(*&v10 + 24) = *(v8 + 24);
          *(*&v10 + 16) = v11;
          *(*&v10 + 28) = *(v8 + 28);
          v8 += 32;
          *&v10 += 32;
        }

        while (v8 != v9);
      }

      v12 = *(impl + 6);
      v13 = 16 * a3;
      v14 = v7[6];
      if (a3)
      {
        memmove(v14, v12, 16 * a3);
        v12 = *(impl + 6);
        v14 = v7[6];
      }

      v15 = &v12[v13 + 16];
      v16 = *(impl + 7);
      if (v15 != v16)
      {
        memmove(&v14[v13], v15, v16 - v15);
      }

      v17 = *(impl + 9);
      v18 = a3 << 6;
      v19 = v7[9];
      if (v18)
      {
        memmove(v19, v17, v18);
        v17 = *(impl + 9);
        v19 = v7[9];
      }

      v20 = &v17[v18 + 64];
      v21 = *(impl + 10);
      if (v20 != v21)
      {
        memmove(&v19[v18], v20, v21 - v20);
      }

      if (atomic_fetch_add(impl + 2, 0xFFFFFFFF) == 1)
      {
        (*(*impl + 16))(impl);
      }

      self->super._impl = v7;
      v7[12] = vmovn_s64(*&self->super._normalization);
      v7[13].i8[4] = self->super._replicatesEdges;
      v7[13].i8[5] = self->super._preallocatesBounds;
    }
  }
}

- (void)addFace:(CAMeshFace *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  impl = self->super._impl;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
  if (v6)
  {
    v7 = v6;
    CA::Render::MeshTransform::MeshTransform(v6, (*(impl + 4) - *(impl + 3)) >> 5, ((*(impl + 7) - *(impl + 6)) >> 4) + 1, *(impl + 25));
    v8 = *(impl + 3);
    v9 = *(impl + 4);
    if (v8 != v9)
    {
      v10 = v7[3];
      do
      {
        **&v10 = *v8;
        v11 = *(v8 + 16);
        *(*&v10 + 24) = *(v8 + 24);
        *(*&v10 + 16) = v11;
        *(*&v10 + 28) = *(v8 + 28);
        v8 += 32;
        *&v10 += 32;
      }

      while (v8 != v9);
    }

    v12 = *(impl + 6);
    v13 = *(impl + 7);
    if (v13 != v12)
    {
      memmove(*&v7[6], v12, v13 - v12);
    }

    v14 = *(impl + 9);
    v15 = *(impl + 10);
    if (v15 != v14)
    {
      memmove(*&v7[9], v14, v15 - v14);
    }

    if (atomic_fetch_add(impl + 2, 0xFFFFFFFF) == 1)
    {
      (*(*impl + 16))(impl);
    }

    v7[1].i32[1] &= 0xFFFFD4FF;
    self->super._impl = v7;
    v7[12] = vmovn_s64(*&self->super._normalization);
    v7[13].i8[4] = self->super._replicatesEdges;
    v7[13].i8[5] = self->super._preallocatesBounds;
    v16 = ((*&v7[7] - *&v7[6]) >> 4) - 1;
    v17 = *a3->var1;
    v18[0] = *a3->var0;
    v18[1] = v17;
    [(CAMutableMeshTransform *)self replaceFaceAtIndex:v16 withFace:v18];
  }
}

- (void)replaceFaceAtIndex:(unint64_t)a3 withFace:(CAMeshFace *)a4
{
  impl = self->super._impl;
  v5 = impl[6];
  if (a3 >= (impl[7] - v5) >> 4)
  {
    [MEMORY[0x1E695DF30] raise:@"CAMeshTransform" format:{@"%@: trying to replace non-existent face %ld", self, a3}];
  }

  else
  {
    v6 = 0;
    v7 = v5 + 16 * a3;
    v8 = impl[9] + (a3 << 6) + 4;
    do
    {
      *(v7 + v6 * 4) = a4->var0[v6];
      *(v8 + 1 * v6) = a4->var1[v6];
      ++v6;
    }

    while (v6 != 4);
    *(impl + 3) &= 0xFFFFD4FF;
  }
}

- (void)removeVertexAtIndex:(unint64_t)a3
{
  impl = self->super._impl;
  if (a3 >= (*(impl + 4) - *(impl + 3)) >> 5)
  {
    [MEMORY[0x1E695DF30] raise:@"CAMeshTransform" format:{@"%@: trying to remove non-existent vertex %ld", self, a3}];
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
    if (v6)
    {
      v7 = v6;
      v8 = CA::Render::MeshTransform::MeshTransform(v6, ((*(impl + 4) - *(impl + 3)) >> 5) - 1, (*(impl + 7) - *(impl + 6)) >> 4, *(impl + 25));
      v9 = *(impl + 3);
      v10 = 32 * a3;
      v11 = *(v8 + 24);
      if (a3)
      {
        v12 = v9 + 32 * a3;
        do
        {
          **&v11 = *v9;
          v13 = *(v9 + 16);
          *(*&v11 + 24) = *(v9 + 24);
          *(*&v11 + 16) = v13;
          *(*&v11 + 28) = *(v9 + 28);
          v9 += 32;
          *&v11 += 32;
        }

        while (v9 != v12);
        v9 = *(impl + 3);
        v11 = v7[3];
      }

      v14 = v10 + v9 + 32;
      v15 = *(impl + 4);
      if (v14 != v15)
      {
        v16 = v10 + *&v11;
        do
        {
          *v16 = *v14;
          v17 = *(v14 + 16);
          *(v16 + 24) = *(v14 + 24);
          *(v16 + 16) = v17;
          *(v16 + 28) = *(v14 + 28);
          v14 += 32;
          v16 += 32;
        }

        while (v14 != v15);
      }

      v18 = *(impl + 6);
      v19 = *(impl + 7);
      if (v19 != v18)
      {
        memmove(*&v7[6], v18, v19 - v18);
      }

      v20 = *(impl + 9);
      v21 = *(impl + 10);
      if (v21 != v20)
      {
        memmove(*&v7[9], v20, v21 - v20);
      }

      v22 = *(impl + 6);
      v23 = *(impl + 7);
      while (v22 != v23)
      {
        for (i = 0; i != 16; i += 4)
        {
          v25 = *(v22 + i);
          if (v25 > a3)
          {
            *(v22 + i) = v25 - 1;
          }
        }

        v22 += 16;
      }

      if (atomic_fetch_add(impl + 2, 0xFFFFFFFF) == 1)
      {
        (*(*impl + 16))(impl);
      }

      self->super._impl = v7;
      v7[12] = vmovn_s64(*&self->super._normalization);
      v7[13].i8[4] = self->super._replicatesEdges;
      v7[13].i8[5] = self->super._preallocatesBounds;
    }
  }
}

- (void)addVertex:(CAMeshVertex *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  impl = self->super._impl;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
  if (v6)
  {
    v7 = v6;
    CA::Render::MeshTransform::MeshTransform(v6, ((*(impl + 4) - *(impl + 3)) >> 5) + 1, (*(impl + 7) - *(impl + 6)) >> 4, *(impl + 25));
    v8 = *(impl + 3);
    v9 = *(impl + 4);
    if (v8 != v9)
    {
      v10 = v7[3];
      do
      {
        **&v10 = *v8;
        v11 = *(v8 + 16);
        *(*&v10 + 24) = *(v8 + 24);
        *(*&v10 + 16) = v11;
        *(*&v10 + 28) = *(v8 + 28);
        v8 += 32;
        *&v10 += 32;
      }

      while (v8 != v9);
    }

    v12 = *(impl + 6);
    v13 = *(impl + 7);
    if (v13 != v12)
    {
      memmove(*&v7[6], v12, v13 - v12);
    }

    v14 = *(impl + 9);
    v15 = *(impl + 10);
    if (v15 != v14)
    {
      memmove(*&v7[9], v14, v15 - v14);
    }

    if (atomic_fetch_add(impl + 2, 0xFFFFFFFF) == 1)
    {
      (*(*impl + 16))(impl);
    }

    self->super._impl = v7;
    v7[12] = vmovn_s64(*&self->super._normalization);
    v7[13].i8[4] = self->super._replicatesEdges;
    v7[13].i8[5] = self->super._preallocatesBounds;
    v16 = ((*&v7[4] - *&v7[3]) >> 5) - 1;
    v17 = *&a3->var1.x;
    v18[0] = a3->var0;
    v18[1] = v17;
    z = a3->var1.z;
    [(CAMutableMeshTransform *)self replaceVertexAtIndex:v16 withVertex:v18];
  }
}

- (void)replaceVertexAtIndex:(unint64_t)a3 withVertex:(CAMeshVertex *)a4
{
  impl = self->super._impl;
  v7 = impl[3];
  if (a3 >= (impl[4] - v7) >> 5)
  {
    [MEMORY[0x1E695DF30] raise:@"CAMeshTransform" format:{@"%@: trying to replace non-existent vertex %ld", self, a3, v4, v5}];
  }

  else
  {
    v8 = (v7 + 32 * a3);
    v9 = *&a4->var1.x;
    *v8 = vcvt_f32_f64(a4->var0);
    v8[2] = vcvt_f32_f64(v9);
    z = a4->var1.z;
    v8[3].f32[0] = z;
    v8[3].i32[1] = 1065353216;
    *(impl + 3) &= 0xFFFFD4FF;
  }
}

- (void)setPreallocatesBounds:(BOOL)a3
{
  self->super._preallocatesBounds = a3;
  impl = self->super._impl;
  if (impl)
  {
    impl[12] = vmovn_s64(*&self->super._normalization);
    impl[13].i8[4] = self->super._replicatesEdges;
    impl[13].i8[5] = self->super._preallocatesBounds;
  }
}

- (void)setReplicatesEdges:(BOOL)a3
{
  self->super._replicatesEdges = a3;
  impl = self->super._impl;
  if (impl)
  {
    impl[12] = vmovn_s64(*&self->super._normalization);
    impl[13].i8[4] = a3;
    impl[13].i8[5] = self->super._preallocatesBounds;
  }
}

- (void)setSubdivisionSteps:(int)a3
{
  self->super._subdivisionSteps = a3;
  impl = self->super._impl;
  if (impl)
  {
    impl[24] = self->super._normalization;
    impl[25] = a3;
    *(impl + 108) = self->super._replicatesEdges;
    *(impl + 109) = self->super._preallocatesBounds;
  }
}

- (CAMutableMeshTransform)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAMutableMeshTransform;
  v2 = [(CAMeshTransform *)&v5 _init];
  if (v2)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
    if (v3)
    {
      *(v3 + 2) = 1;
      ++dword_1ED4EAAC4;
      *v3 = &unk_1EF2010D8;
      *(v3 + 12) = 35;
      *(v3 + 84) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 26) = 0;
      *(v3 + 54) = 0;
      *(v3 + 25) = 0;
      v2->i64[1] = v3;
      *(v3 + 12) = vmovn_s64(v2[1]);
      v3[108] = v2[2].i8[0];
      v3[109] = v2[2].i8[1];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

+ (id)meshTransform
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end