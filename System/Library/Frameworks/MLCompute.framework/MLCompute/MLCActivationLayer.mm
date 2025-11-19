@interface MLCActivationLayer
+ (MLCActivationLayer)absoluteLayer;
+ (MLCActivationLayer)celuLayer;
+ (MLCActivationLayer)celuLayerWithA:(float)a;
+ (MLCActivationLayer)clampLayerWithMinValue:(float)minValue maxValue:(float)maxValue;
+ (MLCActivationLayer)eluLayer;
+ (MLCActivationLayer)eluLayerWithA:(float)a;
+ (MLCActivationLayer)geluLayer;
+ (MLCActivationLayer)hardShrinkLayer;
+ (MLCActivationLayer)hardShrinkLayerWithA:(float)a;
+ (MLCActivationLayer)hardSigmoidLayer;
+ (MLCActivationLayer)hardSwishLayer;
+ (MLCActivationLayer)layerWithDescriptor:(MLCActivationDescriptor *)descriptor;
+ (MLCActivationLayer)leakyReLULayer;
+ (MLCActivationLayer)leakyReLULayerWithNegativeSlope:(float)negativeSlope;
+ (MLCActivationLayer)linearLayerWithScale:(float)scale bias:(float)bias;
+ (MLCActivationLayer)logSigmoidLayer;
+ (MLCActivationLayer)relu6Layer;
+ (MLCActivationLayer)reluLayer;
+ (MLCActivationLayer)relunLayerWithA:(float)a b:(float)b;
+ (MLCActivationLayer)seluLayer;
+ (MLCActivationLayer)sigmoidLayer;
+ (MLCActivationLayer)softPlusLayer;
+ (MLCActivationLayer)softShrinkLayer;
+ (MLCActivationLayer)softShrinkLayerWithA:(float)a;
+ (MLCActivationLayer)softSignLayer;
+ (MLCActivationLayer)tanhLayer;
+ (MLCActivationLayer)tanhShrinkLayer;
+ (MLCActivationLayer)thresholdLayerWithThreshold:(float)threshold replacement:(float)replacement;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCActivationLayer)initWithDescriptor:(id)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCActivationLayer

