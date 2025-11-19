@interface ARCoreRESkeletonResult
+ (NSArray)jointNames;
+ (NSArray)jointParentIndices;
- (ARCoreRESkeletonResult)initWithCoder:(id)a3;
- (ARCoreRESkeletonResult)initWithModelJointTransforms:(id *)a3 localJointTransformsSRT:(id *)a4 numberOfTransforms:(unint64_t)a5 liftedSkeletonData:(id)a6 identifier:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isJointTracked:(int64_t)a3;
- (__n128)setVisionTransform:(__n128)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARCoreRESkeletonResult

- (ARCoreRESkeletonResult)initWithModelJointTransforms:(id *)a3 localJointTransformsSRT:(id *)a4 numberOfTransforms:(unint64_t)a5 liftedSkeletonData:(id)a6 identifier:(id)a7
{
  v13 = a6;
  v14 = a7;
  v45.receiver = self;
  v45.super_class = ARCoreRESkeletonResult;
  v15 = [(ARCoreRESkeletonResult *)&v45 init];
  if (v15)
  {
    v43 = 0uLL;
    v44 = 0;
    std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v43, a3, a3 + 64 * a5, a5);
    begin = v15->_modelTransforms.__begin_;
    if (begin)
    {
      v15->_modelTransforms.__end_ = begin;
      operator delete(begin);
      v15->_modelTransforms.__begin_ = 0;
      v15->_modelTransforms.__end_ = 0;
      v15->_modelTransforms.__cap_ = 0;
    }

    *&v15->_modelTransforms.__begin_ = v43;
    v15->_modelTransforms.__cap_ = v44;
    v43 = 0uLL;
    v44 = 0;
    std::vector<ARSRT>::__init_with_size[abi:ne200100]<ARSRT const*,ARSRT const*>(&v43, a4, a4 + 48 * a5, a5);
    p_localTransformsSRT = &v15->_localTransformsSRT;
    v17 = v15->_localTransformsSRT.__begin_;
    if (v17)
    {
      v15->_localTransformsSRT.__end_ = v17;
      operator delete(v17);
      p_localTransformsSRT->__begin_ = 0;
      v15->_localTransformsSRT.__end_ = 0;
      v15->_localTransformsSRT.__cap_ = 0;
    }

    *&v15->_localTransformsSRT.__begin_ = v43;
    v15->_localTransformsSRT.__cap_ = v44;
    std::vector<simd_float4x4>::resize(&v15->_localTransforms.__begin_, a5);
    if (a5)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        _Q2 = *(p_localTransformsSRT->__begin_ + v19 + 16);
        _S3 = HIDWORD(*(p_localTransformsSRT->__begin_ + v19 + 16));
        _S0 = DWORD2(_Q2);
        __asm { FMLS            S1, S0, V2.S[2] }

        _S6 = HIDWORD(_Q2);
        __asm
        {
          FMLA            S1, S6, V2.S[3]
          FMLA            S5, S3, V2.S[1]
          FMLA            S5, S6, V2.S[3]
          FMLA            S18, S0, V2.S[1]
          FMLA            S19, S0, V2.S[1]
          FMLA            S6, S0, V2.S[2]
          FMLS            S6, S3, V2.S[1]
        }

        ARMatrix4x4FromRotationAndTranslation();
        v37 = (v15->_localTransforms.__begin_ + v20);
        *v37 = v38;
        v37[1] = v39;
        v37[2] = v40;
        v37[3] = v41;
        v20 += 64;
        v19 += 48;
        --a5;
      }

      while (a5);
    }

    objc_storeStrong(&v15->_liftingResult, a6);
    objc_storeStrong(&v15->_identifier, a7);
  }

  return v15;
}

- (BOOL)isJointTracked:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  if (((self->_modelTransforms.__end_ - self->_modelTransforms.__begin_) >> 6) - 1 < a3)
  {
    return 0;
  }

  v4 = 0;
  v5 = &ARRigDependencyTable + 72 * a3;
  v6 = 1;
  while (*&v5[4 * v4] != -1)
  {
    v6 = v6 && [(AR3DSkeletonDetectionResult *)self->_liftingResult isJointTracked:?];
    if (++v4 == 18)
    {
      LODWORD(v4) = 1;
      return v6 && v4 != 0;
    }
  }

  return v6 && v4 != 0;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:self->_liftingResult forKey:@"liftingResult"];
  [v7 encodeObject:self->_identifier forKey:@"identifier"];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_modelTransforms.__begin_ length:self->_modelTransforms.__end_ - self->_modelTransforms.__begin_];
  [v7 encodeObject:v4 forKey:@"modelTransformData"];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_localTransforms.__begin_ length:self->_localTransforms.__end_ - self->_localTransforms.__begin_];
  [v7 encodeObject:v5 forKey:@"localTransformData"];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_localTransformsSRT.__begin_ length:self->_localTransformsSRT.__end_ - self->_localTransformsSRT.__begin_];
  [v7 encodeObject:v6 forKey:@"localTransformSRTData"];
}

