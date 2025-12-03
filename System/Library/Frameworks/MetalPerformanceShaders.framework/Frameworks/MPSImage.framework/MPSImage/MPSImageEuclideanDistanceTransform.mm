@interface MPSImageEuclideanDistanceTransform
- (MPSImageEuclideanDistanceTransform)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageEuclideanDistanceTransform)initWithDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageEuclideanDistanceTransform

- (MPSImageEuclideanDistanceTransform)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageEuclideanDistanceTransform;
  result = [(MPSUnaryImageKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super._encodeData = result;
    result->super._encode = sub_2399538E4;
    result->super._checkFlags = 577;
    result->_searchLimitRadius = 3.4028e38;
  }

  return result;
}

- (MPSImageEuclideanDistanceTransform)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v17.receiver = self;
  v17.super_class = MPSImageEuclideanDistanceTransform;
  result = [(MPSUnaryImageKernel *)&v17 initWithCoder:aDecoder device:device];
  if (result)
  {
    v10 = *MEMORY[0x277CD7358];
    v11 = HIWORD(*(&result->super.super.super.isa + v10));
    if ((v11 - 1) >= 2)
    {
      if (((v11 + 1) & 0x1FFFE) != 2)
      {
        v14 = result;
        v15 = MTLReportFailureTypeEnabled();
        result = v14;
        if (v15)
        {
          v16 = objc_opt_class();
          NSStringFromClass(v16);
          MTLReportFailure();
          result = v14;
        }
      }

      return 0;
    }

    else
    {
      result->super._encodeData = result;
      result->super._encode = sub_2399538E4;
      result->_searchLimitRadius = 3.4028e38;
      if (*(&result->super.super.super.isa + v10) >= 0x20000u)
      {
        v12 = result;
        objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSImageDistanceTransform.searchLimitRadius", v7, v8, v9);
        result = v12;
        v12->_searchLimitRadius = v13;
      }

      result->super._checkFlags = 577;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 2;
  v10.receiver = self;
  v10.super_class = MPSImageEuclideanDistanceTransform;
  [(MPSUnaryImageKernel *)&v10 encodeWithCoder:?];
  *&v5 = self->_searchLimitRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageDistanceTransform.searchLimitRadius", v7, v8, v9, v5);
}

@end