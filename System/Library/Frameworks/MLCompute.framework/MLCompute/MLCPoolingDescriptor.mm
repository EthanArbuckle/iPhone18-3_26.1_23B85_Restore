@interface MLCPoolingDescriptor
+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding;
+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding;
+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCPoolingDescriptor)maxPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
+ (MLCPoolingDescriptor)maxPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes;
- (BOOL)isEqual:(id)a3;
- (MLCPoolingDescriptor)initWithType:(int)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 strideInX:(unint64_t)a6 strideInY:(unint64_t)a7 dilationRateInX:(unint64_t)a8 dilationRateInY:(unint64_t)a9 paddingPolicy:(int)a10 paddingSizeInX:(unint64_t)a11 paddingSizeInY:(unint64_t)a12 countIncludesPadding:(BOOL)a13;
- (id)copyWithZone:(_NSZone *)a3;
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
  v13 = [a1 alloc];
  v14 = [(NSArray *)v12 objectAtIndexedSubscript:1];
  v15 = [v14 unsignedIntegerValue];
  v16 = [(NSArray *)v12 objectAtIndexedSubscript:0];

  v17 = [v16 unsignedIntegerValue];
  v18 = [(NSArray *)v11 objectAtIndexedSubscript:1];
  v39 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v11 objectAtIndexedSubscript:0];

  v20 = [v19 unsignedIntegerValue];
  if (v10)
  {
    v37 = v20;
    [(NSArray *)v10 objectAtIndexedSubscript:1];
    v36 = v17;
    v21 = v16;
    v23 = v22 = paddingPolicy;
    v24 = v15;
    v25 = v18;
    v26 = v13;
    v27 = [v23 unsignedIntegerValue];
    [(NSArray *)v10 objectAtIndexedSubscript:0];
    v38 = v10;
    v29 = v28 = v14;
    LOBYTE(v35) = 0;
    v34 = [v29 unsignedIntegerValue];
    LODWORD(v33) = v22;
    v16 = v21;
    v30 = v26;
    v18 = v25;
    v31 = [v30 initWithType:1 kernelWidth:v24 kernelHeight:v36 strideInX:v39 strideInY:v37 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:v27 paddingSizeInY:v34 countIncludesPadding:v35];

    v14 = v28;
    v10 = v38;
  }

  else
  {
    LOBYTE(v35) = 0;
    LODWORD(v33) = paddingPolicy;
    v31 = [v13 initWithType:1 kernelWidth:v15 kernelHeight:v17 strideInX:v39 strideInY:v20 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v35];
  }

  return v31;
}

+ (MLCPoolingDescriptor)maxPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v12 = paddingSizes;
  v13 = dilationRates;
  v14 = strides;
  v15 = kernelSizes;
  v16 = [a1 alloc];
  v17 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  v42 = [v17 unsignedIntegerValue];
  v18 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v41 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v14 objectAtIndexedSubscript:1];
  v39 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v14 objectAtIndexedSubscript:0];

  v21 = [v20 unsignedIntegerValue];
  v40 = [(NSArray *)v13 objectAtIndexedSubscript:1];
  v38 = [v40 unsignedIntegerValue];
  v22 = [(NSArray *)v13 objectAtIndexedSubscript:0];

  v23 = [v22 unsignedIntegerValue];
  v24 = v23;
  if (v12)
  {
    [(NSArray *)v12 objectAtIndexedSubscript:1];
    v25 = v37 = v17;
    v35 = v21;
    v26 = v19;
    v27 = [v25 unsignedIntegerValue];
    [(NSArray *)v12 objectAtIndexedSubscript:0];
    v36 = v18;
    v29 = v28 = v12;
    LOBYTE(v34) = 0;
    v33 = v27;
    v19 = v26;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:1 kernelWidth:v42 kernelHeight:v41 strideInX:v39 strideInY:v35 dilationRateInX:v38 dilationRateInY:v24 paddingPolicy:v32 paddingSizeInX:v33 paddingSizeInY:objc_msgSend(v29 countIncludesPadding:{"unsignedIntegerValue"), v34}];

    v12 = v28;
    v18 = v36;

    v17 = v37;
  }

  else
  {
    LOBYTE(v34) = 0;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:1 kernelWidth:v42 kernelHeight:v41 strideInX:v39 strideInY:v21 dilationRateInX:v38 dilationRateInY:v23 paddingPolicy:v32 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v34];
  }

  return v30;
}

