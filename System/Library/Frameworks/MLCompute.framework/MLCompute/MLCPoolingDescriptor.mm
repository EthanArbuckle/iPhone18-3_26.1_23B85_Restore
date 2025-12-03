@interface MLCPoolingDescriptor
+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding;
+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding;
+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCPoolingDescriptor)maxPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCPoolingDescriptor)maxPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
- (BOOL)isEqual:(id)equal;
- (MLCPoolingDescriptor)initWithType:(int)type kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height strideInX:(unint64_t)x strideInY:(unint64_t)y dilationRateInX:(unint64_t)inX dilationRateInY:(unint64_t)inY paddingPolicy:(int)self0 paddingSizeInX:(unint64_t)self1 paddingSizeInY:(unint64_t)self2 countIncludesPadding:(BOOL)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCPoolingDescriptor

- (id)description
{
  v7 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v7 stringWithFormat:@"%@: { poolingType=%d : kernelWidth=%lu : kernelHeight=%lu : strideInX=%lu : strideInY=%lu : dilationRateInX=%lu :  dilationRateInY=%lu : paddingPolicy=%d : paddingSizeInX=%lu : paddingSizeInY=%lu }", v4, -[MLCPoolingDescriptor poolingType](self, "poolingType"), -[MLCPoolingDescriptor kernelWidth](self, "kernelWidth"), -[MLCPoolingDescriptor kernelHeight](self, "kernelHeight"), -[MLCPoolingDescriptor strideInX](self, "strideInX"), -[MLCPoolingDescriptor strideInY](self, "strideInY"), -[MLCPoolingDescriptor dilationRateInX](self, "dilationRateInX"), -[MLCPoolingDescriptor dilationRateInY](self, "dilationRateInY"), -[MLCPoolingDescriptor paddingPolicy](self, "paddingPolicy"), -[MLCPoolingDescriptor paddingSizeInX](self, "paddingSizeInX"), -[MLCPoolingDescriptor paddingSizeInY](self, "paddingSizeInY")];

  return v5;
}

+ (MLCPoolingDescriptor)maxPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v10 = paddingSizes;
  v11 = strides;
  v12 = kernelSizes;
  v13 = [self alloc];
  v14 = [(NSArray *)v12 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v14 unsignedIntegerValue];
  v16 = [(NSArray *)v12 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v16 unsignedIntegerValue];
  v18 = [(NSArray *)v11 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v11 objectAtIndexedSubscript:0];

  unsignedIntegerValue4 = [v19 unsignedIntegerValue];
  if (v10)
  {
    v37 = unsignedIntegerValue4;
    [(NSArray *)v10 objectAtIndexedSubscript:1];
    v36 = unsignedIntegerValue2;
    v21 = v16;
    v23 = v22 = paddingPolicy;
    v24 = unsignedIntegerValue;
    v25 = v18;
    v26 = v13;
    unsignedIntegerValue5 = [v23 unsignedIntegerValue];
    [(NSArray *)v10 objectAtIndexedSubscript:0];
    v38 = v10;
    v29 = v28 = v14;
    LOBYTE(v35) = 0;
    unsignedIntegerValue6 = [v29 unsignedIntegerValue];
    LODWORD(v33) = v22;
    v16 = v21;
    v30 = v26;
    v18 = v25;
    v31 = [v30 initWithType:1 kernelWidth:v24 kernelHeight:v36 strideInX:unsignedIntegerValue3 strideInY:v37 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:unsignedIntegerValue5 paddingSizeInY:unsignedIntegerValue6 countIncludesPadding:v35];

    v14 = v28;
    v10 = v38;
  }

  else
  {
    LOBYTE(v35) = 0;
    LODWORD(v33) = paddingPolicy;
    v31 = [v13 initWithType:1 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v35];
  }

  return v31;
}

