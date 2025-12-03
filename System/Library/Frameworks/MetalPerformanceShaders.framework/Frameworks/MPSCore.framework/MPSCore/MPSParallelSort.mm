@interface MPSParallelSort
- (MPSParallelSort)initWithCoder:(id)coder device:(id)device;
- (MPSParallelSort)initWithDevice:(id)device;
- (MPSParallelSort)initWithDevice:(id)device keyPairDataType:(unsigned int)type valuePairDataType:(unsigned int)dataType;
- (MPSParallelSort)initWithDevice:(id)device keyPairDataType:(unsigned int)type valuePairDataType:(unsigned int)dataType sortOp:(int)op;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)initPrivateWithDevice:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)destinationOffset numEntries:(unint64_t)entries;
- (void)encodeToCommandBuffer:(id)buffer sourceKeyBuffer:(id)keyBuffer sourceKeyOffset:(unint64_t)offset sourceValueBuffer:(id)valueBuffer sourceValueOffset:(unint64_t)valueOffset destinationKeyBuffer:(id)destinationKeyBuffer destinationKeyOffset:(unint64_t)keyOffset destinationValueBuffer:(id)self0 destinationValueOffset:(unint64_t)self1 numEntries:(unint64_t)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSParallelSort

- (MPSParallelSort)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)initPrivateWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSParallelSort;
  return [(MPSKernel *)&v4 initWithDevice:device];
}

- (MPSParallelSort)initWithDevice:(id)device keyPairDataType:(unsigned int)type valuePairDataType:(unsigned int)dataType
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSParallelSort)initWithDevice:(id)device keyPairDataType:(unsigned int)type valuePairDataType:(unsigned int)dataType sortOp:(int)op
{
  inited = objc_msgSend_initPrivateWithDevice_(self, a2, device, *&type, *&dataType);
  v11 = inited;
  if (!inited)
  {
    return v11;
  }

  if (type != 32)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (dataType != 32)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_9:
      v21 = objc_opt_class();
      NSStringFromClass(v21);
      MTLReportFailure();
    }

