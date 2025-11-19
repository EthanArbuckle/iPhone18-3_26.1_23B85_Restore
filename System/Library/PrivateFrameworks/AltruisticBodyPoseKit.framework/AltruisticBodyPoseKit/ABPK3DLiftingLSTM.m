@interface ABPK3DLiftingLSTM
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)get3DLiftingResultsAsModelPoses;
- (ABPK3DLiftingLSTM)init;
- (BOOL)initMLNetwork;
- (id).cxx_construct;
- (int)runLiftingModelWithData:(id)a3 atTimestamp:(double)a4;
- (int)runLiftingModelWithData:(id)a3 imageResolution:(CGSize)a4 deviceOrientation:(int64_t)a5 atTimestamp:(double)a6;
- (int)runLiftingModelWithRawDetectionXYVisbility:(const void *)a3 with2DReferenceResults:(id)a4 atTimestamp:(double)a5 exportDebuggingData:(BOOL)a6;
- (void)_adjustBoneLength:(void *)a3;
- (void)resetCellStateAndHiddenStateInput;
- (void)resetInputCellStateBuffer;
- (void)resetInputHiddenStateBuffer;
- (void)saveDataToFilePath:(ABPK3DLiftingLSTM *)self with2DInput:(SEL)a2 withLSTMOutput:(id)a3 withPostprocessedLiftingResults:(const void *)a4;
@end

@implementation ABPK3DLiftingLSTM

- (ABPK3DLiftingLSTM)init
{
  [(ABPK3DLiftingLSTM *)self _startLoading3DLiftingLSTMMLModelSignpost];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = ABPK3DLiftingLSTM;
  v4 = [(ABPK3DLiftingLSTM *)&v12 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = objc_alloc_init(ABPKMLModelConfiguration3DLiftingLSTM);
  mlConfigLSTM = v4->_mlConfigLSTM;
  v4->_mlConfigLSTM = v6;

  std::vector<simd_float4x4>::resize(&v4->_liftingResultAsModelPoses.__begin_, 0x11uLL);
  v4->_frameCount = 0;
  v4->_setUpStatus = 0;
  v8 = [[ABPKSkeletonDefinition alloc] initWithType:3];
  abpkLiftingSkeletonDefinition = v4->_abpkLiftingSkeletonDefinition;
  v4->_abpkLiftingSkeletonDefinition = v8;

  if (![(ABPK3DLiftingLSTM *)v4 initMLNetwork])
  {
    v10 = 0;
  }

  else
  {
LABEL_5:
    [(ABPK3DLiftingLSTM *)v4 _endLoading3DLiftingLSTMMLModelSignpost];
    v10 = v4;
  }

  return v10;
}

- (BOOL)initMLNetwork
{
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v16 = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ML Network - LSTM ", v16, 2u);
  }

  v4 = [(ABPKMLModelConfiguration3DLiftingLSTM *)self->_mlConfigLSTM compiledMLModelPath];
  if (v4)
  {
    v5 = [(ABPKMLModelConfiguration3DLiftingLSTM *)self->_mlConfigLSTM inputTensorNames];
    inputTensorLSTMNames = self->_inputTensorLSTMNames;
    self->_inputTensorLSTMNames = v5;

    v7 = [(ABPKMLModelConfiguration3DLiftingLSTM *)self->_mlConfigLSTM outputTensorNames];
    outputTensorLSTMNames = self->_outputTensorLSTMNames;
    self->_outputTensorLSTMNames = v7;

    self->_useEspressoV2 = 1;
    v9 = [[ABPKMLNetworkV2 alloc] initWithNetworkPath:v4 networkConfig:@"main" inputNames:self->_inputTensorLSTMNames outputNames:self->_outputTensorLSTMNames useSurface:0];
    networkV2 = self->_networkV2;
    self->_networkV2 = v9;

    v11 = [(ABPKMLNetworkV2 *)self->_networkV2 inputBuffers];
    inputBufferDict = self->_inputBufferDict;
    self->_inputBufferDict = v11;

    v13 = [(ABPKMLNetworkV2 *)self->_networkV2 outputBuffers];
    outputBufferDict = self->_outputBufferDict;
    self->_outputBufferDict = v13;
  }

  return v4 != 0;
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

  v12 = [(ABPK3DLiftingLSTM *)self runLiftingModelWithData:v6 imageResolution:1 deviceOrientation:v9 atTimestamp:v7, a4];

  return v12;
}

