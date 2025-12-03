@interface MPSImageArithmetic
- (MPSImageArithmetic)initWithCoder:(id)coder device:(id)device;
- (MPSImageArithmetic)initWithDevice:(id)device;
- (MPSImageArithmetic)initWithDevice:(id)device arithmeticType:(int)type;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimaryStrideInPixels:(MTLSize *)primaryStrideInPixels;
- (void)setSecondaryStrideInPixels:(MTLSize *)secondaryStrideInPixels;
@end

@implementation MPSImageArithmetic

- (void)setPrimaryStrideInPixels:(MTLSize *)primaryStrideInPixels
{
  if (primaryStrideInPixels->width >= 2)
  {
    selfCopy = self;
    v5 = primaryStrideInPixels;
    v6 = MTLReportFailureTypeEnabled();
    primaryStrideInPixels = v5;
    v7 = v6;
    self = selfCopy;
    if (v7)
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      width = v5->width;
      MTLReportFailure();
      self = selfCopy;
      primaryStrideInPixels = v5;
    }
  }

  if (primaryStrideInPixels->height >= 2)
  {
    selfCopy2 = self;
    v10 = primaryStrideInPixels;
    v11 = MTLReportFailureTypeEnabled();
    primaryStrideInPixels = v10;
    v12 = v11;
    self = selfCopy2;
    if (v12)
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      height = v10->height;
      MTLReportFailure();
      self = selfCopy2;
      primaryStrideInPixels = v10;
    }
  }

  if (primaryStrideInPixels->depth >= 2)
  {
    selfCopy3 = self;
    v15 = primaryStrideInPixels;
    v16 = MTLReportFailureTypeEnabled();
    primaryStrideInPixels = v15;
    v17 = v16;
    self = selfCopy3;
    if (v17)
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      depth = v15->depth;
      MTLReportFailure();
      self = selfCopy3;
      primaryStrideInPixels = v15;
    }
  }

  v3 = primaryStrideInPixels->depth;
  *&self->_primaryStrideInPixels.width = *&primaryStrideInPixels->width;
  self->_primaryStrideInPixels.depth = v3;
}

- (void)setSecondaryStrideInPixels:(MTLSize *)secondaryStrideInPixels
{
  if (secondaryStrideInPixels->width >= 2)
  {
    selfCopy = self;
    v5 = secondaryStrideInPixels;
    v6 = MTLReportFailureTypeEnabled();
    secondaryStrideInPixels = v5;
    v7 = v6;
    self = selfCopy;
    if (v7)
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      width = v5->width;
      MTLReportFailure();
      self = selfCopy;
      secondaryStrideInPixels = v5;
    }
  }

  if (secondaryStrideInPixels->height >= 2)
  {
    selfCopy2 = self;
    v10 = secondaryStrideInPixels;
    v11 = MTLReportFailureTypeEnabled();
    secondaryStrideInPixels = v10;
    v12 = v11;
    self = selfCopy2;
    if (v12)
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      height = v10->height;
      MTLReportFailure();
      self = selfCopy2;
      secondaryStrideInPixels = v10;
    }
  }

  if (secondaryStrideInPixels->depth >= 2)
  {
    selfCopy3 = self;
    v15 = secondaryStrideInPixels;
    v16 = MTLReportFailureTypeEnabled();
    secondaryStrideInPixels = v15;
    v17 = v16;
    self = selfCopy3;
    if (v17)
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      depth = v15->depth;
      MTLReportFailure();
      self = selfCopy3;
      secondaryStrideInPixels = v15;
    }
  }

  v3 = secondaryStrideInPixels->depth;
  *&self->_secondaryStrideInPixels.width = *&secondaryStrideInPixels->width;
  self->_secondaryStrideInPixels.depth = v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSImageArithmetic;
  [(MPSKernel *)&v2 dealloc];
}

