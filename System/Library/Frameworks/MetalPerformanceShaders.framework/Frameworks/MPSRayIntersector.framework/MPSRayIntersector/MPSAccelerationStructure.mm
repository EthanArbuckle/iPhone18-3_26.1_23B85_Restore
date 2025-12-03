@interface MPSAccelerationStructure
- (MPSAccelerationStructure)copyWithZone:(NSZone *)zone group:(MPSAccelerationStructureGroup *)group;
- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder group:(MPSAccelerationStructureGroup *)group;
- (MPSAccelerationStructure)initWithDevice:(id)device;
- (MPSAccelerationStructure)initWithGroup:(MPSAccelerationStructureGroup *)group;
- (MPSBVHOptions)getBVHOptions;
- (id)copyAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group;
- (id)description;
- (void)dealloc;
- (void)decodeAccelerationStructureWithCoder:(id)coder;
- (void)encodeClearWithEncoder:(id)encoder buffer:(id)buffer bufferOffset:(unint64_t)offset value:(unsigned int)value;
- (void)encodeIndirectDispatchWithEncoder:(id)encoder pipeline:(id)pipeline threadCountBuffer:(id)buffer threadCountBufferOffset:(unint64_t)offset indirectDispatchBuffer:(id)dispatchBuffer indirectDispatchBufferOffset:(unint64_t)bufferOffset;
- (void)encodeWithCoder:(NSCoder *)coder;
- (void)rebuild;
- (void)setUsage:(MPSAccelerationStructureUsage)usage;
- (void)sharedInitAccelerationStructureWithGroup:(id)group;
@end

@implementation MPSAccelerationStructure

- (void)setUsage:(MPSAccelerationStructureUsage)usage
{
  if (usage >= 0xC)
  {
    sub_239E24BF0();
  }

  self->_usage = usage;
}

- (void)sharedInitAccelerationStructureWithGroup:(id)group
{
  v5 = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  self->_boundingBoxCopyPipeline = MPSLibrary::GetComputeState();
  v6 = objc_autoreleasePoolPush();
  if (!group)
  {
    v7 = [MPSAccelerationStructureGroup alloc];
    group = objc_msgSend_initWithDevice_(v7, v8, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], v9, v10);
  }

  self->_group = group;

  objc_autoreleasePoolPop(v6);
}

- (MPSAccelerationStructure)initWithDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSAccelerationStructure;
  v3 = [(MPSKernel *)&v9 initWithDevice:device];
  v7 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitAccelerationStructureWithGroup_(v3, v4, 0, v5, v6);
  }

  return v7;
}

- (MPSAccelerationStructure)initWithGroup:(MPSAccelerationStructureGroup *)group
{
  if (!group)
  {
    sub_239E24C40();
  }

  v7 = objc_msgSend_device(group, a2, group, v3, v4);
  v14.receiver = self;
  v14.super_class = MPSAccelerationStructure;
  v8 = [(MPSKernel *)&v14 initWithDevice:v7];
  v12 = v8;
  if (v8)
  {
    objc_msgSend_sharedInitAccelerationStructureWithGroup_(v8, v9, group, v10, v11);
  }

  return v12;
}

- (void)decodeAccelerationStructureWithCoder:(id)coder
{
  v22[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v22[3] = objc_opt_class();
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v22, 4, v7);
  v12 = objc_msgSend_setWithArray_(v5, v9, v8, v10, v11);
  self->_privateOptions = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v13, v12, @"MPSAccelerationStructureKeyOptions", v14);
  self->_status = objc_msgSend_decodeIntegerForKey_(coder, v15, @"MPSAccelerationStructureKeyStatus", v16, v17);
  self->_usage = objc_msgSend_decodeIntegerForKey_(coder, v18, @"MPSAccelerationStructureKeyUsage", v19, v20);
  v21 = *MEMORY[0x277D85DE8];
}

- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSAccelerationStructure;
  v5 = [(MPSKernel *)&v15 initWithCoder:aDecoder device:device];
  v9 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_sharedInitAccelerationStructureWithGroup_(v5, v6, 0, v7, v8);
      objc_msgSend_decodeAccelerationStructureWithCoder_(v9, v10, aDecoder, v11, v12);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v13 = objc_opt_class();
        NSStringFromClass(v13);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v9;
}

- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder group:(MPSAccelerationStructureGroup *)group
{
  v8 = objc_msgSend_device(group, a2, aDecoder, group, v4);
  v19.receiver = self;
  v19.super_class = MPSAccelerationStructure;
  v9 = [(MPSKernel *)&v19 initWithCoder:aDecoder device:v8];
  v13 = v9;
  if (v9)
  {
    if (*(&v9->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_sharedInitAccelerationStructureWithGroup_(v9, v10, group, v11, v12);
      objc_msgSend_decodeAccelerationStructureWithCoder_(v13, v14, aDecoder, v15, v16);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v17 = objc_opt_class();
        NSStringFromClass(v17);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSAccelerationStructure;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v11.receiver = self;
  v11.super_class = MPSAccelerationStructure;
  [(MPSKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_privateOptions, @"MPSAccelerationStructureKeyOptions", v6);
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_status, @"MPSAccelerationStructureKeyStatus", v8);
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->_usage, @"MPSAccelerationStructureKeyUsage", v10);
}

- (id)description
{
  objc_msgSend_boundingBox(self, a2, v2, v3, v4);
  v19 = v7;
  v20 = v6;
  v8 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = MPSAccelerationStructure;
  v9 = [(MPSAccelerationStructure *)&v21 description];
  status = self->_status;
  usage = self->_usage;
  v15 = "Unknown";
  v16 = "Unknown";
  if (usage <= 0xB)
  {
    v16 = off_278B3D4C0[usage];
  }

  if (status == 1)
  {
    v15 = "MPSAccelerationStructureStatusBuilt";
  }

  if (status)
  {
    v17 = v15;
  }

  else
  {
    v17 = "MPSAccelerationStructureStatusUnbuilt";
  }

  return objc_msgSend_stringWithFormat_(v8, v10, @"%@\n\tgroup: %p\n\tbounding box: min = { %f, %f, %f }, max = { %f, %f, %f }\n\tstatus: %s\n\tusage: %s", v11, v12, v9, self->_group, *&v20, *(&v20 + 1), *(&v20 + 2), *&v19, *(&v19 + 1), *(&v19 + 2), v17, v16);
}

- (id)copyAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group
{
  v17.receiver = self;
  v17.super_class = MPSAccelerationStructure;
  v7 = [(MPSKernel *)&v17 copyWithZone:zone device:device];
  v11 = v7;
  if (v7)
  {
    objc_msgSend_sharedInitAccelerationStructureWithGroup_(v7, v8, group, v9, v10);
    v11[12] = objc_msgSend_copy(self->_privateOptions, v12, v13, v14, v15);
    v11[14] = self->_status;
    v11[15] = self->_usage;
  }

  return v11;
}

- (MPSAccelerationStructure)copyWithZone:(NSZone *)zone group:(MPSAccelerationStructureGroup *)group
{
  v8 = objc_msgSend_device(group, a2, zone, group, v4);

  return MEMORY[0x2821F9670](self, sel_copyAccelerationStructureWithZone_device_group_, zone, v8, group);
}

- (MPSBVHOptions)getBVHOptions
{
  retstr->var0 = 0;
  if ((self->_usage & 3) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  retstr->var1 = v7;
  *&retstr->var2 = 0x3727C5AC3F800000;
  *&retstr->var4 = xmmword_239E27070;
  *&retstr->var8 = xmmword_239E27080;
  *&retstr->var12 = 0;
  result = self->_privateOptions;
  if (!result)
  {
    return result;
  }

  v9 = objc_msgSend_valueForKey_(result, a3, MPSAccelerationStructureOptionComputeStatistics, v3, v4);
  if (v9)
  {
    retstr->var0 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);
  }

  v14 = objc_msgSend_valueForKey_(self->_privateOptions, v10, MPSAccelerationStructureOptionFragmentCost, v12, v13);
  if (v14)
  {
    objc_msgSend_floatValue(v14, v15, v16, v17, v18);
    retstr->var2 = v19;
  }

  v20 = objc_msgSend_valueForKey_(self->_privateOptions, v15, MPSAccelerationStructureOptionSplitHeuristic, v17, v18);
  if (v20)
  {
    v24 = v20;
    if (objc_msgSend_isEqualToString_(v20, v21, MPSAccelerationStructureSplitHeuristicObjectMedian, v22, v23))
    {
      retstr->var1 = 0;
      goto LABEL_19;
    }

    if (objc_msgSend_isEqualToString_(v24, v21, MPSAccelerationStructureSplitHeuristicSAH, v22, v23))
    {
      v25 = 1;
LABEL_18:
      retstr->var1 = v25;
      goto LABEL_19;
    }

    if (objc_msgSend_isEqualToString_(v24, v21, MPSAccelerationStructureSplitHeuristicBinnedSAH, v22, v23))
    {
      v25 = 2;
      goto LABEL_18;
    }

    if (objc_msgSend_isEqualToString_(v24, v21, MPSAccelerationStructureSplitHeuristicBinnedSpatialSAH, v22, v23))
    {
      v25 = 3;
      goto LABEL_18;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v87 = v24;
      MTLReportFailure();
    }
  }

LABEL_19:
  v26 = objc_msgSend_valueForKey_(self->_privateOptions, v21, MPSAccelerationStructureOptionMinimumOverlap, v22, v23, v87);
  if (v26)
  {
    objc_msgSend_floatValue(v26, v27, v28, v29, v30);
    retstr->var3 = v31;
  }

  v32 = objc_msgSend_valueForKey_(self->_privateOptions, v27, MPSAccelerationStructureOptionBatchSize, v29, v30);
  if (v32)
  {
    retstr->var4 = objc_msgSend_unsignedIntegerValue(v32, v33, v34, v35, v36);
  }

  v37 = objc_msgSend_valueForKey_(self->_privateOptions, v33, MPSAccelerationStructureOptionMaximumConcurrentNodeSize, v35, v36);
  if (v37)
  {
    retstr->var5 = objc_msgSend_unsignedIntegerValue(v37, v38, v39, v40, v41);
  }

  v42 = objc_msgSend_valueForKey_(self->_privateOptions, v38, MPSAccelerationStructureOptionBins, v40, v41);
  if (v42)
  {
    retstr->var9 = objc_msgSend_unsignedIntegerValue(v42, v43, v44, v45, v46);
  }

  v47 = objc_msgSend_valueForKey_(self->_privateOptions, v43, MPSAccelerationStructureOptionMaxDepth, v45, v46);
  if (v47)
  {
    v52 = objc_msgSend_unsignedIntegerValue(v47, v48, v49, v50, v51);
    retstr->var8 = v52;
  }

  else
  {
    v52 = 32;
  }

  v53 = objc_msgSend_valueForKey_(self->_privateOptions, v48, MPSAccelerationStructureOptionMaxFragmentsPerLeaf, v50, v51);
  if (v53)
  {
    retstr->var7 = objc_msgSend_unsignedIntegerValue(v53, v54, v55, v56, v57);
  }

  v58 = objc_msgSend_valueForKey_(self->_privateOptions, v54, MPSAccelerationStructureOptionMinFragmentsPerLeaf, v56, v57);
  if (v58)
  {
    retstr->var6 = objc_msgSend_unsignedIntegerValue(v58, v59, v60, v61, v62);
  }

  v63 = objc_msgSend_valueForKey_(self->_privateOptions, v59, MPSAccelerationStructureOptionBuilder, v61, v62);
  if (!v63)
  {
    goto LABEL_40;
  }

  v67 = v63;
  if (objc_msgSend_isEqualToString_(v63, v64, MPSAccelerationStructureBuilderGPU, v65, v66))
  {
    v68 = 2;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v67, v64, MPSAccelerationStructureBuilderCPU, v65, v66))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v88 = v67;
        MTLReportFailure();
      }

      goto LABEL_40;
    }

    v68 = 1;
  }

  retstr->var10 = v68;
