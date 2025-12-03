@interface MPSImageThresholdBinaryInverse
- (MPSImageThresholdBinaryInverse)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageThresholdBinaryInverse)initWithDevice:(id)device;
- (MPSImageThresholdBinaryInverse)initWithDevice:(id)device thresholdValue:(float)thresholdValue maximumValue:(float)maximumValue linearGrayColorTransform:(const float *)transform;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageThresholdBinaryInverse

- (MPSImageThresholdBinaryInverse)initWithDevice:(id)device thresholdValue:(float)thresholdValue maximumValue:(float)maximumValue linearGrayColorTransform:(const float *)transform
{
  v11.receiver = self;
  v11.super_class = MPSImageThresholdBinaryInverse;
  result = [(MPSUnaryImageKernel *)&v11 initWithDevice:device];
  if (result)
  {
    result->filterInfo.threshold_value = thresholdValue;
    result->filterInfo.max_value = maximumValue;
    if (transform)
    {
      result->filterInfo.matrix[0] = *transform;
      result->filterInfo.matrix[1] = transform[1];
      v10 = transform[2];
    }

    else
    {
      v10 = 0.114;
      *result->filterInfo.matrix = 0x3F1645A23E991687;
    }

    result->filterInfo.matrix[2] = v10;
    result->super._checkFlags |= 2u;
    result->super._encode = sub_239976C80;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSImageThresholdBinaryInverse)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v34.receiver = self;
  v34.super_class = MPSImageThresholdBinaryInverse;
  v5 = [(MPSUnaryImageKernel *)&v34 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._checkFlags |= 2u;
    v5->super._encode = sub_239976C80;
    v5->super._encodeData = v5;
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSImageThreshold.threshold", v7, v8, v9);
    v10->filterInfo.threshold_value = v11;
    objc_msgSend_decodeFloatForKey_(aDecoder, v12, @"MPSImageThreshold.max", v13, v14, v15);
    v10->filterInfo.max_value = v16;
    objc_msgSend_decodeFloatForKey_(aDecoder, v17, @"MPSImageThreshold.matrixR", v18, v19, v20);
    v10->filterInfo.matrix[0] = v21;
    objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSImageThreshold.matrixG", v23, v24, v25);
    v10->filterInfo.matrix[1] = v26;
    objc_msgSend_decodeFloatForKey_(aDecoder, v27, @"MPSImageThreshold.matrixB", v28, v29, v30);
    v10->filterInfo.matrix[2] = v31;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v33 = objc_opt_class();
    NSStringFromClass(v33);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v30.receiver = self;
  v30.super_class = MPSImageThresholdBinaryInverse;
  [(MPSUnaryImageKernel *)&v30 encodeWithCoder:?];
  selfCopy = (selfCopy + 208);
  LODWORD(v5) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageThreshold.threshold", v7, v8, v9, v5);
  LODWORD(v10) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSImageThreshold.max", v12, v13, v14, v10);
  LODWORD(v15) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSImageThreshold.matrixR", v17, v18, v19, v15);
  LODWORD(v20) = HIDWORD(selfCopy->super.super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"MPSImageThreshold.matrixG", v22, v23, v24, v20);
  LODWORD(v25) = selfCopy->super.super._verbosityLevel;
  objc_msgSend_encodeFloat_forKey_(coder, v26, @"MPSImageThreshold.matrixB", v27, v28, v29, v25);
}

- (MPSImageThresholdBinaryInverse)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_thresholdValue_maximumValue_linearGrayColorTransform_, device, 0, v5, v6);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageThresholdBinaryInverse;
  result = [(MPSUnaryImageKernel *)&v7 copyWithZone:zone device:device];
  if (result)
  {
    v6 = self->filterInfo.matrix[2];
    *(result + 13) = *&self->filterInfo.threshold_value;
    *(result + 56) = v6;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageThresholdBinaryInverse;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tthreshold: %f\n\tmaximumValue: %f\n\ttransform: {%f %f %f}", v6, v7, v8, v4, self->filterInfo.threshold_value, self->filterInfo.max_value, self->filterInfo.matrix[0], self->filterInfo.matrix[1], self->filterInfo.matrix[2]);
}

@end