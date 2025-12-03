@interface MLCPoolingLayer
+ (BOOL)supportsDataType:(int)type onDevice:(id)device;
+ (MLCPoolingLayer)layerWithDescriptor:(MLCPoolingDescriptor *)descriptor;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCPoolingLayer)initWithDescriptor:(id)descriptor;
- (id)description;
- (id)summarizedDOTDescription;
@end

@implementation MLCPoolingLayer

+ (MLCPoolingLayer)layerWithDescriptor:(MLCPoolingDescriptor *)descriptor
{
  v4 = descriptor;
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

- (MLCPoolingLayer)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v18.receiver = self;
  v18.super_class = MLCPoolingLayer;
  v6 = [(MLCLayer *)&v18 initWithLabel:@"Pooling"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
    v17.receiver = v7;
    v17.super_class = MLCPoolingLayer;
    -[MLCLayer setKernelWidth:](&v17, sel_setKernelWidth_, [descriptorCopy kernelWidth]);
    v16.receiver = v7;
    v16.super_class = MLCPoolingLayer;
    -[MLCLayer setKernelHeight:](&v16, sel_setKernelHeight_, [descriptorCopy kernelHeight]);
    v15.receiver = v7;
    v15.super_class = MLCPoolingLayer;
    -[MLCLayer setDilationRateInX:](&v15, sel_setDilationRateInX_, [descriptorCopy dilationRateInX]);
    v14.receiver = v7;
    v14.super_class = MLCPoolingLayer;
    -[MLCLayer setDilationRateInY:](&v14, sel_setDilationRateInY_, [descriptorCopy dilationRateInY]);
    v13.receiver = v7;
    v13.super_class = MLCPoolingLayer;
    -[MLCLayer setStrideInX:](&v13, sel_setStrideInX_, [descriptorCopy strideInX]);
    v12.receiver = v7;
    v12.super_class = MLCPoolingLayer;
    -[MLCLayer setStrideInY:](&v12, sel_setStrideInY_, [descriptorCopy strideInY]);
    v11.receiver = v7;
    v11.super_class = MLCPoolingLayer;
    -[MLCLayer setPaddingPolicy:](&v11, sel_setPaddingPolicy_, [descriptorCopy paddingPolicy]);
    v10.receiver = v7;
    v10.super_class = MLCPoolingLayer;
    -[MLCLayer setPaddingSizeInX:](&v10, sel_setPaddingSizeInX_, [descriptorCopy paddingSizeInX]);
    v9.receiver = v7;
    v9.super_class = MLCPoolingLayer;
    -[MLCLayer setPaddingSizeInY:](&v9, sel_setPaddingSizeInY_, [descriptorCopy paddingSizeInY]);
  }

  return v7;
}

