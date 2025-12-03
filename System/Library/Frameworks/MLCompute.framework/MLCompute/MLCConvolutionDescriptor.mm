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
- (BOOL)isEqual:(id)equal;
- (MLCConvolutionDescriptor)initWithType:(int)type kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount groupCount:(unint64_t)groupCount strideInX:(unint64_t)x strideInY:(unint64_t)self0 dilationRateInX:(unint64_t)self1 dilationRateInY:(unint64_t)self2 paddingPolicy:(int)self3 paddingSizeInX:(unint64_t)self4 paddingSizeInY:(unint64_t)self5;
- (id)copyWithZone:(_NSZone *)zone;
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
  v44 = [self alloc];
  v19 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v17 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v17 objectAtIndexedSubscript:0];

  v43 = v22;
  unsignedIntegerValue4 = [v22 unsignedIntegerValue];
  v40 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  unsignedIntegerValue5 = [v40 unsignedIntegerValue];
  v25 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  unsignedIntegerValue6 = [v25 unsignedIntegerValue];
  v27 = unsignedIntegerValue6;
  if (v15)
  {
    [(NSArray *)v15 objectAtIndexedSubscript:1];
    v28 = v37 = v19;
    v29 = v21;
    unsignedIntegerValue7 = [v28 unsignedIntegerValue];
    [(NSArray *)v15 objectAtIndexedSubscript:0];
    v31 = v36 = v15;
    v35 = unsignedIntegerValue7;
    v21 = v29;
    LODWORD(v34) = paddingPolicy;
    v32 = [v44 initWithType:convolutionType kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:v27 paddingPolicy:v34 paddingSizeInX:v35 paddingSizeInY:{objc_msgSend(v31, "unsignedIntegerValue")}];

    v15 = v36;
    v19 = v37;
  }

  else
  {
    LODWORD(v34) = paddingPolicy;
    v32 = [v44 initWithType:convolutionType kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:unsignedIntegerValue6 paddingPolicy:v34 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v32;
}

+ (MLCConvolutionDescriptor)descriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount
{
  LODWORD(v8) = 0;
  v6 = [[self alloc] initWithType:0 kernelWidth:kernelWidth kernelHeight:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v8 paddingSizeInX:0 paddingSizeInY:0];

  return v6;
}

+ (MLCConvolutionDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v14 = paddingSizes;
  v15 = strides;
  v16 = kernelSizes;
  v17 = [self alloc];
  v18 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v39 = v21;
  unsignedIntegerValue4 = [v21 unsignedIntegerValue];
  v23 = unsignedIntegerValue4;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v25 = v24 = paddingPolicy;
    v35 = v17;
    v26 = v20;
    unsignedIntegerValue5 = [v25 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v36 = v19;
    v28 = v14;
    v30 = v29 = v18;
    v34 = unsignedIntegerValue5;
    v20 = v26;
    LODWORD(v33) = v24;
    v31 = [v35 initWithType:0 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:unsignedIntegerValue3 strideInY:v23 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:v34 paddingSizeInY:{objc_msgSend(v30, "unsignedIntegerValue")}];

    v18 = v29;
    v14 = v28;
    v19 = v36;
  }

  else
  {
    LODWORD(v33) = paddingPolicy;
    v31 = [v17 initWithType:0 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v31;
}

+ (MLCConvolutionDescriptor)descriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v17 = paddingSizes;
  v18 = dilationRates;
  v19 = strides;
  v20 = kernelSizes;
  v43 = [self alloc];
  v21 = [(NSArray *)v20 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v20 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v22 unsignedIntegerValue];
  v44 = [(NSArray *)v19 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v44 unsignedIntegerValue];
  v23 = [(NSArray *)v19 objectAtIndexedSubscript:0];

  v42 = v23;
  unsignedIntegerValue4 = [v23 unsignedIntegerValue];
  v39 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  unsignedIntegerValue5 = [v39 unsignedIntegerValue];
  v26 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  unsignedIntegerValue6 = [v26 unsignedIntegerValue];
  v28 = unsignedIntegerValue6;
  if (v17)
  {
    [(NSArray *)v17 objectAtIndexedSubscript:1];
    v29 = v37 = v21;
    v35 = inputFeatureChannelCount;
    unsignedIntegerValue7 = [v29 unsignedIntegerValue];
    [(NSArray *)v17 objectAtIndexedSubscript:0];
    v31 = v36 = v17;
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:0 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:v35 outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:v28 paddingPolicy:v34 paddingSizeInX:unsignedIntegerValue7 paddingSizeInY:{objc_msgSend(v31, "unsignedIntegerValue")}];

    v17 = v36;
    v21 = v37;
  }

  else
  {
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:0 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:unsignedIntegerValue6 paddingPolicy:v34 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v32;
}

+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount
{
  LODWORD(v8) = 0;
  v6 = [[self alloc] initWithType:1 kernelWidth:kernelWidth kernelHeight:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v8 paddingSizeInX:0 paddingSizeInY:0];

  return v6;
}

+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v14 = paddingSizes;
  v15 = strides;
  v16 = kernelSizes;
  v17 = [self alloc];
  v18 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v39 = v21;
  unsignedIntegerValue4 = [v21 unsignedIntegerValue];
  v23 = unsignedIntegerValue4;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v25 = v24 = paddingPolicy;
    v35 = v17;
    v26 = v20;
    unsignedIntegerValue5 = [v25 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v36 = v19;
    v28 = v14;
    v30 = v29 = v18;
    v34 = unsignedIntegerValue5;
    v20 = v26;
    LODWORD(v33) = v24;
    v31 = [v35 initWithType:1 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:unsignedIntegerValue3 strideInY:v23 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:v34 paddingSizeInY:{objc_msgSend(v30, "unsignedIntegerValue")}];

    v18 = v29;
    v14 = v28;
    v19 = v36;
  }

  else
  {
    LODWORD(v33) = paddingPolicy;
    v31 = [v17 initWithType:1 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:1 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v31;
}

+ (MLCConvolutionDescriptor)convolutionTransposeDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount outputFeatureChannelCount:(NSUInteger)outputFeatureChannelCount groupCount:(NSUInteger)groupCount strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v17 = paddingSizes;
  v18 = dilationRates;
  v19 = strides;
  v20 = kernelSizes;
  v43 = [self alloc];
  v21 = [(NSArray *)v20 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v20 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v22 unsignedIntegerValue];
  v44 = [(NSArray *)v19 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v44 unsignedIntegerValue];
  v23 = [(NSArray *)v19 objectAtIndexedSubscript:0];

  v42 = v23;
  unsignedIntegerValue4 = [v23 unsignedIntegerValue];
  v39 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  unsignedIntegerValue5 = [v39 unsignedIntegerValue];
  v26 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  unsignedIntegerValue6 = [v26 unsignedIntegerValue];
  v28 = unsignedIntegerValue6;
  if (v17)
  {
    [(NSArray *)v17 objectAtIndexedSubscript:1];
    v29 = v37 = v21;
    v35 = inputFeatureChannelCount;
    unsignedIntegerValue7 = [v29 unsignedIntegerValue];
    [(NSArray *)v17 objectAtIndexedSubscript:0];
    v31 = v36 = v17;
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:1 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:v35 outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:v28 paddingPolicy:v34 paddingSizeInX:unsignedIntegerValue7 paddingSizeInY:{objc_msgSend(v31, "unsignedIntegerValue")}];

    v17 = v36;
    v21 = v37;
  }

  else
  {
    LODWORD(v34) = paddingPolicy;
    v32 = [v43 initWithType:1 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:unsignedIntegerValue6 paddingPolicy:v34 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v32;
}

+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier
{
  LODWORD(v8) = 0;
  v6 = [[self alloc] initWithType:2 kernelWidth:kernelWidth kernelHeight:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:channelMultiplier * inputFeatureChannelCount groupCount:1 strideInX:1 strideInY:1 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v8 paddingSizeInX:0 paddingSizeInY:0];

  return v6;
}

+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v14 = paddingSizes;
  v15 = strides;
  v16 = kernelSizes;
  v17 = [self alloc];
  v18 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v19 unsignedIntegerValue];
  v20 = channelMultiplier * inputFeatureChannelCount;
  v21 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  unsignedIntegerValue4 = [v22 unsignedIntegerValue];
  v24 = unsignedIntegerValue4;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v25 = v40 = v18;
    v39 = v21;
    v26 = v19;
    v27 = inputFeatureChannelCount;
    unsignedIntegerValue5 = [v25 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v38 = v22;
    v29 = v20;
    v31 = v30 = v17;
    unsignedIntegerValue6 = [v31 unsignedIntegerValue];
    LODWORD(v37) = paddingPolicy;
    v33 = v27;
    v19 = v26;
    v34 = v29;
    v22 = v38;
    v21 = v39;
    v35 = [v30 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:v33 outputFeatureChannelCount:v34 groupCount:1 strideInX:unsignedIntegerValue3 strideInY:v24 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v37 paddingSizeInX:unsignedIntegerValue5 paddingSizeInY:unsignedIntegerValue6];

    v18 = v40;
  }

  else
  {
    LODWORD(v37) = paddingPolicy;
    v35 = [v17 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:v20 groupCount:1 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v37 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v35;
}

+ (MLCConvolutionDescriptor)depthwiseConvolutionDescriptorWithKernelSizes:(NSArray *)kernelSizes inputFeatureChannelCount:(NSUInteger)inputFeatureChannelCount channelMultiplier:(NSUInteger)channelMultiplier strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v15 = paddingSizes;
  v16 = dilationRates;
  v17 = strides;
  v18 = kernelSizes;
  v45 = [self alloc];
  v19 = [(NSArray *)v18 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v18 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v20 unsignedIntegerValue];
  v47 = inputFeatureChannelCount;
  v42 = channelMultiplier * inputFeatureChannelCount;
  v21 = [(NSArray *)v17 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v21 unsignedIntegerValue];
  v22 = [(NSArray *)v17 objectAtIndexedSubscript:0];

  v44 = v22;
  unsignedIntegerValue4 = [v22 unsignedIntegerValue];
  v24 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  unsignedIntegerValue5 = [v24 unsignedIntegerValue];
  v26 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  unsignedIntegerValue6 = [v26 unsignedIntegerValue];
  v28 = unsignedIntegerValue6;
  if (v15)
  {
    [(NSArray *)v15 objectAtIndexedSubscript:1];
    v29 = v39 = v19;
    unsignedIntegerValue7 = [v29 unsignedIntegerValue];
    [(NSArray *)v15 objectAtIndexedSubscript:0];
    v38 = v24;
    v31 = v21;
    v32 = v20;
    v34 = v33 = v15;
    LODWORD(v37) = paddingPolicy;
    v35 = [v45 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:v47 outputFeatureChannelCount:v42 groupCount:1 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:v28 paddingPolicy:v37 paddingSizeInX:unsignedIntegerValue7 paddingSizeInY:{objc_msgSend(v34, "unsignedIntegerValue")}];

    v15 = v33;
    v20 = v32;
    v21 = v31;
    v24 = v38;

    v19 = v39;
  }

  else
  {
    LODWORD(v37) = paddingPolicy;
    v35 = [v45 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 inputFeatureChannelCount:v47 outputFeatureChannelCount:v42 groupCount:1 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:unsignedIntegerValue6 paddingPolicy:v37 paddingSizeInX:0 paddingSizeInY:0];
  }

  return v35;
}

- (MLCConvolutionDescriptor)initWithType:(int)type kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height inputFeatureChannelCount:(unint64_t)count outputFeatureChannelCount:(unint64_t)channelCount groupCount:(unint64_t)groupCount strideInX:(unint64_t)x strideInY:(unint64_t)self0 dilationRateInX:(unint64_t)self1 dilationRateInY:(unint64_t)self2 paddingPolicy:(int)self3 paddingSizeInX:(unint64_t)self4 paddingSizeInY:(unint64_t)self5
{
  v22.receiver = self;
  v22.super_class = MLCConvolutionDescriptor;
  result = [(MLCConvolutionDescriptor *)&v22 init];
  if (result)
  {
    result->_kernelWidth = width;
    result->_kernelHeight = height;
    result->_inputFeatureChannelCount = count;
    result->_outputFeatureChannelCount = channelCount;
    result->_strideInX = x;
    result->_strideInY = y;
    result->_dilationRateInX = inX;
    result->_dilationRateInY = inY;
    result->_convolutionType = type;
    result->_paddingPolicy = policy;
    result->_groupCount = groupCount;
    result->_paddingSizeInX = sizeInX;
    result->_paddingSizeInY = sizeInY;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    kernelWidth = [v5 kernelWidth];
    if (kernelWidth != [(MLCConvolutionDescriptor *)self kernelWidth])
    {
      goto LABEL_15;
    }

    kernelHeight = [v5 kernelHeight];
    if (kernelHeight != [(MLCConvolutionDescriptor *)self kernelHeight])
    {
      goto LABEL_15;
    }

    inputFeatureChannelCount = [v5 inputFeatureChannelCount];
    if (inputFeatureChannelCount != [(MLCConvolutionDescriptor *)self inputFeatureChannelCount])
    {
      goto LABEL_15;
    }

    outputFeatureChannelCount = [v5 outputFeatureChannelCount];
    if (outputFeatureChannelCount != [(MLCConvolutionDescriptor *)self outputFeatureChannelCount])
    {
      goto LABEL_15;
    }

    strideInX = [v5 strideInX];
    if (strideInX != [(MLCConvolutionDescriptor *)self strideInX])
    {
      goto LABEL_15;
    }

    strideInY = [v5 strideInY];
    if (strideInY != [(MLCConvolutionDescriptor *)self strideInY])
    {
      goto LABEL_15;
    }

    dilationRateInX = [v5 dilationRateInX];
    if (dilationRateInX == -[MLCConvolutionDescriptor dilationRateInX](self, "dilationRateInX") && (v13 = [v5 dilationRateInY], v13 == -[MLCConvolutionDescriptor dilationRateInY](self, "dilationRateInY")) && (v14 = objc_msgSend(v5, "groupCount"), v14 == -[MLCConvolutionDescriptor groupCount](self, "groupCount")) && (v15 = objc_msgSend(v5, "paddingPolicy"), v15 == -[MLCConvolutionDescriptor paddingPolicy](self, "paddingPolicy")) && (v16 = objc_msgSend(v5, "paddingSizeInX"), v16 == -[MLCConvolutionDescriptor paddingSizeInX](self, "paddingSizeInX")) && (v17 = objc_msgSend(v5, "paddingSizeInY"), v17 == -[MLCConvolutionDescriptor paddingSizeInY](self, "paddingSizeInY")) && (v18 = objc_msgSend(v5, "isConvolutionTranspose"), v18 == -[MLCConvolutionDescriptor isConvolutionTranspose](self, "isConvolutionTranspose")))
    {
      usesDepthwiseConvolution = [v5 usesDepthwiseConvolution];
      v19 = usesDepthwiseConvolution ^ [(MLCConvolutionDescriptor *)self usesDepthwiseConvolution]^ 1;
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
  kernelWidth = [(MLCConvolutionDescriptor *)self kernelWidth];
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
  hashCombine_8(&v12, v3, v4, v5, v6, v7, v8, v9, kernelWidth);
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = [objc_opt_class() allocWithZone:zone];
  convolutionType = [(MLCConvolutionDescriptor *)self convolutionType];
  kernelWidth = [(MLCConvolutionDescriptor *)self kernelWidth];
  kernelHeight = [(MLCConvolutionDescriptor *)self kernelHeight];
  inputFeatureChannelCount = [(MLCConvolutionDescriptor *)self inputFeatureChannelCount];
  outputFeatureChannelCount = [(MLCConvolutionDescriptor *)self outputFeatureChannelCount];
  groupCount = [(MLCConvolutionDescriptor *)self groupCount];
  strideInX = [(MLCConvolutionDescriptor *)self strideInX];
  strideInY = [(MLCConvolutionDescriptor *)self strideInY];
  dilationRateInX = [(MLCConvolutionDescriptor *)self dilationRateInX];
  dilationRateInY = [(MLCConvolutionDescriptor *)self dilationRateInY];
  LODWORD(v12) = [(MLCConvolutionDescriptor *)self paddingPolicy];
  return [v16 initWithType:convolutionType kernelWidth:kernelWidth kernelHeight:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount outputFeatureChannelCount:outputFeatureChannelCount groupCount:groupCount strideInX:strideInX strideInY:strideInY dilationRateInX:dilationRateInX dilationRateInY:dilationRateInY paddingPolicy:v12 paddingSizeInX:-[MLCConvolutionDescriptor paddingSizeInX](self paddingSizeInY:{"paddingSizeInX"), -[MLCConvolutionDescriptor paddingSizeInY](self, "paddingSizeInY")}];
}

@end