@interface MPSBenchmarkLoopCommandBuffer
- (MPSBenchmarkLoopCommandBuffer)initWithCommandBuffer:(id)a3;
- (id)blitCommandEncoder;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MPSBenchmarkLoopCommandBuffer

- (MPSBenchmarkLoopCommandBuffer)initWithCommandBuffer:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSBenchmarkLoopCommandBuffer;
  return [(MPSCommandBuffer *)&v4 initWithCommandBuffer:a3];
}

- (id)computeCommandEncoder
{
  v20.receiver = self;
  v20.super_class = MPSBenchmarkLoopCommandBuffer;
  v3 = [(MPSBenchmarkLoopCommandBuffer *)&v20 computeCommandEncoder];
  objc_msgSend_startComputeEncoder(self->_currentWorkloadCapture, v4, v5, v6, v7);
  v8 = [MPSBenchmarkLoopComputeCommandEncoder alloc];
  objc_msgSend_device(self, v9, v10, v11, v12);
  MPSDevice = MPSDevice::GetMPSDevice();
  v15 = objc_msgSend_initWithMPSCommandBuffer_commandEncoder_mpsDevice_(v8, v14, self, v3, MPSDevice);
  objc_msgSend_setCurrentWorkloadCapture_(v15, v16, self->_currentWorkloadCapture, v17, v18);
  return v15;
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  v21.receiver = self;
  v21.super_class = MPSBenchmarkLoopCommandBuffer;
  v4 = [(MPSCommandBuffer *)&v21 computeCommandEncoderWithDispatchType:a3];
  objc_msgSend_startComputeEncoder(self->_currentWorkloadCapture, v5, v6, v7, v8);
  v9 = [MPSBenchmarkLoopComputeCommandEncoder alloc];
  objc_msgSend_device(self, v10, v11, v12, v13);
  MPSDevice = MPSDevice::GetMPSDevice();
  v16 = objc_msgSend_initWithMPSCommandBuffer_commandEncoder_mpsDevice_(v9, v15, self, v4, MPSDevice);
  objc_msgSend_setCurrentWorkloadCapture_(v16, v17, self->_currentWorkloadCapture, v18, v19);
  return v16;
}

- (id)blitCommandEncoder
{
  v17.receiver = self;
  v17.super_class = MPSBenchmarkLoopCommandBuffer;
  v3 = [(MPSBenchmarkLoopCommandBuffer *)&v17 blitCommandEncoder];
  v4 = [MPSBenchmarkLoopBlitCommandEncoder alloc];
  v8 = objc_msgSend_initWithBlitEncoder_(v4, v5, v3, v6, v7);
  objc_msgSend_startBlitEncoder(self->_currentWorkloadCapture, v9, v10, v11, v12);
  objc_msgSend_setCurrentWorkloadCapture_(v8, v13, self->_currentWorkloadCapture, v14, v15);
  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSBenchmarkLoopCommandBuffer;
  [(MPSCommandBuffer *)&v2 dealloc];
}

@end