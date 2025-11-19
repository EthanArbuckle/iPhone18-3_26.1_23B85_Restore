@interface MPSImageAreaMax
- (MPSImageAreaMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageAreaMax)initWithDevice:(id)device;
- (MPSImageAreaMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)initEncoder;
@end

@implementation MPSImageAreaMax

- (void)initEncoder
{
  self->super._getPreferredTileSize = sub_23994C3F4;
  self->super._encode = sub_23994C584;
  self->super._encodeData = self;
}

- (MPSImageAreaMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v14.receiver = self;
  v14.super_class = MPSImageAreaMax;
  result = [(MPSUnaryImageKernel *)&v14 initWithDevice:device];
  if (result)
  {
    result->_kernelWidth = kernelWidth;
    result->_kernelHeight = kernelHeight;
    result->info = 0;
    result->info_half = 28;
    v13 = result;
    objc_msgSend_initEncoder(result, v8, v9, v10, v11, v12);
    return v13;
  }

  return result;
}

- (MPSImageAreaMax)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(self, v5, device, 1, 1, v6);
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v11.receiver = self;
  v11.super_class = MPSImageAreaMax;
  [(MPSUnaryImageKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_kernelWidth, @"MPSMinMax.kernelWidth", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, self->_kernelHeight, @"MPSMinMax.kernelHeight", v9, v10);
}

- (MPSImageAreaMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v22.receiver = self;
  v22.super_class = MPSImageAreaMax;
  v5 = [(MPSUnaryImageKernel *)&v22 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSMinMax.kernelWidth", v7, v8, v9);
    v10->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSMinMax.kernelHeight", v12, v13, v14);
    v10->info = 0;
    v10->info_half = 28;
    objc_msgSend_initEncoder(v10, v15, v16, v17, v18, v19);
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v12.receiver = self;
  v12.super_class = MPSImageAreaMax;
  result = [(MPSUnaryImageKernel *)&v12 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 26) = self->_kernelWidth;
    *(result + 27) = self->_kernelHeight;
    *(result + 56) = self->info;
    *(result + 57) = self->info_half;
    v11 = result;
    objc_msgSend_initEncoder(self, v6, v7, v8, v9, v10);
    return v11;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v22.receiver = self;
  v22.super_class = MPSImageAreaMax;
  v4 = [(MPSUnaryImageKernel *)&v22 debugDescription];
  v10 = objc_msgSend_kernelWidth(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_kernelHeight(self, v11, v12, v13, v14, v15);
  return objc_msgSend_stringWithFormat_(v3, v17, @"%@\n\tkernelWidth: %lu\n\tkernelHeight: %lu", v18, v19, v20, v4, v10, v16);
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageAreaMax;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_kernelWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

@end