- (int)runLiftingModelWithData:(id)a3 imageResolution:(CGSize)a4 deviceOrientation:(int64_t)a5 atTimestamp:(double)a6
{
  height = a4.height;
  width = a4.width;
  *&v21._anon_20[8] = *MEMORY[0x277D85DE8];
  v21.super.isa = *&a4.width;
  *v21._anon_8 = a4.height;
  v11 = a3;
  [(ABPK3DLiftingLSTM *)self _startPrepareLiftingLSTMInputSignpostWithTimestamp:a6];
  v12 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *&v21._anon_8[8] = 134218240;
    *&v21._anon_8[12] = width;
    *&v21._anon_8[20] = 2048;
    *&v21._anon_8[22] = height;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " runLiftingModelWithData resolution: (w,h) = (%f,%f) ", &v21._anon_8[8], 0x16u);
  }

  v13 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v11 rotation];
    *&v21._anon_8[8] = 134217984;
    *&v21._anon_8[12] = v14;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " runLiftingModelWithData rotation: %ld ", &v21._anon_8[8], 0xCu);
  }

  abpk::GetRawDetectionXYVisbilityWithRawDetection2D(v11, &v21, v15, &v21._anon_8[8]);
  abpk::Normalize2DCoordinatesSquareCrop(&v21._anon_8[8], &v21, a5);
  if (!self->_setUpStatus)
  {
    [(ABPK3DLiftingLSTM *)self updateInputImageResolution:*&v21.super.isa, *v21._anon_8];
    self->_setUpStatus = 1;
  }

  [(ABPK3DLiftingLSTM *)self _endPrepareLiftingLSTMInputSignpostWithTimestamp:a6];
  if ([(ABPK3DLiftingLSTM *)self runLiftingModelWithRawDetectionXYVisbility:&v21._anon_8[8] with2DReferenceResults:v11 atTimestamp:0 exportDebuggingData:a6])
  {
    v16 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " \t\t Failed to run Lifting ML model ", v20, 2u);
    }

    v17 = -6662;
  }

  else
  {
    v17 = 0;
  }

  if (*&v21._anon_8[8])
  {
    *&v21._anon_8[16] = *&v21._anon_8[8];
    operator delete(*&v21._anon_8[8]);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)resetInputCellStateBuffer
{
  inputBufferDict = self->_inputBufferDict;
  v3 = [(NSArray *)self->_inputTensorLSTMNames objectAtIndexedSubscript:2];
  v4 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v3];

  bzero([v4 bytes], objc_msgSend(v4, "size"));
}

- (void)resetInputHiddenStateBuffer
{
  inputBufferDict = self->_inputBufferDict;
  v3 = [(NSArray *)self->_inputTensorLSTMNames objectAtIndexedSubscript:1];
  v4 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v3];

  bzero([v4 bytes], objc_msgSend(v4, "size"));
}

- (void)resetCellStateAndHiddenStateInput
{
  [(ABPK3DLiftingLSTM *)self resetInputCellStateBuffer];

  [(ABPK3DLiftingLSTM *)self resetInputHiddenStateBuffer];
}

