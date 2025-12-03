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
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCActivationLayer)initWithDescriptor:(id)descriptor;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCActivationLayer

+ (MLCActivationLayer)reluLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:1 a:0.0];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)relu6Layer
{
  LODWORD(v2) = 6.0;
  v4 = [MLCActivationDescriptor descriptorWithType:10 a:0.0 b:v2];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)leakyReLULayer
{
  LODWORD(v2) = 1008981770;
  v4 = [MLCActivationDescriptor descriptorWithType:1 a:v2];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)leakyReLULayerWithNegativeSlope:(float)negativeSlope
{
  v4 = [MLCActivationDescriptor descriptorWithType:1 a:?];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)linearLayerWithScale:(float)scale bias:(float)bias
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:2 b:?];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)sigmoidLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:3];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)hardSigmoidLayer
{
  LODWORD(v2) = 1045220557;
  LODWORD(v3) = 0.5;
  v5 = [MLCActivationDescriptor descriptorWithType:4 a:v2 b:v3];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)tanhLayer
{
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  v5 = [MLCActivationDescriptor descriptorWithType:5 a:v2 b:v3];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)absoluteLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:6];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)softPlusLayer
{
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  v5 = [MLCActivationDescriptor descriptorWithType:7 a:v2 b:v3];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)softSignLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:8];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)eluLayer
{
  LODWORD(v2) = 1.0;
  v4 = [MLCActivationDescriptor descriptorWithType:9 a:v2];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)eluLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:9 a:?];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)relunLayerWithA:(float)a b:(float)b
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:10 b:?];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)logSigmoidLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:11];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)seluLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:12];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)celuLayer
{
  LODWORD(v2) = 1.0;
  v4 = [MLCActivationDescriptor descriptorWithType:13 a:v2];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)celuLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:13 a:?];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)hardShrinkLayer
{
  LODWORD(v2) = 0.5;
  v4 = [MLCActivationDescriptor descriptorWithType:14 a:v2];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)hardShrinkLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:14 a:?];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)softShrinkLayer
{
  LODWORD(v2) = 0.5;
  v4 = [MLCActivationDescriptor descriptorWithType:15 a:v2];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)softShrinkLayerWithA:(float)a
{
  v4 = [MLCActivationDescriptor descriptorWithType:15 a:?];
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

+ (MLCActivationLayer)tanhShrinkLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:16 a:0.0];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)thresholdLayerWithThreshold:(float)threshold replacement:(float)replacement
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:17 b:?];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)geluLayer
{
  LODWORD(v2) = *"*BL?";
  LODWORD(v3) = 1027024659;
  v5 = [MLCActivationDescriptor descriptorWithType:18 a:v2 b:v3];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)hardSwishLayer
{
  v3 = [MLCActivationDescriptor descriptorWithType:19];
  v4 = [[self alloc] initWithDescriptor:v3];

  return v4;
}

+ (MLCActivationLayer)clampLayerWithMinValue:(float)minValue maxValue:(float)maxValue
{
  v5 = [MLCActivationDescriptor descriptorWithType:"descriptorWithType:a:b:" a:20 b:?];
  v6 = [[self alloc] initWithDescriptor:v5];

  return v6;
}

+ (MLCActivationLayer)layerWithDescriptor:(MLCActivationDescriptor *)descriptor
{
  v4 = descriptor;
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

- (MLCActivationLayer)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = MLCActivationLayer;
  v6 = [(MLCLayer *)&v9 initWithLabel:@"Activation"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
  }

  return v7;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v41 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  descriptor = [(MLCActivationLayer *)self descriptor];
  v13 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v13 descriptor];
  dataType = [descriptor2 dataType];

  if (![(MLCLayer *)MLCActivationLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138412802;
      v36 = v32;
      v37 = 1024;
      v38 = dataType;
      v39 = 2112;
      v40 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v23, OS_LOG_TYPE_ERROR, "%@: activation layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  fusedLayers = [(MLCLayer *)self fusedLayers];
  v17 = [fusedLayers count];

  if (v17)
  {
    v34 = 0;
    *buf = 0;
    fusedLayers2 = [(MLCLayer *)self fusedLayers];
    v19 = [fusedLayers2 mutableCopy];

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

    descriptor = v25;
  }

  computeEngine = [deviceCopy computeEngine];
  v19 = [computeEngine neuronLayerWithDescriptor:descriptor];

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

  computeEngine2 = [deviceCopy computeEngine];
  v28 = [computeEngine2 compileLayerDeviceOps:v19 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v33.receiver = self;
  v33.super_class = MLCActivationLayer;
  [(MLCLayer *)&v33 bindDevice:deviceCopy deviceOps:v19];

LABEL_21:
  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor = [v6 descriptor];
    shape = [descriptor shape];
    v9 = [shape count];

    if (i >= v9)
    {
      break;
    }

    v10 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor2 = [v10 descriptor];
    shape2 = [descriptor2 shape];
    v13 = [shape2 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v15 descriptor];
  v17 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v14, [descriptor3 dataType]);

  v18 = [MLCTensor tensorWithDescriptor:v17];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCActivationLayer *)self descriptor];
  [descriptor a];
  v8 = v7;
  descriptor2 = [(MLCActivationLayer *)self descriptor];
  [descriptor2 b];
  v11 = v10;
  descriptor3 = [(MLCActivationLayer *)self descriptor];
  [descriptor3 c];
  v14 = v13;
  descriptor4 = [(MLCActivationLayer *)self descriptor];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v18 = [v3 stringWithFormat:@"%@: { a=%f : b=%f : c=%f : descriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, *&v8, *&v11, *&v14, descriptor4, conditionalTreeNode, resultTensors];

  return v18;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCActivationLayer *)self descriptor];
  v8 = MLCActivationTypeDebugDescription([descriptor activationType]);
  descriptor2 = [(MLCActivationLayer *)self descriptor];
  [descriptor2 a];
  v11 = v10;
  descriptor3 = [(MLCActivationLayer *)self descriptor];
  [descriptor3 b];
  v14 = v13;
  descriptor4 = [(MLCActivationLayer *)self descriptor];
  [descriptor4 c];
  v17 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Activation Type: %@<BR />a: %.03f    b: %.03f    c: %.03f</FONT>>", v5, layerID, v8, *&v11, *&v14, v16];

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