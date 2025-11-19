@interface _MLCGPUConvolutionTransposePadding
+ (id)convolutionTransposeZeroPaddingWithTopAmount:(unint64_t)a3 bottomAmount:(unint64_t)a4 leftAmount:(unint64_t)a5 rightAmount:(unint64_t)a6 outputPaddingX:(unint64_t)a7 outputPaddingY:(unint64_t)a8;
- (_MLCGPUConvolutionTransposePadding)initWithCoder:(id)a3;
- (_MLCGPUConvolutionTransposePadding)initWithTopAmount:(unint64_t)a3 bottomAmount:(unint64_t)a4 leftAmount:(unint64_t)a5 rightAmount:(unint64_t)a6 outputPaddingX:(unint64_t)a7 outputPaddingY:(unint64_t)a8;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MLCGPUConvolutionTransposePadding

+ (id)convolutionTransposeZeroPaddingWithTopAmount:(unint64_t)a3 bottomAmount:(unint64_t)a4 leftAmount:(unint64_t)a5 rightAmount:(unint64_t)a6 outputPaddingX:(unint64_t)a7 outputPaddingY:(unint64_t)a8
{
  v8 = [[a1 alloc] initWithTopAmount:a3 bottomAmount:a4 leftAmount:a5 rightAmount:a6 outputPaddingX:a7 outputPaddingY:a8];

  return v8;
}

- (_MLCGPUConvolutionTransposePadding)initWithTopAmount:(unint64_t)a3 bottomAmount:(unint64_t)a4 leftAmount:(unint64_t)a5 rightAmount:(unint64_t)a6 outputPaddingX:(unint64_t)a7 outputPaddingY:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = _MLCGPUConvolutionTransposePadding;
  result = [(_MLCGPUConvolutionTransposePadding *)&v15 init];
  if (result)
  {
    result->_topAmount = a3;
    result->_bottomAmount = a4;
    result->_leftAmount = a5;
    result->_rightAmount = a6;
    result->_outputPaddingX = a7;
    result->_outputPaddingY = a8;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [v9 kernelWidth];
  v13 = [v9 kernelHeight];
  v14 = [v9 dilationRateX] * (v12 - 1);
  v15 = v14 + 1;
  v16 = [v9 dilationRateY] * (v13 - 1);
  v17 = v16 + 1;
  memset(v32, 0, sizeof(v32));
  [v9 setOffset:v32];
  topAmount = self->_topAmount;
  [v9 setKernelOffsetX:(v14 & 1) - (v14 + 1) / 2 + self->_leftAmount];
  [v9 setKernelOffsetY:(v16 & 1) - (v16 + 1) / 2 + topAmount];
  v19 = [v11 objectAtIndexedSubscript:0];
  v20 = [v19 width] - 1;
  v21 = [v9 strideInPixelsX];
  outputPaddingX = self->_outputPaddingX;
  v23 = v15 + v20 * v21 - (self->_leftAmount + self->_rightAmount);

  v24 = [v11 objectAtIndexedSubscript:0];

  v25 = [v24 height] - 1;
  v26 = [v9 strideInPixelsY];
  v27 = self->_topAmount;
  bottomAmount = self->_bottomAmount;
  outputPaddingY = self->_outputPaddingY;
  v30 = v17 + v25 * v26 - (v27 + bottomAmount);

  [v10 setWidth:v23 + outputPaddingX];
  [v10 setHeight:v30 + outputPaddingY];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[_MLCGPUConvolutionTransposePadding topAmount](self forKey:{"topAmount"), @"topAmount"}];
  [v4 encodeInteger:-[_MLCGPUConvolutionTransposePadding bottomAmount](self forKey:{"bottomAmount"), @"bottomAmount"}];
  [v4 encodeInteger:-[_MLCGPUConvolutionTransposePadding leftAmount](self forKey:{"leftAmount"), @"leftAmount"}];
  [v4 encodeInteger:-[_MLCGPUConvolutionTransposePadding rightAmount](self forKey:{"rightAmount"), @"rightAmount"}];
  [v4 encodeInteger:-[_MLCGPUConvolutionTransposePadding outputPaddingX](self forKey:{"outputPaddingX"), @"outputPaddingX"}];
  [v4 encodeInteger:-[_MLCGPUConvolutionTransposePadding outputPaddingY](self forKey:{"outputPaddingY"), @"outputPaddingY"}];
}

- (_MLCGPUConvolutionTransposePadding)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"topAmount"];
  v6 = v5;
  [v4 decodeFloatForKey:@"bottomAmount"];
  v8 = v7;
  [v4 decodeFloatForKey:@"leftAmount"];
  v10 = v9;
  [v4 decodeFloatForKey:@"rightAmount"];
  v12 = v11;
  [v4 decodeFloatForKey:@"outputPaddingX"];
  v14 = v13;
  [v4 decodeFloatForKey:@"outputPaddingY"];
  v16 = v15;

  return [(_MLCGPUConvolutionTransposePadding *)self initWithTopAmount:v6 bottomAmount:v8 leftAmount:v10 rightAmount:v12 outputPaddingX:v14 outputPaddingY:v16];
}

@end