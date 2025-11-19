@interface MPSImageMedian
- (MPSImageMedian)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageMedian)initWithDevice:(id)device;
- (MPSImageMedian)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSImageMedian

- (MPSImageMedian)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter
{
  v13.receiver = self;
  v13.super_class = MPSImageMedian;
  result = [(MPSUnaryImageKernel *)&v13 initWithDevice:device];
  if (result)
  {
    if (kernelDiameter)
    {
      if (kernelDiameter > 2)
      {
        if (kernelDiameter < 0x80)
        {
          result->_filterDiameter = kernelDiameter;
          v11 = result;
          objc_msgSend_initEncoder(result, v6, v7, v8, v9, v10);
          return v11;
        }

        v12 = result;
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_12;
        }

LABEL_13:

        return 0;
      }

      v12 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    MTLReportFailure();
    goto LABEL_13;
  }

  return result;
}

- (MPSImageMedian)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_kernelDiameter_, device, 3, v5, v6);
}

- (MPSImageMedian)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v18.receiver = self;
  v18.super_class = MPSImageMedian;
  v5 = [(MPSUnaryImageKernel *)&v18 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_filterDiameter = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageMedian.kernelDiameter", v7, v8, v9);
    objc_msgSend_initEncoder(v10, v11, v12, v13, v14, v15);
    return v10;
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
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v8.receiver = self;
  v8.super_class = MPSImageMedian;
  [(MPSUnaryImageKernel *)&v8 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_filterDiameter, @"MPSImageMedian.kernelDiameter", v6, v7);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v12.receiver = self;
  v12.super_class = MPSImageMedian;
  result = [(MPSUnaryImageKernel *)&v12 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 26) = self->_filterDiameter;
    v11 = result;
    objc_msgSend_initEncoder(self, v6, v7, v8, v9, v10);
    return v11;
  }

  return result;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v9 = *a4;
  v8.receiver = self;
  v8.super_class = MPSImageMedian;
  result = [(MPSRegion *)&v8 sourceRegionForDestinationSize:&v9];
  filterDiameter = self->_filterDiameter;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vdupq_lane_s64(COERCE__INT64((filterDiameter >> 1)), 0));
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vdupq_lane_s64(COERCE__INT64((filterDiameter - 1)), 0));
  return result;
}

@end