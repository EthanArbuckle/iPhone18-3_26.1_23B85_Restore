@interface MPSMatrixRandom
- (MPSMatrixRandom)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixRandom)initWithDevice:(id)device;
- (MPSMatrixRandom)initWithDevice:(id)device destinationDataType:(unsigned int)type distributionType:(unint64_t)distributionType;
- (void)encodeToCommandBuffer:(id)commandBuffer destinationMatrix:(MPSMatrix *)destinationMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer destinationVector:(MPSVector *)destinationVector;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixRandom

- (MPSMatrixRandom)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSMatrixRandom)initWithDevice:(id)device destinationDataType:(unsigned int)type distributionType:(unint64_t)distributionType
{
  v8.receiver = self;
  v8.super_class = MPSMatrixRandom;
  result = [(MPSKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->_destinationDataType = type;
    result->_distributionType = distributionType;
    result->_batchStart = 0;
    result->_batchSize = 1;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer destinationVector:(MPSVector *)destinationVector
{
  if (MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer destinationMatrix:(MPSMatrix *)destinationMatrix
{
  if (MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

- (MPSMatrixRandom)initWithCoder:(id)coder device:(id)device
{
  v33.receiver = self;
  v33.super_class = MPSMatrixRandom;
  v5 = [(MPSKernel *)&v33 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_destinationDataType = objc_msgSend_decodeInt32ForKey_(coder, v6, @"kMPSMatrixRandomDataTypeKey", v7, v8, v9, v10, v11);
    v12->_distributionType = objc_msgSend_decodeInt32ForKey_(coder, v13, @"kMPSMatrixRandomDistributionKey", v14, v15, v16, v17, v18);
    v12->_batchStart = objc_msgSend_decodeInt32ForKey_(coder, v19, @"kMPSMatrixRandomBatchStartKey", v20, v21, v22, v23, v24);
    v12->_batchSize = objc_msgSend_decodeInt32ForKey_(coder, v25, @"kMPSMatrixRandomBatchSizeKey", v26, v27, v28, v29, v30);
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v32 = objc_opt_class();
    NSStringFromClass(v32);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v25.receiver = self;
  v25.super_class = MPSMatrixRandom;
  [(MPSKernel *)&v25 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_destinationDataType, @"kMPSMatrixRandomDataTypeKey", v6, v7, v8, v9);
  objc_msgSend_encodeInt32_forKey_(coder, v10, LODWORD(self->_distributionType), @"kMPSMatrixRandomDistributionKey", v11, v12, v13, v14);
  objc_msgSend_encodeInt32_forKey_(coder, v15, LODWORD(self->_batchStart), @"kMPSMatrixRandomBatchStartKey", v16, v17, v18, v19);
  objc_msgSend_encodeInt32_forKey_(coder, v20, LODWORD(self->_batchSize), @"kMPSMatrixRandomBatchSizeKey", v21, v22, v23, v24);
}

@end