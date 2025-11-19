@interface MPSGraphConvolution2DOpDescriptor
+ (MPSGraphConvolution2DOpDescriptor)descriptorWithStrideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY groups:(NSUInteger)groups paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout weightsLayout:(MPSGraphTensorNamedDataLayout)weightsLayout;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom;
@end

@implementation MPSGraphConvolution2DOpDescriptor

+ (MPSGraphConvolution2DOpDescriptor)descriptorWithStrideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY groups:(NSUInteger)groups paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout weightsLayout:(MPSGraphTensorNamedDataLayout)weightsLayout
{
  if (dataLayout >= MPSGraphTensorNamedDataLayoutOIHW && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((weightsLayout & 0xFFFFFFFFFFFFFFFELL) != 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v20 = objc_alloc_init(MPSGraphConvolution2DOpDescriptor);
  [(MPSGraphConvolution2DOpDescriptor *)v20 setStrideInX:strideInX];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setStrideInY:strideInY];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setDilationRateInX:dilationRateInX];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setDilationRateInY:dilationRateInY];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setGroups:groups];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setPaddingLeft:paddingLeft];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setPaddingRight:paddingRight];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setPaddingTop:paddingTop];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setPaddingBottom:paddingBottom];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setPaddingStyle:paddingStyle];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setDataLayout:dataLayout];
  [(MPSGraphConvolution2DOpDescriptor *)v20 setWeightsLayout:weightsLayout];

  return v20;
}

- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom
{
  [(MPSGraphConvolution2DOpDescriptor *)self setPaddingLeft:paddingLeft];
  [(MPSGraphConvolution2DOpDescriptor *)self setPaddingRight:paddingRight];
  [(MPSGraphConvolution2DOpDescriptor *)self setPaddingTop:paddingTop];
  [(MPSGraphConvolution2DOpDescriptor *)self setPaddingBottom:paddingBottom];

  [(MPSGraphConvolution2DOpDescriptor *)self setPaddingStyle:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphConvolution2DOpDescriptor alloc];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setStrideInX:self->_strideInX];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setStrideInY:self->_strideInY];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setDilationRateInX:self->_dilationRateInX];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setDilationRateInY:self->_dilationRateInY];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setGroups:self->_groups];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setPaddingLeft:self->_paddingLeft];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setPaddingRight:self->_paddingRight];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setPaddingTop:self->_paddingTop];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setPaddingBottom:self->_paddingBottom];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setPaddingStyle:self->_paddingStyle];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setDataLayout:self->_dataLayout];
  [(MPSGraphConvolution2DOpDescriptor *)v4 setWeightsLayout:self->_weightsLayout];
  return v4;
}

@end