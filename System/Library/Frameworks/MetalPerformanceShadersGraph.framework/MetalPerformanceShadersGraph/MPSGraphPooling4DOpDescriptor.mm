@interface MPSGraphPooling4DOpDescriptor
+ (MPSGraphPooling4DOpDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes paddingStyle:(MPSGraphPaddingStyle)paddingStyle;
+ (MPSGraphPooling4DOpDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingValues:(NSArray *)paddingValues paddingStyle:(MPSGraphPaddingStyle)paddingStyle;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphPooling4DOpDescriptor

+ (MPSGraphPooling4DOpDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingValues:(NSArray *)paddingValues paddingStyle:(MPSGraphPaddingStyle)paddingStyle
{
  v11 = kernelSizes;
  v12 = strides;
  v13 = dilationRates;
  v14 = paddingValues;
  v15 = objc_alloc_init(MPSGraphPooling4DOpDescriptor);
  [(NSArray *)v11 count];
  if ([(NSArray *)v11 count]!= 4 && MTLReportFailureTypeEnabled())
  {
    v25 = [(NSArray *)v11 count];
    MTLReportFailure();
  }

  [(NSArray *)v12 count];
  if ([(NSArray *)v12 count]!= 4 && MTLReportFailureTypeEnabled())
  {
    v26 = [(NSArray *)v12 count];
    MTLReportFailure();
  }

  [(NSArray *)v13 count];
  if ([(NSArray *)v13 count]!= 4 && MTLReportFailureTypeEnabled())
  {
    v27 = [(NSArray *)v13 count];
    MTLReportFailure();
  }

  [(NSArray *)v14 count];
  if ([(NSArray *)v14 count]!= 8 && MTLReportFailureTypeEnabled())
  {
    v28 = [(NSArray *)v14 count];
    MTLReportFailure();
  }

  if ((paddingStyle > MPSGraphPaddingStyleONNX_SAME_LOWER || paddingStyle == MPSGraphPaddingStyleExplicitOffset) && MTLReportFailureTypeEnabled())
  {
    v28 = "MPSGraphPaddingStyleExplicit, MPSGraphPaddingStyleONNX_SAME_LOWER, MPSGraphPaddingStyleTF_SAME or MPSGraphPaddingStyleTF_VALID for MPSGraphPooling Ops.";
    MTLReportFailure();
  }

  v16 = [(NSArray *)v11 copy];
  v17 = v15->_kernelSizes;
  v15->_kernelSizes = v16;

  v18 = [(NSArray *)v12 copy];
  v19 = v15->_strides;
  v15->_strides = v18;

  v20 = [(NSArray *)v13 copy];
  v21 = v15->_dilationRates;
  v15->_dilationRates = v20;

  v22 = [(NSArray *)v14 copy];
  v23 = v15->_paddingValues;
  v15->_paddingValues = v22;

  v15->_paddingStyle = paddingStyle;
  v15->_ceilMode = 0;
  v15->_includeZeroPadToAverage = 0;
  v15->_returnIndicesMode = 0;
  v15->_returnIndicesDataType = 536870944;

  return v15;
}

+ (MPSGraphPooling4DOpDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes paddingStyle:(MPSGraphPaddingStyle)paddingStyle
{
  v4 = [MPSGraphPooling4DOpDescriptor descriptorWithKernelSizes:kernelSizes strides:&unk_1F5B77AB0 dilationRates:&unk_1F5B77AC8 paddingValues:&unk_1F5B77AE0 paddingStyle:paddingStyle];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MPSGraphPooling4DOpDescriptor alloc];
  v5 = [(NSArray *)self->_kernelSizes copy];
  kernelSizes = v4->_kernelSizes;
  v4->_kernelSizes = v5;

  v7 = [(NSArray *)self->_dilationRates copy];
  dilationRates = v4->_dilationRates;
  v4->_dilationRates = v7;

  v4->_paddingStyle = self->_paddingStyle;
  v9 = [(NSArray *)self->_paddingValues copy];
  paddingValues = v4->_paddingValues;
  v4->_paddingValues = v9;

  v11 = [(NSArray *)self->_strides copy];
  strides = v4->_strides;
  v4->_strides = v11;

  v4->_ceilMode = self->_ceilMode;
  v4->_includeZeroPadToAverage = self->_includeZeroPadToAverage;
  v4->_returnIndicesMode = self->_returnIndicesMode;
  v4->_returnIndicesDataType = self->_returnIndicesDataType;
  return v4;
}

@end