@interface MLCPoolingLayer
+ (BOOL)supportsDataType:(int)a3 onDevice:(id)a4;
+ (MLCPoolingLayer)layerWithDescriptor:(MLCPoolingDescriptor *)descriptor;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCPoolingLayer)initWithDescriptor:(id)a3;
- (id)description;
- (id)summarizedDOTDescription;
@end

@implementation MLCPoolingLayer

+ (MLCPoolingLayer)layerWithDescriptor:(MLCPoolingDescriptor *)descriptor
{
  v4 = descriptor;
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

- (MLCPoolingLayer)initWithDescriptor:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MLCPoolingLayer;
  v6 = [(MLCLayer *)&v18 initWithLabel:@"Pooling"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
    v17.receiver = v7;
    v17.super_class = MLCPoolingLayer;
    -[MLCLayer setKernelWidth:](&v17, sel_setKernelWidth_, [v5 kernelWidth]);
    v16.receiver = v7;
    v16.super_class = MLCPoolingLayer;
    -[MLCLayer setKernelHeight:](&v16, sel_setKernelHeight_, [v5 kernelHeight]);
    v15.receiver = v7;
    v15.super_class = MLCPoolingLayer;
    -[MLCLayer setDilationRateInX:](&v15, sel_setDilationRateInX_, [v5 dilationRateInX]);
    v14.receiver = v7;
    v14.super_class = MLCPoolingLayer;
    -[MLCLayer setDilationRateInY:](&v14, sel_setDilationRateInY_, [v5 dilationRateInY]);
    v13.receiver = v7;
    v13.super_class = MLCPoolingLayer;
    -[MLCLayer setStrideInX:](&v13, sel_setStrideInX_, [v5 strideInX]);
    v12.receiver = v7;
    v12.super_class = MLCPoolingLayer;
    -[MLCLayer setStrideInY:](&v12, sel_setStrideInY_, [v5 strideInY]);
    v11.receiver = v7;
    v11.super_class = MLCPoolingLayer;
    -[MLCLayer setPaddingPolicy:](&v11, sel_setPaddingPolicy_, [v5 paddingPolicy]);
    v10.receiver = v7;
    v10.super_class = MLCPoolingLayer;
    -[MLCLayer setPaddingSizeInX:](&v10, sel_setPaddingSizeInX_, [v5 paddingSizeInX]);
    v9.receiver = v7;
    v9.super_class = MLCPoolingLayer;
    -[MLCLayer setPaddingSizeInY:](&v9, sel_setPaddingSizeInY_, [v5 paddingSizeInY]);
  }

  return v7;
}

+ (BOOL)supportsDataType:(int)a3 onDevice:(id)a4
{
  if ([a4 type])
  {
    return a3 == 1;
  }

  else
  {
    return ((a3 - 1) & 0xFFFFFFFD) == 0;
  }
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  if (![MLCPoolingLayer supportsDataType:v14 onDevice:v9])
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = v14;
      *&buf[18] = 2112;
      *&buf[20] = v9;
      _os_log_error_impl(&dword_238C1D000, v29, OS_LOG_TYPE_ERROR, "%@: pooling layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_28;
  }

  v15 = [v10 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 shape];
  v18 = [v17 count];

  if (v18 == 4)
  {
    v68 = a2;
    v31 = [v10 objectAtIndexedSubscript:0];
    v32 = [v31 descriptor];
    v33 = [v32 shape];
    v34 = [v33 objectAtIndexedSubscript:3];
    v69 = [v34 unsignedIntegerValue];

    v35 = [v10 objectAtIndexedSubscript:0];
    v36 = [v35 descriptor];
    v37 = [v36 shape];
    v38 = [v37 objectAtIndexedSubscript:2];
    v39 = [v38 unsignedIntegerValue];

    v40 = [v11 descriptor];
    v41 = [v40 shape];
    v42 = [v41 objectAtIndexedSubscript:3];
    v26 = [v42 unsignedIntegerValue];

    v43 = [v11 descriptor];
    v44 = [v43 shape];
    v45 = [v44 objectAtIndexedSubscript:2];
    v28 = [v45 unsignedIntegerValue];

    v27 = v39;
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
    v19 = [v10 objectAtIndexedSubscript:0];
    v20 = [v19 descriptor];
    v21 = [v20 shape];
    v22 = [v21 objectAtIndexedSubscript:2];
    v69 = [v22 unsignedIntegerValue];

    v23 = [v11 descriptor];
    v24 = [v23 shape];
    v25 = [v24 objectAtIndexedSubscript:2];
    v26 = [v25 unsignedIntegerValue];

    v27 = 1.0;
    v28 = 1;
  }

  if ([(MLCLayer *)self paddingPolicy]== 2)
  {
    *buf = [(MLCLayer *)self paddingSizeInX];
    *&buf[8] = [(MLCLayer *)self paddingSizeInX];
    *&buf[16] = [(MLCLayer *)self paddingSizeInY];
    v46 = [(MLCLayer *)self paddingSizeInY];
  }

  else
  {
    v47 = [(MLCPoolingLayer *)self descriptor];
    v48 = [v47 poolingType];

    v49 = ([(MLCLayer *)self strideInX]* v26);
    v50 = v69;
    if (v48 == 2)
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
      v54 = ([(MLCLayer *)self strideInY]* v28);
      v55 = [(MLCLayer *)self kernelHeight];
    }

    else
    {
      v56 = [(MLCLayer *)self dilationRateInX];
      v57 = v50 - (([(MLCLayer *)self kernelWidth]- 1) * v56 + 1);
      v58 = v49 - (v57 + [(MLCLayer *)self strideInX]);
      if (v58 < 0.0)
      {
        v58 = 0.0;
      }

      v53 = 0.5;
      *buf = (v58 * 0.5);
      *&buf[8] = (v58 - *buf);
      v54 = ([(MLCLayer *)self strideInY]* v28);
      v59 = [(MLCLayer *)self dilationRateInY];
      v55 = (([(MLCLayer *)self kernelHeight]- 1) * v59 + 1);
    }

    v60 = v54 - ((v27 - v55) + [(MLCLayer *)self strideInY]);
    if (v60 < 0.0)
    {
      v60 = 0.0;
    }

    *&buf[16] = (v60 * v53);
    v46 = (v60 - *&buf[16]);
  }

  *&buf[24] = v46;
  v61 = [v9 computeEngine];
  v62 = [(MLCPoolingLayer *)self descriptor];
  v29 = [v61 poolingLayerWithDescriptor:v62 paddingSizes:buf];

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

  v63 = [v9 computeEngine];
  v64 = [v63 compileLayerDeviceOps:v29 sourceTensors:v10 resultTensor:v11];

  v70.receiver = self;
  v70.super_class = MLCPoolingLayer;
  [(MLCLayer *)&v70 bindDevice:v9 deviceOps:v29];