+ (MLCPoolingDescriptor)maxPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v12 = paddingSizes;
  v13 = dilationRates;
  v14 = strides;
  v15 = kernelSizes;
  v16 = [self alloc];
  v17 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v17 unsignedIntegerValue];
  v18 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v14 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v14 objectAtIndexedSubscript:0];

  unsignedIntegerValue4 = [v20 unsignedIntegerValue];
  v40 = [(NSArray *)v13 objectAtIndexedSubscript:1];
  unsignedIntegerValue5 = [v40 unsignedIntegerValue];
  v22 = [(NSArray *)v13 objectAtIndexedSubscript:0];

  unsignedIntegerValue6 = [v22 unsignedIntegerValue];
  v24 = unsignedIntegerValue6;
  if (v12)
  {
    [(NSArray *)v12 objectAtIndexedSubscript:1];
    v25 = v37 = v17;
    v35 = unsignedIntegerValue4;
    v26 = v19;
    unsignedIntegerValue7 = [v25 unsignedIntegerValue];
    [(NSArray *)v12 objectAtIndexedSubscript:0];
    v36 = v18;
    v29 = v28 = v12;
    LOBYTE(v34) = 0;
    v33 = unsignedIntegerValue7;
    v19 = v26;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:1 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:v35 dilationRateInX:unsignedIntegerValue5 dilationRateInY:v24 paddingPolicy:v32 paddingSizeInX:v33 paddingSizeInY:objc_msgSend(v29 countIncludesPadding:{"unsignedIntegerValue"), v34}];

    v12 = v28;
    v18 = v36;

    v17 = v37;
  }

  else
  {
    LOBYTE(v34) = 0;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:1 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:unsignedIntegerValue6 paddingPolicy:v32 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v34];
  }

  return v30;
}

+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding
{
  v12 = paddingSizes;
  v13 = strides;
  v14 = kernelSizes;
  v15 = [self alloc];
  v16 = [(NSArray *)v14 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v16 unsignedIntegerValue];
  v17 = [(NSArray *)v14 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v17 unsignedIntegerValue];
  v19 = [(NSArray *)v13 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v13 objectAtIndexedSubscript:0];

  unsignedIntegerValue4 = [v20 unsignedIntegerValue];
  if (v12)
  {
    v36 = unsignedIntegerValue4;
    [(NSArray *)v12 objectAtIndexedSubscript:1];
    v35 = v15;
    v22 = v17;
    v24 = v23 = paddingPolicy;
    v25 = unsignedIntegerValue2;
    v26 = v19;
    unsignedIntegerValue5 = [v24 unsignedIntegerValue];
    [(NSArray *)v12 objectAtIndexedSubscript:0];
    v37 = v12;
    v29 = v28 = v16;
    LOBYTE(v34) = countIncludesPadding;
    v33 = unsignedIntegerValue5;
    v19 = v26;
    LODWORD(v32) = v23;
    v17 = v22;
    v30 = [v35 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:v25 strideInX:unsignedIntegerValue3 strideInY:v36 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v32 paddingSizeInX:v33 paddingSizeInY:objc_msgSend(v29 countIncludesPadding:{"unsignedIntegerValue"), v34}];

    v16 = v28;
    v12 = v37;
  }

  else
  {
    LOBYTE(v34) = countIncludesPadding;
    LODWORD(v32) = paddingPolicy;
    v30 = [v15 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v32 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v34];
  }

  return v30;
}