+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding
{
  v12 = paddingSizes;
  v13 = strides;
  v14 = kernelSizes;
  v15 = [a1 alloc];
  v16 = [(NSArray *)v14 objectAtIndexedSubscript:1];
  v39 = [v16 unsignedIntegerValue];
  v17 = [(NSArray *)v14 objectAtIndexedSubscript:0];

  v18 = [v17 unsignedIntegerValue];
  v19 = [(NSArray *)v13 objectAtIndexedSubscript:1];
  v38 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v13 objectAtIndexedSubscript:0];

  v21 = [v20 unsignedIntegerValue];
  if (v12)
  {
    v36 = v21;
    [(NSArray *)v12 objectAtIndexedSubscript:1];
    v35 = v15;
    v22 = v17;
    v24 = v23 = paddingPolicy;
    v25 = v18;
    v26 = v19;
    v27 = [v24 unsignedIntegerValue];
    [(NSArray *)v12 objectAtIndexedSubscript:0];
    v37 = v12;
    v29 = v28 = v16;
    LOBYTE(v34) = countIncludesPadding;
    v33 = v27;
    v19 = v26;
    LODWORD(v32) = v23;
    v17 = v22;
    v30 = [v35 initWithType:2 kernelWidth:v39 kernelHeight:v25 strideInX:v38 strideInY:v36 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v32 paddingSizeInX:v33 paddingSizeInY:objc_msgSend(v29 countIncludesPadding:{"unsignedIntegerValue"), v34}];

    v16 = v28;
    v12 = v37;
  }

  else
  {
    LOBYTE(v34) = countIncludesPadding;
    LODWORD(v32) = paddingPolicy;
    v30 = [v15 initWithType:2 kernelWidth:v39 kernelHeight:v18 strideInX:v38 strideInY:v21 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v32 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v34];
  }

  return v30;
}

+ (MLCPoolingDescriptor)averagePoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes countIncludesPadding:(BOOL)countIncludesPadding
{
  v14 = paddingSizes;
  v15 = dilationRates;
  v16 = strides;
  v17 = kernelSizes;
  v45 = [a1 alloc];
  v18 = [(NSArray *)v17 objectAtIndexedSubscript:1];
  v44 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v17 objectAtIndexedSubscript:0];

  v43 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v16 objectAtIndexedSubscript:1];
  v41 = [v20 unsignedIntegerValue];
  v21 = [(NSArray *)v16 objectAtIndexedSubscript:0];

  v22 = [v21 unsignedIntegerValue];
  v42 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  v40 = [v42 unsignedIntegerValue];
  v23 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v24 = [v23 unsignedIntegerValue];
  v25 = v24;
  if (v14)
  {
    [(NSArray *)v14 objectAtIndexedSubscript:1];
    v26 = v39 = v18;
    v37 = v22;
    v27 = paddingPolicy;
    v28 = [v26 unsignedIntegerValue];
    [(NSArray *)v14 objectAtIndexedSubscript:0];
    v38 = v21;
    v29 = v20;
    v30 = v19;
    v32 = v31 = v14;
    LOBYTE(v36) = countIncludesPadding;
    LODWORD(v35) = v27;
    v33 = [v45 initWithType:2 kernelWidth:v44 kernelHeight:v43 strideInX:v41 strideInY:v37 dilationRateInX:v40 dilationRateInY:v25 paddingPolicy:v35 paddingSizeInX:v28 paddingSizeInY:objc_msgSend(v32 countIncludesPadding:{"unsignedIntegerValue"), v36}];

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
    v33 = [v45 initWithType:2 kernelWidth:v44 kernelHeight:v43 strideInX:v41 strideInY:v22 dilationRateInX:v40 dilationRateInY:v24 paddingPolicy:v35 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v36];
  }

  return v33;
}