- (int)runLiftingModelWithRawDetectionXYVisbility:(const void *)a3 with2DReferenceResults:(id)a4 atTimestamp:(double)a5 exportDebuggingData:(BOOL)a6
{
  a4;
  v9 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__begin_) = 0;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " ABPK3DLiftingLSTM: Run Lifting Model With Data Buffer ", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  std::vector<int>::reserve(&buf, 0x30uLL);
  inputBufferDict = self->_inputBufferDict;
  v11 = [(NSArray *)self->_inputTensorLSTMNames objectAtIndexedSubscript:0];
  v12 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v11];

  v13 = self->_inputBufferDict;
  v14 = [(NSArray *)self->_inputTensorLSTMNames objectAtIndexedSubscript:1];
  v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];

  v16 = self->_inputBufferDict;
  v17 = [(NSArray *)self->_inputTensorLSTMNames objectAtIndexedSubscript:2];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];

  outputBufferDict = self->_outputBufferDict;
  v20 = [(NSArray *)self->_outputTensorLSTMNames objectAtIndexedSubscript:0];
  v21 = [(NSMutableDictionary *)outputBufferDict objectForKeyedSubscript:v20];

  v22 = self->_outputBufferDict;
  v23 = [(NSArray *)self->_outputTensorLSTMNames objectAtIndexedSubscript:1];
  v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v23];

  v25 = self->_outputBufferDict;
  v26 = [(NSArray *)self->_outputTensorLSTMNames objectAtIndexedSubscript:2];
  v27 = [(NSMutableDictionary *)v25 objectForKeyedSubscript:v26];

  v28 = [v12 bytes];
  v29 = [v12 strideChannels];
  v30 = (*a3 + 8);
  v31 = 16;
  do
  {
    _S0 = *(v30 - 2);
    __asm { FCVT            H0, S0 }

    *v28 = _S0;
    _S0 = *(v30 - 1);
    __asm { FCVT            H0, S0 }

    v28[v29] = _S0;
    v38 = *v30;
    v30 += 3;
    _S0 = v38;
    __asm { FCVT            H0, S0 }

    v28[2 * v29] = _S0;
    v28 += 3 * v29;
    --v31;
  }

  while (v31);
  memcpy([v15 bytes], objc_msgSend(v24, "bytes"), objc_msgSend(v24, "size"));
  memcpy([v18 bytes], objc_msgSend(v27, "bytes"), objc_msgSend(v27, "size"));
  [(ABPK3DLiftingLSTM *)self _startRunLiftingLSTMModelSignpostWithTimestamp:a5];
  [(ABPKMLNetworkV2 *)self->_networkV2 execute];
  [(ABPK3DLiftingLSTM *)self _endRunLiftingLSTMModelSignpostWithTimestamp:a5];
  [(ABPK3DLiftingLSTM *)self _startPostProcessFor3DLiftingLSTMModelDataSignpostWithTimestamp:a5];
  v40 = [v21 bytes];
  v41 = [v21 strideChannels];
  end = buf.__end_;
  v43 = 2 * v41;
  v44 = 48;
  while (1)
  {
    _H0 = *v40;
    __asm { FCVT            S9, H0 }

    if (end >= buf.__end_cap_.__value_)
    {
      begin = buf.__begin_;
      v48 = end - buf.__begin_;
      v49 = end - buf.__begin_;
      v50 = v49 + 1;
      if ((v49 + 1) >> 62)
      {
        std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
      }

      v51 = buf.__end_cap_.__value_ - buf.__begin_;
      if ((buf.__end_cap_.__value_ - buf.__begin_) >> 1 > v50)
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&buf, v52);
      }

      v53 = end - buf.__begin_;
      v54 = (4 * v49);
      v55 = (4 * v49 - 4 * v53);
      *v54 = _S9;
      end = v54 + 1;
      memcpy(v55, begin, v48);
      v56 = buf.__begin_;
      buf.__begin_ = v55;
      buf.__end_ = end;
      buf.__end_cap_.__value_ = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *end++ = _S9;
    }

    buf.__end_ = end;
    v40 = (v40 + v43);
    if (!--v44)
    {
      v58 = 0uLL;
      v59 = 0;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&v58, 1uLL);
    }
  }
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

