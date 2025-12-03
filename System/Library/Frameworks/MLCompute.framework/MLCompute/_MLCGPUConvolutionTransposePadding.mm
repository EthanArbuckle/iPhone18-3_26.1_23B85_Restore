@interface _MLCGPUConvolutionTransposePadding
+ (id)convolutionTransposeZeroPaddingWithTopAmount:(unint64_t)amount bottomAmount:(unint64_t)bottomAmount leftAmount:(unint64_t)leftAmount rightAmount:(unint64_t)rightAmount outputPaddingX:(unint64_t)x outputPaddingY:(unint64_t)y;
- (_MLCGPUConvolutionTransposePadding)initWithCoder:(id)coder;
- (_MLCGPUConvolutionTransposePadding)initWithTopAmount:(unint64_t)amount bottomAmount:(unint64_t)bottomAmount leftAmount:(unint64_t)leftAmount rightAmount:(unint64_t)rightAmount outputPaddingX:(unint64_t)x outputPaddingY:(unint64_t)y;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MLCGPUConvolutionTransposePadding

+ (id)convolutionTransposeZeroPaddingWithTopAmount:(unint64_t)amount bottomAmount:(unint64_t)bottomAmount leftAmount:(unint64_t)leftAmount rightAmount:(unint64_t)rightAmount outputPaddingX:(unint64_t)x outputPaddingY:(unint64_t)y
{
  v8 = [[self alloc] initWithTopAmount:amount bottomAmount:bottomAmount leftAmount:leftAmount rightAmount:rightAmount outputPaddingX:x outputPaddingY:y];

  return v8;
}

- (_MLCGPUConvolutionTransposePadding)initWithTopAmount:(unint64_t)amount bottomAmount:(unint64_t)bottomAmount leftAmount:(unint64_t)leftAmount rightAmount:(unint64_t)rightAmount outputPaddingX:(unint64_t)x outputPaddingY:(unint64_t)y
{
  v15.receiver = self;
  v15.super_class = _MLCGPUConvolutionTransposePadding;
  result = [(_MLCGPUConvolutionTransposePadding *)&v15 init];
  if (result)
  {
    result->_topAmount = amount;
    result->_bottomAmount = bottomAmount;
    result->_leftAmount = leftAmount;
    result->_rightAmount = rightAmount;
    result->_outputPaddingX = x;
    result->_outputPaddingY = y;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor
{
  kernelCopy = kernel;
  descriptorCopy = descriptor;
  imagesCopy = images;
  kernelWidth = [kernelCopy kernelWidth];
  kernelHeight = [kernelCopy kernelHeight];
  v14 = [kernelCopy dilationRateX] * (kernelWidth - 1);
  v15 = v14 + 1;
  v16 = [kernelCopy dilationRateY] * (kernelHeight - 1);
  v17 = v16 + 1;
  memset(v32, 0, sizeof(v32));
  [kernelCopy setOffset:v32];
  topAmount = self->_topAmount;
  [kernelCopy setKernelOffsetX:(v14 & 1) - (v14 + 1) / 2 + self->_leftAmount];
  [kernelCopy setKernelOffsetY:(v16 & 1) - (v16 + 1) / 2 + topAmount];
  v19 = [imagesCopy objectAtIndexedSubscript:0];
  v20 = [v19 width] - 1;
  strideInPixelsX = [kernelCopy strideInPixelsX];
  outputPaddingX = self->_outputPaddingX;
  v23 = v15 + v20 * strideInPixelsX - (self->_leftAmount + self->_rightAmount);

  v24 = [imagesCopy objectAtIndexedSubscript:0];

  v25 = [v24 height] - 1;
  strideInPixelsY = [kernelCopy strideInPixelsY];
  v27 = self->_topAmount;
  bottomAmount = self->_bottomAmount;
  outputPaddingY = self->_outputPaddingY;
  v30 = v17 + v25 * strideInPixelsY - (v27 + bottomAmount);

  [descriptorCopy setWidth:v23 + outputPaddingX];
  [descriptorCopy setHeight:v30 + outputPaddingY];

  return descriptorCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_MLCGPUConvolutionTransposePadding topAmount](self forKey:{"topAmount"), @"topAmount"}];
  [coderCopy encodeInteger:-[_MLCGPUConvolutionTransposePadding bottomAmount](self forKey:{"bottomAmount"), @"bottomAmount"}];
  [coderCopy encodeInteger:-[_MLCGPUConvolutionTransposePadding leftAmount](self forKey:{"leftAmount"), @"leftAmount"}];
  [coderCopy encodeInteger:-[_MLCGPUConvolutionTransposePadding rightAmount](self forKey:{"rightAmount"), @"rightAmount"}];
  [coderCopy encodeInteger:-[_MLCGPUConvolutionTransposePadding outputPaddingX](self forKey:{"outputPaddingX"), @"outputPaddingX"}];
  [coderCopy encodeInteger:-[_MLCGPUConvolutionTransposePadding outputPaddingY](self forKey:{"outputPaddingY"), @"outputPaddingY"}];
}

- (_MLCGPUConvolutionTransposePadding)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"topAmount"];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"bottomAmount"];
  v8 = v7;
  [coderCopy decodeFloatForKey:@"leftAmount"];
  v10 = v9;
  [coderCopy decodeFloatForKey:@"rightAmount"];
  v12 = v11;
  [coderCopy decodeFloatForKey:@"outputPaddingX"];
  v14 = v13;
  [coderCopy decodeFloatForKey:@"outputPaddingY"];
  v16 = v15;

  return [(_MLCGPUConvolutionTransposePadding *)self initWithTopAmount:v6 bottomAmount:v8 leftAmount:v10 rightAmount:v12 outputPaddingX:v14 outputPaddingY:v16];
}

@end