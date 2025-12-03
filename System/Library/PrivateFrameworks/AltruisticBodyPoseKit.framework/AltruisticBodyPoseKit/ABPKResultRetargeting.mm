@interface ABPKResultRetargeting
- (ABPKResultRetargeting)initWithModelJointTransforms:(id *)transforms localJointTransformsSRT:(const ABPKSRT *)t numberOfTransforms:(unint64_t)ofTransforms liftedSkeletonData:(id)data identifier:(id)identifier;
- (id).cxx_construct;
@end

@implementation ABPKResultRetargeting

- (ABPKResultRetargeting)initWithModelJointTransforms:(id *)transforms localJointTransformsSRT:(const ABPKSRT *)t numberOfTransforms:(unint64_t)ofTransforms liftedSkeletonData:(id)data identifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v47.receiver = self;
  v47.super_class = ABPKResultRetargeting;
  v15 = [(ABPKResultRetargeting *)&v47 init];
  if (v15)
  {
    v45 = 0uLL;
    v46 = 0;
    std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v45, transforms, transforms + 64 * ofTransforms, ofTransforms);
    begin = v15->_modelTransforms.__begin_;
    if (begin)
    {
      v15->_modelTransforms.__end_ = begin;
      operator delete(begin);
      v15->_modelTransforms.__begin_ = 0;
      v15->_modelTransforms.__end_ = 0;
      v15->_modelTransforms.__cap_ = 0;
    }

    *&v15->_modelTransforms.__begin_ = v45;
    v15->_modelTransforms.__cap_ = v46;
    v45 = 0uLL;
    v46 = 0;
    std::vector<ABPKSRT>::__init_with_size[abi:ne200100]<ABPKSRT const*,ABPKSRT const*>(&v45, t, t + 48 * ofTransforms, ofTransforms);
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

    *&v15->_localTransformsSRT.__begin_ = v45;
    v15->_localTransformsSRT.__cap_ = v46;
    std::vector<simd_float4x4>::resize(&v15->_localTransforms.__begin_, ofTransforms);
    if (ofTransforms)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = p_localTransformsSRT->__begin_ + v19;
        _Q2 = *(v21 + 1);
        _S3 = HIDWORD(*(v21 + 2));
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

        v38 = *(v21 + 2);
        simdMatrix4x4FromRotationAndTranslation();
        v39 = (v15->_localTransforms.__begin_ + v20);
        *v39 = v40;
        v39[1] = v41;
        v39[2] = v42;
        v39[3] = v43;
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