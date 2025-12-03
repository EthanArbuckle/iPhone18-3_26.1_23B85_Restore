@interface ARCoreRESkeletonResult
+ (NSArray)jointNames;
+ (NSArray)jointParentIndices;
- (ARCoreRESkeletonResult)initWithCoder:(id)coder;
- (ARCoreRESkeletonResult)initWithModelJointTransforms:(id *)transforms localJointTransformsSRT:(id *)t numberOfTransforms:(unint64_t)ofTransforms liftedSkeletonData:(id)data identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isJointTracked:(int64_t)tracked;
- (__n128)setVisionTransform:(__n128)transform;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARCoreRESkeletonResult

- (ARCoreRESkeletonResult)initWithModelJointTransforms:(id *)transforms localJointTransformsSRT:(id *)t numberOfTransforms:(unint64_t)ofTransforms liftedSkeletonData:(id)data identifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v45.receiver = self;
  v45.super_class = ARCoreRESkeletonResult;
  v15 = [(ARCoreRESkeletonResult *)&v45 init];
  if (v15)
  {
    v43 = 0uLL;
    v44 = 0;
    std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v43, transforms, transforms + 64 * ofTransforms, ofTransforms);
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
    std::vector<ARSRT>::__init_with_size[abi:ne200100]<ARSRT const*,ARSRT const*>(&v43, t, t + 48 * ofTransforms, ofTransforms);
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
    std::vector<simd_float4x4>::resize(&v15->_localTransforms.__begin_, ofTransforms);
    if (ofTransforms)
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
        --ofTransforms;
      }

      while (ofTransforms);
    }

    objc_storeStrong(&v15->_liftingResult, data);
    objc_storeStrong(&v15->_identifier, identifier);
  }

  return v15;
}

- (BOOL)isJointTracked:(int64_t)tracked
{
  if (tracked < 0)
  {
    return 0;
  }

  if (((self->_modelTransforms.__end_ - self->_modelTransforms.__begin_) >> 6) - 1 < tracked)
  {
    return 0;
  }

  v4 = 0;
  v5 = &ARRigDependencyTable + 72 * tracked;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_liftingResult forKey:@"liftingResult"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_modelTransforms.__begin_ length:self->_modelTransforms.__end_ - self->_modelTransforms.__begin_];
  [coderCopy encodeObject:v4 forKey:@"modelTransformData"];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_localTransforms.__begin_ length:self->_localTransforms.__end_ - self->_localTransforms.__begin_];
  [coderCopy encodeObject:v5 forKey:@"localTransformData"];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_localTransformsSRT.__begin_ length:self->_localTransformsSRT.__end_ - self->_localTransformsSRT.__begin_];
  [coderCopy encodeObject:v6 forKey:@"localTransformSRTData"];
}

- (ARCoreRESkeletonResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = ARCoreRESkeletonResult;
  v5 = [(ARCoreRESkeletonResult *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectForKey:@"liftingResult"];
    liftingResult = v5->_liftingResult;
    v5->_liftingResult = v8;

    v10 = [coderCopy decodeObjectForKey:@"modelTransformData"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 length];
      bytes = [v11 bytes];
      v25 = 0uLL;
      v26 = 0;
      std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v25, bytes, bytes + ((v12 >> 6) << 6), (v12 >> 6));
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

    v15 = [coderCopy decodeObjectForKey:@"localTransformData"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 length];
      bytes2 = [v16 bytes];
      v25 = 0uLL;
      v26 = 0;
      std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v25, bytes2, bytes2 + ((v17 >> 6) << 6), (v17 >> 6));
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

    v20 = [coderCopy decodeObjectForKey:@"localTransformSRTData"];
    if (v20)
    {
      v21 = [v16 length];
      bytes3 = [v20 bytes];
      v25 = 0uLL;
      v26 = 0;
      std::vector<ARSRT>::__init_with_size[abi:ne200100]<ARSRT const*,ARSRT const*>(&v25, bytes3, bytes3 + 48 * (v21 / 0x30), (v21 / 0x30));
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    uUIDString = [identifier UUIDString];
    identifier2 = [(ARCoreRESkeletonResult *)self identifier];
    uUIDString2 = [identifier2 UUIDString];
    v10 = [uUIDString isEqualToString:uUIDString2];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5 != self)
  {
    std::vector<simd_float4x4>::__assign_with_size[abi:ne200100]<simd_float4x4*,simd_float4x4*>(&v5->_modelTransforms.__begin_, self->_modelTransforms.__begin_, self->_modelTransforms.__end_, (self->_modelTransforms.__end_ - self->_modelTransforms.__begin_) >> 6);
    std::vector<ARSRT>::__assign_with_size[abi:ne200100]<ARSRT*,ARSRT*>(&v6->_localTransformsSRT.__begin_, self->_localTransformsSRT.__begin_, self->_localTransformsSRT.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_localTransformsSRT.__end_ - self->_localTransformsSRT.__begin_) >> 4));
    std::vector<simd_float4x4>::__assign_with_size[abi:ne200100]<simd_float4x4*,simd_float4x4*>(&v6->_localTransforms.__begin_, self->_localTransforms.__begin_, self->_localTransforms.__end_, (self->_localTransforms.__end_ - self->_localTransforms.__begin_) >> 6);
  }

  v7 = [(AR3DSkeletonDetectionResult *)self->_liftingResult copyWithZone:zone];
  liftingResult = v6->_liftingResult;
  v6->_liftingResult = v7;

  v9 = [(NSUUID *)self->_identifier copyWithZone:zone];
  identifier = v6->_identifier;
  v6->_identifier = v9;

  return v6;
}

+ (NSArray)jointNames
{
  v2 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  jointNames = [v2 jointNames];

  return jointNames;
}

+ (NSArray)jointParentIndices
{
  v2 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  parentIndices = [v2 parentIndices];

  return parentIndices;
}

- (__n128)setVisionTransform:(__n128)transform
{
  result[7] = a2;
  result[8] = transform;
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