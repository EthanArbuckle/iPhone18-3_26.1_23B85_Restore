@interface GeneralStatistics
- (GeneralStatistics)init;
- (void)dealloc;
- (void)printGeneralStatistics;
@end

@implementation GeneralStatistics

- (GeneralStatistics)init
{
  v4.receiver = self;
  v4.super_class = GeneralStatistics;
  v2 = [(GeneralStatistics *)&v4 init];
  v2->_InitTime = objc_opt_new();
  v2->_PreWarmingTime = objc_opt_new();
  v2->_EncodeTime = objc_opt_new();
  v2->_EncodeCycles = objc_opt_new();
  v2->_QueueTime = objc_opt_new();
  v2->_GPUWaitTime = objc_opt_new();
  v2->_PrevCommandBufferWaitTime = objc_opt_new();
  v2->_WallClockTime = objc_opt_new();
  v2->_GPUTime = objc_opt_new();
  v2->_GPUMemory = objc_opt_new();
  v2->_SystemResidentMemory = objc_opt_new();
  return v2;
}

- (void)printGeneralStatistics
{
  puts("\n==============================================================================\n");
  if ((objc_msgSend_hasConverged(self->_WallClockTime, v3, v4, v5, v6) & 1) == 0)
  {
    fflush(*MEMORY[0x277D85E08]);
    NSLog(&cfstr_DidNotCovergeT.isa, self->_numberOfCommandBuffers, self->_numberOfEncodesPerCommandBuffer);
  }

  v11 = off_2814650E0;
  objc_msgSend_mean(self->_InitTime, v7, v8, v9, v10);
  v72 = v12 * 1000.0;
  objc_msgSend_mean(self->_PreWarmingTime, v13, v14, v15, v16);
  v71 = v17 * 1000.0;
  objc_msgSend_mean(self->_EncodeTime, v18, v19, v20, v21);
  v70 = v22 * 1000.0;
  objc_msgSend_mean(self->_EncodeCycles, v23, v24, v25, v26);
  v28 = v27;
  objc_msgSend_mean(self->_QueueTime, v29, v30, v31, v32);
  v34 = v33 * 1000.0;
  objc_msgSend_mean(self->_GPUWaitTime, v35, v36, v37, v38);
  v40 = v39 * 1000.0;
  objc_msgSend_mean(self->_PrevCommandBufferWaitTime, v41, v42, v43, v44);
  v46 = v45 * 1000.0;
  objc_msgSend_mean(self->_GPUTime, v47, v48, v49, v50);
  v52 = v51 * 1000.0;
  objc_msgSend_mean(self->_WallClockTime, v53, v54, v55, v56);
  v58 = v57 * 1000.0;
  objc_msgSend_max(self->_GPUMemory, v59, v60, v61, v62);
  v64 = v63 * 0.000000953674316;
  objc_msgSend_max(self->_SystemResidentMemory, v65, v66, v67, v68);
  v11("\tInit Time %f ms \n\tPrewarming Time %f ms \n\tEncode Time %f ms \n\tEncode Cycles %f \n\tQueue Time %f ms \n\tGPU Wait Time %f ms \n\tPrev CommandBuffer Wait Time %f ms \n\tGPU Time %f ms \n\tWall Clock Time %f ms \n\tGPU Memory = %f MB\n\tSystem Resident Memory = %f MB\nfor: \n\touter_iterations = %lu \n\tinner_iterations = %lu\n", *&v72, *&v71, *&v70, v28, *&v34, *&v40, *&v46, *&v52, *&v58, *&v64, v69 * 0.000000953674316, self->_numberOfCommandBuffers, self->_numberOfEncodesPerCommandBuffer);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GeneralStatistics;
  [(GeneralStatistics *)&v3 dealloc];
}

@end