@interface ARCoachingSpline
+ (double)interpolate:(float32x4_t)interpolate p1:(float32x4_t)p1 p2:(float32x4_t)p2 p3:(float32x4_t)p3 t:(float)t;
+ (double)interpolateTangent:(float32x4_t)tangent p1:(float32x4_t)p1 p2:(float32x4_t)p2 p3:(float32x4_t)p3 t:(float)t;
- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints;
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)patchData;
- (ARCoachingSpline)initWithPoints:(ARCoachingSpline *)self numPoints:(SEL)points relativeThickness:pattern:mat:;
- (id).cxx_construct;
- (unsigned)indices;
- (void)genRightCapWithWidth:(float)width;
- (void)genTubeIndicesWithPattern:(unint64_t)pattern;
@end

@implementation ARCoachingSpline

- ($3BA783FF50B239963188BE194EBFFEBA)controlPoints
{
  if (self->_controlPoints.__begin_ == self->_controlPoints.__end_)
  {
    return 0;
  }

  else
  {
    return self->_controlPoints.__begin_;
  }
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)patchData
{
  if (self->_patchData.__begin_ == self->_patchData.__end_)
  {
    return 0;
  }

  else
  {
    return self->_patchData.__begin_;
  }
}

- (unsigned)indices
{
  if (self->_indices.__begin_ == self->_indices.__end_)
  {
    return 0;
  }

  else
  {
    return self->_indices.__begin_;
  }
}

- (ARCoachingSpline)initWithPoints:(ARCoachingSpline *)self numPoints:(SEL)points relativeThickness:pattern:mat:
{
  v10 = v4;
  v11 = v3;
  v36 = v8;
  v37 = v9;
  v34 = v6;
  v35 = v7;
  v12 = v5;
  v13 = v2;
  v38.receiver = self;
  v38.super_class = ARCoachingSpline;
  v14 = [(ARCoachingSpline *)&v38 init];
  v15 = v14;
  if (v14)
  {
    *(v14 + 21) = 1048576000;
    *(v14 + 20) = v12;
    if (!v11)
    {
      __assert_rtn("[ARCoachingSpline initWithPoints:numPoints:relativeThickness:pattern:mat:]", "ARCoachingSpline.mm", 104, "numPoints > 0");
    }

    v16 = v11;
    v17 = *(v14 + 2);
    do
    {
      v18 = vaddq_f32(v37, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*v13->f32)), v35, *v13, 1), v36, *v13->f32, 2));
      v19 = *(v15 + 20);
      v20 = *(v15 + 3);
      if (v17 >= v20)
      {
        v21 = *(v15 + 1);
        v22 = (v17 - v21) >> 5;
        if ((v22 + 1) >> 59)
        {
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
        }

        v23 = v20 - v21;
        v24 = v23 >> 4;
        if (v23 >> 4 <= (v22 + 1))
        {
          v24 = v22 + 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFE0)
        {
          v25 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](v15 + 8, v25);
        }

        v26 = 32 * v22;
        *v26 = v18;
        *(v26 + 16) = v19;
        v17 = 32 * v22 + 32;
        v27 = *(v15 + 1);
        v28 = *(v15 + 2) - v27;
        v29 = 32 * v22 - v28;
        memcpy((v26 - v28), v27, v28);
        v30 = *(v15 + 1);
        *(v15 + 1) = v29;
        *(v15 + 2) = v17;
        *(v15 + 3) = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v17 = v18;
        *(v17 + 16) = v19;
        v17 += 32;
      }

      *(v15 + 2) = v17;
      v13 += 2;
      --v16;
    }

    while (v16);
    [v15 genTubeIndicesWithPattern:v10];
    if (v10 != 2)
    {
      *&v31 = *(v15 + 20) * 0.05;
      [v15 genLeftCapWithWidth:v31];
      *&v32 = *(v15 + 20) * 0.05;
      [v15 genRightCapWithWidth:v32];
    }
  }

  return v15;
}