LABEL_40:
  v69 = objc_msgSend_valueForKey_(self->_privateOptions, v64, MPSAccelerationStructureOptionGPUBuilderType, v65, v66, v88);
  if (v69)
  {
    v73 = v69;
    if (objc_msgSend_isEqualToString_(v69, v70, MPSAccelerationStructureGPUBuilderTypeDefault, v71, v72))
    {
      retstr->var13 = 0;
    }

    else if (objc_msgSend_isEqualToString_(v73, v70, MPSAccelerationStructureGPUBuilderTypeFast, v71, v72))
    {
      retstr->var13 = 1;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v89 = v73;
      MTLReportFailure();
    }
  }

  v74 = objc_msgSend_valueForKey_(self->_privateOptions, v70, MPSAccelerationStructureOptionBranchingFactor, v71, v72, v89);
  if (v74)
  {
    v79 = objc_msgSend_unsignedIntegerValue(v74, v75, v76, v77, v78);
    retstr->var11 = v79;
  }

  else
  {
    v79 = 2;
  }

  result = objc_msgSend_valueForKey_(self->_privateOptions, v75, MPSAccelerationStructureOptionNodeLayout, v77, v78);
  if (result)
  {
    v83 = result;
    result = objc_msgSend_isEqualToString_(result, v80, MPSAccelerationStructureNodeLayoutSOA, v81, v82);
    if (result)
    {
      retstr->var12 = 0;
    }

    else
    {
      result = objc_msgSend_isEqualToString_(v83, v84, MPSAccelerationStructureNodeLayoutAOS, v85, v86);
      if (result)
      {
        retstr->var12 = 1;
      }

      else
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }
    }
  }

  if (v79 == 4)
  {
    if (v52 >= 0x11)
    {
      return sub_239E24C90();
    }
  }

  else if (v79 == 2)
  {
    if (v52 >= 0x21)
    {
      return sub_239E24CE4();
    }
  }

  else
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      return MTLReportFailure();
    }
  }

  return result;
}

