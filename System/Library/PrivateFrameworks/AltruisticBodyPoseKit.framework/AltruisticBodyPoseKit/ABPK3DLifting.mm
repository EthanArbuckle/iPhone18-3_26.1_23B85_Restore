@interface ABPK3DLifting
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)get3DLiftingResultsAsModelPoses;
- (ABPK3DLifting)init;
- (BOOL)initMLNetwork;
- (id).cxx_construct;
- (int)runLiftingModelWithData:(id)data atTimestamp:(double)timestamp;
- (void)_adjustBoneLength:(ABPK3DLifting *)self;
- (void)_transformRelativeToHip:(ABPK3DLifting *)self count:(SEL)count;
- (void)dealloc;
@end

@implementation ABPK3DLifting

- (ABPK3DLifting)init
{
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ", &v14, 2u);
  }

  v16.receiver = self;
  v16.super_class = ABPK3DLifting;
  v4 = [(ABPK3DLifting *)&v16 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = objc_alloc_init(ABPKMLModelConfiguration3DLifting);
  mlConfig = v4->_mlConfig;
  v4->_mlConfig = v6;

  std::vector<simd_float4x4>::vector[abi:ne200100](&v14, 0x11uLL);
  p_liftingResultAsModelPoses = &v4->_liftingResultAsModelPoses;
  begin = v5->_liftingResultAsModelPoses.__begin_;
  if (begin)
  {
    v5->_liftingResultAsModelPoses.__end_ = begin;
    operator delete(begin);
    p_liftingResultAsModelPoses->__begin_ = 0;
    p_liftingResultAsModelPoses->__end_ = 0;
    p_liftingResultAsModelPoses->__cap_ = 0;
  }

  *&p_liftingResultAsModelPoses->__begin_ = v14;
  v5->_liftingResultAsModelPoses.__cap_ = v15;
  v10 = [[ABPKSkeletonDefinition alloc] initWithType:3];
  abpkLiftingSkeletonDefinition = v5->_abpkLiftingSkeletonDefinition;
  v5->_abpkLiftingSkeletonDefinition = v10;

  if (![(ABPK3DLifting *)v5 initMLNetwork])
  {
    v12 = 0;
  }

  else
  {
LABEL_7:
    v12 = v5;
  }

  return v12;
}

- (void)dealloc
{
  plan = self->_plan;
  espresso_plan_destroy();
  context = self->_context;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = ABPK3DLifting;
  [(ABPK3DLifting *)&v5 dealloc];
}

- (BOOL)initMLNetwork
{
  [(ABPK3DLifting *)self _startLoading3DLiftingMLModelSignpost];
  v3 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ML Network ", &buf, 2u);
  }

  inputTensorNames = [(ABPKMLModelConfiguration3DLifting *)self->_mlConfig inputTensorNames];
  inputTensorNames = self->_inputTensorNames;
  self->_inputTensorNames = inputTensorNames;

  outputTensorNames = [(ABPKMLModelConfiguration3DLifting *)self->_mlConfig outputTensorNames];
  outputTensorNames = self->_outputTensorNames;
  self->_outputTensorNames = outputTensorNames;

  self->_useEspressoV2 = 0;
  compiledMLModelPath = [(ABPKMLModelConfiguration3DLifting *)self->_mlConfig compiledMLModelPath];
  v9 = compiledMLModelPath;
  if (!compiledMLModelPath)
  {
    goto LABEL_10;
  }

  if (![compiledMLModelPath hasSuffix:@".bundle"])
  {
    context = espresso_create_context();
    self->_context = context;
    if (context)
    {
      Espresso::get_internal_context(&buf, context, v17);
      v18 = self->_context;
      self->_plan = espresso_create_plan();
      v19 = [v9 stringByAppendingPathComponent:@"model.espresso.net"];
      plan = self->_plan;
      [v19 UTF8String];
      espresso_plan_add_network();
      v21 = self->_plan;
      espresso_plan_build();
      v22 = self->_network.plan;
      v23 = *&self->_network.network_index;
      v24 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:0];
      [v24 UTF8String];
      espresso_network_bind_buffer();

      v25 = self->_inputTensorNames;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __30__ABPK3DLifting_initMLNetwork__block_invoke;
      v30[3] = &unk_278C718C0;
      v30[4] = self;
      [(NSArray *)v25 enumerateObjectsUsingBlock:v30];
      v26 = self->_outputTensorNames;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __30__ABPK3DLifting_initMLNetwork__block_invoke_2;
      v29[3] = &unk_278C718C0;
      v29[4] = self;
      [(NSArray *)v26 enumerateObjectsUsingBlock:v29];

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      goto LABEL_9;
    }

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  self->_useEspressoV2 = 1;
  v10 = [[ABPKMLNetworkV2 alloc] initWithNetworkPath:v9 inputNames:self->_inputTensorNames outputNames:self->_outputTensorNames useSurface:0];
  networkV2 = self->_networkV2;
  self->_networkV2 = v10;

  inputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 inputBuffers];
  inputBufferDict = self->inputBufferDict;
  self->inputBufferDict = inputBuffers;

  outputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 outputBuffers];
  outputBufferDict = self->outputBufferDict;
  self->outputBufferDict = outputBuffers;