+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding
{
  v14 = paddingSizes;
  v15 = dilationRates;
  v16 = strides;
  v17 = kernelSizes;
  v45 = [self alloc];
  v18 = [(NSArray *)v17 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v17 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  unsignedIntegerValue4 = [v21 unsignedIntegerValue];
  v42 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  unsignedIntegerValue5 = [v42 unsignedIntegerValue];
  v23 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  unsignedIntegerValue6 = [v23 unsignedIntegerValue];
  v25 = unsignedIntegerValue6;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v26 = v39 = v18;
    v37 = unsignedIntegerValue4;
    v27 = paddingPolicy;
    unsignedIntegerValue7 = [v26 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v38 = v21;
    v29 = v20;
    v30 = v19;
    v32 = v31 = v14;
    LOBYTE(v36) = countIncludesPadding;
    LODWORD(v35) = v27;
    v33 = [v45 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:v37 dilationRateInX:unsignedIntegerValue5 dilationRateInY:v25 paddingPolicy:v35 paddingSizeInX:unsignedIntegerValue7 paddingSizeInY:objc_msgSend(v32 countIncludesPadding:{"unsignedIntegerValue"), v36}];

    v14 = v31;
    v19 = v30;
    v20 = v29;
    v21 = v38;

    v18 = v39;
  }

  else
  {
    LOBYTE(v36) = countIncludesPadding;
    LODWORD(v35) = paddingPolicy;
    v33 = [v45 initWithType:2 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:unsignedIntegerValue6 paddingPolicy:v35 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v36];
  }

  return v33;
}

+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v10 = paddingSizes;
  v11 = strides;
  v12 = kernelSizes;
  v13 = [self alloc];
  v14 = [(NSArray *)v12 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v14 unsignedIntegerValue];
  v16 = [(NSArray *)v12 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v16 unsignedIntegerValue];
  v18 = [(NSArray *)v11 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v11 objectAtIndexedSubscript:0];

  unsignedIntegerValue4 = [v19 unsignedIntegerValue];
  if (v10)
  {
    v37 = unsignedIntegerValue4;
    [(NSArray *)v10 objectAtIndexedSubscript:1];
    v36 = unsignedIntegerValue2;
    v21 = v16;
    v23 = v22 = paddingPolicy;
    v24 = unsignedIntegerValue;
    v25 = v18;
    v26 = v13;
    unsignedIntegerValue5 = [v23 unsignedIntegerValue];
    [(NSArray *)v10 objectAtIndexedSubscript:0];
    v38 = v10;
    v29 = v28 = v14;
    LOBYTE(v35) = 0;
    unsignedIntegerValue6 = [v29 unsignedIntegerValue];
    LODWORD(v33) = v22;
    v16 = v21;
    v30 = v26;
    v18 = v25;
    v31 = [v30 initWithType:3 kernelWidth:v24 kernelHeight:v36 strideInX:unsignedIntegerValue3 strideInY:v37 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:unsignedIntegerValue5 paddingSizeInY:unsignedIntegerValue6 countIncludesPadding:v35];

    v14 = v28;
    v10 = v38;
  }

  else
  {
    LOBYTE(v35) = 0;
    LODWORD(v33) = paddingPolicy;
    v31 = [v13 initWithType:3 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v35];
  }

  return v31;
}

+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v12 = paddingSizes;
  v13 = dilationRates;
  v14 = strides;
  v15 = kernelSizes;
  v16 = [self alloc];
  v17 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v17 unsignedIntegerValue];
  v18 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v14 objectAtIndexedSubscript:1];
  unsignedIntegerValue3 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v14 objectAtIndexedSubscript:0];

  unsignedIntegerValue4 = [v20 unsignedIntegerValue];
  v40 = [(NSArray *)v13 objectAtIndexedSubscript:1];
  unsignedIntegerValue5 = [v40 unsignedIntegerValue];
  v22 = [(NSArray *)v13 objectAtIndexedSubscript:0];

  unsignedIntegerValue6 = [v22 unsignedIntegerValue];
  v24 = unsignedIntegerValue6;
  if (v12)
  {
    [(NSArray *)v12 objectAtIndexedSubscript:1];
    v25 = v37 = v17;
    v35 = unsignedIntegerValue4;
    v26 = v19;
    unsignedIntegerValue7 = [v25 unsignedIntegerValue];
    [(NSArray *)v12 objectAtIndexedSubscript:0];
    v36 = v18;
    v29 = v28 = v12;
    LOBYTE(v34) = 0;
    v33 = unsignedIntegerValue7;
    v19 = v26;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:3 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:v35 dilationRateInX:unsignedIntegerValue5 dilationRateInY:v24 paddingPolicy:v32 paddingSizeInX:v33 paddingSizeInY:objc_msgSend(v29 countIncludesPadding:{"unsignedIntegerValue"), v34}];

    v12 = v28;
    v18 = v36;

    v17 = v37;
  }

  else
  {
    LOBYTE(v34) = 0;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:3 kernelWidth:unsignedIntegerValue kernelHeight:unsignedIntegerValue2 strideInX:unsignedIntegerValue3 strideInY:unsignedIntegerValue4 dilationRateInX:unsignedIntegerValue5 dilationRateInY:unsignedIntegerValue6 paddingPolicy:v32 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v34];
  }

  return v30;
}