LABEL_29:

  v66 = *MEMORY[0x277D85DE8];
  return v64;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCPoolingLayer *)self descriptor];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { poolingDescriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = [(MLCPoolingLayer *)self descriptor];
  v4 = [v3 paddingPolicy];

  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      v36 = 0;
      goto LABEL_7;
    }

    v6 = MEMORY[0x277CCACA8];
    v5 = [(MLCPoolingLayer *)self descriptor];
    v7 = MLCPaddingPolicyDebugDescription([v5 paddingPolicy]);
    v8 = [(MLCPoolingLayer *)self descriptor];
    v9 = [v8 paddingSizeInX];
    v10 = [(MLCPoolingLayer *)self descriptor];
    v36 = [v6 stringWithFormat:@"%@ (%lu, %lu)", v7, v9, objc_msgSend(v10, "paddingSizeInY")];
  }

  else
  {
    v5 = [(MLCPoolingLayer *)self descriptor];
    v36 = MLCPaddingPolicyDebugDescription([v5 paddingPolicy]);
  }

LABEL_7:
  v34 = MEMORY[0x277CCAB68];
  v11 = objc_opt_class();
  v32 = NSStringFromClass(v11);
  v31 = [(MLCLayer *)self layerID];
  v35 = [(MLCPoolingLayer *)self descriptor];
  v30 = MLCPoolingTypeDebugDescription([v35 poolingType]);
  v33 = [(MLCPoolingLayer *)self descriptor];
  v29 = [v33 kernelWidth];
  v12 = [(MLCPoolingLayer *)self descriptor];
  v13 = [v12 kernelHeight];
  v14 = [(MLCPoolingLayer *)self descriptor];
  v15 = [v14 dilationRateInX];
  v16 = [(MLCPoolingLayer *)self descriptor];
  v17 = [v16 dilationRateInY];
  v18 = [(MLCPoolingLayer *)self descriptor];
  v19 = [v18 strideInX];
  v20 = [(MLCPoolingLayer *)self descriptor];
  v21 = [v34 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Pooling Type: %@     Kernel: (%lu, %lu)<BR />Dilation: (%lu, %lu)  Stride: (%lu, %lu)<BR />Padding: %@", v32, v31, v30, v29, v13, v15, v17, v19, objc_msgSend(v20, "strideInY"), v36];

  v22 = [(MLCPoolingLayer *)self descriptor];
  LODWORD(v15) = [v22 poolingType];

  if (v15 == 2)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = [(MLCPoolingLayer *)self descriptor];
    v25 = [v24 countIncludesPadding];
    v26 = @"NO";
    if (v25)
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