- (void)genRightCapWithWidth:(float)width
{
  v40 = *MEMORY[0x277D85DE8];
  begin = self->_controlPoints.__begin_;
  p_controlPoints = &self->_controlPoints;
  v7 = (self->_controlPoints.__end_ - begin) >> 5;
  v8 = 32 * (v7 - 4);
  v9 = 32 * (v7 - 3);
  v10 = 32 * (v7 - 2);
  v11 = 32 * (v7 - 1);
  LODWORD(v3) = 1.0;
  [ARCoachingSpline interpolate:*(begin + v8) p1:*(begin + v9) p2:*(begin + v10) p3:*(begin + v11) t:v3];
  v27 = v12;
  LODWORD(v13) = 1.0;
  [ARCoachingSpline interpolateTangent:*(p_controlPoints->__begin_ + v8) p1:*(p_controlPoints->__begin_ + v9) p2:*(p_controlPoints->__begin_ + v10) p3:*(p_controlPoints->__begin_ + v11) t:v13];
  v14 = 0;
  v16 = vmulq_f32(v15, v15);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  _Q0 = vmulq_n_f32(vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]), width);
  v19 = vdupq_n_s32(0x3F7FBE77u);
  v20 = vmlaq_f32(v27, v19, _Q0);
  v19.i32[0] = HIDWORD(p_controlPoints[3].__begin_);
  v33 = p_controlPoints[3].__begin_;
  v34 = vmlsq_lane_f32(v27, _Q0, *v19.f32, 0);
  v35 = v33;
  v36 = v20;
  v37 = v33;
  v38 = vmlaq_f32(v20, vdupq_n_s32(0x3C23D70Au), _Q0);
  v39 = 0;
  v31 = xmmword_23D3DC4F0;
  v32 = v34;
  v31 = vaddq_s16(vdupq_n_s16(*(p_controlPoints[2].__end_ - 1) + 1), xmmword_23D3DC4F0);
  __asm { FMOV            V0.2S, #1.0 }

  v29 = _Q0.i64[0];
  v30 = _Q0.i64[0];
  do
  {
    std::vector<ARCoachingControlPoint>::push_back[abi:ne200100](p_controlPoints, &v32.f32[v14]);
    v14 += 8;
  }

  while (v14 != 32);
  for (i = 0; i != 8; ++i)
  {
    std::vector<unsigned short>::push_back[abi:ne200100](&p_controlPoints[2].__begin_, &v31.i16[i]);
  }

  std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&self->_patchData, &v29);
  std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&self->_patchData, &v30);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)genTubeIndicesWithPattern:(unint64_t)pattern
{
  if (pattern)
  {
    if (pattern == 1)
    {
      LOWORD(v19) = 0;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = 1;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = 2;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = 3;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      __asm { FMOV            V8.2S, #1.0 }

      v19 = _D8;
      std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&self->_patchData, &v19);
      v14 = 0;
      if ((self->_controlPoints.__end_ - self->_controlPoints.__begin_) != 96)
      {
        v15 = 0;
        do
        {
          LOWORD(v19) = v15;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          LOWORD(v19) = v15 + 1;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          LOWORD(v19) = v15 + 2;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          LOWORD(v19) = v15 + 3;
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          v19 = _D8;
          std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&self->_patchData, &v19);
          v16 = self->_controlPoints.__end_ - self->_controlPoints.__begin_;
          ++v15;
        }

        while ((v16 >> 5) - 3 > v15);
        v14 = (v16 >> 5) - 3;
      }

      LOWORD(v19) = v14;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = ((LODWORD(self->_controlPoints.__end_) - LODWORD(self->_controlPoints.__begin_)) >> 5) - 2;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = ((LODWORD(self->_controlPoints.__end_) - LODWORD(self->_controlPoints.__begin_)) >> 5) - 1;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = ((LODWORD(self->_controlPoints.__end_) - LODWORD(self->_controlPoints.__begin_)) >> 5) - 1;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      v19 = _D8;
      std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&self->_patchData, &v19);
    }

    else if (pattern == 2)
    {
      v4 = self->_controlPoints.__end_ - self->_controlPoints.__begin_;
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = v4 >> 5;
        __asm { FMOV            V8.2S, #1.0 }

        do
        {
          LOWORD(v19) = v5 % (v7 - 1);
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          LOWORD(v19) = (v6 + 1) % (((self->_controlPoints.__end_ - self->_controlPoints.__begin_) >> 5) - 1);
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          LOWORD(v19) = (v6 + 2) % (((self->_controlPoints.__end_ - self->_controlPoints.__begin_) >> 5) - 1);
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          LOWORD(v19) = (v6 + 3) % (((self->_controlPoints.__end_ - self->_controlPoints.__begin_) >> 5) - 1);
          std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
          v19 = _D8;
          std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&self->_patchData, &v19);
          v5 = ++v6;
          v7 = (self->_controlPoints.__end_ - self->_controlPoints.__begin_) >> 5;
        }

        while (v7 > v6);
      }
    }
  }

  else if ((self->_controlPoints.__end_ - self->_controlPoints.__begin_) != 96)
  {
    v17 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      LOWORD(v19) = v17;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = v17 + 1;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = v17 + 2;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      LOWORD(v19) = v17 + 3;
      std::vector<unsigned short>::push_back[abi:ne200100](&self->_indices.__begin_, &v19);
      v19 = _D8;
      std::vector<ARCoachingPatchData>::push_back[abi:ne200100](&self->_patchData, &v19);
      ++v17;
    }

    while (((self->_controlPoints.__end_ - self->_controlPoints.__begin_) >> 5) - 3 > v17);
  }
}