- (void)rebuild
{
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_239E1899C;
  v7[3] = &unk_278B3D290;
  v7[4] = v3;
  objc_msgSend_rebuildWithCompletionHandler_(self, v4, v7, v5, v6);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  kdebug_trace();
  dispatch_release(v3);
}

- (void)encodeClearWithEncoder:(id)encoder buffer:(id)buffer bufferOffset:(unint64_t)offset value:(unsigned int)value
{
  valueCopy = value;
  v9 = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(encoder, v11, ComputeState, v12, v13);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v14, buffer, offset, 29);
  objc_msgSend_setBytes_length_atIndex_(encoder, v15, &valueCopy, 4, 30);
  v23 = vdupq_n_s64(1uLL);
  v24 = v23;
  v25 = 1;
  v22 = objc_msgSend_threadExecutionWidth(ComputeState, v16, v17, v18, v19);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v20, &v24, &v22, v21);
}

- (void)encodeIndirectDispatchWithEncoder:(id)encoder pipeline:(id)pipeline threadCountBuffer:(id)buffer threadCountBufferOffset:(unint64_t)offset indirectDispatchBuffer:(id)dispatchBuffer indirectDispatchBufferOffset:(unint64_t)bufferOffset
{
  v14 = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(encoder, v16, ComputeState, v17, v18);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v19, buffer, offset, 28);
  v44 = objc_msgSend_threadExecutionWidth(pipeline, v20, v21, v22, v23);
  objc_msgSend_setBytes_length_atIndex_(encoder, v24, &v44, 4, 29);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v25, dispatchBuffer, bufferOffset, 30);
  v40 = vdupq_n_s64(1uLL);
  v42 = v40;
  *v43 = v40;
  *&v43[16] = 1;
  v41 = objc_msgSend_threadExecutionWidth(ComputeState, v26, v27, v28, v29);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v30, v43, &v41, v31);
  objc_msgSend_setComputePipelineState_(encoder, v32, pipeline, v33, v34);
  *v43 = objc_msgSend_threadExecutionWidth(pipeline, v35, v36, v37, v38);
  *&v43[8] = v40;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(encoder, v39, dispatchBuffer, bufferOffset, v43);
}

@end