+ (MLCActivationLayer)reluLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:1 a:0.0];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)relu6Layer
{
  LODWORD(v2) = 6.0;
  v4 = [MLCActivationDescriptor descriptorWithType:10 a:0.0 b:v2];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)leakyReLULayer
{
  LODWORD(v2) = 1008981770;
  v4 = [MLCActivationDescriptor descriptorWithType:1 a:v2];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)leakyReLULayerWithNegativeSlope:(float)negativeSlope
{
  v4 = [MLCActivationDescriptor descriptorWithType:1 a:?];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)linearLayerWithScale:(float)scale bias:(float)bias
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:2 b:?];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)sigmoidLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:3];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)hardSigmoidLayer
{
  LODWORD(v2) = 1045220557;
  LODWORD(v3) = 0.5;
  v5 = [MLCActivationDescriptor descriptorWithType:4 a:v2 b:v3];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)tanhLayer
{
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  v5 = [MLCActivationDescriptor descriptorWithType:5 a:v2 b:v3];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)absoluteLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:6];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)softPlusLayer
{
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  v5 = [MLCActivationDescriptor descriptorWithType:7 a:v2 b:v3];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)softSignLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:8];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)eluLayer
{
  LODWORD(v2) = 1.0;
  v4 = [MLCActivationDescriptor descriptorWithType:9 a:v2];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)eluLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:9 a:?];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)relunLayerWithA:(float)a b:(float)b
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:10 b:?];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)logSigmoidLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:11];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)seluLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:12];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)celuLayer
{
  LODWORD(v2) = 1.0;
  v4 = [MLCActivationDescriptor descriptorWithType:13 a:v2];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)celuLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:13 a:?];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)hardShrinkLayer
{
  LODWORD(v2) = 0.5;
  v4 = [MLCActivationDescriptor descriptorWithType:14 a:v2];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)hardShrinkLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:14 a:?];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)softShrinkLayer
{
  LODWORD(v2) = 0.5;
  v4 = [MLCActivationDescriptor descriptorWithType:15 a:v2];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)softShrinkLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:15 a:?];
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)tanhShrinkLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:16 a:0.0];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)thresholdLayerWithThreshold:(float)threshold replacement:(float)replacement
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:17 b:?];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)geluLayer
{
  LODWORD(v2) = *"*BL?";
  LODWORD(v3) = 1027024659;
  v5 = [MLCActivationDescriptor descriptorWithType:18 a:v2 b:v3];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)hardSwishLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:19];
  v4 = [[a1 alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)clampLayerWithMinValue:(float)minValue maxValue:(float)maxValue
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:20 b:?];
  v6 = [[a1 alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)layerWithDescriptor:(MLCActivationDescriptor *)descriptor
{
  v4 = descriptor;
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

- (MLCActivationLayer)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MLCActivationLayer;
  v6 = [(MLCLayer *)&v9 initWithLabel:@"Activation"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
  }

  return v7;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MLCActivationLayer *)self descriptor];
  v13 = [v10 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v15 = [v14 dataType];

  if (![(MLCLayer *)MLCActivationLayer supportsDataType:v15 onDevice:v9])
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138412802;
      v36 = v32;
      v37 = 1024;
      v38 = v15;
      v39 = 2112;
      v40 = v9;
      _os_log_error_impl(&dword_238C1D000, v23, OS_LOG_TYPE_ERROR, "%@: activation layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  v16 = [(MLCLayer *)self fusedLayers];
  v17 = [v16 count];

  if (v17)
  {
    v34 = 0;
    *buf = 0;
    v18 = [(MLCLayer *)self fusedLayers];
    v19 = [v18 mutableCopy];

    if ([MLCPatternMatcher canTransformToReLUNFromLayer:self stopGradientTensorList:0 fusedLayers:v19 alpha:buf beta:&v34])
    {
      LODWORD(v21) = v34;
      LODWORD(v20) = *buf;
      v22 = [MLCActivationDescriptor descriptorWithType:10 a:v20 b:v21];
    }

    else
    {
      if ([MLCPatternMatcher canTransformToHardSwishFromLayer:self stopGradientTensorList:0 fusedLayers:v19 inputTensor:0])
      {
        v24 = 19;
      }

      else
      {
        if (![MLCPatternMatcher canTransformToGELUFromLayer:self stopGradientTensorList:0 fusedLayers:v19 inputTensor:0])
        {
          v29 = +[MLCLog framework];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [MLCActivationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
          }

          goto LABEL_19;
        }

        v24 = 18;
      }

      v22 = [MLCActivationDescriptor descriptorWithType:v24];
    }

    v25 = v22;

    v12 = v25;
  }

  v26 = [v9 computeEngine];
  v19 = [v26 neuronLayerWithDescriptor:v12];

  if (!v19 || ![v19 count])
  {
    v29 = +[MLCLog framework];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MLCActivationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

LABEL_19:

LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }

  v27 = [v9 computeEngine];
  v28 = [v27 compileLayerDeviceOps:v19 sourceTensors:v10 resultTensor:v11];

  v33.receiver = self;
  v33.super_class = MLCActivationLayer;
  [(MLCLayer *)&v33 bindDevice:v9 deviceOps:v19];

LABEL_21:
  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)resultTensorFromSources:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 descriptor];
    v8 = [v7 shape];
    v9 = [v8 count];

    if (i >= v9)
    {
      break;
    }

    v10 = [v3 objectAtIndexedSubscript:0];
    v11 = [v10 descriptor];
    v12 = [v11 shape];
    v13 = [v12 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [v3 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v14, [v16 dataType]);

  v18 = [MLCTensor tensorWithDescriptor:v17];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCActivationLayer *)self descriptor];
  [v6 a];
  v8 = v7;
  v9 = [(MLCActivationLayer *)self descriptor];
  [v9 b];
  v11 = v10;
  v12 = [(MLCActivationLayer *)self descriptor];
  [v12 c];
  v14 = v13;
  v15 = [(MLCActivationLayer *)self descriptor];
  v16 = [(MLCLayer *)self conditionalTreeNode];
  v17 = [(MLCLayer *)self resultTensors];
  v18 = [v3 stringWithFormat:@"%@: { a=%f : b=%f : c=%f : descriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, *&v8, *&v11, *&v14, v15, v16, v17];

  return v18;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCActivationLayer *)self descriptor];
  v8 = MLCActivationTypeDebugDescription([v7 activationType]);
  v9 = [(MLCActivationLayer *)self descriptor];
  [v9 a];
  v11 = v10;
  v12 = [(MLCActivationLayer *)self descriptor];
  [v12 b];
  v14 = v13;
  v15 = [(MLCActivationLayer *)self descriptor];
  [v15 c];
  v17 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Activation Type: %@<BR />a: %.03f    b: %.03f    c: %.03f</FONT>>", v5, v6, v8, *&v11, *&v14, v16];

  return v17;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v2, v3, "%@: failure to create deviceOps=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.2(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3(&dword_238C1D000, v2, v3, "%@: failure to create deviceOps=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end