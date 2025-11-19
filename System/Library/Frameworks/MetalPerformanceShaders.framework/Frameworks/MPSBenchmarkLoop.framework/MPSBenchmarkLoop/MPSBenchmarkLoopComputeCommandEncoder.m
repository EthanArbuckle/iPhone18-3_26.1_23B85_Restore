@interface MPSBenchmarkLoopComputeCommandEncoder
- (BOOL)respondsToSelector:(SEL)a3;
- (MPSBenchmarkLoopComputeCommandEncoder)initWithMPSCommandBuffer:(id)a3 commandEncoder:(id)a4 mpsDevice:(void *)a5;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)endEncoding;
- (void)setComputePipelineState:(id)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
@end

@implementation MPSBenchmarkLoopComputeCommandEncoder

- (MPSBenchmarkLoopComputeCommandEncoder)initWithMPSCommandBuffer:(id)a3 commandEncoder:(id)a4 mpsDevice:(void *)a5
{
  v10.receiver = self;
  v10.super_class = MPSBenchmarkLoopComputeCommandEncoder;
  v8 = [(MPSBenchmarkLoopComputeCommandEncoder *)&v10 init];
  if (v8)
  {
    v8->_owningMPSCommandBuffer = a3;
    v8->_originalCommandEncoder = a4;
    v8->_mpsDevice = a5;
  }

  return v8;
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  objc_msgSend_addThreadgroupMemoryLength_(self->_currentWorkloadCapture->_currentEncoderInfo, a2, a3, a4, v4);
  originalCommandEncoder = self->_originalCommandEncoder;

  MEMORY[0x2821F9670](originalCommandEncoder, sel_setThreadgroupMemoryLength_atIndex_, a3, a4, v8);
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  originalCommandEncoder = self->_originalCommandEncoder;
  v7 = *a3;
  v6 = *a4;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(originalCommandEncoder, a2, &v7, &v6, v4);
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  currentEncoderInfo = self->_currentWorkloadCapture->_currentEncoderInfo;
  v13 = *a3;
  v12 = *a4;
  objc_msgSend_addDispatchWithThreadgroupsPerGrid_threadsPerThreadgroup_(currentEncoderInfo, a2, &v13, &v12, v4);
  ++self->_currentWorkloadCapture->_numberOfDispatches;
  originalCommandEncoder = self->_originalCommandEncoder;
  v13 = *a3;
  v12 = *a4;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(originalCommandEncoder, v10, &v13, &v12, v11);
}

- (void)setComputePipelineState:(id)a3
{
  objc_msgSend_addComputePipelineState_(self->_currentWorkloadCapture->_currentEncoderInfo, a2, a3, v3, v4);
  originalCommandEncoder = self->_originalCommandEncoder;

  MEMORY[0x2821F9670](originalCommandEncoder, sel_setComputePipelineState_, a3, v7, v8);
}

- (void)endEncoding
{
  currentWorkloadCapture = self->_currentWorkloadCapture;
  v7 = objc_msgSend_label(self, a2, v2, v3, v4);
  objc_msgSend_endComputeEncoderWithLabel_(currentWorkloadCapture, v8, v7, v9, v10);
  originalCommandEncoder = self->_originalCommandEncoder;

  MEMORY[0x2821F9670](originalCommandEncoder, sel_endEncoding, v11, v12, v13);
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  originalCommandEncoder = self->_originalCommandEncoder;
  if (objc_opt_respondsToSelector())
  {
    return self->_originalCommandEncoder;
  }

  else
  {
    return 0;
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  originalCommandEncoder = self->_originalCommandEncoder;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = MPSBenchmarkLoopComputeCommandEncoder;
  return [(MPSBenchmarkLoopComputeCommandEncoder *)&v7 respondsToSelector:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSBenchmarkLoopComputeCommandEncoder;
  [(MPSBenchmarkLoopComputeCommandEncoder *)&v3 dealloc];
}

@end