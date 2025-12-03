@interface MPSParallelScan
- (MPSParallelScan)initWithCoder:(id)coder device:(id)device;
- (MPSParallelScan)initWithDevice:(id)device;
- (MPSParallelScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
- (MPSParallelScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType scanOp:(int)op;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)initPrivateWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)destinationOffset numEntries:(unint64_t)entries;
- (void)encodeWithCoder:(id)coder;
- (void)setScanImpl:(unint64_t)impl;
@end

@implementation MPSParallelScan

- (void)setScanImpl:(unint64_t)impl
{
  if (impl)
  {
    self->_scanImpl = impl;
  }

  else
  {
    if ((*(self->super._device + 1477) & 0x40) == 0 && !self->_useSpinLockVersion)
    {
      selfCopy = self;
      v3 = MTLReportFailureTypeEnabled();
      impl = 0;
      self = selfCopy;
      if (v3)
      {
        MTLReportFailure();
        impl = 0;
        self = selfCopy;
      }
    }

    self->_scanImpl = impl;
  }
}

- (MPSParallelScan)initWithDevice:(id)device
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
  v4.super_class = MPSParallelScan;
  return [(MPSKernel *)&v4 initWithDevice:device];
}

- (MPSParallelScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSParallelScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType scanOp:(int)op
{
  result = objc_msgSend_initPrivateWithDevice_(self, a2, device, *&type, *&dataType);
  if (!result)
  {
    return result;
  }

  if (type > 0x20 || ((1 << type) & 0x100010100) == 0)
  {
    if (type - 536870920 <= 0x18 && ((1 << (type - 8)) & 0x1000101) != 0)
    {
      if (dataType == 536870944)
      {
        goto LABEL_10;
      }

      v10 = result;
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = result;
      if (MTLReportFailureTypeEnabled())
      {
LABEL_31:
        v17 = objc_opt_class();
        NSStringFromClass(v17);
        MTLReportFailure();
      }
    }

LABEL_32:

    return 0;
  }

  if (dataType != 32)
  {
    v10 = result;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_10:
  result->_sourceDataType = type;
  if (type > 536870927)
  {
    if (type == 536870928)
    {
      v12 = op == 0;
      v11 = 5;
      v13 = 2;
LABEL_20:
      if (v12)
      {
        v11 = v13;
      }

      goto LABEL_22;
    }

    if (type != 536870944)
    {
      goto LABEL_23;
    }

LABEL_18:
    v12 = op == 0;
    v11 = 6;
    v13 = 3;
    goto LABEL_20;
  }

  if (type == 32)
  {
    goto LABEL_18;
  }

  if (type == 536870920)
  {
    if (op)
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

LABEL_22:
    result->_kernelID = v11;
  }

LABEL_23:
  result->_destinationDataType = dataType;
  result->_scanOp = op;
  result->_scanImpl = 1;
  result->_useSpinLockVersion = 0;
  if ((*(result->super._device + 1477) & 0x40) != 0)
  {
    result->_scanImpl = 0;
  }

  v14 = result;
  v15 = getenv("MPS_SINGLE_PASS_SPINLOCK_SCAN");
  if (!v15)
  {
    return v14;
  }

  __endptr = 0;
  v16 = strtol(v15, &__endptr, 10) < 1;
  result = v14;
  if (!v16)
  {
    v14->_scanImpl = 0;
    v14->_useSpinLockVersion = 1;
  }

  return result;
}

- (MPSParallelScan)initWithCoder:(id)coder device:(id)device
{
  v27.receiver = self;
  v27.super_class = MPSParallelScan;
  v5 = [(MPSKernel *)&v27 initWithCoder:coder device:device];
  v9 = v5;
  if (!v5)
  {
    return v9;
  }

  if (*(&v5->super._fileVersion.var0 + 1) << 16 == 0x10000)
  {
    v5->_sourceDataType = objc_msgSend_decodeInt32ForKey_(coder, v6, @"MPSParallelScan.sourceDataType", v7, v8);
    v9->_destinationDataType = objc_msgSend_decodeInt32ForKey_(coder, v10, @"MPSParallelScan.destinationDataType", v11, v12);
    v9->_scanOp = objc_msgSend_decodeInt32ForKey_(coder, v13, @"MPSParallelScan.op", v14, v15);
    v9->_kernelID = objc_msgSend_decodeInt32ForKey_(coder, v16, @"MPSParallelScan.kernelID", v17, v18);
    v9->_scanImpl = objc_msgSend_decodeInt32ForKey_(coder, v19, @"MPSParallelScan.scanImpl", v20, v21);
    v9->_useSpinLockVersion = objc_msgSend_decodeInt32ForKey_(coder, v22, @"MPSParallelScan.useSpinLock", v23, v24) != 0;
    return v9;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v26 = objc_opt_class();
    NSStringFromClass(v26);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super._fileVersion.var0 + 1) = 1;
  v17.receiver = self;
  v17.super_class = MPSParallelScan;
  [(MPSKernel *)&v17 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_sourceDataType, @"MPSParallelScan.sourceDataType", v6);
  objc_msgSend_encodeInt32_forKey_(coder, v7, self->_destinationDataType, @"MPSParallelScan.destinationDataType", v8);
  objc_msgSend_encodeInt32_forKey_(coder, v9, self->_scanOp, @"MPSParallelScan.op", v10);
  objc_msgSend_encodeInt32_forKey_(coder, v11, self->_kernelID, @"MPSParallelScan.kernelID", v12);
  objc_msgSend_encodeInt32_forKey_(coder, v13, LODWORD(self->_scanImpl), @"MPSParallelScan.scanImpl", v14);
  objc_msgSend_encodeInt32_forKey_(coder, v15, self->_useSpinLockVersion, @"MPSParallelScan.useSpinLock", v16);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSParallelScan;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 23) = self->_sourceDataType;
    *(result + 24) = self->_destinationDataType;
    *(result + 25) = self->_scanOp;
    *(result + 22) = self->_kernelID;
    *(result + 13) = self->_scanImpl;
    *(result + 112) = self->_useSpinLockVersion;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)destinationOffset numEntries:(unint64_t)entries
{
  offsetCopy = offset;
  if ((self->super._options & 1) == 0)
  {
    if (!sourceBuffer && MTLReportFailureTypeEnabled())
    {
      v180 = objc_opt_class();
      v182 = NSStringFromClass(v180);
      MTLReportFailure();
    }

    if (!destinationBuffer && MTLReportFailureTypeEnabled())
    {
      v181 = objc_opt_class();
      v182 = NSStringFromClass(v181);
      MTLReportFailure();
    }
  }

  scanImpl = self->_scanImpl;
  if (scanImpl)
  {
    if (scanImpl == 1)
    {
LABEL_6:
      entriesCopy = entries;
      MPSAutoCache::MPSAutoCache(&v201, buffer, 0, sourceBuffer, offset);
      v13 = [MPSComputeEncoder alloc];
      v19 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v13, v14, buffer, 0, v15);
      v192 = v19;
      v193.i64[0] = self;
      if ((self->super._options & 0x18) != 0)
      {
        label = self->super._label;
        if (label || (v21 = objc_opt_class(), label = NSStringFromClass(v21), objc_msgSend_setLabel_(self, v22, label, v23, v24), label))
        {
          objc_msgSend_setLabel_(v19, v16, label, v17, v18, v182);
        }
      }

      ComputeState = MPSLibrary::GetComputeState(self->super._library, 7u, xmmword_22E37B5E0, 1, 0, 0, 0);
      objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v26, v27, v28, v29);
      v30 = MPSLibrary::GetComputeState(self->super._library, 8u, xmmword_22E37B5E0, 1, 0, 0, 0);
      sourceBufferCopy = sourceBuffer;
      objc_msgSend_maxTotalThreadsPerThreadgroup(v30, v31, v32, v33, v34);
      if ((*(self->super._device + 369) & 0x400) != 0)
      {
        v35 = 64;
      }

      else
      {
        v35 = 256;
      }

      v36 = 8 * v35;
      if ((*(self->super._device + 369) & 0x400) != 0)
      {
        v37 = 9;
      }

      else
      {
        v37 = 11;
      }

      v38 = v36 - 1;
      v39 = (v36 - 1 + entries) >> v37;
      TempBuffer = MPSAutoCache::GetTempBuffer(&v201, 4 * v39, 0);
      v200[0] = entries;
      v41 = MPSLibrary::GetComputeState(self->super._library, 7u, xmmword_22E37B5E0, 1, 0, 0, 0);
      objc_msgSend_setComputePipelineState_(v19, v42, v41, v43, v44);
      objc_msgSend_setBuffer_offset_atIndex_(v19, v45, sourceBuffer, offsetCopy, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v19, v46, destinationBuffer, destinationOffset, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v19, v47, TempBuffer, 0, 3);
      objc_msgSend_setBytes_length_atIndex_(v19, v48, v200, 4, 4);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v19, v49, v36 | 0x10, 0, v50);
      *v195 = v39;
      *&v195[8] = vdupq_n_s64(1uLL);
      v203 = v35;
      v204 = *&v195[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v51, v195, &v203, v52);
      if (v39 >= 2)
      {
        v186 = offsetCopy;
        v57 = (v39 + v38) >> v37;
        v58 = MPSAutoCache::GetTempBuffer(&v201, 4 * v57, 0);
        v200[0] = (v36 - 1 + entries) >> v37;
        v59 = MPSLibrary::GetComputeState(self->super._library, 7u, xmmword_22E37B5E0, 1, 0, 0, 0);
        objc_msgSend_setComputePipelineState_(v19, v60, v59, v61, v62);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v63, TempBuffer, 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v64, TempBuffer, 0, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v65, v58, 0, 3);
        objc_msgSend_setBytes_length_atIndex_(v19, v66, v200, 4, 4);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v19, v67, v36 | 0x10, 0, v68);
        *v195 = v57;
        *&v195[8] = vdupq_n_s64(1uLL);
        v203 = v35;
        v204 = *&v195[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v69, v195, &v203, v70);
        if (v57 >= 2)
        {
          v71 = (v57 + v38) >> v37;
          v72 = MPSAutoCache::GetTempBuffer(&v201, 4 * v71, 0);
          v200[0] = v57;
          v73 = MPSLibrary::GetComputeState(self->super._library, 7u, xmmword_22E37B5E0, 1, 0, 0, 0);
          objc_msgSend_setComputePipelineState_(v19, v74, v73, v75, v76);
          objc_msgSend_setBuffer_offset_atIndex_(v19, v77, v58, 0, 0);
          objc_msgSend_setBuffer_offset_atIndex_(v19, v78, v58, 0, 1);
          objc_msgSend_setBuffer_offset_atIndex_(v19, v79, v72, 0, 3);
          objc_msgSend_setBytes_length_atIndex_(v19, v80, v200, 4, 4);
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v19, v81, v36 | 0x10, 0, v82);
          *v195 = v71;
          *&v195[8] = vdupq_n_s64(1uLL);
          v203 = v35;
          v204 = *&v195[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v83, v195, &v203, v84);
          v200[0] = v39;
          v85 = MPSLibrary::GetComputeState(self->super._library, 8u, xmmword_22E37B5E0, 1, 0, 0, 0);
          objc_msgSend_setComputePipelineState_(v19, v86, v85, v87, v88);
          objc_msgSend_setBuffer_offset_atIndex_(v19, v89, TempBuffer, 0, 1);
          objc_msgSend_setBuffer_offset_atIndex_(v19, v90, v58, 0, 3);
          objc_msgSend_setBytes_length_atIndex_(v19, v91, v200, 4, 4);
          *v195 = v57;
          *&v195[8] = vdupq_n_s64(1uLL);
          v203 = v35;
          v204 = *&v195[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v92, v195, &v203, v93);
        }

        v200[0] = entries;
        v94 = MPSLibrary::GetComputeState(self->super._library, 8u, xmmword_22E37B5E0, 1, 0, 0, 0);
        objc_msgSend_setComputePipelineState_(v19, v95, v94, v96, v97);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v98, destinationBuffer, destinationOffset, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v99, TempBuffer, 0, 3);
        objc_msgSend_setBytes_length_atIndex_(v19, v100, v200, 4, 4);
        *v195 = v39;
        *&v195[8] = vdupq_n_s64(1uLL);
        v203 = v35;
        v204 = *&v195[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v101, v195, &v203, v102);
        offsetCopy = v186;
      }

      if (!self->_scanOp)
      {
        v103 = MPSLibrary::GetComputeState(self->super._library, 0xAu, xmmword_22E37B5E0, 1, 0, 0, 0);
        objc_msgSend_setComputePipelineState_(v19, v104, v103, v105, v106);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v107, sourceBufferCopy, offsetCopy, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v108, destinationBuffer, destinationOffset, 1);
        objc_msgSend_setBytes_length_atIndex_(v19, v109, &entriesCopy, 8, 2);
        *v195 = v39;
        *&v195[8] = vdupq_n_s64(1uLL);
        v203 = v35;
        v204 = *&v195[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v19, v110, v195, &v203, v111);
      }

      objc_msgSend_endEncoding(v19, v53, v54, v55, v56, v182);

      goto LABEL_50;
    }
  }

  else
  {
    if ((*(self->super._device + 1477) & 0x40) == 0 && !self->_useSpinLockVersion && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (self->_scanImpl == 1)
    {
      goto LABEL_6;
    }
  }

  MPSAutoCache::MPSAutoCache(&v201, buffer, 0, sourceBuffer, offset);
  v116 = [MPSComputeEncoder alloc];
  v122 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v116, v117, buffer, 0, v118);
  v200[0] = v122;
  v200[1] = self;
  if ((self->super._options & 0x18) != 0)
  {
    v123 = self->super._label;
    if (v123 || (v124 = objc_opt_class(), v123 = NSStringFromClass(v124), objc_msgSend_setLabel_(self, v125, v123, v126, v127), v123))
    {
      objc_msgSend_setLabel_(v122, v119, v123, v120, v121, v182);
    }
  }

  v128 = MPSLibrary::GetComputeState(self->super._library, 0, xmmword_22E37B5E0, 1, 0, 0, 0);
  v133 = objc_msgSend_maxTotalThreadsPerThreadgroup(v128, v129, v130, v131, v132);
  objc_msgSend_setComputePipelineState_(v122, v134, v128, v135, v136);
  kernelID = self->_kernelID;
  library = self->super._library;
  v139 = *(*(library[35] + 16 * kernelID) + 64);
  if ((*(self->super._device + 1477) & 0x40) != 0 && !self->_useSpinLockVersion)
  {
    v139 |= 4u;
  }

  *&v140 = -1;
  *(&v140 + 1) = -1;
  v198 = v140;
  v199 = v140;
  v196 = -1;
  v197 = v140;
  *v195 = v140;
  *&v195[16] = v139;
  UberShaderKey = MPSLibrary::CreateUberShaderKey(library, (&off_28421B560)[16 * kernelID], v195, v139, sub_22E3552F0, v139, 1, 0, 0, 0, 0, 0, 0);
  v146 = self->super._library;
  v185 = UberShaderKey;
  explicit = atomic_load_explicit(UberShaderKey, memory_order_acquire);
  if (explicit)
  {
    if (!buffer)
    {
      goto LABEL_40;
    }

LABEL_37:
    if (explicit && (objc_msgSend_retainedReferences(buffer, v141, v142, v143, v144) & 1) == 0)
    {
      v148 = explicit;
      v203 = MEMORY[0x277D85DD0];
      v204.i64[0] = 3221225472;
      v204.i64[1] = sub_22E3717C4;
      v205 = &unk_2787BE7E8;
      v206 = explicit;
      objc_msgSend_addCompletedHandler_(buffer, v149, &v203, v150, v151);
    }

    goto LABEL_40;
  }

  explicit = MPSLibrary::MPSKey_Compile(v146, UberShaderKey);
  if (buffer)
  {
    goto LABEL_37;
  }

