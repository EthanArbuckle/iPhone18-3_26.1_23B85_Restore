@interface MPSWorkloadInfoCapture
- (MPSWorkloadInfoCapture)captureWithCommandQueue:(id)a3 workload:(id)a4 completionHandler:(id)a5 scheduleHanlder:(id)a6;
- (MPSWorkloadInfoCapture)init;
- (void)dealloc;
- (void)endBlitEncoderWithLabel:(id)a3;
- (void)endComputeEncoderWithLabel:(id)a3;
- (void)print;
- (void)startBlitEncoder;
- (void)startComputeEncoder;
@end

@implementation MPSWorkloadInfoCapture

- (MPSWorkloadInfoCapture)init
{
  v18.receiver = self;
  v18.super_class = MPSWorkloadInfoCapture;
  v2 = [(MPSWorkloadInfoCapture *)&v18 init];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CBEBF8];
  v2->_allEncoders = objc_msgSend_initWithArray_(v3, v5, MEMORY[0x277CBEBF8], v6, v7);
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v2->_computeEncoders = objc_msgSend_initWithArray_(v8, v9, v4, v10, v11);
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithArray_(v12, v13, v4, v14, v15);
  v2->_numberOfDispatches = 0;
  v2->_currentEncoderInfo = 0;
  v2->_blitEncoders = v16;
  return v2;
}

- (MPSWorkloadInfoCapture)captureWithCommandQueue:(id)a3 workload:(id)a4 completionHandler:(id)a5 scheduleHanlder:(id)a6
{
  v10 = objc_msgSend_commandBuffer(a3, a2, a3, a4, a5);
  objc_msgSend_setProfilingEnabled_(v10, v11, 1, v12, v13);
  v14 = [MPSBenchmarkLoopCommandBuffer alloc];
  v18 = objc_msgSend_initWithCommandBuffer_(v14, v15, v10, v16, v17);
  objc_msgSend_setCurrentWorkloadCapture_(v18, v19, self, v20, v21);
  if (a6)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2399126AC;
    v43[3] = &unk_278AA8CD0;
    v43[4] = a6;
    objc_msgSend_addScheduledHandler_(v10, v22, v43, v23, v24);
  }

  objc_msgSend_encodeToCommandBuffer_withResources_(a4, v22, v18, 0, v24);
  if (a5)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2399126BC;
    v42[3] = &unk_278AA8CD0;
    v42[4] = a5;
    objc_msgSend_addCompletedHandler_(v18, v25, v42, v27, v28);
  }

  objc_msgSend_commit(v18, v25, v26, v27, v28);
  objc_msgSend_waitUntilCompleted(v18, v29, v30, v31, v32);
  objc_msgSend_GPUEndTime(v18, v33, v34, v35, v36);
  objc_msgSend_GPUStartTime(v10, v37, v38, v39, v40);

  return result;
}

- (void)startComputeEncoder
{
  if (!self->_currentEncoderInfo)
  {
    self->_currentEncoderInfo = objc_msgSend_newEncoderInfo(MPSWorkloadEncoderInfo, a2, v2, v3, v4);
  }
}

- (void)endComputeEncoderWithLabel:(id)a3
{
  currentEncoderInfo = self->_currentEncoderInfo;
  if (currentEncoderInfo)
  {
    objc_msgSend_setEncoderLabel_(currentEncoderInfo, a2, a3, v3, v4);
    objc_msgSend_addObject_(self->_allEncoders, v7, self->_currentEncoderInfo, v8, v9);
    objc_msgSend_addObject_(self->_computeEncoders, v10, self->_currentEncoderInfo, v11, v12);

    self->_currentEncoderInfo = 0;
  }
}

- (void)startBlitEncoder
{
  if (!self->_currentEncoderInfo)
  {
    self->_currentEncoderInfo = objc_msgSend_newEncoderInfo(MPSWorkloadEncoderInfo, a2, v2, v3, v4);
  }
}

- (void)endBlitEncoderWithLabel:(id)a3
{
  currentEncoderInfo = self->_currentEncoderInfo;
  if (currentEncoderInfo)
  {
    objc_msgSend_setEncoderLabel_(currentEncoderInfo, a2, a3, v3, v4);
    objc_msgSend_addObject_(self->_allEncoders, v7, self->_currentEncoderInfo, v8, v9);
    objc_msgSend_addObject_(self->_blitEncoders, v10, self->_currentEncoderInfo, v11, v12);

    self->_currentEncoderInfo = 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSWorkloadInfoCapture;
  [(MPSWorkloadInfoCapture *)&v3 dealloc];
}

- (void)print
{
  allEncoders = self->_allEncoders;
  if (objc_msgSend_count(allEncoders, a2, v2, v3, v4))
  {
    v9 = 0;
    v87 = allEncoders;
    do
    {
      v88 = v9;
      v10 = objc_msgSend_objectAtIndexedSubscript_(allEncoders, v6, v9, v7, v8);
      if (v10)
      {
        v15 = off_2814650E0;
        v16 = v10;
        v17 = objc_msgSend_encoderLabel(v10, v11, v12, v13, v14);
        v22 = objc_msgSend_UTF8String(v17, v18, v19, v20, v21);
        v15("encoderName: %s\n", v22);
        v27 = objc_msgSend_dispatches(v16, v23, v24, v25, v26);
        if (objc_msgSend_count(v27, v28, v29, v30, v31))
        {
          v32 = 0;
          for (i = objc_msgSend_objectAtIndexedSubscript_(v27, v11, 0, v13, v14); ; i = objc_msgSend_objectAtIndexedSubscript_(v27, v11, v32, v13, v14))
          {
            if (i)
            {
              v38 = off_2814650E0;
              v39 = i;
              v40 = objc_msgSend_computePipelineStateLabel(i, v34, v35, v36, v37);
              v45 = objc_msgSend_UTF8String(v40, v41, v42, v43, v44);
              v38("\tdispatch %lu : computePipelineStateLabel: %s\n", v32, v45);
              v89 = off_2814650E0;
              objc_msgSend_threadgroupsPerGrid(v39, v46, v47, v48, v49);
              objc_msgSend_threadgroupsPerGrid(v39, v50, v51, v52, v53);
              objc_msgSend_threadgroupsPerGrid(v39, v54, v55, v56, v57);
              objc_msgSend_threadsPerThreadgroup(v39, v58, v59, v60, v61);
              objc_msgSend_threadsPerThreadgroup(v39, v62, v63, v64, v65);
              objc_msgSend_threadsPerThreadgroup(v39, v66, v67, v68, v69);
              objc_msgSend_threadsPerThreadgroup(v39, v70, v71, v72, v73);
              objc_msgSend_threadsPerThreadgroup(v39, v74, v75, v76, v77);
              objc_msgSend_threadsPerThreadgroup(v39, v78, v79, v80, v81);
              v86 = objc_msgSend_threadsgroupMemoryLength(v39, v82, v83, v84, v85);
              v89("\tthreadgroupsPerGrid {%lu x %lu x %lu} threadsPerThreadgroup {%lu x %lu x %lu} totalThreads: %lu threadgroupMemoryLength: %lu\n", v98, v97, v96, v95, v94, v93, v91 * v92 * v90, v86);
            }

            if (++v32 >= objc_msgSend_count(v27, v34, v35, v36, v37))
            {
              break;
            }
          }
        }
      }

      allEncoders = v87;
      ++v9;
    }

    while (v88 + 1 < objc_msgSend_count(v87, v11, v12, v13, v14));
  }
}

@end