@interface AR3DSkeletonDetectionResult
+ (NSArray)jointNames;
- (AR3DSkeletonDetectionResult)initWithCoder:(id)coder;
- (AR3DSkeletonDetectionResult)initWithJoints:(AR3DSkeletonDetectionResult *)self numberOfJoints:(SEL)joints referenceDetectionResult:;
- (BOOL)isEqual:(id)equal;
- (BOOL)isJointTracked:(int64_t)tracked;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createResultScaledByFactor:(float)factor;
- (uint64_t)jointsLocalSpace;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AR3DSkeletonDetectionResult

- (AR3DSkeletonDetectionResult)initWithJoints:(AR3DSkeletonDetectionResult *)self numberOfJoints:(SEL)joints referenceDetectionResult:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = v4;
  v15.receiver = self;
  v15.super_class = AR3DSkeletonDetectionResult;
  v10 = [(AR3DSkeletonDetectionResult *)&v15 init];
  if (v10)
  {
    v13 = 0uLL;
    v14 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v13, v7, v7 + 16 * v6, v6);
    v11 = *(v10 + 1);
    if (v11)
    {
      *(v10 + 2) = v11;
      operator delete(v11);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
    }

    *(v10 + 8) = v13;
    *(v10 + 3) = v14;
    objc_storeStrong(v10 + 7, v5);
  }

  return v10;
}

- (uint64_t)jointsLocalSpace
{
  v35 = *MEMORY[0x1E69E9840];
  result = self[4];
  v4 = self[5];
  v5 = self + 4;
  v6 = *(v5 - 3);
  v7 = *(v5 - 2);
  if (v4 - result != v7 - v6)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v5, v6, v7, (v7 - v6) >> 4);
    v32 = 0u;
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = +[AR3DSkeletonDetectionResult childrenIndices];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v10)
    {
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v9);
          }

          intValue = [*(*(&v27 + 1) + 8 * i) intValue];
          std::deque<std::pair<int,int>>::push_back(v31, &intValue);
        }

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v10);
    }

    while (*(&v32 + 1))
    {
      v13 = (*(*(&v31[0] + 1) + ((v32 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v32 & 0x1FF));
      v15 = *v13;
      v14 = v13[1];
      *&v32 = v32 + 1;
      --*(&v32 + 1);
      if (v32 >= 0x400)
      {
        operator delete(**(&v31[0] + 1));
        *(&v31[0] + 1) += 8;
        *&v32 = v32 - 512;
      }

      *(self[4] + 16 * v15) = vsubq_f32(*(self[1] + 16 * v15), *(self[1] + 16 * v14));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = +[AR3DSkeletonDetectionResult childrenIndices];
      v17 = [v16 objectAtIndexedSubscript:v15];

      v18 = [v17 countByEnumeratingWithState:&v22 objects:v33 count:16];
      if (v18)
      {
        v19 = *v23;
        v20 = v15 << 32;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v17);
            }

            intValue = v20 | [*(*(&v22 + 1) + 8 * j) intValue];
            std::deque<std::pair<int,int>>::push_back(v31, &intValue);
          }

          v18 = [v17 countByEnumeratingWithState:&v22 objects:v33 count:16];
        }

        while (v18);
      }
    }

    std::deque<void const*>::~deque[abi:ne200100](v31);
    return *v5;
  }

  return result;
}

- (BOOL)isJointTracked:(int64_t)tracked
{
  if (tracked < 0)
  {
    return 0;
  }

  if (((*&self->_anon_8[8] - *self->_anon_8) >> 4) - 1 < tracked)
  {
    return 0;
  }

  v4 = ARRigInputJointsDependencies[tracked];
  if ((v4 & 0x80000000) != 0 || [(ABPK2DDetectionResult *)self->_skeletonDetectionResult2D jointCount]- 1 < v4)
  {
    return 0;
  }

  return *([(ABPK2DDetectionResult *)self->_skeletonDetectionResult2D jointTrackingStates]+ 4 * v4) == 1;
}

- (id)createResultScaledByFactor:(float)factor
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&__p, (*&self->_anon_8[8] - *self->_anon_8) >> 4);
  v4 = *self->_anon_8;
  v5 = *&self->_anon_8[8];
  if (v4 != v5)
  {
    v6 = __p;
    do
    {
      v7 = *v4++;
      *v6++ = vmulq_n_f32(v7, factor);
    }

    while (v4 != v5);
  }

  v8 = [AR3DSkeletonDetectionResult alloc];
  v9 = __p;
  v10 = v16;
  skeletonDetectionResult2D = [(AR3DSkeletonDetectionResult *)self skeletonDetectionResult2D];
  v12 = [(AR3DSkeletonDetectionResult *)v8 initWithJoints:v9 numberOfJoints:(v10 - v9) >> 4 referenceDetectionResult:skeletonDetectionResult2D];

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = *self->_anon_8;
    v7 = *&self->_anon_8[8];
    v8 = v5[1];
    if (v7 - v6 == v5[2] - v8)
    {
      if (v7 == v6)
      {
LABEL_8:
        v12 = [(ABPK2DDetectionResult *)self->_skeletonDetectionResult2D isEqual:v5[7]];
LABEL_11:

        goto LABEL_12;
      }

      v9 = v7 - v6;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (1)
      {
        v10 = vsubq_f32(*v6, *v8);
        v11 = vmulq_f32(v10, v10);
        if (sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)) > 0.00000011921)
        {
          break;
        }

        ++v8;
        ++v6;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

    v12 = 0;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4 != self)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l((v4 + 8), *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
  }

  objc_storeStrong(v5 + 7, self->_skeletonDetectionResult2D);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*self->_anon_8 length:*&self->_anon_8[8] - *self->_anon_8];
  [coderCopy encodeObject:v4 forKey:@"jointsVector"];
  [coderCopy encodeObject:self->_skeletonDetectionResult2D forKey:@"skeletonDetectionResult2D"];
}

- (AR3DSkeletonDetectionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = AR3DSkeletonDetectionResult;
  v5 = [(AR3DSkeletonDetectionResult *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jointsVector"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 length];
      bytes = [v7 bytes];
      v14 = 0uLL;
      v15 = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v14, bytes, bytes + 16 * (v8 >> 4), (v8 >> 4));
      v10 = *(v5 + 1);
      if (v10)
      {
        *(v5 + 2) = v10;
        operator delete(v10);
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *(v5 + 3) = 0;
      }

      *(v5 + 8) = v14;
      *(v5 + 3) = v15;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skeletonDetectionResult2D"];
    v12 = *(v5 + 7);
    *(v5 + 7) = v11;
  }

  return v5;
}

+ (NSArray)jointNames
{
  v2 = ARRigInputJoints();
  v3 = objc_opt_new();
  v4 = 17;
  do
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v2];
    [v3 addObject:v5];

    ++v2;
    --v4;
  }

  while (v4);

  return v3;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end