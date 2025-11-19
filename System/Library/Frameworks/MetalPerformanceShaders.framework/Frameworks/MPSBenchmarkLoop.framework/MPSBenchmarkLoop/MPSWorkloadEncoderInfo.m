@interface MPSWorkloadEncoderInfo
- (MPSWorkloadEncoderInfo)init;
- (id)currentDispatch;
- (void)addComputePipelineState:(id)a3;
- (void)addDispatchWithThreadgroupsPerGrid:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)addThreadgroupMemoryLength:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MPSWorkloadEncoderInfo

- (MPSWorkloadEncoderInfo)init
{
  v9.receiver = self;
  v9.super_class = MPSWorkloadEncoderInfo;
  v2 = [(MPSWorkloadEncoderInfo *)&v9 init];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = objc_msgSend_initWithArray_(v3, v4, MEMORY[0x277CBEBF8], v5, v6);
  v2->_encoderLabel = 0;
  v2->_dispatches = v7;
  v2->_currentComputePipelineStateLabel = 0;
  return v2;
}

- (id)currentDispatch
{
  dispatches = self->_dispatches;
  v7 = objc_msgSend_count(dispatches, a2, v2, v3, v4) - 1;

  return objc_msgSend_objectAtIndexedSubscript_(dispatches, v6, v7, v8, v9);
}

- (void)addComputePipelineState:(id)a3
{
  self->_currentComputePipelineStateLabel = objc_msgSend_label(a3, a2, a3, v3, v4);
  v10 = objc_msgSend_newDispatchInfo(MPSWorkloadDispatchInfo, v6, v7, v8, v9);
  objc_msgSend_setComputePipelineStateLabel_(v10, v11, self->_currentComputePipelineStateLabel, v12, v13);
  dispatches = self->_dispatches;

  objc_msgSend_addObject_(dispatches, v14, v10, v15, v16);
}

- (void)addDispatchWithThreadgroupsPerGrid:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v7 = objc_msgSend_currentDispatch(self, a2, a3, a4, v4);
  v14 = *a3;
  objc_msgSend_setThreadgroupsPerGrid_(v7, v8, &v14, v9, v10);
  v14 = *a4;
  objc_msgSend_setThreadsPerThreadgroup_(v7, v11, &v14, v12, v13);
}

- (void)addThreadgroupMemoryLength:(unint64_t)a3
{
  v6 = objc_msgSend_currentDispatch(self, a2, a3, v3, v4);
  v11 = objc_msgSend_threadsgroupMemoryLength(v6, v7, v8, v9, v10) + a3;

  MEMORY[0x2821F9670](v6, sel_setThreadsgroupMemoryLength_, v11, v12, v13);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSWorkloadEncoderInfo;
  [(MPSWorkloadEncoderInfo *)&v3 dealloc];
}

@end