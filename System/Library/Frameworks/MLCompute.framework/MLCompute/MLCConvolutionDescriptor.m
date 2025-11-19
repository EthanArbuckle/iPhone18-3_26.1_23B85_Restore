@interface MLCConvolutionDescriptor
+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount;
+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier;
+ (MLCConvolutionDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCConvolutionDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCConvolutionDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount;
+ (MLCConvolutionDescriptor)descriptorWithType:(MLCConvolutionType)convolutionType kernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
- (BOOL)isEqual:(id)a3;
- (MLCConvolutionDescriptor)initWithType:(int)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 inputFeatureChannelCount:(unint64_t)a6 outputFeatureChannelCount:(unint64_t)a7 groupCount:(unint64_t)a8 strideInX:(unint64_t)a9 strideInY:(unint64_t)a10 dilationRateInX:(unint64_t)a11 dilationRateInY:(unint64_t)a12 paddingPolicy:(int)a13 paddingSizeInX:(unint64_t)a14 paddingSizeInY:(unint64_t)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCConvolutionDescriptor

+ (MLCConvolutionDescriptor)descriptorWithType:(MLCConvolutionType)convolutionType kernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v15 = paddingSizes;
  v16 = dilationRates;
  v17 = strides;
  v18 = kernelSizes;
  v44 = [a1 alloc];
  v19 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  v42 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  v41 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v17 objectAtIndexedSubscript:1];
  v39 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v17 objectAtIndexedSubscript:0];

  v43 = v22;
  v23 = [v22 unsignedIntegerValue];
  v40 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  v24 = [v40 unsignedIntegerValue];
  v25 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  v26 = [v25 unsignedIntegerValue];
  v27 = v26;
  if (v15)
  {
    [(NSArray *)v15 objectAtIndexedSubscript:1];
    v28 = v37 = v19;
    v29 = v21;
    v30 = [v28 unsignedIntegerValue];
    [(NSArray *)v15 objectAtIndexedSubscript:0];
    v31 = v36 = v15;
    v35 = v30;
    v21 = v29;
    LODWORD(v34) = paddingPolicy;
    v32 = [v44 initWithType:convolutionType kernelWidth:v42 kernelHeight:v41 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:v39 strideInY:v23 dilationRateInX:v24 dilationRateInY:v27 paddingPolicy:v34 paddingSizeInX:v35 paddingSizeInY:{objc_msgSend(v31, "unsignedIntegerValue")}];

    v15 = v36;
    v19 = v37;
  }

  else
  {
    LODWORD(v34) = paddingPolicy;
    v32 = [v44 initWithType:convolutionType kernelWidth:v42 kernelHeight:v41 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:v39 strideInY:v23 dilationRateInX:v24 dilationRateInY:v26 paddingPolicy:v34 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v32;
}

+ (MLCConvolutionDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount
{
  LODWORD(v8) = 0;
  v6 = [[a1 alloc] initWithType:0 kernelWidth:kernelWidth kernelHeight:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v8 paddingSizeInX:0 paddingSizeInY:0];

  return v6;
}

+ (MLCConvolutionDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v14 = paddingSizes;
  v15 = strides;
  v16 = kernelSizes;
  v17 = [a1 alloc];
  v18 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  v40 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  v38 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  v37 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v39 = v21;
  v22 = [v21 unsignedIntegerValue];
  v23 = v22;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v25 = v24 = paddingPolicy;
    v35 = v17;
    v26 = v20;
    v27 = [v25 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v36 = v19;
    v28 = v14;
    v30 = v29 = v18;
    v34 = v27;
    v20 = v26;
    LODWORD(v33) = v24;
    v31 = [v35 initWithType:0 kernelWidth:v40 kernelHeight:v38 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:v37 strideInY:v23 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:v34 paddingSizeInY:{objc_msgSend(v30, "unsignedIntegerValue")}];

    v18 = v29;
    v14 = v28;
    v19 = v36;
  }

  else
  {
    LODWORD(v33) = paddingPolicy;
    v31 = [v17 initWithType:0 kernelWidth:v40 kernelHeight:v38 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:v37 strideInY:v22 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v31;
}

+ (MLCConvolutionDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v17 = paddingSizes;
  v18 = dilationRates;
  v19 = strides;
  v20 = kernelSizes;
  v43 = [a1 alloc];
  v21 = [(NSArray *)v20 objectAtIndexedSubscript:1];
  v41 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v20 objectAtIndexedSubscript:0];

  v40 = [v22 unsignedIntegerValue];
  v44 = [(NSArray *)v19 objectAtIndexedSubscript:1];
  v38 = [v44 unsignedIntegerValue];
  v23 = [(NSArray *)v19 objectAtIndexedSubscript:0];

  v42 = v23;
  v24 = [v23 unsignedIntegerValue];
  v39 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  v25 = [v39 unsignedIntegerValue];
  v26 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  v27 = [v26 unsignedIntegerValue];
  v28 = v27;
  if (v17)
  {
    [(NSArray *)v17 objectAtIndexedSubscript:1];
    v29 = v37 = v21;
    v35 = inputFeatureChannelCount;
    v30 = [v29 unsignedIntegerValue];
    [(NSArray *)v17 objectAtIndexedSubscript:0];
    v31 = v36 = v17;
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:0 kernelWidth:v41 kernelHeight:v40 inputFeatureChannelCount:v35 outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:v38 strideInY:v24 dilationRateInX:v25 dilationRateInY:v28 paddingPolicy:v34 paddingSizeInX:v30 paddingSizeInY:{objc_msgSend(v31, "unsignedIntegerValue")}];

    v17 = v36;
    v21 = v37;
  }

  else
  {
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:0 kernelWidth:v41 kernelHeight:v40 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:v38 strideInY:v24 dilationRateInX:v25 dilationRateInY:v27 paddingPolicy:v34 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v32;
}

+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount
{
  LODWORD(v8) = 0;
  v6 = [[a1 alloc] initWithType:1 kernelWidth:kernelWidth kernelHeight:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v8 paddingSizeInX:0 paddingSizeInY:0];

  return v6;
}

+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v14 = paddingSizes;
  v15 = strides;
  v16 = kernelSizes;
  v17 = [a1 alloc];
  v18 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  v40 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  v38 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  v37 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v39 = v21;
  v22 = [v21 unsignedIntegerValue];
  v23 = v22;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v25 = v24 = paddingPolicy;
    v35 = v17;
    v26 = v20;
    v27 = [v25 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v36 = v19;
    v28 = v14;
    v30 = v29 = v18;
    v34 = v27;
    v20 = v26;
    LODWORD(v33) = v24;
    v31 = [v35 initWithType:1 kernelWidth:v40 kernelHeight:v38 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:v37 strideInY:v23 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:v34 paddingSizeInY:{objc_msgSend(v30, "unsignedIntegerValue")}];

    v18 = v29;
    v14 = v28;
    v19 = v36;
  }

  else
  {
    LODWORD(v33) = paddingPolicy;
    v31 = [v17 initWithType:1 kernelWidth:v40 kernelHeight:v38 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:v37 strideInY:v22 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v31;
}

+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v17 = paddingSizes;
  v18 = dilationRates;
  v19 = strides;
  v20 = kernelSizes;
  v43 = [a1 alloc];
  v21 = [(NSArray *)v20 objectAtIndexedSubscript:1];
  v41 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v20 objectAtIndexedSubscript:0];

  v40 = [v22 unsignedIntegerValue];
  v44 = [(NSArray *)v19 objectAtIndexedSubscript:1];
  v38 = [v44 unsignedIntegerValue];
  v23 = [(NSArray *)v19 objectAtIndexedSubscript:0];

  v42 = v23;
  v24 = [v23 unsignedIntegerValue];
  v39 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  v25 = [v39 unsignedIntegerValue];
  v26 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  v27 = [v26 unsignedIntegerValue];
  v28 = v27;
  if (v17)
  {
    [(NSArray *)v17 objectAtIndexedSubscript:1];
    v29 = v37 = v21;
    v35 = inputFeatureChannelCount;
    v30 = [v29 unsignedIntegerValue];
    [(NSArray *)v17 objectAtIndexedSubscript:0];
    v31 = v36 = v17;
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:1 kernelWidth:v41 kernelHeight:v40 inputFeatureChannelCount:v35 outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:v38 strideInY:v24 dilationRateInX:v25 dilationRateInY:v28 paddingPolicy:v34 paddingSizeInX:v30 paddingSizeInY:{objc_msgSend(v31, "unsignedIntegerValue")}];

    v17 = v36;
    v21 = v37;
  }

  else
  {
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:1 kernelWidth:v41 kernelHeight:v40 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:v38 strideInY:v24 dilationRateInX:v25 dilationRateInY:v27 paddingPolicy:v34 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v32;
}

+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier
{
  LODWORD(v8) = 0;
  v6 = [[a1 alloc] initWithType:2 kernelWidth:kernelWidth kernelHeight:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:channelMultiplier * inputFeatureChannelCount groupCount:1 strideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v8 paddingSizeInX:0 paddingSizeInY:0];

  return v6;
}

+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v14 = paddingSizes;
  v15 = strides;
  v16 = kernelSizes;
  v17 = [a1 alloc];
  v18 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  v43 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  v42 = [v19 unsignedIntegerValue];
  v20 = channelMultiplier * inputFeatureChannelCount;
  v21 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  v41 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v23 = [v22 unsignedIntegerValue];
  v24 = v23;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v25 = v40 = v18;
    v39 = v21;
    v26 = v19;
    v27 = inputFeatureChannelCount;
    v28 = [v25 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v38 = v22;
    v29 = v20;
    v31 = v30 = v17;
    v32 = [v31 unsignedIntegerValue];
    LODWORD(v37) = paddingPolicy;
    v33 = v27;
    v19 = v26;
    v34 = v29;
    v22 = v38;
    v21 = v39;
    v35 = [v30 initWithType:2 kernelWidth:v43 kernelHeight:v42 inputFeatureChannelCount:v33 outputFeatureChannelCount:v34 groupCount:1 strideInX:v41 strideInY:v24 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v37 paddingSizeInX:v28 paddingSizeInY:v32];

    v18 = v40;
  }

  else
  {
    LODWORD(v37) = paddingPolicy;
    v35 = [v17 initWithType:2 kernelWidth:v43 kernelHeight:v42 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:v20 groupCount:1 strideInX:v41 strideInY:v23 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v37 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v35;
}

+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v15 = paddingSizes;
  v16 = dilationRates;
  v17 = strides;
  v18 = kernelSizes;
  v45 = [a1 alloc];
  v19 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  v43 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  v41 = [v20 unsignedIntegerValue];
  v47 = inputFeatureChannelCount;
  v42 = channelMultiplier * inputFeatureChannelCount;
  v21 = [(NSArray *)v17 objectAtIndexedSubscript:1];
  v40 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v17 objectAtIndexedSubscript:0];

  v44 = v22;
  v23 = [v22 unsignedIntegerValue];
  v24 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  v25 = [v24 unsignedIntegerValue];
  v26 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  v27 = [v26 unsignedIntegerValue];
  v28 = v27;
  if (v15)
  {
    [(NSArray *)v15 objectAtIndexedSubscript:1];
    v29 = v39 = v19;
    v30 = [v29 unsignedIntegerValue];
    [(NSArray *)v15 objectAtIndexedSubscript:0];
    v38 = v24;
    v31 = v21;
    v32 = v20;
    v34 = v33 = v15;
    LODWORD(v37) = paddingPolicy;
    v35 = [v45 initWithType:2 kernelWidth:v43 kernelHeight:v41 inputFeatureChannelCount:v47 outputFeatureChannelCount:v42 groupCount:1 strideInX:v40 strideInY:v23 dilationRateInX:v25 dilationRateInY:v28 paddingPolicy:v37 paddingSizeInX:v30 paddingSizeInY:{objc_msgSend(v34, "unsignedIntegerValue")}];

    v15 = v33;
    v20 = v32;
    v21 = v31;
    v24 = v38;

    v19 = v39;
  }

  else
  {
    LODWORD(v37) = paddingPolicy;
    v35 = [v45 initWithType:2 kernelWidth:v43 kernelHeight:v41 inputFeatureChannelCount:v47 outputFeatureChannelCount:v42 groupCount:1 strideInX:v40 strideInY:v23 dilationRateInX:v25 dilationRateInY:v27 paddingPolicy:v37 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v35;
}

- (MLCConvolutionDescriptor)initWithType:(int)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 inputFeatureChannelCount:(unint64_t)a6 outputFeatureChannelCount:(unint64_t)a7 groupCount:(unint64_t)a8 strideInX:(unint64_t)a9 strideInY:(unint64_t)a10 dilationRateInX:(unint64_t)a11 dilationRateInY:(unint64_t)a12 paddingPolicy:(int)a13 paddingSizeInX:(unint64_t)a14 paddingSizeInY:(unint64_t)a15
{
  v22.receiver = self;
  v22.super_class = MLCConvolutionDescriptor;
  result = [(MLCConvolutionDescriptor *)&v22 init];
  if (result)
  {
    result->_kernelWidth = a4;
    result->_kernelHeight = a5;
    result->_inputFeatureChannelCount = a6;
    result->_outputFeatureChannelCount = a7;
    result->_strideInX = a9;
    result->_strideInY = a10;
    result->_dilationRateInX = a11;
    result->_dilationRateInY = a12;
    result->_convolutionType = a3;
    result->_paddingPolicy = a13;
    result->_groupCount = a8;
    result->_paddingSizeInX = a14;
    result->_paddingSizeInY = a15;
  }

  return result;
}

- (id)description
{
  v7 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v7 stringWithFormat:@"%@: { kernelWidth=%lu : kernelHeight=%lu : inputFeatureChannelCount=%lu : outputFeatureChannelCount=%lu : groupCount = %lu : usesDepthWiseConvolution = %lu : strideInX=%lu : strideInY=%lu : dilationRateInX=%lu :  dilationRateInY=%lu : paddingPolicy=%d : paddingSizeInX=%lu : paddingSizeInY = %lu}", v4, -[MLCConvolutionDescriptor kernelWidth](self, "kernelWidth"), -[MLCConvolutionDescriptor kernelHeight](self, "kernelHeight"), -[MLCConvolutionDescriptor inputFeatureChannelCount](self, "inputFeatureChannelCount"), -[MLCConvolutionDescriptor outputFeatureChannelCount](self, "outputFeatureChannelCount"), -[MLCConvolutionDescriptor groupCount](self, "groupCount"), -[MLCConvolutionDescriptor usesDepthwiseConvolution](self, "usesDepthwiseConvolution"), -[MLCConvolutionDescriptor strideInX](self, "strideInX"), -[MLCConvolutionDescriptor strideInY](self, "strideInY"), -[MLCConvolutionDescriptor dilationRateInX](self, "dilationRateInX"), -[MLCConvolutionDescriptor dilationRateInY](self, "dilationRateInY"), -[MLCConvolutionDescriptor paddingPolicy](self, "paddingPolicy"), -[MLCConvolutionDescriptor paddingSizeInX](self, "paddingSizeInX"), -[MLCConvolutionDescriptor paddingSizeInY](self, "paddingSizeInY")];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 kernelWidth];
    if (v6 != [(MLCConvolutionDescriptor *)self kernelWidth])
    {
      goto LABEL_15;
    }

    v7 = [v5 kernelHeight];
    if (v7 != [(MLCConvolutionDescriptor *)self kernelHeight])
    {
      goto LABEL_15;
    }

    v8 = [v5 inputFeatureChannelCount];
    if (v8 != [(MLCConvolutionDescriptor *)self inputFeatureChannelCount])
    {
      goto LABEL_15;
    }

    v9 = [v5 outputFeatureChannelCount];
    if (v9 != [(MLCConvolutionDescriptor *)self outputFeatureChannelCount])
    {
      goto LABEL_15;
    }

    v10 = [v5 strideInX];
    if (v10 != [(MLCConvolutionDescriptor *)self strideInX])
    {
      goto LABEL_15;
    }

    v11 = [v5 strideInY];
    if (v11 != [(MLCConvolutionDescriptor *)self strideInY])
    {
      goto LABEL_15;
    }

    v12 = [v5 dilationRateInX];
    if (v12 == -[MLCConvolutionDescriptor dilationRateInX](self, "dilationRateInX") && (v13 = [v5 dilationRateInY], v13 == -[MLCConvolutionDescriptor dilationRateInY](self, "dilationRateInY")) && (v14 = objc_msgSend(v5, "groupCount"), v14 == -[MLCConvolutionDescriptor groupCount](self, "groupCount")) && (v15 = objc_msgSend(v5, "paddingPolicy"), v15 == -[MLCConvolutionDescriptor paddingPolicy](self, "paddingPolicy")) && (v16 = objc_msgSend(v5, "paddingSizeInX"), v16 == -[MLCConvolutionDescriptor paddingSizeInX](self, "paddingSizeInX")) && (v17 = objc_msgSend(v5, "paddingSizeInY"), v17 == -[MLCConvolutionDescriptor paddingSizeInY](self, "paddingSizeInY")) && (v18 = objc_msgSend(v5, "isConvolutionTranspose"), v18 == -[MLCConvolutionDescriptor isConvolutionTranspose](self, "isConvolutionTranspose")))
    {
      v21 = [v5 usesDepthwiseConvolution];
      v19 = v21 ^ [(MLCConvolutionDescriptor *)self usesDepthwiseConvolution]^ 1;
    }

    else
    {
LABEL_15:
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v12 = 0;
  v11 = [(MLCConvolutionDescriptor *)self kernelWidth];
  [(MLCConvolutionDescriptor *)self kernelHeight];
  [(MLCConvolutionDescriptor *)self inputFeatureChannelCount];
  [(MLCConvolutionDescriptor *)self outputFeatureChannelCount];
  [(MLCConvolutionDescriptor *)self strideInX];
  [(MLCConvolutionDescriptor *)self strideInY];
  [(MLCConvolutionDescriptor *)self dilationRateInX];
  [(MLCConvolutionDescriptor *)self dilationRateInY];
  [(MLCConvolutionDescriptor *)self groupCount];
  [(MLCConvolutionDescriptor *)self paddingPolicy];
  [(MLCConvolutionDescriptor *)self paddingSizeInX];
  [(MLCConvolutionDescriptor *)self paddingSizeInY];
  [(MLCConvolutionDescriptor *)self isConvolutionTranspose];
  [(MLCConvolutionDescriptor *)self usesDepthwiseConvolution];
  hashCombine_8(&v12, v3, v4, v5, v6, v7, v8, v9, v11);
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = [objc_opt_class() allocWithZone:a3];
  v15 = [(MLCConvolutionDescriptor *)self convolutionType];
  v14 = [(MLCConvolutionDescriptor *)self kernelWidth];
  v13 = [(MLCConvolutionDescriptor *)self kernelHeight];
  v4 = [(MLCConvolutionDescriptor *)self inputFeatureChannelCount];
  v5 = [(MLCConvolutionDescriptor *)self outputFeatureChannelCount];
  v6 = [(MLCConvolutionDescriptor *)self groupCount];
  v7 = [(MLCConvolutionDescriptor *)self strideInX];
  v8 = [(MLCConvolutionDescriptor *)self strideInY];
  v9 = [(MLCConvolutionDescriptor *)self dilationRateInX];
  v10 = [(MLCConvolutionDescriptor *)self dilationRateInY];
  LODWORD(v12) = [(MLCConvolutionDescriptor *)self paddingPolicy];
  return [v16 initWithType:v15 kernelWidth:v14 kernelHeight:v13 inputFeatureChannelCount:v4 outputFeatureChannelCount:v5 groupCount:v6 strideInX:v7 strideInY:v8 dilationRateInX:v9 dilationRateInY:v10 paddingPolicy:v12 paddingSizeInX:-[MLCConvolutionDescriptor paddingSizeInX](self paddingSizeInY:{"paddingSizeInX"), -[MLCConvolutionDescriptor paddingSizeInY](self, "paddingSizeInY")}];
}

@end