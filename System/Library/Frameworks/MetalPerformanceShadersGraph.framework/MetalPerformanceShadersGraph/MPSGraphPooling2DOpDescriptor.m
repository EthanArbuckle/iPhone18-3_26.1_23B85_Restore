@interface MPSGraphPooling2DOpDescriptor
+ (MPSGraphPooling2DOpDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout;
+ (MPSGraphPooling2DOpDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout;
- (MPSGraphPooling2DOpDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom;
@end

@implementation MPSGraphPooling2DOpDescriptor

- (MPSGraphPooling2DOpDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSGraphPooling2DOpDescriptor;
  result = [(MPSGraphPooling2DOpDescriptor *)&v3 init];
  result->_returnIndicesMode = 0;
  result->_returnIndicesDataType = 536870944;
  return result;
}

+ (MPSGraphPooling2DOpDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout
{
  v20 = objc_alloc_init(MPSGraphPooling2DOpDescriptor);
  [(MPSGraphPooling2DOpDescriptor *)v20 setKernelWidth:kernelWidth];
  [(MPSGraphPooling2DOpDescriptor *)v20 setKernelHeight:kernelHeight];
  [(MPSGraphPooling2DOpDescriptor *)v20 setStrideInX:strideInX];
  [(MPSGraphPooling2DOpDescriptor *)v20 setStrideInY:strideInY];
  [(MPSGraphPooling2DOpDescriptor *)v20 setDilationRateInX:dilationRateInX];
  [(MPSGraphPooling2DOpDescriptor *)v20 setDilationRateInY:dilationRateInY];
  [(MPSGraphPooling2DOpDescriptor *)v20 setPaddingLeft:paddingLeft];
  [(MPSGraphPooling2DOpDescriptor *)v20 setPaddingRight:paddingRight];
  [(MPSGraphPooling2DOpDescriptor *)v20 setPaddingTop:paddingTop];
  [(MPSGraphPooling2DOpDescriptor *)v20 setPaddingBottom:paddingBottom];
  [(MPSGraphPooling2DOpDescriptor *)v20 setPaddingStyle:paddingStyle];
  [(MPSGraphPooling2DOpDescriptor *)v20 setDataLayout:dataLayout];
  v20->_ceilMode = 0;
  v20->_includeZeroPadToAverage = 0;
  v20->_returnIndicesMode = 0;
  v20->_returnIndicesDataType = 536870944;

  return v20;
}

+ (MPSGraphPooling2DOpDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout
{
  v14 = objc_alloc_init(MPSGraphPooling2DOpDescriptor);
  [(MPSGraphPooling2DOpDescriptor *)v14 setKernelWidth:kernelWidth];
  [(MPSGraphPooling2DOpDescriptor *)v14 setKernelHeight:kernelHeight];
  [(MPSGraphPooling2DOpDescriptor *)v14 setStrideInX:strideInX];
  [(MPSGraphPooling2DOpDescriptor *)v14 setStrideInY:strideInY];
  [(MPSGraphPooling2DOpDescriptor *)v14 setDilationRateInX:1];
  [(MPSGraphPooling2DOpDescriptor *)v14 setDilationRateInY:1];
  [(MPSGraphPooling2DOpDescriptor *)v14 setPaddingLeft:0];
  [(MPSGraphPooling2DOpDescriptor *)v14 setPaddingRight:0];
  [(MPSGraphPooling2DOpDescriptor *)v14 setPaddingTop:0];
  [(MPSGraphPooling2DOpDescriptor *)v14 setPaddingBottom:0];
  [(MPSGraphPooling2DOpDescriptor *)v14 setPaddingStyle:paddingStyle];
  [(MPSGraphPooling2DOpDescriptor *)v14 setDataLayout:dataLayout];
  v14->_ceilMode = 0;
  v14->_includeZeroPadToAverage = 0;
  v14->_returnIndicesMode = 0;
  v14->_returnIndicesDataType = 536870944;

  return v14;
}

- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom
{
  [(MPSGraphPooling2DOpDescriptor *)self setPaddingLeft:paddingLeft];
  [(MPSGraphPooling2DOpDescriptor *)self setPaddingRight:paddingRight];
  [(MPSGraphPooling2DOpDescriptor *)self setPaddingTop:paddingTop];
  [(MPSGraphPooling2DOpDescriptor *)self setPaddingBottom:paddingBottom];

  [(MPSGraphPooling2DOpDescriptor *)self setPaddingStyle:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphPooling2DOpDescriptor alloc];
  [(MPSGraphPooling2DOpDescriptor *)v4 setKernelWidth:self->_kernelWidth];
  [(MPSGraphPooling2DOpDescriptor *)v4 setKernelHeight:self->_kernelHeight];
  [(MPSGraphPooling2DOpDescriptor *)v4 setStrideInX:self->_strideInX];
  [(MPSGraphPooling2DOpDescriptor *)v4 setStrideInY:self->_strideInY];
  [(MPSGraphPooling2DOpDescriptor *)v4 setDilationRateInX:self->_dilationRateInX];
  [(MPSGraphPooling2DOpDescriptor *)v4 setDilationRateInY:self->_dilationRateInY];
  [(MPSGraphPooling2DOpDescriptor *)v4 setPaddingLeft:self->_paddingLeft];
  [(MPSGraphPooling2DOpDescriptor *)v4 setPaddingRight:self->_paddingRight];
  [(MPSGraphPooling2DOpDescriptor *)v4 setPaddingTop:self->_paddingTop];
  [(MPSGraphPooling2DOpDescriptor *)v4 setPaddingBottom:self->_paddingBottom];
  [(MPSGraphPooling2DOpDescriptor *)v4 setPaddingStyle:self->_paddingStyle];
  [(MPSGraphPooling2DOpDescriptor *)v4 setDataLayout:self->_dataLayout];
  v4->_ceilMode = self->_ceilMode;
  v4->_includeZeroPadToAverage = self->_includeZeroPadToAverage;
  v4->_returnIndicesMode = self->_returnIndicesMode;
  v4->_returnIndicesDataType = self->_returnIndicesDataType;
  return v4;
}

@end