+ (double)interpolate:(float32x4_t)interpolate p1:(float32x4_t)p1 p2:(float32x4_t)p2 p3:(float32x4_t)p3 t:(float)t
{
  __asm { FMOV            V5.4S, #3.0 }

  v10 = vsubq_f32(vmlaq_f32(vmlsq_f32(p3, _Q5, p2), _Q5, p1), interpolate);
  __asm { FMOV            V6.4S, #-6.0 }

  v12 = vmlaq_f32(vmlaq_f32(vmulq_f32(p1, _Q6), _Q5, p2), _Q5, interpolate);
  __asm { FMOV            V7.4S, #-3.0 }

  v14 = vmlaq_f32(vmulq_f32(interpolate, _Q7), _Q5, p2);
  __asm { FMOV            V5.4S, #4.0 }

  v16 = vmlaq_n_f32(vaddq_f32(interpolate, vmlaq_f32(p2, _Q5, p1)), vmlaq_n_f32(v14, vmlaq_n_f32(v12, v10, t), t), t);
  __asm { FMOV            V1.4S, #6.0 }

  *&result = vdivq_f32(v16, _Q1).u64[0];
  return result;
}

+ (double)interpolateTangent:(float32x4_t)tangent p1:(float32x4_t)p1 p2:(float32x4_t)p2 p3:(float32x4_t)p3 t:(float)t
{
  __asm { FMOV            V5.4S, #3.0 }

  v10 = vsubq_f32(vmlaq_f32(vmlsq_f32(p3, _Q5, p2), _Q5, p1), tangent);
  __asm { FMOV            V6.4S, #-6.0 }

  v12 = vmlaq_f32(vmlaq_f32(vmulq_f32(p1, _Q6), _Q5, p2), _Q5, tangent);
  __asm { FMOV            V6.4S, #-3.0 }

  v14 = vaddq_f32(vmlaq_f32(vmulq_f32(tangent, _Q6), _Q5, p2), vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(v12, v10, t), t), vmlaq_n_f32(v12, vaddq_f32(v10, v10), t), t));
  __asm { FMOV            V1.4S, #6.0 }

  *&result = vdivq_f32(v14, _Q1).u64[0];
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