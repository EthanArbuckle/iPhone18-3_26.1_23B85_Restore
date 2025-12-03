@interface MPSGraphDepthwiseConvolution3DOpDescriptor
+ (MPSGraphDepthwiseConvolution3DOpDescriptor)descriptorWithStrides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingValues:(NSArray *)paddingValues paddingStyle:(MPSGraphPaddingStyle)paddingStyle;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphDepthwiseConvolution3DOpDescriptor

+ (MPSGraphDepthwiseConvolution3DOpDescriptor)descriptorWithStrides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingValues:(NSArray *)paddingValues paddingStyle:(MPSGraphPaddingStyle)paddingStyle
{
  v9 = strides;
  v10 = dilationRates;
  v11 = paddingValues;
  v12 = objc_alloc_init(MPSGraphDepthwiseConvolution3DOpDescriptor);
  [(NSArray *)v9 count];
  if ([(NSArray *)v9 count]!= 3 && MTLReportFailureTypeEnabled())
  {
    v17 = [(NSArray *)v9 count];
    MTLReportFailure();
  }

  [(NSArray *)v10 count];
  if ([(NSArray *)v10 count]!= 3 && MTLReportFailureTypeEnabled())
  {
    v18 = [(NSArray *)v10 count];
    MTLReportFailure();
  }

  [(NSArray *)v11 count];
  if ([(NSArray *)v11 count]!= 6 && MTLReportFailureTypeEnabled())
  {
    v19 = [(NSArray *)v11 count];
    MTLReportFailure();
  }

  if ((paddingStyle > MPSGraphPaddingStyleONNX_SAME_LOWER || paddingStyle == MPSGraphPaddingStyleExplicitOffset) && MTLReportFailureTypeEnabled())
  {
    v19 = "MPSGraphPaddingStyleExplicit, MPSGraphPaddingStyleONNX_SAME_LOWER, MPSGraphPaddingStyleTF_SAME or MPSGraphPaddingStyleTF_VALID for MPSGraphDepthwiseConvolution.";
    MTLReportFailure();
  }

  v13 = [(NSArray *)v9 copy];
  [(MPSGraphDepthwiseConvolution3DOpDescriptor *)v12 setStrides:v13];

  v14 = [(NSArray *)v10 copy];
  [(MPSGraphDepthwiseConvolution3DOpDescriptor *)v12 setDilationRates:v14];

  v15 = [(NSArray *)v11 copy];
  [(MPSGraphDepthwiseConvolution3DOpDescriptor *)v12 setPaddingValues:v15];

  [(MPSGraphDepthwiseConvolution3DOpDescriptor *)v12 setPaddingStyle:paddingStyle];
  [(MPSGraphDepthwiseConvolution3DOpDescriptor *)v12 setChannelDimensionIndex:-4];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MPSGraphDepthwiseConvolution3DOpDescriptor alloc];
  v5 = [(NSArray *)self->_dilationRates copy];
  dilationRates = v4->_dilationRates;
  v4->_dilationRates = v5;

  v4->_paddingStyle = self->_paddingStyle;
  v7 = [(NSArray *)self->_paddingValues copy];
  paddingValues = v4->_paddingValues;
  v4->_paddingValues = v7;

  v9 = [(NSArray *)self->_strides copy];
  strides = v4->_strides;
  v4->_strides = v9;

  v4->_channelDimensionIndex = self->_channelDimensionIndex;
  return v4;
}

@end