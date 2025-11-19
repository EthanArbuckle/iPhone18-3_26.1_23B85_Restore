@interface MPSParallelSort
- (MPSParallelSort)initWithCoder:(id)a3 device:(id)a4;
- (MPSParallelSort)initWithDevice:(id)a3;
- (MPSParallelSort)initWithDevice:(id)a3 keyPairDataType:(unsigned int)a4 valuePairDataType:(unsigned int)a5;
- (MPSParallelSort)initWithDevice:(id)a3 keyPairDataType:(unsigned int)a4 valuePairDataType:(unsigned int)a5 sortOp:(int)a6;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)initPrivateWithDevice:(id)a3;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 sourceBuffer:(id)a4 sourceOffset:(unint64_t)a5 destinationBuffer:(id)a6 destinationOffset:(unint64_t)a7 numEntries:(unint64_t)a8;
- (void)encodeToCommandBuffer:(id)a3 sourceKeyBuffer:(id)a4 sourceKeyOffset:(unint64_t)a5 sourceValueBuffer:(id)a6 sourceValueOffset:(unint64_t)a7 destinationKeyBuffer:(id)a8 destinationKeyOffset:(unint64_t)a9 destinationValueBuffer:(id)a10 destinationValueOffset:(unint64_t)a11 numEntries:(unint64_t)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSParallelSort

- (MPSParallelSort)initWithDevice:(id)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)initPrivateWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSParallelSort;
  return [(MPSKernel *)&v4 initWithDevice:a3];
}

- (MPSParallelSort)initWithDevice:(id)a3 keyPairDataType:(unsigned int)a4 valuePairDataType:(unsigned int)a5
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSParallelSort)initWithDevice:(id)a3 keyPairDataType:(unsigned int)a4 valuePairDataType:(unsigned int)a5 sortOp:(int)a6
{
  inited = objc_msgSend_initPrivateWithDevice_(self, a2, a3, *&a4, *&a5);
  v11 = inited;
  if (!inited)
  {
    return v11;
  }

  if (a4 != 32)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a5 != 32)
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
  *(inited + 104) = a6;
  v12 = [MPSParallelExclusiveScan alloc];
  v14 = objc_msgSend_initWithDevice_sourceDataType_destinationDataType_(v12, v13, a3, 32, 32);
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

- (MPSParallelSort)initWithCoder:(id)a3 device:(id)a4
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
    v6->_keyPairDataType = objc_msgSend_decodeInt32ForKey_(a3, v7, @"MPSParallelSort.keyPairDataType", v8, v9);
    v10->_valuePairDataType = objc_msgSend_decodeInt32ForKey_(a3, v11, @"MPSParallelSort.valuePairDataType", v12, v13);
    v10->_sortOp = objc_msgSend_decodeInt32ForKey_(a3, v14, @"MPSParallelSort.op", v15, v16);
    v10->dataTypeSizeInBytes = 4;
    v17 = [MPSParallelExclusiveScan alloc];
    v19 = objc_msgSend_initWithDevice_sourceDataType_destinationDataType_(v17, v18, a4, v10->_sourceDataType, v10->_destinationDataType);
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

