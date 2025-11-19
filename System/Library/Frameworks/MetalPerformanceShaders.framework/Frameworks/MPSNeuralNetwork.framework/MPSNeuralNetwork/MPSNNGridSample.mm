@interface MPSNNGridSample
- (MPSNNGridSample)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNGridSample)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNGridSample

- (MPSNNGridSample)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNGridSample;
  result = [(MPSCNNBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_useGridValueAsInputCoordinate = 1;
    result->super._checkFlags = 2563;
    result->super._encode = sub_239BF2E14;
    result->super._batchEncode = sub_239BF3178;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSNNGridSample)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v15.receiver = self;
  v15.super_class = MPSNNGridSample;
  v5 = [(MPSCNNBinaryKernel *)&v15 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_useGridValueAsInputCoordinate = objc_msgSend_decodeBoolForKey_(aDecoder, v6, @"MPSNNGridSample.useGridValueAsInputCoordinate", v7, v8, v9, v10, v11);
    v12->super._checkFlags = 2563;
    v12->super._encode = sub_239BF2E14;
    v12->super._batchEncode = sub_239BF3178;
    v12->super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v14 = objc_opt_class();
    NSStringFromClass(v14);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSNNGridSample;
  [(MPSCNNBinaryKernel *)&v10 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(a3, v5, self->_useGridValueAsInputCoordinate, @"MPSNNGridSample.useGridValueAsInputCoordinate", v6, v7, v8, v9);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNNGridSample;
  result = [(MPSCNNBinaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 416) = self->_useGridValueAsInputCoordinate;
    *(result + 47) = sub_239BF2E14;
    *(result + 48) = sub_239BF3178;
    *(result + 49) = self;
    *(result + 92) = 2563;
  }

  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MPSNNGridSample;
  v3 = [(MPSCNNBinaryKernel *)&v11 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n\tGridSample", v5, v6, v7, v8, v9, v3);
}

@end