@interface MPSBenchmarkLoopComputeCommandEncoder
- (BOOL)respondsToSelector:(SEL)selector;
- (MPSBenchmarkLoopComputeCommandEncoder)initWithMPSCommandBuffer:(id)buffer commandEncoder:(id)encoder mpsDevice:(void *)device;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)endEncoding;
- (void)setComputePipelineState:(id)state;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
@end

@implementation MPSBenchmarkLoopComputeCommandEncoder

- (MPSBenchmarkLoopComputeCommandEncoder)initWithMPSCommandBuffer:(id)buffer commandEncoder:(id)encoder mpsDevice:(void *)device
{
  v10.receiver = self;
  v10.super_class = MPSBenchmarkLoopComputeCommandEncoder;
  v8 = [(MPSBenchmarkLoopComputeCommandEncoder *)&v10 init];
  if (v8)
  {
    v8->_owningMPSCommandBuffer = buffer;
    v8->_originalCommandEncoder = encoder;
    v8->_mpsDevice = device;
  }

  return v8;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  objc_msgSend_addThreadgroupMemoryLength_(self->_currentWorkloadCapture->_currentEncoderInfo, a2, length, index, v4);
  originalCommandEncoder = self->_originalCommandEncoder;

  MEMORY[0x2821F9670](originalCommandEncoder, sel_setThreadgroupMemoryLength_atIndex_, length, index, v8);
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  originalCommandEncoder = self->_originalCommandEncoder;
  v7 = *threads;
  v6 = *threadgroup;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(originalCommandEncoder, a2, &v7, &v6, v4);
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  currentEncoderInfo = self->_currentWorkloadCapture->_currentEncoderInfo;
  v13 = *threadgroups;
  v12 = *threadgroup;
  objc_msgSend_addDispatchWithThreadgroupsPerGrid_threadsPerThreadgroup_(currentEncoderInfo, a2, &v13, &v12, v4);
  ++self->_currentWorkloadCapture->_numberOfDispatches;
  originalCommandEncoder = self->_originalCommandEncoder;
  v13 = *threadgroups;
  v12 = *threadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(originalCommandEncoder, v10, &v13, &v12, v11);
}

- (void)setComputePipelineState:(id)state
{
  objc_msgSend_addComputePipelineState_(self->_currentWorkloadCapture->_currentEncoderInfo, a2, state, v3, v4);
  originalCommandEncoder = self->_originalCommandEncoder;

  MEMORY[0x2821F9670](originalCommandEncoder, sel_setComputePipelineState_, state, v7, v8);
}

- (void)endEncoding
{
  currentWorkloadCapture = self->_currentWorkloadCapture;
  v7 = objc_msgSend_label(self, a2, v2, v3, v4);
  objc_msgSend_endComputeEncoderWithLabel_(currentWorkloadCapture, v8, v7, v9, v10);
  originalCommandEncoder = self->_originalCommandEncoder;

  MEMORY[0x2821F9670](originalCommandEncoder, sel_endEncoding, v11, v12, v13);
}

- (id)forwardingTargetForSelector:(SEL)selector
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

- (BOOL)respondsToSelector:(SEL)selector
{
  originalCommandEncoder = self->_originalCommandEncoder;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = MPSBenchmarkLoopComputeCommandEncoder;
  return [(MPSBenchmarkLoopComputeCommandEncoder *)&v7 respondsToSelector:selector];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSBenchmarkLoopComputeCommandEncoder;
  [(MPSBenchmarkLoopComputeCommandEncoder *)&v3 dealloc];
}

@end