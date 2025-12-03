@interface MPSParallelRandomPhilox
- (MPSParallelRandomPhilox)initWithCoder:(id)coder device:(id)device;
- (MPSParallelRandomPhilox)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed;
- (MPSParallelRandomPhilox)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed distributionDescriptor:(id)descriptor;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries;
- (void)encodeToCommandBuffer:(id)buffer destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSParallelRandomPhilox

- (MPSParallelRandomPhilox)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed distributionDescriptor:(id)descriptor
{
  v71.receiver = self;
  v71.super_class = MPSParallelRandomPhilox;
  v9 = [(MPSParallelRandom *)&v71 initWithDevice:device destinationDataType:*&type generatorType:0 distributionDescriptor:?];
  if (objc_msgSend_distributionType(v9, v10, v11, v12, v13) == 3)
  {
    objc_msgSend_mean(descriptor, v14, v15, v16, v17);
    v9->_normalMean = v18;
    objc_msgSend_standardDeviation(descriptor, v19, v20, v21, v22);
    v9->_normalStandardDeviation = v23;
    objc_msgSend_minimum(descriptor, v24, v25, v26, v27);
    v33 = fabsf(v32);
    v34 = 0.0;
    if (v33 != INFINITY)
    {
      objc_msgSend_minimum(descriptor, v28, v29, v30, v31, 0.0);
      v34 = (erf((v35 - v9->_normalMean) / v9->_normalStandardDeviation * 1.41421354) + 1.0) * 0.5;
    }

    v9->_uniformMin = v34;
    objc_msgSend_maximum(descriptor, v28, v29, v30, v31);
    v40 = fabsf(*&v41);
    LODWORD(v41) = 1.0;
    if (v40 != INFINITY)
    {
      objc_msgSend_maximum(descriptor, v36, v37, v38, v39, v41);
      *&v41 = (erf((v42 - v9->_normalMean) / v9->_normalStandardDeviation * 1.41421354) + 1.0) * 0.5;
    }
  }

  else
  {
    objc_msgSend_minimum(descriptor, v14, v15, v16, v17);
    v9->_uniformMin = v43;
    objc_msgSend_maximum(descriptor, v44, v45, v46, v47);
  }

  v9->_uniformMax = *&v41;
  v9->_seed = seed;
  device = v9->super.super._device;
  if ((device[369] & 0x400) != 0)
  {
    v49 = 4096;
  }

  else
  {
    v49 = 0x8000;
  }

  v50 = (*(*device + 24))(device);
  v53 = objc_msgSend_newBufferWithLength_options_(device, v51, 16 * v49, 16 * v50, v52);
  v9->_counters = v53;
  if (!v53 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v58 = (objc_msgSend_contents(v9->_counters, v54, v55, v56, v57) + 64);
  v59 = xmmword_22E37BB60;
  v60.i64[0] = 0x400000004;
  v60.i64[1] = 0x400000004;
  v61 = 0uLL;
  v62.i64[0] = 0x800000008;
  v62.i64[1] = 0x800000008;
  do
  {
    v63 = vaddq_s32(v59, v60);
    v64 = v58 - 16;
    v65 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    vst4q_f32(v64, *(&v59 - 3));
    vst4q_f32(v58, *&v61);
    v59 = vaddq_s32(v59, v62);
    v58 += 32;
    v49 -= 8;
  }

  while (v49);
  return v9;
}

- (MPSParallelRandomPhilox)initWithDevice:(id)device destinationDataType:(unsigned int)type seed:(unint64_t)seed
{
  v6 = *&type;
  v9 = [MPSParallelRandomDistributionDescriptor alloc];
  objc_msgSend_setDistributionType_(v9, v10, 1, v11, v12);
  v14 = objc_msgSend_initWithDevice_destinationDataType_seed_distributionDescriptor_(self, v13, device, v6, seed, v9);

  return v14;
}

- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries
{
  if ((self->super.super._options & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v47 = objc_opt_class();
      v52 = NSStringFromClass(v47);
      MTLReportFailure();
    }

    if (!destinationBuffer && MTLReportFailureTypeEnabled())
    {
      v48 = objc_opt_class();
      v52 = NSStringFromClass(v48);
      MTLReportFailure();
    }

    objc_msgSend_destinationDataType(self, a2, buffer, encoder, destinationBuffer, v52);
    objc_msgSend_length(destinationBuffer, v13, v14, v15, v16);
    v21 = (entries + offset) * (objc_msgSend_destinationDataType(self, v17, v18, v19, v20) >> 3);
    if (v21 > objc_msgSend_length(destinationBuffer, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
    {
      v49 = objc_opt_class();
      destinationBufferCopy = destinationBuffer;
      offsetCopy = offset;
      v53 = NSStringFromClass(v49);
      entriesCopy = entries;
      MTLReportFailure();
    }

    if (objc_msgSend_distributionType(self, v26, v27, v28, v29, v53, entriesCopy, destinationBufferCopy, offsetCopy) == 1)
    {
      objc_msgSend_destinationDataType(self, v30, v31, v32, v33);
      if (objc_msgSend_destinationDataType(self, v34, v35, v36, v37) != 32)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v50 = objc_opt_class();
          v54 = NSStringFromClass(v50);
          MTLReportFailure();
        }
      }
    }

    if (objc_msgSend_distributionType(self, v30, v31, v32, v33, v54) == 2)
    {
      objc_msgSend_destinationDataType(self, v38, v39, v40, v41);
      if (objc_msgSend_destinationDataType(self, v42, v43, v44, v45) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v51 = objc_opt_class();
          NSStringFromClass(v51);
          MTLReportFailure();
        }
      }
    }
  }

  if (entries)
  {
    seed = self->_seed;

    sub_22E36A9D4(self, encoder, buffer, destinationBuffer, offset, entries, seed, 1);
  }
}

