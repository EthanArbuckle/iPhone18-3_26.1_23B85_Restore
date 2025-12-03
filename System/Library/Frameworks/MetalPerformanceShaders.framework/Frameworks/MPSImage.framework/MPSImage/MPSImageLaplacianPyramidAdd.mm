@interface MPSImageLaplacianPyramidAdd
- (MPSImageLaplacianPyramidAdd)initWithCoder:(id)coder device:(id)device;
- (MPSImageLaplacianPyramidAdd)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights;
@end

@implementation MPSImageLaplacianPyramidAdd

- (MPSImageLaplacianPyramidAdd)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights
{
  v12.receiver = self;
  v12.super_class = MPSImageLaplacianPyramidAdd;
  result = [(MPSImageLaplacianPyramid *)&v12 initWithDevice:device kernelWidth:width kernelHeight:height weights:weights];
  if (result)
  {
    v11 = result;
    objc_msgSend_setIsPyramidAdd_(result, v7, 1, v8, v9, v10);
    return v11;
  }

  return result;
}

- (MPSImageLaplacianPyramidAdd)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSImageLaplacianPyramidAdd;
  result = [(MPSImageLaplacianPyramid *)&v10 initWithCoder:coder device:device];
  if (result)
  {
    v9 = result;
    objc_msgSend_setIsPyramidAdd_(result, v5, 1, v6, v7, v8);
    return v9;
  }

  return result;
}

@end