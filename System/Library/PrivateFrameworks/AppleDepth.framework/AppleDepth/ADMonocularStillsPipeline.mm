@interface ADMonocularStillsPipeline
+ (id)defaults;
+ (id)supportedDimensions;
- (ADMonocularStillsPipeline)init;
- (ADMonocularStillsPipeline)initWithParameters:(id)parameters;
@end

@implementation ADMonocularStillsPipeline

- (ADMonocularStillsPipeline)initWithParameters:(id)parameters
{
  v35 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v28 = 335686660;
  v29 = 0u;
  v30 = 0u;
  kdebug_trace();
  v27.receiver = self;
  v27.super_class = ADMonocularStillsPipeline;
  v5 = [(ADMonocularStillsPipeline *)&v27 init];
  if (v5)
  {
    if (!parametersCopy)
    {
      parametersCopy = objc_opt_new();
    }

    objc_storeStrong(&v5->_pipelineParameters, parametersCopy);
    requestedDimensions = [(ADPipelineParameters *)v5->_pipelineParameters requestedDimensions];
    if (!requestedDimensions)
    {
      v7 = +[ADMonocularStillsPipeline supportedDimensions];
      requestedDimensions = [v7 objectAtIndexedSubscript:0];
    }

    v8 = +[ADMonocularStillsPipeline supportedDimensions];
    v9 = [v8 containsObject:requestedDimensions];

    if (v9)
    {
      supportedDimensions = [objc_opt_class() supportedDimensions];
      v11 = [supportedDimensions count] > 1;

      if (v11)
      {
        v12 = [ADNetworkProvider createRequestedLayoutsForDimensions:requestedDimensions];
      }

      else
      {
        v12 = 0;
      }

      v13 = [ADNetworkProvider providerForNetwork:@"Mona" requestedLayouts:v12];
      networkProvider = v5->_networkProvider;
      v5->_networkProvider = v13;

      if (v5->_networkProvider)
      {
        v15 = [[ADEspressoMonocularStillsInferenceDescriptor alloc] initWithNetworkProvider:v5->_networkProvider];
        inferenceDesc = v5->_inferenceDesc;
        v5->_inferenceDesc = v15;

        defaults = [objc_opt_class() defaults];
        [defaults floatForKey:kADDeviceConfigurationKeyMonocularStillsNominalEFL];
        v5->_networkNominalEFL = v18;

        *&v19 = v5->_networkNominalEFL;
        if (*&v19 < 0.0)
        {
          v5->_networkNominalEFL = 900.34;
        }

        width = [requestedDimensions width];
        height = [requestedDimensions height];
        if (width <= height)
        {
          v22 = height;
        }

        else
        {
          v22 = width;
        }

        v5->_networkNominalEFL = (v22 / 768.0) * v5->_networkNominalEFL;

        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        width2 = [requestedDimensions width];
        height2 = [requestedDimensions height];
        *buf = 134218240;
        v32 = width2;
        v33 = 2048;
        v34 = height2;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Provided dimension %zux%zu is not supported by network", buf, 0x16u);
      }
    }

    v23 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v23 = v5;
LABEL_23:
  kdebug_trace();

  return v23;
}

- (ADMonocularStillsPipeline)init
{
  v3 = objc_opt_new();
  v4 = [(ADMonocularStillsPipeline *)self initWithParameters:v3];

  return v4;
}

+ (id)supportedDimensions
{
  if (+[ADMonocularStillsPipeline supportedDimensions]::once != -1)
  {
    dispatch_once(&+[ADMonocularStillsPipeline supportedDimensions]::once, &__block_literal_global_7519);
  }

  v3 = +[ADMonocularStillsPipeline supportedDimensions]::result;

  return v3;
}

void __48__ADMonocularStillsPipeline_supportedDimensions__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Getting supported dimensions for network", v4, 2u);
  }

  v0 = [ADNetworkProvider nonRunnableProviderForNetwork:@"Mona" requestedLayouts:MEMORY[0x277CBEC10]];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 supportedDimensionsForInput:@"rgb" expectedPixelFormat:1111970369];
    v3 = +[ADMonocularStillsPipeline supportedDimensions]::result;
    +[ADMonocularStillsPipeline supportedDimensions]::result = v2;
  }
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6 = kADDeviceConfigurationKeyMonocularStillsNominalEFL;
    v7[0] = &unk_28524A8F0;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADMonocularStillsPipeline defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[150];

  return v3;
}

@end