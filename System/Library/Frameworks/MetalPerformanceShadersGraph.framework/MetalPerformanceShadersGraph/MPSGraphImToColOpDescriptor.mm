@interface MPSGraphImToColOpDescriptor
+ (MPSGraphImToColOpDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom;
@end

@implementation MPSGraphImToColOpDescriptor

+ (MPSGraphImToColOpDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout
{
  v19 = objc_alloc_init(MPSGraphImToColOpDescriptor);
  [(MPSGraphImToColOpDescriptor *)v19 setKernelWidth:kernelWidth];
  [(MPSGraphImToColOpDescriptor *)v19 setKernelHeight:kernelHeight];
  [(MPSGraphImToColOpDescriptor *)v19 setStrideInX:strideInX];
  [(MPSGraphImToColOpDescriptor *)v19 setStrideInY:strideInY];
  [(MPSGraphImToColOpDescriptor *)v19 setDilationRateInX:dilationRateInX];
  [(MPSGraphImToColOpDescriptor *)v19 setDilationRateInY:dilationRateInY];
  [(MPSGraphImToColOpDescriptor *)v19 setPaddingLeft:paddingLeft];
  [(MPSGraphImToColOpDescriptor *)v19 setPaddingRight:paddingRight];
  [(MPSGraphImToColOpDescriptor *)v19 setPaddingTop:paddingTop];
  [(MPSGraphImToColOpDescriptor *)v19 setPaddingBottom:paddingBottom];
  [(MPSGraphImToColOpDescriptor *)v19 setDataLayout:dataLayout];

  return v19;
}

- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom
{
  [(MPSGraphImToColOpDescriptor *)self setPaddingLeft:paddingLeft];
  [(MPSGraphImToColOpDescriptor *)self setPaddingRight:paddingRight];
  [(MPSGraphImToColOpDescriptor *)self setPaddingTop:paddingTop];

  [(MPSGraphImToColOpDescriptor *)self setPaddingBottom:paddingBottom];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphImToColOpDescriptor alloc];
  [(MPSGraphImToColOpDescriptor *)v4 setKernelWidth:self->_kernelWidth];
  [(MPSGraphImToColOpDescriptor *)v4 setKernelHeight:self->_kernelHeight];
  [(MPSGraphImToColOpDescriptor *)v4 setStrideInX:self->_strideInX];
  [(MPSGraphImToColOpDescriptor *)v4 setStrideInY:self->_strideInY];
  [(MPSGraphImToColOpDescriptor *)v4 setDilationRateInX:self->_dilationRateInX];
  [(MPSGraphImToColOpDescriptor *)v4 setDilationRateInY:self->_dilationRateInY];
  [(MPSGraphImToColOpDescriptor *)v4 setPaddingLeft:self->_paddingLeft];
  [(MPSGraphImToColOpDescriptor *)v4 setPaddingRight:self->_paddingRight];
  [(MPSGraphImToColOpDescriptor *)v4 setPaddingTop:self->_paddingTop];
  [(MPSGraphImToColOpDescriptor *)v4 setPaddingBottom:self->_paddingBottom];
  [(MPSGraphImToColOpDescriptor *)v4 setDataLayout:self->_dataLayout];
  return v4;
}

@end