@interface ABPK3DLiftingSequence
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)get3DLiftingResultsAsModelPoses;
- (ABPK3DLiftingSequence)init;
- (BOOL)initMLNetwork;
- (id).cxx_construct;
- (int)runLiftingModelWithBuffer:(const void *)a3 with2DReferenceResults:(id)a4 atTimestamp:(double)a5 exportDebuggingData:(BOOL)a6;
- (int)runLiftingModelWithData:(id)a3 atTimestamp:(double)a4;
- (int)runLiftingModelWithData:(id)a3 imageResolution:(CGSize)a4 deviceOrientation:(int64_t)a5 atTimestamp:(double)a6;
- (void)_adjustBoneLength:(void *)a3;
- (void)dealloc;
- (void)getGaussianSmoothedOutput:(void *)a3@<X8>;
- (void)saveDataToFilePath:(ABPK3DLiftingSequence *)self with2DInputBuffer:(SEL)a2 withFirstStageOutput:(id)a3 withSmoothedOutput:(const void *)a4 withPostprocessedLiftingResults:(float *)a5;
@end

@implementation ABPK3DLiftingSequence

- (ABPK3DLiftingSequence)init
{
  [(ABPK3DLiftingSequence *)self _startLoading3DLiftingSequenceMLModelSignpost];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ", &v19, 2u);
  }

  v21.receiver = self;
  v21.super_class = ABPK3DLiftingSequence;
  v4 = [(ABPK3DLiftingSequence *)&v21 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = objc_alloc_init(ABPKMLModelConfiguration3DLiftingSequenceFirstStage);
  mlConfigFirstStage = v4->_mlConfigFirstStage;
  v4->_mlConfigFirstStage = v6;

  std::vector<simd_float4x4>::resize(&v4->_liftingResultAsModelPoses.__begin_, 0x11uLL);
  v19 = 0uLL;
  v8 = 0.0;
  v9 = -8;
  v20 = 0;
  do
  {
    v10 = 0.0;
    if (v9 == 0 || v9 >= 0xFFFFFFF8)
    {
      v10 = exp(v9 * v9 * -0.125);
    }

    v22 = v10;
    std::vector<float>::push_back[abi:ne200100](&v19, &v22);
    v8 = v8 + v10;
    ++v9;
  }

  while (v9 != 9);
  v11 = v19;
  if (*(&v19 + 1) != v19)
  {
    v12 = (*(&v19 + 1) - v19) >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    do
    {
      *v11 = *v11 / v8;
      ++v11;
      --v12;
    }

    while (v12);
  }

  p_gaussianSmoothingFilter = &v4->_gaussianSmoothingFilter;
  begin = v5->_gaussianSmoothingFilter.__begin_;
  if (begin)
  {
    v5->_gaussianSmoothingFilter.__end_ = begin;
    operator delete(begin);
    p_gaussianSmoothingFilter->__begin_ = 0;
    p_gaussianSmoothingFilter->__end_ = 0;
    p_gaussianSmoothingFilter->__cap_ = 0;
  }

  *&p_gaussianSmoothingFilter->__begin_ = v19;
  v5->_gaussianSmoothingFilter.__cap_ = v20;
  v5->_frameCount = 0;
  v15 = [[ABPKSkeletonDefinition alloc] initWithType:3];
  abpkLiftingSkeletonDefinition = v5->_abpkLiftingSkeletonDefinition;
  v5->_abpkLiftingSkeletonDefinition = v15;

  if (![(ABPK3DLiftingSequence *)v5 initMLNetwork])
  {
    v17 = 0;
  }

  else
  {
LABEL_15:
    [(ABPK3DLiftingSequence *)v5 _endLoading3DLiftingSequenceMLModelSignpost];
    v17 = v5;
  }

  return v17;
}

- (void)dealloc
{
  plan_first_stage = self->_plan_first_stage;
  espresso_plan_destroy();
  context_first_stage = self->_context_first_stage;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = ABPK3DLiftingSequence;
  [(ABPK3DLiftingSequence *)&v5 dealloc];
}