- (void)encodeWithCoder:(id)a3
{
  *(&self->super._fileVersion.var0 + 1) = 1;
  v11.receiver = self;
  v11.super_class = MPSParallelSort;
  [(MPSKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(a3, v5, self->_keyPairDataType, @"MPSParallelSort.keyPairDataType", v6);
  objc_msgSend_encodeInt32_forKey_(a3, v7, self->_valuePairDataType, @"MPSParallelSort.valuePairDataType", v8);
  objc_msgSend_encodeInt32_forKey_(a3, v9, self->_sortOp, @"MPSParallelSort.op", v10);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
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
    v11 = objc_msgSend_copyWithZone_device_(self->_exclusiveScanKernel, v8, a3, a4, v9);
    result = v10;
    v10[14] = v11;
    v10[11] = self->dataTypeSizeInBytes;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)a3 sourceBuffer:(id)a4 sourceOffset:(unint64_t)a5 destinationBuffer:(id)a6 destinationOffset:(unint64_t)a7 numEntries:(unint64_t)a8
{
  v9 = a5;
  v10 = a4;
  if ((self->super._options & 1) == 0)
  {
    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v70 = objc_opt_class();
      v72 = NSStringFromClass(v70);
      MTLReportFailure();
    }

    if (!a6 && MTLReportFailureTypeEnabled())
    {
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      MTLReportFailure();
    }
  }

  MPSAutoCache::MPSAutoCache(&v88, a3, 0, a4, a5);
  ComputeState = MPSLibrary::GetComputeState(self->super._library, 0, xmmword_22E37B650, 1, 0, 0, 0);
  v74 = MPSLibrary::GetComputeState(self->super._library, 1u, xmmword_22E37B650, 1, 0, 0, 0);
  v75 = (a8 + 4095) & 0xFFFFFFFFFFFFF000;
  TempBuffer = MPSAutoCache::GetTempBuffer(&v88, 4 * v75, 0);
  v79 = MPSAutoCache::GetTempBuffer(&v88, 4 * v75, 0);
  v13 = MPSAutoCache::GetTempBuffer(&v88, self->dataTypeSizeInBytes * a8, 0);
  v14 = 0;
  v78 = (a8 + 4095) >> 12;
  v87[1] = a8;
  v15 = -4;
  v16 = v13;
  do
  {
    v87[0] = v15 + 4;
    v17 = [MPSComputeEncoder alloc];
    v23 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v17, v18, a3, 0, v19);
    v85 = v23;
    v86 = self;
    if ((self->super._options & 0x18) != 0)
    {
      label = self->super._label;
      if (label || (v25 = objc_opt_class(), label = NSStringFromClass(v25), objc_msgSend_setLabel_(self, v26, label, v27, v28), label))
      {
        objc_msgSend_setLabel_(v23, v20, label, v21, v22, v72);
      }
    }

    objc_msgSend_setComputePipelineState_(v23, v20, ComputeState, v21, v22, v72);
    objc_msgSend_setBuffer_offset_atIndex_(v23, v29, v10, v9, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v23, v30, TempBuffer, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(v23, v31, v87, 8, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v23, v32, 0x4000, 0, v33);
    v83 = v78;
    v84 = vdupq_n_s64(1uLL);
    v81 = 256;
    v82 = v84;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v34, &v83, &v81, v35);
    objc_msgSend_endEncoding(v23, v36, v37, v38, v39);

    objc_msgSend_encodeToCommandBuffer_sourceBuffer_sourceOffset_destinationBuffer_destinationOffset_numEntries_(self->_exclusiveScanKernel, v40, a3, TempBuffer, 0, v79, 0, v75);
    v41 = [MPSComputeEncoder alloc];
    v47 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v41, v42, a3, 0, v43);
    v85 = v47;
    v86 = self;
    if ((self->super._options & 0x18) != 0)
    {
      v48 = self->super._label;
      if (v48 || (v49 = objc_opt_class(), v48 = NSStringFromClass(v49), objc_msgSend_setLabel_(self, v50, v48, v51, v52), v48))
      {
        objc_msgSend_setLabel_(v47, v44, v48, v45, v46);
      }
    }

    objc_msgSend_setComputePipelineState_(v47, v44, v74, v45, v46);
    objc_msgSend_setBuffer_offset_atIndex_(v47, v53, v10, v9, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v47, v54, v16, v14, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v47, v55, v79, 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v47, v56, v87, 8, 3);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v47, v57, 0x4000, 0, v58);
    v83 = v78;
    v84 = vdupq_n_s64(1uLL);
    v81 = 256;
    v82 = v84;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v47, v59, &v83, &v81, v60);
    v65 = v16 == v13;
    if (v16 == v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = a6;
    }

    if (v16 == v13)
    {
      v9 = 0;
    }

    else
    {
      v9 = a7;
    }

    if (v16 == v13)
    {
      v16 = a6;
    }

    else
    {
      v16 = v13;
    }

    if (v65)
    {
      v14 = a7;
    }

    else
    {
      v14 = 0;
    }

    objc_msgSend_endEncoding(v47, v61, v62, v63, v64);

    v15 += 4;
  }

  while (v15 < 0x1C);
  MPSAutoCache::~MPSAutoCache(&v88, v66, v67, v68, v69);
}