- (ARCoreRESkeletonResult)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = ARCoreRESkeletonResult;
  v5 = [(ARCoreRESkeletonResult *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectForKey:@"liftingResult"];
    liftingResult = v5->_liftingResult;
    v5->_liftingResult = v8;

    v10 = [v4 decodeObjectForKey:@"modelTransformData"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 length];
      v13 = [v11 bytes];
      v25 = 0uLL;
      v26 = 0;
      std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v25, v13, v13 + ((v12 >> 6) << 6), (v12 >> 6));
      begin = v5->_modelTransforms.__begin_;
      if (begin)
      {
        v5->_modelTransforms.__end_ = begin;
        operator delete(begin);
        v5->_modelTransforms.__begin_ = 0;
        v5->_modelTransforms.__end_ = 0;
        v5->_modelTransforms.__cap_ = 0;
      }

      *&v5->_modelTransforms.__begin_ = v25;
      v5->_modelTransforms.__cap_ = v26;
    }

    v15 = [v4 decodeObjectForKey:@"localTransformData"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 length];
      v18 = [v16 bytes];
      v25 = 0uLL;
      v26 = 0;
      std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v25, v18, v18 + ((v17 >> 6) << 6), (v17 >> 6));
      v19 = v5->_localTransforms.__begin_;
      if (v19)
      {
        v5->_localTransforms.__end_ = v19;
        operator delete(v19);
        v5->_localTransforms.__begin_ = 0;
        v5->_localTransforms.__end_ = 0;
        v5->_localTransforms.__cap_ = 0;
      }

      *&v5->_localTransforms.__begin_ = v25;
      v5->_localTransforms.__cap_ = v26;
    }

    v20 = [v4 decodeObjectForKey:@"localTransformSRTData"];
    if (v20)
    {
      v21 = [v16 length];
      v22 = [v20 bytes];
      v25 = 0uLL;
      v26 = 0;
      std::vector<ARSRT>::__init_with_size[abi:ne200100]<ARSRT const*,ARSRT const*>(&v25, v22, v22 + 48 * (v21 / 0x30), (v21 / 0x30));
      v23 = v5->_localTransformsSRT.__begin_;
      if (v23)
      {
        v5->_localTransformsSRT.__end_ = v23;
        operator delete(v23);
        v5->_localTransformsSRT.__begin_ = 0;
        v5->_localTransformsSRT.__end_ = 0;
        v5->_localTransformsSRT.__cap_ = 0;
      }

      *&v5->_localTransformsSRT.__begin_ = v25;
      v5->_localTransformsSRT.__cap_ = v26;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 identifier];
    v7 = [v6 UUIDString];
    v8 = [(ARCoreRESkeletonResult *)self identifier];
    v9 = [v8 UUIDString];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      begin = self->_modelTransforms.__begin_;
      end = self->_modelTransforms.__end_;
      if (end - begin == v5[2] - v5[1])
      {
        v13 = 0;
        v14 = self->_localTransforms.__end_ - self->_localTransforms.__begin_;
        if (v14 != end - begin || v14 != v5[8] - v5[7])
        {
          goto LABEL_14;
        }

        if (end == begin)
        {
          v13 = 1;
          goto LABEL_14;
        }

        v15 = 0;
        v16 = 0;
        while ((AREqualTransforms(*(begin + v15), *(begin + v15 + 16), *(begin + v15 + 32), *(begin + v15 + 48), *(v5[1] + v15), *(v5[1] + v15 + 16), *(v5[1] + v15 + 32), *(v5[1] + v15 + 48)) & 1) != 0)
        {
          v17 = (self->_localTransforms.__begin_ + v15);
          if ((AREqualTransforms(*v17, v17[1], v17[2], v17[3], *(v5[7] + v15), *(v5[7] + v15 + 16), *(v5[7] + v15 + 32), *(v5[7] + v15 + 48)) & 1) == 0)
          {
            break;
          }

          ++v16;
          begin = self->_modelTransforms.__begin_;
          v15 += 64;
          v13 = 1;
          if (v16 >= (self->_modelTransforms.__end_ - begin) >> 6)
          {
            goto LABEL_14;
          }
        }
      }
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5 != self)
  {
    std::vector<simd_float4x4>::__assign_with_size[abi:ne200100]<simd_float4x4*,simd_float4x4*>(&v5->_modelTransforms.__begin_, self->_modelTransforms.__begin_, self->_modelTransforms.__end_, (self->_modelTransforms.__end_ - self->_modelTransforms.__begin_) >> 6);
    std::vector<ARSRT>::__assign_with_size[abi:ne200100]<ARSRT*,ARSRT*>(&v6->_localTransformsSRT.__begin_, self->_localTransformsSRT.__begin_, self->_localTransformsSRT.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_localTransformsSRT.__end_ - self->_localTransformsSRT.__begin_) >> 4));
    std::vector<simd_float4x4>::__assign_with_size[abi:ne200100]<simd_float4x4*,simd_float4x4*>(&v6->_localTransforms.__begin_, self->_localTransforms.__begin_, self->_localTransforms.__end_, (self->_localTransforms.__end_ - self->_localTransforms.__begin_) >> 6);
  }

  v7 = [(AR3DSkeletonDetectionResult *)self->_liftingResult copyWithZone:a3];
  liftingResult = v6->_liftingResult;
  v6->_liftingResult = v7;

  v9 = [(NSUUID *)self->_identifier copyWithZone:a3];
  identifier = v6->_identifier;
  v6->_identifier = v9;

  return v6;
}

+ (NSArray)jointNames
{
  v2 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  v3 = [v2 jointNames];

  return v3;
}

+ (NSArray)jointParentIndices
{
  v2 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  v3 = [v2 parentIndices];

  return v3;
}

- (__n128)setVisionTransform:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end