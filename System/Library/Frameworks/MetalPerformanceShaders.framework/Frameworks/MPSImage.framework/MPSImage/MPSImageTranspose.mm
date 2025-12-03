@interface MPSImageTranspose
- (MPSImageTranspose)initWithCoder:(id)coder device:(id)device;
- (MPSImageTranspose)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageTranspose

- (MPSImageTranspose)initWithDevice:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSImageTranspose;
  result = [(MPSUnaryImageKernel *)&v10 initWithDevice:device];
  if (result)
  {
    v9 = result;
    objc_msgSend_initEncoder(result, v4, v5, v6, v7, v8);
    result = v9;
    v9->super._checkFlags = 320;
  }

  return result;
}

- (MPSImageTranspose)initWithCoder:(id)coder device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSImageTranspose;
  v4 = [(MPSUnaryImageKernel *)&v13 initWithCoder:coder device:device];
  v10 = v4;
  if (!v4)
  {
    return v10;
  }

  if (*(&v4->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_initEncoder(v4, v5, v6, v7, v8, v9);
    v10->super._checkFlags = 320;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSImageTranspose;
  [(MPSUnaryImageKernel *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSImageTranspose;
  result = [(MPSUnaryImageKernel *)&v11 copyWithZone:zone device:device];
  if (result)
  {
    v10 = result;
    objc_msgSend_initEncoder(result, v5, v6, v7, v8, v9);
    return v10;
  }

  return result;
}

@end