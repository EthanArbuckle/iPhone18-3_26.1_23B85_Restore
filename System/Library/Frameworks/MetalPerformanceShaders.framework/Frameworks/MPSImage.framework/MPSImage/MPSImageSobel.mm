@interface MPSImageSobel
- (MPSImageSobel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageSobel)initWithDevice:(id)device;
- (MPSImageSobel)initWithDevice:(id)device linearGrayColorTransform:(const float *)transform;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageSobel

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v13 = *a4;
  v12.receiver = self;
  v12.super_class = MPSImageSobel;
  result = [(MPSRegion *)&v12 sourceRegionForDestinationSize:&v13];
  __asm { FMOV            V1.2D, #-1.0 }

  *&retstr->origin.x = vaddq_f64(*&retstr->origin.x, _Q1);
  __asm { FMOV            V1.2D, #2.0 }

  *&retstr->size.width = vaddq_f64(*&retstr->size.width, _Q1);
  return result;
}

- (MPSImageSobel)initWithDevice:(id)device
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0x3F1645A23E991687;
  v8 = 1038710997;
  result = objc_msgSend_initWithDevice_linearGrayColorTransform_(self, a2, device, &v7, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSImageSobel)initWithDevice:(id)device linearGrayColorTransform:(const float *)transform
{
  v8.receiver = self;
  v8.super_class = MPSImageSobel;
  result = [(MPSUnaryImageKernel *)&v8 initWithDevice:device];
  if (result)
  {
    if (transform)
    {
      v6 = transform[2];
      *result->_colVec = *transform;
      result->_colVec[2] = v6;
      result->super._checkFlags |= 2u;
      result->super._encode = sub_23994F288;
      result->super._encodeData = result;
    }

    else
    {
      v7 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v20.receiver = self;
  v20.super_class = MPSImageSobel;
  [(MPSUnaryImageKernel *)&v20 encodeWithCoder:?];
  selfCopy = (selfCopy + 208);
  LODWORD(v5) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageSobel.transformR", v7, v8, v9, v5);
  LODWORD(v10) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSImageSobel.transformG", v12, v13, v14, v10);
  LODWORD(v15) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSImageSobel.transformB", v17, v18, v19, v15);
}

- (MPSImageSobel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v24.receiver = self;
  v24.super_class = MPSImageSobel;
  v5 = [(MPSUnaryImageKernel *)&v24 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSImageSobel.transformR", v7, v8, v9);
    v10->_colVec[0] = v11;
    objc_msgSend_decodeFloatForKey_(aDecoder, v12, @"MPSImageSobel.transformG", v13, v14, v15);
    v10->_colVec[1] = v16;
    objc_msgSend_decodeFloatForKey_(aDecoder, v17, @"MPSImageSobel.transformB", v18, v19, v20);
    v10->_colVec[2] = v21;
    v10->super._checkFlags |= 2u;
    v10->super._encode = sub_23994F288;
    v10->super._encodeData = v10;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v23 = objc_opt_class();
    NSStringFromClass(v23);
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageSobel;
  result = [(MPSUnaryImageKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 52) = LODWORD(self->_colVec[0]);
    *(result + 53) = LODWORD(self->_colVec[1]);
    *(result + 54) = LODWORD(self->_colVec[2]);
  }

  return result;
}

@end