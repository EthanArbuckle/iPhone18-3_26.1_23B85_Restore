@interface MPSImageDefaultAllocator
- (MPSImageDefaultAllocator)init;
- (MPSImageDefaultAllocator)initWithCoder:(id)a3;
- (id)imageBatchForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5 count:(unint64_t)a6;
- (id)imageForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5;
- (void)dealloc;
@end

@implementation MPSImageDefaultAllocator

- (MPSImageDefaultAllocator)initWithCoder:(id)a3
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

- (id)imageForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5
{
  v7 = [MPSImage alloc];
  v12 = objc_msgSend_device(a3, v8, v9, v10, v11);
  v15 = objc_msgSend_initWithDevice_imageDescriptor_(v7, v13, v12, a4, v14);
  v16 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22E35E890;
  v21[3] = &unk_2787BE7E8;
  v21[4] = v15;
  objc_msgSend_addCompletedHandler_(a3, v17, v21, v18, v19);
  return v15;
}

- (id)imageBatchForCommandBuffer:(id)a3 imageDescriptor:(id)a4 kernel:(id)a5 count:(unint64_t)a6
{
  v58 = *MEMORY[0x277D85DE8];
  if (a6 < 0x101)
  {
    v16 = v57;
    bzero(v57, 8 * a6);
    v21 = (objc_msgSend_featureChannels(a4, v27, v28, v29, v30) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = 0;
    if (objc_msgSend_featureChannelsLayout(a4, v17, v18, v19, v20) != 1)
    {
LABEL_19:
      if (a6)
      {
        v52 = v16;
        v53 = a6;
        do
        {
          *v52++ = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self, v23, a3, a4, a5);
          --v53;
        }

        while (v53);
      }

      v32 = 0;
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  result = malloc_type_calloc(a6, 8uLL, 0x80040B8603338uLL);
  v16 = result;
  if (!result)
  {
    return result;
  }

  v21 = (objc_msgSend_featureChannels(a4, v12, v13, v14, v15) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (!v21)
  {
    goto LABEL_7;
  }

LABEL_4:
  v22 = 0x2000 / v21;
  if (objc_msgSend_featureChannelsLayout(a4, v17, v18, v19, v20) != 1)
  {
    goto LABEL_19;
  }

LABEL_8:
  v31 = objc_msgSend_numberOfImages(a4, v23, v24, v25, v26);
  if (v22 == 1 || v31 >= 2)
  {
    goto LABEL_19;
  }

  v32 = objc_opt_new();
  v36 = objc_msgSend_copyWithZone_(a4, v33, 0, v34, v35);
  objc_msgSend_setNumberOfImages_(v36, v37, v22, v38, v39);
  if (!a6)
  {
    goto LABEL_23;
  }

  v55 = v32;
  v56 = v16;
  v41 = 0;
  while (v22 <= a6 - v41)
  {
LABEL_17:
    v42 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self, v23, a3, v36, a5, v55, v56);
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
    if (v41 >= a6)
    {
      goto LABEL_30;
    }
  }

  if (a6 - v41 != 1)
  {
    objc_msgSend_setNumberOfImages_(v36, v23, a6 - v41, v40, v26);
    v22 = a6 - v41;
    goto LABEL_17;
  }

  *v16 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self, v23, a3, a4, a5);
LABEL_30:
  v32 = v55;
  v16 = v56;
LABEL_23:
  v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v16, a6, v26, v55, v56);
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
    v2 = self;
    v3 = MTLReportFailureTypeEnabled();
    self = v2;
    if (v3)
    {
      MTLReportFailure();
      self = v2;
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