- (void)encodeToCommandBuffer:(id)buffer destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride
{
  if ((self->super.super._options & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v63 = objc_opt_class();
      v68 = NSStringFromClass(v63);
      MTLReportFailure();
    }

    if (!destinationBuffer && MTLReportFailureTypeEnabled())
    {
      v64 = objc_opt_class();
      v68 = NSStringFromClass(v64);
      MTLReportFailure();
    }

    objc_msgSend_destinationDataType(self, a2, buffer, destinationBuffer, offset, v68);
    objc_msgSend_length(destinationBuffer, v13, v14, v15, v16);
    v21 = (entries + offset) * (objc_msgSend_destinationDataType(self, v17, v18, v19, v20) >> 3);
    if (v21 > objc_msgSend_length(destinationBuffer, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
    {
      v65 = objc_opt_class();
      destinationBufferCopy = destinationBuffer;
      offsetCopy = offset;
      v69 = NSStringFromClass(v65);
      entriesCopy = entries;
      MTLReportFailure();
    }

    if (objc_msgSend_distributionType(self, v26, v27, v28, v29, v69, entriesCopy, destinationBufferCopy, offsetCopy) == 1)
    {
      objc_msgSend_destinationDataType(self, v30, v31, v32, v33);
      if (objc_msgSend_destinationDataType(self, v34, v35, v36, v37) != 32)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v66 = objc_opt_class();
          v70 = NSStringFromClass(v66);
          MTLReportFailure();
        }
      }
    }

    if (objc_msgSend_distributionType(self, v30, v31, v32, v33, v70) == 2)
    {
      objc_msgSend_destinationDataType(self, v38, v39, v40, v41);
      if (objc_msgSend_destinationDataType(self, v42, v43, v44, v45) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          MTLReportFailure();
        }
      }
    }
  }

  if (entries)
  {
    v46 = [MPSComputeEncoder alloc];
    v52 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v46, v47, buffer, 0, v48);
    if ((self->super.super._options & 0x18) != 0)
    {
      label = self->super.super._label;
      if (label || (v54 = objc_opt_class(), v55 = NSStringFromClass(v54), objc_msgSend_setLabel_(self, v56, v55, v57, v58), (label = v55) != 0))
      {
        objc_msgSend_setLabel_(v52, v49, label, v50, v51, v68);
      }
    }

    sub_22E36A9D4(self, v52, buffer, destinationBuffer, offset, entries, self->_seed, stride);
    objc_msgSend_endEncoding(v52, v59, v60, v61, v62);
  }
}

- (MPSParallelRandomPhilox)initWithCoder:(id)coder device:(id)device
{
  v22.receiver = self;
  v22.super_class = MPSParallelRandomPhilox;
  [MPSParallelRandom initWithCoder:sel_initWithCoder_device_ device:?];
  if (self)
  {
    device = self->super.super._device;
    if ((device[369] & 0x400) != 0)
    {
      v8 = 4096;
    }

    else
    {
      v8 = 0x8000;
    }

    v9 = (*(*device + 24))(device);
    v12 = objc_msgSend_newBufferWithLength_options_(device, v10, 16 * v8, 16 * v9, v11);
    self->_counters = v12;
    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = objc_msgSend_contents(self->_counters, v13, v14, v15, v16);
    v23 = 0;
    v20 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v18, @"kMPSParallelRandomCountersArrayKey", &v23, v19);
    if (v20 && 16 * v8 == v23)
    {
      MPSCopyToFromNetworkByteOrder32(v17, v20, 4 * v8);
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super._fileVersion.var0 + 1) = 1;
  v14.receiver = self;
  v14.super_class = MPSParallelRandomPhilox;
  [(MPSParallelRandom *)&v14 encodeWithCoder:?];
  if ((*(self->super.super._device + 369) & 0x400) != 0)
  {
    v9 = 0x4000;
  }

  else
  {
    v9 = 0x20000;
  }

  v10 = objc_msgSend_contents(self->_counters, v5, v6, v7, v8);
  v11 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  if (v11)
  {
    v12 = v11;
    MPSCopyToFromNetworkByteOrder32(v11, v10, v9);
    objc_msgSend_encodeBytes_length_forKey_(coder, v13, v12, 4 * v9, @"kMPSParallelRandomCountersArrayKey");
    free(v12);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSParallelRandomPhilox;
  [(MPSKernel *)&v3 dealloc];
}

@end