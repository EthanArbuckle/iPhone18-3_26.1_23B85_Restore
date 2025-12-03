@interface MPSTemporaryVector
+ (MPSTemporaryVector)temporaryVectorWithCommandBuffer:(id)commandBuffer descriptor:(MPSVectorDescriptor *)descriptor;
+ (void)prefetchStorageWithCommandBuffer:(id)commandBuffer descriptorList:(NSArray *)descriptorList;
- (MPSTemporaryVector)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)setReadCount:(NSUInteger)readCount;
@end

@implementation MPSTemporaryVector

- (MPSTemporaryVector)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor
{
  if (!buffer)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (!descriptor)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  objc_msgSend_vectorBytes(descriptor, a2, buffer, descriptor, v4);
  objc_msgSend_length(descriptor, v8, v9, v10, v11);
  objc_msgSend_dataType(descriptor, v12, v13, v14, v15);
  v20 = objc_msgSend_vectorBytes(descriptor, v16, v17, v18, v19);
  v25 = objc_msgSend_length(descriptor, v21, v22, v23, v24);
  if (v20 < v25 * (objc_msgSend_dataType(descriptor, v26, v27, v28, v29) >> 3))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  objc_msgSend_vectorBytes(descriptor, v30, v31, v32, v33);
  objc_msgSend_dataType(descriptor, v34, v35, v36, v37);
  v42 = objc_msgSend_vectorBytes(descriptor, v38, v39, v40, v41);
  if (v42 % (objc_msgSend_dataType(descriptor, v43, v44, v45, v46) >> 3))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

LABEL_20:
    v67 = objc_opt_class();
    NSStringFromClass(v67);
    goto LABEL_11;
  }

  v51 = objc_msgSend_device(buffer, v47, v48, v49, v50);
  MPSDevice = MPSDevice::GetMPSDevice(v51);
  if (!MPSDevice)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_12:

      return 0;
    }

    v57 = objc_opt_class();
    NSStringFromClass(v57);
    v62 = objc_msgSend_device(buffer, v58, v59, v60, v61);
    objc_msgSend_name(v62, v63, v64, v65, v66);
LABEL_11:
    MTLReportFailure();
    goto LABEL_12;
  }

  v68.receiver = self;
  v68.super_class = MPSTemporaryVector;
  result = [(MPSVector *)&v68 initPrivateWithDescriptor:descriptor device:MPSDevice];
  if (result)
  {
    v56 = result;
    MPSAutoBuffer::InitDeferredUsingTextureCache(&result->super._buffer, (result->super._vectorBytes * result->super._vectors), buffer, v54, v55);
    result = v56;
    v56->super._offset = 0;
    v56->_readCount = 1;
  }

  return result;
}

+ (MPSTemporaryVector)temporaryVectorWithCommandBuffer:(id)commandBuffer descriptor:(MPSVectorDescriptor *)descriptor
{
  v6 = [MPSTemporaryVector alloc];
  result = objc_msgSend_initWithCommandBuffer_descriptor_(v6, v7, commandBuffer, descriptor, v8);
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

+ (void)prefetchStorageWithCommandBuffer:(id)commandBuffer descriptorList:(NSArray *)descriptorList
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
        v21 = *(i + 8) * (*(i + 32) >> 3);
        if (v21 < v12)
        {
          if (v21 <= v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = *(i + 8) * (*(i + 32) >> 3);
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
            v13 = *(i + 8) * (*(i + 32) >> 3);
          }
        }

        else
        {
          v15 = v13;
          v13 = v12;
          v12 = *(i + 8) * (*(i + 32) >> 3);
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