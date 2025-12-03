@interface MPSParallelReduce
- (MPSParallelReduce)initWithCoder:(id)coder device:(id)device;
- (MPSParallelReduce)initWithDevice:(id)device;
- (MPSParallelReduce)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
- (MPSParallelReduce)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType reduceOp:(int)op;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)initPrivateWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)destinationOffset numEntries:(unint64_t)entries;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSParallelReduce

- (MPSParallelReduce)initWithDevice:(id)device
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
  v4.super_class = MPSParallelReduce;
  return [(MPSKernel *)&v4 initWithDevice:device];
}

- (MPSParallelReduce)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSParallelReduce)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType reduceOp:(int)op
{
  result = objc_msgSend_initPrivateWithDevice_(self, a2, device, *&type, *&dataType);
  if (result)
  {
    if (type > 268435487)
    {
      if (type - 536870920 <= 0x18 && ((1 << (type - 8)) & 0x1000101) != 0)
      {
        if (dataType != 536870944)
        {
          v10 = result;
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }

        goto LABEL_20;
      }

      if (type != 268435488)
      {
LABEL_14:
        v10 = result;
        if (MTLReportFailureTypeEnabled())
        {
LABEL_15:
          v11 = objc_opt_class();
          NSStringFromClass(v11);
          MTLReportFailure();
        }

LABEL_16:

        return 0;
      }
    }

    else
    {
      if (type <= 0x20 && ((1 << type) & 0x100010100) != 0)
      {
        if (dataType != 32)
        {
          v10 = result;
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }

LABEL_20:
        result->_sourceDataType = type;
        if (type > 536870919)
        {
          if (type != 536870944)
          {
            if (type == 536870928)
            {
              v12 = 88;
              if ((op - 3) > 1)
              {
                v14 = 5 * op + 2;
              }

              else
              {
                if (op == 4)
                {
                  v18 = 12;
                }

                else
                {
                  v18 = 7;
                }

                result->_kernelID = v18;
                v12 = 92;
                v14 = 17;
              }

              goto LABEL_57;
            }

            if (type == 536870920)
            {
              v12 = 88;
              if ((op - 3) > 1)
              {
                v14 = 5 * op + 1;
              }

              else
              {
                if (op == 4)
                {
                  v15 = 11;
                }

                else
                {
                  v15 = 6;
                }

                result->_kernelID = v15;
                v12 = 92;
                v14 = 16;
              }

              goto LABEL_57;
            }

            goto LABEL_58;
          }
        }

        else if (type != 32)
        {
          if (type == 268435472)
          {
            v12 = 88;
            if ((op - 3) > 1)
            {
              v14 = 5 * op + 4;
            }

            else
            {
              if (op == 4)
              {
                v17 = 14;
              }

              else
              {
                v17 = 9;
              }

              result->_kernelID = v17;
              v12 = 92;
              v14 = 19;
            }

            goto LABEL_57;
          }

          if (type == 268435488)
          {
            v12 = 88;
            if ((op - 3) > 1)
            {
              v14 = 5 * op + 5;
            }

            else
            {
              if (op == 4)
              {
                v13 = 15;
              }

              else
              {
                v13 = 10;
              }

              result->_kernelID = v13;
              v12 = 92;
              v14 = 20;
            }

LABEL_57:
            *(&result->super.super.isa + v12) = v14;
          }

LABEL_58:
          result->_destinationDataType = dataType;
          result->_reduceOp = op;
          return result;
        }

        v12 = 88;
        if ((op - 3) > 1)
        {
          v14 = 5 * op + 3;
        }

        else
        {
          if (op == 4)
          {
            v16 = 13;
          }

          else
          {
            v16 = 8;
          }

          result->_kernelID = v16;
          v12 = 92;
          v14 = 18;
        }

        goto LABEL_57;
      }

      if (type != 268435472)
      {
        goto LABEL_14;
      }
    }

    if (dataType != 268435488)
    {
      v10 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_20;
  }

  return result;
}

- (MPSParallelReduce)initWithCoder:(id)coder device:(id)device
{
  v24.receiver = self;
  v24.super_class = MPSParallelReduce;
  v5 = [(MPSKernel *)&v24 initWithCoder:coder device:device];
  v9 = v5;
  if (!v5)
  {
    return v9;
  }

  if (*(&v5->super._fileVersion.var0 + 1) << 16 == 0x10000)
  {
    v5->_sourceDataType = objc_msgSend_decodeInt32ForKey_(coder, v6, @"MPSParallelReduce.sourceDataType", v7, v8);
    v9->_destinationDataType = objc_msgSend_decodeInt32ForKey_(coder, v10, @"MPSParallelReduce.destinationDataType", v11, v12);
    v9->_reduceOp = objc_msgSend_decodeInt32ForKey_(coder, v13, @"MPSParallelReduce.op", v14, v15);
    v9->_kernelID = objc_msgSend_decodeInt32ForKey_(coder, v16, @"MPSParallelReduce.kernelID", v17, v18);
    v9->_argkernelID = objc_msgSend_decodeInt32ForKey_(coder, v19, @"MPSParallelReduce.argkernelID", v20, v21);
    return v9;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v23 = objc_opt_class();
    NSStringFromClass(v23);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super._fileVersion.var0 + 1) = 1;
  v15.receiver = self;
  v15.super_class = MPSParallelReduce;
  [(MPSKernel *)&v15 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_sourceDataType, @"MPSParallelReduce.sourceDataType", v6);
  objc_msgSend_encodeInt32_forKey_(coder, v7, self->_destinationDataType, @"MPSParallelReduce.destinationDataType", v8);
  objc_msgSend_encodeInt32_forKey_(coder, v9, self->_reduceOp, @"MPSParallelReduce.op", v10);
  objc_msgSend_encodeInt32_forKey_(coder, v11, self->_kernelID, @"MPSParallelReduce.kernelID", v12);
  objc_msgSend_encodeInt32_forKey_(coder, v13, self->_argkernelID, @"MPSParallelReduce.argkernelID", v14);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduce;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 24) = self->_sourceDataType;
    *(result + 25) = self->_destinationDataType;
    *(result + 26) = self->_reduceOp;
    *(result + 22) = self->_kernelID;
    *(result + 23) = self->_argkernelID;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer sourceBuffer:(id)sourceBuffer sourceOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)destinationOffset numEntries:(unint64_t)entries
{
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

  entriesCopy = entries;
  MPSAutoCache::MPSAutoCache(&v83, buffer, 0, sourceBuffer, offset);
  v14 = [MPSComputeEncoder alloc];
  v20 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v14, v15, buffer, 0, v16);
  v81 = v20;
  selfCopy = self;
  if ((self->super._options & 0x18) != 0)
  {
    label = self->super._label;
    if (label || (v22 = objc_opt_class(), label = NSStringFromClass(v22), objc_msgSend_setLabel_(self, v23, label, v24, v25), label))
    {
      objc_msgSend_setLabel_(v20, v17, label, v18, v19, v72);
    }
  }

  ComputeState = MPSLibrary::GetComputeState(self->super._library, 0x15u, xmmword_22E37D448, 1, 0, 0, 0);
  destinationOffsetCopy = destinationOffset;
  objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v27, v28, v29, v30);
  if ((*(self->super._device + 369) & 0x400) != 0)
  {
    v34 = 32;
  }

  else
  {
    v34 = 128;
  }

  if ((*(self->super._device + 369) & 0x400) != 0)
  {
    v35 = 8;
  }

  else
  {
    v35 = 10;
  }

  objc_msgSend_setComputePipelineState_(v20, v31, ComputeState, v32, v33, v72);
  v36 = 8 * v34;
  v37 = 8 * v34 - 1;
  v75 = v35;
  v38 = (v37 + entries) >> v35;
  TempBuffer = MPSAutoCache::GetTempBuffer(&v83, 4 * v38, 0);
  v41 = MPSAutoCache::GetTempBuffer(&v83, 4 * v38, 0);
  if (8 * v34 >= entries)
  {
    TempBuffer = destinationBuffer;
  }

  objc_msgSend_setBuffer_offset_atIndex_(v20, v40, sourceBuffer, offset, 0);
  if (v36 >= entries)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v20, v42, TempBuffer, destinationOffsetCopy, 1);
  }

  else
  {
    objc_msgSend_setBuffer_offset_atIndex_(v20, v42, TempBuffer, 0, 1);
  }

  objc_msgSend_setBytes_length_atIndex_(v20, v43, &entriesCopy, 8, 2);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v20, v44, 32 * v34, 0, v45);
  v79 = v38;
  v80 = vdupq_n_s64(1uLL);
  v77 = v34;
  v78 = v80;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v20, v46, &v79, &v77, v47);
  v76 = v38;
  if (v38 <= v36)
  {
    v52 = TempBuffer;
    v59 = destinationOffsetCopy;
    if (v38 < 2)
    {
      goto LABEL_25;
    }

LABEL_24:
    objc_msgSend_setBuffer_offset_atIndex_(v20, v48, v52, 0, 0);
    v20 = v81;
    objc_msgSend_setBuffer_offset_atIndex_(v81, v60, destinationBuffer, v59, 1);
    objc_msgSend_setBytes_length_atIndex_(v20, v61, &v76, 8, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v20, v62, 32 * v34, 0, v63);
    v79 = (v38 + v37) >> v75;
    v80 = vdupq_n_s64(1uLL);
    v77 = v34;
    v78 = v80;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v20, v64, &v79, &v77, v65);
    goto LABEL_25;
  }

  do
  {
    v52 = v41;
    v41 = TempBuffer;
    objc_msgSend_setBuffer_offset_atIndex_(v20, v48, TempBuffer, 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v81, v53, v52, 0, 1);
    v20 = v81;
    objc_msgSend_setBytes_length_atIndex_(v81, v54, &v76, 8, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v20, v55, 32 * v34, 0, v56);
    v38 = (v38 + v37) >> v75;
    v79 = v38;
    v80 = vdupq_n_s64(1uLL);
    v77 = v34;
    v78 = v80;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v20, v57, &v79, &v77, v58);
    v76 = v38;
    TempBuffer = v52;
  }

  while (v38 > v36);
  v59 = destinationOffsetCopy;
  if (v38 >= 2)
  {
    goto LABEL_24;
  }

LABEL_25:
  objc_msgSend_endEncoding(v20, v48, v49, v50, v51);

  MPSAutoCache::~MPSAutoCache(&v83, v66, v67, v68, v69);
}

@end