- (void)encodeToCommandBuffer:(id)a3 sourceKeyBuffer:(id)a4 sourceKeyOffset:(unint64_t)a5 sourceValueBuffer:(id)a6 sourceValueOffset:(unint64_t)a7 destinationKeyBuffer:(id)a8 destinationKeyOffset:(unint64_t)a9 destinationValueBuffer:(id)a10 destinationValueOffset:(unint64_t)a11 numEntries:(unint64_t)a12
{
  v91 = a5;
  v92 = a4;
  if ((self->super._options & 1) == 0)
  {
    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v78 = objc_opt_class();
      v82 = NSStringFromClass(v78);
      MTLReportFailure();
    }

    if (!a6 && MTLReportFailureTypeEnabled())
    {
      v79 = objc_opt_class();
      v82 = NSStringFromClass(v79);
      MTLReportFailure();
    }

    if (!a8 && MTLReportFailureTypeEnabled())
    {
      v80 = objc_opt_class();
      v82 = NSStringFromClass(v80);
      MTLReportFailure();
    }

    if (!a10 && MTLReportFailureTypeEnabled())
    {
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      MTLReportFailure();
    }
  }

  MPSAutoCache::MPSAutoCache(&v101, a3, 0, a4, a5);
  ComputeState = MPSLibrary::GetComputeState(self->super._library, 0, xmmword_22E37B650, 1, 0, 0, 0);
  v84 = MPSLibrary::GetComputeState(self->super._library, 2u, xmmword_22E37B650, 1, 0, 0, 0);
  v85 = (a12 + 4095) & 0xFFFFFFFFFFFFF000;
  TempBuffer = MPSAutoCache::GetTempBuffer(&v101, 4 * v85, 0);
  v89 = MPSAutoCache::GetTempBuffer(&v101, 4 * v85, 0);
  v88 = MPSAutoCache::GetTempBuffer(&v101, self->dataTypeSizeInBytes * a12, 0);
  v15 = MPSAutoCache::GetTempBuffer(&v101, self->dataTypeSizeInBytes * a12, 0);
  v16 = 0;
  v17 = 0;
  v18 = -4;
  v100[1] = a12;
  v83 = v15;
  v19 = v15;
  v20 = v88;
  do
  {
    v100[0] = v18 + 4;
    v21 = [MPSComputeEncoder alloc];
    v27 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v21, v22, a3, 0, v23);
    v98 = v27;
    v99 = self;
    if ((self->super._options & 0x18) != 0)
    {
      label = self->super._label;
      if (label || (v29 = objc_opt_class(), label = NSStringFromClass(v29), objc_msgSend_setLabel_(self, v30, label, v31, v32), label))
      {
        objc_msgSend_setLabel_(v27, v24, label, v25, v26, v82);
      }
    }

    objc_msgSend_setComputePipelineState_(v27, v24, ComputeState, v25, v26, v82);
    objc_msgSend_setBuffer_offset_atIndex_(v27, v33, v92, v91, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v27, v34, TempBuffer, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(v27, v35, v100, 8, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v27, v36, 0x4000, 0, v37);
    v96 = (a12 + 4095) >> 12;
    v97 = vdupq_n_s64(1uLL);
    v94 = xmmword_22E37B640;
    v95 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v38, &v96, &v94, v39);
    objc_msgSend_endEncoding(v27, v40, v41, v42, v43);

    objc_msgSend_encodeToCommandBuffer_sourceBuffer_sourceOffset_destinationBuffer_destinationOffset_numEntries_(self->_exclusiveScanKernel, v44, a3, TempBuffer, 0, v89, 0, v85);
    v45 = [MPSComputeEncoder alloc];
    v51 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v45, v46, a3, 0, v47);
    v98 = v51;
    v99 = self;
    if ((self->super._options & 0x18) != 0)
    {
      v52 = self->super._label;
      if (v52 || (v53 = objc_opt_class(), v52 = NSStringFromClass(v53), objc_msgSend_setLabel_(self, v54, v52, v55, v56), v52))
      {
        objc_msgSend_setLabel_(v51, v48, v52, v49, v50);
      }
    }

    objc_msgSend_setComputePipelineState_(v51, v48, v84, v49, v50);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v57, v92, v91, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v58, a6, a7, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v59, v20, v17, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v60, v19, v16, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v51, v61, v89, 0, 4);
    objc_msgSend_setBytes_length_atIndex_(v51, v62, v100, 8, 5);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v51, v63, 0x4000, 0, v64);
    v96 = (a12 + 4095) >> 12;
    v97 = vdupq_n_s64(1uLL);
    v94 = xmmword_22E37B640;
    v95 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v51, v65, &v96, &v94, v66);
    v71 = v20 == v88;
    if (v20 == v88)
    {
      v72 = v88;
    }

    else
    {
      v72 = a8;
    }

    if (v20 == v88)
    {
      v73 = 0;
    }

    else
    {
      v73 = a9;
    }

    v91 = v73;
    v92 = v72;
    if (v20 == v88)
    {
      a6 = v83;
    }

    else
    {
      a6 = a10;
    }

    if (v20 == v88)
    {
      a7 = 0;
    }

    else
    {
      a7 = a11;
    }

    if (v20 == v88)
    {
      v20 = a8;
    }

    else
    {
      v20 = v88;
    }

    if (v71)
    {
      v17 = a9;
    }

    else
    {
      v17 = 0;
    }

    if (v71)
    {
      v19 = a10;
    }

    else
    {
      v19 = v83;
    }

    if (v71)
    {
      v16 = a11;
    }

    else
    {
      v16 = 0;
    }

    objc_msgSend_endEncoding(v51, v67, v68, v69, v70);

    v18 += 4;
  }

  while (v18 < 0x1C);
  MPSAutoCache::~MPSAutoCache(&v101, v74, v75, v76, v77);
}

@end