LABEL_10:

    return 0;
  }

  *(inited + 120) = 32;
  *(inited + 124) = 32;
  *(inited + 88) = 4;
  *(inited + 104) = op;
  v12 = [MPSParallelExclusiveScan alloc];
  v14 = objc_msgSend_initWithDevice_sourceDataType_destinationDataType_(v12, v13, device, 32, 32);
  v11->_exclusiveScanKernel = v14;
  objc_msgSend_setScanImpl_(v14, v15, 1, v16, v17);
  if ((*(v11->super._device + 1477) & 0x40) != 0)
  {
    objc_msgSend_setScanImpl_(v11->_exclusiveScanKernel, v18, 0, v19, v20);
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSParallelSort;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSParallelSort)initWithCoder:(id)coder device:(id)device
{
  v28.receiver = self;
  v28.super_class = MPSParallelSort;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v10 = v6;
  if (!v6)
  {
    return v10;
  }

  if (*(&v6->super._fileVersion.var0 + 1) << 16 == 0x10000)
  {
    v6->_keyPairDataType = objc_msgSend_decodeInt32ForKey_(coder, v7, @"MPSParallelSort.keyPairDataType", v8, v9);
    v10->_valuePairDataType = objc_msgSend_decodeInt32ForKey_(coder, v11, @"MPSParallelSort.valuePairDataType", v12, v13);
    v10->_sortOp = objc_msgSend_decodeInt32ForKey_(coder, v14, @"MPSParallelSort.op", v15, v16);
    v10->dataTypeSizeInBytes = 4;
    v17 = [MPSParallelExclusiveScan alloc];
    v19 = objc_msgSend_initWithDevice_sourceDataType_destinationDataType_(v17, v18, device, v10->_sourceDataType, v10->_destinationDataType);
    v10->_exclusiveScanKernel = v19;
    objc_msgSend_setScanImpl_(v19, v20, 1, v21, v22);
    if ((*(v10->super._device + 1477) & 0x40) != 0)
    {
      objc_msgSend_setScanImpl_(v10->_exclusiveScanKernel, v23, 0, v24, v25);
    }

    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super._fileVersion.var0 + 1) = 1;
  v11.receiver = self;
  v11.super_class = MPSParallelSort;
  [(MPSKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_keyPairDataType, @"MPSParallelSort.keyPairDataType", v6);
  objc_msgSend_encodeInt32_forKey_(coder, v7, self->_valuePairDataType, @"MPSParallelSort.valuePairDataType", v8);
  objc_msgSend_encodeInt32_forKey_(coder, v9, self->_sortOp, @"MPSParallelSort.op", v10);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSParallelSort;
  result = [MPSKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 30) = self->_keyPairDataType;
    *(result + 31) = self->_valuePairDataType;
    *(result + 26) = self->_sortOp;
    v10 = result;
    v11 = objc_msgSend_copyWithZone_device_(self->_exclusiveScanKernel, v8, zone, device, v9);
    result = v10;
    v10[14] = v11;
    v10[11] = self->dataTypeSizeInBytes;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)destinationOffset numEntries:(unint64_t)entries
{
  destinationOffsetCopy = offset;
  destinationBufferCopy = sourceBuffer;
  if ((self->super._options & 1) == 0)
  {
    if (!sourceBuffer && MTLReportFailureTypeEnabled())
    {
      v70 = objc_opt_class();
      v72 = NSStringFromClass(v70);
      MTLReportFailure();
    }

    if (!destinationBuffer && MTLReportFailureTypeEnabled())
    {
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      MTLReportFailure();
    }
  }

  MPSAutoCache::MPSAutoCache(&v88, buffer, 0, sourceBuffer, offset);
  ComputeState = MPSLibrary::GetComputeState(self->super._library, 0, xmmword_22E37B650, 1, 0, 0, 0);
  v74 = MPSLibrary::GetComputeState(self->super._library, 1u, xmmword_22E37B650, 1, 0, 0, 0);
  v75 = (entries + 4095) & 0xFFFFFFFFFFFFF000;
  TempBuffer = MPSAutoCache::GetTempBuffer(&v88, 4 * v75, 0);
  v79 = MPSAutoCache::GetTempBuffer(&v88, 4 * v75, 0);
  v13 = MPSAutoCache::GetTempBuffer(&v88, self->dataTypeSizeInBytes * entries, 0);
  destinationOffsetCopy2 = 0;
  v78 = (entries + 4095) >> 12;
  v87[1] = entries;
  v15 = -4;
  destinationBufferCopy2 = v13;
  do
  {
    v87[0] = v15 + 4;
    v17 = [MPSComputeEncoder alloc];
    v23 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v17, v18, buffer, 0, v19);
    v85 = v23;
    selfCopy2 = self;
    if ((self->super._options & 0x18) != 0)
    {
      label = self->super._label;
      if (label || (v25 = objc_opt_class(), label = NSStringFromClass(v25), objc_msgSend_setLabel_(self, v26, label, v27, v28), label))
      {
        objc_msgSend_setLabel_(v23, v20, label, v21, v22, v72);
      }
    }

    objc_msgSend_setComputePipelineState_(v23, v20, ComputeState, v21, v22, v72);
    objc_msgSend_setBuffer_offset_atIndex_(v23, v29, destinationBufferCopy, destinationOffsetCopy, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v23, v30, TempBuffer, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(v23, v31, v87, 8, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v23, v32, 0x4000, 0, v33);
    v83 = v78;
    v84 = vdupq_n_s64(1uLL);
    v81 = 256;
    v82 = v84;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v34, &v83, &v81, v35);
    objc_msgSend_endEncoding(v23, v36, v37, v38, v39);

    objc_msgSend_encodeToCommandBuffer_sourceBuffer_sourceOffset_destinationBuffer_destinationOffset_numEntries_(self->_exclusiveScanKernel, v40, buffer, TempBuffer, 0, v79, 0, v75);
    v41 = [MPSComputeEncoder alloc];
    v47 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v41, v42, buffer, 0, v43);
    v85 = v47;
    selfCopy2 = self;
    if ((self->super._options & 0x18) != 0)
    {
      v48 = self->super._label;
      if (v48 || (v49 = objc_opt_class(), v48 = NSStringFromClass(v49), objc_msgSend_setLabel_(self, v50, v48, v51, v52), v48))
      {
        objc_msgSend_setLabel_(v47, v44, v48, v45, v46);
      }
    }

    objc_msgSend_setComputePipelineState_(v47, v44, v74, v45, v46);
    objc_msgSend_setBuffer_offset_atIndex_(v47, v53, destinationBufferCopy, destinationOffsetCopy, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v47, v54, destinationBufferCopy2, destinationOffsetCopy2, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v47, v55, v79, 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v47, v56, v87, 8, 3);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v47, v57, 0x4000, 0, v58);
    v83 = v78;
    v84 = vdupq_n_s64(1uLL);
    v81 = 256;
    v82 = v84;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v47, v59, &v83, &v81, v60);
    v65 = destinationBufferCopy2 == v13;
    if (destinationBufferCopy2 == v13)
    {
      destinationBufferCopy = v13;
    }

    else
    {
      destinationBufferCopy = destinationBuffer;
    }

    if (destinationBufferCopy2 == v13)
    {
      destinationOffsetCopy = 0;
    }

    else
    {
      destinationOffsetCopy = destinationOffset;
    }

    if (destinationBufferCopy2 == v13)
    {
      destinationBufferCopy2 = destinationBuffer;
    }

    else
    {
      destinationBufferCopy2 = v13;
    }

    if (v65)
    {
      destinationOffsetCopy2 = destinationOffset;
    }

    else
    {
      destinationOffsetCopy2 = 0;
    }

    objc_msgSend_endEncoding(v47, v61, v62, v63, v64);

    v15 += 4;
  }

  while (v15 < 0x1C);
  MPSAutoCache::~MPSAutoCache(&v88, v66, v67, v68, v69);
}