+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v10 = paddingSizes;
  v11 = strides;
  v12 = kernelSizes;
  v13 = [a1 alloc];
  v14 = [(NSArray *)v12 objectAtIndexedSubscript:1];
  v15 = [v14 unsignedIntegerValue];
  v16 = [(NSArray *)v12 objectAtIndexedSubscript:0];

  v17 = [v16 unsignedIntegerValue];
  v18 = [(NSArray *)v11 objectAtIndexedSubscript:1];
  v39 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v11 objectAtIndexedSubscript:0];

  v20 = [v19 unsignedIntegerValue];
  if (v10)
  {
    v37 = v20;
    [(NSArray *)v10 objectAtIndexedSubscript:1];
    v36 = v17;
    v21 = v16;
    v23 = v22 = paddingPolicy;
    v24 = v15;
    v25 = v18;
    v26 = v13;
    v27 = [v23 unsignedIntegerValue];
    [(NSArray *)v10 objectAtIndexedSubscript:0];
    v38 = v10;
    v29 = v28 = v14;
    LOBYTE(v35) = 0;
    v34 = [v29 unsignedIntegerValue];
    LODWORD(v33) = v22;
    v16 = v21;
    v30 = v26;
    v18 = v25;
    v31 = [v30 initWithType:3 kernelWidth:v24 kernelHeight:v36 strideInX:v39 strideInY:v37 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:v27 paddingSizeInY:v34 countIncludesPadding:v35];

    v14 = v28;
    v10 = v38;
  }

  else
  {
    LOBYTE(v35) = 0;
    LODWORD(v33) = paddingPolicy;
    v31 = [v13 initWithType:3 kernelWidth:v15 kernelHeight:v17 strideInX:v39 strideInY:v20 dilationRateInX:1 dilationRateInY:1 paddingPolicy:v33 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v35];
  }

  return v31;
}

+ (MLCPoolingDescriptor)l2NormPoolingDescriptorWithKernelSizes:(NSArray *)kernelSizes strides:(NSArray *)strides dilationRates:(NSArray *)dilationRates paddingPolicy:(MLCPaddingPolicy)paddingPolicy paddingSizes:(NSArray *)paddingSizes
{
  v12 = paddingSizes;
  v13 = dilationRates;
  v14 = strides;
  v15 = kernelSizes;
  v16 = [a1 alloc];
  v17 = [(NSArray *)v15 objectAtIndexedSubscript:1];
  v42 = [v17 unsignedIntegerValue];
  v18 = [(NSArray *)v15 objectAtIndexedSubscript:0];

  v41 = [v18 unsignedIntegerValue];
  v19 = [(NSArray *)v14 objectAtIndexedSubscript:1];
  v39 = [v19 unsignedIntegerValue];
  v20 = [(NSArray *)v14 objectAtIndexedSubscript:0];

  v21 = [v20 unsignedIntegerValue];
  v40 = [(NSArray *)v13 objectAtIndexedSubscript:1];
  v38 = [v40 unsignedIntegerValue];
  v22 = [(NSArray *)v13 objectAtIndexedSubscript:0];

  v23 = [v22 unsignedIntegerValue];
  v24 = v23;
  if (v12)
  {
    [(NSArray *)v12 objectAtIndexedSubscript:1];
    v25 = v37 = v17;
    v35 = v21;
    v26 = v19;
    v27 = [v25 unsignedIntegerValue];
    [(NSArray *)v12 objectAtIndexedSubscript:0];
    v36 = v18;
    v29 = v28 = v12;
    LOBYTE(v34) = 0;
    v33 = v27;
    v19 = v26;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:3 kernelWidth:v42 kernelHeight:v41 strideInX:v39 strideInY:v35 dilationRateInX:v38 dilationRateInY:v24 paddingPolicy:v32 paddingSizeInX:v33 paddingSizeInY:objc_msgSend(v29 countIncludesPadding:{"unsignedIntegerValue"), v34}];

    v12 = v28;
    v18 = v36;

    v17 = v37;
  }

  else
  {
    LOBYTE(v34) = 0;
    LODWORD(v32) = paddingPolicy;
    v30 = [v16 initWithType:3 kernelWidth:v42 kernelHeight:v41 strideInX:v39 strideInY:v21 dilationRateInX:v38 dilationRateInY:v23 paddingPolicy:v32 paddingSizeInX:0 paddingSizeInY:0 countIncludesPadding:v34];
  }

  return v30;
}