- (MLCPoolingDescriptor)initWithType:(int)type kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height strideInX:(unint64_t)x strideInY:(unint64_t)y dilationRateInX:(unint64_t)inX dilationRateInY:(unint64_t)inY paddingPolicy:(int)self0 paddingSizeInX:(unint64_t)self1 paddingSizeInY:(unint64_t)self2 countIncludesPadding:(BOOL)self3
{
  v20.receiver = self;
  v20.super_class = MLCPoolingDescriptor;
  result = [(MLCPoolingDescriptor *)&v20 init];
  if (result)
  {
    result->_kernelWidth = width;
    result->_kernelHeight = height;
    result->_strideInX = x;
    result->_strideInY = y;
    result->_dilationRateInX = inX;
    result->_dilationRateInY = inY;
    result->_poolingType = type;
    result->_paddingPolicy = policy;
    result->_paddingSizeInX = sizeInX;
    result->_paddingSizeInY = sizeInY;
    result->_countIncludesPadding = padding;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    poolingType = [v5 poolingType];
    if (poolingType != [(MLCPoolingDescriptor *)self poolingType])
    {
      goto LABEL_14;
    }

    kernelWidth = [v5 kernelWidth];
    if (kernelWidth != [(MLCPoolingDescriptor *)self kernelWidth])
    {
      goto LABEL_14;
    }

    kernelHeight = [v5 kernelHeight];
    if (kernelHeight != [(MLCPoolingDescriptor *)self kernelHeight])
    {
      goto LABEL_14;
    }

    strideInX = [v5 strideInX];
    if (strideInX == -[MLCPoolingDescriptor strideInX](self, "strideInX") && (v10 = [v5 strideInY], v10 == -[MLCPoolingDescriptor strideInY](self, "strideInY")) && (v11 = objc_msgSend(v5, "dilationRateInX"), v11 == -[MLCPoolingDescriptor dilationRateInX](self, "dilationRateInX")) && (v12 = objc_msgSend(v5, "dilationRateInY"), v12 == -[MLCPoolingDescriptor dilationRateInY](self, "dilationRateInY")) && (v13 = objc_msgSend(v5, "paddingPolicy"), v13 == -[MLCPoolingDescriptor paddingPolicy](self, "paddingPolicy")) && (v14 = objc_msgSend(v5, "paddingSizeInX"), v14 == -[MLCPoolingDescriptor paddingSizeInX](self, "paddingSizeInX")) && (v15 = objc_msgSend(v5, "paddingSizeInY"), v15 == -[MLCPoolingDescriptor paddingSizeInY](self, "paddingSizeInY")))
    {
      countIncludesPadding = [v5 countIncludesPadding];
      v17 = countIncludesPadding ^ [(MLCPoolingDescriptor *)self countIncludesPadding]^ 1;
    }

    else
    {
LABEL_14:
      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v12 = 0;
  poolingType = [(MLCPoolingDescriptor *)self poolingType];
  [(MLCPoolingDescriptor *)self kernelWidth];
  [(MLCPoolingDescriptor *)self kernelHeight];
  [(MLCPoolingDescriptor *)self strideInX];
  [(MLCPoolingDescriptor *)self strideInY];
  [(MLCPoolingDescriptor *)self dilationRateInX];
  [(MLCPoolingDescriptor *)self dilationRateInY];
  [(MLCPoolingDescriptor *)self paddingPolicy];
  [(MLCPoolingDescriptor *)self paddingSizeInX];
  [(MLCPoolingDescriptor *)self paddingSizeInY];
  [(MLCPoolingDescriptor *)self countIncludesPadding];
  hashCombine_0(&v12, v3, v4, v5, v6, v7, v8, v9, poolingType);
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = [objc_opt_class() allocWithZone:zone];
  HIDWORD(v15) = [(MLCPoolingDescriptor *)self poolingType];
  kernelWidth = [(MLCPoolingDescriptor *)self kernelWidth];
  kernelHeight = [(MLCPoolingDescriptor *)self kernelHeight];
  strideInX = [(MLCPoolingDescriptor *)self strideInX];
  strideInY = [(MLCPoolingDescriptor *)self strideInY];
  dilationRateInX = [(MLCPoolingDescriptor *)self dilationRateInX];
  dilationRateInY = [(MLCPoolingDescriptor *)self dilationRateInY];
  paddingPolicy = [(MLCPoolingDescriptor *)self paddingPolicy];
  paddingSizeInX = [(MLCPoolingDescriptor *)self paddingSizeInX];
  paddingSizeInY = [(MLCPoolingDescriptor *)self paddingSizeInY];
  LOBYTE(v15) = [(MLCPoolingDescriptor *)self countIncludesPadding];
  LODWORD(v14) = paddingPolicy;
  return [v16 initWithType:HIDWORD(v15) kernelWidth:kernelWidth kernelHeight:kernelHeight strideInX:strideInX strideInY:strideInY dilationRateInX:dilationRateInX dilationRateInY:dilationRateInY paddingPolicy:v14 paddingSizeInX:paddingSizeInX paddingSizeInY:paddingSizeInY countIncludesPadding:v15];
}

@end