- (BOOL)initMLNetwork
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ML Network - first stage ", buf, 2u);
  }

  v4 = [(ABPKMLModelConfiguration3DLiftingSequenceFirstStage *)self->_mlConfigFirstStage compiledMLModelPath];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [(ABPKMLModelConfiguration3DLiftingSequenceFirstStage *)self->_mlConfigFirstStage inputTensorNames];
  inputTensorFirstStageNames = self->_inputTensorFirstStageNames;
  self->_inputTensorFirstStageNames = v5;

  v7 = [(ABPKMLModelConfiguration3DLiftingSequenceFirstStage *)self->_mlConfigFirstStage outputTensorNames];
  outputTensorFirstStageNames = self->_outputTensorFirstStageNames;
  self->_outputTensorFirstStageNames = v7;

  if (![v4 hasSuffix:@".bundle"])
  {
    context = espresso_create_context();
    self->_context_first_stage = context;
    if (context)
    {
      v16 = "ANE";
LABEL_10:
      v18 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v16;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEFAULT, " \t Deploying 3D lifting model on %s ", buf, 0xCu);
      }

      Espresso::get_internal_context(&v41, self->_context_first_stage, v19);
      context_first_stage = self->_context_first_stage;
      self->_plan_first_stage = espresso_create_plan();
      v21 = [v4 stringByAppendingPathComponent:@"model.espresso.net"];
      plan_first_stage = self->_plan_first_stage;
      v23 = v21;
      [v21 UTF8String];
      espresso_plan_add_network();
      v24 = self->_plan_first_stage;
      espresso_plan_build();
      plan = self->_network_first_stage.plan;
      v26 = *&self->_network_first_stage.network_index;
      v27 = [(NSArray *)self->_inputTensorFirstStageNames objectAtIndexedSubscript:0];
      v28 = v27;
      [v27 UTF8String];
      espresso_network_bind_buffer();

      v29 = self->_network_first_stage.plan;
      v30 = *&self->_network_first_stage.network_index;
      v31 = [(NSArray *)self->_outputTensorFirstStageNames objectAtIndexedSubscript:0];
      v32 = v31;
      [v31 UTF8String];
      espresso_network_bind_buffer();

      *buf = 0u;
      v44 = 0u;
      v33 = self->_network_first_stage.plan;
      v34 = *&self->_network_first_stage.network_index;
      v35 = [(NSArray *)self->_inputTensorFirstStageNames objectAtIndexedSubscript:0];
      v36 = v35;
      [v35 UTF8String];
      espresso_network_query_blob_dimensions();

      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      goto LABEL_14;
    }

    v17 = espresso_create_context();
    self->_context_first_stage = v17;
    if (v17)
    {
      v16 = "GPU";
      goto LABEL_10;
    }

    v38 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_ERROR, " ANE not available. GPU not available. Espresso context creation failed for 3D lifting model. ", buf, 2u);
    }

LABEL_18:
    v37 = 0;
    goto LABEL_19;
  }

  self->_useEspressoV2 = 1;
  v9 = [[ABPKMLNetworkV2 alloc] initWithNetworkPath:v4 networkConfig:@"main" inputNames:self->_inputTensorFirstStageNames outputNames:self->_outputTensorFirstStageNames useSurface:0];
  networkV2 = self->_networkV2;
  self->_networkV2 = v9;

  v11 = [(ABPKMLNetworkV2 *)self->_networkV2 inputBuffers];
  inputBufferDict = self->_inputBufferDict;
  self->_inputBufferDict = v11;

  v13 = [(ABPKMLNetworkV2 *)self->_networkV2 outputBuffers];
  outputBufferDict = self->_outputBufferDict;
  self->_outputBufferDict = v13;

LABEL_14:
  v37 = 1;
LABEL_19:

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

- (int)runLiftingModelWithData:(id)a3 atTimestamp:(double)a4
{
  v6 = a3;
  if ([v6 rotation] && objc_msgSend(v6, "rotation") != 180)
  {
    [v6 imageResolution];
    v9 = v10;
    [v6 imageResolution];
    v7 = v11;
  }

  else
  {
    [v6 imageResolution];
    v9 = v8;
  }

  v12 = [(ABPK3DLiftingSequence *)self runLiftingModelWithData:v6 imageResolution:1 deviceOrientation:v9 atTimestamp:v7, a4];

  return v12;
}

