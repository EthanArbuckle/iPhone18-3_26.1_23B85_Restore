@interface MPSImageThresholdToZeroInverse
- (MPSImageThresholdToZeroInverse)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device;
- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device thresholdValue:(float)thresholdValue linearGrayColorTransform:(const float *)transform;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSImageThresholdToZeroInverse

- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device thresholdValue:(float)thresholdValue linearGrayColorTransform:(const float *)transform
{
  v9.receiver = self;
  v9.super_class = MPSImageThresholdToZeroInverse;
  result = [(MPSUnaryImageKernel *)&v9 initWithDevice:device];
  if (result)
  {
    result->filterInfo.threshold_value = thresholdValue;
    if (transform)
    {
      result->filterInfo.matrix[0] = *transform;
      result->filterInfo.matrix[1] = transform[1];
      v8 = transform[2];
    }

    else
    {
      v8 = 0.114;
      *result->filterInfo.matrix = 0x3F1645A23E991687;
    }

    result->filterInfo.matrix[2] = v8;
    result->super._checkFlags |= 2u;
    result->super._encode = sub_239977C78;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSImageThresholdToZeroInverse)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v34.receiver = self;
  v34.super_class = MPSImageThresholdToZeroInverse;
  v5 = [(MPSUnaryImageKernel *)&v34 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._checkFlags |= 2u;
    v5->super._encode = sub_239977C78;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v30.receiver = self;
  v30.super_class = MPSImageThresholdToZeroInverse;
  [(MPSUnaryImageKernel *)&v30 encodeWithCoder:?];
  v4 = (v4 + 208);
  LODWORD(v5) = v4->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"MPSImageThreshold.threshold", v7, v8, v9, v5);
  LODWORD(v10) = HIDWORD(v4->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(a3, v11, @"MPSImageThreshold.max", v12, v13, v14, v10);
  LODWORD(v15) = v4->super.super._options;
  objc_msgSend_encodeFloat_forKey_(a3, v16, @"MPSImageThreshold.matrixR", v17, v18, v19, v15);
  LODWORD(v20) = HIDWORD(v4->super.super._options);
  objc_msgSend_encodeFloat_forKey_(a3, v21, @"MPSImageThreshold.matrixG", v22, v23, v24, v20);
  LODWORD(v25) = v4->super.super._verbosityLevel;
  objc_msgSend_encodeFloat_forKey_(a3, v26, @"MPSImageThreshold.matrixB", v27, v28, v29, v25);
}

- (MPSImageThresholdToZeroInverse)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_thresholdValue_linearGrayColorTransform_, device, 0, v5, v6);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSImageThresholdToZeroInverse;
  result = [(MPSUnaryImageKernel *)&v7 copyWithZone:a3 device:a4];
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
  v10.super_class = MPSImageThresholdToZeroInverse;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tthreshold: %f\n\ttransform: {%f %f %f}", v6, v7, v8, v4, self->filterInfo.threshold_value, self->filterInfo.matrix[0], self->filterInfo.matrix[1], self->filterInfo.matrix[2]);
}

@end