- (MLCPoolingDescriptor)initWithType:(int)a3 kernelWidth:(unint64_t)a4 kernelHeight:(unint64_t)a5 strideInX:(unint64_t)a6 strideInY:(unint64_t)a7 dilationRateInX:(unint64_t)a8 dilationRateInY:(unint64_t)a9 paddingPolicy:(int)a10 paddingSizeInX:(unint64_t)a11 paddingSizeInY:(unint64_t)a12 countIncludesPadding:(BOOL)a13
{
  v20.receiver = self;
  v20.super_class = MLCPoolingDescriptor;
  result = [(MLCPoolingDescriptor *)&v20 init];
  if (result)
  {
    result->_kernelWidth = a4;
    result->_kernelHeight = a5;
    result->_strideInX = a6;
    result->_strideInY = a7;
    result->_dilationRateInX = a8;
    result->_dilationRateInY = a9;
    result->_poolingType = a3;
    result->_paddingPolicy = a10;
    result->_paddingSizeInX = a11;
    result->_paddingSizeInY = a12;
    result->_countIncludesPadding = a13;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 poolingType];
    if (v6 != [(MLCPoolingDescriptor *)self poolingType])
    {
      goto LABEL_14;
    }

    v7 = [v5 kernelWidth];
    if (v7 != [(MLCPoolingDescriptor *)self kernelWidth])
    {
      goto LABEL_14;
    }

    v8 = [v5 kernelHeight];
    if (v8 != [(MLCPoolingDescriptor *)self kernelHeight])
    {
      goto LABEL_14;
    }

    v9 = [v5 strideInX];
    if (v9 == -[MLCPoolingDescriptor strideInX](self, "strideInX") && (v10 = [v5 strideInY], v10 == -[MLCPoolingDescriptor strideInY](self, "strideInY")) && (v11 = objc_msgSend(v5, "dilationRateInX"), v11 == -[MLCPoolingDescriptor dilationRateInX](self, "dilationRateInX")) && (v12 = objc_msgSend(v5, "dilationRateInY"), v12 == -[MLCPoolingDescriptor dilationRateInY](self, "dilationRateInY")) && (v13 = objc_msgSend(v5, "paddingPolicy"), v13 == -[MLCPoolingDescriptor paddingPolicy](self, "paddingPolicy")) && (v14 = objc_msgSend(v5, "paddingSizeInX"), v14 == -[MLCPoolingDescriptor paddingSizeInX](self, "paddingSizeInX")) && (v15 = objc_msgSend(v5, "paddingSizeInY"), v15 == -[MLCPoolingDescriptor paddingSizeInY](self, "paddingSizeInY")))
    {
      v16 = [v5 countIncludesPadding];
      v17 = v16 ^ [(MLCPoolingDescriptor *)self countIncludesPadding]^ 1;
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
  v11 = [(MLCPoolingDescriptor *)self poolingType];
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
  hashCombine_0(&v12, v3, v4, v5, v6, v7, v8, v9, v11);
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = [objc_opt_class() allocWithZone:a3];
  HIDWORD(v15) = [(MLCPoolingDescriptor *)self poolingType];
  v4 = [(MLCPoolingDescriptor *)self kernelWidth];
  v5 = [(MLCPoolingDescriptor *)self kernelHeight];
  v6 = [(MLCPoolingDescriptor *)self strideInX];
  v7 = [(MLCPoolingDescriptor *)self strideInY];
  v8 = [(MLCPoolingDescriptor *)self dilationRateInX];
  v9 = [(MLCPoolingDescriptor *)self dilationRateInY];
  v10 = [(MLCPoolingDescriptor *)self paddingPolicy];
  v11 = [(MLCPoolingDescriptor *)self paddingSizeInX];
  v12 = [(MLCPoolingDescriptor *)self paddingSizeInY];
  LOBYTE(v15) = [(MLCPoolingDescriptor *)self countIncludesPadding];
  LODWORD(v14) = v10;
  return [v16 initWithType:HIDWORD(v15) kernelWidth:v4 kernelHeight:v5 strideInX:v6 strideInY:v7 dilationRateInX:v8 dilationRateInY:v9 paddingPolicy:v14 paddingSizeInX:v11 paddingSizeInY:v12 countIncludesPadding:v15];
}

@end