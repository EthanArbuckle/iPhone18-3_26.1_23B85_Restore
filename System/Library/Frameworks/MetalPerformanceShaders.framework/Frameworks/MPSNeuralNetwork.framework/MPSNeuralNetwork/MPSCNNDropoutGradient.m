@interface MPSCNNDropoutGradient
- (MPSCNNDropoutGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNDropoutGradient)initWithDevice:(id)device keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNDropoutGradient

- (MPSCNNDropoutGradient)initWithDevice:(id)device keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels
{
  v14.receiver = self;
  v14.super_class = MPSCNNDropoutGradient;
  result = [(MPSCNNGradientKernel *)&v14 initWithDevice:device];
  if (result)
  {
    if (keepProbability <= 0.0 || keepProbability > 1.0)
    {
      v12 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v13 = objc_opt_class();
        NSStringFromClass(v13);
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      result->_keepProbability = keepProbability;
      result->_seed = seed;
      v11 = *&maskStrideInPixels->width;
      result->_maskStrideInPixels.depth = maskStrideInPixels->depth;
      *&result->_maskStrideInPixels.width = v11;
      result->super.super._checkFlags |= 2u;
      result->super.super._encodeData = result;
      result->super.super._encode = sub_239BEC128;
      result->super.super._batchEncode = sub_239BEC148;
    }
  }

  return result;
}

- (MPSCNNDropoutGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v40.receiver = self;
  v40.super_class = MPSCNNDropoutGradient;
  v5 = [(MPSCNNGradientKernel *)&v40 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSCNNDropoutGradientKeepProbability", v7, v8, v9, v10, v11);
    v12->_keepProbability = v13;
    v12->_seed = objc_msgSend_decodeInt32ForKey_(aDecoder, v14, @"MPSCNNDropoutGradientSeed", v15, v16, v17, v18, v19);
    v12->_maskStrideInPixels.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"MPSCNNDropoutGradientMaskStrideInPixelsWidth", v21, v22, v23, v24, v25);
    v12->_maskStrideInPixels.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v26, @"MPSCNNDropoutGradientMaskStrideInPixelsHeight", v27, v28, v29, v30, v31);
    v12->_maskStrideInPixels.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v32, @"MPSCNNDropoutGradientMaskStrideInPixelsDepth", v33, v34, v35, v36, v37);
    v12->super.super._checkFlags |= 2u;
    v12->super.super._encodeData = v12;
    v12->super.super._encode = sub_239BEC128;
    v12->super.super._batchEncode = sub_239BEC148;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v39 = objc_opt_class();
    NSStringFromClass(v39);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v32.receiver = self;
  v32.super_class = MPSCNNDropoutGradient;
  [(MPSCNNGradientKernel *)&v32 encodeWithCoder:?];
  *&v5 = v4->_keepProbability;
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"MPSCNNDropoutGradientKeepProbability", v7, v8, v9, v10, v11, v5);
  objc_msgSend_encodeInt32_forKey_(a3, v12, LODWORD(v4->_seed), @"MPSCNNDropoutGradientSeed", v13, v14, v15, v16);
  v4 = (v4 + 448);
  objc_msgSend_encodeInt64_forKey_(a3, v17, v4->super.super.super.super.isa, @"MPSCNNDropoutGradientMaskStrideInPixelsWidth", v18, v19, v20, v21);
  objc_msgSend_encodeInt64_forKey_(a3, v22, v4->super.super.super._options, @"MPSCNNDropoutGradientMaskStrideInPixelsHeight", v23, v24, v25, v26);
  objc_msgSend_encodeInt64_forKey_(a3, v27, v4->super.super.super._verbosityLevel, @"MPSCNNDropoutGradientMaskStrideInPixelsDepth", v28, v29, v30, v31);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSCNNDropoutGradient;
  result = [(MPSCNNGradientKernel *)&v7 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 108) = LODWORD(self->_keepProbability);
    *(result + 55) = self->_seed;
    depth = self->_maskStrideInPixels.depth;
    *(result + 28) = *&self->_maskStrideInPixels.width;
    *(result + 58) = depth;
    *(result + 92) = self->super.super._checkFlags | 2;
    *(result + 49) = self;
    *(result + 47) = sub_239BEC128;
    *(result + 48) = sub_239BEC148;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNDropoutGradient;
  v4 = [(MPSCNNBinaryKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tkeepProbability: %f\tseed: %lu", v6, v7, v8, v9, v10, v4, self->_keepProbability, self->_seed);
}

@end