- (void)saveDataToFilePath:(ABPK3DLiftingLSTM *)self with2DInput:(SEL)a2 withLSTMOutput:(id)a3 withPostprocessedLiftingResults:(const void *)a4
{
  v6 = v5;
  v7 = v4;
  v46 = a3;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_imageWidth];
  [v11 setObject:v13 forKeyedSubscript:@"image_width"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_imageHeight];
  [v11 setObject:v14 forKeyedSubscript:@"image_height"];

  [v10 setObject:v11 forKeyedSubscript:@"image_resolution"];
  v43 = v6;
  v15 = v7;
  v45 = v11;
  v47 = v10;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = *a4;
  v17 = *(a4 + 1);
  if (*a4 != v17)
  {
    do
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      LODWORD(v19) = *v16;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      [v18 setObject:v20 forKeyedSubscript:@"normalized_x"];

      LODWORD(v21) = v16[1];
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      [v18 setObject:v22 forKeyedSubscript:@"normalized_y"];

      LODWORD(v23) = v16[2];
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      [v18 setObject:v24 forKeyedSubscript:@"visibility"];

      [v48 addObject:v18];
      v16 += 3;
    }

    while (v16 != v17);
  }

  [v10 setObject:v48 forKeyedSubscript:{@"input_2D_raw_pose_rawDetectionXYVisbility", v43}];
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0x277CBE000uLL;
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = (v44 + 4);
  v27 = (v15 + 8);
  v28 = 17;
  do
  {
    v29 = objc_alloc_init(*(v25 + 2872));
    LODWORD(v30) = *(v27 - 2);
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    [v29 setObject:v31 forKeyedSubscript:@"x"];

    LODWORD(v32) = *(v27 - 1);
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    [v29 setObject:v33 forKeyedSubscript:@"y"];

    LODWORD(v34) = *v27;
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
    [v29 setObject:v35 forKeyedSubscript:@"z"];

    [v50 addObject:v29];
    v36 = objc_alloc_init(*(v25 + 2872));
    LODWORD(v37) = *(v26 - 1);
    v38 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
    [v36 setObject:v38 forKeyedSubscript:@"x"];

    LODWORD(v39) = *v26;
    v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
    [v36 setObject:v40 forKeyedSubscript:@"y"];

    LODWORD(v41) = v26[1];
    v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
    [v36 setObject:v42 forKeyedSubscript:@"z"];

    [v49 addObject:v36];
    v26 += 4;
    v27 += 4;
    --v28;
    v25 = 0x277CBE000;
  }

  while (v28);
  [v12 setObject:v50 forKeyedSubscript:@"lifting_model_lstm_output_plus_000_hip_at_index_0"];
  [v12 setObject:v49 forKeyedSubscript:@"lifting_model_output_postprocessed_final"];
  [v47 setObject:v12 forKeyedSubscript:@"output"];
  [v47 writeToFile:v46 atomically:0];
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
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = &unk_23EE3643A;
  memset(v24, 0, 48);
  abpkLiftingSkeletonDefinition = self->_abpkLiftingSkeletonDefinition;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__ABPK3DLiftingLSTM__adjustBoneLength___block_invoke;
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
    *(*a3 + 16 * v11) = vmlaq_n_f32(*(*a3 + 16 * v12), vdivq_f32(v13, vdupq_lane_s32(*v14.f32, 0)), [ABPK3DLiftingLSTM _adjustBoneLength:]::bones[v11] * 1000.0);
    v15 = self->_abpkLiftingSkeletonDefinition;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__ABPK3DLiftingLSTM__adjustBoneLength___block_invoke_2;
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

uint64_t __39__ABPK3DLiftingLSTM__adjustBoneLength___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(*(a1 + 32) + 8);
  v4 = 0;
  return std::deque<std::pair<long,long>>::emplace_back<long &,int>(v2 + 48, &v5, &v4);
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end