@interface MPSTemporaryMatrix
+ (MPSTemporaryMatrix)temporaryMatrixWithCommandBuffer:(id)commandBuffer matrixDescriptor:(MPSMatrixDescriptor *)matrixDescriptor;
+ (void)prefetchStorageWithCommandBuffer:(id)commandBuffer matrixDescriptorList:(NSArray *)descriptorList;
- (MPSTemporaryMatrix)initWithCommandBuffer:(id)buffer matrixDescriptor:(id)descriptor;
- (void)setReadCount:(NSUInteger)readCount;
@end

@implementation MPSTemporaryMatrix

- (MPSTemporaryMatrix)initWithCommandBuffer:(id)buffer matrixDescriptor:(id)descriptor
{
  if (!buffer)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!descriptor)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_10;
    }

LABEL_15:
    v26 = objc_opt_class();
    NSStringFromClass(v26);
    goto LABEL_9;
  }

  v8 = objc_msgSend_device(buffer, a2, buffer, descriptor, v4);
  MPSDevice = MPSDevice::GetMPSDevice(v8);
  if (!MPSDevice)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_10:

      return 0;
    }

    v15 = objc_opt_class();
    NSStringFromClass(v15);
    v20 = objc_msgSend_device(buffer, v16, v17, v18, v19);
    objc_msgSend_name(v20, v21, v22, v23, v24);
LABEL_9:
    MTLReportFailure();
    goto LABEL_10;
  }

  v27.receiver = self;
  v27.super_class = MPSTemporaryMatrix;
  result = [(MPSMatrix *)&v27 initPrivateWithDescriptor:descriptor device:MPSDevice];
  if (result)
  {
    matrices = result->super._matrices;
    if (matrices < 2)
    {
      matrices = result->super._rowBytes;
      rows = result->super._rows;
    }

    else
    {
      rows = result->super._matrixBytes;
    }

    v25 = result;
    MPSAutoBuffer::InitDeferredUsingTextureCache(&result->super._buffer, (rows * matrices), buffer, v11, v12);
    result = v25;
    v25->super._offset = 0;
    v25->_readCount = 1;
  }

  return result;
}

+ (MPSTemporaryMatrix)temporaryMatrixWithCommandBuffer:(id)commandBuffer matrixDescriptor:(MPSMatrixDescriptor *)matrixDescriptor
{
  v6 = [MPSTemporaryMatrix alloc];
  result = objc_msgSend_initWithCommandBuffer_matrixDescriptor_(v6, v7, commandBuffer, matrixDescriptor, v8);
  if (result)
  {
    v14 = result;
    v15 = objc_msgSend_userDictionary(commandBuffer, v10, v11, v12, v13);
    v19 = objc_msgSend_objectForKey_(v15, v16, @"_MPSCommandBufferRetainListKey", v17, v18);
    if (!v19)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v15, v24, v23, @"_MPSCommandBufferRetainListKey", v25);

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_22E2F18C0;
      v29[3] = &unk_2787BE7E8;
      v29[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(commandBuffer, v26, v29, v27, v28);
      v19 = v23;
    }

    objc_msgSend_addObject_(v19, v20, v14, v21, v22);
    return v14;
  }

  return result;
}

- (void)setReadCount:(NSUInteger)readCount
{
  v3 = self->_readCount;
  if (v3 != readCount)
  {
    if (!v3)
    {
      selfCopy = self;
      v6 = readCount;
      v7 = MTLReportFailureTypeEnabled();
      readCount = v6;
      v8 = v7;
      self = selfCopy;
      if (v8)
      {
        MTLReportFailure();
        readCount = v6;
        self = selfCopy;
      }
    }

    self->_readCount = readCount;
    if (!readCount)
    {
      p_buffer = &self->super._buffer;

      MPSAutoBuffer::ReleaseTemporaryBuffer(p_buffer);
    }
  }
}

+ (void)prefetchStorageWithCommandBuffer:(id)commandBuffer matrixDescriptorList:(NSArray *)descriptorList
{
  v7 = objc_msgSend_count(descriptorList, a2, commandBuffer, descriptorList, v4);
  if (v7 >= 4)
  {
    v11 = v7;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    for (i = objc_msgSend_objectAtIndexedSubscript_(descriptorList, v8, 0, v9, v10); ; i = objc_msgSend_objectAtIndexedSubscript_(descriptorList, v17, v14, v18, v19))
    {
      if (i)
      {
        v21 = *(i + 8) * *(i + 32);
        if (v21 < v12)
        {
          if (v21 <= v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = *(i + 8) * *(i + 32);
          }

          if (v21 >= v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = v20;
          }

          if (v21 > v13)
          {
            v13 = *(i + 8) * *(i + 32);
          }
        }

        else
        {
          v15 = v13;
          v13 = v12;
          v12 = *(i + 8) * *(i + 32);
        }
      }

      if (v11 == ++v14)
      {
        break;
      }
    }

    MPSAutoCache::WarmAllocations(commandBuffer, v12, v13, v15, v19);
  }
}

@end