LABEL_40:
  v187 = offsetCopy;
  objc_msgSend_maxTotalThreadsPerThreadgroup(explicit, v141, v142, v143, v144);
  v152 = 64;
  if ((*(self->super._device + 369) & 0x400) == 0)
  {
    v152 = 256;
  }

  v183 = v152;
  v153 = 8 * v152;
  v154 = entries + 8 * v152;
  v155 = 9;
  if ((*(self->super._device + 369) & 0x400) == 0)
  {
    v155 = 11;
  }

  v156 = (v154 - 1) >> v155;
  LODWORD(entriesCopy) = entries;
  v194 = v156;
  v158 = MPSAutoCache::GetTempBuffer(&v201, 12 * v156 + 4, 0);
  if (v139)
  {
    v191 = MPSAutoCache::GetTempBuffer(&v201, 4 * v156, 0);
  }

  else
  {
    v191 = 0;
  }

  objc_msgSend_setBuffer_offset_atIndex_(v122, v157, v158, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v159, v158, 12 * v156, 1);
  objc_msgSend_setBytes_length_atIndex_(v122, v160, &v194, 4, 2);
  v203 = (v133 + v156 - 1) / v133;
  v204 = vdupq_n_s64(1uLL);
  v192 = v133;
  v193 = v204;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v122, v161, &v203, &v192, v162);
  objc_msgSend_setComputePipelineState_(v122, v163, explicit, v164, v165);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v166, sourceBuffer, v187, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v167, destinationBuffer, destinationOffset, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v168, v158, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v122, v169, v158, 4 * v156, 3);
  objc_msgSend_setBytes_length_atIndex_(v122, v170, &entriesCopy, 4, 4);
  if (v139)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v122, v171, v191, 0, 5);
  }

  objc_msgSend_setBuffer_offset_atIndex_(v122, v171, v158, 12 * v156, 6);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v122, v172, v153 | 0x10, 0, v173);
  v203 = v156;
  v204 = vdupq_n_s64(1uLL);
  v192 = v183;
  v193 = v204;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v122, v174, &v203, &v192, v175);
  sub_22E2F0214(v185);
  objc_msgSend_endEncoding(v122, v176, v177, v178, v179);

LABEL_50:
  MPSAutoCache::~MPSAutoCache(&v201, v112, v113, v114, v115);
}

@end