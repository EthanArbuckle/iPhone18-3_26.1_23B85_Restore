@interface ADMonocularVideoPipeline
+ (id)defaults;
+ (id)supportedDimensions;
+ (id)supportedDimensionsForNetwork:(id)network;
- (ADMonocularVideoPipeline)initWithParameters:(id)parameters;
- (int64_t)adjustForEngine:(unint64_t)engine;
- (int64_t)preProcessColorInput:(__CVBuffer *)input toBuffer:(__CVBuffer *)buffer;
@end

@implementation ADMonocularVideoPipeline

- (ADMonocularVideoPipeline)initWithParameters:(id)parameters
{
  v48 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v40 = 335687376;
  v41 = 0u;
  v42 = 0u;
  kdebug_trace();
  v39.receiver = self;
  v39.super_class = ADMonocularVideoPipeline;
  v4 = [(ADMonocularVideoPipeline *)&v39 init];
  if (!v4)
  {
LABEL_35:
    v18 = v4;
    goto LABEL_36;
  }

  v5 = parametersCopy;
  if (!parametersCopy)
  {
    v5 = objc_opt_new();
  }

  parametersCopy = v5;
  objc_storeStrong(&v4->_pipelineParameters, v5);
  requestedDimensions = [(ADPipelineParameters *)v4->_pipelineParameters requestedDimensions];
  if (!requestedDimensions)
  {
    v7 = +[ADMonocularVideoPipeline supportedDimensions];
    requestedDimensions = [v7 objectAtIndexedSubscript:0];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [&unk_28524AB00 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (!v8)
  {
    goto LABEL_40;
  }

  v9 = 0;
  v10 = *v36;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(&unk_28524AB00);
      }

      v12 = *(*(&v35 + 1) + 8 * i);
      v13 = [ADMonocularVideoPipeline supportedDimensionsForNetwork:v12];
      if ([v13 containsObject:requestedDimensions])
      {
        v14 = v12;

        v9 = v14;
      }
    }

    v8 = [&unk_28524AB00 countByEnumeratingWithState:&v35 objects:v47 count:16];
  }

  while (v8);
  if (v9)
  {
    v15 = [ADMonocularVideoPipeline supportedDimensionsForNetwork:v9];
    v16 = [v15 count] > 1;

    if (v16)
    {
      v17 = [ADNetworkProvider createRequestedLayoutsForDimensions:requestedDimensions];
    }

    else
    {
      v17 = 0;
    }

    v19 = [ADNetworkProvider providerForNetwork:v9 requestedLayouts:v17];
    networkProvider = v4->_networkProvider;
    v4->_networkProvider = v19;

    if (v4->_networkProvider)
    {
      v21 = [v9 isEqualToString:@"CMM_PP"];
      defaults = [objc_opt_class() defaults];
      [defaults floatForKey:kADDeviceConfigurationKeyMonocularVideoNominalScaleFactor];
      v4->_nominalScaleFactor = v23;

      if (v4->_nominalScaleFactor < 0.0)
      {
        v24 = 1.2;
        if (v21)
        {
          v24 = 1.8;
        }

        v4->_nominalScaleFactor = v24;
      }

      v25 = 374.03;
      if (v21)
      {
        v25 = 320.0;
        v26 = 320.0;
      }

      else
      {
        v26 = 512.0;
      }

      v4->_networkNominalEFL = v25;
      width = [requestedDimensions width];
      height = [requestedDimensions height];
      if (width <= height)
      {
        v29 = height;
      }

      else
      {
        v29 = width;
      }

      v4->_networkNominalEFL = (v29 / v26) * v4->_networkNominalEFL;
      v30 = [(ADMonocularVideoPipeline *)v4 adjustForEngine:4]== 0;

      if (v30)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  else
  {
LABEL_40:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      width2 = [requestedDimensions width];
      height2 = [requestedDimensions height];
      *buf = 67109376;
      v44 = width2;
      v45 = 1024;
      v46 = height2;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find a CMM network that supports requested dimensions %dx%d", buf, 0xEu);
    }
  }

  v18 = 0;
LABEL_36:
  kdebug_trace();

  return v18;
}

- (int64_t)preProcessColorInput:(__CVBuffer *)input toBuffer:(__CVBuffer *)buffer
{
  kdebug_trace();
  if (self->_shouldPreProcessColorInputs)
  {
    [ADUtils convertRGBAFloat:input toPlanar:buffer];
    v7 = 0;
  }

  else
  {
    v7 = -22951;
  }

  kdebug_trace();
  return v7;
}

- (int64_t)adjustForEngine:(unint64_t)engine
{
  self->_shouldPreProcessColorInputs = 0;
  if (engine - 3 > 1)
  {
    return -22951;
  }

  v4 = [[ADEspressoMonocularVideoInferenceDescriptor alloc] initWithNetworkProvider:self->_networkProvider inputColorFormat:1111970369 outputDisparityFormat:1751411059];
  inferenceDesc = self->_inferenceDesc;
  self->_inferenceDesc = v4;

  return 0;
}

+ (id)supportedDimensions
{
  {
    +[ADMonocularVideoPipeline supportedDimensions]::result = objc_opt_new();
  }

  if (+[ADMonocularVideoPipeline supportedDimensions]::once != -1)
  {
    dispatch_once(&+[ADMonocularVideoPipeline supportedDimensions]::once, &__block_literal_global);
  }

  v2 = +[ADMonocularVideoPipeline supportedDimensions]::result;

  return v2;
}

uint64_t __47__ADMonocularVideoPipeline_supportedDimensions__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [&unk_28524AAE8 countByEnumeratingWithState:&v6 objects:v10 count:16];
  v1 = result;
  if (result)
  {
    v2 = *v7;
    do
    {
      v3 = 0;
      do
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(&unk_28524AAE8);
        }

        v4 = +[ADMonocularVideoPipeline supportedDimensions]::result;
        v5 = [ADMonocularVideoPipeline supportedDimensionsForNetwork:*(*(&v6 + 1) + 8 * v3)];
        [v4 addObjectsFromArray:v5];

        ++v3;
      }

      while (v1 != v3);
      result = [&unk_28524AAE8 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v1 = result;
    }

    while (result);
  }

  return result;
}

+ (id)supportedDimensionsForNetwork:(id)network
{
  v12 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  {
    +[ADMonocularVideoPipeline supportedDimensionsForNetwork:]::allDimensions = objc_opt_new();
  }

  v4 = [+[ADMonocularVideoPipeline supportedDimensionsForNetwork:]::allDimensions objectForKey:networkCopy];

  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = networkCopy;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Getting supported dimensions for %@", &v10, 0xCu);
    }

    v5 = [ADNetworkProvider nonRunnableProviderForNetwork:networkCopy requestedLayouts:MEMORY[0x277CBEC10]];
    v6 = MEMORY[0x277CBEBF8];
    v7 = v5;
    if (v5)
    {
      v6 = [v5 supportedDimensionsForInput:@"rgb" expectedPixelFormat:1111970369];
    }

    [+[ADMonocularVideoPipeline supportedDimensionsForNetwork:]::allDimensions setObject:v6 forKeyedSubscript:networkCopy];
  }

  v8 = [+[ADMonocularVideoPipeline supportedDimensionsForNetwork:]::allDimensions objectForKeyedSubscript:networkCopy];

  return v8;
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6 = kADDeviceConfigurationKeyMonocularVideoNominalScaleFactor;
    v7[0] = &unk_28524A710;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADMonocularVideoPipeline defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[45];

  return v3;
}

@end