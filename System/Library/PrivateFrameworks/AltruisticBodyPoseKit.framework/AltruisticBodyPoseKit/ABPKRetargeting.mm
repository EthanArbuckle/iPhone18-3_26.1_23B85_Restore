@interface ABPKRetargeting
- (ABPKRetargeting)init;
- (id)_retargetSkeleton:(id)skeleton;
- (id)processData:(id)data;
- (void)dealloc;
@end

@implementation ABPKRetargeting

- (ABPKRetargeting)init
{
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKRetargeting: Initializing ", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = ABPKRetargeting;
  v4 = [(ABPKRetargeting *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_new();
    skeletonIdentifier = v4->_skeletonIdentifier;
    v4->_skeletonIdentifier = v5;

    v4->_coreIKSolver = CoreIKCreateAltruisticSolverInstance();
  }

  return v4;
}

- (void)dealloc
{
  MEMORY[0x23EF24F70](self->_coreIKSolver, a2);
  v3.receiver = self;
  v3.super_class = ABPKRetargeting;
  [(ABPKRetargeting *)&v3 dealloc];
}

- (id)processData:(id)data
{
  v3 = [(ABPKRetargeting *)self _retargetSkeleton:data];

  return v3;
}

- (id)_retargetSkeleton:(id)skeleton
{
  v76 = *MEMORY[0x277D85DE8];
  skeletonCopy = skeleton;
  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " ABPKRetargeting: Retargeting skeleton ", buf, 2u);
  }

  coreIKSolver = self->_coreIKSolver;
  SourceBufferSize = CoreIKSolverGetSourceBufferSize();
  v8 = self->_coreIKSolver;
  TargetBufferSize = CoreIKSolverGetTargetBufferSize();
  (MEMORY[0x28223BE20])();
  if (SourceBufferSize)
  {
    v10 = 0;
    v11 = &v68[-4 * SourceBufferSize + 2];
    __asm { FMOV            V0.4S, #10.0 }

    v72 = _Q0;
    v73 = xmmword_23EE28170;
    do
    {
      joints = [skeletonCopy joints];
      v18 = v73;
      *(v11 - 1) = vdivq_f32(*(joints + 16 * v10), v72);
      *v11 = v18;
      ++v10;
      v11 += 2;
    }

    while (SourceBufferSize != v10);
  }

  v19 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_DEBUG, " \t Run CoreIK solver ", buf, 2u);
  }

  v20 = (MEMORY[0x28223BE20])();
  MEMORY[0x28223BE20](v20);
  v21 = self->_coreIKSolver;
  v22 = CoreIKSolveModelSpaceSource();
  v23 = v22;
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v68[-2 * v26];
  if (v25)
  {
    v28 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v75 = v23;
      _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_ERROR, " Could not solve skeleton: %i ", buf, 8u);
    }

    v29 = 0;
  }

  else
  {
    v30 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_DEBUG, " \t Create result type ", buf, 2u);
    }

    v68[1] = v68;
    if (TargetBufferSize)
    {
      v34 = v27 + 1;
      v35 = &v68[-4 * TargetBufferSize + 2];
      v36 = v35;
      v37 = &v68[-8 * TargetBufferSize + 4];
      v38 = vdupq_n_s32(0x3C23D70Au);
      v69 = xmmword_23EE28180;
      v70 = v38;
      v39 = TargetBufferSize;
      do
      {
        v40 = v31;
        _Q4 = *v35;
        v42 = vmulq_f32(v35[-1], v38);
        LODWORD(_S5) = HIDWORD(v35->i64[0]);
        _S6 = _Q4.i32[2];
        __asm { FMLS            S0, S6, V4.S[2] }

        _S16 = HIDWORD(*v35);
        __asm { FMLA            S0, S16, V4.S[3] }

        v48 = vmuls_lane_f32(_Q4.f32[2], _Q4, 3);
        v49 = vmuls_lane_f32(_S5, *v35, 3);
        *(&_Q0 + 1) = (v48 + (COERCE_FLOAT(*v35) * _S5)) + (v48 + (COERCE_FLOAT(*v35) * _S5));
        *(&_Q0 + 2) = -(v49 - (_Q4.f32[0] * _Q4.f32[2])) - (v49 - (_Q4.f32[0] * _Q4.f32[2]));
        v50 = -(v48 - (COERCE_FLOAT(*v35) * _S5));
        v51.f32[0] = v50 + v50;
        __asm
        {
          FMLA            S7, S5, V4.S[1]
          FMLA            S7, S16, V4.S[3]
          FMLA            S17, S6, V4.S[1]
        }

        v51.f32[1] = _S7 - (_Q4.f32[0] * _Q4.f32[0]);
        v51.i64[1] = __PAIR64__(v33, _S17 + _S17);
        *&v55 = (v49 + (_Q4.f32[2] * _Q4.f32[0])) + (v49 + (_Q4.f32[2] * _Q4.f32[0]));
        __asm
        {
          FMLA            S7, S6, V4.S[1]
          FMLA            S16, S6, V4.S[2]
          FMLS            S6, S5, V4.S[1]
        }

        *(&v55 + 1) = _S7 + _S7;
        *(&v55 + 1) = __PAIR64__(v32, _S6);
        HIDWORD(_Q0) = v40;
        v72 = v51;
        v73 = _Q0;
        v71 = v55;
        simdMatrix4x4FromRotationAndTranslation();
        *(v37 - 2) = v59;
        *(v37 - 1) = v60;
        v38 = v70;
        v32 = HIDWORD(v71);
        v61 = vmulq_f32(v36[-1], v70);
        *v34 = *v36;
        v34[1] = v61;
        v34[-1] = v69;
        v34 += 3;
        *v37 = v62;
        v37[1] = v63;
        v37 += 4;
        v35 += 2;
        v36 += 2;
        --v39;
        v33 = v72.i32[3];
        v31 = HIDWORD(v73);
      }

      while (v39);
    }

    v64 = [ABPKResultRetargeting alloc];
    LODWORD(v65) = 981668463;
    v28 = [skeletonCopy createResultScaledByFactor:v65];
    v29 = [(ABPKResultRetargeting *)v64 initWithModelJointTransforms:&v68[-8 * TargetBufferSize] localJointTransformsSRT:v27 numberOfTransforms:TargetBufferSize liftedSkeletonData:v28 identifier:self->_skeletonIdentifier];
  }

  v66 = *MEMORY[0x277D85DE8];

  return v29;
}

@end