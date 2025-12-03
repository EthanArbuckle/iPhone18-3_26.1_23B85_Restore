@interface MPSImageDefaultAllocator
- (MPSImageDefaultAllocator)init;
- (MPSImageDefaultAllocator)initWithCoder:(id)coder;
- (id)imageBatchForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel count:(unint64_t)count;
- (id)imageForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel;
- (void)dealloc;
@end

@implementation MPSImageDefaultAllocator

- (MPSImageDefaultAllocator)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = MPSImageDefaultAllocator;
  v3 = [(MPSImageDefaultAllocator *)&v13 init];
  if (!v3)
  {
    return v3;
  }

  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v3, v5, v4, v6, v7))
  {
    v3->_dealloc_ok = 1;

    return objc_msgSend_defaultAllocator(MPSImage, v8, v9, v10, v11);
  }

  v3->_dealloc_ok = 0;
  return v3;
}

- (id)imageForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel
{
  v7 = [MPSImage alloc];
  v12 = objc_msgSend_device(buffer, v8, v9, v10, v11);
  v15 = objc_msgSend_initWithDevice_imageDescriptor_(v7, v13, v12, descriptor, v14);
  v16 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22E35E890;
  v21[3] = &unk_2787BE7E8;
  v21[4] = v15;
  objc_msgSend_addCompletedHandler_(buffer, v17, v21, v18, v19);
  return v15;
}

- (id)imageBatchForCommandBuffer:(id)buffer imageDescriptor:(id)descriptor kernel:(id)kernel count:(unint64_t)count
{
  v58 = *MEMORY[0x277D85DE8];
  if (count < 0x101)
  {
    v16 = v57;
    bzero(v57, 8 * count);
    v21 = (objc_msgSend_featureChannels(descriptor, v27, v28, v29, v30) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = 0;
    if (objc_msgSend_featureChannelsLayout(descriptor, v17, v18, v19, v20) != 1)
    {
LABEL_19:
      if (count)
      {
        v52 = v16;
        countCopy = count;
        do
        {
          *v52++ = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self, v23, buffer, descriptor, kernel);
          --countCopy;
        }

        while (countCopy);
      }

      v32 = 0;
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  result = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  v16 = result;
  if (!result)
  {
    return result;
  }

  v21 = (objc_msgSend_featureChannels(descriptor, v12, v13, v14, v15) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (!v21)
  {
    goto LABEL_7;
  }

LABEL_4:
  v22 = 0x2000 / v21;
  if (objc_msgSend_featureChannelsLayout(descriptor, v17, v18, v19, v20) != 1)
  {
    goto LABEL_19;
  }

LABEL_8:
  v31 = objc_msgSend_numberOfImages(descriptor, v23, v24, v25, v26);
  if (v22 == 1 || v31 >= 2)
  {
    goto LABEL_19;
  }

  v32 = objc_opt_new();
  v36 = objc_msgSend_copyWithZone_(descriptor, v33, 0, v34, v35);
  objc_msgSend_setNumberOfImages_(v36, v37, v22, v38, v39);
  if (!count)
  {
    goto LABEL_23;
  }

  v55 = v32;
  v56 = v16;
  v41 = 0;
  while (v22 <= count - v41)
  {
LABEL_17:
    v42 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self, v23, buffer, v36, kernel, v55, v56);
    v47 = objc_msgSend_batchRepresentation(v42, v43, v44, v45, v46);
    if (v42->super._texture._type)
    {
      v49 = v42;
      v50 = v47;
      MPSDecrementReadCount(v49);
      objc_msgSend_getObjects_range_(v50, v51, v16, 0, v22);
    }

    else
    {
      objc_msgSend_getObjects_range_(v47, v48, v16, 0, v22);
    }

    v16 += v22;
    v41 += v22;
    if (v41 >= count)
    {
      goto LABEL_30;
    }
  }

  if (count - v41 != 1)
  {
    objc_msgSend_setNumberOfImages_(v36, v23, count - v41, v40, v26);
    v22 = count - v41;
    goto LABEL_17;
  }

  *v16 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self, v23, buffer, descriptor, kernel);
LABEL_30:
  v32 = v55;
  v16 = v56;
LABEL_23:
  v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v16, count, v26, v55, v56);
  if (v16 != v57)
  {
    free(v16);
  }

  if (v32)
  {
  }

  return v54;
}

- (void)dealloc
{
  if (!self->_dealloc_ok)
  {
    selfCopy = self;
    v3 = MTLReportFailureTypeEnabled();
    self = selfCopy;
    if (v3)
    {
      MTLReportFailure();
      self = selfCopy;
    }
  }

  v4.receiver = self;
  v4.super_class = MPSImageDefaultAllocator;
  [(MPSImageDefaultAllocator *)&v4 dealloc];
}

- (MPSImageDefaultAllocator)init
{
  v3.receiver = self;
  v3.super_class = MPSImageDefaultAllocator;
  result = [(MPSImageDefaultAllocator *)&v3 init];
  if (result)
  {
    result->_dealloc_ok = 0;
  }

  return result;
}

@end