LABEL_9:
  [(ABPK3DLifting *)self _endLoading3DLiftingMLModelSignpost];
  v27 = 1;
LABEL_11:

  return v27;
}

void __30__ABPK3DLifting_initMLNetwork__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  [v3 UTF8String];
  espresso_network_query_blob_dimensions();

  v7 = *MEMORY[0x277D85DE8];
}

void __30__ABPK3DLifting_initMLNetwork__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  [v3 UTF8String];
  espresso_network_query_blob_dimensions();

  v7 = *MEMORY[0x277D85DE8];
}

- (int)runLiftingModelWithData:(id)data atTimestamp:(double)timestamp
{
  v66 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(ABPK3DLifting *)self _startRunLiftingModelSignpostWithTimestamp:timestamp];
  v7 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Run Lifting Model With Data ", buf, 2u);
  }

  if (self->_useEspressoV2)
  {
    liftingData = [dataCopy liftingData];
    liftingData3D = [liftingData liftingData3D];

    inputBufferDict = self->inputBufferDict;
    v11 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    v12 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v11];
    bytes = [v12 bytes];

    for (i = 0; i != 128; i += 4)
    {
      _S0 = *(liftingData3D + i);
      __asm { FCVT            H0, S0 }

      *bytes = _S0;
      bytes += 32;
    }

    [(ABPKMLNetworkV2 *)self->_networkV2 execute];
  }

  else
  {
    plan = self->_network.plan;
    v32 = *&self->_network.network_index;
    v33 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    v34 = v33;
    [v33 UTF8String];
    LODWORD(plan) = espresso_network_bind_buffer();

    if (plan)
    {
      goto LABEL_13;
    }

    liftingData2 = [dataCopy liftingData];
    liftingData3D2 = [liftingData2 liftingData3D];

    v37 = *buf;
    v38 = *liftingData3D2;
    v39 = liftingData3D2[1];
    v40 = liftingData3D2[3];
    *(*buf + 32) = liftingData3D2[2];
    v37[3] = v40;
    *v37 = v38;
    v37[1] = v39;
    v41 = liftingData3D2[4];
    v42 = liftingData3D2[5];
    v43 = liftingData3D2[7];
    v37[6] = liftingData3D2[6];
    v37[7] = v43;
    v37[4] = v41;
    v37[5] = v42;
    v44 = self->_plan;
    if (espresso_plan_execute_sync())
    {
LABEL_13:
      v45 = -6662;
      goto LABEL_18;
    }
  }

  [(ABPK3DLifting *)self _endRunLiftingModelSignpostWithTimestamp:timestamp];
  [(ABPK3DLifting *)self _startPostProcessDataSignpostWithTimestamp:timestamp];
  if (self->_useEspressoV2)
  {
    outputBufferDict = self->outputBufferDict;
    v22 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:0];
    v23 = [(NSMutableDictionary *)outputBufferDict objectForKeyedSubscript:v22];
    bytes2 = [v23 bytes];

    for (j = 0; j != 48; ++j)
    {
      v26 = self->outputBufferDict;
      v27 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:0];
      v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];
      _H0 = *(bytes2 + 2 * [v28 strideChannels] * j);
      __asm { FCVT            S0, H0 }

      *(v65 + j) = _S0;
    }
  }

  else
  {
    data = self->_outputTensor.data;
    v47 = data[9];
    v65[8] = data[8];
    v65[9] = v47;
    v48 = data[11];
    v65[10] = data[10];
    v65[11] = v48;
    v49 = data[5];
    v65[4] = data[4];
    v65[5] = v49;
    v50 = data[7];
    v65[6] = data[6];
    v65[7] = v50;
    v51 = data[1];
    v65[0] = *data;
    v65[1] = v51;
    v52 = data[3];
    v65[2] = data[2];
    v65[3] = v52;
  }

  v53 = 0;
  *buf = 0u;
  v63[0] = 0u;
  v54 = 1;
  __asm { FMOV            V1.2S, #-10.0 }

  v56 = -_D1;
  do
  {
    *&v20 = *(v65 + v53);
    v57 = vmla_f32(*(&unk_23EE28A94 + v53), *(&unk_23EE28B54 + v53), *&v20);
    DWORD2(v20) = *(v65 + v53 + 8);
    v58 = &buf[v54 * 16];
    *v58 = v20;
    v63[v54] = v20;
    *(v58 + 2) = (*(&unk_23EE28A94 + v53 + 8) + (*(&v20 + 2) * *(&unk_23EE28B54 + v53 + 8))) * 10.0;
    *v58 = vmul_f32(v57, *&v56);
    v53 += 12;
    ++v54;
  }

  while (v53 != 192);
  [(ABPK3DLifting *)self _adjustBoneLength:buf, COERCE_DOUBLE(COERCE_UNSIGNED_INT(10.0)), v63[0]];
  [(ABPK3DLifting *)self _transformRelativeToHip:buf count:17];
  v59 = [[ABPK3DLiftingResult alloc] initWithJoints:buf numberOfJoints:17 rawNetworkOutputs:v63 referenceDetectionResult:dataCopy];
  liftingResult = self->_liftingResult;
  self->_liftingResult = v59;

  [(ABPK3DLifting *)self _endPostProcessDataSignpostWithTimestamp:timestamp];
  v45 = 0;
LABEL_18:

  v61 = *MEMORY[0x277D85DE8];
  return v45;
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

- (void)_adjustBoneLength:(ABPK3DLifting *)self
{
  v3 = v2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Adjust bone length ", buf, 2u);
  }

  memcpy(buf, v3, sizeof(buf));
  v6 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 0;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: _abpkLiftingSkeletonDefinition once init ", v32, 2u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  *v32 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [(ABPKSkeletonDefinition *)self->_abpkLiftingSkeletonDefinition getChildrenIndices:0];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        intValue = [*(*(&v28 + 1) + 8 * v10) intValue];
        std::deque<std::pair<int,int>>::push_back(v32, &intValue);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v8);
  }

  for (i = *(&v34 + 1); *(&v34 + 1); i = *(&v34 + 1))
  {
    v12 = (*(*&v32[8] + ((v34 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v34 & 0x1FF));
    v14 = *v12;
    v13 = v12[1];
    *&v34 = v34 + 1;
    *(&v34 + 1) = i - 1;
    if (v34 >= 0x400)
    {
      operator delete(**&v32[8]);
      *&v32[8] += 8;
      *&v34 = v34 - 512;
    }

    v15 = vsubq_f32(v3[v14], v3[v13]);
    v16 = vmulq_f32(v15, v15);
    v16.f32[0] = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
    buf[v14] = vmlaq_n_f32(buf[v13], vdivq_f32(v15, vdupq_lane_s32(*v16.f32, 0)), [ABPK3DLifting _adjustBoneLength:]::bones[v14] * 1000.0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [(ABPKSkeletonDefinition *)self->_abpkLiftingSkeletonDefinition getChildrenIndices:v14, 0];
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v18)
    {
      v19 = *v24;
      v20 = v14 << 32;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v17);
          }

          intValue = v20 | [*(*(&v23 + 1) + 8 * v21) intValue];
          std::deque<std::pair<int,int>>::push_back(v32, &intValue);
          ++v21;
        }

        while (v18 != v21);
        v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v18);
    }
  }

  memcpy(v3, buf, 0x110uLL);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](v32);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_transformRelativeToHip:(ABPK3DLifting *)self count:(SEL)count
{
  if (v3)
  {
    v4 = *v2[14].f32;
    v5 = vmulq_f32(v4, v4);
    *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
    v7 = vrsqrte_f32(v6);
    v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
    v9 = vmulq_n_f32(v4, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]);
    v10 = *v2[8].f32;
    v11 = vmulq_f32(v10, v10);
    *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
    *v11.f32 = vrsqrte_f32(v12);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
    v13 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    v14 = vmulq_f32(v9, v13);
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    v15 = vmlsq_lane_f32(v9, v13, *v14.f32, 0);
    v16 = vmulq_f32(v15, v15);
    *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    *v16.f32 = vrsqrte_f32(v17);
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
    v18 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v13)), v18, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
    v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
    v21 = vmulq_f32(v19, v19);
    v5.f32[0] = v21.f32[1] + (v21.f32[2] + v21.f32[0]);
    *v21.f32 = vrsqrte_f32(v5.u32[0]);
    *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v21.f32, *v21.f32)));
    v22 = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v21.f32, *v21.f32))).f32[0]);
    v23 = vzip1q_s32(v13, v18);
    v23.i32[2] = v22.i32[0];
    v24 = vzip2q_s32(vzip1q_s32(v13, v22), vdupq_lane_s32(*v18.f32, 1));
    v25 = vzip2q_s32(v13, v18);
    v25.i32[2] = v22.i32[2];
    do
    {
      *v2->f32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*v2->f32)), v24, *v2, 1), v25, *v2->f32, 2);
      v2 += 2;
      --v3;
    }

    while (v3);
  }
}

- (id).cxx_construct
{
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  return self;
}

@end