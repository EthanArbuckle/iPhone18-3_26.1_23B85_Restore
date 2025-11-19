@interface MPSParallelRandom
- (MPSParallelRandom)initWithCoder:(id)a3 device:(id)a4;
- (MPSParallelRandom)initWithDevice:(id)a3;
- (MPSParallelRandom)initWithDevice:(id)a3 destinationDataType:(unsigned int)a4 generatorType:(int)a5 distributionDescriptor:(id)a6;
- (void)encodeToCommandBuffer:(id)a3 computeEncoder:(id)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6 numEntries:(unint64_t)a7 stride:(unsigned int)a8;
- (void)encodeToCommandBuffer:(id)a3 destinationBuffer:(id)a4 destinationOffset:(unint64_t)a5 numEntries:(unint64_t)a6 stride:(unsigned int)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSParallelRandom

- (MPSParallelRandom)initWithDevice:(id)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSParallelRandom)initWithDevice:(id)a3 destinationDataType:(unsigned int)a4 generatorType:(int)a5 distributionDescriptor:(id)a6
{
  v16.receiver = self;
  v16.super_class = MPSParallelRandom;
  result = [(MPSKernel *)&v16 initWithDevice:a3];
  if (result)
  {
    result->_destinationDataType = a4;
    result->_generatorType = a5;
    v14 = result;
    v15 = objc_msgSend_distributionType(a6, v10, v11, v12, v13);
    result = v14;
    v14->_distributionType = v15;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)a3 computeEncoder:(id)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6 numEntries:(unint64_t)a7 stride:(unsigned int)a8
{
  if ((self->super._options & 1) == 0)
  {
    v14 = a3;
    if (!a3 && MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      v27 = NSStringFromClass(v22);
      MTLReportFailure();
    }

    if (!a5 && MTLReportFailureTypeEnabled())
    {
      v23 = objc_opt_class();
      v27 = NSStringFromClass(v23);
      MTLReportFailure();
    }

    objc_msgSend_length(a5, a2, a3, a4, a5, v27);
    v15 = (a7 + a6) * (self->_destinationDataType >> 3);
    if (v15 > objc_msgSend_length(a5, v16, v17, v18, v19) && MTLReportFailureTypeEnabled())
    {
      v24 = objc_opt_class();
      NSStringFromClass(v24);
      MTLReportFailure();
    }

    distributionType = self->_distributionType;
    a3 = v14;
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
      a3 = v14;
    }

    if (distributionType == 2 && self->_destinationDataType != 268435488)
    {
      v25 = MTLReportFailureTypeEnabled();
      a3 = v14;
      if (v25)
      {
        v26 = objc_opt_class();
        NSStringFromClass(v26);
        MTLReportFailure();
        a3 = v14;
      }
    }
  }

LABEL_12:
  if (a7)
  {

    sub_22E367DD0(self, a4, a3, a5, a6, a7, a8);
  }
}

- (void)encodeToCommandBuffer:(id)a3 destinationBuffer:(id)a4 destinationOffset:(unint64_t)a5 numEntries:(unint64_t)a6 stride:(unsigned int)a7
{
  if ((self->super._options & 1) == 0)
  {
    if (!a3 && MTLReportFailureTypeEnabled())
    {
      v37 = objc_opt_class();
      v41 = NSStringFromClass(v37);
      MTLReportFailure();
    }

    if (!a4 && MTLReportFailureTypeEnabled())
    {
      v38 = objc_opt_class();
      v41 = NSStringFromClass(v38);
      MTLReportFailure();
    }

    objc_msgSend_length(a4, a2, a3, a4, a5, v41);
    v13 = (a6 + a5) * (self->_destinationDataType >> 3);
    if (v13 > objc_msgSend_length(a4, v14, v15, v16, v17) && MTLReportFailureTypeEnabled())
    {
      v39 = objc_opt_class();
      v43 = a4;
      v44 = a5;
      v41 = NSStringFromClass(v39);
      v42 = a6;
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
  if (a6)
  {
    v20 = [MPSComputeEncoder alloc];
    v26 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v20, v21, a3, 0, v22);
    if ((self->super._options & 0x18) != 0)
    {
      label = self->super._label;
      if (label || (v28 = objc_opt_class(), v29 = NSStringFromClass(v28), objc_msgSend_setLabel_(self, v30, v29, v31, v32), (label = v29) != 0))
      {
        objc_msgSend_setLabel_(v26, v23, label, v24, v25, v41, v42, v43, v44, v26, self);
      }
    }

    sub_22E367DD0(self, v26, a3, a4, a5, a6, a7);
    objc_msgSend_endEncoding(v26, v33, v34, v35, v36);
  }
}

- (MPSParallelRandom)initWithCoder:(id)a3 device:(id)a4
{
  v18.receiver = self;
  v18.super_class = MPSParallelRandom;
  v5 = [(MPSKernel *)&v18 initWithCoder:a3 device:a4];
  v9 = v5;
  if (!v5)
  {
    return v9;
  }

  if (*(&v5->super._fileVersion.var0 + 1) << 16 == 0x10000)
  {
    v5->_destinationDataType = objc_msgSend_decodeInt32ForKey_(a3, v6, @"kMPSParallelRandomDataTypeKey", v7, v8);
    v9->_distributionType = objc_msgSend_decodeInt32ForKey_(a3, v10, @"kMPSParallelRandomDistributionKey", v11, v12);
    v9->_generatorType = objc_msgSend_decodeInt32ForKey_(a3, v13, @"kMPSParallelRandomGeneratorKey", v14, v15);
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

- (void)encodeWithCoder:(id)a3
{
  *(&self->super._fileVersion.var0 + 1) = 1;
  v11.receiver = self;
  v11.super_class = MPSParallelRandom;
  [(MPSKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(a3, v5, self->_destinationDataType, @"kMPSParallelRandomDataTypeKey", v6);
  objc_msgSend_encodeInt32_forKey_(a3, v7, LODWORD(self->_distributionType), @"kMPSParallelRandomDistributionKey", v8);
  objc_msgSend_encodeInt32_forKey_(a3, v9, self->_generatorType, @"kMPSParallelRandomGeneratorKey", v10);
}

@end