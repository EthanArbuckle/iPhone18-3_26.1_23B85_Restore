@interface ADEspressoMetricDepthInferenceDescriptor
- (ADEspressoMetricDepthInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine;
@end

@implementation ADEspressoMetricDepthInferenceDescriptor

- (ADEspressoMetricDepthInferenceDescriptor)initWithNetworkProvider:(id)provider espressoEngine:(unint64_t)engine
{
  providerCopy = provider;
  v7 = providerCopy;
  if (engine == 4)
  {
    v8 = [providerCopy url];
    layoutNamesDict = [v7 layoutNamesDict];
    v29.receiver = self;
    v29.super_class = ADEspressoMetricDepthInferenceDescriptor;
    v10 = [(ADEspressoInferenceDescriptor *)&v29 initWithUrl:v8 layoutNames:layoutNamesDict];

    if (v10)
    {
      v11 = [v7 descriptorForBuffer:@"yuv_r" isInput:1 pixelFormat:875836518];
      primaryColorInput = v10->_primaryColorInput;
      v10->_primaryColorInput = v11;

      v13 = [v7 descriptorForBuffer:@"yuv_l" isInput:1 pixelFormat:875836518];
      secondaryColorInput = v10->_secondaryColorInput;
      v10->_secondaryColorInput = v13;

      v15 = [v7 descriptorForBuffer:@"jasper_features_bundle" isInput:1 pixelFormat:1278226536];
      jasperInput = v10->_jasperInput;
      v10->_jasperInput = v15;

      v17 = [v7 descriptorForBuffer:@"pearl" isInput:1 pixelFormat:1278226536];
      pearlInput = v10->_pearlInput;
      v10->_pearlInput = v17;

      v19 = [v7 descriptorForBuffer:@"camera_embedding_bundle" isInput:1 pixelFormat:1278226536];
      cameraEmbeddingInput = v10->_cameraEmbeddingInput;
      v10->_cameraEmbeddingInput = v19;

      v21 = [v7 descriptorForBuffer:@"depth" isInput:0 pixelFormat:1751410032];
      depthOutput = v10->_depthOutput;
      v10->_depthOutput = v21;

      v23 = [v7 descriptorForBuffer:@"uncertainty" isInput:0 pixelFormat:1278226536];
      confidenceOutput = v10->_confidenceOutput;
      v10->_confidenceOutput = v23;

      v25 = [v7 descriptorForBuffer:@"normals" isInput:0 pixelFormat:1380411457];
      normalsOutput = v10->_normalsOutput;
      v10->_normalsOutput = v25;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MetricDepth only supports the ANE engine", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end