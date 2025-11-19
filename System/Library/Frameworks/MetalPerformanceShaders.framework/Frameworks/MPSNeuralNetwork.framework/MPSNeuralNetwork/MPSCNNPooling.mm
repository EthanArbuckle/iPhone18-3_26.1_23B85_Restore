@interface MPSCNNPooling
- (MPSCNNPooling)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPooling)initWithDevice:(id)device;
- (MPSCNNPooling)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4;
- (id)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4;
- (void)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4 destinationImages:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 destinationImage:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 strideInPixelsX:(unint64_t)a5 strideInPixelsY:(unint64_t)a6;
@end

@implementation MPSCNNPooling

- (MPSCNNPooling)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNPooling)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v12.receiver = self;
  v12.super_class = MPSCNNPooling;
  result = [(MPSCNNKernel *)&v12 initWithDevice:device];
  if (result)
  {
    result->super._kernelWidth = kernelWidth;
    result->super._kernelHeight = kernelHeight;
    result->super._strideInPixelsX = strideInPixelsX;
    result->super._strideInPixelsY = strideInPixelsY;
    result->super._checkFlags |= 0x8001u;
    result->super._encode = 0;
    result->super._encodeData = result;
  }

  return result;
}

- (void)setKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 strideInPixelsX:(unint64_t)a5 strideInPixelsY:(unint64_t)a6
{
  self->super._kernelWidth = a3;
  self->super._kernelHeight = a4;
  self->super._strideInPixelsX = a5;
  self->super._strideInPixelsY = a6;
}

- (void)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 destinationImage:(id)a5
{
  v5.receiver = self;
  v5.super_class = MPSCNNPooling;
  [(MPSCNNKernel *)&v5 encodeToCommandBuffer:a3 sourceImage:a4 destinationImage:a5];
}

- (void)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4 destinationImages:(id)a5
{
  v5.receiver = self;
  v5.super_class = MPSCNNPooling;
  [(MPSCNNKernel *)&v5 encodeBatchToCommandBuffer:a3 sourceImages:a4 destinationImages:a5];
}

- (id)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSCNNPooling;
  return [(MPSCNNKernel *)&v5 encodeToCommandBuffer:a3 sourceImage:a4];
}

- (id)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSCNNPooling;
  return [(MPSCNNKernel *)&v5 encodeBatchToCommandBuffer:a3 sourceImages:a4];
}

- (MPSCNNPooling)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v33.receiver = self;
  v33.super_class = MPSCNNPooling;
  v5 = [(MPSCNNKernel *)&v33 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNPooling.kernelWidth", v7, v8, v9, v10, v11);
    v12->super._kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSCNNPooling.kernelHeight", v14, v15, v16, v17, v18);
    v12->super._strideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSCNNPooling.strideX", v20, v21, v22, v23, v24);
    v12->super._strideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSCNNPooling.strideY", v26, v27, v28, v29, v30);
    v12->super._checkFlags |= 0x8001u;
    v12->super._encodeData = v12;
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
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v25.receiver = self;
  v25.super_class = MPSCNNPooling;
  [(MPSCNNKernel *)&v25 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->super._kernelWidth, @"MPSCNNPooling.kernelWidth", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->super._kernelHeight, @"MPSCNNPooling.kernelHeight", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->super._strideInPixelsX, @"MPSCNNPooling.strideX", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->super._strideInPixelsY, @"MPSCNNPooling.strideY", v21, v22, v23, v24);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSCNNPooling;
  result = [(MPSCNNKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 25) = self->super._kernelWidth;
    *(result + 26) = self->super._kernelHeight;
    *(result + 27) = self->super._strideInPixelsX;
    *(result + 28) = self->super._strideInPixelsY;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v44.receiver = self;
  v44.super_class = MPSCNNPooling;
  v4 = [(MPSCNNKernel *)&v44 debugDescription];
  v12 = objc_msgSend_kernelWidth(self, v5, v6, v7, v8, v9, v10, v11);
  v20 = objc_msgSend_kernelHeight(self, v13, v14, v15, v16, v17, v18, v19);
  v28 = objc_msgSend_strideInPixelsX(self, v21, v22, v23, v24, v25, v26, v27);
  v36 = objc_msgSend_strideInPixelsY(self, v29, v30, v31, v32, v33, v34, v35);
  return objc_msgSend_stringWithFormat_(v3, v37, @"%@\n\tkernelWidth: %lu\n\tkernelHeight: %lu\n\tstride X: %lu\n\tstride Y: %lu\n", v38, v39, v40, v41, v42, v4, v12, v20, v28, v36);
}

@end