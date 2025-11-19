@interface MPSImageLaplacianPyramidSubtract
- (MPSImageLaplacianPyramidSubtract)initWithCoder:(id)a3 device:(id)a4;
- (MPSImageLaplacianPyramidSubtract)initWithDevice:(id)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 weights:(const float *)a6;
@end

@implementation MPSImageLaplacianPyramidSubtract

- (MPSImageLaplacianPyramidSubtract)initWithDevice:(id)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 weights:(const float *)a6
{
  v12.receiver = self;
  v12.super_class = MPSImageLaplacianPyramidSubtract;
  result = [(MPSImageLaplacianPyramid *)&v12 initWithDevice:a3 kernelWidth:a4 kernelHeight:a5 weights:a6];
  if (result)
  {
    v11 = result;
    objc_msgSend_setIsPyramidAdd_(result, v7, 0, v8, v9, v10);
    return v11;
  }

  return result;
}

- (MPSImageLaplacianPyramidSubtract)initWithCoder:(id)a3 device:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPSImageLaplacianPyramidSubtract;
  result = [(MPSImageLaplacianPyramid *)&v10 initWithCoder:a3 device:a4];
  if (result)
  {
    v9 = result;
    objc_msgSend_setIsPyramidAdd_(result, v5, 0, v6, v7, v8);
    return v9;
  }

  return result;
}

@end