- (void)encodeToCommandBuffer:(id)buffer sourceKeyBuffer:(id)keyBuffer sourceKeyOffset:(unint64_t)offset sourceValueBuffer:(id)valueBuffer sourceValueOffset:(unint64_t)valueOffset destinationKeyBuffer:(id)destinationKeyBuffer destinationKeyOffset:(unint64_t)keyOffset destinationValueBuffer:(id)self0 destinationValueOffset:(unint64_t)self1 numEntries:(unint64_t)self2
{
  offsetCopy = offset;
  keyBufferCopy = keyBuffer;
  if ((self->super._options & 1) == 0)
  {
    if (!keyBuffer && MTLReportFailureTypeEnabled())
    {
      v78 = objc_opt_class();
      v82 = NSStringFromClass(v78);
      MTLReportFailure();
    }

    if (!valueBuffer && MTLReportFailureTypeEnabled())
    {
      v79 = objc_opt_class();
      v82 = NSStringFromClass(v79);
      MTLReportFailure();
    }

    if (!destinationKeyBuffer && MTLReportFailureTypeEnabled())
    {
      v80 = objc_opt_class();
      v82 = NSStringFromClass(v80);
      MTLReportFailure();
    }

    if (!destinationValueBuffer && MTLReportFailureTypeEnabled())
    {
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      MTLReportFailure();
    }
  }

  MPSAutoCache::MPSAutoCache(&v101, buffer, 0, keyBuffer, offset);
  ComputeState = MPSLibrary::GetComputeState(self->super._library, 0, xmmword_22E37B650, 1, 0, 0, 0);
  v84 = MPSLibrary::GetComputeState(self->super._library, 2u, xmmword_22E37B650, 1, 0, 0, 0);
  v85 = (entries + 4095) & 0xFFFFFFFFFFFFF000;
  TempBuffer = MPSAutoCache::GetTempBuffer(&v101, 4 * v85, 0);
  v89 = MPSAutoCache::GetTempBuffer(&v101, 4 * v85, 0);
  v88 = MPSAutoCache::GetTempBuffer(&v101, self->dataTypeSizeInBytes * entries, 0);
  v15 = MPSAutoCache::GetTempBuffer(&v101, self->dataTypeSizeInBytes * entries, 0);
  destinationValueOffsetCopy = 0;
  keyOffsetCopy2 = 0;
  v18 = -4;
  v100[1] = entries;
  v83 = v15;
  destinationValueBufferCopy = v15;
  destinationKeyBufferCopy2 = v88;
  do
  {
    v100[0] = v18 + 4;
    v21 = [MPSComputeEncoder alloc];
    v27 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v21, v22, buffer, 0, v23);
    v98 = v27;
    selfCopy2 = self;
    if ((self->super._options & 0x18) != 0)
    {
      label = self->super._label;
      if (label || (v29 = objc_opt_class(), label = NSStringFromClass(v29), objc_msgSend_setLabel_(self, v30, label, v31, v32), label))
      {
        objc_msgSend_setLabel_(v27, v24, label, v25, v26, v82);
      }
    }

    objc_msgSend_setComputePipelineState_(v27, v24, ComputeState, v25, v26, v82);
    objc_msgSend_setBuffer_offset_atIndex_(v27, v33, keyBufferCopy, offsetCopy, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v27, v34, TempBuffer, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(v27, v35, v100, 8, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v27, v36, 0x4000, 0, v37);
    v96 = (entries + 4095) >> 12;
    v97 = vdupq_n_s64(1uLL);
    v94 = xmmword_22E37B640;
    v95 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v38, &v96, &v94, v39);
    objc_msgSend_endEncoding(v27, v40, v41, v42, v43);

    objc_msgSend_encodeToCommandBuffer_sourceBuffer_sourceOffset_destinationBuffer_destinationOffset_numEntries_(self->_exclusiveScanKernel, v44, buffer, TempBuffer, 0, v89, 0, v85);
    v45 = [MPSComputeEncoder alloc];
    v51 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v45, v46, buffer, 0, v47);
    v98 = v51;
    selfCopy2 = self;
    if ((self->super._options & 0x18) != 0)
    {
      v52 = self->super._label;
      if (v52 || (v53 = objc_opt_class(), v52 = NSStringFromClass(v53), objc_msgSend_setLabel_(self, v54, v52, v55, v56), v52))
      {
        objc_msgSend_setLabel_(v51, v48, v52, v49, v50);
      }
    }

    objc_msgSend_setComputePipelineState_(v51, v48, v84, v49, v50);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v57, keyBufferCopy, offsetCopy, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v58, valueBuffer, valueOffset, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v59, destinationKeyBufferCopy2, keyOffsetCopy2, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v60, destinationValueBufferCopy, destinationValueOffsetCopy, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v61, v89, 0, 4);
    objc_msgSend_setBytes_length_atIndex_(v51, v62, v100, 8, 5);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v51, v63, 0x4000, 0, v64);
    v96 = (entries + 4095) >> 12;
    v97 = vdupq_n_s64(1uLL);
    v94 = xmmword_22E37B640;
    v95 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v51, v65, &v96, &v94, v66);
    v71 = destinationKeyBufferCopy2 == v88;
    if (destinationKeyBufferCopy2 == v88)
    {
      destinationKeyBufferCopy = v88;
    }

    else
    {
      destinationKeyBufferCopy = destinationKeyBuffer;
    }

    if (destinationKeyBufferCopy2 == v88)
    {
      keyOffsetCopy = 0;
    }

    else
    {
      keyOffsetCopy = keyOffset;
    }

    offsetCopy = keyOffsetCopy;
    keyBufferCopy = destinationKeyBufferCopy;
    if (destinationKeyBufferCopy2 == v88)
    {
      valueBuffer = v83;
    }

    else
    {
      valueBuffer = destinationValueBuffer;
    }

    if (destinationKeyBufferCopy2 == v88)
    {
      valueOffset = 0;
    }

    else
    {
      valueOffset = destinationValueOffset;
    }

    if (destinationKeyBufferCopy2 == v88)
    {
      destinationKeyBufferCopy2 = destinationKeyBuffer;
    }

    else
    {
      destinationKeyBufferCopy2 = v88;
    }

    if (v71)
    {
      keyOffsetCopy2 = keyOffset;
    }

    else
    {
      keyOffsetCopy2 = 0;
    }

    if (v71)
    {
      destinationValueBufferCopy = destinationValueBuffer;
    }

    else
    {
      destinationValueBufferCopy = v83;
    }

    if (v71)
    {
      destinationValueOffsetCopy = destinationValueOffset;
    }

    else
    {
      destinationValueOffsetCopy = 0;
    }

    objc_msgSend_endEncoding(v51, v67, v68, v69, v70);

    v18 += 4;
  }

  while (v18 < 0x1C);
  MPSAutoCache::~MPSAutoCache(&v101, v74, v75, v76, v77);
}

@end