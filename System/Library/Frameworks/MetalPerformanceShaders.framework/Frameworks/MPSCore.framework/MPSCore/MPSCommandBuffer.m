@interface MPSCommandBuffer
+ (MPSCommandBuffer)commandBufferFromCommandQueue:(id)commandQueue;
+ (MPSCommandBuffer)commandBufferWithCommandBuffer:(id)commandBuffer;
- (BOOL)respondsToSelector:(SEL)a3;
- (MPSCommandBuffer)initWithCommandBuffer:(id)commandBuffer;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (id)dispatchBufferWithOffset:(unint64_t *)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)heapProvider;
- (id)rootCommandBuffer;
- (void)commitAndContinue;
- (void)dealloc;
- (void)prefetchHeapForWorkloadSize:(size_t)size;
- (void)setHeapProvider:(id)heapProvider;
@end

@implementation MPSCommandBuffer

+ (MPSCommandBuffer)commandBufferFromCommandQueue:(id)commandQueue
{
  v5 = objc_msgSend_commandBuffer(commandQueue, a2, commandQueue, v3, v4);

  return MEMORY[0x2821F9670](MPSCommandBuffer, sel_commandBufferWithCommandBuffer_, v5, v6, v7);
}

+ (MPSCommandBuffer)commandBufferWithCommandBuffer:(id)commandBuffer
{
  v4 = [MPSCommandBuffer alloc];
  v8 = objc_msgSend_initWithCommandBuffer_(v4, v5, commandBuffer, v6, v7);

  return v8;
}

- (id)rootCommandBuffer
{
  commandBuffer = self->_commandBuffer;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return commandBuffer;
  }

  return objc_msgSend_rootCommandBuffer(commandBuffer, v3, v4, v5, v6);
}

- (MPSCommandBuffer)initWithCommandBuffer:(id)commandBuffer
{
  v13.receiver = self;
  v13.super_class = MPSCommandBuffer;
  v8 = [(MPSCommandBuffer *)&v13 init];
  if (!v8)
  {
    return v8;
  }

  v9 = objc_msgSend_device(commandBuffer, v4, v5, v6, v7);
  MPSDevice = MPSDevice::GetMPSDevice(v9);
  if (MPSDevice)
  {
    v8->_mpsDevice = MPSDevice;
    v11 = commandBuffer;
    v8->_predicate = 0;
    v8->_commandBuffer = v11;
    v8->_currentDispatchBuffer = 0;
    v8->_offsetToCurrentFree = 0;
    v8->_mpsCommandBufferDescriptor.producedValues = 0;
    v8->_mpsCommandBufferDescriptor.numberOfCommitsMade = 0;
    v8->_mpsCommandBufferDescriptor.encoderCount = 0;
    return v8;
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCommandBuffer;
  [(MPSCommandBuffer *)&v3 dealloc];
}

- (id)heapProvider
{
  v5 = objc_msgSend_rootCommandBuffer(self, a2, v2, v3, v4);

  return sub_22E35B9B8(v5, v6, v7, v8, v9);
}

- (void)setHeapProvider:(id)heapProvider
{
  v6 = objc_msgSend_rootCommandBuffer(self, a2, heapProvider, v3, v4);

  sub_22E35BAAC(v6, heapProvider, v7, v8, v9);
}

- (id)dispatchBufferWithOffset:(unint64_t *)a3
{
  os_unfair_lock_lock(&stru_27DA622C0);
  currentDispatchBuffer = self->_currentDispatchBuffer;
  if (!currentDispatchBuffer)
  {
LABEL_6:
    v13 = MPSGetTemporaryBufferFromCommandBufferCache(self->_commandBuffer, 0x3000, v6, v7, v8);
    v11 = 0;
    self->_currentDispatchBuffer = v13;
    self->_offsetToCurrentFree = 0;
    goto LABEL_7;
  }

  offsetToCurrentFree = self->_offsetToCurrentFree;
  if (offsetToCurrentFree + 12 >= objc_msgSend_length(currentDispatchBuffer, v5, v6, v7, v8))
  {
    v12 = self->_currentDispatchBuffer;
    if (v12)
    {
      MPSReturnTemporaryBufferToCommandBufferCache(self->_commandBuffer, v12, v6, v7, v8);
    }

    goto LABEL_6;
  }

  v11 = self->_offsetToCurrentFree;
LABEL_7:
  *a3 = v11;
  v14 = self->_currentDispatchBuffer;
  self->_offsetToCurrentFree += 12;
  os_unfair_lock_unlock(&stru_27DA622C0);
  return v14;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if (objc_opt_respondsToSelector())
  {
    return self->_commandBuffer;
  }

  else
  {
    return 0;
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MPSCommandBuffer;
  return [(MPSCommandBuffer *)&v6 respondsToSelector:a3];
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  result = objc_msgSend_computeCommandEncoderWithDispatchType_(self->_commandBuffer, a2, a3, v3, v4);
  if (self->_predicate)
  {
    mpsDevice = self->_mpsDevice;

    return MEMORY[0x2821F9670](MPSPredicatedCommandEncoder, sel_predicatedEncoderWithMPSCommandBuffer_commandEncoder_mpsDevice_, self, result, mpsDevice);
  }

  return result;
}

- (void)commitAndContinue
{
  v3 = objc_opt_respondsToSelector();
  commandBuffer = self->_commandBuffer;
  if (v3)
  {
    v8 = self->_commandBuffer;

    objc_msgSend_performSelector_(v8, commandBuffer, sel_commitAndContinue, v5, v6);
    return;
  }

  v45 = self->_commandBuffer;
  v9 = objc_msgSend_status(v45, commandBuffer, v4, v5, v6);
  if (v9 >= 2)
  {
    v43 = v9;
    if (MTLReportFailureTypeEnabled())
    {
      v44 = v43;
      MTLReportFailure();
    }
  }

  v10 = objc_autoreleasePoolPush();
  v15 = objc_msgSend_commandQueue(v45, v11, v12, v13, v14);
  if (objc_msgSend_retainedReferences(v45, v16, v17, v18, v19))
  {
    v28 = objc_msgSend_commandBuffer(v15, v20, v21, v22, v23);
    v29 = v45;
    if (v28)
    {
LABEL_8:
      v30 = objc_msgSend_label(v29, v24, v25, v26, v27, v44);
      if (v30)
      {
        v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%@+", v33, v34, v30);
        objc_msgSend_setLabel_(v28, v36, v35, v37, v38);
      }

      sub_22E35BBC4(v45, v28, v32, v33, v34);
      self->_commandBuffer = v28;
      objc_autoreleasePoolPop(v10);
      objc_msgSend_commit(v45, v39, v40, v41, v42);
      ++self->_mpsCommandBufferDescriptor.numberOfCommitsMade;

      return;
    }
  }

  else
  {
    v28 = objc_msgSend_commandBufferWithUnretainedReferences(v15, v20, v21, v22, v23);
    v29 = v45;
    if (v28)
    {
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v10);
}

- (void)prefetchHeapForWorkloadSize:(size_t)size
{
  v6 = objc_msgSend_rootCommandBuffer(self, a2, size, v3, v4);

  MPSAutoCache::PrefetchHeapSize(v6, size, v7, v8, v9);
}

@end