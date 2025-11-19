@interface ABPKResultRetargeting
- (ABPKResultRetargeting)initWithModelJointTransforms:(id *)a3 localJointTransformsSRT:(const ABPKSRT *)a4 numberOfTransforms:(unint64_t)a5 liftedSkeletonData:(id)a6 identifier:(id)a7;
- (id).cxx_construct;
@end

@implementation ABPKResultRetargeting

- (ABPKResultRetargeting)initWithModelJointTransforms:(id *)a3 localJointTransformsSRT:(const ABPKSRT *)a4 numberOfTransforms:(unint64_t)a5 liftedSkeletonData:(id)a6 identifier:(id)a7
{
  v13 = a6;
  v14 = a7;
  v47.receiver = self;
  v47.super_class = ABPKResultRetargeting;
  v15 = [(ABPKResultRetargeting *)&v47 init];
  if (v15)
  {
    v45 = 0uLL;
    v46 = 0;
    std::vector<simd_float4x4>::__init_with_size[abi:ne200100]<simd_float4x4 const*,simd_float4x4 const*>(&v45, a3, a3 + 64 * a5, a5);
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
    std::vector<ABPKSRT>::__init_with_size[abi:ne200100]<ABPKSRT const*,ABPKSRT const*>(&v45, a4, a4 + 48 * a5, a5);
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
    std::vector<simd_float4x4>::resize(&v15->_localTransforms.__begin_, a5);
    if (a5)
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
        --a5;
      }

      while (a5);
    }

    objc_storeStrong(&v15->_liftingResult, a6);
    objc_storeStrong(&v15->_identifier, a7);
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