- (int)runLiftingModelWithData:(id)a3 imageResolution:(CGSize)a4 deviceOrientation:(int64_t)a5 atTimestamp:(double)a6
{
  height = a4.height;
  width = a4.width;
  *&v31._anon_20[8] = *MEMORY[0x277D85DE8];
  v31.super.isa = *&a4.width;
  *v31._anon_8 = a4.height;
  v11 = a3;
  [(ABPK3DLiftingSequence *)self _startPrepareLiftingSequenceInputSignpostWithTimestamp:a6];
  v12 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *&v31._anon_8[8] = 134218240;
    *&v31._anon_8[12] = width;
    *&v31._anon_8[20] = 2048;
    *&v31._anon_8[22] = height;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " runLiftingModelWithData resolution: (w,h) = (%f,%f) ", &v31._anon_8[8], 0x16u);
  }

  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v11 rotation];
    *&v31._anon_8[8] = 134217984;
    *&v31._anon_8[12] = v14;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " runLiftingModelWithData rotation: %ld ", &v31._anon_8[8], 0xCu);
  }

  abpk::GetRawDetectionXYVisbilityWithRawDetection2D(v11, &v31, v15, &v31._anon_8[8]);
  abpk::Normalize2DCoordinatesSquareCrop(&v31._anon_8[8], &v31, a5);
  p__3DLiftingInputBuffer = &self->_3DLiftingInputBuffer;
  insertionIndex = self->_3DLiftingInputBuffer._insertionIndex;
  if (!self->_3DLiftingInputBuffer._filled && !insertionIndex)
  {
    [(ABPK3DLiftingSequence *)self updateInputImageResolution:*&v31.super.isa, *v31._anon_8];
    insertionIndex = p__3DLiftingInputBuffer->_insertionIndex;
  }

  v18 = *&v31._anon_8[8];
  v19 = *v31._anon_20;
  memset(&v31._anon_8[8], 0, 24);
  v20 = self + 24 * insertionIndex;
  v23 = *(v20 + 2);
  v22 = v20 + 16;
  v21 = v23;
  if (v23)
  {
    v22[1] = v21;
    v29 = v18;
    operator delete(v21);
    v18 = v29;
    v22[1] = 0;
    v22[2] = 0;
    *v22 = 0;
    insertionIndex = p__3DLiftingInputBuffer->_insertionIndex;
  }

  *v22 = v18;
  v22[2] = v19;
  v24 = insertionIndex + 1;
  p__3DLiftingInputBuffer->_insertionIndex = v24;
  if (v24 == 243)
  {
    p__3DLiftingInputBuffer->_insertionIndex = 0;
    self->_3DLiftingInputBuffer._filled = 1;
  }

  [(ABPK3DLiftingSequence *)self _endPrepareLiftingSequenceInputSignpostWithTimestamp:a6, v29];
  if ([(ABPK3DLiftingSequence *)self runLiftingModelWithBuffer:&self->_3DLiftingInputBuffer with2DReferenceResults:v11 atTimestamp:0 exportDebuggingData:a6])
  {
    v25 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *v30 = 0;
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", v30, 2u);
    }

    v26 = -6662;
  }

  else
  {
    v26 = 0;
  }

  if (*&v31._anon_8[8])
  {
    *&v31._anon_8[16] = *&v31._anon_8[8];
    operator delete(*&v31._anon_8[8]);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (int)runLiftingModelWithBuffer:(const void *)a3 with2DReferenceResults:(id)a4 atTimestamp:(double)a5 exportDebuggingData:(BOOL)a6
{
  v131 = a6;
  v153 = *MEMORY[0x277D85DE8];
  v9 = a4;
  [(ABPK3DLiftingSequence *)self _startRunLiftingSequenceModelSignpostWithTimestamp:a5];
  v10 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Run Lifting Model With Data Buffer ", buf, 2u);
  }

  memset(&v140, 0, sizeof(v140));
  std::vector<int>::reserve(&v140, 0x30uLL);
  if (self->_useEspressoV2)
  {
    v130 = &self->_3DLiftingInputBuffer._storage.__elems_[170];
    inputBufferDict = self->_inputBufferDict;
    v12 = [(NSArray *)self->_inputTensorFirstStageNames objectAtIndexedSubscript:0];
    v13 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v12];

    v128 = v13;
    v14 = [v13 bytes];
    v15 = [v13 strideHeight];
    outputBufferDict = self->_outputBufferDict;
    v17 = [(NSArray *)self->_outputTensorFirstStageNames objectAtIndexedSubscript:0];
    v18 = [(NSMutableDictionary *)outputBufferDict objectForKeyedSubscript:v17];

    v19 = 0;
    v20 = *a3;
    v21 = 6 * v15;
    v22 = *a3 == 243;
    v23 = v14 + 4 * v15;
    v24 = v14 + 2 * v15;
    while (1)
    {
      v25 = 0;
      v26 = *(a3 + 5840);
      v27 = v22;
      v28 = v20;
      do
      {
        v29 = v28 + 1;
        if (v28 + 1 <= 0xF2)
        {
          if (v27)
          {
            if (v29 >= v20)
            {
              v29 = 243;
            }

            v27 = 1;
          }

          else
          {
            v27 = 0;
            v31 = a3 + 8;
            if ((v26 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

LABEL_18:
          v31 = a3 + 24 * v28 + 8;
          goto LABEL_19;
        }

        if ((v27 & 1) == 0)
        {
          v29 = v28 - 242;
        }

        if (v29 >= v20)
        {
          v29 = 243;
        }

        v30 = v26 | v27;
        v27 = 1;
        v31 = a3 + 8;
        if (v30)
        {
          goto LABEL_18;
        }

LABEL_19:
        v32 = (*v31 + 12 * v19);
        _S0 = *v32;
        __asm { FCVT            H0, S0 }

        *(v14 + v25) = _S0;
        _S0 = v32[1];
        __asm { FCVT            H0, S0 }

        *(v24 + v25) = _S0;
        _S0 = v32[2];
        __asm { FCVT            H0, S0 }

        *(v23 + v25) = _S0;
        v25 += 2;
        v28 = v29;
      }

      while (v25 != 486);
      ++v19;
      v23 += v21;
      v24 += v21;
      v14 += v21;
      if (v19 == 16)
      {
        [(ABPKMLNetworkV2 *)self->_networkV2 execute];
        [(ABPK3DLiftingSequence *)self _endRunLiftingSequenceModelSignpostWithTimestamp:a5];
        [(ABPK3DLiftingSequence *)self _startPostProcessFor3DLiftingSequenceModelDataSignpostWithTimestamp:a5];
        v40 = [v18 bytes];
        v41 = [v18 strideHeight];
        end = v140.__end_;
        v43 = 2 * v41;
        v44 = 48;
        do
        {
          _H0 = *v40;
          __asm { FCVT            S9, H0 }

          if (end >= v140.__end_cap_.__value_)
          {
            begin = v140.__begin_;
            v48 = end - v140.__begin_;
            v49 = end - v140.__begin_;
            v50 = v49 + 1;
            if ((v49 + 1) >> 62)
            {
              std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
            }

            v51 = v140.__end_cap_.__value_ - v140.__begin_;
            if ((v140.__end_cap_.__value_ - v140.__begin_) >> 1 > v50)
            {
              v50 = v51 >> 1;
            }

            if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v52 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v52 = v50;
            }

            if (v52)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v140, v52);
            }

            v53 = v49;
            v54 = (4 * v49);
            v55 = &v54[-v53];
            *v54 = _S9;
            end = v54 + 1;
            memcpy(v55, begin, v48);
            v56 = v140.__begin_;
            v140.__begin_ = v55;
            v140.__end_ = end;
            v140.__end_cap_.__value_ = 0;
            if (v56)
            {
              operator delete(v56);
            }
          }

          else
          {
            *end++ = _S9;
          }

          v140.__end_ = end;
          v40 = (v40 + v43);
          --v44;
        }

        while (v44);

LABEL_57:
        v74 = *&v140.__begin_;
        value = v140.__end_cap_.__value_;
        memset(&v140, 0, sizeof(v140));
        insertionIndex = self->_smoothingFilterRingBuffer._insertionIndex;
        v77 = self + 24 * insertionIndex;
        v78 = v77 + 6328;
        v79 = *(v77 + 791);
        if (v79)
        {
          *(v77 + 792) = v79;
          v129 = v74;
          operator delete(v79);
          v74 = v129;
          v78[1] = 0;
          v78[2] = 0;
          *v78 = 0;
          insertionIndex = self->_smoothingFilterRingBuffer._insertionIndex;
        }

        *v78 = v74;
        v78[2] = value;
        v80 = insertionIndex + 1;
        self->_smoothingFilterRingBuffer._insertionIndex = v80;
        if (v80 == 9)
        {
          self->_smoothingFilterRingBuffer._insertionIndex = 0;
          LOBYTE(v130[102].__begin_) = 1;
        }

        [(ABPK3DLiftingSequence *)self getGaussianSmoothedOutput:&self->_smoothingFilterRingBuffer];
        v136[0] = 0;
        v136[1] = 0;
        v137 = 0;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v136, v138[0], v138[1], (v138[1] - v138[0]) >> 4);
        v81 = v136[0];
        v82 = v136[1];
        while (v81 != v82)
        {
          *v81 = -*v81;
          v81 += 4;
        }

        [(ABPK3DLiftingSequence *)self _adjustBoneLength:v136];
        v83 = v136[0];
        v84 = v136[1];
        if (v136[0] != v136[1])
        {
          v85 = *(v136[0] + 7);
          v86 = vmulq_f32(v85, v85);
          *&v87 = v86.f32[2] + vaddv_f32(*v86.f32);
          v88 = vrsqrte_f32(v87);
          v89 = vmul_f32(v88, vrsqrts_f32(v87, vmul_f32(v88, v88)));
          v90 = vmulq_n_f32(v85, vmul_f32(v89, vrsqrts_f32(v87, vmul_f32(v89, v89))).f32[0]);
          v91 = *(v136[0] + 4);
          v92 = vmulq_f32(v91, v91);
          *&v93 = v92.f32[2] + vaddv_f32(*v92.f32);
          *v92.f32 = vrsqrte_f32(v93);
          *v92.f32 = vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32)));
          v94 = vmulq_n_f32(v91, vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32))).f32[0]);
          v95 = vmulq_f32(v90, v94);
          v95.f32[0] = v95.f32[2] + vaddv_f32(*v95.f32);
          v96 = vmlsq_lane_f32(v90, v94, *v95.f32, 0);
          v97 = vmulq_f32(v96, v96);
          *&v98 = v97.f32[2] + vaddv_f32(*v97.f32);
          *v97.f32 = vrsqrte_f32(v98);
          *v97.f32 = vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32)));
          v99 = vmulq_n_f32(v96, vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32))).f32[0]);
          v100 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL), vnegq_f32(v94)), v99, vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL));
          v101 = vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL);
          v102 = vmulq_f32(v100, v100);
          v86.f32[0] = v102.f32[1] + (v102.f32[2] + v102.f32[0]);
          *v102.f32 = vrsqrte_f32(v86.u32[0]);
          *v102.f32 = vmul_f32(*v102.f32, vrsqrts_f32(v86.u32[0], vmul_f32(*v102.f32, *v102.f32)));
          v103 = vmulq_n_f32(v101, vmul_f32(*v102.f32, vrsqrts_f32(v86.u32[0], vmul_f32(*v102.f32, *v102.f32))).f32[0]);
          v104 = vzip1q_s32(v94, v99);
          v104.i32[2] = v103.i32[0];
          v105 = vzip2q_s32(vzip1q_s32(v94, v103), vdupq_lane_s32(*v99.f32, 1));
          v106 = vzip2q_s32(v94, v99);
          v106.i32[2] = v103.i32[2];
          do
          {
            *v83->f32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*v83->f32)), v105, *v83, 1), v106, *v83->f32, 2);
            v83 += 2;
          }

          while (v83 != v84);
        }

        v107 = [ABPK3DLiftingResult alloc];
        *v134 = *v136;
        v135 = v137;
        v136[1] = 0;
        v137 = 0;
        v136[0] = 0;
        *__p = *v138;
        v133 = v139;
        v138[0] = 0;
        v138[1] = 0;
        v139 = 0;
        v108 = [(ABPK3DLiftingResult *)v107 initWithJoints:v134 rawNetworkOutputs:__p referenceDetectionResult:v9];
        liftingResult = self->_liftingResult;
        self->_liftingResult = v108;

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v134[0])
        {
          v134[1] = v134[0];
          operator delete(v134[0]);
        }

        [(ABPK3DLiftingSequence *)self _endPostProcessFor3DLiftingSequenceModelDataSignpostWithTimestamp:a5];
        if (v131)
        {
          frameCount = self->_frameCount;
          if (!frameCount)
          {
            v111 = objc_alloc_init(MEMORY[0x277CCAA00]);
            [v111 removeItemAtPath:@"/var/mobile/Documents/debug_lifting/" error:0];
            [v111 createDirectoryAtPath:@"/var/mobile/Documents/debug_lifting/" withIntermediateDirectories:1 attributes:0 error:0];

            frameCount = self->_frameCount;
          }

          v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", frameCount];
          v113 = [v112 stringByAppendingString:@".plist"];
          v114 = [@"current_frame_3D_lifting_debug" stringByAppendingString:v113];

          data = self->_outputTensorFirstStage.data;
          v116 = data[3];
          v118 = *data;
          v117 = data[1];
          v143 = data[2];
          v144 = v116;
          *buf = v118;
          v142 = v117;
          v119 = data[7];
          v121 = data[4];
          v120 = data[5];
          v147 = data[6];
          v148 = v119;
          v145 = v121;
          v146 = v120;
          v122 = data[11];
          v124 = data[8];
          v123 = data[9];
          v151 = data[10];
          v152 = v122;
          v149 = v124;
          v150 = v123;
          v125 = [@"/var/mobile/Documents/debug_lifting/" stringByAppendingPathComponent:v114];
          [(ABPK3DLiftingSequence *)self saveDataToFilePath:v125 with2DInputBuffer:a3 withFirstStageOutput:buf withSmoothedOutput:[(ABPK3DLiftingResult *)self->_liftingResult rawNetworkOutputJoints] withPostprocessedLiftingResults:[(ABPK3DLiftingResult *)self->_liftingResult joints]];
        }

        ++self->_frameCount;
        if (v136[0])
        {
          v136[1] = v136[0];
          operator delete(v136[0]);
        }

        if (v138[0])
        {
          v138[1] = v138[0];
          operator delete(v138[0]);
        }

        v71 = 0;
        goto LABEL_80;
      }
    }
  }

  v57 = 0;
  v58 = *a3;
  v59 = self->_inputTensorFirstStage.data;
  v60 = *a3 == 243;
  do
  {
    v61 = *(a3 + 5840);
    v62 = v59;
    v63 = 243;
    v64 = v60;
    v65 = v58;
    do
    {
      v66 = v65 + 1;
      if (v65 + 1 <= 0xF2)
      {
        if (v64)
        {
          if (v66 >= v58)
          {
            v66 = 243;
          }

          v64 = 1;
        }

        else
        {
          v64 = 0;
          v68 = a3 + 8;
          if ((v61 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

LABEL_50:
        v68 = a3 + 24 * v65 + 8;
        goto LABEL_51;
      }

      if ((v64 & 1) == 0)
      {
        v66 = v65 - 242;
      }

      if (v66 >= v58)
      {
        v66 = 243;
      }

      v67 = v61 | v64;
      v64 = 1;
      v68 = a3 + 8;
      if (v67)
      {
        goto LABEL_50;
      }

LABEL_51:
      v69 = (*v68 + 12 * v57);
      *v62 = *v69;
      v62[243] = v69[1];
      v62[486] = v69[2];
      ++v62;
      v65 = v66;
      --v63;
    }

    while (v63);
    ++v57;
    v59 += 729;
  }

  while (v57 != 16);
  plan_first_stage = self->_plan_first_stage;
  if (!espresso_plan_execute_sync())
  {
    [(ABPK3DLiftingSequence *)self _endRunLiftingSequenceModelSignpostWithTimestamp:a5];
    [(ABPK3DLiftingSequence *)self _startPostProcessFor3DLiftingSequenceModelDataSignpostWithTimestamp:a5];
    v130 = &self->_3DLiftingInputBuffer._storage.__elems_[170];
    v72 = self->_outputTensorFirstStage.data;
    v73 = 48;
    do
    {
      std::vector<float>::push_back[abi:ne200100](&v140.__begin_, v72++);
      --v73;
    }

    while (v73);
    goto LABEL_57;
  }

  v71 = -6662;
LABEL_80:
  if (v140.__begin_)
  {
    v140.__end_ = v140.__begin_;
    operator delete(v140.__begin_);
  }

  v126 = *MEMORY[0x277D85DE8];
  return v71;
}

- (void)getGaussianSmoothedOutput:(void *)a3@<X8>
{
  v6 = *(a1 + 6304);
  v7 = *(a1 + 6296);
  v8 = (a2 + 8 + 24 * *a2);
  if (!(*(a2 + 224) & 1 | (*a2 == 9)))
  {
    v8 = (a2 + 8);
  }

  v9 = (v8[1] - *v8) >> 2;
  result = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(a3, v9 / 3 + 2);
  if (v9 >= 1)
  {
    v11 = 0;
    v12 = ((v6 - v7) >> 2) + 1;
    v13 = v12 >> 1;
    while (1)
    {
      v25 = a2;
      v26 = 9;
      v27 = 1;
      result = abpk::RingBuffer<std::vector<float>,9ul>::Iterator<true>::operator-=(&v25, v13);
      if (v12 >= 2)
      {
        break;
      }

LABEL_24:
      v11 += 3;
      if (v9 <= v11)
      {
        return result;
      }
    }

    v14 = 0;
    v15 = *a3 + 16 * (v11 / 3uLL);
    while (1)
    {
      v16 = v25;
      if (v25[28] & 1) != 0 || (v27)
      {
        v16 = &v25[3 * v26];
      }

      v17 = *(*(a1 + 6296) + 4 * v14);
      v18 = *(v15 + 16);
      v19 = *&v18 + (v17 * *(v16[1] + 4 * v11));
      *(v15 + 16) = v19;
      v20 = v25;
      if (v25[28] & 1) != 0 || (v27)
      {
        v20 = &v25[3 * v26];
      }

      *&v21 = v19;
      *(&v21 + 1) = *(&v18 + 1) + (v17 * *(v20[1] + 4 * v11 + 4));
      *(v15 + 24) = DWORD2(v18);
      *(v15 + 16) = v21;
      v22 = v25;
      if (v25[28] & 1) != 0 || (v27)
      {
        v22 = &v25[3 * v26];
      }

      v23 = *(&v18 + 2) + (v17 * *(v22[1] + 4 * v11 + 8));
      *(v15 + 16) = v21;
      *(v15 + 24) = v23;
      v24 = v26 + 1;
      if ((v26 + 1) > 8)
      {
        break;
      }

      ++v26;
      if (v27)
      {
        goto LABEL_21;
      }

LABEL_23:
      if (v13 == ++v14)
      {
        goto LABEL_24;
      }
    }

    if ((v27 & 1) == 0)
    {
      v27 = 1;
      v24 = v26 - 8;
    }

    v26 = v24;
LABEL_21:
    if (v24 >= *v25)
    {
      v26 = 9;
    }

    goto LABEL_23;
  }

  return result;
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)get3DLiftingResultsAsModelPoses
{
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D860B8];
  v14 = vdupq_n_s32(0x447A0000u);
  do
  {
    v6 = *([(ABPK3DLiftingResult *)self->_liftingResult joints]+ v4);
    v7 = (self->_liftingResultAsModelPoses.__begin_ + v3);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[3];
    v7[2] = v5[2];
    v7[3] = v10;
    *v7 = v8;
    v7[1] = v9;
    v11 = (self->_liftingResultAsModelPoses.__begin_ + v3);
    v12 = vdivq_f32(v6, v14);
    v12.i32[3] = v11[3].i32[3];
    v11[3] = v12;
    v4 += 16;
    v3 += 64;
  }

  while (v4 != 272);
  return self->_liftingResultAsModelPoses.__begin_;
}

- (void)saveDataToFilePath:(ABPK3DLiftingSequence *)self with2DInputBuffer:(SEL)a2 withFirstStageOutput:(id)a3 withSmoothedOutput:(const void *)a4 withPostprocessedLiftingResults:(float *)a5
{
  v67 = v5;
  v68 = v6;
  v56 = a3;
  v9 = 0x277CBE000uLL;
  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = 0x277CBE000uLL;
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_imageWidth];
  [v10 setObject:v13 forKeyedSubscript:@"image_width"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_imageHeight];
  [v10 setObject:v14 forKeyedSubscript:@"image_height"];

  [v57 setObject:v10 forKeyedSubscript:@"image_resolution"];
  v54 = a5;
  v15 = *a4;
  v59 = v10;
  if (*a4 != 243)
  {
    v16 = 0;
    v58 = v12;
    while (1)
    {
      v65 = v15;
      v17 = *(a4 + 5840);
      v18 = objc_alloc_init(*(v11 + 2840));
      v61 = v16;
      if ((v16 | v17))
      {
        v19 = a4 + 24 * v65 + 8;
      }

      else
      {
        v19 = a4 + 8;
      }

      v21 = *v19;
      v20 = *(v19 + 1);
      if (*v19 != v20)
      {
        do
        {
          v22 = objc_alloc_init(*(v9 + 2872));
          v23 = v9;
          LODWORD(v24) = *v21;
          v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
          [v22 setObject:v25 forKeyedSubscript:@"normalized_x"];

          LODWORD(v26) = v21[1];
          v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
          [v22 setObject:v27 forKeyedSubscript:@"normalized_y"];

          LODWORD(v28) = v21[2];
          v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
          [v22 setObject:v29 forKeyedSubscript:@"visibility"];

          [v18 addObject:v22];
          v21 += 3;
          v9 = v23;
        }

        while (v21 != v20);
      }

      [v60 addObject:{v18, v54}];

      v30 = v65 + 1;
      if (v65 + 1 > 0xF2)
      {
        break;
      }

      v12 = v58;
      v11 = 0x277CBE000uLL;
      if (v61)
      {
        goto LABEL_13;
      }

      v16 = 0;
LABEL_16:
      v15 = v30;
      if (v30 == 243)
      {
        goto LABEL_17;
      }
    }

    if ((v61 & 1) == 0)
    {
      v30 = v65 - 242;
    }

    v12 = v58;
    v11 = 0x277CBE000;
LABEL_13:
    if (v30 >= *a4)
    {
      goto LABEL_17;
    }

    v16 = 1;
    goto LABEL_16;
  }

LABEL_17:
  [v57 setObject:v60 forKeyedSubscript:{@"input_2D_raw_pose", v54}];
  v62 = objc_alloc_init(*(v11 + 2840));
  v64 = objc_alloc_init(*(v11 + 2840));
  v66 = objc_alloc_init(*(v11 + 2840));
  v31 = 0;
  v32 = (v55 + 8);
  do
  {
    if (v31 == 256)
    {
      goto LABEL_20;
    }

    v33 = objc_alloc_init(*(v9 + 2872));
    LODWORD(v34) = *(v32 - 2);
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
    [v33 setObject:v35 forKeyedSubscript:@"x"];

    LODWORD(v36) = *(v32 - 1);
    v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    [v33 setObject:v37 forKeyedSubscript:@"y"];

    LODWORD(v38) = *v32;
    v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    [v33 setObject:v39 forKeyedSubscript:@"z"];

    [v62 addObject:v33];
    if (v31)
    {
LABEL_20:
      v40 = objc_alloc_init(*(v9 + 2872));
      LODWORD(v41) = *(v67 + v31);
      v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
      [v40 setObject:v42 forKeyedSubscript:@"x"];

      LODWORD(v43) = *(v67 + v31 + 4);
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
      [v40 setObject:v44 forKeyedSubscript:@"y"];

      LODWORD(v45) = *(v67 + v31 + 8);
      v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
      [v40 setObject:v46 forKeyedSubscript:@"z"];

      [v64 addObject:v40];
    }

    v47 = objc_alloc_init(*(v9 + 2872));
    LODWORD(v48) = *(v68 + v31);
    v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
    [v47 setObject:v49 forKeyedSubscript:@"x"];

    LODWORD(v50) = *(v68 + v31 + 4);
    v51 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
    [v47 setObject:v51 forKeyedSubscript:@"y"];

    LODWORD(v52) = *(v68 + v31 + 8);
    v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
    [v47 setObject:v53 forKeyedSubscript:@"z"];

    [v66 addObject:v47];
    v31 += 16;
    v32 += 3;
  }

  while (v31 != 272);
  [v12 setObject:v62 forKeyedSubscript:@"first_stage_model_output"];
  [v12 setObject:v64 forKeyedSubscript:@"lifting_model_output_gaussian_smoothed"];
  [v12 setObject:v66 forKeyedSubscript:@"lifting_model_output_postprocessed_final"];
  [v57 setObject:v12 forKeyedSubscript:@"output"];
  [v57 writeToFile:v56 atomically:0];
}

