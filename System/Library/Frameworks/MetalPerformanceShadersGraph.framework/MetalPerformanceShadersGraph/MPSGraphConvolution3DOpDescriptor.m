@interface MPSGraphConvolution3DOpDescriptor
+ (MPSGraphConvolution3DOpDescriptor)descriptorWithStrideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY strideInZ:(NSUInteger)strideInZ dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY dilationRateInZ:(NSUInteger)dilationRateInZ groups:(NSUInteger)groups paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingFront:(NSUInteger)paddingFront paddingBack:(NSUInteger)paddingBack paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout weightsLayout:(MPSGraphTensorNamedDataLayout)weightsLayout;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingFront:(NSUInteger)paddingFront paddingBack:(NSUInteger)paddingBack;
@end

@implementation MPSGraphConvolution3DOpDescriptor

+ (MPSGraphConvolution3DOpDescriptor)descriptorWithStrideInX:(NSUInteger)strideInX strideInY:(NSUInteger)strideInY strideInZ:(NSUInteger)strideInZ dilationRateInX:(NSUInteger)dilationRateInX dilationRateInY:(NSUInteger)dilationRateInY dilationRateInZ:(NSUInteger)dilationRateInZ groups:(NSUInteger)groups paddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingFront:(NSUInteger)paddingFront paddingBack:(NSUInteger)paddingBack paddingStyle:(MPSGraphPaddingStyle)paddingStyle dataLayout:(MPSGraphTensorNamedDataLayout)dataLayout weightsLayout:(MPSGraphTensorNamedDataLayout)weightsLayout
{
  if (dataLayout - 7 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (weightsLayout - 9 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = objc_alloc_init(MPSGraphConvolution3DOpDescriptor);
  [(MPSGraphConvolution3DOpDescriptor *)v24 setStrideInX:strideInX];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setStrideInY:strideInY];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setStrideInZ:strideInZ];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setDilationRateInX:dilationRateInX];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setDilationRateInY:dilationRateInY];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setDilationRateInZ:dilationRateInZ];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setGroups:groups];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setPaddingLeft:paddingLeft];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setPaddingRight:paddingRight];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setPaddingTop:paddingTop];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setPaddingBottom:paddingBottom];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setPaddingFront:paddingFront];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setPaddingBack:paddingBack];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setPaddingStyle:paddingStyle];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setDataLayout:dataLayout];
  [(MPSGraphConvolution3DOpDescriptor *)v24 setWeightsLayout:weightsLayout];

  return v24;
}

- (void)setExplicitPaddingWithPaddingLeft:(NSUInteger)paddingLeft paddingRight:(NSUInteger)paddingRight paddingTop:(NSUInteger)paddingTop paddingBottom:(NSUInteger)paddingBottom paddingFront:(NSUInteger)paddingFront paddingBack:(NSUInteger)paddingBack
{
  [(MPSGraphConvolution3DOpDescriptor *)self setPaddingLeft:paddingLeft];
  [(MPSGraphConvolution3DOpDescriptor *)self setPaddingRight:paddingRight];
  [(MPSGraphConvolution3DOpDescriptor *)self setPaddingTop:paddingTop];
  [(MPSGraphConvolution3DOpDescriptor *)self setPaddingBottom:paddingBottom];
  [(MPSGraphConvolution3DOpDescriptor *)self setPaddingFront:paddingFront];
  [(MPSGraphConvolution3DOpDescriptor *)self setPaddingBack:paddingBack];

  [(MPSGraphConvolution3DOpDescriptor *)self setPaddingStyle:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphConvolution3DOpDescriptor alloc];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setStrideInX:self->_strideInX];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setStrideInY:self->_strideInY];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setStrideInZ:self->_strideInZ];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setDilationRateInX:self->_dilationRateInX];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setDilationRateInY:self->_dilationRateInY];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setDilationRateInZ:self->_dilationRateInZ];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setGroups:self->_groups];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setPaddingLeft:self->_paddingLeft];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setPaddingRight:self->_paddingRight];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setPaddingTop:self->_paddingTop];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setPaddingBottom:self->_paddingBottom];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setPaddingFront:self->_paddingFront];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setPaddingBack:self->_paddingBack];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setPaddingStyle:self->_paddingStyle];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setDataLayout:self->_dataLayout];
  [(MPSGraphConvolution3DOpDescriptor *)v4 setWeightsLayout:self->_weightsLayout];
  return v4;
}

@end