+ (BOOL)supportsDataType:(int)type onDevice:(id)device
{
  if ([device type])
  {
    return type == 1;
  }

  else
  {
    return ((type - 1) & 0xFFFFFFFD) == 0;
  }
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v72 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  if (![MLCPoolingLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = dataType;
      *&buf[18] = 2112;
      *&buf[20] = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v29, OS_LOG_TYPE_ERROR, "%@: pooling layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_28;
  }

  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v15 descriptor];
  shape = [descriptor2 shape];
  v18 = [shape count];

  if (v18 == 4)
  {
    v68 = a2;
    v31 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor3 = [v31 descriptor];
    shape2 = [descriptor3 shape];
    v34 = [shape2 objectAtIndexedSubscript:3];
    unsignedIntegerValue = [v34 unsignedIntegerValue];

    v35 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor4 = [v35 descriptor];
    shape3 = [descriptor4 shape];
    v38 = [shape3 objectAtIndexedSubscript:2];
    unsignedIntegerValue2 = [v38 unsignedIntegerValue];

    descriptor5 = [tensorCopy descriptor];
    shape4 = [descriptor5 shape];
    v42 = [shape4 objectAtIndexedSubscript:3];
    unsignedIntegerValue3 = [v42 unsignedIntegerValue];

    descriptor6 = [tensorCopy descriptor];
    shape5 = [descriptor6 shape];
    v45 = [shape5 objectAtIndexedSubscript:2];
    unsignedIntegerValue4 = [v45 unsignedIntegerValue];

    v27 = unsignedIntegerValue2;
  }

  else
  {
    if (v18 != 3)
    {
      v29 = +[MLCLog framework];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [MLCPoolingLayer compileForDevice:a2 sourceTensors:v29 resultTensor:?];
      }

      goto LABEL_28;
    }

    v68 = a2;
    v19 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor7 = [v19 descriptor];
    shape6 = [descriptor7 shape];
    v22 = [shape6 objectAtIndexedSubscript:2];
    unsignedIntegerValue = [v22 unsignedIntegerValue];

    descriptor8 = [tensorCopy descriptor];
    shape7 = [descriptor8 shape];
    v25 = [shape7 objectAtIndexedSubscript:2];
    unsignedIntegerValue3 = [v25 unsignedIntegerValue];

    v27 = 1.0;
    unsignedIntegerValue4 = 1;
  }

  if ([(MLCLayer *)self paddingPolicy]== 2)
  {
    *buf = [(MLCLayer *)self paddingSizeInX];
    *&buf[8] = [(MLCLayer *)self paddingSizeInX];
    *&buf[16] = [(MLCLayer *)self paddingSizeInY];
    paddingSizeInY = [(MLCLayer *)self paddingSizeInY];
  }

  else
  {
    descriptor9 = [(MLCPoolingLayer *)self descriptor];
    poolingType = [descriptor9 poolingType];

    v49 = ([(MLCLayer *)self strideInX]* unsignedIntegerValue3);
    v50 = unsignedIntegerValue;
    if (poolingType == 2)
    {
      v51 = v50 - [(MLCLayer *)self kernelWidth];
      v52 = v49 - (v51 + [(MLCLayer *)self strideInX]);
      if (v52 < 0.0)
      {
        v52 = 0.0;
      }

      v53 = 0.5;
      *buf = (v52 * 0.5);
      *&buf[8] = (v52 - *buf);
      v54 = ([(MLCLayer *)self strideInY]* unsignedIntegerValue4);
      kernelHeight = [(MLCLayer *)self kernelHeight];
    }

    else
    {
      dilationRateInX = [(MLCLayer *)self dilationRateInX];
      v57 = v50 - (([(MLCLayer *)self kernelWidth]- 1) * dilationRateInX + 1);
      v58 = v49 - (v57 + [(MLCLayer *)self strideInX]);
      if (v58 < 0.0)
      {
        v58 = 0.0;
      }

      v53 = 0.5;
      *buf = (v58 * 0.5);
      *&buf[8] = (v58 - *buf);
      v54 = ([(MLCLayer *)self strideInY]* unsignedIntegerValue4);
      dilationRateInY = [(MLCLayer *)self dilationRateInY];
      kernelHeight = (([(MLCLayer *)self kernelHeight]- 1) * dilationRateInY + 1);
    }

    v60 = v54 - ((v27 - kernelHeight) + [(MLCLayer *)self strideInY]);
    if (v60 < 0.0)
    {
      v60 = 0.0;
    }

    *&buf[16] = (v60 * v53);
    paddingSizeInY = (v60 - *&buf[16]);
  }

  *&buf[24] = paddingSizeInY;
  computeEngine = [deviceCopy computeEngine];
  descriptor10 = [(MLCPoolingLayer *)self descriptor];
  v29 = [computeEngine poolingLayerWithDescriptor:descriptor10 paddingSizes:buf];

  if (!v29 || ![v29 count])
  {
    v65 = +[MLCLog framework];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:v68 sourceTensors:v29 resultTensor:v65];
    }

