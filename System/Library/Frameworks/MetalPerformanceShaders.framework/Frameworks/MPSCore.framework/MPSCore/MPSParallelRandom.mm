@interface MPSParallelRandom
- (MPSParallelRandom)initWithCoder:(id)coder device:(id)device;
- (MPSParallelRandom)initWithDevice:(id)device;
- (MPSParallelRandom)initWithDevice:(id)device destinationDataType:(unsigned int)type generatorType:(int)generatorType distributionDescriptor:(id)descriptor;
- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride;
- (void)encodeToCommandBuffer:(id)buffer destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSParallelRandom

- (MPSParallelRandom)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSParallelRandom)initWithDevice:(id)device destinationDataType:(unsigned int)type generatorType:(int)generatorType distributionDescriptor:(id)descriptor
{
  v16.receiver = self;
  v16.super_class = MPSParallelRandom;
  result = [(MPSKernel *)&v16 initWithDevice:device];
  if (result)
  {
    result->_destinationDataType = type;
    result->_generatorType = generatorType;
    v14 = result;
    v15 = objc_msgSend_distributionType(descriptor, v10, v11, v12, v13);
    result = v14;
    v14->_distributionType = v15;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer computeEncoder:(id)encoder destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride
{
  if ((self->super._options & 1) == 0)
  {
    bufferCopy = buffer;
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      v27 = NSStringFromClass(v22);
      MTLReportFailure();
    }

    if (!destinationBuffer && MTLReportFailureTypeEnabled())
    {
      v23 = objc_opt_class();
      v27 = NSStringFromClass(v23);
      MTLReportFailure();
    }

    objc_msgSend_length(destinationBuffer, a2, buffer, encoder, destinationBuffer, v27);
    v15 = (entries + offset) * (self->_destinationDataType >> 3);
    if (v15 > objc_msgSend_length(destinationBuffer, v16, v17, v18, v19) && MTLReportFailureTypeEnabled())
    {
      v24 = objc_opt_class();
      NSStringFromClass(v24);
      MTLReportFailure();
    }

    distributionType = self->_distributionType;
    buffer = bufferCopy;
    if (distributionType == 1)
    {
      if (self->_destinationDataType == 32)
      {
        goto LABEL_12;
      }

      if (MTLReportFailureTypeEnabled())
      {
        v21 = objc_opt_class();
        NSStringFromClass(v21);
        MTLReportFailure();
      }

      distributionType = self->_distributionType;
      buffer = bufferCopy;
    }

    if (distributionType == 2 && self->_destinationDataType != 268435488)
    {
      v25 = MTLReportFailureTypeEnabled();
      buffer = bufferCopy;
      if (v25)
      {
        v26 = objc_opt_class();
        NSStringFromClass(v26);
        MTLReportFailure();
        buffer = bufferCopy;
      }
    }
  }

LABEL_12:
  if (entries)
  {

    sub_22E367DD0(self, encoder, buffer, destinationBuffer, offset, entries, stride);
  }
}

- (void)encodeToCommandBuffer:(id)buffer destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset numEntries:(unint64_t)entries stride:(unsigned int)stride
{
  if ((self->super._options & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v37 = objc_opt_class();
      v41 = NSStringFromClass(v37);
      MTLReportFailure();
    }

    if (!destinationBuffer && MTLReportFailureTypeEnabled())
    {
      v38 = objc_opt_class();
      v41 = NSStringFromClass(v38);
      MTLReportFailure();
    }

    objc_msgSend_length(destinationBuffer, a2, buffer, destinationBuffer, offset, v41);
    v13 = (entries + offset) * (self->_destinationDataType >> 3);
    if (v13 > objc_msgSend_length(destinationBuffer, v14, v15, v16, v17) && MTLReportFailureTypeEnabled())
    {
      v39 = objc_opt_class();
      destinationBufferCopy = destinationBuffer;
      offsetCopy = offset;
      v41 = NSStringFromClass(v39);
      entriesCopy = entries;
      MTLReportFailure();
    }

    distributionType = self->_distributionType;
    if (distributionType == 1)
    {
      if (self->_destinationDataType == 32)
      {
        goto LABEL_12;
      }

      if (MTLReportFailureTypeEnabled())
      {
        v19 = objc_opt_class();
        v41 = NSStringFromClass(v19);
        MTLReportFailure();
      }

      distributionType = self->_distributionType;
    }

    if (distributionType == 2 && self->_destinationDataType != 268435488 && MTLReportFailureTypeEnabled())
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      MTLReportFailure();
    }
  }

LABEL_12:
  if (entries)
  {
    v20 = [MPSComputeEncoder alloc];
    v26 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v20, v21, buffer, 0, v22);
    if ((self->super._options & 0x18) != 0)
    {
      label = self->super._label;
      if (label || (v28 = objc_opt_class(), v29 = NSStringFromClass(v28), objc_msgSend_setLabel_(self, v30, v29, v31, v32), (label = v29) != 0))
      {
        objc_msgSend_setLabel_(v26, v23, label, v24, v25, v41, entriesCopy, destinationBufferCopy, offsetCopy, v26, self);
      }
    }

    sub_22E367DD0(self, v26, buffer, destinationBuffer, offset, entries, stride);
    objc_msgSend_endEncoding(v26, v33, v34, v35, v36);
  }
}

- (MPSParallelRandom)initWithCoder:(id)coder device:(id)device
{
  v18.receiver = self;
  v18.super_class = MPSParallelRandom;
  v5 = [(MPSKernel *)&v18 initWithCoder:coder device:device];
  v9 = v5;
  if (!v5)
  {
    return v9;
  }

  if (*(&v5->super._fileVersion.var0 + 1) << 16 == 0x10000)
  {
    v5->_destinationDataType = objc_msgSend_decodeInt32ForKey_(coder, v6, @"kMPSParallelRandomDataTypeKey", v7, v8);
    v9->_distributionType = objc_msgSend_decodeInt32ForKey_(coder, v10, @"kMPSParallelRandomDistributionKey", v11, v12);
    v9->_generatorType = objc_msgSend_decodeInt32ForKey_(coder, v13, @"kMPSParallelRandomGeneratorKey", v14, v15);
    return v9;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v17 = objc_opt_class();
    NSStringFromClass(v17);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super._fileVersion.var0 + 1) = 1;
  v11.receiver = self;
  v11.super_class = MPSParallelRandom;
  [(MPSKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_destinationDataType, @"kMPSParallelRandomDataTypeKey", v6);
  objc_msgSend_encodeInt32_forKey_(coder, v7, LODWORD(self->_distributionType), @"kMPSParallelRandomDistributionKey", v8);
  objc_msgSend_encodeInt32_forKey_(coder, v9, self->_generatorType, @"kMPSParallelRandomGeneratorKey", v10);
}

@end