- (void)_adjustBoneLength:(void *)a3
{
  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Adjust bone length ", buf, 2u);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v25, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  *buf = 0;
  v19 = buf;
  v20 = 0x6012000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = &unk_23EE3643A;
  memset(v24, 0, 48);
  abpkLiftingSkeletonDefinition = self->_abpkLiftingSkeletonDefinition;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__ABPK3DLiftingSequence__adjustBoneLength___block_invoke;
  v17[3] = &unk_278C71910;
  v17[4] = buf;
  [(ABPKSkeletonDefinition *)abpkLiftingSkeletonDefinition enumerateChildrenJointIndicesOfJointAtIndex:0 withBlock:v17];
  while (1)
  {
    v7 = v19;
    v8 = *(v19 + 11);
    if (!v8)
    {
      break;
    }

    v9 = *(v19 + 10);
    v10 = (*(*(v19 + 7) + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    *(v19 + 10) = v9 + 1;
    *(v7 + 11) = v8 - 1;
    std::deque<std::pair<long,long>>::__maybe_remove_front_spare[abi:ne200100]((v7 + 48), 1);
    v13 = vsubq_f32(v25[v11], v25[v12]);
    v14 = vmulq_f32(v13, v13);
    v14.f32[0] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
    *(*a3 + 16 * v11) = vmlaq_n_f32(*(*a3 + 16 * v12), vdivq_f32(v13, vdupq_lane_s32(*v14.f32, 0)), [ABPK3DLiftingSequence _adjustBoneLength:]::bones[v11] * 1000.0);
    v15 = self->_abpkLiftingSkeletonDefinition;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__ABPK3DLiftingSequence__adjustBoneLength___block_invoke_2;
    v16[3] = &unk_278C71938;
    v16[4] = buf;
    v16[5] = v11;
    [(ABPKSkeletonDefinition *)v15 enumerateChildrenJointIndicesOfJointAtIndex:v11 withBlock:v16];
  }

  _Block_object_dispose(buf, 8);
  std::deque<std::pair<long,long>>::~deque[abi:ne200100](v24);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

uint64_t __43__ABPK3DLiftingSequence__adjustBoneLength___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(*(a1 + 32) + 8);
  v4 = 0;
  return std::deque<std::pair<long,long>>::emplace_back<long &,int>(v2 + 48, &v5, &v4);
}

- (id).cxx_construct
{
  bzero(&self->_3DLiftingInputBuffer, 0x16D1uLL);
  self->_smoothingFilterRingBuffer._filled = 0;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[8].__end_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[7].__cap_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[7].__begin_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[6].__end_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[5].__cap_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[5].__begin_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[4].__end_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[3].__cap_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[3].__begin_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[2].__end_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[1].__cap_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[1].__begin_ = 0u;
  *&self->_smoothingFilterRingBuffer._storage.__elems_[0].__end_ = 0u;
  *&self->_smoothingFilterRingBuffer._insertionIndex = 0u;
  *&self->_gaussianSmoothingFilter.__end_ = 0u;
  *&self->_liftingResultAsModelPoses.__cap_ = 0u;
  *&self->_liftingResultAsModelPoses.__begin_ = 0u;
  return self;
}

@end