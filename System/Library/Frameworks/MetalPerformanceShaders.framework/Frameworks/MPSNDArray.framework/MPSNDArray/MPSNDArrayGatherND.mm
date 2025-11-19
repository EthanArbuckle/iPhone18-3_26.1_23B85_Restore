@interface MPSNDArrayGatherND
- (MPSNDArrayGatherND)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayGatherND)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 destinationArray:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayGatherND

- (MPSNDArrayGatherND)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGatherND;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeGatherND;
  result->super.super.super._encodeData = result;
  result->_batchDimensions = 0;
  result->_allowNegativeIndices = 0;
  return result;
}

- (MPSNDArrayGatherND)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayGatherND;
  result = [(MPSNDArrayBinaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeGatherND;
    result->super.super.super._encodeData = result;
    result->_batchDimensions = 0;
    result->_allowNegativeIndices = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayGatherND;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGatherND;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super.super._encode = EncodeGatherND;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 destinationArray:(id)a6
{
  v7 = *(a6 + *MEMORY[0x277CD73C8]);
  if (v7 != 268435488 && v7 != 536870944)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = MTLReportFailureTypeEnabled();
    a3 = v11;
    a4 = v10;
    a5 = v9;
    if (v12)
    {
      MTLReportFailure();
      a3 = v11;
      a4 = v10;
      a5 = v9;
    }
  }

  v13.receiver = self;
  v13.super_class = MPSNDArrayGatherND;
  [(MPSNDArrayBinaryKernel *)&v13 encodeToCommandBuffer:a3 primarySourceArray:a4 secondarySourceArray:a5 destinationArray:?];
}

@end