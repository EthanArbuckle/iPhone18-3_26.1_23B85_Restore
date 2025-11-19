@interface MPSMatrixRandom
- (MPSMatrixRandom)initWithCoder:(id)a3 device:(id)a4;
- (MPSMatrixRandom)initWithDevice:(id)a3 destinationDataType:(unsigned int)a4 distributionType:(unint64_t)a5;
- (MPSMatrixRandom)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)commandBuffer destinationMatrix:(MPSMatrix *)destinationMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer destinationVector:(MPSVector *)destinationVector;
- (void)encodeWithCoder:(id)a3;
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

- (MPSMatrixRandom)initWithDevice:(id)a3 destinationDataType:(unsigned int)a4 distributionType:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = MPSMatrixRandom;
  result = [(MPSKernel *)&v8 initWithDevice:a3];
  if (result)
  {
    result->_destinationDataType = a4;
    result->_distributionType = a5;
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

- (MPSMatrixRandom)initWithCoder:(id)a3 device:(id)a4
{
  v33.receiver = self;
  v33.super_class = MPSMatrixRandom;
  v5 = [(MPSKernel *)&v33 initWithCoder:a3 device:a4];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_destinationDataType = objc_msgSend_decodeInt32ForKey_(a3, v6, @"kMPSMatrixRandomDataTypeKey", v7, v8, v9, v10, v11);
    v12->_distributionType = objc_msgSend_decodeInt32ForKey_(a3, v13, @"kMPSMatrixRandomDistributionKey", v14, v15, v16, v17, v18);
    v12->_batchStart = objc_msgSend_decodeInt32ForKey_(a3, v19, @"kMPSMatrixRandomBatchStartKey", v20, v21, v22, v23, v24);
    v12->_batchSize = objc_msgSend_decodeInt32ForKey_(a3, v25, @"kMPSMatrixRandomBatchSizeKey", v26, v27, v28, v29, v30);
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

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v25.receiver = self;
  v25.super_class = MPSMatrixRandom;
  [(MPSKernel *)&v25 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(a3, v5, self->_destinationDataType, @"kMPSMatrixRandomDataTypeKey", v6, v7, v8, v9);
  objc_msgSend_encodeInt32_forKey_(a3, v10, LODWORD(self->_distributionType), @"kMPSMatrixRandomDistributionKey", v11, v12, v13, v14);
  objc_msgSend_encodeInt32_forKey_(a3, v15, LODWORD(self->_batchStart), @"kMPSMatrixRandomBatchStartKey", v16, v17, v18, v19);
  objc_msgSend_encodeInt32_forKey_(a3, v20, LODWORD(self->_batchSize), @"kMPSMatrixRandomBatchSizeKey", v21, v22, v23, v24);
}

@end