- (MPSImageArithmetic)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSImageArithmetic)initWithDevice:(id)device arithmeticType:(int)type
{
  v8.receiver = self;
  v8.super_class = MPSImageArithmetic;
  result = [(MPSBinaryImageKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->_primaryScale = 1.0;
    result->_secondaryScale = 1.0;
    result->_bias = 0.0;
    result->_minimumValue = -INFINITY;
    result->_maximumValue = INFINITY;
    v6 = vdupq_n_s64(1uLL);
    *&result->_primaryStrideInPixels.width = v6;
    result->_primaryStrideInPixels.depth = 1;
    *&result->_secondaryStrideInPixels.width = v6;
    result->_secondaryStrideInPixels.depth = 1;
    if (type >= 4)
    {
      v7 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      result->_arithmeticType = type;
      result->super._encode = sub_2399526E4;
      result->super._encodeData = result;
      result->super._checkFlags = 2561;
    }
  }

  return result;
}

- (MPSImageArithmetic)initWithCoder:(id)coder device:(id)device
{
  v62.receiver = self;
  v62.super_class = MPSImageArithmetic;
  v5 = [(MPSBinaryImageKernel *)&v62 initWithCoder:coder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(coder, v6, @"MPSArithmetic.primaryScale", v7, v8, v9);
    v10->_primaryScale = v11;
    objc_msgSend_decodeFloatForKey_(coder, v12, @"MPSArithmetic.secondaryScale", v13, v14, v15);
    v10->_secondaryScale = v16;
    objc_msgSend_decodeFloatForKey_(coder, v17, @"MPSArithmetic.bias", v18, v19, v20);
    v10->_bias = v21;
    objc_msgSend_decodeFloatForKey_(coder, v22, @"MPSArithmetic.minimumValue", v23, v24, v25);
    v10->_minimumValue = v26;
    objc_msgSend_decodeFloatForKey_(coder, v27, @"MPSArithmetic.maximumValue", v28, v29, v30);
    v10->_maximumValue = v31;
    v10->_primaryStrideInPixels.width = objc_msgSend_decodeInt64ForKey_(coder, v32, @"MPSArithmetic.primaryStrideInPixelsX", v33, v34, v35);
    v10->_primaryStrideInPixels.height = objc_msgSend_decodeInt64ForKey_(coder, v36, @"MPSArithmetic.primaryStrideInPixelsY", v37, v38, v39);
    v10->_primaryStrideInPixels.depth = objc_msgSend_decodeInt64ForKey_(coder, v40, @"MPSArithmetic.primaryStrideInPixelsZ", v41, v42, v43);
    v10->_secondaryStrideInPixels.width = objc_msgSend_decodeInt64ForKey_(coder, v44, @"MPSArithmetic.secondaryStrideInPixelsX", v45, v46, v47);
    v10->_secondaryStrideInPixels.height = objc_msgSend_decodeInt64ForKey_(coder, v48, @"MPSArithmetic.secondaryStrideInPixelsY", v49, v50, v51);
    v10->_secondaryStrideInPixels.depth = objc_msgSend_decodeInt64ForKey_(coder, v52, @"MPSArithmetic.secondaryStrideInPixelsZ", v53, v54, v55);
    v10->_arithmeticType = objc_msgSend_decodeInt64ForKey_(coder, v56, @"MPSArithmetic.arithmeticType", v57, v58, v59);
    v10->super._encode = sub_2399526E4;
    v10->super._encodeData = v10;
    v10->super._checkFlags = 2561;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v61 = objc_opt_class();
    NSStringFromClass(v61);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v51.receiver = self;
  v51.super_class = MPSImageArithmetic;
  [(MPSBinaryImageKernel *)&v51 encodeWithCoder:?];
  *&v5 = self->_primaryScale;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSArithmetic.primaryScale", v7, v8, v9, v5);
  *&v10 = self->_secondaryScale;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSArithmetic.secondaryScale", v12, v13, v14, v10);
  *&v15 = self->_bias;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSArithmetic.bias", v17, v18, v19, v15);
  *&v20 = self->_minimumValue;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"MPSArithmetic.minimumValue", v22, v23, v24, v20);
  *&v25 = self->_maximumValue;
  objc_msgSend_encodeFloat_forKey_(coder, v26, @"MPSArithmetic.maximumValue", v27, v28, v29, v25);
  objc_msgSend_encodeInt64_forKey_(coder, v30, self->_primaryStrideInPixels.width, @"MPSArithmetic.primaryStrideInPixelsX", v31, v32);
  objc_msgSend_encodeInt64_forKey_(coder, v33, self->_primaryStrideInPixels.height, @"MPSArithmetic.primaryStrideInPixelsY", v34, v35);
  objc_msgSend_encodeInt64_forKey_(coder, v36, self->_primaryStrideInPixels.depth, @"MPSArithmetic.primaryStrideInPixelsZ", v37, v38);
  objc_msgSend_encodeInt64_forKey_(coder, v39, self->_secondaryStrideInPixels.width, @"MPSArithmetic.secondaryStrideInPixelsX", v40, v41);
  objc_msgSend_encodeInt64_forKey_(coder, v42, self->_secondaryStrideInPixels.height, @"MPSArithmetic.secondaryStrideInPixelsY", v43, v44);
  objc_msgSend_encodeInt64_forKey_(coder, v45, self->_secondaryStrideInPixels.depth, @"MPSArithmetic.secondaryStrideInPixelsZ", v46, v47);
  objc_msgSend_encodeInt64_forKey_(coder, v48, self->_arithmeticType, @"MPSArithmetic.arithmeticType", v49, v50);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageArithmetic;
  result = [(MPSBinaryImageKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 58) = LODWORD(self->_primaryScale);
    *(result + 59) = LODWORD(self->_secondaryScale);
    *(result + 60) = LODWORD(self->_bias);
    *(result + 61) = LODWORD(self->_minimumValue);
    *(result + 62) = LODWORD(self->_maximumValue);
    depth = self->_primaryStrideInPixels.depth;
    *(result + 16) = *&self->_primaryStrideInPixels.width;
    *(result + 34) = depth;
    v7 = self->_secondaryStrideInPixels.depth;
    *(result + 280) = *&self->_secondaryStrideInPixels.width;
    *(result + 37) = v7;
    *(result + 76) = self->_arithmeticType;
    *(result + 26) = sub_2399526E4;
    *(result + 27) = self;
    *(result + 50) = 2561;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageArithmetic;
  v4 = [(MPSBinaryImageKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tprimaryScale: %f\n \tsecondaryScale: %f\n \tbias: %f\n \tminmumValue: %f\n \tmaximumValue: %f\n \tprimaryStrideInPixelsX: %lu\n \tprimaryStrideInPixelsY: %lu\n \tprimaryStrideInPixelsZ: %lu\n \tsecondaryStrideInPixelsX: %lu\n \tsecondaryStrideInPixelsY: %lu\n \tsecondaryStrideInPixelsZ: %lu\n \tarithmeticType: %lu", v6, v7, v8, v4, self->_primaryScale, self->_secondaryScale, self->_bias, self->_minimumValue, self->_maximumValue, self->_primaryStrideInPixels.width, self->_primaryStrideInPixels.height, self->_primaryStrideInPixels.depth, self->_secondaryStrideInPixels.width, self->_secondaryStrideInPixels.height, self->_secondaryStrideInPixels.depth, self->_arithmeticType);
}

@end