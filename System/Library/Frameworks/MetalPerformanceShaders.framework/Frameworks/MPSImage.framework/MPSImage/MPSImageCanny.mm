@interface MPSImageCanny
- (MPSImageCanny)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageCanny)initWithDevice:(id)device;
- (MPSImageCanny)initWithDevice:(id)device linearToGrayScaleTransform:(const float *)transform sigma:(const float)sigma;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageCanny

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageCanny;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageCanny)initWithDevice:(id)device
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0x3F1645A23E991687;
  v9 = 1038710997;
  LODWORD(v5) = 1068827891;
  result = objc_msgSend_initWithDevice_linearToGrayScaleTransform_sigma_(self, a2, device, &v8, v3, v4, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSImageCanny)initWithDevice:(id)device linearToGrayScaleTransform:(const float *)transform sigma:(const float)sigma
{
  v22.receiver = self;
  v22.super_class = MPSImageCanny;
  result = [(MPSUnaryImageKernel *)&v22 initWithDevice:?];
  if (result)
  {
    if (transform)
    {
      v9 = transform[2];
      *result->_colVec = *transform;
      result->_colVec[2] = v9;
      result->super._checkFlags |= 2u;
      result->super._encode = sub_23994A590;
      result->super._encodeData = result;
      result->lThresh = 0.2;
      result->hThresh = 0.4;
      result->_canny_window = 4;
      result->_useFastMode = 0;
      result->_maxEdgeTracingIterations = 0.1;
      v10 = result;
      v11 = [MPSImageGaussianBlur alloc];
      *&v12 = sigma;
      v10->gaussKernel = objc_msgSend_initWithDevice_sigma_(v11, v13, device, v14, v15, v16, v12);
      v10->_indirectDispatchBufferArgs = objc_msgSend_newBufferWithLength_options_((*(&v10->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v17, 12, 0, v18, v19);
      MPSDevice = MPSDevice::GetMPSDevice();
      result = v10;
      v10->_supportsReadWriteTextures = (*(MPSDevice + 1476) & 4) != 0;
    }

    else
    {
      v21 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = MPSImageCanny;
  v4 = [(MPSUnaryImageKernel *)&v16 debugDescription];
  objc_msgSend_sigma(self->gaussKernel, v5, v6, v7, v8, v9);
  return objc_msgSend_stringWithFormat_(v3, v11, @"%@\n\tsigma: %f\n\tlow threshold: %f\n\thigh threshold: %f\n", v12, v13, v14, v4, v10, self->lThresh, self->hThresh);
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v42.receiver = self;
  v42.super_class = MPSImageCanny;
  [(MPSUnaryImageKernel *)&v42 encodeWithCoder:?];
  *&v5 = self->_colVec[0];
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageCanny.transformR", v7, v8, v9, v5);
  *&v10 = self->_colVec[1];
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSImageCanny.transformG", v12, v13, v14, v10);
  *&v15 = self->_colVec[2];
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSImageCanny.transformB", v17, v18, v19, v15);
  *&v20 = self->lThresh;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"MPSImageCanny.lowThresh", v22, v23, v24, v20);
  *&v25 = self->hThresh;
  objc_msgSend_encodeFloat_forKey_(coder, v26, @"MPSImageCanny.highThresh", v27, v28, v29, v25);
  *&v30 = self->_maxEdgeTracingIterations;
  objc_msgSend_encodeFloat_forKey_(coder, v31, @"MPSImageCanny.edgeTracingIterations", v32, v33, v34, v30);
  objc_msgSend_encodeBool_forKey_(coder, v35, self->_useFastMode, @"MPSImageCanny.fastMode", v36, v37);
  objc_msgSend_encodeWithCoder_(self->gaussKernel, v38, coder, v39, v40, v41);
}

- (MPSImageCanny)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v51.receiver = self;
  v51.super_class = MPSImageCanny;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v11 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->super._encode = sub_23994A590;
      v6->super._encodeData = v6;
      v6->_canny_window = 4;
      objc_msgSend_decodeFloatForKey_(aDecoder, v7, @"MPSImageCanny.transformR", v8, v9, v10);
      v11->_colVec[0] = v12;
      objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSImageCanny.transformG", v14, v15, v16);
      v11->_colVec[1] = v17;
      objc_msgSend_decodeFloatForKey_(aDecoder, v18, @"MPSImageCanny.transformB", v19, v20, v21);
      v11->_colVec[2] = v22;
      objc_msgSend_decodeFloatForKey_(aDecoder, v23, @"MPSImageCanny.lowThresh", v24, v25, v26);
      v11->lThresh = v27;
      objc_msgSend_decodeFloatForKey_(aDecoder, v28, @"MPSImageCanny.highThresh", v29, v30, v31);
      v11->hThresh = v32;
      v11->_useFastMode = objc_msgSend_decodeBoolForKey_(aDecoder, v33, @"MPSImageCanny.fastMode", v34, v35, v36);
      objc_msgSend_decodeFloatForKey_(aDecoder, v37, @"MPSImageCanny.edgeTracingIterations", v38, v39, v40);
      v11->_maxEdgeTracingIterations = v41;
      v42 = [MPSImageGaussianBlur alloc];
      v11->gaussKernel = objc_msgSend_initWithCoder_device_(v42, v43, aDecoder, device, v44, v45);
      v11->_indirectDispatchBufferArgs = objc_msgSend_newBufferWithLength_options_((*(&v11->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v46, 12, 0, v47, v48);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v49 = objc_opt_class();
        NSStringFromClass(v49);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSImageCanny;
  result = [(MPSUnaryImageKernel *)&v11 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 52) = LODWORD(self->_colVec[0]);
    *(result + 53) = LODWORD(self->_colVec[1]);
    *(result + 54) = LODWORD(self->_colVec[2]);
    *(result + 55) = LODWORD(self->lThresh);
    *(result + 56) = LODWORD(self->hThresh);
    *(result + 228) = self->_useFastMode;
    *(result + 58) = LODWORD(self->_maxEdgeTracingIterations);
    *(result + 118) = self->_canny_window;
    v6 = result;
    *(result + 30) = self->gaussKernel;
    v10 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v7, 12, 0, v8, v9);
    result = v6;
    v6[31] = v10;
  }

  return result;
}

@end