@interface ADMonocularPipeline
- (ADMonocularPipeline)initWithInputPrioritization:(int64_t)prioritization;
- (ADMonocularPipeline)initWithInputPrioritization:(int64_t)prioritization andParameters:(id)parameters;
- (int64_t)postProcessWithDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output;
@end

@implementation ADMonocularPipeline

- (int64_t)postProcessWithDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output
{
  kdebug_trace();
  v6 = [ADUtils postProcessDepth:depth depthOutput:output];
  kdebug_trace();
  return v6;
}

- (ADMonocularPipeline)initWithInputPrioritization:(int64_t)prioritization andParameters:(id)parameters
{
  v29 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v22 = 335687604;
  prioritizationCopy = prioritization;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kdebug_trace();
  v21.receiver = self;
  v21.super_class = ADMonocularPipeline;
  v8 = [(ADMonocularPipeline *)&v21 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  v8->_prioritization = prioritization;
  if ((prioritization - 1) >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = [ADUtils prioritizationAsString:prioritization];
      *buf = 138412290;
      v28 = v20;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "no monocular models for prioritization %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v10 = [ADNetworkProvider providerForNetwork:*(&off_278CA1440 + prioritization - 1)];
  networkProvider = v9->_networkProvider;
  v9->_networkProvider = v10;

  if (!v9->_networkProvider)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  objc_storeStrong(&v9->_pipelineParameters, parameters);
  v12 = [[ADEspressoMonocularInferenceDescriptor alloc] initWithNetworkProvider:v9->_networkProvider];
  inferenceDesc = v9->_inferenceDesc;
  v9->_inferenceDesc = v12;

  depthOutput = [(ADEspressoMonocularInferenceDescriptor *)v9->_inferenceDesc depthOutput];
  imageDescriptor = [depthOutput imageDescriptor];
  v16 = [imageDescriptor cloneWithDifferentFormat:1717855600];
  processedDepthDesc = v9->_processedDepthDesc;
  v9->_processedDepthDesc = v16;

LABEL_5:
  v18 = v9;
LABEL_9:
  kdebug_trace();

  return v18;
}

- (ADMonocularPipeline)initWithInputPrioritization:(int64_t)prioritization
{
  v5 = objc_opt_new();
  v6 = [(ADMonocularPipeline *)self initWithInputPrioritization:prioritization andParameters:v5];

  return v6;
}

@end