LABEL_28:
    v64 = 0;
    goto LABEL_29;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v64 = [computeEngine2 compileLayerDeviceOps:v29 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v70.receiver = self;
  v70.super_class = MLCPoolingLayer;
  [(MLCLayer *)&v70 bindDevice:deviceCopy deviceOps:v29];
LABEL_29:

  v66 = *MEMORY[0x277D85DE8];
  return v64;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCPoolingLayer *)self descriptor];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { poolingDescriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, descriptor, conditionalTreeNode, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  descriptor = [(MLCPoolingLayer *)self descriptor];
  paddingPolicy = [descriptor paddingPolicy];

  if (paddingPolicy >= 2)
  {
    if (paddingPolicy != 2)
    {
      v36 = 0;
      goto LABEL_7;
    }

    v6 = MEMORY[0x277CCACA8];
    descriptor2 = [(MLCPoolingLayer *)self descriptor];
    v7 = MLCPaddingPolicyDebugDescription([descriptor2 paddingPolicy]);
    descriptor3 = [(MLCPoolingLayer *)self descriptor];
    paddingSizeInX = [descriptor3 paddingSizeInX];
    descriptor4 = [(MLCPoolingLayer *)self descriptor];
    v36 = [v6 stringWithFormat:@"%@ (%lu, %lu)", v7, paddingSizeInX, objc_msgSend(descriptor4, "paddingSizeInY")];
  }

  else
  {
    descriptor2 = [(MLCPoolingLayer *)self descriptor];
    v36 = MLCPaddingPolicyDebugDescription([descriptor2 paddingPolicy]);
  }

LABEL_7:
  v34 = MEMORY[0x277CCAB68];
  v11 = objc_opt_class();
  v32 = NSStringFromClass(v11);
  layerID = [(MLCLayer *)self layerID];
  descriptor5 = [(MLCPoolingLayer *)self descriptor];
  v30 = MLCPoolingTypeDebugDescription([descriptor5 poolingType]);
  descriptor6 = [(MLCPoolingLayer *)self descriptor];
  kernelWidth = [descriptor6 kernelWidth];
  descriptor7 = [(MLCPoolingLayer *)self descriptor];
  kernelHeight = [descriptor7 kernelHeight];
  descriptor8 = [(MLCPoolingLayer *)self descriptor];
  dilationRateInX = [descriptor8 dilationRateInX];
  descriptor9 = [(MLCPoolingLayer *)self descriptor];
  dilationRateInY = [descriptor9 dilationRateInY];
  descriptor10 = [(MLCPoolingLayer *)self descriptor];
  strideInX = [descriptor10 strideInX];
  descriptor11 = [(MLCPoolingLayer *)self descriptor];
  v21 = [v34 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Pooling Type: %@     Kernel: (%lu, %lu)<BR />Dilation: (%lu, %lu)  Stride: (%lu, %lu)<BR />Padding: %@", v32, layerID, v30, kernelWidth, kernelHeight, dilationRateInX, dilationRateInY, strideInX, objc_msgSend(descriptor11, "strideInY"), v36];

  descriptor12 = [(MLCPoolingLayer *)self descriptor];
  LODWORD(dilationRateInX) = [descriptor12 poolingType];

  if (dilationRateInX == 2)
  {
    v23 = MEMORY[0x277CCACA8];
    descriptor13 = [(MLCPoolingLayer *)self descriptor];
    countIncludesPadding = [descriptor13 countIncludesPadding];
    v26 = @"NO";
    if (countIncludesPadding)
    {
      v26 = @"YES";
    }

    v27 = [v23 stringWithFormat:@"<BR />Count Includes Padding: %@", v26];
    [v21 appendString:v27];
  }

  [v21 appendString:@"</FONT>>"];

  return v21;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(uint64_t)a2 resultTensor:(NSObject *)a3 .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: failure to create deviceOps=%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(NSObject *)a2 resultTensor:.cold.2(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: source tensor shape is not supported.  must be a tensor of shape 3 or higher", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end